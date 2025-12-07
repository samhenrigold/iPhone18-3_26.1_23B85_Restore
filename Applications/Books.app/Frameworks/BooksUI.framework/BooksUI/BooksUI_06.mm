uint64_t ToolbarActionMenu.items.getter()
{
  type metadata accessor for ToolbarActionMenu(0);
}

uint64_t (*ToolbarActionMenu.preSelectionActionProvider.getter())()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  if (*v1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_A8F08;
  }

  else
  {
    v5 = 0;
  }

  sub_7BE28(v2, v3);
  return v5;
}

void sub_A8E6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_7BE28(v2, v3);
  sub_7BE38(v5, v6);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_A8ED0()
{

  return swift_deallocObject();
}

void ToolbarActionMenu.preSelectionActionProvider.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_A8FC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (v2 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  sub_7BE38(*v7, v7[1]);
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_A8FC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void (*ToolbarActionMenu.preSelectionActionProvider.modify(uint64_t (***a1)()))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ToolbarActionMenu(0) + 28);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_AF848;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *v4 = v10;
  *(v4 + 8) = v9;
  sub_7BE28(v7, v8);
  return sub_A90D4;
}

void sub_A90D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    v4 = v2[1];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_AF888;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = v2[3];
    v12 = v2[4];
    v14 = (v2[2] + *(v2 + 10));
    sub_7BE28(v3, v4);
    sub_7BE38(v13, v12);
    *v14 = v6;
    v14[1] = v5;
    sub_7BE38(*v2, v2[1]);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    if (v3)
    {
      v9 = v2[1];
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = v9;
      sub_7BE38(v8, v7);
      v11 = sub_AF888;
    }

    else
    {
      sub_7BE38(v2[3], v2[4]);
      v11 = 0;
      v10 = 0;
    }

    v15 = (v2[2] + *(v2 + 10));
    *v15 = v11;
    v15[1] = v10;
  }

  free(v2);
}

uint64_t (*ToolbarActionMenu.postSelectionActionProvider.getter())()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  if (*v1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_AF848;
  }

  else
  {
    v5 = 0;
  }

  sub_7BE28(v2, v3);
  return v5;
}

void sub_A929C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  sub_7BE28(v2, v3);
  sub_7BE38(v5, v6);
  *v4 = v2;
  v4[1] = v3;
}

void ToolbarActionMenu.postSelectionActionProvider.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_AF888;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (v2 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  sub_7BE38(*v7, v7[1]);
  *v7 = v6;
  v7[1] = v5;
}

void (*ToolbarActionMenu.postSelectionActionProvider.modify(uint64_t (***a1)()))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ToolbarActionMenu(0) + 32);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_AF848;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *v4 = v10;
  *(v4 + 8) = v9;
  sub_7BE28(v7, v8);
  return sub_A9464;
}

void sub_A9464(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    v4 = v2[1];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_AF888;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = v2[3];
    v12 = v2[4];
    v14 = (v2[2] + *(v2 + 10));
    sub_7BE28(v3, v4);
    sub_7BE38(v13, v12);
    *v14 = v6;
    v14[1] = v5;
    sub_7BE38(*v2, v2[1]);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    if (v3)
    {
      v9 = v2[1];
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = v9;
      sub_7BE38(v8, v7);
      v11 = sub_AF888;
    }

    else
    {
      sub_7BE38(v2[3], v2[4]);
      v11 = 0;
      v10 = 0;
    }

    v15 = (v2[2] + *(v2 + 10));
    *v15 = v11;
    v15[1] = v10;
  }

  free(v2);
}

uint64_t ToolbarActionMenu.init(id:name:items:preSelectionActionProvider:postSelectionActionProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = type metadata accessor for ToolbarActionMenu(0);
  v17 = (a9 + v16[7]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a9 + v16[8]);
  *v18 = 0;
  v18[1] = 0;
  *a9 = a1;
  a9[1] = a2;
  sub_A96C8(a3, a9 + v16[5]);
  *(a9 + v16[6]) = a4;
  if (!a5)
  {
    *v17 = 0;
    v17[1] = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    result = 0;
    goto LABEL_6;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *v17 = sub_AF888;
  v17[1] = v19;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = swift_allocObject();
  *(result + 16) = a7;
  *(result + 24) = a8;
  v21 = sub_AF888;
LABEL_6:
  *v18 = v21;
  v18[1] = result;
  return result;
}

uint64_t sub_A96C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarActionMenu.contentView.getter()
{
  v1 = type metadata accessor for ToolbarActionMenu(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v8[1] = *(v0 + *(v4 + 32));
  sub_ABA1C(v0, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionMenu);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_AD450(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ToolbarActionMenu);

  sub_2EF0(&qword_31B6D0, &qword_27BBA0);
  sub_2EF0(&qword_31B6D8, &unk_270F10);
  sub_8E38(&qword_31B6E0, &qword_31B6D0, &qword_27BBA0, &protocol conformance descriptor for [A]);
  sub_AAD6C();
  sub_AAF14(&qword_31B718, type metadata accessor for ToolbarActionMenuItem, &protocol conformance descriptor for ToolbarActionMenuItem);
  return sub_2633C0();
}

uint64_t sub_A993C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v132 = a3;
  v133 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  __chkstk_darwin(v133);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = (&v110 - v7);
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v8 - 8);
  v113 = (&v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v119 = &v110 - v11;
  __chkstk_darwin(v12);
  v117 = &v110 - v13;
  __chkstk_darwin(v14);
  v114 = &v110 - v15;
  v127 = sub_260BD0();
  v134 = *(v127 - 8);
  __chkstk_darwin(v127);
  v121 = (&v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  v128 = type metadata accessor for ToolbarActionShareLinkMenuItem(0);
  __chkstk_darwin(v128);
  v20 = (&v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v116 = &v110 - v22;
  v23 = sub_260060();
  v122 = *(v23 - 8);
  v123 = v23;
  __chkstk_darwin(v23);
  v115 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v120 = &v110 - v26;
  v129 = sub_2EF0(&qword_31BB88, &qword_271970);
  __chkstk_darwin(v129);
  v131 = &v110 - v27;
  v124 = sub_2EF0(&qword_31BB90, &qword_271978);
  __chkstk_darwin(v124);
  *(&v125 + 1) = &v110 - v28;
  v130 = sub_2EF0(&qword_31B6F8, &unk_27BB90);
  __chkstk_darwin(v130);
  v126 = &v110 - v29;
  v30 = type metadata accessor for ToolbarActionMenuItem(0);
  __chkstk_darwin(v30);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v125 = type metadata accessor for ToolbarActionToggleMenuItem(0);
  __chkstk_darwin(v125);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v110 - v36;
  v38 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  __chkstk_darwin(v38);
  v40 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA1C(a1 + v30[11], v40, type metadata accessor for ToolbarActionMenuItemButtonType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v122;
      v43 = *(v122 + 32);
      v44 = v120;
      v121 = v20;
      v45 = v123;
      v118 = v43;
      v119 = v122 + 32;
      v43(v120, v40, v123);
      v46 = v30[5];
      v47 = v134;
      v113 = *(v134 + 16);
      v48 = v112;
      v49 = v127;
      v113(v112, a1 + v46, v127);
      v50 = *(v47 + 56);
      v51 = v114;
      v50(v114, 1, 1, v49);
      sub_8198(a1 + v30[7], v140, &qword_31AC00, &qword_270F30);
      v52 = v30[10];
      v53 = *(a1 + v30[9]);
      LODWORD(v117) = *(a1 + v52);
      v54 = *(v42 + 16);
      v55 = v115;
      v56 = v45;
      v57 = v121;
      v54(v115, v44, v56);
      type metadata accessor for ProfileRestrictions(0);
      sub_AAF14(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
      *v57 = sub_261900();
      v57[1] = v58;
      v59 = v128;
      v113(v57 + *(v128 + 20), v48, v49);
      sub_8198(v51, v57 + *(v59 + 24), &qword_316208, &qword_268BD0);
      sub_8198(v140, &v138, &qword_31AC00, &qword_270F30);
      if (BYTE8(v139[1]) == 255)
      {
        v61 = 0x800000000028FD20;
        sub_8E80(v140, &qword_31AC00, &qword_270F30);
        sub_8E80(v51, &qword_316208, &qword_268BD0);
        (*(v134 + 8))(v48, v49);
        if (BYTE8(v139[1]) != 255)
        {
          sub_8E80(&v138, &qword_31AC00, &qword_270F30);
        }

        v63 = 0;
        v60 = 0xD000000000000013;
        v62 = 1;
      }

      else
      {
        sub_8E80(v140, &qword_31AC00, &qword_270F30);
        sub_8E80(v51, &qword_316208, &qword_268BD0);
        (*(v134 + 8))(v48, v49);
        v61 = *(&v138 + 1);
        v60 = v138;
        v62 = v139[0];
        *v142 = *(v139 + 1);
        *&v142[15] = *&v139[1];
        v63 = BYTE8(v139[1]);
      }

      v85 = v128;
      v86 = v57 + *(v128 + 28);
      *v86 = v60;
      *(v86 + 1) = v61;
      v86[16] = v62;
      *(v86 + 17) = *v142;
      *(v86 + 4) = *&v142[15];
      v86[40] = v63;
      *(v57 + v85[8]) = v53;
      *(v57 + v85[9]) = v117;
      v87 = v123;
      v118(v57 + v85[10], v55, v123);
      v88 = v116;
      sub_AD450(v57, v116, type metadata accessor for ToolbarActionShareLinkMenuItem);
      sub_ABA1C(v88, *(&v125 + 1), type metadata accessor for ToolbarActionShareLinkMenuItem);
      swift_storeEnumTagMultiPayload();
      sub_AAF14(&qword_31B700, type metadata accessor for ToolbarActionToggleMenuItem, &protocol conformance descriptor for ToolbarActionToggleMenuItem);
      sub_AAF14(&qword_31B708, type metadata accessor for ToolbarActionShareLinkMenuItem, &protocol conformance descriptor for ToolbarActionShareLinkMenuItem);
      v89 = v126;
      sub_261F80();
      sub_8198(v89, v131, &qword_31B6F8, &unk_27BB90);
      swift_storeEnumTagMultiPayload();
      sub_AAE28();
      sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem, &protocol conformance descriptor for ToolbarActionButtonMenuItem);
      sub_261F80();
      sub_8E80(v89, &qword_31B6F8, &unk_27BB90);
      sub_AD560(v88, type metadata accessor for ToolbarActionShareLinkMenuItem);
      return (*(v122 + 8))(v120, v87);
    }

    else
    {
      v70 = sub_2EF0(&qword_31BB98, &qword_271980);
      v71 = &v40[*(v70 + 48)];
      v73 = *v71;
      v72 = *(v71 + 1);
      *&v125 = v73;
      *(&v125 + 1) = v72;
      v74 = &v40[*(v70 + 64)];
      v75 = v117;
      sub_A96C8(v40, v117);
      v143 = *(v74 + 4);
      v76 = *(v74 + 1);
      *v142 = *v74;
      *&v142[16] = v76;
      v77 = v134;
      v78 = v127;
      (*(v134 + 16))(v121, a1 + v30[5], v127);
      v79 = v30[8];
      LODWORD(v128) = *(a1 + v30[9]);
      LODWORD(v126) = *(a1 + v30[10]);
      sub_AAFC8(a1 + v79, v140);
      sub_F7CC(v140, v141);
      v80 = v113;
      sub_8198(a1 + v30[6], v113, &qword_316208, &qword_268BD0);
      v81 = *(v77 + 48);
      if (v81(v80, 1, v78) == 1)
      {
        sub_8198(v75, v119, &qword_316208, &qword_268BD0);
        v82 = v78;
        if (v81(v80, 1, v78) != 1)
        {
          sub_8E80(v80, &qword_316208, &qword_268BD0);
        }
      }

      else
      {
        v83 = v119;
        (*(v77 + 32))(v119, v80, v78);
        (*(v77 + 56))(v83, 0, 1, v78);
        v82 = v78;
      }

      sub_8198(a1 + v30[7], &v138, &qword_31AC00, &qword_270F30);
      v84 = v134;
      if (BYTE8(v139[1]) == 255)
      {
        if (*(&v125 + 1))
        {
          *v140 = v125;
          v140[16] = 1;
          *&v140[17] = *v137;
          *&v140[32] = *&v137[15];
          v140[40] = 0;
        }

        else
        {
          sub_8198(v142, &v135, &qword_316D40, &unk_268FC0);
          if (v136)
          {
            sub_F7CC(&v135, v140);
            v101 = 2;
          }

          else
          {
            memset(v140, 0, 40);
            v101 = -1;
          }

          v140[40] = v101;
          if (BYTE8(v139[1]) != 255)
          {
            sub_8E80(&v138, &qword_31AC00, &qword_270F30);
          }
        }
      }

      else
      {

        *v140 = v138;
        *&v140[16] = v139[0];
        *&v140[25] = *(v139 + 9);
      }

      type metadata accessor for ProfileRestrictions(0);
      sub_AAF14(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
      *v5 = sub_261900();
      *(v5 + 1) = v102;
      *(v5 + 2) = swift_getKeyPath();
      v5[56] = 0;
      v103 = v133;
      v104 = *(v133 + 24);
      *&v5[v104] = swift_getKeyPath();
      sub_2EF0(&qword_318150, &qword_279A70);
      swift_storeEnumTagMultiPayload();
      v105 = v103[7];
      *&v5[v105] = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      (*(v84 + 32))(&v5[v103[8]], v121, v82);
      v5[v103[9]] = v128;
      v5[v103[10]] = v126;
      sub_F7CC(v141, &v5[v103[11]]);
      sub_A96C8(v119, &v5[v103[12]]);
      v106 = &v5[v103[13]];
      v107 = *&v140[16];
      *v106 = *v140;
      *(v106 + 1) = v107;
      *(v106 + 25) = *&v140[25];
      v108 = v5;
      v109 = v118;
      sub_AD450(v108, v118, type metadata accessor for ToolbarActionButtonMenuItem);
      sub_ABA1C(v109, v131, type metadata accessor for ToolbarActionButtonMenuItem);
      swift_storeEnumTagMultiPayload();
      sub_AAE28();
      sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem, &protocol conformance descriptor for ToolbarActionButtonMenuItem);
      sub_261F80();
      sub_AD560(v109, type metadata accessor for ToolbarActionButtonMenuItem);
      sub_8E80(v142, &qword_316D40, &unk_268FC0);
      return sub_8E80(v75, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    LODWORD(v123) = *v40;
    sub_ABA1C(a1, v32, type metadata accessor for ToolbarActionMenuItem);
    v64 = type metadata accessor for ToolbarActionMenu(0);
    v65 = v111;
    v66 = (v111 + *(v64 + 28));
    v68 = v66[1];
    v134 = *v66;
    v67 = v134;
    if (v134)
    {
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      *(v69 + 24) = v68;
      v121 = sub_AF848;
    }

    else
    {
      v121 = 0;
      v69 = 0;
    }

    v91 = (v65 + *(v64 + 32));
    v93 = *v91;
    v92 = v91[1];
    v127 = v68;
    v122 = v92;
    if (v93)
    {
      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      *(v94 + 24) = v92;
      v95 = sub_AF848;
    }

    else
    {
      v95 = 0;
      v94 = 0;
    }

    *v34 = swift_getKeyPath();
    v34[40] = 0;
    v96 = v125;
    v97 = *(v125 + 20);
    *&v34[v97] = swift_getKeyPath();
    sub_2EF0(&qword_318150, &qword_279A70);
    swift_storeEnumTagMultiPayload();
    sub_AD450(v32, &v34[v96[6]], type metadata accessor for ToolbarActionMenuItem);
    v34[v96[7]] = v123;
    v98 = &v34[v96[8]];
    *v98 = v121;
    v98[1] = v69;
    v99 = &v34[v96[9]];
    *v99 = v95;
    v99[1] = v94;
    sub_AD450(v34, v37, type metadata accessor for ToolbarActionToggleMenuItem);
    sub_ABA1C(v37, *(&v125 + 1), type metadata accessor for ToolbarActionToggleMenuItem);
    swift_storeEnumTagMultiPayload();
    sub_7BE28(v134, v127);
    sub_7BE28(v93, v122);
    sub_AAF14(&qword_31B700, type metadata accessor for ToolbarActionToggleMenuItem, &protocol conformance descriptor for ToolbarActionToggleMenuItem);
    sub_AAF14(&qword_31B708, type metadata accessor for ToolbarActionShareLinkMenuItem, &protocol conformance descriptor for ToolbarActionShareLinkMenuItem);
    v100 = v126;
    sub_261F80();
    sub_8198(v100, v131, &qword_31B6F8, &unk_27BB90);
    swift_storeEnumTagMultiPayload();
    sub_AAE28();
    sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem, &protocol conformance descriptor for ToolbarActionButtonMenuItem);
    sub_261F80();
    sub_8E80(v100, &qword_31B6F8, &unk_27BB90);
    return sub_AD560(v37, type metadata accessor for ToolbarActionToggleMenuItem);
  }
}

uint64_t sub_AAB7C()
{
  v1 = type metadata accessor for ToolbarActionMenu(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[7]))
  {
  }

  if (*(v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_AACEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ToolbarActionMenu(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_A993C(a1, v6, a2);
}

unint64_t sub_AAD6C()
{
  result = qword_31B6E8;
  if (!qword_31B6E8)
  {
    sub_2F9C(&qword_31B6D8, &unk_270F10);
    sub_AAE28();
    sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem, &protocol conformance descriptor for ToolbarActionButtonMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B6E8);
  }

  return result;
}

unint64_t sub_AAE28()
{
  result = qword_31B6F0;
  if (!qword_31B6F0)
  {
    sub_2F9C(&qword_31B6F8, &unk_27BB90);
    sub_AAF14(&qword_31B700, type metadata accessor for ToolbarActionToggleMenuItem, &protocol conformance descriptor for ToolbarActionToggleMenuItem);
    sub_AAF14(&qword_31B708, type metadata accessor for ToolbarActionShareLinkMenuItem, &protocol conformance descriptor for ToolbarActionShareLinkMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B6F0);
  }

  return result;
}

uint64_t sub_AAF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ToolbarActionMenuItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarActionMenuItem(0);
  sub_AAFC8(v1 + *(v3 + 32), v5);
  return sub_F7CC(v5, a1);
}

uint64_t sub_AB024()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736D657469;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_AB0AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_AF0AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_AB0D4(uint64_t a1)
{
  v2 = sub_AB634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AB110(uint64_t a1)
{
  v2 = sub_AB634();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ToolbarActionMenu.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v22 = sub_2EF0(&qword_31B720, &qword_270F20);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = v18 - v7;
  v9 = type metadata accessor for ToolbarActionMenu(0);
  __chkstk_darwin(v9);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2E18(a1, a1[3]);
  sub_AB634();
  v21 = v8;
  sub_265120();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v12 = v20;
    LOBYTE(v23) = 0;
    v13 = v11;
    *v11 = sub_264DC0();
    v11[1] = v14;
    v18[1] = v14;
    sub_260BD0();
    LOBYTE(v23) = 1;
    sub_AAF14(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
    sub_264DB0();
    sub_A96C8(v6, v11 + v9[5]);
    sub_2EF0(&qword_31B6D0, &qword_27BBA0);
    v24 = 2;
    sub_AB688();
    v18[0] = 0;
    sub_264DF0();
    *(v11 + v9[6]) = v23;
    sub_2EF0(&qword_31B740, &qword_270F28);
    v24 = 3;
    sub_8E38(&qword_31B748, &qword_31B740, &qword_270F28, &protocol conformance descriptor for NotDecoded<A>);
    sub_264DF0();
    v15 = (v11 + v9[7]);
    v16 = *(&v23 + 1);
    *v15 = v23;
    v15[1] = v16;
    v24 = 4;
    sub_264DF0();
    v17 = v9[8];
    (*(v12 + 8))(v21, v22);
    *(v13 + v17) = v23;
    sub_ABA1C(v13, v19, type metadata accessor for ToolbarActionMenu);
    sub_3080(a1);
    sub_AD560(v13, type metadata accessor for ToolbarActionMenu);
  }
}

unint64_t sub_AB634()
{
  result = qword_31B728;
  if (!qword_31B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B728);
  }

  return result;
}

unint64_t sub_AB688()
{
  result = qword_31B730;
  if (!qword_31B730)
  {
    sub_2F9C(&qword_31B6D0, &qword_27BBA0);
    sub_AAF14(&qword_31B738, type metadata accessor for ToolbarActionMenuItem, &protocol conformance descriptor for ToolbarActionMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B730);
  }

  return result;
}

uint64_t sub_AB73C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static ToolbarActionMenuItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_264F10();
  }
}

uint64_t ToolbarActionMenuItem.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionMenuItem(0) + 20);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_AB89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarActionMenuItem(0);
  sub_AAFC8(a1 + *(v4 + 32), v6);
  return sub_F7CC(v6, a2);
}

uint64_t ToolbarActionMenuItem.action.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ToolbarActionMenuItem(0) + 32);
  sub_3080((v1 + v3));

  return sub_F7CC(a1, v1 + v3);
}

uint64_t sub_ABA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ToolbarActionMenuItem.init(id:name:subtitle:icon:action:isEnabled:isExplicit:buttonType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = type metadata accessor for ToolbarActionMenuItem(0);
  v16 = v15[5];
  v17 = sub_260BD0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a9[v16], a3, v17);
  sub_8198(a4, &a9[v15[6]], &qword_316208, &qword_268BD0);
  sub_8198(a5, &a9[v15[7]], &qword_31AC00, &qword_270F30);
  v19 = a6[3];
  v20 = a6[4];
  v21 = sub_2E18(a6, v19);
  v22 = &a9[v15[8]];
  v22[3] = v19;
  v22[4] = *(v20 + 8);
  v23 = sub_10934(v22);
  (*(*(v19 - 8) + 16))(v23, v21, v19);
  sub_8E80(a5, &qword_31AC00, &qword_270F30);
  sub_8E80(a4, &qword_316208, &qword_268BD0);
  (*(v18 + 8))(a3, v17);
  a9[v15[9]] = a7;
  a9[v15[10]] = a8;
  sub_AD450(a10, &a9[v15[11]], type metadata accessor for ToolbarActionMenuItemButtonType);

  return sub_3080(a6);
}

uint64_t sub_ABCAC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x63696C7078457369;
  if (v1 != 6)
  {
    v3 = 0x79546E6F74747562;
  }

  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x656C62616E457369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_ABD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_AF25C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_ABDC8(uint64_t a1)
{
  v2 = sub_AD4B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ABE04(uint64_t a1)
{
  v2 = sub_AD4B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ToolbarActionMenuItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  __chkstk_darwin(v25);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_260BD0();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_31B750, &qword_270F38);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ToolbarActionMenuItem(0);
  __chkstk_darwin(v12);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v32 = a1;
  sub_2E18(a1, v15);
  sub_AD4B8();
  v29 = v11;
  v16 = v31;
  sub_265120();
  if (v16)
  {
    sub_3080(v32);
  }

  else
  {
    LOBYTE(v33) = 0;
    *v14 = sub_264DC0();
    v14[1] = v17;
    LOBYTE(v33) = 1;
    sub_AAF14(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
    sub_264DF0();
    (*(v27 + 32))(v14 + v12[5], v9, v7);
    LOBYTE(v33) = 2;
    v31 = v7;
    sub_264DB0();
    sub_A96C8(v6, v14 + v12[6]);
    v35 = 3;
    sub_AD50C();
    sub_264DB0();
    v18 = (v14 + v12[7]);
    v19 = *v34;
    *v18 = v33;
    v18[1] = v19;
    *(v18 + 25) = *&v34[9];
    v35 = 4;
    sub_3FC1C();
    sub_264DF0();
    v20 = v14 + v12[8];
    v21 = *v34;
    *v20 = v33;
    *(v20 + 1) = v21;
    *(v20 + 4) = *&v34[16];
    LOBYTE(v33) = 5;
    *(v14 + v12[9]) = sub_264DD0() & 1;
    LOBYTE(v33) = 6;
    *(v14 + v12[10]) = sub_264DD0() & 1;
    LOBYTE(v33) = 7;
    sub_AAF14(&qword_31B768, type metadata accessor for ToolbarActionMenuItemButtonType, &protocol conformance descriptor for ToolbarActionMenuItemButtonType);
    v22 = v26;
    sub_264DF0();
    (*(v28 + 8))(v29, v30);
    sub_AD450(v22, v14 + v12[11], type metadata accessor for ToolbarActionMenuItemButtonType);
    sub_ABA1C(v14, v24, type metadata accessor for ToolbarActionMenuItem);
    sub_3080(v32);
    sub_AD560(v14, type metadata accessor for ToolbarActionMenuItem);
  }
}

Swift::Int sub_AC568()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_AC5D4(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_AC624(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &_s11descr2FCCF9VMF.Superclass;
  v6._object = v3;
  v5 = sub_264D40(v4, v6);

  *a2 = v5 != 0;
}

void sub_AC6AC(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_3002C0;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_AC704(uint64_t a1)
{
  v2 = sub_AD614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC740(uint64_t a1)
{
  v2 = sub_AD614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_AC77C()
{
  v1 = 0x6B726F7774656ELL;
  if (*v0 != 1)
  {
    v1 = 0x65766F4374616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_AC7DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_AF4F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_AC804(uint64_t a1)
{
  v2 = sub_AD5C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC840(uint64_t a1)
{
  v2 = sub_AD5C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_AC87C(uint64_t a1)
{
  v2 = sub_AD6BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC8B8(uint64_t a1)
{
  v2 = sub_AD6BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_AC8F4(uint64_t a1)
{
  v2 = sub_AD710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC930(uint64_t a1)
{
  v2 = sub_AD710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolbarActionMenuItemIcon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_2EF0(&qword_31B770, &qword_270F40);
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v51 = &v42[-v3];
  v45 = sub_2EF0(&qword_31B778, &qword_270F48);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = &v42[-v4];
  v6 = sub_2EF0(&qword_31B780, &qword_270F50);
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v42[-v7];
  v9 = sub_2EF0(&qword_31B788, &qword_270F58);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42[-v11];
  v13 = a1[3];
  v62 = a1;
  sub_2E18(a1, v13);
  sub_AD5C0();
  v14 = v52;
  sub_265120();
  if (!v14)
  {
    v15 = v51;
    v52 = v10;
    v16 = sub_264E00();
    v17 = (2 * *(v16 + 16)) | 1;
    v57 = v16;
    v58 = v16 + 32;
    v59 = 0;
    v60 = v17;
    v18 = sub_AFAC();
    if (v18 == 3 || v59 != v60 >> 1)
    {
      v22 = sub_264C10();
      swift_allocError();
      v23 = v12;
      v25 = v24;
      sub_2EF0(&qword_315CD0, &qword_266E00);
      *v25 = &type metadata for ToolbarActionMenuItemIcon;
      sub_264D60();
      sub_264BF0();
      (*(*(v22 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v52 + 8))(v23, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v9;
      v43 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          LOBYTE(v53) = 1;
          sub_AD6BC();
          v19 = v5;
          sub_264D50();
          v20 = v52;
          v21 = v50;
          v29 = v45;
          v30 = sub_264DC0();
          v35 = v34;
          v36 = v30;
          (*(v47 + 8))(v19, v29);
          (*(v20 + 8))(v12, v44);
          swift_unknownObjectRelease();
        }

        else
        {
          LOBYTE(v53) = 2;
          sub_AD614();
          sub_264D50();
          v28 = v52;
          v21 = v50;
          sub_AD668();
          v33 = v46;
          sub_264DF0();
          (*(v49 + 8))(v15, v33);
          (*(v28 + 8))(v12, v44);
          swift_unknownObjectRelease();
          v36 = v53;
          v35 = v54;
          v37 = v55;
          v61[0] = *v56;
          *(v61 + 15) = *&v56[15];
        }
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_AD710();
        v27 = v8;
        sub_264D50();
        LOBYTE(v53) = 0;
        v31 = v6;
        v32 = sub_264DC0();
        v39 = v38;
        v40 = v32;
        LOBYTE(v53) = 1;
        v41 = sub_264DD0();
        (*(v48 + 8))(v27, v31);
        (*(v52 + 8))(v12, v44);
        swift_unknownObjectRelease();
        v37 = v41 & 1;
        v36 = v40;
        v21 = v50;
        v35 = v39;
      }

      *v21 = v36;
      *(v21 + 8) = v35;
      *(v21 + 16) = v37;
      *(v21 + 17) = v61[0];
      *(v21 + 32) = *(v61 + 15);
      *(v21 + 40) = v43;
    }
  }

  return sub_3080(v62);
}

unint64_t ToolbarItemType.id.getter()
{
  v1 = type metadata accessor for ToolbarItemType(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA1C(v0, v3, type metadata accessor for ToolbarItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = 0xD000000000000014;
        sub_AD560(v3, type metadata accessor for ToolbarItemType);
      }

      else
      {
        v5 = 0x69576E6F74747562;

        v8 = sub_2EF0(&qword_31B7C8, &qword_270F70);
        v9 = *(v8 + 48);
        v10 = *(v8 + 64);

        sub_3080(&v3[v10]);
        sub_8E80(&v3[v9], &qword_316960, &unk_2689F0);
      }
    }

    else
    {
      sub_AD560(v3, type metadata accessor for ToolbarItemType);
      return 0x4D747865746E6F63;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_AD560(v3, type metadata accessor for ToolbarItemType);
      return 0x70756B636F6CLL;
    }

    else
    {
      sub_3080(v3 + 1);
      return 0xD000000000000016;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = 0x69576E6F74747562;

    v6 = sub_2EF0(&qword_31B7C0, &unk_270F60);
    v7 = *(v6 + 48);
    sub_3080(&v3[*(v6 + 64)]);
    sub_8E80(&v3[v7], &qword_316960, &unk_2689F0);
  }

  else
  {
    v11 = sub_2EF0(&qword_31B7B8, &unk_277F10);
    sub_3080(&v3[*(v11 + 48)]);
    v12 = sub_2610B0();
    (*(*(v12 - 8) + 8))(v3, v12);
    return 0x75426D6574737973;
  }

  return v5;
}

unint64_t sub_AD428@<X0>(unint64_t *a1@<X8>)
{
  result = ToolbarItemType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_AD450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_AD4B8()
{
  result = qword_31B758;
  if (!qword_31B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B758);
  }

  return result;
}

unint64_t sub_AD50C()
{
  result = qword_31B760;
  if (!qword_31B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B760);
  }

  return result;
}

uint64_t sub_AD560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_AD5C0()
{
  result = qword_31B790;
  if (!qword_31B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B790);
  }

  return result;
}

unint64_t sub_AD614()
{
  result = qword_31B798;
  if (!qword_31B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B798);
  }

  return result;
}

unint64_t sub_AD668()
{
  result = qword_31B7A0;
  if (!qword_31B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B7A0);
  }

  return result;
}

unint64_t sub_AD6BC()
{
  result = qword_31B7A8;
  if (!qword_31B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B7A8);
  }

  return result;
}

unint64_t sub_AD710()
{
  result = qword_31B7B0;
  if (!qword_31B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B7B0);
  }

  return result;
}

unint64_t sub_AD784(uint64_t a1)
{
  result = sub_AD50C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_AD7AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return sub_7BE28(v4, v5);
}

uint64_t sub_AD7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return sub_7BE28(v4, v5);
}

double sub_AD850(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for ToolbarActionMenuItem(0) + 32));

  return sub_AF618(v3, a1);
}

uint64_t sub_AD8AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316208, &qword_268BD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_AD97C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_316208, &qword_268BD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_ADA2C(uint64_t a1)
{
  sub_ADB38(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_ADB38(319, &qword_31B838, type metadata accessor for ToolbarActionMenuItem, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_ADB9C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_ADB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_ADB9C(uint64_t a1)
{
  if (!qword_31B840)
  {
    v2 = sub_2F9C(&unk_31B848, &qword_271148);
    v5 = type metadata accessor for NotDecoded(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_31B840);
    }
  }
}

uint64_t sub_ADC14(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_260BD0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_ADDA0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_260BD0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_ADF18(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_ADB38(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_AE020();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ToolbarActionMenuItemButtonType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_AE020()
{
  if (!qword_31B8F0)
  {
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31B8F0);
    }
  }
}

void sub_AE070(uint64_t a1)
{
  sub_AE0F8();
  if (v1 <= 0x3F)
  {
    sub_AE128();
    if (v2 <= 0x3F)
    {
      sub_AE170(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_AE0F8()
{
  result = qword_31B9B8;
  if (!qword_31B9B8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_31B9B8);
  }

  return result;
}

void sub_AE128()
{
  if (!qword_31B9C0)
  {
    v0 = sub_260060();
    if (!v1)
    {
      atomic_store(v0, &qword_31B9C0);
    }
  }
}

void sub_AE170(uint64_t a1)
{
  if (!qword_31B9C8)
  {
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    sub_2F9C(&qword_316D40, &unk_268FC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_31B9C8);
    }
  }
}

uint64_t sub_AE22C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AE268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_AE2B4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

void sub_AE2F4(uint64_t a1)
{
  sub_AE3FC(319, &qword_31BA78, &type metadata for SymbolImage.Kind, "menuIconKind menus ");
  if (v1 <= 0x3F)
  {
    sub_AE3FC(319, &qword_31BA88, &type metadata for String, "title menus ");
    if (v2 <= 0x3F)
    {
      sub_AE474(319);
      if (v3 <= 0x3F)
      {
        sub_AE5C0(319);
        if (v4 <= 0x3F)
        {
          sub_AE654(319);
          if (v5 <= 0x3F)
          {
            sub_AE6D4(319);
            if (v6 <= 0x3F)
            {
              sub_AE7DC(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_AE3FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2F9C(&qword_31BA80, &unk_277F20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_AE474(uint64_t a1)
{
  if (!qword_31BA90)
  {
    __chkstk_darwin(a1);
    sub_2F9C(&qword_316960, &unk_2689F0);
    sub_2F9C(&qword_316A30, &qword_2697B0);
    sub_2F9C(&qword_31BA98, &qword_271268);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31BA90);
    }
  }
}

void sub_AE5C0(uint64_t a1)
{
  if (!qword_31BAA0)
  {
    sub_2F9C(&qword_316960, &unk_2689F0);
    sub_2F9C(&qword_316A30, &qword_2697B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_31BAA0);
    }
  }
}

void sub_AE654(uint64_t a1)
{
  if (!qword_31BAA8)
  {
    sub_2610B0();
    sub_2F9C(&qword_316A30, &qword_2697B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_31BAA8);
    }
  }
}

void sub_AE6D4(uint64_t a1)
{
  if (!qword_31BAB0)
  {
    __chkstk_darwin(a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31BAB0);
    }
  }
}

void sub_AE7DC(uint64_t a1)
{
  if (!qword_31BAB8)
  {
    sub_2F9C(&qword_316A30, &qword_2697B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_31BAB8);
    }
  }
}

unint64_t sub_AE858()
{
  result = qword_31BAE8;
  if (!qword_31BAE8)
  {
    sub_2F9C(&qword_31BAF0, &qword_271290);
    sub_AAD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BAE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImage.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolImage.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_AEA80()
{
  result = qword_31BAF8;
  if (!qword_31BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BAF8);
  }

  return result;
}

unint64_t sub_AEAD8()
{
  result = qword_31BB00;
  if (!qword_31BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB00);
  }

  return result;
}

unint64_t sub_AEB30()
{
  result = qword_31BB08;
  if (!qword_31BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB08);
  }

  return result;
}

unint64_t sub_AEB88()
{
  result = qword_31BB10;
  if (!qword_31BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB10);
  }

  return result;
}

unint64_t sub_AEBE0()
{
  result = qword_31BB18;
  if (!qword_31BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB18);
  }

  return result;
}

unint64_t sub_AEC38()
{
  result = qword_31BB20;
  if (!qword_31BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB20);
  }

  return result;
}

unint64_t sub_AEC90()
{
  result = qword_31BB28;
  if (!qword_31BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB28);
  }

  return result;
}

unint64_t sub_AECE8()
{
  result = qword_31BB30;
  if (!qword_31BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB30);
  }

  return result;
}

unint64_t sub_AED40()
{
  result = qword_31BB38;
  if (!qword_31BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB38);
  }

  return result;
}

unint64_t sub_AED98()
{
  result = qword_31BB40;
  if (!qword_31BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB40);
  }

  return result;
}

unint64_t sub_AEDF0()
{
  result = qword_31BB48;
  if (!qword_31BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB48);
  }

  return result;
}

unint64_t sub_AEE48()
{
  result = qword_31BB50;
  if (!qword_31BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB50);
  }

  return result;
}

unint64_t sub_AEEA0()
{
  result = qword_31BB58;
  if (!qword_31BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB58);
  }

  return result;
}

unint64_t sub_AEEF8()
{
  result = qword_31BB60;
  if (!qword_31BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB60);
  }

  return result;
}

unint64_t sub_AEF50()
{
  result = qword_31BB68;
  if (!qword_31BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB68);
  }

  return result;
}

unint64_t sub_AEFA8()
{
  result = qword_31BB70;
  if (!qword_31BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB70);
  }

  return result;
}

unint64_t sub_AF000()
{
  result = qword_31BB78;
  if (!qword_31BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB78);
  }

  return result;
}

unint64_t sub_AF058()
{
  result = qword_31BB80;
  if (!qword_31BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB80);
  }

  return result;
}

uint64_t sub_AF0AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000002918A0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000002918C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_AF25C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79546E6F74747562 && a2 == 0xEA00000000006570)
  {

    return 7;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_AF4F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65766F4374616C66 && a2 == 0xE900000000000072)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

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

double sub_AF618(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

uint64_t sub_AF8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[1] = a11;
  v22[2] = a10;
  v14 = sub_263FA0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v19 = a6;
  }

  else
  {
    v19 = a5;
  }

  (*(v15 + 16))(v18, v19, v14, v16);
  v20 = sub_264210();
  (*(v15 + 8))(v18, v14);
  return v20;
}

unsigned __int8 *Color.init(hexString:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_262F00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_264510();
  if (result != &dword_4 + 2)
  {
    result = sub_264510();
    if (result != &dword_8)
    {
      goto LABEL_89;
    }
  }

  v9 = HIBYTE(a2) & 0xF;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : a1 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_89;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    sub_B00D0(a1, a2, 16);
    v13 = v32;
    v34 = v33;

    if (v34)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_264C20();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          if (result)
          {
            v13 = 0;
            v21 = result + 1;
            while (1)
            {
              v22 = *v21;
              v23 = v22 - 48;
              if ((v22 - 48) >= 0xA)
              {
                if ((v22 - 65) < 6)
                {
                  v23 = v22 - 55;
                }

                else
                {
                  if ((v22 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v23 = v22 - 87;
                }
              }

              if (v13 >> 60)
              {
                goto LABEL_87;
              }

              v13 = 16 * v13 + v23;
              ++v21;
              if (!--v9)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_76;
        }

        goto LABEL_87;
      }

      goto LABEL_111;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        if (result)
        {
          v13 = 0;
          while (1)
          {
            v27 = *result;
            v28 = v27 - 48;
            if ((v27 - 48) >= 0xA)
            {
              if ((v27 - 65) < 6)
              {
                v28 = v27 - 55;
              }

              else
              {
                if ((v27 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v28 = v27 - 87;
              }
            }

            if (v13 >> 60)
            {
              goto LABEL_87;
            }

            v13 = 16 * v13 + v28;
            ++result;
            if (!--v10)
            {
              LOBYTE(v9) = 0;
              goto LABEL_88;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_87:
      v13 = 0;
      LOBYTE(v9) = 1;
LABEL_88:
      v43 = v9;
      if (v9)
      {
LABEL_89:

        return 0;
      }

LABEL_91:
      v35 = sub_264510();

      v36 = v13 >> 8;
      if (v35 == 8)
      {
        v37 = v13 / 255.0;
      }

      else
      {
        v37 = 1.0;
      }

      if (v35 != 8)
      {
        LODWORD(v36) = v13;
      }

      if (BYTE2(v36) / 255.0 <= 1.0 && BYTE1(v36) / 255.0 <= 1.0 && v36 / 255.0 <= 1.0 && v37 <= 1.0)
      {
        (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
        return sub_263060();
      }

      return 0;
    }

    if (v10 >= 1)
    {
      v9 = v10 - 1;
      if (v10 != 1)
      {
        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            v16 = v15 - 48;
            if ((v15 - 48) >= 0xA)
            {
              if ((v15 - 65) < 6)
              {
                v16 = v15 - 55;
              }

              else
              {
                if ((v15 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v16 = v15 - 87;
              }
            }

            if (v13 >> 60)
            {
              goto LABEL_87;
            }

            v17 = 16 * v13 >= v16;
            v13 = 16 * v13 - v16;
            if (!v17)
            {
              goto LABEL_87;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_76:
        v13 = 0;
        LOBYTE(v9) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v42[0] = a1;
  v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v9)
      {
        v13 = 0;
        v29 = v42;
        while (1)
        {
          v30 = *v29;
          v31 = v30 - 48;
          if ((v30 - 48) >= 0xA)
          {
            if ((v30 - 65) < 6)
            {
              v31 = v30 - 55;
            }

            else
            {
              if ((v30 - 97) > 5)
              {
                goto LABEL_87;
              }

              v31 = v30 - 87;
            }
          }

          if (v13 >> 60)
          {
            break;
          }

          v13 = 16 * v13 + v31;
          ++v29;
          if (!--v9)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v9)
    {
      if (--v9)
      {
        v13 = 0;
        v18 = v42 + 1;
        while (1)
        {
          v19 = *v18;
          v20 = v19 - 48;
          if ((v19 - 48) >= 0xA)
          {
            if ((v19 - 65) < 6)
            {
              v20 = v19 - 55;
            }

            else
            {
              if ((v19 - 97) > 5)
              {
                goto LABEL_87;
              }

              v20 = v19 - 87;
            }
          }

          if (v13 >> 60)
          {
            break;
          }

          v17 = 16 * v13 >= v20;
          v13 = 16 * v13 - v20;
          if (!v17)
          {
            break;
          }

          ++v18;
          if (!--v9)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_110;
  }

  if (v9)
  {
    if (--v9)
    {
      v13 = 0;
      v24 = v42 + 1;
      while (1)
      {
        v25 = *v24;
        v26 = v25 - 48;
        if ((v25 - 48) >= 0xA)
        {
          if ((v25 - 65) < 6)
          {
            v26 = v25 - 55;
          }

          else
          {
            if ((v25 - 97) > 5)
            {
              goto LABEL_87;
            }

            v26 = v25 - 87;
          }
        }

        if (v13 >> 60)
        {
          break;
        }

        v13 = 16 * v13 + v26;
        ++v24;
        if (!--v9)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_112:
  __break(1u);
  return result;
}

BOOL Color.isDarkBackground.getter(uint64_t a1)
{
  v2.f64[1] = Color.rgbaComponents.getter(a1);
  v3 = vmulq_f64(v2, vdupq_n_s64(0x406FE00000000000uLL));
  v4 = vmulq_f64(v3, vmulq_f64(v3, xmmword_26BA40));
  return sqrt(v4.f64[0] + v4.f64[1] + v1 * 255.0 * (v1 * 255.0 * 0.587)) < 205.0;
}

double Color.rgbaComponents.getter(uint64_t a1)
{
  v6 = 0;
  v7 = 0.0;
  v4 = 0;
  v5 = 0;
  sub_B0654();

  v1 = sub_2649F0();
  v2 = [v1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];

  result = 0.0;
  if (v2)
  {
    return v7;
  }

  return result;
}

double Color.luminance.getter(uint64_t a1)
{
  v2.f64[1] = Color.rgbaComponents.getter(a1);
  v3 = vmulq_f64(v2, vdupq_n_s64(0x406FE00000000000uLL));
  v4 = vmulq_f64(v3, vmulq_f64(v3, xmmword_26BA40));
  return sqrt(v4.f64[0] + v4.f64[1] + v1 * 255.0 * (v1 * 255.0 * 0.587));
}

void sub_B00D0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_2645C0();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25F304(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_264C20();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
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

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
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

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

unint64_t sub_B0654()
{
  result = qword_31BBA0;
  if (!qword_31BBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31BBA0);
  }

  return result;
}

void VerticalMasonryCoverGridViewModel.init(assets:gridWidth:gridStyle:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_2623D0();
  __chkstk_darwin(v8 - 8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_262430();
  v10 = *(v48 - 8);
  __chkstk_darwin(v48);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a1 + 16);
  if (v14 >= 0x16E)
  {
    sub_C89EC(a1, a1 + 32, 0, 0x2DBuLL);
    v16 = v15;

    v14 = *(v16 + 16);
    a1 = v16;
  }

  __dst[0] = v13;
  sub_BDC14(v14, __dst);
  v18 = v17;
  v19 = sub_BDCD8(a1, v17, a4);

  sub_BDE88(v19, v18);
  v21 = v20;

  sub_BD99C(v22);
  v24 = v23;

  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v49 = v25;
    v44 = v21;
    v45 = v13;
    v46 = a3;
    v63 = _swiftEmptyArrayStorage;
    sub_2DB04(0, v26, 0);
    v27 = v63;
    v47 = v10 + 32;
    v28 = v26 - 1;
    for (i = 32; ; i += 128)
    {
      v30 = *(v49 + i);
      v31 = *(v49 + i + 16);
      v32 = *(v49 + i + 48);
      v56 = *(v49 + i + 32);
      v57 = v32;
      v54 = v30;
      v55 = v31;
      v33 = *(v49 + i + 64);
      v34 = *(v49 + i + 80);
      v35 = *(v49 + i + 112);
      v60 = *(v49 + i + 96);
      v61 = v35;
      v58 = v33;
      v59 = v34;
      memmove(__dst, (v49 + i), 0x80uLL);
      v36 = sub_2F8B8(__dst);
      v37 = sub_2F950(__dst);
      if (!v36)
      {
        if (*(v37 + 64))
        {
          sub_5757C(&v54, v53);
        }

        else
        {
          sub_5757C(&v54, v53);
        }
      }

      sub_261DB0();
      sub_2623E0();
      v53[4] = v58;
      v53[5] = v59;
      v53[6] = v60;
      v53[7] = v61;
      v53[0] = v54;
      v53[1] = v55;
      v53[2] = v56;
      v53[3] = v57;
      v38 = sub_2F8B8(v53);
      v39 = sub_2F950(v53);
      if (v38 || !*(v39 + 64))
      {
        v40 = 0;
        v41 = 0xE000000000000000;
      }

      else
      {
        v40 = *(v39 + 72);
      }

      v51 = v40;
      v52 = v41;
      sub_10A84();
      sub_2628F0();
      sub_262440();
      sub_2F8C4(&v54);
      v63 = v27;
      v43 = v27[2];
      v42 = v27[3];
      if (v43 >= v42 >> 1)
      {
        sub_2DB04((v42 > 1), v43 + 1, 1);
        v27 = v63;
      }

      v27[2] = v43 + 1;
      (*(v10 + 32))(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v43, v12, v48);
      if (!v28)
      {
        break;
      }

      --v28;
    }

    a3 = v46;
    LOBYTE(v13) = v45;
    v21 = v44;
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  *a3 = v21;
  *(a3 + 8) = v27;
  *(a3 + 16) = v13;
}

uint64_t sub_B0B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v74 = sub_260290();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v52 - v5;
  v66 = sub_264410();
  v75 = *(v66 - 8);
  __chkstk_darwin(v66);
  v71 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v52 - v8;
  v60 = sub_262370();
  v9 = *(v60 - 1);
  __chkstk_darwin(v60);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2EF0(&qword_31BE88, &qword_271F90);
  __chkstk_darwin(v72);
  v13 = &v52 - v12;
  v14 = sub_2EF0(&qword_31BE90, &qword_271F98);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  __chkstk_darwin(v14);
  v58 = &v52 - v16;
  v67 = sub_2EF0(&qword_31BE98, &qword_271FA0);
  __chkstk_darwin(v67);
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v52 - v19;
  v21 = *v2;
  v20 = v2[1];
  v22 = *(v2 + 16);
  *v13 = sub_261D10();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_2EF0(&qword_31BEA0, &unk_271FA8);
  v23 = *(v21 + 16);
  v79 = 0;
  v80 = v23;
  swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  v61 = v20;
  *(v24 + 32) = v22;

  sub_2EF0(&qword_31BEA8, &qword_271FD0);
  sub_2EF0(&qword_31BEB0, &qword_271FD8);
  sub_C092C();
  sub_C0A0C();
  sub_2633B0();
  sub_262350();
  v52 = sub_8E38(&qword_31BEE0, &qword_31BE88, &qword_271F90, &protocol conformance descriptor for HStack<A>);
  sub_262C70();
  (*(v9 + 8))(v11, v60);
  sub_8E80(v13, &qword_31BE88, &qword_271F90);
  v25 = v62;
  sub_2643A0();
  v26 = v65;
  sub_260260();
  v27 = v75;
  v28 = *(v75 + 16);
  v59 = v75 + 16;
  v60 = v28;
  v29 = v66;
  v28(v71, v25, v66);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = ObjCClassFromMetadata;
  v56 = objc_opt_self();
  v31 = [v56 bundleForClass:ObjCClassFromMetadata];
  v32 = v76;
  v55 = *(v76 + 16);
  v33 = v74;
  v55(v73, v26, v74);
  v34 = sub_264490();
  v36 = v35;
  v37 = *(v32 + 8);
  v76 = v32 + 8;
  v54 = v37;
  v37(v26, v33);
  v38 = *(v27 + 8);
  v75 = v27 + 8;
  v53 = v38;
  v39 = v25;
  v38(v25, v29);
  v79 = v34;
  v80 = v36;
  v77 = v72;
  v78 = v52;
  swift_getOpaqueTypeConformance2();
  v72 = sub_10A84();
  v40 = v63;
  v41 = v68;
  v42 = v58;
  sub_262C00();

  (*(v69 + 8))(v42, v41);
  v43 = v64;
  sub_2616E0();
  sub_8E80(v40, &qword_31BE98, &qword_271FA0);
  sub_2643A0();
  v44 = v26;
  sub_260260();
  v45 = v29;
  v60(v71, v39, v29);
  v46 = [v56 bundleForClass:v57];
  v47 = v74;
  v55(v73, v26, v74);
  v48 = sub_264490();
  v50 = v49;
  v54(v44, v47);
  v53(v39, v45);
  v79 = v48;
  v80 = v50;
  sub_2616F0();

  return sub_8E80(v43, &qword_31BE98, &qword_271FA0);
}

uint64_t sub_B138C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2EF0(&qword_31BED8, &qword_271FE0);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = *a1;
  *v8 = sub_261E50();
  *(v8 + 1) = 0;
  v8[16] = 0;
  result = sub_2EF0(&qword_31BEE8, &qword_271FE8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(a2 + 16))
  {
    *&v15[0] = *(a2 + 8 * v9 + 32);
    swift_getKeyPath();

    sub_2EF0(&qword_31BEF0, &unk_289190);
    sub_2EF0(&qword_31BEF8, &qword_272020);
    sub_8E38(&qword_31BF00, &qword_31BEF0, &unk_289190, &protocol conformance descriptor for [A]);
    sub_C0AC8();
    sub_2633B0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_261830();
    sub_22148(v8, a3, &qword_31BED8, &qword_271FE0);
    result = sub_2EF0(&qword_31BEB0, &qword_271FD8);
    v11 = (a3 + *(result + 36));
    v12 = v15[5];
    v11[4] = v15[4];
    v11[5] = v12;
    v11[6] = v15[6];
    v13 = v15[1];
    *v11 = v15[0];
    v11[1] = v13;
    v14 = v15[3];
    v11[2] = v15[2];
    v11[3] = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_B15D4@<X0>(_OWORD *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[5];
  v12[4] = a1[4];
  v12[5] = v3;
  v4 = a1[7];
  v12[6] = a1[6];
  v12[7] = v4;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a1[3];
  v12[2] = a1[2];
  v12[3] = v6;
  v7 = sub_2F8B8(v12);
  v8 = sub_2F950(v12);
  if (v7)
  {
    v9 = v7 == 1;
    if (v7 == 1)
    {
      v10 = 0xD00000000000001BLL;
    }

    else
    {
      v10 = 0xD000000000000016;
    }

    if (v9)
    {
      result = 0x8000000000291580;
    }

    else
    {
      result = 0x8000000000291560;
    }
  }

  else
  {
    v10 = *v8;
  }

  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t sub_B1684@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = sub_261E20();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoverView(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2EF0(&qword_31BF28, &qword_272030);
  __chkstk_darwin(v56);
  v10 = &v55 - v9;
  v11 = sub_2EF0(&qword_31BF18, &qword_272028);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = a1[5];
  v65 = a1[4];
  v66 = v14;
  v15 = a1[7];
  v67 = a1[6];
  v68 = v15;
  v16 = a1[1];
  v61 = *a1;
  v62 = v16;
  v17 = a1[3];
  v63 = a1[2];
  v64 = v17;
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  *(v8 + 6) = swift_getKeyPath();
  v8[56] = 0;
  v18 = v6[8];
  *&v8[v18] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v19 = v6[9];
  *&v8[v19] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v20 = &v8[v6[10]];
  sub_5757C(&v61, v69);
  type metadata accessor for ProfileRestrictions(0);
  sub_C26FC(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v20 = sub_261900();
  v20[1] = v21;
  v22 = &v8[v6[11]];
  v60 = 1;
  sub_2631D0();
  v23 = *(&v69[0] + 1);
  *v22 = v69[0];
  *(v22 + 1) = v23;
  v24 = &v8[v6[12]];
  v25 = v66;
  v26 = v65;
  v27 = v66;
  *(v24 + 4) = v65;
  *(v24 + 5) = v25;
  v28 = v68;
  v29 = v67;
  v30 = v68;
  *(v24 + 6) = v67;
  *(v24 + 7) = v28;
  v31 = v62;
  v32 = v61;
  v33 = v62;
  *v24 = v61;
  *(v24 + 1) = v31;
  v34 = v64;
  v35 = v63;
  v36 = v64;
  *(v24 + 2) = v63;
  *(v24 + 3) = v34;
  v37 = v6[13];
  v69[4] = v26;
  v69[5] = v27;
  v69[6] = v29;
  v69[7] = v30;
  v69[2] = v35;
  v69[3] = v36;
  v8[v37] = 0;
  v69[0] = v32;
  v69[1] = v33;
  v38 = sub_2F8B8(v69);
  v39 = sub_2F950(v69);
  if (v38)
  {
    if (v38 == 1)
    {
      v40 = 0x3FF0000000000000;
    }

    else
    {
      v40 = 0x3FE4834834834834;
    }
  }

  else
  {
    v40 = *(v39 + 16);
  }

  v41 = v59;
  v42 = v57;
  sub_BE320(v8, v10, type metadata accessor for CoverView);
  v43 = &v10[*(v56 + 36)];
  *v43 = v40;
  *(v43 + 4) = 0;
  v44 = sub_262500();
  sub_2610C0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_22148(v10, v13, &qword_31BF28, &qword_272030);
  v53 = &v13[*(v11 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_261E10();
  sub_C0B84();
  sub_262D40();
  (*(v42 + 8))(v4, v41);
  return sub_8E80(v13, &qword_31BF18, &qword_272028);
}

void SharableAssetViewModel.init(assets:localizedYear:layoutStyle:lowAssetCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a3;
  v10 = *a4;
  v11 = *(a4 + 16);
  v51 = v11;
  v30 = v10;
  if (a5)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v50 = _swiftEmptyArrayStorage;
      sub_2DAC4(0, v12, 0);
      v13 = _swiftEmptyArrayStorage;
      v14 = a1 + 32;
      for (i = v12 - 1; ; --i)
      {
        sub_30CC(v14, &v31);
        sub_30CC(&v31, v39);
        CoverViewModel.CoverImageInfo.init(assetInfo:)(v39, v40);
        sub_3080(&v31);
        v46 = v40[4];
        v47 = v40[5];
        v48 = v40[6];
        v42 = v40[0];
        v43 = v40[1];
        v44 = v40[2];
        v45 = v40[3];
        *&v49 = v41;
        *(&v49 + 1) = 0x4072C00000000000;
        sub_230A8(&v42);
        v50 = v13;
        v17 = v13[2];
        v16 = v13[3];
        if (v17 >= v16 >> 1)
        {
          sub_2DAC4((v16 > 1), v17 + 1, 1);
          v13 = v50;
        }

        v35 = v46;
        v36 = v47;
        v37 = v48;
        v38 = v49;
        v33 = v44;
        v34 = v45;
        v31 = v42;
        v18 = v42;
        v32 = v43;
        v13[2] = v17 + 1;
        v19 = &v13[16 * v17];
        v20 = v32;
        v21 = v34;
        v19[4] = v33;
        v19[5] = v21;
        v19[3] = v20;
        v22 = v35;
        v23 = v36;
        v24 = v38;
        v19[8] = v37;
        v19[9] = v24;
        v19[6] = v22;
        v19[7] = v23;
        v19[2] = v18;
        if (!i)
        {
          break;
        }

        v14 += 40;
      }

      v26 = 0;
      v27 = 0;
      v25 = v30;
      v6 = a3;
    }

    else
    {

      v26 = 0;
      v27 = 0;
      v13 = _swiftEmptyArrayStorage;
      v25 = v30;
    }
  }

  else
  {
    LOBYTE(v31) = v11;
    VerticalMasonryCoverGridViewModel.init(assets:gridWidth:gridStyle:)(a1, &v31, &v42, *&v10 + -16.0);
    v25 = v30;
    v26 = *(&v42 + 1);
    v13 = v42;
    v27 = v43 | 0x80;
  }

  v28 = v51;
  *a6 = a2;
  *(a6 + 8) = v6;
  *(a6 + 16) = v13;
  *(a6 + 24) = v26;
  *(a6 + 32) = v27;
  *(a6 + 40) = v25;
  *(a6 + 56) = v28;
}

uint64_t sub_B1D44()
{
  v24 = sub_260290();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v23 = sub_264410();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_2643F0();
  __chkstk_darwin(v13 - 8);
  v14 = *v0;
  v15 = v0[1];
  sub_2643E0();
  v25._countAndFlagsBits = 0x20794D2A2ALL;
  v25._object = 0xE500000000000000;
  sub_2643D0(v25);
  v26._countAndFlagsBits = v14;
  v26._object = v15;
  sub_2643C0(v26);
  v27._object = 0x8000000000291BA0;
  v27._countAndFlagsBits = 0xD000000000000011;
  sub_2643D0(v27);
  sub_264400();
  sub_260260();
  v16 = v23;
  (*(v7 + 16))(v9, v12, v23);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = v24;
  (*(v1 + 16))(v3, v6, v24);
  v20 = sub_264490();
  (*(v1 + 8))(v6, v19);
  (*(v7 + 8))(v12, v16);
  return v20;
}

__n128 ShareableAsset.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShareableAsset(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

uint64_t sub_B210C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ShareableAsset(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_BE320(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B22F8@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ShareableAsset(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_BE320(v9, a1, type metadata accessor for SizeConstants.Spacing);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ShareableAsset.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ShareableAsset(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_BE2A0(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareableAsset);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_BE320(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ShareableAsset);
  *a1 = sub_BE264;
  a1[1] = v7;
  return result;
}

uint64_t sub_B2600(uint64_t a1, uint64_t a2)
{
  v3 = sub_261690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31BF80, &qword_2721D8);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_B2818(a2, &v16 - v8);
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 36)];
  v12 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = sub_261180();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
  sub_C274C();
  sub_262B60();
  (*(v4 + 8))(v6, v3);
  return sub_8E80(v9, &qword_31BF80, &qword_2721D8);
}

uint64_t sub_B2818@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v4 = sub_2EF0(&qword_31BFC8, &qword_272228);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_2EF0(&qword_31BFD0, &qword_272230);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v10 - 8);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2EF0(&qword_31BFB8, &qword_272220);
  __chkstk_darwin(v13);
  v15 = v24 - v14;
  v16 = *(a1 + 56);
  sub_B22F8(v12);
  sub_C2968(v12, type metadata accessor for SizeConstants.Spacing);
  v17 = sub_261E50();
  if (v16)
  {
    *v6 = v17;
    *(v6 + 1) = 0x4028000000000000;
    v6[16] = 0;
    v18 = sub_2EF0(&qword_31BFD8, &qword_272238);
    sub_B36D8(a1, &v6[*(v18 + 44)]);
    sub_8198(v6, v9, &qword_31BFC8, &qword_272228);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31BFB0, &qword_31BFB8, &qword_272220, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_31BFC0, &qword_31BFC8, &qword_272228, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    v19 = v6;
    v20 = &qword_31BFC8;
    v21 = &qword_272228;
  }

  else
  {
    *v15 = v17;
    *(v15 + 1) = 0x4030000000000000;
    v15[16] = 0;
    v22 = sub_2EF0(&qword_31BFE0, &qword_272240);
    sub_B2BA0(a1, &v15[*(v22 + 44)]);
    sub_8198(v15, v9, &qword_31BFB8, &qword_272220);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31BFB0, &qword_31BFB8, &qword_272220, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_31BFC0, &qword_31BFC8, &qword_272228, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    v19 = v15;
    v20 = &qword_31BFB8;
    v21 = &qword_272220;
  }

  return sub_8E80(v19, v20, v21);
}

uint64_t sub_B2BA0@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2EF0(&qword_31BFE8, &qword_272248);
  __chkstk_darwin(v5 - 8);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v58 - v8;
  v9 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TextLockup(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v58 - v16);
  v18 = *(a1 + 32);
  v65 = (~v18 >> 7) & 1;
  v66 = v18 < 0;
  sub_B3190(v79);
  v19 = a1[1];
  v83 = *a1;
  v84 = v19;
  v85[0] = a1[2];
  *(v85 + 9) = *(a1 + 41);
  v20 = sub_B1D44();
  v60 = v21;
  v61 = v20;
  sub_B210C(v11);
  v22 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_C2968(v11, type metadata accessor for ColorConstants);
  v59 = v22 | 0x8000000000000000;
  v23 = v13[15];
  v24 = sub_2625C0();
  (*(*(v24 - 8) + 56))(v17 + v23, 1, 1, v24);
  v58 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v26 = v25;
  v27 = sub_261E60();
  v28 = v13[19];
  v29 = enum case for DynamicTypeSize.accessibility2(_:);
  v30 = sub_261690();
  (*(*(v30 - 8) + 104))(v17 + v28, v29, v30);
  *v17 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v31 = v13[7];
  *(v17 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v32 = v17 + v13[8];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v17 + v13[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v17 + v13[10];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v17 + v13[11]) = 1;
  v35 = (v17 + v13[12]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v17 + v13[13]);
  v37 = v60;
  *v36 = v61;
  v36[1] = v37;
  v38 = v58;
  v36[2] = v59;
  v39 = (v17 + v13[14]);
  *v39 = 0;
  v39[1] = 0;
  *(v17 + v13[16]) = v27;
  v40 = (v17 + v13[17]);
  *v40 = v38;
  v40[1] = v26;
  *(v17 + v13[18]) = 1;
  v41 = v63;
  sub_B3510(v63);
  v75 = v79[8];
  v76 = v79[9];
  v77 = v79[10];
  v78 = v80;
  v71 = v79[4];
  v72 = v79[5];
  v73 = v79[6];
  v74 = v79[7];
  v67 = v79[0];
  v68 = v79[1];
  v69 = v79[2];
  v70 = v79[3];
  v42 = v62;
  sub_BE2A0(v17, v62, type metadata accessor for TextLockup);
  v43 = v41;
  v44 = v64;
  sub_8198(v41, v64, &qword_31BFE8, &qword_272248);
  v45 = v76;
  v81[8] = v75;
  v81[9] = v76;
  v46 = v77;
  v81[10] = v77;
  v47 = v71;
  v48 = v72;
  v81[4] = v71;
  v81[5] = v72;
  v49 = v73;
  v50 = v74;
  v81[6] = v73;
  v81[7] = v74;
  v51 = v67;
  v52 = v68;
  v81[0] = v67;
  v81[1] = v68;
  v53 = v69;
  v54 = v70;
  v81[2] = v69;
  v81[3] = v70;
  *(a3 + 144) = v75;
  *(a3 + 160) = v45;
  *(a3 + 176) = v46;
  *(a3 + 80) = v47;
  *(a3 + 96) = v48;
  *(a3 + 112) = v49;
  *(a3 + 128) = v50;
  *(a3 + 16) = v51;
  *(a3 + 32) = v52;
  *a3 = 0;
  v55 = v66;
  *(a3 + 8) = v65;
  *(a3 + 9) = v55;
  v82 = v78;
  *(a3 + 192) = v78;
  *(a3 + 48) = v53;
  *(a3 + 64) = v54;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  v56 = sub_2EF0(&qword_31BFF0, &qword_272250);
  sub_BE2A0(v42, a3 + *(v56 + 80), type metadata accessor for TextLockup);
  sub_8198(v44, a3 + *(v56 + 96), &qword_31BFE8, &qword_272248);
  sub_8198(v81, &v83, &qword_31BFF8, &qword_272258);
  sub_8E80(v43, &qword_31BFE8, &qword_272248);
  sub_C2968(v17, type metadata accessor for TextLockup);
  sub_8E80(v44, &qword_31BFE8, &qword_272248);
  sub_C2968(v42, type metadata accessor for TextLockup);
  v85[6] = v75;
  v85[7] = v76;
  v85[8] = v77;
  v86 = v78;
  v85[2] = v71;
  v85[3] = v72;
  v85[4] = v73;
  v85[5] = v74;
  v83 = v67;
  v84 = v68;
  v85[0] = v69;
  v85[1] = v70;
  return sub_8E80(&v83, &qword_31BFF8, &qword_272258);
}

double sub_B3190@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (v5 < 0)
  {

    sub_263550();
    sub_261830();
    *&v50[55] = v52[3];
    *&v50[71] = v52[4];
    *&v50[87] = v52[5];
    *&v50[103] = v52[6];
    *&v50[7] = v52[0];
    *&v50[23] = v52[1];
    *&v50[39] = v52[2];
    v15 = sub_262510();
    sub_2610C0();
    v41 = *&v50[64];
    v42 = *&v50[80];
    *v43 = *&v50[96];
    *&v40[9] = *v50;
    *&v40[25] = *&v50[16];
    *&v40[41] = *&v50[32];
    v51 = 0;
    v39 = v3;
    *v40 = v4;
    v40[8] = v5 & 1;
    *&v43[15] = *(&v52[6] + 1);
    *&v40[57] = *&v50[48];
    v44 = v15;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    LOBYTE(v49) = 0;
    sub_C2B14(&v39);
  }

  else
  {

    sub_261420();
    v7 = v6;
    v8 = *(v1 + 56);
    v9 = *(v3 + 16);
    if (v9 >= 6)
    {
      sub_C8914(v3, v3 + 32, 0, 0xBuLL);
      v11 = v10;
      sub_BE218(v3, v4, v5);
      v9 = *(v11 + 16);
      v3 = v11;
    }

    if (v9)
    {
      memmove(__dst, (v3 + 32), 0x80uLL);
      v12 = sub_2F8B8(__dst);
      v13 = sub_2F950(__dst);
      if (v12)
      {
        v14 = 1.0;
        if (v12 != 1)
        {
          v14 = 0.641025641;
        }
      }

      else
      {
        v14 = *(v13 + 16);
      }

      v38 = v14;
      v25 = 0.51;
      if (!v8)
      {
        v25 = 1.0;
      }

      sub_C8DDC(v3, v7, v7 * v25, v14);
      v37 = v26;
      v20 = v27;

      v28 = sub_262510();
      sub_2610C0();
      *(&v23 + 1) = v29;
      *(&v24 + 1) = v30;
      LOBYTE(v39) = 0;
      *&v22 = v37;
      *(&v22 + 1) = v38;
      v21 = v28;
    }

    else
    {

      v20 = 0;
      v21 = 0;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
    }

    *v40 = v22;
    v39 = v20;
    *&v40[16] = 0;
    *&v40[24] = v21;
    *&v40[32] = v23;
    *&v40[48] = v24;
    v40[64] = 0;
    sub_C2DC8(&v39);
  }

  sub_2EF0(&qword_31C020, &qword_2722D0);
  sub_2EF0(&qword_31C028, &qword_2722D8);
  sub_C2B20();
  sub_C2C5C();
  sub_261F80();
  v31 = v61;
  *(a1 + 128) = v60;
  *(a1 + 144) = v31;
  *(a1 + 160) = v62;
  *(a1 + 176) = v63;
  v32 = v57;
  *(a1 + 64) = v56;
  *(a1 + 80) = v32;
  v33 = v59;
  *(a1 + 96) = v58;
  *(a1 + 112) = v33;
  v34 = __dst[1];
  *a1 = __dst[0];
  *(a1 + 16) = v34;
  result = *&v54;
  v36 = v55;
  *(a1 + 32) = v54;
  *(a1 + 48) = v36;
  return result;
}

uint64_t sub_B3510@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262870();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_263580();
  sub_2613A0();
  v9 = v6 & 1;
  v10 = sub_262580();
  *&v16 = v2;
  *(&v16 + 1) = v4;
  LOBYTE(v17) = v9;
  *(&v17 + 1) = v8;
  *&v21 = swift_getKeyPath();
  *(&v21 + 1) = v10;
  sub_262630();
  sub_2EF0(&qword_31C000, &qword_272290);
  sub_C29D0();
  sub_262A20();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
  v22[0] = v16;
  v22[1] = v17;
  sub_8E80(v22, &qword_31C000, &qword_272290);
  KeyPath = swift_getKeyPath();
  v12 = a1 + *(sub_2EF0(&qword_31C018, &qword_272298) + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();
  result = sub_2EF0(&qword_31BFE8, &qword_272248);
  v15 = (a1 + *(result + 36));
  *v15 = v13;
  v15[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_B36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31C078, &qword_2722F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = *(a1 + 32);
  v26 = v10 < 0;
  v11 = (~v10 >> 7) & 1;
  sub_B3190(v39);
  *v9 = sub_261CE0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = sub_2EF0(&qword_31C080, &qword_272300);
  sub_B398C(a1, &v9[*(v12 + 44)]);
  v35 = v39[8];
  v36 = v39[9];
  v37 = v39[10];
  v38 = v40;
  v31 = v39[4];
  v32 = v39[5];
  v33 = v39[6];
  v34 = v39[7];
  v27 = v39[0];
  v28 = v39[1];
  v29 = v39[2];
  v30 = v39[3];
  sub_8198(v9, v6, &qword_31C078, &qword_2722F8);
  v13 = v36;
  v41[8] = v35;
  v41[9] = v36;
  v14 = v37;
  v41[10] = v37;
  v15 = v31;
  v16 = v32;
  v41[4] = v31;
  v41[5] = v32;
  v17 = v33;
  v18 = v34;
  v41[6] = v33;
  v41[7] = v34;
  v19 = v27;
  v20 = v28;
  v41[0] = v27;
  v41[1] = v28;
  v21 = v29;
  v22 = v30;
  v41[2] = v29;
  v41[3] = v30;
  *(a2 + 144) = v35;
  *(a2 + 160) = v13;
  *(a2 + 176) = v14;
  *(a2 + 80) = v15;
  *(a2 + 96) = v16;
  *(a2 + 112) = v17;
  *(a2 + 128) = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  *a2 = 0;
  *(a2 + 8) = v11;
  *(a2 + 9) = v26;
  v42 = v38;
  *(a2 + 192) = v38;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  v23 = sub_2EF0(&qword_31C088, &qword_272308);
  sub_8198(v6, a2 + *(v23 + 80), &qword_31C078, &qword_2722F8);
  sub_8198(v41, v43, &qword_31BFF8, &qword_272258);
  sub_8E80(v9, &qword_31C078, &qword_2722F8);
  sub_8E80(v6, &qword_31C078, &qword_2722F8);
  v43[8] = v35;
  v43[9] = v36;
  v43[10] = v37;
  v44 = v38;
  v43[4] = v31;
  v43[5] = v32;
  v43[6] = v33;
  v43[7] = v34;
  v43[0] = v27;
  v43[1] = v28;
  v43[2] = v29;
  v43[3] = v30;
  return sub_8E80(v43, &qword_31BFF8, &qword_272258);
}

uint64_t sub_B398C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_2EF0(&qword_31BFE8, &qword_272248);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TextLockup(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  v19 = a1[1];
  v51 = *a1;
  v52 = v19;
  v53[0] = a1[2];
  *(v53 + 9) = *(a1 + 41);
  v20 = sub_B1D44();
  v48 = v21;
  v49 = v20;
  sub_B210C(v11);
  v22 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_C2968(v11, type metadata accessor for ColorConstants);
  v47 = v22 | 0x8000000000000000;
  v23 = v13[15];
  v24 = sub_2625C0();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  v25 = sub_263580();
  v46 = v26;
  v27 = sub_261E60();
  v28 = v13[19];
  v29 = enum case for DynamicTypeSize.accessibility2(_:);
  v30 = sub_261690();
  (*(*(v30 - 8) + 104))(v18 + v28, v29, v30);
  *v18 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v31 = v13[7];
  *(v18 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v32 = v18 + v13[8];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v18 + v13[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v18 + v13[10];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v18 + v13[11]) = 0;
  v35 = (v18 + v13[12]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v18 + v13[13]);
  v37 = v48;
  *v36 = v49;
  v36[1] = v37;
  v38 = v46;
  v36[2] = v47;
  v39 = (v18 + v13[14]);
  *v39 = 0;
  v39[1] = 0;
  *(v18 + v13[16]) = v27;
  v40 = (v18 + v13[17]);
  *v40 = v25;
  v40[1] = v38;
  *(v18 + v13[18]) = 0;
  sub_B3510(v8);
  sub_BE2A0(v18, v15, type metadata accessor for TextLockup);
  sub_8198(v8, v5, &qword_31BFE8, &qword_272248);
  v41 = v50;
  sub_BE2A0(v15, v50, type metadata accessor for TextLockup);
  v42 = sub_2EF0(&qword_31C090, &unk_272310);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_8198(v5, v41 + *(v42 + 64), &qword_31BFE8, &qword_272248);
  sub_8E80(v8, &qword_31BFE8, &qword_272248);
  sub_C2968(v18, type metadata accessor for TextLockup);
  sub_8E80(v5, &qword_31BFE8, &qword_272248);
  return sub_C2968(v15, type metadata accessor for TextLockup);
}

uint64_t sub_B3DFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_BE2A0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareableAsset);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_BE320(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ShareableAsset);
  *a2 = sub_C2F10;
  a2[1] = v7;
  return result;
}

uint64_t SummaryFrameViewModel.init(localizedYear:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for SummaryFrameViewModel(0);
  v9 = &a4[*(v8 + 24)];
  *v9 = 0xD000000000000013;
  *(v9 + 1) = 0x800000000028FD20;
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = *(v8 + 20);
  v11 = sub_260550();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_B3FC0()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_B423C()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_B44B8()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v20[-v13];
  v15 = sub_2643F0();
  __chkstk_darwin(v15 - 8);
  sub_2643E0();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_2643D0(v21);
  sub_2643C0(*v0);
  v22._countAndFlagsBits = 0x6E69207261655920;
  v22._object = 0xEF77656976655220;
  sub_2643D0(v22);
  sub_264400();
  sub_260260();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v4, v7, v1);
  v18 = sub_264490();
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  return v18;
}

uint64_t sub_B47B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a3;
  v22[2] = a4;
  v4 = sub_260290();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = sub_264410();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v22 - v16;
  sub_2643A0();
  sub_260260();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  v20 = sub_264490();
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v17, v11);
  return v20;
}

uint64_t SharableAsset.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_2601E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SharableAsset.init(viewModel:image:item:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v13 = a1[1];
  *a8 = *a1;
  a8[1] = v13;
  a8[2] = a1[2];
  *(a8 + 41) = *(a1 + 41);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v14 = type metadata accessor for SharableAsset(0, v18);
  v15 = *(a4 - 8);
  (*(v15 + 16))(a8 + *(v14 + 52), a2, a4);
  v16 = *(a5 - 8);
  (*(v16 + 16))(a8 + *(v14 + 56), a3, a5);
  sub_2601D0();
  (*(v16 + 8))(a3, a5);
  return (*(v15 + 8))(a2, a4);
}

uint64_t SummaryFrame.exposureData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 56);
  v5 = *(type metadata accessor for SummaryFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_C26FC(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_C26FC(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_B4D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_8198(v2 + *(a1 + 52), &v14 - v10, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_BE320(v11, a2, type metadata accessor for SizeConstants.Spacing);
  }

  sub_264900();
  v13 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t SummaryFrame.init(model:sharableAssets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v29 = a1;
  v30 = a2;
  v12 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  v16 = [objc_opt_self() secondarySystemBackgroundColor];
  *a7 = sub_262EE0();
  v17 = enum case for ColorScheme.light(_:);
  v18 = sub_261180();
  v19 = *(v18 - 8);
  (*(v19 + 104))(&a7[v15], v17, v18);
  (*(v19 + 56))(&a7[v15], 0, 1, v18);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v20 = type metadata accessor for SummaryFrame(0, &v31);
  v21 = v20[13];
  *&a7[v21] = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  *&a7[v20[16]] = 0;
  *&a7[v20[17]] = 0x4020000000000000;
  *&a7[v20[18]] = 0x4034000000000000;
  *&a7[v20[19]] = 0x4034000000000000;
  *&a7[v20[20]] = 0x4024000000000000;
  v22 = v20[21];
  sub_262F80();
  v23 = sub_263000();

  *&a7[v22] = v23;
  v24 = &a7[v20[22]];
  v35 = 0;
  sub_2631D0();
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  v26 = sub_2601E0();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  sub_B51E4(v14);
  result = sub_BE320(v29, &a7[v20[14]], type metadata accessor for SummaryFrameViewModel);
  *&a7[v20[15]] = v30;
  return result;
}

uint64_t sub_B51E4(uint64_t a1)
{
  v3 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v3);
  sub_8198(a1, &v6 - v4, &qword_31A0C8, &qword_26E2C0);
  sub_2631D0();
  return sub_8E80(a1, &qword_31A0C8, &qword_26E2C0);
}

double sub_B52AC(uint64_t a1)
{
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_2631E0();
  return v2;
}

uint64_t sub_B536C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v5 - v3, &qword_31A0C8, &qword_26E2C0);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  sub_2631F0();
  return sub_8E80(a1, &qword_31A0C8, &qword_26E2C0);
}

uint64_t SummaryFrame.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_261180();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v5 - 8);
  v86 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = sub_2F9C(&qword_31BBA8, &unk_271AC0);
  v85 = a1;
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v94 = a1[5];
  v95 = v8;
  v107 = v7;
  v108 = v8;
  v83 = v9;
  v84 = v7;
  v109 = v9;
  v110 = v94;
  type metadata accessor for SharableAsset(255, &v107);
  v93 = sub_2646F0();
  v79 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v10 = sub_261730();
  v130 = v9;
  v131 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v128 = WitnessTable;
  v129 = v12;
  v126 = swift_getWitnessTable();
  v127 = &protocol witness table for _ShadowEffect;
  v124 = swift_getWitnessTable();
  v125 = &protocol witness table for _ScaleEffect;
  v122 = swift_getWitnessTable();
  v123 = &protocol witness table for _FrameLayout;
  v13 = swift_getWitnessTable();
  v14 = sub_6EBA4();
  v107 = v10;
  v108 = &type metadata for CGFloat;
  v109 = v13;
  v110 = v14;
  swift_getOpaqueTypeMetadata2();
  v107 = v10;
  v108 = &type metadata for CGFloat;
  v109 = v13;
  v110 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_263300();
  v16 = swift_getWitnessTable();
  v107 = v15;
  v108 = v16;
  v82 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:alignment:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = v93;
  v19 = swift_getWitnessTable();
  v81 = v19;
  v20 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21 = v79;
  v107 = v18;
  v108 = v79;
  v109 = OpaqueTypeMetadata2;
  v110 = v19;
  v111 = v20;
  v22 = sub_2633D0();
  v107 = v15;
  v108 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v23 = swift_getWitnessTable();
  v107 = v22;
  v108 = v23;
  swift_getOpaqueTypeMetadata2();
  v107 = v22;
  v108 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = sub_2610F0();
  v25 = swift_getWitnessTable();
  v107 = v24;
  v108 = v25;
  swift_getOpaqueTypeMetadata2();
  v107 = v24;
  v108 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = sub_261120();
  v27 = swift_getWitnessTable();
  v107 = v26;
  v108 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v107 = v26;
  v108 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v107 = v28;
  v108 = v21;
  v109 = v29;
  v110 = v20;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = sub_262490();
  v107 = v28;
  v108 = v21;
  v109 = v29;
  v110 = v20;
  v32 = swift_getOpaqueTypeConformance2();
  v107 = v30;
  v108 = v31;
  v109 = v32;
  v110 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v33 = swift_getOpaqueTypeMetadata2();
  v107 = v30;
  v108 = v31;
  v109 = v32;
  v110 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v34 = swift_getOpaqueTypeConformance2();
  v107 = v33;
  v108 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v107 = v33;
  v108 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v107 = v35;
  v108 = v36;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_261730();
  v107 = v35;
  v108 = v36;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = &protocol witness table for _FlexFrameLayout;
  v92 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v117 = swift_getWitnessTable();
  v118 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v133 = sub_261560();
  v37 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v107 = v93;
  v108 = v21;
  v109 = v37;
  v110 = v81;
  v111 = v20;
  sub_2633D0();
  v116 = sub_BE388();
  swift_getWitnessTable();
  v134 = sub_263260();
  v38 = sub_264C30();
  v39 = sub_2F9C(&qword_31BBD8, &qword_271AE8);
  v40 = swift_getWitnessTable();
  v41 = sub_BE520();
  v107 = v38;
  v108 = &type metadata for Never;
  v109 = &type metadata for Never;
  v110 = v39;
  v111 = v40;
  v112 = &protocol witness table for Never;
  v113 = &protocol witness table for Never;
  v114 = v41;
  v115 = v94;
  v42 = sub_2636A0();
  v43 = sub_2623C0();
  v44 = swift_getWitnessTable();
  v45 = sub_C26FC(&qword_31BC18, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v107 = v42;
  v108 = v43;
  v109 = v44;
  v110 = v45;
  swift_getOpaqueTypeMetadata2();
  sub_2F9C(&qword_31BC20, &unk_271B10);
  sub_261730();
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v46 = sub_261730();
  v47 = sub_2F9C(&qword_317960, &qword_269CF0);
  v107 = v42;
  v108 = v43;
  v109 = v44;
  v110 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_8E38(&qword_31BC28, &qword_31BC20, &unk_271B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v105 = v48;
  v106 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v103 = v50;
  v104 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v107 = v46;
  v108 = v47;
  v109 = v52;
  v110 = v53;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v135 = sub_264A60();
  swift_getTupleTypeMetadata();
  sub_2636B0();
  v79 = swift_getWitnessTable();
  v54 = sub_2632E0();
  v81 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = &v78 - v55;
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v57 = sub_261730();
  v93 = *(v57 - 8);
  __chkstk_darwin(v57);
  v59 = &v78 - v58;
  v60 = swift_getWitnessTable();
  v78 = v60;
  v61 = sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v101 = v60;
  v102 = v61;
  v62 = swift_getWitnessTable();
  v107 = v57;
  v108 = v62;
  v80 = v62;
  v63 = swift_getOpaqueTypeMetadata2();
  v92 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v78 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v82 = &v78 - v67;
  v68 = v86;
  v69 = v87;
  sub_B4D1C(v85, v86);
  sub_C2968(v68, type metadata accessor for SizeConstants.Spacing);
  v96 = v84;
  v97 = v95;
  v98 = v83;
  v99 = v94;
  v100 = v69;
  sub_261E50();
  sub_2632D0();
  v70 = v88;
  v71 = v89;
  v72 = v90;
  (*(v89 + 104))(v88, enum case for ColorScheme.light(_:), v90);
  v95 = v59;
  sub_262A70();
  (*(v71 + 8))(v70, v72);
  v81[1](v56, v54);
  LOBYTE(v59) = sub_2624C0();
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v59)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v73 = v80;
  v74 = v95;
  sub_262D00();
  (*(v93 + 8))(v74, v57);
  v107 = v57;
  v108 = v73;
  swift_getOpaqueTypeConformance2();
  v75 = v82;
  sub_1609C();
  v76 = v92[1];
  v76(v65, v63);
  sub_1609C();
  return (v76)(v75, v63);
}

uint64_t sub_B62E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v269 = a5;
  v268 = a4;
  v270 = a3;
  v267 = a2;
  v265 = a1;
  v238 = a6;
  v271 = sub_2EF0(&qword_317960, &qword_269CF0);
  __chkstk_darwin(v271);
  v232 = &v193 - v8;
  v9 = sub_261860();
  v230 = *(v9 - 8);
  v231 = v9;
  __chkstk_darwin(v9);
  v229 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2623C0();
  v227 = *(v11 - 8);
  __chkstk_darwin(v11);
  v226 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_31BF30, &qword_2720C0);
  __chkstk_darwin(v13 - 8);
  v225 = &v193 - v14;
  v215 = *(a3 - 1);
  __chkstk_darwin(v15);
  v224 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264C30();
  v18 = sub_2F9C(&qword_31BBD8, &qword_271AE8);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_BE520();
  v287 = v17;
  v288 = &type metadata for Never;
  v289 = &type metadata for Never;
  v290 = v18;
  v221 = v18;
  v291 = WitnessTable;
  v292 = &protocol witness table for Never;
  v293 = &protocol witness table for Never;
  v294 = v20;
  v216 = v20;
  v295 = a5;
  v21 = sub_2636A0();
  v222 = *(v21 - 8);
  __chkstk_darwin(v21);
  v219 = &v193 - v22;
  v23 = swift_getWitnessTable();
  v24 = sub_C26FC(&qword_31BC18, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v287 = v21;
  v288 = v11;
  v289 = v23;
  v290 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v217 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v209 = &v193 - v26;
  sub_2F9C(&qword_31BC20, &unk_271B10);
  v218 = OpaqueTypeMetadata2;
  v27 = sub_261730();
  v213 = *(v27 - 8);
  __chkstk_darwin(v27);
  v211 = &v193 - v28;
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v29 = sub_261730();
  v200 = *(v29 - 8);
  __chkstk_darwin(v29);
  v220 = &v193 - v30;
  v223 = v21;
  v287 = v21;
  v288 = v11;
  v228 = v11;
  v212 = v23;
  v289 = v23;
  v290 = v24;
  v210 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_8E38(&qword_31BC28, &qword_31BC20, &unk_271B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v208 = OpaqueTypeConformance2;
  v286[24] = OpaqueTypeConformance2;
  v286[25] = v32;
  v250 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v214 = v27;
  v33 = swift_getWitnessTable();
  v34 = sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v207 = v33;
  v286[22] = v33;
  v286[23] = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v261 = v29;
  v287 = v29;
  v288 = v271;
  v259 = v35;
  v289 = v35;
  v290 = v36;
  v258 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v197 = *(v37 - 8);
  __chkstk_darwin(v37);
  v194 = &v193 - v38;
  v198 = v39;
  v40 = sub_261730();
  v233 = *(v40 - 8);
  __chkstk_darwin(v40);
  v199 = &v193 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v195 = &v193 - v43;
  __chkstk_darwin(v44);
  v196 = &v193 - v45;
  v46 = v267;
  v47 = v270;
  v287 = v267;
  v288 = v270;
  v48 = v268;
  v49 = v269;
  v289 = v268;
  v290 = v269;
  v50 = type metadata accessor for SharableAsset(255, &v287);
  v51 = sub_264A60();
  v205 = *(v51 - 8);
  v206 = v51;
  __chkstk_darwin(v51);
  v251 = &v193 - v52;
  v252 = *(v50 - 8);
  v253 = v50;
  __chkstk_darwin(v53);
  v234 = &v193 - v54;
  v256 = v40;
  v237 = sub_264A60();
  v235 = *(v237 - 8);
  __chkstk_darwin(v237);
  v257 = &v193 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v236 = &v193 - v57;
  v58 = sub_2646F0();
  v59 = sub_2601E0();
  v246 = v59;
  v60 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v61 = v58;
  v247 = v58;
  v62 = swift_getWitnessTable();
  v248 = v62;
  v245 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v287 = v61;
  v288 = v59;
  v289 = v60;
  v290 = v62;
  v291 = v245;
  sub_2633D0();
  v286[21] = sub_BE388();
  v249 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  v264 = sub_263260();
  v260 = *(v264 - 8);
  __chkstk_darwin(v264);
  v263 = &v193 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v262 = &v193 - v65;
  v287 = v46;
  v288 = v47;
  v289 = v48;
  v290 = v49;
  v266 = type metadata accessor for SummaryFrame(0, &v287);
  v66 = *(v266 - 8);
  v244 = *(v66 + 64);
  __chkstk_darwin(v266);
  v243 = &v193 - v67;
  v68 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v68 - 8);
  v70 = (&v193 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_2EF0(&qword_31BBA8, &unk_271AC0);
  __chkstk_darwin(v71);
  v255 = &v193 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v75 = (&v193 - v74);
  v254 = sub_B3FC0();
  v242 = v76;
  v77 = sub_B423C();
  v240 = v78;
  v241 = v77;
  v79 = type metadata accessor for TextLockup(0);
  v80 = v79[13];
  v81 = sub_2625C0();
  (*(*(v81 - 8) + 56))(v75 + v80, 1, 1, v81);
  v239 = sub_261E50();
  v82 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v84 = v83;
  v85 = v79[17];
  v86 = enum case for DynamicTypeSize.xxxLarge(_:);
  v87 = sub_261690();
  v88 = *(v87 - 8);
  v89 = *(v88 + 104);
  v203 = v86;
  v204 = v87;
  v201 = v88 + 104;
  v202 = v89;
  (v89)(v75 + v85, v86);
  *v75 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v90 = v79[5];
  *(v75 + v90) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v91 = v75 + v79[6];
  *v91 = swift_getKeyPath();
  v91[8] = 0;
  v92 = v75 + v79[7];
  *v92 = swift_getKeyPath();
  v92[8] = 0;
  v93 = v75 + v79[8];
  *v93 = swift_getKeyPath();
  v93[8] = 0;
  *(v75 + v79[9]) = 3;
  v94 = (v75 + v79[10]);
  *v94 = 0;
  v94[1] = 0;
  v95 = (v75 + v79[11]);
  v96 = v241;
  v97 = v242;
  *v95 = v254;
  v95[1] = v97;
  v95[2] = 0;
  v98 = (v75 + v79[12]);
  *v98 = v96;
  v99 = v239;
  v98[1] = v240;
  *(v75 + v79[14]) = v99;
  v100 = (v75 + v79[15]);
  *v100 = v82;
  v100[1] = v84;
  *(v75 + v79[16]) = 1;
  LOBYTE(v79) = sub_2624F0();
  v101 = v75 + *(sub_2EF0(&qword_31BF38, &unk_272170) + 36);
  *v101 = v79;
  *(v101 + 8) = 0u;
  *(v101 + 24) = 0u;
  v101[40] = 1;
  LOBYTE(v86) = sub_262510();
  v102 = v266;
  v103 = v265;
  sub_B4D1C(v266, v70);
  sub_C2968(v70, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v242 = v71;
  v104 = *(v71 + 36);
  v254 = v75;
  v105 = v75 + v104;
  *v105 = v86;
  *(v105 + 1) = v106;
  *(v105 + 2) = v107;
  *(v105 + 3) = v108;
  *(v105 + 4) = v109;
  v105[40] = 0;
  v110 = v243;
  v111 = v102;
  (*(v66 + 16))(v243, v103, v102);
  v112 = (*(v66 + 80) + 48) & ~*(v66 + 80);
  v113 = swift_allocObject();
  v244 = v113;
  v114 = v270;
  v113[2] = v267;
  v113[3] = v114;
  v115 = v268;
  v116 = v269;
  v113[4] = v268;
  v113[5] = v116;
  (*(v66 + 32))(v113 + v112, v110, v111);
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v117 = sub_261730();
  v286[17] = v115;
  v286[18] = &protocol witness table for _FrameLayout;
  v118 = swift_getWitnessTable();
  v119 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v286[15] = v118;
  v286[16] = v119;
  v286[13] = swift_getWitnessTable();
  v286[14] = &protocol witness table for _ShadowEffect;
  v286[11] = swift_getWitnessTable();
  v286[12] = &protocol witness table for _ScaleEffect;
  v286[9] = swift_getWitnessTable();
  v286[10] = &protocol witness table for _FrameLayout;
  v120 = swift_getWitnessTable();
  v121 = sub_6EBA4();
  v287 = v117;
  v288 = &type metadata for CGFloat;
  v289 = v120;
  v290 = v121;
  swift_getOpaqueTypeMetadata2();
  v287 = v117;
  v288 = &type metadata for CGFloat;
  v289 = v120;
  v290 = v121;
  swift_getOpaqueTypeConformance2();
  v122 = sub_263300();
  v123 = swift_getWitnessTable();
  v287 = v122;
  v288 = v123;
  v124 = swift_getOpaqueTypeMetadata2();
  v125 = v246;
  v287 = v247;
  v288 = v246;
  v289 = v124;
  v290 = v248;
  v126 = v245;
  v291 = v245;
  v127 = sub_2633D0();
  v287 = v122;
  v288 = v123;
  v286[8] = swift_getOpaqueTypeConformance2();
  v128 = swift_getWitnessTable();
  v287 = v127;
  v288 = v128;
  swift_getOpaqueTypeMetadata2();
  v287 = v127;
  v288 = v128;
  swift_getOpaqueTypeConformance2();
  v129 = sub_2610F0();
  v130 = swift_getWitnessTable();
  v287 = v129;
  v288 = v130;
  swift_getOpaqueTypeMetadata2();
  v287 = v129;
  v288 = v130;
  swift_getOpaqueTypeConformance2();
  v131 = sub_261120();
  v132 = swift_getWitnessTable();
  v287 = v131;
  v288 = v132;
  v133 = swift_getOpaqueTypeMetadata2();
  v287 = v131;
  v288 = v132;
  v134 = swift_getOpaqueTypeConformance2();
  v287 = v133;
  v288 = v125;
  v289 = v134;
  v290 = v126;
  v135 = swift_getOpaqueTypeMetadata2();
  v136 = sub_262490();
  v287 = v133;
  v288 = v125;
  v289 = v134;
  v290 = v126;
  v137 = swift_getOpaqueTypeConformance2();
  v287 = v135;
  v288 = v136;
  v289 = v137;
  v290 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v138 = swift_getOpaqueTypeMetadata2();
  v287 = v135;
  v288 = v136;
  v289 = v137;
  v290 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v139 = swift_getOpaqueTypeConformance2();
  v287 = v138;
  v288 = v139;
  v140 = swift_getOpaqueTypeMetadata2();
  v287 = v138;
  v288 = v139;
  v141 = swift_getOpaqueTypeConformance2();
  v287 = v140;
  v288 = v141;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_261730();
  v287 = v140;
  v288 = v141;
  v142 = v266;
  v143 = v265;
  v144 = v251;
  v286[6] = swift_getOpaqueTypeConformance2();
  v286[7] = &protocol witness table for _FlexFrameLayout;
  v286[4] = swift_getWitnessTable();
  v286[5] = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v287 = sub_261550();
  v288 = v145;
  v146 = v252;
  v147 = sub_261560();
  v247 = swift_getWitnessTable();
  v248 = v147;
  sub_1609C();

  v148 = v263;
  sub_B9A38(v142, v263, *(v143 + *(v142 + 80)));
  v149 = v264;
  v246 = swift_getWitnessTable();
  sub_1609C();
  v249 = *(v260 + 8);
  v250 = (v260 + 8);
  v249(v148, v149);
  v150 = sub_B9D50(v142);
  v151 = v253;
  if ((*(v146 + 48))(v144, 1, v253, v150) == 1)
  {
    (*(v205 + 8))(v144, v206);
    v152 = v257;
    (*(v233 + 56))(v257, 1, 1, v256);
    v287 = v261;
    v288 = v271;
    v289 = v259;
    v290 = v258;
    v286[2] = swift_getOpaqueTypeConformance2();
    v286[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
LABEL_8:
    v183 = v236;
    sub_84178(v152, v236);
    v184 = v235;
    v270 = *(v235 + 8);
    v185 = v237;
    (v270)(v152, v237);
    v186 = v255;
    sub_8198(v254, v255, &qword_31BBA8, &unk_271AC0);
    v286[0] = v286[19];
    v286[1] = v286[20];
    v287 = v186;
    v288 = v286;
    v187 = v263;
    v188 = v262;
    v189 = v264;
    (*(v260 + 16))(v263, v262, v264);
    v289 = v187;
    (*(v184 + 16))(v152, v183, v185);
    v290 = v152;

    v285[0] = v242;
    v285[1] = v248;
    v285[2] = v189;
    v285[3] = v185;
    v281 = sub_C0FF4();
    v282 = v247;
    v283 = v246;
    v277 = v261;
    v278 = v271;
    v279 = v259;
    v280 = v258;
    v275 = swift_getOpaqueTypeConformance2();
    v276 = &protocol witness table for _FrameLayout;
    v274 = swift_getWitnessTable();
    v284 = swift_getWitnessTable();
    sub_10E998(&v287, 4uLL, v285);
    v190 = v270;
    (v270)(v183, v185);
    v191 = v188;
    v192 = v249;
    v249(v191, v189);

    sub_8E80(v254, &qword_31BBA8, &unk_271AC0);
    (v190)(v257, v185);
    v192(v187, v189);

    return sub_8E80(v255, &qword_31BBA8, &unk_271AC0);
  }

  v153 = v261;
  v154 = v271;
  v155 = v234;
  (*(v146 + 32))(v234, v144, v151);
  (*(v215 + 16))(v224, v155 + *(v151 + 56), v270);
  v156 = sub_B9E30(v155, v142);
  v290 = sub_C113C();
  v287 = v156;
  v157 = sub_261320();
  __chkstk_darwin(v157);
  v158 = v219;
  sub_263680();
  v159 = v226;
  sub_2623B0();
  v160 = v209;
  v161 = v223;
  v162 = v228;
  sub_262A50();
  (*(v227 + 8))(v159, v162);
  (*(v222 + 8))(v158, v161);
  v163 = v160;
  if (_UISolariumEnabled())
  {
    v164 = v229;
    sub_261850();
  }

  else
  {
    v164 = v229;
    sub_261840();
  }

  v165 = v211;
  v166 = v218;
  sub_262BB0();
  (*(v230 + 8))(v164, v231);
  (*(v217 + 8))(v163, v166);
  sub_262F80();
  v167 = v220;
  v168 = v214;
  sub_262D90();

  (*(v213 + 8))(v165, v168);
  v169 = v232;
  v202(v232, v203, v204);
  sub_C26FC(&qword_317AB0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264390();
  if (result)
  {
    v171 = v194;
    v172 = v259;
    v173 = v154;
    v174 = v258;
    sub_262B70();
    sub_8E80(v169, &qword_317960, &qword_269CF0);
    (*(v200 + 8))(v167, v153);
    sub_B52AC(v266);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v287 = v153;
    v288 = v173;
    v289 = v172;
    v290 = v174;
    v175 = swift_getOpaqueTypeConformance2();
    v176 = v195;
    v177 = v198;
    sub_262DA0();
    (*(v197 + 8))(v171, v177);
    (*(v252 + 8))(v234, v253);
    v272 = v175;
    v273 = &protocol witness table for _FrameLayout;
    v178 = v256;
    swift_getWitnessTable();
    v179 = v196;
    sub_1609C();
    v180 = v233;
    v181 = *(v233 + 8);
    v181(v176, v178);
    v182 = v199;
    sub_1609C();
    v181(v179, v178);
    v152 = v257;
    (*(v180 + 32))(v257, v182, v178);
    (*(v180 + 56))(v152, 0, 1, v178);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_B80B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a6;
  v48 = a4;
  v51 = a2;
  v50 = a1;
  v52 = a7;
  v58 = a3;
  v59 = a4;
  v47 = a3;
  v60 = a5;
  v61 = a6;
  v46 = a5;
  type metadata accessor for SharableAsset(255, &v58);
  v8 = sub_2646F0();
  v45 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v9 = sub_261730();
  v71 = a5;
  v72 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v69 = WitnessTable;
  v70 = v11;
  v67 = swift_getWitnessTable();
  v68 = &protocol witness table for _ShadowEffect;
  v65 = swift_getWitnessTable();
  v66 = &protocol witness table for _ScaleEffect;
  v63 = swift_getWitnessTable();
  v64 = &protocol witness table for _FrameLayout;
  v12 = swift_getWitnessTable();
  v13 = sub_6EBA4();
  v58 = v9;
  v59 = &type metadata for CGFloat;
  v60 = v12;
  v61 = v13;
  swift_getOpaqueTypeMetadata2();
  v58 = v9;
  v59 = &type metadata for CGFloat;
  v60 = v12;
  v61 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = sub_263300();
  v15 = swift_getWitnessTable();
  v58 = v14;
  v59 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = swift_getWitnessTable();
  v18 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v58 = v8;
  v59 = v45;
  v60 = OpaqueTypeMetadata2;
  v61 = v17;
  v62 = v18;
  v19 = sub_2633D0();
  v58 = v14;
  v59 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v58 = v19;
  v59 = v20;
  swift_getOpaqueTypeMetadata2();
  v58 = v19;
  v59 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_2610F0();
  v22 = swift_getWitnessTable();
  v58 = v21;
  v59 = v22;
  swift_getOpaqueTypeMetadata2();
  v58 = v21;
  v59 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_261120();
  v24 = swift_getWitnessTable();
  v58 = v23;
  v59 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v58 = v23;
  v59 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v58 = v25;
  v59 = v45;
  v60 = v26;
  v61 = v18;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = sub_262490();
  v58 = v25;
  v59 = v45;
  v60 = v26;
  v61 = v18;
  v29 = swift_getOpaqueTypeConformance2();
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v30 = swift_getOpaqueTypeMetadata2();
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v31 = swift_getOpaqueTypeConformance2();
  v58 = v30;
  v59 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v58 = v30;
  v59 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v58 = v32;
  v59 = v33;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v34 = sub_261730();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v44 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v44 - v39;
  v58 = v47;
  v59 = v48;
  v60 = v46;
  v61 = v49;
  v41 = type metadata accessor for SummaryFrame(0, &v58);
  sub_B8830(v50, v41, v37);
  v58 = v32;
  v59 = v33;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = &protocol witness table for _FlexFrameLayout;
  v53 = swift_getWitnessTable();
  v54 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  sub_1609C();
  v42 = *(v35 + 8);
  v42(v37, v34);
  sub_1609C();
  return (v42)(v40, v34);
}

uint64_t sub_B8830@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a1;
  v155 = a3;
  v154 = *(a2 - 1);
  __chkstk_darwin(a1);
  v152 = v4;
  v153 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2620F0();
  v150 = *(v5 - 8);
  v151 = v5;
  __chkstk_darwin(v5);
  v149 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v148 = (&v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_262320();
  v146 = *(v9 - 8);
  v147 = v9;
  __chkstk_darwin(v9);
  v145 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262470();
  __chkstk_darwin(v11 - 8);
  v143 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_262490();
  v144 = *(v157 - 8);
  __chkstk_darwin(v157);
  v142 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_31BF70, &qword_2721C8);
  __chkstk_darwin(v14 - 8);
  v140 = a2;
  v141 = &v110 - v15;
  v16 = a2[2];
  v160 = a2[3];
  v161 = v16;
  v17 = a2[4];
  v158 = a2[5];
  v159 = v17;
  v165 = v16;
  v166 = v160;
  v167 = v17;
  v168 = v158;
  v18 = v17;
  type metadata accessor for SharableAsset(255, &v165);
  v139 = sub_2646F0();
  v156 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v19 = sub_261730();
  v178 = v18;
  v179 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v176 = WitnessTable;
  v177 = v21;
  v174 = swift_getWitnessTable();
  v175 = &protocol witness table for _ShadowEffect;
  v172 = swift_getWitnessTable();
  v173 = &protocol witness table for _ScaleEffect;
  v170 = swift_getWitnessTable();
  v171 = &protocol witness table for _FrameLayout;
  v22 = swift_getWitnessTable();
  v23 = sub_6EBA4();
  v165 = v19;
  v166 = &type metadata for CGFloat;
  v167 = v22;
  v168 = v23;
  swift_getOpaqueTypeMetadata2();
  v165 = v19;
  v166 = &type metadata for CGFloat;
  v167 = v22;
  v168 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = sub_263300();
  v25 = swift_getWitnessTable();
  v165 = v24;
  v166 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = v139;
  v28 = swift_getWitnessTable();
  v29 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v30 = v156;
  v165 = v27;
  v166 = v156;
  v167 = OpaqueTypeMetadata2;
  v168 = v28;
  v169 = v29;
  v31 = v29;
  v32 = sub_2633D0();
  v165 = v24;
  v166 = v25;
  v164[19] = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v165 = v32;
  v166 = v33;
  swift_getOpaqueTypeMetadata2();
  v165 = v32;
  v166 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = sub_2610F0();
  v35 = swift_getWitnessTable();
  v165 = v34;
  v166 = v35;
  v119 = swift_getOpaqueTypeMetadata2();
  v165 = v34;
  v166 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_261120();
  v120 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  v39 = swift_getWitnessTable();
  v165 = v36;
  v166 = v39;
  v40 = v39;
  v115 = v39;
  v41 = swift_getOpaqueTypeMetadata2();
  v122 = *(v41 - 8);
  __chkstk_darwin(v41);
  v114 = &v110 - v42;
  v165 = v36;
  v166 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v165 = v41;
  v166 = v30;
  v167 = v43;
  v168 = v31;
  v44 = v43;
  v116 = v43;
  v117 = v31;
  v45 = swift_getOpaqueTypeMetadata2();
  v121 = *(v45 - 8);
  __chkstk_darwin(v45);
  v113 = &v110 - v46;
  v165 = v41;
  v166 = v30;
  v167 = v44;
  v168 = v31;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v157;
  v165 = v45;
  v166 = v157;
  v167 = v47;
  v168 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v49 = v47;
  v112 = v47;
  v50 = swift_getOpaqueTypeMetadata2();
  v125 = *(v50 - 8);
  __chkstk_darwin(v50);
  v111 = &v110 - v51;
  v165 = v45;
  v166 = v48;
  v167 = v49;
  v168 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v52 = swift_getOpaqueTypeConformance2();
  v165 = v50;
  v166 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v129 = *(v53 - 8);
  __chkstk_darwin(v53);
  v126 = &v110 - v54;
  v127 = v50;
  v165 = v50;
  v166 = v52;
  v123 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v132 = v53;
  v165 = v53;
  v166 = v55;
  v124 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v130 = *(v56 - 8);
  __chkstk_darwin(v56);
  v128 = &v110 - v57;
  v131 = v58;
  v59 = sub_261730();
  v136 = *(v59 - 8);
  __chkstk_darwin(v59);
  v133 = &v110 - v60;
  v137 = v61;
  v62 = sub_261730();
  v138 = *(v62 - 8);
  v139 = v62;
  __chkstk_darwin(v62);
  v134 = &v110 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v135 = &v110 - v65;
  sub_261420();
  v67 = v66;
  v69 = v68;
  v70 = v140;
  v71 = v163;
  sub_BA9D0(v140, v66, v68);
  v73 = v72;
  v74 = sub_2624C0();
  v164[2] = v161;
  v164[3] = v160;
  v164[4] = v159;
  v164[5] = v158;
  v164[6] = v71;
  v164[7] = v73;
  *&v164[8] = v67;
  *&v164[9] = v69;
  sub_1D16D8(v74, sub_C18D0, v164, v119, OpaqueTypeConformance2);
  v75 = v114;
  sub_262C40();
  (*(v120 + 8))(v38, v36);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  v76 = v141;
  sub_263200();
  sub_263720();
  swift_checkMetadataState();
  v77 = v113;
  sub_262B40();
  v78 = v76;
  v79 = v111;
  sub_8E80(v78, &qword_31BF70, &qword_2721C8);
  (*(v122 + 8))(v75, v41);
  sub_262460();
  v80 = v142;
  sub_262480();
  v81 = v157;
  sub_262C90();
  (*(v144 + 8))(v80, v81);
  v82 = v77;
  v83 = v145;
  (*(v121 + 8))(v82, v45);
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v38) = sub_2624E0();
  *(inited + 32) = v38;
  v85 = sub_2624C0();
  *(inited + 33) = v85;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v38)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v85)
  {
    sub_2624D0();
  }

  v87 = v126;
  v86 = v127;
  sub_262BA0();
  (*(v146 + 8))(v83, v147);
  (*(v125 + 8))(v79, v86);
  sub_2624F0();
  sub_261420();
  v88 = v148;
  v89 = v163;
  sub_B4D1C(v70, v148);
  sub_C2968(v88, type metadata accessor for SizeConstants.Spacing);
  v90 = v149;
  sub_2620C0();
  v91 = v128;
  v92 = v132;
  v93 = v124;
  sub_262B30();
  (*(v150 + 8))(v90, v151);
  (*(v129 + 8))(v87, v92);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v165 = v92;
  v166 = v93;
  v109 = swift_getOpaqueTypeConformance2();
  v94 = v131;
  v95 = v133;
  sub_262DB0();
  (*(v130 + 8))(v91, v94);
  v97 = v153;
  v96 = v154;
  (*(v154 + 16))(v153, v89, v70);
  v98 = (*(v96 + 80) + 48) & ~*(v96 + 80);
  v99 = swift_allocObject();
  v100 = v160;
  *(v99 + 2) = v161;
  *(v99 + 3) = v100;
  v101 = v158;
  *(v99 + 4) = v159;
  *(v99 + 5) = v101;
  (*(v96 + 32))(&v99[v98], v97, v70);
  v164[12] = v109;
  v164[13] = &protocol witness table for _FlexFrameLayout;
  v102 = v137;
  v103 = swift_getWitnessTable();
  v104 = v134;
  sub_262E40();

  (*(v136 + 8))(v95, v102);
  v164[10] = v103;
  v164[11] = &protocol witness table for _AppearanceActionModifier;
  v105 = v139;
  swift_getWitnessTable();
  v106 = v135;
  sub_1609C();
  v107 = *(v138 + 8);
  v107(v104, v105);
  sub_1609C();
  return (v107)(v106, v105);
}

uint64_t sub_B9A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v29 = a2;
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[5];
  v27 = a1[4];
  v28 = v9;
  v26 = v11;
  v37 = v10;
  v38 = v9;
  v39 = v27;
  v40 = v11;
  type metadata accessor for SharableAsset(255, &v37);
  v12 = sub_2646F0();
  v13 = sub_2601E0();
  v14 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v40 = WitnessTable;
  v41 = v16;
  sub_2633D0();
  v36 = sub_BE388();
  swift_getWitnessTable();
  v17 = sub_263260();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v26 - v22;
  sub_B4D1C(a1, v8);
  sub_C2968(v8, type metadata accessor for SizeConstants.Spacing);
  v30 = v10;
  v31 = v28;
  v32 = v27;
  v33 = v26;
  v34 = v3;
  v35 = a3;
  sub_261D30();
  sub_263250();
  swift_getWitnessTable();
  sub_1609C();
  v24 = *(v18 + 8);
  v24(v20, v17);
  sub_1609C();
  return (v24)(v23, v17);
}

double sub_B9D50(uint64_t a1)
{
  v7[5] = *(v1 + *(a1 + 60));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  type metadata accessor for SharableAsset(255, v7);
  sub_2646F0();
  swift_getWitnessTable();
  sub_264600();

  return result;
}

id sub_B9E30(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v21 = a2[3];
  v4 = a2[5];
  v22 = a2[4];
  v23 = v3;
  v24[0] = v3;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v4;
  v5 = type metadata accessor for SharableAsset(0, v24);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = [objc_allocWithZone(LPLinkMetadata) init];
  sub_B44B8();
  v10 = sub_264420();

  [v9 setTitle:v10];

  sub_B47B0(0x6F4220656C707041, 0xEB00000000736B6FLL, "Apple Books app name - appears in Year in Review share sheet preview summary", 76);
  v11 = sub_264420();

  [v9 setSummary:v11];

  v12 = [objc_allocWithZone(LPImageProperties) init];
  [v12 setType:1];
  v13 = [objc_allocWithZone(NSItemProvider) init];
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = v22;
  v17 = v21;
  *(v15 + 2) = v23;
  *(v15 + 3) = v17;
  *(v15 + 4) = v16;
  *(v15 + 5) = v4;
  (*(v6 + 32))(&v15[v14], v8, v5);
  sub_264920();

  v18 = [objc_allocWithZone(LPImage) initWithItemProvider:v13 properties:v12 placeholderImage:0];
  [v9 setImage:v18];

  return v9;
}

__n128 sub_BA0E4@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a6;
  v10 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2EF0(&qword_31BC00, &qword_271AF8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = sub_2EF0(&qword_31BBE8, &qword_271AF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = sub_2EF0(&qword_31BF60, &qword_272188);
  v44 = *(v20 - 8);
  v45 = v20;
  __chkstk_darwin(v20);
  v43 = &v42 - v21;
  *&v47 = a2;
  *(&v47 + 1) = a3;
  *&v48 = a4;
  *(&v48 + 1) = a5;
  v22 = type metadata accessor for SummaryFrame(0, &v47);
  *&v47 = sub_B47B0(0x6572616853, 0xE500000000000000, "Share button string in the year summarized frame.", 49);
  *(&v47 + 1) = v23;
  type metadata accessor for SummaryFrameViewModel(0);
  sub_10A84();

  sub_263140();
  KeyPath = swift_getKeyPath();
  v25 = &v16[*(v14 + 44)];
  *v25 = KeyPath;
  *(v25 + 1) = 1;
  v25[16] = 0;
  LOBYTE(a2) = sub_262560();
  v26 = sub_262540();
  sub_262540();
  if (sub_262540() != a2)
  {
    v26 = sub_262540();
  }

  sub_B4D1C(v22, v12);
  sub_C2968(v12, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_22148(v16, v19, &qword_31BC00, &qword_271AF8);
  v35 = &v19[*(v17 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_262650();
  sub_BE5E8();
  v36 = v43;
  sub_262A20();
  sub_8E80(v19, &qword_31BBE8, &qword_271AF0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v37 = v46;
  (*(v44 + 32))(v46, v36, v45);
  v38 = v37 + *(sub_2EF0(&qword_31BBD8, &qword_271AE8) + 36);
  v39 = v52;
  *(v38 + 64) = v51;
  *(v38 + 80) = v39;
  *(v38 + 96) = v53;
  v40 = v48;
  *v38 = v47;
  *(v38 + 16) = v40;
  result = v50;
  *(v38 + 32) = v49;
  *(v38 + 48) = result;
  return result;
}

uint64_t sub_BA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a2;
  v38 = a6;
  v39 = a1;
  v9 = sub_2601E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_31BF68, &qword_2721C0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v37 = &v36 - v14;
  v15 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v15 - 8);
  v45 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  v41 = a3;
  v42 = a4;
  v23 = a5;
  v43 = a5;
  v24 = v38;
  v44 = v38;
  v25 = type metadata accessor for SharableAsset(0, &v41);
  (*(v10 + 16))(v22, v39 + *(v25 + 60), v9);
  (*(v10 + 56))(v22, 0, 1, v9);
  v41 = a3;
  v42 = a4;
  v26 = v37;
  v43 = v23;
  v44 = v24;
  type metadata accessor for SummaryFrame(0, &v41);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  sub_2631E0();
  v27 = *(v13 + 56);
  sub_8198(v22, v26, &qword_31A0C8, &qword_26E2C0);
  sub_8198(v19, v26 + v27, &qword_31A0C8, &qword_26E2C0);
  v28 = v10;
  v29 = *(v10 + 48);
  if (v29(v26, 1, v9) != 1)
  {
    sub_8198(v26, v45, &qword_31A0C8, &qword_26E2C0);
    if (v29(v26 + v27, 1, v9) != 1)
    {
      v31 = v28;
      v32 = v26 + v27;
      v33 = v36;
      (*(v28 + 32))(v36, v32, v9);
      sub_C26FC(&qword_31AD38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = sub_264390();
      v34 = *(v31 + 8);
      v34(v33, v9);
      sub_8E80(v19, &qword_31A0C8, &qword_26E2C0);
      sub_8E80(v22, &qword_31A0C8, &qword_26E2C0);
      v34(v45, v9);
      sub_8E80(v26, &qword_31A0C8, &qword_26E2C0);
      return v30 & 1;
    }

    sub_8E80(v19, &qword_31A0C8, &qword_26E2C0);
    sub_8E80(v22, &qword_31A0C8, &qword_26E2C0);
    (*(v28 + 8))(v45, v9);
    goto LABEL_6;
  }

  sub_8E80(v19, &qword_31A0C8, &qword_26E2C0);
  sub_8E80(v22, &qword_31A0C8, &qword_26E2C0);
  if (v29(v26 + v27, 1, v9) != 1)
  {
LABEL_6:
    sub_8E80(v26, &qword_31BF68, &qword_2721C0);
    v30 = 0;
    return v30 & 1;
  }

  sub_8E80(v26, &qword_31A0C8, &qword_26E2C0);
  v30 = 1;
  return v30 & 1;
}

void sub_BA9D0(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 32);
  v14[0] = *(a1 + 16);
  v14[1] = v6;
  v7 = type metadata accessor for SharableAsset(255, v14);
  v8 = sub_264A60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  *&v14[0] = *(v3 + *(a1 + 60));
  sub_2646F0();
  swift_getWitnessTable();
  sub_264880();
  v12 = *(v7 - 8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v12 + 8))(v11, v7);
    sub_2649D0();
    if (v13 > a2)
    {
      sub_2649B0();
      sub_2649D0();
    }
  }
}

uint64_t sub_BABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v52 = a5;
  v51 = a3;
  v54 = a1;
  v55 = a6;
  v16 = sub_262080();
  __chkstk_darwin(v16 - 8);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v66 = a3;
  v50 = a2;
  v67 = a4;
  v68 = a5;
  v49 = a4;
  type metadata accessor for SharableAsset(255, &v65);
  v18 = sub_2646F0();
  v48 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v19 = sub_261730();
  v78 = a4;
  v79 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v76 = WitnessTable;
  v77 = v21;
  v74 = swift_getWitnessTable();
  v75 = &protocol witness table for _ShadowEffect;
  v72 = swift_getWitnessTable();
  v73 = &protocol witness table for _ScaleEffect;
  v70 = swift_getWitnessTable();
  v71 = &protocol witness table for _FrameLayout;
  v22 = swift_getWitnessTable();
  v23 = sub_6EBA4();
  v65 = v19;
  v66 = &type metadata for CGFloat;
  v67 = v22;
  v68 = v23;
  swift_getOpaqueTypeMetadata2();
  v65 = v19;
  v66 = &type metadata for CGFloat;
  v67 = v22;
  v68 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = sub_263300();
  v25 = swift_getWitnessTable();
  v65 = v24;
  v66 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = swift_getWitnessTable();
  v28 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v65 = v18;
  v66 = v48;
  v67 = OpaqueTypeMetadata2;
  v68 = v27;
  v69 = v28;
  v29 = sub_2633D0();
  v65 = v24;
  v66 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = swift_getWitnessTable();
  v65 = v29;
  v66 = v30;
  swift_getOpaqueTypeMetadata2();
  v65 = v29;
  v66 = v30;
  v46 = swift_getOpaqueTypeConformance2();
  v31 = sub_2610F0();
  v48 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v44 - v32;
  v45 = swift_getWitnessTable();
  v65 = v31;
  v66 = v45;
  v47 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v44 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v44 - v39;
  v56 = v50;
  v57 = v51;
  v58 = v49;
  v59 = v52;
  v60 = v54;
  v61 = a7;
  v62 = a8;
  v63 = a9;
  sub_261D30();
  sub_19E724();
  sub_2610E0();
  v41 = v45;
  sub_262C50();
  (*(v48 + 8))(v33, v31);
  v65 = v31;
  v66 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1609C();
  v42 = *(v35 + 8);
  v42(v37, v34);
  sub_1609C();
  return (v42)(v40, v34);
}

uint64_t sub_BB2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v68 = a1;
  v70 = a6;
  v73 = a2;
  v74 = a3;
  v66 = a3;
  v75 = a4;
  v76 = a5;
  v67 = a5;
  v64 = type metadata accessor for SummaryFrame(0, &v73);
  v63 = *(v64 - 8);
  v65 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = v53 - v16;
  v73 = a2;
  v74 = a3;
  v61 = a2;
  v75 = a4;
  v76 = a5;
  v60 = a4;
  v69 = type metadata accessor for SharableAsset(255, &v73);
  v17 = sub_2646F0();
  v71 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v18 = sub_261730();
  v86 = a4;
  v87 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v84 = WitnessTable;
  v85 = v20;
  v82 = swift_getWitnessTable();
  v83 = &protocol witness table for _ShadowEffect;
  v80 = swift_getWitnessTable();
  v81 = &protocol witness table for _ScaleEffect;
  v78 = swift_getWitnessTable();
  v79 = &protocol witness table for _FrameLayout;
  v21 = swift_getWitnessTable();
  v22 = sub_6EBA4();
  v73 = v18;
  v74 = &type metadata for CGFloat;
  v75 = v21;
  v76 = v22;
  swift_getOpaqueTypeMetadata2();
  v73 = v18;
  v74 = &type metadata for CGFloat;
  v75 = v21;
  v76 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_263300();
  v24 = swift_getWitnessTable();
  v73 = v23;
  v74 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53[2] = OpaqueTypeMetadata2;
  v53[3] = v17;
  v26 = swift_getWitnessTable();
  v53[1] = v26;
  v27 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v73 = v17;
  v74 = v71;
  v75 = OpaqueTypeMetadata2;
  v76 = v26;
  v77 = v27;
  v28 = sub_2633D0();
  v59 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v53 - v29;
  v73 = v23;
  v74 = v24;
  v53[0] = swift_getOpaqueTypeConformance2();
  v72 = v53[0];
  v31 = swift_getWitnessTable();
  v73 = v28;
  v74 = v31;
  v55 = v31;
  v58 = swift_getOpaqueTypeMetadata2();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v56 = v53 - v35;
  v36 = v64;
  v73 = *(v68 + *(v64 + 60));
  v37 = v63;
  v38 = v62;
  (*(v63 + 16))(v62, v34);
  v39 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v40 = (v65 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v66;
  *(v41 + 2) = v61;
  *(v41 + 3) = v42;
  v43 = v67;
  *(v41 + 4) = v60;
  *(v41 + 5) = v43;
  (*(v37 + 32))(&v41[v39], v38, v36);
  *&v41[v40] = a7;
  v44 = &v41[(v40 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v44 = a8;
  v44[1] = a9;

  swift_getWitnessTable();
  sub_2633C0();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v41) = sub_2624E0();
  *(inited + 32) = v41;
  v46 = sub_2624C0();
  *(inited + 33) = v46;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v41)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v46)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v47 = v54;
  v48 = v55;
  sub_262D00();
  (*(v59 + 8))(v30, v28);
  v73 = v28;
  v74 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v56;
  v50 = v58;
  sub_1609C();
  v51 = *(v57 + 8);
  v51(v47, v50);
  sub_1609C();
  return (v51)(v49, v50);
}

uint64_t sub_BBB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v37 = a6;
  v32 = a5;
  v36 = a4;
  v33 = a3;
  v34 = a2;
  v35 = a1;
  v38 = a7;
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v14 = sub_261730();
  v60 = a5;
  v61 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v59 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v56 = swift_getWitnessTable();
  v57 = &protocol witness table for _ShadowEffect;
  v54 = swift_getWitnessTable();
  v55 = &protocol witness table for _ScaleEffect;
  v52 = swift_getWitnessTable();
  v53 = &protocol witness table for _FrameLayout;
  v15 = swift_getWitnessTable();
  v16 = sub_6EBA4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = v14;
  v49 = &type metadata for CGFloat;
  v50 = v15;
  v51 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_263300();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &OpaqueTypeMetadata2 - v19;
  v21 = swift_getWitnessTable();
  v48 = v17;
  v49 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &OpaqueTypeMetadata2 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &OpaqueTypeMetadata2 - v27;
  sub_263560();
  v39 = v33;
  v40 = v36;
  v41 = v32;
  v42 = v37;
  v43 = v34;
  v44 = v35;
  v45 = a8;
  v46 = a9;
  v47 = a10;
  sub_2632F0();
  sub_2624E0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_262D00();
  (*(v18 + 8))(v20, v17);
  v48 = v17;
  v49 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1609C();
  v29 = *(v23 + 8);
  v29(v25, v22);
  sub_1609C();
  return (v29)(v28, v22);
}

uint64_t sub_BC040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v68 = a6;
  v69 = a4;
  v61 = a2;
  v63 = a1;
  v67 = a7;
  v80 = a3;
  v81 = a4;
  v82 = a5;
  v83 = a6;
  v60 = type metadata accessor for SummaryFrame(0, &v80);
  v65 = *(v60 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v60);
  v64 = &v47 - v12;
  v13 = a3;
  v48 = a3;
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  v14 = sub_261730();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_261730();
  v59 = *(v17 - 8);
  __chkstk_darwin(v17);
  v56 = &v47 - v18;
  *&v19 = COERCE_DOUBLE(sub_261730());
  v62 = *(v19 - 8);
  __chkstk_darwin(v19);
  v57 = &v47 - v20;
  v78 = a5;
  v79 = &protocol witness table for _FrameLayout;
  v47 = a5;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v76 = WitnessTable;
  v77 = v22;
  v74 = swift_getWitnessTable();
  v75 = &protocol witness table for _ShadowEffect;
  v49 = swift_getWitnessTable();
  v72 = v49;
  v73 = &protocol witness table for _ScaleEffect;
  v50 = swift_getWitnessTable();
  v70 = v50;
  v71 = &protocol witness table for _FrameLayout;
  v53 = v19;
  v23 = swift_getWitnessTable();
  v52 = v23;
  v51 = sub_6EBA4();
  v80 = *&v19;
  v81 = &type metadata for CGFloat;
  v82 = v23;
  v83 = v51;
  v54 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v47 - v28;
  v80 = v13;
  v81 = v69;
  v82 = a5;
  v83 = v68;
  type metadata accessor for SharableAsset(0, &v80);
  v30 = v60;
  v31 = v63;
  sub_BC7D4(v61, v60, v16);
  sub_263710();
  v32 = v56;
  sub_262AC0();
  (*(v58 + 8))(v16, v14);
  sub_263560();
  v33 = v57;
  sub_262DA0();
  (*(v59 + 8))(v32, v17);
  v80 = a8;
  v34 = v65;
  v35 = v64;
  v36 = v30;
  (*(v65 + 16))(v64, v31, v30);
  v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v38 = (v66 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v69;
  *(v39 + 2) = v48;
  *(v39 + 3) = v40;
  v41 = v68;
  *(v39 + 4) = v47;
  *(v39 + 5) = v41;
  (*(v34 + 32))(&v39[v37], v35, v36);
  *&v39[v38] = a8;
  v42 = *&v53;
  v43 = v52;
  v44 = v51;
  sub_262E60();

  (*(v62 + 8))(v33, COERCE_DOUBLE(*&v42));
  v80 = v42;
  v81 = &type metadata for CGFloat;
  v82 = v43;
  v83 = v44;
  swift_getOpaqueTypeConformance2();
  sub_1609C();
  v45 = *(v55 + 8);
  v45(v26, OpaqueTypeMetadata2);
  sub_1609C();
  return (v45)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_BC7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v43 = a3;
  v36 = sub_2617E0();
  __chkstk_darwin(v36);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = sub_261730();
  v40 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v32 - v11;
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  v38 = sub_261730();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = &v32 - v12;
  v13 = sub_261730();
  v42 = *(v13 - 8);
  __chkstk_darwin(v13);
  v37 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v39 = &v32 - v16;
  v17 = *(a2 + 24);
  v51[0] = v9;
  v51[1] = v17;
  v44 = *(a2 + 32);
  v52 = v44;
  type metadata accessor for SharableAsset(0, v51);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_262DA0();
  v18 = *(v5 + *(a2 + 72));
  v19 = *(v36 + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_261DD0();
  (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
  *v8 = v18;
  *(v8 + 1) = v18;
  v49 = v44;
  v50 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_C26FC(&qword_31BF78, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v23 = v34;
  v24 = v33;
  sub_262E90();
  sub_C2968(v8, &type metadata accessor for RoundedRectangle);
  (*(v40 + 8))(v24, v10);
  v25 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v47 = WitnessTable;
  v48 = v25;
  v26 = v38;
  v27 = swift_getWitnessTable();
  v28 = v37;
  sub_262DD0();
  (*(v41 + 8))(v23, v26);
  v45 = v27;
  v46 = &protocol witness table for _ShadowEffect;
  swift_getWitnessTable();
  v29 = v39;
  sub_1609C();
  v30 = *(v42 + 8);
  v30(v28, v13);
  sub_1609C();
  return (v30)(v29, v13);
}

uint64_t sub_BCD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v10 = type metadata accessor for SharableAsset(255, &v24);
  v11 = sub_264A60();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v24 = *(a1 + *(type metadata accessor for SummaryFrame(0, &v24) + 60));
  sub_2646F0();
  swift_getWitnessTable();
  sub_264880();
  v18 = *(v10 - 8);
  if ((*(v18 + 48))(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_2601E0();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {
    v20 = *(v10 + 60);
    v21 = sub_2601E0();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v17, &v14[v20], v21);
    (*(v18 + 8))(v14, v10);
    (*(v22 + 56))(v17, 0, 1, v21);
  }

  return sub_B536C(v17);
}

uint64_t sub_BD048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v44 = a6;
  v46 = a2;
  v47 = a3;
  v39 = a2;
  v40 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a4;
  v42 = a5;
  v13 = type metadata accessor for SummaryFrame(0, &v46);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v38 - v15;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v43 = type metadata accessor for SharableAsset(255, &v46);
  v17 = sub_2646F0();
  v18 = sub_2601E0();
  v38[3] = v18;
  v19 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v38[2] = v19;
  v20 = v17;
  v38[0] = v17;
  WitnessTable = swift_getWitnessTable();
  v38[1] = WitnessTable;
  v22 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v46 = v20;
  v47 = v18;
  v48 = v19;
  v49 = WitnessTable;
  v50 = v22;
  v23 = sub_2633D0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v30 = v38 - v29;
  v46 = *(a1 + *(v13 + 60));
  (*(v14 + 16))(v16, a1, v13, v28);
  v31 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v32 = swift_allocObject();
  v33 = v40;
  *(v32 + 16) = v39;
  *(v32 + 24) = v33;
  v34 = v42;
  *(v32 + 32) = v41;
  *(v32 + 40) = v34;
  *(v32 + 48) = a7;
  (*(v14 + 32))(v32 + v31, v16, v13);
  v35 = sub_BE388();

  swift_getWitnessTable();
  sub_2633C0();
  v45 = v35;
  swift_getWitnessTable();
  sub_1609C();
  v36 = *(v24 + 8);
  v36(v26, v23);
  sub_1609C();
  return (v36)(v30, v23);
}

void sub_BD3F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v41 = a6;
  v40 = a5;
  v44 = a2;
  v42 = a1;
  v43 = a7;
  v10 = sub_2601E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_31BF68, &qword_2721C0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v17 - 8);
  v45 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v51 = v56;
  v52 = a3;
  v50 = v57;
  v49 = v58;
  v48 = v59;
  v46 = v61;
  v47 = v60;
  v25 = v40;
  v53 = a4;
  v54 = v40;
  v26 = v41;
  v55 = v41;
  v27 = type metadata accessor for SharableAsset(0, &v52);
  (*(v11 + 16))(v24, v42 + *(v27 + 60), v10);
  (*(v11 + 56))(v24, 0, 1, v10);
  v52 = a3;
  v53 = a4;
  v28 = v11;
  v54 = v25;
  v55 = v26;
  type metadata accessor for SummaryFrame(0, &v52);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  sub_2631E0();
  v29 = *(v14 + 56);
  sub_8198(v24, v16, &qword_31A0C8, &qword_26E2C0);
  sub_8198(v21, &v16[v29], &qword_31A0C8, &qword_26E2C0);
  v30 = *(v11 + 48);
  if (v30(v16, 1, v10) == 1)
  {
    sub_8E80(v21, &qword_31A0C8, &qword_26E2C0);
    sub_8E80(v24, &qword_31A0C8, &qword_26E2C0);
    if (v30(&v16[v29], 1, v10) == 1)
    {
      sub_8E80(v16, &qword_31A0C8, &qword_26E2C0);
LABEL_9:
      v31 = sub_262F80();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_8198(v16, v45, &qword_31A0C8, &qword_26E2C0);
  if (v30(&v16[v29], 1, v10) == 1)
  {
    sub_8E80(v21, &qword_31A0C8, &qword_26E2C0);
    sub_8E80(v24, &qword_31A0C8, &qword_26E2C0);
    (*(v11 + 8))(v45, v10);
LABEL_6:
    sub_8E80(v16, &qword_31BF68, &qword_2721C0);
    goto LABEL_7;
  }

  v32 = &v16[v29];
  v33 = v39;
  (*(v11 + 32))(v39, v32, v10);
  sub_C26FC(&qword_31AD38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v34 = v45;
  v35 = sub_264390();
  v36 = *(v28 + 8);
  v36(v33, v10);
  sub_8E80(v21, &qword_31A0C8, &qword_26E2C0);
  sub_8E80(v24, &qword_31A0C8, &qword_26E2C0);
  v36(v34, v10);
  sub_8E80(v16, &qword_31A0C8, &qword_26E2C0);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_262F80();
  v31 = sub_263000();

LABEL_10:
  v37 = v43;
  *v43 = v51;
  *(v37 + 8) = v50;
  v37[2] = v49;
  *(v37 + 24) = v48;
  v38 = v46;
  v37[4] = v47;
  v37[5] = v38;
  v37[6] = v31;
}

void sub_BD99C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_32;
        }

        if (v3 >= v10)
        {
          goto LABEL_36;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = (v9 + (v11 << 7));
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[5];
        v41 = v12[4];
        v42 = v15;
        v39 = v13;
        v40 = v14;
        v16 = v12[6];
        v17 = v12[7];
        v18 = v12[9];
        v45 = v12[8];
        v46 = v18;
        v43 = v16;
        v44 = v17;
        if (v2)
        {
          sub_5757C(&v39, v38);
          v19 = v5;
          v20 = __OFSUB__(v2--, 1);
          if (v20)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v21 = v5[3];
          if (((v21 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_39;
          }

          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if (v22 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }

          sub_2EF0(&qword_317290, &qword_2697F0);
          v19 = swift_allocObject();
          v24 = j__malloc_size(v19);
          v25 = v24 - 32;
          if (v24 < 32)
          {
            v25 = v24 + 95;
          }

          v26 = v25 >> 7;
          v19[2] = v23;
          v19[3] = 2 * v26;
          v27 = v5[3] >> 1;
          v6 = &v19[16 * v27 + 4];
          v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v27;
          if (v5[2])
          {
            if (v19 >= v5 && v19 + 4 < &v5[16 * v27 + 4] && v19 == v5)
            {
              sub_5757C(&v39, v38);
            }

            else
            {
              sub_5757C(&v39, v38);
              memmove(v19 + 4, v5 + 4, v27 << 7);
            }

            v5[2] = 0;
          }

          else
          {
            sub_5757C(&v39, v38);
          }

          v20 = __OFSUB__(v28, 1);
          v2 = v28 - 1;
          if (v20)
          {
            goto LABEL_38;
          }
        }

        ++v11;
        v29 = v39;
        v30 = v40;
        v31 = v42;
        v6[2] = v41;
        v6[3] = v31;
        *v6 = v29;
        v6[1] = v30;
        v32 = v43;
        v33 = v44;
        v34 = v46;
        v6[6] = v45;
        v6[7] = v34;
        v6[4] = v32;
        v6[5] = v33;
        v6 += 8;
        v5 = v19;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_32:

  v35 = v5[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v20 = __OFSUB__(v36, v2);
    v37 = v36 - v2;
    if (v20)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v5[2] = v37;
  }
}

void sub_BDC14(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = sqrt(a1);
  v4 = (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  if ((v2 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v3 <= -2;
  if (__OFADD__(v3, 2))
  {
    __break(1u);
LABEL_9:
    if (!v4)
    {
      goto LABEL_15;
    }

    if (v3 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v3 >= 9.22337204e18)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v3, 1))
    {
LABEL_20:
      __break(1u);
    }
  }
}

unint64_t *sub_BDCD8(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v6 = a3 / a2 * 1.5 + -4.0;
    v37 = _swiftEmptyArrayStorage;
    sub_2DAC4(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v7 = a1 + 32;
    do
    {
      sub_30CC(v7, &v19);
      sub_30CC(&v19, &v29);
      CoverViewModel.CoverImageInfo.init(assetInfo:)(&v29, v27);
      sub_2E18(&v19, *(&v20 + 1));
      sub_260950();
      v33 = v27[4];
      v34 = v27[5];
      v35 = v27[6];
      *&v36 = v28;
      v29 = v27[0];
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      *(&v36 + 1) = v6 / v8;
      sub_230A8(&v29);
      sub_3080(&v19);
      v37 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_2DAC4((v9 > 1), v10 + 1, 1);
        v4 = v37;
      }

      v23 = v33;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v21 = v31;
      v22 = v32;
      v19 = v29;
      v11 = v29;
      v20 = v30;
      v4[2] = v10 + 1;
      v12 = &v4[16 * v10];
      v13 = v20;
      v14 = v22;
      v12[4] = v21;
      v12[5] = v14;
      v12[3] = v13;
      v15 = v23;
      v16 = v24;
      v17 = v26;
      v12[8] = v25;
      v12[9] = v17;
      v12[6] = v15;
      v12[7] = v16;
      v7 += 40;
      v12[2] = v11;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_BDE88(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_44:
    __break(1u);
    return;
  }

  if (a2)
  {
    sub_2EF0(&qword_31BEF0, &unk_289190);
    v4 = sub_2646C0();
    v4[2] = a2;
    memset_pattern16(v4 + 4, &off_306DA0, 8 * a2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v43 = *(a1 + 16);
  if (v43)
  {
    v5 = 0;
    v42 = a1 + 32;
    v6 = v4 + 4;
    while (1)
    {
      v7 = (v42 + (v5 << 7));
      v8 = v7[3];
      v48 = v7[2];
      v49 = v8;
      v9 = v7[7];
      v52 = v7[6];
      v53 = v9;
      v10 = v7[5];
      v50 = v7[4];
      v51 = v10;
      v11 = v7[1];
      v46 = *v7;
      v47 = v11;
      v12 = v4[2];
      if (v12)
      {
        break;
      }

      sub_5757C(&v46, __dst);
      v24 = _swiftEmptyArrayStorage[2];
      if (v24)
      {
        v14 = _swiftEmptyArrayStorage;
LABEL_26:
        v25 = v14[4];
        v26 = v24 - 1;
        if (v24 != 1)
        {
          v27 = v14 + 5;
          do
          {
            v28 = *v27++;
            v29 = v28;
            if (v28 < v25)
            {
              v25 = v29;
            }

            --v26;
          }

          while (v26);
        }

        v30 = 0;
        while (v14[v30 + 4] != v25)
        {
          if (v24 == ++v30)
          {

            sub_2F8C4(&v46);
            goto LABEL_8;
          }
        }

        if (v30 >= v4[2])
        {
          goto LABEL_43;
        }

        v31 = v6[v30];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[v30] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_E8F8C(0, *(v31 + 2) + 1, 1, v31);
          v6[v30] = v31;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        if (v34 >= v33 >> 1)
        {
          v31 = sub_E8F8C((v33 > 1), v34 + 1, 1, v31);
          v6[v30] = v31;
        }

        *(v31 + 2) = v34 + 1;
        v35 = &v31[128 * v34];
        v36 = v46;
        v37 = v47;
        v38 = v49;
        *(v35 + 4) = v48;
        *(v35 + 5) = v38;
        *(v35 + 2) = v36;
        *(v35 + 3) = v37;
        v39 = v50;
        v40 = v51;
        v41 = v53;
        *(v35 + 8) = v52;
        *(v35 + 9) = v41;
        *(v35 + 6) = v39;
        *(v35 + 7) = v40;
      }

      else
      {
        sub_2F8C4(&v46);
      }

LABEL_8:
      if (++v5 == v43)
      {
        return;
      }
    }

    sub_5757C(&v46, __dst);
    v45 = _swiftEmptyArrayStorage;
    sub_2DAE4(0, v12, 0);
    v13 = 0;
    v14 = v45;
    while (v13 < v4[2])
    {
      v15 = v6[v13];
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 32);
        v18 = 0.0;
        do
        {
          memmove(__dst, v17, 0x80uLL);
          v20 = sub_2F8B8(__dst);
          v21 = sub_2F950(__dst);
          if (v20)
          {
            v19 = 1.0;
            if (v20 != 1)
            {
              v19 = 0.641025641;
            }
          }

          else
          {
            v19 = *(v21 + 16);
          }

          v18 = v18 + 1.0 / v19;
          v17 += 128;
          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = 0.0;
      }

      v45 = v14;
      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_2DAE4((v22 > 1), v23 + 1, 1);
        v14 = v45;
      }

      ++v13;
      *(v14 + 2) = v24;
      v14[v23 + 4] = v18;
      if (v13 == v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

double sub_BE218(uint64_t a1, uint64_t a2, char a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_BE2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BE320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_BE388()
{
  result = qword_31BBB8;
  if (!qword_31BBB8)
  {
    sub_2F9C(&qword_31BBB0, &qword_271AD0);
    sub_BE440();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBB8);
  }

  return result;
}

unint64_t sub_BE440()
{
  result = qword_31BBC0;
  if (!qword_31BBC0)
  {
    sub_2F9C(&qword_31BBC8, &unk_271AD8);
    sub_BE4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBC0);
  }

  return result;
}

unint64_t sub_BE4CC()
{
  result = qword_31BBD0;
  if (!qword_31BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBD0);
  }

  return result;
}

unint64_t sub_BE520()
{
  result = qword_31BBE0;
  if (!qword_31BBE0)
  {
    sub_2F9C(&qword_31BBD8, &qword_271AE8);
    sub_2F9C(&qword_31BBE8, &qword_271AF0);
    sub_BE5E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBE0);
  }

  return result;
}

unint64_t sub_BE5E8()
{
  result = qword_31BBF0;
  if (!qword_31BBF0)
  {
    sub_2F9C(&qword_31BBE8, &qword_271AF0);
    sub_BE674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBF0);
  }

  return result;
}

unint64_t sub_BE674()
{
  result = qword_31BBF8;
  if (!qword_31BBF8)
  {
    sub_2F9C(&qword_31BC00, &qword_271AF8);
    sub_8E38(&qword_31BC08, &qword_31BC10, &unk_271B00, &protocol conformance descriptor for Label<A, B>);
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BBF8);
  }

  return result;
}

unint64_t sub_BE774()
{
  result = qword_31BC30;
  if (!qword_31BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BC30);
  }

  return result;
}

uint64_t sub_BE82C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_BE868(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_BE934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_BE97C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BE9F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316F78, &unk_269C60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_BEB40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316F78, &unk_269C60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_BEC7C(uint64_t a1)
{
  sub_BED48(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_BED48(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_BED48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_BEDB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_BEE70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_BEF14(uint64_t a1)
{
  result = sub_260550();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_BEF90(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_2601E0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_BF044(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v35 = *(a3 + 24);
  v8 = *(v35 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = sub_2601E0();
  v12 = *(v11 - 8);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v8 + 64) + v16;
  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v20 = ((v19 + ((v14 + v15 + ((v13 + 57) & ~v13)) & ~v15)) & ~v16) + *(*(v11 - 8) + 64);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_13;
  }

  v24 = ((a2 - v18 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

LABEL_21:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v26 = v20;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v18 + (v27 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if ((v17 & 0x80000000) == 0)
  {
    v28 = *(a1 + 1);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  v29 = (a1 + v13 + 57) & ~v13;
  if (v7 == v18)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v32 = v5;

    return v30(v29, v31, v32);
  }

  v29 = (v29 + v14 + v15) & ~v15;
  if (v9 == v18)
  {
    v30 = *(v8 + 48);
    v31 = v9;
    v32 = v35;

    return v30(v29, v31, v32);
  }

  v33 = *(v12 + 48);
  v34 = (v19 + v29) & ~v16;

  return v33(v34);
}

void sub_BF3C4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v35 = *(a4 + 24);
  v36 = *(a4 + 16);
  v7 = *(v36 - 8);
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v35 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = *(sub_2601E0() - 8);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v18 = *(v12 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = v16 + v17;
  v21 = ((v16 + v17 + ((v14 + v15 + ((v13 + 57) & ~v13)) & ~v15)) & ~v17) + *(v12 + 64);
  if (a3 <= v19)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v19 < a2)
  {
    v23 = ~v19 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_57:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
  }

  else if (v22)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 20) = 0u;
      *(a1 + 12) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 56) = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  v28 = (a1 + v13 + 57) & ~v13;
  if (v8 == v19)
  {
    v29 = *(v37 + 56);
    v30 = a2;
    v31 = v8;
    v32 = v36;

LABEL_46:
    v29(v28, v30, v31, v32);
    return;
  }

  v28 = (v28 + v14 + v15) & ~v15;
  if (v10 == v19)
  {
    v29 = *(v9 + 56);
    v30 = a2;
    v31 = v10;
    v32 = v35;

    goto LABEL_46;
  }

  v33 = *(v12 + 56);
  v34 = (v20 + v28) & ~v17;

  v33(v34, a2);
}

void sub_BF7DC(uint64_t a1)
{
  v2 = type metadata accessor for PageBackground(319);
  if (v3 <= 0x3F)
  {
    v16 = 0;
    v24 = v2;
    sub_BED48(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
    if (v5 <= 0x3F)
    {
      v17 = 0;
      v25 = v4;
      v6 = type metadata accessor for SummaryFrameViewModel(319);
      if (v7 <= 0x3F)
      {
        v18 = 0;
        v26 = v6;
        v8 = *(a1 + 32);
        v15[0] = *(a1 + 16);
        v15[1] = v8;
        type metadata accessor for SharableAsset(255, v15);
        v9 = sub_2646F0();
        if (v10 <= 0x3F)
        {
          v27 = v9;
          v28 = &type metadata for CGFloat;
          v19 = 0;
          v29 = &type metadata for CGFloat;
          v30 = &type metadata for CGFloat;
          v20 = 0;
          v21 = 0;
          v31 = &type metadata for CGFloat;
          v32 = &type metadata for CGFloat;
          v33 = &type metadata for Color;
          sub_BFCE8();
          if (v12 <= 0x3F)
          {
            v22 = 0;
            v34 = v11;
            sub_BFD38(319);
            if (v14 <= 0x3F)
            {
              v23 = 0;
              v35 = v13;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_BF92C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[13];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for SummaryFrameViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[15]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2EF0(qword_31BDE8, &qword_271EC8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[23];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_BFB14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[13];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for SummaryFrameViewModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[14];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v17 = sub_2EF0(qword_31BDE8, &qword_271EC8);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[23];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_BFCE8()
{
  if (!qword_317910)
  {
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_317910);
    }
  }
}

void sub_BFD38(uint64_t a1)
{
  if (!qword_31BE70)
  {
    sub_2F9C(&qword_31A0C8, &qword_26E2C0);
    v1 = sub_263210();
    if (!v2)
    {
      atomic_store(v1, &qword_31BE70);
    }
  }
}

uint64_t sub_BFDE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v47 = v3;
  v74 = sub_2F9C(&qword_31BBA8, &unk_271AC0);
  v49 = v1;
  v50 = v2;
  v51 = v4;
  v52 = v3;
  type metadata accessor for SharableAsset(255, &v49);
  v48 = sub_2646F0();
  v45 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v5 = sub_261730();
  v72 = v4;
  v73 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v7 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
  v70 = WitnessTable;
  v71 = v7;
  v68 = swift_getWitnessTable();
  v69 = &protocol witness table for _ShadowEffect;
  v66 = swift_getWitnessTable();
  v67 = &protocol witness table for _ScaleEffect;
  v64 = swift_getWitnessTable();
  v65 = &protocol witness table for _FrameLayout;
  v8 = swift_getWitnessTable();
  v9 = sub_6EBA4();
  v49 = v5;
  v50 = &type metadata for CGFloat;
  v51 = v8;
  v52 = v9;
  swift_getOpaqueTypeMetadata2();
  v49 = v5;
  v50 = &type metadata for CGFloat;
  v51 = v8;
  v52 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_263300();
  v11 = swift_getWitnessTable();
  v49 = v10;
  v50 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = swift_getWitnessTable();
  v13 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v49 = v48;
  v50 = v45;
  v51 = OpaqueTypeMetadata2;
  v52 = v46;
  v53 = v13;
  v14 = sub_2633D0();
  v49 = v10;
  v50 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v49 = v14;
  v50 = v15;
  swift_getOpaqueTypeMetadata2();
  v49 = v14;
  v50 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_2610F0();
  v17 = swift_getWitnessTable();
  v49 = v16;
  v50 = v17;
  swift_getOpaqueTypeMetadata2();
  v49 = v16;
  v50 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_261120();
  v19 = swift_getWitnessTable();
  v49 = v18;
  v50 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v49 = v18;
  v50 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v49 = v20;
  v50 = v45;
  v51 = v21;
  v52 = v13;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = sub_262490();
  v49 = v20;
  v50 = v45;
  v51 = v21;
  v52 = v13;
  v24 = swift_getOpaqueTypeConformance2();
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeMetadata2();
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v26 = swift_getOpaqueTypeConformance2();
  v49 = v25;
  v50 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v49 = v25;
  v50 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v49 = v27;
  v50 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_261730();
  v49 = v27;
  v50 = v28;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = &protocol witness table for _FlexFrameLayout;
  v59 = swift_getWitnessTable();
  v60 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v75 = sub_261560();
  v29 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v49 = v48;
  v50 = v45;
  v51 = v29;
  v52 = v46;
  v53 = v13;
  sub_2633D0();
  v58 = sub_BE388();
  swift_getWitnessTable();
  v76 = sub_263260();
  v30 = sub_264C30();
  v31 = sub_2F9C(&qword_31BBD8, &qword_271AE8);
  v32 = swift_getWitnessTable();
  v33 = sub_BE520();
  v49 = v30;
  v50 = &type metadata for Never;
  v51 = &type metadata for Never;
  v52 = v31;
  v53 = v32;
  v54 = &protocol witness table for Never;
  v55 = &protocol witness table for Never;
  v56 = v33;
  v57 = v47;
  v34 = sub_2636A0();
  v35 = sub_2623C0();
  v36 = swift_getWitnessTable();
  v37 = sub_C26FC(&qword_31BC18, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v52 = v37;
  swift_getOpaqueTypeMetadata2();
  sub_2F9C(&qword_31BC20, &unk_271B10);
  sub_261730();
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v38 = sub_261730();
  v39 = sub_2F9C(&qword_317960, &qword_269CF0);
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v52 = v37;
  swift_getOpaqueTypeConformance2();
  sub_8E38(&qword_31BC28, &qword_31BC20, &unk_271B10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v40 = swift_getWitnessTable();
  v41 = sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v49 = v38;
  v50 = v39;
  v51 = v40;
  v52 = v41;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v77 = sub_264A60();
  swift_getTupleTypeMetadata();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v42 = sub_261730();
  swift_getWitnessTable();
  sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v43 = swift_getWitnessTable();
  v49 = v42;
  v50 = v43;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C0828(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_C0874(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_C08E0()
{

  return swift_deallocObject();
}

unint64_t sub_C092C()
{
  result = qword_31BEB8;
  if (!qword_31BEB8)
  {
    sub_2F9C(&qword_31BEA8, &qword_271FD0);
    sub_C09B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BEB8);
  }

  return result;
}

unint64_t sub_C09B8()
{
  result = qword_31BEC0;
  if (!qword_31BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BEC0);
  }

  return result;
}

unint64_t sub_C0A0C()
{
  result = qword_31BEC8;
  if (!qword_31BEC8)
  {
    sub_2F9C(&qword_31BEB0, &qword_271FD8);
    sub_8E38(&qword_31BED0, &qword_31BED8, &qword_271FE0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BEC8);
  }

  return result;
}

unint64_t sub_C0AC8()
{
  result = qword_31BF08;
  if (!qword_31BF08)
  {
    sub_2F9C(&qword_31BEF8, &qword_272020);
    sub_C0B84();
    sub_C26FC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF08);
  }

  return result;
}

unint64_t sub_C0B84()
{
  result = qword_31BF10;
  if (!qword_31BF10)
  {
    sub_2F9C(&qword_31BF18, &qword_272028);
    sub_C0C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF10);
  }

  return result;
}

unint64_t sub_C0C10()
{
  result = qword_31BF20;
  if (!qword_31BF20)
  {
    sub_2F9C(&qword_31BF28, &qword_272030);
    sub_C26FC(&qword_317D60, type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF20);
  }

  return result;
}

uint64_t sub_C0CE4()
{
  v1 = type metadata accessor for ShareableAsset(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_BE218(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v1 + 20);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 24);
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_C0E98(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareableAsset(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_B2600(a1, v4);
}

uint64_t sub_C0F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for SummaryFrame(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_B80B8(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_C0FF4()
{
  result = qword_31BF40;
  if (!qword_31BF40)
  {
    sub_2F9C(&qword_31BBA8, &unk_271AC0);
    sub_C1080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF40);
  }

  return result;
}

unint64_t sub_C1080()
{
  result = qword_31BF48;
  if (!qword_31BF48)
  {
    sub_2F9C(&qword_31BF38, &unk_272170);
    sub_C26FC(&qword_31BF50, type metadata accessor for TextLockup, &unk_28406C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF48);
  }

  return result;
}

unint64_t sub_C113C()
{
  result = qword_31BF58;
  if (!qword_31BF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31BF58);
  }

  return result;
}

uint64_t sub_C11C0()
{
  v2 = *(v0 + 40);
  v10 = *(v0 + 16);
  v1 = v10;
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v2;
  v3 = (type metadata accessor for SharableAsset(0, &v10) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));

  v5 = sub_BE218(*(v4 + 16), *(v4 + 24), *(v4 + 32));
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1, v5);
  (*(*(v9 - 8) + 8))(v4 + v3[16]);
  v6 = v3[17];
  v7 = sub_2601E0();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  return swift_deallocObject();
}

uint64_t sub_C1344@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v11 = *(v1 + 2);
  v4 = v11;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v7 = *(*(type metadata accessor for SharableAsset(0, &v11) - 8) + 80);
  v11 = v4;
  v12 = v3;
  v8 = (v7 + 48) & ~v7;
  v13 = v5;
  v14 = v6;
  v9 = type metadata accessor for SharableAsset(0, &v11);
  return (*(*(v3 - 8) + 16))(a1, &v1[*(v9 + 56) + v8], v3);
}

uint64_t sub_C1454()
{
  v1 = *(v0 + 32);
  v20[0] = *(v0 + 16);
  v20[1] = v1;
  v2 = type metadata accessor for SummaryFrame(0, v20);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 56) & ~*(*(v2 - 1) + 80));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v8 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);
      v9 = sub_261180();
      (*(*(v9 - 8) + 8))(v3 + v8, v9);

      break;
    case 1:
      sub_57200(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
      break;
    case 0:

      v5 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v6 = sub_261180();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v3 + v5, 1, v6))
      {
        (*(v7 + 8))(v3 + v5, v6);
      }

      break;
  }

  v10 = v3 + v2[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v3 + v2[14];

  v14 = *(type metadata accessor for SummaryFrameViewModel(0) + 20);
  v15 = sub_260550();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  v16 = v3 + v2[23];
  v17 = sub_2601E0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_2EF0(qword_31BDE8, &qword_271EC8);

  return swift_deallocObject();
}

void sub_C1810(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for SummaryFrame(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80));

  sub_BD3F8(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_C18E8()
{
  v1 = *(v0 + 32);
  v20[0] = *(v0 + 16);
  v20[1] = v1;
  v2 = type metadata accessor for SummaryFrame(0, v20);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v8 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);
      v9 = sub_261180();
      (*(*(v9 - 8) + 8))(v3 + v8, v9);

      break;
    case 1:
      sub_57200(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
      break;
    case 0:

      v5 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v6 = sub_261180();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v3 + v5, 1, v6))
      {
        (*(v7 + 8))(v3 + v5, v6);
      }

      break;
  }

  v10 = v3 + v2[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v3 + v2[14];

  v14 = *(type metadata accessor for SummaryFrameViewModel(0) + 20);
  v15 = sub_260550();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  v16 = v3 + v2[23];
  v17 = sub_2601E0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_2EF0(qword_31BDE8, &qword_271EC8);

  return swift_deallocObject();
}

uint64_t sub_C1CA4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for SummaryFrame(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_BCD4C(v6, v1, v2, v3, v4);
}

uint64_t sub_C1D80()
{
  v1 = *(v0 + 32);
  v20[0] = *(v0 + 16);
  v20[1] = v1;
  v2 = type metadata accessor for SummaryFrame(0, v20);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v8 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);
      v9 = sub_261180();
      (*(*(v9 - 8) + 8))(v3 + v8, v9);

      break;
    case 1:
      sub_57200(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
      break;
    case 0:

      v5 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v6 = sub_261180();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v3 + v5, 1, v6))
      {
        (*(v7 + 8))(v3 + v5, v6);
      }

      break;
  }

  v10 = v3 + v2[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v3 + v2[14];

  v14 = *(type metadata accessor for SummaryFrameViewModel(0) + 20);
  v15 = sub_260550();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  v16 = v3 + v2[23];
  v17 = sub_2601E0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_2EF0(qword_31BDE8, &qword_271EC8);

  return swift_deallocObject();
}