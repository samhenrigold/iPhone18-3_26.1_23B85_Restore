double sub_19D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a8;
  v70 = a6;
  v71 = a7;
  v69 = a5;
  v85 = a4;
  v78 = a3;
  v67 = a2;
  v65 = a1;
  v77 = a13;
  v84 = a9;
  v72 = a10;
  v73 = a11;
  v13 = sub_2BFF28();
  v14 = *(v13 - 8);
  v82 = v13;
  v83 = v14;
  v76 = *(v14 + 64);
  __chkstk_darwin(v13);
  v81 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BF3D8, &qword_2EE920);
  v75 = *(v16 - 8);
  v74 = *(v75 + 64);
  __chkstk_darwin(v16 - 8);
  v80 = &v56 - v17;
  v18 = sub_6620C(&unk_3C4340, &qword_2EF090);
  v68 = *(v18 - 8);
  v63 = *(v68 + 64);
  __chkstk_darwin(v18 - 8);
  v20 = &v56 - v19;
  v61 = &v56 - v19;
  v21 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  v64 = *(v21 - 8);
  v22 = *(v64 + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v56 - v23;
  v60 = &v56 - v23;
  v25 = sub_6620C(&qword_3C4350, &qword_2E94F0);
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v56 - v27;
  v59 = &v56 - v27;
  v57 = a12;
  v29 = *(a12 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  v58 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v32 - 8);
  v34 = &v56 - v33;
  v66 = &v56 - v33;
  v35 = sub_2C5C58();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = v29;
  v56 = v29;
  (*(v29 + 16))(&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v65, a12);
  sub_6932C(v67, v28, &qword_3C4350, &qword_2E94F0);
  sub_6932C(v69, v24, &qword_3BDE70, &qword_2E52F0);
  sub_6932C(v70, v20, &unk_3C4340, &qword_2EF090);
  sub_6932C(v71, v80, &qword_3BF3D8, &qword_2EE920);
  sub_6932C(v72, v86, &qword_3BC840, &qword_2ED0A0);
  v37 = v83;
  (*(v83 + 16))(v81, v73, v82);
  sub_2C5C18();

  v73 = sub_2C5C08();
  v38 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v39 = (v30 + *(v62 + 80) + v38) & ~*(v62 + 80);
  v40 = (v26 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v64 + 80) + v40 + 16) & ~*(v64 + 80);
  v42 = (v22 + *(v68 + 80) + v41) & ~*(v68 + 80);
  v43 = (v63 + *(v75 + 80) + v42) & ~*(v75 + 80);
  v44 = (v74 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v37 + 80) + v45 + 40) & ~*(v37 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v73;
  *(v47 + 3) = &protocol witness table for MainActor;
  v48 = v77;
  *(v47 + 4) = v57;
  *(v47 + 5) = v48;
  (*(v56 + 32))(&v47[v38], v58);
  sub_69130(v59, &v47[v39], &qword_3C4350, &qword_2E94F0);
  v49 = &v47[v40];
  v50 = v85;
  *v49 = v78;
  v49[1] = v50;
  sub_69130(v60, &v47[v41], &qword_3BDE70, &qword_2E52F0);
  sub_69130(v61, &v47[v42], &unk_3C4340, &qword_2EF090);
  sub_69130(v80, &v47[v43], &qword_3BF3D8, &qword_2EE920);
  v51 = &v47[v44];
  v52 = v84;
  *v51 = v79;
  v51[1] = v52;
  v53 = &v47[v45];
  *(v53 + 4) = v87;
  v54 = v86[1];
  *v53 = v86[0];
  *(v53 + 1) = v54;
  (*(v83 + 32))(&v47[v46], v81, v82);
  sub_249B98(0, 0, v66, &unk_2F1190, v47);

  return result;
}

uint64_t sub_19DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = v17;
  *(v8 + 312) = v18;
  *(v8 + 272) = v15;
  *(v8 + 288) = v16;
  *(v8 + 256) = v14;
  *(v8 + 240) = a7;
  *(v8 + 248) = a8;
  *(v8 + 224) = a5;
  *(v8 + 232) = a6;
  *(v8 + 216) = a4;
  v9 = sub_2C00F8();
  *(v8 + 320) = v9;
  *(v8 + 328) = *(v9 - 8);
  *(v8 + 336) = swift_task_alloc();
  sub_2C5C18();
  *(v8 + 344) = sub_2C5C08();
  v11 = sub_2C5BB8();
  *(v8 + 352) = v11;
  *(v8 + 360) = v10;

  return _swift_task_switch(sub_19DF68, v11, v10);
}

uint64_t sub_19DF68()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[38];
  v18 = v0[33];
  v20 = v0[39];
  v17 = v0[32];
  v4 = v0[30];
  v15 = v0[40];
  v16 = v0[31];
  v5 = v0[29];
  v6 = v0[27];
  sub_19E448(v0[28], v2);
  (*(v20 + 112))(v3);
  v7 = v0[5];
  v8 = v0[6];
  sub_72084(v0 + 2, v7);
  v0[10] = v3;
  v0[11] = v20;
  v9 = sub_720C8(v0 + 7);
  (*(*(v3 - 8) + 16))(v9, v6, v3);
  v10 = (*(v8 + 64))(v5, v4, v0 + 7, v7, v8);
  sub_68CD0(v0 + 7);
  sub_19AF48(v2, v10, v3, v20);
  (*(v1 + 8))(v2, v15);
  sub_68CD0(v0 + 2);
  sub_19E7BC(v5, v4, v16, v17, v18, v3, v20);
  v19 = (*(v20 + 80) + **(v20 + 80));
  v11 = swift_task_alloc();
  v0[46] = v11;
  *v11 = v0;
  v11[1] = sub_19E1C4;
  v13 = v0[38];
  v12 = v0[39];

  return v19(v13, v12);
}

uint64_t sub_19E1C4()
{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return _swift_task_switch(sub_19E2E4, v3, v2);
}

uint64_t sub_19E2E4()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);

  (*(v1 + 72))(v3, v4, v2, v1);
  if (*(v0 + 160))
  {
    v5 = *(v0 + 288);
    sub_68D1C((v0 + 136), v0 + 96);
    sub_6932C(v5, v0 + 176, &qword_3BC840, &qword_2ED0A0);
    if (*(v0 + 200))
    {
      sub_72084((v0 + 176), *(v0 + 200));
      sub_2BFCD8();
      sub_68CD0((v0 + 96));
      sub_68CD0((v0 + 176));
      goto LABEL_7;
    }

    sub_68CD0((v0 + 96));
    v6 = &qword_3BC840;
    v7 = &qword_2ED0A0;
    v8 = v0 + 176;
  }

  else
  {
    v6 = &unk_3BDC90;
    v7 = &unk_2E5620;
    v8 = v0 + 136;
  }

  sub_69198(v8, v6, v7);
LABEL_7:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_19E448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6620C(&unk_3C4430, &qword_2F1198);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_6620C(&qword_3C4350, &qword_2E94F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v10 = sub_2C4BB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_6932C(a1, v9, &qword_3C4350, &qword_2E94F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_69198(v9, &qword_3C4350, &qword_2E94F0);
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14 = sub_2C4B98();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (!*(v14 + 16) || (v16 = sub_5D228(0x6570795465676170, 0xE800000000000000), (v17 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_68C64(*(v15 + 56) + 32 * v16, v24);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    (*(v11 + 8))(v13, v10);
    goto LABEL_11;
  }

  sub_2C00E8();
  (*(v11 + 8))(v13, v10);
  v18 = sub_2C00F8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) != 1)
  {
    return (*(v19 + 32))(a2, v6, v18);
  }

  sub_69198(v6, &unk_3C4430, &qword_2F1198);
LABEL_11:
  v20 = enum case for FigaroClickEvent.ActionContext.series(_:);
  v21 = sub_2C00F8();
  return (*(*(v21 - 8) + 104))(a2, v20, v21);
}

void sub_19E7BC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *&v82 = a5;
  v88 = a4;
  v77 = a2;
  v76 = a1;
  v80 = sub_2BEB28();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_2BF088();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v87 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_6620C(&qword_3BF3D8, &qword_2EE920);
  __chkstk_darwin(v14 - 8);
  v16 = &v71[-v15];
  v17 = sub_2BE968();
  v85 = *(v17 - 8);
  v86 = v17;
  __chkstk_darwin(v17);
  v83 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_6620C(&unk_3C4340, &qword_2EF090);
  __chkstk_darwin(v19 - 8);
  v21 = &v71[-v20];
  v22 = sub_2BEF78();
  v90 = *(v22 - 8);
  v91 = v22;
  __chkstk_darwin(v22);
  v89 = &v71[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v24 - 8);
  v26 = &v71[-v25];
  v27 = sub_2BEA28();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v92 = &v71[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = (*(a7 + 104))(a6, a7, v29);
  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = v31;
  sub_6932C(a3, v26, &qword_3BDE70, &qword_2E52F0);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    v36 = v28;
    v75 = v32;
    v37 = v92;
    (*(v28 + 32))(v92, v26, v27);
    sub_6932C(v88, v21, &unk_3C4340, &qword_2EF090);
    v39 = v90;
    v38 = v91;
    if ((*(v90 + 48))(v21, 1, v91) == 1)
    {
      (*(v36 + 8))(v37, v27);

      v33 = &unk_3C4340;
      v34 = &qword_2EF090;
      v35 = v21;
      goto LABEL_8;
    }

    v88 = v36;
    v74 = v27;
    v40 = v89;
    (*(v39 + 32))(v89, v21, v38);
    sub_6932C(v82, v16, &qword_3BF3D8, &qword_2EE920);
    v42 = v85;
    v41 = v86;
    if ((*(v85 + 48))(v16, 1, v86) == 1)
    {

      (*(v39 + 8))(v40, v38);
      (*(v88 + 8))(v92, v74);
      v33 = &qword_3BF3D8;
      v34 = &qword_2EE920;
      v35 = v16;
      goto LABEL_8;
    }

    (*(v42 + 32))(v83, v16, v41);
    (*(a7 + 112))(v94, a6, a7);
    v47 = v95;
    v48 = v96;
    sub_72084(v94, v95);
    v93[3] = a6;
    v93[4] = a7;
    v49 = sub_720C8(v93);
    (*(*(a6 - 8) + 16))(v49, v8, a6);
    (*(v48 + 64))(v76, v77, v93, v47, v48);
    sub_68CD0(v93);
    sub_68CD0(v94);
    v50 = *(a7 + 16);
    v50(v94, a6, a7);
    if (ContextActionType.rawValue.getter() != 0x706D615364616572 || v51 != 0xEA0000000000656CLL)
    {
      v52 = sub_2C65B8();

      if (v52)
      {
        goto LABEL_22;
      }

      v50(v94, a6, a7);
      if (ContextActionType.rawValue.getter() != 0x6D61536F69647561 || v53 != 0xEB00000000656C70)
      {
        v54 = sub_2C65B8();

        if ((v54 & 1) == 0)
        {
          sub_2BEF68();
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    (*(v79 + 104))(v78, enum case for LinkActionType.swipe(_:), v80);
    sub_2BF078();
    v80 = sub_6620C(&unk_3C43E0, &unk_2E9610);
    v55 = sub_2BE798();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = *(v56 + 80);
    v59 = swift_allocObject();
    v82 = xmmword_2E3F30;
    *(v59 + 16) = xmmword_2E3F30;
    v60 = enum case for DataEventTrait.onlyOnce(_:);
    v77 = *(v56 + 104);
    v79 = v56 + 104;
    v72 = enum case for DataEventTrait.onlyOnce(_:);
    v73 = v55;
    v77(v59 + v57, enum case for DataEventTrait.onlyOnce(_:), v55);
    v78 = "checkmark.circle";
    sub_1A3B90(&unk_3C0030, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    sub_1A3B90(&unk_3C43F0, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    sub_2BEFE8();

    v76 = v58;
    v61 = swift_allocObject();
    *(v61 + 16) = v82;
    v62 = v60;
    v63 = v77;
    v77(v61 + v57, v62, v55);
    sub_1A3B90(&unk_3C0040, &type metadata accessor for PageData, &protocol conformance descriptor for PageData);
    sub_1A3B90(&unk_3C4400, &type metadata accessor for PageData, &protocol conformance descriptor for PageData);
    sub_2BEFE8();

    v64 = swift_allocObject();
    *(v64 + 16) = v82;
    v65 = v72;
    v66 = v73;
    v63(v64 + v57, v72, v73);
    sub_1A3B90(&unk_3C0050, &type metadata accessor for ClickData, &protocol conformance descriptor for ClickData);
    sub_1A3B90(&unk_3C4410, &type metadata accessor for ClickData, &protocol conformance descriptor for ClickData);
    v67 = v75;
    sub_2BEFE8();

    v68 = swift_allocObject();
    *(v68 + 16) = v82;
    v63(v68 + v57, v65, v66);
    sub_1A3B90(&qword_3BF460, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    sub_1A3B90(&unk_3C4420, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    v69 = v83;
    v70 = v86;
    sub_2BEFE8();

    sub_2BE868();
    sub_1A3B90(&unk_3C0060, &type metadata accessor for ClickEvent, &protocol conformance descriptor for ClickEvent);
    sub_2BF018();

    (*(v81 + 8))(v87, v84);
    (*(v85 + 8))(v69, v70);
    (*(v90 + 8))(v89, v91);
    (*(v88 + 8))(v92, v74);
    return;
  }

  v33 = &qword_3BDE70;
  v34 = &qword_2E52F0;
  v35 = v26;
LABEL_8:
  sub_69198(v35, v33, v34);
LABEL_9:
  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v43 = sub_2C00B8();
  sub_57AD8(v43, qword_3C2F18);
  v44 = sub_2C0098();
  v45 = sub_2C5DD8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "Tracker, sectionData, pageData or contentData is missing for AppAnalytics swipe action.", v46, 2u);
  }
}

uint64_t ContextActionItem.swipeActionBackgroundColor.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(&var1, a1);
  switch(var1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
    case 30:
    case 31:

      result = sub_2C4208();
      break;
    case 7:
    case 8:

      result = static Color.indigo.getter(v2);
      break;
    case 13:
    case 14:

      result = static Color.orange.getter(v2);
      break;
    case 16:
    case 17:
    case 25:

      result = sub_2C41E8();
      break;
    case 26:

      result = static Color.red.getter(v2);
      break;
    case 29:
      v4 = [objc_opt_self() systemGray2Color];

      result = sub_2C4178();
      break;
    default:

      result = static Color.blue.getter(v2);
      break;
  }

  return result;
}

void (*sub_19F7C0(void (*result)(void, id), uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(void, id)
{
  if (result)
  {
    v6 = result;
    v7 = a5[3];
    v8 = a5[4];
    sub_72084(a5, v7);
    v9 = *(v8 + 48);

    v10 = v9(v7, v8);
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v6;
      *(v12 + 24) = a2;
      v20[4] = sub_1A4214;
      v20[5] = v12;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_19FC28;
      v20[3] = &unk_390960;
      v13 = _Block_copy(v20);

      [v11 get:v13];
      _Block_release(v13);
    }

    else
    {
      sub_6620C(&unk_3C44C0, &unk_2F11D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2E3F30;
      *(inited + 32) = sub_2C58C8();
      *(inited + 40) = v15;
      *(inited + 48) = 0xD00000000000001ELL;
      *(inited + 56) = 0x8000000000306110;
      v16 = sub_677B4(inited);
      swift_setDeallocating();
      sub_69198(inited + 32, &qword_3BD8A0, &unk_2E4840);
      v17 = NSItemProviderErrorDomain;
      sub_293488(v16);

      v18 = objc_allocWithZone(NSError);
      isa = sub_2C57C8().super.isa;

      v11 = [v18 initWithDomain:v17 code:-1000 userInfo:isa];

      v6(0, v11);
    }

    return sub_77BDC(v6, a2);
  }

  return result;
}

void sub_19FA40(UIImage *a1, uint64_t a2, void (*a3)(void *, id))
{
  if (a1 && (v4 = UIImagePNGRepresentation(a1)) != 0)
  {
    v5 = v4;
    v6 = sub_2BE3D8();
    v8 = v7;

    isa = sub_2BE3C8().super.isa;
    a3(isa, 0);

    sub_A3DDC(v6, v8);
  }

  else
  {
    sub_6620C(&unk_3C44C0, &unk_2F11D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    *(inited + 32) = sub_2C58C8();
    *(inited + 40) = v11;
    *(inited + 48) = 0xD00000000000002FLL;
    *(inited + 56) = 0x8000000000306130;
    v12 = sub_677B4(inited);
    swift_setDeallocating();
    sub_69198(inited + 32, &qword_3BD8A0, &unk_2E4840);
    v13 = NSItemProviderErrorDomain;
    sub_293488(v12);

    v14 = objc_allocWithZone(NSError);
    v15 = sub_2C57C8().super.isa;

    v16 = [v14 initWithDomain:v13 code:-1000 userInfo:v15];

    a3(0, v16);
  }
}

void sub_19FC28(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

double sub_19FCB4(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A41D4;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_2C57E8();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_77BDC(v7, v8);

  return result;
}

void sub_19FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2BE348();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t ContextActionItem.swipeActionShareButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v6 = sub_6620C(&qword_3BE870, &qword_2E6F70);
  __chkstk_darwin(v6 - 8);
  v48 = v41 - v7;
  v8 = sub_6620C(&unk_3C4370, &qword_2E7460);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = sub_2BE3B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v41 - v17;
  v19 = *(a2 + 96);
  v47 = v3;
  v19(v51, a1, a2, v16);
  v20 = v52;
  v21 = v53;
  sub_72084(v51, v52);
  v22 = (*(v21 + 8))(v20, v21);
  if (*(v22 + 16))
  {
    sub_691F8(v22 + 32, v50);

    sub_68D1C(v50, v54);
    sub_68CD0(v51);
    v23 = v55;
    v24 = v56;
    sub_72084(v54, v55);
    (*(v24 + 264))(v23, v24);
    if (v25)
    {
      sub_2BE3A8();

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v18, v10, v11);
        v33 = _s11BookStoreUI17ContextActionItemPAAE17shareLinkMetadata9assetInfo3urlSo06LPLinkI0CAA0d5AssetK8Protocol_p_10Foundation3URLVtF_0(v54, v18);
        (*(v12 + 16))(v14, v18, v11);
        v34 = _s11BookStoreUI17ContextActionItemPAAE7subject3for05SwiftC04TextVSgAA0D17AssetInfoProtocol_p_tF_0(v54);
        v45 = v35;
        v46 = v34;
        v44 = v36;
        v43 = v37;
        v52 = sub_66278(0, &qword_3C4380, LPLinkMetadata_ptr);
        v51[0] = v33;
        v42 = v33;
        v38 = sub_2C2698();
        v41[1] = v41;
        __chkstk_darwin(v38);
        sub_6620C(&qword_3BE800, &qword_2E7C70);
        sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
        sub_1A3B90(&qword_3BF378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v39 = v49;
        sub_2C4758();

        (*(v12 + 8))(v18, v11);
        v40 = sub_6620C(&qword_3BF270, &unk_2F10A0);
        (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
        return sub_68CD0(v54);
      }

      sub_69198(v10, &unk_3C4370, &qword_2E7460);
    }

    v26 = v54;
  }

  else
  {

    v26 = v51;
  }

  sub_68CD0(v26);
  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v27 = sub_2C00B8();
  sub_57AD8(v27, qword_3C2F18);
  v28 = sub_2C0098();
  v29 = sub_2C5DC8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Can't create ShareLink without asset info", v30, 2u);
  }

  v31 = sub_6620C(&qword_3BF270, &unk_2F10A0);
  return (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
}

uint64_t sub_1A0438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v5(&v14, a2, a3);
  v12 = sub_2B2E00();
  v13 = v6;
  v7 = (v5)(&v11, a2, a3);
  sub_7212C(v7, v8, v9);
  return sub_2C4308();
}

BookStoreUI::FigaroProvider __swiftcall FigaroProvider.init()()
{
  *v0 = _swiftEmptyDictionarySingleton;
  v0[1] = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t FigaroProvider.contextMenuActionPosition(for:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_72084(a1, v4);
  (*(v5 + 16))(v25, v4, v5);
  v6 = ContextActionType.rawValue.getter();
  if (*(v3 + 16))
  {
    v8 = sub_5D228(v6, v7);
    v10 = v9;

    if (v10)
    {
      return *(*(v3 + 56) + 8 * v8);
    }
  }

  else
  {
  }

  if (qword_3BB790 != -1)
  {
    swift_once();
  }

  v12 = sub_2C00B8();
  sub_57AD8(v12, qword_3C2F60);
  sub_691F8(a1, v25);
  v13 = sub_2C0098();
  v14 = sub_2C5DC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = v26;
    v18 = v27;
    sub_72084(v25, v26);
    (*(v18 + 16))(&v23, v17, v18);
    v19 = ContextActionType.rawValue.getter();
    v21 = v20;
    sub_68CD0(v25);
    v22 = sub_5CCF4(v19, v21, &v24);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "Unable to locate figaro position in the context menu for %s", v15, 0xCu);
    sub_68CD0(v16);
  }

  else
  {

    sub_68CD0(v25);
  }

  return -1;
}

uint64_t FigaroProvider.swipeActionPosition(for:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16))
  {
    v6 = sub_5D228(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = a3[3];
      v10 = a3[4];
      sub_72084(a3, v9);
      v11 = *(v10 + 16);

      v11(v32, v9, v10);
      v12 = ContextActionType.rawValue.getter();
      if (*(v8 + 16))
      {
        v14 = sub_5D228(v12, v13);
        v16 = v15;

        if (v16)
        {
          v17 = *(*(v8 + 56) + 8 * v14);

          return v17;
        }
      }

      else
      {
      }
    }
  }

  if (qword_3BB790 != -1)
  {
    swift_once();
  }

  v19 = sub_2C00B8();
  sub_57AD8(v19, qword_3C2F60);
  sub_691F8(a3, v32);
  v20 = sub_2C0098();
  v21 = sub_2C5DC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v24 = v33;
    v25 = v34;
    sub_72084(v32, v33);
    (*(v25 + 16))(&v30, v24, v25);
    v26 = ContextActionType.rawValue.getter();
    v28 = v27;
    sub_68CD0(v32);
    v29 = sub_5CCF4(v26, v28, &v31);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v20, v21, "Unable to locate figaro position in the swipe action menu for %s", v22, 0xCu);
    sub_68CD0(v23);
  }

  else
  {

    sub_68CD0(v32);
  }

  return -1;
}

uint64_t sub_1A0C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = v8;
  a7[3] = &type metadata for ContextActionMenuItemView;
  a7[4] = sub_1A1968(a1, a2, a3);
  v15 = swift_allocObject();
  *a7 = v15;
  *(v15 + 88) = a1;
  *(v15 + 96) = a2;
  v16 = swift_allocObject();
  *(v15 + 64) = v16;
  a4(v13, v16 + 16);
  a4(v13, v24);
  v17 = swift_allocObject();
  v18 = v25[0];
  v17[9] = v24[8];
  v17[10] = v18;
  *(v17 + 169) = *(v25 + 9);
  v19 = v24[5];
  v17[5] = v24[4];
  v17[6] = v19;
  v20 = v24[7];
  v17[7] = v24[6];
  v17[8] = v20;
  v21 = v24[1];
  v17[1] = v24[0];
  v17[2] = v21;
  v22 = v24[3];
  v17[3] = v24[2];
  v17[4] = v22;
  result = swift_getKeyPath();
  *(v15 + 16) = result;
  *(v15 + 56) = 0;
  *(v15 + 104) = a6;
  *(v15 + 112) = v17;
  return result;
}

uint64_t sub_1A0E38(uint64_t a1)
{
  sub_6932C(a1, v6, &qword_3BEF10, &qword_2E7CC0);
  v1 = sub_6932C(v6, &v5, &qword_3BEF10, &qword_2E7CC0);
  sub_1A3DE0(v1, v2, v3);
  sub_2C3118();
  return sub_69198(v6, &qword_3BEF10, &qword_2E7CC0);
}

id _s11BookStoreUI17ContextActionItemPAAE17shareLinkMetadata9assetInfo3urlSo06LPLinkI0CAA0d5AssetK8Protocol_p_10Foundation3URLVtF_0(void *a1, uint64_t a2)
{
  v85 = sub_2C0048();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v77[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2BE3B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1[3];
  v10 = a1[4];
  sub_72084(a1, v9);
  v86 = (*(v10 + 312))(v9, v10);
  v12 = v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_72084(a1, v13);
  v81 = (*(v14 + 32))(v13, v14);
  v16 = v15;
  if (qword_3BB778 != -1)
  {
    swift_once();
  }

  v17 = sub_2C00B8();
  v18 = sub_57AD8(v17, qword_3C2F18);
  (*(v6 + 16))(v8, a2, v5);
  sub_691F8(a1, aBlock);

  v80 = v18;
  v19 = sub_2C0098();
  v20 = sub_2C5DB8();

  v21 = os_log_type_enabled(v19, v20);
  v82 = a2;
  v83 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v88 = v79;
    *v22 = 136315906;
    v23 = sub_2BE378();
    v78 = v20;
    v24 = v16;
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    v27 = sub_5CCF4(v23, v26, &v88);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    *&v93[0] = v86;
    *(&v93[0] + 1) = v12;

    sub_6620C(&qword_3BDB00, &qword_2E6E10);
    v28 = sub_2C5918();
    v30 = sub_5CCF4(v28, v29, &v88);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    *&v93[0] = v81;
    *(&v93[0] + 1) = v24;

    v31 = sub_2C5918();
    v33 = sub_5CCF4(v31, v32, &v88);

    *(v22 + 24) = v33;
    *(v22 + 32) = 2080;
    v34 = v90;
    v35 = v91;
    sub_72084(aBlock, v90);
    v36 = (*(v35 + 1))(v34, v35);
    v38 = v37;
    sub_68CD0(aBlock);
    v39 = sub_5CCF4(v36, v38, &v88);

    *(v22 + 34) = v39;
    _os_log_impl(&dword_0, v19, v78, "Instantiating shareLinkMetadata with %s, %s, %s for %s", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    sub_68CD0(aBlock);
  }

  v40 = [objc_allocWithZone(LPLinkMetadata) init];
  sub_2BE388(v41);
  v43 = v42;
  [v40 setURL:v42];

  if (v12)
  {

    v44 = sub_2C5888();
  }

  else
  {
    v44 = 0;
  }

  [v40 setTitle:v44];

  v45 = [objc_allocWithZone(NSItemProvider) init];
  v46 = v84;
  sub_2BFFF8();
  sub_2BFFC8();
  v47 = *(v87 + 8);
  v87 += 8;
  v47(v46, v85);
  v48 = sub_2C5888();

  sub_691F8(a1, v93);
  v49 = swift_allocObject();
  sub_68D1C(v93, v49 + 16);
  v91 = sub_C7C98;
  v92 = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19FCB4;
  v90 = &unk_3908E8;
  v50 = _Block_copy(aBlock);

  [v45 registerItemForTypeIdentifier:v48 loadHandler:v50];
  _Block_release(v50);

  v51 = [objc_allocWithZone(LPImage) initWithItemProvider:v45 properties:0 placeholderImage:0];
  v52 = a1[3];
  v53 = a1[4];
  sub_72084(a1, v52);
  v54 = (*(v53 + 16))(v52, v53);
  if (v54 <= 2)
  {
    if (v54 == 1)
    {
LABEL_19:

      v58 = [objc_allocWithZone(LPFileMetadata) init];
      if (v12)
      {
        v59 = sub_2C5888();
      }

      else
      {
        v59 = 0;
      }

      [v58 setName:v59];

      [v58 setThumbnail:v51];
      v66 = a1[3];
      v67 = a1[4];
      sub_72084(a1, v66);
      if ((*(v67 + 16))(v66, v67) == 1)
      {
        v68 = v84;
        sub_2BFFE8();
      }

      else
      {
        v69 = a1[3];
        v70 = a1[4];
        sub_72084(a1, v69);
        if ((*(v70 + 16))(v69, v70) != 6)
        {
LABEL_34:
          if (sub_2BE368())
          {
            sub_2BE378();
            v72 = objc_allocWithZone(NSURL);
            v73 = sub_2C5888();

            v74 = [v72 initFileURLWithPath:v73];

            aBlock[0] = 0;
            v75 = [v74 bu_fileAllocatedSizeWithError:aBlock];
            if (!aBlock[0])
            {
              [v58 setSize:v75];
            }
          }

          v62 = v58;
          goto LABEL_39;
        }

        v68 = v84;
        sub_2C0038();
      }

      sub_2BFFC8();
      v47(v68, v85);
      v71 = sub_2C5888();

      [v58 setType:v71];

      goto LABEL_34;
    }

    if (v54 != 2)
    {
      goto LABEL_26;
    }

LABEL_16:
    v55 = LPiTunesMediaBookMetadata;
    goto LABEL_17;
  }

  switch(v54)
  {
    case 7u:
      goto LABEL_16;
    case 6u:
      goto LABEL_19;
    case 3u:
      v55 = LPiTunesMediaAudioBookMetadata;
LABEL_17:
      v56 = [objc_allocWithZone(v55) init];
      if (v12)
      {
        v57 = sub_2C5888();
      }

      else
      {
        v57 = 0;
      }

      v60 = v83;
      [v56 setName:v57];

      [v56 setArtwork:v51];
      if (v60)
      {
        v61 = sub_2C5888();
      }

      else
      {
        v61 = 0;
      }

      [v56 setAuthor:v61];

      v62 = v56;
LABEL_39:
      v63 = v62;
      [v40 setSpecialization:v62];

      goto LABEL_40;
  }

LABEL_26:

  v63 = sub_2C0098();
  v64 = sub_2C5DB8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "SharePreview metadata contains no specialization data", v65, 2u);
  }

LABEL_40:

  return v40;
}

unint64_t sub_1A1968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4328;
  if (!qword_3C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4328);
  }

  return result;
}

uint64_t sub_1A19BC()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 40))
    {
      sub_68CD0((v0 + 16));
    }
  }

  else
  {
  }

  sub_68CD0((v0 + 64));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1A1AA4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A1B80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v31 = *(v2 + 80);
  v3 = (v31 + 32) & ~v31;
  v4 = *(v2 + 64);
  v5 = *(sub_6620C(&qword_3C4350, &qword_2E94F0) - 8);
  v30 = *(v5 + 80);
  v6 = (v3 + v4 + v30) & ~v30;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_6620C(&qword_3BDE70, &qword_2E52F0) - 8);
  v29 = *(v8 + 80);
  v9 = (v7 + v29 + 16) & ~v29;
  v10 = *(v8 + 64);
  v11 = *(sub_6620C(&unk_3C4340, &qword_2EF090) - 8);
  v28 = *(v11 + 80);
  v12 = (v9 + v10 + v28) & ~v28;
  v13 = *(v11 + 64);
  v14 = *(sub_6620C(&qword_3BF3D8, &qword_2EE920) - 8);
  v15 = *(v14 + 80);
  v16 = v13 + v15;
  v27 = *(v14 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v17 = sub_2C4BB8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v6, 1, v17))
  {
    (*(v18 + 8))(v0 + v6, v17);
  }

  v19 = sub_2BEA28();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v9, 1, v19))
  {
    (*(v20 + 8))(v0 + v9, v19);
  }

  v21 = (v12 + v16) & ~v15;
  v22 = sub_2BEF78();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v12, 1, v22))
  {
    (*(v23 + 8))(v0 + v12, v22);
  }

  v24 = sub_2BE968();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v0 + v21, 1, v24))
  {
    (*(v25 + 8))(v0 + v21, v24);
  }

  return _swift_deallocObject(v0, v21 + v27, v31 | v30 | v29 | v28 | v15 | 7);
}

uint64_t sub_1A2014@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(*(v7 - 8) + 64);
  v10 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v11 = *(sub_6620C(&qword_3C4350, &qword_2E94F0) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_6620C(&qword_3BDE70, &qword_2E52F0) - 8);
  v15 = (v13 + *(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_6620C(&unk_3C4340, &qword_2EF090) - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(sub_6620C(&qword_3BF3D8, &qword_2EE920) - 8);
  return sub_19CED8(a1, a2, a3, a4, v5 + v10, v5 + v12, *(v5 + v13), *(v5 + v13 + 8), a5, v5 + v15, v5 + v18, v5 + ((v18 + v19 + *(v20 + 80)) & ~*(v20 + 80)), v7, v8);
}

uint64_t dispatch thunk of ContextActionItem.handle()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7100C;

  return v7(a1, a2);
}

uint64_t sub_1A2644()
{
  sub_68CD0((v0 + 16));
  sub_68CD0((v0 + 56));

  sub_68CD0((v0 + 104));
  sub_68CD0((v0 + 144));

  return _swift_deallocObject(v0, 185, 7);
}

uint64_t sub_1A26EC(uint64_t a1)
{
  sub_2BFF28();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_19952C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A28A0()
{
  v1 = sub_2BFF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_68CD0((v0 + 32));
  sub_68CD0((v0 + 72));

  sub_68CD0((v0 + 120));
  sub_68CD0((v0 + 160));

  if (*(v0 + 248))
  {
    sub_68CD0((v0 + 224));
  }

  v5 = (v3 + 264) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1A29A4(uint64_t a1)
{
  sub_2BFF28();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_199198(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A2AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v38 = *(v2 + 80);
  v3 = (v38 + 32) & ~v38;
  v4 = *(v2 + 64);
  v5 = *(sub_6620C(&qword_3C4350, &qword_2E94F0) - 8);
  v37 = *(v5 + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_6620C(&qword_3BDE70, &qword_2E52F0) - 8);
  v36 = *(v8 + 80);
  v9 = (v7 + v36 + 16) & ~v36;
  v10 = *(v8 + 64);
  v11 = *(sub_6620C(&unk_3C4340, &qword_2EF090) - 8);
  v35 = *(v11 + 80);
  v12 = (v9 + v10 + v35) & ~v35;
  v13 = *(v11 + 64);
  v14 = *(sub_6620C(&qword_3BF3D8, &qword_2EE920) - 8);
  v30 = v12;
  v34 = *(v14 + 80);
  v31 = (v12 + v13 + v34) & ~v34;
  v15 = *(v14 + 64) + v31 + 7;
  v33 = sub_2BFF28();
  v16 = *(v33 - 8);
  v17 = *(v16 + 80);
  v32 = *(v16 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v18 = sub_2C4BB8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v6, 1, v18))
  {
    (*(v19 + 8))(v0 + v6, v18);
  }

  v20 = v15 & 0xFFFFFFFFFFFFFFF8;

  v21 = sub_2BEA28();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v9, 1, v21))
  {
    (*(v22 + 8))(v0 + v9, v21);
  }

  v23 = sub_2BEF78();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v30, 1, v23))
  {
    (*(v24 + 8))(v0 + v30, v23);
  }

  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_2BE968();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v31, 1, v26))
  {
    (*(v27 + 8))(v0 + v31, v26);
  }

  if (*(v0 + v25 + 24))
  {
    sub_68CD0((v0 + v25));
  }

  v28 = (v25 + v17 + 40) & ~v17;
  (*(v16 + 8))(v0 + v28, v33);

  return _swift_deallocObject(v0, v28 + v32, v38 | v37 | v36 | v35 | v34 | v17 | 7);
}

double sub_1A3004()
{
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_6620C(&qword_3C4350, &qword_2E94F0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_6620C(&qword_3BDE70, &qword_2E52F0) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_6620C(&unk_3C4340, &qword_2EF090) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_6620C(&qword_3BF3D8, &qword_2EE920) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(sub_2BFF28() - 8);
  return sub_19D708(v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), v0 + v8, v0 + v11, v0 + v14, *(v0 + v15), *(v0 + v15 + 8), v0 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v16 + 80) + 40) & ~*(v16 + 80)), v1, v18);
}

uint64_t sub_1A32C8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v38 = *(v2 + 80);
  v3 = (v38 + 48) & ~v38;
  v4 = *(v2 + 64);
  v5 = *(sub_6620C(&qword_3C4350, &qword_2E94F0) - 8);
  v37 = *(v5 + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_6620C(&qword_3BDE70, &qword_2E52F0) - 8);
  v36 = *(v8 + 80);
  v9 = (v7 + v36 + 16) & ~v36;
  v10 = *(v8 + 64);
  v11 = *(sub_6620C(&unk_3C4340, &qword_2EF090) - 8);
  v35 = *(v11 + 80);
  v12 = (v9 + v10 + v35) & ~v35;
  v13 = *(v11 + 64);
  v14 = *(sub_6620C(&qword_3BF3D8, &qword_2EE920) - 8);
  v30 = v12;
  v34 = *(v14 + 80);
  v31 = (v12 + v13 + v34) & ~v34;
  v15 = *(v14 + 64) + v31 + 7;
  v33 = sub_2BFF28();
  v16 = *(v33 - 8);
  v17 = *(v16 + 80);
  v32 = *(v16 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v18 = sub_2C4BB8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v6, 1, v18))
  {
    (*(v19 + 8))(v0 + v6, v18);
  }

  v20 = v15 & 0xFFFFFFFFFFFFFFF8;

  v21 = sub_2BEA28();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v9, 1, v21))
  {
    (*(v22 + 8))(v0 + v9, v21);
  }

  v23 = sub_2BEF78();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v30, 1, v23))
  {
    (*(v24 + 8))(v0 + v30, v23);
  }

  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_2BE968();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v31, 1, v26))
  {
    (*(v27 + 8))(v0 + v31, v26);
  }

  if (*(v0 + v25 + 24))
  {
    sub_68CD0((v0 + v25));
  }

  v28 = (v25 + v17 + 40) & ~v17;
  (*(v16 + 8))(v0 + v28, v33);

  return _swift_deallocObject(v0, v28 + v32, v38 | v37 | v36 | v35 | v34 | v17 | 7);
}

uint64_t sub_1A3824(uint64_t a1)
{
  v17 = v1[4];
  v2 = *(*(v17 - 8) + 64);
  v15 = (*(*(v17 - 8) + 80) + 48) & ~*(*(v17 - 8) + 80);
  v3 = *(sub_6620C(&qword_3C4350, &qword_2E94F0) - 8);
  v14 = (v15 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_6620C(&qword_3BDE70, &qword_2E52F0) - 8);
  v13 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  sub_6620C(&unk_3C4340, &qword_2EF090);
  sub_6620C(&qword_3BF3D8, &qword_2EE920);
  sub_2BFF28();
  v6 = v1[3];
  v12 = v1[2];
  v7 = v1 + v4;
  v8 = *(v1 + v4);
  v9 = *(v7 + 1);
  v10 = swift_task_alloc();
  *(v16 + 16) = v10;
  *v10 = v16;
  v10[1] = sub_88BE0;

  return sub_19DE50(a1, v12, v6, v1 + v15, v1 + v14, v8, v9, v1 + v13);
}

uint64_t sub_1A3B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3BD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A3C28()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A3CE4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_19C200(a1, v7, v8, v1 + v6, v4, v5);
}

unint64_t sub_1A3DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4440;
  if (!qword_3C4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4440);
  }

  return result;
}

uint64_t sub_1A3E34()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2BFF28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v12 = *(v7 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5 + 24))
  {
    sub_68CD0((v0 + v5));
  }

  v9 = v3 | v8;
  v10 = (v5 + v8 + 40) & ~v8;
  (*(v7 + 8))(v0 + v10, v6);

  return _swift_deallocObject(v0, v10 + v12, v9 | 7);
}

uint64_t sub_1A3FBC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2BFF28() - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 1);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_88BE0;

  return sub_199928(a1, v10, v11, v1 + v5, v13, v14, v1 + v7, v1 + v9);
}

uint64_t sub_1A414C()
{
  sub_68CD0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1A4184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A419C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A41DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1A424C()
{
  v1 = sub_2C5118();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShareBarButtonItem();
  v16.receiver = v0;
  v16.super_class = v5;
  v6 = objc_msgSendSuper2(&v16, "init");
  sub_66278(0, &qword_3BDC70, UIAction_ptr);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = sub_2C5888();
  v10 = [v7 __systemImageNamedSwift:v9];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_2C6018();
  [v8 setPrimaryAction:v11];

  sub_1DA078(0x6572616853);
  v12 = sub_2C5888();

  [v8 setAccessibilityLabel:v12];

  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  sub_2C50B8();
  sub_69198(v14, qword_3C0250, &unk_2E4630);
  sub_69198(v15, qword_3C0250, &unk_2E4630);
  sub_2C5F08();

  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1A4504(void *a1, char *a2)
{
  v105 = a2;
  v3 = sub_6620C(&qword_3BD858, &qword_2E8ED0);
  v84 = *(v3 - 8);
  __chkstk_darwin(v3);
  v83 = &v77 - v4;
  v82 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v77 - v5;
  v97 = sub_2C4D28();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v101 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2C22F8();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2C2208();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2C2178();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2C4BF8();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v77 - v12;
  v13 = sub_2BEB28();
  v104 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2BF048();
  v102 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2BF088();
  v103 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6620C(&unk_3C4370, &qword_2E7460);
  __chkstk_darwin(v22 - 8);
  v24 = &v77 - v23;
  v109 = sub_2BE3B8();
  v108 = *(v109 - 8);
  *&v25 = __chkstk_darwin(v109).n128_u64[0];
  v107 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  if ([a1 sender])
  {
    sub_2C6128();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v117 = v114;
  v118 = v115;
  if (!*(&v115 + 1))
  {
    sub_69198(&v117, qword_3C0250, &unk_2E4630);
    return;
  }

  type metadata accessor for ProductFeedBarButtonItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v80 = v3;
  v27 = v110;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v29 = Strong;
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {

    v116 = 0;
    v114 = 0u;
    v115 = 0u;
LABEL_15:
    sub_69198(&v114, &unk_3C2550, &qword_2E4E40);
    return;
  }

  v78 = v27;
  v79 = v29;
  v31 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v32 = v30;
  swift_beginAccess();
  sub_E452C(v32 + v31, &v114);

  if (!*(&v115 + 1))
  {

    goto LABEL_15;
  }

  sub_68D1C(&v114, &v117);
  sub_72084(&v117, *(&v118 + 1));
  sub_2BF968();
  v33 = v108;
  v34 = v109;
  if ((*(v108 + 48))(v24, 1, v109) != 1)
  {
    (*(v33 + 32))(v107, v24, v34);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    v36 = &unk_2E3000;
    if (v35)
    {
      v37 = v35;
      (*(v102 + 104))(v18, enum case for ClickData.TargetType.button(_:), v16);
      (*(v104 + 104))(v15, enum case for LinkActionType.click(_:), v13);
      sub_2BF058();
      sub_2ADDC8(v21, &v110);
      (*(v103 + 8))(v21, v19);
      if (*(&v111 + 1))
      {
        sub_68D1C(&v110, &v114);
        v105 = v37;
        sub_72084(&v117, *(&v118 + 1));
        sub_2BF3B8();
        v38 = v87;
        v39 = v86;
        v40 = v90;
        (*(v87 + 104))(v86, enum case for Metrics.TargetType.button(_:), v90);
        v41 = v91;
        v42 = v89;
        v43 = v93;
        (*(v91 + 104))(v89, enum case for Metrics.ClickActionType.share(_:), v93);
        v44 = v92;
        sub_2C22A8();
        v45 = v98;
        sub_2C2118();

        (*(v94 + 8))(v44, v95);
        (*(v41 + 8))(v42, v43);
        (*(v38 + 8))(v39, v40);
        v46 = v99;
        v47 = v100;
        (*(v99 + 16))(v88, v45, v100);
        sub_6620C(&qword_3BC240, &unk_2E9B40);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_2E3F30;
        sub_691F8(&v114, v48 + 32);
        v49 = v101;
        v50 = v105;
        sub_2C4D18();
        v51 = v97;
        *(&v111 + 1) = v97;
        v112 = &protocol witness table for CompoundAction;
        v52 = sub_720C8(&v110);
        v53 = v96;
        (*(v96 + 16))(v52, v49, v51);
        v54 = swift_unknownObjectWeakLoadStrong();
        if (v54)
        {
          v55 = v54;
          sub_DA510();
          v56 = v82;
          sub_2C4DB8();
          sub_2C5228();
          sub_2C4DB8();
          v57 = v83;
          sub_2C5218();
          v58 = v84;
          v59 = v80;
          (*(v84 + 104))(v57, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v80);
          sub_2C4F28();

          v49 = v101;

          v60 = v59;
          v47 = v100;
          (*(v58 + 8))(v57, v60);
          v46 = v99;
          v61 = v56;
          v45 = v98;
          (*(v81 + 8))(v85, v61);
        }

        else
        {
        }

        (*(v53 + 8))(v49, v51);
        (*(v46 + 8))(v45, v47);
        sub_68CD0(&v114);
        sub_68CD0(&v110);
        v36 = &unk_2E3000;
      }

      else
      {

        sub_69198(&v110, &unk_3BDC90, &unk_2E5620);
      }
    }

    sub_6620C(&qword_3BC308, &qword_2E2FE0);
    v62 = swift_allocObject();
    *(v62 + 16) = v36[243];
    v63 = v109;
    *(v62 + 56) = v109;
    v64 = sub_720C8((v62 + 32));
    v65 = v108;
    (*(v108 + 16))(v64, v107, v63);
    v66 = objc_allocWithZone(UIActivityViewController);
    isa = sub_2C5B18().super.isa;

    v68 = [v66 initWithActivityItems:isa applicationActivities:0];

    v69 = v68;
    v70 = [v69 presentationController];
    v71 = v106;
    v72 = v79;
    if (!v70)
    {
LABEL_33:
      v75 = [v69 popoverPresentationController];

      if (!v75)
      {
LABEL_43:
        [v72 presentViewController:v69 animated:1 completion:0];

        (*(v65 + 8))(v107, v63);
        goto LABEL_44;
      }

      if ([v71 sender])
      {
        sub_2C6128();
        swift_unknownObjectRelease();
      }

      else
      {
        v111 = 0u;
        v110 = 0u;
      }

      v114 = v110;
      v115 = v111;
      if (*(&v111 + 1))
      {
        sub_66278(0, &unk_3BFDE0, UIBarButtonItem_ptr);
        if (swift_dynamicCast())
        {
          v76 = v113;
LABEL_42:
          [v75 setSourceItem:v76];

          swift_unknownObjectRelease();
          goto LABEL_43;
        }
      }

      else
      {
        sub_69198(&v114, qword_3C0250, &unk_2E4630);
      }

      v76 = 0;
      goto LABEL_42;
    }

    v73 = v70;
    if ([v106 sender])
    {
      sub_2C6128();
      swift_unknownObjectRelease();
    }

    else
    {
      v111 = 0u;
      v110 = 0u;
    }

    v114 = v110;
    v115 = v111;
    if (*(&v111 + 1))
    {
      sub_66278(0, &unk_3BFDE0, UIBarButtonItem_ptr);
      if (swift_dynamicCast())
      {
        v74 = v113;
LABEL_32:
        [v73 setSourceItem:v74];

        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    else
    {
      sub_69198(&v114, qword_3C0250, &unk_2E4630);
    }

    v74 = 0;
    goto LABEL_32;
  }

  sub_69198(v24, &unk_3C4370, &qword_2E7460);
LABEL_44:
  sub_68CD0(&v117);
}

id sub_1A565C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShareBarButtonItem();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1A56B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A5718()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_2C5DD8();
    v6 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1A5860()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {

    sub_2C5DD8();
    v6 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t SwipeActionsViewModifier.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  sub_2C1498();
  sub_1A86DC(&qword_3BF720, &type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *(a2 + 48) = sub_2C2B48();
  *(a2 + 56) = v4;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  v5 = type metadata accessor for SwipeActionsViewModifier(0);
  v6 = *(v5 + 36);
  *(a2 + v6) = swift_getKeyPath();
  sub_6620C(&qword_3BF850, &qword_2E8BE0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 40);
  v8 = sub_2C1348();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2 + v7, a1, v8);
}

uint64_t SwipeActionsViewModifier.body(content:)()
{
  v1 = sub_6620C(&qword_3C4568, &qword_2F1308);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v12 = v0;
  v5 = sub_6620C(&qword_3C4570, &qword_2F1310);
  v6 = sub_6620C(&qword_3C4578, &qword_2F1318);
  v7 = sub_72B74(&qword_3C4580, &qword_3C4570, &qword_2F1310, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v8 = sub_1A8554();
  sub_2C3ED8();
  v11 = v0;
  sub_6620C(&qword_3C45A0, &qword_2F1328);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1A8628();
  sub_2C3ED8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A5D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3C4598, &qword_2F1320);
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = sub_6620C(&qword_3C4788, &qword_2F1668);
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_6620C(&qword_3C4790, &qword_2F1670);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SwipeActionButtonsView(0);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  if (sub_1A66FC())
  {
    v21 = *(v46 + 56);

    return v21(a1, 1, 1, v3);
  }

  else
  {
    v42 = v3;
    v43 = a1;
    v23 = *(type metadata accessor for SwipeActionsViewModifier(0) + 40);
    v24 = v15[15];
    v25 = sub_2C1348();
    (*(*(v25 - 8) + 16))(&v20[v24], v1 + v23, v25);
    KeyPath = swift_getKeyPath();
    *v20 = swift_getKeyPath();
    v20[40] = 0;
    *(v20 + 6) = swift_getKeyPath();
    v20[56] = 0;
    v27 = v15[6];
    *&v20[v27] = swift_getKeyPath();
    sub_6620C(&qword_3BD670, &unk_2E4270);
    swift_storeEnumTagMultiPayload();
    v28 = v15[7];
    *&v20[v28] = swift_getKeyPath();
    sub_6620C(&qword_3BDD08, &qword_2E5190);
    swift_storeEnumTagMultiPayload();
    v29 = &v20[v15[8]];
    *v29 = KeyPath;
    v29[8] = 0;
    v30 = v15[9];
    *&v20[v30] = swift_getKeyPath();
    sub_6620C(&qword_3C4730, &qword_2F1470);
    swift_storeEnumTagMultiPayload();
    v31 = &v20[v15[10]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = v15[11];
    *&v20[v32] = swift_getKeyPath();
    sub_6620C(&qword_3BF848, &qword_2E8AE8);
    swift_storeEnumTagMultiPayload();
    v33 = &v20[v15[12]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = &v20[v15[13]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = v15[14];
    *&v20[v35] = swift_getKeyPath();
    sub_6620C(&qword_3BF850, &qword_2E8BE0);
    swift_storeEnumTagMultiPayload();
    v36 = v15[16];
    v37 = 1;
    v20[v36] = 1;
    v38 = sub_1A5860();
    if ((v38 & 1) == 0)
    {
      v41 = &v41;
      __chkstk_darwin(v38);
      *(&v41 - 2) = v1;
      sub_6620C(&qword_3C4798, &unk_2F1678);
      type metadata accessor for ContextActionMenuView(0);
      sub_1A9C9C();
      sub_1A86DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
      sub_2C3958();
      (*(v44 + 32))(v14, v8, v45);
      v37 = 0;
    }

    (*(v44 + 56))(v14, v37, 1, v45);
    sub_1A9DE4(v20, v17, type metadata accessor for SwipeActionButtonsView);
    sub_6932C(v14, v11, &qword_3C4790, &qword_2F1670);
    sub_1A9DE4(v17, v5, type metadata accessor for SwipeActionButtonsView);
    v39 = sub_6620C(&qword_3C47A8, &qword_2F1688);
    sub_6932C(v11, &v5[*(v39 + 48)], &qword_3C4790, &qword_2F1670);
    sub_69198(v14, &qword_3C4790, &qword_2F1670);
    sub_1A9D80(v20);
    sub_69198(v11, &qword_3C4790, &qword_2F1670);
    sub_1A9D80(v17);
    v40 = v43;
    sub_69130(v5, v43, &qword_3C4598, &qword_2F1320);
    return (*(v46 + 56))(v40, 0, 1, v42);
  }
}

uint64_t sub_1A63C4@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SwipeActionButtonsView(0);
  v23 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A66FC())
  {
    v7 = *(v23 + 56);

    return v7(a1, 1, 1, v4);
  }

  else
  {
    v9 = *(type metadata accessor for SwipeActionsViewModifier(0) + 40);
    v10 = v4[15];
    v11 = sub_2C1348();
    (*(*(v11 - 8) + 16))(&v6[v10], v2 + v9, v11);
    KeyPath = swift_getKeyPath();
    *v6 = swift_getKeyPath();
    v6[40] = 0;
    *(v6 + 6) = swift_getKeyPath();
    v6[56] = 0;
    v13 = v4[6];
    *&v6[v13] = swift_getKeyPath();
    sub_6620C(&qword_3BD670, &unk_2E4270);
    swift_storeEnumTagMultiPayload();
    v14 = v4[7];
    *&v6[v14] = swift_getKeyPath();
    sub_6620C(&qword_3BDD08, &qword_2E5190);
    swift_storeEnumTagMultiPayload();
    v15 = &v6[v4[8]];
    *v15 = KeyPath;
    v15[8] = 0;
    v16 = v4[9];
    *&v6[v16] = swift_getKeyPath();
    sub_6620C(&qword_3C4730, &qword_2F1470);
    swift_storeEnumTagMultiPayload();
    v17 = &v6[v4[10]];
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v18 = v4[11];
    *&v6[v18] = swift_getKeyPath();
    sub_6620C(&qword_3BF848, &qword_2E8AE8);
    swift_storeEnumTagMultiPayload();
    v19 = &v6[v4[12]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v6[v4[13]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    v21 = v4[14];
    *&v6[v21] = swift_getKeyPath();
    sub_6620C(&qword_3BF850, &qword_2E8BE0);
    swift_storeEnumTagMultiPayload();
    v6[v4[16]] = 0;
    sub_1A98B4(v6, a1);
    return (*(v23 + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1A66FC()
{
  v1 = v0;
  v2 = sub_2C30F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v16[0]) != 1)
    {
      goto LABEL_9;
    }
  }

  v8 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_2C5DD8();
    v9 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v8, 0);
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v16[0]) != 1)
    {
LABEL_12:
      v13 = 1;
      return v13 & 1;
    }
  }

LABEL_9:
  type metadata accessor for SwipeActionsViewModifier(0);
  sub_2C1328();
  sub_72084(v16, v16[3]);
  if ((sub_2BF908() & 1) == 0)
  {
    sub_68CD0(v16);
    goto LABEL_14;
  }

  v10 = *(v1 + 48);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2C1488();

    sub_68CD0(v16);
    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v13 = sub_1A5718();
    return v13 & 1;
  }

  sub_2C1498();
  sub_1A86DC(&qword_3BF720, &type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  result = sub_2C2B38();
  __break(1u);
  return result;
}

uint64_t sub_1A69E8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SwipeActionsViewModifier(0);
  sub_2C1328();
  v10[0] = xmmword_2ECB90;
  memset(&v10[1], 0, 32);
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  sub_691F8(v11, v9);
  sub_C04C8(v10, v8);
  v2 = type metadata accessor for ContextActionMenuView(0);
  sub_CC804(v9, v8, a1 + v2[5]);
  sub_72084(v11, v11[3]);
  v3 = sub_2BF3B8();
  v5 = v4;
  sub_C12F8(v10);
  v6 = (a1 + v2[6]);
  *v6 = v3;
  v6[1] = v5;
  *(a1 + v2[7]) = 0;
  return sub_68CD0(v11);
}

uint64_t sub_1A6AE4@<X0>(uint64_t a1@<X8>)
{
  v9 = sub_1DA078(1701998413);
  v10 = v2;
  sub_7212C(v9, v2, v3);
  sub_2C4308();
  v4 = [objc_opt_self() systemGray2Color];
  sub_2C4178();
  KeyPath = swift_getKeyPath();
  v6 = sub_2C2718();
  result = sub_6620C(&qword_3C4798, &unk_2F1678);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  return result;
}

void *sub_1A6BD4()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SwipeActionButtonsView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1A6D34()
{
  v1 = sub_6620C(&qword_3C4568, &qword_2F1308);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v12 = v0;
  v5 = sub_6620C(&qword_3C4570, &qword_2F1310);
  v6 = sub_6620C(&qword_3C4578, &qword_2F1318);
  v7 = sub_72B74(&qword_3C4580, &qword_3C4570, &qword_2F1310, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v8 = sub_1A8554();
  sub_2C3ED8();
  v11 = v0;
  sub_6620C(&qword_3C45A0, &qword_2F1328);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1A8628();
  sub_2C3ED8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A6F4C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_2BE7E8();
  __chkstk_darwin(v4 - 8);
  v53 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2C30F8();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v9 - 8);
  v11 = (&v53 - v10);
  v54 = *a1;
  v12 = type metadata accessor for SwipeActionButtonsView(0);
  sub_2C1328();
  sub_691F8(v61, v58);
  v13 = type metadata accessor for ContextActionDataModel.Asset();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BSUIContextActionDataAssetModel_initType];
  sub_691F8(v58, &v14[OBJC_IVAR___BSUIContextActionDataAssetModel_initType]);
  v15[40] = 3;
  v57.receiver = v14;
  v57.super_class = v13;
  v16 = objc_msgSendSuper2(&v57, "init");
  sub_68CD0(v58);
  v17 = objc_allocWithZone(type metadata accessor for ContextActionDataModel(0));
  v18 = ContextActionDataModel.init(asset:sourceView:)(v16, 0);
  sub_72084(v61, v62);
  v19 = sub_2BF3B8();
  v21 = v20;
  v22 = &v18[OBJC_IVAR___BSUIContextActionDataModel_presentationRefID];
  swift_beginAccess();
  *v22 = v19;
  v22[1] = v21;

  sub_29AD44(v11);
  v23 = sub_2BE5C8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_69198(v11, &qword_3BCE00, &unk_2E3D30);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_2BE598();
    v26 = v27;
    (*(v24 + 8))(v11, v23);
  }

  v28 = &v18[OBJC_IVAR___BSUIContextActionDataModel_presentationRefInstance];
  swift_beginAccess();
  *v28 = v25;
  v28[1] = v26;

  v29 = v2 + v12[10];
  v30 = *v29;
  v31 = v6;
  if (*(v29 + 8) == 1)
  {
    LOBYTE(v58[0]) = v30 & 1;
  }

  else
  {

    sub_2C5DD8();
    v32 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v30, 0);
    (*(v55 + 8))(v8, v6);
    LOBYTE(v30) = v58[0];
  }

  v33 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  v18[v33] = v30 & 1;
  v34 = v2 + v12[12];
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    sub_2C5DD8();
    v36 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v35, 0);
    (*(v55 + 8))(v8, v6);
    LOBYTE(v35) = v58[0];
  }

  v37 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  swift_beginAccess();
  v18[v37] = v35 & 1;
  v38 = v2 + v12[13];
  v39 = *v38;
  if (*(v38 + 8) != 1)
  {

    sub_2C5DD8();
    v40 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v39, 0);
    (*(v55 + 8))(v8, v6);
    LOBYTE(v39) = v58[0];
  }

  v41 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  swift_beginAccess();
  v18[v41] = v39 & 1;
  v42 = v53;
  sub_29AD68(v53);
  v43 = OBJC_IVAR___BSUIContextActionDataModel_analyticsAttributes;
  swift_beginAccess();
  sub_CF028(v42, &v18[v43]);
  swift_endAccess();
  sub_29AF38(v58);
  v44 = v59;
  v45 = v60;
  sub_72084(v58, v59);
  v46 = *(v2 + 48);
  if (*(v2 + 56) == 1)
  {
    v47 = v46;
    if (!v46)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_2C5DD8();
    v48 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v46, 0);
    (*(v55 + 8))(v8, v31);
    v46 = v56;
    if (!v56)
    {
LABEL_15:
      v46 = [objc_allocWithZone(UIViewController) init];
    }
  }

  LOBYTE(v56) = v54;
  sub_72084(v61, v62);
  v49 = sub_2BF3B8();
  v51 = (*(v45 + 16))(v18, v46, &v56, v49, v50, v44, v45);

  sub_68CD0(v58);
  sub_68CD0(v61);
  return v51;
}

uint64_t sub_1A76EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v5 = sub_6620C(&qword_3C4350, &qword_2E94F0);
  __chkstk_darwin(v5 - 8);
  v74 = (v61 - v6);
  v7 = sub_6620C(&qword_3BF3D8, &qword_2EE920);
  __chkstk_darwin(v7 - 8);
  v72 = v61 - v8;
  v9 = sub_6620C(&unk_3C4340, &qword_2EF090);
  __chkstk_darwin(v9 - 8);
  v76 = v61 - v10;
  v11 = sub_2BF0B8();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = (v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v14 - 8);
  v75 = v61 - v15;
  v16 = sub_6620C(&qword_3C4358, &unk_2F1068);
  __chkstk_darwin(v16 - 8);
  v70 = (v61 - v17);
  v78 = sub_6620C(&qword_3C4770, &qword_2F1490);
  __chkstk_darwin(v78);
  v71 = v61 - v18;
  v77 = sub_6620C(&qword_3C4780, &qword_2F1498);
  __chkstk_darwin(v77);
  v20 = v61 - v19;
  v21 = sub_6620C(&qword_3C4750, &qword_2F1480);
  __chkstk_darwin(v21);
  v23 = v61 - v22;
  v25 = a1[3];
  v24 = a1[4];
  sub_72084(a1, v25);
  (*(v24 + 16))(v79, v25, v24);
  if (ContextActionType.rawValue.getter() == 0x6572616873 && v26 == 0xE500000000000000)
  {

LABEL_5:
    v28 = a1[3];
    v29 = a1[4];
    sub_72084(a1, v28);
    ContextActionItem.swipeActionShareButton.getter(v28, v29, v23);
    v30 = a1[3];
    v31 = a1[4];
    sub_72084(a1, v30);
    v32 = ContextActionItem.swipeActionBackgroundColor.getter(v30, v31);
    KeyPath = swift_getKeyPath();
    v79[0] = v32;
    v34 = sub_2C2718();
    v35 = &v23[*(v21 + 36)];
    *v35 = KeyPath;
    v35[1] = v34;
    v36 = &qword_3C4750;
    v37 = &qword_2F1480;
    sub_6932C(v23, v20, &qword_3C4750, &qword_2F1480);
    swift_storeEnumTagMultiPayload();
    sub_1A9A24();
    sub_1A9ADC();
    sub_2C33C8();
    v38 = v23;
    return sub_69198(v38, v36, v37);
  }

  v27 = sub_2C65B8();

  if (v27)
  {
    goto LABEL_5;
  }

  v67 = v21;
  v68 = a3;
  v39 = a1[3];
  v65 = a1[4];
  v66 = v39;
  v64 = sub_72084(a1, v39);
  v40 = type metadata accessor for SwipeActionButtonsView(0);
  v61[0] = *(v40 + 60);
  v62 = sub_2C12E8();
  v63 = v41;
  v61[2] = v40;
  v61[1] = *(v40 + 28);
  sub_29AB30(v13);
  sub_2BEA28();
  sub_1A86DC(&unk_3C0030, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
  sub_1A86DC(&unk_3C43F0, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
  sub_2BF098();
  v42 = *(v69 + 8);
  v42(v13, v11);
  sub_29AB30(v13);
  sub_2BEF78();
  sub_1A86DC(&unk_3C0040, &type metadata accessor for PageData, &protocol conformance descriptor for PageData);
  sub_1A86DC(&unk_3C4400, &type metadata accessor for PageData, &protocol conformance descriptor for PageData);
  sub_2BF098();
  v42(v13, v11);
  v43 = sub_1A6BD4();
  if (v43)
  {
    v44 = v43;
    sub_2C1328();
    v45 = v44;
    v46 = v72;
    sub_2BE928();
    v47 = sub_2BE968();
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {
    v48 = sub_2BE968();
    v46 = v72;
    (*(*(v48 - 8) + 56))(v72, 1, 1, v48);
  }

  v49 = v74;
  sub_29B300(v74);
  v50 = v70;
  v52 = v75;
  v51 = v76;
  ContextActionItem.swipeActionButton(for:sectionData:pageData:contentData:pageMetrics:)(v62, v63, v75, v76, v46, v49, v66, v65, v70);

  sub_69198(v49, &qword_3C4350, &qword_2E94F0);
  sub_69198(v46, &qword_3BF3D8, &qword_2EE920);
  sub_69198(v51, &unk_3C4340, &qword_2EF090);
  sub_69198(v52, &qword_3BDE70, &qword_2E52F0);
  v53 = a1[3];
  v54 = a1[4];
  sub_72084(a1, v53);
  v55 = ContextActionItem.swipeActionBackgroundColor.getter(v53, v54);
  v56 = swift_getKeyPath();
  v79[0] = v55;
  v57 = sub_2C2718();
  v58 = v71;
  sub_69130(v50, v71, &qword_3C4358, &unk_2F1068);
  v59 = (v58 + *(v78 + 36));
  *v59 = v56;
  v59[1] = v57;
  v36 = &qword_3C4770;
  v37 = &qword_2F1490;
  sub_6932C(v58, v20, &qword_3C4770, &qword_2F1490);
  swift_storeEnumTagMultiPayload();
  sub_1A9A24();
  sub_1A9ADC();
  sub_2C33C8();
  v38 = v58;
  return sub_69198(v38, v36, v37);
}

uint64_t sub_1A7FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_E61A4(a1, a2, a3);
  result = sub_2C3108();
  v6 = v9[0];
  if (v9[0])
  {
    v7 = v9[1];
    (v9[0])(v9, result);
    result = sub_77BDC(v6, v7);
    v8 = v9[0];
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1A8098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2CC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8114(uint64_t a1)
{
  v2 = sub_2BE7E8();
  __chkstk_darwin(v2 - 8);
  sub_1A9DE4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &type metadata accessor for ContextAssetInfoAnalytics);
  return sub_2C2C98();
}

uint64_t sub_1A81B0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v9 = *(v1 + *(v4 + 72));
  v8 = sub_1A6F4C(&v9);
  swift_getKeyPath();
  sub_1A9DE4(v1, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SwipeActionButtonsView);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1A98B4(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_6620C(&qword_3C4330, &qword_2F1000);
  sub_6620C(&qword_3C4738, &qword_2F1478);
  sub_72B74(&qword_3BF840, &qword_3C4330, &qword_2F1000, &protocol conformance descriptor for [A]);
  sub_1A9998();
  return sub_2C4558();
}

uint64_t sub_1A837C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A83D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2C08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A8490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2CC8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1A8554()
{
  result = qword_3C4588;
  if (!qword_3C4588)
  {
    sub_718D4(&qword_3C4578, &qword_2F1318);
    sub_72B74(&qword_3C4590, &qword_3C4598, &qword_2F1320, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4588);
  }

  return result;
}

unint64_t sub_1A8628()
{
  result = qword_3C45A8;
  if (!qword_3C45A8)
  {
    sub_718D4(&qword_3C45A0, &qword_2F1328);
    sub_1A86DC(&qword_3C45B0, type metadata accessor for SwipeActionButtonsView, &unk_2F13E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C45A8);
  }

  return result;
}

uint64_t sub_1A86DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
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
    v9 = sub_6620C(&qword_3BF6A8, &unk_2E8910);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2C1348();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A88C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v8 = sub_6620C(&qword_3BF6A8, &unk_2E8910);
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
      v13 = sub_2C1348();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1A89F4(uint64_t a1)
{
  sub_9DC2C(319, &qword_3BC858, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_CEA1C(319);
    if (v2 <= 0x3F)
    {
      sub_1A9360(319, &qword_3BF768, &type metadata accessor for ContextAssetInfoAnalytics);
      if (v3 <= 0x3F)
      {
        sub_2C1348();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A8AE0()
{
  sub_718D4(&qword_3C4568, &qword_2F1308);
  sub_718D4(&qword_3C45A0, &qword_2F1328);
  sub_718D4(&qword_3C4570, &qword_2F1310);
  sub_718D4(&qword_3C4578, &qword_2F1318);
  sub_72B74(&qword_3C4580, &qword_3C4570, &qword_2F1310, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1A8554();
  swift_getOpaqueTypeConformance2();
  sub_1A8628();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A8C0C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_6620C(&qword_3BF6A0, &unk_2F13A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDD10, &unk_2E51D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = sub_6620C(&qword_3C4660, &unk_2F13B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v14 = sub_6620C(&qword_3BF698, &unk_2E8900);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = sub_6620C(&qword_3BF6A8, &unk_2E8910);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[14];
    goto LABEL_15;
  }

  v17 = sub_2C1348();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
}

uint64_t sub_1A8E98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
    return result;
  }

  v8 = sub_6620C(&qword_3BF6A0, &unk_2F13A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDD10, &unk_2E51D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3C4660, &unk_2F13B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3BF698, &unk_2E8900);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = sub_6620C(&qword_3BF6A8, &unk_2E8910);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[14];
    goto LABEL_13;
  }

  v17 = sub_2C1348();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[15];

  return v18(v19, a2, a2, v17);
}

void sub_1A9114(uint64_t a1)
{
  sub_CEAF8(319, &qword_3BF728, &qword_3BF730, &unk_2E8940);
  if (v1 <= 0x3F)
  {
    sub_CEAF8(319, &qword_3BF738, &qword_3BF740, &qword_2F13E0);
    if (v2 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BF758, &qword_3BCE00, &unk_2E3D30);
      if (v3 <= 0x3F)
      {
        sub_1A9360(319, &qword_3BDDA8, &type metadata accessor for DataStack);
        if (v4 <= 0x3F)
        {
          sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0, &qword_2E5200);
          if (v5 <= 0x3F)
          {
            sub_CEAF8(319, &unk_3C46D0, &qword_3C4350, &qword_2E94F0);
            if (v6 <= 0x3F)
            {
              sub_9DC2C(319, &qword_3BF760, &type metadata for FigaroPageConfiguration);
              if (v7 <= 0x3F)
              {
                sub_CEAF8(319, &qword_3BF748, &qword_3BF750, &unk_2E8950);
                if (v8 <= 0x3F)
                {
                  sub_9DC2C(319, &qword_3BC858, &type metadata for Bool);
                  if (v9 <= 0x3F)
                  {
                    sub_1A9360(319, &qword_3BF768, &type metadata accessor for ContextAssetInfoAnalytics);
                    if (v10 <= 0x3F)
                    {
                      sub_2C1348();
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

void sub_1A9360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A93D8()
{
  v1 = type metadata accessor for SwipeActionButtonsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    sub_68CD0((v0 + v3));
  }

  else
  {
  }

  sub_9E94C(*(v5 + 48), *(v5 + 56));
  v6 = v1[6];
  sub_6620C(&qword_3BD670, &unk_2E4270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2BE5C8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2BF0B8();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_9E94C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v11 = v1[9];
  sub_6620C(&qword_3C4730, &qword_2F1470);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2C4BB8();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  sub_6620C(&qword_3BF848, &qword_2E8AE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2C1278();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_71AF4(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v17 = v1[14];
  sub_6620C(&qword_3BF850, &qword_2E8BE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2BEC68();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v5 + v17, 1, v18))
    {
      (*(v19 + 8))(v5 + v17, v18);
    }
  }

  else
  {
  }

  v20 = v1[15];
  v21 = sub_2C1348();
  (*(*(v21 - 8) + 8))(v5 + v20, v21);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A98B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeActionButtonsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SwipeActionButtonsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A76EC(a1, v6, a2);
}

unint64_t sub_1A9998()
{
  result = qword_3C4740;
  if (!qword_3C4740)
  {
    sub_718D4(&qword_3C4738, &qword_2F1478);
    sub_1A9A24();
    sub_1A9ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4740);
  }

  return result;
}

unint64_t sub_1A9A24()
{
  result = qword_3C4748;
  if (!qword_3C4748)
  {
    sub_718D4(&qword_3C4750, &qword_2F1480);
    sub_C78D4();
    sub_72B74(&qword_3C4758, &qword_3C4760, &qword_2F1488, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4748);
  }

  return result;
}

unint64_t sub_1A9ADC()
{
  result = qword_3C4768;
  if (!qword_3C4768)
  {
    sub_718D4(&qword_3C4770, &qword_2F1490);
    sub_72B74(&qword_3C4778, &qword_3C4358, &unk_2F1068, &protocol conformance descriptor for PerformActionView<A>);
    sub_72B74(&qword_3C4758, &qword_3C4760, &qword_2F1488, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4768);
  }

  return result;
}

uint64_t sub_1A9BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C3058();
  *a1 = result;
  return result;
}

unint64_t sub_1A9C9C()
{
  result = qword_3C47A0;
  if (!qword_3C47A0)
  {
    sub_718D4(&qword_3C4798, &unk_2F1678);
    sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
    sub_72B74(&qword_3C4758, &qword_3C4760, &qword_2F1488, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C47A0);
  }

  return result;
}

uint64_t sub_1A9D80(uint64_t a1)
{
  v2 = type metadata accessor for SwipeActionButtonsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9E50()
{
  result = qword_3C47B0;
  if (!qword_3C47B0)
  {
    sub_718D4(&qword_3C47B8, qword_2F16C8);
    sub_1A9998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C47B0);
  }

  return result;
}

uint64_t sub_1A9EDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = sub_2C0F58();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  __chkstk_darwin(v53);
  v54 = &v48 - v5;
  v55 = sub_6620C(&qword_3BF3D0, &unk_2F1730);
  __chkstk_darwin(v55);
  v56 = &v48 - v6;
  v57 = sub_6620C(&qword_3BF3A8, &qword_2E84C0);
  __chkstk_darwin(v57);
  v8 = &v48 - v7;
  v9 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v60 = sub_6620C(&qword_3C4888, &qword_2F1870);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v13 = &v48 - v12;
  v14 = type metadata accessor for HeroComponentModel(0);
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v67 = v16 + 40;
  sub_A9708(&v68, (v16 + 40), &unk_3BDC90, &unk_2E5620);
  v17 = v14[6];
  v18 = sub_2C5018();
  v19 = *(*(v18 - 8) + 56);
  v62 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = v14[7];
  v21 = sub_2BEA68();
  v22 = *(*(v21 - 8) + 56);
  v64 = v20;
  v22(&v16[v20], 1, 1, v21);
  v23 = v14[8];
  v24 = sub_2BE968();
  v25 = *(*(v24 - 8) + 56);
  v66 = v23;
  v25(&v16[v23], 1, 1, v24);
  v26 = v14[9];
  v27 = sub_2BEE38();
  v28 = *(*(v27 - 8) + 56);
  v63 = v26;
  v28(&v16[v26], 1, 1, v27);
  v29 = a1[3];
  v65 = a1;
  v30 = sub_72084(a1, v29);
  sub_1AB3F4(v30, v31, v32);
  v59 = v13;
  v33 = v61;
  sub_2C67A8();
  if (v33)
  {
    v34 = v62;
    v35 = v63;
    sub_68CD0(v65);
    v36 = v64;
    sub_69198(v67, &qword_3BE370, &qword_2E7520);
    sub_69198(&v16[v34], &qword_3BF898, &unk_2EA240);
    sub_69198(&v16[v36], &qword_3BF3A8, &qword_2E84C0);
    sub_69198(&v16[v66], &qword_3BF3D0, &unk_2F1730);
    return sub_69198(&v16[v35], &qword_3BF3C0, &unk_2ECCC0);
  }

  else
  {
    v61 = v8;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v71 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    sub_2C64A8();
    v37 = v69;
    *v16 = v68;
    *(v16 + 1) = v37;
    *(v16 + 4) = v70;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v71 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_2C64A8();
    v38 = v62;
    sub_A9708(&v68, v67, &qword_3BE370, &qword_2E7520);
    LOBYTE(v68) = 2;
    sub_1AB5B0(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
    sub_2C64A8();
    v39 = v64;
    v40 = v58;
    sub_A9708(v11, &v16[v38], &qword_3BF898, &unk_2EA240);
    LOBYTE(v68) = 3;
    sub_1AB5B0(&qword_3C4898, &qword_3BF3A8, &qword_2E84C0, sub_1AB448);
    v41 = v61;
    sub_2C64A8();
    sub_A9708(v41, &v16[v39], &qword_3BF3A8, &qword_2E84C0);
    LOBYTE(v68) = 4;
    sub_1AB5B0(&qword_3C48B0, &qword_3BF3D0, &unk_2F1730, sub_1AB4FC);
    v42 = v56;
    sub_2C64A8();
    sub_A9708(v42, &v16[v66], &qword_3BF3D0, &unk_2F1730);
    LOBYTE(v68) = 5;
    sub_1AB5B0(&qword_3C23F0, &qword_3BF3C0, &unk_2ECCC0, sub_13D980);
    v43 = v54;
    sub_2C64A8();
    sub_A9708(v43, &v16[v63], &qword_3BF3C0, &unk_2ECCC0);
    LOBYTE(v68) = 6;
    sub_1AB62C(&qword_3C48C8, &type metadata accessor for HeroLockupModel, &protocol conformance descriptor for HeroLockupModel);
    v44 = v40;
    v46 = v59;
    v45 = v60;
    sub_2C64A8();
    (*(v44 + 8))(v46, v45);
    (*(v49 + 32))(&v16[v14[10]], v52, v51);
    sub_1AB674(v16, v50);
    sub_68CD0(v65);
    return sub_1AB6D8(v16);
  }
}

unint64_t sub_1AA890()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000023;
  if (v1 != 5)
  {
    v3 = 0x65646F4D77656976;
  }

  v4 = 0x65736163776F6C66;
  if (v1 != 3)
  {
    v4 = 0x44746E65746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1AA97C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AB84C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AA9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AB3F4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1AA9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AB3F4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1AAA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898, &unk_2EA240);
  return sub_E1DC8(v7, a2);
}

void *sub_1AAAE4(uint64_t a1)
{
  if ((sub_2C0F48() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2E3F30;
  *(v1 + 56) = sub_2BECC8();
  *(v1 + 64) = sub_1AB62C(&qword_3BF440, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  *(v1 + 72) = sub_1AB62C(&qword_3BF448, &type metadata accessor for ContentExposureData, &protocol conformance descriptor for ContentExposureData);
  sub_720C8((v1 + 32));
  sub_2BEC98();
  return v1;
}

uint64_t sub_1AABD4(uint64_t a1)
{
  v1 = sub_2C1A98();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2C1928();
  *v4 = 0x3FF0000000000000;
  (*(v2 + 104))(v4, enum case for ShelfGridItemColumnSpan.absolute(_:), v1);
  sub_2BFD28();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAD08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF3A8, &qword_2E84C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3BF3D0, &unk_2F1730);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = sub_2C0F58();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_1AAF48(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BF3A8, &qword_2E84C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_6620C(&qword_3BF3D0, &unk_2F1730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_6620C(&qword_3BF3C0, &unk_2ECCC0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = sub_2C0F58();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for HeroComponentModel(uint64_t a1)
{
  result = qword_3C4818;
  if (!qword_3C4818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB1C0(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_D7504(319, &qword_3C0940, &qword_3BDF58, &unk_2E5B70);
      if (v3 <= 0x3F)
      {
        sub_D7504(319, &qword_3C4828, &qword_3BF3B0, &unk_2F1760);
        if (v4 <= 0x3F)
        {
          sub_D7504(319, &unk_3C4830, &qword_3BF3D8, &qword_2EE920);
          if (v5 <= 0x3F)
          {
            sub_D7504(319, &unk_3C2348, &qword_3BF3C8, &qword_2F1770);
            if (v6 <= 0x3F)
            {
              sub_2C0F58();
              if (v7 <= 0x3F)
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

unint64_t sub_1AB3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4890;
  if (!qword_3C4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4890);
  }

  return result;
}

unint64_t sub_1AB448()
{
  result = qword_3C48A0;
  if (!qword_3C48A0)
  {
    sub_718D4(&qword_3BF3B0, &unk_2F1760);
    sub_1AB62C(&qword_3C48A8, &type metadata accessor for FlowcaseData, &protocol conformance descriptor for FlowcaseData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48A0);
  }

  return result;
}

unint64_t sub_1AB4FC()
{
  result = qword_3C48B8;
  if (!qword_3C48B8)
  {
    sub_718D4(&qword_3BF3D8, &qword_2EE920);
    sub_1AB62C(&qword_3C48C0, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48B8);
  }

  return result;
}

uint64_t sub_1AB5B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB62C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AB674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB6D8(uint64_t a1)
{
  v2 = type metadata accessor for HeroComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C48D0;
  if (!qword_3C48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48D0);
  }

  return result;
}

unint64_t sub_1AB7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C48D8;
  if (!qword_3C48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48D8);
  }

  return result;
}

unint64_t sub_1AB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C48E0;
  if (!qword_3C48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C48E0);
  }

  return result;
}

uint64_t sub_1AB84C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000003004E0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_2C65B8();

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

void FlowActionCardSetPresentationImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4C08();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C48E8, &unk_2F1990);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_2C51D8();
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - v13;
  v15 = sub_6620C(&qword_3C48F0, &unk_2F19A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v60 - v16;
  v18 = sub_2C0508();
  v66 = *(v18 - 8);
  v67 = v18;
  __chkstk_darwin(v18);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *v2;
  v20 = sub_2C0478();
  v22 = v21;
  if (v20 == sub_2C5318() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_2C65B8();

    if ((v24 & 1) == 0)
    {
LABEL_9:
      sub_6620C(&qword_3BDAB8, &unk_2E8250);
      (*(v64 + 104))(v63, enum case for ActionOutcome.unsupported(_:), v65);
      sub_2C56F8();
      return;
    }
  }

  sub_2C0468();
  sub_6620C(&qword_3C48F8, &unk_2F19B0);
  v25 = v67;
  v26 = swift_dynamicCast();
  v27 = v66;
  v28 = *(v66 + 56);
  if ((v26 & 1) == 0)
  {
    v28(v17, 1, 1, v25);
    sub_69198(v17, &qword_3C48F0, &unk_2F19A0);
    goto LABEL_9;
  }

  v28(v17, 0, 1, v25);
  (*(v27 + 32))(v62, v17, v25);
  v29 = sub_2C04F8();
  v68 = v30;
  v69 = v29;
  sub_2C0568();
  v31 = sub_2C0778();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v14, 1, v31) == 1)
  {
    sub_69198(v14, &qword_3BCE28, &qword_2E9620);
    v33 = sub_6759C(_swiftEmptyArrayStorage);
  }

  else
  {
    v33 = ActionOrigin.appAnalyticsMetricsFeedOptions.getter();
    (*(v32 + 8))(v14, v31);
  }

  v34 = v61;
  v75 = v33;
  sub_2C4D98();
  if ((*(v34 + 48))(v8, 1, v9) == 1)
  {
    sub_69198(v8, &qword_3C48E8, &unk_2F1990);
  }

  else
  {
    (*(v34 + 32))(v11, v8, v9);
    *&v70 = v69;
    *(&v70 + 1) = v68;

    sub_2C61A8();
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v35 = sub_285C2C(&v76, &v70);
    sub_69198(&v70, &qword_3BE008, &unk_2E5630);
    sub_68D90(&v76);
    if (v35)
    {
      v36 = sub_6620C(&qword_3BD860, &qword_2EB540);
      v77 = v36;
      *&v76 = v35;
      sub_693CC(&v76, &v70);
      v37 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v37;
      v39 = sub_8C564(&v70, *(&v71 + 1));
      v40 = __chkstk_darwin(v39);
      v42 = &v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42, v40);
      sub_1AC51C(v42, 0xD000000000000013, 0x80000000003061C0, isUniquelyReferenced_nonNull_native, &v73, v36);
      sub_68CD0(&v70);
      (*(v34 + 8))(v11, v9);
      v75 = v73;
    }

    else
    {
      sub_24DAE8(0xD000000000000013, 0x80000000003061C0, &v76);
      sub_69198(&v76, &qword_3C4908, &unk_2F19D0);
      (*(v34 + 8))(v11, v9);
    }
  }

  v44 = v60;

  v45 = sub_1AC810(v44, &v75, a2);

  sub_6620C(&qword_3BCE30, qword_2E3D60);
  sub_2C4DB8();
  v46 = v45[2];
  if (v46)
  {
    v47 = 0;
    while (v47 < v45[2])
    {
      v48 = v45[v47 + 4];
      v49 = *(v48 + 16);

      if (v49)
      {
        v50 = sub_5D228(25705, 0xE200000000000000);
        if (v51)
        {
          sub_68C64(*(v48 + 56) + 32 * v50, &v70);
          sub_6620C(&qword_3C4900, &unk_2F19C0);
          if (swift_dynamicCast())
          {
            if (v73 == v69 && v74 == v68)
            {
LABEL_35:

LABEL_37:

              goto LABEL_38;
            }

            v52 = sub_2C65B8();

            if (v52)
            {

              goto LABEL_37;
            }
          }
        }
      }

      if (*(v48 + 16) && (v53 = sub_5D228(0x644965726F7473, 0xE700000000000000), (v54 & 1) != 0) && (sub_68C64(*(v48 + 56) + 32 * v53, &v70), sub_6620C(&qword_3C4900, &unk_2F19C0), (swift_dynamicCast() & 1) != 0))
      {
        if (v73 == v69 && v74 == v68)
        {
          goto LABEL_35;
        }

        v55 = sub_2C65B8();

        if (v55)
        {
          goto LABEL_37;
        }
      }

      else
      {
      }

      if (v46 == ++v47)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:

    v47 = 0;
LABEL_38:
    v56 = v77;
    v57 = v78;
    sub_72084(&v76, v77);
    v58 = sub_28F818(v45);

    v59 = sub_6864C(_swiftEmptyArrayStorage);
    (*(v57 + 88))(v58, v47, 1, v59, v56, v57);

    sub_6620C(&qword_3BDAB8, &unk_2E8250);
    (*(v64 + 104))(v63, enum case for ActionOutcome.performed(_:), v65);
    sub_2C56F8();
    (*(v66 + 8))(v62, v67);
    sub_68CD0(&v76);
  }
}

_OWORD *sub_1AC51C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v32 = a6;
  v12 = sub_720C8(&v31);
  (*(*(a6 - 8) + 32))(v12, a1, a6);
  v13 = *a5;
  v15 = sub_5D228(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      sub_68CD0(v22);
      return sub_693CC(&v31, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_64184();
    goto LABEL_7;
  }

  sub_6086C(v18, a4 & 1);
  v24 = sub_5D228(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = sub_8C564(&v31, v32);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_1AC73C(v15, a2, a3, v29, v21, a6);

  return sub_68CD0(&v31);
}

_OWORD *sub_1AC73C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  v12 = sub_720C8(&v18);
  (*(*(a6 - 8) + 32))(v12, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_693CC(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *sub_1AC810(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_64B14(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = *(sub_2C2338() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v36 = "contentExposureData";
    v37 = "Unknown asset type ";
    sub_6620C(&qword_3C0248, &unk_2E9B50);
    v35 = *(v6 + 72);
    do
    {
      v8 = sub_2C2328();
      v9 = *v38;
      if (*v38)
      {
        v10 = sub_6620C(&qword_3BC208, &qword_2E2EE0);
        *(&v45 + 1) = v10;
        *&v44 = v9;
        sub_693CC(&v44, &v41);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v8;
        v12 = sub_8C564(&v41, v42);
        v13 = __chkstk_darwin(v12);
        v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v15, v13);
        sub_1AC51C(v15, 0xD000000000000013, v37 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &v43, v10);
        sub_68CD0(&v41);
        v8 = v43;
      }

      else
      {
        v17 = sub_5D228(0xD000000000000013, v37 | 0x8000000000000000);
        if (v18)
        {
          v19 = v17;
          v20 = swift_isUniquelyReferenced_nonNull_native();
          *&v41 = v8;
          if ((v20 & 1) == 0)
          {
            sub_64184();
            v8 = v41;
          }

          sub_693CC((*(v8 + 56) + 32 * v19), &v44);
          sub_24E5F0(v19, v8);
        }

        else
        {
          v44 = 0u;
          v45 = 0u;
        }

        sub_69198(&v44, &qword_3C4908, &unk_2F19D0);
      }

      sub_2C4DB8();
      v21 = v43;
      *(&v45 + 1) = swift_getObjectType();
      *&v44 = v21;
      sub_693CC(&v44, &v41);
      LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
      v40 = v8;
      v22 = v42;
      v23 = sub_8C564(&v41, v42);
      v24 = __chkstk_darwin(v23);
      v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_1AC51C(v26, 0xD000000000000013, v36 | 0x8000000000000000, v21, &v40, v22);
      sub_68CD0(&v41);
      v28 = v40;
      *(&v45 + 1) = &type metadata for Bool;
      LOBYTE(v44) = 1;
      sub_693CC(&v44, &v41);
      LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
      v43 = v28;
      v29 = sub_8C564(&v41, v42);
      sub_1CE8E8(*v29, 0x647261436E497369, 0xE800000000000000, v22, &v43);
      sub_68CD0(&v41);
      v30 = v43;
      v46 = v4;
      v32 = v4[2];
      v31 = v4[3];
      if (v32 >= v31 >> 1)
      {
        sub_64B14((v31 > 1), v32 + 1, 1);
        v4 = v46;
      }

      v4[2] = v32 + 1;
      v4[v32 + 4] = v30;
      v7 += v35;
      --v3;
    }

    while (v3);
  }

  return v4;
}

unint64_t sub_1ACCBC()
{
  result = qword_3C2AE0;
  if (!qword_3C2AE0)
  {
    sub_2C0578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2AE0);
  }

  return result;
}

void *sub_1ACD24()
{
  v102 = *(v0 + 96);
  v1 = *(v0 + 80);
  v100 = *(v0 + 64);
  v101 = v1;
  v2 = *(v0 + 48);
  v98 = *(v0 + 32);
  v99 = v2;
  v3 = *(v0 + 16);
  v96 = *v0;
  v97 = v3;
  v4 = v3;
  v82 = v98;
  v83 = v2;
  v84 = *(&v98 + 1);
  v85 = *(&v2 + 1);
  v6 = v100;
  v5 = v101;
  v81 = *(v3 + 16);
  if (v81 < *(&v98 + 1))
  {
    v7 = *(&v97 + 1);
    *(&v90 + 1) = &type metadata for NothingToReviewFrameFactory;
    *&v91 = &off_391CD8;
    v8 = swift_allocObject();
    *&v89 = v8;
    *(v8 + 16) = v96;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    sub_6620C(&qword_3BC3E8, &qword_2F1AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    sub_68D1C(&v89, inited + 32);
    sub_6620C(&qword_3C4918, &qword_2F1AA8);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_2E3F30;
    *(v10 + 32) = inited;

    sub_25083C(v10);
    v12 = v11;
    swift_setDeallocating();
    sub_1ADF08(v10 + 32);
    v13 = v12;
    v14 = *(v12 + 16);
    if (!v14)
    {

      v15 = _swiftEmptyArrayStorage;
LABEL_39:
      if (qword_3BB8B0 != -1)
      {
        goto LABEL_69;
      }

      goto LABEL_40;
    }

    v15 = _swiftEmptyArrayStorage;
    v16 = v13 + 32;
    while (1)
    {
      sub_691F8(v16, &v89);
      v17 = *(&v90 + 1);
      v18 = v91;
      sub_72084(&v89, *(&v90 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      sub_68CD0(&v89);
      v20 = *(v19 + 16);
      v21 = v15[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        __break(1u);
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v15[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v15 = sub_5BE44(isUniquelyReferenced_nonNull_native, v24, 1, v15);
        if (*(v19 + 16))
        {
LABEL_15:
          if ((v15[3] >> 1) - v15[2] < v20)
          {
            goto LABEL_65;
          }

          sub_6620C(&qword_3BC408, &qword_2F1A90);
          swift_arrayInitWithCopy();

          if (v20)
          {
            v25 = v15[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_67;
            }

            v15[2] = v27;
          }

          goto LABEL_5;
        }
      }

      if (v20)
      {
        goto LABEL_63;
      }

LABEL_5:
      v16 += 40;
      if (!--v14)
      {

        goto LABEL_39;
      }
    }
  }

  v28 = *(v0 + 80);
  v93 = *(v0 + 64);
  v94 = v28;
  v95 = *(v0 + 96);
  v29 = *(v0 + 16);
  v89 = *v0;
  v90 = v29;
  v30 = *(v0 + 48);
  v91 = *(v0 + 32);
  v92 = v30;
  v31 = sub_1AD660();
  v32 = *(v31 + 16);
  if (v32)
  {
    v15 = _swiftEmptyArrayStorage;
    v33 = v31 + 32;
    while (1)
    {
      sub_691F8(v33, v86);
      v34 = v87;
      v35 = v88;
      sub_72084(v86, v87);
      v36 = (*(v35 + 8))(v34, v35);
      sub_68CD0(v86);
      v37 = *(v36 + 16);
      v38 = v15[2];
      v39 = v38 + v37;
      if (__OFADD__(v38, v37))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        swift_once();
LABEL_40:
        v44 = sub_2C00B8();
        sub_57AD8(v44, qword_3C32A8);
        sub_1ADEC8(&v96, &v89);

        v45 = sub_2C0098();
        v46 = sub_2C5DE8();

        sub_1789E4(&v96);
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v86[0] = swift_slowAlloc();
          *v47 = 136315650;
          v48 = v15[2];
          if (v48)
          {
            v79 = v46;
            sub_64AB4(0, v48, 0);
            v49 = (v15 + 4);
            do
            {
              sub_691F8(v49, &v89);
              sub_72084(&v89, *(&v90 + 1));
              DynamicType = swift_getDynamicType();
              v51 = v91;
              sub_68CD0(&v89);
              v53 = _swiftEmptyArrayStorage[2];
              v52 = _swiftEmptyArrayStorage[3];
              if (v53 >= v52 >> 1)
              {
                sub_64AB4((v52 > 1), v53 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v53 + 1;
              v54 = &_swiftEmptyArrayStorage[2 * v53];
              v54[4] = DynamicType;
              v54[5] = v51;
              v49 += 40;
              --v48;
            }

            while (v48);
            v46 = v79;
          }

          sub_6620C(&qword_3C4910, &qword_2F1A98);
          v63 = sub_2C5B38();
          v65 = v64;

          v66 = sub_5CCF4(v63, v65, v86);

          *(v47 + 4) = v66;
          *(v47 + 12) = 2048;
          *(v47 + 14) = v81;
          *(v47 + 22) = 2080;
          LOBYTE(v89) = v82;
          *(&v89 + 1) = v84;
          *&v90 = v83;
          *(&v90 + 1) = v85;
          v91 = v6;
          *&v92 = v5;
          v67 = YearInReviewEligibilityCriteria.description.getter();
          v69 = sub_5CCF4(v67, v68, v86);

          *(v47 + 24) = v69;
          v70 = "Displaying ineligible frames %s with booksFinished: %ld, using eligibilityCriteria: %s";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v40 = swift_isUniquelyReferenced_nonNull_native();
      if (v40 && v39 <= v15[3] >> 1)
      {
        if (*(v36 + 16))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v38 <= v39)
        {
          v41 = v38 + v37;
        }

        else
        {
          v41 = v38;
        }

        v15 = sub_5BE44(v40, v41, 1, v15);
        if (*(v36 + 16))
        {
LABEL_32:
          if ((v15[3] >> 1) - v15[2] < v37)
          {
            goto LABEL_66;
          }

          sub_6620C(&qword_3BC408, &qword_2F1A90);
          swift_arrayInitWithCopy();

          if (v37)
          {
            v42 = v15[2];
            v26 = __OFADD__(v42, v37);
            v43 = v42 + v37;
            if (v26)
            {
              goto LABEL_68;
            }

            v15[2] = v43;
          }

          goto LABEL_22;
        }
      }

      if (v37)
      {
        goto LABEL_64;
      }

LABEL_22:
      v33 += 40;
      if (!--v32)
      {

        goto LABEL_48;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_48:
  if (qword_3BB8B0 != -1)
  {
    swift_once();
  }

  v55 = sub_2C00B8();
  sub_57AD8(v55, qword_3C32A8);

  sub_1ADEC8(&v96, &v89);
  v45 = sub_2C0098();
  v46 = sub_2C5DE8();

  sub_1789E4(&v96);
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v47 = 136315650;
    v56 = v15[2];
    if (v56)
    {
      v80 = v46;
      sub_64AB4(0, v56, 0);
      v57 = (v15 + 4);
      do
      {
        sub_691F8(v57, &v89);
        sub_72084(&v89, *(&v90 + 1));
        v58 = swift_getDynamicType();
        v59 = v91;
        sub_68CD0(&v89);
        v61 = _swiftEmptyArrayStorage[2];
        v60 = _swiftEmptyArrayStorage[3];
        if (v61 >= v60 >> 1)
        {
          sub_64AB4((v60 > 1), v61 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v61 + 1;
        v62 = &_swiftEmptyArrayStorage[2 * v61];
        v62[4] = v58;
        v62[5] = v59;
        v57 += 40;
        --v56;
      }

      while (v56);
      v46 = v80;
    }

    sub_6620C(&qword_3C4910, &qword_2F1A98);
    v71 = sub_2C5B38();
    v73 = v72;

    v74 = sub_5CCF4(v71, v73, v86);

    *(v47 + 4) = v74;
    *(v47 + 12) = 2048;
    *(v47 + 14) = v81;
    *(v47 + 22) = 2080;
    LOBYTE(v89) = v82;
    *(&v89 + 1) = v84;
    *&v90 = v83;
    *(&v90 + 1) = v85;
    v91 = v6;
    *&v92 = v5;
    v75 = YearInReviewEligibilityCriteria.description.getter();
    v77 = sub_5CCF4(v75, v76, v86);

    *(v47 + 24) = v77;
    v70 = "Displaying eligible frames %s with booksFinished: %ld, using eligibilityCriteria: %s";
LABEL_59:
    _os_log_impl(&dword_0, v45, v46, v70, v47, 0x20u);
    swift_arrayDestroy();
  }

LABEL_60:

  return v15;
}

uint64_t sub_1AD660()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v50 = *(v0 + 88);
  v52 = *(v0 + 96);
  v102 = &type metadata for WelcomeFrameFactory;
  v103 = &off_394958;
  v12 = swift_allocObject();
  *&v101 = v12;
  v12[2] = v1;
  v12[3] = v2;
  v13 = v2;
  v12[4] = v4;
  v12[5] = v3;
  sub_6620C(&qword_3BC3E8, &qword_2F1AA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2E3F30;
  v49 = v14;
  sub_68D1C(&v101, v14 + 32);
  *&v104 = v1;
  *(&v104 + 1) = v2;
  *&v105 = v4;
  *(&v105 + 1) = v3;
  LOBYTE(v106) = v5;
  v55 = v7;
  *(&v106 + 1) = v7;
  *&v107 = v6;
  v51 = v6;
  *(&v107 + 1) = v9;
  *&v108 = v8;
  *(&v108 + 1) = v10;
  v109 = v11;
  v99 = &type metadata for BooksFinishedFrameFactory;
  v100 = &off_38F368;
  v15 = swift_allocObject();
  *&v98 = v15;
  v16 = v107;
  *(v15 + 48) = v106;
  *(v15 + 64) = v16;
  *(v15 + 80) = v108;
  *(v15 + 96) = v109;
  v17 = v105;
  *(v15 + 16) = v104;
  *(v15 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2E3F30;
  v48 = v18;
  sub_68D1C(&v98, v18 + 32);
  v110 = v1;
  v111 = v2;
  v112 = v4;
  v113 = v3;
  v114 = v5;
  v115 = v7;
  v116 = v6;
  v117 = v9;
  v118 = v8;
  v19 = v8;
  v20 = v111;
  v119 = v10;
  v120 = v11;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1ADF78(&v104, &v85);
  sub_1ADFD4(&v110);
  v73 = &type metadata for HighlightsDataProvider;
  v74 = &off_38DB30;
  v21 = swift_allocObject();
  v70 = v21;
  *(v21 + 16) = v1;
  *(v21 + 24) = v13;
  *(v21 + 32) = v4;
  *(v21 + 40) = v3;
  v54 = v1;
  *(v21 + 56) = v1;
  *(v21 + 64) = *(v4 + 16);
  *(v21 + 48) = v52;
  v85 = 0x4072C00000000000;
  v22 = objc_allocWithZone(NSDateComponentsFormatter);

  v23 = [v22 init];
  [v23 setUnitsStyle:2];
  [v23 setAllowedUnits:112];
  [v23 setFormattingContext:5];
  v94 = v23;
  v24 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v24 setUnitsStyle:3];
  [v24 setAllowedUnits:96];
  [v24 setFormattingContext:5];
  v95 = v24;
  v25 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v26 = v19;
  [v25 setUnitsStyle:3];
  [v25 setAllowedUnits:64];
  [v25 setFormattingContext:2];
  v96 = v25;
  v27 = [objc_allocWithZone(NSNumberFormatter) init];
  [v27 setNumberStyle:1];
  [v27 setMaximumFractionDigits:0];
  v97 = v27;
  sub_691F8(&v70, v86);
  v86[40] = v5;
  v87 = v7;
  v88 = v6;
  v89 = v9;
  v90 = v19;
  v91 = v10;
  v92 = v11;
  v93 = sub_72084(&v70, v73)[6] < 3;
  sub_68CD0(&v70);
  v83 = &type metadata for HighlightFramesFactory;
  v84 = &off_391F08;
  *&v82 = swift_allocObject();
  sub_1AE0DC(&v85, v82 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2E3F30;
  v47 = v28;
  sub_68D1C(&v82, v28 + 32);
  sub_1AE138(&v85);
  if (v5 == 1)
  {
    v73 = &type metadata for ReadingInsightsDataProvider;
    v74 = &off_3915C8;
    v70 = sub_1D3494(v3);

    sub_1D3ED8(v29);
    v31 = v30;

    v71 = v31;
    LOBYTE(v75) = 1;
    v76 = v55;
    v77 = v6;
    v78 = v9;
    v79 = v19;
    v80 = v10;
    v81 = v11;
    *(&v65 + 1) = &type metadata for ReadingInsightFramesFactory;
    *&v66 = &off_38C1B8;
    *&v64 = swift_allocObject();
    sub_AEBE4(&v70, v64 + 16);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2E3F30;
    sub_68D1C(&v64, v32 + 32);
    sub_AEC1C(&v70);
    sub_6620C(&qword_3C4918, &qword_2F1AA8);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2E3F30;
    *(v33 + 32) = v32;
    v34 = v33 + 32;
    sub_25083C(v33);
    v46 = v35;
    swift_setDeallocating();
    sub_1ADF08(v34);
    swift_deallocClassInstance();
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v63[3] = &type metadata for ReaderTypeDataProvider;
  v63[4] = &off_394D80;
  v36 = swift_allocObject();
  v63[0] = v36;
  *(v36 + 16) = v54;
  *(v36 + 24) = v20;
  *(v36 + 32) = v4;
  *(v36 + 40) = v3;
  *(v36 + 48) = *(v4 + 16);

  *(v36 + 56) = sub_285620(v4, v52);
  *(v36 + 64) = v52;
  v61 = &type metadata for ReaderTypeFramesFactory;
  v62 = &off_391700;
  *&v60 = swift_allocObject();
  sub_1AE214(v63, v60 + 16);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2E3F30;
  sub_68D1C(&v60, v53 + 32);
  sub_1AE270(v63);
  *&v64 = v54;
  *(&v64 + 1) = v20;
  *&v65 = v4;
  *(&v65 + 1) = v3;
  LOBYTE(v66) = v5;
  *(&v66 + 1) = v55;
  *&v67 = v51;
  *(&v67 + 1) = v9;
  *&v68 = v19;
  *(&v68 + 1) = v10;
  *&v69 = v11;
  *(&v69 + 1) = v50;
  v58 = &type metadata for SummaryFrameFactory;
  v59 = &off_38C780;
  v37 = swift_allocObject();
  *&v57 = v37;
  v38 = v67;
  v37[3] = v66;
  v37[4] = v38;
  v39 = v69;
  v37[5] = v68;
  v37[6] = v39;
  v40 = v65;
  v37[1] = v64;
  v37[2] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2E3F30;
  sub_68D1C(&v57, v41 + 32);
  v70 = v54;
  v71 = v20;
  v72 = v4;
  v73 = v3;
  LOBYTE(v74) = v5;
  v75 = v55;
  v76 = v51;
  v77 = v9;
  v78 = v26;
  v79 = v10;
  v80 = v11;
  v81 = v50;

  sub_1AE314(&v64, v56);
  sub_1AE370(&v70);
  sub_6620C(&qword_3C4918, &qword_2F1AA8);
  v42 = swift_allocObject();
  *(v42 + 32) = v49;
  *(v42 + 16) = xmmword_2F1A80;
  *(v42 + 40) = v48;
  *(v42 + 48) = v47;
  *(v42 + 56) = v46;
  *(v42 + 64) = v53;
  *(v42 + 72) = v41;
  sub_25083C(v42);
  v44 = v43;
  swift_setDeallocating();
  sub_6620C(&qword_3C4920, &qword_2F1AB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v44;
}

uint64_t sub_1ADF08(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C4920, &qword_2F1AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE030(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1AE084()
{
  sub_68CD0((v0 + 24));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1AE18C()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1AE1DC()
{
  sub_68CD0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1AE2C4()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1AE3C4()
{
  sub_68CD0((v0 + 16));

  return _swift_deallocObject(v0, 112, 7);
}

__n128 sub_1AE3FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AE428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1AE470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *SharedWithYouActionItem.tracker.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id LikeActionItem.init(data:context:tracker:figaroProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_691F8(a1, v23);
  sub_691F8(a2, v22);
  sub_691F8(a4, v21);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v16 = sub_1AE704();
    v17 = &protocol witness table for JSAStore;
    *&v15 = v11;
    v12 = sub_2C0178();
    v13 = sub_2C0158();
    v19 = &type metadata for MenuLikeStateController;
    v20 = &protocol witness table for MenuLikeStateController;
    v14 = swift_allocObject();
    *&v18 = v14;
    v14[10] = v12;
    v14[11] = &protocol witness table for AccountController;
    v14[7] = v13;
    sub_68CD0(a4);
    sub_68CD0(a2);
    sub_68CD0(a1);
    sub_68D1C(&v15, (v14 + 2));
    *(a5 + 168) = 23;
    sub_68D1C(v23, a5);
    sub_68D1C(v22, a5 + 40);
    *(a5 + 80) = a3;
    sub_68D1C(v21, a5 + 88);
    return sub_68D1C(&v18, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AE704()
{
  result = qword_3BD280;
  if (!qword_3BD280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BD280);
  }

  return result;
}

uint64_t sub_1AE750()
{
  sub_68CD0((v0 + 16));
  sub_68CD0((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t LikeActionItem.isSupported.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_72084(v0, v2);
  if ((*(v3 + 56))(v2, v3))
  {
    goto LABEL_12;
  }

  v4 = v0[3];
  v5 = v1[4];
  sub_72084(v1, v1[3]);
  ContextActionDataProtocol.selectionMode.getter(v4, v5, v21);
  if (v22 == 1)
  {
    sub_C4620(v21);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  sub_68D1C(v21, v23);
  v6 = v24;
  v7 = v25;
  sub_72084(v23, v24);
  if ((*(v7 + 16))(v6, v7) == 4)
  {
    goto LABEL_11;
  }

  v8 = v24;
  v9 = v25;
  sub_72084(v23, v24);
  if ((*(v9 + 16))(v8, v9) == 5)
  {
    goto LABEL_11;
  }

  v10 = v24;
  v11 = v25;
  sub_72084(v23, v24);
  v12 = (*(v11 + 288))(v10, v11);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_11:
    sub_68CD0(v23);
    goto LABEL_12;
  }

  v17 = v1[3];
  v18 = v1[4];
  sub_72084(v1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  sub_68CD0(v23);
  return v19 & 1;
}

uint64_t LikeActionItem.handle()()
{
  v1[17] = v0;
  sub_2C5C18();
  v1[18] = sub_2C5C08();
  v3 = sub_2C5BB8();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_1AE9F4, v3, v2);
}

uint64_t sub_1AE9F4()
{
  v1 = *(v0 + 136);
  v3 = v1[3];
  v2 = v1[4];
  sub_72084(v1, v3);
  ContextActionDataProtocol.selectionMode.getter(v3, v2, v0 + 16);
  if (*(v0 + 56))
  {

    sub_C4620(v0 + 16);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 136);
    sub_68D1C((v0 + 16), v0 + 64);
    v7 = v6[19];
    v8 = v6[20];
    sub_72084(v6 + 16, v7);
    v9 = v6[10];
    v12 = (*(v8 + 8) + **(v8 + 8));
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1AEBC0;
    v11 = *(v0 + 136);

    return v12(1, v6 + 5, v11, v0 + 64, v9, v7, v8);
  }
}

uint64_t sub_1AEBC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_1AEDE4;
  }

  else
  {
    v4[23] = a1;
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_1AECE8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1AECE8()
{
  v1 = v0[23];

  if (v1)
  {
    v2 = v0[17];
    v3 = objc_opt_self();
    v4 = v2[8];
    v5 = v2[9];
    sub_72084(v2 + 5, v4);
    ContextMenuPresentationContextProtocol.newOptionsForShowingHUD.getter(v4, v5);
    isa = sub_2C57C8().super.isa;

    [v3 presentNoticeForBookLoved:1 options:isa];
  }

  sub_68CD0(v0 + 8);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1AEDE4()
{
  v12 = v0;

  if (qword_3BB7D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C3038);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_2C66B8();
    v8 = sub_5CCF4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "error while trying to submit like preference with : %s", v4, 0xCu);
    sub_68CD0(v5);
  }

  else
  {
  }

  sub_68CD0((v0 + 64));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AEFB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7100C;

  return LikeActionItem.handle()();
}

__n128 sub_1AF048(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AF084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1AF0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4928;
  if (!qword_3C4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4928);
  }

  return result;
}

uint64_t sub_1AF1FC(uint64_t a1)
{
  v2 = sub_2C3678();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C4938, &qword_2F1C88);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = sub_6620C(&qword_3C4940, &qword_2F1C90);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  *v8 = sub_2C3338();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = sub_6620C(&qword_3C4948, &qword_2F1C98);
  sub_1AF464(a1, &v8[*(v12 + 44)]);
  sub_2C46B8();
  sub_2C2AD8();
  sub_1B0234(v8, v11);
  v13 = &v11[*(v9 + 36)];
  v14 = v18[5];
  *(v13 + 4) = v18[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v18[6];
  v15 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v15;
  v16 = v18[3];
  *(v13 + 2) = v18[2];
  *(v13 + 3) = v16;
  sub_2C3658();
  sub_1B02A4();
  sub_2C3FA8();
  (*(v3 + 8))(v5, v2);
  return sub_69198(v11, &qword_3C4940, &qword_2F1C90);
}

uint64_t sub_1AF464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v126 = sub_6620C(&qword_3C4960, &qword_2F1CA0);
  __chkstk_darwin(v126);
  v117 = &v107 - v3;
  v123 = sub_6620C(&qword_3C4968, &qword_2F1CA8);
  __chkstk_darwin(v123);
  v124 = &v107 - v4;
  v115 = type metadata accessor for HairlineDividerStyle(0);
  __chkstk_darwin(v115);
  v111 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = sub_2C4548();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_6620C(&qword_3C4970, &qword_2F1CB0);
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v109 = &v107 - v7;
  v122 = sub_6620C(&qword_3C4978, &qword_2F1CB8);
  __chkstk_darwin(v122);
  v116 = &v107 - v8;
  v9 = sub_6620C(&qword_3C4980, &unk_2F1CC0);
  __chkstk_darwin(v9 - 8);
  v125 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v107 - v12;
  v13 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v13 - 8);
  v15 = &v107 - v14;
  v16 = type metadata accessor for LargeNavigationBarComponentModel(0);
  v19 = (a1 + *(v16 + 28));
  v20 = v19[1];
  v21 = 0;
  v128 = v16;
  v129 = a1;
  v121 = v15;
  if (v20)
  {
    v157 = *v19;
    v158 = v20;
    sub_7212C(v16, v17, v18);

    v22 = sub_2C3A48();
    v24 = v23;
    v26 = v25;
    sub_2C3858();
    sub_2C3828();
    sub_2C3898();
    sub_69198(v15, &qword_3BCB28, &qword_2E3B60);
    v27 = sub_2C39E8();
    v29 = v28;
    v31 = v30;

    sub_72180(v22, v24, v26 & 1);

    sub_2C37C8();
    v32 = sub_2C39E8();
    v136 = v33;
    v137 = v32;
    v35 = v34;
    v135 = v36;

    v37 = v31 & 1;
    a1 = v129;
    sub_72180(v27, v29, v37);

    v38 = sub_2C3778();
    sub_2C24D8();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    LOBYTE(v139) = v35 & 1;
    LOBYTE(v149[0]) = 0;
    v132 = v35 & 1;
    v134 = 0;
    KeyPath = swift_getKeyPath();
    v16 = v128;
    LOBYTE(v157) = 0;
    v130 = v38;
    v131 = 2;
  }

  else
  {
    v136 = 0;
    v137 = 0;
    v134 = 0;
    v135 = 0;
    v132 = 0;
    KeyPath = 0;
    v130 = 0;
    v131 = 0;
    v40 = 0;
    v42 = 0;
    v44 = 0;
    v46 = 0;
  }

  v47 = (a1 + *(v16 + 32));
  v48 = v47[1];
  if (v48)
  {
    v157 = *v47;
    v158 = v48;
    sub_7212C(v16, v17, v18);

    v49 = sub_2C3A48();
    v51 = v50;
    v53 = v52;
    v54 = sub_2C3848();
    v55 = v121;
    (*(*(v54 - 8) + 56))(v121, 1, 1, v54);
    sub_2C3898();
    sub_69198(v55, &qword_3BCB28, &qword_2E3B60);
    v56 = sub_2C39E8();
    v58 = v57;
    v60 = v59;

    sub_72180(v49, v51, v53 & 1);

    sub_2C37D8();
    v61 = sub_2C39E8();
    v120 = v62;
    v121 = v61;
    v64 = v63;
    *(&v119 + 1) = v65;

    sub_72180(v56, v58, v60 & 1);

    v66 = sub_2C3778();
    sub_2C24D8();
    v21 = v67;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    LOBYTE(v157) = v64 & 1;
    LOBYTE(v139) = 0;
    *&v119 = v64 & 1;
    v118 = v66;
  }

  else
  {
    v120 = 0;
    v121 = 0;
    v119 = 0uLL;
    v118 = 0;
    v69 = 0;
    v71 = 0;
    v73 = 0;
  }

  v74 = v138;
  sub_6620C(&qword_3C3718, &unk_2F1CD0);
  sub_2C1988();
  if (v157 == 1)
  {
    v75 = v108;
    sub_2C4538();
    v76 = swift_getKeyPath();
    v77 = v111;
    *v111 = v76;
    sub_6620C(&unk_3C8530, &qword_2E3850);
    swift_storeEnumTagMultiPayload();
    v78 = v115;
    v79 = v77 + *(v115 + 20);
    *v79 = swift_getKeyPath();
    *(v79 + 8) = 0;
    v80 = sub_1B05A0(&qword_3C0F20, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    v81 = sub_1B05A0(&qword_3C49A0, type metadata accessor for HairlineDividerStyle, "98\t");
    v82 = v109;
    v83 = v113;
    sub_2C3EB8();
    sub_1B0928(v77);
    (*(v110 + 8))(v75, v83);
    v157 = v83;
    v158 = v78;
    v159 = v80;
    v160 = v81;
    swift_getOpaqueTypeConformance2();
    v84 = v116;
    v85 = v114;
    sub_2C3F88();
    (*(v112 + 8))(v82, v85);
    LOBYTE(v79) = sub_2C3778();
    sub_2C24D8();
    v86 = v84 + *(v122 + 36);
    *v86 = v79;
    *(v86 + 8) = v87;
    *(v86 + 16) = v88;
    *(v86 + 24) = v89;
    *(v86 + 32) = v90;
    *(v86 + 40) = 0;
    sub_6932C(v84, v124, &qword_3C4978, &qword_2F1CB8);
    swift_storeEnumTagMultiPayload();
    sub_1B03A8();
    sub_1B05E8();
    sub_2C33C8();
    sub_69198(v84, &qword_3C4978, &qword_2F1CB8);
  }

  else
  {
    sub_2C46A8();
    sub_2C2708();
    LOBYTE(v139) = 1;
    LOBYTE(v149[0]) = v170;
    LOBYTE(v146[0]) = v172;
    v157 = 0;
    LOBYTE(v158) = 1;
    v159 = v169;
    LOBYTE(v160) = v170;
    v161 = v171;
    LOBYTE(v162) = v172;
    v163 = v173;
    sub_6620C(&qword_3C0F70, &qword_2EAD98);
    sub_102EAC();
    v91 = v117;
    sub_2C3F88();
    sub_6932C(v91, v124, &qword_3C4960, &qword_2F1CA0);
    swift_storeEnumTagMultiPayload();
    sub_1B03A8();
    sub_1B05E8();
    sub_2C33C8();
    sub_69198(v91, &qword_3C4960, &qword_2F1CA0);
  }

  v92 = v74;
  v93 = v125;
  sub_6932C(v92, v125, &qword_3C4980, &unk_2F1CC0);
  *&v139 = v137;
  *(&v139 + 1) = v136;
  *&v140 = v132;
  *(&v140 + 1) = v135;
  *&v141 = v130;
  *(&v141 + 1) = v40;
  *&v142 = v42;
  *(&v142 + 1) = v44;
  *&v143 = v46;
  *(&v143 + 1) = v134;
  *&v144 = KeyPath;
  *(&v144 + 1) = v131;
  v145 = 0;
  v94 = v127;
  *(v127 + 96) = 0;
  v95 = v144;
  v94[4] = v143;
  v94[5] = v95;
  v96 = v140;
  *v94 = v139;
  v94[1] = v96;
  v97 = v142;
  v94[2] = v141;
  v94[3] = v97;
  v99 = v120;
  v98 = v121;
  *&v146[0] = v121;
  *(&v146[0] + 1) = v120;
  v100 = v119;
  v146[1] = v119;
  v101 = v118;
  *&v147 = v118;
  *(&v147 + 1) = v21;
  *&v148[0] = v69;
  *(&v148[0] + 1) = v71;
  *&v148[1] = v73;
  BYTE8(v148[1]) = 0;
  v102 = v119;
  *(v94 + 104) = v146[0];
  v103 = v147;
  v104 = v148[0];
  *(v94 + 161) = *(v148 + 9);
  *(v94 + 152) = v104;
  *(v94 + 136) = v103;
  *(v94 + 120) = v102;
  v105 = sub_6620C(&qword_3C49B0, &qword_2F1CE8);
  sub_6932C(v93, v94 + *(v105 + 64), &qword_3C4980, &unk_2F1CC0);
  sub_6932C(&v139, &v157, &qword_3C49B8, &qword_2F1CF0);
  sub_6932C(v146, &v157, &qword_3C49C0, &qword_2F1CF8);
  sub_69198(v138, &qword_3C4980, &unk_2F1CC0);
  sub_69198(v93, &qword_3C4980, &unk_2F1CC0);
  v149[0] = v98;
  v149[1] = v99;
  v150 = v100;
  v151 = v101;
  v152 = v21;
  v153 = v69;
  v154 = v71;
  v155 = v73;
  v156 = 0;
  sub_69198(v149, &qword_3C49C0, &qword_2F1CF8);
  v157 = v137;
  v158 = v136;
  v159 = v132;
  v160 = v135;
  v161 = v130;
  v162 = v40;
  *&v163 = v42;
  *(&v163 + 1) = v44;
  v164 = v46;
  v165 = v134;
  v166 = KeyPath;
  v167 = v131;
  v168 = 0;
  return sub_69198(&v157, &qword_3C49B8, &qword_2F1CF0);
}

uint64_t sub_1B00EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF1A8(a1, a2, a3);

  return sub_2BFD18();
}

unint64_t sub_1B0134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4930;
  if (!qword_3C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4930);
  }

  return result;
}

uint64_t sub_1B0234(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C4938, &qword_2F1C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B02A4()
{
  result = qword_3C4950;
  if (!qword_3C4950)
  {
    sub_718D4(&qword_3C4940, &qword_2F1C90);
    sub_72B74(&qword_3C4958, &qword_3C4938, &qword_2F1C88, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4950);
  }

  return result;
}

uint64_t type metadata accessor for HairlineDividerStyle(uint64_t a1)
{
  result = qword_3C4A20;
  if (!qword_3C4A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B03A8()
{
  result = qword_3C4988;
  if (!qword_3C4988)
  {
    sub_718D4(&qword_3C4978, &qword_2F1CB8);
    sub_1B0434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4988);
  }

  return result;
}

unint64_t sub_1B0434()
{
  result = qword_3C4990;
  if (!qword_3C4990)
  {
    sub_718D4(&qword_3C4998, &qword_2F1CE0);
    sub_2C4548();
    type metadata accessor for HairlineDividerStyle(255);
    sub_1B05A0(&qword_3C0F20, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1B05A0(&qword_3C49A0, type metadata accessor for HairlineDividerStyle, "98\t");
    swift_getOpaqueTypeConformance2();
    sub_1B05A0(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4990);
  }

  return result;
}

uint64_t sub_1B05A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B05E8()
{
  result = qword_3C49A8;
  if (!qword_3C49A8)
  {
    sub_718D4(&qword_3C4960, &qword_2F1CA0);
    sub_102EAC();
    sub_1B05A0(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C49A8);
  }

  return result;
}

double sub_1B06A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = sub_2C0D48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_29A87C(v11);
  v12 = sub_2C0CC8();
  (*(v9 + 8))(v11, v8);
  v13 = v2 + *(type metadata accessor for HairlineDividerStyle(0) + 20);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v18 = *v13;
  }

  else
  {

    sub_2C5DD8();
    v15 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_125A48(v14, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_2C46A8();
  sub_2C2708();
  *&v19[6] = v20;
  *&v19[22] = v21;
  *&v19[38] = v22;
  v16 = *&v19[16];
  *(a1 + 10) = *v19;
  *a1 = v12;
  *(a1 + 8) = 256;
  *(a1 + 26) = v16;
  result = *&v19[32];
  *(a1 + 42) = *&v19[32];
  *(a1 + 56) = *&v19[46];
  return result;
}

uint64_t sub_1B0928(uint64_t a1)
{
  v2 = type metadata accessor for HairlineDividerStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B09A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B0A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_1B0B44(uint64_t a1)
{
  sub_AF178(319);
  if (v1 <= 0x3F)
  {
    sub_1B0BC8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0BC8()
{
  if (!qword_3C1888)
  {
    v0 = sub_2C2558();
    if (!v1)
    {
      atomic_store(v0, &qword_3C1888);
    }
  }
}

uint64_t sub_1B0C18()
{
  sub_718D4(&qword_3C4940, &qword_2F1C90);
  sub_1B02A4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1B0C9C()
{
  result = qword_3C1AC8;
  if (!qword_3C1AC8)
  {
    sub_718D4(&qword_3C1AC0, &unk_2F1DF0);
    sub_72B74(&qword_3C1AB0, &qword_3C1AB8, &qword_2EBE58, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1AC8);
  }

  return result;
}

uint64_t sub_1B0D54()
{
  v0 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_2C3918();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_2C3848();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_2C3858();
  v11 = sub_2C38A8();
  sub_69198(v2, &qword_3BCB28, &qword_2E3B60);
  result = (*(v4 + 8))(v7, v3);
  qword_3C4A58 = v11;
  return result;
}

uint64_t sub_1B0F54()
{
  v0 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_2C3858();
  v3 = enum case for Font.Design.rounded(_:);
  v4 = sub_2C3848();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2C3898();
  result = sub_69198(v2, &qword_3BCB28, &qword_2E3B60);
  qword_3C4A60 = v6;
  return result;
}

uint64_t sub_1B1098()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();
}

uint64_t sub_1B113C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  *a2 = *(v3 + 16);
}

double sub_1B11E8(uint64_t a1)
{

  v3 = sub_2C41B8();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_1B133C()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();
}

uint64_t sub_1B13E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  *a2 = *(v3 + 24);
}

double sub_1B148C(uint64_t a1)
{

  v3 = sub_2C41B8();

  if (v3)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }

  return result;
}

double sub_1B15E0()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  return *(v0 + 32);
}

double sub_1B1680@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_1B1728(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }
}

double sub_1B1840()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  return *(v0 + 40);
}

double sub_1B18E0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_1B1988(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }
}

double sub_1B1AA0()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  return *(v0 + 48);
}

double sub_1B1B40@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

void sub_1B1BE8(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }
}

uint64_t sub_1B1D00()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();
}

uint64_t sub_1B1DA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  *a2 = *(v3 + 56);
}

double sub_1B1E50(uint64_t a1)
{

  v3 = sub_2C37E8();

  if (v3)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_1B1FA4()
{
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();
}

uint64_t sub_1B2048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  *a2 = *(v3 + 64);
}

double sub_1B20F4(uint64_t a1)
{

  v3 = sub_2C37E8();

  if (v3)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_1B2248()
{

  v1 = OBJC_IVAR____TtC11BookStoreUIP33_8C913943553E805EED1D1E3E7D4A282F26ReadingGoalsGaugeViewModel___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1B2304()
{
  v0[2] = sub_2C41F8();
  v0[3] = sub_2C41F8();
  v0[4] = 0x3FF0000000000000;
  v0[5] = 0;
  v0[6] = 0;
  if (qword_3BB8F8 != -1)
  {
    swift_once();
  }

  v0[7] = qword_3C4A58;
  v1 = qword_3BB900;

  if (v1 != -1)
  {
    swift_once();
  }

  v0[8] = qword_3C4A60;

  sub_2BE728();
  return v0;
}

void sub_1B23CC(uint64_t a1@<X8>)
{
  v43 = a1;
  v52 = type metadata accessor for ReadingGoalGaugeStyle(0);
  __chkstk_darwin(v52);
  v44 = (&v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_6620C(&qword_3C4E38, &qword_2F1FA8);
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v48 = sub_6620C(&qword_3C4E40, &qword_2F1FB0);
  __chkstk_darwin(v48);
  v49 = &v42 - v5;
  v6 = sub_6620C(&qword_3C4E48, &qword_2F1FB8);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v47 = &v42 - v7;
  sub_6620C(&qword_3C4D98, &unk_2F1F10);
  sub_2C45B8();
  v8 = v53;
  swift_getKeyPath();
  v53 = v8;
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  v9 = *(v8 + 40);

  sub_2C45B8();
  v10 = v53;
  swift_getKeyPath();
  v53 = v10;
  sub_2BE6F8();

  v11 = *(v10 + 48);

  if (v11 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v55 = v12;
  sub_2C45B8();
  v13 = v53;
  swift_getKeyPath();
  v53 = v13;
  sub_2BE6F8();

  v14 = *(v13 + 48);

  if (v14 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v42 = &v42;
    v53 = 0;
    v54 = v14;
    __chkstk_darwin(v15);
    __chkstk_darwin(v16);
    sub_6620C(&qword_3C4E58, &qword_2F2010);
    sub_6620C(&qword_3C4E60, &qword_2F2018);
    sub_1B5270();
    v41 = sub_1B5328();
    sub_AB620(v41, v17, v18);
    sub_2C4298();
    sub_2C45B8();
    v19 = v53;
    swift_getKeyPath();
    v53 = v19;
    sub_2BE6F8();

    v20 = *(v19 + 32);

    v21 = v49;
    (*(v45 + 32))(v49, v4, v46);
    *(v21 + *(v48 + 36)) = v20;
    sub_2C45B8();
    v22 = v53;
    swift_getKeyPath();
    v53 = v22;
    sub_2BE6F8();

    v23 = *(v22 + 16);

    sub_2C45B8();
    v24 = v53;
    swift_getKeyPath();
    v53 = v24;
    sub_2BE6F8();

    v25 = *(v24 + 24);

    v55 = v23;
    sub_2C4368();
    v26 = v54;
    v27 = v44;
    *v44 = v53;
    v27[1] = v26;
    v55 = v25;
    sub_2C4368();
    v28 = v54;
    *(v27 + 2) = v53;
    v27[3] = v28;
    v29 = *(v52 + 24);
    *(v27 + v29) = swift_getKeyPath();
    sub_6620C(&qword_3BD530, &qword_2E4150);
    swift_storeEnumTagMultiPayload();
    sub_1B5448();
    sub_1B5500(&qword_3C4EA8, type metadata accessor for ReadingGoalGaugeStyle, &unk_2F21E8);
    v30 = v47;
    sub_2C3E18();
    sub_1B5548(v27);
    sub_69198(v21, &qword_3C4E40, &qword_2F1FB0);
    LOBYTE(v29) = sub_2C3758();
    sub_2C24D8();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v43;
    (*(v50 + 32))(v43, v30, v51);
    v40 = v39 + *(sub_6620C(&qword_3C4EB0, &qword_2F20E0) + 36);
    *v40 = v29;
    *(v40 + 8) = v32;
    *(v40 + 16) = v34;
    *(v40 + 24) = v36;
    *(v40 + 32) = v38;
    *(v40 + 40) = 0;
  }
}

void sub_1B2ADC(uint64_t a1@<X8>)
{
  sub_6620C(&qword_3C4D98, &unk_2F1F10);
  sub_2C45B8();
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  v2 = *(v23 + 48);

  v6 = round(v2 / 60.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    sub_1B55A4(v3, v4, v5);
    v24 = sub_2C6118();
    sub_7212C(v24, v7, v8);
    v9 = sub_2C3A48();
    v11 = v10;
    v13 = v12;
    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v14 = sub_2C39E8();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    sub_72180(v9, v11, v13 & 1);

    KeyPath = swift_getKeyPath();
    v22 = swift_getKeyPath();
    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v18 & 1;
    *(a1 + 24) = v20;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = v22;
    *(a1 + 64) = 0x3FE0000000000000;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1B2D60(uint64_t a1@<X8>)
{
  sub_6620C(&qword_3C4D98, &unk_2F1F10);
  sub_2C45B8();
  swift_getKeyPath();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
  sub_2BE6F8();

  v2 = *(v28 + 40);

  v6 = v2 / 60.0;
  if (COERCE__INT64(fabs(v2 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    sub_1B55A4(v3, v4, v5);
    v29 = sub_2C6118();
    sub_7212C(v29, v7, v8);
    v9 = sub_2C3A48();
    v11 = v10;
    v13 = v12;
    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v25 = sub_2C39A8();
    v15 = v14;
    v17 = v16;
    sub_72180(v9, v11, v13 & 1);

    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v18 = sub_2C39E8();
    v26 = v20;
    v27 = v19;
    LOBYTE(v9) = v21;

    sub_72180(v25, v15, v17 & 1);

    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    sub_2C45B8();
    swift_getKeyPath();
    sub_2BE6F8();

    v24 = (a1 + *(sub_6620C(&qword_3C4E60, &qword_2F2018) + 36));
    sub_6620C(&qword_3C4E90, &qword_2F2028);
    sub_2C2AE8();
    *v24 = swift_getKeyPath();
    *a1 = v18;
    *(a1 + 8) = v27;
    *(a1 + 16) = v9 & 1;
    *(a1 + 24) = v26;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = v23;
    *(a1 + 64) = 0x3FDEB851EB851EB8;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1B316C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = sub_2C0BB8();
  v143 = *(v3 - 8);
  v144 = v3;
  __chkstk_darwin(v3);
  v141 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2C0C68();
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2C0C98();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = (&v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2C3598();
  v125 = *(v7 - 8);
  v126 = v7;
  __chkstk_darwin(v7);
  *&v149 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_6620C(&qword_3C4F70, &qword_2F2228);
  __chkstk_darwin(v124);
  v127 = &v120 - v9;
  v128 = sub_6620C(&qword_3C4F78, &qword_2F2230);
  __chkstk_darwin(v128);
  v135 = &v120 - v10;
  v134 = sub_6620C(&qword_3C4F80, &qword_2F2238);
  __chkstk_darwin(v134);
  v139 = &v120 - v11;
  v138 = sub_6620C(&qword_3C4F88, &qword_2F2240);
  __chkstk_darwin(v138);
  v148 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v120 - v14;
  __chkstk_darwin(v15);
  v147 = &v120 - v16;
  v17 = sub_6620C(&qword_3C4F90, &qword_2F2248);
  __chkstk_darwin(v17 - 8);
  v19 = &v120 - v18;
  v121 = sub_6620C(&qword_3C4F98, &qword_2F2250);
  __chkstk_darwin(v121);
  v21 = &v120 - v20;
  v122 = sub_6620C(&qword_3C4FA0, &qword_2F2258);
  __chkstk_darwin(v122);
  v146 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v120 - v24;
  __chkstk_darwin(v26);
  v155 = &v120 - v27;
  v28 = a1[3];
  *&v186[0] = a1[2];
  *(&v186[0] + 1) = v28;
  sub_6620C(&qword_3C4FA8, &unk_2F2260);
  sub_2C4378();
  v154 = v172[0];
  sub_2C25C8();
  v29 = sub_2C46A8();
  v152 = v30;
  v153 = v29;
  sub_2C47E8();
  v145 = v31;
  v33 = v32;
  sub_2C35B8();
  v35 = v34;
  v36 = *a1;
  v37 = a1[1];
  v142 = a1;
  *&v186[0] = v36;
  *(&v186[0] + 1) = v37;
  sub_2C4378();
  v140 = v172[0];
  sub_2C25C8();
  v38 = sub_2C46A8();
  v150 = v39;
  v151 = v38;
  sub_2C47E8();
  v41 = v40;
  v43 = v42;
  sub_2C3588();
  sub_6620C(&qword_3BD560, &qword_2E4180);
  v44 = swift_allocObject();
  v120 = xmmword_2E15C0;
  *(v44 + 16) = xmmword_2E15C0;
  v45 = sub_2C37A8();
  *(v44 + 32) = v45;
  v46 = sub_2C3788();
  *(v44 + 33) = v46;
  v47 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v45)
  {
    v47 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v46)
  {
    v47 = sub_2C3798();
  }

  sub_2C24D8();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_69130(v19, v21, &qword_3C4F90, &qword_2F2248);
  v56 = &v21[*(v121 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v21, v25, &qword_3C4F98, &qword_2F2250);
  v57 = &v25[*(v122 + 36)];
  v58 = v203;
  *(v57 + 4) = v202;
  *(v57 + 5) = v58;
  *(v57 + 6) = v204;
  v59 = v199;
  *v57 = v198;
  *(v57 + 1) = v59;
  v60 = v201;
  *(v57 + 2) = v200;
  *(v57 + 3) = v60;
  sub_69130(v25, v155, &qword_3C4FA0, &qword_2F2258);
  sub_2C35A8();
  v61 = swift_allocObject();
  *(v61 + 16) = v120;
  v62 = sub_2C37A8();
  *(v61 + 32) = v62;
  v63 = sub_2C3788();
  *(v61 + 33) = v63;
  v64 = sub_2C3798();
  sub_2C3798();
  if (sub_2C3798() != v62)
  {
    v64 = sub_2C3798();
  }

  sub_2C3798();
  if (sub_2C3798() != v63)
  {
    v64 = sub_2C3798();
  }

  v65 = v35 * 0.75;
  type metadata accessor for ReadingGoalGaugeStyle(0);
  v66 = v131;
  sub_29AAE0(v131);
  v67 = v123;
  sub_2C0C78();
  v68 = *(v133 + 8);
  v69 = v136;
  v68(v66, v136);
  sub_2C0C38();
  (*(v130 + 8))(v67, v132);
  sub_2C24D8();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v127;
  (*(v125 + 32))(v127, v149, v126);
  v79 = v78 + *(v124 + 36);
  *v79 = v64;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  sub_29AAE0(v66);
  v80 = v141;
  sub_2C0BE8();
  v68(v66, v69);
  sub_2C0B98();
  (*(v143 + 8))(v80, v144);
  sub_2C46A8();
  sub_2C2708();
  v81 = v135;
  sub_69130(v78, v135, &qword_3C4F70, &qword_2F2228);
  v82 = (v81 + *(v128 + 36));
  v83 = v206;
  *v82 = v205;
  v82[1] = v83;
  v82[2] = v207;
  sub_2C4698();
  sub_2C2AD8();
  v84 = v139;
  sub_69130(v81, v139, &qword_3C4F78, &qword_2F2230);
  v85 = (v84 + *(v134 + 36));
  v86 = v213;
  v85[4] = v212;
  v85[5] = v86;
  v85[6] = v214;
  v87 = v209;
  *v85 = v208;
  v85[1] = v87;
  v88 = v211;
  v85[2] = v210;
  v85[3] = v88;
  LOBYTE(v81) = sub_2C3778();
  sub_2C24D8();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v84;
  v98 = v137;
  sub_69130(v97, v137, &qword_3C4F80, &qword_2F2238);
  v99 = v98 + *(v138 + 36);
  *v99 = v81;
  *(v99 + 8) = v90;
  *(v99 + 16) = v92;
  *(v99 + 24) = v94;
  *(v99 + 32) = v96;
  *(v99 + 40) = 0;
  v100 = v147;
  sub_69130(v98, v147, &qword_3C4F88, &qword_2F2240);
  v101 = v146;
  sub_6932C(v155, v146, &qword_3C4FA0, &qword_2F2258);
  v102 = v148;
  sub_6932C(v100, v148, &qword_3C4F88, &qword_2F2240);
  v149 = xmmword_2F1E00;
  v156 = xmmword_2F1E00;
  v157 = v217;
  v158 = v218;
  *&v159 = v219;
  *(&v159 + 1) = v154;
  LOWORD(v160) = 256;
  *(&v160 + 2) = v215;
  WORD3(v160) = v216;
  *(&v160 + 1) = v153;
  *&v161 = v152;
  *(&v161 + 1) = 0x4002D97C7F3321D2;
  v103 = v145;
  *&v162 = v145;
  *(&v162 + 1) = v33;
  v163 = 1;
  v105 = v160;
  v104 = v161;
  v106 = v162;
  v107 = v129;
  *(v129 + 112) = 1;
  *(v107 + 80) = v104;
  *(v107 + 96) = v106;
  v108 = v156;
  v109 = v157;
  v110 = v158;
  *(v107 + 48) = v159;
  *(v107 + 64) = v105;
  *(v107 + 16) = v109;
  *(v107 + 32) = v110;
  *v107 = v108;
  *&v164 = 0;
  *(&v164 + 1) = v65;
  v165 = v222;
  v166 = v223;
  v111 = v140;
  *&v167 = v224;
  *(&v167 + 1) = v140;
  LOWORD(v168) = 256;
  WORD3(v168) = v221;
  *(&v168 + 2) = v220;
  *(&v168 + 1) = v151;
  *&v169 = v150;
  *(&v169 + 1) = 0x4002D97C7F3321D2;
  *&v170 = v41;
  *(&v170 + 1) = v43;
  v171 = 1;
  v112 = v168;
  v113 = v169;
  v114 = v170;
  *(v107 + 232) = 1;
  *(v107 + 216) = v114;
  *(v107 + 200) = v113;
  *(v107 + 184) = v112;
  v115 = v164;
  v116 = v165;
  v117 = v166;
  *(v107 + 168) = v167;
  *(v107 + 152) = v117;
  *(v107 + 136) = v116;
  *(v107 + 120) = v115;
  v118 = sub_6620C(&qword_3C4FB0, &qword_2F2270);
  sub_6932C(v101, v107 + *(v118 + 64), &qword_3C4FA0, &qword_2F2258);
  sub_6932C(v102, v107 + *(v118 + 80), &qword_3C4F88, &qword_2F2240);
  sub_6932C(&v156, v186, &qword_3C4FB8, &qword_2F2278);
  sub_6932C(&v164, v186, &qword_3C4FB8, &qword_2F2278);
  sub_69198(v100, &qword_3C4F88, &qword_2F2240);
  sub_69198(v155, &qword_3C4FA0, &qword_2F2258);
  sub_69198(v102, &qword_3C4F88, &qword_2F2240);
  sub_69198(v101, &qword_3C4FA0, &qword_2F2258);
  v172[0] = 0;
  *&v172[1] = v65;
  v173 = v222;
  v174 = v223;
  v175 = v224;
  v176 = v111;
  v177 = 256;
  v178 = v220;
  v179 = v221;
  v180 = v151;
  v181 = v150;
  v182 = 0x4002D97C7F3321D2;
  v183 = v41;
  v184 = v43;
  v185 = 1;
  sub_69198(v172, &qword_3C4FB8, &qword_2F2278);
  v186[0] = v149;
  v186[1] = v217;
  v186[2] = v218;
  v187 = v219;
  v188 = v154;
  v189 = 256;
  v190 = v215;
  v191 = v216;
  v192 = v153;
  v193 = v152;
  v194 = 0x4002D97C7F3321D2;
  v195 = v103;
  v196 = v33;
  v197 = 1;
  return sub_69198(v186, &qword_3C4FB8, &qword_2F2278);
}

uint64_t sub_1B3FE4@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_2C46A8();
  a2[1] = v4;
  v5 = sub_6620C(&qword_3C4F68, &qword_2F2220);
  return sub_1B316C(v2, a2 + *(v5 + 44));
}

void sub_1B4050(char *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[qword_3C4CF8];
  *&a1[qword_3C4CF8] = a3;
  v5 = a3;
  v6 = a1;

  sub_1B40C8();
}

void sub_1B40C8()
{
  v1 = *(v0 + qword_3C4CF8);
  if (v1)
  {
    v2 = v0;
    v3 = qword_3C4D08;

    v4 = v1;
    if ([v4 progressColor])
    {
      v5 = sub_2C4288();
      sub_1B11E8(v5);

      if ([v4 controlColor])
      {
        v6 = sub_2C4288();
        sub_1B148C(v6);

        v7 = *(v0 + v3);

        v8 = [v4 actualReadingTimeSeconds];
        if (v8)
        {
          v9 = v8;
          [v8 doubleValue];
          v11 = v10;

          if (*(v7 + 40) == v11)
          {
            *(v7 + 40) = v11;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
            sub_2BE6E8();
          }

          v13 = *(v2 + v3);

          v14 = [v4 readingGoalSeconds];
          if (v14)
          {
            v15 = v14;
            [v14 doubleValue];
            v17 = v16;

            if (*(v13 + 48) == v17)
            {
              *(v13 + 48) = v17;
            }

            else
            {
              v18 = swift_getKeyPath();
              __chkstk_darwin(v18);
              sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
              sub_2BE6E8();
            }

            v19 = [v4 timeFontSpec];
            v20 = [v19 font];

            if (v20)
            {
              v21 = v20;
              if (sub_2C1028())
              {
                if (qword_3BB8F8 != -1)
                {
                  swift_once();
                }
              }

              else
              {
                v24 = v21;
                v22 = sub_2C3928();
              }

              sub_1B1E50(v22);
            }

            else
            {
              if (qword_3BB8F8 != -1)
              {
                swift_once();
              }

              sub_1B1E50(v23);
            }

            v25 = [v4 streakFontSpec];
            v26 = [v25 font];

            if (v26)
            {
              v27 = v26;
              if (sub_2C1028())
              {
                if (qword_3BB900 != -1)
                {
                  swift_once();
                }
              }

              else
              {
                v30 = v27;
                v28 = sub_2C3928();
              }

              sub_1B20F4(v28);
            }

            else
            {
              if (qword_3BB900 != -1)
              {
                swift_once();
              }

              sub_1B20F4(v29);
            }

            v31 = *(v2 + v3);

            v32 = [v4 opacity];
            if (v32)
            {
              v33 = v32;
              [v32 doubleValue];
              v35 = v34;

              if (*(v31 + 32) == v35)
              {

                *(v31 + 32) = v35;
              }

              else
              {
                v36 = swift_getKeyPath();
                __chkstk_darwin(v36);
                sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);
                sub_2BE6E8();
              }

              return;
            }

LABEL_41:
            __break(1u);
            return;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_1B4724(char *a1, double a2)
{
  *&a1[qword_3C4D00] = a2;
  v2 = a1;
  sub_2C46D8();
  sub_2C2848();
}

void sub_1B47AC(uint64_t a1)
{
  v1 = *(a1 + qword_3C4D08);
  v2 = *(a1 + qword_3C4D00);
  if (*(v1 + 40) == v2)
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);

    sub_2BE6E8();
  }
}

void sub_1B48F4(uint64_t a1)
{
  *(a1 + qword_3C4CF8) = 0;
  *(a1 + qword_3C4D00) = 0;
  sub_2C6378();
  __break(1u);
}

double sub_1B49C8()
{

  return result;
}

double sub_1B4A24(uint64_t a1)
{

  return result;
}

id ReadingGoalsGaugeHostingControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingGoalsGaugeHostingControllerFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1B4B8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1B4BC4(uint64_t a1)
{
  v2 = sub_2C2AF8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2FE8();
}

uint64_t sub_1B4C8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2C30C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1B4CF0()
{
  v1 = type metadata accessor for ReadingGoalsGaugeView(0);
  __chkstk_darwin(v1 - 8);
  *(v0 + qword_3C4CF8) = 0;
  *(v0 + qword_3C4D00) = 0;
  type metadata accessor for ReadingGoalsGaugeViewModel(0);
  swift_allocObject();
  *(v0 + qword_3C4D08) = sub_1B2304();
  sub_1B5500(&qword_3C4E50, type metadata accessor for ReadingGoalsGaugeViewModel, &unk_2F1F88);

  sub_2C45D8();
  v2 = sub_2C3398();
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4ECC(uint64_t a1)
{
  result = sub_2BE738();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5008(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C4D98, &unk_2F1F10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B5094(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C4D98, &unk_2F1F10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1B5130(uint64_t a1)
{
  sub_1B5B18(319, &unk_3C4E08, type metadata accessor for ReadingGoalsGaugeViewModel, &type metadata accessor for Bindable);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1B5270()
{
  result = qword_3C4E68;
  if (!qword_3C4E68)
  {
    sub_718D4(&qword_3C4E58, &qword_2F2010);
    sub_A0864();
    sub_72B74(&qword_3C4E70, &qword_3C4E78, &qword_2F2020, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4E68);
  }

  return result;
}

unint64_t sub_1B5328()
{
  result = qword_3C4E80;
  if (!qword_3C4E80)
  {
    sub_718D4(&qword_3C4E60, &qword_2F2018);
    sub_1B5270();
    sub_72B74(&qword_3C4E88, &qword_3C4E90, &qword_2F2028, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4E80);
  }

  return result;
}

unint64_t sub_1B5448()
{
  result = qword_3C4E98;
  if (!qword_3C4E98)
  {
    sub_718D4(&qword_3C4E40, &qword_2F1FB0);
    sub_72B74(&qword_3C4EA0, &qword_3C4E38, &qword_2F1FA8, &protocol conformance descriptor for Gauge<A, B, C, D>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4E98);
  }

  return result;
}

uint64_t sub_1B5500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5548(uint64_t a1)
{
  v2 = type metadata accessor for ReadingGoalGaugeStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B55A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4EB8;
  if (!qword_3C4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4EB8);
  }

  return result;
}

uint64_t sub_1B5614@<X0>(uint64_t a1@<X8>)
{
  result = sub_2C30C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_1B5760()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

double sub_1B5770()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

double sub_1B5780()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

void sub_1B5790()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

void sub_1B57CC()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

void sub_1B5808()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void sub_1B5844()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1B5894(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B5964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B5A14(uint64_t a1)
{
  sub_1B5AC8();
  if (v1 <= 0x3F)
  {
    sub_1B5B18(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B5AC8()
{
  if (!qword_3C4F28)
  {
    v0 = sub_2C43A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3C4F28);
    }
  }
}

void sub_1B5B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B5B80()
{
  result = qword_3C4F60;
  if (!qword_3C4F60)
  {
    sub_718D4(&qword_3C4EB0, &qword_2F20E0);
    sub_718D4(&qword_3C4E40, &qword_2F1FB0);
    type metadata accessor for ReadingGoalGaugeStyle(255);
    sub_1B5448();
    sub_1B5500(&qword_3C4EA8, type metadata accessor for ReadingGoalGaugeStyle, &unk_2F21E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4F60);
  }

  return result;
}

void sub_1B5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_62020(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_5D228(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_62FE4();
        v13 = v15;
      }

      swift_unknownObjectRelease();
      sub_24DBD0(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_1B5E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_2BE588();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_69198(a1, &qword_3BC418, &unk_2E9200);
    v14 = sub_5D350(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_63734();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_24DD80(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_69198(v8, &qword_3BC418, &unk_2E9200);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_62308(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_1B6088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_693CC(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_62470(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_69198(a1, qword_3C0250, &unk_2E4630);
    sub_24D970(a2, a3, v8);

    sub_69198(v8, qword_3C0250, &unk_2E4630);
  }
}

uint64_t sub_1B6158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_68D1C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_6274C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_69198(a1, &unk_3BDC90, &unk_2E5620);
    v7 = sub_5D350(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_63E10();
        v11 = v13;
      }

      sub_68D1C((*(v11 + 56) + 40 * v9), v14);
      sub_24E1D8(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_69198(v14, &unk_3BDC90, &unk_2E5620);
  }

  return result;
}

void sub_1B6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_68D1C(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_6287C(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_69198(a1, &unk_3C2550, &qword_2E4E40);
    sub_24DA3C(a2, a3, v8);

    sub_69198(v8, &unk_3C2550, &qword_2E4E40);
  }
}

void sub_1B6334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_62A1C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_5D228(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_6434C();
        v15 = v17;
      }

      sub_24E7A4(v11, v15);
      *v5 = v15;
    }
  }
}

uint64_t sub_1B643C(uint64_t a1, uint64_t a2)
{
  v3 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v3 - 8);
  v5 = v12 - v4;
  v6 = sub_2C4BF8();
  __chkstk_darwin(v6 - 8);
  sub_691F8(a2, v13);
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v13[40] = 1;
  v7 = sub_2C4BE8();
  v12[3] = &type metadata for SeriesListShelfUpdateIntent;
  v12[4] = sub_112718(v7, v8, v9);
  v12[0] = swift_allocObject();
  sub_1127B4(v13, v12[0] + 16);
  v10 = sub_2BF088();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_1BFE88(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_1BFE88(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C10E8();
  return sub_112810(v13);
}

uint64_t SeriesSeeAllPageIntentImplementation.performSync(_:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v224 = a2;
  v217 = sub_2BE5C8();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v210 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Page(0);
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = &v210 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_2C1A68();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v227 = &v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_2C1A28();
  v226 = *(v228 - 8);
  __chkstk_darwin(v228);
  v237 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1598, &unk_2EB570);
  __chkstk_darwin(v7 - 8);
  v239 = &v210 - v8;
  *&v242 = sub_2BE828();
  v233 = *(v242 - 8);
  __chkstk_darwin(v242);
  v218 = (&v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v238 = (&v210 - v11);
  v12 = sub_2C4BF8();
  __chkstk_darwin(v12 - 8);
  v225 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v241 = &v210 - v15;
  v257 = sub_2BE8F8();
  v255 = *(v257 - 8);
  __chkstk_darwin(v257);
  v234 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v256 = &v210 - v18;
  v231 = sub_6620C(&qword_3C1590, &qword_2EB568);
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v210 - v19;
  v248 = sub_6620C(&qword_3C15A0, &qword_2EB580);
  v236 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = &v210 - v20;
  v247 = sub_6620C(&qword_3C15A8, &qword_2EB588);
  v235 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v210 - v21;
  v22 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v22 - 8);
  v250 = &v210 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v251 = &v210 - v25;
  __chkstk_darwin(v26);
  v264 = &v210 - v27;
  v244 = sub_2BFDD8();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v263 = &v210 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_6620C(&qword_3C15B8, &unk_2EB590);
  __chkstk_darwin(v29 - 8);
  v252 = &v210 - v30;
  v31 = type metadata accessor for Shelf(0);
  v232 = *(v31 - 8);
  __chkstk_darwin(v31 - 8);
  v262 = (&v210 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_6620C(&qword_3BFEC0, &unk_2EB230);
  __chkstk_darwin(v33 - 8);
  v35 = &v210 - v34;
  v259 = sub_2C4BB8();
  v258 = *(v259 - 8);
  __chkstk_darwin(v259);
  v249 = &v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v210 - v38;
  v260 = sub_2BEF78();
  v261 = *(v260 - 8);
  __chkstk_darwin(v260);
  v254 = &v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v210 - v42;
  sub_6620C(&qword_3BE240, &qword_2E5AC0);
  sub_2C4DB8();
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();
  v266 = v274;
  sub_691F8(a1, &v274);
  sub_2C1498();
  sub_2C4DB8();
  v265 = v271;
  v44 = sub_2C1468();
  v267 = a1;
  v268 = v43;
  v280 = v39;
  if ((v44 & 1) == 0)
  {
    v240 = v35;
    sub_72084(&v274, v275);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v46 = sub_2C60B8();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v210 - v48;
    sub_2BF388();
    v50 = *(AssociatedTypeWitness - 8);
    if ((*(v50 + 48))(v49, 1, AssociatedTypeWitness) == 1)
    {
      (*(v47 + 8))(v49, v46);
      AssociatedConformanceWitness = 0;
      v271 = 0u;
      v272 = 0u;
      v51 = sub_69198(&v271, &qword_3BDAC8, &qword_2E9FF0);
      sub_10AFE0(v51, v52, v53);
      swift_allocError();
      *v54 = 1;
LABEL_8:
      swift_willThrow();

LABEL_23:
      sub_68CD0(&v277);
      return sub_68CD0(&v274);
    }

    *(&v272 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v55 = sub_720C8(&v271);
    (*(v50 + 32))(v55, v49, AssociatedTypeWitness);
    sub_69198(&v271, &qword_3BDAC8, &qword_2E9FF0);
    v35 = v240;
  }

  if ([objc_opt_self() isOffline])
  {
    v240 = v35;
    sub_72084(&v274, v275);
    v56 = swift_getAssociatedTypeWitness();
    v57 = sub_2C60B8();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v210 - v59;
    sub_2BF388();
    v61 = *(v56 - 8);
    if ((*(v61 + 48))(v60, 1, v56) == 1)
    {
      (*(v58 + 8))(v60, v57);
      AssociatedConformanceWitness = 0;
      v271 = 0u;
      v272 = 0u;
      v62 = sub_69198(&v271, &qword_3BDAC8, &qword_2E9FF0);
      sub_10AFE0(v62, v63, v64);
      swift_allocError();
      *v65 = 3;
      goto LABEL_8;
    }

    *(&v272 + 1) = v56;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v66 = sub_720C8(&v271);
    (*(v61 + 32))(v66, v60, v56);
    sub_69198(&v271, &qword_3BDAC8, &qword_2E9FF0);
    v35 = v240;
  }

  sub_72084(&v274, v275);
  sub_2BF3B8();
  sub_2BEF48();
  sub_72084(&v274, v275);
  sub_2BF3B8();
  v240 = type metadata accessor for SeriesSeeAllPageIntent(0);
  v67 = sub_2C54D8();
  (*(*(v67 - 8) + 56))(v35, 1, 1, v67);
  sub_2C2108();

  sub_69198(v35, &qword_3BFEC0, &unk_2EB230);
  sub_72084(&v274, v275);
  v68 = swift_getAssociatedTypeWitness();
  v69 = sub_2C60B8();
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v210 - v71;
  sub_2BF388();
  v73 = *(v68 - 8);
  v74 = (*(v73 + 48))(v72, 1, v68);
  if (v74 == 1)
  {
    (*(v70 + 8))(v72, v69);
    AssociatedConformanceWitness = 0;
    v271 = 0u;
    v272 = 0u;
  }

  else
  {
    *(&v272 + 1) = v68;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v75 = sub_720C8(&v271);
    (*(v73 + 32))(v75, v72, v68);
  }

  v76 = v264;
  v77 = v261;
  v78 = v74 != 1;
  sub_69198(&v271, &qword_3BDAC8, &qword_2E9FF0);
  v79 = v267;
  v80 = *(v267 + 40);
  v81 = *(v240 + 24);
  LOBYTE(v271) = *(v267 + 40);
  LOBYTE(v270) = 1;
  v82 = type metadata accessor for SeriesRoomListHeaderComponentModel(0);
  v83 = v252;
  (*(*(v82 - 8) + 56))(v252, 1, 1, v82);
  v84 = v253;
  sub_1514BC(&v274, &v271, (v79 + v81), &v270, v83, v78, v262);
  if (v84)
  {

    sub_69198(v83, &qword_3C15B8, &unk_2EB590);
    (*(v258 + 8))(v280, v259);
    (*(v77 + 8))(v268, v260);
    goto LABEL_23;
  }

  v214 = v81;
  v253 = 0;
  sub_69198(v83, &qword_3C15B8, &unk_2EB590);
  sub_72084(&v274, v275);
  sub_2BF3C8();
  sub_2BFDC8();

  sub_1969C0(&v274, v76);
  v85 = v279;
  sub_72084(&v277, v278);
  sub_72084(&v274, v275);
  v86 = sub_2BF3B8();
  v87 = (*(v85 + 40))(v86);

  v270 = v87;
  sub_691F8(&v274, &v271);
  v88 = swift_allocObject();
  sub_68D1C(&v271, v88 + 16);
  sub_6620C(&qword_3C15E0, &unk_2EB5A8);
  LODWORD(v252) = v80;
  sub_6620C(&qword_3BD478, &unk_2E4090);
  sub_72B74(&qword_3C15E8, &qword_3C15E0, &unk_2EB5A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_2C2418();

  v89 = v279;
  sub_72084(&v277, v278);
  sub_72084(&v274, v275);
  v90 = sub_2BF3B8();
  v91 = (*(v89 + 48))(v90);

  v270 = v91;
  sub_691F8(&v274, &v271);
  v92 = swift_allocObject();
  sub_68D1C(&v271, v92 + 16);
  sub_6620C(&qword_3C15F0, &qword_2EB5B8);
  sub_72B74(&qword_3C15F8, &qword_3C15F0, &qword_2EB5B8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_2C2418();

  sub_72B74(&qword_3C1608, &qword_3C15A8, &qword_2EB588, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_72B74(&qword_3C1610, &qword_3C15A0, &qword_2EB580, &protocol conformance descriptor for Publishers.Map<A, B>);
  v93 = v229;
  sub_2C2428();
  sub_72B74(&qword_3C1618, &qword_3C1590, &qword_2EB568, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v94 = v231;
  v213 = sub_2C2408();
  (*(v230 + 8))(v93, v94);
  v270 = _swiftEmptyDictionarySingleton;
  v95 = v275;
  v96 = v276;
  sub_72084(&v274, v275);
  v97 = v256;
  sub_2B7838(v95, v96, v256);
  sub_2C4BE8();
  v211 = sub_6620C(&qword_3BC240, &unk_2E9B40);
  v98 = swift_allocObject();
  v210 = xmmword_2E15C0;
  *(v98 + 16) = xmmword_2E15C0;
  v99 = v275;
  v100 = v276;
  sub_72084(&v274, v275);
  v101 = v238;
  sub_2B7838(v99, v100, v238);
  v240 = *(v233 + 104);
  v102 = v242;
  (v240)(v101, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v242);
  v231 = sub_2BE858();
  *(v98 + 56) = v231;
  v103 = sub_1BFE88(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
  *(v98 + 64) = v103;
  sub_720C8((v98 + 32));
  sub_2BE838();
  v212 = *(sub_6620C(&qword_3C15C8, &qword_2EB5A0) + 48);
  v104 = v257;
  v101[3] = v257;
  v233 = sub_1BFE88(&qword_3C15D0, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
  v101[4] = v233;
  v230 = sub_1BFE88(&qword_3C15D8, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
  v101[5] = v230;
  v105 = sub_720C8(v101);
  v106 = (v255 + 16);
  v229 = *(v255 + 16);
  (v229)(v105, v97, v104);
  v107 = enum case for ScenePhase.active(_:);
  v108 = sub_2C2508();
  v109 = v107;
  v110 = v231;
  (*(*(v108 - 8) + 104))(v101 + v212, v109, v108);
  (v240)(v101, enum case for AppAnalyticsAction.Type.popData(_:), v102);
  *(v98 + 96) = v110;
  *(v98 + 104) = v103;
  sub_720C8((v98 + 72));
  sub_2BE838();
  v111 = sub_2C4D28();
  *(&v272 + 1) = v111;
  AssociatedConformanceWitness = &protocol witness table for CompoundAction;
  sub_720C8(&v271);
  sub_2C4D18();
  sub_1B6158(&v271, 3);
  if (v252)
  {
    v112 = v257;
    v113 = v233;
    v101[3] = v257;
    v101[4] = v113;
    v114 = v230;
    v101[5] = v230;
    v115 = sub_720C8(v101);
    (v229)(v115, v256, v112);
    (v240)(v101, enum case for AppAnalyticsAction.Type.pushData(_:), v242);
    *(&v272 + 1) = v110;
    AssociatedConformanceWitness = v103;
    sub_720C8(&v271);
    sub_2BE838();
    sub_1B6158(&v271, 2);
    v116 = v112;
    v117 = v243;
    v118 = v259;
    v119 = v258;
    v120 = v114;
  }

  else
  {
    v121 = v103;
    v212 = v111;
    v241 = v106;
    sub_2C4BE8();
    v122 = swift_allocObject();
    *(v122 + 16) = v210;
    sub_72084(&v274, v275);
    v123 = sub_2BF3B8();
    v125 = v124;
    sub_72084(&v274, v275);
    sub_2BF2C8();
    v127 = v126;
    sub_72084(&v274, v275);
    v128 = v121;
    v129 = v231;
    if (v127)
    {
      v130 = sub_2BF2F8();
    }

    else
    {
      v130 = sub_2BF2C8();
    }

    v132 = v218;
    *v218 = v123;
    v132[1] = v125;
    v132[2] = v130;
    *(v132 + 24) = v131 & 1;
    v133 = v242;
    v134 = v240;
    (v240)(v132, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:), v242);
    *(v122 + 56) = v129;
    *(v122 + 64) = v128;
    v135 = v128;
    sub_720C8((v122 + 32));
    sub_2BE838();
    v116 = v257;
    v136 = v238;
    v137 = v233;
    v238[3] = v257;
    v136[4] = v137;
    v120 = v230;
    v136[5] = v230;
    v138 = sub_720C8(v136);
    (v229)(v138, v256, v116);
    v134(v136, enum case for AppAnalyticsAction.Type.pushData(_:), v133);
    *(v122 + 96) = v129;
    *(v122 + 104) = v135;
    sub_720C8((v122 + 72));
    sub_2BE838();
    *(&v272 + 1) = v212;
    AssociatedConformanceWitness = &protocol witness table for CompoundAction;
    sub_720C8(&v271);
    v113 = v233;
    sub_2C4D18();
    sub_1B6158(&v271, 2);
    v118 = v259;
    v119 = v258;
    v117 = v243;
  }

  v139 = *(v261 + 16);
  v231 = v261 + 16;
  v230 = v139;
  v139(v254, v268, v260);
  v140 = *(v119 + 16);
  v238 = (v119 + 16);
  v233 = v140;
  v140(v249, v280, v118);
  sub_6620C(&qword_3BC1A0, &unk_2EB5C0);
  v141 = swift_allocObject();
  v242 = xmmword_2E3F30;
  *(v141 + 16) = xmmword_2E3F30;
  v142 = v275;
  v143 = v276;
  sub_72084(&v274, v275);
  *(v141 + 56) = v116;
  *(v141 + 64) = v113;
  *(v141 + 72) = v120;
  v144 = sub_720C8((v141 + 32));
  sub_2B7838(v142, v143, v144);
  sub_6620C(&qword_3BC288, &qword_2E2F60);
  v145 = (*(v232 + 80) + 32) & ~*(v232 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = v242;
  v240 = v146;
  v147 = v146 + v145;
  v148 = v262;
  sub_91560(v262, v147);
  v149 = v148[1];
  v232 = *v148;
  *&v242 = v149;
  v150 = *(v117 + 16);
  v151 = v251;
  v152 = v263;
  v153 = v244;
  v150(v251, v263, v244);
  (*(v117 + 56))(v151, 0, 1, v153);
  v154 = v264;
  sub_6932C(v264, v250, &qword_3BEF80, &qword_2E8D50);
  v241 = v270;
  v155 = *(sub_6620C(&qword_3C1600, &qword_2F2290) + 48);
  v156 = v239;
  v150(v239, v152, v153);
  sub_6932C(v154, v156 + v155, &qword_3BEF80, &qword_2E8D50);
  v157 = enum case for ToolbarPrincipalType.series(_:);
  v158 = sub_2C15F8();
  v159 = *(v158 - 8);
  (*(v159 + 104))(v156, v157, v158);
  (*(v159 + 56))(v156, 0, 1, v158);
  LOBYTE(v271) = 1;
  v160 = v275;
  v161 = v276;
  sub_72084(&v274, v275);

  v162 = v234;
  sub_2B7838(v160, v161, v234);
  v269 = v252;
  v163 = v253;
  v164 = sub_20CB14(&v274, &v271, v162, &v269, v267 + v214);
  v253 = v163;
  if (v163)
  {

    v165 = *(v255 + 8);
    v166 = v257;
    v165(v162, v257);
    sub_69198(v156, &qword_3C1598, &unk_2EB570);
    sub_69198(v250, &qword_3BEF80, &qword_2E8D50);
    sub_69198(v251, &qword_3BEF80, &qword_2E8D50);
    v167 = *(v258 + 8);
    v168 = v259;
    v167(v249, v259);
    v169 = *(v261 + 8);
    v170 = v260;
    v169(v254, v260);
    v165(v256, v166);
    (*(v236 + 8))(v246, v248);
    (*(v235 + 8))(v245, v247);
    sub_69198(v264, &qword_3BEF80, &qword_2E8D50);
    (*(v243 + 8))(v263, v244);
    sub_1BFCD0(v262, type metadata accessor for Shelf);
    v167(v280, v168);
    v169(v268, v170);
    goto LABEL_23;
  }

  v229 = v164;
  v267 = v141;
  v172 = *(v255 + 8);
  v255 += 8;
  v252 = v172;
  (v172)(v162, v257);
  sub_72084(&v274, v275);
  v173 = swift_getAssociatedTypeWitness();
  v174 = sub_2C60B8();
  v175 = *(v174 - 8);
  __chkstk_darwin(v174);
  v177 = &v210 - v176;
  sub_2BF388();
  v178 = *(v173 - 8);
  LODWORD(v234) = (*(v178 + 48))(v177, 1, v173);
  if (v234 == 1)
  {
    (*(v175 + 8))(v177, v174);
    AssociatedConformanceWitness = 0;
    v271 = 0u;
    v272 = 0u;
  }

  else
  {
    *(&v272 + 1) = v173;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v179 = sub_720C8(&v271);
    (*(v178 + 32))(v179, v177, v173);
  }

  v180 = v259;
  v181 = v251;
  v182 = v250;
  v183 = v249;
  sub_69198(&v271, &qword_3BDAC8, &qword_2E9FF0);
  (*(v226 + 104))(v237, enum case for NavigationBarTitleStyle.automatic(_:), v228);
  sub_2C1A58();
  v184 = v223;
  v185 = v221;
  v186 = &v221[*(v223 + 96)];
  *v186 = 0;
  *(v186 + 1) = 0;
  v187 = v185 + v184[25];
  *(v187 + 4) = 0;
  *v187 = 0u;
  *(v187 + 1) = 0u;
  *&v271 = sub_2BEF68();
  *(&v271 + 1) = v188;
  v281._countAndFlagsBits = 45;
  v281._object = 0xE100000000000000;
  sub_2C5978(v281);
  v189._countAndFlagsBits = sub_2BEF58();
  v190 = v260;
  if (v189._object)
  {
    object = v189._object;
  }

  else
  {
    v192 = v215;
    sub_2BE5B8();
    v193 = sub_2BE598();
    object = v194;
    v195 = v192;
    v190 = v260;
    (*(v216 + 8))(v195, v217);
    v189._countAndFlagsBits = v193;
  }

  LODWORD(v234) = v234 != 1;
  v189._object = object;
  sub_2C5978(v189);

  v196 = *(&v271 + 1);
  *v185 = v271;
  v185[1] = v196;
  (v230)(v185 + v184[17], v254, v190);
  *(v185 + v184[18]) = v267;
  *(v185 + v184[14]) = 1;
  *(v185 + v184[15]) = v240;
  (v233)(v185 + v184[19], v183, v180);
  v197 = (v185 + v184[16]);
  v198 = v242;
  *v197 = v232;
  v197[1] = v198;
  sub_6932C(v181, v185 + v184[5], &qword_3BEF80, &qword_2E8D50);
  sub_6932C(v182, v185 + v184[6], &qword_3BEF80, &qword_2E8D50);
  v199 = v226;
  v200 = v228;
  (*(v226 + 16))(v185 + v184[7], v237, v228);
  v201 = v219;
  v202 = v227;
  v203 = v220;
  (*(v219 + 16))(v185 + v184[8], v227, v220);
  *(v185 + v184[9]) = 0;
  *(v185 + v184[21]) = v241;
  v204 = v239;
  sub_6932C(v239, v185 + v184[10], &qword_3C1598, &unk_2EB570);
  *(v185 + v184[11]) = _swiftEmptyArrayStorage;
  *(v185 + v184[12]) = v229;
  *(v185 + v184[13]) = 0;
  *(v185 + v184[22]) = v213;
  *(v185 + v184[23]) = 0;
  *(v185 + v184[20]) = v234;
  sub_17E898();

  (*(v201 + 8))(v202, v203);
  (*(v199 + 8))(v237, v200);
  sub_69198(v204, &qword_3C1598, &unk_2EB570);
  sub_69198(v250, &qword_3BEF80, &qword_2E8D50);
  sub_69198(v251, &qword_3BEF80, &qword_2E8D50);
  v205 = *(v258 + 8);
  v206 = v259;
  v205(v249, v259);
  v207 = *(v261 + 8);
  v208 = v260;
  v207(v254, v260);
  (v252)(v256, v257);
  (*(v236 + 8))(v246, v248);
  (*(v235 + 8))(v245, v247);
  sub_69198(v264, &qword_3BEF80, &qword_2E8D50);
  (*(v243 + 8))(v263, v244);
  sub_1BFCD0(v262, type metadata accessor for Shelf);
  v205(v280, v206);
  v207(v268, v208);
  v209 = v224;
  sub_BF578(v185, v224);
  sub_68CD0(&v277);
  (*(v222 + 56))(v209, 0, 1, v184);
  return sub_68CD0(&v274);
}

uint64_t sub_1B8FE0()
{
  sub_68CD0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t SeriesSeeAllPageIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[76] = a3;
  v3[75] = a2;
  v3[74] = a1;
  v4 = sub_2BE5C8();
  v3[77] = v4;
  v3[78] = *(v4 - 8);
  v3[79] = swift_task_alloc();
  v5 = type metadata accessor for Page(0);
  v3[80] = v5;
  v3[81] = *(v5 - 8);
  v3[82] = swift_task_alloc();
  v6 = sub_2C1A68();
  v3[83] = v6;
  v3[84] = *(v6 - 8);
  v3[85] = swift_task_alloc();
  v7 = sub_2C1A28();
  v3[86] = v7;
  v3[87] = *(v7 - 8);
  v3[88] = swift_task_alloc();
  sub_6620C(&qword_3C1598, &unk_2EB570);
  v3[89] = swift_task_alloc();
  v8 = sub_2BE828();
  v3[90] = v8;
  v3[91] = *(v8 - 8);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  sub_2C4BF8();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v9 = sub_2BE8F8();
  v3[96] = v9;
  v3[97] = *(v9 - 8);
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v10 = sub_6620C(&qword_3C1590, &qword_2EB568);
  v3[100] = v10;
  v3[101] = *(v10 - 8);
  v3[102] = swift_task_alloc();
  v11 = sub_6620C(&qword_3C15A0, &qword_2EB580);
  v3[103] = v11;
  v3[104] = *(v11 - 8);
  v3[105] = swift_task_alloc();
  v12 = sub_6620C(&qword_3C15A8, &qword_2EB588);
  v3[106] = v12;
  v3[107] = *(v12 - 8);
  v3[108] = swift_task_alloc();
  sub_6620C(&qword_3BEF80, &qword_2E8D50);
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v13 = sub_2BFDD8();
  v3[112] = v13;
  v3[113] = *(v13 - 8);
  v3[114] = swift_task_alloc();
  sub_6620C(&qword_3C15B8, &unk_2EB590);
  v3[115] = swift_task_alloc();
  v3[116] = *(type metadata accessor for Shelf(0) - 8);
  v3[117] = swift_task_alloc();
  v14 = sub_2C4BB8();
  v3[118] = v14;
  v3[119] = *(v14 - 8);
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v15 = sub_2BEF78();
  v3[122] = v15;
  v3[123] = *(v15 - 8);
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = type metadata accessor for SeriesPageStoreResourceIntent(0);
  v3[127] = swift_task_alloc();
  sub_6620C(&qword_3BFEC0, &unk_2EB230);
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v16 = sub_2C4C48();
  v3[130] = v16;
  v3[131] = *(v16 - 8);
  v3[132] = swift_task_alloc();
  v17 = sub_6620C(&qword_3C13C0, &qword_2EB250);
  v3[133] = v17;
  v3[134] = *(v17 - 8);
  v3[135] = swift_task_alloc();
  v18 = sub_2C4E88();
  v3[136] = v18;
  v3[137] = *(v18 - 8);
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  sub_6620C(&qword_3C13C8, &qword_2EB258);
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v3[142] = swift_task_alloc();
  sub_6620C(&qword_3C13D0, &qword_2EB260);
  v3[143] = swift_task_alloc();
  v19 = sub_2C54A8();
  v3[144] = v19;
  v3[145] = *(v19 - 8);
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  v20 = sub_2C1498();
  v21 = swift_task_alloc();
  v3[148] = v21;
  *v21 = v3;
  v21[1] = sub_1B997C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 70, v20, v20);
}

uint64_t sub_1B997C()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_1BEBD8;
  }

  else
  {
    v2 = sub_1B9A90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1B9A90(uint64_t a1)
{
  v2 = *(v1 + 560);
  *(v1 + 1200) = v2;
  v3 = sub_2C1468();
  if ((v3 & 1) == 0)
  {
    sub_10AFE0(v3, v4, v5);
    swift_allocError();
    *v15 = 1;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_691F8(*(v1 + 600), v1 + 16);
  if ([objc_opt_self() isOffline])
  {
    sub_72084((v1 + 16), *(v1 + 40));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = sub_2C60B8();
    v8 = *(v7 - 8);
    v9 = swift_task_alloc();
    sub_2BF388();
    v10 = *(AssociatedTypeWitness - 8);
    if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v8 + 8))(v9, v7);

      *(v1 + 528) = 0;
      *(v1 + 496) = 0u;
      *(v1 + 512) = 0u;
      v11 = sub_69198(v1 + 496, &qword_3BDAC8, &qword_2E9FF0);
      sub_10AFE0(v11, v12, v13);
      swift_allocError();
      *v14 = 3;
      swift_willThrow();

      sub_68CD0((v1 + 16));
LABEL_6:

      v16 = *(v1 + 8);

      return v16();
    }

    *(v1 + 520) = AssociatedTypeWitness;
    *(v1 + 528) = swift_getAssociatedConformanceWitness();
    v18 = sub_720C8((v1 + 496));
    (*(v10 + 32))(v18, v9, AssociatedTypeWitness);

    sub_69198(v1 + 496, &qword_3BDAC8, &qword_2E9FF0);
  }

  v19 = sub_6620C(&qword_3BD1F0, &unk_2F55C0);
  v20 = swift_task_alloc();
  *(v1 + 1208) = v20;
  *v20 = v1;
  v20[1] = sub_1BA004;

  return BaseObjectGraph.inject<A>(_:)(v1 + 56, v19, v19);
}

uint64_t sub_1BA004()
{
  v2 = *v1;
  *(v2 + 1216) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1BEE4C, 0, 0);
  }

  else
  {
    v3 = sub_6620C(&qword_3BE240, &qword_2E5AC0);
    v4 = swift_task_alloc();
    *(v2 + 1224) = v4;
    *v4 = v2;
    v4[1] = sub_1BA1A8;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_1BA1A8()
{
  v2 = *v1;
  *(v2 + 1232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1BF0D0, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for HostProxy(0);
    v4 = swift_task_alloc();
    *(v2 + 1240) = v4;
    *v4 = v2;
    v4[1] = sub_1BA340;

    return BaseObjectGraph.inject<A>(_:)(v2 + 568, v3, v3);
  }
}

uint64_t sub_1BA340()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = sub_1BF35C;
  }

  else
  {
    v2 = sub_1BA454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1BA454()
{
  v271 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  *(v0 + 1256) = *(v0 + 568);
  sub_2C4E18();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1144);
  if (v5 == 1)
  {
    (*(v7 + 104))(v6, enum case for PageIntentInstrumentation.notInstrumented(_:), *(v0 + 1152));
    if (v4(v9, 1, v8) != 1)
    {
      sub_69198(*(v0 + 1144), &qword_3C13D0, &qword_2EB260);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 1144), *(v0 + 1152));
  }

  v10 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  (*(v11 + 16))(v10, *(v0 + 1176), v12);
  v13 = (*(v11 + 88))(v10, v12);
  if (v13 == enum case for PageIntentInstrumentation.primaryData(_:))
  {
    v14 = *(v0 + 1168);
    v15 = *(v0 + 1136);
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    (*(*(v0 + 1160) + 96))(v14, *(v0 + 1152));
    (*(v16 + 32))(v15, v14, v17);
    (*(v16 + 56))(v15, 0, 1, v17);
  }

  else if (v13 == enum case for PageIntentInstrumentation.secondaryData(_:))
  {
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1160);
    v20 = *(v0 + 1152);
    (*(*(v0 + 1096) + 56))(*(v0 + 1136), 1, 1, *(v0 + 1088));
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v21 = enum case for PageIntentInstrumentation.notInstrumented(_:);
    v22 = v13;
    (*(*(v0 + 1096) + 56))(*(v0 + 1136), 1, 1, *(v0 + 1088));
    if (v22 != v21)
    {
      (*(*(v0 + 1160) + 8))(*(v0 + 1168), *(v0 + 1152));
    }
  }

  v23 = *(v0 + 1128);
  v24 = *(v0 + 1096);
  v25 = *(v0 + 1088);
  sub_6932C(*(v0 + 1136), v23, &qword_3C13C8, &qword_2EB258);
  v26 = *(v24 + 48);
  *(v0 + 1264) = v26;
  *(v0 + 1272) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v26(v23, 1, v25) == 1)
  {
    sub_69198(*(v0 + 1128), &qword_3C13C8, &qword_2EB258);
  }

  else
  {
    (*(*(v0 + 1096) + 32))(*(v0 + 1112), *(v0 + 1128), *(v0 + 1088));
    if (qword_3BB948 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 1080);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    v30 = sub_57AD8(v29, qword_3E8978);
    (*(v28 + 16))(v27, v30, v29);
    sub_72084((v0 + 16), *(v0 + 40));
    v31 = sub_2BF3E8();
    if (v31)
    {

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = *(v0 + 1112);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1080);
    v36 = *(v0 + 1072);
    v37 = *(v0 + 1064);
    v38 = *(v0 + 1056);
    v39 = *(v0 + 1048);
    v259 = *(v0 + 1040);
    v262 = *(v0 + 1088);
    *(v0 + 1328) = v32;
    sub_2C4E78();
    v40 = sub_2C4C38();
    sub_111B90(v40, v41, v42);
    sub_2C4EC8();

    (*(v39 + 8))(v38, v259);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v33, v262);
  }

  v43 = *(v0 + 1032);
  v44 = sub_2C54D8();
  *(v0 + 1280) = v44;
  v45 = *(v44 - 8);
  *(v0 + 1288) = v45;
  v47 = v45 + 56;
  v46 = *(v45 + 56);
  *(v0 + 1296) = v46;
  *(v0 + 1304) = v47 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v46(v43, 1, 1, v44);
  sub_72084((v0 + 16), *(v0 + 40));
  v48 = sub_2BF3E8();
  if (v48)
  {

    v263 = *(v0 + 1248);
    v49 = *(v0 + 1264);
    v50 = *(v0 + 1120);
    v51 = *(v0 + 1088);
    sub_6932C(*(v0 + 1136), v50, &qword_3C13C8, &qword_2EB258);
    if (v49(v50, 1, v51) == 1)
    {
      sub_69198(*(v0 + 1120), &qword_3C13C8, &qword_2EB258);
    }

    else
    {
      (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1120), *(v0 + 1088));
      sub_2C4C38();
      if (qword_3BB938 != -1)
      {
        swift_once();
      }

      v69 = sub_6620C(&qword_3C13E8, &qword_2EB268);
      sub_57AD8(v69, qword_3E8948);
      sub_2C4E78();
      sub_2C4EA8();

      if (qword_3BB940 != -1)
      {
        swift_once();
      }

      v70 = *(v0 + 1104);
      v71 = *(v0 + 1096);
      v72 = *(v0 + 1088);
      v73 = *(v0 + 1056);
      v74 = *(v0 + 1048);
      v75 = *(v0 + 1040);
      sub_57AD8(v69, qword_3E8960);
      sub_2C4E78();
      sub_2C4EA8();

      (*(v74 + 8))(v73, v75);
      (*(v71 + 8))(v70, v72);
    }

    v76 = *(v0 + 936);
    v77 = *(v0 + 920);
    v78 = *(v0 + 600);
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF3B8();
    sub_2BEF48();
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF3B8();
    v79 = type metadata accessor for SeriesSeeAllPageIntent(0);
    sub_2C2108();

    v80 = *(v78 + 40);
    v81 = *(v79 + 24);
    LOBYTE(v267) = *(v78 + 40);
    LOBYTE(v269) = 1;
    v82 = type metadata accessor for SeriesRoomListHeaderComponentModel(0);
    (*(*(v82 - 8) + 56))(v77, 1, 1, v82);
    sub_1514BC((v0 + 16), &v267, (v78 + v81), &v269, v77, 1, v76);
    if (v263)
    {
      v83 = *(v0 + 1000);
      v84 = *(v0 + 984);
      v85 = *(v0 + 976);
      v86 = *(v0 + 968);
      v87 = *(v0 + 952);
      v88 = *(v0 + 944);
      sub_69198(*(v0 + 920), &qword_3C15B8, &unk_2EB590);
      (*(v87 + 8))(v86, v88);
      (*(v84 + 8))(v83, v85);
      v151 = *(v0 + 1200);
      v152 = *(v0 + 1176);
      v153 = *(v0 + 1160);
      v154 = *(v0 + 1152);
      v155 = *(v0 + 1136);
      v156 = *(v0 + 1032);
      sub_1BF90C(v155);

      sub_69198(v156, &qword_3BFEC0, &unk_2EB230);
      sub_69198(v155, &qword_3C13C8, &qword_2EB258);
      (*(v153 + 8))(v152, v154);
      sub_68CD0((v0 + 96));
      sub_68CD0((v0 + 56));
      sub_68CD0((v0 + 16));

      v157 = *(v0 + 8);
    }

    else
    {
      v237 = v81;
      v240 = v78;
      v260 = v80;
      v89 = *(v0 + 888);
      v230 = *(v0 + 816);
      v245 = *(v0 + 800);
      v248 = *(v0 + 808);
      v242 = *(v0 + 776);
      v235 = *(v0 + 768);
      v251 = *(v0 + 792);
      v90 = *(v0 + 744);
      v264 = *(v0 + 728);
      v256 = *(v0 + 720);
      sub_69198(*(v0 + 920), &qword_3C15B8, &unk_2EB590);
      sub_72084((v0 + 16), *(v0 + 40));
      sub_2BF3C8();
      sub_2BFDC8();

      sub_1969C0((v0 + 16), v89);
      v91 = *(v0 + 128);
      sub_72084((v0 + 96), *(v0 + 120));
      sub_72084((v0 + 16), *(v0 + 40));
      v92 = sub_2BF3B8();
      v93 = (*(v91 + 40))(v92);

      *(v0 + 576) = v93;
      sub_691F8(v0 + 16, v0 + 256);
      v94 = swift_allocObject();
      sub_68D1C((v0 + 256), v94 + 16);
      sub_6620C(&qword_3C15E0, &unk_2EB5A8);
      sub_6620C(&qword_3BD478, &unk_2E4090);
      sub_72B74(&qword_3C15E8, &qword_3C15E0, &unk_2EB5A8, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_2C2418();

      v95 = *(v0 + 128);
      sub_72084((v0 + 96), *(v0 + 120));
      sub_72084((v0 + 16), *(v0 + 40));
      v96 = sub_2BF3B8();
      v97 = (*(v95 + 48))(v96);

      *(v0 + 584) = v97;
      sub_691F8(v0 + 16, v0 + 296);
      v98 = swift_allocObject();
      sub_68D1C((v0 + 296), v98 + 16);
      sub_6620C(&qword_3C15F0, &qword_2EB5B8);
      sub_72B74(&qword_3C15F8, &qword_3C15F0, &qword_2EB5B8, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_2C2418();

      sub_72B74(&qword_3C1608, &qword_3C15A8, &qword_2EB588, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_72B74(&qword_3C1610, &qword_3C15A0, &qword_2EB580, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_2C2428();
      sub_72B74(&qword_3C1618, &qword_3C1590, &qword_2EB568, &protocol conformance descriptor for Publishers.Merge<A, B>);
      v239 = sub_2C2408();
      (*(v248 + 8))(v230, v245);
      v267 = _swiftEmptyDictionarySingleton;
      v100 = *(v0 + 40);
      v99 = *(v0 + 48);
      sub_72084((v0 + 16), v100);
      sub_2B7838(v100, v99, v251);
      sub_2C4BE8();
      sub_6620C(&qword_3BC240, &unk_2E9B40);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_2E15C0;
      v103 = *(v0 + 40);
      v102 = *(v0 + 48);
      sub_72084((v0 + 16), v103);
      sub_2B7838(v103, v102, v90);
      v104 = *(v264 + 104);
      v104(v90, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v256);
      v105 = sub_2BE858();
      *(v101 + 56) = v105;
      v106 = sub_1BFE88(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
      *(v101 + 64) = v106;
      sub_720C8((v101 + 32));
      sub_2BE838();
      v107 = *(sub_6620C(&qword_3C15C8, &qword_2EB5A0) + 48);
      v90[3] = v235;
      v249 = sub_1BFE88(&qword_3C15D0, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
      v90[4] = v249;
      v246 = sub_1BFE88(&qword_3C15D8, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
      v90[5] = v246;
      v108 = sub_720C8(v90);
      v109 = v251;
      v252 = *(v242 + 16);
      v252(v108, v109, v235);
      v110 = enum case for ScenePhase.active(_:);
      v111 = sub_2C2508();
      (*(*(v111 - 8) + 104))(v90 + v107, v110, v111);
      v104(v90, enum case for AppAnalyticsAction.Type.popData(_:), v256);
      *(v101 + 96) = v105;
      *(v101 + 104) = v106;
      v257 = v106;
      sub_720C8((v101 + 72));
      sub_2BE838();
      v112 = sub_2C4D28();
      *(v0 + 360) = v112;
      *(v0 + 368) = &protocol witness table for CompoundAction;
      sub_720C8((v0 + 336));
      sub_2C4D18();
      sub_1B6158(v0 + 336, 3);
      if (v260)
      {
        v113 = v90;
        v114 = v0 + 376;
        v115 = *(v0 + 792);
        v116 = *(v0 + 768);
        v117 = *(v0 + 744);
        v118 = *(v0 + 720);
        v113[3] = v116;
        v113[4] = v249;
        v113[5] = v246;
        v119 = sub_720C8(v117);
        v252(v119, v115, v116);
        v104(v117, enum case for AppAnalyticsAction.Type.pushData(_:), v118);
        *(v0 + 400) = v105;
        *(v0 + 408) = v257;
        sub_720C8((v0 + 376));
        sub_2BE838();
      }

      else
      {
        sub_2C4BE8();
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_2E15C0;
        sub_72084((v0 + 16), *(v0 + 40));
        v231 = sub_2BF3B8();
        v226 = v121;
        sub_72084((v0 + 16), *(v0 + 40));
        sub_2BF2C8();
        v123 = v122;
        sub_72084((v0 + 16), *(v0 + 40));
        if (v123)
        {
          v124 = sub_2BF2F8();
        }

        else
        {
          v124 = sub_2BF2C8();
        }

        v224 = *(v0 + 792);
        v220 = *(v0 + 768);
        v126 = *(v0 + 744);
        v127 = *(v0 + 736);
        v222 = *(v0 + 720);
        *v127 = v231;
        *(v127 + 8) = v226;
        *(v127 + 16) = v124;
        *(v127 + 24) = v125 & 1;
        (v104)(v127, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:));
        *(v120 + 56) = v105;
        *(v120 + 64) = v257;
        sub_720C8((v120 + 32));
        sub_2BE838();
        v90[3] = v220;
        v90[4] = v249;
        v90[5] = v246;
        v128 = sub_720C8(v126);
        v252(v128, v224, v220);
        v104(v126, enum case for AppAnalyticsAction.Type.pushData(_:), v222);
        *(v120 + 96) = v105;
        *(v120 + 104) = v257;
        sub_720C8((v120 + 72));
        sub_2BE838();
        v114 = v0 + 456;
        *(v0 + 480) = v112;
        *(v0 + 488) = &protocol witness table for CompoundAction;
        sub_720C8((v0 + 456));
        sub_2C4D18();
      }

      sub_1B6158(v114, 2);
      v129 = *(v0 + 968);
      v130 = *(v0 + 960);
      v131 = *(v0 + 952);
      v132 = *(v0 + 944);
      v133 = *(v0 + 936);
      v134 = *(v0 + 928);
      v135 = *(v0 + 904);
      v232 = *(v0 + 896);
      v234 = *(v0 + 912);
      v236 = *(v0 + 888);
      v136 = *(v0 + 880);
      v253 = *(v0 + 872);
      v265 = *(v0 + 784);
      v137 = *(v0 + 768);
      v243 = *(v0 + 712);
      v229 = (*(v0 + 984) + 16);
      v227 = *v229;
      (*v229)(*(v0 + 992), *(v0 + 1000), *(v0 + 976));
      v228 = *(v131 + 16);
      v228(v130, v129, v132);
      sub_6620C(&qword_3BC1A0, &unk_2EB5C0);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_2E3F30;
      v140 = *(v0 + 40);
      v139 = *(v0 + 48);
      sub_72084((v0 + 16), v140);
      *(v138 + 56) = v137;
      *(v138 + 64) = v249;
      *(v138 + 72) = v246;
      v255 = v138;
      v141 = sub_720C8((v138 + 32));
      sub_2B7838(v140, v139, v141);
      sub_6620C(&qword_3BC288, &qword_2E2F60);
      v142 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_2E3F30;
      v250 = v143;
      sub_91560(v133, v143 + v142);
      v247 = *v133;
      v258 = v133[1];
      v144 = *(v135 + 16);
      v144(v136, v234, v232);
      (*(v135 + 56))(v136, 0, 1, v232);
      sub_6932C(v236, v253, &qword_3BEF80, &qword_2E8D50);
      v254 = v267;
      v145 = *(sub_6620C(&qword_3C1600, &qword_2F2290) + 48);
      v144(v243, v234, v232);
      sub_6932C(v236, v243 + v145, &qword_3BEF80, &qword_2E8D50);
      v146 = enum case for ToolbarPrincipalType.series(_:);
      v147 = sub_2C15F8();
      v148 = *(v147 - 8);
      (*(v148 + 104))(v243, v146, v147);
      (*(v148 + 56))(v243, 0, 1, v147);
      v268 = 1;
      v150 = *(v0 + 40);
      v149 = *(v0 + 48);
      sub_72084((v0 + 16), v150);

      sub_2B7838(v150, v149, v265);
      LOBYTE(v269) = v260;
      v215 = sub_20CB14((v0 + 16), &v268, v265, &v269, v240 + v237);
      v216 = *(*(v0 + 776) + 8);
      v216(*(v0 + 784), *(v0 + 768));
      sub_72084((v0 + 16), *(v0 + 40));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v159 = sub_2C60B8();
      v160 = *(v159 - 8);
      v161 = swift_task_alloc();
      sub_2BF388();
      v162 = *(AssociatedTypeWitness - 8);
      v163 = (*(v162 + 48))(v161, 1, AssociatedTypeWitness);
      v164 = v163;
      if (v163 == 1)
      {
        (*(v160 + 8))(v161, v159);

        *(v0 + 448) = 0;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
      }

      else
      {
        *(v0 + 440) = AssociatedTypeWitness;
        *(v0 + 448) = swift_getAssociatedConformanceWitness();
        v165 = sub_720C8((v0 + 416));
        (*(v162 + 32))(v165, v161, AssociatedTypeWitness);
      }

      v166 = *(v0 + 704);
      v167 = *(v0 + 696);
      v168 = *(v0 + 688);
      v169 = *(v0 + 656);
      v170 = *(v0 + 640);
      sub_69198(v0 + 416, &qword_3BDAC8, &qword_2E9FF0);
      (*(v167 + 104))(v166, enum case for NavigationBarTitleStyle.automatic(_:), v168);
      sub_2C1A58();
      v171 = (v169 + *(v170 + 96));
      *v171 = 0;
      v171[1] = 0;
      v172 = v169 + *(v170 + 100);
      *(v172 + 32) = 0;
      *v172 = 0u;
      *(v172 + 16) = 0u;
      v269 = sub_2BEF68();
      v270 = v173;
      v273._countAndFlagsBits = 45;
      v273._object = 0xE100000000000000;
      sub_2C5978(v273);
      v174._countAndFlagsBits = sub_2BEF58();
      if (v174._object)
      {
        object = v174._object;
      }

      else
      {
        v176 = *(v0 + 632);
        v177 = *(v0 + 624);
        v178 = *(v0 + 616);
        sub_2BE5B8();
        v179 = sub_2BE598();
        object = v180;
        (*(v177 + 8))(v176, v178);
        v174._countAndFlagsBits = v179;
      }

      v195 = v164 != 1;
      v211 = *(v0 + 1200);
      v214 = *(v0 + 1176);
      v212 = *(v0 + 1160);
      v213 = *(v0 + 1152);
      v209 = *(v0 + 1136);
      v210 = *(v0 + 1032);
      v208 = *(v0 + 1000);
      v181 = *(v0 + 992);
      v200 = *(v0 + 984);
      v182 = *(v0 + 976);
      v207 = *(v0 + 968);
      v183 = *(v0 + 960);
      v197 = *(v0 + 952);
      v217 = *(v0 + 944);
      v218 = *(v0 + 936);
      v204 = *(v0 + 904);
      v205 = *(v0 + 896);
      v219 = *(v0 + 912);
      v221 = *(v0 + 888);
      v261 = *(v0 + 880);
      v266 = *(v0 + 872);
      v238 = *(v0 + 864);
      v201 = *(v0 + 856);
      v202 = *(v0 + 848);
      v241 = *(v0 + 840);
      v198 = *(v0 + 832);
      v199 = *(v0 + 824);
      v244 = *(v0 + 792);
      v196 = *(v0 + 768);
      v223 = *(v0 + 712);
      v225 = *(v0 + 704);
      v184 = *(v0 + 696);
      v193 = *(v0 + 688);
      v233 = *(v0 + 680);
      v185 = *(v0 + 672);
      v194 = *(v0 + 664);
      v186 = *(v0 + 656);
      v206 = *(v0 + 648);
      v187 = *(v0 + 640);
      v203 = *(v0 + 592);
      v174._object = object;
      sub_2C5978(v174);

      v188 = v270;
      *v186 = v269;
      v186[1] = v188;
      v227(v186 + v187[17], v181, v182);
      *(v186 + v187[18]) = v255;
      *(v186 + v187[14]) = 1;
      *(v186 + v187[15]) = v250;
      v228(v186 + v187[19], v183, v217);
      v189 = (v186 + v187[16]);
      *v189 = v247;
      v189[1] = v258;
      sub_6932C(v261, v186 + v187[5], &qword_3BEF80, &qword_2E8D50);
      sub_6932C(v266, v186 + v187[6], &qword_3BEF80, &qword_2E8D50);
      (*(v184 + 16))(v186 + v187[7], v225, v193);
      (*(v185 + 16))(v186 + v187[8], v233, v194);
      *(v186 + v187[9]) = 0;
      *(v186 + v187[21]) = v254;
      sub_6932C(v223, v186 + v187[10], &qword_3C1598, &unk_2EB570);
      *(v186 + v187[11]) = _swiftEmptyArrayStorage;
      *(v186 + v187[12]) = v215;
      *(v186 + v187[13]) = 0;
      *(v186 + v187[22]) = v239;
      *(v186 + v187[23]) = 0;
      *(v186 + v187[20]) = v195;
      sub_17E898();
      (*(v185 + 8))(v233, v194);
      (*(v184 + 8))(v225, v193);
      sub_69198(v223, &qword_3C1598, &unk_2EB570);
      sub_69198(v266, &qword_3BEF80, &qword_2E8D50);
      sub_69198(v261, &qword_3BEF80, &qword_2E8D50);
      v190 = *(v197 + 8);
      v190(v183, v217);
      v191 = *(v200 + 8);
      v191(v181, v182);
      v216(v244, v196);
      (*(v198 + 8))(v241, v199);
      (*(v201 + 8))(v238, v202);
      sub_69198(v221, &qword_3BEF80, &qword_2E8D50);
      (*(v204 + 8))(v219, v205);
      sub_1BFCD0(v218, type metadata accessor for Shelf);
      v190(v207, v217);
      v191(v208, v182);
      sub_BF578(v186, v203);
      (*(v206 + 56))(v203, 0, 1, v187);
      sub_1BF90C(v209);

      sub_69198(v210, &qword_3BFEC0, &unk_2EB230);
      sub_69198(v209, &qword_3C13C8, &qword_2EB258);
      (*(v212 + 8))(v214, v213);
      sub_68CD0((v0 + 96));
      sub_68CD0((v0 + 56));
      sub_68CD0((v0 + 16));

      v157 = *(v0 + 8);
    }

    return v157();
  }

  else
  {
    v52 = *(v0 + 1016);
    v53 = *(v0 + 1008);
    v54 = *(v0 + 600);
    sub_72084((v0 + 16), *(v0 + 40));
    v55 = sub_2BF3B8();
    v57 = v56;
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF278();
    v58 = *(v53 + 28);
    v59 = *(type metadata accessor for SeriesSeeAllPageIntent(0) + 24);
    v60 = sub_2BF738();
    v61 = *(v60 - 8);
    (*(v61 + 16))(v52 + v58, v54 + v59, v60);
    (*(v61 + 56))(v52 + v58, 0, 1, v60);
    *v52 = v55;
    v52[1] = v57;
    *(v52 + *(v53 + 24)) = 0;
    v62 = *(v0 + 80);
    v63 = *(v0 + 88);
    sub_72084((v0 + 56), v62);
    v64 = swift_task_alloc();
    *(v0 + 1312) = v64;
    v65 = sub_1BFE88(&qword_3C3328, type metadata accessor for SeriesPageStoreResourceIntent, &unk_2F8690);
    *v64 = v0;
    v64[1] = sub_1BC974;
    v66 = *(v0 + 1016);
    v67 = *(v0 + 1008);
    v68 = *(v0 + 608);

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 536, v66, v68, v67, v65, v62, v63);
  }
}

uint64_t sub_1BC974()
{
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v2 = sub_1BF5F0;
  }

  else
  {
    v2 = sub_1BCA88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1BCA88()
{
  v220 = v0;
  v1 = *(v0 + 536);
  v211 = *(v0 + 552);
  sub_72084((v0 + 16), *(v0 + 40));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_2C60B8();
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  sub_2BF388();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v5, v3);

    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
  }

  else
  {
    *(v0 + 240) = AssociatedTypeWitness;
    *(v0 + 248) = swift_getAssociatedConformanceWitness();
    v7 = sub_720C8((v0 + 216));
    (*(v6 + 32))(v7, v5, AssociatedTypeWitness);
  }

  v8 = v1;
  sub_2BF798();

  sub_69198(v0 + 216, &qword_3BDAC8, &qword_2E9FF0);
  if (*(v0 + 200))
  {
    sub_68D1C((v0 + 176), v0 + 136);
    v9 = sub_182144((v0 + 16), (v0 + 136));
    if (*(v211 + 16))
    {
      (*(*(v0 + 1288) + 16))(*(v0 + 1024), v211 + ((*(*(v0 + 1288) + 80) + 32) & ~*(*(v0 + 1288) + 80)), *(v0 + 1280), v9);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(v0 + 1296);
    v12 = *(v0 + 1280);
    v13 = *(v0 + 1032);
    v14 = *(v0 + 1024);
    v15 = *(v0 + 1016);

    sub_68CD0((v0 + 136));
    sub_1BFCD0(v15, type metadata accessor for SeriesPageStoreResourceIntent);
    sub_69198(v13, &qword_3BFEC0, &unk_2EB230);
    v11(v14, v10, 1, v12);
    sub_1BFD30(v14, v13);
  }

  else
  {
    sub_1BFCD0(*(v0 + 1016), type metadata accessor for SeriesPageStoreResourceIntent);

    sub_69198(v0 + 176, &qword_3BDAD0, &qword_2E4DA0);
  }

  v212 = *(v0 + 1320);
  v16 = *(v0 + 1264);
  v17 = *(v0 + 1120);
  v18 = *(v0 + 1088);
  sub_6932C(*(v0 + 1136), v17, &qword_3C13C8, &qword_2EB258);
  if (v16(v17, 1, v18) == 1)
  {
    sub_69198(*(v0 + 1120), &qword_3C13C8, &qword_2EB258);
  }

  else
  {
    (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1120), *(v0 + 1088));
    sub_2C4C38();
    if (qword_3BB938 != -1)
    {
      swift_once();
    }

    v19 = sub_6620C(&qword_3C13E8, &qword_2EB268);
    sub_57AD8(v19, qword_3E8948);
    sub_2C4E78();
    sub_2C4EA8();

    if (qword_3BB940 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1104);
    v21 = *(v0 + 1096);
    v22 = *(v0 + 1088);
    v23 = *(v0 + 1056);
    v24 = *(v0 + 1048);
    v25 = *(v0 + 1040);
    sub_57AD8(v19, qword_3E8960);
    sub_2C4E78();
    sub_2C4EA8();

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
  }

  v26 = *(v0 + 936);
  v27 = *(v0 + 920);
  v28 = *(v0 + 600);
  sub_72084((v0 + 16), *(v0 + 40));
  sub_2BF3B8();
  sub_2BEF48();
  sub_72084((v0 + 16), *(v0 + 40));
  sub_2BF3B8();
  v29 = type metadata accessor for SeriesSeeAllPageIntent(0);
  sub_2C2108();

  v30 = *(v28 + 40);
  v31 = *(v29 + 24);
  LOBYTE(v216) = *(v28 + 40);
  LOBYTE(v218) = 1;
  v32 = type metadata accessor for SeriesRoomListHeaderComponentModel(0);
  (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  sub_1514BC((v0 + 16), &v216, (v28 + v31), &v218, v27, 1, v26);
  if (v212)
  {
    v33 = *(v0 + 1000);
    v34 = *(v0 + 984);
    v35 = *(v0 + 976);
    v36 = *(v0 + 968);
    v37 = *(v0 + 952);
    v38 = *(v0 + 944);
    sub_69198(*(v0 + 920), &qword_3C15B8, &unk_2EB590);
    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
    v101 = *(v0 + 1200);
    v102 = *(v0 + 1176);
    v103 = *(v0 + 1160);
    v104 = *(v0 + 1152);
    v105 = *(v0 + 1136);
    v106 = *(v0 + 1032);
    sub_1BF90C(v105);

    sub_69198(v106, &qword_3BFEC0, &unk_2EB230);
    sub_69198(v105, &qword_3C13C8, &qword_2EB258);
    (*(v103 + 8))(v102, v104);
    sub_68CD0((v0 + 96));
    sub_68CD0((v0 + 56));
    sub_68CD0((v0 + 16));

    v107 = *(v0 + 8);
  }

  else
  {
    v187 = v31;
    v190 = v28;
    v209 = v30;
    v39 = *(v0 + 888);
    v180 = *(v0 + 816);
    v195 = *(v0 + 800);
    v198 = *(v0 + 808);
    v192 = *(v0 + 776);
    v185 = *(v0 + 768);
    v201 = *(v0 + 792);
    v40 = *(v0 + 744);
    v213 = *(v0 + 728);
    v206 = *(v0 + 720);
    sub_69198(*(v0 + 920), &qword_3C15B8, &unk_2EB590);
    sub_72084((v0 + 16), *(v0 + 40));
    sub_2BF3C8();
    sub_2BFDC8();

    sub_1969C0((v0 + 16), v39);
    v41 = *(v0 + 128);
    sub_72084((v0 + 96), *(v0 + 120));
    sub_72084((v0 + 16), *(v0 + 40));
    v42 = sub_2BF3B8();
    v43 = (*(v41 + 40))(v42);

    *(v0 + 576) = v43;
    sub_691F8(v0 + 16, v0 + 256);
    v44 = swift_allocObject();
    sub_68D1C((v0 + 256), v44 + 16);
    sub_6620C(&qword_3C15E0, &unk_2EB5A8);
    sub_6620C(&qword_3BD478, &unk_2E4090);
    sub_72B74(&qword_3C15E8, &qword_3C15E0, &unk_2EB5A8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_2C2418();

    v45 = *(v0 + 128);
    sub_72084((v0 + 96), *(v0 + 120));
    sub_72084((v0 + 16), *(v0 + 40));
    v46 = sub_2BF3B8();
    v47 = (*(v45 + 48))(v46);

    *(v0 + 584) = v47;
    sub_691F8(v0 + 16, v0 + 296);
    v48 = swift_allocObject();
    sub_68D1C((v0 + 296), v48 + 16);
    sub_6620C(&qword_3C15F0, &qword_2EB5B8);
    sub_72B74(&qword_3C15F8, &qword_3C15F0, &qword_2EB5B8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_2C2418();

    sub_72B74(&qword_3C1608, &qword_3C15A8, &qword_2EB588, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_72B74(&qword_3C1610, &qword_3C15A0, &qword_2EB580, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_2C2428();
    sub_72B74(&qword_3C1618, &qword_3C1590, &qword_2EB568, &protocol conformance descriptor for Publishers.Merge<A, B>);
    v189 = sub_2C2408();
    (*(v198 + 8))(v180, v195);
    v216 = _swiftEmptyDictionarySingleton;
    v50 = *(v0 + 40);
    v49 = *(v0 + 48);
    sub_72084((v0 + 16), v50);
    sub_2B7838(v50, v49, v201);
    sub_2C4BE8();
    sub_6620C(&qword_3BC240, &unk_2E9B40);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2E15C0;
    v53 = *(v0 + 40);
    v52 = *(v0 + 48);
    sub_72084((v0 + 16), v53);
    sub_2B7838(v53, v52, v40);
    v54 = *(v213 + 104);
    v54(v40, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v206);
    v55 = sub_2BE858();
    *(v51 + 56) = v55;
    v56 = sub_1BFE88(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
    *(v51 + 64) = v56;
    sub_720C8((v51 + 32));
    sub_2BE838();
    v57 = *(sub_6620C(&qword_3C15C8, &qword_2EB5A0) + 48);
    v40[3] = v185;
    v199 = sub_1BFE88(&qword_3C15D0, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    v40[4] = v199;
    v196 = sub_1BFE88(&qword_3C15D8, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    v40[5] = v196;
    v58 = sub_720C8(v40);
    v59 = v201;
    v202 = *(v192 + 16);
    v202(v58, v59, v185);
    v60 = enum case for ScenePhase.active(_:);
    v61 = sub_2C2508();
    (*(*(v61 - 8) + 104))(v40 + v57, v60, v61);
    v54(v40, enum case for AppAnalyticsAction.Type.popData(_:), v206);
    *(v51 + 96) = v55;
    *(v51 + 104) = v56;
    v207 = v56;
    sub_720C8((v51 + 72));
    sub_2BE838();
    v62 = sub_2C4D28();
    *(v0 + 360) = v62;
    *(v0 + 368) = &protocol witness table for CompoundAction;
    sub_720C8((v0 + 336));
    sub_2C4D18();
    sub_1B6158(v0 + 336, 3);
    if (v209)
    {
      v63 = v40;
      v64 = v0 + 376;
      v65 = *(v0 + 792);
      v66 = *(v0 + 768);
      v67 = *(v0 + 744);
      v68 = *(v0 + 720);
      v63[3] = v66;
      v63[4] = v199;
      v63[5] = v196;
      v69 = sub_720C8(v67);
      v202(v69, v65, v66);
      v54(v67, enum case for AppAnalyticsAction.Type.pushData(_:), v68);
      *(v0 + 400) = v55;
      *(v0 + 408) = v207;
      sub_720C8((v0 + 376));
      sub_2BE838();
    }

    else
    {
      sub_2C4BE8();
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_2E15C0;
      sub_72084((v0 + 16), *(v0 + 40));
      v181 = sub_2BF3B8();
      v176 = v71;
      sub_72084((v0 + 16), *(v0 + 40));
      sub_2BF2C8();
      v73 = v72;
      sub_72084((v0 + 16), *(v0 + 40));
      if (v73)
      {
        v74 = sub_2BF2F8();
      }

      else
      {
        v74 = sub_2BF2C8();
      }

      v174 = *(v0 + 792);
      v170 = *(v0 + 768);
      v76 = *(v0 + 744);
      v77 = *(v0 + 736);
      v172 = *(v0 + 720);
      *v77 = v181;
      *(v77 + 8) = v176;
      *(v77 + 16) = v74;
      *(v77 + 24) = v75 & 1;
      (v54)(v77, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:));
      *(v70 + 56) = v55;
      *(v70 + 64) = v207;
      sub_720C8((v70 + 32));
      sub_2BE838();
      v40[3] = v170;
      v40[4] = v199;
      v40[5] = v196;
      v78 = sub_720C8(v76);
      v202(v78, v174, v170);
      v54(v76, enum case for AppAnalyticsAction.Type.pushData(_:), v172);
      *(v70 + 96) = v55;
      *(v70 + 104) = v207;
      sub_720C8((v70 + 72));
      sub_2BE838();
      v64 = v0 + 456;
      *(v0 + 480) = v62;
      *(v0 + 488) = &protocol witness table for CompoundAction;
      sub_720C8((v0 + 456));
      sub_2C4D18();
    }

    sub_1B6158(v64, 2);
    v79 = *(v0 + 968);
    v80 = *(v0 + 960);
    v81 = *(v0 + 952);
    v82 = *(v0 + 944);
    v83 = *(v0 + 936);
    v84 = *(v0 + 928);
    v85 = *(v0 + 904);
    v182 = *(v0 + 896);
    v184 = *(v0 + 912);
    v186 = *(v0 + 888);
    v86 = *(v0 + 880);
    v203 = *(v0 + 872);
    v214 = *(v0 + 784);
    v87 = *(v0 + 768);
    v193 = *(v0 + 712);
    v179 = (*(v0 + 984) + 16);
    v177 = *v179;
    (*v179)(*(v0 + 992), *(v0 + 1000), *(v0 + 976));
    v178 = *(v81 + 16);
    v178(v80, v79, v82);
    sub_6620C(&qword_3BC1A0, &unk_2EB5C0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_2E3F30;
    v90 = *(v0 + 40);
    v89 = *(v0 + 48);
    sub_72084((v0 + 16), v90);
    *(v88 + 56) = v87;
    *(v88 + 64) = v199;
    *(v88 + 72) = v196;
    v205 = v88;
    v91 = sub_720C8((v88 + 32));
    sub_2B7838(v90, v89, v91);
    sub_6620C(&qword_3BC288, &qword_2E2F60);
    v92 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_2E3F30;
    v200 = v93;
    sub_91560(v83, v93 + v92);
    v197 = *v83;
    v208 = v83[1];
    v94 = *(v85 + 16);
    v94(v86, v184, v182);
    (*(v85 + 56))(v86, 0, 1, v182);
    sub_6932C(v186, v203, &qword_3BEF80, &qword_2E8D50);
    v204 = v216;
    v95 = *(sub_6620C(&qword_3C1600, &qword_2F2290) + 48);
    v94(v193, v184, v182);
    sub_6932C(v186, v193 + v95, &qword_3BEF80, &qword_2E8D50);
    v96 = enum case for ToolbarPrincipalType.series(_:);
    v97 = sub_2C15F8();
    v98 = *(v97 - 8);
    (*(v98 + 104))(v193, v96, v97);
    (*(v98 + 56))(v193, 0, 1, v97);
    v217 = 1;
    v100 = *(v0 + 40);
    v99 = *(v0 + 48);
    sub_72084((v0 + 16), v100);

    sub_2B7838(v100, v99, v214);
    LOBYTE(v218) = v209;
    v165 = sub_20CB14((v0 + 16), &v217, v214, &v218, v190 + v187);
    v166 = *(*(v0 + 776) + 8);
    v166(*(v0 + 784), *(v0 + 768));
    sub_72084((v0 + 16), *(v0 + 40));
    v109 = swift_getAssociatedTypeWitness();
    v110 = sub_2C60B8();
    v111 = *(v110 - 8);
    v112 = swift_task_alloc();
    sub_2BF388();
    v113 = *(v109 - 8);
    v114 = (*(v113 + 48))(v112, 1, v109);
    v115 = v114;
    if (v114 == 1)
    {
      (*(v111 + 8))(v112, v110);

      *(v0 + 448) = 0;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
    }

    else
    {
      *(v0 + 440) = v109;
      *(v0 + 448) = swift_getAssociatedConformanceWitness();
      v116 = sub_720C8((v0 + 416));
      (*(v113 + 32))(v116, v112, v109);
    }

    v117 = *(v0 + 704);
    v118 = *(v0 + 696);
    v119 = *(v0 + 688);
    v120 = *(v0 + 656);
    v121 = *(v0 + 640);
    sub_69198(v0 + 416, &qword_3BDAC8, &qword_2E9FF0);
    (*(v118 + 104))(v117, enum case for NavigationBarTitleStyle.automatic(_:), v119);
    sub_2C1A58();
    v122 = (v120 + *(v121 + 96));
    *v122 = 0;
    v122[1] = 0;
    v123 = v120 + *(v121 + 100);
    *(v123 + 32) = 0;
    *v123 = 0u;
    *(v123 + 16) = 0u;
    v218 = sub_2BEF68();
    v219 = v124;
    v222._countAndFlagsBits = 45;
    v222._object = 0xE100000000000000;
    sub_2C5978(v222);
    v125._countAndFlagsBits = sub_2BEF58();
    if (v125._object)
    {
      object = v125._object;
    }

    else
    {
      v127 = *(v0 + 632);
      v128 = *(v0 + 624);
      v129 = *(v0 + 616);
      sub_2BE5B8();
      v130 = sub_2BE598();
      object = v131;
      (*(v128 + 8))(v127, v129);
      v125._countAndFlagsBits = v130;
    }

    v145 = v115 != 1;
    v161 = *(v0 + 1200);
    v164 = *(v0 + 1176);
    v162 = *(v0 + 1160);
    v163 = *(v0 + 1152);
    v159 = *(v0 + 1136);
    v160 = *(v0 + 1032);
    v158 = *(v0 + 1000);
    v132 = *(v0 + 992);
    v150 = *(v0 + 984);
    v133 = *(v0 + 976);
    v157 = *(v0 + 968);
    v134 = *(v0 + 960);
    v147 = *(v0 + 952);
    v167 = *(v0 + 944);
    v168 = *(v0 + 936);
    v154 = *(v0 + 904);
    v155 = *(v0 + 896);
    v169 = *(v0 + 912);
    v171 = *(v0 + 888);
    v210 = *(v0 + 880);
    v215 = *(v0 + 872);
    v188 = *(v0 + 864);
    v151 = *(v0 + 856);
    v152 = *(v0 + 848);
    v191 = *(v0 + 840);
    v148 = *(v0 + 832);
    v149 = *(v0 + 824);
    v194 = *(v0 + 792);
    v146 = *(v0 + 768);
    v173 = *(v0 + 712);
    v175 = *(v0 + 704);
    v135 = *(v0 + 696);
    v143 = *(v0 + 688);
    v183 = *(v0 + 680);
    v136 = *(v0 + 672);
    v144 = *(v0 + 664);
    v137 = *(v0 + 656);
    v156 = *(v0 + 648);
    v138 = *(v0 + 640);
    v153 = *(v0 + 592);
    v125._object = object;
    sub_2C5978(v125);

    v139 = v219;
    *v137 = v218;
    v137[1] = v139;
    v177(v137 + v138[17], v132, v133);
    *(v137 + v138[18]) = v205;
    *(v137 + v138[14]) = 1;
    *(v137 + v138[15]) = v200;
    v178(v137 + v138[19], v134, v167);
    v140 = (v137 + v138[16]);
    *v140 = v197;
    v140[1] = v208;
    sub_6932C(v210, v137 + v138[5], &qword_3BEF80, &qword_2E8D50);
    sub_6932C(v215, v137 + v138[6], &qword_3BEF80, &qword_2E8D50);
    (*(v135 + 16))(v137 + v138[7], v175, v143);
    (*(v136 + 16))(v137 + v138[8], v183, v144);
    *(v137 + v138[9]) = 0;
    *(v137 + v138[21]) = v204;
    sub_6932C(v173, v137 + v138[10], &qword_3C1598, &unk_2EB570);
    *(v137 + v138[11]) = _swiftEmptyArrayStorage;
    *(v137 + v138[12]) = v165;
    *(v137 + v138[13]) = 0;
    *(v137 + v138[22]) = v189;
    *(v137 + v138[23]) = 0;
    *(v137 + v138[20]) = v145;
    sub_17E898();
    (*(v136 + 8))(v183, v144);
    (*(v135 + 8))(v175, v143);
    sub_69198(v173, &qword_3C1598, &unk_2EB570);
    sub_69198(v215, &qword_3BEF80, &qword_2E8D50);
    sub_69198(v210, &qword_3BEF80, &qword_2E8D50);
    v141 = *(v147 + 8);
    v141(v134, v167);
    v142 = *(v150 + 8);
    v142(v132, v133);
    v166(v194, v146);
    (*(v148 + 8))(v191, v149);
    (*(v151 + 8))(v188, v152);
    sub_69198(v171, &qword_3BEF80, &qword_2E8D50);
    (*(v154 + 8))(v169, v155);
    sub_1BFCD0(v168, type metadata accessor for Shelf);
    v141(v157, v167);
    v142(v158, v133);
    sub_BF578(v137, v153);
    (*(v156 + 56))(v153, 0, 1, v138);
    sub_1BF90C(v159);

    sub_69198(v160, &qword_3BFEC0, &unk_2EB230);
    sub_69198(v159, &qword_3C13C8, &qword_2EB258);
    (*(v162 + 8))(v164, v163);
    sub_68CD0((v0 + 96));
    sub_68CD0((v0 + 56));
    sub_68CD0((v0 + 16));

    v107 = *(v0 + 8);
  }

  return v107();
}