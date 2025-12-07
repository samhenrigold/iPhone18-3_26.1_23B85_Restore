uint64_t sub_10001D774(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001D78C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001D7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10001D7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038E10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001D930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100038E10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001D9EC(uint64_t a1)
{
  result = sub_100038E10();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001DB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001DBD8(uint64_t a1)
{
  result = type metadata accessor for WidgetEntryViewContent.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DCA8@<X0>(void *a1@<X8>)
{
  v112 = a1;
  v113 = type metadata accessor for LoadedView(0);
  __chkstk_darwin(v113);
  v2 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
  __chkstk_darwin(v92);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TemplateInformationView(0);
  __chkstk_darwin(v101);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100001B3C(&qword_100049538, &qword_10003C508);
  __chkstk_darwin(v97);
  v100 = &v91 - v7;
  v106 = sub_100001B3C(&qword_100049518, &qword_10003C500);
  __chkstk_darwin(v106);
  v102 = &v91 - v8;
  v98 = type metadata accessor for CenteredInformationView(0);
  __chkstk_darwin(v98);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for EmptyStateView(0);
  __chkstk_darwin(v99);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(0);
  __chkstk_darwin(v13);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100001B3C(&qword_100049540, &qword_10003C510);
  __chkstk_darwin(v109);
  v111 = &v91 - v16;
  v103 = sub_100001B3C(&qword_100049548, &qword_10003C518);
  __chkstk_darwin(v103);
  v105 = &v91 - v17;
  v93 = sub_100001B3C(&qword_100049550, &qword_10003C520);
  __chkstk_darwin(v93);
  v95 = &v91 - v18;
  v104 = sub_100001B3C(&qword_1000494F8, &qword_10003C4F8);
  __chkstk_darwin(v104);
  v96 = &v91 - v19;
  v110 = sub_100001B3C(&qword_1000494E8, &qword_10003C4F0);
  __chkstk_darwin(v110);
  v107 = &v91 - v20;
  v94 = type metadata accessor for PlaceholderView(0);
  __chkstk_darwin(v94);
  v22 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  __chkstk_darwin(v23);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WidgetEntryViewContent.Model(0);
  sub_10001F468(v108 + *(v26 + 20), v25, type metadata accessor for WidgetEntryViewContent.Model.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v78 = *v25;
      v77 = *(v25 + 1);
      v79 = v25[16];
      v80 = *(v25 + 3);
      v81 = *(v25 + 4);
      v82 = *(v25 + 5);
      v83 = *(v25 + 6);
      v84 = *(v25 + 7);

      sub_100017B88(v81, v82, v83, v84);

      sub_10001F550(v81, v82, v83, v84);
      *v10 = v78;
      *(v10 + 1) = v77;
      v10[16] = v79;
      *(v10 + 3) = v80;
      *(v10 + 4) = v81;
      *(v10 + 5) = v82;
      *(v10 + 6) = v83;
      *(v10 + 7) = v84;
      *(v10 + 4) = xmmword_10003C320;
      *(v10 + 10) = 0x4040000000000000;
      v85 = v98;
      v86 = *(v98 + 28);
      *&v10[v86] = swift_getKeyPath();
      sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
      swift_storeEnumTagMultiPayload();
      v87 = *(v85 + 32);
      *&v10[v87] = swift_getKeyPath();
      sub_100001B3C(&qword_100048618, &qword_10003BAC0);
      swift_storeEnumTagMultiPayload();
      sub_10001F468(v10, v100, type metadata accessor for CenteredInformationView);
      swift_storeEnumTagMultiPayload();
      sub_10001F334(&qword_100049520, type metadata accessor for CenteredInformationView, "Ѡ");
      sub_10001F334(&qword_100049528, type metadata accessor for TemplateInformationView, &unk_10003C168);
      v88 = v102;
      sub_100039360();
      sub_1000095F0(v88, v105, &qword_100049518, &qword_10003C500);
      swift_storeEnumTagMultiPayload();
      sub_10001F248();
      sub_10001F37C();
      v89 = v107;
      sub_100039360();
      sub_100009658(v88, &qword_100049518, &qword_10003C500);
      sub_1000095F0(v89, v111, &qword_1000494E8, &qword_10003C4F0);
      swift_storeEnumTagMultiPayload();
      sub_10001F1BC();
      sub_10001F334(&qword_100049530, type metadata accessor for LoadedView, &unk_10003BCF8);
      sub_100039360();
      sub_100009658(v89, &qword_1000494E8, &qword_10003C4F0);
      v48 = type metadata accessor for CenteredInformationView;
      v49 = v10;
    }

    else
    {
      sub_10001F594(v25, v15, type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage);
      v50 = &v15[*(v13 + 20)];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = v50[16];
      v54 = *(v50 + 3);
      v55 = v99;
      v56 = *(v99 + 20);
      v57 = sub_100038E10();
      (*(*(v57 - 8) + 16))(&v12[v56], v15, v57);
      *v12 = v52;
      *(v12 + 1) = v51;
      v12[16] = v53;
      *(v12 + 3) = v54;
      v58 = &v12[v55[6]];
      *v58 = xmmword_10003C330;
      *(v58 + 2) = 0x4040000000000000;
      v59 = v55[7];
      *&v12[v59] = swift_getKeyPath();
      sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
      swift_storeEnumTagMultiPayload();
      v60 = &v12[v55[8]];
      *v60 = swift_getKeyPath();
      *(v60 + 1) = 0;
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      v60[32] = 0;
      v61 = v55[9];
      *&v12[v61] = swift_getKeyPath();
      sub_100001B3C(&qword_100048618, &qword_10003BAC0);
      swift_storeEnumTagMultiPayload();
      sub_10001F468(v12, v95, type metadata accessor for EmptyStateView);
      swift_storeEnumTagMultiPayload();
      sub_10001F334(&qword_100049500, type metadata accessor for PlaceholderView, &unk_10003C004);
      sub_10001F334(&qword_100049508, type metadata accessor for EmptyStateView, &unk_10003BA68);

      v62 = v96;
      sub_100039360();
      sub_1000095F0(v62, v105, &qword_1000494F8, &qword_10003C4F8);
      swift_storeEnumTagMultiPayload();
      sub_10001F248();
      sub_10001F37C();
      v63 = v107;
      sub_100039360();
      sub_100009658(v62, &qword_1000494F8, &qword_10003C4F8);
      sub_1000095F0(v63, v111, &qword_1000494E8, &qword_10003C4F0);
      swift_storeEnumTagMultiPayload();
      sub_10001F1BC();
      sub_10001F334(&qword_100049530, type metadata accessor for LoadedView, &unk_10003BCF8);
      sub_100039360();
      sub_100009658(v63, &qword_1000494E8, &qword_10003C4F0);
      sub_10001F4F0(v12, type metadata accessor for EmptyStateView);
      v48 = type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage;
      v49 = v15;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v64 = *(v25 + 1);
    v65 = v25[16];
    v66 = *(v25 + 3);
    *v6 = *v25;
    *(v6 + 1) = v64;
    v6[16] = v65;
    *(v6 + 3) = v66;
    v67 = v101;
    v68 = *(v101 + 20);
    *&v6[v68] = swift_getKeyPath();
    sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
    swift_storeEnumTagMultiPayload();
    v69 = *(v67 + 24);
    *&v6[v69] = swift_getKeyPath();
    sub_100001B3C(&qword_100048618, &qword_10003BAC0);
    swift_storeEnumTagMultiPayload();
    sub_10001F468(v6, v100, type metadata accessor for TemplateInformationView);
    swift_storeEnumTagMultiPayload();
    sub_10001F334(&qword_100049520, type metadata accessor for CenteredInformationView, "Ѡ");
    sub_10001F334(&qword_100049528, type metadata accessor for TemplateInformationView, &unk_10003C168);
    v70 = v102;
    sub_100039360();
    sub_1000095F0(v70, v105, &qword_100049518, &qword_10003C500);
    swift_storeEnumTagMultiPayload();
    sub_10001F248();
    sub_10001F37C();
    v71 = v107;
    sub_100039360();
    sub_100009658(v70, &qword_100049518, &qword_10003C500);
    sub_1000095F0(v71, v111, &qword_1000494E8, &qword_10003C4F0);
    swift_storeEnumTagMultiPayload();
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView, &unk_10003BCF8);
    sub_100039360();
    sub_100009658(v71, &qword_1000494E8, &qword_10003C4F0);
    v48 = type metadata accessor for TemplateInformationView;
    v49 = v6;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10001F594(v25, v4, type metadata accessor for WidgetEntryViewContent.Model.State.Loaded);
    v28 = *v4;
    v108 = *(v4 + 1);
    LODWORD(v104) = v4[16];
    v30 = *(v4 + 3);
    v29 = *(v4 + 4);
    v105 = v28;
    v106 = v30;
    v103 = v29;
    v31 = *(v4 + 5);
    v32 = *(v4 + 6);
    v33 = *(v4 + 7);
    v34 = v92;
    v35 = v113;
    sub_1000095F0(&v4[*(v92 + 24)], &v2[*(v113 + 24)], &qword_1000486C8, &unk_10003B630);
    sub_1000095F0(&v4[v34[7]], &v2[v35[7]], &qword_1000486D0, "f)");
    v36 = v34[9];
    v37 = &v4[v34[8]];
    v38 = *(v37 + 1);
    v102 = *v37;
    sub_10001F468(&v4[v36], &v2[v35[9]], type metadata accessor for LoadedView.Callout);
    v107 = *&v4[v34[10]];
    v39 = v107;
    *&v2[v35[13]] = swift_getKeyPath();
    sub_100001B3C(&qword_100048620, &qword_10003B5B0);
    swift_storeEnumTagMultiPayload();
    v40 = v108;
    *v2 = v105;
    *(v2 + 1) = v40;
    v2[16] = v104;
    v41 = v102;
    v42 = v103;
    *(v2 + 3) = v30;
    *(v2 + 4) = v42;
    *(v2 + 5) = v31;
    *(v2 + 6) = v32;
    *(v2 + 7) = v33;
    v43 = &v2[v35[8]];
    *v43 = v41;
    *(v43 + 1) = v38;
    *&v2[v35[10]] = v39;
    *&v2[v35[11]] = 0x400C000000000000;
    v44 = v35[12];
    *&v2[v44] = swift_getKeyPath();
    sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
    swift_storeEnumTagMultiPayload();
    v45 = &v2[v35[14]];
    *v45 = swift_getKeyPath();
    *(v45 + 1) = 0;
    v45[16] = 0;
    v46 = &v2[v35[15]];
    *v46 = swift_getKeyPath();
    *(v46 + 1) = 0;
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    v46[32] = 0;
    v47 = v35[16];
    *&v2[v47] = swift_getKeyPath();
    sub_100001B3C(&qword_100048618, &qword_10003BAC0);
    swift_storeEnumTagMultiPayload();
    sub_10001F468(v2, v111, type metadata accessor for LoadedView);
    swift_storeEnumTagMultiPayload();

    sub_100017B88(v42, v31, v32, v33);

    sub_1000179EC(v107);
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView, &unk_10003BCF8);
    sub_100039360();
    sub_10001F4F0(v2, type metadata accessor for LoadedView);
    v48 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded;
    v49 = v4;
  }

  else
  {
    *v22 = swift_getKeyPath();
    sub_100001B3C(&qword_1000489A0, &qword_10003BD50);
    swift_storeEnumTagMultiPayload();
    v72 = v94;
    v73 = *(v94 + 20);
    *(v22 + v73) = swift_getKeyPath();
    sub_100001B3C(&qword_100048618, &qword_10003BAC0);
    swift_storeEnumTagMultiPayload();
    v74 = *(v72 + 24);
    *(v22 + v74) = swift_getKeyPath();
    sub_100001B3C(&qword_100048620, &qword_10003B5B0);
    swift_storeEnumTagMultiPayload();
    sub_10001F468(v22, v95, type metadata accessor for PlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_10001F334(&qword_100049500, type metadata accessor for PlaceholderView, &unk_10003C004);
    sub_10001F334(&qword_100049508, type metadata accessor for EmptyStateView, &unk_10003BA68);
    v75 = v96;
    sub_100039360();
    sub_1000095F0(v75, v105, &qword_1000494F8, &qword_10003C4F8);
    swift_storeEnumTagMultiPayload();
    sub_10001F248();
    sub_10001F37C();
    v76 = v107;
    sub_100039360();
    sub_100009658(v75, &qword_1000494F8, &qword_10003C4F8);
    sub_1000095F0(v76, v111, &qword_1000494E8, &qword_10003C4F0);
    swift_storeEnumTagMultiPayload();
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView, &unk_10003BCF8);
    sub_100039360();
    sub_100009658(v76, &qword_1000494E8, &qword_10003C4F0);
    v48 = type metadata accessor for PlaceholderView;
    v49 = v22;
  }

  return sub_10001F4F0(v49, v48);
}

uint64_t sub_10001F03C()
{
  v0 = sub_100001B3C(&qword_1000494D0, &qword_10003C4E8);
  __chkstk_darwin(v0);
  v2 = &v4 - v1;
  sub_10001DCA8((&v4 - v1));
  sub_10001F100();
  sub_100039610();
  return sub_100009658(v2, &qword_1000494D0, &qword_10003C4E8);
}

unint64_t sub_10001F100()
{
  result = qword_1000494D8;
  if (!qword_1000494D8)
  {
    sub_100001B84(&qword_1000494D0, &qword_10003C4E8);
    sub_10001F1BC();
    sub_10001F334(&qword_100049530, type metadata accessor for LoadedView, &unk_10003BCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000494D8);
  }

  return result;
}

unint64_t sub_10001F1BC()
{
  result = qword_1000494E0;
  if (!qword_1000494E0)
  {
    sub_100001B84(&qword_1000494E8, &qword_10003C4F0);
    sub_10001F248();
    sub_10001F37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000494E0);
  }

  return result;
}

unint64_t sub_10001F248()
{
  result = qword_1000494F0;
  if (!qword_1000494F0)
  {
    sub_100001B84(&qword_1000494F8, &qword_10003C4F8);
    sub_10001F334(&qword_100049500, type metadata accessor for PlaceholderView, &unk_10003C004);
    sub_10001F334(&qword_100049508, type metadata accessor for EmptyStateView, &unk_10003BA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000494F0);
  }

  return result;
}

uint64_t sub_10001F334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001F37C()
{
  result = qword_100049510;
  if (!qword_100049510)
  {
    sub_100001B84(&qword_100049518, &qword_10003C500);
    sub_10001F334(&qword_100049520, type metadata accessor for CenteredInformationView, "Ѡ");
    sub_10001F334(&qword_100049528, type metadata accessor for TemplateInformationView, &unk_10003C168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049510);
  }

  return result;
}

uint64_t sub_10001F468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10001F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_10001F594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F5FC()
{
  sub_100001B84(&qword_1000494D0, &qword_10003C4E8);
  sub_10001F100();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100048540, &unk_10003BCE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001F70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100048540, &unk_10003BCE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WidgetGridBackground(uint64_t a1)
{
  result = qword_1000495B0;
  if (!qword_1000495B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F7F0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000391A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001B3C(&qword_100048620, &qword_10003B5B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000095F0(v2, &v14 - v9, &qword_100048620, &qword_10003B5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100039910();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100039C60();
    v13 = sub_100039430();
    sub_100038E20();

    sub_100039190();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_10001F9F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v40 = a2;
  v41 = sub_100038D70();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = v35 - v4;
  v5 = sub_100038D30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35[0] = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100039910();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100001B3C(&qword_1000495F0, &qword_10003C6A0);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v35 - v19;
  sub_100039BC0();
  v37 = sub_100039BB0();
  sub_100039B70();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001F7F0(v14);
  sub_100039900();
  sub_10001FEB0();
  v21 = sub_100039AE0();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v22(v14, v8);
  if (v21)
  {
    v23 = v35[0];
    sub_100038D20();
    (*(v6 + 32))(v20, v23, v5);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v6 + 56))(v20, v24, 1, v5);
  v25 = v36;
  sub_100038D60();
  v26 = v20;
  sub_1000095F0(v20, v17, &qword_1000495F0, &qword_10003C6A0);
  v27 = v38;
  v28 = v39;
  v29 = *(v38 + 16);
  v30 = v41;
  v29(v39, v25, v41);
  v31 = v40;
  sub_1000095F0(v17, v40, &qword_1000495F0, &qword_10003C6A0);
  v32 = sub_100001B3C(&qword_1000495F8, &unk_10003C6A8);
  v29((v31 + *(v32 + 48)), v28, v30);
  v33 = *(v27 + 8);
  v33(v25, v30);
  sub_10001FF08(v26);
  v33(v28, v30);
  sub_10001FF08(v17);

  return result;
}

double sub_10001FE64@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_100039890();
  a2[1] = v4;
  v5 = sub_100001B3C(&qword_1000495E8, &qword_10003C698);
  return sub_10001F9F0(v2, a2 + *(v5 + 44));
}

unint64_t sub_10001FEB0()
{
  result = qword_100048FC0;
  if (!qword_100048FC0)
  {
    sub_100039910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048FC0);
  }

  return result;
}

uint64_t sub_10001FF08(uint64_t a1)
{
  v2 = sub_100001B3C(&qword_1000495F0, &qword_10003C6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001FF74()
{
  result = qword_100049600;
  if (!qword_100049600)
  {
    sub_100001B84(&qword_100049608, &qword_10003C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049600);
  }

  return result;
}

uint64_t type metadata accessor for WidgetPersonEntity(uint64_t a1)
{
  result = qword_1000496D8;
  if (!qword_1000496D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002018C()
{
  v0 = sub_100001B3C(&qword_100049740, "Z7");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100038B00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1000385F0();
  sub_100004190(v5, qword_10004BD00);
  sub_100004158(v5, qword_10004BD00);
  sub_100038AF0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000385E0();
}

uint64_t sub_1000202FC()
{
  v0 = sub_100038E50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for WidgetPersonEntityQuery(0);
  sub_100004190(v7, qword_10004BD18);
  v8 = sub_100004158(v7, qword_10004BD18);
  sub_100038E40();
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  result = sub_100038E40();
  *v8 = &unk_10003CB80;
  v8[1] = v11;
  return result;
}

void *sub_1000204D0@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v84 = sub_100038490();
  v73[0] = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000387D0();
  v78 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000384A0();
  v96 = *(v3 - 8);
  v97 = v3;
  __chkstk_darwin(v3);
  v94 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = v73 - v6;
  v7 = sub_100001B3C(&qword_100049728, "Z7");
  __chkstk_darwin(v7 - 8);
  v74 = v73 - v8;
  v9 = sub_100038800();
  v95 = *(v9 - 8);
  __chkstk_darwin(v9);
  v93 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = v73 - v12;
  v90 = sub_100038780();
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = v73 - v15;
  v16 = sub_100001B3C(&qword_100049730, "Z7");
  __chkstk_darwin(v16 - 8);
  v77 = v73 - v17;
  v18 = sub_1000386A0();
  v86 = *(v18 - 8);
  v87 = v18;
  __chkstk_darwin(v18);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100038450();
  v81 = *(v21 - 8);
  v82 = v21;
  __chkstk_darwin(v21);
  v76 = (v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100038750();
  v80 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001B3C(&qword_100049738, "Z7");
  __chkstk_darwin(v26 - 8);
  v28 = (v73 - v27);
  v29 = sub_100038420();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = (v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100038790();
  v73[1] = v32;
  if (v34)
  {
    *v28 = v33;
    v28[1] = v34;
    (*(v30 + 104))(v28, enum case for IntentPerson.Identifier.contact(_:), v29);
    (*(v30 + 56))(v28, 0, 1, v29);
    (*(v30 + 32))(v32, v28, v29);
  }

  else
  {
    (*(v30 + 56))(v28, 1, 1, v29);
    sub_100038840();
    v35 = sub_100038740();
    v37 = v36;
    (*(v80 + 8))(v25, v23);
    *v32 = v35;
    v32[1] = v37;
    (*(v30 + 104))(v32, enum case for IntentPerson.Identifier.applicationDefined(_:), v29);
    if ((*(v30 + 48))(v28, 1, v29) != 1)
    {
      sub_100021D78(v28);
    }
  }

  sub_1000386B0();
  v38 = sub_100038690();
  v40 = v39;
  (*(v86 + 8))(v20, v87);
  v41 = v76;
  *v76 = v38;
  v41[1] = v40;
  (*(v81 + 104))();
  v42 = v88;
  sub_100038830();
  v43 = v91;
  sub_100038770();
  v44 = *(v92 + 8);
  v45 = v90;
  v44(v42, v90);
  v46 = v77;
  sub_100021B28();
  v47 = v95;
  v91 = *(v95 + 8);
  v92 = v95 + 8;
  (v91)(v43, v9);
  v48 = v96;
  (*(v96 + 56))(v46, 0, 1, v97);
  v49 = v89;
  sub_100038830();
  v50 = sub_100038760();
  v44(v49, v45);
  v51 = *(v50 + 16);
  if (v51)
  {
    v100 = &_swiftEmptyArrayStorage;
    result = sub_1000372EC(0, v51, 0);
    v53 = 0;
    v54 = v100;
    v89 = (v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80)));
    v88 = (v47 + 16);
    v87 = (v78 + 11);
    LODWORD(v86) = enum case for PersonModel.Handle.Kind.phoneNumber(_:);
    LODWORD(v80) = enum case for PersonModel.Handle.Kind.email(_:);
    v79 = enum case for PersonModel.Handle.Kind.unknown(_:);
    ++v78;
    LODWORD(v82) = enum case for IntentPerson.Handle.Label.other(_:);
    v81 = v73[0] + 104;
    v55 = (v48 + 32);
    v56 = v85;
    v90 = v50;
    while (v53 < *(v50 + 16))
    {
      v57 = &v89[*(v47 + 72) * v53];
      v58 = *(v47 + 16);
      v59 = v93;
      v58(v93, v57, v9);
      v60 = v98;
      sub_1000387E0();
      v61 = (*v87)(v60, v99);
      if (v61 == v86)
      {
        sub_1000387F0();
        (*v81)(v83, v82, v84);
        v62 = v94;
        v56 = v85;
        sub_100038460();
      }

      else if (v61 == v80)
      {
        sub_1000387F0();
        (*v81)(v83, v82, v84);
        v62 = v94;
        v56 = v85;
        sub_100038470();
      }

      else
      {
        v63 = v61;
        sub_1000387F0();
        v62 = v94;
        sub_100038480();
        if (v63 != v79)
        {
          (*v78)(v98, v99);
        }
      }

      v64 = *v55;
      v65 = v62;
      v66 = v97;
      (*v55)(v56, v65, v97);
      v67 = v59;
      v68 = v9;
      (v91)(v67, v9);
      v100 = v54;
      v69 = v56;
      v71 = v54[2];
      v70 = v54[3];
      if (v71 >= v70 >> 1)
      {
        sub_1000372EC((v70 > 1), v71 + 1, 1);
        v66 = v97;
        v54 = v100;
      }

      ++v53;
      v54[2] = v71 + 1;
      result = v64(v54 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v71, v69, v66);
      v56 = v69;
      v9 = v68;
      v47 = v95;
      v50 = v90;
      if (v51 == v53)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v72 = sub_100038560();
    (*(*(v72 - 8) + 56))(v74, 1, 1, v72);
    return sub_100038430();
  }

  return result;
}

uint64_t sub_1000210CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000482A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for WidgetPersonEntityQuery(0);
  v4 = sub_100004158(v3, qword_10004BD18);

  return sub_100021DE0(v4, a1, v5);
}

uint64_t sub_100021310@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100038750();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v2, v4);
}

uint64_t sub_10002137C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000482A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000385F0();
  v4 = sub_100004158(v3, qword_10004BD00);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_100021428()
{
  result = qword_100049668;
  if (!qword_100049668)
  {
    sub_100001B84(&qword_100049670, &qword_10003C838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049668);
  }

  return result;
}

uint64_t sub_10002148C(uint64_t a1)
{
  v2 = sub_100021AE0(&qword_100049638, type metadata accessor for WidgetPersonEntity, &unk_10003C6C0);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100021550()
{
  v0 = sub_1000384B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000384D0();
  sub_100038440();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100021634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003DBC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000216F8(uint64_t a1)
{
  v2 = sub_100021AE0(&qword_100049658, type metadata accessor for WidgetPersonEntity, &unk_10003C8A0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100021788(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_100038750();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = sub_100038850();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000218A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v9 = sub_100038750();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    result = sub_100038850();
    v15 = *(result - 8);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 20);
  }

  return v12(v13, a2, a2, v11);
}

void sub_1000219B0(uint64_t a1, __n128 a2)
{
  sub_100038750();
  if (v2 <= 0x3F)
  {
    sub_100038850();
    if (v3 <= 0x3F)
    {
      sub_100021A4C(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100021A4C(uint64_t a1)
{
  if (!qword_1000496E8)
  {
    sub_1000384B0();
    sub_100021AE0(&unk_1000496F0, &type metadata accessor for IntentPerson, &protocol conformance descriptor for IntentPerson);
    v1 = sub_100038500();
    if (!v2)
    {
      atomic_store(v1, &qword_1000496E8);
    }
  }
}

uint64_t sub_100021AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021B28()
{
  v0 = sub_100038490();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000387D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000387E0();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    sub_1000387F0();
    (*(v1 + 104))(v3, enum case for IntentPerson.Handle.Label.other(_:), v0);
    return sub_100038460();
  }

  else if (v8 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    sub_1000387F0();
    (*(v1 + 104))(v3, enum case for IntentPerson.Handle.Label.other(_:), v0);
    return sub_100038470();
  }

  else
  {
    v10 = enum case for PersonModel.Handle.Kind.unknown(_:);
    v11 = v8;
    sub_1000387F0();
    result = sub_100038480();
    if (v11 != v10)
    {
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_100021D78(uint64_t a1)
{
  v2 = sub_100001B3C(&qword_100049738, "Z7");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021DE0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for WidgetPersonEntityQuery(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021E44()
{
  v1 = sub_100038E50();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t type metadata accessor for WidgetPersonEntityQuery(uint64_t a1)
{
  result = qword_1000497C8;
  if (!qword_1000497C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100021F68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000384B0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_100038850();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_100001B3C(&qword_100049800, &qword_10003CAF0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = sub_1000387A0();
  v2[15] = swift_task_alloc();
  v5 = sub_100001B3C(&qword_100049808, &qword_10003CAF8);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100022178, 0, 0);
}

uint64_t sub_100022178()
{
  v8 = v0;
  *(v0 + 176) = *(type metadata accessor for WidgetPersonEntityQuery(0) + 20);
  v1 = sub_100038E30();
  v2 = sub_100039C70();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A900, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100002D54(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_1000222F8;

  return sub_100022BBC(0);
}

uint64_t sub_1000222F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_100022958;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_100022420;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022420()
{
  sub_100039BE0();
  sub_100039BD0();
  sub_100027D80(&qword_100049810, &type metadata accessor for PersonModel.Tag, &protocol conformance descriptor for PersonModel.Tag);
  sub_1000389A0();
  sub_100001B3C(&qword_100049818, &qword_10003CB10);
  sub_100027D80(&qword_100049820, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100027D80(&qword_100049828, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100027D80(&qword_100049830, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100027D80(&qword_100049838, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100006F3C(&qword_100049840, &qword_100049818, &qword_10003CB10, &protocol conformance descriptor for OrganizedListEmptyStorageMappings<A, B>);
  sub_1000389D0();
  v1 = sub_1000389C0();
  if (*(v1 + 16))
  {
    (*(v0[9] + 16))(v0[13], v1 + ((*(v0[9] + 80) + 32) & ~*(v0[9] + 80)), v0[8]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v6 = v0[9];

  (*(v6 + 56))(v3, v2, 1, v5);
  sub_100025BEC(v3, v4);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[17];
  v28 = v0[18];
  v9 = v0[16];
  if (v7 == 1)
  {
    sub_100009658(v0[13], &qword_100049800, &qword_10003CAF0);
    (*(v8 + 8))(v28, v9);
    v10 = type metadata accessor for WidgetPersonEntity(0);
    v11 = 1;
  }

  else
  {
    v25 = v0[11];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    v21 = v0[7];
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];
    v15 = v0[2];
    v27 = v0[13];
    (*(v13 + 32))(v25, v0[12], v14);
    v20 = *(v13 + 16);
    v20(v12, v25, v14);
    v10 = type metadata accessor for WidgetPersonEntity(0);
    v26 = v9;
    v16 = *(v10 + 24);
    sub_100001B3C(&qword_100049848, &qword_10003CB18);
    *(v15 + v16) = sub_1000384F0();
    v20(v15 + *(v10 + 20), v12, v14);
    sub_100038840();
    sub_1000204D0(v21);
    (*(v22 + 16))(v23, v21, v24);
    sub_1000384E0();
    (*(v22 + 8))(v21, v24);
    v17 = *(v13 + 8);
    v17(v12, v14);
    v17(v25, v14);
    sub_100009658(v27, &qword_100049800, &qword_10003CAF0);
    (*(v8 + 8))(v28, v26);
    v11 = 0;
  }

  (*(*(v10 - 8) + 56))(v0[2], v11, 1, v10);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100022958()
{
  v11 = v0;
  swift_errorRetain();
  v1 = sub_100038E30();
  v2 = sub_100039C50();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A900, &v10);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - error: %{public}@", v3, 0x16u);
    sub_100009658(v4, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v5);
  }

  else
  {
  }

  v7 = type metadata accessor for WidgetPersonEntity(0);
  (*(*(v7 - 8) + 56))(*(v0 + 16), 1, 1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100022BBC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000384C0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100022C7C, 0, 0);
}

uint64_t sub_100022C7C()
{
  v15 = v0;
  *(v0 + 88) = *(type metadata accessor for WidgetPersonEntityQuery(0) + 20);

  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A920, &v14);
    *(v4 + 12) = 2080;
    *(v0 + 16) = v3;

    v5 = sub_100039B00();
    v7 = sub_100035100(v5, v6, &v14);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - will call fetchWithOptions: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = **(v0 + 32);
  sub_100027D80(&qword_100049748, type metadata accessor for WidgetPersonEntityQuery, &unk_10003CA20);
  sub_1000385A0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_100022F28;
  v10 = *(v0 + 56);
  v11 = *(v0 + 24);

  return v13(v11, v10);
}

uint64_t sub_100022F28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100023330;
  }

  else
  {
    v7 = sub_10002309C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002309C()
{
  v16 = v0;

  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_100035100(0xD000000000000015, 0x800000010003A920, &v15);
    *(v3 + 12) = 2080;
    sub_100038750();
    sub_100038850();
    sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
    v4 = sub_100039AA0();
    v6 = sub_100035100(v4, v5, &v15);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - did receive fetchWithOptions: %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 72);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_100025AF0(*(v7 + 16), 0);
    v10 = *(sub_100038850() - 8);
    sub_1000276D4(&v15, &v9[(*(v10 + 80) + 32) & ~*(v10 + 80)], v8, v7);
    v12 = v11;
    sub_100027978(v15);
    if (v12 == v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_7:

  v13 = *(v0 + 8);

  return v13(v9);
}

uint64_t sub_100023330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023394(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000384B0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_100038850();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for WidgetPersonEntity(0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100023524, 0, 0);
}

uint64_t sub_100023524()
{
  v13 = v0;
  type metadata accessor for WidgetPersonEntityQuery(0);

  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_100035100(0x7365697469746E65, 0xEE00293A726F6628, &v12);
    *(v3 + 12) = 2082;
    sub_100038750();
    v4 = sub_100039B50();
    v6 = sub_100035100(v4, v5, &v12);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - ids: %{public}s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v9 = sub_100027980(v7, v8);
  *(v0 + 120) = v9;

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_10002372C;

  return sub_100022BBC(v9);
}

uint64_t sub_10002372C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_100023B48;
  }

  else
  {

    v4 = sub_100023848;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100023848()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = v0[12];
    v25 = v0[13];
    v3 = v0[9];
    v4 = v0[5];
    sub_100037330(0, v2, 0);
    sub_100001B3C(&qword_100049848, &qword_10003CB18);
    v5 = &_swiftEmptyArrayStorage;
    v6 = *(v3 + 16);
    v3 += 16;
    v23 = v6;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v22 = *(v3 + 56);
    v21 = (v3 - 8);
    v20 = v0;
    do
    {
      v31 = v5;
      v32 = v2;
      v8 = v0[14];
      v10 = v0[10];
      v9 = v0[11];
      v11 = v0[8];
      v26 = v0[7];
      v27 = v0[6];
      v28 = v0[4];
      v29 = v9;
      v30 = v7;
      v23(v9, v7, v11);
      v23(v10, v9, v11);
      v12 = *(v24 + 24);
      *(v8 + v12) = sub_1000384F0();
      v23(v8 + *(v24 + 20), v10, v11);
      sub_100038840();
      sub_1000204D0(v26);
      (*(v4 + 16))(v27, v26, v28);
      sub_1000384E0();
      (*(v4 + 8))(v26, v28);
      v13 = *v21;
      (*v21)(v10, v11);
      v14 = v11;
      v5 = v31;
      v13(v29, v14);
      v16 = v31[2];
      v15 = v31[3];
      if (v16 >= v15 >> 1)
      {
        sub_100037330((v15 > 1), v16 + 1, 1);
        v5 = v31;
      }

      v17 = v20[14];
      v5[2] = v16 + 1;
      sub_100027D1C(v17, v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v16);
      v7 = v30 + v22;
      --v2;
      v0 = v20;
    }

    while (v32 != 1);
  }

  else
  {

    v5 = &_swiftEmptyArrayStorage;
  }

  v18 = v0[1];

  return v18(v5);
}

uint64_t sub_100023B48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_100038820();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100001B3C(&qword_100049860, &qword_10003CB30);
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v33 - v7;
  v47 = sub_100001B3C(&qword_100049868, &unk_10003CB38);
  v8 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = &v33 - v9;
  v11 = sub_100001B3C(&qword_100049740, "Z7");
  __chkstk_darwin(v11 - 8);
  v46 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = sub_100038B00();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = sub_100001B3C(&qword_100049808, &qword_10003CAF8);
  v18 = sub_1000389B0();
  v19 = *(v18 + 16);
  if (v19)
  {
    v34 = v17;
    v35 = v15;
    v36 = a2;
    v37 = a1;
    v51 = &_swiftEmptyArrayStorage;
    sub_100037374(0, v19, 0);
    v20 = v10;
    v21 = v51;
    v23 = *(v6 + 16);
    v22 = v6 + 16;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v33 = v18;
    v25 = v18 + v24;
    v41 = *(v22 + 56);
    v42 = v23;
    v39 = (v22 - 8);
    v40 = (v4 + 8);
    v38 = v8 + 32;
    v43 = v8;
    v44 = v22;
    v26 = v45;
    do
    {
      v27 = v48;
      v42(v26, v25, v48);
      v28 = v49;
      sub_1000389F0();
      sub_100038810();
      v29 = (*v40)(v28, v50);
      __chkstk_darwin(v29);
      *(&v33 - 2) = v26;
      type metadata accessor for WidgetPersonEntity(0);
      sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity, &unk_10003C840);
      sub_100038530();
      (*v39)(v26, v27);
      v51 = v21;
      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        sub_100037374((v30 > 1), v31 + 1, 1);
        v21 = v51;
      }

      v21[2] = v31 + 1;
      (*(v43 + 32))(v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31, v20, v47);
      v25 += v41;
      --v19;
    }

    while (v19);

    a1 = v37;
    v17 = v34;
  }

  else
  {
  }

  type metadata accessor for WidgetPersonEntity(0);
  sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity, &unk_10003C840);
  sub_100038540();
  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t sub_10002414C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1000387A0();
  v2[6] = swift_task_alloc();
  v3 = sub_100001B3C(&qword_100049808, &qword_10003CAF8);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100024254, 0, 0);
}

uint64_t sub_100024254()
{
  v8 = v0;
  type metadata accessor for WidgetPersonEntityQuery(0);
  v1 = sub_100038E30();
  v2 = sub_100039C70();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100035100(0x7469746E456C6C61, 0xED00002928736569, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100002D54(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1000243D8;

  return sub_100022BBC(0);
}

uint64_t sub_1000243D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return _swift_task_switch(sub_100024538, 0, 0);
  }
}

uint64_t sub_100024538()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v6 = v0[7];
  v7 = v0[3];
  sub_100039BE0();
  sub_1000387B0();
  sub_100027D80(&qword_100049858, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
  sub_100039CF0();
  sub_100027B1C(v0[2]);

  sub_100027D80(&qword_100049810, &type metadata accessor for PersonModel.Tag, &protocol conformance descriptor for PersonModel.Tag);
  sub_1000389A0();
  sub_100038850();
  sub_100001B3C(&qword_100049818, &qword_10003CB10);
  sub_100027D80(&qword_100049820, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100027D80(&qword_100049828, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100027D80(&qword_100049830, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100027D80(&qword_100049838, &type metadata accessor for PersonModel, &protocol conformance descriptor for PersonModel);
  sub_100006F3C(&qword_100049840, &qword_100049818, &qword_10003CB10, &protocol conformance descriptor for OrganizedListEmptyStorageMappings<A, B>);
  sub_1000389D0();
  (*(v3 + 16))(v1, v2, v6);
  sub_100023BEC(v1, v7);
  (*(v3 + 8))(v2, v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002482C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003DBC;

  return sub_10002414C(a1);
}

uint64_t sub_1000249A0@<X0>(void *a1@<X8>)
{
  v2 = sub_100038E50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_100038E40();
  v9 = *(v3 + 32);
  v9(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v5, v2);
  result = sub_100038E40();
  *a1 = &unk_10003CB80;
  a1[1] = v11;
  return result;
}

uint64_t sub_100024B50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002802C;

  return sub_100023394(a1);
}

uint64_t sub_100024BE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100027D80(&qword_1000498A8, type metadata accessor for WidgetPersonEntityQuery, &unk_10003C958);
  *v5 = v2;
  v5[1] = sub_100004530;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v6);
}

uint64_t sub_100024CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100024D88;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100024D88(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100024F5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100027D80(&qword_100049628, type metadata accessor for WidgetPersonEntityQuery, &unk_10003C9A8);
  *v5 = v2;
  v5[1] = sub_100004530;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100025040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003DBC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10002510C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100038E50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000251CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100038E50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100025270(uint64_t a1)
{
  result = sub_100038E50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000252EC()
{
  v61 = sub_1000384B0();
  v0 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v59 = &v42 - v3;
  v58 = sub_100038850();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for WidgetPersonEntity(0);
  __chkstk_darwin(v62);
  v56 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001B3C(&qword_100049870, &qword_10003CB48);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  sub_100001B3C(&qword_100049860, &qword_10003CB30);
  v11 = sub_1000389E0();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_100001B3C(&qword_100049848, &qword_10003CB18);
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v51 = v15;
    v52 = v13;
    v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v42 = v11;
    v17 = v11 + v16;
    v18 = *(v14 + 56);
    v49 = (v0 + 16);
    v50 = v18;
    v47 = (v14 - 8);
    v48 = (v0 + 8);
    v45 = (v8 + 8);
    v46 = v8 + 16;
    v19 = &_swiftEmptyArrayStorage;
    v44 = xmmword_10003B220;
    v54 = v8;
    v55 = v14;
    v53 = v10;
    v43 = v7;
    do
    {
      v63 = v19;
      v64 = v12;
      v21 = v57;
      v20 = v58;
      v22 = v51;
      v51(v57, v17, v58);
      v23 = v62;
      v24 = *(v62 + 24);
      v25 = sub_1000384F0();
      v26 = v56;
      *&v56[v24] = v25;
      v22(&v26[*(v23 + 20)], v21, v20);
      sub_100038840();
      v27 = v59;
      sub_1000204D0(v59);
      v28 = v61;
      (*v49)(v60, v27, v61);
      sub_1000384E0();
      (*v48)(v27, v28);
      v29 = v21;
      v31 = v53;
      v30 = v54;
      v32 = v20;
      v33 = v43;
      (*v47)(v29, v32);
      sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity, &unk_10003C840);
      sub_1000383E0();
      v34 = v26;
      v19 = v63;
      sub_100027CC0(v34);
      sub_100001B3C(&qword_100049878, &qword_10003CB50);
      v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v44;
      (*(v30 + 16))(v36 + v35, v31, v33);
      v37 = sub_1000383C0();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1000259BC(0, v19[2] + 1, 1, v19);
      }

      v39 = v19[2];
      v38 = v19[3];
      if (v39 >= v38 >> 1)
      {
        v19 = sub_1000259BC((v38 > 1), v39 + 1, 1, v19);
      }

      (*v45)(v31, v33);
      v19[2] = v39 + 1;
      v19[v39 + 4] = v37;
      v17 += v50;
      v12 = v64 - 1;
    }

    while (v64 != 1);
  }

  sub_100027D80(&qword_100049650, type metadata accessor for WidgetPersonEntity, &unk_10003C840);
  sub_1000383B0();

  v40 = sub_1000383D0();

  return v40;
}

char *sub_1000258B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_1000498C0, &qword_10003CB90);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1000259BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001B3C(&qword_100049880, &qword_10003CB58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001B3C(&qword_100049888, &qword_10003CB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100025AF0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001B3C(&qword_100049850, &qword_10003CB20);
  v4 = *(sub_100038850() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100025BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100049800, &qword_10003CAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025C5C(uint64_t a1, char *a2, __n128 a3)
{
  v4 = v3;
  v7 = sub_100038750();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
  v35 = a2;
  v12 = sub_100039AB0();
  v13 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v8;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v34 + 48) + v19 * v15, v7);
      sub_100027D80(&qword_1000498B0, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
      v22 = sub_100039AE0();
      v23 = *v20;
      (*v20)(v10, v7);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v4 = v30;
        a1 = v31;
        v8 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v7);
    v21(v31, *(v34 + 48) + v19 * v15, v7);
    return 0;
  }

  else
  {
    v16 = *(v8 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v35;
    v26.n128_f64[0] = (v16)(v10, v35, v7);
    v36 = *v4;
    sub_1000268D4(v10, v15, isUniquelyReferenced_nonNull_native, v26);
    *v4 = v36;
    (*(v8 + 32))(a1, v25, v7);
    return 1;
  }
}

uint64_t sub_100025F3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000387B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
  v33 = a2;
  v11 = sub_100039AB0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100027D80(&qword_100049898, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
      v21 = sub_100039AE0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100026B9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_10002621C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v38 = sub_100038750();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_100001B3C(&qword_1000498B8, &qword_10003CB78);
  v7 = sub_100039CC0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v2;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v4 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v4 + 72) * (v17 | (v9 << 6));
      v21 = *(v4 + 32);
      v34 = *(v4 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
      v22 = sub_100039AB0();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v3 = v32;
    *(v6 + 16) = 0;
  }

  *v3 = v8;
}

void sub_100026578(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000387B0();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100001B3C(&qword_1000498A0, &qword_10003CB68);
  v6 = sub_100039CC0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
      v21 = sub_100039AB0();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

uint64_t sub_1000268D4(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v33 = a1;
  v7 = sub_100038750();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v30 = v4;
  v31 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002621C(v12 + 1, v9);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100026E64(&type metadata accessor for PersonModel.UniqueIdentifier, &qword_1000498B8, &qword_10003CB78);
      goto LABEL_12;
    }

    sub_10002709C(v12 + 1, v9);
  }

  v14 = *v4;
  sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
  v15 = sub_100039AB0();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v7);
      sub_100027D80(&qword_1000498B0, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
      v23 = sub_100039AE0();
      (*(v20 - 8))(v11, v7);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v7, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100039D30();
  __break(1u);
  return result;
}

uint64_t sub_100026B9C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1000387B0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100026578(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100026E64(&type metadata accessor for PersonModel.Sort, &qword_1000498A0, &qword_10003CB68);
      goto LABEL_12;
    }

    sub_1000273B8(v11 + 1);
  }

  v13 = *v3;
  sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
  v14 = sub_100039AB0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100027D80(&qword_100049898, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
      v22 = sub_100039AE0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100039D30();
  __break(1u);
  return result;
}

void sub_100026E64(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100001B3C(a2, a3);
  v11 = *v3;
  v12 = sub_100039CB0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_10002709C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v35 = sub_100038750();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100001B3C(&qword_1000498B8, &qword_10003CB78);
  v8 = sub_100039CC0();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v2;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v4 + 16;
    v34 = v4;
    v16 = v8 + 56;
    v31 = (v4 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
      v22 = sub_100039AB0();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v3 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v3 = v8;
  }
}

void sub_1000273B8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1000387B0();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100001B3C(&qword_1000498A0, &qword_10003CB68);
  v7 = sub_100039CC0();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
      v21 = sub_100039AB0();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_1000276D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_100038850();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_100027980(uint64_t a1, __n128 a2)
{
  v3 = sub_100038750();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  sub_100027D80(&qword_100049660, &type metadata accessor for PersonModel.UniqueIdentifier, &protocol conformance descriptor for PersonModel.UniqueIdentifier);
  result = sub_100039BF0();
  v19 = result;
  if (v10)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v17.n128_f64[0] = v13(v6, v15, v3);
      sub_100025C5C(v9, v6, v17);
      (*(v12 - 8))(v9, v3);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_100027B1C(uint64_t a1)
{
  v2 = sub_1000387B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100027D80(&qword_100049890, &type metadata accessor for PersonModel.Sort, &protocol conformance descriptor for PersonModel.Sort);
  result = sub_100039BF0();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100025F3C(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100027CC0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetPersonEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPersonEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027DC8()
{
  v1 = sub_100038E50();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100027E50(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_100038E50() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100027F30;

  return sub_10002810C(a1, a2, v2 + v7);
}

uint64_t sub_100027F30(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100028040(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100028090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000280E4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_100038B80();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  sub_100038B90();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000281F8, 0, 0);
}

uint64_t sub_1000281F8()
{
  (*(v0[5] + 104))(v0[6], enum case for ClientOrigin.findMyApp(_:), v0[4]);
  sub_100038BA0();
  sub_100038BF0();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1000282DC;
  v2 = v0[7];

  return Session.init(_:)(v2);
}

uint64_t sub_1000282DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[9] = a1;

  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v3;
  v4[1] = sub_10002842C;
  v5 = v2[3];

  return Session.fetchPeople(logger:)(v5);
}

uint64_t sub_10002842C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_100028770;
  }

  else
  {
    v4 = sub_100028540;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100028540()
{
  v14 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[11];

    v3 = sub_100029270(v2, v1);
  }

  else
  {
    v3 = v0[11];
  }

  v4 = sub_100038E30();
  v5 = sub_100039C40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100035100(0x6576694C6C616572, 0xEA00000000002928, v13);
    *(v6 + 12) = 2080;
    sub_100038750();
    sub_100038850();
    sub_100029430(&qword_100049660, &protocol conformance descriptor for PersonModel.UniqueIdentifier, v7);
    v8 = sub_100039AA0();
    v10 = sub_100035100(v8, v9, v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - result %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[1];

  return v11(v3);
}

uint64_t sub_100028770()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t *sub_1000287E8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100028D14(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100028884(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v59 = sub_100038850();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_100038750();
  v54 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = v45 - v14;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100001B3C(&qword_1000498D0, &qword_10003CC08);
  result = sub_100039D10();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v45[3] = v54 + 16;
  v46 = a2;
  v56 = v54 + 32;
  v19 = result + 64;
  v47 = a1;
  v45[0] = a4;
  v45[1] = v55 + 32;
  v45[2] = v55 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v50 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v54;
    v53 = *(v54 + 72);
    v26 = v48;
    (*(v54 + 16))(v48, v24 + v53 * v23, v11);
    v27 = a4[7];
    v28 = v55;
    v52 = *(v55 + 72);
    v29 = v27 + v52 * v23;
    v30 = v11;
    v31 = v49;
    v32 = v59;
    (*(v55 + 16))(v49, v29, v59);
    v51 = *(v25 + 32);
    v51(v57, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v35.n128_f64[0] = v33(v58, v34, v32);
    sub_100029430(&qword_100049660, &protocol conformance descriptor for PersonModel.UniqueIdentifier, v35);
    result = sub_100039AB0();
    v36 = -1 << *(v16 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v19 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a2 = v46;
      a1 = v47;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v19 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v19 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a2 = v46;
    a1 = v47;
LABEL_26:
    *(v19 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v51((*(v16 + 48) + v39 * v53), v57, v30);
    result = (v33)(*(v16 + 56) + v39 * v52, v58, v59);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45[0];
    v17 = v50;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v50 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100028D14(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = a2;
  v50 = a1;
  v63 = sub_100001B3C(&qword_1000498C8, &qword_10003CC00);
  __chkstk_darwin(v63);
  v72 = &v48 - v6;
  v7 = sub_100038850();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100038750();
  __chkstk_darwin(v11);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v67 = &v48 - v16;
  v17 = 0;
  v64 = a3;
  v18 = *(a3 + 64);
  v51 = a3 + 64;
  v52 = 0;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v70 = v14 + 16;
  v71 = a4;
  v57 = v8 + 16;
  v58 = v22;
  v59 = v14;
  v60 = v10;
  v69 = (v14 + 8);
  v61 = v8;
  v62 = v7;
  v55 = (v8 + 8);
  v56 = a4 + 7;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v66 = (v21 - 1) & v21;
LABEL_13:
    v26 = v23 | (v17 << 6);
    v27 = v64;
    v28 = v64[6];
    v65 = *(v59 + 72);
    v29 = *(v59 + 16);
    v29(v67, v28 + v65 * v26, v11, v15);
    v30 = v27[7];
    v31 = *(v61 + 72);
    v53 = v26;
    v32 = *(v61 + 16);
    v32(v10, v30 + v31 * v26, v7);
    v33 = v72;
    v68 = v29;
    (v29)(v72, v67, v11);
    v34 = v7;
    v35 = v65;
    v32((v33 + *(v63 + 48)), v10, v34);
    v37 = v56;
    v38 = v54;
    if (v71[2] && (v39 = v71, sub_100029430(&qword_100049660, &protocol conformance descriptor for PersonModel.UniqueIdentifier, v36), v40 = sub_100039AB0(), v41 = -1 << *(v39 + 32), v42 = v40 & ~v41, ((*(v37 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
    {
      v43 = ~v41;
      while (1)
      {
        v44.n128_f64[0] = v68(v38, v71[6] + v42 * v35, v11);
        sub_100029430(&qword_1000498B0, &protocol conformance descriptor for PersonModel.UniqueIdentifier, v44);
        v45 = sub_100039AE0();
        v46 = *v69;
        (*v69)(v38, v11);
        if (v45)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v37 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_100029474(v72);
      v10 = v60;
      v7 = v62;
      (*v55)();
      v46(v67, v11);
      *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v47 = __OFADD__(v52++, 1);
      v22 = v58;
      v21 = v66;
      if (v47)
      {
        __break(1u);
LABEL_22:
        sub_100028884(v50, v49, v52, v64);
        return;
      }
    }

    else
    {
LABEL_5:
      sub_100029474(v72);
      v10 = v60;
      v7 = v62;
      (*v55)(v60, v62);
      (*v69)(v67, v11);
      v22 = v58;
      v21 = v66;
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_22;
    }

    v25 = *(v51 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v66 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_100029270(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1000287E8(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_100028D14((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_100029430(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_100038750();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029474(uint64_t a1)
{
  v2 = sub_100001B3C(&qword_1000498C8, &qword_10003CC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000294DC@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = _s12DependenciesVMa_1(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B3C(&qword_100048318, &qword_10003AF40);
  v75 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v76 = sub_100001B3C(&qword_100048310, &qword_10003AF38);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v9 = &v70 - v8;
  v10 = sub_100001B3C(&qword_100048308, &qword_10003AF30);
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  __chkstk_darwin(v10);
  v74 = &v70 - v12;
  v13 = sub_100001B3C(&qword_100048300, &qword_10003AF28);
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  __chkstk_darwin(v13);
  v78 = &v70 - v15;
  v16 = sub_100001B3C(&qword_1000482F8, &qword_10003AF20);
  v17 = *(v16 - 8);
  v87 = v16;
  v88 = v17;
  __chkstk_darwin(v16);
  v79 = &v70 - v18;
  v19 = sub_100001B3C(&qword_100049968, &qword_10003CC88);
  v20 = *(v19 - 8);
  v89 = v19;
  v90 = v20;
  __chkstk_darwin(v19);
  v80 = &v70 - v21;
  v22 = sub_100001B3C(&qword_100049970, &qword_10003CC90);
  v23 = *(v22 - 8);
  v91 = v22;
  *&v92 = v23;
  __chkstk_darwin(v22);
  v81 = &v70 - v24;
  v25 = sub_100001B3C(&qword_100049978, &qword_10003CC98);
  v26 = *(v25 - 8);
  v93 = v25;
  v94 = v26;
  __chkstk_darwin(v25);
  v82 = &v70 - v27;
  v73 = (v1 + *(type metadata accessor for PeopleWidget(0) + 20));
  sub_10002A6A4(v73, v4, _s12DependenciesVMa_1);
  type metadata accessor for PeopleWidgetProvider(0);
  swift_allocObject();

  v96 = sub_10002D8BC(v4);
  type metadata accessor for WidgetEntryView(0);
  sub_10002A65C(&qword_100049980, type metadata accessor for WidgetEntryView, &unk_10003C448);
  sub_10002A65C(&qword_100049988, type metadata accessor for PeopleWidgetProvider, &unk_10003CFE8);
  sub_1000399D0();
  sub_100039260();
  v28 = sub_1000395E0();
  v30 = v29;
  v32 = v31;
  v33 = sub_100001BCC();
  sub_100039310();
  sub_1000093C0(v28, v30, v32 & 1);

  (*(v75 + 8))(v7, v5);
  sub_100039260();
  v34 = sub_1000395E0();
  v36 = v35;
  v38 = v37;
  v96 = v5;
  v97 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v74;
  v41 = v76;
  sub_1000392D0();
  sub_1000093C0(v34, v36, v38 & 1);

  (*(v77 + 8))(v9, v41);
  v77 = sub_100001B3C(&qword_100049990, &qword_10003CCA0);
  v42 = sub_100039960();
  v71 = v42;
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = *(v43 + 80);
  v72 = (v45 + 32) & ~v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10003CC10;
  v47 = v46 + ((v45 + 32) & ~v45);
  LODWORD(v75) = enum case for WidgetFamily.systemSmall(_:);
  v48 = *(v43 + 104);
  v70 = v48;
  v48(v47);
  (v48)(v47 + v44, enum case for WidgetFamily.systemMedium(_:), v42);
  v96 = v41;
  v97 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v78;
  v51 = v83;
  sub_1000392E0();

  v52 = (*(v84 + 8))(v40, v51);
  (*v73)(v52);
  v96 = v51;
  v97 = v49;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v79;
  v55 = v85;
  sub_100039340();
  (*(v86 + 8))(v50, v55);
  v96 = v55;
  v97 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v80;
  v58 = v87;
  sub_100039320();
  (*(v88 + 8))(v54, v58);
  v96 = v58;
  v97 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v81;
  v61 = v89;
  sub_100039300();
  (*(v90 + 8))(v57, v61);
  v96 = v61;
  v97 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v82;
  v64 = v91;
  sub_100039330();
  (*(v92 + 8))(v60, v64);
  sub_100001B3C(&qword_100049998, &qword_10003CCA8);
  sub_100039980();
  v65 = swift_allocObject();
  v92 = xmmword_10003B220;
  *(v65 + 16) = xmmword_10003B220;
  sub_100039970();
  v66 = v72;
  v67 = swift_allocObject();
  *(v67 + 16) = v92;
  v70(v67 + v66, v75, v71);
  v96 = v64;
  v97 = v62;
  swift_getOpaqueTypeConformance2();
  v68 = v93;
  sub_1000392F0();

  return (*(v94 + 8))(v63, v68);
}

double sub_10002A0DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PeopleWidgetProvider.Entry(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039BC0();
  sub_100039BB0();
  sub_100039B70();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10002A6A4(a1, v6, type metadata accessor for PeopleWidgetProvider.Entry);
  sub_10002B7FC(v6, a2);

  return result;
}

uint64_t sub_10002A1E4@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000023;
  a1[1] = 0x800000010003A940;
  v2 = (a1 + *(type metadata accessor for PeopleWidget(0) + 20));
  v3 = [objc_allocWithZone(ACAccountStore) init];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for AccountStore(0);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100038E40();
  *(v5 + 112) = &unk_10003CC20;
  *(v5 + 120) = v4;
  v6 = _s12DependenciesVMa_1(0);
  sub_100038A10();
  result = sub_100038880();
  *v2 = sub_100036458;
  v2[1] = 0;
  v2[2] = v5;
  v8 = (v2 + *(v6 + 32));
  *v8 = &unk_10003D280;
  v8[1] = 0;
  return result;
}

uint64_t type metadata accessor for PeopleWidget(uint64_t a1)
{
  result = qword_100049930;
  if (!qword_100049930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A380()
{

  return swift_deallocObject();
}

uint64_t sub_10002A3B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027F30;

  return sub_100002738(v2);
}

uint64_t sub_10002A460(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s12DependenciesVMa_1(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002A520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s12DependenciesVMa_1(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002A5C4(uint64_t a1)
{
  result = _s12DependenciesVMa_1(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002A65C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002A6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A70C()
{
  sub_100001B84(&qword_100049978, &qword_10003CC98);
  sub_100001B84(&qword_100049970, &qword_10003CC90);
  sub_100001B84(&qword_100049968, &qword_10003CC88);
  sub_100001B84(&qword_1000482F8, &qword_10003AF20);
  sub_100001B84(&qword_100048300, &qword_10003AF28);
  sub_100001B84(&qword_100048308, &qword_10003AF30);
  sub_100001B84(&qword_100048310, &qword_10003AF38);
  sub_100001B84(&qword_100048318, &qword_10003AF40);
  sub_100001BCC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002A92C()
{
  v0 = type metadata accessor for PeopleWidget(0);
  __chkstk_darwin(v0);
  v2 = (&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = 0xD000000000000023;
  v2[1] = 0x800000010003A940;
  v4 = (v2 + *(v3 + 20));
  v5 = [objc_allocWithZone(ACAccountStore) init];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  type metadata accessor for AccountStore(0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100038E40();
  *(v7 + 112) = &unk_10003CC20;
  *(v7 + 120) = v6;
  v8 = _s12DependenciesVMa_1(0);
  sub_100038A10();
  sub_100038880();
  *v4 = sub_100036458;
  v4[1] = 0;
  v4[2] = v7;
  v9 = (v4 + *(v8 + 32));
  *v9 = &unk_10003D280;
  v9[1] = 0;
  sub_10002ABD8();
  sub_1000392C0();
  return sub_10002AC30(v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10002AB20();
  sub_100038EF0();
  return 0;
}

unint64_t sub_10002AB20()
{
  result = qword_1000499A0;
  if (!qword_1000499A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000499A0);
  }

  return result;
}

uint64_t sub_10002ABA0()
{

  return swift_deallocObject();
}

unint64_t sub_10002ABD8()
{
  result = qword_1000499A8;
  if (!qword_1000499A8)
  {
    type metadata accessor for PeopleWidget(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000499A8);
  }

  return result;
}

uint64_t sub_10002AC30(uint64_t a1)
{
  v2 = type metadata accessor for PeopleWidget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AC8C()
{
  type metadata accessor for PeopleWidget(255);
  sub_10002ABD8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for PeopleWidgetDynamicOptionsProvider(uint64_t a1)
{
  result = qword_100049A10;
  if (!qword_100049A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002ADC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002AE0C()
{
  result = qword_100049760;
  if (!qword_100049760)
  {
    sub_100001B84(&qword_100049768, qword_10003CD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049760);
  }

  return result;
}

void sub_10002AE70(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for PeopleWidgetDynamicOptionsProvider(0);
  sub_100038E40();
  type metadata accessor for WidgetPersonEntityQuery(0);
  sub_100038E40();
  *a3 = a1;
  a3[1] = a2;
  oslog = sub_100038E30();
  v6 = sub_100039C70();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100035100(0xD000000000000013, 0x800000010003A9E0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, "%s", v7, 0xCu);
    sub_100002D54(v8);
  }
}

uint64_t sub_10002B000(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002B020, 0, 0);
}

uint64_t sub_10002B020()
{
  v9 = v0;
  type metadata accessor for PeopleWidgetDynamicOptionsProvider(0);
  v1 = sub_100038E30();
  v2 = sub_100039C70();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100035100(0x52746C7561666564, 0xEF2928746C757365, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100002D54(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10002B1A4;
  v6 = *(v0 + 16);

  return sub_100021F68(v6);
}

uint64_t sub_10002B1A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002B298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002B2B8, 0, 0);
}

uint64_t sub_10002B2B8()
{
  v9 = v0;
  type metadata accessor for PeopleWidgetDynamicOptionsProvider(0);
  v1 = sub_100038E30();
  v2 = sub_100039C70();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100035100(0x2873746C75736572, 0xE900000000000029, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100002D54(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10002B1A4;
  v6 = *(v0 + 16);

  return sub_10002414C(v6);
}

uint64_t sub_10002B434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003DBC;

  return sub_10002B298(a1);
}

uint64_t sub_10002B4CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003DBC;

  return sub_10002B000(a1);
}

uint64_t sub_10002B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetPersonEntityQuery(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100038E50();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002B67C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetPersonEntityQuery(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100038E50();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002B778(uint64_t a1)
{
  result = type metadata accessor for WidgetPersonEntityQuery(319);
  if (v2 <= 0x3F)
  {
    result = sub_100038E50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v3 = sub_100038960();
  v169 = *(v3 - 8);
  v170 = v3;
  __chkstk_darwin(v3);
  v168 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for LoadedView.Callout(0);
  __chkstk_darwin(v177);
  v173 = (&v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100001B3C(&qword_1000486D0, "f)");
  __chkstk_darwin(v6 - 8);
  v172 = &v157 - v7;
  v8 = sub_1000388D0();
  v165 = *(v8 - 8);
  v166 = v8;
  __chkstk_darwin(v8);
  v164 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001B3C(&qword_1000486C8, &unk_10003B630);
  __chkstk_darwin(v10 - 8);
  v171 = &v157 - v11;
  v163 = sub_100038900();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_100038920();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v15 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo(0);
  v16 = *(v174 - 8);
  __chkstk_darwin(v174);
  v176 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001B3C(&qword_100049A48, &qword_10003CDE8);
  __chkstk_darwin(v18 - 8);
  v20 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v175 = &v157 - v22;
  v23 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  __chkstk_darwin(v23);
  v25 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  __chkstk_darwin(v179);
  v167 = (&v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v29 = &v157 - v28;
  v30 = sub_100001B3C(&qword_1000491B8, ":");
  __chkstk_darwin(v30 - 8);
  v32 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v157 - v34;
  __chkstk_darwin(v36);
  v181 = &v157 - v37;
  v38 = *(type metadata accessor for PeopleWidgetProvider.Entry(0) + 20);
  v178 = a1;
  sub_10002CBB4(a1 + v38, v25, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = *v25;
      v42 = *(v25 + 1);
      v43 = *(v25 + 3);
      v159 = *(v25 + 2);
      v158 = v43;
      v44 = v25[32];
      v45 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
      if (v44)
      {
        v46 = &v25[v45];
        v47 = v175;
        sub_100006E48(v46, v175, &qword_100049A48, &qword_10003CDE8);
        v182 = 0xD000000000000010;
        v183 = 0x800000010003AA20;
        v184._countAndFlagsBits = v41;
        v184._object = v42;
        sub_100039B10(v184);
        sub_100038B10();

        sub_10002CC18(v47, v20);
        if ((*(v16 + 48))(v20, 1, v174) == 1)
        {
          sub_100009658(v20, &qword_100049A48, &qword_10003CDE8);
          sub_1000388F0();
          v48 = sub_100039280();
          v50 = v49;
          v52 = v51;
          v176 = v53;
          sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
          sub_100009658(v47, &qword_100049A48, &qword_10003CDE8);
          v54 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
          v55 = v54[6];
          v56 = sub_100038660();
          (*(*(v56 - 8) + 56))(&v29[v55], 1, 1, v56);
          v57 = v54[7];
          v58 = sub_100038AA0();
          v59 = *(*(v58 - 8) + 56);
          v59(&v29[v57], 1, 1, v58);
          v60 = &v29[v54[9]];
          v59(&v60[*(v177 + 20)], 1, 1, v58);

          *v60 = v158;
          *v29 = v48;
          *(v29 + 1) = v50;
          v29[16] = v52 & 1;
          *(v29 + 3) = v176;
          *(v29 + 2) = 0u;
          *(v29 + 3) = 0u;
          v61 = &v29[v54[8]];
          *v61 = 0;
          *(v61 + 1) = 0;
          *&v29[v54[10]] = 0;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v157 = v42;
          sub_10002CCE8(v20, v176, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
          sub_100038930();
          v103 = v162;
          v104 = v163;
          (*(v162 + 104))(v13, enum case for PublishedLocation.Label.DetailLevel.compact(_:), v163);
          sub_100038910();
          v106 = v105;
          (*(v103 + 8))(v13, v104);
          (*(v160 + 8))(v15, v161);

          v162 = sub_100039280();
          v161 = v107;
          LODWORD(v160) = v108;
          v163 = v109;
          if (v106)
          {
            sub_100039BC0();

            sub_100039BB0();
            sub_100039B70();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v110 = sub_100039280();
            v112 = v111;
            v114 = v113;
            v116 = v115;

            v117 = v114 & 1;
          }

          else
          {

            v110 = 0;
            v112 = 0;
            v117 = 0;
            v116 = 0;
          }

          v142 = v171;
          v143 = v176;
          sub_100038980();
          v144 = sub_100038660();
          (*(*(v144 - 8) + 56))(v142, 0, 1, v144);
          v145 = v164;
          sub_1000388E0();
          sub_1000388C0();
          (*(v165 + 8))(v145, v166);
          v146 = v158;
          v147 = v168;
          sub_100038970();
          v148 = v173;
          sub_100038950();
          (*(v169 + 8))(v147, v170);
          *v148 = v146;
          v149 = *(v143 + *(v174 + 20));
          if (v149)
          {
            sub_100039BC0();
            v150 = v149;
            sub_100039BB0();
            sub_100039B70();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
            sub_100009658(v175, &qword_100049A48, &qword_10003CDE8);
          }

          else
          {

            sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
            sub_100009658(v175, &qword_100049A48, &qword_10003CDE8);
          }

          sub_10002CC88(v176, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
          v151 = v167;
          v152 = v161;
          *v167 = v162;
          *(v151 + 8) = v152;
          *(v151 + 16) = v160 & 1;
          *(v151 + 24) = v163;
          *(v151 + 32) = v110;
          *(v151 + 40) = v112;
          *(v151 + 48) = v117;
          *(v151 + 56) = v116;
          v153 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
          sub_100006E48(v171, v151 + v153[6], &qword_1000486C8, &unk_10003B630);
          sub_100006E48(v172, v151 + v153[7], &qword_1000486D0, "f)");
          v154 = (v151 + v153[8]);
          *v154 = 0;
          v154[1] = 0;
          sub_10002CCE8(v173, v151 + v153[9], type metadata accessor for LoadedView.Callout);
          *(v151 + v153[10]) = v149;
          swift_storeEnumTagMultiPayload();
          sub_10002CCE8(v151, v29, type metadata accessor for WidgetEntryViewContent.Model.State);
        }

        v129 = v180;
        v63 = v181;
      }

      else
      {
        v176 = v45;
        v76 = v42;
        v77 = v25[33];
        v78 = sub_100039260();
        v173 = v79;
        v174 = v78;
        LODWORD(v172) = v80;
        v175 = v81;
        if (v77 == 1)
        {
          v82 = sub_100039260();
          v170 = v83;
          v171 = v82;
          v169 = v84;
          v86 = v85 & 1;
        }

        else
        {
          v170 = 0;
          v171 = 0;
          v86 = 0;
          v169 = 0;
        }

        v182 = 0xD000000000000010;
        v183 = 0x800000010003AA20;
        v185._countAndFlagsBits = v41;
        v185._object = v76;
        sub_100039B10(v185);
        v63 = v181;
        sub_100038B10();

        sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
        v118 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
        v119 = v118[6];
        v120 = sub_100038660();
        (*(*(v120 - 8) + 56))(&v29[v119], 1, 1, v120);
        v121 = v118[7];
        v122 = sub_100038AA0();
        v123 = *(*(v122 - 8) + 56);
        v123(&v29[v121], 1, 1, v122);
        v124 = &v29[v118[9]];
        v123(&v124[*(v177 + 20)], 1, 1, v122);

        *v124 = v158;
        v125 = v173;
        *v29 = v174;
        *(v29 + 1) = v125;
        v29[16] = v172 & 1;
        v126 = v170;
        v127 = v171;
        *(v29 + 3) = v175;
        *(v29 + 4) = v127;
        *(v29 + 5) = v126;
        *(v29 + 6) = v86;
        *(v29 + 7) = v169;
        v128 = &v29[v118[8]];
        *v128 = 0;
        *(v128 + 1) = 0;
        *&v29[v118[10]] = 1;
        swift_storeEnumTagMultiPayload();
        sub_100009658(&v25[v176], &qword_100049A48, &qword_10003CDE8);
        v129 = v180;
      }

      goto LABEL_35;
    }

    sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
    v75 = sub_100038B20();
    v63 = v181;
    (*(*(v75 - 8) + 56))(v181, 1, 1, v75);
LABEL_26:
    swift_storeEnumTagMultiPayload();
    v129 = v180;
LABEL_35:
    sub_100006E48(v63, v129, &qword_1000491B8, ":");
    v155 = type metadata accessor for WidgetEntryViewContent.Model(0);
    return sub_10002CCE8(v29, v129 + *(v155 + 20), type metadata accessor for WidgetEntryViewContent.Model.State);
  }

  v62 = *v25;
  if (v62 == 1)
  {
    v130 = sub_100038B20();
    v63 = v181;
    (*(*(v130 - 8) + 56))(v181, 1, 1, v130);
    v131 = sub_100039260();
    v133 = v132;
    v135 = v134;
    v137 = v136;
    sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
    *v29 = v131;
    *(v29 + 1) = v133;
    v29[16] = v135 & 1;
    *(v29 + 3) = v137;
    goto LABEL_26;
  }

  v63 = v181;
  if (v62 != 3)
  {
    if (v62 == 2)
    {
      v64 = sub_100038B20();
      (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
      if (qword_1000482F0 != -1)
      {
        swift_once();
      }

      v65 = sub_100038E10();
      v66 = sub_100004158(v65, qword_10004BDD8);
      (*(*(v65 - 8) + 16))(v29, v66, v65);
      v67 = sub_100039260();
      v69 = v68;
      v71 = v70;
      v73 = v72;
      sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
      v74 = &v29[*(type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(0) + 20)];
      *v74 = v67;
      *(v74 + 1) = v69;
      v74[16] = v71 & 1;
      *(v74 + 3) = v73;
      goto LABEL_26;
    }

    v138 = sub_100038B20();
    (*(*(v138 - 8) + 56))(v35, 1, 1, v138);
    sub_100006E48(v35, v63, &qword_1000491B8, ":");
    v89 = sub_100039260();
    v91 = v139;
    v93 = v140;
    v95 = v141;
    v96 = 0;
    v98 = 0;
    v102 = 0;
    v100 = 0;
    goto LABEL_25;
  }

  sub_100038B10();
  v87 = sub_100038B20();
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(v32, 1, v87) != 1)
  {
    (*(v88 + 32))(v35, v32, v87);
    (*(v88 + 56))(v35, 0, 1, v87);
    sub_100006E48(v35, v63, &qword_1000491B8, ":");
    v89 = sub_100039260();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = sub_100039260();
    v98 = v97;
    v100 = v99;
    v102 = v101 & 1;
LABEL_25:
    sub_10002CC88(v178, type metadata accessor for PeopleWidgetProvider.Entry);
    *v29 = v89;
    *(v29 + 1) = v91;
    v29[16] = v93 & 1;
    *(v29 + 3) = v95;
    *(v29 + 4) = v96;
    *(v29 + 5) = v98;
    *(v29 + 6) = v102;
    *(v29 + 7) = v100;
    goto LABEL_26;
  }

  result = sub_100009658(v32, &qword_1000491B8, ":");
  __break(1u);
  return result;
}

uint64_t sub_10002CBB4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002CC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100049A48, &qword_10003CDE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002CCE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002CD50()
{
  result = qword_100049A58;
  if (!qword_100049A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A58);
  }

  return result;
}

unint64_t sub_10002CDA8()
{
  result = qword_100049A60;
  if (!qword_100049A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A60);
  }

  return result;
}

unint64_t sub_10002CE00()
{
  result = qword_100049A68;
  if (!qword_100049A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A68);
  }

  return result;
}

uint64_t sub_10002CEA4()
{
  v0 = sub_100038B00();
  sub_100004190(v0, qword_10004BD30);
  sub_100004158(v0, qword_10004BD30);
  return sub_100038AF0();
}

uint64_t sub_10002CF08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000482B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100038B00();
  v3 = sub_100004158(v2, qword_10004BD30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002CFB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002D778();
  *v4 = v2;
  v4[1] = sub_100003798;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10002D05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002D144();
  *a1 = result;
  return result;
}

uint64_t sub_10002D084(uint64_t a1)
{
  v2 = sub_10002D0F0();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002D0F0()
{
  result = qword_100049A70;
  if (!qword_100049A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A70);
  }

  return result;
}

uint64_t sub_10002D144()
{
  v0 = sub_1000385C0();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v35 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100038E50();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v34);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v30 - v6;
  v36 = type metadata accessor for PeopleWidgetDynamicOptionsProvider(0);
  __chkstk_darwin(v36);
  v33 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100001B3C(&qword_100049A78, "p5");
  __chkstk_darwin(v9 - 8);
  v31 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v30[0] = v30 - v12;
  v14 = sub_100001B3C(&qword_100049A80, "p5");
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v30[1] = v30 - v15;
  v17 = sub_100001B3C(&qword_100049740, "Z7");
  __chkstk_darwin(v17 - 8);
  v19 = v30 - v18;
  v20 = sub_100038B00();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v32 = sub_100001B3C(&qword_100049A88, "H5");
  sub_100038AF0();
  (*(v21 + 56))(v19, 1, 1, v20);
  v22 = type metadata accessor for WidgetPersonEntity(0);
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = sub_100038410();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v24(v31, 1, 1, v23);
  sub_100038E40();
  v25 = *(v2 + 32);
  v26 = v34;
  v25(v4, v7, v34);
  v27 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v28 = swift_allocObject();
  v25((v28 + v27), v4, v26);
  sub_10002AE70(&unk_10003CB80, v28, v33);
  (*(v37 + 104))(v35, enum case for InputConnectionBehavior.default(_:), v38);
  sub_10002ADC0(&qword_100049A90, type metadata accessor for PeopleWidgetDynamicOptionsProvider, &unk_10003CD28);
  sub_10002ADC0(&qword_100049638, type metadata accessor for WidgetPersonEntity, &unk_10003C6C0);
  return sub_100038520();
}

uint64_t sub_10002D6F0()
{
  v1 = sub_100038E50();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10002D778()
{
  result = qword_100049A98;
  if (!qword_100049A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049A98);
  }

  return result;
}

uint64_t sub_10002D7F4(uint64_t a1)
{
  v2 = sub_100039010();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1000390D0();
}

uint64_t sub_10002D8BC(uint64_t a1)
{
  sub_100038E40();
  sub_100035018(a1, v1 + OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies, _s12DependenciesVMa_1);

  v3 = sub_100038E30();
  v4 = sub_100039C70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_10002DA7C(0xD000000000000013, 0x800000010003A9E0);
    v9 = sub_100035100(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100002D54(v6);
  }

  sub_100035080(a1, _s12DependenciesVMa_1);
  return v1;
}

unint64_t sub_10002DA7C(uint64_t a1, void *a2)
{
  sub_100039CE0(28);

  v5._countAndFlagsBits = sub_100039AD0();
  sub_100039B10(v5);

  v6._countAndFlagsBits = 2108704;
  v6._object = 0xE300000000000000;
  sub_100039B10(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100039B10(v7);
  return 0xD000000000000015;
}

uint64_t sub_10002DB30()
{

  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136446210;
    v7 = v4;
    sub_100039CE0(28);

    v9._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v9);

    v10._countAndFlagsBits = 2108704;
    v10._object = 0xE300000000000000;
    sub_100039B10(v10);
    v11._object = 0x800000010003AC40;
    v11._countAndFlagsBits = 0xD000000000000010;
    sub_100039B10(v11);
    v5 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v7);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100002D54(v4);
  }

  sub_100038B40();
  type metadata accessor for PeopleWidgetProvider.Entry(0);
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_100038890();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_1000388B0();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_100001B3C(&qword_100049B78, &qword_10003D0C0);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for PeopleWidgetProvider.Entry(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo(0);
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = sub_100038DF0();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v10 = sub_100038D90();
  v4[33] = v10;
  v4[34] = *(v10 - 8);
  v4[35] = swift_task_alloc();
  v11 = sub_100038CF0();
  v4[36] = v11;
  v4[37] = *(v11 - 8);
  v4[38] = swift_task_alloc();
  v12 = sub_100039960();
  v4[39] = v12;
  v4[40] = *(v12 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v13 = sub_100038AD0();
  v4[43] = v13;
  v4[44] = *(v13 - 8);
  v4[45] = swift_task_alloc();
  v14 = sub_100038990();
  v4[46] = v14;
  v4[47] = *(v14 - 8);
  v4[48] = swift_task_alloc();
  v15 = sub_100038A50();
  v4[49] = v15;
  v4[50] = *(v15 - 8);
  v4[51] = swift_task_alloc();
  v16 = sub_100038A00();
  v4[52] = v16;
  v4[53] = *(v16 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = sub_100001B3C(&qword_100049B80, &qword_10003D0C8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  sub_100001B3C(&qword_100049B88, &qword_10003D0D0);
  v4[64] = swift_task_alloc();
  v17 = sub_100038A20();
  v4[65] = v17;
  v4[66] = *(v17 - 8);
  v4[67] = swift_task_alloc();
  v18 = sub_100038A80();
  v4[68] = v18;
  v4[69] = *(v18 - 8);
  v4[70] = swift_task_alloc();
  v19 = sub_1000386F0();
  v4[71] = v19;
  v4[72] = *(v19 - 8);
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v20 = sub_100038710();
  v4[75] = v20;
  v4[76] = *(v20 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v21 = sub_100038750();
  v4[79] = v21;
  v4[80] = *(v21 - 8);
  v4[81] = swift_task_alloc();
  v22 = sub_100038680();
  v4[82] = v22;
  v4[83] = *(v22 - 8);
  v4[84] = swift_task_alloc();
  v23 = sub_100039010();
  v4[85] = v23;
  v4[86] = *(v23 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = sub_100001B3C(&qword_100049B90, &qword_10003D0D8);
  v4[89] = swift_task_alloc();
  v24 = sub_100039A00();
  v4[90] = v24;
  v4[91] = *(v24 - 8);
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  sub_100001B3C(&qword_100049B98, &unk_10003D0E0);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v25 = sub_100038780();
  v4[97] = v25;
  v4[98] = *(v25 - 8);
  v4[99] = swift_task_alloc();
  sub_100001B3C(&qword_100049A80, "p5");
  v4[100] = swift_task_alloc();
  v26 = type metadata accessor for WidgetPersonEntity(0);
  v4[101] = v26;
  v4[102] = *(v26 - 8);
  v4[103] = swift_task_alloc();

  return _swift_task_switch(sub_10002E778, 0, 0);
}

uint64_t sub_10002E778()
{
  v9 = v0;
  v0[104] = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_logger;

  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8[0] = v4;
    *v3 = 136446210;
    sub_100039CE0(28);

    v8[1] = 0xD000000000000015;
    v8[2] = 0x800000010003AC20;
    v11._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v11);

    v12._countAndFlagsBits = 2108704;
    v12._object = 0xE300000000000000;
    sub_100039B10(v12);
    v13._object = 0x800000010003AC00;
    v13._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v13);
    v5 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v8);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Start", v3, 0xCu);
    sub_100002D54(v4);
  }

  v0[105] = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies;
  v6 = swift_task_alloc();
  v0[106] = v6;
  *v6 = v0;
  v6[1] = sub_10002E9A8;

  return sub_100001EB4();
}

uint64_t sub_10002E9A8(char a1)
{
  *(*v2 + 51) = a1;

  if (v1)
  {
    v3 = sub_1000324E8;
  }

  else
  {
    v3 = sub_10002EABC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002EABC()
{
  v49 = v0;

  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 51);
    v4 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v4 = 136446467;
    sub_100039CE0(28);

    v47 = 0xD000000000000015;
    v48 = 0x800000010003AC20;
    v51._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v51);

    v52._countAndFlagsBits = 2108704;
    v52._object = 0xE300000000000000;
    sub_100039B10(v52);
    v53._object = 0x800000010003AC00;
    v53._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v53);
    v5 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v46);

    *(v4 + 4) = v5;
    *(v4 + 12) = 2081;
    *(v0 + 50) = v3;
    v6 = sub_100039B00();
    v8 = sub_100035100(v6, v7, &v46);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - AccountInfo %{private}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 51) == 1)
  {
    v9 = *(v0 + 816);
    v10 = *(v0 + 808);
    v11 = *(v0 + 800);
    sub_100038510();
    if ((*(v9 + 48))(v11, 1, v10) == 1)
    {
      sub_100009658(*(v0 + 800), &qword_100049A80, "p5");

      v12 = sub_100038E30();
      v13 = sub_100039C70();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 88);
        v15 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = 0;
        *v15 = 136446466;
        v48 = 0xE000000000000000;
        sub_100039CE0(28);

        v47 = 0xD000000000000015;
        v48 = 0x800000010003AC20;
        v54._countAndFlagsBits = sub_100039AD0();
        sub_100039B10(v54);

        v55._countAndFlagsBits = 2108704;
        v55._object = 0xE300000000000000;
        sub_100039B10(v55);
        v56._object = 0x800000010003AC00;
        v56._countAndFlagsBits = 0xD000000000000011;
        sub_100039B10(v56);
        v16 = sub_100035100(v47, v48, &v46);

        *(v15 + 4) = v16;
        *(v15 + 12) = 2080;
        *(v0 + 56) = v14;

        v17 = sub_100039B00();
        v19 = sub_100035100(v17, v18, &v46);

        *(v15 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - No Entity in configuration: %s", v15, 0x16u);
        swift_arrayDestroy();
      }

      v21 = *(v0 + 120);
      v20 = *(v0 + 128);
      v22 = *(v0 + 112);
      v23 = *(v0 + 104) + *(v0 + 840);
      v24 = _s12DependenciesVMa_1(0);
      (*(v21 + 16))(v20, v23 + *(v24 + 28), v22);
      sub_1000388A0();
      v25 = swift_task_alloc();
      *(v0 + 976) = v25;
      v26 = sub_1000351CC(&qword_100049BA0, &type metadata accessor for PersonEntityQuery, &protocol conformance descriptor for PersonEntityQuery);
      *v25 = v0;
      v25[1] = sub_100032058;
      v27 = *(v0 + 176);
      v28 = *(v0 + 136);

      return EntityQuery.results()(v27, v28, v26);
    }

    else
    {
      v35 = *(v0 + 808);
      v36 = *(v0 + 792);
      v37 = *(v0 + 784);
      v38 = *(v0 + 776);
      v39 = *(v0 + 104) + *(v0 + 840);
      sub_100035290(*(v0 + 800), *(v0 + 824), type metadata accessor for WidgetPersonEntity);
      v40 = _s12DependenciesVMa_1(0);
      *(v0 + 856) = v40;
      v41 = *(v39 + *(v40 + 32));
      sub_100001B3C(&qword_100049BA8, &qword_10003D0F8);
      sub_100038800();
      v42 = swift_allocObject();
      *(v0 + 864) = v42;
      *(v42 + 16) = xmmword_10003B220;
      *(v0 + 52) = *(v35 + 20);
      sub_100038830();
      sub_100038770();
      (*(v37 + 8))(v36, v38);
      v45 = (v41 + *v41);
      v43 = swift_task_alloc();
      *(v0 + 872) = v43;
      *v43 = v0;
      v43[1] = sub_10002F474;

      return v45(v42);
    }
  }

  else
  {
    v29 = *(v0 + 184);
    v30 = *(v0 + 80);
    v31 = sub_100039A30();
    sub_100038B40();
    v32 = *(v29 + 20);
    if (v31)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    *(v30 + v32) = v33;
    type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10002F474()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_100032E4C;
  }

  else
  {

    v2 = sub_10002F590;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002F590()
{
  v81 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  sub_1000399E0();
  *(v0 + 888) = v4;
  *(v0 + 896) = v5;
  sub_100039A10();
  swift_getKeyPath();
  v6 = sub_1000399F0();

  v78 = *(v2 + 8);
  v78(v1, v3);
  if (v6)
  {
    if (*(v6 + 16))
    {
      (*(*(v0 + 688) + 16))(*(v0 + 768), v6 + ((*(*(v0 + 688) + 80) + 32) & ~*(*(v0 + 688) + 80)), *(v0 + 680));
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 768);
  v9 = *(v0 + 760);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 688);
  v13 = *(v0 + 680);
  v14 = *(v12 + 56);
  v14(v8, v7, 1, v13);
  (*(v12 + 104))(v9, enum case for LayoutDirection.rightToLeft(_:), v13);
  v14(v9, 0, 1, v13);
  v15 = *(v11 + 48);
  sub_1000095F0(v8, v10, &qword_100049B98, &unk_10003D0E0);
  sub_1000095F0(v9, v10 + v15, &qword_100049B98, &unk_10003D0E0);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v13) == 1)
  {
    v17 = *(v0 + 768);
    v18 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v17, &qword_100049B98, &unk_10003D0E0);
    if (v16(v10 + v15, 1, v18) == 1)
    {
      sub_100009658(*(v0 + 712), &qword_100049B98, &unk_10003D0E0);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v19 = *(v0 + 680);
  sub_1000095F0(*(v0 + 712), *(v0 + 752), &qword_100049B98, &unk_10003D0E0);
  v20 = v16(v10 + v15, 1, v19);
  v21 = *(v0 + 768);
  v22 = *(v0 + 760);
  v23 = *(v0 + 752);
  if (v20 == 1)
  {
    v24 = *(v0 + 688);
    v25 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v21, &qword_100049B98, &unk_10003D0E0);
    (*(v24 + 8))(v23, v25);
LABEL_12:
    sub_100009658(*(v0 + 712), &qword_100049B90, &qword_10003D0D8);
    goto LABEL_14;
  }

  v77 = *(v0 + 712);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  (*(v27 + 32))(v26, v10 + v15, v28);
  sub_1000351CC(&qword_100049BC0, &type metadata accessor for LayoutDirection, &protocol conformance descriptor for LayoutDirection);
  sub_100039AE0();
  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_100009658(v22, &qword_100049B98, &unk_10003D0E0);
  sub_100009658(v21, &qword_100049B98, &unk_10003D0E0);
  v29(v23, v28);
  sub_100009658(v77, &qword_100049B98, &unk_10003D0E0);
LABEL_14:
  v30 = *(v0 + 736);
  v31 = *(v0 + 720);
  sub_100039A10();
  swift_getKeyPath();
  v32 = sub_1000399F0();

  v78(v30, v31);
  if (v32)
  {
  }

  v33 = *(v0 + 648);
  v34 = *(v0 + 640);
  v35 = *(v0 + 624);
  v36 = *(v0 + 608);
  v70 = *(v0 + 600);
  v71 = *(v0 + 632);
  v69 = *(v0 + 592);
  v75 = *(v0 + 616);
  v76 = *(v0 + 584);
  v73 = *(v0 + 576);
  v74 = *(v0 + 568);
  sub_1000386C0();
  v37 = sub_100038670();
  v38 = sub_100038DB0();
  *(v0 + 904) = v38;

  sub_100038840();
  v39 = sub_100038730();
  v79 = v40;
  v67 = v39;
  *(v0 + 912) = v39;
  *(v0 + 920) = v40;
  (*(v34 + 8))(v33, v71);
  v72 = sub_100038670();
  *(v0 + 928) = v72;
  v68 = v38;
  sub_100038720();
  sub_100038700();
  v41 = *(v36 + 8);
  v41(v35, v70);
  v66 = sub_1000386E0() & 1;
  *(v0 + 992) = v66;
  v42 = *(v73 + 8);
  v42(v69, v74);
  sub_100038720();
  sub_100038700();
  v41(v75, v70);
  v43 = sub_1000386D0() & 1;
  *(v0 + 993) = v43;
  v42(v76, v74);

  v44 = v68;

  v45 = v72;
  v46 = sub_100038E30();
  v47 = sub_100039C70();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v43;
    v49 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v49 = 136446467;
    sub_100039CE0(28);

    v80[1] = 0xD000000000000015;
    v80[2] = 0x800000010003AC20;
    v83._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v83);

    v84._countAndFlagsBits = 2108704;
    v84._object = 0xE300000000000000;
    sub_100039B10(v84);
    v85._object = 0x800000010003AC00;
    v85._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v85);
    v50 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v80);

    *(v49 + 4) = v50;
    *(v49 + 12) = 2081;
    *(v0 + 16) = v67;
    *(v0 + 24) = v79;
    *(v0 + 32) = v45;
    *(v0 + 40) = v44;
    *(v0 + 48) = v66;
    *(v0 + 49) = v48;
    v51 = v44;

    v52 = v45;
    v53 = sub_100039B00();
    v55 = sub_100035100(v53, v54, v80);

    *(v49 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "%{public}s - PersonInfo %{private}s", v49, 0x16u);
    swift_arrayDestroy();
  }

  v56 = *(v0 + 824);
  v57 = *(v0 + 648);
  v58 = *(v0 + 640);
  v59 = *(v0 + 632);
  v60 = *(v0 + 512);
  (*(*(v0 + 528) + 16))(*(v0 + 536), *(v0 + 104) + *(v0 + 840) + *(*(v0 + 856) + 24), *(v0 + 520));
  sub_100038A30();
  (*(v58 + 16))(v57, v56, v59);
  sub_100038860();
  v61 = sub_100038870();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  sub_100038A60();
  v62 = swift_task_alloc();
  *(v0 + 936) = v62;
  *v62 = v0;
  v62[1] = sub_10002FF4C;
  v63 = *(v0 + 496);
  v64 = *(v0 + 448);

  return _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(v63, v64);
}

uint64_t sub_10002FF4C()
{

  if (v0)
  {
    v1 = sub_100033A0C;
  }

  else
  {
    v1 = sub_10003005C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10003005C()
{
  v77 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  (*(*(v0 + 400) + 56))(v1, 0, 1, *(v0 + 392));
  sub_1000352F8(v1, v2);
  sub_1000095F0(v2, v3, &qword_100049B80, &qword_10003D0C8);

  v4 = sub_100038E30();
  v5 = sub_100039C70();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 488);
  if (v6)
  {
    v8 = *(v0 + 480);
    v9 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v9 = 136446467;
    sub_100039CE0(28);

    v75 = 0xD000000000000015;
    v76 = 0x800000010003AC20;
    v79._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v79);

    v80._countAndFlagsBits = 2108704;
    v80._object = 0xE300000000000000;
    sub_100039B10(v80);
    v81._object = 0x800000010003AC00;
    v81._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v81);
    v10 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v74);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2081;
    sub_1000095F0(v7, v8, &qword_100049B80, &qword_10003D0C8);
    v11 = sub_100039B00();
    v13 = v12;
    sub_100009658(v7, &qword_100049B80, &qword_10003D0C8);
    v14 = sub_100035100(v11, v13, &v74);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - LocationResult %{private}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100009658(v7, &qword_100049B80, &qword_10003D0C8);
  }

  v15 = *(v0 + 472);
  v16 = *(v0 + 392);
  v17 = *(v0 + 400);
  sub_1000095F0(*(v0 + 504), v15, &qword_100049B80, &qword_10003D0C8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v72 = *(v0 + 993);
    v70 = *(v0 + 992);
    v69 = *(v0 + 912);
    v18 = *(v0 + 904);
    v65 = *(v0 + 824);
    v19 = *(v0 + 664);
    v62 = *(v0 + 656);
    v63 = *(v0 + 672);
    v61 = *(v0 + 560);
    v20 = *(v0 + 552);
    v21 = *(v0 + 544);
    v22 = *(v0 + 504);
    v23 = *(v0 + 224);
    v67 = *(v0 + 216);
    v64 = *(v0 + 184);
    v24 = *(v0 + 80);
    v66 = *(v0 + 920);
    sub_100009658(*(v0 + 472), &qword_100049B80, &qword_10003D0C8);
    sub_100038B40();

    sub_100009658(v22, &qword_100049B80, &qword_10003D0C8);
    (*(v20 + 8))(v61, v21);
    (*(v19 + 8))(v63, v62);
    sub_100035080(v65, type metadata accessor for WidgetPersonEntity);
    v25 = v24 + *(v64 + 20);
    v26 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
    *v25 = v69;
    *(v25 + 8) = v66;
    *(v25 + 24) = v18;
    *(v25 + 32) = v70;
    *(v25 + 33) = v72;
    (*(v23 + 56))(v25 + v26, 1, 1, v67);
    type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 384);
    v30 = *(v0 + 376);
    v68 = *(v0 + 368);
    v73 = *(v0 + 328);
    v31 = *(v0 + 312);
    v32 = *(v0 + 320);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v71 = *(v0 + 288);
    (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
    sub_100038A40();
    sub_100038940();
    (*(v30 + 8))(v29, v68);
    sub_100039A20();
    sub_100038CE0();
    LOBYTE(v74) = 0;
    LOBYTE(v75) = 0;
    sub_100038CD0();
    v36 = v35;
    v38 = v37;
    (*(v33 + 8))(v34, v71);
    (*(v32 + 104))(v73, enum case for WidgetFamily.systemSmall(_:), v31);
    sub_1000351CC(&qword_1000487D8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100039B40();
    sub_100039B40();
    v39 = *(v32 + 8);
    *(v0 + 944) = v39;
    *(v0 + 952) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v73, v31);
    v40 = *(v0 + 896);
    if (*(v0 + 64) == *(v0 + 72))
    {
      v41 = 16.0;
      if (v40 >= 170.0)
      {
        v41 = 17.0;
      }

      v42 = v36 * 0.5 + v41;
      v43 = *(v0 + 888);
    }

    else
    {
      v43 = *(v0 + 888);
      v44 = 16.0;
      if (v40 >= 170.0)
      {
        v44 = 17.0;
      }

      v42 = v43 / 3.0 - (v36 * 0.5 + v44);
    }

    sub_100038AB0();
    sub_100038AC0();
    sub_100035A80(0, &qword_100049BB0, UIColor_ptr);
    if (qword_1000482C0 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    v47 = *(v0 + 240);
    v48 = sub_100004158(v47, qword_10004BD48);
    v49 = *(v46 + 16);
    v49(v45, v48, v47);
    sub_100039C80();
    if (qword_1000482C8 != -1)
    {
      swift_once();
    }

    v50 = 16.0;
    if (v40 >= 170.0)
    {
      v50 = 17.0;
    }

    v51 = v40 * 0.5 - (v38 + v50);
    v52 = *(v0 + 256);
    v53 = *(v0 + 240);
    v54 = sub_100004158(v53, qword_10004BD60);
    v49(v52, v54, v53);
    sub_100039C80();
    sub_100038D80();
    v55 = swift_task_alloc();
    *(v0 + 960) = v55;
    *v55 = v0;
    v55[1] = sub_100030B4C;
    v57.n128_u64[0] = *(v0 + 896);
    v58.n128_u64[0] = *(v0 + 888);
    v59 = *(v0 + 280);
    v60.n128_f64[0] = v51;

    v56.n128_f64[0] = v43 * 0.5 - v42;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v59, 0, v56, v60, v58, v57);
  }
}

uint64_t sub_100030B4C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 272);

  v7 = (v6 + 8);
  v8 = *(v4 + 280);
  v9 = *(v4 + 264);
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = sub_1000316B8;
  }

  else
  {
    *(v5 + 968) = a1;
    (*v7)(v8, v9);
    v10 = sub_100030CF4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100030CF4()
{
  v64 = v0;
  v1 = *(v0 + 968);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 344);
  (*(v0 + 944))(*(v0 + 336), *(v0 + 312));
  (*(v3 + 8))(v2, v4);
  v59 = v1;
  v5 = v1;

  v6 = sub_100038E30();
  v7 = sub_100039C70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v61 = v10;
    *v8 = 136446466;
    sub_100039CE0(28);

    v62 = 0xD000000000000015;
    v63 = 0x800000010003AC20;
    v66._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v66);

    v67._countAndFlagsBits = 2108704;
    v67._object = 0xE300000000000000;
    sub_100039B10(v67);
    v68._object = 0x800000010003AC00;
    v68._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v68);
    v11 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v61);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v59;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - MapImage %@", v8, 0x16u);
    sub_100009658(v9, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v10);
  }

  v52 = *(v0 + 993);
  v50 = *(v0 + 992);
  v13 = *(v0 + 928);
  v14 = *(v0 + 920);
  v15 = *(v0 + 912);
  v49 = *(v0 + 904);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);
  v55 = *(v0 + 200);
  v20 = *(v0 + 184);
  sub_100038A40();
  *(v17 + *(v19 + 20)) = v59;
  sub_100038B40();
  v21 = v18 + *(v20 + 20);
  v22 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
  *v21 = v15;
  *(v21 + 8) = v14;
  *(v21 + 16) = v13;
  *(v21 + 24) = v49;
  *(v21 + 32) = v50;
  *(v21 + 33) = v52;
  sub_100035018(v17, v21 + v22, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
  (*(v16 + 56))(v21 + v22, 0, 1, v19);
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_100035018(v18, v55, type metadata accessor for PeopleWidgetProvider.Entry);

  v23 = v49;

  v24 = v13;
  v25 = sub_100038E30();
  LOBYTE(v21) = sub_100039C70();

  v48 = v21;
  v26 = os_log_type_enabled(v25, v21);
  v51 = *(v0 + 928);
  v27 = *(v0 + 824);
  v28 = *(v0 + 672);
  v29 = *(v0 + 664);
  v30 = *(v0 + 656);
  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v58 = *(v0 + 504);
  v60 = *(v0 + 544);
  v33 = *(v0 + 400);
  v57 = *(v0 + 408);
  v54 = *(v0 + 904);
  v56 = *(v0 + 392);
  v53 = *(v0 + 232);
  v34 = *(v0 + 200);
  if (v26)
  {
    v44 = *(v0 + 192);
    v47 = *(v0 + 664);
    v46 = *(v0 + 656);
    v35 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = 0;
    *v35 = 136446466;
    v63 = 0xE000000000000000;
    v45 = v27;
    sub_100039CE0(28);

    v62 = 0xD000000000000015;
    v63 = 0x800000010003AC20;
    v69._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v69);

    v70._countAndFlagsBits = 2108704;
    v70._object = 0xE300000000000000;
    sub_100039B10(v70);
    v71._object = 0x800000010003AC00;
    v71._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v71);
    v36 = sub_100035100(v62, v63, &v61);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    sub_100035018(v34, v44, type metadata accessor for PeopleWidgetProvider.Entry);
    v37 = sub_100039B00();
    v39 = v38;
    sub_100035080(v34, type metadata accessor for PeopleWidgetProvider.Entry);
    v40 = sub_100035100(v37, v39, &v61);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v25, v48, "%{public}s - Result Entry %s", v35, 0x16u);
    swift_arrayDestroy();

    sub_100035080(v53, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v33 + 8))(v57, v56);
    sub_100009658(v58, &qword_100049B80, &qword_10003D0C8);
    (*(v32 + 8))(v31, v60);
    (*(v47 + 8))(v28, v46);
    v41 = v45;
  }

  else
  {

    sub_100035080(v34, type metadata accessor for PeopleWidgetProvider.Entry);
    sub_100035080(v53, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v33 + 8))(v57, v56);
    sub_100009658(v58, &qword_100049B80, &qword_10003D0C8);
    (*(v32 + 8))(v31, v60);
    (*(v29 + 8))(v28, v30);
    v41 = v27;
  }

  sub_100035080(v41, type metadata accessor for WidgetPersonEntity);
  sub_100035290(*(v0 + 208), *(v0 + 80), type metadata accessor for PeopleWidgetProvider.Entry);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1000316B8()
{
  v60 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  (*(v0 + 944))(*(v0 + 336), *(v0 + 312));
  (*(v2 + 8))(v1, v3);

  v4 = sub_100038E30();
  v5 = sub_100039C70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v57 = v8;
    *v6 = 136446466;
    sub_100039CE0(28);

    v58 = 0xD000000000000015;
    v59 = 0x800000010003AC20;
    v62._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v62);

    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    sub_100039B10(v63);
    v64._object = 0x800000010003AC00;
    v64._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v64);
    v9 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v57);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2112;
    *(v6 + 14) = 0;
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - MapImage %@", v6, 0x16u);
    sub_100009658(v7, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v8);
  }

  v50 = *(v0 + 993);
  v48 = *(v0 + 992);
  v10 = *(v0 + 928);
  v11 = *(v0 + 920);
  v12 = *(v0 + 912);
  v46 = *(v0 + 904);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  v53 = *(v0 + 200);
  v17 = *(v0 + 184);
  sub_100038A40();
  *(v14 + *(v16 + 20)) = 0;
  sub_100038B40();
  v18 = v15 + *(v17 + 20);
  v19 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
  *v18 = v12;
  *(v18 + 8) = v11;
  *(v18 + 16) = v10;
  *(v18 + 24) = v46;
  *(v18 + 32) = v48;
  *(v18 + 33) = v50;
  sub_100035018(v14, v18 + v19, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
  (*(v13 + 56))(v18 + v19, 0, 1, v16);
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_100035018(v15, v53, type metadata accessor for PeopleWidgetProvider.Entry);

  v20 = v46;

  v21 = v10;
  v22 = sub_100038E30();
  LOBYTE(v18) = sub_100039C70();

  v45 = v18;
  v23 = os_log_type_enabled(v22, v18);
  v47 = *(v0 + 928);
  v24 = *(v0 + 824);
  v25 = *(v0 + 672);
  v26 = *(v0 + 664);
  v27 = *(v0 + 656);
  v28 = *(v0 + 560);
  v29 = *(v0 + 552);
  v55 = *(v0 + 504);
  v56 = *(v0 + 544);
  v30 = *(v0 + 400);
  v54 = *(v0 + 408);
  v51 = *(v0 + 904);
  v52 = *(v0 + 392);
  v49 = *(v0 + 232);
  v31 = *(v0 + 200);
  if (v23)
  {
    v41 = *(v0 + 192);
    v44 = *(v0 + 664);
    v43 = *(v0 + 656);
    v32 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = 0;
    *v32 = 136446466;
    v59 = 0xE000000000000000;
    v42 = v24;
    sub_100039CE0(28);

    v58 = 0xD000000000000015;
    v59 = 0x800000010003AC20;
    v65._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v65);

    v66._countAndFlagsBits = 2108704;
    v66._object = 0xE300000000000000;
    sub_100039B10(v66);
    v67._object = 0x800000010003AC00;
    v67._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v67);
    v33 = sub_100035100(v58, v59, &v57);

    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    sub_100035018(v31, v41, type metadata accessor for PeopleWidgetProvider.Entry);
    v34 = sub_100039B00();
    v36 = v35;
    sub_100035080(v31, type metadata accessor for PeopleWidgetProvider.Entry);
    v37 = sub_100035100(v34, v36, &v57);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v22, v45, "%{public}s - Result Entry %s", v32, 0x16u);
    swift_arrayDestroy();

    sub_100035080(v49, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v30 + 8))(v54, v52);
    sub_100009658(v55, &qword_100049B80, &qword_10003D0C8);
    (*(v29 + 8))(v28, v56);
    (*(v44 + 8))(v25, v43);
    v38 = v42;
  }

  else
  {

    sub_100035080(v31, type metadata accessor for PeopleWidgetProvider.Entry);
    sub_100035080(v49, type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo);
    (*(v30 + 8))(v54, v52);
    sub_100009658(v55, &qword_100049B80, &qword_10003D0C8);
    (*(v29 + 8))(v28, v56);
    (*(v26 + 8))(v25, v27);
    v38 = v24;
  }

  sub_100035080(v38, type metadata accessor for WidgetPersonEntity);
  sub_100035290(*(v0 + 208), *(v0 + 80), type metadata accessor for PeopleWidgetProvider.Entry);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100032058()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 984) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000329A8;
  }

  else
  {
    v5 = sub_1000321C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000321C8()
{
  v1 = *(sub_100038550() + 16);

  if (v1)
  {
    if (sub_100039A30())
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 2;
  }

  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[10];
  sub_100038B40();
  (*(v6 + 8))(v3, v5);
  *(v7 + *(v4 + 20)) = v2;
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000324E8()
{
  v13 = v0;
  sub_100002414();
  swift_allocError();

  swift_errorRetain();
  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v3 = 136446466;
    sub_100039CE0(28);

    v12[1] = 0xD000000000000015;
    v12[2] = 0x800000010003AC20;
    v15._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v15);

    v16._countAndFlagsBits = 2108704;
    v16._object = 0xE300000000000000;
    sub_100039B10(v16);
    v17._object = 0x800000010003AC00;
    v17._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v17);
    v6 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v12);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v7;
    *v4 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Error %{public}@", v3, 0x16u);
    sub_100009658(v4, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v5);
  }

  v8 = v0[23];
  v9 = v0[10];
  sub_100038B40();

  *(v9 + *(v8 + 20)) = 0;
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000329A8()
{
  v13 = v0;

  swift_errorRetain();
  v1 = sub_100038E30();
  v2 = sub_100039C70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v3 = 136446466;
    sub_100039CE0(28);

    v12[1] = 0xD000000000000015;
    v12[2] = 0x800000010003AC20;
    v15._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v15);

    v16._countAndFlagsBits = 2108704;
    v16._object = 0xE300000000000000;
    sub_100039B10(v16);
    v17._object = 0x800000010003AC00;
    v17._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v17);
    v6 = sub_100035100(0xD000000000000015, 0x800000010003AC20, v12);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v7;
    *v4 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Error %{public}@", v3, 0x16u);
    sub_100009658(v4, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v5);
  }

  v8 = v0[23];
  v9 = v0[10];
  sub_100038B40();

  *(v9 + *(v8 + 20)) = 0;
  type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100032E4C()
{
  v90 = v0;

  swift_errorRetain();
  v1 = sub_100038E30();
  v2 = sub_100039C50();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v87 = v5;
    *v3 = 136446466;
    sub_100039CE0(28);

    v88 = 0xD000000000000015;
    v89 = 0x800000010003AC20;
    v92._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v92);

    v93._countAndFlagsBits = 2108704;
    v93._object = 0xE300000000000000;
    sub_100039B10(v93);
    v94._object = 0x800000010003AC00;
    v94._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v94);
    v6 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v87);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v7;
    *v4 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Renew Subscription Error %{public}@", v3, 0x16u);
    sub_100009658(v4, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v5);
  }

  else
  {
  }

  v8 = *(v0 + 744);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  sub_1000399E0();
  *(v0 + 888) = v11;
  *(v0 + 896) = v12;
  sub_100039A10();
  swift_getKeyPath();
  v13 = sub_1000399F0();

  v85 = *(v9 + 8);
  v85(v8, v10);
  if (v13)
  {
    if (*(v13 + 16))
    {
      (*(*(v0 + 688) + 16))(*(v0 + 768), v13 + ((*(*(v0 + 688) + 80) + 32) & ~*(*(v0 + 688) + 80)), *(v0 + 680));
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v17 = *(v0 + 712);
  v18 = *(v0 + 704);
  v19 = *(v0 + 688);
  v20 = *(v0 + 680);
  v21 = *(v19 + 56);
  v21(v15, v14, 1, v20);
  (*(v19 + 104))(v16, enum case for LayoutDirection.rightToLeft(_:), v20);
  v21(v16, 0, 1, v20);
  v22 = *(v18 + 48);
  sub_1000095F0(v15, v17, &qword_100049B98, &unk_10003D0E0);
  sub_1000095F0(v16, v17 + v22, &qword_100049B98, &unk_10003D0E0);
  v23 = *(v19 + 48);
  if (v23(v17, 1, v20) == 1)
  {
    v24 = *(v0 + 768);
    v25 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v24, &qword_100049B98, &unk_10003D0E0);
    if (v23(v17 + v22, 1, v25) == 1)
    {
      sub_100009658(*(v0 + 712), &qword_100049B98, &unk_10003D0E0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v26 = *(v0 + 680);
  sub_1000095F0(*(v0 + 712), *(v0 + 752), &qword_100049B98, &unk_10003D0E0);
  v27 = v23(v17 + v22, 1, v26);
  v28 = *(v0 + 768);
  v29 = *(v0 + 760);
  v30 = *(v0 + 752);
  if (v27 == 1)
  {
    v31 = *(v0 + 688);
    v32 = *(v0 + 680);
    sub_100009658(*(v0 + 760), &qword_100049B98, &unk_10003D0E0);
    sub_100009658(v28, &qword_100049B98, &unk_10003D0E0);
    (*(v31 + 8))(v30, v32);
LABEL_15:
    sub_100009658(*(v0 + 712), &qword_100049B90, &qword_10003D0D8);
    goto LABEL_17;
  }

  v84 = *(v0 + 712);
  v33 = *(v0 + 696);
  v34 = *(v0 + 688);
  v35 = *(v0 + 680);
  (*(v34 + 32))(v33, v17 + v22, v35);
  sub_1000351CC(&qword_100049BC0, &type metadata accessor for LayoutDirection, &protocol conformance descriptor for LayoutDirection);
  sub_100039AE0();
  v36 = *(v34 + 8);
  v36(v33, v35);
  sub_100009658(v29, &qword_100049B98, &unk_10003D0E0);
  sub_100009658(v28, &qword_100049B98, &unk_10003D0E0);
  v36(v30, v35);
  sub_100009658(v84, &qword_100049B98, &unk_10003D0E0);
LABEL_17:
  v37 = *(v0 + 736);
  v38 = *(v0 + 720);
  sub_100039A10();
  swift_getKeyPath();
  v39 = sub_1000399F0();

  v85(v37, v38);
  if (v39)
  {
  }

  v40 = *(v0 + 648);
  v41 = *(v0 + 640);
  v42 = *(v0 + 624);
  v43 = *(v0 + 608);
  v77 = *(v0 + 600);
  v78 = *(v0 + 632);
  v76 = *(v0 + 592);
  v82 = *(v0 + 616);
  v83 = *(v0 + 584);
  v80 = *(v0 + 576);
  v81 = *(v0 + 568);
  sub_1000386C0();
  v44 = sub_100038670();
  v45 = sub_100038DB0();
  *(v0 + 904) = v45;

  sub_100038840();
  v46 = sub_100038730();
  v86 = v47;
  v74 = v46;
  *(v0 + 912) = v46;
  *(v0 + 920) = v47;
  (*(v41 + 8))(v40, v78);
  v79 = sub_100038670();
  *(v0 + 928) = v79;
  v75 = v45;
  sub_100038720();
  sub_100038700();
  v48 = *(v43 + 8);
  v48(v42, v77);
  v73 = sub_1000386E0() & 1;
  *(v0 + 992) = v73;
  v49 = *(v80 + 8);
  v49(v76, v81);
  sub_100038720();
  sub_100038700();
  v48(v82, v77);
  v50 = sub_1000386D0() & 1;
  *(v0 + 993) = v50;
  v49(v83, v81);

  v51 = v75;

  v52 = v79;
  v53 = sub_100038E30();
  v54 = sub_100039C70();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v50;
    v56 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = 0;
    *v56 = 136446467;
    v89 = 0xE000000000000000;
    sub_100039CE0(28);

    v88 = 0xD000000000000015;
    v89 = 0x800000010003AC20;
    v95._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v95);

    v96._countAndFlagsBits = 2108704;
    v96._object = 0xE300000000000000;
    sub_100039B10(v96);
    v97._object = 0x800000010003AC00;
    v97._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v97);
    v57 = sub_100035100(v88, v89, &v87);

    *(v56 + 4) = v57;
    *(v56 + 12) = 2081;
    *(v0 + 16) = v74;
    *(v0 + 24) = v86;
    *(v0 + 32) = v52;
    *(v0 + 40) = v51;
    *(v0 + 48) = v73;
    *(v0 + 49) = v55;
    v58 = v51;

    v59 = v52;
    v60 = sub_100039B00();
    v62 = sub_100035100(v60, v61, &v87);

    *(v56 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v53, v54, "%{public}s - PersonInfo %{private}s", v56, 0x16u);
    swift_arrayDestroy();
  }

  v63 = *(v0 + 824);
  v64 = *(v0 + 648);
  v65 = *(v0 + 640);
  v66 = *(v0 + 632);
  v67 = *(v0 + 512);
  (*(*(v0 + 528) + 16))(*(v0 + 536), *(v0 + 104) + *(v0 + 840) + *(*(v0 + 856) + 24), *(v0 + 520));
  sub_100038A30();
  (*(v65 + 16))(v64, v63, v66);
  sub_100038860();
  v68 = sub_100038870();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_100038A60();
  v69 = swift_task_alloc();
  *(v0 + 936) = v69;
  *v69 = v0;
  v69[1] = sub_10002FF4C;
  v70 = *(v0 + 496);
  v71 = *(v0 + 448);

  return _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(v70, v71);
}

uint64_t sub_100033A0C()
{
  v90 = v0;
  v78 = *(v0 + 504);
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v81 = *(v0 + 432);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v3 + 32);
  v7(v1, *(v0 + 448), v4);
  v7(v2, v1, v4);
  (*(v6 + 56))(v78, 1, 1, v5);
  v8 = *(v3 + 16);
  v8(v81, v2, v4);

  v9 = sub_100038E30();
  v10 = sub_100039C70();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 416);
  v15 = *(v0 + 424);
  if (v11)
  {
    v84 = *(v0 + 440);
    v73 = v8;
    v16 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v87 = v79;
    *v16 = 136446466;
    sub_100039CE0(28);

    v88 = 0xD000000000000015;
    v89 = 0x800000010003AC20;
    v92._countAndFlagsBits = sub_100039AD0();
    sub_100039B10(v92);

    v93._countAndFlagsBits = 2108704;
    v93._object = 0xE300000000000000;
    sub_100039B10(v93);
    v94._object = 0x800000010003AC00;
    v94._countAndFlagsBits = 0xD000000000000011;
    sub_100039B10(v94);
    v17 = sub_100035100(0xD000000000000015, 0x800000010003AC20, &v87);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2114;
    sub_1000351CC(&qword_100049BB8, &type metadata accessor for GetPersonCachedLocationIntent.FetchLocationError, &protocol conformance descriptor for GetPersonCachedLocationIntent.FetchLocationError);
    swift_allocError();
    v73(v18, v13, v14);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    v20 = *(v15 + 8);
    v20(v13, v14);
    *(v16 + 14) = v19;
    *v75 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s - LocationResult error: %{public}@", v16, 0x16u);
    sub_100009658(v75, &qword_100048420, &qword_10003D0F0);

    sub_100002D54(v79);

    v20(v84, v14);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v13, v14);
    v21(v12, v14);
  }

  v22 = *(v0 + 472);
  v23 = *(v0 + 392);
  v24 = *(v0 + 400);
  sub_1000095F0(*(v0 + 504), v22, &qword_100049B80, &qword_10003D0C8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v85 = *(v0 + 993);
    v82 = *(v0 + 992);
    v80 = *(v0 + 912);
    v25 = *(v0 + 904);
    v72 = *(v0 + 824);
    v26 = *(v0 + 664);
    v69 = *(v0 + 656);
    v70 = *(v0 + 672);
    v68 = *(v0 + 560);
    v27 = *(v0 + 552);
    v28 = *(v0 + 544);
    v29 = *(v0 + 504);
    v30 = *(v0 + 224);
    v76 = *(v0 + 216);
    v71 = *(v0 + 184);
    v31 = *(v0 + 80);
    v74 = *(v0 + 920);
    sub_100009658(*(v0 + 472), &qword_100049B80, &qword_10003D0C8);
    sub_100038B40();

    sub_100009658(v29, &qword_100049B80, &qword_10003D0C8);
    (*(v27 + 8))(v68, v28);
    (*(v26 + 8))(v70, v69);
    sub_100035080(v72, type metadata accessor for WidgetPersonEntity);
    v32 = v31 + *(v71 + 20);
    v33 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48);
    *v32 = v80;
    *(v32 + 8) = v74;
    *(v32 + 24) = v25;
    *(v32 + 32) = v82;
    *(v32 + 33) = v85;
    (*(v30 + 56))(v32 + v33, 1, 1, v76);
    type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 384);
    v37 = *(v0 + 376);
    v77 = *(v0 + 368);
    v86 = *(v0 + 328);
    v38 = *(v0 + 312);
    v39 = *(v0 + 320);
    v40 = *(v0 + 296);
    v41 = *(v0 + 304);
    v83 = *(v0 + 288);
    (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
    sub_100038A40();
    sub_100038940();
    (*(v37 + 8))(v36, v77);
    sub_100039A20();
    sub_100038CE0();
    LOBYTE(v87) = 0;
    LOBYTE(v88) = 0;
    sub_100038CD0();
    v43 = v42;
    v45 = v44;
    (*(v40 + 8))(v41, v83);
    (*(v39 + 104))(v86, enum case for WidgetFamily.systemSmall(_:), v38);
    sub_1000351CC(&qword_1000487D8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100039B40();
    sub_100039B40();
    v46 = *(v39 + 8);
    *(v0 + 944) = v46;
    *(v0 + 952) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v86, v38);
    v47 = *(v0 + 896);
    if (*(v0 + 64) == *(v0 + 72))
    {
      v48 = 16.0;
      if (v47 >= 170.0)
      {
        v48 = 17.0;
      }

      v49 = v43 * 0.5 + v48;
      v50 = *(v0 + 888);
    }

    else
    {
      v50 = *(v0 + 888);
      v51 = 16.0;
      if (v47 >= 170.0)
      {
        v51 = 17.0;
      }

      v49 = v50 / 3.0 - (v43 * 0.5 + v51);
    }

    sub_100038AB0();
    sub_100038AC0();
    sub_100035A80(0, &qword_100049BB0, UIColor_ptr);
    if (qword_1000482C0 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 248);
    v52 = *(v0 + 256);
    v54 = *(v0 + 240);
    v55 = sub_100004158(v54, qword_10004BD48);
    v56 = *(v53 + 16);
    v56(v52, v55, v54);
    sub_100039C80();
    if (qword_1000482C8 != -1)
    {
      swift_once();
    }

    v57 = 16.0;
    if (v47 >= 170.0)
    {
      v57 = 17.0;
    }

    v58 = v47 * 0.5 - (v45 + v57);
    v59 = *(v0 + 256);
    v60 = *(v0 + 240);
    v61 = sub_100004158(v60, qword_10004BD60);
    v56(v59, v61, v60);
    sub_100039C80();
    sub_100038D80();
    v62 = swift_task_alloc();
    *(v0 + 960) = v62;
    *v62 = v0;
    v62[1] = sub_100030B4C;
    v64.n128_u64[0] = *(v0 + 896);
    v65.n128_u64[0] = *(v0 + 888);
    v66 = *(v0 + 280);
    v67.n128_f64[0] = v58;

    v63.n128_f64[0] = v50 * 0.5 - v49;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v66, 0, v63, v67, v65, v64);
  }
}

uint64_t sub_1000345C8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v7 = sub_1000399C0();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for PeopleWidgetProvider.Entry(0);
  v4[10] = v8;
  v4[11] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[12] = v9;
  v10 = swift_task_alloc();
  v4[13] = v10;
  *v10 = v4;
  v10[1] = sub_10003477C;

  return sub_10002DD18(v9, a2, a3);
}

uint64_t sub_10003477C()
{

  return _swift_task_switch(sub_100034878, 0, 0);
}

uint64_t sub_100034878()
{
  sub_100035018(v0[12] + *(v0[10] + 20), v0[5], type metadata accessor for PeopleWidgetProvider.Entry.Content);
  if (swift_getEnumCaseMultiPayload() == 1 && (v1 = v0[4], sub_100035018(v0[5], v1, type metadata accessor for PeopleWidgetProvider.Entry.Content), , *(v1 + 16), *(v1 + 24), v2 = *(sub_100001B3C(&qword_100049A50, &unk_10003D0B0) + 48), v3 = type metadata accessor for PeopleWidgetProvider.Entry.Content.LocationInfo(0), v4 = (*(*(v3 - 8) + 48))(v1 + v2, 1, v3), sub_100009658(v1 + v2, &qword_100049A48, &qword_10003CDE8), v4 != 1))
  {
    sub_100035080(v0[5], type metadata accessor for PeopleWidgetProvider.Entry.Content);
    sub_1000399B0();
  }

  else
  {
    sub_100035080(v0[5], type metadata accessor for PeopleWidgetProvider.Entry.Content);
    sub_1000399A0();
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  sub_100001B3C(&qword_100049B70, &qword_10003D0A8);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10003B220;
  sub_100035018(v5, v12 + v11, type metadata accessor for PeopleWidgetProvider.Entry);
  (*(v8 + 16))(v9, v7, v10);
  sub_1000351CC(&qword_100049B68, type metadata accessor for PeopleWidgetProvider.Entry, &unk_10003D068);
  sub_100039A90();
  (*(v8 + 8))(v7, v10);
  sub_100035080(v5, type metadata accessor for PeopleWidgetProvider.Entry);

  v13 = v0[1];

  return v13();
}

Swift::Int sub_100034B94()
{
  v1 = *v0;
  sub_100039D80();
  sub_100039D90(v1);
  return sub_100039DA0();
}

Swift::Int sub_100034C08(uint64_t a1)
{
  v2 = *v1;
  sub_100039D80();
  sub_100039D90(v2);
  return sub_100039DA0();
}

uint64_t sub_100034C4C()
{
  sub_100035080(v0 + OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_dependencies, _s12DependenciesVMa_1);
  v1 = OBJC_IVAR____TtC18FindMyWidgetPeople20PeopleWidgetProvider_logger;
  v2 = sub_100038E50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100034D34(uint64_t a1)
{
  result = _s12DependenciesVMa_1(319);
  if (v2 <= 0x3F)
  {
    result = sub_100038E50();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100034E90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004530;

  return sub_10002DD18(a1, v6, a3);
}

uint64_t sub_100034F44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004530;

  return sub_1000345C8(a1, v6, a3, v8);
}

uint64_t sub_100035018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100035100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100035368(v11, 0, 0, 1, a1, a2);
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
    sub_100002CF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002D54(v11);
  return v7;
}

uint64_t sub_1000351CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000352F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B3C(&qword_100049B80, &qword_10003D0C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035368(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100035474(a5, a6);
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
    result = sub_100039D00();
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

char *sub_100035474(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000354C0(a1, a2);
  sub_1000355F0(&off_1000461B0);
  return v3;
}

char *sub_1000354C0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000356DC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100039D00();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100039B20();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000356DC(v10, 0);
        result = sub_100039CD0();
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

uint64_t sub_1000355F0(uint64_t result)
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

  result = sub_100035750(result, v11, 1, v3);
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

void *sub_1000356DC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001B3C(&qword_100049BC8, &qword_10003D160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100035750(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_100049BC8, &qword_10003D160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100035858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038990();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_100035934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100038990();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100035A18(uint64_t a1)
{
  if (!qword_100049C38)
  {
    sub_100035A80(255, &qword_100048C30, UIImage_ptr);
    v1 = sub_100039C90();
    if (!v2)
    {
      atomic_store(v1, &qword_100049C38);
    }
  }
}

uint64_t sub_100035A80(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_100035AC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100035ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_100035B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100035B78(uint64_t a1)
{
  sub_100035BE4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100035BE4(uint64_t a1)
{
  if (!qword_100049CE8)
  {
    sub_100001B84(&qword_100049A48, &qword_10003CDE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100049CE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PeopleWidgetProvider.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PeopleWidgetProvider.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100035DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100038B60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100035ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100038B60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PeopleWidgetProvider.Entry.Content(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100035FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100036090()
{
  result = qword_100049DA8;
  if (!qword_100049DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049DA8);
  }

  return result;
}

uint64_t sub_1000360F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100038A20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100038890();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100036230(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100038A20();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100038890();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s12DependenciesVMa_1(uint64_t a1)
{
  result = qword_100049E08;
  if (!qword_100049E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000363A0(uint64_t a1)
{
  result = sub_100009D30();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccountStore(319);
    if (v3 <= 0x3F)
    {
      result = sub_100038A20();
      if (v4 <= 0x3F)
      {
        result = sub_100038890();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100036458()
{
  v3[3] = &type metadata for KoreaFeatureFlag;
  v3[4] = sub_1000378A8();
  v0 = sub_100038640();
  sub_100002D54(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_100038630() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1000364BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100038C20();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100038C30();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_100038800();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_100038BB0();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = sub_100038B70();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v7 = sub_100001B3C(&qword_100049E50, &qword_10003D288);
  v1[18] = v7;
  v1[19] = *(v7 - 8);
  v1[20] = swift_task_alloc();
  v8 = sub_100038B80();
  v1[21] = v8;
  v1[22] = *(v8 - 8);
  v1[23] = swift_task_alloc();
  sub_100038B90();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000367DC, 0, 0);
}

uint64_t sub_1000367DC()
{
  (*(v0[22] + 104))(v0[23], enum case for ClientOrigin.findMyApp(_:), v0[21]);
  sub_100038BA0();
  sub_100038BF0();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1000368C0;
  v2 = v0[24];

  return Session.init(_:)(v2);
}

uint64_t sub_1000368C0(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1000369C0, 0, 0);
}

uint64_t sub_1000369C0()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[10];
    sub_100037394(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v18 = *(v4 + 56);
    v19 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[11];
      v9 = v0[9];
      v19(v8, v6, v9);
      sub_1000387C0();
      (*v7)(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100037394((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[14];
      v13 = v0[12];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v18;
      --v2;
    }

    while (v2);
  }

  v0[27] = &_swiftEmptyArrayStorage;
  (*(v0[16] + 104))(v0[17], enum case for LocatePriority.backgroundAppRefresh(_:), v0[15]);
  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_100036BD8;
  v15 = v0[20];
  v16 = v0[17];

  return Session.startRefreshingLocation(forHandles:priority:reverseGeocode:)(v15, &_swiftEmptyArrayStorage, v16, 0);
}

uint64_t sub_100036BD8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v3 = sub_10003710C;
  }

  else
  {
    v5 = v2[19];
    v4 = v2[20];
    v7 = v2[17];
    v6 = v2[18];
    v10 = v2 + 15;
    v8 = v2[15];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_100036D7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100036D7C()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_100039AF0();
  }

  (*(v0[4] + 104))(v0[5], enum case for ClientID.ConnectionType.xpc(_:), v0[3]);
  sub_100038C10();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_100036EC4;
  v4 = v0[8];

  return Session.stopRefreshingLocation(clientID:)(v4);
}

uint64_t sub_100036EC4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 248) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000371EC;
  }

  else
  {
    v5 = sub_100037034;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100037034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003710C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000371EC()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1000372CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000373D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000372EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000376CC(a1, a2, a3, *v3, &qword_100049E68, &qword_10003D298, &type metadata accessor for IntentPerson.Handle);
  *v3 = result;
  return result;
}

void *sub_100037330(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000376CC(a1, a2, a3, *v3, &qword_100049E78, &qword_10003D2A8, type metadata accessor for WidgetPersonEntity);
  *v3 = result;
  return result;
}

void *sub_100037374(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000374DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100037394(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000376CC(a1, a2, a3, *v3, &qword_100049E58, &qword_10003D290, &type metadata accessor for Handle);
  *v3 = result;
  return result;
}

char *sub_1000373D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B3C(&qword_1000498C0, &qword_10003CB90);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1000374DC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B3C(&qword_100049E70, &qword_10003D2A0);
  v10 = *(sub_100001B3C(&qword_100049868, &unk_10003CB38) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001B3C(&qword_100049868, &unk_10003CB38) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000376CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B3C(a5, a6);
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

unint64_t sub_1000378A8()
{
  result = qword_100049E60;
  if (!qword_100049E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049E60);
  }

  return result;
}

id sub_100037930()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100049E80 = result;
  return result;
}

uint64_t sub_100037988()
{
  v0 = sub_100038DF0();
  sub_100004190(v0, qword_10004BD48);
  sub_100004158(v0, qword_10004BD48);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038DE0();
}

uint64_t sub_100037A30()
{
  v0 = sub_100038DF0();
  sub_100004190(v0, qword_10004BD60);
  sub_100004158(v0, qword_10004BD60);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038DE0();
}

uint64_t sub_100037AD8()
{
  v0 = sub_100038DF0();
  sub_100004190(v0, qword_10004BD78);
  sub_100004158(v0, qword_10004BD78);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038DE0();
}

uint64_t sub_100037B80()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BD90);
  sub_100004158(v0, qword_10004BD90);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037C28()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BDA8);
  sub_100004158(v0, qword_10004BDA8);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037CD0()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BDC0);
  sub_100004158(v0, qword_10004BDC0);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037D78()
{
  v0 = sub_100038E10();
  sub_100004190(v0, qword_10004BDD8);
  sub_100004158(v0, qword_10004BDD8);
  if (qword_1000482B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100049E80;
  return sub_100038E00();
}

uint64_t sub_100037E28(int a1, int a2, int a3, int a4)
{
  if (qword_10004BCD8 == -1)
  {
    if (qword_10004BCE0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000382F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10004BCE0)
    {
      return _availability_version_check();
    }
  }

  if (qword_10004BCD0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100038308();
    a3 = v10;
    a4 = v9;
    v8 = dword_10004BCC0 < v11;
    if (dword_10004BCC0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10004BCC4 > a3)
      {
        return 1;
      }

      if (dword_10004BCC4 >= a3)
      {
        return dword_10004BCC8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10004BCC0 < a2;
  if (dword_10004BCC0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100037FBC(uint64_t result)
{
  v1 = qword_10004BCE0;
  if (qword_10004BCE0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10004BCE0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10004BCC0, &dword_10004BCC4, &dword_10004BCC8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}