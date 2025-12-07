void sub_29D5027B4(uint64_t a1)
{
  sub_29D504F04(319, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29D502880(uint64_t a1)
{
  v3 = type metadata accessor for RecordKindFeedItemData(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v14 - v10;
  v12 = qword_2A17A4610;
  swift_beginAccess();
  sub_29D505274(a1, v1 + v12);
  swift_endAccess();
  sub_29D505000(v1 + v12, v11, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
  }

  else
  {
    sub_29D4E42A0(v11, v7);
    sub_29D503114(v7, v14);
    sub_29D504F58(v7, type metadata accessor for RecordKindFeedItemData);
  }

  sub_29D5B2F8C();
  return sub_29D50506C(a1, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
}

uint64_t sub_29D502A7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_2A17A4620;
  swift_beginAccess();
  sub_29D5051F8(v1 + v4, &v9);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4A0598(&v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_29D502B70()
{
  v0 = sub_29D5B371C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v22 - v9;
  sub_29D5B2FAC();
  v11 = v24;
  if (v24)
  {
    v22[3] = v0;
    v22[4] = v1;
    v12 = sub_29D499EC0(v23, v24);
    v13 = *(v11 - 8);
    MEMORY[0x2A1C7C4A8](v12, v12);
    v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    sub_29D4A0598(v23, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v16 = sub_29D5B317C();
    v18 = v17;
    (*(v13 + 8))(v15, v11);
    if (v18 >> 60 != 15)
    {
      v19 = type metadata accessor for RecordKindFeedItemData(0);
      sub_29D5051B0(&qword_2A17A4638, type metadata accessor for RecordKindFeedItemData, &unk_29D5BB018);
      sub_29D5B0BBC();
      (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
      sub_29D502880(v10);
      return sub_29D4A96BC(v16, v18);
    }
  }

  else
  {
    sub_29D4A0598(v23, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  }

  v20 = type metadata accessor for RecordKindFeedItemData(0);
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  return sub_29D502880(v7);
}

uint64_t sub_29D503114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v60 = a2;
  v3 = sub_29D5B371C();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_29D5B1BCC();
  v55 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59, v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecordKindFeedItemData(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v52 - v15;
  v17 = sub_29D5B1D6C();
  v52 = *(v17 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v52 - v23;
  v25 = qword_2A17A4610;
  swift_beginAccess();
  v26 = v2 + v25;
  v27 = v8;
  sub_29D505000(v26, v16, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  if ((*(v9 + 48))(v16, 1, v8))
  {
    sub_29D50506C(v16, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    v28 = v56;
    sub_29D5B36DC();
    v29 = sub_29D5B370C();
    v30 = sub_29D5B427C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_29D48C000, v29, v30, "Error tapping on RecordType FeedItem without a CategoryKind", v31, 2u);
      MEMORY[0x29ED5FB80](v31, -1, -1);
    }

    result = (*(v57 + 8))(v28, v58);
    v33 = v60;
    *(v60 + 32) = 0;
    *v33 = 0u;
    v33[1] = 0u;
  }

  else
  {
    v34 = v53;
    sub_29D5050C8(v16, v12, type metadata accessor for RecordKindFeedItemData);
    sub_29D50506C(v16, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    v35 = v52;
    v36 = *(v52 + 16);
    v36(v21, v12, v17);
    sub_29D504F58(v12, type metadata accessor for RecordKindFeedItemData);
    (*(v35 + 32))(v24, v21, v17);
    v37 = v54;
    v36(v54, v24, v17);
    v38 = v55;
    (*(v55 + 104))(v37, *MEMORY[0x29EDC3F80], v59);
    v39 = sub_29D5B1AFC();
    if (!v39)
    {
      v39 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }

    v40 = v39;
    v41 = sub_29D5B1B9C();
    if (v41)
    {
      v42 = v41;
      v43 = [v40 imageWithTintColor:v41 renderingMode:1];

      v40 = v42;
    }

    else
    {
      v43 = v40;
    }

    (*(v38 + 8))(v37, v59);
    (*(v35 + 8))(v24, v17);
    v44 = (v34 + *(v27 + 24));
    v46 = *v44;
    v45 = v44[1];
    v47 = type metadata accessor for RecordKindFeedItemViewData(0);
    v48 = v60;
    *(v60 + 24) = v47;
    v48[4] = sub_29D5051B0(&qword_2A17A4650, type metadata accessor for RecordKindFeedItemViewData, &unk_29D5BA07C);
    v49 = sub_29D4A0410(v48);
    *v49 = v43;
    v49[1] = v46;
    v49[2] = v45;
    v50 = *MEMORY[0x29EDC2370];
    v51 = sub_29D5B2F9C();
    (*(*(v51 - 8) + 104))(v49, v50, v51);
  }

  return result;
}

void *sub_29D503738(uint64_t a1)
{
  v76 = a1;
  v2 = sub_29D5B371C();
  v85 = *(v2 - 8);
  v86 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v81 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v88 = &v72 - v7;
  sub_29D504F04(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v83 = &v72 - v10;
  v80 = sub_29D5B1D6C();
  v79 = *(v80 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v80, v11);
  v77 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v78 = &v72 - v15;
  sub_29D504F04(0, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
  v18 = MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v24 = &v72 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v87 = &v72 - v26;
  v27 = type metadata accessor for RecordKindFeedItemData(0);
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v82 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v33 = MEMORY[0x2A1C7C4A8](v31 - 8, v32);
  v35 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v72 - v37;
  v39 = qword_2A17A4610;
  swift_beginAccess();
  v84 = v1;
  sub_29D505000(v1 + v39, v38, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v40 = *(v28 + 48);
  if (v40(v38, 1, v27))
  {
    sub_29D50506C(v38, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    sub_29D5B36DC();
    v41 = sub_29D5B370C();
    v42 = sub_29D5B427C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_29D48C000, v41, v42, "Error tapping on RecordType FeedItem without an identifier", v43, 2u);
      MEMORY[0x29ED5FB80](v43, -1, -1);
    }

    return (*(v85 + 8))(v88, v86);
  }

  else
  {
    v74 = v24;
    v88 = v20;
    v45 = v82;
    sub_29D5050C8(v38, v82, type metadata accessor for RecordKindFeedItemData);
    sub_29D50506C(v38, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    v75 = *(v45 + *(v27 + 20));
    sub_29D504F58(v45, type metadata accessor for RecordKindFeedItemData);
    v46 = sub_29D5B1D9C();
    v47 = *(v46 - 8);
    v73 = *(v47 + 56);
    v72 = v47 + 56;
    v73(v87, 1, 1, v46);
    sub_29D505000(v84 + v39, v35, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    if (v40(v35, 1, v27))
    {
      sub_29D50506C(v35, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v48 = v87;
    }

    else
    {
      sub_29D5050C8(v35, v45, type metadata accessor for RecordKindFeedItemData);
      sub_29D50506C(v35, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v49 = v79;
      v50 = v77;
      v51 = v80;
      (*(v79 + 16))(v77, v45, v80);
      sub_29D504F58(v45, type metadata accessor for RecordKindFeedItemData);
      v52 = v78;
      (*(v49 + 32))(v78, v50, v51);
      sub_29D5B20AC();
      v53 = v74;
      sub_29D5B209C();
      (*(v49 + 8))(v52, v51);
      v48 = v87;
      sub_29D50506C(v87, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
      v73(v53, 0, 1, v46);
      sub_29D505130(v53, v48);
    }

    v54 = v83;
    sub_29D502A7C(v91);
    v83 = v91[4];
    sub_29D499EC0(v91, v91[3]);
    v55 = v88;
    sub_29D505000(v48, v88, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
    v56 = sub_29D5B0EDC();
    (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
    sub_29D5B1CBC();
    v57 = sub_29D5B1C8C();
    result = sub_29D5B2FAC();
    v58 = v90;
    if (v90)
    {
      v59 = sub_29D499EC0(v89, v90);
      v60 = *(v58 - 8);
      MEMORY[0x2A1C7C4A8](v59, v59);
      v62 = &v72 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v62);
      v63 = sub_29D5B314C();
      (*(v60 + 8))(v62, v58);
      v64 = sub_29D5B1C9C();

      sub_29D48F668(v89);
      v65 = sub_29D5B250C();

      sub_29D50506C(v54, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      sub_29D50506C(v55, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
      sub_29D5050C8(v76, v89, sub_29D4A63E4);
      v66 = v90;
      if (v90)
      {
        v67 = sub_29D499EC0(v89, v90);
        v68 = *(v66 - 8);
        MEMORY[0x2A1C7C4A8](v67, v67);
        v70 = &v72 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v68 + 16))(v70);
        v71 = sub_29D5B4C6C();
        (*(v68 + 8))(v70, v66);
        sub_29D48F668(v89);
      }

      else
      {
        v71 = 0;
      }

      [v84 showViewController:v65 sender:v71];

      swift_unknownObjectRelease();
      sub_29D50506C(v87, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
      return sub_29D48F668(v91);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29D5043F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_29D503738(v7);

  return sub_29D504F58(v7, sub_29D4A63E4);
}

id sub_29D504474(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = qword_2A17A4610;
  v8 = type metadata accessor for RecordKindFeedItemData(0);
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  v9 = qword_2A17A4618;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v4[v9] = sub_29D5B0BCC();
  v10 = &v4[qword_2A17A4620];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  if (a2)
  {
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for RecordKindFeedItemViewController(0);
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_29D504598(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D504474(v5, v7, a4);
}

id sub_29D5045F8(void *a1)
{
  v2 = v1;
  v4 = qword_2A17A4610;
  v5 = type metadata accessor for RecordKindFeedItemData(0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v6 = qword_2A17A4618;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v2[v6] = sub_29D5B0BCC();
  v7 = &v2[qword_2A17A4620];
  v8 = type metadata accessor for RecordKindFeedItemViewController(0);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v11.receiver = v2;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_29D504718()
{
  sub_29D50506C(v0 + qword_2A17A4610, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);

  return sub_29D4A0598(v0 + qword_2A17A4620, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
}

id sub_29D504790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordKindFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5047C8(uint64_t a1)
{
  sub_29D50506C(a1 + qword_2A17A4610, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);

  return sub_29D4A0598(a1 + qword_2A17A4620, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
}

void *sub_29D504878(void *a1)
{
  sub_29D504F04(0, &qword_2A1A17350, MEMORY[0x29EDC4098]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v54 = &v46 - v5;
  v53 = sub_29D5B2C2C();
  v6 = *(v53 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v53, v7);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v51 = &v46 - v11;
  v12 = type metadata accessor for RecordKindFeedItemData(0);
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v46 - v23;
  v57 = sub_29D5026CC();
  v56[0] = a1;
  v25 = a1;
  sub_29D503738(v56);
  sub_29D504F58(v56, sub_29D4A63E4);
  v26 = qword_2A17A4610;
  swift_beginAccess();
  sub_29D505000(v1 + v26, v24, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  v27 = *(v13 + 48);
  v55 = v12;
  v49 = v27;
  v28 = 0;
  if (v27(v24, 1, v12) != 1)
  {
    sub_29D4E42A0(v24, v16);
    v28 = [objc_allocWithZone(MEMORY[0x29EDBAAD8]) initWithRawIdentifier_];
    sub_29D504F58(v16, type metadata accessor for RecordKindFeedItemData);
  }

  v50 = v28;
  v47 = v16;
  result = sub_29D5B2FAC();
  v30 = v57;
  v48 = v1;
  if (v57)
  {
    v31 = sub_29D499EC0(v56, v57);
    v32 = *(v30 - 8);
    MEMORY[0x2A1C7C4A8](v31, v31);
    v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v34);
    v35 = v51;
    sub_29D5B315C();
    (*(v32 + 8))(v34, v30);
    v37 = v52;
    v36 = v53;
    (*(v6 + 104))(v52, *MEMORY[0x29EDC1D68], v53);
    sub_29D5B2C1C();
    v38 = *(v6 + 8);
    v38(v37, v36);
    v38(v35, v36);
    sub_29D48F668(v56);
    sub_29D5B1E5C();
    v39 = sub_29D5B1E4C();
    sub_29D505000(v48 + v26, v21, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
    if (v49(v21, 1, v55))
    {
      sub_29D50506C(v21, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v40 = sub_29D5B1D6C();
      v41 = v54;
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
    }

    else
    {
      v42 = v47;
      sub_29D5050C8(v21, v47, type metadata accessor for RecordKindFeedItemData);
      sub_29D50506C(v21, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
      v43 = sub_29D5B1D6C();
      v44 = *(v43 - 8);
      v41 = v54;
      (*(v44 + 16))(v54, v42, v43);
      sub_29D504F58(v42, type metadata accessor for RecordKindFeedItemData);
      (*(v44 + 56))(v41, 0, 1, v43);
    }

    v45 = v50;
    sub_29D5B1E1C();

    return sub_29D50506C(v41, &qword_2A1A17350, MEMORY[0x29EDC4098]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D504F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D504F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D504FB8()
{
  result = qword_2A17A4640;
  if (!qword_2A17A4640)
  {
    type metadata accessor for RecordKindFeedItemData(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A4640);
  }

  return result;
}

uint64_t sub_29D505000(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D504F04(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D50506C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D504F04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5050C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D505130(uint64_t a1, uint64_t a2)
{
  sub_29D504F04(0, &qword_2A17A4648, MEMORY[0x29EDC40C0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5051B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D5051F8(uint64_t a1, uint64_t a2)
{
  sub_29D4A02A4(0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D505274(uint64_t a1, uint64_t a2)
{
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5052F4()
{
  v1 = sub_29D5B200C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedConceptFeedItemData(0);
  v11 = (v0 + *(v10 + 36));
  v12 = v11[1];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = *v11 & 0xFFFFFFFFFFFFLL;
  if (!((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v13))
  {
    goto LABEL_11;
  }

  v15 = (v0 + *(v10 + 32));
  v16 = v15[1];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = *v15;
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
  }

  else
  {
LABEL_11:
    v19 = sub_29D5B0EFC();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_29D5B1FFC();
    v17 = sub_29D5B2A0C();
    (*(v2 + 8))(v5, v1);
    sub_29D50661C(v9, sub_29D4D3710);
  }

  return v17;
}

BOOL sub_29D505514(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = v2[1];
  result = 0;
  if (v3)
  {
    v4 = *v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D50554C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_29D5055C4()
{
  v1 = sub_29D5B0C4C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedConceptCodedValue(0);
  v11 = (v0 + *(v10 + 28));
  if (v11[1])
  {
    v12 = *v11;
  }

  else
  {
    sub_29D5065B4(v0 + *(v10 + 20), v9, sub_29D4A05F4);
    sub_29D506534(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v9, 1, v13) == 1)
    {
      sub_29D50661C(v9, sub_29D4A05F4);
      v12 = 0;
    }

    else
    {
      v16 = sub_29D5B3CEC();
      (*(v15 + 8))(v9, v14);
      v17 = [v16 currentValue];

      v18 = [v17 displayString];
      v19 = sub_29D5B3E5C();
      v21 = v20;

      v23[0] = v19;
      v23[1] = v21;
      sub_29D5B0C2C();
      sub_29D4B343C();
      v12 = sub_29D5B477C();
      (*(v2 + 8))(v5, v1);
    }
  }

  return v12;
}

uint64_t sub_29D505864()
{
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedConceptCodedValue(0);
  sub_29D5065B4(v0 + *(v5 + 20), v4, sub_29D4A05F4);
  sub_29D506534(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v4, 1, v6) == 1)
  {
    sub_29D50661C(v4, sub_29D4A05F4);
  }

  else
  {
    v9 = sub_29D5B3CEC();
    (*(v8 + 8))(v4, v7);
    v10 = [v9 unitString];

    if (v10)
    {
      v11 = sub_29D5B3E5C();

      return v11;
    }
  }

  return 0;
}

uint64_t sub_29D5059EC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_29D505A24(uint64_t a1)
{
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5065B4(v1 + *(a1 + 20), v6, sub_29D4A05F4);
  sub_29D506534(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
    sub_29D50661C(v6, sub_29D4A05F4);
    return 0;
  }

  else
  {
    v11 = sub_29D5B3CEC();
    (*(v9 + 8))(v6, v8);
    return v11;
  }
}

uint64_t sub_29D505B6C()
{
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  if (!*(v10 + 16))
  {
    return 0;
  }

  sub_29D5065B4(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedConceptCodedValue);
  sub_29D5065B4(&v9[*(v5 + 20)], v4, sub_29D4A05F4);
  sub_29D506534(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v4, 1, v11) == 1)
  {
    sub_29D50661C(v4, sub_29D4A05F4);
    v14 = 0;
  }

  else
  {
    v14 = sub_29D5B3CEC();
    (*(v13 + 8))(v4, v12);
  }

  sub_29D50661C(v9, type metadata accessor for SharedConceptCodedValue);
  return v14;
}

uint64_t sub_29D505D84()
{
  v1 = sub_29D5B0C4C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 40);
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  sub_29D5065B4(v16, v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedConceptCodedValue);
  sub_29D5065B4(&v14[*(v10 + 20)], v9, sub_29D4A05F4);
  sub_29D506534(0);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v9, 1, v17) == 1)
  {
    sub_29D50661C(v9, sub_29D4A05F4);
    sub_29D50661C(v14, type metadata accessor for SharedConceptCodedValue);
    v20 = *(v16 + *(v10 + 28));
  }

  else
  {
    v21 = sub_29D5B3CEC();
    (*(v19 + 8))(v9, v18);
    sub_29D50661C(v14, type metadata accessor for SharedConceptCodedValue);
    v22 = [v21 currentValue];
    v23 = [v22 displayString];

    v24 = sub_29D5B3E5C();
    v26 = v25;

    v28[0] = v24;
    v28[1] = v26;
    sub_29D5B0C2C();
    sub_29D4B343C();
    v20 = sub_29D5B477C();

    (*(v2 + 8))(v5, v1);
  }

  return v20;
}

uint64_t sub_29D506100()
{
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  if (*(v10 + 16))
  {
    sub_29D5065B4(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedConceptCodedValue);
    sub_29D5065B4(&v9[*(v5 + 20)], v4, sub_29D4A05F4);
    sub_29D506534(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v4, 1, v11) == 1)
    {
      sub_29D50661C(v4, sub_29D4A05F4);
      sub_29D50661C(v9, type metadata accessor for SharedConceptCodedValue);
    }

    else
    {
      v14 = sub_29D5B3CEC();
      (*(v13 + 8))(v4, v12);
      sub_29D50661C(v9, type metadata accessor for SharedConceptCodedValue);
      v15 = [v14 unitString];

      if (v15)
      {
        v16 = sub_29D5B3E5C();

        return v16;
      }
    }
  }

  return 0;
}

uint64_t sub_29D506370@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC4068];
  v3 = sub_29D5B1D6C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D5063E4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_29D506414@<X0>(uint64_t a2@<X8>)
{
  sub_29D5B0E1C();
  v3 = sub_29D5B0E6C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_29D506494()
{
  v1 = *(v0 + 72);

  return v1;
}

unint64_t sub_29D5064E0()
{
  result = qword_2A17A4658;
  if (!qword_2A17A4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4658);
  }

  return result;
}

unint64_t sub_29D506568()
{
  result = qword_2A1A162F0;
  if (!qword_2A1A162F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A162F0);
  }

  return result;
}

uint64_t sub_29D5065B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D50661C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SharedConceptDetailViewController(uint64_t a1)
{
  result = qword_2A17A4660;
  if (!qword_2A17A4660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5066C8(uint64_t a1)
{
  result = type metadata accessor for SharedConceptFeedItemData(319);
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

uint64_t sub_29D506760(void *a1, uint64_t a2)
{
  v54 = a1;
  sub_29D5078C8(0, &qword_2A17A4670, &qword_2A17A4678, &qword_2A17A3F30, MEMORY[0x29EDC41A8]);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v55 = &v46 - v7;
  v51 = sub_29D5B29FC();
  v48 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D507820(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5078C8(0, &qword_2A17A4688, &qword_2A17A4690, &unk_2A17A3F48, MEMORY[0x29EDC4258]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v46 - v20;
  sub_29D507938(a2, v2 + qword_2A17ABF28);
  v22 = type metadata accessor for SharedConceptFeedItemData(0);
  v23 = *(v22 + 48);
  v52 = a2;
  v53 = v22;
  v58[0] = *(a2 + v23);
  v24 = v58[0];
  sub_29D507878();
  v49 = v25;

  sub_29D5B3A2C();
  v47 = MEMORY[0x29EDC9A40];
  sub_29D5077B4(0, &qword_2A17A4690, &unk_2A17A3F48, MEMORY[0x29EDC4258], MEMORY[0x29EDC9A40]);
  sub_29D5B39FC();
  v26 = v12 + 8;
  v27 = *(v12 + 8);
  v46 = v26;
  v27(v15, v11);
  sub_29D50799C();
  sub_29D5B3B1C();
  (*(v18 + 8))(v21, v17);
  v59 = v22;
  v60 = sub_29D507A14(&qword_2A17A46A0, type metadata accessor for SharedConceptFeedItemData, &unk_29D5B85CC);
  v28 = sub_29D4A0410(v58);
  sub_29D507938(a2, v28);
  (*(v48 + 104))(v50, *MEMORY[0x29EDC4270], v51);

  v29 = v54;
  v30 = [v54 healthStore];
  sub_29D5B1CFC();
  swift_allocObject();
  v31 = sub_29D5B1CEC();
  v58[0] = v24;

  sub_29D5B3A2C();
  sub_29D5077B4(0, &qword_2A17A4678, &qword_2A17A3F30, MEMORY[0x29EDC41A8], v47);
  v32 = v55;
  sub_29D5B39FC();
  v27(v15, v11);
  sub_29D507A5C();
  v33 = v56;
  sub_29D5B3B1C();
  (*(v57 + 8))(v32, v33);
  sub_29D5B1EBC();
  swift_allocObject();

  v34 = v29;
  v35 = sub_29D5B1EAC();
  sub_29D507AD4(0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29D5B6320;
  v37 = MEMORY[0x29EDC4110];
  v38 = sub_29D507A14(&qword_2A17A46C0, MEMORY[0x29EDC4038], MEMORY[0x29EDC4110]);
  *(v36 + 32) = v31;
  *(v36 + 40) = v38;
  v59 = v53;
  v60 = sub_29D507A14(&qword_2A17A46C8, type metadata accessor for SharedConceptFeedItemData, &unk_29D5B8DF0);
  v39 = sub_29D4A0410(v58);
  v40 = v52;
  sub_29D507938(v52, v39);
  sub_29D5B20CC();
  swift_allocObject();

  v41 = sub_29D5B20BC();
  v42 = sub_29D507A14(&qword_2A17A46D0, MEMORY[0x29EDC4140], v37);
  *(v36 + 48) = v41;
  *(v36 + 56) = v42;
  v43 = sub_29D507A14(&qword_2A17A46D8, MEMORY[0x29EDC40D0], v37);
  *(v36 + 64) = v35;
  *(v36 + 72) = v43;
  sub_29D5B304C();
  swift_allocObject();

  sub_29D5B305C();
  v44 = sub_29D5B347C();

  sub_29D507B40(v40);
  return v44;
}

uint64_t sub_29D506E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D4C4F50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29D506E68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D4C4F90(*a1);
  *a2 = result;
  return result;
}

void sub_29D506EF0(char *a1)
{
  type metadata accessor for SharedConceptFeedItemData(0);
  v2 = a1;
  v3 = sub_29D5B3E1C();
  [v2 setTitle_];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedConceptDetailViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
}

void sub_29D506F90(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D5B374C();
  MEMORY[0x2A1C7C4A8](v5, v6);
  v7 = sub_29D5B2C2C();
  MEMORY[0x2A1C7C4A8](v7, v8);
  (*(v10 + 104))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1D60]);
  v11 = a1;
  sub_29D5B436C();
  sub_29D5B373C();
  sub_29D5B437C();
  v12 = type metadata accessor for SharedConceptDetailViewController(0);
  v13.receiver = v11;
  v13.super_class = v12;
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a3);
}

id sub_29D50710C()
{
  result = [v0 collectionView];
  if (result)
  {
    sub_29D5B346C();
    sub_29D5B344C();
    swift_allocObject();
    return sub_29D5B343C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D507190()
{
  sub_29D5B348C();
  v1 = sub_29D5B349C();
  v1();
  sub_29D5B346C();
  v2 = sub_29D5B303C();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDC2040];
    v7 = MEMORY[0x29EDC27C8];
    v9 = v2;
    while (v5 < *(v2 + 16))
    {
      v12 = *(v2 + 16 * v5 + 32);
      sub_29D507BE8(0, &qword_2A17A46B8, v6, 0);
      sub_29D507BE8(0, &qword_2A17A4700, v7, 1);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_29D497868(v10, v13);
        sub_29D499EC0(v13, v13[3]);
        result = [v0 collectionView];
        if (!result)
        {
          goto LABEL_14;
        }

        v8 = result;
        sub_29D5B311C();

        swift_unknownObjectRelease();
        result = sub_29D48F668(v13);
        v2 = v9;
        v7 = MEMORY[0x29EDC27C8];
      }

      else
      {
        swift_unknownObjectRelease();
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        result = sub_29D507C44(v10, &qword_2A17A4708, &qword_2A17A4700, v7);
      }

      if (v4 == ++v5)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_29D5073D4(void *a1, uint64_t a2)
{
  v3 = sub_29D5B0FBC();
  [a1 deselectItemAtIndexPath:v3 animated:1];

  v4 = sub_29D5B0FBC();
  v5 = [a1 cellForItemAtIndexPath_];

  if (v5)
  {
    sub_29D5B346C();
    sub_29D5B304C();
    sub_29D5B2D9C();

    sub_29D48F564(v12, v9);
    sub_29D507BE8(0, &qword_2A17A46E0, MEMORY[0x29EDC18F8], 1);
    sub_29D507BE8(0, &qword_2A17A46E8, MEMORY[0x29EDC21C0], 1);
    if (swift_dynamicCast())
    {
      v6 = v7;
LABEL_6:
      sub_29D497868(v6, v11);
      sub_29D499EC0(v11, v11[3]);
      sub_29D5B2EAC();

      sub_29D48F668(v12);
      sub_29D48F668(v11);
      return;
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_29D507C44(v7, &qword_2A17A46F0, &qword_2A17A46E8, MEMORY[0x29EDC21C0]);
    *&v7[0] = v5;
    sub_29D507B9C();
    v5 = v5;
    if (swift_dynamicCast())
    {
      v6 = v9;
      goto LABEL_6;
    }

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_29D48F668(v12);
    sub_29D507C44(v9, &qword_2A17A46F0, &qword_2A17A46E8, MEMORY[0x29EDC21C0]);
  }
}

uint64_t sub_29D5075F8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_29D5B0FDC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0FCC();
  v11 = a3;
  v12 = a1;
  sub_29D5073D4(v11, v10);

  return (*(v7 + 8))(v10, v6);
}

id sub_29D507764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConceptDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D5077B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D507BE8(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D507820(uint64_t a1)
{
  if (!qword_2A17A4680)
  {
    sub_29D507878();
    v1 = sub_29D5B3A1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4680);
    }
  }
}

void sub_29D507878()
{
  if (!qword_2A1A16478)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16478);
    }
  }
}

void sub_29D5078C8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D5077B4(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D5B3A1C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D507938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D50799C()
{
  result = qword_2A17A4698;
  if (!qword_2A17A4698)
  {
    sub_29D5078C8(255, &qword_2A17A4688, &qword_2A17A4690, &unk_2A17A3F48, MEMORY[0x29EDC4258]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4698);
  }

  return result;
}

uint64_t sub_29D507A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D507A5C()
{
  result = qword_2A17A46A8;
  if (!qword_2A17A46A8)
  {
    sub_29D5078C8(255, &qword_2A17A4670, &qword_2A17A4678, &qword_2A17A3F30, MEMORY[0x29EDC41A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A46A8);
  }

  return result;
}

void sub_29D507AD4(uint64_t a1)
{
  if (!qword_2A17A46B0)
  {
    sub_29D507BE8(255, &qword_2A17A46B8, MEMORY[0x29EDC2040], 0);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A46B0);
    }
  }
}

uint64_t sub_29D507B40(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D507B9C()
{
  result = qword_2A17A46F8;
  if (!qword_2A17A46F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A46F8);
  }

  return result;
}

uint64_t sub_29D507BE8(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D507C44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29D5077B4(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D507CB4()
{
  v0 = sub_29D5B1AAC();
  sub_29D50CE1C(v0, qword_2A1A1A760);
  v1 = sub_29D50BA5C(v0, qword_2A1A1A760);
  v2 = *MEMORY[0x29EDC3F20];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void *sub_29D507D3C(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v8 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50CB4C(a1, v1 + OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v18 = sub_29D5B143C();
  sub_29D50AEC4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3730], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_domain, v11, v19);
  v16 = sub_29D508034(a1);
  sub_29D49A104(a1);
  v2[2] = v16;
  return v2;
}

uint64_t sub_29D508034(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v165 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v166 = v4;
  v168 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AEC4(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v136 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v135 = &v118 - v10;
  v133 = sub_29D5B106C();
  v132 = *(v133 - 8);
  MEMORY[0x2A1C7C4A8](v133, v11);
  v131 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_29D5B1D6C();
  v129 = *(v130 - 8);
  MEMORY[0x2A1C7C4A8](v130, v13);
  v128 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AF28(0);
  v138 = v15;
  v137 = *(v15 - 1);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v134 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B0B8(0);
  v145 = v18;
  v144 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v141 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B2C0(0);
  v148 = v21;
  v146 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v142 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B62C(0);
  v149 = v24;
  v147 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v143 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B6C0(0);
  v153 = v27;
  v152 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v150 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B754(0);
  v155 = v30;
  v154 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v151 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B830(0);
  v158 = *(v33 - 8);
  v159 = v33;
  MEMORY[0x2A1C7C4A8](v33, v34);
  v156 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B8DC(0);
  v160 = *(v36 - 8);
  v161 = v36;
  MEMORY[0x2A1C7C4A8](v36, v37);
  v157 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B9C8(0);
  v163 = *(v39 - 8);
  v164 = v39;
  MEMORY[0x2A1C7C4A8](v39, v40);
  v162 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_29D5B0F8C();
  v126 = *(v127 - 8);
  MEMORY[0x2A1C7C4A8](v127, v42);
  v124 = &v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_29D5B0E6C();
  v123 = *(v125 - 8);
  MEMORY[0x2A1C7C4A8](v125, v44);
  v122 = &v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_29D5B0EDC();
  v120 = *(v121 - 8);
  MEMORY[0x2A1C7C4A8](v121, v46);
  v119 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D5B1AAC();
  v49 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48, v50);
  v52 = &v118 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v53 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v174, v175);
  v54 = sub_29D5B136C();
  v55 = [v54 profileIdentifier];

  v140 = sub_29D5B1C3C();
  sub_29D48F668(&v174);
  sub_29D5B0C0C();
  swift_allocObject();
  v139 = sub_29D5B0BFC();
  v56 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v174, v175);
  v57 = sub_29D5B136C();
  v58 = [v57 profileIdentifier];

  v171 = sub_29D5B1C6C();
  sub_29D48F668(&v174);
  sub_29D5B140C();
  sub_29D499EC0(&v174, v175);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v170 = sub_29D5B269C();
  sub_29D48F668(&v174);
  sub_29D5B140C();
  if (qword_2A1A18E38 != -1)
  {
    swift_once();
  }

  v59 = sub_29D50BA5C(v48, qword_2A1A1A760);
  (*(v49 + 16))(v52, v59, v48);
  v167 = a1;
  v60 = sub_29D5B143C();
  v61 = sub_29D5B10AC();
  v62 = sub_29D5B1A8C();
  v64 = v63;
  if (v61)
  {
    v172 = 0x656C69666F72505BLL;
    v173 = 0xE90000000000003ALL;
    v61 = v61;
    v65 = [v61 identifier];
    v66 = v119;
    sub_29D5B0EBC();

    v67 = sub_29D5B0E8C();
    v69 = v68;
    (*(v120 + 8))(v66, v121);
    MEMORY[0x29ED5E510](v67, v69);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v70 = v172;
    v71 = v173;
  }

  else
  {
    v71 = 0x800000029D5BBCB0;
    v70 = 0xD000000000000013;
  }

  v172 = v70;
  v173 = v71;
  MEMORY[0x29ED5E510](v62, v64);

  v72 = v172;
  v73 = v173;
  (*(v49 + 8))(v52, v48);
  type metadata accessor for FeedItemContextChangeGenerator();
  v74 = swift_allocObject();
  v121 = v74;
  sub_29D497868(&v174, v74 + 16);
  *(v74 + 56) = v72;
  *(v74 + 64) = v73;
  sub_29D48F51C(0, &qword_2A1A16348, 0x29EDB8E78);
  v75 = sub_29D5B42CC();
  v76 = v122;
  sub_29D5B0E5C();
  v77 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  v78 = v124;
  sub_29D5B0F4C();

  v79 = sub_29D50C08C(v75, v76, v78);
  (*(v126 + 8))(v78, v127);
  (*(v123 + 8))(v76, v125);
  v80 = v129;
  v81 = v128;
  v82 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x29EDC4068], v130);
  v83 = v171;
  v84 = sub_29D5B25FC();
  (*(v80 + 8))(v81, v82);
  v85 = v132;
  v86 = v131;
  v87 = v133;
  (*(v132 + 104))(v131, *MEMORY[0x29EDC37B8], v133);
  sub_29D5B105C();
  (*(v85 + 8))(v86, v87);
  v88 = sub_29D5B369C();
  v89 = v135;
  (*(*(v88 - 8) + 56))(v135, 1, 1, v88);
  *&v174 = v84;
  v90 = MEMORY[0x29EDCA498];
  sub_29D50CBB4(v89, v136, &qword_2A1A172F0, MEMORY[0x29EDCA498]);
  sub_29D50AFBC(0);
  v133 = MEMORY[0x29EDB8A00];
  sub_29D50CDD4(&qword_2A1A166F0, sub_29D50AFBC, MEMORY[0x29EDB8A00]);
  v91 = v134;
  sub_29D5B381C();
  sub_29D50CC34(v89, &qword_2A1A172F0, v90);
  sub_29D5B396C();
  sub_29D48F51C(0, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D50B1A4(0);
  sub_29D50CDD4(&qword_2A1A16FF8, sub_29D50AF28, MEMORY[0x29EDC3CA8]);
  sub_29D50CDD4(&qword_2A1A168C8, sub_29D50B1A4, MEMORY[0x29EDB89C0]);
  v92 = v141;
  v93 = v138;
  sub_29D5B3BFC();
  (*(v137 + 8))(v91, v93);
  v94 = swift_allocObject();
  v94[2] = v83;
  v94[3] = v79;
  v94[4] = v170;
  sub_29D50C880(0);
  sub_29D50B3AC(0);
  v95 = MEMORY[0x29EDB89A8];
  sub_29D50CDD4(&qword_2A1A169B0, sub_29D50B0B8, MEMORY[0x29EDB89A8]);
  sub_29D50CDD4(&qword_2A1A16E08, sub_29D50B3AC, MEMORY[0x29EDB8910]);

  v138 = v79;

  v96 = v142;
  v97 = v145;
  sub_29D5B3BFC();

  (*(v144 + 8))(v92, v97);
  sub_29D50CDD4(&qword_2A1A169E0, sub_29D50B2C0, v95);
  v98 = v143;
  v99 = v148;
  sub_29D5B3BAC();
  (*(v146 + 8))(v96, v99);
  sub_29D50CDD4(&qword_2A1A16C78, sub_29D50B62C, MEMORY[0x29EDB8968]);
  v100 = v150;
  v101 = v149;
  sub_29D5B3BDC();
  (*(v147 + 8))(v98, v101);
  v102 = v168;
  sub_29D50CB4C(v167, v168, type metadata accessor for HealthRecordsGeneratorContext);
  v103 = (*(v165 + 80) + 40) & ~*(v165 + 80);
  v104 = (v166 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  v106 = v169;
  v105[2] = v140;
  v105[3] = v106;
  v105[4] = v139;
  sub_29D499F90(v102, v105 + v103);
  *(v105 + v104) = v106;
  sub_29D50AEC4(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D50CDD4(&qword_2A1A16B20, sub_29D50B6C0, MEMORY[0x29EDB89A0]);

  v107 = v151;
  v108 = v153;
  sub_29D5B3BCC();

  (*(v152 + 8))(v100, v108);
  sub_29D4E3C34();

  v109 = v156;
  v110 = v155;
  sub_29D5B38CC();

  (*(v154 + 8))(v107, v110);
  *(swift_allocObject() + 16) = v106;
  sub_29D4B2D8C(0);
  sub_29D50CDD4(&qword_2A1A16B50, sub_29D50B830, MEMORY[0x29EDB8990]);
  sub_29D50CDD4(&qword_2A1A16780, sub_29D4B2D8C, v133);
  v111 = v157;
  v112 = v159;
  sub_29D5B3B8C();

  (*(v158 + 8))(v109, v112);
  *&v174 = MEMORY[0x29EDCA190];
  sub_29D50CDD4(&qword_2A1A16D38, sub_29D50B8DC, MEMORY[0x29EDB8928]);
  v113 = v161;
  v114 = v162;
  sub_29D5B3B4C();
  (*(v160 + 8))(v111, v113);
  sub_29D50CDD4(&qword_2A1A17078, sub_29D50B9C8, MEMORY[0x29EDB88C8]);
  v115 = v164;
  v116 = sub_29D5B3B1C();

  (*(v163 + 8))(v114, v115);
  return v116;
}

uint64_t sub_29D5096A8(void *a1)
{
  sub_29D50CCA4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *a1;
  sub_29D50B048(0, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
  sub_29D50B24C();
  sub_29D5B3FEC();
  sub_29D4B3AF4();
  sub_29D5B391C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D5097E0(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29D5B23CC();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v14[1] = sub_29D5B25EC();
  v10 = [v9 UUID];
  sub_29D5B0EBC();

  (*(v5 + 104))(v8, *MEMORY[0x29EDC41C8], v4);
  v11 = sub_29D5B268C();
  (*(v5 + 8))(v8, v4);
  v14[0] = v11;
  sub_29D50B550(0, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
  v12 = MEMORY[0x29EDB9BC8];
  sub_29D50B550(0, &qword_2A1A16878, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D50B5DC(&qword_2A1A16690, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
  sub_29D50B5DC(&qword_2A1A16880, &qword_2A1A16878, &qword_2A1A1A390, v12);
  return sub_29D5B386C();
}

BOOL sub_29D509A10(void *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = a1[1];
  sub_29D48F51C(0, &qword_2A1A16348, 0x29EDB8E78);
  return v1 >= sub_29D5B42DC();
}

uint64_t sub_29D509A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v138 = a5;
  v125 = a4;
  v129 = a3;
  v135 = a2;
  v6 = sub_29D5B0E6C();
  v133 = *(v6 - 8);
  v134 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v114 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D50AEC4(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v113 = &v107 - v12;
  sub_29D50AEC4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v9);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v112 = &v107 - v15;
  v110 = sub_29D5B104C();
  v108 = *(v110 - 8);
  MEMORY[0x2A1C7C4A8](v110, v16);
  v109 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B1D6C();
  v126 = *(v18 - 8);
  v127 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v124 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50B048(0, &qword_2A1A164D8, MEMORY[0x29EDBA1D0]);
  v122 = v21;
  v121 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v120 = &v107 - v23;
  sub_29D50AEC4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v9);
  MEMORY[0x2A1C7C4A8](v24 - 8, v25);
  v123 = &v107 - v26;
  v27 = sub_29D5B134C();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x2A1C7C4A8](v27, v28);
  v111 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_29D5B0EDC();
  v118 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119, v30);
  v117 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_29D5B1FAC();
  v128 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131, v32);
  v130 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_29D5B371C();
  v115 = *(v116 - 8);
  MEMORY[0x2A1C7C4A8](v116, v34);
  v132 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AEC4(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v9);
  v38 = MEMORY[0x2A1C7C4A8](v36, v37);
  v40 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x2A1C7C4A8](v38, v41);
  v44 = &v107 - v43;
  MEMORY[0x2A1C7C4A8](v42, v45);
  v47 = &v107 - v46;
  sub_29D50C880(0);
  v49 = v48;
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v53 = (&v107 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v51, v54);
  v56 = (&v107 - v55);
  sub_29D50CB4C(a1, &v107 - v55, sub_29D50C880);
  v57 = *v56;
  v58 = *(v49 + 48);
  if (!*v56)
  {
    v60 = v56 + v58;
    goto LABEL_8;
  }

  sub_29D50CC34(v56 + v58, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D50CB4C(a1, v53, sub_29D50C880);

  sub_29D4D1F64(v53 + *(v49 + 48), v47);
  v59 = v57;
  v60 = v47;
  if ((sub_29D5B362C() & 1) != 0 || (*(v133 + 48))(v47, 1, v134) != 1)
  {

LABEL_8:
    sub_29D50CC34(v60, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    return (*(v136 + 56))(v138, 1, 1, v137);
  }

  v61 = v132;
  sub_29D5B36CC();
  sub_29D50CBB4(v47, v44, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v62 = v59;
  v63 = sub_29D5B370C();
  v64 = sub_29D5B429C();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v139;
  v107 = v60;
  if (v65)
  {
    v67 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v141 = v135;
    *v67 = 136446466;
    v68 = HKSensitiveLogItem();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v69 = sub_29D5B3E7C();
    v71 = sub_29D501890(v69, v70, &v141);
    LODWORD(v134) = v64;
    v72 = v66;
    v73 = v62;
    v74 = v71;

    *(v67 + 4) = v74;
    *(v67 + 12) = 2082;
    v75 = MEMORY[0x29EDB9BC8];
    sub_29D50CBB4(v44, v40, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v76 = sub_29D5B3E7C();
    v78 = v77;
    v79 = v75;
    v62 = v73;
    v66 = v72;
    sub_29D50CC34(v44, &qword_2A1A1A390, v79);
    v80 = sub_29D501890(v76, v78, &v141);

    *(v67 + 14) = v80;
    _os_log_impl(&dword_29D48C000, v63, v134, "Generating tip for concept: %{public}s, tile dismissed date: %{public}s", v67, 0x16u);
    v81 = v135;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v81, -1, -1);
    MEMORY[0x29ED5FB80](v67, -1, -1);

    (*(v115 + 8))(v132, v116);
  }

  else
  {

    sub_29D50CC34(v44, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    (*(v115 + 8))(v61, v116);
  }

  v83 = v62;
  sub_29D5B453C();
  sub_29D48F51C(0, &qword_2A1A16348, 0x29EDB8E78);
  sub_29D5B42CC();
  v84 = [v83 UUID];

  sub_29D5B0EBC();
  v85 = v130;
  sub_29D5B1F9C();
  v86 = sub_29D5B143C();
  v87 = v120;
  sub_29D5B1F8C();
  v88 = v122;
  v89 = sub_29D5B3CEC();
  (*(v121 + 8))(v87, v88);
  v90 = [v89 UUID];

  v91 = v123;
  sub_29D5B0EBC();

  (*(v118 + 56))(v91, 0, 1, v119);
  if (qword_2A1A18E38 != -1)
  {
    swift_once();
  }

  v92 = sub_29D5B1AAC();
  sub_29D50BA5C(v92, qword_2A1A1A760);
  v94 = v126;
  v93 = v127;
  v95 = v124;
  (*(v126 + 104))(v124, *MEMORY[0x29EDC4068], v127);
  v135 = sub_29D5B294C();
  (*(v94 + 8))(v95, v93);
  sub_29D50CC34(v91, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D50CDD4(&qword_2A17A4720, MEMORY[0x29EDC4120], MEMORY[0x29EDC4128]);
  v96 = v131;
  sub_29D5B0BEC();
  if (v66)
  {

    (*(v128 + 8))(v85, v96);
  }

  else
  {
    type metadata accessor for LabsTipViewController(0);
    (*(v108 + 104))(v109, *MEMORY[0x29EDC3730], v110);
    v139 = v86;
    v97 = v111;
    sub_29D5B110C();
    sub_29D5B0E5C();
    v98 = v113;
    sub_29D5B0C6C();
    v99 = sub_29D5B0C7C();
    (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
    sub_29D5B16FC();
    sub_29D5B12BC();
    sub_29D5B124C();
    sub_29D5B132C();
    sub_29D5B123C();
    sub_29D5B122C();
    v141 = MEMORY[0x29EDCA1A0];
    v100 = sub_29D5B158C();
    sub_29D59AD10(&v140, v100, v101);

    v102 = v141;
    v103 = sub_29D5B130C();
    sub_29D4E80E8(v102);
    v103(&v140, 0);

    (*(v128 + 8))(v130, v131);
    v105 = v136;
    v104 = v137;
    v106 = v138;
    (*(v136 + 32))(v138, v97, v137);
    (*(v105 + 56))(v106, 0, 1, v104);
  }

  return sub_29D50CC34(v107, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
}

uint64_t sub_29D50A998@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D50AEC4(0, &qword_2A1A165D0, sub_29D4E3C34, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v34 - v8;
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v5;
    v20 = v19;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v20 = 136446466;
    v39 = sub_29D50CABC(0);
    sub_29D50CADC(0, &qword_2A17A4718, sub_29D50CABC);
    v21 = sub_29D5B3E7C();
    v35 = v10;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v39 = v15;
    v25 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v20 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v20;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v11 + 8))(v14, v35);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D4E3C34();
  sub_29D5B3A2C();
  sub_29D50CA34();
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D50AD40()
{

  v1 = OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabTipsGenerator(uint64_t a1)
{
  result = qword_2A1A18E18;
  if (!qword_2A1A18E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D50AE48@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords16LabTipsGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D50AEC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D50AF28(uint64_t a1)
{
  if (!qword_2A1A16FF0)
  {
    sub_29D50AFBC(255);
    sub_29D50CDD4(&qword_2A1A166F0, sub_29D50AFBC, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B380C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16FF0);
    }
  }
}

void sub_29D50AFBC(uint64_t a1)
{
  if (!qword_2A1A166E8)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A166E8);
    }
  }
}

void sub_29D50B048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D48F51C(255, &qword_2A1A162D0, 0x29EDBAC68);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D50B0B8(uint64_t a1)
{
  if (!qword_2A1A169A8)
  {
    sub_29D50B1A4(255);
    sub_29D50AF28(255);
    sub_29D50CDD4(&qword_2A1A168C8, sub_29D50B1A4, MEMORY[0x29EDB89C0]);
    sub_29D50CDD4(&qword_2A1A16FF8, sub_29D50AF28, MEMORY[0x29EDC3CA8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A169A8);
    }
  }
}

void sub_29D50B1A4(uint64_t a1)
{
  if (!qword_2A1A168C0)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    sub_29D50B24C();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168C0);
    }
  }
}

unint64_t sub_29D50B24C()
{
  result = qword_2A1A163D0;
  if (!qword_2A1A163D0)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A163D0);
  }

  return result;
}

void sub_29D50B2C0(uint64_t a1)
{
  if (!qword_2A1A169D8)
  {
    sub_29D50B3AC(255);
    sub_29D50B0B8(255);
    sub_29D50CDD4(&qword_2A1A16E08, sub_29D50B3AC, MEMORY[0x29EDB8910]);
    sub_29D50CDD4(&qword_2A1A169B0, sub_29D50B0B8, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A169D8);
    }
  }
}

void sub_29D50B3AC(uint64_t a1)
{
  if (!qword_2A1A16E00)
  {
    sub_29D50B550(255, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
    v1 = MEMORY[0x29EDB9BC8];
    sub_29D50B550(255, &qword_2A1A16878, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    sub_29D50B5DC(&qword_2A1A16690, &qword_2A1A16688, &qword_2A1A162C0, sub_29D50B4D8);
    sub_29D50B5DC(&qword_2A1A16880, &qword_2A1A16878, &qword_2A1A1A390, v1);
    v2 = sub_29D5B385C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16E00);
    }
  }
}

void sub_29D50B4D8(uint64_t a1)
{
  if (!qword_2A1A162C8)
  {
    sub_29D48F51C(255, &qword_2A1A162D0, 0x29EDBAC68);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A162C8);
    }
  }
}

void sub_29D50B550(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D50AEC4(255, a3, a4, MEMORY[0x29EDC9C68]);
    sub_29D4B3AF4();
    v5 = sub_29D5B398C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D50B5DC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D50B550(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D50B62C(uint64_t a1)
{
  if (!qword_2A1A16C70)
  {
    sub_29D50B2C0(255);
    sub_29D50CDD4(&qword_2A1A169E0, sub_29D50B2C0, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C70);
    }
  }
}

void sub_29D50B6C0(uint64_t a1)
{
  if (!qword_2A1A16B18)
  {
    sub_29D50B62C(255);
    sub_29D50CDD4(&qword_2A1A16C78, sub_29D50B62C, MEMORY[0x29EDB8968]);
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B18);
    }
  }
}

void sub_29D50B754(uint64_t a1)
{
  if (!qword_2A1A16B58)
  {
    sub_29D50B6C0(255);
    sub_29D50AEC4(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D50CDD4(&qword_2A1A16B20, sub_29D50B6C0, MEMORY[0x29EDB89A0]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B58);
    }
  }
}

void sub_29D50B830(uint64_t a1)
{
  if (!qword_2A1A16B48)
  {
    sub_29D50B6C0(255);
    sub_29D4E3C34();
    sub_29D50CDD4(&qword_2A1A16B20, sub_29D50B6C0, MEMORY[0x29EDB89A0]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B48);
    }
  }
}

void sub_29D50B8DC(uint64_t a1)
{
  if (!qword_2A1A16D30)
  {
    sub_29D50B830(255);
    sub_29D4B2D8C(255);
    sub_29D50CDD4(&qword_2A1A16B50, sub_29D50B830, MEMORY[0x29EDB8990]);
    sub_29D50CDD4(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D30);
    }
  }
}

void sub_29D50B9C8(uint64_t a1)
{
  if (!qword_2A1A17070)
  {
    sub_29D50B8DC(255);
    sub_29D50CDD4(&qword_2A1A16D38, sub_29D50B8DC, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17070);
    }
  }
}

uint64_t sub_29D50BA5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29D50BA94(uint64_t a1)
{
  v2 = sub_29D5B0F7C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D50CD40(0);
    v11 = sub_29D5B490C();
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
      sub_29D50CDD4(&qword_2A1A19390, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
      v18 = sub_29D5B3D8C();
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
          sub_29D50CDD4(&qword_2A1A19388, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D10]);
          v25 = sub_29D5B3E0C();
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

  return MEMORY[0x29EDCA1A0];
}

void sub_29D50BDA8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D5B485C())
    {
LABEL_3:
      sub_29D4C22E4(0);
      v3 = sub_29D5B490C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D5B485C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x29ED5EF30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29D5B464C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29D5B465C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_29D5B464C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29D5B465C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_29D50C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v75 = a2;
  v76 = a1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D50AEC4(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v67 = &v57 - v6;
  v7 = sub_29D5B0E6C();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v71 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AEC4(0, &qword_2A1A19378, MEMORY[0x29EDB9D58], v3);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v74 = &v57 - v12;
  sub_29D50AEC4(0, &qword_2A1A19380, MEMORY[0x29EDB9D18], v3);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v57 - v15;
  v17 = sub_29D5B0D0C();
  v69 = *(v17 - 8);
  v70 = v17;
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v77 = &v57 - v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v57 - v25;
  sub_29D50AEC4(0, &qword_2A1A16220, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v28 = v27;
  v29 = sub_29D5B0F7C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v62 = 3 * v31;
  v64 = v28;
  v33 = swift_allocObject();
  v60 = xmmword_29D5B6320;
  *(v33 + 16) = xmmword_29D5B6320;
  v63 = v32;
  v34 = v33 + v32;
  v35 = *(v30 + 104);
  v61 = *MEMORY[0x29EDB9CD0];
  v35(v34);
  v59 = *MEMORY[0x29EDB9CD8];
  v35(v34 + v31);
  v36 = *MEMORY[0x29EDB9CB8];
  v65 = 2 * v31;
  v58 = v36;
  v35(v34 + 2 * v31);
  sub_29D50BA94(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v68 = v26;
  v37 = v16;
  sub_29D5B0F3C();
  v38 = v74;

  v39 = sub_29D5B0F8C();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = sub_29D5B0FAC();
  result = (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
  if (__OFSUB__(0, v76))
  {
    __break(1u);
  }

  else
  {
    sub_29D5B0CFC();
    v42 = v67;
    sub_29D5B0F5C();
    v44 = v72;
    v43 = v73;
    if ((*(v72 + 48))(v42, 1, v73) == 1)
    {
      sub_29D50CC34(v42, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
      v45 = [objc_opt_self() predicateWithValue_];
      v46 = v70;
      v47 = *(v69 + 8);
      v47(v77, v70);
      v48 = v68;
    }

    else
    {
      (*(v44 + 32))(v71, v42, v43);
      v49 = v63;
      v50 = swift_allocObject();
      *(v50 + 16) = v60;
      (v35)(v50 + v49, v61, v29);
      (v35)(v50 + v49 + v31, v59, v29);
      (v35)(v50 + v49 + v65, v58, v29);
      sub_29D50BA94(v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v51 = v66;
      v52 = v71;
      sub_29D5B0F3C();

      v53 = objc_opt_self();
      v54 = sub_29D5B0CAC();
      v55 = v68;
      v56 = sub_29D5B0CAC();
      v45 = [v53 predicateForRecordsWithSortDateFromStartDateComponents:v54 endDateComponents:v56];

      v46 = v70;
      v47 = *(v69 + 8);
      v47(v51, v70);
      (*(v44 + 8))(v52, v43);
      v47(v77, v46);
      v48 = v55;
    }

    v47(v48, v46);
    return v45;
  }

  return result;
}

void sub_29D50C880(uint64_t a1)
{
  if (!qword_2A1A162B8)
  {
    v1 = MEMORY[0x29EDC9C68];
    sub_29D50AEC4(255, &qword_2A1A162C0, sub_29D50B4D8, MEMORY[0x29EDC9C68]);
    sub_29D50AEC4(255, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A162B8);
    }
  }
}

char *sub_29D50C94C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v2 + 32);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  v12[1] = *(v2 + 16);
  v13 = v8;
  v14 = v2 + v7;
  v15 = v9;
  result = sub_29D54834C(sub_29D50CB28, v12, v10);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_29D50CA34()
{
  result = qword_2A1A165D8;
  if (!qword_2A1A165D8)
  {
    sub_29D50AEC4(255, &qword_2A1A165D0, sub_29D4E3C34, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A165D8);
  }

  return result;
}

uint64_t sub_29D50CADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D50CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D50CBB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D50AEC4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D50CC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D50AEC4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D50CCA4(uint64_t a1)
{
  if (!qword_2A1A168B8)
  {
    sub_29D50B048(255, &qword_2A1A163D8, MEMORY[0x29EDC9A40]);
    sub_29D50B24C();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168B8);
    }
  }
}

void sub_29D50CD40(uint64_t a1)
{
  if (!qword_2A1A16260)
  {
    sub_29D5B0F7C();
    sub_29D50CDD4(&qword_2A1A19390, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16260);
    }
  }
}

uint64_t sub_29D50CDD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_29D50CE1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_29D50CE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D50CFDC();
    v3 = sub_29D5B490C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_29D5B4C7C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

void sub_29D50CFDC()
{
  if (!qword_2A1A19600)
  {
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19600);
    }
  }
}

id sub_29D50D064(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    sub_29D48F51C(0, &qword_2A17A4780, 0x29EDC7B38);
    v9 = [objc_opt_self() preferredFontForTextStyle_];
    v10 = [objc_opt_self() labelColor];
    v11 = sub_29D5B461C();
    v12 = *(v3 + v4);
    *(v8 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

void sub_29D50D15C()
{
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 8))
  {

    v1 = sub_29D50D034();
    v2 = sub_29D5B3E1C();
    [v1 setText_];

    v3 = sub_29D50D04C();
    v4 = sub_29D5B3E1C();
    [v3 setText_];

    v5 = sub_29D50D144();
    v8 = sub_29D5B3E1C();

    [v5 setText_];
  }

  else
  {
    v6 = sub_29D50D034();
    [v6 setText_];

    v7 = sub_29D50D04C();
    [v7 setText_];

    v8 = sub_29D50D144();
    [v8 setText_];
  }
}

id sub_29D50D2E0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel] = 0;
  *&v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel] = 0;
  *&v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel] = 0;
  v9 = &v4[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData];
  updated = type metadata accessor for CategoryUpdateView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v13.receiver = v4;
  v13.super_class = updated;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D50D520();
  sub_29D50D62C();
  sub_29D5B450C();
  [v11 setDirectionalLayoutMargins_];

  return v11;
}

id sub_29D50D520()
{
  v1 = sub_29D50D034();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  v2 = sub_29D50D04C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = sub_29D50D144();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel;
  v5 = *&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel];
  v6 = [v0 tintColor];
  [v5 setTextColor_];

  [v0 addSubview_];
  [v0 addSubview_];
  v7 = *&v0[v4];

  return [v0 addSubview_];
}

void sub_29D50D62C()
{
  v41 = objc_opt_self();
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5B8F10;
  v2 = sub_29D50D034();
  v3 = [v2 leadingAnchor];

  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel;
  v8 = [*&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel] trailingAnchor];
  v9 = [v0 &off_29F3512A8 + 1];
  v10 = [v9 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_ + 4];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:12.0];

  *(v1 + 48) = v14;
  v15 = [*&v0[v7] bottomAnchor];
  v16 = sub_29D50D04C();
  v17 = [v16 topAnchor];

  v18 = [v15 &selRef:v17 setSound:-4.0 + 6];
  *(v1 + 56) = v18;
  v19 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel;
  v20 = [*&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel] leadingAnchor];
  v21 = [*&v0[v7] leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 64) = v22;
  v23 = [*&v0[v19] trailingAnchor];
  v24 = [*&v0[v7] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v1 + 72) = v25;
  v26 = [*&v0[v19] bottomAnchor];
  v27 = sub_29D50D144();
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:-4.0];
  *(v1 + 80) = v29;
  v30 = OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel;
  v31 = [*&v0[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel] leadingAnchor];
  v32 = [*&v0[v7] leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v1 + 88) = v33;
  v34 = [*&v0[v30] trailingAnchor];
  v35 = [*&v0[v7] trailingAnchor];
  v36 = [v34 &selRef:v35 initWithProfileIdentifier:? + 5];

  *(v1 + 96) = v36;
  v37 = [*&v0[v30] bottomAnchor];
  v38 = [v0 layoutMarginsGuide];
  v39 = [v38 bottomAnchor];

  v40 = [v37 &selRef:v39 initWithProfileIdentifier:? + 5];
  *(v1 + 104) = v40;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v42 = sub_29D5B401C();

  [v41 activateConstraints_];
}

id sub_29D50DC0C()
{
  v1 = qword_2A17A4760;
  v2 = *(v0 + qword_2A17A4760);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4760);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CategoryUpdateView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D50DC8C()
{
  v1 = sub_29D5B200C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D510584(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v16 - v8;
  updated = type metadata accessor for CategoryUpdateViewController(0);
  v16.receiver = v0;
  v16.super_class = updated;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    v13 = sub_29D50DC0C();
    [v12 addSubview_];

    sub_29D50E254();
    sub_29D50E550();
    v14 = sub_29D5B0EFC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    (*(v2 + 8))(v5, v1);
    sub_29D510724(v9, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v15 = sub_29D5B3E1C();

    [v0 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D50DF08(void *a1)
{
  v1 = a1;
  sub_29D50DC8C();
}

uint64_t sub_29D50DF50@<X0>(char *a1@<X8>)
{
  sub_29D510584(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_29D5B0E6C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v27 - v14;
  v16 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D5105D8(v1 + v16, v6);
  v17 = type metadata accessor for SharedNewRecordsAlertData(0);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17))
  {
    sub_29D510724(v6, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    v18 = MEMORY[0x29EDC2198];
  }

  else
  {
    (*(v8 + 16))(v12, &v6[*(v17 + 32)], v7);
    sub_29D510724(v6, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    v19 = *(v8 + 32);
    v19(v15, v12, v7);
    sub_29D4B971C(0);
    v21 = *(v20 + 48);
    v19(a1, v15, v7);
    v22 = *MEMORY[0x29EDC2188];
    v23 = sub_29D5B2E8C();
    (*(*(v23 - 8) + 104))(&a1[v21], v22, v23);
    v18 = MEMORY[0x29EDC2190];
  }

  v24 = *v18;
  v25 = sub_29D5B2E9C();
  return (*(*(v25 - 8) + 104))(a1, v24, v25);
}

void sub_29D50E254()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5B8F20;
  v2 = sub_29D50DC0C();
  v3 = [v2 leadingAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = qword_2A17A4760;
  v9 = [*&v0[qword_2A17A4760] trailingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v1 + 40) = v13;
  v14 = [*&v0[v8] topAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 48) = v18;
  v19 = [*&v0[v8] bottomAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v21 bottomAnchor];

  v24 = [v19 constraintEqualToAnchor_];
  *(v1 + 56) = v24;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v25 = sub_29D5B401C();

  [v22 activateConstraints_];
}

uint64_t sub_29D50E550()
{
  v106 = sub_29D5B200C();
  v1 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v2);
  v4 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D510584(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v95 - v7;
  sub_29D510584(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v95 - v11;
  v13 = type metadata accessor for SharedNewRecordsAlertData(0);
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D5105D8(v0 + v18, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_29D510724(v12, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  }

  v98 = v0;
  sub_29D510658(v12, v17);
  v20 = *&v17[*(v13 + 20)];
  v21 = sub_29D5B0EFC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v104 = v22 + 56;
  v105 = v23;
  v23(v8, 1, 1, v21);
  sub_29D5B1FEC();
  sub_29D5106BC(0, &qword_2A1A195B0, &qword_2A1A19590, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v100 = v24;
  v25 = swift_allocObject();
  v95 = xmmword_29D5B5E20;
  *(v25 + 16) = xmmword_29D5B5E20;
  v26 = *(v13 + 28);
  v103 = v17;
  v27 = &v17[v26];
  v28 = v1;
  v29 = *v27;
  v30 = *(v27 + 1);
  *(v25 + 56) = MEMORY[0x29EDC99B0];
  v31 = sub_29D4A25A4();
  *(v25 + 32) = v29;
  *(v25 + 40) = v30;
  v32 = MEMORY[0x29EDC9C10];
  *(v25 + 96) = MEMORY[0x29EDC9BA8];
  *(v25 + 104) = v32;
  v96 = v31;
  v97 = v20;
  *(v25 + 64) = v31;
  *(v25 + 72) = v20;

  sub_29D5B2A0C();

  v33 = *(v28 + 8);
  v33(v4, v106);
  sub_29D510724(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v99 = sub_29D5B3E2C();
  v35 = v34;
  v36 = v105;

  v37 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v37 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v101 = v33;
  v102 = v21;
  if (v37)
  {
    v38 = v106;
  }

  else
  {

    v36(v8, 1, 1, v21);
    sub_29D5B1FEC();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_29D5B62A0;
    *(v39 + 56) = MEMORY[0x29EDC9BA8];
    *(v39 + 64) = MEMORY[0x29EDC9C10];
    *(v39 + 32) = v97;
    sub_29D5B2A0C();

    v38 = v106;
    v33(v4, v106);
    sub_29D510724(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v99 = sub_29D5B3E2C();
    v35 = v40;
  }

  v42 = sub_29D5959C4(v41);

  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = sub_29D515968(*(v42 + 16), 0);
    v45 = sub_29D5A24A8(&v107, v44 + 4, v43, v42);
    sub_29D4B30C0(v107);
    if (v45 == v43)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v44 = MEMORY[0x29EDCA190];
LABEL_12:
  v97 = v35;
  v107 = v44;

  sub_29D50FAC0(&v107);
  v46 = v102;
  v47 = v105;

  v48 = v107;
  v49 = *(v107 + 2);
  if (v49 <= 1)
  {
    if (!v49)
    {

      v50 = 0;
      v51 = 0xE000000000000000;
      goto LABEL_29;
    }

    if (v49 == 1)
    {
      v50 = *(v107 + 4);
      v51 = *(v107 + 5);

LABEL_29:
      v47(v8, 1, 1, v46);
      goto LABEL_30;
    }

LABEL_21:
    v47(v8, 1, 1, v46);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v62 = v61;
    v101(v4, v106);
    sub_29D510724(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_29D5B6320;
    v64 = MEMORY[0x29EDC99B0];
    v65 = v96;
    *(v63 + 56) = MEMORY[0x29EDC99B0];
    *(v63 + 64) = v65;
    v66 = *(v48 + 2);
    if (v66)
    {
      v67 = v63;
      v100 = v62;
      v68 = *(v48 + 5);
      v67[4] = *(v48 + 4);
      v67[5] = v68;
      v67[12] = v64;
      v67[13] = v65;
      if (v66 != 1)
      {
        v69 = *(v48 + 6);
        v70 = *(v48 + 7);

        v67[9] = v69;
        v67[10] = v70;
        v67[17] = MEMORY[0x29EDC9BA8];
        v67[18] = MEMORY[0x29EDC9C10];
        v67[14] = v49 - 2;
        v50 = sub_29D5B3E6C();
        v51 = v71;

        v38 = v106;
LABEL_28:
        v46 = v102;
        v47 = v105;
        goto LABEL_29;
      }

      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v49 == 2)
  {
    v47(v8, 1, 1, v46);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v73 = v72;
    v101(v4, v38);
    sub_29D510724(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v74 = swift_allocObject();
    *(v74 + 16) = v95;
    v75 = MEMORY[0x29EDC99B0];
    v76 = v96;
    *(v74 + 56) = MEMORY[0x29EDC99B0];
    *(v74 + 64) = v76;
    v77 = *(v48 + 2);
    if (v77)
    {
      v78 = v74;
      v100 = v73;
      v79 = *(v48 + 5);
      v78[4] = *(v48 + 4);
      v78[5] = v79;
      v78[12] = v75;
      v78[13] = v76;
      if (v77 != 1)
      {
        v80 = *(v48 + 6);
        v81 = *(v48 + 7);

        v78[9] = v80;
        v78[10] = v81;
        v50 = sub_29D5B3E6C();
        v51 = v82;

        goto LABEL_28;
      }

LABEL_37:
      __break(1u);

      __break(1u);
      return result;
    }

    goto LABEL_34;
  }

  if (v49 != 3)
  {
    goto LABEL_21;
  }

  v47(v8, 1, 1, v46);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v101(v4, v38);
  sub_29D510724(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_29D5B6320;
  v53 = MEMORY[0x29EDC99B0];
  v54 = v96;
  *(v52 + 56) = MEMORY[0x29EDC99B0];
  *(v52 + 64) = v54;
  v55 = *(v48 + 2);
  if (!v55)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v56 = v52;
  v57 = *(v48 + 5);
  v56[4] = *(v48 + 4);
  v56[5] = v57;
  v56[12] = v53;
  v56[13] = v54;
  if (v55 == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v58 = *(v48 + 6);
  v59 = *(v48 + 7);
  v56[9] = v58;
  v56[10] = v59;
  v56[17] = v53;
  v56[18] = v54;

  swift_bridgeObjectRetain_n();

  v56[14] = v58;
  v56[15] = v59;
  v50 = sub_29D5B3E6C();
  v51 = v60;

  v38 = v106;
  v105(v8, 1, 1, v102);
LABEL_30:
  sub_29D5B1FFC();
  v83 = sub_29D5B2A0C();
  v85 = v84;
  v101(v4, v38);
  sub_29D510724(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v86 = sub_29D50DC0C();
  v87 = &v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData];
  v88 = *&v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData];
  v89 = *&v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 8];
  v90 = *&v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 16];
  v91 = *&v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 24];
  v92 = *&v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 32];
  v93 = *&v86[OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData + 40];
  v94 = v97;
  *v87 = v99;
  v87[1] = v94;
  v87[2] = v50;
  v87[3] = v51;
  v87[4] = v83;
  v87[5] = v85;
  sub_29D510780(v88, v89, v90, v91, v92, v93);
  sub_29D50D15C();

  return sub_29D5107D0(v103);
}

uint64_t sub_29D50F134(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D4A9434(v2 + v4, v22);
  v6 = v23;
  if (v23)
  {
    v7 = sub_29D499EC0(v22, v23);
    v8 = *(v6 - 8);
    MEMORY[0x2A1C7C4A8](v7, v7);
    v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    v11 = sub_29D5B314C();
    (*(v8 + 8))(v10, v6);
    v12 = sub_29D5B423C();

    v13 = objc_allocWithZone(type metadata accessor for LabListViewController(0));
    v14 = sub_29D585CA0(v12);

    sub_29D48F668(v22);
    sub_29D5104F8(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = sub_29D499EC0(v22, v23);
      v17 = *(v15 - 8);
      MEMORY[0x2A1C7C4A8](v16, v16);
      v19 = &v21[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v17 + 16))(v19);
      v20 = sub_29D5B4C6C();
      (*(v17 + 8))(v19, v15);
      sub_29D48F668(v22);
    }

    else
    {
      v20 = 0;
    }

    [v2 showViewController:v14 sender:v20];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D50F3DC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[qword_2A17A4748] = 0;
  *&v3[qword_2A17A4750] = 0;
  *&v3[qword_2A17A4758] = 0;
  *&v3[qword_2A17A4760] = 0;
  v6 = qword_2A17ABF40;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for CategoryUpdateViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D50F4F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D50F3DC(v5, v7, a4);
}

id sub_29D50F554(void *a1)
{
  *&v1[qword_2A17A4748] = 0;
  *&v1[qword_2A17A4750] = 0;
  *&v1[qword_2A17A4758] = 0;
  *&v1[qword_2A17A4760] = 0;
  v3 = qword_2A17ABF40;
  v4 = *MEMORY[0x29EDC1E68];
  v5 = sub_29D5B2CAC();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CategoryUpdateViewController(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_29D50F668()
{
  v1 = qword_2A17ABF40;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D50F72C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29D50F764(uint64_t a1)
{
  v2 = qword_2A17ABF40;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for CategoryUpdateViewController(uint64_t a1)
{
  result = qword_2A17A4768;
  if (!qword_2A17A4768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D50F85C(uint64_t a1)
{
  result = sub_29D5B2CAC();
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

__n128 sub_29D50F904(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29D50F918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29D50F960(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29D50F9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABF40;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_29D50FA68()
{
  result = qword_2A17A4778;
  if (!qword_2A17A4778)
  {
    type metadata accessor for CategoryUpdateViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4778);
  }

  return result;
}

uint64_t sub_29D50FAC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29D4C7C78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_29D50FB2C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_29D50FB2C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29D5B4C3C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x29EDCA190];
      }

      else
      {
        v5 = sub_29D5B409C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_29D50FCF4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_29D50FC24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29D50FC24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_29D5B4C7C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29D50FCF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x29EDCA190];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_29D4C6A64(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_29D5102D0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_29D5B4C7C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_29D5B4C7C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D514BF8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_29D514BF8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_29D5102D0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_29D4C6A64(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_29D4C69D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_29D5B4C7C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_29D5102D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_29D5B4C7C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_29D5B4C7C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_29D5104F8(uint64_t a1, uint64_t a2)
{
  sub_29D502718(0, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D510584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5105D8(uint64_t a1, uint64_t a2)
{
  sub_29D510584(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D510658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedNewRecordsAlertData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D5106BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D510724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D510584(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D510780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_29D5107D0(uint64_t a1)
{
  v2 = type metadata accessor for SharedNewRecordsAlertData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_29D51082C(uint64_t a1)
{
  v121 = *v1;
  v122 = v1;
  sub_29D512440(0);
  v94 = v3;
  v93 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v118 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v119 = v8;
  v120 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D512584(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v98 = &v89 - v11;
  v97 = sub_29D5B43DC();
  v96 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97, v12);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_29D5B181C();
  v115 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117, v14);
  v116 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5125E8(0);
  v92 = v16;
  v91 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v89 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5126E0(0);
  v103 = v19;
  v101 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v99 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D512814(0);
  v104 = v22;
  v102 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v100 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D5B43EC();
  v113 = *(v25 - 8);
  v114 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v112 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29D5B439C();
  MEMORY[0x2A1C7C4A8](v111, v28);
  v110 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D5B3CAC();
  MEMORY[0x2A1C7C4A8](v30 - 8, v31);
  v109 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29D5B13CC();
  v33 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108, v34);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29D5B13EC();
  v37 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107, v38);
  v40 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_context);
  v105 = sub_29D5B143C();
  sub_29D512584(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v41 = sub_29D5B104C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_29D5B5E20;
  v46 = v45 + v44;
  v47 = *(v42 + 104);
  v47(v46, *MEMORY[0x29EDC3730], v41);
  v47(v46 + v43, *MEMORY[0x29EDC36E0], v41);
  (*(v33 + 104))(v36, *MEMORY[0x29EDC38A0], v108);
  v48 = MEMORY[0x29EDCA190];
  sub_29D5B13DC();
  (*(v37 + 32))(v122 + OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_domain, v40, v107);
  v49 = v106;
  v50 = sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);
  sub_29D5B3C9C();
  v124[0] = v48;
  sub_29D512D4C(&qword_2A1A19630, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  sub_29D512584(0, &qword_2A1A19670, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29D5128C0();
  sub_29D5B47CC();
  (*(v113 + 104))(v112, *MEMORY[0x29EDCA2A8], v114);
  v51 = sub_29D5B441C();
  v52 = sub_29D5B143C();
  v53 = sub_29D5B10DC();
  LOBYTE(v36) = sub_29D5B10CC();

  v54 = (v115 + 8);
  sub_29D5B13FC();
  sub_29D499EC0(v124, v124[3]);
  if (v36)
  {
    v55 = v116;
    sub_29D5B180C();
    v56 = sub_29D5B172C();
    (*v54)(v55, v117);
    v123[5] = v56;
    sub_29D5B1CBC();
    v57 = sub_29D5B1C8C();
    sub_29D5B140C();
    sub_29D499EC0(v123, v123[3]);
    v58 = sub_29D5B136C();
    v59 = [v58 profileIdentifier];

    sub_29D5B1C3C();
    sub_29D48F668(v123);
    v60 = sub_29D5B363C();

    v123[0] = v60;
    sub_29D5124EC(0);
    v61 = MEMORY[0x29EDC82A0];
    sub_29D5129F4(0, &qword_2A1A167F8, MEMORY[0x29EDC82A0]);
    v117 = v50;
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC, MEMORY[0x29EDB8A00]);
    sub_29D512A58(&qword_2A1A16800, &qword_2A1A167F8, v61);
    v62 = v89;
    sub_29D5B3B6C();

    sub_29D48F668(v124);
    v63 = v95;
    sub_29D5B43CC();
    v124[0] = v51;
    v64 = v51;
    v65 = sub_29D5B43BC();
    v66 = v98;
    (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
    sub_29D512D4C(&qword_2A1A172B0, sub_29D5125E8, MEMORY[0x29EDB8870]);
    sub_29D5127AC();
    v67 = v99;
    v68 = v92;
    sub_29D5B3C2C();
    sub_29D499F04(v66);
    (*(v96 + 8))(v63, v97);
    (*(v91 + 8))(v62, v68);
    v69 = v120;
    sub_29D499E5C(v49, v120);
    v70 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v71 = (v119 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    sub_29D499F90(v69, v72 + v70);
    *(v72 + v71) = v121;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_29D512B9C;
    *(v73 + 24) = v72;
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16960, sub_29D5126E0, MEMORY[0x29EDB89B8]);
    v74 = v100;
    v75 = v103;
    sub_29D5B3B2C();

    (*(v101 + 8))(v67, v75);
    sub_29D512D4C(&qword_2A1A17188, sub_29D512814, MEMORY[0x29EDB88A0]);
    v76 = v104;
    v77 = sub_29D5B3AFC();
    (*(v102 + 8))(v74, v76);
    v124[0] = v77;
    sub_29D5129F4(0, &qword_2A1A16808, sub_29D499B38);
    sub_29D512A58(&qword_2A1A16810, &qword_2A1A16808, sub_29D499B38);
    v78 = sub_29D5B3B1C();
  }

  else
  {
    v79 = v116;
    sub_29D5B180C();
    v80 = sub_29D5B172C();
    (*v54)(v79, v117);
    v123[0] = v80;
    v81 = v120;
    sub_29D499E5C(v49, v120);
    v82 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v83 = (v119 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    sub_29D499F90(v81, v84 + v82);
    *(v84 + v83) = v121;
    sub_29D5124EC(0);
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC, MEMORY[0x29EDB8A00]);
    v85 = v90;
    sub_29D5B3B2C();

    sub_29D48F668(v124);
    sub_29D512D4C(&qword_2A17A4788, sub_29D512440, MEMORY[0x29EDB88A0]);
    v86 = v94;
    v87 = sub_29D5B3AFC();
    (*(v93 + 8))(v85, v86);
    v124[0] = v87;
    sub_29D5129F4(0, &qword_2A1A16808, sub_29D499B38);
    sub_29D512A58(&qword_2A1A16810, &qword_2A1A16808, sub_29D499B38);
    v78 = sub_29D5B3B1C();
  }

  sub_29D49A104(v49);

  result = v122;
  v122[2] = v78;
  return result;
}

uint64_t *sub_29D5118FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v48[-v14];
  v52 = sub_29D5B371C();
  v16 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52, v17);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D5B36AC();
  sub_29D499E5C(a2, v15);

  v20 = sub_29D5B370C();
  v21 = sub_29D5B426C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = a4;
    v23 = v22;
    v50 = swift_slowAlloc();
    v53 = v50;
    v54[0] = a3;
    *v23 = 136446978;
    swift_getMetatypeMetadata();
    v24 = sub_29D5B3E7C();
    v26 = sub_29D501890(v24, v25, &v53);
    v49 = v21;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v54[0] = type metadata accessor for SharedConceptFeedItemGenerator(0);
    sub_29D4B34E8(0);
    v28 = sub_29D5B3E7C();
    v30 = sub_29D501890(v28, v29, &v53);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2082;
    v54[0] = a1;
    sub_29D512584(0, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);

    sub_29D5B4CAC();
    v31 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v32 = sub_29D5B3E7C();
    v34 = sub_29D501890(v32, v33, &v53);

    *(v23 + 24) = v34;
    *(v23 + 32) = 2082;
    v35 = sub_29D5B143C();
    v36 = sub_29D5B10AC();

    v54[0] = v36;
    sub_29D512D94(0);
    sub_29D5B4CAC();
    v37 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v38 = sub_29D5B3E7C();
    v40 = v39;
    sub_29D49A104(v15);
    v41 = sub_29D501890(v38, v40, &v53);

    *(v23 + 34) = v41;
    _os_log_impl(&dword_29D48C000, v20, v49, "[%{public}s]: Emitting %{public}s, with sharable model changes: %{public}s, for profile: %{public}s", v23, 0x2Au);
    v42 = v50;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v42, -1, -1);
    v43 = v23;
    a4 = v51;
    MEMORY[0x29ED5FB80](v43, -1, -1);
  }

  else
  {

    sub_29D49A104(v15);
  }

  (*(v16 + 8))(v19, v52);
  sub_29D499E5C(a2, v12);

  sub_29D5B140C();
  sub_29D499EC0(v54, v54[3]);
  v44 = sub_29D5B136C();
  v45 = type metadata accessor for SharedConceptFeedItemGenerator(0);
  swift_allocObject();
  v46 = sub_29D4B2930(v12, a1, v44);

  sub_29D48F668(v54);
  a4[3] = v45;
  result = sub_29D512D4C(&qword_2A1A17D60, type metadata accessor for SharedConceptFeedItemGenerator, &unk_29D5B6930);
  a4[4] = result;
  *a4 = v46;
  return result;
}

uint64_t *sub_29D511DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v49 - v14;
  v52 = sub_29D5B371C();
  v16 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_29D5B36AC();
  v53 = a2;
  sub_29D499E5C(a2, v15);

  v21 = sub_29D5B370C();
  v22 = sub_29D5B426C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = a4;
    v24 = v23;
    v50 = swift_slowAlloc();
    v55 = v50;
    *v24 = 136446978;
    v54 = a3;
    swift_getMetatypeMetadata();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v55);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v54 = type metadata accessor for SharedConceptFeedItemGenerator(0);
    sub_29D4B34E8(0);
    v28 = sub_29D5B3E7C();
    v30 = sub_29D501890(v28, v29, &v55);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2082;
    v54 = v20;
    sub_29D512584(0, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);

    sub_29D5B4CAC();
    v31 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v32 = sub_29D5B3E7C();
    v34 = sub_29D501890(v32, v33, &v55);

    *(v24 + 24) = v34;
    *(v24 + 32) = 2082;
    v35 = sub_29D5B143C();
    v36 = sub_29D5B10AC();

    v54 = v36;
    sub_29D512D94(0);
    sub_29D5B4CAC();
    v37 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v38 = sub_29D5B3E7C();
    v40 = v39;
    sub_29D49A104(v15);
    v41 = sub_29D501890(v38, v40, &v55);

    *(v24 + 34) = v41;
    _os_log_impl(&dword_29D48C000, v21, v22, "[%{public}s]: Emitting %{public}s, with sharable model changes: %{public}s, for profile: %{public}s", v24, 0x2Au);
    v42 = v50;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v42, -1, -1);
    v43 = v24;
    a4 = v51;
    MEMORY[0x29ED5FB80](v43, -1, -1);
  }

  else
  {

    sub_29D49A104(v15);
  }

  (*(v16 + 8))(v19, v52);
  sub_29D499E5C(v53, v12);
  v44 = objc_allocWithZone(MEMORY[0x29EDBABE8]);

  v45 = [v44 init];
  v46 = type metadata accessor for SharedConceptFeedItemGenerator(0);
  swift_allocObject();
  v47 = sub_29D4B2930(v12, v20, v45);

  a4[3] = v46;
  result = sub_29D512D4C(&qword_2A1A17D60, type metadata accessor for SharedConceptFeedItemGenerator, &unk_29D5B6930);
  a4[4] = result;
  *a4 = v47;
  return result;
}

uint64_t sub_29D5122BC()
{

  v1 = OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedConceptFeedItemPipeline(uint64_t a1)
{
  result = qword_2A1A17F00;
  if (!qword_2A1A17F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5123C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords29SharedConceptFeedItemPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D512440(uint64_t a1)
{
  if (!qword_2A1A171F0)
  {
    sub_29D5124EC(255);
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A171F0);
    }
  }
}

void sub_29D5124EC(uint64_t a1)
{
  if (!qword_2A1A16758)
  {
    sub_29D512584(255, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16758);
    }
  }
}

void sub_29D512584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5125E8(uint64_t a1)
{
  if (!qword_2A1A172A8)
  {
    sub_29D5124EC(255);
    v1 = MEMORY[0x29EDC82A0];
    sub_29D5129F4(255, &qword_2A1A167F8, MEMORY[0x29EDC82A0]);
    sub_29D512D4C(&qword_2A1A16760, sub_29D5124EC, MEMORY[0x29EDB8A00]);
    sub_29D512A58(&qword_2A1A16800, &qword_2A1A167F8, v1);
    v2 = sub_29D5B379C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A172A8);
    }
  }
}

void sub_29D5126E0(uint64_t a1)
{
  if (!qword_2A1A16958)
  {
    sub_29D5125E8(255);
    sub_29D48F51C(255, &qword_2A1A1A420, 0x29EDCA548);
    sub_29D512D4C(&qword_2A1A172B0, sub_29D5125E8, MEMORY[0x29EDB8870]);
    sub_29D5127AC();
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16958);
    }
  }
}

unint64_t sub_29D5127AC()
{
  result = qword_2A1A19620;
  if (!qword_2A1A19620)
  {
    sub_29D48F51C(255, &qword_2A1A1A420, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19620);
  }

  return result;
}

void sub_29D512814(uint64_t a1)
{
  if (!qword_2A1A17180)
  {
    sub_29D5126E0(255);
    sub_29D499B38();
    sub_29D512D4C(&qword_2A1A16960, sub_29D5126E0, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17180);
    }
  }
}

unint64_t sub_29D5128C0()
{
  result = qword_2A1A19668;
  if (!qword_2A1A19668)
  {
    sub_29D512584(255, &qword_2A1A19670, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19668);
  }

  return result;
}

uint64_t *sub_29D512948@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D511DE4(a1, v2 + v6, v7, a2);
}

void sub_29D5129F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D512A58(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D5129F4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D512AA8()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t *sub_29D512B9C@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5118FC(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D512C50(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D512CAC(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

void sub_29D512CAC(uint64_t a1)
{
  if (!qword_2A1A16440)
  {
    sub_29D512584(255, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
    sub_29D5B368C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16440);
    }
  }
}

uint64_t sub_29D512D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D512D94(uint64_t a1)
{
  if (!qword_2A1A16328)
  {
    sub_29D48F51C(255, &qword_2A1A16330, 0x29EDBACE0);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16328);
    }
  }
}

uint64_t type metadata accessor for ClinicalSharingFeedItemData(uint64_t a1)
{
  result = qword_2A17A4790;
  if (!qword_2A17A4790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D512E70(uint64_t a1)
{
  result = sub_29D5B0EDC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D512EF4(void *a1)
{
  sub_29D5139C0(0, &qword_2A17A47B8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D5138AC();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for ClinicalSharingFeedItemData(0);
    v10[14] = 1;
    sub_29D5B4BCC();
    v10[13] = 2;
    sub_29D5B4BFC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D5130F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_29D5B0EDC();
  v30 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5139C0(0, &qword_2A17A47A8, MEMORY[0x29EDC9E80]);
  v32 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ClinicalSharingFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D5138AC();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v16 = v29;
  v15 = v30;
  v26 = v11;
  v27 = v14;
  v35 = 0;
  sub_29D513E84(&qword_2A17A4030, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
  v18 = v31;
  v17 = v32;
  sub_29D5B4B6C();
  (*(v15 + 32))(v27, v18, v4);
  v34 = 1;
  v19 = sub_29D5B4B2C();
  v20 = &v27[*(v26 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v33 = 2;
  v22 = sub_29D5B4B5C();
  (*(v16 + 8))(v10, v17);
  v23 = v27;
  *&v27[*(v26 + 24)] = v22;
  sub_29D513900(v23, v28);
  sub_29D48F668(a1);
  return sub_29D513964(v23);
}

unint64_t sub_29D5134A8()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_29D513508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D513FE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D513530(uint64_t a1)
{
  v2 = sub_29D5138AC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D51356C(uint64_t a1)
{
  v2 = sub_29D5138AC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D5135D8(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  MEMORY[0x29ED5F330](*(v1 + *(a1 + 24)));
  return sub_29D5B4D9C();
}

uint64_t sub_29D513690(uint64_t a1, uint64_t a2)
{
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  return MEMORY[0x29ED5F330](*(v2 + *(a2 + 24)));
}

uint64_t sub_29D513730(uint64_t a1, uint64_t a2)
{
  sub_29D5B4D4C();
  sub_29D5B0EDC();
  sub_29D513E84(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  MEMORY[0x29ED5F330](*(v2 + *(a2 + 24)));
  return sub_29D5B4D9C();
}

BOOL sub_29D5137E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29D5B0EAC() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_29D5B4C7C()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29D5138AC()
{
  result = qword_2A17A47B0;
  if (!qword_2A17A47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47B0);
  }

  return result;
}

uint64_t sub_29D513900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D513964(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5139C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5138AC();
    v7 = a3(a1, &type metadata for ClinicalSharingFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D513A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D5B0EDC();
  v44 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D5B371C();
  v8 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();
  v12 = a1;
  v13 = sub_29D5B370C();
  v14 = sub_29D5B429C();

  v15 = os_log_type_enabled(v13, v14);
  v43 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v42 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136315138;
    v19 = [v12 identifier];
    sub_29D5B0EBC();

    sub_29D513E84(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v20 = sub_29D5B4C4C();
    v21 = v4;
    v23 = v22;
    (*(v44 + 8))(v7, v21);
    v24 = sub_29D501890(v20, v23, &v46);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_29D48C000, v13, v14, "Creating clinical acount sharing information for account: %s", v17, 0xCu);
    sub_29D48F668(v18);
    MEMORY[0x29ED5FB80](v18, -1, -1);
    v25 = v17;
    a2 = v42;
    MEMORY[0x29ED5FB80](v25, -1, -1);
  }

  (*(v8 + 8))(v11, v45);
  v26 = [v12 provenance];
  v27 = [v26 type];

  if (v27)
  {

    v28 = type metadata accessor for ClinicalSharingFeedItemData(0);
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }

  else
  {
    v30 = [v12 identifier];
    sub_29D5B0EBC();

    v31 = [v12 provenance];
    v32 = [v31 title];

    v33 = sub_29D5B3E5C();
    v35 = v34;

    [v12 state];
    v36 = [v12 clinicalSharingStatus];
    v37 = v7;
    v38 = [v36 multiDeviceStatus];

    (*(v44 + 32))(a2, v37, v43);
    v39 = type metadata accessor for ClinicalSharingFeedItemData(0);
    v40 = (a2 + *(v39 + 20));
    *v40 = v33;
    v40[1] = v35;
    *(a2 + *(v39 + 24)) = v38;
    return (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
  }
}

uint64_t sub_29D513E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D513EE0()
{
  result = qword_2A17A47C0;
  if (!qword_2A17A47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47C0);
  }

  return result;
}

unint64_t sub_29D513F38()
{
  result = qword_2A17A47C8;
  if (!qword_2A17A47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47C8);
  }

  return result;
}

unint64_t sub_29D513F90()
{
  result = qword_2A17A47D0;
  if (!qword_2A17A47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A47D0);
  }

  return result;
}

uint64_t sub_29D513FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BD470 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for ShowAllCategoryActionHandler(uint64_t a1)
{
  result = qword_2A17A47D8;
  if (!qword_2A17A47D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D514194(uint64_t a1)
{
  v2 = sub_29D5B32CC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D5B30FC();
  (*(v3 + 8))(a1, v2);
  return v7;
}

unint64_t sub_29D5142A8()
{
  result = qword_2A17A4410;
  if (!qword_2A17A4410)
  {
    type metadata accessor for ShowAllCategoryActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4410);
  }

  return result;
}

void sub_29D514300()
{
  if (qword_2A1A19618 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A1A7C8;
  v1 = objc_allocWithZone(sub_29D5B2AEC());
  v2 = v0;
  v3 = sub_29D5B2ADC();
  sub_29D5143B8();
  v4 = sub_29D5B430C();
  [v4 addOperation_];
}

unint64_t sub_29D5143B8()
{
  result = qword_2A17A43D8;
  if (!qword_2A17A43D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A43D8);
  }

  return result;
}

uint64_t sub_29D514404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v31 = sub_29D5B1D6C();
  MEMORY[0x2A1C7C4A8](v31, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v5 + 16);
    v9 = v5 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v29 = *(v9 + 56);
    v30 = v10;
    v12 = (v9 - 8);
    v13 = MEMORY[0x29EDCA190];
    do
    {
      v14 = v31;
      v15 = v9;
      v30(v7, v11, v31);
      v32 = sub_29D5B1D0C();
      v16 = sub_29D5B4C4C();
      v18 = v17;
      (*v12)(v7, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_29D514C4C(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = sub_29D514C4C((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v11 += v29;
      --v8;
      v9 = v15;
    }

    while (v8);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  v32 = v13;
  sub_29D51726C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D49823C();
  v22 = sub_29D5B3DBC();
  v24 = v23;

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_29D5B49DC();
  sub_29D5B3DAC();
  MEMORY[0x29ED5E510](808333686, 0xE400000000000000);
  sub_29D5B3DAC();
  MEMORY[0x29ED5E510](v22, v24);

  sub_29D5B3DAC();
  MEMORY[0x29ED5E510](v27, v28);
  return v32;
}

uint64_t sub_29D5146FC()
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  return sub_29D5B4D9C();
}

uint64_t sub_29D514770(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  return sub_29D5B4D9C();
}

uint64_t sub_29D5147C4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_29D5B4ADC();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_29D514838@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x29EDCA190];
    }

    v7 = sub_29D5B3FDC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_29D514F64(0, 1, 1, MEMORY[0x29EDCA190]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_29D514F64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x29EDCA190];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_29D5B3FBC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_29D5B3F0C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_29D5B3F0C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_29D5B3FDC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_29D514F64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_29D5B3FDC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_29D514F64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_29D514F64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_29D5B3F0C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_29D514C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D514D70(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D5172BC(0, a5, a6, MEMORY[0x29EDC9E90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_29D514F64(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A17A47E8, MEMORY[0x29EDC9C98], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D5150F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A17A4810, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D5152D4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29D5172BC(0, a5, a6, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_29D51541C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D51726C(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D5155D4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_29D517204(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D4A02FC(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_29D51573C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D517180(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D517204(0, &qword_2A1A19820, &qword_2A1A19828, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D515968(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D51726C(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_29D515A6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D5172BC(0, a3, a4, MEMORY[0x29EDC9E90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29D515B80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D51726C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_29D515C58(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D51726C(0, &qword_2A1A161C8, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_29D515CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_29D5B3FCC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_29D516270(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_29D5B497C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_29D516270(uint64_t a1, unint64_t a2)
{
  v2 = sub_29D5B3FDC();
  v6 = sub_29D5162F0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_29D5162F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_29D5B473C();
    if (!v9 || (v10 = v9, v11 = sub_29D515C58(v9, 0), v12 = sub_29D516448(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_29D5B3EEC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_29D5B3EEC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_29D5B497C();
LABEL_4:

  return sub_29D5B3EEC();
}

unint64_t sub_29D516448(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_29D516668(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_29D5B3F7C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_29D5B497C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_29D516668(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_29D5B3F5C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_29D516668(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29D5B3F8C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x29ED5E540](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_29D5166E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5172BC(0, &qword_2A1A17350, MEMORY[0x29EDC4098], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v94 - v11;
  v13 = sub_29D5B1D6C();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v100 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = 10848482;
  v106 = 0xA300000000000000;
  v102 = &v105;
  v17 = sub_29D514838(0x7FFFFFFFFFFFFFFFLL, 0, sub_29D4B3490, v101, a1, a2, &v105);
  v18 = v17;
  if (v17[2] != 4 || (v94[1] = 0, v98 = v14, v19 = v13, v20 = v17[4], v21 = v17[5], v22 = v17[6], v23 = v17[7], , MEMORY[0x29ED5E490](v20, v21, v22, v23), , v24 = sub_29D5B4ADC(), result = , v24))
  {

    return 0;
  }

  if (v18[2] < 2uLL)
  {
    goto LABEL_99;
  }

  v27 = v18[8];
  v28 = v18[9];
  v29 = v18[10];
  v30 = v18[11];

  MEMORY[0x29ED5E490](v27, v28, v29, v30);

  v31 = sub_29D5B4ADC();

  if (v31)
  {
    sub_29D5B36CC();

    v32 = sub_29D5B370C();
    v33 = sub_29D5B427C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      LODWORD(v99) = v33;
      v35 = v34;
      v100 = swift_slowAlloc();
      v105 = v100;
      *v35 = 136446466;
      *(v35 + 4) = sub_29D501890(0xD00000000000001ELL, 0x800000029D5B9400, &v105);
      *(v35 + 12) = 2082;
      v36 = v18[8];
      v37 = v18[9];
      v39 = v18[10];
      v38 = v18[11];

      v40 = MEMORY[0x29ED5E490](v36, v37, v39, v38);
      v42 = v41;

      v43 = sub_29D501890(v40, v42, &v105);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_29D48C000, v32, v99, "[%{public}s] Unsupported version found when decoding version: '%{public}s'", v35, 0x16u);
      v44 = v100;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v44, -1, -1);
      MEMORY[0x29ED5FB80](v35, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  if (v18[2] < 3uLL)
  {
    goto LABEL_100;
  }

  v45 = v18[12];
  v46 = v18[13];
  v47 = v18[14];
  v48 = v18[15];

  v49 = MEMORY[0x29ED5E490](v45, v46, v47, v48);
  v51 = v50;

  v105 = v49;
  v106 = v51;
  v103 = 8431330;
  v104 = 0xA300000000000000;
  sub_29D4B343C();
  v52 = sub_29D5B476C();

  v53 = *(v52 + 16);
  if (!v53)
  {
    v26 = MEMORY[0x29EDCA190];
LABEL_92:

    if (v18[2] < 4uLL)
    {
      goto LABEL_101;
    }

    v90 = v18[16];
    v91 = v18[17];
    v92 = v18[18];
    v93 = v18[19];

    MEMORY[0x29ED5E490](v90, v91, v92, v93);

    return v26;
  }

  v54 = 0;
  v99 = v52 + 32;
  v94[0] = &v105 + 1;
  v95 = (v98 + 32);
  v96 = (v98 + 48);
  v97 = (v98 + 56);
  v26 = MEMORY[0x29EDCA190];
  while (v54 < *(v52 + 16))
  {
    v55 = (v99 + 16 * v54);
    v56 = *v55;
    v57 = v55[1];
    v58 = HIBYTE(v57) & 0xF;
    v59 = v56 & 0xFFFFFFFFFFFFLL;
    if ((v57 & 0x2000000000000000) != 0)
    {
      v60 = HIBYTE(v57) & 0xF;
    }

    else
    {
      v60 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (!v60)
    {
      goto LABEL_14;
    }

    if ((v57 & 0x1000000000000000) == 0)
    {
      if ((v57 & 0x2000000000000000) != 0)
      {
        v105 = v56;
        v106 = v57 & 0xFFFFFFFFFFFFFFLL;
        if (v56 == 43)
        {
          if (!v58)
          {
            goto LABEL_95;
          }

          if (--v58)
          {
            v74 = 0;
            v75 = v94[0];
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              v77 = 10 * v74;
              if ((v74 * 10) >> 64 != (10 * v74) >> 63)
              {
                break;
              }

              v74 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                break;
              }

              ++v75;
              if (!--v58)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v56 == 45)
        {
          if (!v58)
          {
            goto LABEL_97;
          }

          if (--v58)
          {
            v66 = 0;
            v67 = v94[0];
            while (1)
            {
              v68 = *v67 - 48;
              if (v68 > 9)
              {
                break;
              }

              v69 = 10 * v66;
              if ((v66 * 10) >> 64 != (10 * v66) >> 63)
              {
                break;
              }

              v66 = v69 - v68;
              if (__OFSUB__(v69, v68))
              {
                break;
              }

              ++v67;
              if (!--v58)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v58)
        {
          v81 = 0;
          v82 = &v105;
          while (1)
          {
            v83 = *v82 - 48;
            if (v83 > 9)
            {
              break;
            }

            v84 = 10 * v81;
            if ((v81 * 10) >> 64 != (10 * v81) >> 63)
            {
              break;
            }

            v81 = v84 + v83;
            if (__OFADD__(v84, v83))
            {
              break;
            }

            v82 = (v82 + 1);
            if (!--v58)
            {
              goto LABEL_79;
            }
          }
        }
      }

      else
      {
        if ((v56 & 0x1000000000000000) != 0)
        {
          result = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_29D5B497C();
        }

        v61 = *result;
        if (v61 == 43)
        {
          if (v59 < 1)
          {
            goto LABEL_98;
          }

          v58 = v59 - 1;
          if (v59 != 1)
          {
            v70 = 0;
            if (!result)
            {
              goto LABEL_70;
            }

            v71 = result + 1;
            while (1)
            {
              v72 = *v71 - 48;
              if (v72 > 9)
              {
                break;
              }

              v73 = 10 * v70;
              if ((v70 * 10) >> 64 != (10 * v70) >> 63)
              {
                break;
              }

              v70 = v73 + v72;
              if (__OFADD__(v73, v72))
              {
                break;
              }

              ++v71;
              if (!--v58)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v61 == 45)
        {
          if (v59 < 1)
          {
            goto LABEL_96;
          }

          v58 = v59 - 1;
          if (v59 != 1)
          {
            v62 = 0;
            if (result)
            {
              v63 = result + 1;
              while (1)
              {
                v64 = *v63 - 48;
                if (v64 > 9)
                {
                  goto LABEL_78;
                }

                v65 = 10 * v62;
                if ((v62 * 10) >> 64 != (10 * v62) >> 63)
                {
                  goto LABEL_78;
                }

                v62 = v65 - v64;
                if (__OFSUB__(v65, v64))
                {
                  goto LABEL_78;
                }

                ++v63;
                if (!--v58)
                {
                  goto LABEL_79;
                }
              }
            }

LABEL_70:
            LOBYTE(v58) = 0;
LABEL_79:
            LOBYTE(v103) = v58;
            v85 = v58;

            if (v85)
            {
              goto LABEL_13;
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (!v59)
          {
            goto LABEL_78;
          }

          v78 = 0;
          if (!result)
          {
            goto LABEL_70;
          }

          while (1)
          {
            v79 = *result - 48;
            if (v79 > 9)
            {
              break;
            }

            v80 = 10 * v78;
            if ((v78 * 10) >> 64 != (10 * v78) >> 63)
            {
              break;
            }

            v78 = v80 + v79;
            if (__OFADD__(v80, v79))
            {
              break;
            }

            ++result;
            if (!--v59)
            {
              goto LABEL_70;
            }
          }
        }
      }

LABEL_78:
      LOBYTE(v58) = 1;
      goto LABEL_79;
    }

    sub_29D515CE4(v56, v57, 10);
    if (v89)
    {
LABEL_13:

LABEL_14:
      (*v97)(v12, 1, 1, v19);
      goto LABEL_15;
    }

LABEL_80:
    sub_29D5B1D4C();

    if ((*v96)(v12, 1, v19) != 1)
    {
      v86 = *v95;
      (*v95)(v100, v12, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29D514D70(0, *(v26 + 2) + 1, 1, v26, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC4098]);
      }

      v88 = *(v26 + 2);
      v87 = *(v26 + 3);
      if (v88 >= v87 >> 1)
      {
        v26 = sub_29D514D70((v87 > 1), v88 + 1, 1, v26, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC4098]);
      }

      *(v26 + 2) = v88 + 1;
      result = v86(&v26[((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v88], v100, v19);
      goto LABEL_16;
    }

LABEL_15:
    result = sub_29D5170F4(v12);
LABEL_16:
    if (++v54 == v53)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_29D5170F4(uint64_t a1)
{
  sub_29D5172BC(0, &qword_2A1A17350, MEMORY[0x29EDC4098], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D517180(uint64_t a1)
{
  if (!qword_2A1A195E0)
  {
    sub_29D517204(255, &qword_2A1A19820, &qword_2A1A19828, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A195E0);
    }
  }
}

void sub_29D517204(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D51726C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D5172BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D517320(uint64_t a1)
{
  if (!qword_2A17A41A0)
  {
    sub_29D48F51C(255, &qword_2A17A41A8, 0x29EDBAC38);
    v1 = sub_29D5B3D0C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A41A0);
    }
  }
}

unint64_t sub_29D51739C()
{
  result = qword_2A17A4830;
  if (!qword_2A17A4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4830);
  }

  return result;
}

uint64_t sub_29D5173F4@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = v36 - v10;
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v36 - v13;
  v15 = *(v3 + 16);
  v15(v36 - v13, v1, v2);
  v16 = *(v3 + 88);
  v17 = v16(v14, v2);
  if (v17 != *MEMORY[0x29EDC3FA8])
  {
    if (v17 == *MEMORY[0x29EDC3F88])
    {
      sub_29D51AC0C();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_29D5B6350;
      *(v21 + 32) = [objc_opt_self() systemGray3Color];
      sub_29D48F51C(0, &unk_2A1A19430, 0x29EDC7A00);
      v22 = sub_29D5B401C();

      [objc_opt_self() configurationWithPaletteColors_];

      return sub_29D5B2A4C();
    }

    if (v17 != *MEMORY[0x29EDC3F78] && v17 != *MEMORY[0x29EDC3F90])
    {
      v36[0] = v1;
      v15(v11, v14, v2);
      sub_29D5B1B1C();
      sub_29D51ADA0(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v25 = sub_29D5B3E0C();
      v26 = *(v3 + 8);
      v26(v7, v2);
      v26(v11, v2);
      if (v25)
      {
        v27 = [objc_opt_self() configurationPreferringMulticolor];
        sub_29D5B2A4C();
      }

      else
      {
        v28 = v16(v14, v2);
        if (v28 == *MEMORY[0x29EDC3FB0])
        {
          (*(v3 + 96))(v14, v2);
          sub_29D4E019C(0);
          sub_29D542A7C(*&v14[*(v29 + 48)], *&v14[*(v29 + 48) + 8]);

          sub_29D51AC0C();
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_29D5B6340;
          *(v30 + 32) = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithWhite:0.85 alpha:1.0];
          *(v30 + 40) = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithWhite:0.55 alpha:1.0];
          sub_29D48F51C(0, &unk_2A1A19430, 0x29EDC7A00);
          v31 = sub_29D5B401C();

          v32 = [objc_opt_self() configurationWithPaletteColors_];

          sub_29D5B2A4C();
          v33 = sub_29D5B0EDC();
          return (*(*(v33 - 8) + 8))(v14, v33);
        }

        if (v28 == *MEMORY[0x29EDC3F70])
        {
          v34 = [objc_opt_self() configurationPreferringMulticolor];
          return sub_29D5B2A4C();
        }

        if (v28 == *MEMORY[0x29EDC3F98])
        {
          v35 = [objc_opt_self() configurationPreferringMulticolor];
          return sub_29D5B2A4C();
        }

        sub_29D5B1B3C();
        sub_29D48F51C(0, &qword_2A17A3C50, 0x29EDB9F48);
        sub_29D5B463C();
        sub_29D5B2A6C();
      }

      return (v26)(v14, v2);
    }
  }

  sub_29D51AC0C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D5B6340;
  v19 = objc_opt_self();
  *(v18 + 32) = [v19 systemWhiteColor];
  *(v18 + 40) = [v19 systemBlueColor];
  sub_29D48F51C(0, &unk_2A1A19430, 0x29EDC7A00);
  v20 = sub_29D5B401C();

  [objc_opt_self() configurationWithPaletteColors_];

  return sub_29D5B2A4C();
}

uint64_t sub_29D517AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v4 = sub_29D5B2A7C();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1BCC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B0EDC();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D51A82C(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v30 - v23;
  v31 = *(v13 + 56);
  v31(&v30 - v23, 1, 1, v12);
  v25 = *(v8 + 16);
  v35 = a1;
  v25(v11, a1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x29EDC3FB0])
  {
    sub_29D51B710(v24, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    (*(v8 + 96))(v11, v7);
    sub_29D4E019C(0);

    v26 = *(v13 + 32);
    v26(v16, v11, v12);
    v26(v24, v16, v12);
    v31(v24, 0, 1, v12);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  v27 = v35;
  sub_29D5B1B0C();
  sub_29D5173F4(v32);
  v28 = MEMORY[0x29EDB9C08];
  sub_29D51AC60(v24, v21, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D5B339C();
  (*(v8 + 8))(v27, v7);
  return sub_29D51B710(v24, &qword_2A1A193A8, v28);
}

uint64_t sub_29D517EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29D5B0EAC() & 1) == 0)
  {
    return 0;
  }

  sub_29D48F51C(0, &qword_2A1A16278, 0x29EDC9738);
  return sub_29D5B465C() & 1;
}

uint64_t sub_29D517F28(uint64_t a1)
{
  v32 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D51A82C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v31 = &v30 - v5;
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDB9C08];
  sub_29D51A82C(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v2);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v30 - v14;
  sub_29D51B63C(0, &qword_2A17A4838, &qword_2A1A193A8, v11);
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v30 - v19;
  v21 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  swift_beginAccess();
  v22 = *(v17 + 56);
  sub_29D51AC60(v1 + v21, v20, &qword_2A1A193A8, v11);
  sub_29D51AC60(v32, &v20[v22], &qword_2A1A193A8, v11);
  v23 = *(v7 + 48);
  if (v23(v20, 1, v6) == 1)
  {
    if (v23(&v20[v22], 1, v6) == 1)
    {
      return sub_29D51B710(v20, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    }

    goto LABEL_6;
  }

  sub_29D51AC60(v20, v15, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  if (v23(&v20[v22], 1, v6) == 1)
  {
    (*(v7 + 8))(v15, v6);
LABEL_6:
    sub_29D51B6B4(v20, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
LABEL_7:
    v25 = sub_29D5B410C();
    v26 = v31;
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v1;

    sub_29D57657C(0, 0, v26, &unk_29D5B9628, v27);
  }

  (*(v7 + 32))(v10, &v20[v22], v6);
  sub_29D51ADA0(&qword_2A17A4848, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
  v28 = sub_29D5B3E0C();
  v29 = *(v7 + 8);
  v29(v10, v6);
  v29(v15, v6);
  result = sub_29D51B710(v20, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  if ((v28 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D5183C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_29D5B371C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_29D5B0EDC();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  sub_29D51A82C(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D51854C, 0, 0);
}

uint64_t sub_29D51854C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  swift_beginAccess();
  v7 = MEMORY[0x29EDB9C08];
  sub_29D51AC60(v5 + v6, v2, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D51AC60(v2, v1, &qword_2A1A193A8, v7);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v8 = v0[17];
    v9 = MEMORY[0x29EDB9C08];
    sub_29D51B710(v0[18], &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    sub_29D51B710(v8, &qword_2A1A193A8, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[17], v0[14]);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_29D518740;
    v13 = v0[16];

    return sub_29D51AE9C(v13);
  }
}

uint64_t sub_29D518740(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_29D518A58;
  }

  else
  {
    v4 = sub_29D518854;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D518854()
{
  if (v0[20])
  {
    sub_29D5B40EC();
    v0[22] = sub_29D5B40DC();
    v2 = sub_29D5B40CC();

    return MEMORY[0x2A1C73D48](sub_29D518994, v2, v1);
  }

  else
  {
    v3 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_29D51B710(v3, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);

    v4 = v0[1];

    return v4();
  }
}

void sub_29D518994()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[10];

  sub_29D519FD0(v3, v4, v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2A1C73D48](sub_29D518CDC, 0, 0);
  }
}

uint64_t sub_29D518A58()
{
  v23 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_29D51B710(v2, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D5B36CC();
  v3 = v1;
  v4 = sub_29D5B370C();
  v5 = sub_29D5B427C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 96);
    v20 = *(v0 + 88);
    v21 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 72) = v6;
    v22 = v9;
    *v8 = 136446210;
    v10 = v6;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v12 = sub_29D5B3E7C();
    v14 = sub_29D501890(v12, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_29D48C000, v4, v5, "Failed to load account image for sidebars: %{public}s", v8, 0xCu);
    sub_29D48F668(v9);
    MEMORY[0x29ED5FB80](v9, -1, -1);
    MEMORY[0x29ED5FB80](v8, -1, -1);

    (*(v7 + 8))(v21, v20);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29D518CDC()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);

  (*(v3 + 8))(v2, v4);
  sub_29D51B710(v1, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D518DB4(uint64_t a1)
{
  v3 = type metadata accessor for FetchedAccountIcon(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D51A82C(0, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v23 - v9;
  sub_29D51B63C(0, &qword_2A17A4850, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  swift_beginAccess();
  v17 = *(v12 + 56);
  sub_29D51AC60(v1 + v16, v15, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  sub_29D51AC60(a1, &v15[v17], &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    if (v18(&v15[v17], 1, v3) == 1)
    {
      return sub_29D51B710(v15, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    }

    goto LABEL_6;
  }

  sub_29D51AC60(v15, v10, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  if (v18(&v15[v17], 1, v3) == 1)
  {
    sub_29D51AD44(v10);
LABEL_6:
    sub_29D51B6B4(v15, &qword_2A17A4850, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    goto LABEL_7;
  }

  v21 = v24;
  sub_29D51ACE0(&v15[v17], v24);
  if (sub_29D5B0EAC())
  {
    sub_29D48F51C(0, &qword_2A1A16278, 0x29EDC9738);
    v22 = sub_29D5B465C();
    sub_29D51AD44(v21);
    sub_29D51AD44(v10);
    result = sub_29D51B710(v15, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    if (v22)
    {
      return result;
    }
  }

  else
  {
    sub_29D51AD44(v21);
    sub_29D51AD44(v10);
    sub_29D51B710(v15, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  }

LABEL_7:
  v20 = (v1 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_delegate);
  result = swift_beginAccess();
  if (*v20)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_29D5B332C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29D519198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a4;
  v125 = a2;
  v126 = a3;
  v124 = a5;
  v6 = MEMORY[0x29EDC9C68];
  sub_29D51A82C(0, &qword_2A1A17328, MEMORY[0x29EDC17D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v123 = &v99 - v9;
  v10 = sub_29D5B34CC();
  v128 = *(v10 - 8);
  v129 = v10;
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v100 = &v99 - v15;
  sub_29D51A82C(0, &qword_2A1A17320, MEMORY[0x29EDC17F0], v6);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v103 = &v99 - v18;
  v107 = sub_29D5B2A7C();
  v106 = *(v107 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v107, v19);
  v120 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v104 = &v99 - v23;
  v113 = sub_29D5B0EDC();
  v110 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113, v24);
  v101 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x29EDB9C08];
  sub_29D51B63C(0, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v108 = v27;
  MEMORY[0x2A1C7C4A8](v27, v28);
  v109 = &v99 - v29;
  v114 = type metadata accessor for FetchedAccountIcon;
  sub_29D51A82C(0, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, v6);
  MEMORY[0x2A1C7C4A8](v30 - 8, v31);
  v33 = &v99 - v32;
  v130 = type metadata accessor for FetchedAccountIcon(0);
  v34 = *(v130 - 8);
  MEMORY[0x2A1C7C4A8](v130, v35);
  v111 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D51A82C(0, &qword_2A1A193A8, v26, v6);
  v39 = MEMORY[0x2A1C7C4A8](v37 - 8, v38);
  v105 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v112 = &v99 - v43;
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v47 = &v99 - v46;
  MEMORY[0x2A1C7C4A8](v45, v48);
  v50 = &v99 - v49;
  v51 = sub_29D5B33CC();
  v52 = *(v51 - 8);
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v102 = &v99 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v54, v56);
  v58 = &v99 - v57;
  sub_29D51A82C(0, &qword_2A17A4840, MEMORY[0x29EDC2A90], MEMORY[0x29EDC1E70]);
  v116 = v59;
  v122 = a1;
  sub_29D5B2CBC();
  sub_29D5B33BC();
  v99 = v52;
  v60 = *(v52 + 8);
  v115 = v58;
  v118 = v52 + 8;
  v119 = v51;
  v117 = v60;
  v60(v58, v51);
  v61 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  v62 = v131;
  swift_beginAccess();
  sub_29D51AC60(v62 + v61, v47, &qword_2A1A193A8, v26);
  swift_beginAccess();
  sub_29D51B5BC(v50, v62 + v61, &qword_2A1A193A8, v26);
  swift_endAccess();
  sub_29D517F28(v47);
  sub_29D51B710(v47, &qword_2A1A193A8, v26);
  sub_29D51B710(v50, &qword_2A1A193A8, v26);
  v63 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  swift_beginAccess();
  sub_29D51AC60(v62 + v63, v33, &qword_2A1A18D08, v114);
  if ((*(v34 + 48))(v33, 1, v130) == 1)
  {
    sub_29D51B710(v33, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
    v64 = v121;
    goto LABEL_13;
  }

  v65 = v111;
  sub_29D51ACE0(v33, v111);
  v66 = v110;
  v67 = v112;
  v68 = v113;
  (*(v110 + 16))(v112, v65, v113);
  (*(v66 + 56))(v67, 0, 1, v68);
  v69 = *(v108 + 48);
  v70 = MEMORY[0x29EDB9C08];
  v71 = v109;
  sub_29D51AC60(v67, v109, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D51AC60(v131 + v61, v71 + v69, &qword_2A1A193A8, v70);
  v72 = *(v66 + 48);
  v73 = v71;
  if (v72(v71, 1, v68) != 1)
  {
    v75 = v71;
    v76 = v105;
    sub_29D51AC60(v75, v105, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    v77 = v72(v73 + v69, 1, v68);
    v64 = v121;
    if (v77 != 1)
    {
      v78 = v73 + v69;
      v79 = v101;
      v80 = v113;
      (*(v66 + 32))(v101, v78, v113);
      sub_29D51ADA0(&qword_2A17A4848, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v81 = sub_29D5B3E0C();
      v82 = *(v66 + 8);
      v82(v79, v80);
      v83 = MEMORY[0x29EDB9C08];
      sub_29D51B710(v112, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      v82(v76, v80);
      sub_29D51B710(v73, &qword_2A1A193A8, v83);
      if (v81)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_29D51AD44(v65);
      goto LABEL_13;
    }

    sub_29D51B710(v112, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    (*(v66 + 8))(v76, v113);
LABEL_8:
    sub_29D51B6B4(v73, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    goto LABEL_9;
  }

  sub_29D51B710(v67, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v74 = v72(v71 + v69, 1, v68);
  v64 = v121;
  if (v74 != 1)
  {
    goto LABEL_8;
  }

  sub_29D51B710(v71, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
LABEL_11:
  v84 = *(v65 + *(v130 + 20));
  v85 = v103;
  sub_29D5B2A5C();
  v86 = v106;
  v87 = v107;
  if ((*(v106 + 48))(v85, 1, v107) != 1)
  {
    v91 = v104;
    (*(v86 + 32))(v104, v85, v87);
    v92 = v102;
    sub_29D5B2CBC();
    (*(v86 + 16))(v120, v91, v87);
    sub_29D5B338C();
    v131 = *(v131 + 16);
    v130 = sub_29D5B2CCC();
    v93 = v115;
    v94 = v92;
    v95 = v119;
    (*(v99 + 16))(v115, v94, v119);
    sub_29D5B33AC();
    sub_29D5B337C();
    v96 = sub_29D5B2A2C();
    (*(*(v96 - 8) + 56))(v123, 1, 1, v96);
    sub_29D5B336C();
    v97 = v100;
    sub_29D5B34BC();
    v98 = v117;
    v117(v93, v95);
    sub_29D5B308C();

    (*(v128 + 8))(v97, v129);
    v98(v102, v95);
    (*(v106 + 8))(v104, v107);
    return sub_29D51AD44(v111);
  }

  sub_29D51AD44(v65);
  sub_29D51B710(v85, &qword_2A1A17320, MEMORY[0x29EDC17F0]);
LABEL_13:
  v131 = *(v131 + 16);
  sub_29D5B2CCC();
  v88 = v115;
  sub_29D5B2CBC();
  sub_29D5B33AC();
  sub_29D5B337C();
  v89 = sub_29D5B2A2C();
  (*(*(v89 - 8) + 56))(v123, 1, 1, v89);
  sub_29D5B336C();
  sub_29D5B34BC();
  v117(v88, v119);
  sub_29D5B308C();
  (*(v128 + 8))(v64, v129);
}

uint64_t sub_29D519FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a3;
  v53 = a1;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D51A82C(0, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, MEMORY[0x29EDC9C68]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v48 = &v45 - v10;
  v11 = sub_29D5B0EDC();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDB9C08];
  sub_29D51B63C(0, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v45 - v19;
  sub_29D51A82C(0, &qword_2A1A193A8, v15, v4);
  v23 = MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v52 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v45 - v26;
  v46 = *(v12 + 16);
  v47 = v12 + 16;
  v46(&v45 - v26, v53, v11);
  (*(v12 + 56))(v27, 0, 1, v11);
  v28 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  swift_beginAccess();
  v29 = *(v17 + 56);
  sub_29D51AC60(v27, v20, &qword_2A1A193A8, v15);
  v51 = a2;
  sub_29D51AC60(a2 + v28, &v20[v29], &qword_2A1A193A8, v15);
  v30 = *(v12 + 48);
  if (v30(v20, 1, v11) != 1)
  {
    v31 = v52;
    sub_29D51AC60(v20, v52, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    if (v30(&v20[v29], 1, v11) != 1)
    {
      v33 = &v20[v29];
      v34 = v45;
      (*(v12 + 32))(v45, v33, v11);
      sub_29D51ADA0(&qword_2A17A4848, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v35 = sub_29D5B3E0C();
      v36 = *(v12 + 8);
      v36(v34, v11);
      v37 = MEMORY[0x29EDB9C08];
      sub_29D51B710(v27, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      v36(v31, v11);
      result = sub_29D51B710(v20, &qword_2A1A193A8, v37);
      if ((v35 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_29D51B710(v27, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
    (*(v12 + 8))(v31, v11);
    return sub_29D51B6B4(v20, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  sub_29D51B710(v27, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  if (v30(&v20[v29], 1, v11) != 1)
  {
    return sub_29D51B6B4(v20, &qword_2A17A4838, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  sub_29D51B710(v20, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
LABEL_8:
  v38 = v48;
  v46(v48, v53, v11);
  v39 = type metadata accessor for FetchedAccountIcon(0);
  v40 = v50;
  *(v38 + *(v39 + 20)) = v50;
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  v41 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  v42 = v51;
  swift_beginAccess();
  v43 = v49;
  sub_29D51AC60(v42 + v41, v49, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  swift_beginAccess();
  v44 = v40;
  sub_29D51B5BC(v38, v42 + v41, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  swift_endAccess();
  sub_29D518DB4(v43);
  sub_29D51B710(v43, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  return sub_29D51B710(v38, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
}

uint64_t sub_29D51A600()
{

  sub_29D51B710(v0 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  sub_29D51B710(v0 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29D51A6EC(uint64_t a1)
{
  sub_29D51A82C(319, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D51A82C(319, &qword_2A1A18D08, type metadata accessor for FetchedAccountIcon, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D51A82C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D51A8D8(uint64_t a1)
{
  result = sub_29D5B0EDC();
  if (v2 <= 0x3F)
  {
    result = sub_29D48F51C(319, &qword_2A1A16288, 0x29EDC7AC8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D51A97C()
{
  type metadata accessor for AccountSidebarContentConfigurationProvider(0);
  v0 = swift_allocObject();
  sub_29D5B30CC();
  swift_allocObject();
  *(v0 + 16) = sub_29D5B30BC();
  v1 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_accountId;
  v2 = sub_29D5B0EDC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_fetchedAccountIcon;
  v4 = type metadata accessor for FetchedAccountIcon(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_delegate);
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t sub_29D51AB4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13HealthRecords42AccountSidebarContentConfigurationProvider_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_29D51AC0C()
{
  if (!qword_2A1A19420)
  {
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19420);
    }
  }
}

uint64_t sub_29D51AC60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D51A82C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D51ACE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchedAccountIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D51AD44(uint64_t a1)
{
  v2 = type metadata accessor for FetchedAccountIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D51ADA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D51ADE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D4E7B8C;

  return sub_29D5183C8(a1, v4, v5, v6);
}

uint64_t sub_29D51AE9C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_29D5B1A1C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_29D5B1A2C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_29D51A82C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v1[10] = swift_task_alloc();
  v4 = sub_29D5B1A6C();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D51B09C, 0, 0);
}

uint64_t sub_29D51B09C()
{
  v1 = v0;
  v2 = v0[9];
  v3 = v1[7];
  v4 = v1[8];
  sub_29D5B208C();
  v1[14] = sub_29D5B207C();
  (*(v4 + 104))(v2, *MEMORY[0x29EDC3EC8], v3);
  v5 = swift_task_alloc();
  v1[15] = v5;
  *v5 = v1;
  v5[1] = sub_29D51B1B8;
  v7 = v1[9];
  v6 = v1[10];
  v8 = v1[3];

  return MEMORY[0x2A1C65D58](v6, v8, v7);
}

uint64_t sub_29D51B1B8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D51B360, 0, 0);
}

uint64_t sub_29D51B360()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29D51B710(v3, &qword_2A17A4430, MEMORY[0x29EDC3EE0]);
    v4 = 0;
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    (*(v2 + 32))(v0[13], v3, v1);
    sub_29D5B1A3C();
    v8 = (*(v6 + 88))(v5, v7);
    LODWORD(v5) = *MEMORY[0x29EDC3EC0];
    v9 = sub_29D5B1A5C();
    v10 = v9;
    if (v8 == v5)
    {
      v0[2] = 0;
      v4 = [v9 hr:v0 + 2 imageWithWhiteBackground:?];

      v11 = v0[2];
      if (v4)
      {
        v12 = *(v0[12] + 8);
        v13 = v11;
        v12(v0[13], v0[11]);
      }

      else
      {
        v17 = v0[12];
        v18 = v11;
        v19 = sub_29D5B0D2C();

        swift_willThrow();
        v4 = sub_29D5B1A5C();
        (*(v17 + 8))(v0[13], v0[11]);
      }
    }

    else
    {
      v15 = v0[5];
      v14 = v0[6];
      v16 = v0[4];
      (*(v0[12] + 8))(v0[13], v0[11]);
      (*(v15 + 8))(v14, v16);
      v4 = v10;
    }
  }

  v20 = v0[1];

  return v20(v4);
}

uint64_t sub_29D51B5BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D51A82C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_29D51B63C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D51A82C(255, a3, a4, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D51B6B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D51B63C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D51B710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D51A82C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D51B780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_29D523320(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_29D5B0EDC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_29D57A308(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_29D593928();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_29D5B0EDC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_29D523000(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_29D5B0EDC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_29D51B940(uint64_t a1, void *a2)
{
  v157 = a2;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v156 = *(v3 - 8);
  v164 = *(v156 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v154 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_29D5B148C();
  v137 = *(v140 - 8);
  v139 = *(v137 + 64);
  MEMORY[0x2A1C7C4A8](v140, v6);
  v135 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = MEMORY[0x29EDCA498];
  v141 = MEMORY[0x29EDC9C68];
  sub_29D5251EC(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v120 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v118 = &v112 - v13;
  v14 = sub_29D5B106C();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523BBC(0);
  v117 = v19;
  v116 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19, v20);
  v114 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v113 = &v112 - v24;
  sub_29D523C50(0);
  v122 = v25;
  v123 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v115 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523D2C(0);
  v124 = v28;
  v125 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v119 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523E6C(0);
  v128 = v31;
  v130 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v162 = (&v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D524014(0);
  v129 = v34;
  v131 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v35);
  v126 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D524240(0);
  v136 = v37;
  v138 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v38);
  v127 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5242D4(0);
  v142 = v40;
  v143 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v41);
  v132 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5244B8(0);
  v146 = v43;
  v148 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v44);
  v134 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52463C(0);
  v149 = v46;
  v150 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v47);
  v144 = &v112 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52470C(0);
  v50 = *(v49 - 8);
  v151 = v49;
  v152 = v50;
  MEMORY[0x2A1C7C4A8](v49, v51);
  v145 = &v112 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5247F8(0);
  v153 = v53;
  v155 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53, v54);
  v147 = &v112 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v56 = sub_29D5B1C8C();
  v158 = a1;
  sub_29D5B140C();
  sub_29D499EC0(&v166, v167);
  v57 = sub_29D5B136C();
  v58 = [v57 profileIdentifier];

  v159 = sub_29D5B1C6C();
  sub_29D48F668(&v166);
  sub_29D5B0C0C();
  swift_allocObject();
  v161 = sub_29D5B0BFC();
  v160 = swift_allocObject();
  *(v160 + 16) = MEMORY[0x29EDCA198];
  v59 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v166, v167);
  v60 = sub_29D5B136C();
  v61 = [v60 profileIdentifier];

  v133 = sub_29D5B1C3C();
  sub_29D48F668(&v166);
  v166 = sub_29D5B363C();
  sub_29D4F7770(0);
  v165 = MEMORY[0x29EDB8A00];
  sub_29D523CE4(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
  v62 = v113;
  sub_29D5B3B9C();

  (*(v15 + 104))(v18, *MEMORY[0x29EDC37B8], v14);
  sub_29D5B105C();
  (*(v15 + 8))(v18, v14);
  v63 = sub_29D5B369C();
  v64 = v118;
  (*(*(v63 - 8) + 56))(v118, 1, 1, v63);
  v65 = v116;
  v66 = v117;
  (*(v116 + 16))(v114, v62, v117);
  v67 = v121;
  sub_29D52488C(v64, v120, &qword_2A1A172F0, v121);
  sub_29D523CE4(&qword_2A1A16CB8, sub_29D523BBC, MEMORY[0x29EDB8940]);
  v68 = v115;
  sub_29D5B381C();
  sub_29D52490C(v64, &qword_2A1A172F0, v67);
  (*(v65 + 8))(v62, v66);
  sub_29D523E04(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D523CE4(&qword_2A1A16FD8, sub_29D523C50, MEMORY[0x29EDC3CA8]);
  v69 = v160;

  v70 = v119;
  v71 = v122;
  sub_29D5B3B7C();

  (*(v123 + 8))(v68, v71);
  sub_29D5B396C();
  sub_29D50B1A4(0);
  sub_29D523CE4(&qword_2A1A16E98, sub_29D523D2C, MEMORY[0x29EDB8908]);
  sub_29D523CE4(&qword_2A1A168C8, sub_29D50B1A4, MEMORY[0x29EDB89C0]);
  v72 = v124;
  sub_29D5B3C5C();
  (*(v125 + 8))(v70, v72);
  v73 = v137;
  v74 = v135;
  v75 = v158;
  v76 = v140;
  (*(v137 + 16))(v135, v158, v140);
  v77 = (*(v73 + 80) + 40) & ~*(v73 + 80);
  v78 = swift_allocObject();
  v79 = v163;
  v80 = v159;
  *(v78 + 2) = v163;
  *(v78 + 3) = v80;
  *(v78 + 4) = v69;
  (*(v73 + 32))(&v78[v77], v74, v76);
  sub_29D5251EC(0, &qword_2A1A17E28, sub_29D5241A0, v141);
  sub_29D524100(0);
  v81 = MEMORY[0x29EDB89A8];
  sub_29D523CE4(&qword_2A1A169A0, sub_29D523E6C, MEMORY[0x29EDB89A8]);
  sub_29D523CE4(&qword_2A1A16850, sub_29D524100, v165);

  v82 = v126;
  v83 = v128;
  v84 = v162;
  sub_29D5B3BFC();

  (*(v130 + 8))(v84, v83);
  sub_29D523CE4(&qword_2A1A16AD0, sub_29D524014, v81);
  v85 = v127;
  v86 = v129;
  sub_29D5B3BDC();
  (*(v131 + 8))(v82, v86);
  v162 = type metadata accessor for HealthRecordsGeneratorContext;
  v87 = v154;
  sub_29D524CD0(v75, v154, type metadata accessor for HealthRecordsGeneratorContext);
  v88 = *(v156 + 80);
  v89 = (v88 + 24) & ~v88;
  v90 = (v164 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  *(v91 + 16) = v79;
  sub_29D524C68(v87, v91 + v89, type metadata accessor for HealthRecordsGeneratorContext);
  *(v91 + v90) = v161;
  sub_29D524380(0, v92);
  sub_29D523CE4(&qword_2A1A16B10, sub_29D524240, MEMORY[0x29EDB89A0]);

  v93 = v132;
  v94 = v136;
  sub_29D5B3BCC();

  (*(v138 + 8))(v85, v94);
  v95 = MEMORY[0x29EDB89F8];
  sub_29D5245C4(0, &qword_2A1A167C8, MEMORY[0x29EDB89F8]);
  v156 = MEMORY[0x29EDB8990];
  sub_29D523CE4(&qword_2A1A16B88, sub_29D5242D4, MEMORY[0x29EDB8990]);
  sub_29D524C24(&qword_2A1A167D0, &qword_2A1A167C8, v95, v165);
  v96 = v134;
  v97 = v142;
  sub_29D5B3B8C();
  (*(v143 + 8))(v93, v97);
  sub_29D524CD0(v158, v87, v162);
  v98 = swift_allocObject();
  v99 = v163;
  v100 = v157;
  *(v98 + 16) = v163;
  *(v98 + 24) = v100;
  sub_29D524C68(v87, v98 + ((v88 + 32) & ~v88), type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v101 = MEMORY[0x29EDB8928];
  sub_29D523CE4(&qword_2A1A16D68, sub_29D5244B8, MEMORY[0x29EDB8928]);
  v102 = v100;
  v103 = v144;
  v104 = v146;
  sub_29D5B3BCC();

  (*(v148 + 8))(v96, v104);
  *(swift_allocObject() + 16) = v99;
  sub_29D4B2D8C(0);
  sub_29D523CE4(&qword_2A1A16B98, sub_29D52463C, v156);
  sub_29D523CE4(&qword_2A1A16780, sub_29D4B2D8C, v165);
  v105 = v145;
  v106 = v149;
  sub_29D5B3B8C();

  (*(v150 + 8))(v103, v106);
  v166 = MEMORY[0x29EDCA190];
  sub_29D523CE4(&qword_2A1A16CD8, sub_29D52470C, v101);
  v107 = v147;
  v108 = v151;
  sub_29D5B3B4C();
  (*(v152 + 8))(v105, v108);
  sub_29D523CE4(&qword_2A1A17038, sub_29D5247F8, MEMORY[0x29EDB88C8]);
  v109 = v153;
  v110 = sub_29D5B3B1C();

  (*(v155 + 8))(v107, v109);

  return v110;
}