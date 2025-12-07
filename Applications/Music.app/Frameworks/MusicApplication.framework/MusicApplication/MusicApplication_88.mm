void *sub_7E9790(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 10)) & 1) != 0 || *(a4 + *(result + 8)) && (type metadata accessor for NoticeView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0), result = sub_AB7640(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

double sub_7E982C(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  if ((v5 & 1) == 0)
  {
    sub_AB7650();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  if (*(a1 + *(type metadata accessor for Notice(0) + 40)) == 1)
  {
    NoticeView.dismiss.getter();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
      sub_AB7800();
    }
  }

  return result;
}

void sub_7E996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(type metadata accessor for NoticeView(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  sub_AB7A50();
  v10 = a3;
  sub_AB5B00();

  sub_7EECE4();
  v6 = sub_ABA150();
  sub_7ECB84(a3, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_7ECB1C(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(sub_7EED30, v8, 0.215);
}

double sub_7E9B18(uint64_t a1)
{
  sub_AB7A50();
  sub_AB5B00();

  return result;
}

uint64_t sub_7E9BA0(double a1)
{
  type metadata accessor for NoticeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F10, &qword_B2D088);
  return sub_AB7650();
}

uint64_t sub_7E9C28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB6240();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  sub_15F84(v1 + *(v9 + 28), v8, &unk_E1A190, &qword_B28630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB5C70();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90(v12, &dword_0, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_7E9E30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB6240();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16D50, &unk_B2E340);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  sub_15F84(v1 + *(v9 + 32), v8, &unk_E16D50, &unk_B2E340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB5D20();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90(v12, &dword_0, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_7EA038@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E190F0, &qword_B2D228);
  __chkstk_darwin();
  v4 = &v15 - v3;
  sub_AB5C70();
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7ECB84(v1, v8, type metadata accessor for Notice);
  sub_7E9C28(v6);
  sub_7EE290(v8, v6, v16);
  if (sub_7EA21C())
  {
    v9 = sub_AB62C0();
  }

  else
  {
    v9 = sub_AB62E0();
  }

  v10 = v17;
  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E190F8, &qword_B2D230);
  sub_7EA430(v1, v16, &v4[*(v11 + 44)]);
  v12 = sub_AB6AA0();
  sub_36B0C(v4, a1, &qword_E190F0, &qword_B2D228);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19100, &qword_B2D238) + 36);
  *v13 = v12;
  result = v16[0];
  *(v13 + 24) = v16[1];
  *(v13 + 8) = result;
  *(v13 + 40) = 0;
  return result;
}

BOOL sub_7EA21C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191D0, &qword_B2D358);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = sub_AB5C70();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E9C28(v7);
  v8 = sub_AB5C60();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = type metadata accessor for Notice(0);
    v10 = (v1 + *(v9 + 28));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v12)
      {
        sub_15F84(v1 + *(v9 + 20), v3, &qword_E191D0, &qword_B2D358);
        v14 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v14 - 8) + 48))(v3, 1, v14) != 1)
        {
          v16 = swift_getEnumCaseMultiPayload() == 1;
          sub_7EEC60(v3, type metadata accessor for Notice.Thumbnail);
          return v16;
        }

        sub_12E1C(v3, &qword_E191D0, &qword_B2D358);
      }
    }
  }

  return 0;
}

uint64_t sub_7EA430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19108, &qword_B2D240);
  __chkstk_darwin();
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19110, &qword_B2D248) - 8;
  __chkstk_darwin();
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19118, &qword_B2D250) - 8;
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19120, &qword_B2D258) - 8;
  __chkstk_darwin();
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  __chkstk_darwin();
  v18 = &v33 - v17;
  sub_7EA87C(a1, v9);
  sub_AB6B70();
  sub_AB6C10();
  v19 = sub_AB6C60();

  KeyPath = swift_getKeyPath();
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19128, &qword_B2D290) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  *&v9[*(v7 + 44)] = sub_AB6730();
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v9, v12, &qword_E19110, &qword_B2D248);
  v22 = &v12[*(v10 + 44)];
  v23 = v43;
  *(v22 + 4) = v42;
  *(v22 + 5) = v23;
  *(v22 + 6) = v44;
  v24 = v39;
  *v22 = v38;
  *(v22 + 1) = v24;
  v25 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v25;
  sub_36B0C(v12, v16, &qword_E19118, &qword_B2D250);
  v26 = &v16[*(v13 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 0;
  sub_36B0C(v16, v18, &qword_E19120, &qword_B2D258);
  *v6 = sub_AB6450();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19130, &qword_B2D298);
  sub_7EB2B8(v33, v36, &v6[*(v27 + 44)]);
  v28 = v34;
  sub_15F84(v18, v34, &qword_E19120, &qword_B2D258);
  v29 = v35;
  sub_15F84(v6, v35, &qword_E19108, &qword_B2D240);
  v30 = v37;
  sub_15F84(v28, v37, &qword_E19120, &qword_B2D258);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19138, &qword_B2D2A0);
  sub_15F84(v29, v30 + *(v31 + 48), &qword_E19108, &qword_B2D240);
  sub_12E1C(v6, &qword_E19108, &qword_B2D240);
  sub_12E1C(v18, &qword_E19120, &qword_B2D258);
  sub_12E1C(v29, &qword_E19108, &qword_B2D240);
  return sub_12E1C(v28, &qword_E19120, &qword_B2D258);
}

uint64_t sub_7EA87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19198, &qword_B2D320);
  __chkstk_darwin();
  v4 = &v46 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191A0, &qword_B2D328);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v50 = sub_AB38B0();
  v48 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191A8, &qword_B2D330);
  __chkstk_darwin();
  v51 = &v46 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191B0, &qword_B2D338);
  __chkstk_darwin();
  v54 = &v46 - v10;
  v55 = sub_AB8A60();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191B8, &qword_B2D340);
  __chkstk_darwin();
  v15 = &v46 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191C0, &qword_B2D348);
  __chkstk_darwin();
  v58 = (&v46 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191C8, &qword_B2D350);
  __chkstk_darwin();
  v59 = &v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191D0, &qword_B2D358);
  __chkstk_darwin();
  v20 = (&v46 - v19);
  v21 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  sub_15F84(a1 + v21, v20, &qword_E191D0, &qword_B2D358);
  v22 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_7EE944();
    sub_AB6610();
    v23 = &qword_E191A0;
    v24 = &qword_B2D328;
    sub_15F84(v6, v15, &qword_E191A0, &qword_B2D328);
    swift_storeEnumTagMultiPayload();
    sub_7EEA00();
    sub_7EEBD4();
    sub_AB6610();
    v25 = v6;
LABEL_9:
    v41 = v23;
    v42 = v24;
    return sub_12E1C(v25, v41, v42);
  }

  v46 = v15;
  v56 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v20;
    swift_storeEnumTagMultiPayload();
    sub_7EEA8C();

    v40 = v59;
    sub_AB6610();
    v23 = &qword_E191C8;
    v24 = &qword_B2D350;
    sub_15F84(v40, v46, &qword_E191C8, &qword_B2D350);
    swift_storeEnumTagMultiPayload();
    sub_7EEA00();
    sub_7EEBD4();
    sub_AB6610();

    v25 = v40;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_AB74B0();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    sub_AB38A0();
    sub_AB7A30();
    sub_AB5970();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    sub_15F84(v43, v4, &qword_E191A8, &qword_B2D330);
    swift_storeEnumTagMultiPayload();
    sub_7EE944();
    sub_AB6610();
    sub_15F84(v6, v46, &qword_E191A0, &qword_B2D328);
    swift_storeEnumTagMultiPayload();
    sub_7EEA00();
    sub_7EEBD4();
    sub_AB6610();
    sub_12E1C(v6, &qword_E191A0, &qword_B2D328);
    v25 = v43;
    v41 = &qword_E191A8;
    v42 = &qword_B2D330;
    return sub_12E1C(v25, v41, v42);
  }

  v62 = v13;
  v27 = v53;
  v28 = v60;
  v29 = v55;
  (*(v53 + 32))(v60, v20, v55);
  (*(v27 + 16))(v47, v28, v29);
  type metadata accessor for NoticeView.Content(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19018, &qword_B2D150);
  sub_AB5900();
  v30 = v54;
  sub_AB4830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19020, &qword_B2D158);
  sub_AB5900();
  v31 = v65;
  v32 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19200, &unk_B2D360) + 36);
  *v32 = v31;
  *(v32 + 8) = -1;
  *(v32 + 16) = 0;
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  v33 = static Border.artwork;
  v34 = qword_E73A58;
  v35 = byte_E73A60;
  sub_AB5900();
  v36 = v65;
  v37 = v30 + *(v61 + 36);
  *v37 = v33;
  *(v37 + 8) = v34;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *(v37 + 32) = -1;
  *(v37 + 40) = 0;
  sub_15F84(v30, v58, &qword_E191B0, &qword_B2D338);
  swift_storeEnumTagMultiPayload();
  sub_7EEA8C();

  v38 = v59;
  sub_AB6610();
  sub_15F84(v38, v46, &qword_E191C8, &qword_B2D350);
  swift_storeEnumTagMultiPayload();
  sub_7EEA00();
  sub_7EEBD4();
  sub_AB6610();
  sub_12E1C(v38, &qword_E191C8, &qword_B2D350);
  sub_12E1C(v30, &qword_E191B0, &qword_B2D338);
  return (*(v27 + 8))(v60, v29);
}

void sub_7EB2B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v64 = sub_AB6C70();
  v61 = *(v64 - 8);
  __chkstk_darwin();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19140, &qword_B2D2A8);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v73 = &v57 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19148, &qword_B2D2B0);
  __chkstk_darwin();
  v77 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v57 - v9;
  __chkstk_darwin();
  v76 = &v57 - v10;
  v11 = *(type metadata accessor for Notice(0) + 28);
  v71 = a1;
  v12 = (a1 + v11);
  v13 = v12[1];
  if (v13)
  {
    *&v79 = *v12;
    *(&v79 + 1) = v13;
    sub_7ABE60();

    v14 = sub_AB6F20();
    v16 = v15;
    v18 = v17;
    sub_AB6CB0();
    v19 = sub_AB6E80();
    v21 = v20;
    v23 = v22;

    sub_36B74(v14, v16, v18 & 1);

    LODWORD(v79) = sub_AB6760();
    v24 = sub_AB6E20();
    v26 = v25;
    LOBYTE(v14) = v27;
    v29 = v28;
    sub_36B74(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v24;
    v68 = v26;
    v65 = v14 & 1;
    sub_AFF30(v24, v26, v14 & 1);
    v67 = v29;

    v66 = KeyPath;

    v62 = 2;
  }

  else
  {
    v69 = 0;
    v68 = 0;
    v65 = 0;
    v67 = 0;
    v66 = 0;
    v62 = 0;
  }

  sub_7EB9C8(v71, &v79);
  v78 = *(&v79 + 1);
  v31 = v79;
  v32 = v81;
  v59 = v80;
  v58 = v82;
  v33 = v83;
  sub_AB6B70();
  v34 = v61;
  v35 = v64;
  (*(v61 + 104))(v5, enum case for Font.Leading.tight(_:), v64);
  sub_AB6CA0();

  v36 = v5;
  v37 = v32;
  v38 = v59;
  v39 = v35;
  v40 = v58;
  (*(v34 + 8))(v36, v39);
  sub_AB6C10();
  v41 = sub_AB6C60();

  v42 = swift_getKeyPath();
  v90 = v33;
  v60 = v31;
  *&v79 = v31;
  *(&v79 + 1) = v78;
  v80 = v38;
  v81 = v37;
  v61 = v37;
  v82 = v40;
  LODWORD(v64) = v33;
  v83 = v33;
  v84 = v88;
  v85 = v89;
  v86 = v42;
  v87 = v41;
  if (sub_7EA21C())
  {
    type metadata accessor for NoticeView.Content(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19018, &qword_B2D150);
    sub_AB5900();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19150, &qword_B2D2B8);
  sub_7EE648();
  v43 = v73;
  sub_AB7090();
  sub_7EE88C(v60, v78, v38, v61, v40, v64);

  v44 = swift_getKeyPath();
  v45 = v70;
  (*(v74 + 32))(v70, v43, v75);
  v46 = v45 + *(v72 + 36);
  *v46 = v44;
  *(v46 + 8) = 4;
  *(v46 + 16) = 0;
  v47 = v76;
  sub_36B0C(v45, v76, &qword_E19148, &qword_B2D2B0);
  v48 = v77;
  sub_15F84(v47, v77, &qword_E19148, &qword_B2D2B0);
  v49 = v69;
  v50 = v63;
  v51 = v68;
  *v63 = v69;
  v50[1] = v51;
  v52 = v65;
  v53 = v67;
  v50[2] = v65;
  v50[3] = v53;
  v54 = v66;
  v55 = v62;
  v50[4] = v66;
  v50[5] = v55;
  *(v50 + 48) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19190, &unk_B2D310);
  sub_15F84(v48, v50 + *(v56 + 48), &qword_E19148, &qword_B2D2B0);
  sub_AFF40(v49, v51, v52, v53, v54);
  sub_AFF90(v49, v51, v52, v53, v54);
  sub_12E1C(v47, &qword_E19148, &qword_B2D2B0);
  sub_12E1C(v48, &qword_E19148, &qword_B2D2B0);
  sub_AFF90(v49, v51, v52, v53, v54);
}

void sub_7EB9C8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v130 = a2;
  v3 = sub_AB35A0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v128 = &v122[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_AB5D20();
  v129 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v122[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v122[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178B8, &qword_B2A8D8);
  __chkstk_darwin();
  v12 = &v122[-v11];
  v13 = type metadata accessor for Notice(0);
  if (*(a1 + *(v13 + 32)))
  {
    v126 = v3;
    sub_7E9C28(v12);
    v14 = sub_AB5C70();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    v15 = sub_ABA370();
    v16 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v15];

    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
    v20 = [v19 fontDescriptorWithSymbolicTraits:32770];

    v127 = v4;
    if (v20)
    {

      v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    else
    {
      v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
      v20 = v18;
    }

    v22 = v21;

    v23 = [objc_opt_self() configurationWithFont:v22 scale:1];
    v24 = sub_AB9260();
    v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

    if (v25)
    {
      v26 = [v25 imageWithRenderingMode:2];

      v27 = v127;
      if (v26)
      {
        sub_7E9E30(v10);
        v28 = v129;
        (v129)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v29 = sub_AB5D10();
        v30 = v28[1];
        v30(v8, v6);
        v30(v10, v6);
        v125 = v26;
        if (v29)
        {
          v31 = objc_opt_self();
          v32 = (a1 + *(v13 + 24));
          v34 = *v32;
          v33 = v32[1];
          v35 = sub_AB9260();
          v36 = [v31 dominantLanguageForString:v35];

          if (v36)
          {
            sub_AB92A0();
            v37 = v128;
            sub_AB3560();
            v38 = sub_AB3580();
            (*(v27 + 8))(v37, v126);
            if (v38 == 1)
            {
              v39 = v26;
              sub_AB7520();
              v40 = sub_AB6F30();
              v42 = v41;
              v129 = v36;
              v44 = v43;
              LODWORD(v134) = sub_AB6760();
              v45 = sub_AB6E20();
              v47 = v46;
              v49 = v48;
              sub_36B74(v40, v42, v44 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v128 = sub_AB6E50();
              v127 = v50;
              LODWORD(v124) = v51;
              v126 = v52;

              sub_36B74(v45, v47, v49 & 1);

              *&v134 = v34;
              *(&v134 + 1) = v33;
              sub_7ABE60();

              v53 = sub_AB6F20();
              v55 = v54;
              v57 = v56;
              LODWORD(v134) = sub_AB6730();
              v58 = sub_AB6E20();
              v60 = v59;
              LOBYTE(v40) = v61;
              sub_36B74(v53, v55, v57 & 1);

              v62 = v128;
              v63 = v127;
              v64 = sub_AB6E50();
              v66 = v65;
              v123 = v67;
              v69 = v68;
              sub_36B74(v58, v60, v40 & 1);

              sub_36B74(v62, v63, v124 & 1);

              LOBYTE(v40) = v123 & 1;
              *&v131 = v64;
              *(&v131 + 1) = v66;
              *&v132 = v123 & 1;
              *(&v132 + 1) = v69;
              LOBYTE(v133) = 0;
              sub_AFF30(v64, v66, v123 & 1);

              sub_AFF30(v64, v66, v40);

              sub_AB6610();

              sub_36B74(v64, v66, v40);

              sub_36B74(v64, v66, v40);

LABEL_15:
              v132 = v135;
              v131 = v134;
              v133 = v136;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19180, &unk_B2D2D0);
              sub_7EE810();
              sub_AB6610();

              v84 = v134;
              v85 = v135;
              goto LABEL_16;
            }
          }
        }

        v86 = (a1 + *(v13 + 24));
        v87 = v86[1];
        *&v134 = *v86;
        *(&v134 + 1) = v87;
        sub_7ABE60();

        v88 = sub_AB6F20();
        v90 = v89;
        v92 = v91;
        LODWORD(v134) = sub_AB6730();
        v93 = sub_AB6E20();
        v95 = v94;
        v97 = v96;
        sub_36B74(v88, v90, v92 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v129 = sub_AB6E50();
        v128 = v98;
        LODWORD(v126) = v99;
        v127 = v100;

        sub_36B74(v93, v95, v97 & 1);

        v101 = v26;
        sub_AB7520();
        v102 = sub_AB6F30();
        v104 = v103;
        v106 = v105;
        LODWORD(v134) = sub_AB6760();
        v107 = sub_AB6E20();
        v109 = v108;
        LOBYTE(v90) = v110;
        sub_36B74(v102, v104, v106 & 1);

        v111 = v129;
        v112 = v128;
        v124 = sub_AB6E50();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        sub_36B74(v107, v109, v90 & 1);

        sub_36B74(v111, v112, v126 & 1);

        *&v131 = v124;
        *(&v131 + 1) = v114;
        *&v132 = v116 & 1;
        *(&v132 + 1) = v118;
        LOBYTE(v133) = 1;
        sub_AB6610();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v70 = (a1 + *(v13 + 24));
  v71 = v70[1];
  *&v134 = *v70;
  *(&v134 + 1) = v71;
  sub_7ABE60();

  v72 = sub_AB6F20();
  v74 = v73;
  v76 = v75;
  LODWORD(v134) = sub_AB6730();
  v77 = sub_AB6E20();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_36B74(v72, v74, v76 & 1);

  *&v131 = v77;
  *(&v131 + 1) = v79;
  *&v132 = v81 & 1;
  *(&v132 + 1) = v83;
  v133 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19180, &unk_B2D2D0);
  sub_7EE810();
  sub_AB6610();
  v84 = v134;
  v85 = v135;
LABEL_16:
  v119 = v136;
  v120 = v137;
  v121 = v130;
  *v130 = v84;
  v121[1] = v85;
  *(v121 + 32) = v119;
  *(v121 + 33) = v120;
}

uint64_t NoticeDismissal.presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB77F0();
  return v4;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB77F0();
  return sub_7EC6EC;
}

void sub_7EC6EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_AB7800();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB7810();
  return v4;
}

void sub_7EC7B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_7E80AC();
  sub_AB6250();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_7EC868;
}

void sub_7EC868(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_7E8378(v4, v5);
    sub_AB6260();
    sub_7E8334(*v3, v3[1]);
  }

  else
  {
    sub_AB6260();
  }

  free(v3);
}

unint64_t sub_7ECA74()
{
  result = qword_E18E88;
  if (!qword_E18E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18E88);
  }

  return result;
}

unint64_t sub_7ECAC8()
{
  result = qword_E18E90;
  if (!qword_E18E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18E90);
  }

  return result;
}

uint64_t sub_7ECB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7ECB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_7ECBF0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_7E9790(a1, a2, a3, v8);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_AB8A60();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_7E8328(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_7ECE8C()
{

  return swift_deallocObject();
}

unint64_t sub_7ECEC4()
{
  result = qword_E18EB0;
  if (!qword_E18EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E58, &qword_B2CF90);
    sub_7ECF7C();
    sub_36A00(&qword_E18EE8, &qword_E18EF0, &qword_B2D048, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18EB0);
  }

  return result;
}

unint64_t sub_7ECF7C()
{
  result = qword_E18EB8;
  if (!qword_E18EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E50, &qword_B2CF88);
    sub_7ED008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18EB8);
  }

  return result;
}

unint64_t sub_7ED008()
{
  result = qword_E18EC0;
  if (!qword_E18EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E48, &qword_B2CF80);
    sub_7ED094();
    sub_7D7A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18EC0);
  }

  return result;
}

unint64_t sub_7ED094()
{
  result = qword_E18EC8;
  if (!qword_E18EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E40, &qword_B2CF78);
    sub_7ED14C();
    sub_36A00(&qword_E18EE0, &qword_E18E98, &qword_B2D030, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18EC8);
  }

  return result;
}

unint64_t sub_7ED14C()
{
  result = qword_E18ED0;
  if (!qword_E18ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E38, &qword_B2CF70);
    sub_7ED288(&qword_E18ED8, type metadata accessor for NoticeView.Content, &unk_B2D19C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18ED0);
  }

  return result;
}

void sub_7ED208(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_7E996C(a1, a2, v6);
}

uint64_t sub_7ED288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7ED2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

unint64_t sub_7ED404()
{
  result = qword_E18F20;
  if (!qword_E18F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E80, &qword_B2CFB8);
    sub_7ED4BC();
    sub_36A00(&qword_E18F40, &qword_E18F18, &unk_B2D090, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18F20);
  }

  return result;
}

unint64_t sub_7ED4BC()
{
  result = qword_E18F28;
  if (!qword_E18F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E78, &qword_B2CFB0);
    sub_7ED548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18F28);
  }

  return result;
}

unint64_t sub_7ED548()
{
  result = qword_E18F30;
  if (!qword_E18F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E70, &qword_B2CFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E60, &qword_B2CF98);
    type metadata accessor for Notice(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E58, &qword_B2CF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E30, &qword_B2CF68);
    sub_7ECEC4();
    sub_36A00(&qword_E18EF8, &qword_E18E30, &qword_B2CF68, &protocol conformance descriptor for SequenceGesture<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_7ED288(&qword_E18F00, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E18F38, &qword_E18F08, &qword_B2D050, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18F30);
  }

  return result;
}

uint64_t sub_7ED758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_7ED82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void sub_7ED8E8(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_7EDA20(319);
    if (v2 <= 0x3F)
    {
      sub_7EDA84(319, &qword_E18FC8, &type metadata for Double, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_7EDA84(319, &qword_E18FD0, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v4 <= 0x3F)
        {
          sub_7EDA84(319, &unk_E18FD8, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7EDA20(uint64_t a1)
{
  if (!qword_E18FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18FC0, &qword_B2D110);
    v1 = sub_AB57D0();
    if (!v2)
    {
      atomic_store(v1, &qword_E18FB8);
    }
  }
}

void sub_7EDA84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_7EDAD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_7EDB1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7EDB6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E80, &qword_B2CFB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18E28, &qword_B2CF60);
  sub_7ED404();
  sub_36A00(&qword_E18F48, &qword_E18E28, &qword_B2CF60, &protocol conformance descriptor for ClosedRange<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7EDC44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19018, &qword_B2D150);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19020, &qword_B2D158);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19030, &qword_B2D168);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_7EDE58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19018, &qword_B2D150);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19020, &qword_B2D158);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19030, &qword_B2D168);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_7EE064(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_7EE1B0(319, &qword_E190A0, sub_7ECA74, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_7EE1B0(319, &qword_E190A8, sub_7ECAC8, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_7EE210(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          sub_7EE210(319, &qword_E190B0, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7EE1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_AB5910();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_7EE210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_AB57D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7EE290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E191D0, &qword_B2D358);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Notice(0);
  sub_15F84(a1 + *(v8 + 20), v7, &qword_E191D0, &qword_B2D358);
  v9 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_12E1C(v7, &qword_E191D0, &qword_B2D358);
    v10 = 0;
  }

  else
  {
    v10 = swift_getEnumCaseMultiPayload() == 1;
    sub_7EEC60(v7, type metadata accessor for Notice.Thumbnail);
  }

  v11 = sub_AB5C70();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(a2, v11);
  if (v13 == enum case for DynamicTypeSize.xSmall(_:) || v13 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_7EEC60(a1, type metadata accessor for Notice);
    v16 = 6.0;
    if (!v10)
    {
      v16 = 0.0;
    }

    v17 = 4.0;
    v18 = 12.0;
    if (v10)
    {
      v19 = 12.0;
    }

    else
    {
      v19 = 4.0;
    }
  }

  else
  {
    if (v13 == enum case for DynamicTypeSize.medium(_:) || v13 == enum case for DynamicTypeSize.large(_:) || v13 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v13 != enum case for DynamicTypeSize.xxLarge(_:) && v13 != enum case for DynamicTypeSize.xxxLarge(_:) && v13 != enum case for DynamicTypeSize.accessibility1(_:) && v13 != enum case for DynamicTypeSize.accessibility2(_:) && v13 != enum case for DynamicTypeSize.accessibility3(_:) && v13 != enum case for DynamicTypeSize.accessibility4(_:) && v13 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v12 + 8))(a2, v11);
LABEL_29:
      if (v10)
      {
        v19 = 10.0;
      }

      else
      {
        v19 = 12.0;
      }

      v22 = (a1 + *(v8 + 32));
      v23 = *v22;
      v24 = v22[1];
      sub_307CC(*v22, v24);
      result = sub_7EEC60(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_17654(v23, v24);
        v18 = 19.0;
      }

      else
      {
        v18 = 20.0;
      }

      v17 = 4.0;
      if (v10)
      {
        v16 = 10.0;
      }

      else
      {
        v16 = 4.0;
      }

      goto LABEL_41;
    }

    result = sub_7EEC60(a1, type metadata accessor for Notice);
    v16 = 10.0;
    if (!v10)
    {
      v16 = 6.0;
    }

    v18 = 20.0;
    v19 = 12.0;
    v17 = 8.0;
  }

LABEL_41:
  *a3 = v17;
  a3[1] = v19;
  a3[2] = v17;
  a3[3] = v18;
  a3[4] = v16;
  return result;
}

unint64_t sub_7EE648()
{
  result = qword_E19158;
  if (!qword_E19158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19150, &qword_B2D2B8);
    sub_7EE700();
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19158);
  }

  return result;
}

unint64_t sub_7EE700()
{
  result = qword_E19160;
  if (!qword_E19160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19168, &unk_B2D2C0);
    sub_7EE784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19160);
  }

  return result;
}

unint64_t sub_7EE784()
{
  result = qword_E19170;
  if (!qword_E19170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19178, &unk_B2FE40);
    sub_7EE810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19170);
  }

  return result;
}

unint64_t sub_7EE810()
{
  result = qword_E1AFE0;
  if (!qword_E1AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19180, &unk_B2D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AFE0);
  }

  return result;
}

double sub_7EE88C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_36B74(a1, a2, a3 & 1);
  }

  else
  {

    return sub_20E934(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_7EE8E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_AB61F0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_7EE944()
{
  result = qword_E191D8;
  if (!qword_E191D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E191A8, &qword_B2D330);
    sub_7ED288(&qword_E191E0, &type metadata accessor for CircularProgressView, &protocol conformance descriptor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E191D8);
  }

  return result;
}

unint64_t sub_7EEA00()
{
  result = qword_E191E8;
  if (!qword_E191E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E191C8, &qword_B2D350);
    sub_7EEA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E191E8);
  }

  return result;
}

unint64_t sub_7EEA8C()
{
  result = qword_E191F0;
  if (!qword_E191F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E191B0, &qword_B2D338);
    sub_7EEB18();
    sub_7D7A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E191F0);
  }

  return result;
}

unint64_t sub_7EEB18()
{
  result = qword_E191F8;
  if (!qword_E191F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19200, &unk_B2D360);
    sub_7ED288(&qword_E19208, &type metadata accessor for ArtworkImage, &protocol conformance descriptor for ArtworkImage);
    sub_7D7A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E191F8);
  }

  return result;
}

unint64_t sub_7EEBD4()
{
  result = qword_E19210;
  if (!qword_E19210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E191A0, &qword_B2D328);
    sub_7EE944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19210);
  }

  return result;
}

uint64_t sub_7EEC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_7EECE4()
{
  result = qword_E1B340;
  if (!qword_E1B340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1B340);
  }

  return result;
}

uint64_t sub_7EED48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_7EEDE0()
{
  result = qword_E19220;
  if (!qword_E19220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19100, &qword_B2D238);
    sub_36A00(&qword_E19228, &qword_E190F0, &qword_B2D228, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19220);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = sub_AB6CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_7EEF30(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MusicUIContentConfiguration.makeContentView()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v4 + 16))(v6, v2, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicUIContentView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 16);
  __swift_allocate_boxed_opaque_existential_0(a3);
  return v7(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v8 = &v11[-v7 - 8];
  sub_E8BA0(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580, &unk_B2A1C0);
  swift_dynamicCast();
  (*(a3 + 48))(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*MusicUIContentView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  MusicUIContentView.configuration.getter(a2, a3, v7);
  return sub_7EF318;
}

void sub_7EF318(uint64_t *a1, char a2, __n128 a3)
{
  v3 = *a1;
  if (a2)
  {
    v4 = v3[11];
    v5 = v3[10];
    sub_E8BA0(*a1, (v3 + 5));
    MusicUIContentView.configuration.setter(v3 + 5, v5, v4, v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v3[10], v3[11], a3);
  }

  free(v3);
}

uint64_t MPModelPlaylistType.variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = &enum case for Playlist.Variant.genius(_:);
      }

      else
      {
        v3 = &enum case for Playlist.Variant.folder(_:);
      }

      goto LABEL_12;
    }

    if (!a1)
    {
      v4 = enum case for Playlist.Variant.regular(_:);
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v3 = &enum case for Playlist.Variant.smart(_:);
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 < 7)
    {
      goto LABEL_11;
    }

    switch(a1)
    {
      case 7:
        v3 = &enum case for Playlist.Variant.personalMix(_:);
        goto LABEL_12;
      case 8:
LABEL_11:
        v3 = &enum case for Playlist.Variant.subscribed(_:);
        goto LABEL_12;
      case 9:
        v3 = &enum case for Playlist.Variant.favoriteSongs(_:);
LABEL_12:
        v4 = *v3;
LABEL_13:
        v5 = sub_AB8CB0();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = sub_AB8CB0();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a2;
  v8 = 1;
LABEL_14:

  return v6(v7, v8, 1, v9);
}

uint64_t Playlist.Variant.symbolName.getter()
{
  v1 = v0;
  v2 = sub_AB8CB0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Playlist.Variant.smart(_:))
  {
    return 0x7061687372616567;
  }

  if (v7 == enum case for Playlist.Variant.genius(_:))
  {
    return 0x7375696E6567;
  }

  if (v7 == enum case for Playlist.Variant.folder(_:))
  {
    return 0x7265646C6F66;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6F6E2E636973756DLL;
}

uint64_t ArtworkImage.ViewModel.init(artwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB8A60();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return sub_36B0C(a2, a3 + *(v7 + 20), &qword_E1AB60, &qword_B2D450);
}

uint64_t sub_7EF7D8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_7EF8C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_AB6240();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  __chkstk_darwin();
  v15 = &v20 - v14;
  sub_15F84(v8, &v20 - v14, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = a3(0);
    return (*(*(v16 - 8) + 32))(a4, v15, v16);
  }

  else
  {
    v18 = sub_AB9F40();
    v19 = sub_AB6A40();
    sub_AB4A90(v18, &dword_0, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_7EFAC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB6240();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_15F84(v2, &v13 - v8, &qword_E16CB8, &qword_B28580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_36B0C(v9, a1, &qword_E19250, &unk_B2D4D0);
  }

  v11 = sub_AB9F40();
  v12 = sub_AB6A40();
  sub_AB4A90(v11, &dword_0, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_AB6230();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB8A60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB8A60();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_12E1C(a2, &qword_E1AB60, &qword_B2D450);
    sub_12E1C(a1, &unk_E1BA30, &unk_B2A510);
    v8 = type metadata accessor for ArtworkImage.ViewModel(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, a1, v6);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_36B0C(a2, a3 + *(v13 + 20), &qword_E1AB60, &qword_B2D450);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_AB8A60();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    sub_AB8910();
    (*(v6 + 32))(a3, v8, v5);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_36B0C(a2, a3 + *(v10 + 20), &qword_E1AB60, &qword_B2D450);
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    sub_12E1C(a2, &qword_E1AB60, &qword_B2D450);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (sub_AB89E0() < 1 || sub_AB89F0() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = sub_AB89E0();
    *&result = v0 / sub_AB89F0();
  }

  return result;
}

uint64_t ArtworkImage.Info.size.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

__n128 ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_36B0C(a1, a9, &qword_E1BD70, &qword_B285C0);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_7FC194(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
  v18 = a9 + v17[6];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = a9 + v17[7];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 26);
  *(v19 + 26) = result;
  v22 = a9 + v17[8];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  return result;
}

uint64_t ArtworkImage.Size.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.init(cgSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3 & 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a4 = v5;
  *(a4 + 8) = v4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a4 + 16) = v6;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 513;
  return result;
}

uint64_t ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result / a6;
    if ((a4 & 1) == 0 && a3 > a6)
    {
      v6 = *&result / a3;
      *&result = *&result / a3 * a6;
    }
  }

  *a5 = *&result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result * a6;
    if ((a4 & 1) == 0 && a3 < a6)
    {
      v6 = *&result * a3;
      *&result = *&result * a3 / a6;
    }
  }

  *a5 = v6;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = *&result;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t sub_7F0500(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v5, &v7) & 1;
}

uint64_t ArtworkImage.init(artwork:width:height:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  if (a3)
  {
    sub_15F84(a1, &v10 - v8, &unk_E1BA30, &unk_B2A510);
    if (a5)
    {
      sub_AB4810();
    }

    else
    {
      sub_AB4800();
    }
  }

  else
  {
    sub_15F84(a1, &v10 - v8, &unk_E1BA30, &unk_B2A510);
    if (a5)
    {
      sub_AB47F0();
    }

    else
    {
      sub_AB47E0();
    }
  }

  return sub_12E1C(a1, &unk_E1BA30, &unk_B2A510);
}

double static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  sub_7FBCA0(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_7FC194(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = a3[1];
  *v14 = *a3;
  v14[1] = v15;
  *(v14 + 26) = *(a3 + 26);
  sub_7F0CE0(a1, sub_7FBA70, v13, a3, a4, a5);

  return result;
}

uint64_t sub_7F0878(uint64_t a1)
{
  v3 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19988, &qword_B2E3C0);
  __chkstk_darwin();
  v6 = (v29 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1ABA0, &qword_B2D888);
  __chkstk_darwin();
  v9 = (v29 - v8);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    sub_7FBCA0(v1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_7FC194(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ArtworkImage.Placeholder);
    v12 = (v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
    v13 = *(a1 + 16);
    *v12 = *a1;
    v12[1] = v13;
    *(v12 + 26) = *(a1 + 26);
    *v6 = sub_7FF0DC;
    v6[1] = v11;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19810, &qword_B2F8A0);
    sub_7FD8A0();
    sub_36A00(&unk_E1ABD0, &qword_E19810, &qword_B2F8A0, &protocol conformance descriptor for GeometryReader<A>);
    return sub_AB6610();
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 16);
    v17 = sub_7F2774();
    v19 = v18;
    sub_7F2774();
    v21 = v20;

    sub_7F2774();
    v23 = v22;

    v24 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v25 = *(v24 + 32);
    *(v9 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
    swift_storeEnumTagMultiPayload();
    v26 = *(v24 + 36);
    *(v9 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
    swift_storeEnumTagMultiPayload();
    *v9 = v17;
    v9[1] = v19;
    v9[2] = v21;
    v9[3] = v15;
    v9[4] = v16;
    v9[5] = v23;
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1ABB0, &unk_B2F890) + 36)) = 0;
    sub_AB7A30();
    sub_AB5970();
    v27 = (v9 + *(v7 + 36));
    v28 = v29[1];
    *v27 = v29[0];
    v27[1] = v28;
    v27[2] = v29[2];
    sub_15F84(v9, v6, &unk_E1ABA0, &qword_B2D888);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19810, &qword_B2F8A0);
    sub_7FD8A0();
    sub_36A00(&unk_E1ABD0, &qword_E19810, &qword_B2F8A0, &protocol conformance descriptor for GeometryReader<A>);
    sub_AB6610();
    return sub_12E1C(v9, &unk_E1ABA0, &qword_B2D888);
  }
}

uint64_t sub_7F0CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = sub_AB89C0();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = sub_AB4820();
  v61 = *(v18 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v20;
  __chkstk_darwin();
  v54 = &v45 - v21;
  __chkstk_darwin();
  v23 = &v45 - v22;
  __chkstk_darwin();
  v60 = &v45 - v24;
  v52 = a1;
  sub_15F84(a1, v13, &qword_E1BD70, &qword_B285C0);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_12E1C(v13, &qword_E1BD70, &qword_B285C0);
    v27 = sub_AB8A60();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_AB8A60();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_7FBC40(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_15F84(v17, v15, &unk_E1BA30, &unk_B2A510);
  if (v31)
  {
    if (v32)
    {
      sub_AB4810();
    }

    else
    {
      sub_AB4800();
    }
  }

  else if (v32)
  {
    sub_AB47F0();
  }

  else
  {
    sub_AB47E0();
  }

  v33 = v55;
  sub_12E1C(v17, &unk_E1BA30, &unk_B2A510);
  (*(v61 + 32))(v60, v23, v33);
  sub_AB47B0();
  v34 = v47;
  sub_15F84(v52, v47, &qword_E1BD70, &qword_B285C0);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_12E1C(v34, &qword_E1BD70, &qword_B285C0);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_15F84(v34 + *(v25 + 20), v57, &qword_E1AB60, &qword_B2D450);
    sub_7FBC40(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_E16A58 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_12E1C(v38, &qword_E1AB60, &qword_B2D450);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  sub_AB4790();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  sub_AB47C0();
  v42(v40, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E197E8, &qword_B2D880);
  sub_7FD7E8();
  sub_AB47A0();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t sub_7F14B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = sub_AB89C0();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = sub_AB4820();
  v61 = *(v18 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v20;
  __chkstk_darwin();
  v54 = &v45 - v21;
  __chkstk_darwin();
  v23 = &v45 - v22;
  __chkstk_darwin();
  v60 = &v45 - v24;
  v52 = a1;
  sub_15F84(a1, v13, &qword_E1BD70, &qword_B285C0);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_12E1C(v13, &qword_E1BD70, &qword_B285C0);
    v27 = sub_AB8A60();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_AB8A60();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_7FBC40(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_15F84(v17, v15, &unk_E1BA30, &unk_B2A510);
  if (v31)
  {
    if (v32)
    {
      sub_AB4810();
    }

    else
    {
      sub_AB4800();
    }
  }

  else if (v32)
  {
    sub_AB47F0();
  }

  else
  {
    sub_AB47E0();
  }

  v33 = v55;
  sub_12E1C(v17, &unk_E1BA30, &unk_B2A510);
  (*(v61 + 32))(v60, v23, v33);
  sub_AB47B0();
  v34 = v47;
  sub_15F84(v52, v47, &qword_E1BD70, &qword_B285C0);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_12E1C(v34, &qword_E1BD70, &qword_B285C0);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_15F84(v34 + *(v25 + 20), v57, &qword_E1AB60, &qword_B2D450);
    sub_7FBC40(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_E16A58 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_12E1C(v38, &qword_E1AB60, &qword_B2D450);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  sub_AB4790();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  sub_AB47C0();
  v42(v40, v33);
  sub_7FDAA4();
  sub_AB47A0();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t static ArtworkImage.with<A>(_:placeholderViewBuilder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v65 = a5;
  v80 = a4;
  v77 = a2;
  v78 = a3;
  v67 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v70 = v59 - v11;
  v12 = sub_AB89C0();
  v71 = *(v12 - 8);
  v72 = v12;
  __chkstk_darwin();
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a6;
  v81 = a6;
  v82 = a7;
  v66 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  v76 = OpaqueTypeMetadata2;
  __chkstk_darwin();
  v73 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = v59 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v59 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v59 - v23;
  v68 = sub_AB4820();
  v25 = *(v68 - 8);
  __chkstk_darwin();
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = v59 - v28;
  __chkstk_darwin();
  v64 = v59 - v29;
  __chkstk_darwin();
  v31 = v59 - v30;
  __chkstk_darwin();
  v33 = v59 - v32;
  v62 = a1;
  sub_15F84(a1, v20, &qword_E1BD70, &qword_B285C0);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v60 = *(v35 + 48);
  v59[1] = v35 + 48;
  v36 = v60(v20, 1, v34);
  v69 = v14;
  if (v36 == 1)
  {
    sub_12E1C(v20, &qword_E1BD70, &qword_B285C0);
    v37 = sub_AB8A60();
    (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  }

  else
  {
    v38 = sub_AB8A60();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v24, v20, v38);
    sub_7FBC40(v20, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v24, 0, 1, v38);
  }

  v40 = *(v80 + 8);
  v41 = *(v80 + 24);
  sub_15F84(v24, v22, &unk_E1BA30, &unk_B2A510);
  if (v40)
  {
    if (v41)
    {
      sub_AB4810();
    }

    else
    {
      sub_AB4800();
    }
  }

  else if (v41)
  {
    sub_AB47F0();
  }

  else
  {
    sub_AB47E0();
  }

  v42 = v69;
  sub_12E1C(v24, &unk_E1BA30, &unk_B2A510);
  v43 = v68;
  (*(v25 + 32))(v33, v31, v68);
  sub_AB47B0();
  v44 = v61;
  sub_15F84(v62, v61, &qword_E1BD70, &qword_B285C0);
  if (v60(v44, 1, v34) == 1)
  {
    sub_12E1C(v44, &qword_E1BD70, &qword_B285C0);
    v45 = v70;
    v46 = v71;
    v47 = v72;
    (*(v71 + 56))(v70, 1, 1, v72);
  }

  else
  {
    v45 = v70;
    sub_15F84(v44 + *(v34 + 20), v70, &qword_E1AB60, &qword_B2D450);
    sub_7FBC40(v44, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v71;
    v47 = v72;
    if ((*(v71 + 48))(v45, 1, v72) != 1)
    {
      (*(v46 + 32))(v42, v45, v47);
      goto LABEL_19;
    }
  }

  if (qword_E16A58 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v47, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v42, v48, v47);
  if ((*(v46 + 48))(v45, 1, v47) != 1)
  {
    sub_12E1C(v45, &qword_E1AB60, &qword_B2D450);
  }

LABEL_19:
  v49 = v63;
  sub_AB4790();
  (*(v46 + 8))(v42, v47);
  v50 = *(v25 + 8);
  v50(v27, v43);
  v51 = v64;
  sub_AB47C0();
  v50(v49, v43);
  v52 = v73;
  sub_AB47A0();
  v50(v51, v43);
  v50(v33, v43);
  v54 = v74;
  v53 = v75;
  v55 = *(v75 + 16);
  v56 = v76;
  v55(v74, v52, v76);
  v57 = *(v53 + 8);
  v57(v52, v56);
  v55(v67, v54, v56);
  return (v57)(v54, v56);
}

double static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_7F14B8(a1, sub_7FBB38, v12, a4, a5, a6);

  return result;
}

double sub_7F2650@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v4 = a2.n128_u64[0];
  v6 = sub_7F2774();
  v8 = v7;
  sub_7F2774();
  v10 = v9;

  sub_7F2774();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1ABB0, &unk_B2F890);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_7F2774()
{
  v1 = v0;
  v2 = sub_AB8CB0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17608, &qword_B2A220);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7FBCA0(v1, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 0x6F69646172;
        sub_AB6C00();
        return v16;
      }

      if (v15 != 10)
      {
        sub_AB6BE0();
        return 0xD000000000000013;
      }

      v16 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v15 == 6)
    {
      v16 = 30324;
      sub_AB6C00();
      return v16;
    }

    if (v15 == 7)
    {
      sub_AB6C00();
      return 0x696D2E636973756DLL;
    }

    v16 = 0x662E6E6F73726570;
LABEL_24:
    sub_AB6C00();
    return v16;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 0xD000000000000011;
      sub_AB6BE0();
      return v16;
    }

    if (v15 == 4)
    {
      v16 = 1937075312;
      sub_AB6BE0();
      return v16;
    }

    v16 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v15)
  {
    v16 = 0x636973756DLL;
LABEL_5:
    sub_AB6BE0();
    return v16;
  }

  sub_36B0C(v13, v11, &qword_E17608, &qword_B2A220);
  sub_15F84(v11, v9, &qword_E17608, &qword_B2A220);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    (*(v3 + 104))(v7, enum case for Playlist.Variant.regular(_:), v2);
    if (v17(v9, 1, v2) != 1)
    {
      sub_12E1C(v9, &qword_E17608, &qword_B2A220);
    }
  }

  else
  {
    (*(v3 + 32))(v7, v9, v2);
  }

  (*(v3 + 16))(v5, v7, v2);
  v18 = (*(v3 + 88))(v5, v2);
  if (v18 == enum case for Playlist.Variant.smart(_:))
  {
    (*(v3 + 8))(v7, v2);
    v16 = 0x7061687372616567;
  }

  else if (v18 == enum case for Playlist.Variant.genius(_:))
  {
    (*(v3 + 8))(v7, v2);
    v16 = 0x7375696E6567;
  }

  else
  {
    v19 = enum case for Playlist.Variant.folder(_:);
    v20 = *(v3 + 8);
    v21 = v18;
    v20(v7, v2);
    if (v21 == v19)
    {
      v16 = 0x7265646C6F66;
    }

    else
    {
      v16 = 0x6F6E2E636973756DLL;
      v20(v5, v2);
    }
  }

  sub_AB6BE0();
  sub_12E1C(v11, &qword_E17608, &qword_B2A220);
  return v16;
}

uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v10 = a4.n128_u64[0];
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double sub_7F2E50@<D0>(uint64_t *a2@<X8>)
{
  sub_AB5A10();
  v4 = v3;
  v6 = v5;
  v7 = sub_7F2774();
  v9 = v8;
  sub_7F2774();
  v11 = v10;

  sub_7F2774();
  v13 = v12;

  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
  swift_storeEnumTagMultiPayload();
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = v13;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1ABB0, &unk_B2F890) + 36)) = 0;
  sub_AB7A30();
  sub_AB5970();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1ABA0, &qword_B2D888) + 36));
  *v17 = v19;
  v17[1] = v20;
  result = *&v21;
  v17[2] = v21;
  return result;
}

uint64_t EnvironmentValues.placeholderStyle.getter()
{
  sub_7FBBCC();

  return sub_AB6250();
}

uint64_t sub_7F306C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_15F84(a1, &v7 - v4, &qword_E19250, &unk_B2D4D0);
  sub_15F84(v5, v3, &qword_E19250, &unk_B2D4D0);
  sub_7FBBCC();
  sub_AB6260();
  return sub_12E1C(v5, &qword_E19250, &unk_B2D4D0);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __chkstk_darwin();
  sub_15F84(a1, &v4 - v2, &qword_E19250, &unk_B2D4D0);
  sub_7FBBCC();
  sub_AB6260();
  return sub_12E1C(a1, &qword_E19250, &unk_B2D4D0);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB63D0();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __chkstk_darwin();
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v33 - v9;
  v33[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  sub_7EFAC0(v10);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &qword_E19250, &unk_B2D4D0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  else
  {
    sub_15F84((v10 + 40), &v36, &qword_E1AE90, &unk_B2FD40);
    sub_7FBC40(v10, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v37 + 1))
    {
      sub_70DF8(&v36, v39);
      v33[2] = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v33[1] = v33;
      v13 = __chkstk_darwin();
      (*(v15 + 16))(v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
      v16 = sub_AB5980();
      __swift_destroy_boxed_opaque_existential_0(v39);
      goto LABEL_6;
    }
  }

  sub_12E1C(&v36, &qword_E1AE90, &unk_B2FD40);
  sub_7EF8C0(&unk_E16CC0, &unk_B2D4C0, &type metadata accessor for ColorSchemeContrast, v6);
  v17 = [objc_opt_self() secondarySystemFillColor];
  v18 = sub_AB7510();
  (*(v34 + 8))(v6, v35);
  v39[0] = v18;
  v16 = sub_AB5980();
LABEL_6:
  sub_7EFAC0(v8);
  if (v12(v8, 1, v11) == 1)
  {
    sub_12E1C(v8, &qword_E19250, &unk_B2D4D0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
LABEL_10:
    sub_12E1C(&v36, &qword_E1AE90, &unk_B2FD40);
    sub_7EF8C0(&unk_E16CC0, &unk_B2D4C0, &type metadata accessor for ColorSchemeContrast, v6);
    v23 = [objc_opt_self() tertiaryLabelColor];
    v24 = sub_AB7510();
    (*(v34 + 8))(v6, v35);
    v39[0] = v24;
    v22 = sub_AB5980();
    goto LABEL_11;
  }

  sub_15F84(v8, &v36, &qword_E1AE90, &unk_B2FD40);
  sub_7FBC40(v8, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v37 + 1))
  {
    goto LABEL_10;
  }

  sub_70DF8(&v36, v39);
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v19 = __chkstk_darwin();
  (*(v21 + 16))(v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = sub_AB5980();
  __swift_destroy_boxed_opaque_existential_0(v39);
LABEL_11:
  v25 = sub_AB7490();
  v26 = sub_AB6AA0();

  v27 = sub_AB7A30();
  v29 = v28;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19258, &qword_B2D4E0) + 36);
  sub_7F3884(v2, v22, v30);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19260, &qword_B2D4E8);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  *a1 = v25;
  *(a1 + 8) = v16;
  *(a1 + 16) = v26;
  return result;
}

uint64_t sub_7F3884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __chkstk_darwin();
  v39 = v36 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v43 = v36 - v7;
  v8 = sub_AB7AC0();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin();
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0, &qword_B2E350);
  __chkstk_darwin();
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19940, &qword_B2E358);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  __chkstk_darwin();
  v15 = v36 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19948, &qword_B2E360);
  __chkstk_darwin();
  v17 = v36 - v16;
  v36[1] = a1;

  v18 = sub_AB7550();
  v19 = sub_AB6BC0();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);

  v20 = sub_AB6C20();
  sub_12E1C(v11, &qword_E1ADB0, &qword_B2E350);
  KeyPath = swift_getKeyPath();
  v45 = v18;
  v46 = a2;
  v47 = KeyPath;
  v48 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19950, &qword_B2E398);
  v23 = sub_7FED80();
  sub_AB6F80();

  v45 = v22;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v37;
  sub_AB7030();
  (*(v38 + 8))(v15, v24);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v25 = v39;
  sub_7EFAC0(v39);
  v26 = v25;
  v27 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_12E1C(v26, &qword_E19250, &unk_B2D4D0);
    v29 = v40;
    v28 = v41;
    v30 = v43;
    (*(v40 + 56))(v43, 1, 1, v41);
  }

  else
  {
    v31 = v26 + *(v27 + 24);
    v30 = v43;
    sub_15F84(v31, v43, &qword_E19268, &qword_B2D4F0);
    sub_7FBC40(v26, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v29 = v40;
    v28 = v41;
    if ((*(v40 + 48))(v30, 1, v41) != 1)
    {
      v32 = v42;
      (*(v29 + 32))(v42, v30, v28);
      goto LABEL_7;
    }
  }

  v32 = v42;
  (*(v29 + 104))(v42, enum case for BlendMode.normal(_:), v28);
  if ((*(v29 + 48))(v30, 1, v28) != 1)
  {
    sub_12E1C(v30, &qword_E19268, &qword_B2D4F0);
  }

LABEL_7:
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19980, &qword_B2E3B8);
  v34 = v44;
  (*(v29 + 32))(v44 + *(v33 + 36), v32, v28);
  return sub_7FEEF0(v17, v34);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = sub_AB7AC0();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  sub_160B4(a1, a4, &qword_E1AE90, &unk_B2FD40);
  sub_160B4(a2, (a4 + 40), &qword_E1AE90, &unk_B2FD40);
  return sub_160B4(a3, &a4[v9], &qword_E19268, &qword_B2D4F0);
}

uint64_t sub_7F4124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v1 = v10 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v3 = __swift_project_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  sub_AB74B0();
  v4 = sub_AB74C0();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  sub_AB7480();
  v5 = sub_AB74C0();

  v10[3] = &type metadata for Color;
  v10[4] = &protocol witness table for Color;
  v10[0] = v5;
  v6 = sub_AB7AC0();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v8 = *(v2 + 24);
  v7(&v3[v8], 1, 1, v6);
  sub_160B4(v11, v3, &qword_E1AE90, &unk_B2FD40);
  sub_160B4(v10, (v3 + 40), &qword_E1AE90, &unk_B2FD40);
  return sub_160B4(v1, &v3[v8], &qword_E19268, &qword_B2D4F0);
}

uint64_t sub_7F4364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v1 = v13 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v3 = __swift_project_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = objc_opt_self();
  v5 = [v4 quaternaryLabelColor];
  v6 = sub_AB7510();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v6;
  v7 = [v4 tertiarySystemFillColor];
  v8 = sub_AB7510();
  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v8;
  v9 = sub_AB7AC0();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v11 = *(v2 + 24);
  v10(&v3[v11], 1, 1, v9);
  sub_160B4(v14, v3, &qword_E1AE90, &unk_B2FD40);
  sub_160B4(v13, (v3 + 40), &qword_E1AE90, &unk_B2FD40);
  return sub_160B4(v1, &v3[v11], &qword_E19268, &qword_B2D4F0);
}

uint64_t sub_7F45A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v1 = v12 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  v3 = __swift_project_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  sub_AB74B0();
  v4 = sub_AB74C0();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v4;
  sub_AB74B0();
  v5 = sub_AB74C0();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = enum case for BlendMode.plusLighter(_:);
  v7 = sub_AB7AC0();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v1, v6, v7);
  v9 = *(v8 + 56);
  v9(v1, 0, 1, v7);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v10 = *(v2 + 24);
  v9(&v3[v10], 1, 1, v7);
  sub_160B4(v13, v3, &qword_E1AE90, &unk_B2FD40);
  sub_160B4(v12, (v3 + 40), &qword_E1AE90, &unk_B2FD40);
  return sub_160B4(v1, &v3[v10], &qword_E19268, &qword_B2D4F0);
}

uint64_t sub_7F4820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v1 = v9 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  __swift_allocate_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v3 = __swift_project_value_buffer(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = sub_AB7430();
  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  v5 = sub_AB7AC0();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v7 = *(v2 + 24);
  v6(&v3[v7], 1, 1, v5);
  sub_160B4(v11, v3, &qword_E1AE90, &unk_B2FD40);
  sub_160B4(v9, (v3 + 40), &qword_E1AE90, &unk_B2FD40);
  return sub_160B4(v1, &v3[v7], &qword_E19268, &qword_B2D4F0);
}

uint64_t sub_7F4A28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_7FBCA0(v7, a4, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t sub_7F4A90@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v3 = v13 - v2;
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v4 = objc_opt_self();
  v5 = [v4 tertiaryLabelColor];
  v6 = sub_AB7510();
  v13[4] = &protocol witness table for Color;
  v14[0] = v6;
  v13[3] = &type metadata for Color;
  v7 = [v4 secondarySystemFillColor];
  v13[0] = sub_AB7510();
  v8 = sub_AB7AC0();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v11 = *(v10 + 24);
  v9(&a1[v11], 1, 1, v8);
  sub_160B4(v14, a1, &qword_E1AE90, &unk_B2FD40);
  sub_160B4(v13, (a1 + 40), &qword_E1AE90, &unk_B2FD40);
  return sub_160B4(v3, &a1[v11], &qword_E19268, &qword_B2D4F0);
}

uint64_t sub_7F4C50(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_7F4DD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_7FE9B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_7F4E04(uint64_t a1)
{
  v2 = sub_7FBD08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F4E40(uint64_t a1)
{
  v2 = sub_7FBD08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F4E7C(uint64_t a1)
{
  v2 = sub_7FBD5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F4EB8(uint64_t a1)
{
  v2 = sub_7FBD5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F4F24(uint64_t a1)
{
  v2 = sub_7FBDB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F4F60(uint64_t a1)
{
  v2 = sub_7FBDB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F4F9C(uint64_t a1)
{
  v2 = sub_7FBEAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F4FD8(uint64_t a1)
{
  v2 = sub_7FBEAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F5014(uint64_t a1)
{
  v2 = sub_7FC0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F5050(uint64_t a1)
{
  v2 = sub_7FC0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F508C(uint64_t a1)
{
  v2 = sub_7FBF54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F50C8(uint64_t a1)
{
  v2 = sub_7FBF54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F5104(uint64_t a1)
{
  v2 = sub_7FC050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F5140(uint64_t a1)
{
  v2 = sub_7FC050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F517C(uint64_t a1)
{
  v2 = sub_7FBFFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F51B8(uint64_t a1)
{
  v2 = sub_7FBFFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F51F4(uint64_t a1)
{
  v2 = sub_7FC0A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F5230(uint64_t a1)
{
  v2 = sub_7FC0A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F526C(uint64_t a1)
{
  v2 = sub_7FBE58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F52A8(uint64_t a1)
{
  v2 = sub_7FBE58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_7F52F4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_7F537C(uint64_t a1)
{
  v2 = sub_7FBFA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F53B8(uint64_t a1)
{
  v2 = sub_7FBFA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F53F4(uint64_t a1)
{
  v2 = sub_7FBE04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F5430(uint64_t a1)
{
  v2 = sub_7FBE04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7F546C(uint64_t a1)
{
  v2 = sub_7FBF00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F54A8(uint64_t a1)
{
  v2 = sub_7FBF00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19270, &qword_B2D4F8);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin();
  v81 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19278, &qword_B2D500);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin();
  v78 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19280, &qword_B2D508);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin();
  v75 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19288, &qword_B2D510);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin();
  v72 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19290, &qword_B2D518);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin();
  v69 = &v51 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19298, &qword_B2D520);
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v64 = &v51 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192A0, &qword_B2D528);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v51 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192A8, &unk_B2D530);
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v62 = &v51 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17608, &qword_B2A220);
  __chkstk_darwin();
  v59 = &v51 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192B0, &qword_B2D540);
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v51 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192B8, &qword_B2D548);
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v18 = &v51 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192C0, &qword_B2D550);
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192C8, &qword_B2D558);
  v51 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v51 - v22;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E192D0, &qword_B2D560);
  v27 = *(v26 - 8);
  v86 = v26;
  v87 = v27;
  __chkstk_darwin();
  v29 = &v51 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_7FBD08();
  v85 = v29;
  sub_ABB690();
  sub_7FBCA0(v84, v25, type metadata accessor for ArtworkImage.Placeholder);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v31 = (*(*(v30 - 8) + 48))(v25, 11, v30);
  if (v31 <= 5)
  {
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v90 = 2;
        sub_7FC050();
        v37 = v85;
        v36 = v86;
        sub_ABB210();
        v41 = *(v54 + 8);
        v42 = v18;
        v43 = &v87;
      }

      else if (v31 == 4)
      {
        v91 = 3;
        sub_7FBFFC();
        v40 = v56;
        v37 = v85;
        v36 = v86;
        sub_ABB210();
        v41 = *(v57 + 8);
        v42 = v40;
        v43 = v92;
      }

      else
      {
        v92[17] = 5;
        sub_7FBF54();
        v50 = v60;
        v37 = v85;
        v36 = v86;
        sub_ABB210();
        v41 = *(v61 + 8);
        v42 = v50;
        v43 = &v93;
      }
    }

    else
    {
      if (!v31)
      {
        v44 = v59;
        sub_36B0C(v25, v59, &qword_E17608, &qword_B2A220);
        v92[16] = 4;
        sub_7FBFA8();
        v45 = v62;
        v47 = v85;
        v46 = v86;
        sub_ABB210();
        sub_AB8CB0();
        sub_7FC14C(&qword_E19320, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v48 = v66;
        sub_ABB230();
        (*(v65 + 8))(v45, v48);
        sub_12E1C(v44, &qword_E17608, &qword_B2A220);
        return (*(v87 + 8))(v47, v46);
      }

      if (v31 == 1)
      {
        v88 = 0;
        sub_7FC0F8();
        v32 = v85;
        v33 = v86;
        sub_ABB210();
        (*(v51 + 8))(v23, v21);
        return (*(v87 + 8))(v32, v33);
      }

      v89 = 1;
      sub_7FC0A4();
      v37 = v85;
      v36 = v86;
      sub_ABB210();
      v41 = *(v52 + 8);
      v42 = v20;
      v43 = &v85;
    }

    goto LABEL_23;
  }

  if (v31 > 8)
  {
    if (v31 == 9)
    {
      v92[21] = 9;
      sub_7FBE04();
      v35 = v75;
      v37 = v85;
      v36 = v86;
      sub_ABB210();
      v39 = v76;
      v38 = v77;
    }

    else if (v31 == 10)
    {
      v92[22] = 10;
      sub_7FBDB0();
      v35 = v78;
      v37 = v85;
      v36 = v86;
      sub_ABB210();
      v39 = v79;
      v38 = v80;
    }

    else
    {
      v92[23] = 11;
      sub_7FBD5C();
      v35 = v81;
      v37 = v85;
      v36 = v86;
      sub_ABB210();
      v39 = v82;
      v38 = v83;
    }

    goto LABEL_25;
  }

  if (v31 != 6)
  {
    if (v31 == 7)
    {
      v92[19] = 7;
      sub_7FBEAC();
      v35 = v69;
      v37 = v85;
      v36 = v86;
      sub_ABB210();
      v39 = v70;
      v38 = v71;
    }

    else
    {
      v92[20] = 8;
      sub_7FBE58();
      v35 = v72;
      v37 = v85;
      v36 = v86;
      sub_ABB210();
      v39 = v73;
      v38 = v74;
    }

LABEL_25:
    v41 = *(v39 + 8);
    v42 = v35;
    goto LABEL_26;
  }

  v92[18] = 6;
  sub_7FBF00();
  v49 = v64;
  v37 = v85;
  v36 = v86;
  sub_ABB210();
  v41 = *(v67 + 8);
  v42 = v49;
  v43 = &v94;
LABEL_23:
  v38 = *(v43 - 32);
LABEL_26:
  v41(v42, v38);
  return (*(v87 + 8))(v37, v36);
}

void ArtworkImage.Placeholder.hash(into:)(uint64_t a1)
{
  v2 = sub_AB8CB0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17608, &qword_B2A220);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7FBCA0(v1, v11, type metadata accessor for ArtworkImage.Placeholder);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v13 = (*(*(v12 - 8) + 48))(v11, 11, v12);
  if (v13 > 5)
  {
    if (v13 > 8)
    {
      if (v13 == 9)
      {
        v14 = 9;
      }

      else if (v13 == 10)
      {
        v14 = 10;
      }

      else
      {
        v14 = 11;
      }
    }

    else if (v13 == 6)
    {
      v14 = 6;
    }

    else if (v13 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    goto LABEL_23;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = 2;
    }

    else if (v13 == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v14 = v13 != 1;
LABEL_23:
    sub_ABB5D0(v14);
    return;
  }

  sub_36B0C(v11, v9, &qword_E17608, &qword_B2A220);
  sub_ABB5D0(4uLL);
  sub_15F84(v9, v7, &qword_E17608, &qword_B2A220);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    sub_ABB5E0(1u);
    sub_7FC14C(&qword_E19348, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
    sub_AB90E0();
    (*(v3 + 8))(v5, v2);
  }

  sub_12E1C(v9, &qword_E17608, &qword_B2A220);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  sub_ABB5C0();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return sub_ABB610();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19350, &qword_B2D568);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v99 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19358, &qword_B2D570);
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin();
  v100 = &v67 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19360, &qword_B2D578);
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v103 = &v67 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19368, &qword_B2D580);
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v98 = &v67 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19370, &qword_B2D588);
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v97 = &v67 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19378, &qword_B2D590);
  v79 = *(v81 - 8);
  __chkstk_darwin();
  v96 = &v67 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19380, &qword_B2D598);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v94 = &v67 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19388, &qword_B2D5A0);
  v78 = *(v80 - 8);
  __chkstk_darwin();
  v95 = &v67 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19390, &qword_B2D5A8);
  v75 = *(v74 - 8);
  __chkstk_darwin();
  v102 = &v67 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19398, &qword_B2D5B0);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v93 = &v67 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193A0, &qword_B2D5B8);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v92 = &v67 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193A8, &qword_B2D5C0);
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193B0, &qword_B2D5C8);
  v104 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v67 - v24;
  v26 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_7FBD08();
  v27 = v105;
  sub_ABB680();
  if (!v27)
  {
    v67 = v23;
    v29 = v102;
    v28 = v103;
    v105 = v25;
    v30 = sub_ABB1F0();
    if (*(v30 + 16) == 1)
    {
      v31 = *(v30 + 32);
      if (v31 != 12)
      {
        if (*(v30 + 32) > 5u)
        {
          v40 = v104;
          if (*(v30 + 32) > 8u)
          {
            v32 = v101;
            if (v31 == 9)
            {
              v116 = 9;
              sub_7FBE04();
              sub_ABB160();
              (*(v86 + 8))(v28, v87);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v53 - 8) + 56))(v105, 9, 11, v53);
            }

            else if (v31 == 10)
            {
              v117 = 10;
              sub_7FBDB0();
              v47 = v100;
              sub_ABB160();
              (*(v88 + 8))(v47, v89);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v48 - 8) + 56))(v105, 10, 11, v48);
            }

            else
            {
              v59 = v101;
              v118 = 11;
              sub_7FBD5C();
              v60 = v99;
              sub_ABB160();
              (*(v90 + 8))(v60, v91);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v65 - 8) + 56))(v105, 11, 11, v65);
              v32 = v59;
            }
          }

          else
          {
            v32 = v101;
            if (v31 == 6)
            {
              v113 = 6;
              sub_7FBF00();
              v49 = v96;
              sub_ABB160();
              (*(v79 + 8))(v49, v81);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v50 - 8) + 56))(v105, 6, 11, v50);
            }

            else if (v31 == 7)
            {
              v114 = 7;
              sub_7FBEAC();
              v41 = v97;
              sub_ABB160();
              (*(v82 + 8))(v41, v83);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v42 - 8) + 56))(v105, 7, 11, v42);
            }

            else
            {
              v115 = 8;
              sub_7FBE58();
              v56 = v98;
              sub_ABB160();
              (*(v84 + 8))(v56, v85);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v57 - 8) + 56))(v105, 8, 11, v57);
            }
          }

          goto LABEL_29;
        }

        if (*(v30 + 32) <= 2u)
        {
          v32 = v101;
          if (*(v30 + 32))
          {
            if (v31 == 1)
            {
              v108 = 1;
              sub_7FC0A4();
              v33 = v92;
              sub_ABB160();
              v34 = v104;
              (*(v70 + 8))(v33, v71);
              (*(v34 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v35 - 8) + 56))(v105, 2, 11, v35);
            }

            else
            {
              v109 = 2;
              sub_7FC050();
              v54 = v93;
              sub_ABB160();
              v55 = v104;
              (*(v72 + 8))(v54, v73);
              (*(v55 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
              v36 = v105;
              (*(*(v63 - 8) + 56))(v105, 3, 11, v63);
            }
          }

          else
          {
            v107 = 0;
            sub_7FC0F8();
            sub_ABB160();
            (*(v68 + 8))(v17, v69);
            (*(v104 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
            v36 = v105;
            (*(*(v62 - 8) + 56))(v105, 1, 11, v62);
          }

          goto LABEL_29;
        }

        if (v31 == 3)
        {
          v110 = 3;
          sub_7FBFFC();
          sub_ABB160();
          v51 = v104;
          (*(v75 + 8))(v29, v74);
          (*(v51 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
          v36 = v105;
          (*(*(v52 - 8) + 56))(v105, 4, 11, v52);
        }

        else
        {
          v43 = v104;
          if (v31 == 4)
          {
            v111 = 4;
            sub_7FBFA8();
            v44 = v95;
            sub_ABB160();
            sub_AB8CB0();
            sub_7FC14C(&qword_E193C0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
            v45 = v67;
            v46 = v80;
            sub_ABB190();
            (*(v78 + 8))(v44, v46);
            (*(v43 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
            (*(*(v66 - 8) + 56))(v45, 0, 11, v66);
            v36 = v105;
            sub_7FC194(v45, v105, type metadata accessor for ArtworkImage.Placeholder);
            v32 = v101;
LABEL_29:
            sub_7FC194(v36, v32, type metadata accessor for ArtworkImage.Placeholder);
            return __swift_destroy_boxed_opaque_existential_0(v106);
          }

          v112 = 5;
          sub_7FBF54();
          v58 = v94;
          sub_ABB160();
          (*(v76 + 8))(v58, v77);
          (*(v43 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
          v36 = v105;
          (*(*(v64 - 8) + 56))(v105, 5, 11, v64);
        }

        v32 = v101;
        goto LABEL_29;
      }
    }

    v37 = sub_ABAE50();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193B8, &qword_B2D5D0);
    *v39 = v21;
    sub_ABB170();
    sub_ABAE40();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v104 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v106);
}

uint64_t sub_7F7A20()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_7F7A88(uint64_t a1)
{
  sub_ABB5C0();
  ArtworkImage.Placeholder.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB8E20();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3F80();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v44 - v11;
  v13 = *(v8 + 16);
  v13(&v44 - v11, v1, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v48 = a1;
  if (v14 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v12, v7);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    v18 = 7;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.composer(_:))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    (*(*(v20 - 8) + 56))(v48, 11, 11, v20);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v12, v7);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    goto LABEL_3;
  }

  if (v14 == enum case for GenericMusicItem.genre(_:))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    (*(*(v22 - 8) + 56))(v48, 10, 11, v22);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    (*(*(v24 - 8) + 56))(v48, 5, 11, v24);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v12, v7);
    (*(v4 + 32))(v6, v12, v3);
    v25 = v48;
    sub_AB8CD0();
    (*(v4 + 8))(v6, v3);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    return (*(*(v26 - 8) + 56))(v25, 0, 11, v26);
  }

  if (v14 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v27 = enum case for Playlist.Variant.folder(_:);
    v28 = sub_AB8CB0();
    v29 = *(v28 - 8);
    v30 = v48;
    (*(v29 + 104))(v48, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    (*(*(v31 - 8) + 56))(v30, 0, 11, v31);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v14 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    (*(*(v33 - 8) + 56))(v48, 8, 11, v33);
    return (*(v8 + 8))(v12, v7);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v12, v7);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    return (*(*(v32 - 8) + 56))(v48, 9, 11, v32);
  }

  if (v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v12, v7);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    return (*(*(v23 - 8) + 56))(v48, 6, 11, v23);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v12, v7);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1;
LABEL_3:
    v18 = 1;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_E16A68 != -1)
  {
    swift_once();
  }

  v34 = sub_AB4BC0();
  __swift_project_value_buffer(v34, static Logger.artwork);
  (v13)(v47, v1, v7);
  v35 = sub_AB4BA0();
  v46 = sub_AB9F40();
  if (os_log_type_enabled(v35, v46))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v36 = 136315394;
    *(v36 + 4) = sub_7AB3E0(0xD000000000000010, 0x8000000000B744B0, &v49);
    *(v36 + 12) = 2080;
    sub_7FC14C(&qword_E17870, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v37 = v47;
    v38 = sub_ABB330();
    v40 = v39;
    v41 = *(v8 + 8);
    v41(v37, v7);
    v42 = sub_7AB3E0(v38, v40, &v49);

    *(v36 + 14) = v42;
    _os_log_impl(&dword_0, v35, v46, "Unhandled case for %s: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v8 + 8);
    v41(v47, v7);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  (*(*(v43 - 8) + 56))(v48, 1, 11, v43);
  return (v41)(v12, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v2 = &v33[-v1];
  v3 = sub_AB4630();
  v35 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_AB3F80();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin();
  v12 = &v33[-v11];
  v13 = *(v7 + 16);
  v13(&v33[-v11], v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  v20 = v14 == enum case for GenericMusicItem.album(_:) || v14 == enum case for GenericMusicItem.artist(_:) || v14 == enum case for GenericMusicItem.composer(_:) || v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:) || v14 == enum case for GenericMusicItem.editorialItem(_:) || v14 == enum case for GenericMusicItem.genre(_:);
  if (v20 || v14 == enum case for GenericMusicItem.musicMovie(_:) || v14 == enum case for GenericMusicItem.musicVideo(_:) || v14 == enum case for GenericMusicItem.playlist(_:) || v14 == enum case for GenericMusicItem.playlistFolder(_:) || v14 == enum case for GenericMusicItem.radioShow(_:) || v14 == enum case for GenericMusicItem.recordLabel(_:) || v14 == enum case for GenericMusicItem.socialProfile(_:) || v14 == enum case for GenericMusicItem.song(_:) || v14 == enum case for GenericMusicItem.station(_:) || v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:) || v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v7 + 96))(v12, v6);
    v22 = v35;
    (*(v35 + 32))(v5, v12, v3);
    sub_7A5C08(v2);
    v23 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v23 - 8) + 48))(v2, 1, v23) == 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_12E1C(v2, &qword_E1BD70, &qword_B285C0);
    }

    else if (sub_AB89E0() < 1 || sub_AB89F0() < 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_7FBC40(v2, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      sub_AB89E0();
      sub_AB89F0();
      (*(v22 + 8))(v5, v3);
      return sub_7FBC40(v2, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (qword_E16A68 != -1)
  {
    swift_once();
  }

  v24 = sub_AB4BC0();
  __swift_project_value_buffer(v24, static Logger.artwork);
  (v13)(v9, v0, v6);
  v25 = sub_AB4BA0();
  v26 = sub_AB9F40();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v27 = 136315394;
    *(v27 + 4) = sub_7AB3E0(0xD000000000000010, 0x8000000000B744B0, &v36);
    *(v27 + 12) = 2080;
    sub_7FC14C(&qword_E17870, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v34 = v26;
    v28 = sub_ABB330();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v9, v6);
    v32 = sub_7AB3E0(v28, v30, &v36);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_0, v25, v34, "Unhandled case for %s: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v9, v6);
  }

  return (v31)(v12, v6);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = sub_AB8CB0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = sub_AB9260();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB8A60();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    sub_AB8910();
    v14 = [v13 token];
    sub_ABAB50();
    swift_unknownObjectRelease();
    sub_13C80(0, &qword_E193C8, MPStoreArtworkRequestToken_ptr);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = sub_AB89C0();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_7FC194(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB89C0();
  v6 = __chkstk_darwin();
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = sub_AB92A0();
  v11 = v10;
  if (v9 == sub_AB92A0() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = sub_ABB3C0();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    sub_AB8940();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = sub_AB92A0();
  v18 = v17;
  if (v16 == sub_AB92A0() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_ABB3C0();

  if (v21)
  {
LABEL_19:
    sub_AB8960();
    goto LABEL_17;
  }

  v22 = sub_AB92A0();
  v24 = v23;
  if (v22 == sub_AB92A0() && v24 == v25)
  {

LABEL_21:
    sub_AB8970();
    goto LABEL_17;
  }

  v28 = sub_ABB3C0();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_AB92A0();
  v31 = v30;
  if (v29 == sub_AB92A0() && v31 == v32)
  {

LABEL_26:
    sub_AB89A0();
    goto LABEL_17;
  }

  v33 = sub_ABB3C0();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = sub_AB92A0();
  v36 = v35;
  if (v34 == sub_AB92A0() && v36 == v37)
  {

LABEL_31:
    sub_AB8990();
    goto LABEL_17;
  }

  v38 = sub_ABB3C0();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = sub_AB92A0();
  v41 = v40;
  if (v39 == sub_AB92A0() && v41 == v42)
  {

LABEL_36:
    sub_AB89B0();
    goto LABEL_17;
  }

  v43 = sub_ABB3C0();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = sub_AB92A0();
  v46 = v45;
  if (v44 == sub_AB92A0() && v46 == v47)
  {

LABEL_41:
    sub_AB8950();
    goto LABEL_17;
  }

  v48 = sub_ABB3C0();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = sub_AB92A0();
  v51 = v50;
  if (v49 == sub_AB92A0() && v51 == v52)
  {

LABEL_46:
    sub_AB8980();
    goto LABEL_17;
  }

  v53 = sub_ABB3C0();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_AB92A0();
  v56 = v55;
  if (v54 == sub_AB92A0() && v56 == v57)
  {

LABEL_51:
    sub_AB8930();
    goto LABEL_17;
  }

  v58 = sub_ABB3C0();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_7F9774()
{
  v0 = sub_AB89C0();
  __swift_allocate_value_buffer(v0, static Artwork.CropStyle.fallback);
  __swift_project_value_buffer(v0, static Artwork.CropStyle.fallback);
  return sub_AB8940();
}

uint64_t sub_7F97F8()
{
  v0 = sub_AB8920();
  __swift_allocate_value_buffer(v0, static Artwork.ImageFormat.fallback);
  v1 = __swift_project_value_buffer(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_13C80(0, &qword_E175A8, MPArtworkCatalog_ptr);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    sub_AB8910();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_AB8A60();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_7F99AC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.artwork);
  __swift_project_value_buffer(v0, static Logger.artwork);
  return static Logger.music(_:)(0x6B726F77747241, 0xE700000000000000);
}

uint64_t sub_7F9A68@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_7F9B0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __swift_allocate_value_buffer(v0, qword_E19230);
  v1 = __swift_project_value_buffer(v0, qword_E19230);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_7F9BAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16A70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  v3 = __swift_project_value_buffer(v2, qword_E19230);
  return sub_15F84(v3, a1, &qword_E19250, &unk_B2D4D0);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_7FBBCC();
  sub_AB6250();
  return sub_7F9D54;
}

void sub_7F9D54(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_15F84((*a1)[3], (*a1)[2], &qword_E19250, &unk_B2D4D0);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_15F84(v3[2], v3[1], &qword_E19250, &unk_B2D4D0);
    sub_AB6260();
    sub_12E1C(v6, &qword_E19250, &unk_B2D4D0);
  }

  else
  {
    sub_AB6260();
  }

  sub_12E1C(v4, &qword_E19250, &unk_B2D4D0);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_7F9E64(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_AB7AC0();
  v19 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a2, v9, &qword_E19250, &unk_B2D4D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_12E1C(v9, &qword_E19250, &unk_B2D4D0);
  }

  sub_7FC194(v9, v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_15F84(v13, &v21, &qword_E1AE90, &unk_B2FD40);
  if (v22)
  {
    sub_70DF8(&v21, v23);
    v15 = v20;
    sub_12E1C(v20, &qword_E1AE90, &unk_B2FD40);
    sub_70DF8(v23, v15);
  }

  else
  {
    sub_12E1C(&v21, &qword_E1AE90, &unk_B2FD40);
    v15 = v20;
  }

  v16 = v19;
  sub_15F84((v13 + 40), &v21, &qword_E1AE90, &unk_B2FD40);
  if (v22)
  {
    sub_70DF8(&v21, v23);
    sub_12E1C(v15 + 40, &qword_E1AE90, &unk_B2FD40);
    sub_70DF8(v23, v15 + 40);
  }

  else
  {
    sub_12E1C(&v21, &qword_E1AE90, &unk_B2FD40);
  }

  sub_15F84(&v13[*(v10 + 24)], v4, &qword_E19268, &qword_B2D4F0);
  sub_7FBC40(v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v16 + 48))(v4, 1, v5) == 1)
  {
    return sub_12E1C(v4, &qword_E19268, &qword_B2D4F0);
  }

  v17 = *(v16 + 32);
  v17(v7, v4, v5);
  v18 = *(v10 + 24);
  sub_12E1C(v15 + v18, &qword_E19268, &qword_B2D4F0);
  v17((v15 + v18), v7, v5);
  return (*(v16 + 56))(v15 + v18, 0, 1, v5);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193D0, &qword_B2D5D8) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193D8, &qword_B2D5E0) + 28);
  sub_7FA3AC(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193E0, &qword_B2D5E8);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_7FA3AC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_7EFAC0(v7);
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = sub_AB7AC0();
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v11 = *(*(v10 - 8) + 56);
    v11(v5, 1, 1, v10);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v16 = v2;
    v12 = *(v8 + 24);
    v11(&a1[v12], 1, 1, v10);
    sub_160B4(v19, a1, &qword_E1AE90, &unk_B2FD40);
    sub_160B4(v17, (a1 + 40), &qword_E1AE90, &unk_B2FD40);
    v13 = &a1[v12];
    v2 = v16;
    sub_160B4(v5, v13, &qword_E19268, &qword_B2D4F0);
    if (v9(v7, 1, v8) != 1)
    {
      sub_12E1C(v7, &qword_E19250, &unk_B2D4D0);
    }
  }

  else
  {
    sub_7FC194(v7, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_15F84(a1, v6, &qword_E19250, &unk_B2D4D0);
  v10 = *(v7 + 20);
  *(v9 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_36B0C(v6, v12 + v11, &qword_E19250, &unk_B2D4D0);
  *v9 = sub_7FC220;
  v9[1] = v12;
  sub_AB7310();
  return sub_7FBC40(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  v9 = __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v9);
  v12 = *(v8 + 20);
  *(v11 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_36B0C(v7, v14 + v13, &qword_E19250, &unk_B2D4D0);
  *v11 = sub_7FF194;
  v11[1] = v14;
  sub_AB7310();
  return sub_7FBC40(v11, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 20);
  *(v8 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  v8[1] = a2;

  sub_AB7310();
  return sub_7FBC40(v8, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (sub_AB57A0() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v9 = &v37[-1] - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AD70, &qword_B2FBE0);
  __chkstk_darwin();
  v11 = &v37[-1] - v10;
  v13 = *(v12 + 56);
  sub_15F84(a1, &v37[-1] - v10, &qword_E1BD70, &qword_B285C0);
  sub_15F84(a2, &v11[v13], &qword_E1BD70, &qword_B285C0);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_15F84(v11, v9, &qword_E1BD70, &qword_B285C0);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_7FC194(&v11[v13], v7, type metadata accessor for ArtworkImage.ViewModel);
      v15 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v7);
      sub_7FBC40(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_7FBC40(v9, type metadata accessor for ArtworkImage.ViewModel);
      sub_12E1C(v11, &qword_E1BD70, &qword_B285C0);
      if (!v15)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_7FBC40(v9, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_12E1C(v11, &unk_E1AD70, &qword_B2FBE0);
    return 0;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_12E1C(v11, &qword_E1BD70, &qword_B285C0);
LABEL_8:
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v16[5], a2 + v16[5]))
  {
    v17 = v16[6];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = *(a2 + v17 + 8);
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 != *v20)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    v22 = (a1 + v16[7]);
    v23 = *(v22 + 26);
    v24 = v22[1];
    v36 = *v22;
    v37[0] = v24;
    *(v37 + 10) = v23;
    v25 = (a2 + v16[7]);
    *&v39[10] = *(v25 + 26);
    v26 = v25[1];
    v38 = *v25;
    *v39 = v26;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v36, &v38))
    {
      v27 = v16[8];
      v28 = a1 + v27;
      v29 = *(a1 + v27);
      v30 = *(a1 + v27 + 16);
      v31 = a2 + v27;
      v32 = *(a2 + v27);
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v30)
      {
        if (v30 == 1)
        {
          if (v34 != 1 || v29 != v32)
          {
            return 0;
          }
        }

        else if (v34 != 2 || v33 | *&v32)
        {
          return 0;
        }
      }

      else if (v34 || v29 != v32 || *(v28 + 8) != v33)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB8CB0();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17608, &qword_B2A220);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19990, &qword_B2E3C8);
  __chkstk_darwin();
  v11 = &v28 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19998, &unk_B2E3D0);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  sub_7FBCA0(a1, &v28 - v14, type metadata accessor for ArtworkImage.Placeholder);
  sub_7FBCA0(a2, &v15[v17], type metadata accessor for ArtworkImage.Placeholder);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 11, v18);
  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19(&v15[v17], 11, v18) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 4)
      {
        if (v19(&v15[v17], 11, v18) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v19(&v15[v17], 11, v18) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_7FBC40(v15, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_7FBCA0(v15, v13, type metadata accessor for ArtworkImage.Placeholder);
    if (v19(&v15[v17], 11, v18))
    {
      sub_12E1C(v13, &qword_E17608, &qword_B2A220);
      goto LABEL_36;
    }

    v22 = *(v9 + 48);
    sub_36B0C(v13, v11, &qword_E17608, &qword_B2A220);
    sub_36B0C(&v15[v17], &v11[v22], &qword_E17608, &qword_B2A220);
    v24 = v28;
    v23 = v29;
    v25 = *(v28 + 48);
    if (v25(v11, 1, v29) == 1)
    {
      if (v25(&v11[v22], 1, v23) == 1)
      {
        sub_12E1C(v11, &qword_E17608, &qword_B2A220);
        goto LABEL_35;
      }
    }

    else
    {
      sub_15F84(v11, v8, &qword_E17608, &qword_B2A220);
      if (v25(&v11[v22], 1, v23) != 1)
      {
        (*(v24 + 32))(v6, &v11[v22], v23);
        sub_7FC14C(&qword_E199A0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v26 = sub_AB91C0();
        v27 = *(v24 + 8);
        v27(v6, v23);
        v27(v8, v23);
        sub_12E1C(v11, &qword_E17608, &qword_B2A220);
        if (v26)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_7FBC40(v15, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v24 + 8))(v8, v23);
    }

    sub_12E1C(v11, &qword_E19990, &qword_B2E3C8);
    goto LABEL_44;
  }

  if (v20 <= 8)
  {
    if (v20 == 6)
    {
      if (v19(&v15[v17], 11, v18) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v20 == 7)
    {
      if (v19(&v15[v17], 11, v18) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v19(&v15[v17], 11, v18) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 9)
  {
    if (v19(&v15[v17], 11, v18) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 10)
  {
    if (v19(&v15[v17], 11, v18) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v19(&v15[v17], 11, v18) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_12E1C(v15, &qword_E19998, &unk_B2E3D0);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB89C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199A8, &unk_B2E3E0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if ((sub_AB8A40() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v13 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v14 = *(v10 + 48);
  sub_15F84(a1 + v13, v12, &qword_E1AB60, &qword_B2D450);
  sub_15F84(a2 + v13, &v12[v14], &qword_E1AB60, &qword_B2D450);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_12E1C(v12, &qword_E1AB60, &qword_B2D450);
      return 1;
    }

    goto LABEL_7;
  }

  sub_15F84(v12, v9, &qword_E1AB60, &qword_B2D450);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_7:
    sub_12E1C(v12, &qword_E199A8, &unk_B2E3E0);
    return 0;
  }

  v17 = v21;
  (*(v5 + 32))(v21, &v12[v14], v4);
  sub_7FC14C(&qword_E199B0, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
  v18 = sub_AB91C0();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_12E1C(v12, &qword_E1AB60, &qword_B2D450);
  return (v18 & 1) != 0;
}

uint64_t sub_7FBB00()
{

  return swift_deallocObject();
}

double sub_7FBB38@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_7FBBCC()
{
  result = qword_E19248;
  if (!qword_E19248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19248);
  }

  return result;
}

uint64_t sub_7FBC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7FBCA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_7FBD08()
{
  result = qword_E192D8;
  if (!qword_E192D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E192D8);
  }

  return result;
}

unint64_t sub_7FBD5C()
{
  result = qword_E192E0;
  if (!qword_E192E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E192E0);
  }

  return result;
}

unint64_t sub_7FBDB0()
{
  result = qword_E192E8;
  if (!qword_E192E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E192E8);
  }

  return result;
}

unint64_t sub_7FBE04()
{
  result = qword_E192F0;
  if (!qword_E192F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E192F0);
  }

  return result;
}

unint64_t sub_7FBE58()
{
  result = qword_E192F8;
  if (!qword_E192F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E192F8);
  }

  return result;
}

unint64_t sub_7FBEAC()
{
  result = qword_E19300;
  if (!qword_E19300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19300);
  }

  return result;
}

unint64_t sub_7FBF00()
{
  result = qword_E19308;
  if (!qword_E19308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19308);
  }

  return result;
}

unint64_t sub_7FBF54()
{
  result = qword_E19310;
  if (!qword_E19310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19310);
  }

  return result;
}

unint64_t sub_7FBFA8()
{
  result = qword_E19318;
  if (!qword_E19318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19318);
  }

  return result;
}

unint64_t sub_7FBFFC()
{
  result = qword_E19328;
  if (!qword_E19328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19328);
  }

  return result;
}

unint64_t sub_7FC050()
{
  result = qword_E19330;
  if (!qword_E19330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19330);
  }

  return result;
}

unint64_t sub_7FC0A4()
{
  result = qword_E19338;
  if (!qword_E19338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19338);
  }

  return result;
}

unint64_t sub_7FC0F8()
{
  result = qword_E19340;
  if (!qword_E19340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19340);
  }

  return result;
}

uint64_t sub_7FC14C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7FC194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + v2));
    }

    if (*(v3 + 8))
    {
      __swift_destroy_boxed_opaque_existential_0(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_AB7AC0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_7FC3C8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_7F9E64(a1, v4);
}

uint64_t sub_7FC4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB8A60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_7FC5E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_AB8A60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_7FC6F0(uint64_t a1)
{
  sub_AB8A60();
  if (v1 <= 0x3F)
  {
    sub_7FCAEC(319, &unk_E19458, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_7FC7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7FC8F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_7FCA08(uint64_t a1)
{
  sub_7FCAEC(319, &qword_E194F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      sub_7FCB50();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_7FCAEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_7FCB50()
{
  if (!qword_E194F8)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E194F8);
    }
  }
}

uint64_t sub_7FCBA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_7FCBF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_7FCC68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7FCCF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_7FCD84(uint64_t a1)
{
  sub_7FCDDC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_7FCDDC()
{
  if (!qword_E195B8)
  {
    sub_7FCAEC(0, &unk_E195C0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_E195B8);
    }
  }
}

uint64_t sub_7FCE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195E8, &qword_B2D830);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0, &qword_B2D838);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_7FCFB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195E8, &qword_B2D830);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0, &qword_B2D838);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_7FD0F4(uint64_t a1)
{
  _s3__C6CGSizeVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_7FD48C(319, &qword_E19660, &qword_E19250, &unk_B2D4D0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_7FCAEC(319, &unk_E19668, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_7FD220(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_7FD2FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19268, &qword_B2D4F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7FD3AC(uint64_t a1)
{
  sub_7FD48C(319, &qword_E19710, &qword_E19718, &unk_B2D850, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_7FCAEC(319, &unk_E19720, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7FD48C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_7FD504(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195E8, &qword_B2D830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_7FD5D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195E8, &qword_B2D830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7FD684(uint64_t a1)
{
  sub_7FD734();
  if (v1 <= 0x3F)
  {
    sub_7FD48C(319, &qword_E19660, &qword_E19250, &unk_B2D4D0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_7FD734()
{
  result = qword_E1AA30;
  if (!qword_E1AA30)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_E1AA30);
  }

  return result;
}

uint64_t sub_7FD784()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E197E8, &qword_B2D880);
  sub_7FD7E8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_7FD7E8()
{
  result = qword_E1AB90;
  if (!qword_E1AB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E197E8, &qword_B2D880);
    sub_7FD8A0();
    sub_36A00(&unk_E1ABD0, &qword_E19810, &qword_B2F8A0, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AB90);
  }

  return result;
}

unint64_t sub_7FD8A0()
{
  result = qword_E197F0;
  if (!qword_E197F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1ABA0, &qword_B2D888);
    sub_7FD92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E197F0);
  }

  return result;
}

unint64_t sub_7FD92C()
{
  result = qword_E197F8;
  if (!qword_E197F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1ABB0, &unk_B2F890);
    sub_7FC14C(&qword_E19800, type metadata accessor for ArtworkImage.Placeholder.View, &protocol conformance descriptor for ArtworkImage.Placeholder.View);
    sub_36A00(&unk_E1ABC0, &qword_E19808, &unk_B2D890, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E197F8);
  }

  return result;
}

unint64_t sub_7FDAA4()
{
  result = qword_E1BDA0;
  if (!qword_E1BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDA0);
  }

  return result;
}

unint64_t sub_7FDB00()
{
  result = qword_E19818;
  if (!qword_E19818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19258, &qword_B2D4E0);
    sub_7FDBB8();
    sub_36A00(&qword_E19840, &qword_E19260, &qword_B2D4E8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19818);
  }

  return result;
}

unint64_t sub_7FDBB8()
{
  result = qword_E19820;
  if (!qword_E19820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19828, &qword_B2D8A0);
    sub_36A00(&qword_E19830, &qword_E19838, &qword_B2D8A8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19820);
  }

  return result;
}

unint64_t sub_7FDC74()
{
  result = qword_E19848;
  if (!qword_E19848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E193D0, &qword_B2D5D8);
    sub_36A00(&qword_E19850, &qword_E193E0, &qword_B2D5E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E19858, &qword_E193D8, &qword_B2D5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19848);
  }

  return result;
}

uint64_t sub_7FDD58(uint64_t *a1)
{
  type metadata accessor for PlaceholderStyleModifier(255);
  sub_AB5D50();
  sub_7FC14C(&unk_E1AE50, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7FE018()
{
  result = qword_E19860;
  if (!qword_E19860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19860);
  }

  return result;
}

unint64_t sub_7FE070()
{
  result = qword_E19868;
  if (!qword_E19868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19868);
  }

  return result;
}

unint64_t sub_7FE0C8()
{
  result = qword_E19870;
  if (!qword_E19870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19870);
  }

  return result;
}

unint64_t sub_7FE120()
{
  result = qword_E19878;
  if (!qword_E19878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19878);
  }

  return result;
}

unint64_t sub_7FE178()
{
  result = qword_E19880;
  if (!qword_E19880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19880);
  }

  return result;
}

unint64_t sub_7FE1D0()
{
  result = qword_E19888;
  if (!qword_E19888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19888);
  }

  return result;
}

unint64_t sub_7FE228()
{
  result = qword_E19890;
  if (!qword_E19890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19890);
  }

  return result;
}

unint64_t sub_7FE280()
{
  result = qword_E19898;
  if (!qword_E19898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19898);
  }

  return result;
}

unint64_t sub_7FE2D8()
{
  result = qword_E198A0;
  if (!qword_E198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198A0);
  }

  return result;
}

unint64_t sub_7FE330()
{
  result = qword_E198A8;
  if (!qword_E198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198A8);
  }

  return result;
}

unint64_t sub_7FE388()
{
  result = qword_E198B0;
  if (!qword_E198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198B0);
  }

  return result;
}

unint64_t sub_7FE3E0()
{
  result = qword_E198B8;
  if (!qword_E198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198B8);
  }

  return result;
}

unint64_t sub_7FE438()
{
  result = qword_E198C0;
  if (!qword_E198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198C0);
  }

  return result;
}

unint64_t sub_7FE490()
{
  result = qword_E198C8;
  if (!qword_E198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198C8);
  }

  return result;
}

unint64_t sub_7FE4E8()
{
  result = qword_E198D0;
  if (!qword_E198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198D0);
  }

  return result;
}

unint64_t sub_7FE540()
{
  result = qword_E198D8;
  if (!qword_E198D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198D8);
  }

  return result;
}

unint64_t sub_7FE598()
{
  result = qword_E198E0;
  if (!qword_E198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198E0);
  }

  return result;
}

unint64_t sub_7FE5F0()
{
  result = qword_E198E8;
  if (!qword_E198E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198E8);
  }

  return result;
}

unint64_t sub_7FE648()
{
  result = qword_E198F0;
  if (!qword_E198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198F0);
  }

  return result;
}

unint64_t sub_7FE6A0()
{
  result = qword_E198F8;
  if (!qword_E198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E198F8);
  }

  return result;
}

unint64_t sub_7FE6F8()
{
  result = qword_E19900;
  if (!qword_E19900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19900);
  }

  return result;
}

unint64_t sub_7FE750()
{
  result = qword_E19908;
  if (!qword_E19908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19908);
  }

  return result;
}

unint64_t sub_7FE7A8()
{
  result = qword_E19910;
  if (!qword_E19910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19910);
  }

  return result;
}

unint64_t sub_7FE800()
{
  result = qword_E19918;
  if (!qword_E19918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19918);
  }

  return result;
}

unint64_t sub_7FE858()
{
  result = qword_E19920;
  if (!qword_E19920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19920);
  }

  return result;
}

unint64_t sub_7FE8B0()
{
  result = qword_E19928;
  if (!qword_E19928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19928);
  }

  return result;
}

unint64_t sub_7FE908()
{
  result = qword_E19930;
  if (!qword_E19930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19930);
  }

  return result;
}

unint64_t sub_7FE960()
{
  result = qword_E19938;
  if (!qword_E19938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19938);
  }

  return result;
}

uint64_t sub_7FE9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_ABB3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (sub_ABB3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (sub_ABB3C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (sub_ABB3C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (sub_ABB3C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_7FED80()
{
  result = qword_E19958;
  if (!qword_E19958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19950, &qword_B2E398);
    sub_7FEE38();
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19958);
  }

  return result;
}

unint64_t sub_7FEE38()
{
  result = qword_E19960;
  if (!qword_E19960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19968, &qword_B2E3A0);
    sub_36A00(&qword_E19970, &qword_E19978, &qword_B2E3A8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19960);
  }

  return result;
}

uint64_t sub_7FEEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19948, &qword_B2E360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_21()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = sub_AB8CB0();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_7FF0DC@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_7F2E50(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_801D90(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_7FF1E0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_AB5620();
  return sub_A8F90;
}

uint64_t sub_7FF268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8038CC();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7FF2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8038CC();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7FF330(uint64_t a1)
{
  v2 = sub_8038CC();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v10[3] = sub_AB5BE0();
  v10[4] = &protocol witness table for TintShapeStyle;
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_AB5BD0();
  v9 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v9, v1);
  v7 = v6;
  sub_8027A4(&v9);
  return v7;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_E8BA0((a1 + 1), v57);
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v23 = sub_AB9260();
      v24 = [objc_opt_self() systemImageNamed:v23];

      if (v24)
      {
        v25 = [v24 imageWithConfiguration:*a1];

        v26 = [v25 imageWithRenderingMode:2];
        sub_AB7520();
        v27 = sub_AB6F30();
        v29 = v28;
        v31 = v30;
        v32 = sub_AB6E50();
        v34 = v33;
        v36 = v35;
        sub_36B74(v27, v29, v31 & 1);

        v37 = sub_AB6E20();
        v39 = v38;
        v41 = v40;
        v43 = v42;
        sub_36B74(v32, v34, v36 & 1);

        v44 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
        v45 = *v44;
        v46 = v44[1];

        Text.accessibilityLabel(_:)(v45, v46, v37, v39, v41 & 1, v43);

        sub_36B74(v37, v39, v41 & 1);

        __swift_destroy_boxed_opaque_existential_0(v57);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        sub_AB7550();
        v2 = sub_AB6F30();
        v4 = v3;
        v6 = v5;
        v7 = sub_AB6E50();
        v9 = v8;
        v11 = v10;
        sub_36B74(v2, v4, v6 & 1);

        LODWORD(v57[0]) = sub_AB6760();
        v12 = sub_AB6E20();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        sub_36B74(v7, v9, v11 & 1);

        v19 = AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();
        v20 = *v19;
        v21 = v19[1];

        Text.accessibilityLabel(_:)(v20, v21, v12, v14, v16 & 1, v18);

        sub_36B74(v12, v14, v16 & 1);
      }

      else
      {
        v48 = String.nonBreakingSpace.unsafeMutableAddressor();
        v50 = *v48;
        v49 = v48[1];
        v55 = v50;
        v56 = v49;

        v51 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v53 = *v51;
        v52 = v51[1];

        v58._countAndFlagsBits = v53;
        v58._object = v52;
        sub_AB94A0(v58);

        v54 = v55;
        LODWORD(v55) = sub_AB6760();
        Text.playableForegroundStyle<A>(_:isPlayable:)(&v55, a2 & 1, v54, v56, 0, _swiftEmptyArrayStorage, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = sub_AB5BE0();
  a1[5] = &protocol witness table for TintShapeStyle;
  __swift_allocate_boxed_opaque_existential_0(a1 + 1);
  result = sub_AB5BD0();
  *a1 = v5;
  return result;
}

uint64_t sub_7FF9F0()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
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

uint64_t sub_7FFA6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_802978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_7FFA94(uint64_t a1)
{
  v2 = sub_8027D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FFAD0(uint64_t a1)
{
  v2 = sub_8027D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7FFB0C(uint64_t a1)
{
  v2 = sub_802924();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FFB48(uint64_t a1)
{
  v2 = sub_802924();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_7FFBA0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_7FFC30(uint64_t a1)
{
  v2 = sub_8028D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FFC6C(uint64_t a1)
{
  v2 = sub_8028D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7FFCA8(uint64_t a1)
{
  v2 = sub_80287C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FFCE4(uint64_t a1)
{
  v2 = sub_80287C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7FFD20(uint64_t a1)
{
  v2 = sub_802828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FFD5C(uint64_t a1)
{
  v2 = sub_802828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199B8, &qword_B2E3F0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v28 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199C0, &qword_B2E3F8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin();
  v24 = &v22 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199C8, &qword_B2E400);
  v23 = *(v25 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199D0, &qword_B2E408);
  v22 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199D8, &qword_B2E410);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_8027D4();
  v16 = v31;
  sub_ABB690();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_802924();
      sub_ABB210();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_80287C();
      v17 = v24;
      sub_ABB210();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_802828();
      v17 = v28;
      sub_ABB210();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_8028D0();
  sub_ABB210();
  v21 = v25;
  sub_ABB250();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_800244@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_802AE0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v58 = sub_AB4BC0();
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB88F0();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB8E20();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin();
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB86C0();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin();
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB8030();
  isa = v10[-1].isa;
  v67 = v10;
  __chkstk_darwin();
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19A08, &qword_B2E418);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = sub_AB8770();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB3F80();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin();
  v23 = &v53 - v22;
  v24 = *(v19 + 16);
  v55 = v1;
  v25 = v1;
  v26 = v24;
  (v24)(&v53 - v22, v25, v18, v21);
  v27 = (*(v19 + 88))(v23, v18);
  if (v27 != enum case for GenericMusicItem.album(_:))
  {
    if (v27 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v31 = v68;
      v30 = v69;
      (*(v68 + 32))(v5, v23, v69);
      sub_AB8880();
      v32 = sub_AB40A0();
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v31 + 8))(v5, v30);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.composer(_:) || v27 == enum case for GenericMusicItem.creditArtist(_:) || v27 == enum case for GenericMusicItem.curator(_:) || v27 == enum case for GenericMusicItem.editorialItem(_:) || v27 == enum case for GenericMusicItem.genre(_:) || v27 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v65;
      v34 = isa;
      v35 = v67;
      (*(isa + 4))(v65, v23, v67);
      sub_AB7FD0();
LABEL_15:
      v36 = sub_AB40A0();
      (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v34 + 1))(v33, v35);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v62;
      v34 = v63;
      v35 = v64;
      v63[4](v62, v23, v64);
      sub_AB8C10();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.playlistFolder(_:) || v27 == enum case for GenericMusicItem.radioShow(_:) || v27 == enum case for GenericMusicItem.recordLabel(_:) || v27 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.song(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v59;
      v34 = v60;
      v35 = v61;
      v60[4](v59, v23, v61);
      sub_AB85B0();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.station(_:) || v27 == enum case for GenericMusicItem.tvEpisode(_:) || v27 == enum case for GenericMusicItem.tvSeason(_:) || v27 == enum case for GenericMusicItem.tvShow(_:) || v27 == enum case for GenericMusicItem.uploadedAudio(_:) || v27 == enum case for GenericMusicItem.uploadedVideo(_:) || v27 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v19 + 8))(v23, v18);
    }

    else
    {
      v37 = Logger.badging.unsafeMutableAddressor();
      v39 = v56;
      v38 = v57;
      v40 = v58;
      (*(v56 + 16))(v57, v37, v58);
      v41 = v54;
      v26(v54, v55, v18);
      v42 = sub_AB4BA0();
      v43 = sub_AB9F40();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        LODWORD(v68) = v43;
        v45 = v44;
        v69 = swift_slowAlloc();
        v70 = v69;
        *v45 = 136315394;
        *(v45 + 4) = sub_7AB3E0(0xD000000000000010, 0x8000000000B744B0, &v70);
        *(v45 + 12) = 2080;
        sub_803920(&qword_E17870, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v46 = sub_ABB330();
        v48 = v47;
        v49 = *(v19 + 8);
        v67 = v42;
        v49(v41, v18);
        v50 = sub_7AB3E0(v46, v48, &v70);

        *(v45 + 14) = v50;
        v51 = v67;
        _os_log_impl(&dword_0, v67, v68, "Unhandled case for favorite badge with item: %s, %s", v45, 0x16u);
        swift_arrayDestroy();

        (*(v39 + 8))(v57, v58);
      }

      else
      {

        v49 = *(v19 + 8);
        v49(v41, v18);
        (*(v39 + 8))(v38, v40);
      }

      v49(v23, v18);
    }

    return 2;
  }

  (*(v19 + 96))(v23, v18);
  (*(v15 + 32))(v17, v23, v14);
  sub_AB86E0();
  v28 = sub_AB40A0();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
  (*(v15 + 8))(v17, v14);
  return v29;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v96) = a1;
  v68 = sub_AB4BC0();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_AB4710();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB44B0();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin();
  v92 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_AB46B0();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19A10, &qword_B2E420);
  __chkstk_darwin();
  v95 = &v62 - v6;
  v7 = sub_AB4770();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin();
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_AB4630();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_AB45E0();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB8E20();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin();
  v87 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB8AE0();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin();
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB86C0();
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin();
  v84 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB8030();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin();
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19A18, &qword_B2E428);
  __chkstk_darwin();
  v21 = &v62 - v20;
  v22 = sub_AB8770();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_AB3F80();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v62 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin();
  v31 = &v62 - v30;
  v32 = *(v27 + 16);
  v32(&v62 - v30, v97, v26, v29);
  v33 = (*(v27 + 88))(v31, v26);
  if (v33 != enum case for GenericMusicItem.album(_:))
  {
    v35 = v96;
    if (v33 == enum case for GenericMusicItem.artist(_:) || v33 == enum case for GenericMusicItem.composer(_:) || v33 == enum case for GenericMusicItem.creditArtist(_:) || v33 == enum case for GenericMusicItem.curator(_:) || v33 == enum case for GenericMusicItem.editorialItem(_:) || v33 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v92;
      v37 = v93;
      v38 = v94;
      (*(v93 + 32))(v92, v31, v94);
      v39 = v95;
      sub_AB4470();
LABEL_11:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v39, v35 & 1);
      (*(v37 + 8))(v36, v38);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v41 = v90;
      v40 = v91;
      (*(v90 + 32))(v19, v31, v91);
      sub_AB7FF0();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v41 + 8))(v19, v40);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v87;
      v43 = v88;
      v44 = v89;
      (*(v88 + 32))(v87, v31, v89);
      sub_AB8C00();
LABEL_16:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v43 + 8))(v42, v44);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlistFolder(_:) || v33 == enum case for GenericMusicItem.radioShow(_:) || v33 == enum case for GenericMusicItem.recordLabel(_:) || v33 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.song(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v84;
      v43 = v85;
      v44 = v86;
      (*(v85 + 32))(v84, v31, v86);
      sub_AB8630();
      goto LABEL_16;
    }

    if (v33 == enum case for GenericMusicItem.station(_:))
    {
      (*(v27 + 96))(v31, v26);
      v45 = v81;
      v46 = v82;
      v47 = v83;
      (*(v82 + 32))(v81, v31, v83);
      sub_AB8AA0();
LABEL_25:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v46 + 8))(v45, v47);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v78;
      v37 = v79;
      v38 = v80;
      (*(v79 + 32))(v78, v31, v80);
      v39 = v95;
      sub_AB4720();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v27 + 96))(v31, v26);
      v48 = v76;
      v49 = v75;
      v50 = v77;
      (*(v76 + 32))(v75, v31, v77);
      v51 = v95;
      sub_AB46D0();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v51, v35 & 1);
      (*(v48 + 8))(v49, v50);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v27 + 96))(v31, v26);
      v37 = v73;
      v36 = v72;
      v38 = v74;
      (*(v73 + 32))(v72, v31, v74);
      v39 = v95;
      sub_AB4670();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v70;
      v45 = v69;
      v47 = v71;
      (*(v70 + 32))(v69, v31, v71);
      sub_AB45A0();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v64;
      v45 = v63;
      v47 = v65;
      (*(v64 + 32))(v63, v31, v65);
      sub_AB45F0();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v27 + 8))(v31, v26);
    }

    else
    {
      v53 = Logger.badging.unsafeMutableAddressor();
      (*(v67 + 16))(v66, v53, v68);
      (v32)(v62, v97, v26);
      v54 = sub_AB4BA0();
      LODWORD(v97) = sub_AB9F10();
      if (os_log_type_enabled(v54, v97))
      {
        v55 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98 = v96;
        *v55 = 136315394;
        *(v55 + 4) = sub_7AB3E0(0xD000000000000010, 0x8000000000B744B0, &v98);
        *(v55 + 12) = 2080;
        sub_803920(&qword_E17870, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v56 = v62;
        v57 = sub_ABB330();
        v59 = v58;
        v60 = *(v27 + 8);
        v60(v56, v26);
        v61 = sub_7AB3E0(v57, v59, &v98);

        *(v55 + 14) = v61;
        _os_log_impl(&dword_0, v54, v97, "Unhandled case for explicit badge with item: %s, %s", v55, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v60 = *(v27 + 8);
        v60(v62, v26);
      }

      (*(v67 + 8))(v66, v68);
      v60(v31, v26);
    }

    return 2;
  }

  (*(v27 + 96))(v31, v26);
  (*(v23 + 32))(v25, v31, v22);
  sub_AB8730();
  v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v96 & 1);
  (*(v23 + 8))(v25, v22);
  return v34;
}

double sub_801D90@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_AB6DD0();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  sub_AB6DA0();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  sub_AB6DC0();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  sub_AB6DC0();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  sub_AB6DC0();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  sub_AB6DB0();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  sub_AB6DC0();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v21 = a2;
  v3 = sub_AB8580();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19AD0, &unk_B2EA88) - 8;
  __chkstk_darwin();
  v9 = &v20[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19A18, &qword_B2E428);
  __chkstk_darwin();
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v20[-v13];
  (*(v4 + 104))(&v20[-v13], enum case for ContentRating.explicit(_:), v3, v12);
  (*(v4 + 56))(v14, 0, 1, v3);
  v15 = *(v7 + 56);
  sub_15F84(a1, v9, &qword_E19A18, &qword_B2E428);
  sub_15F84(v14, &v9[v15], &qword_E19A18, &qword_B2E428);
  v16 = *(v4 + 48);
  if (v16(v9, 1, v3) != 1)
  {
    sub_15F84(v9, v11, &qword_E19A18, &qword_B2E428);
    if (v16(&v9[v15], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v15], v3);
      sub_803920(&qword_E19AD8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = sub_AB91C0();
      sub_12E1C(a1, &qword_E19A18, &qword_B2E428);
      v19 = *(v4 + 8);
      v19(v6, v3);
      sub_12E1C(v14, &qword_E19A18, &qword_B2E428);
      v19(v11, v3);
      sub_12E1C(v9, &qword_E19A18, &qword_B2E428);
      if (v18)
      {
        return v21 & 1;
      }

      return 2;
    }

    sub_12E1C(a1, &qword_E19A18, &qword_B2E428);
    sub_12E1C(v14, &qword_E19A18, &qword_B2E428);
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_12E1C(v9, &qword_E19AD0, &unk_B2EA88);
    return 2;
  }

  sub_12E1C(a1, &qword_E19A18, &qword_B2E428);
  sub_12E1C(v14, &qword_E19A18, &qword_B2E428);
  if (v16(&v9[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_12E1C(v9, &qword_E19A18, &qword_B2E428);
  return v21 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19A10, &qword_B2E420);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_AB4650();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v5, &qword_E19A10, &qword_B2E420);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(a1, &qword_E19A10, &qword_B2E420);
    sub_12E1C(v5, &qword_E19A10, &qword_B2E420);
    return 2;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_AB4640();
    sub_12E1C(a1, &qword_E19A10, &qword_B2E420);
    (*(v7 + 8))(v9, v6);
    result = 2;
    if (v11 != 2)
    {
      if (v11)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19A08, &qword_B2E418);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_15F84(a1, &v11 - v4, &qword_E19A08, &qword_B2E418);
  v6 = sub_AB40A0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_15F84(v5, v3, &qword_E19A08, &qword_B2E418);
    v8 = (*(v7 + 88))(v3, v6);
    if (v8 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v8 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v9 = 3;
        goto LABEL_4;
      }

      if (v8 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v7 + 8))(v3, v6);
      }
    }
  }

  v9 = 2;
LABEL_4:
  sub_12E1C(v5, &qword_E19A08, &qword_B2E418);
  sub_12E1C(a1, &qword_E19A08, &qword_B2E418);
  return v9;
}

unint64_t sub_8027D4()
{
  result = qword_E199E0;
  if (!qword_E199E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E199E0);
  }

  return result;
}

unint64_t sub_802828()
{
  result = qword_E199E8;
  if (!qword_E199E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E199E8);
  }

  return result;
}

unint64_t sub_80287C()
{
  result = qword_E199F0;
  if (!qword_E199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E199F0);
  }

  return result;
}

unint64_t sub_8028D0()
{
  result = qword_E199F8;
  if (!qword_E199F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E199F8);
  }

  return result;
}

unint64_t sub_802924()
{
  result = qword_E19A00;
  if (!qword_E19A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A00);
  }

  return result;
}

uint64_t sub_802978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_802AE0(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19AA8, &qword_B2EA58);
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v42 = &v32 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19AB0, &qword_B2EA60);
  v40 = *(v38 - 8);
  __chkstk_darwin();
  v41 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19AB8, &qword_B2EA68);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19AC0, &qword_B2EA70);
  v35 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19AC8, &unk_B2EA78);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_8027D4();
  v16 = v44;
  sub_ABB680();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = sub_ABB1F0();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_7F7A20();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = sub_ABAE50();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E193B8, &qword_B2D5D0);
      *v26 = &type metadata for TextBadge;
      sub_ABB170();
      sub_ABAE40();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        sub_80287C();
        sub_ABB160();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_802828();
        sub_ABB160();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_8028D0();
      v29 = v34;
      sub_ABB160();
      v30 = v36;
      v31 = sub_ABB1B0();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_802924();
      sub_ABB160();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  return v12;
}

unint64_t sub_8031C0()
{
  result = qword_E19A20;
  if (!qword_E19A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A20);
  }

  return result;
}

unint64_t sub_803218()
{
  result = qword_E19A28;
  if (!qword_E19A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A28);
  }

  return result;
}

unint64_t sub_803270()
{
  result = qword_E19A30;
  if (!qword_E19A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19A38, &qword_B2E4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_8034B0()
{
  result = qword_E19A40;
  if (!qword_E19A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A40);
  }

  return result;
}

unint64_t sub_803508()
{
  result = qword_E19A48;
  if (!qword_E19A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A48);
  }

  return result;
}

unint64_t sub_803560()
{
  result = qword_E19A50;
  if (!qword_E19A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A50);
  }

  return result;
}

unint64_t sub_8035B8()
{
  result = qword_E19A58;
  if (!qword_E19A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A58);
  }

  return result;
}

unint64_t sub_803610()
{
  result = qword_E19A60;
  if (!qword_E19A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A60);
  }

  return result;
}

unint64_t sub_803668()
{
  result = qword_E19A68;
  if (!qword_E19A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A68);
  }

  return result;
}

unint64_t sub_8036C0()
{
  result = qword_E19A70;
  if (!qword_E19A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A70);
  }

  return result;
}

unint64_t sub_803718()
{
  result = qword_E19A78;
  if (!qword_E19A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A78);
  }

  return result;
}

unint64_t sub_803770()
{
  result = qword_E19A80;
  if (!qword_E19A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A80);
  }

  return result;
}

unint64_t sub_8037C8()
{
  result = qword_E19A88;
  if (!qword_E19A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A88);
  }

  return result;
}

unint64_t sub_803820()
{
  result = qword_E19A90;
  if (!qword_E19A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A90);
  }

  return result;
}

unint64_t sub_803878()
{
  result = qword_E19A98;
  if (!qword_E19A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19A98);
  }

  return result;
}

unint64_t sub_8038CC()
{
  result = qword_E19AA0;
  if (!qword_E19AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19AA0);
  }

  return result;
}

uint64_t sub_803920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  if (a3)
  {
    a3 = sub_AB9260();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_803B88();
  isa = sub_AB9740().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  if (a4)
  {
    a4 = sub_AB9260();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_803B88();
  isa = sub_AB9740().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_803B88()
{
  result = qword_E19AE0;
  if (!qword_E19AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E19AE0);
  }

  return result;
}

uint64_t sub_803BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_803CE8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_803C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_803CE8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_803CB0(uint64_t a1)
{
  sub_803CE8();
  sub_AB65B0();
  __break(1u);
}

unint64_t sub_803CE8()
{
  result = qword_E19AE8;
  if (!qword_E19AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19AE8);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(&stru_20.filesize + (swift_isaMask & *v4));
  v8 = *(&stru_20.maxprot + (swift_isaMask & *v4));
  type metadata accessor for Card.ViewController.RootViewController(0, v7, v8, a4);
  v12 = sub_805790(a1, v9, v10, v11);
  *&v5[qword_E19AF0] = v12;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for Card.ViewController(0, v7, v8, v13);
  v14 = v12;
  v15 = objc_msgSendSuper2(&v25, "initWithRootViewController:", v14);
  [v15 setModalPresentationStyle:{2, v25.receiver, v25.super_class}];
  v16 = [v15 sheetPresentationController];

  if (v16)
  {
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 _setNonLargeBackground:v17];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_AF82B0;
    sub_13C80(0, &qword_E19AF8, UISheetPresentationControllerDetent_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    v20 = v14;
    v21 = v15;
    v22 = sub_ABA430();

    *(v18 + 32) = v22;
    isa = sub_AB9740().super.isa;

    [v16 setDetents:isa];

    [v16 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  return v15;
}

id sub_804048(uint64_t a1, uint64_t a2, void *a3)
{
  sub_804D38(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Card.ViewController(0, *(&stru_20.filesize + (swift_isaMask & *v0)), *(&stru_20.maxprot + (swift_isaMask & *v0)), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_804D38(0, 1);
  [v0 setPreferredContentSize:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00, &unk_B33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = sub_AB5330();
  *(v4 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_ABA080();
  swift_unknownObjectRelease();
}

void sub_8042A8(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  sub_804D38(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v10 = type metadata accessor for Card.ViewController(0, *(&stru_20.filesize + (v8 & v7)), *(&stru_20.maxprot + (v8 & v7)), v9);
  v12.receiver = v3;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_8043C4(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_804480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Card.ViewController.RootViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), *(&stru_20.maxprot + (swift_isaMask & *v4)), a4);
  v14.receiver = v4;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = sub_80493C();
    [v7 addSubview:v8];

    v9 = *(v4 + qword_E19B88);
    v10 = *(v4 + qword_E19B98);
    v11 = v9;
    v12 = [v10 view];
    if (v12)
    {
      v13 = v12;
      [v11 addSubview:v12];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_8045A8(void *a1)
{
  v4 = a1;
  sub_804480(v4, v1, v2, v3);
}

id sub_8045F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for Card.ViewController.RootViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), *(&stru_20.maxprot + (swift_isaMask & *v4)), a4);
  v59.receiver = v4;
  v59.super_class = v6;
  objc_msgSendSuper2(&v59, "viewDidLayoutSubviews");
  sub_804B88();
  v8 = v7;
  v9 = *&v4[qword_E19B98];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v60.origin.x = v13;
  v60.origin.y = v15;
  v60.size.width = v17;
  v60.size.height = v19;
  CGRectGetWidth(v60);
  sub_804B88();
  sub_ABA3C0();
  sub_AB64B0();
  v58 = v20;
  v22 = v21;

  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v61.origin.x = v25;
  v61.origin.y = v27;
  v61.size.width = v29;
  v61.size.height = v31;
  Height = CGRectGetHeight(v61);
  sub_804AD8(Height < v22);
  v34 = v33;
  v35 = sub_80493C();
  result = [v5 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = result;
  v37 = v8 + v34;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v62.origin.x = v39;
  v62.origin.y = v41;
  v62.size.width = v43;
  v62.size.height = v45;
  Width = CGRectGetWidth(v62);
  sub_ABA3D0();
  [v35 setContentSize:{Width, v22 + v47}];

  result = [*&v5[qword_E19B98] view];
  if (result)
  {
    v48 = result;
    v49 = qword_E19B88;
    v50 = *&v5[qword_E19B88];
    v51 = sub_ABA460(0.0, v37, v58, v22);
    v53 = v52;
    v55 = v54;
    v57 = v56;

    [v48 setFrame:{v51, v53, v55, v57}];
    return [*&v5[v49] _setPocketsEnabled:Height < v22];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_8048F4(void *a1)
{
  v4 = a1;
  sub_8045F0(v4, v1, v2, v3);
}

id sub_80493C()
{
  v1 = qword_E19B88;
  v2 = *&v0[qword_E19B88];
  if (v2)
  {
    v3 = *&v0[qword_E19B88];
  }

  else
  {
    v4 = sub_8049A0(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_8049A0(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_804AD8(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_4 + 2 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      sub_804B88();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_804B88()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != &dword_4 + 2)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void sub_804D38(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[qword_E19B98];
  sub_804B88();
  sub_ABA3C0();
  sub_AB64B0();
  v24 = v23;

  sub_804B88();
  sub_ABA3D0();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    sub_804AD8(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_804FE0(uint64_t a1)
{
  v2 = *(a1 + qword_E19B98);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void sub_8051C0(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_8059CC();
}

uint64_t sub_805284(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *(&stru_20.filesize + (swift_isaMask & *a1));
  v6 = *(&stru_20.maxprot + (swift_isaMask & *a1));
  v7 = a4;

  return a5(v5, v6);
}

id sub_805320(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *(&stru_20.filesize + (swift_isaMask & *v1)), *(&stru_20.maxprot + (swift_isaMask & *v1)));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_8053A8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  sub_AB6A20();
  __chkstk_darwin();
  v6 = *(&stru_20.filesize + (v5 & v4));
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  *(v2 + qword_E19B88) = 0;
  *(v2 + qword_E19B90) = 0x4079E00000000000;
  v10 = *(&stru_20.maxprot + (v5 & v4));
  sub_AB6510();
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_AB64E0();
  sub_AB6A10();
  sub_AB64C0();
  sub_AB64D0();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    [v13 setBackgroundColor:v15];

    *(v2 + qword_E19B98) = v11;
    v17 = type metadata accessor for Card.ViewController.RootViewController(0, v6, v10, v16);
    v26.receiver = v2;
    v26.super_class = v17;
    v18 = v11;
    v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
    result = [v19 view];
    if (result)
    {
      v20 = result;
      v21 = [v14 clearColor];
      [v20 setBackgroundColor:v21];

      [v19 addChildViewController:*&v19[qword_E19B98]];
      v22 = [v19 navigationItem];
      sub_13C80(0, &qword_E179F8, UIBarButtonItem_ptr);
      sub_13C80(0, &qword_E17A80, UIAction_ptr);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v24 = swift_allocObject();
      v24[2] = v6;
      v24[3] = v10;
      v24[4] = v23;
      v27.value.super.super.isa = sub_ABA7D0();
      v27.is_nil = 0;
      isa = sub_AB9F90(UIBarButtonSystemItemClose, v27, v28).super.super.isa;
      [v22 setLeftBarButtonItem:isa];

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_8057E4()
{

  return swift_deallocObject();
}

id sub_80589C(void *a1)
{
  sub_804D38(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_8058F0()
{
  *(v0 + qword_E19B88) = 0;
  *(v0 + qword_E19B90) = 0x4079E00000000000;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_805A9C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}