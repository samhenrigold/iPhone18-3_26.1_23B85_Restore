void sub_10001D9C8(uint64_t a1)
{
  sub_10001DB50(319, &qword_10004C7F8, &type metadata for LocalizedStringKey);
  if (v1 <= 0x3F)
  {
    sub_10001DAFC(319, &qword_10004C800, &type metadata accessor for FindMyRelativeDate);
    if (v2 <= 0x3F)
    {
      sub_10001DAFC(319, &qword_10004C808, &type metadata accessor for Symbol);
      if (v3 <= 0x3F)
      {
        sub_10001DB50(319, &qword_10004CD78, &type metadata for String);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LoadedView.Callout(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10003A888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001DB50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10003A888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001DB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001DBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001DC34(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001DC4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001DC60(uint64_t a1, int a2)
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

uint64_t sub_10001DCA8(uint64_t result, int a2, int a3)
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

uint64_t sub_10001DD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039958();
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

uint64_t sub_10001DDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100039958();
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

uint64_t sub_10001DEAC(uint64_t a1)
{
  result = sub_100039958();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryViewContent.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001E098(uint64_t a1)
{
  result = type metadata accessor for WidgetEntryViewContent.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001E168@<X0>(void *a1@<X8>)
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
  v97 = sub_100001B2C(&qword_10004D5E8, &qword_10003D388);
  __chkstk_darwin(v97);
  v100 = &v91 - v7;
  v106 = sub_100001B2C(&qword_10004D5C8, &qword_10003D380);
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
  v109 = sub_100001B2C(&qword_10004D5F0, &qword_10003D390);
  __chkstk_darwin(v109);
  v111 = &v91 - v16;
  v103 = sub_100001B2C(&qword_10004D5F8, &qword_10003D398);
  __chkstk_darwin(v103);
  v105 = &v91 - v17;
  v93 = sub_100001B2C(&qword_10004D600, &qword_10003D3A0);
  __chkstk_darwin(v93);
  v95 = &v91 - v18;
  v104 = sub_100001B2C(&qword_10004D5A8, &qword_10003D378);
  __chkstk_darwin(v104);
  v96 = &v91 - v19;
  v110 = sub_100001B2C(&qword_10004D598, &qword_10003D370);
  __chkstk_darwin(v110);
  v107 = &v91 - v20;
  v94 = type metadata accessor for PlaceholderView(0);
  __chkstk_darwin(v94);
  v22 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  __chkstk_darwin(v23);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WidgetEntryViewContent.Model(0);
  sub_10001F928(v108 + *(v26 + 20), v25, type metadata accessor for WidgetEntryViewContent.Model.State);
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

      sub_100018048(v81, v82, v83, v84);

      sub_10001FA10(v81, v82, v83, v84);
      *v10 = v78;
      *(v10 + 1) = v77;
      v10[16] = v79;
      *(v10 + 3) = v80;
      *(v10 + 4) = v81;
      *(v10 + 5) = v82;
      *(v10 + 6) = v83;
      *(v10 + 7) = v84;
      *(v10 + 4) = xmmword_10003D1A0;
      *(v10 + 10) = 0x4040000000000000;
      v85 = v98;
      v86 = *(v98 + 28);
      *&v10[v86] = swift_getKeyPath();
      sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
      swift_storeEnumTagMultiPayload();
      v87 = *(v85 + 32);
      *&v10[v87] = swift_getKeyPath();
      sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
      swift_storeEnumTagMultiPayload();
      sub_10001F928(v10, v100, type metadata accessor for CenteredInformationView);
      swift_storeEnumTagMultiPayload();
      sub_10001F7F4(&qword_10004D5D0, type metadata accessor for CenteredInformationView, &unk_10003C768);
      sub_10001F7F4(&qword_10004D5D8, type metadata accessor for TemplateInformationView, &unk_10003CFE8);
      v88 = v102;
      sub_100039EA8();
      sub_100009AB0(v88, v105, &qword_10004D5C8, &qword_10003D380);
      swift_storeEnumTagMultiPayload();
      sub_10001F708();
      sub_10001F83C();
      v89 = v107;
      sub_100039EA8();
      sub_100009B18(v88, &qword_10004D5C8, &qword_10003D380);
      sub_100009AB0(v89, v111, &qword_10004D598, &qword_10003D370);
      swift_storeEnumTagMultiPayload();
      sub_10001F67C();
      sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView, &unk_10003CB78);
      sub_100039EA8();
      sub_100009B18(v89, &qword_10004D598, &qword_10003D370);
      v48 = type metadata accessor for CenteredInformationView;
      v49 = v10;
    }

    else
    {
      sub_10001FA54(v25, v15, type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage);
      v50 = &v15[*(v13 + 20)];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = v50[16];
      v54 = *(v50 + 3);
      v55 = v99;
      v56 = *(v99 + 20);
      v57 = sub_100039958();
      (*(*(v57 - 8) + 16))(&v12[v56], v15, v57);
      *v12 = v52;
      *(v12 + 1) = v51;
      v12[16] = v53;
      *(v12 + 3) = v54;
      v58 = &v12[v55[6]];
      *v58 = xmmword_10003D1B0;
      *(v58 + 2) = 0x4040000000000000;
      v59 = v55[7];
      *&v12[v59] = swift_getKeyPath();
      sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
      swift_storeEnumTagMultiPayload();
      v60 = &v12[v55[8]];
      *v60 = swift_getKeyPath();
      *(v60 + 1) = 0;
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      v60[32] = 0;
      v61 = v55[9];
      *&v12[v61] = swift_getKeyPath();
      sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
      swift_storeEnumTagMultiPayload();
      sub_10001F928(v12, v95, type metadata accessor for EmptyStateView);
      swift_storeEnumTagMultiPayload();
      sub_10001F7F4(&qword_10004D5B0, type metadata accessor for PlaceholderView, &unk_10003CE84);
      sub_10001F7F4(&qword_10004D5B8, type metadata accessor for EmptyStateView, &unk_10003C8F8);

      v62 = v96;
      sub_100039EA8();
      sub_100009AB0(v62, v105, &qword_10004D5A8, &qword_10003D378);
      swift_storeEnumTagMultiPayload();
      sub_10001F708();
      sub_10001F83C();
      v63 = v107;
      sub_100039EA8();
      sub_100009B18(v62, &qword_10004D5A8, &qword_10003D378);
      sub_100009AB0(v63, v111, &qword_10004D598, &qword_10003D370);
      swift_storeEnumTagMultiPayload();
      sub_10001F67C();
      sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView, &unk_10003CB78);
      sub_100039EA8();
      sub_100009B18(v63, &qword_10004D598, &qword_10003D370);
      sub_10001F9B0(v12, type metadata accessor for EmptyStateView);
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
    sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
    swift_storeEnumTagMultiPayload();
    v69 = *(v67 + 24);
    *&v6[v69] = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
    swift_storeEnumTagMultiPayload();
    sub_10001F928(v6, v100, type metadata accessor for TemplateInformationView);
    swift_storeEnumTagMultiPayload();
    sub_10001F7F4(&qword_10004D5D0, type metadata accessor for CenteredInformationView, &unk_10003C768);
    sub_10001F7F4(&qword_10004D5D8, type metadata accessor for TemplateInformationView, &unk_10003CFE8);
    v70 = v102;
    sub_100039EA8();
    sub_100009AB0(v70, v105, &qword_10004D5C8, &qword_10003D380);
    swift_storeEnumTagMultiPayload();
    sub_10001F708();
    sub_10001F83C();
    v71 = v107;
    sub_100039EA8();
    sub_100009B18(v70, &qword_10004D5C8, &qword_10003D380);
    sub_100009AB0(v71, v111, &qword_10004D598, &qword_10003D370);
    swift_storeEnumTagMultiPayload();
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView, &unk_10003CB78);
    sub_100039EA8();
    sub_100009B18(v71, &qword_10004D598, &qword_10003D370);
    v48 = type metadata accessor for TemplateInformationView;
    v49 = v6;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10001FA54(v25, v4, type metadata accessor for WidgetEntryViewContent.Model.State.Loaded);
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
    sub_100009AB0(&v4[*(v92 + 24)], &v2[*(v113 + 24)], &qword_10004C778, &unk_10003C4D0);
    sub_100009AB0(&v4[v34[7]], &v2[v35[7]], &qword_10004C780, "P*");
    v36 = v34[9];
    v37 = &v4[v34[8]];
    v38 = *(v37 + 1);
    v102 = *v37;
    sub_10001F928(&v4[v36], &v2[v35[9]], type metadata accessor for LoadedView.Callout);
    v107 = *&v4[v34[10]];
    v39 = v107;
    *&v2[v35[13]] = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
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
    sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
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
    sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
    swift_storeEnumTagMultiPayload();
    sub_10001F928(v2, v111, type metadata accessor for LoadedView);
    swift_storeEnumTagMultiPayload();

    sub_100018048(v42, v31, v32, v33);

    sub_100017EAC(v107);
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView, &unk_10003CB78);
    sub_100039EA8();
    sub_10001F9B0(v2, type metadata accessor for LoadedView);
    v48 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded;
    v49 = v4;
  }

  else
  {
    *v22 = swift_getKeyPath();
    sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
    swift_storeEnumTagMultiPayload();
    v72 = v94;
    v73 = *(v94 + 20);
    *(v22 + v73) = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
    swift_storeEnumTagMultiPayload();
    v74 = *(v72 + 24);
    *(v22 + v74) = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    sub_10001F928(v22, v95, type metadata accessor for PlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_10001F7F4(&qword_10004D5B0, type metadata accessor for PlaceholderView, &unk_10003CE84);
    sub_10001F7F4(&qword_10004D5B8, type metadata accessor for EmptyStateView, &unk_10003C8F8);
    v75 = v96;
    sub_100039EA8();
    sub_100009AB0(v75, v105, &qword_10004D5A8, &qword_10003D378);
    swift_storeEnumTagMultiPayload();
    sub_10001F708();
    sub_10001F83C();
    v76 = v107;
    sub_100039EA8();
    sub_100009B18(v75, &qword_10004D5A8, &qword_10003D378);
    sub_100009AB0(v76, v111, &qword_10004D598, &qword_10003D370);
    swift_storeEnumTagMultiPayload();
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView, &unk_10003CB78);
    sub_100039EA8();
    sub_100009B18(v76, &qword_10004D598, &qword_10003D370);
    v48 = type metadata accessor for PlaceholderView;
    v49 = v22;
  }

  return sub_10001F9B0(v49, v48);
}

uint64_t sub_10001F4FC()
{
  v0 = sub_100001B2C(&qword_10004D580, &qword_10003D368);
  __chkstk_darwin(v0);
  v2 = &v4 - v1;
  sub_10001E168((&v4 - v1));
  sub_10001F5C0();
  sub_10003A158();
  return sub_100009B18(v2, &qword_10004D580, &qword_10003D368);
}

unint64_t sub_10001F5C0()
{
  result = qword_10004D588;
  if (!qword_10004D588)
  {
    sub_100001B74(&qword_10004D580, &qword_10003D368);
    sub_10001F67C();
    sub_10001F7F4(&qword_10004D5E0, type metadata accessor for LoadedView, &unk_10003CB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D588);
  }

  return result;
}

unint64_t sub_10001F67C()
{
  result = qword_10004D590;
  if (!qword_10004D590)
  {
    sub_100001B74(&qword_10004D598, &qword_10003D370);
    sub_10001F708();
    sub_10001F83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D590);
  }

  return result;
}

unint64_t sub_10001F708()
{
  result = qword_10004D5A0;
  if (!qword_10004D5A0)
  {
    sub_100001B74(&qword_10004D5A8, &qword_10003D378);
    sub_10001F7F4(&qword_10004D5B0, type metadata accessor for PlaceholderView, &unk_10003CE84);
    sub_10001F7F4(&qword_10004D5B8, type metadata accessor for EmptyStateView, &unk_10003C8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D5A0);
  }

  return result;
}

uint64_t sub_10001F7F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001F83C()
{
  result = qword_10004D5C0;
  if (!qword_10004D5C0)
  {
    sub_100001B74(&qword_10004D5C8, &qword_10003D380);
    sub_10001F7F4(&qword_10004D5D0, type metadata accessor for CenteredInformationView, &unk_10003C768);
    sub_10001F7F4(&qword_10004D5D8, type metadata accessor for TemplateInformationView, &unk_10003CFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D5C0);
  }

  return result;
}

uint64_t sub_10001F928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10001FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_10001FA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FABC()
{
  sub_100001B74(&qword_10004D580, &qword_10003D368);
  sub_10001F5C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001FB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WidgetGridBackground(uint64_t a1)
{
  result = qword_10004D660;
  if (!qword_10004D660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001FCB0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100009AB0(v2, &v14 - v9, &qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003A458();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10003A858();
    v13 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_10001FEB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v40 = a2;
  v41 = sub_100039868();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = v35 - v4;
  v5 = sub_100039828();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35[0] = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003A458();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100001B2C(&qword_10004D6A0, &qword_10003D520);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v35 - v19;
  sub_10003A7A8();
  v37 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001FCB0(v14);
  sub_10003A448();
  sub_100020370();
  v21 = sub_10003A628();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v22(v14, v8);
  if (v21)
  {
    v23 = v35[0];
    sub_100039818();
    (*(v6 + 32))(v20, v23, v5);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v6 + 56))(v20, v24, 1, v5);
  v25 = v36;
  sub_100039858();
  v26 = v20;
  sub_100009AB0(v20, v17, &qword_10004D6A0, &qword_10003D520);
  v27 = v38;
  v28 = v39;
  v29 = *(v38 + 16);
  v30 = v41;
  v29(v39, v25, v41);
  v31 = v40;
  sub_100009AB0(v17, v40, &qword_10004D6A0, &qword_10003D520);
  v32 = sub_100001B2C(&qword_10004D6A8, &unk_10003D528);
  v29((v31 + *(v32 + 48)), v28, v30);
  v33 = *(v27 + 8);
  v33(v25, v30);
  sub_1000203C8(v26);
  v33(v28, v30);
  sub_1000203C8(v17);

  return result;
}

double sub_100020324@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_10003A3D8();
  a2[1] = v4;
  v5 = sub_100001B2C(&qword_10004D698, &qword_10003D518);
  return sub_10001FEB0(v2, a2 + *(v5 + 44));
}

unint64_t sub_100020370()
{
  result = qword_10004D070;
  if (!qword_10004D070)
  {
    sub_10003A458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D070);
  }

  return result;
}

uint64_t sub_1000203C8(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004D6A0, &qword_10003D520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100020434()
{
  result = qword_10004D6B0;
  if (!qword_10004D6B0)
  {
    sub_100001B74(&qword_10004D6B8, &qword_10003D538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D6B0);
  }

  return result;
}

uint64_t type metadata accessor for WidgetItemEntity(uint64_t a1)
{
  result = qword_10004D788;
  if (!qword_10004D788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002064C()
{
  v0 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100039678();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100039078();
  sub_100004650(v5, qword_100050160);
  sub_100004618(v5, qword_100050160);
  sub_100039658();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100039068();
}

uint64_t sub_1000207BC()
{
  v0 = sub_100039998();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for WidgetItemEntityQuery(0);
  sub_100004650(v7, qword_100050178);
  v8 = sub_100004618(v7, qword_100050178);
  sub_100039988();
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  result = sub_100039988();
  *v8 = &unk_10003D7E0;
  v8[1] = v11;
  return result;
}

uint64_t sub_100020990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v85 = sub_100039168();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v76 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001B2C(&qword_10004D7F8, "X8");
  __chkstk_darwin(v4 - 8);
  v86 = (&v76 - v5);
  v6 = sub_100001B2C(&qword_10004D800, "X8");
  __chkstk_darwin(v6 - 8);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v76 - v9;
  v97 = sub_1000391A8();
  v80 = *(v97 - 8);
  __chkstk_darwin(v97);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001B2C(&qword_10004D808, "X8");
  __chkstk_darwin(v11 - 8);
  v104 = &v76 - v12;
  v13 = sub_100001B2C(&qword_10004D810, "X8");
  __chkstk_darwin(v13 - 8);
  v103 = &v76 - v14;
  v15 = sub_100038EB8();
  v105 = *(v15 - 8);
  v106 = v15;
  __chkstk_darwin(v15);
  v83 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v78 = &v76 - v18;
  v19 = sub_100038E98();
  v91 = *(v19 - 8);
  v92 = v19;
  __chkstk_darwin(v19);
  v98 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v76 - v22;
  v23 = sub_100039598();
  v24 = *(v23 - 8);
  v89 = v23;
  v90 = v24;
  __chkstk_darwin(v23);
  v88 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100038F18();
  v101 = *(v26 - 8);
  v102 = v26;
  __chkstk_darwin(v26);
  v99 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v100 = &v76 - v29;
  v87 = sub_100039478();
  v30 = *(v87 - 8);
  __chkstk_darwin(v87);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000393F8();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for WidgetItemEntity(0);
  v38 = v37[5];
  sub_100001B2C(&qword_10004D818, &qword_10003D7B8);
  *(a2 + v38) = sub_100038F58();
  v39 = v37[6];
  sub_100001B2C(&qword_10004D820, &qword_10003D7C0);
  v96 = sub_100038F48();
  *(a2 + v39) = v96;
  v40 = v37[7];
  sub_100001B2C(&qword_10004D828, &qword_10003D7C8);
  *(a2 + v40) = sub_100038F68();
  v41 = sub_100039638();
  v94 = *(v41 - 8);
  v95 = v41;
  v42 = a2;
  v43 = v93;
  (*(v94 + 16))(v42, v93);
  sub_100039408();
  v44 = sub_1000393E8();
  v46 = v45;
  (*(v34 + 8))(v36, v33);
  v107 = v44;
  v108 = v46;
  v47 = v43;
  v48 = v88;
  sub_100038F38();
  sub_100039488();
  LOBYTE(v44) = sub_100039468();
  (*(v30 + 8))(v32, v87);
  v49 = v89;
  LOBYTE(v107) = v44 & 1;
  sub_100038F38();
  sub_1000395A8();
  v50 = v90;
  v51 = (*(v90 + 88))(v48, v49);
  if (v51 == enum case for ItemModel.Owner.other(_:))
  {
    (*(v50 + 96))(v48, v49);
    v52 = *(sub_100001B2C(&qword_10004D830, &unk_10003D7D0) + 48);
    v53 = v80;
    v54 = v79;
    (*(v80 + 32))(v79, v48, v97);
    v55 = v81;
    sub_1000225BC(&v48[v52], v81);
    (*(v91 + 104))(v98, enum case for IntentPerson.Identifier.unknown(_:), v92);
    v56 = v82;
    sub_10002262C(v55, v82);
    v57 = v84;
    v58 = 1;
    v59 = v85;
    v60 = (*(v84 + 48))(v56, 1, v85);
    v61 = v86;
    if (v60 != 1)
    {
      v62 = v76;
      (*(v57 + 32))(v76, v56, v59);
      v63 = sub_100039158();
      v65 = v64;
      (*(v57 + 8))(v62, v59);
      *v61 = v63;
      v61[1] = v65;
      (*(v105 + 104))(v61, enum case for IntentPerson.Name.displayName(_:), v106);
      v58 = 0;
    }

    v67 = v105;
    v66 = v106;
    (*(v105 + 56))(v61, v58, 1, v106);
    v68 = *(v67 + 48);
    if (v68(v61, 1, v66) == 1)
    {
      (*(v67 + 104))(v83, enum case for IntentPerson.Name.unknown(_:), v66);
      if (v68(v61, 1, v66) != 1)
      {
        sub_100009B18(v61, &qword_10004D7F8, "X8");
      }
    }

    else
    {
      (*(v67 + 32))(v83, v61, v66);
    }

    sub_100021610(v103);
    v72 = sub_100038FD8();
    (*(*(v72 - 8) + 56))(v104, 1, 1, v72);
    v71 = v100;
    sub_100038EA8();
    sub_100009B18(v55, &qword_10004D800, "X8");
    (*(v53 + 8))(v54, v97);
    goto LABEL_11;
  }

  if (v51 == enum case for ItemModel.Owner.myself(_:))
  {
    (*(v91 + 104))(v77, enum case for IntentPerson.Identifier.unknown(_:), v92);
    (*(v105 + 104))(v78, enum case for IntentPerson.Name.unknown(_:), v106);
    v69 = sub_100038F08();
    (*(*(v69 - 8) + 56))(v103, 1, 1, v69);
    v70 = sub_100038FD8();
    (*(*(v70 - 8) + 56))(v104, 1, 1, v70);
    v71 = v100;
    sub_100038EA8();
LABEL_11:
    v74 = v101;
    v73 = v102;
    (*(v101 + 16))(v99, v71, v102);
    sub_100038F38();
    (*(v94 + 8))(v47, v95);
    return (*(v74 + 8))(v71, v73);
  }

  result = sub_10003A938();
  __break(1u);
  return result;
}

uint64_t sub_100021610@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100038EF8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100039178();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039188();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    sub_100039198();
    (*(v3 + 104))(v5, enum case for IntentPerson.Handle.Label.other(_:), v2);
    sub_100038EC8();
LABEL_7:
    v11 = sub_100038F08();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v10 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    sub_100039198();
    (*(v3 + 104))(v5, enum case for IntentPerson.Handle.Label.other(_:), v2);
    sub_100038ED8();
    goto LABEL_7;
  }

  if (v10 == enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    sub_100039198();
    sub_100038EE8();
    goto LABEL_7;
  }

  result = sub_10003A938();
  __break(1u);
  return result;
}

uint64_t sub_1000218C4@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_100001B2C(&qword_10004D808, "X8");
  __chkstk_darwin(v1 - 8);
  v18[0] = v18 - v2;
  v3 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_100039678();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_1000393F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003A668();
  __chkstk_darwin(v12 - 8);
  sub_10003A658();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10003A648(v19);
  sub_100039408();
  v13 = sub_1000393E8();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v20._countAndFlagsBits = v13;
  v20._object = v15;
  sub_10003A638(v20);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_10003A648(v21);
  sub_100039668();
  (*(v7 + 56))(v5, 1, 1, v6);
  v16 = sub_100038FD8();
  (*(*(v16 - 8) + 56))(v18[0], 1, 1, v16);
  return sub_100038FE8();
}

uint64_t sub_100021BDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C318 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for WidgetItemEntityQuery(0);
  v4 = sub_100004618(v3, qword_100050178);

  return sub_10002269C(v4, a1, v5);
}

uint64_t sub_100021E28@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C310 != -1)
  {
    swift_once();
  }

  v3 = sub_100039078();
  v4 = sub_100004618(v3, qword_100050160);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_100021ED4()
{
  result = qword_10004D718;
  if (!qword_10004D718)
  {
    sub_100001B74(&qword_10004D720, &qword_10003D6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D718);
  }

  return result;
}

uint64_t sub_100021F38(uint64_t a1)
{
  v2 = sub_1000224C0(&qword_10004D6E8, type metadata accessor for WidgetItemEntity, &unk_10003D540);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100022000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000427C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000220C4(uint64_t a1)
{
  v2 = sub_1000224C0(&qword_10004D708, type metadata accessor for WidgetItemEntity, &unk_10003D720);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100022154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039638();
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

    return (v10 + 1);
  }
}

uint64_t sub_100022224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100039638();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000222DC(uint64_t a1)
{
  sub_100039638();
  if (v1 <= 0x3F)
  {
    sub_100022508(319, &qword_10004D798, sub_1000223D8, &type metadata for String);
    if (v3 <= 0x3F)
    {
      sub_10002242C(319, v2);
      if (v4 <= 0x3F)
      {
        sub_100022508(319, &qword_10004D7B8, sub_100022568, &type metadata for Bool);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1000223D8()
{
  result = qword_10004D7A0;
  if (!qword_10004D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D7A0);
  }

  return result;
}

void sub_10002242C(uint64_t a1, __n128 a2)
{
  if (!qword_10004D7A8)
  {
    sub_100038F18();
    sub_1000224C0(&qword_10004D7B0, &type metadata accessor for IntentPerson, &protocol conformance descriptor for IntentPerson);
    v2 = sub_100038F78();
    if (!v3)
    {
      atomic_store(v2, &qword_10004D7A8);
    }
  }
}

uint64_t sub_1000224C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100022508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_100038F78();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100022568()
{
  result = qword_10004D7C0;
  if (!qword_10004D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D7C0);
  }

  return result;
}

uint64_t sub_1000225BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D800, "X8");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002262C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D800, "X8");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002269C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for WidgetItemEntityQuery(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022700()
{
  v1 = sub_100039998();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100022788(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_100039998() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100022868;

  return sub_100028358(a1, a2, v2 + v7);
}

uint64_t sub_100022868(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata accessor for WidgetItemEntityQuery(uint64_t a1)
{
  result = qword_10004D8C0;
  if (!qword_10004D8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022A00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100039638();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_100001B2C(&qword_10004D8F8, &qword_10003D9A0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = sub_100039558();
  v2[11] = swift_task_alloc();
  v4 = sub_100001B2C(&qword_10004D900, &qword_10003D9A8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100022BA8, 0, 0);
}

uint64_t sub_100022BA8()
{
  v8 = v0;
  *(v0 + 144) = *(type metadata accessor for WidgetItemEntityQuery(0) + 20);
  v1 = sub_100039978();
  v2 = sub_10003A868();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B570, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100003214(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_100022D28;

  return sub_1000234A4(0);
}

uint64_t sub_100022D28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_100023258;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_100022E50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022E50()
{
  sub_10003A7C8();
  sub_10003A7B8();
  sub_1000281A8(&qword_10004D908, &type metadata accessor for ItemModel.Tag, &protocol conformance descriptor for ItemModel.Tag);
  sub_100039298();
  sub_100001B2C(&qword_10004D910, &qword_10003D9C0);
  sub_1000281A8(&qword_10004D918, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000281A8(&qword_10004D920, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000281A8(&qword_10004D928, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000281A8(&qword_10004D930, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000073FC(&qword_10004D938, &qword_10004D910, &qword_10003D9C0, &protocol conformance descriptor for OrganizedListEmptyStorageMappings<A, B>);
  sub_1000392C8();
  v1 = sub_1000392B8();
  if (*(v1 + 16))
  {
    (*(v0[5] + 16))(v0[9], v1 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)), v0[4]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[4];
  v6 = v0[5];

  v7 = 1;
  (*(v6 + 56))(v3, v2, 1, v5);
  sub_100025D94(v3, v4);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[9];
  if (v8 != 1)
  {
    v13 = v0[7];
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];
    v17 = v0[2];
    (*(v15 + 32))(v13, v0[8], v16);
    (*(v15 + 16))(v14, v13, v16);
    sub_100020990(v14, v17);
    (*(v15 + 8))(v13, v16);
    v7 = 0;
  }

  sub_100009B18(v12, &qword_10004D8F8, &qword_10003D9A0);
  (*(v10 + 8))(v9, v11);
  v18 = v0[2];
  v19 = type metadata accessor for WidgetItemEntity(0);
  (*(*(v19 - 8) + 56))(v18, v7, 1, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100023258()
{
  v12 = v0;
  swift_errorRetain();
  v1 = sub_100039978();
  v2 = sub_10003A848();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B570, &v11);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - error: %{public}@", v3, 0x16u);
    sub_100009B18(v4, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v5);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v8 = type metadata accessor for WidgetItemEntity(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000234A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100038F28();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100023564, 0, 0);
}

uint64_t sub_100023564()
{
  v15 = v0;
  *(v0 + 88) = *(type metadata accessor for WidgetItemEntityQuery(0) + 20);

  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 24);
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B590, &v14);
    *(v4 + 12) = 2080;
    *(v0 + 16) = v3;

    v5 = sub_10003A6B8();
    v7 = sub_10002AF20(v5, v6, &v14);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - will call fetchWithOptions: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = **(v0 + 32);
  sub_1000281A8(&qword_10004D840, type metadata accessor for WidgetItemEntityQuery, &unk_10003D8D0);
  sub_100039028();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_100023810;
  v10 = *(v0 + 56);
  v11 = *(v0 + 24);

  return v13(v11, v10);
}

uint64_t sub_100023810(uint64_t a1)
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
    v7 = sub_100023B34;
  }

  else
  {
    v7 = sub_100023984;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100023984()
{
  v11 = v0;

  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_10002AF20(0xD000000000000015, 0x800000010003B590, &v10);
    *(v3 + 12) = 2080;
    sub_100039638();
    v4 = sub_10003A738();
    v6 = sub_10002AF20(v4, v5, &v10);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - did receive fetchWithOptions: %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 72);

  return v7(v8);
}

uint64_t sub_100023B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023B98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100039638();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = *(type metadata accessor for WidgetItemEntity(0) - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100023CBC, 0, 0);
}

uint64_t sub_100023CBC()
{
  v12 = v0;
  type metadata accessor for WidgetItemEntityQuery(0);

  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_10002AF20(0x7365697469746E65, 0xEE00293A726F6628, &v11);
    *(v3 + 12) = 2082;
    sub_100039548();
    v4 = sub_10003A738();
    v6 = sub_10002AF20(v4, v5, &v11);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - ids: %{public}s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v8 = sub_100027DA8(v7);
  *(v0 + 80) = v8;

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_100023EC4;

  return sub_1000234A4(v8);
}

uint64_t sub_100023EC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1000241D8;
  }

  else
  {

    v4 = sub_100023FE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100023FE0()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v18 = v0[8];
    v3 = v0[5];
    sub_100025E24(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v17 = *(v3 + 56);
    v16 = (v3 - 8);
    v6 = v4;
    do
    {
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v10 = v0[4];
      v6(v8, v5, v10);
      v6(v9, v8, v10);
      sub_100020990(v9, v7);
      (*v16)(v8, v10);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100025E24((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[9];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      sub_100028144(v13, _swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v12);
      v5 += v17;
      --v2;
    }

    while (v2);
  }

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1000241D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_1000395F8();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100001B2C(&qword_10004D948, &qword_10003D9D0);
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v33 - v7;
  v47 = sub_100001B2C(&qword_10004D950, &qword_10003D9D8);
  v8 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = &v33 - v9;
  v11 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  __chkstk_darwin(v11 - 8);
  v46 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = sub_100039678();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = sub_100001B2C(&qword_10004D900, &qword_10003D9A8);
  v18 = sub_1000392A8();
  v19 = *(v18 + 16);
  if (v19)
  {
    v34 = v17;
    v35 = v15;
    v36 = a2;
    v37 = a1;
    v51 = _swiftEmptyArrayStorage;
    sub_100025E44(0, v19, 0);
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
      sub_100039378();
      sub_1000395E8();
      v29 = (*v40)(v28, v50);
      __chkstk_darwin(v29);
      *(&v33 - 2) = v26;
      type metadata accessor for WidgetItemEntity(0);
      sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity, &unk_10003D6C0);
      sub_100038FA8();
      (*v39)(v26, v27);
      v51 = v21;
      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        sub_100025E44((v30 > 1), v31 + 1, 1);
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

  type metadata accessor for WidgetItemEntity(0);
  sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity, &unk_10003D6C0);
  sub_100038FB8();
  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t sub_1000247C0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_100039558();
  v2[6] = swift_task_alloc();
  v3 = sub_100001B2C(&qword_10004D900, &qword_10003D9A8);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000248C8, 0, 0);
}

uint64_t sub_1000248C8()
{
  v8 = v0;
  type metadata accessor for WidgetItemEntityQuery(0);
  v1 = sub_100039978();
  v2 = sub_10003A868();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10002AF20(0x7469746E456C6C61, 0xED00002928736569, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100003214(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_100024A4C;

  return sub_1000234A4(0);
}

uint64_t sub_100024A4C(uint64_t a1)
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

    return _swift_task_switch(sub_100024BAC, 0, 0);
  }
}

uint64_t sub_100024BAC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v6 = v0[7];
  v7 = v0[3];
  sub_10003A7C8();
  sub_100039578();
  sub_1000281A8(&qword_10004D940, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
  sub_10003A908();
  sub_100027F44(v0[2]);

  sub_1000281A8(&qword_10004D908, &type metadata accessor for ItemModel.Tag, &protocol conformance descriptor for ItemModel.Tag);
  sub_100039298();
  sub_100039638();
  sub_100001B2C(&qword_10004D910, &qword_10003D9C0);
  sub_1000281A8(&qword_10004D918, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000281A8(&qword_10004D920, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000281A8(&qword_10004D928, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000281A8(&qword_10004D930, &type metadata accessor for ItemModel, &protocol conformance descriptor for ItemModel);
  sub_1000073FC(&qword_10004D938, &qword_10004D910, &qword_10003D9C0, &protocol conformance descriptor for OrganizedListEmptyStorageMappings<A, B>);
  sub_1000392C8();
  (*(v3 + 16))(v1, v2, v6);
  sub_100024260(v1, v7);
  (*(v3 + 8))(v2, v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100024EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000427C;

  return sub_1000247C0(a1);
}

uint64_t sub_100025014@<X0>(void *a1@<X8>)
{
  v2 = sub_100039998();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_100039988();
  v9 = *(v3 + 32);
  v9(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v5, v2);
  result = sub_100039988();
  *a1 = &unk_10003D7E0;
  a1[1] = v11;
  return result;
}

uint64_t sub_1000251C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100028278;

  return sub_100023B98(a1);
}

uint64_t sub_100025258(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000281A8(&qword_10004D988, type metadata accessor for WidgetItemEntityQuery, &unk_10003D808);
  *v5 = v2;
  v5[1] = sub_1000049F0;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v6);
}

uint64_t sub_10002533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000253FC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000253FC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000255D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000281A8(&qword_10004D6D8, type metadata accessor for WidgetItemEntityQuery, &unk_10003D858);
  *v5 = v2;
  v5[1] = sub_1000049F0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000256B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000427C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100025780(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100039998();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100025840(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100039998();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000258E4(uint64_t a1)
{
  result = sub_100039998();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100025960()
{
  v35 = sub_100039638();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for WidgetItemEntity(0);
  __chkstk_darwin(v36);
  v33 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B2C(&qword_10004D958, &qword_10003D9E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - v5;
  sub_100001B2C(&qword_10004D948, &qword_10003D9D0);
  v7 = sub_100039368();
  v8 = *(v7 + 16);
  if (v8)
  {
    v10 = *(v0 + 16);
    v9 = v0 + 16;
    v11 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v25[1] = v7;
    v12 = v7 + v11;
    v29 = *(v9 + 56);
    v30 = v10;
    v27 = (v4 + 8);
    v28 = v4 + 16;
    v13 = _swiftEmptyArrayStorage;
    v26 = xmmword_10003C0C0;
    v31 = v4;
    v32 = v9;
    do
    {
      v14 = v34;
      v30(v34, v12, v35);
      v15 = v33;
      sub_100020990(v14, v33);
      sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity, &unk_10003D6C0);
      v16 = v6;
      sub_100038E58();
      sub_1000280E8(v15);
      sub_100001B2C(&qword_10004D960, &qword_10003D9F0);
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v26;
      v19 = v18 + v17;
      v6 = v16;
      (*(v4 + 16))(v19, v16, v3);
      v20 = sub_100038E38();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10002AC10(0, v13[2] + 1, 1, v13);
      }

      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        v13 = sub_10002AC10((v21 > 1), v22 + 1, 1, v13);
      }

      v4 = v31;
      (*v27)(v16, v3);
      v13[2] = v22 + 1;
      v13[v22 + 4] = v20;
      v12 += v29;
      --v8;
    }

    while (v8);
  }

  sub_1000281A8(&qword_10004D700, type metadata accessor for WidgetItemEntity, &unk_10003D6C0);
  sub_100038E28();

  v23 = sub_100038E48();

  return v23;
}

uint64_t sub_100025D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D8F8, &qword_10003D9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100025E04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100025E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100025E24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100025F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100025E44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100025E64(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004D9A8, &qword_10003DA28);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100025F68(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B2C(&qword_10004D990, &qword_10003DA10);
  v10 = *(type metadata accessor for WidgetItemEntity(0) - 8);
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
  v15 = *(type metadata accessor for WidgetItemEntity(0) - 8);
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

void *sub_100026140(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B2C(&qword_10004D968, &qword_10003D9F8);
  v10 = *(sub_100001B2C(&qword_10004D950, &qword_10003D9D8) - 8);
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
  v15 = *(sub_100001B2C(&qword_10004D950, &qword_10003D9D8) - 8);
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

uint64_t sub_100026330(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100039548();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
  v33 = a2;
  v11 = sub_10003A5F8();
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
      sub_1000281A8(&qword_10004D998, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
      v21 = sub_10003A628();
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
    sub_100026FA8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100026610(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100039578();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
  v33 = a2;
  v11 = sub_10003A5F8();
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
      sub_1000281A8(&qword_10004D978, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
      v21 = sub_10003A628();
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
    sub_100027270(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1000268F0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100039548();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100001B2C(&qword_10004D9A0, &unk_10003DA18);
  v6 = sub_10003A8D8();
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
      sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
      v21 = sub_10003A5F8();
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

void sub_100026C4C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100039578();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100001B2C(&qword_10004D980, &qword_10003DA00);
  v6 = sub_10003A8D8();
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
      sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
      v21 = sub_10003A5F8();
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

uint64_t sub_100026FA8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_100039548();
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
    sub_1000268F0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100027538(&type metadata accessor for ItemModel.UniqueIdentifier, &qword_10004D9A0, &unk_10003DA18);
      goto LABEL_12;
    }

    sub_100027770(v11 + 1);
  }

  v13 = *v3;
  sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
  v14 = sub_10003A5F8();
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
      sub_1000281A8(&qword_10004D998, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
      v22 = sub_10003A628();
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
  result = sub_10003A9A8();
  __break(1u);
  return result;
}

uint64_t sub_100027270(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_100039578();
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
    sub_100026C4C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100027538(&type metadata accessor for ItemModel.Sort, &qword_10004D980, &qword_10003DA00);
      goto LABEL_12;
    }

    sub_100027A8C(v11 + 1);
  }

  v13 = *v3;
  sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
  v14 = sub_10003A5F8();
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
      sub_1000281A8(&qword_10004D978, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
      v22 = sub_10003A628();
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
  result = sub_10003A9A8();
  __break(1u);
  return result;
}

void sub_100027538(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100001B2C(a2, a3);
  v11 = *v3;
  v12 = sub_10003A8C8();
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

void sub_100027770(uint64_t a1)
{
  v2 = v1;
  v34 = sub_100039548();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100001B2C(&qword_10004D9A0, &unk_10003DA18);
  v7 = sub_10003A8D8();
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
      sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
      v21 = sub_10003A5F8();
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

void sub_100027A8C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_100039578();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100001B2C(&qword_10004D980, &qword_10003DA00);
  v7 = sub_10003A8D8();
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
      sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
      v21 = sub_10003A5F8();
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

uint64_t sub_100027DA8(uint64_t a1)
{
  v2 = sub_100039548();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000281A8(&qword_10004D710, &type metadata accessor for ItemModel.UniqueIdentifier, &protocol conformance descriptor for ItemModel.UniqueIdentifier);
  result = sub_10003A7D8();
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
      sub_100026330(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100027F44(uint64_t a1)
{
  v2 = sub_100039578();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000281A8(&qword_10004D970, &type metadata accessor for ItemModel.Sort, &protocol conformance descriptor for ItemModel.Sort);
  result = sub_10003A7D8();
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
      sub_100026610(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1000280E8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetItemEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetItemEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000281A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000281F0()
{
  v1 = sub_100039998();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10002828C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1000282DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100028330(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100028358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_100001B2C(&qword_10004D9B8, &qword_10003DAA8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  sub_100001B2C(&qword_10004D9C0, &qword_10003DAB0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = sub_100039708();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_100039548();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100028508, 0, 0);
}

uint64_t sub_100028508()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(SPOwnerSession) init];
  v3 = v2;
  v0[16] = v2;
  if (v1)
  {
    v48 = v2;
    v4 = v0[3];
    v7 = *(v4 + 56);
    v6 = v4 + 56;
    v5 = v7;
    v8 = -1;
    v9 = -1 << *(v0[3] + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v5;
    v11 = v0[10];
    v12 = (63 - v9) >> 6;
    v55 = (v11 + 56);
    v50 = (v11 + 8);
    v51 = (v11 + 16);
    v56 = v0[14];
    v54 = (v11 + 48);
    v46 = v11;
    v47 = (v11 + 32);
    v57 = v0[3];

    v19 = 0;
    v49 = _swiftEmptyArrayStorage;
    v52 = v12;
    v53 = v6;
LABEL_5:
    v20 = v19;
    if (!v10)
    {
      goto LABEL_7;
    }

    do
    {
      v19 = v20;
LABEL_10:
      v21 = v0[6];
      (*(v56 + 16))(v0[15], *(v57 + 48) + *(v56 + 72) * (__clz(__rbit64(v10)) | (v19 << 6)), v0[13]);
      sub_100039518();
      v22 = sub_100039438();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v21, 1, v22) == 1)
      {
        (*v55)(v0[7], 1, 1, v0[9]);
      }

      else
      {
        v24 = v0[11];
        v25 = v0[9];
        v26 = v0[7];
        v27 = v0[5];
        sub_100009AB0(v0[6], v27, &qword_10004D9B8, &qword_10003DAA8);
        sub_100039418();
        (*v51)(v26, v24, v25);
        (*v55)(v26, 0, 1, v25);
        (*v50)(v24, v25);
        (*(v23 + 8))(v27, v22);
      }

      v10 &= v10 - 1;
      v28 = v0[15];
      v29 = v0[13];
      v31 = v0[8];
      v30 = v0[9];
      v32 = v0[7];
      sub_100009B18(v0[6], &qword_10004D9B8, &qword_10003DAA8);
      sub_10002B5D0(v32, v31);
      (*(v56 + 8))(v28, v29);
      if ((*v54)(v31, 1, v30) != 1)
      {
        v33 = *v47;
        (*v47)(v0[12], v0[8], v0[9]);
        v12 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10002AD44(0, *(v49 + 2) + 1, 1, v49, &qword_10004D9D0, &qword_10003DAD0, &type metadata accessor for UUID);
        }

        v35 = *(v49 + 2);
        v34 = *(v49 + 3);
        if (v35 >= v34 >> 1)
        {
          v49 = sub_10002AD44((v34 > 1), v35 + 1, 1, v49, &qword_10004D9D0, &qword_10003DAD0, &type metadata accessor for UUID);
        }

        v36 = v0[12];
        v37 = v0[9];
        *(v49 + 2) = v35 + 1;
        v13 = v33(&v49[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v35], v36, v37);
        v6 = v53;
        goto LABEL_5;
      }

      v13 = sub_100009B18(v0[8], &qword_10004D9C0, &qword_10003DAB0);
      v20 = v19;
      v12 = v52;
      v6 = v53;
    }

    while (v10);
LABEL_7:
    while (1)
    {
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v19 >= v12)
      {

        v38 = objc_opt_self();
        isa = sub_10003A728().super.isa;

        v40 = [v38 fmipItemContextForBeaconUUIDs:isa];

        v3 = v48;
        goto LABEL_23;
      }

      v10 = *(v6 + 8 * v19);
      ++v20;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = [objc_opt_self() fmipItemContext];
LABEL_23:
    v0[17] = v40;
    v41 = swift_allocObject();
    v0[18] = v41;
    *(v41 + 16) = v3;
    *(v41 + 24) = v40;
    v42 = v3;
    v43 = v40;
    v44 = swift_task_alloc();
    v0[19] = v44;
    v18 = sub_100001B2C(&qword_10004D9C8, &qword_10003DAC8);
    *v44 = v0;
    v44[1] = sub_100028AD4;
    v16 = &unk_10003DAC0;
    v14 = 0xD02AB486CEDC0000;
    v13 = (v0 + 2);
    v15 = 0;
    v17 = v41;
  }

  return withTimeout<A>(_:block:)(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_100028AD4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100028F34;
  }

  else
  {

    v2 = sub_100028BF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100028BF0()
{
  v22 = v0;
  v1 = v0[2];

  v2 = sub_100039978();
  v3 = sub_10003A868();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_10002AF20(0x6576694C6C616572, 0xEA00000000002928, v21);
    *(v4 + 12) = 2050;
    if (v1 >> 62)
    {
      v6 = sub_10003A948();
    }

    else
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 14) = v6;

    _os_log_impl(&_mh_execute_header, v2, v3, "%s - appBeacons.count: %{public}ld", v4, 0x16u);
    sub_100003214(v5);
  }

  else
  {
  }

  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  v9 = sub_100029008(sub_10002B5B4, v8, v1);

  v10 = sub_100039978();
  v11 = sub_10003A868();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[16];
  v14 = v0[17];
  if (v12)
  {
    v15 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10002AF20(0x6576694C6C616572, 0xEA00000000002928, v21);
    *(v15 + 12) = 2080;
    sub_100039638();
    v16 = sub_10003A738();
    v18 = sub_10002AF20(v16, v17, v21);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - result: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v19 = v0[1];

  return v19(v9);
}

uint64_t sub_100028F34()
{
  v1 = v0[17];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

void *sub_100029008(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_100001B2C(&qword_10004D8F8, &qword_10003D9A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100039638();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = _swiftEmptyArrayStorage;
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = sub_10003A918();
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_100009B18(v8, &qword_10004D8F8, &qword_10003D9A0);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_10002AD44(0, v38[2] + 1, 1, v38, &qword_10004D9E0, &qword_10003DAE0, &type metadata accessor for ItemModel);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_10002AD44((v21 > 1), v22 + 1, 1, v38, &qword_10004D9E0, &qword_10003DAE0, &type metadata accessor for ItemModel);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = sub_10003A948();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000293B8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_100039498();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000394A8();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100039448();
  __chkstk_darwin(v83);
  v84 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100039568();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v82 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100039478();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v81 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100039598();
  __chkstk_darwin(v9 - 8);
  v96 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000394F8();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v95 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000393F8();
  __chkstk_darwin(v12 - 8);
  v94 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100039438();
  __chkstk_darwin(v14 - 8);
  v73 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100039548();
  __chkstk_darwin(v16 - 8);
  v92 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000395D8();
  v99 = *(v18 - 8);
  __chkstk_darwin(v18);
  v76 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v71 - v21;
  __chkstk_darwin(v23);
  v91 = v71 - v24;
  v25 = sub_100039708();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = sub_100039978();
  v31 = sub_10003A838();

  v32 = os_log_type_enabled(v30, v31);
  v72 = v22;
  v71[1] = v28;
  v98 = v29;
  if (v32)
  {
    v33 = v29;
    v34 = v28;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v93 = v18;
    v101 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_10002AF20(0x6576694C6C616572, 0xEA00000000002928, &v101);
    *(v35 + 12) = 2080;
    v37 = [v33 identifier];
    sub_1000396F8();

    sub_10002B798(&qword_10004DA20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = sub_10003A988();
    v40 = v39;
    (*(v26 + 8))(v34, v25);
    v41 = sub_10002AF20(v38, v40, &v101);

    *(v35 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s - compactMap %s", v35, 0x16u);
    swift_arrayDestroy();
    v18 = v93;
  }

  v42 = v100;
  if (qword_10004C320 != -1)
  {
    swift_once();
  }

  v43 = qword_10004D9B0;
  v44 = v98;
  v45 = [v98 type];
  v101 = v45;
  __chkstk_darwin(v45);
  v70 = &v101;
  v46 = v97;
  LOBYTE(v43) = sub_10002B640(sub_10002B778, v69, v43);

  v47 = [v44 isAppleAudioAccessory];
  v48 = 1;
  if ((v43 & 1) != 0 && (v47 & 1) == 0)
  {
    v49 = [v44 role];
    if (v49)
    {
      v50 = v49;
      v51 = [v44 batteryLevel];
      v97 = v46;
      if (v51 <= 4)
      {
LABEL_9:
        v101 = _swiftEmptyArrayStorage;
LABEL_15:
        sub_10002B798(&qword_10004D9E8, &type metadata accessor for ItemModel.Battery, &protocol conformance descriptor for ItemModel.Battery);
        sub_100001B2C(&qword_10004D9F0, &qword_10003DAE8);
        sub_1000073FC(&qword_10004D9F8, &qword_10004D9F0, &qword_10003DAE8, &protocol conformance descriptor for [A]);
        v53 = v72;
        sub_10003A8B8();
        (*(v99 + 32))(v91, v53, v18);
        v54 = [v44 identifier];
        sub_1000396F8();

        sub_100039428();
        sub_100039528();
        v55 = [v44 name];
        sub_10003A6A8();

        sub_1000393D8();
        v71[0] = v50;
        v56 = [v50 roleEmoji];
        sub_10003A6A8();

        v57 = v18;
        v93 = v18;
        v58 = v95;
        sub_1000394B8();
        (*(v74 + 104))(v58, enum case for ItemModel.ImageDefinition.emoji(_:), v75);
        v59 = [v44 owner];
        v60 = [v59 destination];

        sub_10003A6A8();
        sub_100039588();
        v61 = [v44 connected];
        v62 = v81;
        *v81 = v61;
        (*(v77 + 104))(v62, enum case for ItemModel.Relationship.another(_:), v78);
        (*(v79 + 104))(v82, enum case for ItemModel.Kind.item(_:), v80);
        v63 = v91;
        (*(v99 + 16))(v76, v91, v57);
        v101 = _swiftEmptyArrayStorage;
        sub_10002B798(&qword_10004DA00, &type metadata accessor for ItemModel.Capabilities, &protocol conformance descriptor for ItemModel.Capabilities);
        sub_100001B2C(&qword_10004DA08, &qword_10003DAF0);
        sub_1000073FC(&qword_10004DA10, &qword_10004DA08, &qword_10003DAF0, &protocol conformance descriptor for [A]);
        v64 = v84;
        sub_10003A8B8();
        v65 = v86;
        (*(v85 + 104))(v86, enum case for ItemModel.PlaySoundState.unknown(_:), v87);
        v66 = v88;
        (*(v89 + 104))(v88, enum case for ItemModel.LostModeState.unknown(_:), v90);
        v69[1] = v65;
        v70 = v66;
        v69[0] = v64;
        v42 = v100;
        sub_100039618();

        (*(v99 + 8))(v63, v93);
        v48 = 0;
        goto LABEL_16;
      }

      if (v51 == 5)
      {
        sub_100001B2C(&qword_10004DA18, &qword_10003DAF8);
        v52 = swift_allocObject();
        *(v52 + 1) = xmmword_10003C0C0;
        sub_1000395B8();
      }

      else
      {
        if (v51 != 6)
        {
          goto LABEL_9;
        }

        sub_100001B2C(&qword_10004DA18, &qword_10003DAF8);
        v52 = swift_allocObject();
        *(v52 + 1) = xmmword_10003C0C0;
        sub_1000395C8();
      }

      v101 = v52;
      goto LABEL_15;
    }
  }

LABEL_16:
  v67 = sub_100039638();
  return (*(*(v67 - 8) + 56))(v42, v48, 1, v67);
}

id sub_10002A158()
{
  sub_100001B2C(&qword_10004DA28, &qword_10003DB00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003DA90;
  v1 = SPBeaconTypeAccessory;
  v2 = SPBeaconTypeDurian;
  v5 = SPBeaconTypeDurian;
  *(v0 + 32) = SPBeaconTypeAccessory;
  *(v0 + 40) = v2;
  qword_10004D9B0 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_10002A1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10002A204, 0, 0);
}

uint64_t sub_10002A204()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_100001B2C(&qword_10004D9C8, &qword_10003DAC8);
  *v2 = v0;
  v2[1] = sub_10002A304;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v0 + 16, 0xD000000000000023, 0x800000010003B5B0, sub_10002B7E0, v1, v3);
}

uint64_t sub_10002A304()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10002A440;
  }

  else
  {

    v2 = sub_10002A420;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002A440()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10002A4A4(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = sub_10002B7E8;
  v13 = a1;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10002A84C;
  v11 = &unk_10004B0C0;
  v6 = _Block_copy(&v8);

  v12 = sub_10002B808;
  v13 = a1;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10002AA94;
  v11 = &unk_10004B0E8;
  v7 = _Block_copy(&v8);

  [a2 startUpdatingApplicationBeaconsWithContext:a3 collectionDifference:v6 completion:v7];
  _Block_release(v7);
  _Block_release(v6);
}

uint64_t sub_10002A600(uint64_t a1, void *a2)
{
  v4 = sub_100001B2C(&qword_10004DA38, &qword_10003DB10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_100001B2C(&qword_10004DA30, &qword_10003DB08);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  if (a2)
  {
    v14 = a2;
    swift_errorRetain();
    sub_1000390E8();
  }

  else
  {
    sub_100009AB0(a1, &v13 - v9, &qword_10004DA30, &qword_10003DB08);
    if ((*(v5 + 48))(v10, 1, v4) == 1 || ((*(v5 + 32))(v7, v10, v4), v13 = _swiftEmptyArrayStorage, sub_100001B2C(&qword_10004D9C8, &qword_10003DAC8), sub_1000073FC(&qword_10004DA48, &qword_10004D9C8, &qword_10003DAC8, &protocol conformance descriptor for [A]), sub_10003A828(), (*(v5 + 8))(v7, v4), (v12 = v14) == 0))
    {
      v12 = _swiftEmptyArrayStorage;
    }

    v14 = v12;
    sub_1000390F8();
  }
}

uint64_t sub_10002A84C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100001B2C(&qword_10004DA30, &qword_10003DB08);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_10002B810();
    sub_10003A958();
    v10 = sub_100001B2C(&qword_10004DA38, &qword_10003DB10);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_100001B2C(&qword_10004DA38, &qword_10003DB10);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100009B18(v8, &qword_10004DA30, &qword_10003DB08);
}

void sub_10002A9C4(char a1, void *a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000390E8();
  }

  else if ((a1 & 1) == 0)
  {
    v2 = objc_allocWithZone(NSError);
    v3 = sub_10003A678();
    v4 = [v2 initWithDomain:v3 code:367237 userInfo:0];

    v5 = v4;
    sub_1000390E8();
  }
}

void sub_10002AA94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_10002AB0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004D9A8, &qword_10003DA28);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10002AC10(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001B2C(&qword_10004DA50, &qword_10003DB18);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001B2C(&qword_10004DA58, &unk_10003DB20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002AD44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B2C(a5, a6);
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

unint64_t sub_10002AF20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002AFEC(v11, 0, 0, 1, a1, a2);
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
    sub_1000031B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003214(v11);
  return v7;
}

unint64_t sub_10002AFEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002B0F8(a5, a6);
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
    result = sub_10003A928();
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

void *sub_10002B0F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002B144(a1, a2);
  sub_10002B274(&off_10004A3C0);
  return v3;
}

void *sub_10002B144(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002B360(v5, 0);
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

  result = sub_10003A928();
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
        v10 = sub_10003A6E8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002B360(v10, 0);
        result = sub_10003A8E8();
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

uint64_t sub_10002B274(uint64_t result)
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

  result = sub_10002B3D4(result, v11, 1, v3);
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

void *sub_10002B360(uint64_t a1, uint64_t a2)
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

  sub_100001B2C(&qword_10004D9D8, &qword_10003DAD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002B3D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004D9D8, &qword_10003DAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10002B4C8()
{

  return swift_deallocObject();
}

uint64_t sub_10002B508(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000427C;

  return sub_10002A1E0(a1, v5, v4);
}

uint64_t sub_10002B5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004D9C0, &qword_10003DAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B640(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002B6E8(void *a1, uint64_t *a2)
{
  v2 = sub_10003A6A8();
  v4 = v3;
  if (v2 == sub_10003A6A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10003A998();
  }

  return v7 & 1;
}

uint64_t sub_10002B798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002B7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002B810()
{
  result = qword_10004DA40;
  if (!qword_10004DA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004DA40);
  }

  return result;
}

uint64_t sub_10002B878(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10002B938(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for ItemsWidget(uint64_t a1)
{
  result = qword_10004DAB8;
  if (!qword_10004DAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002BA28(uint64_t a1)
{
  result = _s12DependenciesVMa_1(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002BAC0@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = _s12DependenciesVMa_1(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B2C(&qword_10004C398, &qword_10003BC40);
  v75 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v76 = sub_100001B2C(&qword_10004C390, &qword_10003BC38);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v9 = &v70 - v8;
  v10 = sub_100001B2C(&qword_10004C388, &qword_10003BC30);
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  __chkstk_darwin(v10);
  v74 = &v70 - v12;
  v13 = sub_100001B2C(&qword_10004C380, &qword_10003BC28);
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  __chkstk_darwin(v13);
  v78 = &v70 - v15;
  v16 = sub_100001B2C(&qword_10004C378, &qword_10003BC20);
  v17 = *(v16 - 8);
  v87 = v16;
  v88 = v17;
  __chkstk_darwin(v16);
  v79 = &v70 - v18;
  v19 = sub_100001B2C(&qword_10004DAF0, &qword_10003DB88);
  v20 = *(v19 - 8);
  v89 = v19;
  v90 = v20;
  __chkstk_darwin(v19);
  v80 = &v70 - v21;
  v22 = sub_100001B2C(&qword_10004DAF8, &qword_10003DB90);
  v23 = *(v22 - 8);
  v91 = v22;
  *&v92 = v23;
  __chkstk_darwin(v22);
  v81 = &v70 - v24;
  v25 = sub_100001B2C(&qword_10004DB00, &qword_10003DB98);
  v26 = *(v25 - 8);
  v93 = v25;
  v94 = v26;
  __chkstk_darwin(v25);
  v82 = &v70 - v27;
  v73 = (v1 + *(type metadata accessor for ItemsWidget(0) + 20));
  sub_10002C850(v73, v4, _s12DependenciesVMa_1);
  type metadata accessor for ItemsWidgetProvider(0);
  swift_allocObject();

  v96 = sub_10002FBF0(v4);
  type metadata accessor for WidgetEntryView(0);
  sub_10002C808(&qword_10004DB08, type metadata accessor for WidgetEntryView, &unk_10003D2C8);
  sub_10002C808(&qword_10004DB10, type metadata accessor for ItemsWidgetProvider, &unk_10003DEF8);
  sub_10003A528();
  sub_100039DA8();
  v28 = sub_10003A128();
  v30 = v29;
  v32 = v31;
  v33 = sub_100001BBC();
  sub_100039E58();
  sub_100009880(v28, v30, v32 & 1);

  (*(v75 + 8))(v7, v5);
  sub_100039DA8();
  v34 = sub_10003A128();
  v36 = v35;
  v38 = v37;
  v96 = v5;
  v97 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v74;
  v41 = v76;
  sub_100039E18();
  sub_100009880(v34, v36, v38 & 1);

  (*(v77 + 8))(v9, v41);
  v77 = sub_100001B2C(&qword_10004DB18, &qword_10003DBA0);
  v42 = sub_10003A4A8();
  v71 = v42;
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = *(v43 + 80);
  v72 = (v45 + 32) & ~v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10003DA90;
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
  sub_100039E28();

  v52 = (*(v84 + 8))(v40, v51);
  (*v73)(v52);
  v96 = v51;
  v97 = v49;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v79;
  v55 = v85;
  sub_100039E88();
  (*(v86 + 8))(v50, v55);
  v96 = v55;
  v97 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v80;
  v58 = v87;
  sub_100039E68();
  (*(v88 + 8))(v54, v58);
  v96 = v58;
  v97 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v81;
  v61 = v89;
  sub_100039E48();
  (*(v90 + 8))(v57, v61);
  v96 = v61;
  v97 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v82;
  v64 = v91;
  sub_100039E78();
  (*(v92 + 8))(v60, v64);
  sub_100001B2C(&qword_10004DB20, &qword_10003DBA8);
  sub_10003A4C8();
  v65 = swift_allocObject();
  v92 = xmmword_10003C0C0;
  *(v65 + 16) = xmmword_10003C0C0;
  sub_10003A4B8();
  v66 = v72;
  v67 = swift_allocObject();
  *(v67 + 16) = v92;
  v70(v67 + v66, v75, v71);
  v96 = v64;
  v97 = v62;
  swift_getOpaqueTypeConformance2();
  v68 = v93;
  sub_100039E38();

  return (*(v94 + 8))(v63, v68);
}

double sub_10002C6C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ItemsWidgetProvider.Entry(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10002C850(a1, v6, type metadata accessor for ItemsWidgetProvider.Entry);
  sub_10002DBF8(v6, a2);

  return result;
}

uint64_t sub_10002C7C8@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0xD000000000000022;
  a1[1] = 0x800000010003B6D0;
  return sub_100037EFC((a1 + *(a2 + 20)));
}

uint64_t sub_10002C808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C8B8()
{
  sub_100001B74(&qword_10004DB00, &qword_10003DB98);
  sub_100001B74(&qword_10004DAF8, &qword_10003DB90);
  sub_100001B74(&qword_10004DAF0, &qword_10003DB88);
  sub_100001B74(&qword_10004C378, &qword_10003BC20);
  sub_100001B74(&qword_10004C380, &qword_10003BC28);
  sub_100001B74(&qword_10004C388, &qword_10003BC30);
  sub_100001B74(&qword_10004C390, &qword_10003BC38);
  sub_100001B74(&qword_10004C398, &qword_10003BC40);
  sub_100001BBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002CAD8@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = sub_100039998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v21[0] = type metadata accessor for ItemsWidget(0);
  __chkstk_darwin(v21[0]);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = 0xD000000000000022;
  v9[1] = 0x800000010003B6D0;
  v11 = (v9 + *(v10 + 20));
  v12 = [objc_allocWithZone(ACAccountStore) init];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  type metadata accessor for AccountStore(0);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100039988();
  *(v14 + 112) = &unk_10003DC08;
  *(v14 + 120) = v13;
  v15 = _s12DependenciesVMa_1(0);
  sub_1000392E8();
  sub_100039988();
  v16 = *(v2 + 32);
  v16(v4, v7, v1);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  v16((v18 + v17), v4, v1);
  *v11 = sub_100038154;
  v11[1] = 0;
  v11[2] = v14;
  v19 = (v11 + *(v15 + 28));
  *v19 = &unk_10003D7E0;
  v19[1] = v18;
  sub_10002CFD4();
  sub_100039E08();
  return sub_10002D02C(v9);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10002CE00();
  sub_100039A38();
  return 0;
}

unint64_t sub_10002CE00()
{
  result = qword_10004DB28;
  if (!qword_10004DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DB28);
  }

  return result;
}

uint64_t sub_10002CE80()
{

  return swift_deallocObject();
}

uint64_t sub_10002CEB8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100022868;

  return sub_100002BF8(v2);
}

uint64_t sub_10002CF4C()
{
  v1 = sub_100039998();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10002CFD4()
{
  result = qword_10004DB30;
  if (!qword_10004DB30)
  {
    type metadata accessor for ItemsWidget(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DB30);
  }

  return result;
}

uint64_t sub_10002D02C(uint64_t a1)
{
  v2 = type metadata accessor for ItemsWidget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D088()
{
  type metadata accessor for ItemsWidget(255);
  sub_10002CFD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for ItemsWidgetDynamicOptionsProvider(uint64_t a1)
{
  result = qword_10004DB98;
  if (!qword_10004DB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002D1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002D208()
{
  result = qword_10004D858;
  if (!qword_10004D858)
  {
    sub_100001B74(&qword_10004D860, qword_10003DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D858);
  }

  return result;
}

void sub_10002D26C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ItemsWidgetDynamicOptionsProvider(0);
  sub_100039988();
  type metadata accessor for WidgetItemEntityQuery(0);
  sub_100039988();
  *a3 = a1;
  a3[1] = a2;
  oslog = sub_100039978();
  v6 = sub_10003A868();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10002AF20(0xD000000000000013, 0x800000010003B700, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, "%s", v7, 0xCu);
    sub_100003214(v8);
  }
}

uint64_t sub_10002D3FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002D41C, 0, 0);
}

uint64_t sub_10002D41C()
{
  v9 = v0;
  type metadata accessor for ItemsWidgetDynamicOptionsProvider(0);
  v1 = sub_100039978();
  v2 = sub_10003A868();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10002AF20(0x52746C7561666564, 0xEF2928746C757365, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100003214(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10002D5A0;
  v6 = *(v0 + 16);

  return sub_100022A00(v6);
}

uint64_t sub_10002D5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002D694(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002D6B4, 0, 0);
}

uint64_t sub_10002D6B4()
{
  v9 = v0;
  type metadata accessor for ItemsWidgetDynamicOptionsProvider(0);
  v1 = sub_100039978();
  v2 = sub_10003A868();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10002AF20(0x2873746C75736572, 0xE900000000000029, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100003214(v4);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10002D5A0;
  v6 = *(v0 + 16);

  return sub_1000247C0(v6);
}

uint64_t sub_10002D830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000427C;

  return sub_10002D694(a1);
}

uint64_t sub_10002D8C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000427C;

  return sub_10002D3FC(a1);
}

uint64_t sub_10002D974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetItemEntityQuery(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100039998();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002DA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetItemEntityQuery(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100039998();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002DB74(uint64_t a1)
{
  result = type metadata accessor for WidgetItemEntityQuery(319);
  if (v2 <= 0x3F)
  {
    result = sub_100039998();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v3 = sub_100039258();
  v165 = *(v3 - 8);
  v166 = v3;
  __chkstk_darwin(v3);
  v164 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for LoadedView.Callout(0);
  __chkstk_darwin(v169);
  v171 = (&v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100001B2C(&qword_10004C780, "P*");
  __chkstk_darwin(v6 - 8);
  v170 = &v147 - v7;
  v8 = sub_1000391C8();
  v162 = *(v8 - 8);
  v163 = v8;
  __chkstk_darwin(v8);
  v161 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  __chkstk_darwin(v10 - 8);
  v168 = &v147 - v11;
  v12 = sub_1000391F8();
  v159 = *(v12 - 8);
  v160 = v12;
  __chkstk_darwin(v12);
  v157 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100039218();
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo(0);
  v16 = *(v172 - 8);
  __chkstk_darwin(v172);
  v167 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001B2C(&qword_10004DBD0, &unk_10003DFD0);
  __chkstk_darwin(v18 - 8);
  v20 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v173 = &v147 - v22;
  v23 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  __chkstk_darwin(v23);
  v25 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
  __chkstk_darwin(v175);
  v27 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v147 - v29;
  v31 = sub_100001B2C(&qword_10004D268, &qword_10003D1D8);
  __chkstk_darwin(v31 - 8);
  v33 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v147 - v35;
  __chkstk_darwin(v37);
  v177 = &v147 - v38;
  v39 = *(type metadata accessor for ItemsWidgetProvider.Entry(0) + 20);
  v174 = a1;
  sub_10002EEE8(a1 + v39, v25, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v43 = *v25;
      v42 = *(v25 + 1);
      v150 = *(v25 + 2);
      v44 = v25[24];
      LODWORD(v152) = v25[25];
      v45 = &v25[*(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48)];
      v46 = v173;
      sub_100007308(v45, v173, &qword_10004DBD0, &unk_10003DFD0);
      v178 = 0;
      v179 = 0xE000000000000000;
      sub_10003A8F8(40);

      v178 = 0xD000000000000018;
      v179 = 0x800000010003B720;

      v180._countAndFlagsBits = v43;
      v180._object = v42;
      sub_10003A6D8(v180);
      v153 = v42;

      v181._countAndFlagsBits = 0x656C65733D706F26;
      v181._object = 0xEE006D6574497463;
      sub_10003A6D8(v181);
      sub_100039688();

      v47 = v30;
      if (v44 == 1)
      {
        v155 = sub_100039DA8();
        v49 = v48;
        v51 = v50;
        v154 = v52;
      }

      else
      {
        v155 = 0;
        v49 = 0;
        v51 = 0;
        v154 = 0;
      }

      if (v152)
      {
        v67 = 0xD000000000000011;
      }

      else
      {
        v67 = 0;
      }

      if (v152)
      {
        v68 = 0x800000010003B770;
      }

      else
      {
        v68 = 0;
      }

      sub_10002EF4C(v46, v20);
      v69 = (*(v16 + 48))(v20, 1, v172);
      v152 = v68;
      v151 = v67;
      if (v69 != 1)
      {
        v149 = v51;
        v73 = v167;
        sub_10002F01C(v20, v167, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
        sub_100039228();
        v75 = v159;
        v74 = v160;
        v76 = v157;
        (*(v159 + 104))(v157, enum case for PublishedLocation.Label.DetailLevel.compact(_:), v160);
        sub_100039208();
        v147 = v77;
        v148 = v78;
        (*(v75 + 8))(v76, v74);
        (*(v156 + 8))(v15, v158);
        if (v49)
        {
          v79 = v154;
          v80 = v149;
          v81 = v155;
        }

        else
        {

          v81 = sub_100039DC8();
          v49 = v125;
          v80 = v126;
        }

        v155 = v81;
        v127 = v148;
        v160 = v49;
        v149 = v80;
        v154 = v79;
        if (v148)
        {
          sub_10003A7A8();

          sub_10003A798();
          sub_10003A758();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v159 = sub_100039DC8();
          v129 = v128;
          v131 = v130;
          v133 = v132;

          v127 = v131 & 1;
        }

        else
        {

          v159 = 0;
          v129 = 0;
          v133 = 0;
        }

        v134 = v168;
        sub_100039278();
        v135 = sub_100039128();
        (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
        v136 = v161;
        sub_1000391D8();
        sub_1000391B8();
        (*(v162 + 8))(v136, v163);
        v137 = v150;
        v138 = v164;
        sub_100039268();
        v139 = v171;
        sub_100039248();
        (*(v165 + 8))(v138, v166);
        *v139 = v137;
        v140 = *(v73 + *(v172 + 20));
        if (v140)
        {
          sub_10003A7A8();
          v141 = v140;
          sub_10003A798();
          sub_10003A758();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
          sub_100009B18(v173, &qword_10004DBD0, &unk_10003DFD0);

          v73 = v167;
        }

        else
        {

          sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
          sub_100009B18(v173, &qword_10004DBD0, &unk_10003DFD0);
        }

        sub_10002EFBC(v73, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
        v142 = v160;
        *v27 = v155;
        *(v27 + 1) = v142;
        v27[16] = v149 & 1;
        v143 = v159;
        *(v27 + 3) = v154;
        *(v27 + 4) = v143;
        *(v27 + 5) = v129;
        *(v27 + 6) = v127;
        *(v27 + 7) = v133;
        v144 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
        sub_100007308(v168, &v27[v144[6]], &qword_10004C778, &unk_10003C4D0);
        sub_100007308(v170, &v27[v144[7]], &qword_10004C780, "P*");
        v145 = &v27[v144[8]];
        v146 = v152;
        *v145 = v151;
        *(v145 + 1) = v146;
        sub_10002F01C(v171, &v27[v144[9]], type metadata accessor for LoadedView.Callout);
        *&v27[v144[10]] = v140;
        swift_storeEnumTagMultiPayload();
        sub_10002F01C(v27, v47, type metadata accessor for WidgetEntryViewContent.Model.State);
        v122 = v176;
        v54 = v177;
        goto LABEL_32;
      }

      sub_100009B18(v20, &qword_10004DBD0, &unk_10003DFD0);
      if (v49)
      {
        v54 = v177;
        v70 = v51;
        v71 = v49;
        v72 = v154;
      }

      else
      {
        sub_1000391E8();
        v155 = sub_100039DC8();
        v71 = v110;
        v70 = v111;
        v72 = v112;
        v54 = v177;
      }

      sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
      sub_100009B18(v46, &qword_10004DBD0, &unk_10003DFD0);
      v113 = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(0);
      v114 = v113[6];
      v115 = sub_100039128();
      (*(*(v115 - 8) + 56))(v47 + v114, 1, 1, v115);
      v116 = v113[7];
      v117 = sub_100039398();
      v118 = *(*(v117 - 8) + 56);
      v118(v47 + v116, 1, 1, v117);
      v119 = (v47 + v113[9]);
      v118(v119 + *(v169 + 20), 1, 1, v117);

      *v119 = v150;
      *v47 = v155;
      *(v47 + 8) = v71;
      *(v47 + 16) = v70 & 1;
      *(v47 + 24) = v72;
      *(v47 + 32) = 0u;
      *(v47 + 48) = 0u;
      v120 = (v47 + v113[8]);
      v121 = v152;
      *v120 = v151;
      v120[1] = v121;
      *(v47 + v113[10]) = 0;
    }

    else
    {
      sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
      v66 = sub_100039698();
      v54 = v177;
      (*(*(v66 - 8) + 56))(v177, 1, 1, v66);
      v47 = v30;
    }

LABEL_31:
    swift_storeEnumTagMultiPayload();
    v122 = v176;
LABEL_32:
    sub_100007308(v54, v122, &qword_10004D268, &qword_10003D1D8);
    v123 = type metadata accessor for WidgetEntryViewContent.Model(0);
    return sub_10002F01C(v47, v122 + *(v123 + 20), type metadata accessor for WidgetEntryViewContent.Model.State);
  }

  v53 = *v25;
  if (v53 == 1)
  {
    v98 = sub_100039698();
    v54 = v177;
    (*(*(v98 - 8) + 56))(v177, 1, 1, v98);
    v99 = sub_100039DA8();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
    v47 = v30;
    *v30 = v99;
    *(v30 + 1) = v101;
    v30[16] = v103 & 1;
    *(v30 + 3) = v105;
    goto LABEL_31;
  }

  v54 = v177;
  v47 = v30;
  if (v53 != 3)
  {
    if (v53 == 2)
    {
      v55 = sub_100039698();
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      if (qword_10004C370 != -1)
      {
        swift_once();
      }

      v56 = sub_100039958();
      v57 = sub_100004618(v56, qword_100050250);
      (*(*(v56 - 8) + 16))(v30, v57, v56);
      v58 = sub_100039DA8();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
      v65 = v47 + *(type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(0) + 20);
      *v65 = v58;
      *(v65 + 8) = v60;
      *(v65 + 16) = v62 & 1;
      *(v65 + 24) = v64;
      goto LABEL_31;
    }

    v106 = sub_100039698();
    (*(*(v106 - 8) + 56))(v36, 1, 1, v106);
    sub_100007308(v36, v54, &qword_10004D268, &qword_10003D1D8);
    v84 = sub_100039DA8();
    v86 = v107;
    v88 = v108;
    v90 = v109;
    v91 = 0;
    v93 = 0;
    v97 = 0;
    v95 = 0;
    goto LABEL_28;
  }

  sub_100039688();
  v82 = sub_100039698();
  v83 = *(v82 - 8);
  if ((*(v83 + 48))(v33, 1, v82) != 1)
  {
    (*(v83 + 32))(v36, v33, v82);
    (*(v83 + 56))(v36, 0, 1, v82);
    sub_100007308(v36, v54, &qword_10004D268, &qword_10003D1D8);
    v84 = sub_100039DA8();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = sub_100039DA8();
    v93 = v92;
    v95 = v94;
    v97 = v96 & 1;
LABEL_28:
    sub_10002EFBC(v174, type metadata accessor for ItemsWidgetProvider.Entry);
    *v47 = v84;
    *(v47 + 8) = v86;
    *(v47 + 16) = v88 & 1;
    *(v47 + 24) = v90;
    *(v47 + 32) = v91;
    *(v47 + 40) = v93;
    *(v47 + 48) = v97;
    *(v47 + 56) = v95;
    goto LABEL_31;
  }

  result = sub_100009B18(v33, &qword_10004D268, &qword_10003D1D8);
  __break(1u);
  return result;
}

uint64_t sub_10002EEE8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004DBD0, &unk_10003DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EFBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002F01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002F084()
{
  result = qword_10004DBE0;
  if (!qword_10004DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBE0);
  }

  return result;
}

unint64_t sub_10002F0DC()
{
  result = qword_10004DBE8;
  if (!qword_10004DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBE8);
  }

  return result;
}

unint64_t sub_10002F134()
{
  result = qword_10004DBF0;
  if (!qword_10004DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBF0);
  }

  return result;
}

uint64_t sub_10002F1D8()
{
  v0 = sub_100039678();
  sub_100004650(v0, qword_100050190);
  sub_100004618(v0, qword_100050190);
  return sub_100039658();
}

uint64_t sub_10002F23C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C328 != -1)
  {
    swift_once();
  }

  v2 = sub_100039678();
  v3 = sub_100004618(v2, qword_100050190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002F2E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002FAAC();
  *v4 = v2;
  v4[1] = sub_100003C58;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10002F390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002F478();
  *a1 = result;
  return result;
}

uint64_t sub_10002F3B8(uint64_t a1)
{
  v2 = sub_10002F424();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002F424()
{
  result = qword_10004DBF8;
  if (!qword_10004DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DBF8);
  }

  return result;
}

uint64_t sub_10002F478()
{
  v0 = sub_100039048();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v35 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100039998();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v34);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v30 - v6;
  v36 = type metadata accessor for ItemsWidgetDynamicOptionsProvider(0);
  __chkstk_darwin(v36);
  v33 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100001B2C(&qword_10004DC00, &qword_10003DE78);
  __chkstk_darwin(v9 - 8);
  v31 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v30[0] = v30 - v12;
  v14 = sub_100001B2C(&qword_10004DC08, &unk_10003DE80);
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v30[1] = v30 - v15;
  v17 = sub_100001B2C(&qword_10004D838, &qword_10003D9E0);
  __chkstk_darwin(v17 - 8);
  v19 = v30 - v18;
  v20 = sub_100039678();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v32 = sub_100001B2C(&qword_10004DC10, &qword_10003DE90);
  sub_100039658();
  (*(v21 + 56))(v19, 1, 1, v20);
  v22 = type metadata accessor for WidgetItemEntity(0);
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = sub_100038E88();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v24(v31, 1, 1, v23);
  sub_100039988();
  v25 = *(v2 + 32);
  v26 = v34;
  v25(v4, v7, v34);
  v27 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v28 = swift_allocObject();
  v25((v28 + v27), v4, v26);
  sub_10002D26C(&unk_10003D7E0, v28, v33);
  (*(v37 + 104))(v35, enum case for InputConnectionBehavior.default(_:), v38);
  sub_10002D1BC(&qword_10004DC18, type metadata accessor for ItemsWidgetDynamicOptionsProvider, &unk_10003DC28);
  sub_10002D1BC(&qword_10004D6E8, type metadata accessor for WidgetItemEntity, &unk_10003D540);
  return sub_100038F98();
}

uint64_t sub_10002FA24()
{
  v1 = sub_100039998();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10002FAAC()
{
  result = qword_10004DC20;
  if (!qword_10004DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DC20);
  }

  return result;
}

uint64_t sub_10002FB28(uint64_t a1)
{
  v2 = sub_100039B58();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_100039C18();
}

uint64_t sub_10002FBF0(uint64_t a1)
{
  sub_100039988();
  sub_10003713C(a1, v1 + OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies, _s12DependenciesVMa_1);

  v3 = sub_100039978();
  v4 = sub_10003A868();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_10002FDB0(0xD000000000000013, 0x800000010003B700);
    v9 = sub_10002AF20(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100003214(v6);
  }

  sub_1000371A4(a1, _s12DependenciesVMa_1);
  return v1;
}

unint64_t sub_10002FDB0(uint64_t a1, void *a2)
{
  sub_10003A8F8(27);

  v5._countAndFlagsBits = sub_10003A618();
  sub_10003A6D8(v5);

  v6._countAndFlagsBits = 2108704;
  v6._object = 0xE300000000000000;
  sub_10003A6D8(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_10003A6D8(v7);
  return 0xD000000000000014;
}

uint64_t sub_10002FE64()
{

  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136446210;
    v7 = v4;
    sub_10003A8F8(27);

    v9._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v9);

    v10._countAndFlagsBits = 2108704;
    v10._object = 0xE300000000000000;
    sub_10003A6D8(v10);
    v11._object = 0x800000010003B920;
    v11._countAndFlagsBits = 0xD000000000000010;
    sub_10003A6D8(v11);
    v5 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v7);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100003214(v4);
  }

  sub_1000396C8();
  type metadata accessor for ItemsWidgetProvider.Entry(0);
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100030048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = type metadata accessor for WidgetItemEntityQuery(0);
  v4[14] = swift_task_alloc();
  v5 = sub_100001B2C(&qword_10004D860, qword_10003DC10);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for ItemsWidgetProvider.Entry(0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo(0);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_100039888();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = sub_1000397C8();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v9 = sub_10003A4A8();
  v4[31] = v9;
  v4[32] = *(v9 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v10 = sub_1000393C8();
  v4[35] = v10;
  v4[36] = *(v10 - 8);
  v4[37] = swift_task_alloc();
  v11 = sub_100039288();
  v4[38] = v11;
  v4[39] = *(v11 - 8);
  v4[40] = swift_task_alloc();
  v12 = sub_100039338();
  v4[41] = v12;
  v4[42] = *(v12 - 8);
  v4[43] = swift_task_alloc();
  v13 = sub_1000392D8();
  v4[44] = v13;
  v4[45] = *(v13 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = sub_100001B2C(&qword_10004DD08, &qword_10003DFE0);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  sub_100001B2C(&qword_10004DD10, &qword_10003DFE8);
  v4[56] = swift_task_alloc();
  v14 = sub_1000392F8();
  v4[57] = v14;
  v4[58] = *(v14 - 8);
  v4[59] = swift_task_alloc();
  v15 = sub_100039358();
  v4[60] = v15;
  v4[61] = *(v15 - 8);
  v4[62] = swift_task_alloc();
  v16 = sub_1000395D8();
  v4[63] = v16;
  v4[64] = *(v16 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v17 = sub_100039478();
  v4[67] = v17;
  v4[68] = *(v17 - 8);
  v4[69] = swift_task_alloc();
  v18 = sub_100039548();
  v4[70] = v18;
  v4[71] = *(v18 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  sub_100001B2C(&qword_10004DD18, &qword_10003DFF0);
  v4[74] = swift_task_alloc();
  v19 = sub_1000397E8();
  v4[75] = v19;
  v4[76] = *(v19 - 8);
  v4[77] = swift_task_alloc();
  v20 = sub_100039938();
  v4[78] = v20;
  v4[79] = *(v20 - 8);
  v4[80] = swift_task_alloc();
  sub_100001B2C(&qword_10004DD20, &qword_10003DFF8);
  v4[81] = swift_task_alloc();
  v21 = sub_100039918();
  v4[82] = v21;
  v4[83] = *(v21 - 8);
  v4[84] = swift_task_alloc();
  v22 = sub_1000394F8();
  v4[85] = v22;
  v4[86] = *(v22 - 8);
  v4[87] = swift_task_alloc();
  sub_100001B2C(&qword_10004DD28, &qword_10003E000);
  v4[88] = swift_task_alloc();
  v23 = sub_100039B58();
  v4[89] = v23;
  v4[90] = *(v23 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = sub_100001B2C(&qword_10004DD30, &qword_10003E008);
  v4[93] = swift_task_alloc();
  sub_100001B2C(&qword_10004DD38, &unk_10003E010);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v24 = sub_10003A558();
  v4[97] = v24;
  v4[98] = *(v24 - 8);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  sub_100001B2C(&qword_10004DC08, &unk_10003DE80);
  v4[101] = swift_task_alloc();
  v25 = type metadata accessor for WidgetItemEntity(0);
  v4[102] = v25;
  v4[103] = *(v25 - 8);
  v4[104] = swift_task_alloc();

  return _swift_task_switch(sub_100030B24, 0, 0);
}

uint64_t sub_100030B24()
{
  v9 = v0;
  v0[105] = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_logger;

  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8[0] = v4;
    *v3 = 136446210;
    sub_10003A8F8(27);

    v8[1] = 0xD000000000000014;
    v8[2] = 0x800000010003B900;
    v11._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v11);

    v12._countAndFlagsBits = 2108704;
    v12._object = 0xE300000000000000;
    sub_10003A6D8(v12);
    v13._object = 0x800000010003B8E0;
    v13._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v13);
    v5 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, v8);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Start", v3, 0xCu);
    sub_100003214(v4);
  }

  v0[106] = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies;
  v6 = swift_task_alloc();
  v0[107] = v6;
  *v6 = v0;
  v6[1] = sub_100030D54;

  return sub_100002374();
}

uint64_t sub_100030D54(char a1)
{
  *(*v2 + 43) = a1;

  if (v1)
  {
    v3 = sub_100034CF8;
  }

  else
  {
    v3 = sub_100030E68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100030E68()
{
  v165 = v0;

  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 43);
    v4 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *v4 = 136446467;
    sub_10003A8F8(27);

    v163 = 0xD000000000000014;
    v164 = 0x800000010003B900;
    v167._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v167);

    v168._countAndFlagsBits = 2108704;
    v168._object = 0xE300000000000000;
    sub_10003A6D8(v168);
    v169._object = 0x800000010003B8E0;
    v169._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v169);
    v5 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v162);

    *(v4 + 4) = v5;
    *(v4 + 12) = 2081;
    *(v0 + 42) = v3;
    v6 = sub_10003A6B8();
    v8 = sub_10002AF20(v6, v7, &v162);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - AccountInfo %{private}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 43) != 1)
  {
    v29 = *(v0 + 144);
    v30 = *(v0 + 72);
    v31 = sub_10003A588();
    sub_1000396C8();
    if (v31)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }

    *(v30 + *(v29 + 20)) = v32;
LABEL_46:
    type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();

    v107 = *(v0 + 8);

    return v107();
  }

  v9 = *(v0 + 824);
  v10 = *(v0 + 816);
  v11 = *(v0 + 808);
  sub_100038F88();
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    sub_100009B18(*(v0 + 808), &qword_10004DC08, &unk_10003DE80);

    v12 = sub_100039978();
    v13 = sub_10003A868();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 80);
      v15 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v163 = 0;
      *v15 = 136446466;
      v164 = 0xE000000000000000;
      sub_10003A8F8(27);

      v163 = 0xD000000000000014;
      v164 = 0x800000010003B900;
      v170._countAndFlagsBits = sub_10003A618();
      sub_10003A6D8(v170);

      v171._countAndFlagsBits = 2108704;
      v171._object = 0xE300000000000000;
      sub_10003A6D8(v171);
      v172._object = 0x800000010003B8E0;
      v172._countAndFlagsBits = 0xD000000000000011;
      sub_10003A6D8(v172);
      v16 = sub_10002AF20(v163, v164, &v162);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      *(v0 + 48) = v14;

      v17 = sub_10003A6B8();
      v19 = sub_10002AF20(v17, v18, &v162);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - No Entity in configuration: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 112);
    v21 = *(v0 + 96) + *(v0 + 848);
    v22 = (v21 + *(_s12DependenciesVMa_1(0) + 28));
    v24 = *v22;
    v23 = v22[1];

    sub_100039988();
    *v20 = v24;
    v20[1] = v23;
    v25 = swift_task_alloc();
    *(v0 + 968) = v25;
    v26 = sub_100037204(&qword_10004D6D8, type metadata accessor for WidgetItemEntityQuery, &unk_10003D858);
    *v25 = v0;
    v25[1] = sub_100034868;
    v27 = *(v0 + 136);
    v28 = *(v0 + 104);

    return EntityQuery.results()(v27, v28, v26);
  }

  v33 = *(v0 + 800);
  v34 = *(v0 + 784);
  v35 = *(v0 + 776);
  sub_10003724C(*(v0 + 808), *(v0 + 832), type metadata accessor for WidgetItemEntity);
  sub_10003A538();
  *(v0 + 864) = v36;
  *(v0 + 872) = v37;
  sub_10003A568();
  swift_getKeyPath();
  v38 = sub_10003A548();

  v39 = *(v34 + 8);
  v39(v33, v35);
  if (v38)
  {
    if (*(v38 + 16))
    {
      v40 = *(v38 + 32);
    }

    else
    {
      v40 = 1.0;
    }
  }

  else
  {
    v40 = 1.0;
  }

  v41 = *(v0 + 792);
  v42 = *(v0 + 776);
  sub_10003A568();
  swift_getKeyPath();
  v43 = sub_10003A548();

  v39(v41, v42);
  if (v43)
  {
    if (*(v43 + 16))
    {
      (*(*(v0 + 720) + 16))(*(v0 + 768), v43 + ((*(*(v0 + 720) + 80) + 32) & ~*(*(v0 + 720) + 80)), *(v0 + 712));
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 1;
  }

  v45 = *(v0 + 768);
  v46 = *(v0 + 760);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 720);
  v50 = *(v0 + 712);
  v51 = *(v49 + 56);
  v51(v45, v44, 1, v50);
  (*(v49 + 104))(v46, enum case for LayoutDirection.rightToLeft(_:), v50);
  v51(v46, 0, 1, v50);
  v52 = *(v48 + 48);
  sub_100009AB0(v45, v47, &qword_10004DD38, &unk_10003E010);
  sub_100009AB0(v46, v47 + v52, &qword_10004DD38, &unk_10003E010);
  v53 = *(v49 + 48);
  if (v53(v47, 1, v50) == 1)
  {
    v54 = *(v0 + 768);
    v55 = *(v0 + 712);
    sub_100009B18(*(v0 + 760), &qword_10004DD38, &unk_10003E010);
    sub_100009B18(v54, &qword_10004DD38, &unk_10003E010);
    if (v53(v47 + v52, 1, v55) == 1)
    {
      v56 = *(v0 + 744);
      v57 = &qword_10004DD38;
      v58 = &unk_10003E010;
LABEL_32:
      sub_100009B18(v56, v57, v58);
      goto LABEL_34;
    }

LABEL_31:
    v56 = *(v0 + 744);
    v57 = &qword_10004DD30;
    v58 = &qword_10003E008;
    goto LABEL_32;
  }

  v59 = *(v0 + 712);
  sub_100009AB0(*(v0 + 744), *(v0 + 752), &qword_10004DD38, &unk_10003E010);
  v60 = v53(v47 + v52, 1, v59);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  v63 = *(v0 + 752);
  if (v60 == 1)
  {
    v64 = *(v0 + 720);
    v65 = *(v0 + 712);
    sub_100009B18(*(v0 + 760), &qword_10004DD38, &unk_10003E010);
    sub_100009B18(v61, &qword_10004DD38, &unk_10003E010);
    (*(v64 + 8))(v63, v65);
    goto LABEL_31;
  }

  v66 = *(v0 + 744);
  v67 = *(v0 + 728);
  v68 = *(v0 + 720);
  v69 = *(v0 + 712);
  (*(v68 + 32))(v67, v47 + v52, v69);
  sub_100037204(&qword_10004DD58, &type metadata accessor for LayoutDirection, &protocol conformance descriptor for LayoutDirection);
  sub_10003A628();
  v70 = *(v68 + 8);
  v70(v67, v69);
  sub_100009B18(v62, &qword_10004DD38, &unk_10003E010);
  sub_100009B18(v61, &qword_10004DD38, &unk_10003E010);
  v70(v63, v69);
  sub_100009B18(v66, &qword_10004DD38, &unk_10003E010);
LABEL_34:

  v71 = sub_100039978();
  v72 = sub_10003A868();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v162 = v74;
    v163 = 0;
    *v73 = 136446210;
    v164 = 0xE000000000000000;
    sub_10003A8F8(27);

    v163 = 0xD000000000000014;
    v164 = 0x800000010003B900;
    v173._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v173);

    v174._countAndFlagsBits = 2108704;
    v174._object = 0xE300000000000000;
    sub_10003A6D8(v174);
    v175._object = 0x800000010003B8E0;
    v175._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v175);
    v75 = sub_10002AF20(v163, v164, &v162);

    *(v73 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v71, v72, "%{public}s - Will create emoji image", v73, 0xCu);
    sub_100003214(v74);
  }

  v76 = *(v0 + 704);
  v77 = *(v0 + 696);
  v78 = *(v0 + 688);
  v79 = *(v0 + 680);
  sub_100039508();
  sub_1000394E8();
  (*(v78 + 8))(v77, v79);
  v80 = sub_1000394D8();
  v81 = *(v80 - 8);
  v82 = (*(v81 + 48))(v76, 1, v80);
  v83 = *(v0 + 704);
  if (v82 == 1)
  {
    v84 = &qword_10004DD28;
    v85 = &qword_10003E000;
    v86 = *(v0 + 704);
LABEL_42:
    sub_100009B18(v86, v84, v85);
LABEL_43:
    v96 = *(v0 + 832);
    sub_100037330();
    swift_allocError();
    *v97 = 0;
    swift_willThrow();
    sub_1000371A4(v96, type metadata accessor for WidgetItemEntity);

    swift_errorRetain();
    v98 = sub_100039978();
    v99 = sub_10003A868();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v162 = v102;
      v163 = 0;
      *v100 = 136446466;
      v164 = 0xE000000000000000;
      sub_10003A8F8(27);

      v163 = 0xD000000000000014;
      v164 = 0x800000010003B900;
      v176._countAndFlagsBits = sub_10003A618();
      sub_10003A6D8(v176);

      v177._countAndFlagsBits = 2108704;
      v177._object = 0xE300000000000000;
      sub_10003A6D8(v177);
      v178._object = 0x800000010003B8E0;
      v178._countAndFlagsBits = 0xD000000000000011;
      sub_10003A6D8(v178);
      v103 = sub_10002AF20(v163, v164, &v162);

      *(v100 + 4) = v103;
      *(v100 + 12) = 2114;
      swift_errorRetain();
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 14) = v104;
      *v101 = v104;
      _os_log_impl(&_mh_execute_header, v98, v99, "%{public}s - Error %{public}@", v100, 0x16u);
      sub_100009B18(v101, &qword_10004C4D0, &qword_10003E020);

      sub_100003214(v102);
    }

    v105 = *(v0 + 144);
    v106 = *(v0 + 72);
    sub_1000396C8();

    *(v106 + *(v105 + 20)) = 0;
    goto LABEL_46;
  }

  sub_1000394C8();
  (*(v81 + 8))(v83, v80);
  if (qword_10004C350 != -1)
  {
    swift_once();
  }

  v87 = *(v0 + 648);
  v88 = *(v0 + 640);
  v89 = *(v0 + 632);
  v90 = *(v0 + 608);
  v159 = *(v0 + 600);
  v91 = *(v0 + 592);
  v92 = sub_100004618(*(v0 + 624), qword_1000501F0);
  v93 = *(v89 + 16);
  *(v0 + 880) = v93;
  *(v0 + 888) = (v89 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v157 = v92;
  v93(v88);
  sub_10003A288();
  sub_1000398F8();
  v94 = sub_100039908();
  (*(*(v94 - 8) + 56))(v87, 0, 1, v94);
  sub_1000398D8();
  sub_1000398E8();
  sub_1000398A8();

  if ((*(v90 + 48))(v91, 1, v159) == 1)
  {
    v95 = *(v0 + 592);
    (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
    v84 = &qword_10004DD18;
    v85 = &qword_10003DFF0;
    v86 = v95;
    goto LABEL_42;
  }

  v108 = *(v0 + 640);
  v109 = *(v0 + 624);
  (*(*(v0 + 608) + 32))(*(v0 + 616), *(v0 + 592), *(v0 + 600));
  *(v0 + 896) = sub_100037924(0, &qword_10004DD48, UIColor_ptr);
  (v93)(v108, v157, v109);
  v110 = sub_10003A878();
  v111 = [v110 CGColor];

  v112.value = v111;
  v113 = sub_1000397D8(v40, v112);
  *(v0 + 904) = v113;

  if (!v113)
  {
    v125 = *(v0 + 672);
    v126 = *(v0 + 664);
    v127 = *(v0 + 656);
    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
    (*(v126 + 8))(v125, v127);
    goto LABEL_43;
  }

  v114 = *(v0 + 584);
  v115 = *(v0 + 568);
  v116 = *(v0 + 560);
  v117 = *(v0 + 552);
  v118 = *(v0 + 544);
  v155 = *(v0 + 536);
  v156 = *(v0 + 528);
  v119 = *(v0 + 520);
  v120 = *(v0 + 512);
  v158 = *(v0 + 504);
  v160 = v113;
  sub_100039628();
  v154 = sub_100039538();
  *(v0 + 912) = v154;
  v161 = v121;
  *(v0 + 920) = v121;
  (*(v115 + 8))(v114, v116);
  sub_100039488();
  v153 = sub_100039458();
  *(v0 + 44) = v153 & 1;
  (*(v118 + 8))(v117, v155);
  sub_100039608();
  sub_1000395B8();
  sub_100037204(&qword_10004D9E8, &type metadata accessor for ItemModel.Battery, &protocol conformance descriptor for ItemModel.Battery);
  v122 = sub_10003A8A8();
  v123 = *(v120 + 8);
  v123(v119, v158);
  v123(v156, v158);
  if (v122)
  {
    v124 = 1;
  }

  else
  {
    v128 = *(v0 + 528);
    v129 = *(v0 + 520);
    v130 = *(v0 + 504);
    sub_100039608();
    sub_1000395C8();
    v124 = sub_10003A8A8();
    v123(v129, v130);
    v123(v128, v130);
  }

  v131 = v124 & 1;
  *(v0 + 45) = v124 & 1;
  v132 = v160;

  v133 = v132;

  v134 = sub_100039978();
  v135 = sub_10003A868();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v163 = 0;
    *v136 = 136446467;
    v164 = 0xE000000000000000;
    sub_10003A8F8(27);

    v163 = 0xD000000000000014;
    v164 = 0x800000010003B900;
    v179._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v179);

    v180._countAndFlagsBits = 2108704;
    v180._object = 0xE300000000000000;
    sub_10003A6D8(v180);
    v181._object = 0x800000010003B8E0;
    v181._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v181);
    v137 = sub_10002AF20(v163, v164, &v162);

    *(v136 + 4) = v137;
    *(v136 + 12) = 2081;
    *(v0 + 16) = v154;
    *(v0 + 24) = v161;
    *(v0 + 32) = v133;
    *(v0 + 40) = v153 & 1;
    *(v0 + 41) = v131;
    v138 = v133;

    v139 = sub_10003A6B8();
    v141 = sub_10002AF20(v139, v140, &v162);

    *(v136 + 14) = v141;
    _os_log_impl(&_mh_execute_header, v134, v135, "%{public}s - ItemInfo %{private}s", v136, 0x16u);
    swift_arrayDestroy();
  }

  v143 = *(v0 + 464);
  v142 = *(v0 + 472);
  v145 = *(v0 + 448);
  v144 = *(v0 + 456);
  v146 = *(v0 + 96) + *(v0 + 848);
  v147 = _s12DependenciesVMa_1(0);
  (*(v143 + 16))(v142, v146 + *(v147 + 24), v144);
  sub_100039308();
  sub_100039628();
  sub_100039138();
  v148 = sub_100039148();
  (*(*(v148 - 8) + 56))(v145, 0, 1, v148);
  sub_100039318();
  v149 = swift_task_alloc();
  *(v0 + 928) = v149;
  *v149 = v0;
  v149[1] = sub_1000326CC;
  v150 = *(v0 + 432);
  v151 = *(v0 + 384);

  return _s10FindMyCore27GetItemCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(v150, v151);
}

uint64_t sub_1000326CC()
{

  if (v0)
  {
    v1 = sub_1000356B4;
  }

  else
  {
    v1 = sub_1000327DC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000327DC()
{
  v80 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  (*(*(v0 + 336) + 56))(v1, 0, 1, *(v0 + 328));
  sub_100037384(v1, v2);
  sub_100009AB0(v2, v3, &qword_10004DD08, &qword_10003DFE0);

  v4 = sub_100039978();
  v5 = sub_10003A868();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 424);
  if (v6)
  {
    v8 = *(v0 + 416);
    v9 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v9 = 136446467;
    sub_10003A8F8(27);

    v78 = 0xD000000000000014;
    v79 = 0x800000010003B900;
    v82._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v82);

    v83._countAndFlagsBits = 2108704;
    v83._object = 0xE300000000000000;
    sub_10003A6D8(v83);
    v84._object = 0x800000010003B8E0;
    v84._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v84);
    v10 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v77);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2081;
    sub_100009AB0(v7, v8, &qword_10004DD08, &qword_10003DFE0);
    v11 = sub_10003A6B8();
    v13 = v12;
    sub_100009B18(v7, &qword_10004DD08, &qword_10003DFE0);
    v14 = sub_10002AF20(v11, v13, &v77);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - LocationResult %{private}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100009B18(v7, &qword_10004DD08, &qword_10003DFE0);
  }

  v15 = *(v0 + 408);
  v16 = *(v0 + 328);
  v17 = *(v0 + 336);
  sub_100009AB0(*(v0 + 440), v15, &qword_10004DD08, &qword_10003DFE0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v75 = *(v0 + 45);
    v73 = *(v0 + 44);
    v70 = *(v0 + 912);
    v72 = *(v0 + 920);
    v18 = *(v0 + 904);
    v67 = *(v0 + 672);
    v68 = *(v0 + 832);
    v19 = *(v0 + 664);
    v66 = *(v0 + 656);
    v20 = *(v0 + 608);
    v63 = *(v0 + 600);
    v64 = *(v0 + 616);
    v21 = *(v0 + 488);
    v61 = *(v0 + 480);
    v62 = *(v0 + 496);
    v22 = *(v0 + 440);
    v23 = *(v0 + 184);
    v69 = *(v0 + 176);
    v65 = *(v0 + 144);
    v24 = *(v0 + 72);
    sub_100009B18(*(v0 + 408), &qword_10004DD08, &qword_10003DFE0);
    sub_1000396C8();

    sub_100009B18(v22, &qword_10004DD08, &qword_10003DFE0);
    (*(v21 + 8))(v62, v61);
    (*(v20 + 8))(v64, v63);
    (*(v19 + 8))(v67, v66);
    sub_1000371A4(v68, type metadata accessor for WidgetItemEntity);
    v25 = v24 + *(v65 + 20);
    v26 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
    *v25 = v70;
    *(v25 + 8) = v72;
    *(v25 + 16) = v18;
    *(v25 + 24) = v73;
    *(v25 + 25) = v75;
    (*(v23 + 56))(v25 + v26, 1, 1, v69);
    type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 320);
    v30 = *(v0 + 312);
    v71 = *(v0 + 304);
    v76 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 256);
    v33 = *(v0 + 232);
    v34 = *(v0 + 240);
    v74 = *(v0 + 224);
    (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 408), *(v0 + 328));
    sub_100039328();
    sub_100039238();
    (*(v30 + 8))(v29, v71);
    sub_10003A578();
    sub_1000397B8();
    LOBYTE(v77) = 0;
    LOBYTE(v78) = 0;
    sub_1000397A8();
    v36 = v35;
    v38 = v37;
    (*(v33 + 8))(v34, v74);
    (*(v32 + 104))(v76, enum case for WidgetFamily.systemSmall(_:), v31);
    sub_100037204(&qword_10004C888, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_10003A718();
    sub_10003A718();
    v39 = *(v32 + 8);
    *(v0 + 936) = v39;
    *(v0 + 944) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v76, v31);
    v40 = *(v0 + 872);
    if (*(v0 + 56) == *(v0 + 64))
    {
      v41 = 16.0;
      if (v40 >= 170.0)
      {
        v41 = 17.0;
      }

      v42 = v36 * 0.5 + v41;
      v43 = *(v0 + 864);
    }

    else
    {
      v43 = *(v0 + 864);
      v44 = 16.0;
      if (v40 >= 170.0)
      {
        v44 = 17.0;
      }

      v42 = v43 / 3.0 - (v36 * 0.5 + v44);
    }

    sub_1000393A8();
    sub_1000393B8();
    if (qword_10004C338 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 880);
    v46 = *(v0 + 640);
    v47 = *(v0 + 624);
    v48 = sub_100004618(v47, qword_1000501A8);
    v45(v46, v48, v47);
    sub_10003A878();
    if (qword_10004C340 != -1)
    {
      swift_once();
    }

    v49 = 16.0;
    if (v40 >= 170.0)
    {
      v49 = 17.0;
    }

    v50 = v40 * 0.5 - (v38 + v49);
    v51 = *(v0 + 880);
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);
    v54 = sub_100004618(v53, qword_1000501C0);
    v51(v52, v54, v53);
    sub_10003A878();
    sub_100039878();
    v55 = swift_task_alloc();
    *(v0 + 952) = v55;
    *v55 = v0;
    v55[1] = sub_1000332F4;
    v57.n128_u64[0] = *(v0 + 872);
    v58.n128_u64[0] = *(v0 + 864);
    v59 = *(v0 + 216);
    v60.n128_f64[0] = v50;

    v56.n128_f64[0] = v43 * 0.5 - v42;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v59, 0, v56, v60, v58, v57);
  }
}

uint64_t sub_1000332F4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[27];
  v7 = v4[26];
  v8 = v4[25];
  if (v1)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_100033E94;
  }

  else
  {
    v5[120] = a1;
    (*(v7 + 8))(v6, v8);
    v9 = sub_100033498;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100033498()
{
  v65 = v0;
  v1 = *(v0 + 960);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  (*(v0 + 936))(*(v0 + 272), *(v0 + 248));
  (*(v3 + 8))(v2, v4);
  v60 = v1;
  v5 = v1;

  v6 = sub_100039978();
  v7 = sub_10003A868();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v8 = 136446466;
    sub_10003A8F8(27);

    v63 = 0xD000000000000014;
    v64 = 0x800000010003B900;
    v67._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v67);

    v68._countAndFlagsBits = 2108704;
    v68._object = 0xE300000000000000;
    sub_10003A6D8(v68);
    v69._object = 0x800000010003B8E0;
    v69._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v69);
    v11 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v62);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v60;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - MapImage %@", v8, 0x16u);
    sub_100009B18(v9, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v10);
  }

  v54 = *(v0 + 45);
  v52 = *(v0 + 44);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  v15 = *(v0 + 904);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  v56 = *(v0 + 160);
  v20 = *(v0 + 144);
  sub_100039328();
  *(v16 + *(v19 + 20)) = v60;
  sub_1000396C8();
  v21 = v18 + *(v20 + 20);
  v22 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
  *v21 = v14;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v52;
  *(v21 + 25) = v54;
  sub_10003713C(v16, v21 + v22, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
  (*(v17 + 56))(v21 + v22, 0, 1, v19);
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_10003713C(v18, v56, type metadata accessor for ItemsWidgetProvider.Entry);

  v23 = v15;

  v24 = sub_100039978();
  LOBYTE(v21) = sub_10003A868();

  v48 = v21;
  v25 = os_log_type_enabled(v24, v21);
  v50 = *(v0 + 904);
  v26 = *(v0 + 832);
  v27 = *(v0 + 672);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 608);
  v59 = *(v0 + 600);
  v61 = *(v0 + 616);
  v31 = *(v0 + 488);
  v57 = *(v0 + 480);
  v58 = *(v0 + 496);
  v32 = *(v0 + 336);
  v53 = *(v0 + 344);
  v55 = *(v0 + 440);
  v51 = *(v0 + 328);
  v49 = *(v0 + 192);
  v33 = *(v0 + 160);
  if (v25)
  {
    v43 = *(v0 + 152);
    v47 = *(v0 + 672);
    v46 = *(v0 + 656);
    v34 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = 0;
    *v34 = 136446466;
    v44 = v26;
    v45 = v28;
    v64 = 0xE000000000000000;
    sub_10003A8F8(27);

    v63 = 0xD000000000000014;
    v64 = 0x800000010003B900;
    v70._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v70);

    v71._countAndFlagsBits = 2108704;
    v71._object = 0xE300000000000000;
    sub_10003A6D8(v71);
    v72._object = 0x800000010003B8E0;
    v72._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v72);
    v35 = sub_10002AF20(v63, v64, &v62);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    sub_10003713C(v33, v43, type metadata accessor for ItemsWidgetProvider.Entry);
    v36 = sub_10003A6B8();
    v38 = v37;
    sub_1000371A4(v33, type metadata accessor for ItemsWidgetProvider.Entry);
    v39 = sub_10002AF20(v36, v38, &v62);

    *(v34 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v24, v48, "%{public}s - Result Entry %s", v34, 0x16u);
    swift_arrayDestroy();

    sub_1000371A4(v49, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v32 + 8))(v53, v51);
    sub_100009B18(v55, &qword_10004DD08, &qword_10003DFE0);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v61, v59);
    (*(v45 + 8))(v47, v46);
    v40 = v44;
  }

  else
  {

    sub_1000371A4(v33, type metadata accessor for ItemsWidgetProvider.Entry);
    sub_1000371A4(v49, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v32 + 8))(v53, v51);
    sub_100009B18(v55, &qword_10004DD08, &qword_10003DFE0);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v61, v59);
    (*(v28 + 8))(v27, v29);
    v40 = v26;
  }

  sub_1000371A4(v40, type metadata accessor for WidgetItemEntity);
  sub_10003724C(*(v0 + 168), *(v0 + 72), type metadata accessor for ItemsWidgetProvider.Entry);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100033E94()
{
  v61 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  (*(v0 + 936))(*(v0 + 272), *(v0 + 248));
  (*(v2 + 8))(v1, v3);

  v4 = sub_100039978();
  v5 = sub_10003A868();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58 = v8;
    *v6 = 136446466;
    sub_10003A8F8(27);

    v59 = 0xD000000000000014;
    v60 = 0x800000010003B900;
    v63._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v63);

    v64._countAndFlagsBits = 2108704;
    v64._object = 0xE300000000000000;
    sub_10003A6D8(v64);
    v65._object = 0x800000010003B8E0;
    v65._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v65);
    v9 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v58);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2112;
    *(v6 + 14) = 0;
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - MapImage %@", v6, 0x16u);
    sub_100009B18(v7, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v8);
  }

  v53 = *(v0 + 45);
  v51 = *(v0 + 44);
  v10 = *(v0 + 920);
  v49 = *(v0 + 912);
  v11 = *(v0 + 904);
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v55 = *(v0 + 160);
  v16 = *(v0 + 144);
  sub_100039328();
  *(v12 + *(v15 + 20)) = 0;
  sub_1000396C8();
  v17 = v14 + *(v16 + 20);
  v18 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
  *v17 = v49;
  *(v17 + 8) = v10;
  *(v17 + 16) = v11;
  *(v17 + 24) = v51;
  *(v17 + 25) = v53;
  sub_10003713C(v12, v17 + v18, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
  (*(v13 + 56))(v17 + v18, 0, 1, v15);
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();
  sub_10003713C(v14, v55, type metadata accessor for ItemsWidgetProvider.Entry);

  v19 = v11;

  v20 = sub_100039978();
  LOBYTE(v17) = sub_10003A868();

  v44 = v17;
  v21 = os_log_type_enabled(v20, v17);
  v46 = *(v0 + 904);
  v22 = *(v0 + 832);
  v23 = *(v0 + 672);
  v24 = *(v0 + 664);
  v25 = *(v0 + 656);
  v26 = *(v0 + 608);
  v56 = *(v0 + 600);
  v57 = *(v0 + 616);
  v27 = *(v0 + 488);
  v52 = *(v0 + 480);
  v54 = *(v0 + 496);
  v28 = *(v0 + 336);
  v48 = *(v0 + 344);
  v50 = *(v0 + 440);
  v47 = *(v0 + 328);
  v45 = *(v0 + 192);
  v29 = *(v0 + 160);
  if (v21)
  {
    v39 = *(v0 + 152);
    v43 = *(v0 + 672);
    v42 = *(v0 + 656);
    v30 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = 0;
    *v30 = 136446466;
    v40 = v22;
    v41 = v24;
    v60 = 0xE000000000000000;
    sub_10003A8F8(27);

    v59 = 0xD000000000000014;
    v60 = 0x800000010003B900;
    v66._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v66);

    v67._countAndFlagsBits = 2108704;
    v67._object = 0xE300000000000000;
    sub_10003A6D8(v67);
    v68._object = 0x800000010003B8E0;
    v68._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v68);
    v31 = sub_10002AF20(v59, v60, &v58);

    *(v30 + 4) = v31;
    *(v30 + 12) = 2080;
    sub_10003713C(v29, v39, type metadata accessor for ItemsWidgetProvider.Entry);
    v32 = sub_10003A6B8();
    v34 = v33;
    sub_1000371A4(v29, type metadata accessor for ItemsWidgetProvider.Entry);
    v35 = sub_10002AF20(v32, v34, &v58);

    *(v30 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v20, v44, "%{public}s - Result Entry %s", v30, 0x16u);
    swift_arrayDestroy();

    sub_1000371A4(v45, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v28 + 8))(v48, v47);
    sub_100009B18(v50, &qword_10004DD08, &qword_10003DFE0);
    (*(v27 + 8))(v54, v52);
    (*(v26 + 8))(v57, v56);
    (*(v41 + 8))(v43, v42);
    v36 = v40;
  }

  else
  {

    sub_1000371A4(v29, type metadata accessor for ItemsWidgetProvider.Entry);
    sub_1000371A4(v45, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
    (*(v28 + 8))(v48, v47);
    sub_100009B18(v50, &qword_10004DD08, &qword_10003DFE0);
    (*(v27 + 8))(v54, v52);
    (*(v26 + 8))(v57, v56);
    (*(v24 + 8))(v23, v25);
    v36 = v22;
  }

  sub_1000371A4(v36, type metadata accessor for WidgetItemEntity);
  sub_10003724C(*(v0 + 168), *(v0 + 72), type metadata accessor for ItemsWidgetProvider.Entry);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100034868()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  sub_1000371A4(*(v2 + 112), type metadata accessor for WidgetItemEntityQuery);
  if (v0)
  {
    v3 = sub_1000351E4;
  }

  else
  {
    v3 = sub_1000349B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000349B0()
{
  v1 = *(sub_100038FC8() + 16);

  if (v1)
  {
    if (sub_10003A588())
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

  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[9];
  sub_1000396C8();
  (*(v6 + 8))(v3, v5);
  *(v7 + *(v4 + 20)) = v2;
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100034CF8()
{
  v13 = v0;
  sub_1000028D4();
  swift_allocError();

  swift_errorRetain();
  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v3 = 136446466;
    sub_10003A8F8(27);

    v12[1] = 0xD000000000000014;
    v12[2] = 0x800000010003B900;
    v15._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v15);

    v16._countAndFlagsBits = 2108704;
    v16._object = 0xE300000000000000;
    sub_10003A6D8(v16);
    v17._object = 0x800000010003B8E0;
    v17._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v17);
    v6 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, v12);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v7;
    *v4 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Error %{public}@", v3, 0x16u);
    sub_100009B18(v4, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v5);
  }

  v8 = v0[18];
  v9 = v0[9];
  sub_1000396C8();

  *(v9 + *(v8 + 20)) = 0;
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000351E4()
{
  v13 = v0;

  swift_errorRetain();
  v1 = sub_100039978();
  v2 = sub_10003A868();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v3 = 136446466;
    sub_10003A8F8(27);

    v12[1] = 0xD000000000000014;
    v12[2] = 0x800000010003B900;
    v15._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v15);

    v16._countAndFlagsBits = 2108704;
    v16._object = 0xE300000000000000;
    sub_10003A6D8(v16);
    v17._object = 0x800000010003B8E0;
    v17._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v17);
    v6 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, v12);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v7;
    *v4 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Error %{public}@", v3, 0x16u);
    sub_100009B18(v4, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v5);
  }

  v8 = v0[18];
  v9 = v0[9];
  sub_1000396C8();

  *(v9 + *(v8 + 20)) = 0;
  type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000356B4()
{
  v93 = v0;
  v81 = *(v0 + 440);
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v84 = *(v0 + 368);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v3 + 32);
  v7(v1, *(v0 + 384), v4);
  v7(v2, v1, v4);
  (*(v6 + 56))(v81, 1, 1, v5);
  v8 = *(v3 + 16);
  v8(v84, v2, v4);

  v9 = sub_100039978();
  v10 = sub_10003A868();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  if (v11)
  {
    v87 = *(v0 + 376);
    v76 = v8;
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v90 = v82;
    *v16 = 136446466;
    sub_10003A8F8(27);

    v91 = 0xD000000000000014;
    v92 = 0x800000010003B900;
    v95._countAndFlagsBits = sub_10003A618();
    sub_10003A6D8(v95);

    v96._countAndFlagsBits = 2108704;
    v96._object = 0xE300000000000000;
    sub_10003A6D8(v96);
    v97._object = 0x800000010003B8E0;
    v97._countAndFlagsBits = 0xD000000000000011;
    sub_10003A6D8(v97);
    v17 = sub_10002AF20(0xD000000000000014, 0x800000010003B900, &v90);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2114;
    sub_100037204(&qword_10004DD50, &type metadata accessor for GetItemCachedLocationIntent.FetchLocationError, &protocol conformance descriptor for GetItemCachedLocationIntent.FetchLocationError);
    swift_allocError();
    v76(v18, v13, v14);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    v20 = *(v15 + 8);
    v20(v13, v14);
    *(v16 + 14) = v19;
    *v78 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s - LocationResult error: %{public}@", v16, 0x16u);
    sub_100009B18(v78, &qword_10004C4D0, &qword_10003E020);

    sub_100003214(v82);

    v20(v87, v14);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v13, v14);
    v21(v12, v14);
  }

  v22 = *(v0 + 408);
  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  sub_100009AB0(*(v0 + 440), v22, &qword_10004DD08, &qword_10003DFE0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v88 = *(v0 + 45);
    v85 = *(v0 + 44);
    v79 = *(v0 + 912);
    v83 = *(v0 + 920);
    v25 = *(v0 + 904);
    v74 = *(v0 + 672);
    v75 = *(v0 + 832);
    v26 = *(v0 + 664);
    v73 = *(v0 + 656);
    v27 = *(v0 + 608);
    v70 = *(v0 + 600);
    v71 = *(v0 + 616);
    v28 = *(v0 + 488);
    v68 = *(v0 + 480);
    v69 = *(v0 + 496);
    v29 = *(v0 + 440);
    v30 = *(v0 + 184);
    v77 = *(v0 + 176);
    v72 = *(v0 + 144);
    v31 = *(v0 + 72);
    sub_100009B18(*(v0 + 408), &qword_10004DD08, &qword_10003DFE0);
    sub_1000396C8();

    sub_100009B18(v29, &qword_10004DD08, &qword_10003DFE0);
    (*(v28 + 8))(v69, v68);
    (*(v27 + 8))(v71, v70);
    (*(v26 + 8))(v74, v73);
    sub_1000371A4(v75, type metadata accessor for WidgetItemEntity);
    v32 = v31 + *(v72 + 20);
    v33 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
    *v32 = v79;
    *(v32 + 8) = v83;
    *(v32 + 16) = v25;
    *(v32 + 24) = v85;
    *(v32 + 25) = v88;
    (*(v30 + 56))(v32 + v33, 1, 1, v77);
    type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    swift_storeEnumTagMultiPayload();

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 320);
    v37 = *(v0 + 312);
    v80 = *(v0 + 304);
    v89 = *(v0 + 264);
    v38 = *(v0 + 248);
    v39 = *(v0 + 256);
    v40 = *(v0 + 232);
    v41 = *(v0 + 240);
    v86 = *(v0 + 224);
    (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 408), *(v0 + 328));
    sub_100039328();
    sub_100039238();
    (*(v37 + 8))(v36, v80);
    sub_10003A578();
    sub_1000397B8();
    LOBYTE(v90) = 0;
    LOBYTE(v91) = 0;
    sub_1000397A8();
    v43 = v42;
    v45 = v44;
    (*(v40 + 8))(v41, v86);
    (*(v39 + 104))(v89, enum case for WidgetFamily.systemSmall(_:), v38);
    sub_100037204(&qword_10004C888, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_10003A718();
    sub_10003A718();
    v46 = *(v39 + 8);
    *(v0 + 936) = v46;
    *(v0 + 944) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v89, v38);
    v47 = *(v0 + 872);
    if (*(v0 + 56) == *(v0 + 64))
    {
      v48 = 16.0;
      if (v47 >= 170.0)
      {
        v48 = 17.0;
      }

      v49 = v43 * 0.5 + v48;
      v50 = *(v0 + 864);
    }

    else
    {
      v50 = *(v0 + 864);
      v51 = 16.0;
      if (v47 >= 170.0)
      {
        v51 = 17.0;
      }

      v49 = v50 / 3.0 - (v43 * 0.5 + v51);
    }

    sub_1000393A8();
    sub_1000393B8();
    if (qword_10004C338 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 880);
    v53 = *(v0 + 640);
    v54 = *(v0 + 624);
    v55 = sub_100004618(v54, qword_1000501A8);
    v52(v53, v55, v54);
    sub_10003A878();
    if (qword_10004C340 != -1)
    {
      swift_once();
    }

    v56 = 16.0;
    if (v47 >= 170.0)
    {
      v56 = 17.0;
    }

    v57 = v47 * 0.5 - (v45 + v56);
    v58 = *(v0 + 880);
    v59 = *(v0 + 640);
    v60 = *(v0 + 624);
    v61 = sub_100004618(v60, qword_1000501C0);
    v58(v59, v61, v60);
    sub_10003A878();
    sub_100039878();
    v62 = swift_task_alloc();
    *(v0 + 952) = v62;
    *v62 = v0;
    v62[1] = sub_1000332F4;
    v64.n128_u64[0] = *(v0 + 872);
    v65.n128_u64[0] = *(v0 + 864);
    v66 = *(v0 + 216);
    v67.n128_f64[0] = v57;

    v63.n128_f64[0] = v50 * 0.5 - v49;
    return static StaticMapGenerator.generateImage(focusedAnnotation:centerOffset:size:allowPitch:)(v66, 0, v63, v67, v65, v64);
  }
}

uint64_t sub_100036298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_1000396E8();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v7 = sub_10003A518();
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_100001B2C(&qword_10004DCF8, &qword_10003DFB0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = type metadata accessor for ItemsWidgetProvider.Entry(0);
  v3[14] = v8;
  v3[15] = *(v8 - 8);
  v9 = swift_task_alloc();
  v3[16] = v9;
  v10 = swift_task_alloc();
  v3[17] = v10;
  *v10 = v3;
  v10[1] = sub_1000364C8;

  return sub_100030048(v9, a2, a3);
}

uint64_t sub_1000364C8()
{

  return _swift_task_switch(sub_1000365C4, 0, 0);
}

uint64_t sub_1000365C4()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = v0[4];
  sub_10003694C(v1);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    sub_100009B18(v0[12], &qword_10004DCF8, &qword_10003DFB0);
    v5 = 1;
  }

  else
  {
    v6 = v0[12];
    v7 = v0[3];
    v8 = v0[4];
    sub_1000396B8();
    (*(v8 + 8))(v6, v7);
    v5 = 0;
  }

  v9 = v0[13];
  v10 = v0[11];
  v11 = v0[3];
  (*(v0[4] + 56))(v9, v5, 1, v11);
  sub_100009AB0(v9, v10, &qword_10004DCF8, &qword_10003DFB0);
  if (v4(v10, 1, v11) == 1)
  {
    sub_100009B18(v0[11], &qword_10004DCF8, &qword_10003DFB0);
    sub_10003A4F8();
  }

  else
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    (*(v13 + 32))(v12, v0[11], v14);
    sub_10003A4E8();
    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];
  (*(v20 + 32))(v18);
  sub_100001B2C(&qword_10004DD00, &unk_10003DFC0);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10003C0C0;
  sub_10003713C(v16, v23 + v22, type metadata accessor for ItemsWidgetProvider.Entry);
  (*(v20 + 16))(v19, v18, v21);
  sub_100037204(&qword_10004DCF0, type metadata accessor for ItemsWidgetProvider.Entry, &unk_10003DF78);
  sub_10003A5E8();
  (*(v20 + 8))(v18, v21);
  sub_100009B18(v17, &qword_10004DCF8, &qword_10003DFB0);
  sub_1000371A4(v16, type metadata accessor for ItemsWidgetProvider.Entry);

  v24 = v0[1];

  return v24();
}

uint64_t sub_10003694C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100039128();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
  __chkstk_darwin(v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_10003713C(v2, &v21 - v15, type metadata accessor for ItemsWidgetProvider.Entry.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003713C(v16, v13, type metadata accessor for ItemsWidgetProvider.Entry.Content);

    v17 = *(sub_100001B2C(&qword_10004DBD8, &qword_10003DCE8) + 48);
    if ((*(v8 + 48))(v13 + v17, 1, v7) != 1)
    {
      sub_10003724C(v13 + v17, v10, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
      sub_100039278();
      sub_100039118();
      (*(v22 + 8))(v6, v4);
      sub_1000371A4(v10, type metadata accessor for ItemsWidgetProvider.Entry.Content.LocationInfo);
      v18 = 0;
      goto LABEL_6;
    }

    sub_100009B18(v13 + v17, &qword_10004DBD0, &unk_10003DFD0);
  }

  v18 = 1;
LABEL_6:
  v19 = sub_1000396E8();
  (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
  return sub_1000371A4(v16, type metadata accessor for ItemsWidgetProvider.Entry.Content);
}

Swift::Int sub_100036C98()
{
  v1 = *v0;
  sub_10003A9F8();
  sub_10003AA08(v1);
  return sub_10003AA18();
}

Swift::Int sub_100036D0C(uint64_t a1)
{
  v2 = *v1;
  sub_10003A9F8();
  sub_10003AA08(v2);
  return sub_10003AA18();
}

uint64_t sub_100036D50()
{
  sub_1000371A4(v0 + OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_dependencies, _s12DependenciesVMa_1);
  v1 = OBJC_IVAR____TtC17FindMyWidgetItems19ItemsWidgetProvider_logger;
  v2 = sub_100039998();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100036E38(uint64_t a1)
{
  result = _s12DependenciesVMa_1(319);
  if (v2 <= 0x3F)
  {
    result = sub_100039998();
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

uint64_t sub_100036F94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000049F0;

  return sub_100030048(a1, v6, a3);
}

uint64_t sub_100037048(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000049F0;

  return sub_100036298(a1, v6, a3);
}

uint64_t sub_10003713C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000371A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100037204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003724C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100037330()
{
  result = qword_10004DD40;
  if (!qword_10004DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DD40);
  }

  return result;
}

uint64_t sub_100037384(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004DD08, &qword_10003DFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ItemsWidgetProvider.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ItemsWidgetProvider.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100037554(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100037568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1000375B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100037604(uint64_t a1)
{
  sub_100037670(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100037670(uint64_t a1)
{
  if (!qword_10004DDE0)
  {
    sub_100001B74(&qword_10004DBD0, &unk_10003DFD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10004DDE0);
    }
  }
}

uint64_t sub_1000376FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100039288();
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

uint64_t sub_1000377D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100039288();
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

void sub_1000378BC(uint64_t a1)
{
  if (!qword_10004DE78)
  {
    sub_100037924(255, &qword_10004CCE0, UIImage_ptr);
    v1 = sub_10003A888();
    if (!v2)
    {
      atomic_store(v1, &qword_10004DE78);
    }
  }
}

uint64_t sub_100037924(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100037980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000396E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100037A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000396E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ItemsWidgetProvider.Entry.Content(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100037BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

unint64_t sub_100037C40()
{
  result = qword_10004DF38;
  if (!qword_10004DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DF38);
  }

  return result;
}

uint64_t sub_100037CA8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000392F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100037D68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000392F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s12DependenciesVMa_1(uint64_t a1)
{
  result = qword_10004DF98;
  if (!qword_10004DF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037E58(uint64_t a1)
{
  result = sub_10000A1F0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccountStore(319);
    if (v3 <= 0x3F)
    {
      result = sub_1000392F8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100037EFC@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_100039998();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(ACAccountStore) init];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for AccountStore(0);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100039988();
  *(v11 + 112) = &unk_10003DC08;
  *(v11 + 120) = v10;
  v12 = _s12DependenciesVMa_1(0);
  sub_1000392E8();
  sub_100039988();
  v13 = *(v3 + 32);
  v13(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  result = (v13)(v15 + v14, v5, v2);
  *a1 = sub_100038154;
  a1[1] = 0;
  a1[2] = v11;
  v17 = (a1 + *(v12 + 28));
  *v17 = &unk_10003D7E0;
  v17[1] = v15;
  return result;
}

uint64_t sub_100038154()
{
  v3[3] = &type metadata for KoreaFeatureFlag;
  v3[4] = sub_1000381B8();
  v0 = sub_1000390D8();
  sub_100003214(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1000390B8() ^ 1;
  }

  return v1 & 1;
}

unint64_t sub_1000381B8()
{
  result = qword_10004DFD8;
  if (!qword_10004DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004DFD8);
  }

  return result;
}

uint64_t sub_10003820C()
{

  return swift_deallocObject();
}

uint64_t sub_100038244()
{
  v1 = sub_100039998();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_100038300()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10004DFE0 = result;
  return result;
}

uint64_t sub_100038358()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501A8);
  sub_100004618(v0, qword_1000501A8);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_100038400()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501C0);
  sub_100004618(v0, qword_1000501C0);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_1000384A8()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501D8);
  sub_100004618(v0, qword_1000501D8);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_100038550()
{
  v0 = sub_100039938();
  sub_100004650(v0, qword_1000501F0);
  sub_100004618(v0, qword_1000501F0);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039928();
}

uint64_t sub_1000385F8()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050208);
  sub_100004618(v0, qword_100050208);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_1000386A0()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050220);
  sub_100004618(v0, qword_100050220);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_100038748()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050238);
  sub_100004618(v0, qword_100050238);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_1000387F0()
{
  v0 = sub_100039958();
  sub_100004650(v0, qword_100050250);
  sub_100004618(v0, qword_100050250);
  if (qword_10004C330 != -1)
  {
    swift_once();
  }

  v1 = qword_10004DFE0;
  return sub_100039948();
}

uint64_t sub_1000388A0(int a1, int a2, int a3, int a4)
{
  if (qword_100050138 == -1)
  {
    if (qword_100050140)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100038D68();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100050140)
    {
      return _availability_version_check();
    }
  }

  if (qword_100050130 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100038D80();
    a3 = v10;
    a4 = v9;
    v8 = dword_100050120 < v11;
    if (dword_100050120 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100050124 > a3)
      {
        return 1;
      }

      if (dword_100050124 >= a3)
      {
        return dword_100050128 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100050120 < a2;
  if (dword_100050120 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100038A34(uint64_t result)
{
  v1 = qword_100050140;
  if (qword_100050140)
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
      qword_100050140 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100050120, &dword_100050124, &dword_100050128);
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