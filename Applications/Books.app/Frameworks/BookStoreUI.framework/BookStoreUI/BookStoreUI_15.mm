Swift::Int sub_1FC870()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

double sub_1FC8F8(uint64_t a1)
{
  sub_2C5958();

  return result;
}

Swift::Int sub_1FC96C(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

void sub_1FC9F0(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389BB8;
  v7._object = v3;
  v5 = sub_2C63E8(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1FCA50(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1FCB14(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2C65B8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1FCBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_200030(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1FCBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_200030(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t Shelf.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_6620C(&qword_3C6648, &qword_2F4B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_72084(a1, a1[3]);
  sub_200030(v9, v10, v11);
  v12 = sub_2C67A8();
  if (!v2)
  {
    sub_200084(v12, v13, v14);
    sub_2C64A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  return sub_68CD0(a1);
}

uint64_t Shelf.itemKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf(0) + 24);
  v4 = sub_2C0AF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.shelfGridID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Shelf(0) + 40);

  return sub_68D34(v3, a1);
}

uint64_t Shelf.backgroundViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf(0) + 52);
  v4 = sub_2C1B98();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.headerComponentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf(0) + 56);
  v4 = sub_2C1D08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.headerComponentModel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shelf(0) + 56);
  v4 = sub_2C1D08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Shelf.footerComponentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Shelf(0) + 60);
  v4 = sub_2C1CB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Shelf.footerComponentModel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shelf(0) + 60);
  v4 = sub_2C1CB8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Shelf.items.getter()
{
  type metadata accessor for Shelf(0);
}

void Shelf.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Shelf(0) + 68);

  *(v1 + v3) = a1;
}

void *sub_1FD4F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_649F4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_691F8(i, v10);
      sub_6620C(&qword_3BC278, &qword_2E2F50);
      sub_6620C(&unk_3BC2B0, &qword_2E2F88);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_68D1C(v8, v11);
      sub_68D1C(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_649F4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_68D1C(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_69198(v8, &qword_3C68E0, &qword_2F5138);
    return 0;
  }

  return v3;
}

uint64_t sub_1FD6BC(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7265746F6F66;
      break;
    case 3:
      result = 0x726564616568;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x6973736572706D69;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x646E694B6D657469;
      break;
    case 8:
      result = 0x736D657469;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x6974616E69676170;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0x61746E6573657270;
      break;
    case 13:
      result = 0x446E6F6974636573;
      break;
    case 14:
      result = 0x697247666C656873;
      break;
    case 15:
      result = 0x69766944776F6873;
      break;
    case 16:
      result = 0x676E6963617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1FD900(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1FD6BC(*a1);
  v5 = v4;
  if (v3 == sub_1FD6BC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_1FD988()
{
  v1 = *v0;
  sub_2C6738();
  sub_1FD6BC(v1);
  sub_2C5958();

  return sub_2C6778();
}

double sub_1FD9EC(uint64_t a1)
{
  sub_1FD6BC(*v1);
  sub_2C5958();

  return result;
}

Swift::Int sub_1FDA40(uint64_t a1)
{
  v2 = *v1;
  sub_2C6738();
  sub_1FD6BC(v2);
  sub_2C5958();

  return sub_2C6778();
}

unint64_t sub_1FDAA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_201588(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1FDAD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1FD6BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1FDB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_201588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1FDB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2000D8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1FDB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2000D8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t Shelf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v3 = sub_6620C(&qword_3C6660, &qword_2F4B10);
  __chkstk_darwin(v3 - 8);
  v178 = &v168 - v4;
  v5 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v5 - 8);
  v179 = &v168 - v6;
  v7 = sub_6620C(&qword_3C6668, &qword_2F4B18);
  __chkstk_darwin(v7 - 8);
  v175 = &v168 - v8;
  v9 = sub_6620C(&qword_3C6670, &qword_2F4B20);
  __chkstk_darwin(v9 - 8);
  v177 = &v168 - v10;
  v11 = sub_2C1B98();
  v213 = *(v11 - 8);
  v214 = v11;
  __chkstk_darwin(v11);
  v176 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3C6678, &qword_2F4B28);
  __chkstk_darwin(v13 - 8);
  v181 = &v168 - v14;
  v15 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  __chkstk_darwin(v15 - 8);
  v174 = &v168 - v16;
  v17 = sub_6620C(&qword_3C6680, &qword_2F4B30);
  __chkstk_darwin(v17 - 8);
  v186 = &v168 - v18;
  v19 = sub_6620C(&qword_3C6688, &qword_2F4B38);
  __chkstk_darwin(v19 - 8);
  v183 = &v168 - v20;
  v21 = sub_2C1CB8();
  v215 = *(v21 - 8);
  v216 = v21;
  __chkstk_darwin(v21);
  v182 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3C6690, &qword_2F4B40);
  __chkstk_darwin(v23 - 8);
  v192 = &v168 - v24;
  v25 = sub_6620C(&qword_3C6698, &qword_2F4B48);
  __chkstk_darwin(v25 - 8);
  v188 = &v168 - v26;
  v27 = sub_2C1D08();
  v217 = *(v27 - 8);
  v218 = v27;
  __chkstk_darwin(v27);
  v187 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_6620C(&qword_3C66A0, &qword_2F4B50);
  __chkstk_darwin(v29 - 8);
  v194 = &v168 - v30;
  v31 = sub_6620C(&qword_3C1730, &unk_2EE740);
  __chkstk_darwin(v31 - 8);
  v193 = &v168 - v32;
  v33 = sub_6620C(&qword_3C0828, &qword_2FA350);
  __chkstk_darwin(v33 - 8);
  v196 = &v168 - v34;
  v35 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v35 - 8);
  v195 = &v168 - v36;
  v37 = sub_6620C(&qword_3C66A8, &qword_2F4B58);
  __chkstk_darwin(v37 - 8);
  v199 = &v168 - v38;
  v39 = sub_6620C(&qword_3C1C70, &unk_2EE730);
  __chkstk_darwin(v39 - 8);
  v197 = &v168 - v40;
  v41 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  __chkstk_darwin(v41 - 8);
  v201 = &v168 - v42;
  v203 = sub_2C49F8();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v198 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_6620C(&qword_3C2818, &qword_2EDE10);
  __chkstk_darwin(v44 - 8);
  v200 = &v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v204 = &v168 - v47;
  v205 = sub_6620C(&qword_3C66B0, &qword_2F4B60);
  __chkstk_darwin(v205);
  v206 = &v168 - v48;
  v49 = sub_2C0AF8();
  v50 = *(v49 - 8);
  v208 = v49;
  v209 = v50;
  __chkstk_darwin(v49);
  v207 = &v168 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_6620C(&qword_3C66B8, &qword_2F4B68);
  v53 = *(v52 - 8);
  v210 = v52;
  v211 = v53;
  __chkstk_darwin(v52);
  v55 = &v168 - v54;
  v56 = type metadata accessor for Shelf(0);
  __chkstk_darwin(v56);
  v58 = (&v168 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = *(v59 + 32);
  v61 = sub_2C5018();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v222 = v60;
  v191 = v61;
  v190 = v63;
  v189 = v62 + 56;
  (v63)(v58 + v60, 1, 1);
  v64 = v56[9];
  v65 = sub_2C22F8();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v221 = v64;
  v185 = v67;
  v184 = v66 + 56;
  v67(v58 + v64, 1, 1, v65);
  v68 = v56[16];
  v69 = type metadata accessor for ContentUnavailableComponentModel(0);
  v70 = *(v69 - 8);
  v71 = *(v70 + 56);
  v72 = v70 + 56;
  v219 = v68;
  v71(v58 + v68, 1, 1, v69);
  v224 = v56;
  v73 = v56[18];
  v74 = sub_2C0E58();
  v75 = *(*(v74 - 8) + 56);
  v223 = v73;
  v225 = v58;
  v75(v58 + v73, 1, 1, v74);
  v76 = a1[3];
  v220 = a1;
  v77 = sub_72084(a1, v76);
  sub_2000D8(v77, v78, v79);
  v212 = v55;
  v80 = v226;
  sub_2C67A8();
  if (v80)
  {
    v226 = v80;
    v84 = v224;
    v83 = v225;
    sub_68CD0(v220);
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
LABEL_4:
    v90 = 0;
    v91 = 0;
    goto LABEL_5;
  }

  v173 = v65;
  v170 = v72;
  v171 = v71;
  v172 = v69;
  LOBYTE(v227) = 4;
  v81 = v210;
  v82 = v212;
  v93 = sub_2C6468();
  v95 = v94;
  v83 = v225;
  *v225 = v93;
  v83[1] = v94;
  LOBYTE(v227) = 14;

  v96 = sub_2C6418();
  v84 = v224;
  v169 = 0;
  if (v97)
  {
    v93 = v96;
    v95 = v97;
  }

  v227 = v93;
  v228 = v95;
  sub_2C61A8();
  LOBYTE(v227) = 15;
  v98 = v169;
  v99 = sub_2C6428();
  v226 = v98;
  if (!v98)
  {
    *(v83 + v84[11]) = v99 & 1;
    v229 = 12;
    sub_20012C(v99, v100, v101);
    v103 = v226;
    sub_2C64A8();
    v226 = v103;
    v104 = v211;
    if (v103)
    {
      goto LABEL_35;
    }

    *(v83 + 16) = v227;
    LOBYTE(v227) = 7;
    sub_2006C0(&qword_3C66D0, &type metadata accessor for ShelfItemKind, &protocol conformance descriptor for ShelfItemKind);
    v105 = v207;
    v106 = v226;
    sub_2C64A8();
    v226 = v106;
    if (v106)
    {
      goto LABEL_35;
    }

    LOBYTE(v227) = 8;
    sub_200180();
    v107 = v206;
    v108 = v226;
    sub_2C64A8();
    v226 = v108;
    if (v108)
    {
      (*(v209 + 8))(v105, v208);
LABEL_35:
      (*(v104 + 8))(v82, v81);
      goto LABEL_36;
    }

    v109 = sub_2C1EF8();
    v110 = sub_2C1F08();
    (*(*(v110 - 8) + 8))(v107, v110);
    v111._rawValue = v109;
    v112 = v226;
    sub_2C0AB8(v111);
    v226 = v112;
    v113 = v209;
    if (v112)
    {

      (*(v113 + 8))(v207, v208);
      goto LABEL_35;
    }

    (*(v209 + 16))(v83 + v84[6], v207, v208);
    *(v83 + v84[17]) = v109;
    LOBYTE(v227) = 11;
    sub_2006C0(&qword_3C66E8, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
    v114 = v204;
    v115 = v203;
    v116 = v226;
    sub_2C6458();
    v226 = v116;
    if (v116)
    {
      v117 = v104;
      v102 = *(v113 + 8);
      v102(v207, v208);
      (*(v117 + 8))(v212, v81);
      sub_68CD0(v220);

      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
LABEL_28:
      v102(v83 + v84[6], v208);
      v90 = 1;
      v91 = 1;
      goto LABEL_5;
    }

    v118 = v200;
    sub_6932C(v114, v200, &qword_3C2818, &qword_2EDE10);
    v119 = v202;
    if ((*(v202 + 48))(v118, 1, v115) == 1)
    {
      sub_69198(v118, &qword_3C2818, &qword_2EDE10);
    }

    else
    {
      v120 = v118;
      v121 = *(v119 + 32);
      v122 = v198;
      v121(v198, v120, v115);
      v123 = v115;
      if ((sub_2C49D8() & 1) == 0)
      {
        v125 = (v83 + v84[19]);
        v125[3] = type metadata accessor for JSShelfPaginationIntentProvider(0);
        v125[4] = &protocol witness table for JSShelfPaginationIntentProvider;
        v126 = sub_720C8(v125);
        v121(v126, v122, v123);
LABEL_45:
        LOBYTE(v227) = 10;
        sub_2006C0(&qword_3C66F0, &type metadata accessor for PaginationInfo, &protocol conformance descriptor for PaginationInfo);
        v127 = v201;
        v128 = v212;
        v129 = v226;
        sub_2C6458();
        v226 = v129;
        if (v129)
        {
          sub_69198(v204, &qword_3C2818, &qword_2EDE10);
          v130 = v209;
          (*(v209 + 8))(v207, v208);
          (*(v211 + 8))(v128, v81);
          v89 = 0;
          v88 = 0;
          v87 = 0;
          v86 = 0;
          goto LABEL_64;
        }

        sub_A9708(v127, v83 + v223, &qword_3C2AC0, &unk_2EE760);
        v131 = sub_2C14E8();
        LOBYTE(v227) = 16;
        sub_2006C0(&qword_3C66F8, &type metadata accessor for CodeShelfGridSpacing, &protocol conformance descriptor for CodeShelfGridSpacing);
        v132 = v81;
        v133 = v226;
        sub_2C6458();
        v226 = v133;
        if (v133)
        {
          sub_69198(v204, &qword_3C2818, &qword_2EDE10);
          v130 = v209;
          (*(v209 + 8))(v207, v208);
          (*(v211 + 8))(v212, v81);
          v89 = 0;
          v88 = 0;
          v87 = 0;
          v86 = 0;
LABEL_63:
          v84 = v224;
          v83 = v225;
LABEL_64:
          v149 = v169;
          sub_68CD0(v220);

          if (v149)
          {
            v85 = 0;
            goto LABEL_4;
          }

          v102 = *(v130 + 8);
          v85 = 1;
          goto LABEL_28;
        }

        v134 = *(v131 - 8);
        if ((*(v134 + 48))(v199, 1, v131) == 1)
        {
          sub_69198(v199, &qword_3C66A8, &qword_2F4B58);
          v135 = 1;
        }

        else
        {
          v136 = v199;
          sub_2C14D8();
          (*(v134 + 8))(v136, v131);
          v135 = 0;
        }

        v137 = sub_2BFE68();
        v138 = v197;
        (*(*(v137 - 8) + 56))(v197, v135, 1, v137);
        sub_69130(v138, v225 + v224[12], &qword_3C1C70, &unk_2EE730);
        LOBYTE(v227) = 5;
        v139 = v226;
        v140 = sub_2C6428();
        v226 = v139;
        if (v139)
        {
          goto LABEL_62;
        }

        *(v225 + v224[7]) = (v140 == 2) | v140 & 1;
        v141 = sub_6620C(&qword_3BF898, &unk_2EA240);
        LOBYTE(v227) = 6;
        sub_200234(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
        v142 = v226;
        sub_2C6458();
        v226 = v142;
        if (v142)
        {
          goto LABEL_62;
        }

        if ((*(*(v141 - 8) + 48))(v196, 1, v141) == 1)
        {
          sub_69198(v196, &qword_3C0828, &qword_2FA350);
          v190(v195, 1, 1, v191);
        }

        else
        {
          v143 = v196;
          sub_6932C(v196, v195, &qword_3BDF58, &unk_2E5B70);
          sub_69198(v143, &qword_3BF898, &unk_2EA240);
        }

        sub_A9708(v195, v225 + v222, &qword_3BDF58, &unk_2E5B70);
        v144 = sub_6620C(&qword_3C5B98, &qword_2F38D8);
        LOBYTE(v227) = 9;
        sub_200234(&qword_3C5CA0, &qword_3C5B98, &qword_2F38D8, sub_1E5ACC);
        v145 = v226;
        sub_2C6458();
        v226 = v145;
        if (v145)
        {
          goto LABEL_62;
        }

        if ((*(*(v144 - 8) + 48))(v194, 1, v144) == 1)
        {
          sub_69198(v194, &qword_3C66A0, &qword_2F4B50);
          v185(v193, 1, 1, v173);
        }

        else
        {
          v146 = v194;
          sub_6932C(v194, v193, &qword_3C1730, &unk_2EE740);
          sub_69198(v146, &qword_3C5B98, &qword_2F38D8);
        }

        sub_A9708(v193, v225 + v221, &qword_3C1730, &unk_2EE740);
        v147 = sub_6620C(&qword_3C6700, &qword_2F4B70);
        LOBYTE(v227) = 3;
        sub_200234(&qword_3C6708, &qword_3C6700, &qword_2F4B70, sub_2002B0);
        v148 = v226;
        sub_2C6458();
        v226 = v148;
        if (v148)
        {
LABEL_62:
          sub_69198(v204, &qword_3C2818, &qword_2EDE10);
          v130 = v209;
          (*(v209 + 8))(v207, v208);
          (*(v211 + 8))(v212, v132);
          v88 = 0;
          v87 = 0;
          v86 = 0;
          v89 = 1;
          goto LABEL_63;
        }

        if ((*(*(v147 - 8) + 48))(v192, 1, v147) == 1)
        {
          sub_69198(v192, &qword_3C6690, &qword_2F4B40);
          (*(v217 + 56))(v188, 1, 1, v218);
        }

        else
        {
          v150 = v192;
          v151 = v188;
          sub_6932C(v192, v188, &qword_3C6698, &qword_2F4B48);
          sub_69198(v150, &qword_3C6700, &qword_2F4B70);
          if ((*(v217 + 48))(v151, 1, v218) != 1)
          {
            (*(v217 + 32))(v187, v188, v218);
            goto LABEL_71;
          }
        }

        sub_2C1CF8();
        if ((*(v217 + 48))(v188, 1, v218) != 1)
        {
          sub_69198(v188, &qword_3C6698, &qword_2F4B48);
        }

LABEL_71:
        (*(v217 + 32))(v225 + v224[14], v187, v218);
        v152 = sub_6620C(&qword_3C6720, &qword_2F4B78);
        LOBYTE(v227) = 2;
        sub_200234(&qword_3C6728, &qword_3C6720, &qword_2F4B78, sub_200364);
        v153 = v226;
        sub_2C6458();
        v226 = v153;
        if (v153)
        {
          sub_69198(v204, &qword_3C2818, &qword_2EDE10);
          v130 = v209;
          (*(v209 + 8))(v207, v208);
          (*(v211 + 8))(v212, v132);
          v88 = 0;
          v86 = 0;
          v89 = 1;
          v87 = 1;
          goto LABEL_63;
        }

        if ((*(*(v152 - 8) + 48))(v186, 1, v152) == 1)
        {
          sub_69198(v186, &qword_3C6680, &qword_2F4B30);
          (*(v215 + 56))(v183, 1, 1, v216);
        }

        else
        {
          v154 = v186;
          v155 = v183;
          sub_6932C(v186, v183, &qword_3C6688, &qword_2F4B38);
          sub_69198(v154, &qword_3C6720, &qword_2F4B78);
          if ((*(v215 + 48))(v155, 1, v216) != 1)
          {
            (*(v215 + 32))(v182, v183, v216);
            goto LABEL_79;
          }
        }

        sub_2C1CA8();
        if ((*(v215 + 48))(v183, 1, v216) != 1)
        {
          sub_69198(v183, &qword_3C6688, &qword_2F4B38);
        }

LABEL_79:
        (*(v215 + 32))(v225 + v224[15], v182, v216);
        v156 = sub_6620C(&qword_3C6740, &qword_2F4B80);
        LOBYTE(v227) = 1;
        sub_200234(&qword_3C6748, &qword_3C6740, &qword_2F4B80, sub_200418);
        v157 = v226;
        sub_2C6458();
        v226 = v157;
        if (v157)
        {
          goto LABEL_84;
        }

        if ((*(*(v156 - 8) + 48))(v181, 1, v156) == 1)
        {
          sub_69198(v181, &qword_3C6678, &qword_2F4B28);
          v171(v174, 1, 1, v172);
        }

        else
        {
          v158 = v181;
          sub_6932C(v181, v174, &qword_3C1A00, &unk_2EF540);
          sub_69198(v158, &qword_3C6740, &qword_2F4B80);
        }

        sub_A9708(v174, v225 + v219, &qword_3C1A00, &unk_2EF540);
        v159 = sub_6620C(&qword_3C6760, &qword_2F4B88);
        LOBYTE(v227) = 0;
        sub_200234(&qword_3C6768, &qword_3C6760, &qword_2F4B88, sub_2004CC);
        v160 = v226;
        sub_2C6458();
        v226 = v160;
        if (v160)
        {
LABEL_84:
          sub_69198(v204, &qword_3C2818, &qword_2EDE10);
          v130 = v209;
          (*(v209 + 8))(v207, v208);
          (*(v211 + 8))(v212, v132);
          v88 = 0;
          v89 = 1;
LABEL_85:
          v87 = 1;
          v86 = 1;
          goto LABEL_63;
        }

        if ((*(*(v159 - 8) + 48))(v175, 1, v159) == 1)
        {
          sub_69198(v175, &qword_3C6668, &qword_2F4B18);
          (*(v213 + 56))(v177, 1, 1, v214);
        }

        else
        {
          v161 = v175;
          v162 = v177;
          sub_6932C(v175, v177, &qword_3C6670, &qword_2F4B20);
          sub_69198(v161, &qword_3C6760, &qword_2F4B88);
          if ((*(v213 + 48))(v162, 1, v214) != 1)
          {
            (*(v213 + 32))(v176, v177, v214);
LABEL_92:
            (*(v213 + 32))(v225 + v224[13], v176, v214);
            v163 = sub_6620C(&qword_3BDFF0, &unk_2EF400);
            LOBYTE(v227) = 13;
            sub_200234(&qword_3C36C0, &qword_3BDFF0, &unk_2EF400, sub_16F428);
            v164 = v226;
            sub_2C6458();
            v226 = v164;
            if (!v164)
            {
              sub_69198(v204, &qword_3C2818, &qword_2EDE10);
              (*(v209 + 8))(v207, v208);
              (*(v211 + 8))(v212, v132);
              if ((*(*(v163 - 8) + 48))(v178, 1, v163) == 1)
              {
                sub_69198(v178, &qword_3C6660, &qword_2F4B10);
                v165 = sub_2BEA28();
                (*(*(v165 - 8) + 56))(v179, 1, 1, v165);
              }

              else
              {
                v166 = v178;
                sub_6932C(v178, v179, &qword_3BDE70, &qword_2E52F0);
                sub_69198(v166, &qword_3BDFF0, &unk_2EF400);
              }

              v167 = v225;
              sub_69130(v179, v225 + v224[20], &qword_3BDE70, &qword_2E52F0);
              sub_91560(v167, v180);
              sub_68CD0(v220);
              return sub_9160C(v167);
            }

            sub_69198(v204, &qword_3C2818, &qword_2EDE10);
            v130 = v209;
            (*(v209 + 8))(v207, v208);
            (*(v211 + 8))(v212, v132);
            v89 = 1;
            v88 = 1;
            goto LABEL_85;
          }
        }

        sub_2C1B88();
        if ((*(v213 + 48))(v177, 1, v214) != 1)
        {
          sub_69198(v177, &qword_3C6670, &qword_2F4B20);
        }

        goto LABEL_92;
      }

      (*(v202 + 8))(v122, v115);
    }

    v124 = v83 + v84[19];
    *(v124 + 4) = 0;
    *v124 = 0u;
    *(v124 + 1) = 0u;
    goto LABEL_45;
  }

  (*(v211 + 8))(v82, v81);
LABEL_36:
  sub_68CD0(v220);

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v91 = 0;
  v90 = 1;
LABEL_5:
  sub_69198(v83 + v222, &qword_3BDF58, &unk_2E5B70);
  sub_69198(v83 + v221, &qword_3C1730, &unk_2EE740);
  if (v90)
  {
    sub_68D90(v83 + v84[10]);
    if (!v89)
    {
LABEL_7:
      if (!v88)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if (!v89)
  {
    goto LABEL_7;
  }

  sub_69198(v83 + v84[12], &qword_3C1C70, &unk_2EE730);
  if (!v88)
  {
LABEL_8:
    if (!v87)
    {
      goto LABEL_9;
    }

LABEL_19:
    (*(v217 + 8))(v83 + v84[14], v218);
    if (!v86)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  (*(v213 + 8))(v83 + v84[13], v214);
  if (v87)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v86)
  {
LABEL_10:
    (*(v215 + 8))(v83 + v84[15], v216);
  }

LABEL_11:
  sub_69198(v83 + v219, &qword_3C1A00, &unk_2EF540);
  if (v91)
  {
  }

  result = sub_69198(v83 + v223, &qword_3C2AC0, &unk_2EE760);
  if (v85)
  {
    return sub_69198(v83 + v84[19], &qword_3C2AC8, &unk_2EE770);
  }

  return result;
}

unint64_t sub_200030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6650;
  if (!qword_3C6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6650);
  }

  return result;
}

unint64_t sub_200084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6658;
  if (!qword_3C6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6658);
  }

  return result;
}

unint64_t sub_2000D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C66C0;
  if (!qword_3C66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C66C0);
  }

  return result;
}

unint64_t sub_20012C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C66C8;
  if (!qword_3C66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C66C8);
  }

  return result;
}

unint64_t sub_200180()
{
  result = qword_3C66D8;
  if (!qword_3C66D8)
  {
    sub_718D4(&qword_3C66B0, &qword_2F4B60);
    sub_2006C0(&qword_3C66E0, &type metadata accessor for _CodeAnyComponentModel_Many, &protocol conformance descriptor for _CodeAnyComponentModel_Many);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C66D8);
  }

  return result;
}

uint64_t sub_200234(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2002B0()
{
  result = qword_3C6710;
  if (!qword_3C6710)
  {
    sub_718D4(&qword_3C6698, &qword_2F4B48);
    sub_2006C0(&qword_3C6718, &type metadata accessor for ShelfHeaderComponentModel, &protocol conformance descriptor for ShelfHeaderComponentModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6710);
  }

  return result;
}

unint64_t sub_200364()
{
  result = qword_3C6730;
  if (!qword_3C6730)
  {
    sub_718D4(&qword_3C6688, &qword_2F4B38);
    sub_2006C0(&qword_3C6738, &type metadata accessor for ShelfFooterComponentModel, &protocol conformance descriptor for ShelfFooterComponentModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6730);
  }

  return result;
}

unint64_t sub_200418()
{
  result = qword_3C6750;
  if (!qword_3C6750)
  {
    sub_718D4(&qword_3C1A00, &unk_2EF540);
    sub_2006C0(&qword_3C6758, type metadata accessor for ContentUnavailableComponentModel, &protocol conformance descriptor for ContentUnavailableComponentModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6750);
  }

  return result;
}

unint64_t sub_2004CC()
{
  result = qword_3C6770;
  if (!qword_3C6770)
  {
    sub_718D4(&qword_3C6670, &qword_2F4B20);
    sub_2006C0(&qword_3C6778, &type metadata accessor for ShelfBackgroundViewModel, &protocol conformance descriptor for ShelfBackgroundViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6770);
  }

  return result;
}

unint64_t sub_200584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6780;
  if (!qword_3C6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6780);
  }

  return result;
}

unint64_t sub_2005DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6788;
  if (!qword_3C6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6788);
  }

  return result;
}

uint64_t sub_2006C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20071C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2C0AF8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_23:
    v20 = *(v10 + 48);

    return v20(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_23;
  }

  v13 = sub_6620C(&qword_3C1730, &unk_2EE740);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_23;
  }

  v14 = sub_6620C(&qword_3C1C70, &unk_2EE730);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_23;
  }

  v15 = sub_2C1B98();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_23;
  }

  v16 = sub_2C1D08();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[14];
    goto LABEL_23;
  }

  v17 = sub_2C1CB8();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[15];
    goto LABEL_23;
  }

  v18 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a3[16];
    goto LABEL_23;
  }

  v19 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a3[18];
    goto LABEL_23;
  }

  v21 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[20];

  return v22(v23, a2, v21);
}

uint64_t sub_200ADC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2C0AF8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_21:
    v20 = *(v10 + 56);

    return v20(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_21;
  }

  v13 = sub_6620C(&qword_3C1730, &unk_2EE740);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_21;
  }

  v14 = sub_6620C(&qword_3C1C70, &unk_2EE730);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_21;
  }

  v15 = sub_2C1B98();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_21;
  }

  v16 = sub_2C1D08();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[14];
    goto LABEL_21;
  }

  v17 = sub_2C1CB8();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[15];
    goto LABEL_21;
  }

  v18 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[16];
    goto LABEL_21;
  }

  v19 = sub_6620C(&qword_3C2AC0, &unk_2EE760);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[18];
    goto LABEL_21;
  }

  v21 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  v22 = *(*(v21 - 8) + 56);
  v23 = v5 + a4[20];

  return v22(v23, a2, a2, v21);
}

void sub_200E88(uint64_t a1)
{
  sub_2C0AF8();
  if (v1 <= 0x3F)
  {
    sub_201194(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      sub_201194(319, &qword_3C6808, &type metadata accessor for Metrics.Location);
      if (v3 <= 0x3F)
      {
        sub_201194(319, &qword_3C6810, &type metadata accessor for ShelfGridSpacing);
        if (v4 <= 0x3F)
        {
          sub_2C1B98();
          if (v5 <= 0x3F)
          {
            sub_2C1D08();
            if (v6 <= 0x3F)
            {
              sub_2C1CB8();
              if (v7 <= 0x3F)
              {
                sub_201194(319, &qword_3C6818, type metadata accessor for ContentUnavailableComponentModel);
                if (v8 <= 0x3F)
                {
                  sub_201130(319, &qword_3C6820, &qword_3BC278, &qword_2E2F50, &type metadata accessor for Array);
                  if (v9 <= 0x3F)
                  {
                    sub_201194(319, &qword_3C6828, &type metadata accessor for PaginationInfo);
                    if (v10 <= 0x3F)
                    {
                      sub_201130(319, &qword_3C6830, &unk_3C6838, &qword_2F4E88, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_201194(319, &unk_3C1890, &type metadata accessor for SectionData);
                        if (v12 <= 0x3F)
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
}

void sub_201130(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_201194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C60B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Shelf.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Shelf.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68A8;
  if (!qword_3C68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68A8);
  }

  return result;
}

unint64_t sub_2013D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68B0;
  if (!qword_3C68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68B0);
  }

  return result;
}

unint64_t sub_20142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68B8;
  if (!qword_3C68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68B8);
  }

  return result;
}

unint64_t sub_201484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68C0;
  if (!qword_3C68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68C0);
  }

  return result;
}

unint64_t sub_2014DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68C8;
  if (!qword_3C68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68C8);
  }

  return result;
}

unint64_t sub_201534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68D0;
  if (!qword_3C68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68D0);
  }

  return result;
}

unint64_t sub_201588(uint64_t a1, uint64_t a2)
{
  v2 = sub_2C6628();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2015DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68D8;
  if (!qword_3C68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68D8);
  }

  return result;
}

uint64_t LinkData.init(actionOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v75 = sub_2C06E8();
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v79 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v73 - v5;
  v6 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  __chkstk_darwin(v6 - 8);
  v86 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v73 - v9;
  __chkstk_darwin(v10);
  v84 = &v73 - v11;
  __chkstk_darwin(v12);
  v83 = &v73 - v13;
  __chkstk_darwin(v14);
  v82 = &v73 - v15;
  __chkstk_darwin(v16);
  v81 = &v73 - v17;
  __chkstk_darwin(v18);
  v80 = &v73 - v19;
  __chkstk_darwin(v20);
  v77 = &v73 - v21;
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_2C0778();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2BEB28();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v90 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v74 = &v73 - v36;
  __chkstk_darwin(v37);
  v39 = &v73 - v38;
  sub_77D40(a1, v27);
  v88 = *(v29 + 48);
  v40 = v88(v27, 1, v28);
  v89 = v32;
  v92 = v29;
  v93 = v33;
  v91 = v39;
  if (v40 == 1)
  {
    sub_E05A4(v27);
    (*(v33 + 104))(v39, enum case for LinkActionType.unknown(_:), v32);
  }

  else
  {
    v73 = a1;
    (*(v29 + 32))(v31, v27, v28);
    sub_2C06F8();
    v41 = v76;
    v42 = v75;
    (*(v76 + 104))(v79, enum case for ActionOrigin.Kind.header(_:), v75);
    sub_92134();
    sub_2C5A88();
    v43 = v42;
    sub_2C5A88();
    v44 = &enum case for LinkActionType.titleClick(_:);
    if ((v96 != v94 || v97 != v95) && (sub_2C65B8() & 1) == 0)
    {
      v44 = &enum case for LinkActionType.click(_:);
    }

    v45 = *(v41 + 8);
    v45(v79, v43);
    v45(v78, v43);
    (*(v92 + 8))(v31, v28);

    v46 = *v44;
    v47 = v93;
    v48 = v74;
    v32 = v89;
    (*(v93 + 104))(v74, v46, v89);
    (*(v47 + 32))(v91, v48, v32);
    a1 = v73;
  }

  v49 = v88;
  sub_77D40(a1, v24);
  if (v49(v24, 1, v28) == 1)
  {
    sub_E05A4(v24);
    v50 = v92;
  }

  else
  {
    v51 = sub_2C0768();
    v53 = v52;
    v50 = v92;
    (*(v92 + 8))(v24, v28);
    v88 = v53;
    if (v53)
    {
      goto LABEL_12;
    }
  }

  v51 = 0;
  v88 = 0xE000000000000000;
LABEL_12:
  v54 = v85;
  v55 = v77;
  sub_77D40(a1, v77);
  v56 = v49(v55, 1, v28);
  v57 = v80;
  v85 = v51;
  if (v56 == 1)
  {
    sub_E05A4(v55);
    v78 = 0;
    v79 = 0;
    v58 = v50;
  }

  else
  {
    v59 = sub_2C06C8();
    v78 = v60;
    v79 = v59;
    v58 = v50;
    (*(v50 + 8))(v55, v28);
  }

  sub_77D40(a1, v57);
  if (v49(v57, 1, v28) == 1)
  {
    sub_E05A4(v57);
    v77 = 0;
    v76 = 0;
  }

  else
  {
    v77 = sub_2C0748();
    v76 = v61;
    (*(v58 + 8))(v57, v28);
  }

  (*(v93 + 16))(v90, v91, v32);
  v62 = v81;
  sub_77D40(a1, v81);
  if (v49(v62, 1, v28) == 1)
  {
    sub_E05A4(v62);
    v80 = 0;
    v75 = 0;
  }

  else
  {
    v80 = sub_2C0738();
    v75 = v63;
    (*(v58 + 8))(v62, v28);
  }

  v65 = v83;
  v64 = v84;
  v66 = v82;
  sub_77D40(a1, v82);
  if (v49(v66, 1, v28) == 1)
  {
    sub_E05A4(v66);
    v83 = 0;
    v84 = 0;
  }

  else
  {
    v67 = sub_2C0718();
    v83 = v68;
    v84 = v67;
    (*(v58 + 8))(v66, v28);
  }

  sub_77D40(a1, v65);
  if (v49(v65, 1, v28) == 1)
  {
    sub_E05A4(v65);
    v81 = 0;
    v82 = 0;
  }

  else
  {
    v69 = sub_2C06D8();
    v81 = v70;
    v82 = v69;
    (*(v58 + 8))(v65, v28);
  }

  sub_77D40(a1, v64);
  if (v49(v64, 1, v28) == 1)
  {
    sub_E05A4(v64);
  }

  else
  {
    sub_2C0728();
    (*(v58 + 8))(v64, v28);
  }

  sub_77D40(a1, v54);
  if (v49(v54, 1, v28) == 1)
  {
    sub_E05A4(v54);
  }

  else
  {
    sub_2C06B8();
    (*(v92 + 8))(v54, v28);
  }

  v71 = v86;
  sub_77D40(a1, v86);
  if (v49(v71, 1, v28) == 1)
  {
    sub_E05A4(v71);
  }

  else
  {
    sub_2C0708();
    (*(v92 + 8))(v71, v28);
  }

  sub_2BEF18();
  sub_E05A4(a1);
  return (*(v93 + 8))(v91, v89);
}

void sub_2020B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C68E8, &qword_2F5208);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  v9 = sub_72084(a1, a1[3]);
  sub_202464(v9, v10, v11);
  sub_2C67A8();
  if (v2)
  {
    sub_68CD0(a1);
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v16[0] = sub_2C6468();
    v16[1] = v12;
    LOBYTE(v14[0]) = 1;
    v16[2] = sub_2C6468();
    v16[3] = v13;
    sub_6620C(&qword_3C58B0, &qword_2F2ED0);
    v20 = 2;
    sub_2024B8();
    sub_2C64A8();
    (*(v6 + 8))(v8, v5);
    v17 = v14[0];
    v18 = v14[1];
    v19 = v15;
    sub_20251C(v16, a2);
    sub_68CD0(a1);
    sub_202554(v16);
  }
}

uint64_t sub_202334()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_20237C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20269C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2023A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_202464(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_2023E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_202464(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_20241C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2C65B8();
  }
}

unint64_t sub_202464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68F0;
  if (!qword_3C68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68F0);
  }

  return result;
}

unint64_t sub_2024B8()
{
  result = qword_3C58C8;
  if (!qword_3C58C8)
  {
    sub_718D4(&qword_3C58B0, &qword_2F2ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C58C8);
  }

  return result;
}

unint64_t sub_202598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C68F8;
  if (!qword_3C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C68F8);
  }

  return result;
}

unint64_t sub_2025F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6900;
  if (!qword_3C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6900);
  }

  return result;
}

unint64_t sub_202648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6908;
  if (!qword_3C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6908);
  }

  return result;
}

uint64_t sub_20269C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_2027B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_6620C(&qword_3BE400, &unk_2E5E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2028D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_6620C(&qword_3BE400, &unk_2E5E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for TextComponent(uint64_t a1)
{
  result = qword_3C6968;
  if (!qword_3C6968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_202A34(uint64_t a1)
{
  sub_202AF0(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_202AF0(319, &qword_3BE478, &type metadata accessor for FontConstants);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_202AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_202BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v48 = sub_6620C(&qword_3C69B0, &qword_2F53F0);
  __chkstk_darwin(v48);
  v35 = &v34 - v3;
  v45 = sub_6620C(&qword_3C69B8, &qword_2F53F8);
  __chkstk_darwin(v45);
  v47 = &v34 - v4;
  v46 = sub_2C2A58();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextComponentModel(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextComponent(0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&unk_3C43D0, &qword_2F1180);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v42 = sub_6620C(&qword_3C69C0, &qword_2F5400);
  v38 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v34 - v15;
  v44 = sub_6620C(&qword_3C69C8, &qword_2F5408);
  v17 = *(v44 - 8);
  __chkstk_darwin(v44);
  v19 = &v34 - v18;
  sub_6932C(a1 + 40, &v49, &qword_3BE370, &qword_2E7520);
  if (v51)
  {
    sub_693D0(&v49, v52);
    v20 = sub_2C24B8();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    sub_691F8(v52, &v49);
    sub_205364(v41, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextComponent);
    sub_205364(a1, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextComponentModel);
    v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v22 = (v10 + *(v37 + 80) + v21) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_20522C(v11, v23 + v21, type metadata accessor for TextComponent);
    sub_20522C(v8, v23 + v22, type metadata accessor for TextComponentModel);
    sub_204704();
    sub_2C0388();
    v24 = v39;
    sub_2C2A48();
    v25 = sub_72B74(&qword_3C69D0, &qword_3C69C0, &qword_2F5400, &protocol conformance descriptor for BooksActionButton<A>);
    v26 = sub_204D6C(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v27 = v42;
    v28 = v46;
    sub_2C3E38();
    (*(v40 + 8))(v24, v28);
    (*(v38 + 8))(v16, v27);
    v29 = v44;
    (*(v17 + 16))(v47, v19, v44);
    swift_storeEnumTagMultiPayload();
    *&v49 = v27;
    *(&v49 + 1) = v28;
    v50 = v25;
    v51 = v26;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    (*(v17 + 8))(v19, v29);
    return sub_68CD0(v52);
  }

  else
  {
    sub_69198(&v49, &unk_3BDC90, &unk_2E5620);
    v31 = v35;
    sub_203390(a1, v35);
    sub_204694(v31, v47);
    swift_storeEnumTagMultiPayload();
    v32 = sub_72B74(&qword_3C69D0, &qword_3C69C0, &qword_2F5400, &protocol conformance descriptor for BooksActionButton<A>);
    v33 = sub_204D6C(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v52[0] = v42;
    v52[1] = v46;
    v52[2] = v32;
    v52[3] = v33;
    swift_getOpaqueTypeConformance2();
    sub_204704();
    sub_2C33C8();
    return sub_69198(v31, &qword_3C69B0, &qword_2F53F0);
  }
}

uint64_t sub_203390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2C0D48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v129 = (&v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v126 - v8;
  v10 = type metadata accessor for _CodeImageScale_OrNil(0);
  __chkstk_darwin(v10 - 8);
  v151 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BEB68, &qword_2E72E8);
  __chkstk_darwin(v12 - 8);
  v152 = &v126 - v13;
  v14 = sub_2C42D8();
  *&v154 = *(v14 - 8);
  __chkstk_darwin(v14);
  v153 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BEA50, &qword_2E7290);
  __chkstk_darwin(v16 - 8);
  v18 = &v126 - v17;
  v139 = sub_2C3A18();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_6620C(&qword_3C6A60, &qword_2F5450);
  __chkstk_darwin(v133);
  v22 = &v126 - v21;
  v136 = sub_6620C(&qword_3C6A80, &qword_2F5458);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v130 = &v126 - v23;
  v132 = sub_6620C(&qword_3C6A50, &qword_2F5448);
  __chkstk_darwin(v132);
  v131 = &v126 - v24;
  v142 = sub_6620C(&qword_3C6A88, &qword_2F5460);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  *&v162 = &v126 - v25;
  v140 = sub_6620C(&qword_3C6A48, &qword_2F5440);
  __chkstk_darwin(v140);
  v144 = &v126 - v26;
  v143 = sub_6620C(&qword_3C6A38, &qword_2F5438);
  __chkstk_darwin(v143);
  v146 = &v126 - v27;
  v145 = sub_6620C(&qword_3C6A28, &qword_2F5430);
  __chkstk_darwin(v145);
  v148 = &v126 - v28;
  v147 = sub_6620C(&qword_3C6A18, &qword_2F5428);
  __chkstk_darwin(v147);
  v150 = &v126 - v29;
  v149 = sub_6620C(&qword_3C6A08, &qword_2F5420);
  __chkstk_darwin(v149);
  v155 = &v126 - v30;
  v157 = sub_6620C(&qword_3C69F8, &qword_2F5418);
  __chkstk_darwin(v157);
  v156 = &v126 - v31;
  v32 = sub_6620C(&qword_3C69E8, &qword_2F5410);
  __chkstk_darwin(v32 - 8);
  v163 = &v126 - v33;
  v134 = v22;
  sub_B6A68(v22);
  v34 = type metadata accessor for TextComponentModel(0);
  v37 = v34;
  v38 = (a1 + *(v34 + 32));
  v39 = v38[1];
  v164 = a1;
  v161 = a2;
  v160 = v4;
  v158 = v9;
  v138 = v39;
  if (v39)
  {
    v126 = v20;
    v127 = v14;
    v128 = v5;
    *&v169 = *v38;
    *(&v169 + 1) = v39;
    sub_7212C(v34, v35, v36);

    v40 = sub_2C3A48();
    v42 = v41;
    v44 = v43;
    sub_6932C(a1 + v37[15], v18, &qword_3BEA50, &qword_2E7290);
    v45 = sub_2C2368();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v18, 1, v45) == 1)
    {
      sub_69198(v18, &qword_3BEA50, &qword_2E7290);
    }

    else
    {
      sub_2C2358();
      (*(v46 + 8))(v18, v45);
      sub_2C3808();
    }

    v48 = sub_2C39E8();
    v50 = v49;
    v52 = v51;

    sub_72180(v40, v42, v44 & 1);

    LODWORD(v169) = sub_2C3538();
    v53 = sub_2C39A8();
    v55 = v54;
    v57 = v56;
    sub_72180(v48, v50, v52 & 1);

    v47 = v126;
    sub_2C3A08();
    sub_72180(v53, v55, v57 & 1);

    v5 = v128;
    a1 = v164;
    v14 = v127;
  }

  else
  {
    sub_2C39F8();
    v47 = v20;
  }

  v58 = v5;
  sub_204CB4();
  v59 = v130;
  v60 = v134;
  sub_2C3E28();
  (*(v137 + 8))(v47, v139);
  sub_69198(v60, &qword_3C6A60, &qword_2F5450);
  v61 = (a1 + v37[18]);
  v62 = *v61;
  v63 = *(v61 + 8);
  KeyPath = swift_getKeyPath();
  v65 = v131;
  (*(v135 + 32))(v131, v59, v136);
  v66 = v65 + *(v132 + 36);
  *v66 = KeyPath;
  *(v66 + 8) = v62;
  *(v66 + 16) = v63;
  v67 = v164;
  sub_204BC0();
  sub_2C3D58();
  sub_69198(v65, &qword_3C6A50, &qword_2F5448);
  v68 = v151;
  sub_205364(v67 + v37[12], v151, type metadata accessor for _CodeImageScale_OrNil);
  v69 = v152;
  sub_2053CC(v68, v152);
  v70 = v154;
  v71 = *(v154 + 48);
  if (v71(v69, 1, v14) == 1)
  {
    v72 = v153;
    (*(v70 + 104))(v153, enum case for Image.Scale.medium(_:), v14);
    if (v71(v69, 1, v14) != 1)
    {
      sub_69198(v69, &qword_3BEB68, &qword_2E72E8);
    }
  }

  else
  {
    v72 = v153;
    (*(v70 + 32))(v153, v69, v14);
  }

  v73 = swift_getKeyPath();
  v74 = v144;
  v75 = &v144[*(v140 + 36)];
  v76 = sub_6620C(&qword_3BD7E8, &qword_2E4500);
  (*(v70 + 32))(v75 + *(v76 + 28), v72, v14);
  *v75 = v73;
  (*(v141 + 32))(v74, v162, v142);
  v77 = sub_2C3768();
  v78 = *(v67 + v37[16] + 8);
  v79 = 0uLL;
  v162 = 0u;
  v80 = 0uLL;
  if ((v78 & 1) == 0)
  {
    sub_2C24D8();
    *(&v80 + 1) = v81;
    *(&v79 + 1) = v82;
  }

  v154 = v80;
  v159 = v79;
  v83 = v146;
  sub_69130(v74, v146, &qword_3C6A48, &qword_2F5440);
  v84 = v83 + *(v143 + 36);
  *v84 = v77;
  *(v84 + 24) = v154;
  *(v84 + 8) = v159;
  *(v84 + 40) = v78;
  v85 = sub_2C3778();
  v86 = *(v67 + v37[17] + 8);
  v87 = 0uLL;
  v88 = v58;
  v89 = v158;
  if ((v86 & 1) == 0)
  {
    sub_2C24D8();
    *(&v87 + 1) = v90;
    *(&v92 + 1) = v91;
    v162 = v92;
  }

  v159 = v87;
  v93 = v148;
  sub_69130(v83, v148, &qword_3C6A38, &qword_2F5438);
  v94 = v93 + *(v145 + 36);
  *v94 = v85;
  *(v94 + 24) = v159;
  *(v94 + 8) = v162;
  *(v94 + 40) = v86;
  v95 = sub_2C3788();
  sub_2C24D8();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v93;
  v105 = v150;
  sub_69130(v104, v150, &qword_3C6A28, &qword_2F5430);
  v106 = v105 + *(v147 + 36);
  *v106 = v95;
  *(v106 + 8) = v97;
  *(v106 + 16) = v99;
  *(v106 + 24) = v101;
  *(v106 + 32) = v103;
  *(v106 + 40) = 0;
  v107 = 1;
  sub_2C2AD8();
  v108 = v155;
  sub_69130(v105, v155, &qword_3C6A18, &qword_2F5428);
  v109 = (v108 + *(v149 + 36));
  v110 = v174;
  v109[4] = v173;
  v109[5] = v110;
  v109[6] = v175;
  v111 = v170;
  *v109 = v169;
  v109[1] = v111;
  v112 = v172;
  v109[2] = v171;
  v109[3] = v112;
  sub_2C46A8();
  v113 = sub_2C4678();
  v114 = v160;
  if ((v113 & 1) == 0)
  {
    sub_2C46B8();
    if (sub_2C4678())
    {
      v107 = 0;
    }

    else
    {
      sub_2C46C8();
      if (sub_2C4678())
      {
        v107 = 2;
      }

      else
      {
        v107 = 1;
      }
    }
  }

  v115 = swift_getKeyPath();
  v116 = v156;
  sub_69130(v108, v156, &qword_3C6A08, &qword_2F5420);
  v117 = v116 + *(v157 + 36);
  *v117 = v115;
  *(v117 + 8) = v107;
  sub_204878();
  sub_2C4048();
  sub_69198(v116, &qword_3C69F8, &qword_2F5418);
  v118 = v164 + v37[21];
  v119 = *(v118 + 8);
  if (!v119 || (v120 = *(v118 + 16), v165 = *v118, v166 = v119, v167 = v120, v168 = *(v118 + 24), sub_29A87C(v89), v121 = sub_147DBC(), (*(v88 + 8))(v89, v114), !v121))
  {
    v122 = v129;
    sub_29A87C(v129);

    v121 = sub_2C0D58();

    v123 = *(v88 + 8);
    v123(v122, v114);
    if (!v121)
    {
      sub_29A87C(v89);
      v121 = sub_2C0CB8();
      v123(v89, v114);
    }
  }

  v124 = v161;
  sub_69130(v163, v161, &qword_3C69E8, &qword_2F5410);
  result = sub_6620C(&qword_3C69B0, &qword_2F53F0);
  *(v124 + *(result + 36)) = v121;
  return result;
}

uint64_t sub_2044C8(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_205364(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextComponent);
  sub_204D6C(&qword_3C69A0, type metadata accessor for TextComponent, &unk_2F5384);
  return sub_2BFD18();
}

uint64_t sub_204694(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C69B0, &qword_2F53F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_204704()
{
  result = qword_3C69D8;
  if (!qword_3C69D8)
  {
    sub_718D4(&qword_3C69B0, &qword_2F53F0);
    sub_2047BC();
    sub_72B74(&qword_3C6A70, &qword_3C6A78, &unk_2F5AB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C69D8);
  }

  return result;
}

unint64_t sub_2047BC()
{
  result = qword_3C69E0;
  if (!qword_3C69E0)
  {
    sub_718D4(&qword_3C69E8, &qword_2F5410);
    sub_204878();
    sub_204D6C(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C69E0);
  }

  return result;
}

unint64_t sub_204878()
{
  result = qword_3C69F0;
  if (!qword_3C69F0)
  {
    sub_718D4(&qword_3C69F8, &qword_2F5418);
    sub_204930();
    sub_72B74(&qword_3BC978, &qword_3BC980, &qword_2E39E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C69F0);
  }

  return result;
}

unint64_t sub_204930()
{
  result = qword_3C6A00;
  if (!qword_3C6A00)
  {
    sub_718D4(&qword_3C6A08, &qword_2F5420);
    sub_204A18(&qword_3C6A10, &qword_3C6A18, &qword_2F5428, sub_2049E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A00);
  }

  return result;
}

uint64_t sub_204A18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_204ACC()
{
  result = qword_3C6A40;
  if (!qword_3C6A40)
  {
    sub_718D4(&qword_3C6A48, &qword_2F5440);
    sub_718D4(&qword_3C6A50, &qword_2F5448);
    sub_204BC0();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BD800, &qword_3BD7E8, &qword_2E4500, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A40);
  }

  return result;
}

unint64_t sub_204BC0()
{
  result = qword_3C6A58;
  if (!qword_3C6A58)
  {
    sub_718D4(&qword_3C6A50, &qword_2F5448);
    sub_718D4(&qword_3C6A60, &qword_2F5450);
    sub_204CB4();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BE160, &qword_3BE168, &unk_2E5718, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A58);
  }

  return result;
}

unint64_t sub_204CB4()
{
  result = qword_3C6A68;
  if (!qword_3C6A68)
  {
    sub_718D4(&qword_3C6A60, &qword_2F5450);
    sub_72B74(&qword_3BEC28, &qword_3BEC20, &qword_2E7458, &protocol conformance descriptor for Link<A>);
    sub_B9AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A68);
  }

  return result;
}

uint64_t sub_204D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_204DB4()
{
  v1 = type metadata accessor for TextComponent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for TextComponentModel(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v0 + v3;
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0D48();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  v11 = v7 & ~v6;
  v12 = *(v1 + 20);
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0978();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
  }

  v14 = v0 + v11;
  sub_68CD0((v0 + v11));
  if (*(v0 + v11 + 64))
  {
    sub_68CD0((v14 + 40));
  }

  v15 = v5[6];
  v16 = sub_2C5018();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v14 + v15, 1, v16))
  {
    (*(v17 + 8))(v14 + v15, v16);
  }

  v18 = v5[12];
  v19 = sub_2C42D8();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v14 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v21 = v5[15];
  v22 = sub_2C2368();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v14 + v21, 1, v22))
  {
    (*(v23 + 8))(v14 + v21, v22);
  }

  v24 = v5[20];
  v25 = sub_2C3308();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v14 + v24, 1, v25))
  {
    (*(v26 + 8))(v14 + v24, v25);
  }

  if (*(v14 + v5[21] + 8))
  {
  }

  return _swift_deallocObject(v0, v11 + v8, v2 | v6 | 7);
}

uint64_t sub_20522C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_205294@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextComponent(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TextComponentModel(0) - 8);
  return sub_203390(v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_205364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2053CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEB68, &qword_2E72E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_205450()
{
  result = qword_3C6A90;
  if (!qword_3C6A90)
  {
    sub_718D4(&qword_3C6A98, &qword_2F54F8);
    sub_718D4(&qword_3C69C0, &qword_2F5400);
    sub_2C2A58();
    sub_72B74(&qword_3C69D0, &qword_3C69C0, &qword_2F5400, &protocol conformance descriptor for BooksActionButton<A>);
    sub_204D6C(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_204704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A90);
  }

  return result;
}

uint64_t sub_2055F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[121] = a4;
  v4[120] = a3;
  v4[119] = a2;
  v4[118] = a1;
  v4[122] = *(type metadata accessor for ListItemComponentModel(0) - 8);
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  sub_6620C(&qword_3C2AC0, &unk_2EE760);
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  sub_6620C(&qword_3C3AC8, &qword_2EFEA8);
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v5 = sub_6620C(&qword_3C3AD0, &qword_2F55A0);
  v4[129] = v5;
  v4[130] = *(v5 - 8);
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v6 = sub_6620C(&qword_3C6AA0, &qword_2F55A8);
  v4[133] = v6;
  v4[134] = *(v6 - 8);
  v4[135] = swift_task_alloc();
  v7 = sub_6620C(&qword_3C6AA8, &unk_2F55B0);
  v4[136] = v7;
  v4[137] = *(v7 - 8);
  v4[138] = swift_task_alloc();
  v8 = sub_2C0E58();
  v4[139] = v8;
  v4[140] = *(v8 - 8);
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v9 = sub_2BF368();
  v4[144] = v9;
  v4[145] = *(v9 - 8);
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v10 = sub_6620C(&qword_3BDAC0, &unk_2E4D90);
  v11 = swift_task_alloc();
  v4[148] = v11;
  *v11 = v4;
  v11[1] = sub_2059CC;

  return BaseObjectGraph.inject<A>(_:)(v4 + 106, v10, v10);
}

uint64_t sub_2059CC()
{
  v2 = *v1;
  *(v2 + 1192) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_208DEC, 0, 0);
  }

  else
  {
    v3 = sub_6620C(&qword_3BD1F0, &unk_2F55C0);
    v4 = swift_task_alloc();
    *(v2 + 1200) = v4;
    *v4 = v2;
    v4[1] = sub_205B70;

    return BaseObjectGraph.inject<A>(_:)(v2 + 808, v3, v3);
  }
}

uint64_t sub_205B70()
{
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v2 = sub_208F28;
  }

  else
  {
    v2 = sub_205C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_205C84()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 952);
  sub_691F8(v4 + 16, v0 + 448);
  sub_72084((v4 + 16), *(v4 + 40));
  sub_2BF278();
  v5 = type metadata accessor for SeriesSeeAllPaginationIntent(0);
  *(v0 + 1216) = v5;
  v6 = *(v5 + 24);
  *(v0 + 1376) = v6;
  v7 = *(v2 + 16);
  *(v0 + 1224) = v7;
  *(v0 + 1232) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v3);
  v8 = (*(v2 + 88))(v1, v3);
  *(v0 + 1380) = v8;
  if (v8 == enum case for PaginationInfo.nextHref(_:))
  {
    v9 = *(v0 + 1144);
    (*(*(v0 + 1120) + 96))(v9, *(v0 + 1112));
    *(v0 + 1240) = *(v9 + 8);
    *(v0 + 1248) = *(v9 + 24);
    sub_2BF848();

    sub_2C1E28();
    v10 = *(v0 + 832);
    v11 = *(v0 + 840);
    sub_72084((v0 + 808), v10);
    v12 = swift_task_alloc();
    *(v0 + 1256) = v12;
    v13 = sub_72B74(&qword_3C6AC8, &qword_3C6AA8, &unk_2F55B0, &protocol conformance descriptor for PaginatedResourceSetIntent<A>);
    *v12 = v0;
    v12[1] = sub_206274;
    v14 = *(v0 + 1104);
    v15 = *(v0 + 1088);
    v16 = *(v0 + 1080);
    v17 = *(v0 + 960);

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v14, v17, v15, v13, v10, v11);
  }

  v18 = *(v0 + 1144);
  v19 = *(v0 + 1120);
  v20 = *(v0 + 1112);
  if (v8 == enum case for PaginationInfo.nextAssetIDs(_:))
  {
    v21 = *(v0 + 968);
    (*(v19 + 96))(*(v0 + 1144), *(v0 + 1112));
    v22 = *v18;
    *(v0 + 1312) = v22;
    if (v21 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = *(v0 + 968);
      v24 = *(v22 + 16);
      if (v24 >= v23)
      {
        v24 = *(v0 + 968);
      }

      v25 = 2 * v24;
      if (v23)
      {
        v20 = v25 + 1;
      }

      else
      {
        v20 = 1;
      }

      sub_2C6608();
      swift_unknownObjectRetain_n();

      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = v26[2];

      if (v27 == v20 >> 1)
      {
        v28 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v28)
        {
LABEL_18:
          *(v0 + 1320) = v28;
          v29 = *(v0 + 872);
          v30 = *(v0 + 880);
          sub_72084((v0 + 848), v29);
          *(v0 + 904) = 0;
          v37 = (*(v30 + 32) + **(v30 + 32));
          v31 = swift_task_alloc();
          *(v0 + 1328) = v31;
          *v31 = v0;
          v31[1] = sub_207068;

          return v37(v28, v0 + 904, v29, v30);
        }

        v28 = _swiftEmptyArrayStorage;
LABEL_17:
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    sub_20B468(v22, v22 + 32, 0, v20);
    v28 = v35;
    goto LABEL_17;
  }

  v32 = *(v0 + 944);
  v33 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  (*(v19 + 8))(v18, v20);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0((v0 + 448));
  sub_68CD0((v0 + 808));
  sub_68CD0((v0 + 848));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_206274()
{
  *(*v1 + 1264) = v0;

  if (v0)
  {

    v2 = sub_20906C;
  }

  else
  {
    v2 = sub_20639C;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_20639C()
{
  v1 = v0;
  v2 = v0[158];
  v3 = v0[147];
  v4 = sub_2C1578();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = sub_198678(sub_20B614, v5, v4);
  v0[159] = v6;
  v0[160] = v2;

  if (v6 >> 62)
  {
    v7 = sub_2C6398();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    result = sub_649D4(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v24 = v1;
    v9 = 0;
    v10 = v6;
    v11 = v6 & 0xC000000000000001;
    v12 = v6;
    do
    {
      if (v11)
      {
        v13 = sub_2C6208();
      }

      else
      {
        v13 = *(v10 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = sub_2BFAE8();
      v17 = v16;

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_649D4((v18 > 1), v19 + 1, 1);
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v19 + 1;
      v20 = &_swiftEmptyArrayStorage[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v10 = v12;
    }

    while (v7 != v9);
    v1 = v24;
  }

  v1[161] = _swiftEmptyArrayStorage;
  v21 = v1[109];
  v22 = v1[110];
  sub_72084(v1 + 106, v21);
  v1[117] = 0;
  v25 = (*(v22 + 32) + **(v22 + 32));
  v23 = swift_task_alloc();
  v1[162] = v23;
  *v23 = v1;
  v23[1] = sub_206648;

  return v25(_swiftEmptyArrayStorage, v1 + 117, v21, v22);
}

uint64_t sub_206648(uint64_t a1)
{
  *(*v1 + 1304) = a1;

  return _swift_task_switch(sub_206748, 0, 0);
}

void sub_206748()
{
  v1 = *(v0 + 1272);
  if (v1 >> 62)
  {
    v2 = sub_2C6398();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = (v0 + 768);
      v5 = *(v0 + 1272);
      v66 = v5 & 0xFFFFFFFFFFFFFF8;
      v68 = v5 & 0xC000000000000001;
      v6 = _swiftEmptyArrayStorage;
      v63 = v5 + 32;
      v71 = *(v0 + 1304);
      while (1)
      {
        if (v68)
        {
          v7 = sub_2C6208();
        }

        else
        {
          if (v3 >= *(v66 + 16))
          {
            goto LABEL_41;
          }

          v7 = *(v63 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v10 = sub_2BFAE8();
        if (*(v71 + 16))
        {
          v12 = v6;
          v13 = sub_5D228(v10, v11);
          v15 = v14;

          if (v15)
          {
            sub_691F8(*(v71 + 56) + 40 * v13, v0 + 768);
          }

          else
          {
            *(v0 + 800) = 0;
            *v4 = 0u;
            *(v0 + 784) = 0u;
          }

          v6 = v12;
        }

        else
        {

          *(v0 + 800) = 0;
          *v4 = 0u;
          *(v0 + 784) = 0u;
        }

        sub_2BF748();

        sub_69198(v0 + 768, &qword_3BDAE8, &unk_2E4DB0);
        if (*(v0 + 752))
        {
          sub_693D0((v0 + 728), v0 + 688);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_5C0E8(0, v6[2] + 1, 1, v6);
          }

          v17 = v6[2];
          v16 = v6[3];
          if (v17 >= v16 >> 1)
          {
            v6 = sub_5C0E8((v16 > 1), v17 + 1, 1, v6);
          }

          v6[2] = v17 + 1;
          sub_693D0((v0 + 688), &v6[5 * v17 + 4]);
        }

        else
        {
          sub_69198(v0 + 728, &unk_3C2550, &qword_2E4E40);
        }

        ++v3;
        if (v9 == v2)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_25:
  v18 = sub_1F9C0C(v6);
  v19 = swift_task_alloc();
  v72 = (v0 + 448);
  *(v19 + 16) = v0 + 448;
  sub_286E68(sub_20B630, v19, v18);
  v21 = v20;

  v22 = *(v21 + 16);
  v69 = v21;
  if (v22)
  {
    v23 = *(v0 + 976);

    sub_64BB4(0, v22, 0);
    v24 = 0;
    v25 = *(v21 + 16);
    v26 = v21 + 32;
    while (v25 != v24)
    {
      if (v24 >= *(v21 + 16))
      {
        goto LABEL_43;
      }

      v27 = *(v0 + 992);
      v28 = *(v0 + 952);
      sub_691F8(v26, v0 + 72);
      *(v0 + 112) = v24;
      sub_693D0((v0 + 72), v0 + 120);
      sub_20A754(v24, (v0 + 120), v72, v28, v27);
      sub_69198(v0 + 112, &unk_3BDC50, &unk_2E3000);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_64BB4((v29 > 1), v30 + 1, 1);
      }

      v31 = *(v0 + 992);
      ++v24;
      _swiftEmptyArrayStorage[2] = v30 + 1;
      sub_20B5B0(v31, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30);
      v26 += 40;
      v21 = v69;
      if (v22 == v24)
      {

        goto LABEL_33;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_33:
  v32 = *(v0 + 1224);
  v33 = *(v0 + 1376);
  v34 = *(v0 + 1136);
  v35 = *(v0 + 1112);
  v36 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);
  v32(v34, v36 + v33, v35);

  sub_2C1558();
  if (v37)
  {

    v38 = sub_2C1558();
    if (!v39)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v40 = v38;
    v41 = v39;
    v64 = *(v0 + 1380);
    v42 = *(v0 + 1120);
    v43 = *(v0 + 1112);
    v44 = *(v0 + 1008);

    *v44 = v40;
    v44[1] = v41;
    v44[2] = 0;
    v44[3] = 0;
    (*(v42 + 104))(v44, v64, v43);
    (*(v42 + 56))(v44, 0, 1, v43);
  }

  else
  {
    v45 = *(v0 + 1120);
    v46 = *(v0 + 1112);
    v47 = *(v0 + 1008);

    (*(v45 + 56))(v47, 1, 1, v46);
  }

  v48 = *(v0 + 1096);
  v67 = *(v0 + 1088);
  v70 = *(v0 + 1104);
  v65 = *(v0 + 1080);
  v49 = *(v0 + 1072);
  v50 = *(v0 + 1056);
  v51 = *(v0 + 1040);
  v61 = *(v0 + 1032);
  v62 = *(v0 + 1064);
  v52 = *(v0 + 1024);
  v53 = *(v0 + 944);
  sub_2C1108();
  v54 = sub_2C1128();
  (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0, &unk_2F55E0);
  v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2E3F30;
  (*(v51 + 32))(v56 + v55, v50, v61);
  (*(v49 + 8))(v65, v62);
  (*(v48 + 8))(v70, v67);
  *v53 = v56;
  v57 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v58 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v59 = *(v58 - 8);
  (*(v59 + 104))(v53, v57, v58);
  (*(v59 + 56))(v53, 0, 1, v58);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v72);
  sub_68CD0((v0 + 808));
  sub_68CD0((v0 + 848));

  v60 = *(v0 + 8);

  v60();
}

uint64_t sub_207068(uint64_t a1)
{
  *(*v1 + 1336) = a1;

  return _swift_task_switch(sub_207168, 0, 0);
}

uint64_t sub_207168()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  (*(v2 + 16))(v1, v0[147], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for SeriesType.audiobook(_:))
  {
    v5 = v0[165];
    v6 = v0[104];
    v7 = v0[105];
    sub_72084(v0 + 101, v6);
    v0[116] = v5;

    v8 = swift_task_alloc();
    v0[168] = v8;
    v9 = sub_6620C(&qword_3BDAF0, &unk_2E4DC0);
    v10 = sub_72B74(&qword_3BDAF8, &qword_3BDAF0, &unk_2E4DC0, &protocol conformance descriptor for StoreCatalogIntent<A>);
    *v8 = v0;
    v8[1] = sub_20748C;
    v11 = v0[120];
    v12 = v0 + 115;
    v13 = v0 + 116;
  }

  else
  {
    if (v4 != enum case for SeriesType.book(_:))
    {
      sub_2C61F8(22);

      v18._countAndFlagsBits = sub_2BF358();
      sub_2C5978(v18);

      return sub_2C6378();
    }

    v14 = v0[165];
    v6 = v0[104];
    v7 = v0[105];
    sub_72084(v0 + 101, v6);
    v0[111] = v14;

    v15 = swift_task_alloc();
    v0[170] = v15;
    v9 = sub_6620C(&qword_3BDAD8, &unk_2F55D0);
    v10 = sub_72B74(&qword_3BDAE0, &qword_3BDAD8, &unk_2F55D0, &protocol conformance descriptor for StoreCatalogIntent<A>);
    *v15 = v0;
    v15[1] = sub_20813C;
    v11 = v0[120];
    v12 = v0 + 112;
    v13 = v0 + 111;
  }

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v12, v13, v11, v9, v10, v6, v7);
}

uint64_t sub_20748C()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_209200;
  }

  else
  {

    v2 = sub_2075A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2075A8()
{
  v1 = *(v0 + 920);
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  sub_2C65F8();
  sub_2BF848();
  v2 = v1;
  while (1)
  {

    *(v0 + 912) = v2;
    sub_6620C(&qword_3C6AB8, &qword_2F55F0);
    sub_72B74(&qword_3C6AC0, &qword_3C6AB8, &qword_2F55F0, &protocol conformance descriptor for [A]);
    v3 = sub_2C5D28();

    v4 = *(v0 + 1320);
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (v2 >> 62)
    {
      v5 = sub_2C6398();
      if (!v5)
      {
LABEL_49:
        v8 = _swiftEmptyArrayStorage;
LABEL_50:

        goto LABEL_51;
      }
    }

    else
    {
      v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (!v5)
      {
        goto LABEL_49;
      }
    }

    v6 = 0;
    v7 = (v0 + 648);
    v78 = *(v0 + 1336);
    v75 = v2 & 0xFFFFFFFFFFFFFF8;
    v76 = v2 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v76)
      {
        v9 = sub_2C6208();
      }

      else
      {
        if (v6 >= *(v75 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(v2 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = sub_2BFAE8();
      if (*(v78 + 16))
      {
        v14 = v8;
        v15 = v5;
        v16 = v2;
        v17 = sub_5D228(v12, v13);
        v19 = v18;

        if (v19)
        {
          sub_691F8(*(v78 + 56) + 40 * v17, v0 + 648);
        }

        else
        {
          *(v0 + 680) = 0;
          *v7 = 0u;
          *(v0 + 664) = 0u;
        }

        v2 = v16;
        v5 = v15;
        v8 = v14;
        v11 = v6 + 1;
      }

      else
      {

        *(v0 + 680) = 0;
        *v7 = 0u;
        *(v0 + 664) = 0u;
      }

      sub_2BF748();

      sub_69198(v0 + 648, &qword_3BDAE8, &unk_2E4DB0);
      if (*(v0 + 632))
      {
        sub_693D0((v0 + 608), v0 + 568);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_5C0E8((v20 > 1), v21 + 1, 1, v8);
        }

        v8[2] = v21 + 1;
        sub_693D0((v0 + 568), &v8[5 * v21 + 4]);
      }

      else
      {
        sub_69198(v0 + 608, &unk_3C2550, &qword_2E4E40);
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_50;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_2BF848();

    v2 = sub_2C6388();
  }

  v79 = *(v4 + 16);
  if (v79)
  {
    v22 = 0;
    v8 = _swiftEmptyArrayStorage;
    v23 = (*(v0 + 1320) + 40);
    v24 = *(v0 + 1336);
    while (1)
    {
      if (v22 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (!*(v24 + 16))
      {
        goto LABEL_29;
      }

      v25 = *(v23 - 1);
      v26 = *v23;

      v27 = sub_5D228(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      sub_691F8(*(v24 + 56) + 40 * v27, v0 + 488);
      result = sub_20B540(v0 + 488, v0 + 528);
      if (!*(v0 + 552))
      {
        __break(1u);
        return result;
      }

      sub_2BF758();

      sub_69198(v0 + 488, &qword_3BDAE8, &unk_2E4DB0);
      sub_68CD0((v0 + 528));
      if (*(v0 + 232))
      {
        sub_693D0((v0 + 208), v0 + 408);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v31 = v8[2];
        v30 = v8[3];
        if (v31 >= v30 >> 1)
        {
          v8 = sub_5C0E8((v30 > 1), v31 + 1, 1, v8);
        }

        v8[2] = v31 + 1;
        sub_693D0((v0 + 408), &v8[5 * v31 + 4]);
        goto LABEL_31;
      }

LABEL_30:
      sub_69198(v0 + 208, &unk_3C2550, &qword_2E4E40);
LABEL_31:
      ++v22;
      v23 += 2;
      if (v79 == v22)
      {
        goto LABEL_43;
      }
    }

LABEL_29:
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    sub_69198(v0 + 488, &qword_3BDAE8, &unk_2E4DB0);
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    goto LABEL_30;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_43:

LABEL_51:
  v32 = v0 + 448;
  v33 = swift_task_alloc();
  v80 = (v0 + 448);
  *(v33 + 16) = v0 + 448;
  sub_286E68(sub_20B6F4, v33, v8);
  v35 = v34;

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = *(v0 + 976);
    sub_64BB4(0, v36, 0);
    v38 = 0;
    v39 = *(v35 + 16);
    v40 = v35 + 32;
    while (v39 != v38)
    {
      if (v38 >= *(v35 + 16))
      {
        goto LABEL_77;
      }

      v41 = *(v0 + 984);
      v42 = *(v0 + 952);
      sub_691F8(v40, v0 + 24);
      *(v0 + 160) = v38;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v38, (v0 + 168), v80, v42, v41);
      sub_69198(v0 + 160, &unk_3BDC50, &unk_2E3000);
      v32 = _swiftEmptyArrayStorage[2];
      v43 = _swiftEmptyArrayStorage[3];
      if (v32 >= v43 >> 1)
      {
        sub_64BB4((v43 > 1), v32 + 1, 1);
      }

      v44 = *(v0 + 984);
      ++v38;
      _swiftEmptyArrayStorage[2] = v32 + 1;
      sub_20B5B0(v44, _swiftEmptyArrayStorage + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32);
      v40 += 40;
      if (v36 == v38)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_58:

  v45 = *(v0 + 1312);
  v46 = *(v0 + 968);
  v32 = *(v45 + 16);
  if (v32 >= v46)
  {
    v47 = *(v0 + 968);
  }

  else
  {
    v47 = *(v45 + 16);
  }

  if (v46)
  {
    v35 = v47;
  }

  else
  {
    v35 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = _swiftEmptyArrayStorage;
  }

  v49 = v48[2];

  v40 = *(v0 + 1312);
  if (v49 != v32 - v35)
  {
LABEL_78:
    swift_unknownObjectRelease();
    sub_20B468(v40, v40 + 32, v35, (2 * v32) | 1);
    v50 = v74;
    goto LABEL_69;
  }

  v50 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v50)
  {
    v50 = _swiftEmptyArrayStorage;
LABEL_69:
    swift_unknownObjectRelease();
  }

  v51 = *(v0 + 1224);
  v52 = *(v0 + 1376);
  v53 = *(v0 + 1128);
  v54 = *(v0 + 1112);
  v55 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v51(v53, v55 + v52, v54);
  if (v50[2])
  {
    v56 = *(v0 + 1380);
    v57 = *(v0 + 1120);
    v58 = *(v0 + 1112);
    v59 = *(v0 + 1000);
    *v59 = v50;
    (*(v57 + 104))(v59, v56, v58);
    (*(v57 + 56))(v59, 0, 1, v58);
  }

  else
  {
    v60 = *(v0 + 1120);
    v61 = *(v0 + 1112);
    v62 = *(v0 + 1000);

    (*(v60 + 56))(v62, 1, 1, v61);
  }

  v63 = *(v0 + 1048);
  v64 = *(v0 + 1040);
  v77 = *(v0 + 1032);
  v65 = *(v0 + 1016);
  v66 = *(v0 + 944);
  sub_2C1108();
  v67 = sub_2C1128();
  (*(*(v67 - 8) + 56))(v65, 0, 1, v67);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0, &unk_2F55E0);
  v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2E3F30;
  (*(v64 + 32))(v69 + v68, v63, v77);
  *v66 = v69;
  v70 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v71 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v72 = *(v71 - 8);
  (*(v72 + 104))(v66, v70, v71);
  (*(v72 + 56))(v66, 0, 1, v71);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v80);
  sub_68CD0((v0 + 808));
  sub_68CD0((v0 + 848));

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_20813C()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_209BA4;
  }

  else
  {

    v2 = sub_208258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_208258()
{
  v1 = *(v0 + 896);
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  sub_2C65F8();
  sub_2BF848();
  v2 = v1;
  while (1)
  {

    *(v0 + 912) = v2;
    sub_6620C(&qword_3C6AB8, &qword_2F55F0);
    sub_72B74(&qword_3C6AC0, &qword_3C6AB8, &qword_2F55F0, &protocol conformance descriptor for [A]);
    v3 = sub_2C5D28();

    v4 = *(v0 + 1320);
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (v2 >> 62)
    {
      v5 = sub_2C6398();
      if (!v5)
      {
LABEL_49:
        v8 = _swiftEmptyArrayStorage;
LABEL_50:

        goto LABEL_51;
      }
    }

    else
    {
      v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (!v5)
      {
        goto LABEL_49;
      }
    }

    v6 = 0;
    v7 = (v0 + 648);
    v78 = *(v0 + 1336);
    v75 = v2 & 0xFFFFFFFFFFFFFF8;
    v76 = v2 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v76)
      {
        v9 = sub_2C6208();
      }

      else
      {
        if (v6 >= *(v75 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(v2 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = sub_2BFAE8();
      if (*(v78 + 16))
      {
        v14 = v8;
        v15 = v5;
        v16 = v2;
        v17 = sub_5D228(v12, v13);
        v19 = v18;

        if (v19)
        {
          sub_691F8(*(v78 + 56) + 40 * v17, v0 + 648);
        }

        else
        {
          *(v0 + 680) = 0;
          *v7 = 0u;
          *(v0 + 664) = 0u;
        }

        v2 = v16;
        v5 = v15;
        v8 = v14;
        v11 = v6 + 1;
      }

      else
      {

        *(v0 + 680) = 0;
        *v7 = 0u;
        *(v0 + 664) = 0u;
      }

      sub_2BF748();

      sub_69198(v0 + 648, &qword_3BDAE8, &unk_2E4DB0);
      if (*(v0 + 632))
      {
        sub_693D0((v0 + 608), v0 + 568);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_5C0E8((v20 > 1), v21 + 1, 1, v8);
        }

        v8[2] = v21 + 1;
        sub_693D0((v0 + 568), &v8[5 * v21 + 4]);
      }

      else
      {
        sub_69198(v0 + 608, &unk_3C2550, &qword_2E4E40);
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_50;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_2BF848();

    v2 = sub_2C6388();
  }

  v79 = *(v4 + 16);
  if (v79)
  {
    v22 = 0;
    v8 = _swiftEmptyArrayStorage;
    v23 = (*(v0 + 1320) + 40);
    v24 = *(v0 + 1336);
    while (1)
    {
      if (v22 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (!*(v24 + 16))
      {
        goto LABEL_29;
      }

      v25 = *(v23 - 1);
      v26 = *v23;

      v27 = sub_5D228(v25, v26);
      if ((v28 & 1) == 0)
      {
        break;
      }

      sub_691F8(*(v24 + 56) + 40 * v27, v0 + 488);
      result = sub_20B540(v0 + 488, v0 + 528);
      if (!*(v0 + 552))
      {
        __break(1u);
        return result;
      }

      sub_2BF758();

      sub_69198(v0 + 488, &qword_3BDAE8, &unk_2E4DB0);
      sub_68CD0((v0 + 528));
      if (*(v0 + 232))
      {
        sub_693D0((v0 + 208), v0 + 408);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5C0E8(0, v8[2] + 1, 1, v8);
        }

        v31 = v8[2];
        v30 = v8[3];
        if (v31 >= v30 >> 1)
        {
          v8 = sub_5C0E8((v30 > 1), v31 + 1, 1, v8);
        }

        v8[2] = v31 + 1;
        sub_693D0((v0 + 408), &v8[5 * v31 + 4]);
        goto LABEL_31;
      }

LABEL_30:
      sub_69198(v0 + 208, &unk_3C2550, &qword_2E4E40);
LABEL_31:
      ++v22;
      v23 += 2;
      if (v79 == v22)
      {
        goto LABEL_43;
      }
    }

LABEL_29:
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    sub_69198(v0 + 488, &qword_3BDAE8, &unk_2E4DB0);
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    goto LABEL_30;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_43:

LABEL_51:
  v32 = v0 + 448;
  v33 = swift_task_alloc();
  v80 = (v0 + 448);
  *(v33 + 16) = v0 + 448;
  sub_286E68(sub_20B6F4, v33, v8);
  v35 = v34;

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = *(v0 + 976);
    sub_64BB4(0, v36, 0);
    v38 = 0;
    v39 = *(v35 + 16);
    v40 = v35 + 32;
    while (v39 != v38)
    {
      if (v38 >= *(v35 + 16))
      {
        goto LABEL_77;
      }

      v41 = *(v0 + 984);
      v42 = *(v0 + 952);
      sub_691F8(v40, v0 + 24);
      *(v0 + 160) = v38;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v38, (v0 + 168), v80, v42, v41);
      sub_69198(v0 + 160, &unk_3BDC50, &unk_2E3000);
      v32 = _swiftEmptyArrayStorage[2];
      v43 = _swiftEmptyArrayStorage[3];
      if (v32 >= v43 >> 1)
      {
        sub_64BB4((v43 > 1), v32 + 1, 1);
      }

      v44 = *(v0 + 984);
      ++v38;
      _swiftEmptyArrayStorage[2] = v32 + 1;
      sub_20B5B0(v44, _swiftEmptyArrayStorage + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32);
      v40 += 40;
      if (v36 == v38)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_58:

  v45 = *(v0 + 1312);
  v46 = *(v0 + 968);
  v32 = *(v45 + 16);
  if (v32 >= v46)
  {
    v47 = *(v0 + 968);
  }

  else
  {
    v47 = *(v45 + 16);
  }

  if (v46)
  {
    v35 = v47;
  }

  else
  {
    v35 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = _swiftEmptyArrayStorage;
  }

  v49 = v48[2];

  v40 = *(v0 + 1312);
  if (v49 != v32 - v35)
  {
LABEL_78:
    swift_unknownObjectRelease();
    sub_20B468(v40, v40 + 32, v35, (2 * v32) | 1);
    v50 = v74;
    goto LABEL_69;
  }

  v50 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v50)
  {
    v50 = _swiftEmptyArrayStorage;
LABEL_69:
    swift_unknownObjectRelease();
  }

  v51 = *(v0 + 1224);
  v52 = *(v0 + 1376);
  v53 = *(v0 + 1128);
  v54 = *(v0 + 1112);
  v55 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v51(v53, v55 + v52, v54);
  if (v50[2])
  {
    v56 = *(v0 + 1380);
    v57 = *(v0 + 1120);
    v58 = *(v0 + 1112);
    v59 = *(v0 + 1000);
    *v59 = v50;
    (*(v57 + 104))(v59, v56, v58);
    (*(v57 + 56))(v59, 0, 1, v58);
  }

  else
  {
    v60 = *(v0 + 1120);
    v61 = *(v0 + 1112);
    v62 = *(v0 + 1000);

    (*(v60 + 56))(v62, 1, 1, v61);
  }

  v63 = *(v0 + 1048);
  v64 = *(v0 + 1040);
  v77 = *(v0 + 1032);
  v65 = *(v0 + 1016);
  v66 = *(v0 + 944);
  sub_2C1108();
  v67 = sub_2C1128();
  (*(*(v67 - 8) + 56))(v65, 0, 1, v67);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0, &unk_2F55E0);
  v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2E3F30;
  (*(v64 + 32))(v69 + v68, v63, v77);
  *v66 = v69;
  v70 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v71 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v72 = *(v71 - 8);
  (*(v72 + 104))(v66, v70, v71);
  (*(v72 + 56))(v66, 0, 1, v71);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v80);
  sub_68CD0((v0 + 808));
  sub_68CD0((v0 + 848));

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_208DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_208F28()
{
  sub_68CD0((v0 + 848));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20906C()
{
  v1 = v0[147];
  v2 = v0[145];
  v3 = v0[144];
  (*(v0[137] + 8))(v0[138], v0[136]);
  (*(v2 + 8))(v1, v3);
  sub_68CD0(v0 + 56);
  sub_68CD0(v0 + 101);
  sub_68CD0(v0 + 106);

  v4 = v0[1];

  return v4();
}

uint64_t sub_209200()
{

  if (qword_3BB870 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v1 = sub_2C00B8();
    sub_57AD8(v1, qword_3C31E8);
    swift_errorRetain();
    v2 = sub_2C0098();
    v3 = sub_2C5DC8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = sub_2BE348();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_0, v2, v3, "Failed to fetch store assets: %@", v4, 0xCu);
      sub_69198(v5, &qword_3BFEE0, &unk_2E9520);
    }

    v7 = *(v0 + 1320);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v66 = _swiftEmptyArrayStorage;
      v10 = (*(v0 + 1320) + 40);
      v11 = *(v0 + 1336);
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (!*(v11 + 16))
        {
          goto LABEL_7;
        }

        v12 = *(v10 - 1);
        v13 = *v10;

        v14 = sub_5D228(v12, v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        sub_691F8(*(v11 + 56) + 40 * v14, v0 + 328);
        result = sub_20B540(v0 + 328, v0 + 368);
        if (!*(v0 + 392))
        {
          __break(1u);
          return result;
        }

        sub_2BF758();

        sub_69198(v0 + 328, &qword_3BDAE8, &unk_2E4DB0);
        sub_68CD0((v0 + 368));
        if (*(v0 + 312))
        {
          sub_693D0((v0 + 288), v0 + 248);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_5C0E8(0, v66[2] + 1, 1, v66);
          }

          v18 = v66[2];
          v17 = v66[3];
          if (v18 >= v17 >> 1)
          {
            v66 = sub_5C0E8((v17 > 1), v18 + 1, 1, v66);
          }

          v66[2] = v18 + 1;
          sub_693D0((v0 + 248), &v66[5 * v18 + 4]);
          goto LABEL_9;
        }

LABEL_8:
        sub_69198(v0 + 288, &unk_3C2550, &qword_2E4E40);
LABEL_9:
        ++v9;
        v10 += 2;
        if (v8 == v9)
        {
          goto LABEL_21;
        }
      }

LABEL_7:
      *(v0 + 360) = 0;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
      sub_69198(v0 + 328, &qword_3BDAE8, &unk_2E4DB0);
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0;
      goto LABEL_8;
    }

    v66 = _swiftEmptyArrayStorage;
LABEL_21:

    v19 = swift_task_alloc();
    v67 = (v0 + 448);
    *(v19 + 16) = v0 + 448;
    sub_286E68(sub_20B6F4, v19, v66);
    v21 = v20;

    v22 = *(v21 + 16);
    if (!v22)
    {
      break;
    }

    v23 = *(v0 + 976);
    sub_64BB4(0, v22, 0);
    v24 = 0;
    v25 = *(v21 + 16);
    v26 = v21 + 32;
    while (v25 != v24)
    {
      if (v24 >= *(v21 + 16))
      {
        goto LABEL_48;
      }

      v27 = *(v0 + 984);
      v28 = *(v0 + 952);
      sub_691F8(v26, v0 + 24);
      *(v0 + 160) = v24;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v24, (v0 + 168), v67, v28, v27);
      sub_69198(v0 + 160, &unk_3BDC50, &unk_2E3000);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_64BB4((v29 > 1), v30 + 1, 1);
      }

      v31 = *(v0 + 984);
      ++v24;
      _swiftEmptyArrayStorage[2] = v30 + 1;
      sub_20B5B0(v31, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30);
      v26 += 40;
      if (v22 == v24)
      {
        goto LABEL_28;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

LABEL_28:

  v32 = *(v0 + 1312);
  v33 = *(v0 + 968);
  v34 = *(v32 + 16);
  if (v34 >= v33)
  {
    v35 = *(v0 + 968);
  }

  else
  {
    v35 = *(v32 + 16);
  }

  if (v33)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = _swiftEmptyArrayStorage;
  }

  v38 = v37[2];

  v39 = *(v0 + 1312);
  if (v38 == v34 - v36)
  {
    v40 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v40)
    {
      v40 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_20B468(v39, v39 + 32, v36, (2 * v34) | 1);
    v40 = v64;
LABEL_39:
    swift_unknownObjectRelease();
  }

  v41 = *(v0 + 1224);
  v42 = *(v0 + 1376);
  v43 = *(v0 + 1128);
  v44 = *(v0 + 1112);
  v45 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v41(v43, v45 + v42, v44);
  if (v40[2])
  {
    v46 = *(v0 + 1380);
    v47 = *(v0 + 1120);
    v48 = *(v0 + 1112);
    v49 = *(v0 + 1000);
    *v49 = v40;
    (*(v47 + 104))(v49, v46, v48);
    (*(v47 + 56))(v49, 0, 1, v48);
  }

  else
  {
    v50 = *(v0 + 1120);
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1000);

    (*(v50 + 56))(v52, 1, 1, v51);
  }

  v53 = *(v0 + 1048);
  v54 = *(v0 + 1040);
  v65 = *(v0 + 1032);
  v55 = *(v0 + 1016);
  v56 = *(v0 + 944);
  sub_2C1108();
  v57 = sub_2C1128();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0, &unk_2F55E0);
  v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_2E3F30;
  (*(v54 + 32))(v59 + v58, v53, v65);
  *v56 = v59;
  v60 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v61 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v62 = *(v61 - 8);
  (*(v62 + 104))(v56, v60, v61);
  (*(v62 + 56))(v56, 0, 1, v61);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v67);
  sub_68CD0((v0 + 808));
  sub_68CD0((v0 + 848));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_209BA4()
{

  if (qword_3BB870 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v1 = sub_2C00B8();
    sub_57AD8(v1, qword_3C31E8);
    swift_errorRetain();
    v2 = sub_2C0098();
    v3 = sub_2C5DC8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = sub_2BE348();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_0, v2, v3, "Failed to fetch store assets: %@", v4, 0xCu);
      sub_69198(v5, &qword_3BFEE0, &unk_2E9520);
    }

    v7 = *(v0 + 1320);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v66 = _swiftEmptyArrayStorage;
      v10 = (*(v0 + 1320) + 40);
      v11 = *(v0 + 1336);
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (!*(v11 + 16))
        {
          goto LABEL_7;
        }

        v12 = *(v10 - 1);
        v13 = *v10;

        v14 = sub_5D228(v12, v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        sub_691F8(*(v11 + 56) + 40 * v14, v0 + 328);
        result = sub_20B540(v0 + 328, v0 + 368);
        if (!*(v0 + 392))
        {
          __break(1u);
          return result;
        }

        sub_2BF758();

        sub_69198(v0 + 328, &qword_3BDAE8, &unk_2E4DB0);
        sub_68CD0((v0 + 368));
        if (*(v0 + 312))
        {
          sub_693D0((v0 + 288), v0 + 248);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_5C0E8(0, v66[2] + 1, 1, v66);
          }

          v18 = v66[2];
          v17 = v66[3];
          if (v18 >= v17 >> 1)
          {
            v66 = sub_5C0E8((v17 > 1), v18 + 1, 1, v66);
          }

          v66[2] = v18 + 1;
          sub_693D0((v0 + 248), &v66[5 * v18 + 4]);
          goto LABEL_9;
        }

LABEL_8:
        sub_69198(v0 + 288, &unk_3C2550, &qword_2E4E40);
LABEL_9:
        ++v9;
        v10 += 2;
        if (v8 == v9)
        {
          goto LABEL_21;
        }
      }

LABEL_7:
      *(v0 + 360) = 0;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
      sub_69198(v0 + 328, &qword_3BDAE8, &unk_2E4DB0);
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0;
      goto LABEL_8;
    }

    v66 = _swiftEmptyArrayStorage;
LABEL_21:

    v19 = swift_task_alloc();
    v67 = (v0 + 448);
    *(v19 + 16) = v0 + 448;
    sub_286E68(sub_20B6F4, v19, v66);
    v21 = v20;

    v22 = *(v21 + 16);
    if (!v22)
    {
      break;
    }

    v23 = *(v0 + 976);
    sub_64BB4(0, v22, 0);
    v24 = 0;
    v25 = *(v21 + 16);
    v26 = v21 + 32;
    while (v25 != v24)
    {
      if (v24 >= *(v21 + 16))
      {
        goto LABEL_48;
      }

      v27 = *(v0 + 984);
      v28 = *(v0 + 952);
      sub_691F8(v26, v0 + 24);
      *(v0 + 160) = v24;
      sub_693D0((v0 + 24), v0 + 168);
      sub_20A754(v24, (v0 + 168), v67, v28, v27);
      sub_69198(v0 + 160, &unk_3BDC50, &unk_2E3000);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_64BB4((v29 > 1), v30 + 1, 1);
      }

      v31 = *(v0 + 984);
      ++v24;
      _swiftEmptyArrayStorage[2] = v30 + 1;
      sub_20B5B0(v31, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30);
      v26 += 40;
      if (v22 == v24)
      {
        goto LABEL_28;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

LABEL_28:

  v32 = *(v0 + 1312);
  v33 = *(v0 + 968);
  v34 = *(v32 + 16);
  if (v34 >= v33)
  {
    v35 = *(v0 + 968);
  }

  else
  {
    v35 = *(v32 + 16);
  }

  if (v33)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  sub_2C6608();
  swift_unknownObjectRetain_n();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = _swiftEmptyArrayStorage;
  }

  v38 = v37[2];

  v39 = *(v0 + 1312);
  if (v38 == v34 - v36)
  {
    v40 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v40)
    {
      v40 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_20B468(v39, v39 + 32, v36, (2 * v34) | 1);
    v40 = v64;
LABEL_39:
    swift_unknownObjectRelease();
  }

  v41 = *(v0 + 1224);
  v42 = *(v0 + 1376);
  v43 = *(v0 + 1128);
  v44 = *(v0 + 1112);
  v45 = *(v0 + 952);
  sub_28F948(_swiftEmptyArrayStorage);

  v41(v43, v45 + v42, v44);
  if (v40[2])
  {
    v46 = *(v0 + 1380);
    v47 = *(v0 + 1120);
    v48 = *(v0 + 1112);
    v49 = *(v0 + 1000);
    *v49 = v40;
    (*(v47 + 104))(v49, v46, v48);
    (*(v47 + 56))(v49, 0, 1, v48);
  }

  else
  {
    v50 = *(v0 + 1120);
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1000);

    (*(v50 + 56))(v52, 1, 1, v51);
  }

  v53 = *(v0 + 1048);
  v54 = *(v0 + 1040);
  v65 = *(v0 + 1032);
  v55 = *(v0 + 1016);
  v56 = *(v0 + 944);
  sub_2C1108();
  v57 = sub_2C1128();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_20B6AC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_20B6AC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C1708();
  sub_6620C(&qword_3C6AB0, &unk_2F55E0);
  v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_2E3F30;
  (*(v54 + 32))(v59 + v58, v53, v65);
  *v56 = v59;
  v60 = enum case for PageUpdateInstruction.appendItems<A, B>(_:);
  v61 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v62 = *(v61 - 8);
  (*(v62 + 104))(v56, v60, v61);
  (*(v62 + 56))(v56, 0, 1, v61);
  (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1152));
  sub_68CD0(v67);
  sub_68CD0((v0 + 808));
  sub_68CD0((v0 + 848));

  v63 = *(v0 + 8);

  return v63();
}

id sub_20A548@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2BF368();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, enum case for SeriesType.audiobook(_:), v4, v6);
  sub_20B6AC(&qword_3C1560, &type metadata accessor for SeriesType, &protocol conformance descriptor for SeriesType);
  sub_2C5A88();
  sub_2C5A88();
  if (v13[1] == v13[0])
  {
    (*(v5 + 8))(v8, v4);

LABEL_4:
    sub_2BF268();
    goto LABEL_6;
  }

  v10 = sub_2C65B8();
  (*(v5 + 8))(v8, v4);

  if (v10)
  {
    goto LABEL_4;
  }

  sub_2BF818();
LABEL_6:
  result = swift_dynamicCastClass();
  v12 = result;
  if (result)
  {
    result = v9;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_20A754@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v84 = a1;
  v78 = a5;
  v7 = sub_2C4BD8();
  __chkstk_darwin(v7 - 8);
  v82 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C0820, &qword_2EA220);
  __chkstk_darwin(v9 - 8);
  v83 = v69 - v10;
  v11 = sub_6620C(&qword_3BF3C8, &qword_2F1770);
  __chkstk_darwin(v11 - 8);
  v81 = v69 - v12;
  v13 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v13 - 8);
  v90 = v69 - v14;
  v15 = sub_2C5018();
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v89 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2C21D8();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2C2258();
  v18 = *(v71 - 8);
  __chkstk_darwin(v71);
  v73 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2C2168();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v88 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6620C(&qword_3BDCF8, &unk_2EE780);
  __chkstk_darwin(v21 - 8);
  v23 = v69 - v22;
  v24 = sub_2C1348();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v86 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v69 - v28;
  __chkstk_darwin(v30);
  v32 = v69 - v31;
  sub_72084(a3, a3[3]);
  sub_2BF3B8();
  sub_691F8(a2, &v98);
  sub_2C2318();
  sub_2C1298();

  sub_69198(v23, &qword_3BDCF8, &unk_2EE780);
  v77 = v25;
  v35 = *(v25 + 16);
  v34 = v25 + 16;
  v33 = v35;
  v87 = v29;
  v76 = v32;
  v93 = v24;
  v35(v29, v32, v24);
  sub_691F8(a2, &v98);
  result = type metadata accessor for SeriesSeeAllPaginationIntent(0);
  if (__OFADD__(*(v85 + *(result + 28)), v84))
  {
    __break(1u);
  }

  else
  {
    v85 = v34;
    sub_72084(a2, a2[3]);
    v70 = v33;
    sub_2BF8F8();
    v84 = sub_2C2188();
    v69[1] = v37;
    sub_72084(&v98, v99);
    sub_2BFA68();
    v69[0] = v38;
    sub_72084(&v98, v99);
    sub_2BF3B8();
    v39 = v78;
    (*(v18 + 104))(v73, enum case for Metrics.IdType.itsId(_:), v71);
    sub_72084(&v98, v99);
    v40 = sub_2BFA38();
    v41 = &enum case for Metrics.ImpressionType.uppLockup(_:);
    if ((v40 & 1) == 0)
    {
      v41 = &enum case for Metrics.ImpressionType.lockup(_:);
    }

    (*(v72 + 104))(v75, *v41, v74);
    sub_72084(&v98, v99);
    sub_2BFA58();
    sub_2C2158();
    v42 = v89;
    sub_2C2138();
    v43 = v86;
    v44 = v70;
    v70(v86, v87, v93);
    v46 = v90;
    v45 = v91;
    v47 = v92;
    (*(v91 + 16))(v90, v42, v92);
    v48 = *(v45 + 56);
    v48(v46, 0, 1, v47);
    v49 = sub_2BEE38();
    v50 = *(*(v49 - 8) + 56);
    v51 = v81;
    v50(v81, 1, 1, v49);
    v48(v39, 1, 1, v47);
    v52 = type metadata accessor for ListItemComponentModel(0);
    v53 = v39 + v52[6];
    *(v53 + 32) = 0;
    *v53 = 0u;
    *(v53 + 16) = 0u;
    v54 = v52[7];
    v84 = v54;
    v74 = sub_2C5658();
    v55 = *(v74 - 8);
    v73 = *(v55 + 56);
    v75 = (v55 + 56);
    (v73)(v39 + v54, 1, 1, v74);
    v56 = v52[8];
    v50((v39 + v56), 1, 1, v49);
    v44(v39 + v52[5], v43, v93);
    sub_2C1288();
    v57 = v95;
    v58 = v96;
    v59 = sub_72084(v94, v95);
    v97[3] = v57;
    v97[4] = *(v58 + 8);
    v60 = sub_720C8(v97);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    sub_A9708(v97, v53, &unk_3BDC90, &unk_2E5620);
    sub_68CD0(v94);
    v61 = v90;
    sub_15734C(v90, v39, &qword_3BDF58, &unk_2E5B70);
    sub_15734C(v51, v39 + v56, &qword_3BF3C8, &qword_2F1770);
    sub_6620C(&qword_3C08C8, &qword_2EE790);
    v62 = *(sub_2C5648() - 8);
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_2E3F30;
    v65 = (v64 + v63);
    *v65 = 0xD00000000000002DLL;
    v65[1] = 0x8000000000304480;
    (*(v62 + 104))();
    sub_2C4BC8();
    v66 = v83;
    sub_2C5638();
    sub_69198(v51, &qword_3BF3C8, &qword_2F1770);
    sub_69198(v61, &qword_3BDF58, &unk_2E5B70);
    v67 = *(v77 + 8);
    v68 = v93;
    v67(v86, v93);
    (*(v91 + 8))(v89, v92);
    (*(v79 + 8))(v88, v80);
    v67(v87, v68);
    v67(v76, v68);
    (v73)(v66, 0, 1, v74);
    sub_A9708(v66, v39 + v84, &qword_3C0820, &qword_2EA220);
    return sub_68CD0(&v98);
  }

  return result;
}

uint64_t sub_20B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7100C;

  return sub_2055F4(a1, a2, a3, v8);
}

void sub_20B468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_6620C(&qword_3BF590, &qword_2E2F90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_20B540(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDAE8, &unk_2E4DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemComponentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v40 = sub_2BE828();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_2C4BF8();
  __chkstk_darwin(v14 - 8);
  sub_6620C(&qword_3BC240, &unk_2E9B40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E15C0;
  sub_2C4BE8();
  (*(v11 + 104))(v13, enum case for PageUpdateInstruction.startPendingData<A, B>(_:), v10);
  v16 = sub_2BF088();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  *(v15 + 56) = sub_6620C(&qword_3BD478, &unk_2E4090);
  *(v15 + 64) = sub_72B74(&qword_3BD480, &qword_3BD478, &unk_2E4090, &protocol conformance descriptor for PageUpdateAction<A, B>);
  sub_720C8((v15 + 32));
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_2106DC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_2106DC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C10D8();
  v17 = sub_6620C(&qword_3C2BE8, &unk_2EE928);
  v18 = *(v17 + 48);
  v19 = sub_2BE8F8();
  (*(*(v19 - 8) + 16))(v6, v42, v19);
  v20 = sub_2C17D8();
  v22 = v21;
  v23._rawValue = &off_389CA0;
  v45._countAndFlagsBits = v20;
  v45._object = v22;
  v24 = sub_2C63E8(v23, v45);

  if (v24 > 2)
  {
    v28 = sub_2BE8A8();
    (*(*(v28 - 8) + 56))(&v6[v18], 1, 1, v28);
  }

  else
  {
    v25 = **(&off_392700 + v24);
    v26 = sub_2BE8A8();
    v27 = *(v26 - 8);
    (*(v27 + 104))(&v6[v18], v25, v26);
    (*(v27 + 56))(&v6[v18], 0, 1, v26);
  }

  v29 = *(v17 + 64);
  result = sub_2BF718();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v41 + 16))
  {
    sub_2C17E8();
    v31 = sub_2C17D8();
    v33 = sub_20CAC8(v31, v32);
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = &enum case for SortBy.popularity(_:);
      }

      else
      {
        if (v33 != 4)
        {
          v38 = sub_2BEEF8();
          (*(*(v38 - 8) + 56))(&v6[v29], 1, 1, v38);
          goto LABEL_17;
        }

        v34 = &enum case for SortBy.title(_:);
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        v34 = &enum case for SortBy.descending(_:);
      }

      else
      {
        v34 = &enum case for SortBy.releaseDate(_:);
      }
    }

    else
    {
      v34 = &enum case for SortBy.ascending(_:);
    }

    v35 = *v34;
    v36 = sub_2BEEF8();
    v37 = *(v36 - 8);
    (*(v37 + 104))(&v6[v29], v35, v36);
    (*(v37 + 56))(&v6[v29], 0, 1, v36);
LABEL_17:
    (*(v4 + 104))(v6, enum case for AppAnalyticsAction.Type.reportSeriesFilter(_:), v40);
    *(v15 + 96) = sub_2BE858();
    *(v15 + 104) = sub_2106DC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
    sub_720C8((v15 + 72));
    sub_2BE838();
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2BE828();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE858();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C10A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BC240, &unk_2E9B40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E3F30;
  (*(v12 + 16))(v14, a2, v11);
  *(v15 + 56) = sub_2C10C8();
  *(v15 + 64) = sub_2106DC(&qword_3C6B00, &type metadata accessor for PageScrollAction, &protocol conformance descriptor for PageScrollAction);
  sub_720C8((v15 + 32));
  sub_2C10B8();
  v16 = sub_2C17D8();
  v18 = v17;
  v19._rawValue = &off_389CA0;
  v36._countAndFlagsBits = v16;
  v36._object = v18;
  v20 = sub_2C63E8(v19, v36);

  if (!v20)
  {

LABEL_7:
    sub_72084(a3, a3[3]);
    v22 = sub_2BF3B8();
    v24 = v23;
    sub_72084(a3, a3[3]);
    v25 = sub_2BF2C8();
    *v7 = v22;
    *(v7 + 1) = v24;
    *(v7 + 2) = v25;
    v7[24] = v26 & 1;
    (*(v30 + 104))(v7, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:), v31);
    sub_2BE838();
    v15 = sub_5C28C((&dword_0 + 1), 2, 1, v15);
    v34 = v8;
    v35 = sub_2106DC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
    v27 = sub_720C8(&v33);
    v28 = v32;
    (*(v32 + 16))(v27, v10, v8);
    *(v15 + 16) = 2;
    sub_68D1C(&v33, v15 + 72);
    (*(v28 + 8))(v10, v8);
    return v15;
  }

  if (v20 == 1 || v20 == 2)
  {
    v21 = sub_2C65B8();

    if (v21)
    {
      goto LABEL_7;
    }
  }

  return v15;
}

uint64_t sub_20C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a4;
  v40[1] = a1;
  v5 = sub_2BE828();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v8 - 8);
  v10 = v40 - v9;
  v11 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v40 - v13;
  v15 = sub_2C4BF8();
  __chkstk_darwin(v15 - 8);
  sub_6620C(&qword_3BC240, &unk_2E9B40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2E15C0;
  sub_2C4BE8();
  (*(v12 + 104))(v14, enum case for PageUpdateInstruction.startPendingData<A, B>(_:), v11);
  v17 = sub_2BF088();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  *(v16 + 56) = sub_6620C(&qword_3BD478, &unk_2E4090);
  *(v16 + 64) = sub_72B74(&qword_3BD480, &qword_3BD478, &unk_2E4090, &protocol conformance descriptor for PageUpdateAction<A, B>);
  sub_720C8((v16 + 32));
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_2106DC(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_2106DC(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C10D8();
  v18 = sub_6620C(&qword_3C2BE8, &unk_2EE928);
  v19 = *(v18 + 48);
  v20 = sub_2BE8F8();
  result = (*(*(v20 - 8) + 16))(v7, v43, v20);
  if (*(a3 + 16) > v44)
  {
    sub_2C17E8();
    v22 = sub_2C17D8();
    v24 = v23;
    v25._rawValue = &off_389CA0;
    v45._countAndFlagsBits = v22;
    v45._object = v24;
    v26 = sub_2C63E8(v25, v45);

    if (v26 > 2)
    {
      v30 = sub_2BE8A8();
      (*(*(v30 - 8) + 56))(&v7[v19], 1, 1, v30);
    }

    else
    {
      v27 = **(&off_392700 + v26);
      v28 = sub_2BE8A8();
      v29 = *(v28 - 8);
      (*(v29 + 104))(&v7[v19], v27, v28);
      (*(v29 + 56))(&v7[v19], 0, 1, v28);
    }

    v31 = *(v18 + 64);
    v32 = sub_2C17D8();
    v34 = sub_20CAC8(v32, v33);
    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v35 = &enum case for SortBy.popularity(_:);
      }

      else
      {
        if (v34 != 4)
        {
          v39 = sub_2BEEF8();
          (*(*(v39 - 8) + 56))(&v7[v31], 1, 1, v39);
          goto LABEL_16;
        }

        v35 = &enum case for SortBy.title(_:);
      }
    }

    else if (v34)
    {
      if (v34 == 1)
      {
        v35 = &enum case for SortBy.descending(_:);
      }

      else
      {
        v35 = &enum case for SortBy.releaseDate(_:);
      }
    }

    else
    {
      v35 = &enum case for SortBy.ascending(_:);
    }

    v36 = *v35;
    v37 = sub_2BEEF8();
    v38 = *(v37 - 8);
    (*(v38 + 104))(&v7[v31], v36, v37);
    (*(v38 + 56))(&v7[v31], 0, 1, v37);
LABEL_16:
    (*(v41 + 104))(v7, enum case for AppAnalyticsAction.Type.reportSeriesFilter(_:), v42);
    *(v16 + 96) = sub_2BE858();
    *(v16 + 104) = sub_2106DC(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
    sub_720C8((v16 + 72));
    sub_2BE838();
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_20C974(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2C10A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BC240, &unk_2E9B40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2E3F30;
  (*(v5 + 16))(v7, a3, v4);
  *(v8 + 56) = sub_2C10C8();
  *(v8 + 64) = sub_2106DC(&qword_3C6B00, &type metadata accessor for PageScrollAction, &protocol conformance descriptor for PageScrollAction);
  sub_720C8((v8 + 32));
  sub_2C10B8();
  return v8;
}

unint64_t sub_20CAC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_389C08;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_20CB14(void *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v248 = a5;
  v270 = a4;
  v224 = a3;
  v262 = a2;
  v267 = a1;
  v225 = sub_2BE8F8();
  v249 = *(v225 - 8);
  __chkstk_darwin(v225);
  v217 = v5;
  v233 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_2C06A8();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v227 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_2C17E8();
  v236 = *(v228 - 8);
  __chkstk_darwin(v228);
  v226 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_2C10A8();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v218 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v8;
  __chkstk_darwin(v9);
  v232 = (&v200 - v10);
  v231 = sub_2BF738();
  v230 = *(v231 - 1);
  __chkstk_darwin(v231);
  v215 = v11;
  v247 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_2C1FE8();
  v268 = *(v264 - 8);
  __chkstk_darwin(v264);
  v255 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v13 - 8);
  v254 = (&v200 - v14);
  v15 = sub_6620C(&qword_3C6AD0, &qword_2F55F8);
  __chkstk_darwin(v15 - 8);
  v245 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v222 = &v200 - v18;
  v19 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v19 - 8);
  v257 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v221 = &v200 - v22;
  v274 = sub_2C5418();
  v277 = *(v274 - 8);
  __chkstk_darwin(v274);
  v266 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_2C5288();
  v276 = *(v273 - 8);
  __chkstk_darwin(v273);
  v269 = &v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_2BFDD8();
  v275 = *(v272 - 8);
  __chkstk_darwin(v272);
  *&v265 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v214 = &v200 - v27;
  v261 = sub_2C22F8();
  v28 = *(v261 - 1);
  __chkstk_darwin(v261);
  v30 = &v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2C2208();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v200 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2C2178();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v200 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_2C4BF8();
  v244 = *(v271 - 8);
  v39 = __chkstk_darwin(v271);
  v41 = &v200 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v256) = *v262;
  v246 = *v270;
  v283 = _swiftEmptyArrayStorage;
  v282 = _swiftEmptyArrayStorage;
  (*(v36 + 104))(v38, enum case for Metrics.TargetType.button(_:), v35, v39);
  (*(v32 + 104))(v34, enum case for Metrics.ClickActionType.navigate(_:), v31);
  sub_2C22A8();
  v270 = v41;
  sub_2C2118();
  (*(v28 + 8))(v30, v261);
  (*(v32 + 8))(v34, v31);
  (*(v36 + 8))(v38, v35);
  sub_72084(v267, v267[3]);
  v42 = v263;
  sub_2BF328();
  if (v42)
  {
    return (*(v244 + 8))(v270, v271);
  }

  v207 = 0;
  swift_getAssociatedTypeWitness();
  sub_6620C(&qword_3BC2C8, &qword_2E2FA0);
  v243 = sub_2C6358();

  v212 = sub_6620C(&qword_3BC1C0, &qword_2E2E98);
  v220 = *(v236 + 72);
  v211 = *(v236 + 80);
  v44 = (v211 + 32) & ~v211;
  v213 = v44;
  v209 = 2 * v220;
  v206 = 3 * v220;
  v45 = swift_allocObject();
  v210 = xmmword_2E4110;
  v205 = v45;
  *(v45 + 1) = xmmword_2E4110;
  v219 = v45 + v44;
  v46 = v269;
  sub_2C5278();
  LODWORD(v263) = enum case for LocalizerLookupStrategy.default(_:);
  v47 = v277;
  v48 = *(v277 + 104);
  v262 = (v277 + 104);
  v261 = v48;
  v49 = v266;
  v50 = v274;
  v48(v266);
  sub_2BFD98();
  v51 = *(v47 + 8);
  v277 = v47 + 8;
  v260 = v51;
  v51(v49, v50);
  v52 = *(v276 + 8);
  v276 += 8;
  v259 = v52;
  v52(v46, v273);
  v53 = *(v275 + 56);
  v275 += 56;
  v258 = v53;
  v53(v221, 1, 1, v272);
  v253 = sub_2C1D38();
  v54 = *(v253 - 8);
  v252 = *(v54 + 56);
  v251 = v54 + 56;
  (v252)(v222, 1, 1, v253);
  v237 = sub_2BF088();
  v55 = *(v237 - 8);
  v239 = *(v55 + 56);
  v238 = v55 + 56;
  v56 = v254;
  v239();
  v280 = type metadata accessor for SeriesListFilterAction(0);
  v57 = v280;
  v208 = sub_2106DC(&qword_3C6AD8, type metadata accessor for SeriesListFilterAction, &unk_2F5C90);
  v281 = v208;
  v58 = sub_720C8(&v279);
  v59 = v267;
  sub_691F8(v267, (v58 + 1));
  v60 = *(v57 + 28);
  v61 = *(v244 + 16);
  v241 = v244 + 16;
  v240 = v61;
  v61(v58 + v60, v270, v271);
  sub_78628(v56, v58 + *(v57 + 32));
  *v58 = 0;
  *(v58 + 48) = v256;
  sub_2100C4(v56);
  sub_72084(v59, v59[3]);
  sub_2BF2D8();
  v62 = v255;
  *v255 = v246 == 0;
  LODWORD(v242) = enum case for ToolbarActionMenuItemButtonType.toggle(_:);
  v63 = *(v268 + 104);
  v268 += 104;
  v250 = v63;
  (v63)(v62);
  sub_2C17C8();
  v64 = v269;
  sub_2C5278();
  v65 = v274;
  (v261)(v49, v263, v274);
  v203 = 0xD000000000000032;
  sub_2BFD98();
  v260(v49, v65);
  v259(v64, v273);
  v66 = v257;
  v258(v257, 1, 1, v272);
  v67 = v245;
  (v252)(v245, 1, 1, v253);
  (v239)(v56, 1, 1, v237);
  v204 = v57;
  v280 = v57;
  v281 = v208;
  v68 = sub_720C8(&v279);
  sub_691F8(v59, (v68 + 1));
  v240(v68 + *(v57 + 28), v270, v271);
  sub_78628(v56, v68 + *(v57 + 32));
  *v68 = 1;
  *(v68 + 48) = v256;
  sub_2100C4(v56);
  LOBYTE(v278) = 1;
  sub_1FA070(v243);
  sub_72084(v59, v59[3]);
  sub_2BF2D8();
  *v62 = v246 == 1;
  (v250)(v62, v242, v264);
  sub_2C17C8();
  v69 = v269;
  sub_2C5278();
  v70 = v266;
  v71 = v274;
  (v261)(v266, v263, v274);
  sub_2BFD98();
  v260(v70, v71);
  v259(v69, v273);
  v258(v66, 1, 1, v272);
  (v252)(v67, 1, 1, v253);
  v72 = v254;
  (v239)(v254, 1, 1, v237);
  v73 = v204;
  v280 = v204;
  v281 = v208;
  v74 = sub_720C8(&v279);
  sub_691F8(v59, (v74 + 1));
  v240(v74 + *(v73 + 28), v270, v271);
  sub_78628(v72, v74 + *(v73 + 32));
  *v74 = 2;
  *(v74 + 48) = v256;
  sub_2100C4(v72);
  LOBYTE(v278) = 2;
  sub_1FA070(v243);
  sub_72084(v59, v59[3]);
  sub_2BF2D8();
  *v62 = v246 == 2;
  (v250)(v62, v242, v264);
  sub_2C17C8();
  sub_10F5FC(v205);
  sub_72084(v59, v59[3]);
  LOBYTE(v74) = sub_2BF348();
  v75 = v213;
  v76 = swift_allocObject();
  *(v76 + 16) = v210;
  v214 = v76;
  v222 = (v76 + v75);
  v221 = (v230 + 104);
  if (v74)
  {
    v77 = v269;
    sub_2C5278();
    v78 = v266;
    v79 = v274;
    (v261)(v266, v263, v274);
    sub_2BFD98();
    v260(v78, v79);
    v259(v77, v273);
    v258(v257, 1, 1, v272);
    v80 = v245;
    (v252)(v245, 1, 1, v253);
    v81 = v230;
    v208 = *(v230 + 104);
    v82 = v247;
    v83 = v231;
    v208(v247, enum case for SeriesListSortOrder.ascending(_:), v231);
    v84 = v254;
    v239();
    v85 = type metadata accessor for SeriesListSortAction(0);
    v280 = v85;
    v206 = sub_2106DC(&qword_3C6AE0, type metadata accessor for SeriesListSortAction, &unk_2E3E60);
    v281 = v206;
    v86 = sub_720C8(&v279);
    v87 = *(v81 + 16);
    v204 = v81 + 16;
    v205 = v87;
    v219 = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v88 = v82;
    v87(v86, v82, v83);
    v89 = v267;
    sub_691F8(v267, v86 + v85[5]);
    v240(v86 + v85[7], v270, v271);
    sub_78628(v84, v86 + v85[8]);
    *(v86 + v85[6]) = v256;
    sub_2100C4(v84);
    v90 = *(v81 + 8);
    v202 = v81 + 8;
    v203 = v90;
    v90(v88, v83);
    v278 = v243;
    v201 = sub_6620C(&qword_3BDC38, &qword_2FA9D0);
    v200 = sub_72B74(&qword_3C5DF0, &qword_3BDC38, &qword_2FA9D0, &protocol conformance descriptor for [A]);
    sub_2C5D28();
    sub_72084(v89, v89[3]);
    sub_2BF2D8();
    v91 = sub_2BF718() == 0;
    *v255 = v91;
    v250();
    v92 = v257;
    sub_2C17C8();
    v93 = v77;
    sub_2C5278();
    v94 = v266;
    v95 = v274;
    (v261)(v266, v263, v274);
    sub_2BFD98();
    v260(v94, v95);
    v259(v93, v273);
    v258(v92, 1, 1, v272);
    v96 = v80;
    (v252)(v80, 1, 1, v253);
    v97 = v247;
    v98 = v231;
    v208(v247, enum case for SeriesListSortOrder.descending(_:), v231);
    v99 = v254;
    (v239)(v254, 1, 1, v237);
    v280 = v85;
    v281 = v206;
    v100 = sub_720C8(&v279);
    v205(v100, v97, v98);
    sub_691F8(v89, v100 + v85[5]);
    v240(v100 + v85[7], v270, v271);
    sub_78628(v99, v100 + v85[8]);
    *(v100 + v85[6]) = v256;
    sub_2100C4(v99);
    v203(v97, v98);
    v278 = v243;
    sub_2C5D28();
    sub_72084(v89, v89[3]);
    sub_2BF2D8();
    v101 = sub_2BF718() == 1;
    *v255 = v101;
    v250();
    v102 = v98;
    v103 = v257;
    v104 = v96;
    sub_2C17C8();
    v105 = v269;
    sub_2C5278();
    v106 = v266;
    v107 = v274;
    (v261)(v266, v263, v274);
    sub_2BFD98();
    v260(v106, v107);
    v259(v105, v273);
    v258(v103, 1, 1, v272);
    (v252)(v104, 1, 1, v253);
    v108 = v247;
    v208(v247, enum case for SeriesListSortOrder.releaseDate(_:), v102);
    v109 = v254;
    (v239)(v254, 1, 1, v237);
    v280 = v85;
    v281 = v206;
    v110 = sub_720C8(&v279);
    v205(v110, v108, v102);
    v111 = v267;
    sub_691F8(v267, v110 + v85[5]);
    v240(v110 + v85[7], v270, v271);
    sub_78628(v109, v110 + v85[8]);
    *(v110 + v85[6]) = v256;
    sub_2100C4(v109);
    v203(v108, v102);
    v278 = v243;
    sub_2C5D28();

    sub_72084(v111, v111[3]);
  }

  else
  {
    v113 = v269;
    sub_2C5278();
    v114 = v266;
    v115 = v274;
    (v261)();
    sub_2BFD98();
    v260(v114, v115);
    v259(v113, v273);
    v258(v257, 1, 1, v272);
    (v252)(v245, 1, 1, v253);
    v116 = v230;
    v208 = *(v230 + 104);
    v117 = v247;
    v118 = v231;
    v208(v247, enum case for SeriesListSortOrder.popular(_:), v231);
    v119 = v254;
    v239();
    v120 = type metadata accessor for SeriesListSortAction(0);
    v280 = v120;
    v206 = sub_2106DC(&qword_3C6AE0, type metadata accessor for SeriesListSortAction, &unk_2E3E60);
    v281 = v206;
    v121 = sub_720C8(&v279);
    v122 = *(v116 + 16);
    v204 = v116 + 16;
    v205 = v122;
    v219 = (v116 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v122(v121, v117, v118);
    v123 = v267;
    sub_691F8(v267, v121 + v120[5]);
    v240(v121 + v120[7], v270, v271);
    sub_78628(v119, v121 + v120[8]);
    *(v121 + v120[6]) = v256;
    sub_2100C4(v119);
    v124 = *(v116 + 8);
    v202 = v116 + 8;
    v203 = v124;
    v124(v117, v118);
    v278 = v243;
    v201 = sub_6620C(&qword_3BDC38, &qword_2FA9D0);
    v200 = sub_72B74(&qword_3C5DF0, &qword_3BDC38, &qword_2FA9D0, &protocol conformance descriptor for [A]);
    sub_2C5D28();
    sub_72084(v123, v123[3]);
    sub_2BF2D8();
    v125 = sub_2BF718() == 0;
    *v255 = v125;
    v250();
    v126 = v257;
    v127 = v245;
    sub_2C17C8();
    v128 = v269;
    sub_2C5278();
    v129 = v274;
    (v261)(v114, v263, v274);
    sub_2BFD98();
    v260(v114, v129);
    v130 = v128;
    v259(v128, v273);
    v258(v126, 1, 1, v272);
    (v252)(v127, 1, 1, v253);
    v131 = v247;
    v132 = v231;
    v208(v247, enum case for SeriesListSortOrder.title(_:), v231);
    v133 = v254;
    (v239)(v254, 1, 1, v237);
    v280 = v120;
    v281 = v206;
    v134 = sub_720C8(&v279);
    v205(v134, v131, v132);
    sub_691F8(v123, v134 + v120[5]);
    v240(v134 + v120[7], v270, v271);
    sub_78628(v133, v134 + v120[8]);
    *(v134 + v120[6]) = v256;
    sub_2100C4(v133);
    v203(v131, v132);
    v278 = v243;
    sub_2C5D28();
    sub_72084(v123, v123[3]);
    sub_2BF2D8();
    v135 = sub_2BF718() == 1;
    *v255 = v135;
    v250();
    v136 = v257;
    v137 = v245;
    sub_2C17C8();
    v138 = v130;
    sub_2C5278();
    v139 = v266;
    v140 = v274;
    (v261)(v266, v263, v274);
    sub_2BFD98();
    v260(v139, v140);
    v259(v138, v273);
    v258(v136, 1, 1, v272);
    (v252)(v137, 1, 1, v253);
    v141 = v247;
    v208(v247, enum case for SeriesListSortOrder.releaseDate(_:), v132);
    v142 = v254;
    (v239)(v254, 1, 1, v237);
    v280 = v120;
    v281 = v206;
    v143 = sub_720C8(&v279);
    v205(v143, v141, v132);
    v144 = v267;
    sub_691F8(v267, v143 + v120[5]);
    v240(v143 + v120[7], v270, v271);
    sub_78628(v142, v143 + v120[8]);
    *(v143 + v120[6]) = v256;
    sub_2100C4(v142);
    v203(v141, v132);
    v278 = v243;
    sub_2C5D28();

    sub_72084(v144, v144[3]);
  }

  sub_2BF2D8();
  v112 = sub_2BF718() == 2;
  *v255 = v112;
  v250();
  sub_2C17C8();
  sub_10F5FC(v214);
  *v232 = 0;
  (*(v234 + 104))();
  v145 = v269;
  sub_2C5278();
  v146 = v266;
  v147 = v274;
  (v261)(v266, v263, v274);
  sub_2BFD98();
  v260(v146, v147);
  v259(v145, v273);
  v148 = v257;
  v258(v257, 1, 1, v272);
  (v252)(v245, 1, 1, v253);
  v280 = sub_2C4A68();
  v281 = &protocol witness table for EmptyAction;
  sub_720C8(&v279);
  sub_2C4A58();
  v149 = v267;
  sub_72084(v267, v267[3]);
  sub_2BF2D8();
  sub_72084(v149, v149[3]);
  v150 = v255;
  sub_2BF318();
  (v250)(v150, enum case for ToolbarActionMenuItemButtonType.shareLink(_:), v264);
  v151 = v226;
  sub_2C17C8();
  v152 = v229;
  v153 = v227;
  v154 = v223;
  (*(v229 + 104))(v227, enum case for SymbolImage.Kind.ellipsis(_:), v223);
  sub_6620C(&qword_3C6AE8, &qword_2F5600);
  v255 = sub_2C0FB8();
  v254 = *(v255 - 1);
  v155 = (*(v254 + 80) + 32) & ~*(v254 + 80);
  v156 = swift_allocObject();
  v265 = xmmword_2E3F30;
  v256 = v156;
  *(v156 + 16) = xmmword_2E3F30;
  v157 = (v156 + v155);
  v252 = v157;
  v253 = *(sub_6620C(&qword_3C6AF0, &qword_2F5608) + 48);
  (*(v152 + 16))(v157, v153, v154);
  sub_6620C(&qword_3C6AF8, &unk_2F5610);
  v158 = *(sub_2C1368() - 8);
  v245 = *(v158 + 72);
  v159 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v250 = (2 * v245);
  v160 = swift_allocObject();
  v251 = v160;
  *(v160 + 16) = v210;
  v268 = v160 + v159;
  v161 = v272;
  v162 = v258;
  v258(v148, 1, 1, v272);
  v163 = v213;
  v164 = swift_allocObject();
  *(v164 + 16) = v265;
  (*(v236 + 16))(v164 + v163, v151, v228);
  sub_2C1358();
  v165 = v269;
  sub_2C5278();
  v166 = v266;
  v167 = v274;
  (v261)(v266, v263, v274);
  sub_2BFD98();
  v260(v166, v167);
  v259(v165, v273);
  v162(v148, 0, 1, v161);
  v264 = v283;
  v168 = v249;
  v169 = *(v249 + 16);
  v242 = v249 + 16;
  v243 = v169;
  v170 = v225;
  v169(v233, v224, v225);
  v171 = v230;
  v172 = v247;
  v173 = v231;
  (*(v230 + 16))(v247, v248, v231);
  v174 = v282;
  *&v265 = v282;
  v175 = *(v168 + 80);
  v176 = (v175 + 16) & ~v175;
  v241 = v175 | 7;
  v239 = v176;
  v177 = (v217 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
  v248 = v177 + 8;
  v238 = v177;
  v178 = (v177 + 8 + *(v171 + 80)) & ~*(v171 + 80);
  v179 = swift_allocObject();
  v180 = *(v249 + 32);
  v249 += 32;
  v240 = v180;
  v180((v179 + v176), v233, v170);
  *(v179 + v177) = v174;
  (*(v171 + 32))(v179 + v178, v172, v173);
  v181 = v234;
  v247 = *(v234 + 16);
  v182 = v218;
  v183 = v235;
  (v247)(v218, v232, v235);
  sub_691F8(v267, &v279);
  v184 = *(v181 + 80);
  v267 = (((v184 + 16) & ~v184) + v216);
  v237 = (v184 + 16) & ~v184;
  v185 = (v267 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = swift_allocObject();
  v231 = *(v181 + 32);
  (v231)(v186 + ((v184 + 16) & ~v184), v182, v183);
  sub_68D1C(&v279, v186 + v185);

  v187 = v257;
  sub_2C1358();
  v188 = v269;
  sub_2C5278();
  v189 = v266;
  v190 = v274;
  (v261)(v266, v263, v274);
  sub_2BFD98();
  v260(v189, v190);
  v259(v188, v273);
  v258(v187, 0, 1, v272);
  v191 = v233;
  v192 = v225;
  v243(v233, v224, v225);
  v193 = v238;
  v194 = swift_allocObject();
  v240(v239 + v194, v191, v192);
  *(v194 + v193) = v264;
  *(v194 + v248) = v246;
  v195 = v182;
  v196 = v182;
  v197 = v232;
  v198 = v235;
  (v247)(v196, v232, v235);
  v199 = swift_allocObject();
  (v231)(v199 + v237, v195, v198);
  sub_2C1358();
  *&v252[v253] = v251;
  v254[13]();
  (*(v229 + 8))(v227, v223);
  (*(v236 + 8))(v226, v228);
  (*(v234 + 8))(v197, v198);
  (*(v244 + 8))(v270, v271);
  return v256;
}

uint64_t sub_2100C4(uint64_t a1)
{
  v2 = sub_6620C(&unk_3CA260, &qword_2E3930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21012C()
{
  v1 = sub_2BE8F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2BF738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

unint64_t sub_210288(uint64_t a1)
{
  v3 = *(sub_2BE8F8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_2BF738() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_20B70C(a1, v1 + v4, v7, v8);
}

uint64_t sub_21036C(__n128 a1)
{
  v2 = sub_2C10A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  sub_68CD0((v1 + v6));

  return _swift_deallocObject(v1, v6 + 40, v4 | 7);
}

uint64_t sub_210408(uint64_t a1, __n128 a2)
{
  v4 = *(sub_2C10A8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BE1C(a1, v2 + v5, v6);
}

uint64_t sub_2104A4()
{
  v1 = sub_2BE8F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_210540(uint64_t a1)
{
  v3 = *(sub_2BE8F8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_20C274(a1, v1 + v4, v6, v7);
}

uint64_t sub_2105E4(__n128 a1)
{
  v2 = sub_2C10A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_21066C(uint64_t a1, __n128 a2)
{
  v4 = *(sub_2C10A8() - 8);
  v6 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_20C974(v5, a1, v6);
}

uint64_t sub_2106DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_210784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6B08;
  if (!qword_3C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B08);
  }

  return result;
}

__n128 sub_2107D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v12 = sub_6620C(&qword_3C6B18, &qword_2F57B8);
  __chkstk_darwin(v12 - 8);
  v14 = &v21[-v13];
  *v14 = sub_2C46A8();
  v14[1] = v15;
  v16 = *(sub_6620C(&qword_3C6B20, &qword_2F57C0) + 44);
  LOBYTE(v22) = a3 & 1;
  v21[8] = a4 & 1;
  sub_21096C(a1, a2, a3 & 1, a6, a4 & 1, v14 + v16);
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v14, a5, &qword_3C6B18, &qword_2F57B8);
  v17 = a5 + *(sub_6620C(&qword_3C6B28, &qword_2F57C8) + 36);
  v18 = v27;
  *(v17 + 64) = v26;
  *(v17 + 80) = v18;
  *(v17 + 96) = v28;
  v19 = v23;
  *v17 = v22;
  *(v17 + 16) = v19;
  result = v25;
  *(v17 + 32) = v24;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_21096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a4;
  v61 = a3;
  v66 = a6;
  v59 = sub_6620C(&qword_3C6B30, &qword_2F57D0);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v55 - v8;
  v56 = sub_6620C(&qword_3C6B38, &qword_2F57D8);
  __chkstk_darwin(v56);
  v11 = &v55 - v10;
  v58 = sub_6620C(&qword_3C6B40, &qword_2F57E0);
  __chkstk_darwin(v58);
  v13 = &v55 - v12;
  v65 = sub_6620C(&qword_3C6B48, &qword_2F57E8);
  __chkstk_darwin(v65);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v60 = &v55 - v17;
  v64 = sub_6620C(&qword_3C6B50, &qword_2F57F0);
  __chkstk_darwin(v64);
  v19 = (&v55 - v18);
  v20 = type metadata accessor for ContentUnavailableComponentModel(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  if (*(a1 + *(v23 + 36) + 16))
  {
    sub_212C4C(a1, &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v21 + 80) + 41) & ~*(v21 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    v26 = v61 & 1;
    *(v25 + 24) = v61 & 1;
    *(v25 + 32) = v63;
    *(v25 + 40) = v62 & 1;
    sub_212EDC(&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    *v19 = sub_212F40;
    v19[1] = v25;
    swift_storeEnumTagMultiPayload();
    sub_146B38(a2, v26);

    sub_6620C(&qword_3C6B98, &qword_2F5818);
    sub_72B74(&qword_3C6BA0, &qword_3C6B98, &qword_2F5818, &protocol conformance descriptor for GeometryReader<A>);
    sub_212B10(&qword_3C6BA8, &qword_3C6B48, &qword_2F57E8, sub_212AE0);
    return sub_2C33C8();
  }

  else
  {
    v55 = &v55;
    __chkstk_darwin(v23);
    __chkstk_darwin(v28);
    sub_6620C(&qword_3C6B58, &qword_2F57F8);
    sub_6620C(&qword_3C6B60, &qword_2F5800);
    sub_212760();
    sub_212A2C();
    sub_2C3528();
    sub_2C46A8();
    sub_2C2AD8();
    (*(v57 + 32))(v11, v9, v59);
    v29 = &v11[*(v56 + 36)];
    v30 = v72;
    *(v29 + 4) = v71;
    *(v29 + 5) = v30;
    *(v29 + 6) = v73;
    v31 = v68;
    *v29 = v67;
    *(v29 + 1) = v31;
    v32 = v70;
    *(v29 + 2) = v69;
    *(v29 + 3) = v32;
    v33 = sub_2C3768();
    sub_2C24D8();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_69130(v11, v13, &qword_3C6B38, &qword_2F57D8);
    v42 = &v13[*(v58 + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = sub_2C3778();
    sub_2C24D8();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_69130(v13, v15, &qword_3C6B40, &qword_2F57E0);
    v52 = &v15[*(v65 + 36)];
    *v52 = v43;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    v53 = v15;
    v54 = v60;
    sub_69130(v53, v60, &qword_3C6B48, &qword_2F57E8);
    sub_6932C(v54, v19, &qword_3C6B48, &qword_2F57E8);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C6B98, &qword_2F5818);
    sub_72B74(&qword_3C6BA0, &qword_3C6B98, &qword_2F5818, &protocol conformance descriptor for GeometryReader<A>);
    sub_212B10(&qword_3C6BA8, &qword_3C6B48, &qword_2F57E8, sub_212AE0);
    sub_2C33C8();
    return sub_69198(v54, &qword_3C6B48, &qword_2F57E8);
  }
}

__n128 sub_211168@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v60 = a5;
  v49[1] = a1;
  v59 = a7;
  v10 = sub_6620C(&qword_3C6B30, &qword_2F57D0);
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v53 = v49 - v11;
  v52 = sub_6620C(&qword_3C6B38, &qword_2F57D8);
  __chkstk_darwin(v52);
  v57 = v49 - v12;
  v56 = sub_6620C(&qword_3C6BC8, &qword_2F5820);
  __chkstk_darwin(v56);
  v58 = v49 - v13;
  v49[0] = sub_2C2978();
  v14 = *(v49[0] - 8);
  __chkstk_darwin(v49[0]);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C30F8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v49[2] = a2;
  if ((a3 & 1) == 0)
  {

    sub_2C5DD8();
    v21 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_125A48(a2, 0);
    (*(v18 + 8))(v20, v17);
  }

  v22 = a4;
  if ((v60 & 1) == 0)
  {
    sub_2C5DD8();
    v23 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v22 = v71;
  }

  swift_getKeyPath();
  *&v71 = v22;
  sub_212FEC(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();

  sub_2C2958();
  sub_2C2738();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v14 + 8))(v16, v49[0]);
  v78.origin.x = v25;
  v78.origin.y = v27;
  v78.size.width = v29;
  v78.size.height = v31;
  CGRectGetMinY(v78);
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  sub_6620C(&qword_3C6B58, &qword_2F57F8);
  sub_6620C(&qword_3C6B60, &qword_2F5800);
  sub_212760();
  sub_212A2C();
  v34 = v53;
  sub_2C3528();
  sub_2C46A8();
  sub_2C2AD8();
  v35 = v57;
  (*(v54 + 32))(v57, v34, v55);
  v36 = (v35 + *(v52 + 36));
  v37 = v66;
  v36[4] = v65;
  v36[5] = v37;
  v36[6] = v67;
  v38 = v62;
  *v36 = v61;
  v36[1] = v38;
  v39 = v64;
  v36[2] = v63;
  v36[3] = v39;
  sub_2C46A8();
  sub_2C2708();
  v40 = v58;
  sub_69130(v35, v58, &qword_3C6B38, &qword_2F57D8);
  v41 = (v40 + *(v56 + 36));
  v42 = v69;
  *v41 = v68;
  v41[1] = v42;
  v41[2] = v70;
  sub_2C46A8();
  sub_2C2AD8();
  v43 = v40;
  v44 = v59;
  sub_69130(v43, v59, &qword_3C6BC8, &qword_2F5820);
  v45 = v44 + *(sub_6620C(&qword_3C6BD0, &unk_2F5850) + 36);
  v46 = v76;
  *(v45 + 64) = v75;
  *(v45 + 80) = v46;
  *(v45 + 96) = v77;
  v47 = v72;
  *v45 = v71;
  *(v45 + 16) = v47;
  result = v74;
  *(v45 + 32) = v73;
  *(v45 + 48) = result;
  return result;
}

uint64_t sub_211900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v73 = sub_6620C(&qword_3BF938, &qword_2E8DA0);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = &v65 - v3;
  v74 = sub_6620C(&qword_3C6BD8, &qword_2F5860);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v65 - v4;
  v81 = sub_6620C(&qword_3C6B78, &qword_2F5808);
  __chkstk_darwin(v81);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v65 - v7;
  v79 = sub_6620C(&qword_3C6BE0, &unk_2F5868);
  __chkstk_darwin(v79);
  v80 = &v65 - v8;
  v9 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v9 - 8);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  v76 = sub_2BFDD8();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2BFCB8();
  v66 = *(v77 - 8);
  __chkstk_darwin(v77);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6620C(&qword_3C6BE8, &qword_2F5878);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v65 - v21;
  v78 = sub_6620C(&qword_3C6B88, &qword_2F5810);
  __chkstk_darwin(v78);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = a1;
  v28 = a1[1];
  if (v28)
  {
    v29 = v27;
    v30 = *v27;
    v31 = type metadata accessor for ContentUnavailableComponentModel(0);
    v32 = v76;
    v33 = (*(v14 + 16))(v16, v27 + *(v31 + 20), v76);
    v66 = &v65;
    __chkstk_darwin(v33);
    *(&v65 - 2) = v16;
    __chkstk_darwin(v34);
    *(&v65 - 2) = v30;
    *(&v65 - 1) = v28;
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    v35 = v68;
    sub_2C42F8();
    (*(v14 + 8))(v16, v32);
    v36 = *(v31 + 32);
    v37 = v35;
    if (*(v29 + v36))
    {
      v38 = enum case for Font.Design.default(_:);
      v39 = sub_2C3848();
      v40 = *(v39 - 8);
      v41 = v67;
      (*(v40 + 104))(v67, v38, v39);
      (*(v40 + 56))(v41, 0, 1, v39);
    }

    else
    {
      v41 = v67;
      sub_2C3828();
    }

    v48 = v70;
    sub_72B74(&qword_3BF948, &qword_3BF938, &qword_2E8DA0, &protocol conformance descriptor for Label<A, B>);
    v49 = v73;
    sub_2C3E08();
    sub_69198(v41, &qword_3BCB28, &qword_2E3B60);
    (*(v71 + 8))(v37, v49);
    if (*(v29 + v36))
    {
      v50 = sub_2C4268();
    }

    else
    {
      v50 = sub_2C4258();
    }

    v51 = v50;
    v52 = v69;
    (*(v72 + 32))(v69, v48, v74);
    *(v52 + *(v81 + 36)) = v51;
    v53 = &qword_3C6B78;
    v54 = &qword_2F5808;
    v55 = v75;
    sub_69130(v52, v75, &qword_3C6B78, &qword_2F5808);
    sub_6932C(v55, v80, &qword_3C6B78, &qword_2F5808);
    swift_storeEnumTagMultiPayload();
    sub_2127EC();
    sub_212914();
  }

  else
  {
    v72 = &v65 - v26;
    v73 = v22;
    v74 = v20;
    v75 = v19;
    v42 = type metadata accessor for ContentUnavailableComponentModel(0);
    (*(v14 + 16))(v16, v27 + *(v42 + 20), v76);
    sub_2BFCC8();
    v43 = *(v42 + 32);
    v76 = v27;
    if (*(v27 + v43))
    {
      v44 = enum case for Font.Design.default(_:);
      v45 = sub_2C3848();
      v46 = *(v45 - 8);
      v47 = v13;
      (*(v46 + 104))(v13, v44, v45);
      (*(v46 + 56))(v13, 0, 1, v45);
    }

    else
    {
      v47 = v13;
      sub_2C3828();
    }

    v56 = v77;
    v58 = v73;
    v57 = v74;
    v59 = v66;
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    sub_2C3E08();
    sub_69198(v47, &qword_3BCB28, &qword_2E3B60);
    (v59[1])(v18, v56);
    v60 = v75;
    if (*(v76 + v43))
    {
      v61 = sub_2C4268();
    }

    else
    {
      v61 = sub_2C4258();
    }

    v62 = v61;
    (*(v57 + 32))(v24, v58, v60);
    *&v24[*(v78 + 36)] = v62;
    v53 = &qword_3C6B88;
    v54 = &qword_2F5810;
    v63 = v24;
    v55 = v72;
    sub_69130(v63, v72, &qword_3C6B88, &qword_2F5810);
    sub_6932C(v55, v80, &qword_3C6B88, &qword_2F5810);
    swift_storeEnumTagMultiPayload();
    sub_2127EC();
    sub_212914();
  }

  sub_2C33C8();
  return sub_69198(v55, v53, v54);
}

uint64_t sub_21230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2BFCB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_2BFDD8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v18 = type metadata accessor for ContentUnavailableComponentModel(0);
  sub_213054(a1 + *(v18 + 24), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_69198(v10, &qword_3BEF80, &qword_2E8D50);
    v19 = 1;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    sub_2BFCC8();
    (*(v12 + 8))(v17, v11);
    (*(v5 + 32))(a2, v7, v4);
    v19 = 0;
  }

  return (*(v5 + 56))(a2, v19, 1, v4);
}

uint64_t sub_2125D4(uint64_t a1)
{
  v2 = sub_146B38(*v1, *(v1 + 8));
  sub_210784(v2, v3, v4);

  return sub_2BFD18();
}

unint64_t sub_212654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6B10;
  if (!qword_3C6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B10);
  }

  return result;
}

unint64_t sub_212760()
{
  result = qword_3C6B68;
  if (!qword_3C6B68)
  {
    sub_718D4(&qword_3C6B58, &qword_2F57F8);
    sub_2127EC();
    sub_212914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B68);
  }

  return result;
}

unint64_t sub_2127EC()
{
  result = qword_3C6B70;
  if (!qword_3C6B70)
  {
    sub_718D4(&qword_3C6B78, &qword_2F5808);
    sub_718D4(&qword_3BF938, &qword_2E8DA0);
    sub_72B74(&qword_3BF948, &qword_3BF938, &qword_2E8DA0, &protocol conformance descriptor for Label<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6A70, &qword_3C6A78, &unk_2F5AB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B70);
  }

  return result;
}

unint64_t sub_212914()
{
  result = qword_3C6B80;
  if (!qword_3C6B80)
  {
    sub_718D4(&qword_3C6B88, &qword_2F5810);
    sub_2BFCB8();
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6A70, &qword_3C6A78, &unk_2F5AB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B80);
  }

  return result;
}

unint64_t sub_212A2C()
{
  result = qword_3C6B90;
  if (!qword_3C6B90)
  {
    sub_718D4(&qword_3C6B60, &qword_2F5800);
    sub_212FEC(&qword_3BF950, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B90);
  }

  return result;
}

uint64_t sub_212B10(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_212B94()
{
  result = qword_3C6BB8;
  if (!qword_3C6BB8)
  {
    sub_718D4(&qword_3C6B38, &qword_2F57D8);
    sub_72B74(&qword_3C6BC0, &qword_3C6B30, &qword_2F57D0, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6BB8);
  }

  return result;
}

uint64_t sub_212C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentUnavailableComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_212CB0()
{
  v1 = type metadata accessor for ContentUnavailableComponentModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 41) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  sub_125A48(*(v0 + 16), *(v0 + 24));

  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_2BFDD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_2C1DC8();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  sub_68CD0((v4 + v1[10]));
  v12 = v1[11];
  v13 = sub_2C5018();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_212EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentUnavailableComponentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_212F40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContentUnavailableComponentModel(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = v2 + ((*(v5 + 80) + 41) & ~*(v5 + 80));

  *&result = sub_211168(a1, v6, v7, v8, v9, v10, a2).n128_u64[0];
  return result;
}

uint64_t sub_212FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213054(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2130C4(uint64_t a1)
{
  v2 = sub_2BFDD8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2BFCC8();
}

uint64_t sub_213190@<X0>(uint64_t *a3@<X8>)
{

  result = sub_2C42B8();
  *a3 = result;
  return result;
}

uint64_t sub_2131D8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2C42B8();
  *a1 = result;
  return result;
}

unint64_t sub_213220()
{
  result = qword_3C6BF0;
  if (!qword_3C6BF0)
  {
    sub_718D4(&qword_3C6B28, &qword_2F57C8);
    sub_72B74(&qword_3C6BF8, &qword_3C6B18, &qword_2F57B8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6BF0);
  }

  return result;
}

uint64_t sub_2132F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_213444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588, &unk_2E4390);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ReviewBrickComponent(uint64_t a1)
{
  result = qword_3C6C58;
  if (!qword_3C6C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2135CC(uint64_t a1)
{
  sub_2136A4(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_1F012C();
    if (v2 <= 0x3F)
    {
      sub_2136A4(319, &qword_3BD600, &type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2136A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_213778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v47 = sub_2C30F8();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C2A88();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3C6CA0, &qword_2F5950);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_6620C(&qword_3C6CA8, &qword_2F5958);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v48 = sub_6620C(&qword_3C6CB0, &qword_2F5960);
  v17 = *(v48 - 8);
  __chkstk_darwin(v48);
  v19 = &v45 - v18;
  *v13 = sub_2C3338();
  *(v13 + 1) = 0x4020000000000000;
  v13[16] = 0;
  v20 = sub_6620C(&qword_3C6CB8, &qword_2F5968);
  sub_213D00(a1, v3, &v13[*(v20 + 44)]);
  v21 = sub_2C3758();
  v22 = &v13[*(v11 + 44)];
  *v22 = v21;
  __asm { FMOV            V0.2D, #16.0 }

  *(v22 + 8) = _Q0;
  *(v22 + 24) = _Q0;
  v22[40] = 0;
  sub_2C46B8();
  sub_2C2AD8();
  sub_216C14(v13, v16);
  v28 = &v16[*(v14 + 36)];
  v29 = v59;
  *(v28 + 4) = v58;
  *(v28 + 5) = v29;
  *(v28 + 6) = v60;
  v30 = v55;
  *v28 = v54;
  *(v28 + 1) = v30;
  v31 = v57;
  *(v28 + 2) = v56;
  *(v28 + 3) = v31;
  v32 = *(type metadata accessor for ReviewBrickComponent(0) + 20);
  v51 = v3;
  v33 = v3 + v32;
  v34 = *v33;
  if (*(v33 + 8) != 1)
  {

    sub_2C5DD8();
    v36 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v34, 0);
    (*(v46 + 8))(v6, v47);
    if (v53 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2C2A78();
    v35 = v50;
    goto LABEL_6;
  }

  if (v34)
  {
    goto LABEL_5;
  }

LABEL_3:
  v53 = _swiftEmptyArrayStorage;
  sub_217AE8(&qword_3C6CC0, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  sub_6620C(&qword_3C6CC8, &qword_2F5970);
  sub_72B74(&qword_3C6CD0, &qword_3C6CC8, &qword_2F5970, &protocol conformance descriptor for [A]);
  v35 = v50;
  sub_2C6158();
LABEL_6:
  sub_216C84();
  sub_2C4118();
  (*(v49 + 8))(v9, v35);
  sub_69198(v16, &qword_3C6CA8, &qword_2F5958);
  v37 = sub_2C46A8();
  v39 = v38;
  v40 = sub_6620C(&qword_3C6CF8, &qword_2F5980);
  v41 = v52;
  v42 = v52 + *(v40 + 36);
  sub_216778(v42);
  v43 = (v42 + *(sub_6620C(&qword_3C6D00, &qword_2F5988) + 36));
  *v43 = v37;
  v43[1] = v39;
  return (*(v17 + 32))(v41, v19, v48);
}

uint64_t sub_213D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v5 = sub_6620C(&qword_3C6D10, &qword_2F59A0);
  __chkstk_darwin(v5 - 8);
  v122 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = (&v99 - v8);
  v118 = sub_6620C(&qword_3C6D18, &qword_2F59A8);
  __chkstk_darwin(v118);
  v120 = (&v99 - v9);
  v104 = sub_2C30F8();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_6620C(&qword_3C6D20, &qword_2F59B0);
  v110 = *(v119 - 8);
  __chkstk_darwin(v119);
  v109 = &v99 - v11;
  v12 = sub_6620C(&qword_3C6D28, &qword_2F59B8);
  __chkstk_darwin(v12 - 8);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = &v99 - v15;
  v116 = sub_6620C(&qword_3C6D30, &qword_2F59C0);
  __chkstk_darwin(v116);
  v17 = &v99 - v16;
  v114 = sub_6620C(&qword_3C6D38, &unk_2F59C8);
  __chkstk_darwin(v114);
  v115 = &v99 - v18;
  v19 = sub_2C3308();
  v108 = *(v19 - 8);
  __chkstk_darwin(v19);
  v106 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2C38C8();
  v126 = *(v21 - 8);
  __chkstk_darwin(v21);
  v125 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3BEC80, &qword_2E74A0);
  __chkstk_darwin(v23 - 8);
  v105 = &v99 - v24;
  v113 = sub_6620C(&qword_3C6D40, &unk_2F59D8);
  __chkstk_darwin(v113);
  v107 = &v99 - v25;
  v26 = sub_6620C(&unk_3C44D0, &unk_2F11E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v99 - v27;
  v29 = sub_2C0DB8();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_6620C(&qword_3C6D48, &qword_2F59E8);
  __chkstk_darwin(v33 - 8);
  v117 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  sub_1DEC40(v28);
  v37 = (*(v30 + 48))(v28, 1, v29);
  v127 = a2;
  v111 = v21;
  if (v37 == 1)
  {
    sub_69198(v28, &unk_3C44D0, &unk_2F11E0);
    type metadata accessor for ReviewBrickComponentModel(0);
    sub_6620C(&qword_3C5878, &qword_2F59F0);
    sub_2C1988();
    v101 = v129;

    sub_2C3908();
    v38 = v126;
    v39 = *(v126 + 104);
    v100 = v19;
    v40 = v125;
    v39(v125, enum case for Font.Leading.tight(_:), v21);
    sub_2C38E8();

    (*(v38 + 8))(v40, v21);
    v41 = sub_2C39E8();
    v43 = v42;
    v45 = v44;

    v46 = sub_2C39D8();
    v48 = v47;
    LOBYTE(v40) = v49;
    v50 = a1;
    v52 = v51;
    sub_72180(v41, v43, v45 & 1);

    v129 = v46;
    v130 = v48;
    LOBYTE(v43) = v40 & 1;
    v131 = v40 & 1;
    v132 = v52;
    v53 = v106;
    sub_2C32B8();
    v54 = v105;
    sub_2C3FE8();
    (*(v108 + 8))(v53, v100);
    sub_72180(v46, v48, v43);

    KeyPath = swift_getKeyPath();
    v56 = v107;
    sub_69130(v54, v107, &qword_3BEC80, &qword_2E74A0);
    v57 = v56 + *(v113 + 36);
    v58 = v101;
    *v57 = KeyPath;
    *(v57 + 8) = v58;
    *(v57 + 16) = v58 ^ 1;
    sub_6932C(v56, v115, &qword_3C6D40, &unk_2F59D8);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3C6D50, &qword_3C6D30, &qword_2F59C0, &protocol conformance descriptor for HStack<A>);
    sub_216F20();
    v59 = v112;
    sub_2C33C8();
    sub_69198(v56, &qword_3C6D40, &unk_2F59D8);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    *v17 = sub_2C3178();
    *(v17 + 1) = 0x4020000000000000;
    v17[16] = 0;
    v60 = sub_6620C(&qword_3C6D80, &qword_2F5A48);
    sub_214CD8(v32, a2, a1, &v17[*(v60 + 44)]);
    sub_6932C(v17, v115, &qword_3C6D30, &qword_2F59C0);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3C6D50, &qword_3C6D30, &qword_2F59C0, &protocol conformance descriptor for HStack<A>);
    v50 = a1;
    sub_216F20();
    v59 = v112;
    sub_2C33C8();
    sub_69198(v17, &qword_3C6D30, &qword_2F59C0);
    (*(v30 + 8))(v32, v29);
  }

  type metadata accessor for ReviewBrickComponentModel(0);
  sub_6620C(&qword_3C5878, &qword_2F59F0);
  sub_2C1988();
  v61 = v129;

  sub_2C3908();
  v63 = v125;
  v62 = v126;
  v64 = v111;
  (*(v126 + 104))(v125, enum case for Font.Leading.tight(_:), v111);
  sub_2C38E8();

  (*(v62 + 8))(v63, v64);
  v65 = v50;
  if (v61 == 1)
  {
    v126 = v50;
    v66 = sub_2C39E8();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    v129 = v66;
    v130 = v68;
    v131 = v70 & 1;
    v132 = v72;
    v73 = v127 + *(type metadata accessor for ReviewBrickComponent(0) + 28);
    v74 = *v73;
    if (*(v73 + 8) != 1)
    {

      sub_2C5DD8();
      v75 = sub_2C3718();
      sub_2C0058();

      v76 = v102;
      sub_2C30E8();
      swift_getAtKeyPath();
      sub_71AF4(v74, 0);
      (*(v103 + 8))(v76, v104);
    }

    v77 = v109;
    sub_2C4148();
    sub_72180(v66, v68, v70 & 1);

    v78 = v110;
    v79 = v119;
    (*(v110 + 16))(v120, v77, v119);
    swift_storeEnumTagMultiPayload();
    v129 = &type metadata for Text;
    v130 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    (*(v78 + 8))(v77, v79);
    v65 = v126;
  }

  else
  {
    v80 = sub_2C39E8();
    v82 = v81;
    v84 = v83;
    v86 = v85;

    v87 = v120;
    *v120 = v80;
    v87[1] = v82;
    *(v87 + 16) = v84 & 1;
    v87[3] = v86;
    swift_storeEnumTagMultiPayload();
    v129 = &type metadata for Text;
    v130 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
  }

  v88 = sub_2C3178();
  v89 = v123;
  *v123 = v88;
  *(v89 + 8) = 0;
  *(v89 + 16) = 1;
  v90 = v89 + *(sub_6620C(&qword_3C6D68, &qword_2F5A30) + 44);
  *v90 = sub_2C3178();
  *(v90 + 8) = 0x4020000000000000;
  *(v90 + 16) = 0;
  v91 = sub_6620C(&qword_3C6D70, &qword_2F5A38);
  sub_2156E0(v65, v127, (v90 + *(v91 + 44)));
  v92 = v59;
  v93 = v117;
  sub_6932C(v59, v117, &qword_3C6D48, &qword_2F59E8);
  v94 = v121;
  sub_6932C(v128, v121, &qword_3C6D28, &qword_2F59B8);
  v95 = v122;
  sub_6932C(v89, v122, &qword_3C6D10, &qword_2F59A0);
  v96 = v124;
  sub_6932C(v93, v124, &qword_3C6D48, &qword_2F59E8);
  v97 = sub_6620C(&qword_3C6D78, &qword_2F5A40);
  sub_6932C(v94, v96 + *(v97 + 48), &qword_3C6D28, &qword_2F59B8);
  sub_6932C(v95, v96 + *(v97 + 64), &qword_3C6D10, &qword_2F59A0);
  sub_69198(v89, &qword_3C6D10, &qword_2F59A0);
  sub_69198(v128, &qword_3C6D28, &qword_2F59B8);
  sub_69198(v92, &qword_3C6D48, &qword_2F59E8);
  sub_69198(v95, &qword_3C6D10, &qword_2F59A0);
  sub_69198(v94, &qword_3C6D28, &qword_2F59B8);
  return sub_69198(v93, &qword_3C6D48, &qword_2F59E8);
}

uint64_t sub_214CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v5 = sub_6620C(&qword_3C6D88, &unk_2F5A50);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_2C0DB8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3C42F8, &qword_2F0EB0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v29 - v21;
  (*(v12 + 16))(v14, a1, v11, v20);
  sub_2C2378();
  sub_2C46B8();
  sub_2C2708();
  v23 = &v22[*(v16 + 44)];
  v24 = v34;
  *v23 = v33;
  *(v23 + 1) = v24;
  *(v23 + 2) = v35;
  *v10 = sub_2C3338();
  *(v10 + 1) = 0x3FF0000000000000;
  v10[16] = 0;
  v25 = sub_6620C(&qword_3C6D90, &qword_2F5A60);
  sub_214FE8(v30, v31, &v10[*(v25 + 44)]);
  sub_6932C(v22, v18, &qword_3C42F8, &qword_2F0EB0);
  sub_6932C(v10, v7, &qword_3C6D88, &unk_2F5A50);
  v26 = v32;
  sub_6932C(v18, v32, &qword_3C42F8, &qword_2F0EB0);
  v27 = sub_6620C(&qword_3C6D98, &qword_2F5A68);
  sub_6932C(v7, v26 + *(v27 + 48), &qword_3C6D88, &unk_2F5A50);
  sub_69198(v10, &qword_3C6D88, &unk_2F5A50);
  sub_69198(v22, &qword_3C42F8, &qword_2F0EB0);
  sub_69198(v7, &qword_3C6D88, &unk_2F5A50);
  return sub_69198(v18, &qword_3C42F8, &qword_2F0EB0);
}

uint64_t sub_214FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v74 = a3;
  v66 = sub_2C0D48();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = (v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2C3308();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C38C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BEC80, &qword_2E74A0);
  __chkstk_darwin(v11 - 8);
  v68 = v62 - v12;
  v13 = sub_6620C(&qword_3C6D40, &unk_2F59D8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v73 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v62 - v17;
  v69 = type metadata accessor for ReviewBrickComponentModel(0);
  v75 = a2;
  v19 = *(v69 + 28);
  v20 = sub_6620C(&qword_3C5878, &qword_2F59F0);
  v62[1] = v19;
  v62[0] = v20;
  sub_2C1988();
  v67 = v76;

  sub_2C3908();
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  sub_2C38E8();

  (*(v8 + 8))(v10, v7);
  v21 = sub_2C39E8();
  v23 = v22;
  LOBYTE(v10) = v24;

  v25 = sub_2C39D8();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;
  sub_72180(v21, v23, v10 & 1);

  v76 = v25;
  v77 = v27;
  LOBYTE(v8) = v8 & 1;
  v78 = v8;
  v79 = v30;
  v31 = v70;
  sub_2C32B8();
  v32 = v68;
  sub_2C3FE8();
  (*(v71 + 8))(v31, v72);
  sub_72180(v25, v27, v8);

  KeyPath = swift_getKeyPath();
  sub_69130(v32, v18, &qword_3BEC80, &qword_2E74A0);
  v34 = *(v14 + 44);
  v72 = v18;
  v35 = &v18[v34];
  v36 = v67;
  *v35 = KeyPath;
  *(v35 + 1) = v36;
  v35[16] = v36 ^ 1;
  if (*(v75 + *(v69 + 40) + 8))
  {

    sub_2C38F8();
    v37 = sub_2C39E8();
    v39 = v38;
    v41 = v40;

    v42 = v63;
    sub_29A87C(v63);
    v43 = sub_2C0D08();
    (*(v64 + 8))(v42, v66);
    v76 = v43;
    v44 = sub_2C39A8();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_72180(v37, v39, v41 & 1);

    sub_2C1988();
    v51 = v76;
    v52 = v76 ^ 1;
    v53 = swift_getKeyPath();
    v54 = v48 & 1;
    v75 = v44;
    v71 = v46;
    sub_BE2CC(v44, v46, v48 & 1);
  }

  else
  {
    v75 = 0;
    v71 = 0;
    v54 = 0;
    v50 = 0;
    v53 = 0;
    v51 = 0;
    v52 = 0;
  }

  v56 = v72;
  v55 = v73;
  sub_6932C(v72, v73, &qword_3C6D40, &unk_2F59D8);
  v57 = v74;
  sub_6932C(v55, v74, &qword_3C6D40, &unk_2F59D8);
  v58 = v57 + *(sub_6620C(&qword_3C6DA0, &qword_2F5A70) + 48);
  v59 = v75;
  v60 = v71;
  sub_217094(v75, v71, v54, v50, v53);
  sub_2170E4(v59, v60, v54, v50, v53);
  *v58 = v59;
  *(v58 + 8) = v60;
  *(v58 + 16) = v54;
  *(v58 + 24) = v50;
  *(v58 + 32) = v53;
  *(v58 + 40) = v51;
  *(v58 + 48) = v52;
  sub_69198(v56, &qword_3C6D40, &unk_2F59D8);
  sub_2170E4(v59, v60, v54, v50, v53);
  return sub_69198(v55, &qword_3C6D40, &unk_2F59D8);
}

uint64_t sub_2156E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52[1] = a2;
  v58 = a3;
  v57 = sub_2C0D48();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ReviewBrickComponent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReviewBrickComponentModel(0);
  v11 = *(v10 - 8);
  v60 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_6620C(&qword_3C6DA8, &qword_2F5A78);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v52[0] = v52 - v16;
  sub_217134(a1, v13, type metadata accessor for ReviewBrickComponentModel);
  sub_217134(a2, v9, type metadata accessor for ReviewBrickComponent);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_217580(v13, v19 + v17, type metadata accessor for ReviewBrickComponentModel);
  sub_217580(v9, v19 + v18, type metadata accessor for ReviewBrickComponent);
  sub_6620C(&qword_3C6DB0, &qword_2F5A80);
  sub_2BFBC8();
  sub_2BFBA8();
  sub_2176CC();
  sub_217AE8(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_217AE8(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v20 = sub_2BFBD8();
  v21 = (a1 + *(v60 + 56));
  v22 = v21[1];
  v61 = *v21;
  v62 = v22;
  sub_7212C(v20, v23, v24);

  v25 = sub_2C3A48();
  v27 = v26;
  LOBYTE(v7) = v28;
  sub_2C38F8();
  v29 = sub_2C39E8();
  v31 = v30;
  v33 = v32;

  sub_72180(v25, v27, v7 & 1);

  v34 = v53;
  sub_29A87C(v53);
  v35 = sub_2C0D08();
  (*(v55 + 8))(v34, v57);
  v61 = v35;
  v53 = sub_2C39A8();
  v37 = v36;
  LODWORD(v55) = v38;
  v57 = v39;
  sub_72180(v29, v31, v33 & 1);

  sub_6620C(&qword_3C5878, &qword_2F59F0);
  sub_2C1988();
  v40 = v61;
  KeyPath = swift_getKeyPath();
  v42 = v54;
  v43 = *(v54 + 16);
  v44 = v59;
  v45 = v52[0];
  v46 = v56;
  v43(v59, v52[0], v56);
  v47 = v58;
  v43(v58, v44, v46);
  v48 = &v47[*(sub_6620C(&qword_3C6DF0, &unk_2F5AC0) + 48)];
  v49 = v53;
  *v48 = v53;
  *(v48 + 1) = v37;
  LOBYTE(v44) = v55 & 1;
  v48[16] = v55 & 1;
  *(v48 + 3) = v57;
  *(v48 + 4) = KeyPath;
  *(v48 + 5) = v40;
  v48[48] = v40 ^ 1;
  sub_BE2CC(v49, v37, v44);
  v50 = *(v42 + 8);

  v50(v45, v46);
  sub_72180(v49, v37, v44);

  return (v50)(v59, v46);
}

uint64_t sub_215D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v79 = a1;
  v80 = a4;
  v78 = sub_2C5418();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C5288();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BFDD8();
  __chkstk_darwin(v7 - 8);
  v72 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v86);
  v83 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v70 - v11;
  v12 = sub_2C29C8();
  v89 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v70 - v16;
  v87 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v87);
  v85 = &v70 - v17;
  v18 = sub_2C0D48();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_6620C(&qword_3C6DE0, &unk_2F5AA0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  v25 = sub_6620C(&qword_3C6DC0, &qword_2F5A88);
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  v71 = sub_6620C(&qword_3C6DF8, &qword_2F5AD0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v81 = &v70 - v28;
  v29 = *(a2 + *(type metadata accessor for ReviewBrickComponentModel(0) + 52));
  sub_2C0E88();
  v30 = sub_2C3908();
  KeyPath = swift_getKeyPath();
  v32 = &v24[*(v22 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = v14;
  sub_2179D0();
  v34 = v88;
  sub_2C4058();
  sub_69198(v24, &qword_3C6DE0, &unk_2F5AA0);
  sub_29A87C(v21);
  v35 = sub_2C0D08();
  (*(v19 + 8))(v21, v18);
  *&v27[*(sub_6620C(&qword_3C6DD8, &qword_2F5A98) + 36)] = v35;
  v90 = v25;
  v36 = *(v25 + 36);
  v82 = v27;
  v37 = &v27[v36];
  v38 = *(sub_6620C(&qword_3BD7E8, &qword_2E4500) + 28);
  v39 = enum case for Image.Scale.small(_:);
  v40 = sub_2C42D8();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  v41 = v89;
  v42 = *(v89 + 104);
  v42(v34, enum case for DynamicTypeSize.xSmall(_:), v12);
  v42(v33, enum case for DynamicTypeSize.medium(_:), v12);
  sub_217AE8(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v44 = *(v41 + 32);
  v45 = v84;
  v46 = v12;
  v44(v84, v34, v12);
  v47 = v83;
  v48 = v86;
  v44((v45 + *(v86 + 48)), v33, v12);
  sub_6932C(v45, v47, &qword_3BC938, &unk_2E3990);
  v49 = *(v48 + 48);
  v50 = v85;
  v44(v85, v47, v46);
  v51 = *(v41 + 8);
  v51(v47 + v49, v46);
  sub_69130(v45, v47, &qword_3BC938, &unk_2E3990);
  v52 = v87;
  v44((v50 + *(v87 + 36)), (v47 + *(v48 + 48)), v46);
  v51(v47, v46);
  v53 = sub_217824();
  v54 = sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
  v56 = v81;
  v55 = v82;
  v57 = v90;
  sub_2C3F48();
  sub_69198(v50, &qword_3BC940, &qword_2F5A90);
  result = sub_69198(v55, &qword_3C6DC0, &qword_2F5A88);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v29 < 9.22337204e18)
  {
    v89 = v54;
    v58 = v53;
    v59 = v56;
    v60 = v73;
    v61 = v52;
    sub_2C5278();
    v62 = v77;
    v63 = v75;
    v64 = v78;
    (*(v77 + 104))(v75, enum case for LocalizerLookupStrategy.default(_:), v78);
    sub_2BFDA8();
    (*(v62 + 8))(v63, v64);
    (*(v74 + 8))(v60, v76);
    sub_691F8(v79, v91);
    v65 = sub_2C3968();
    v67 = v66;
    LOBYTE(v62) = v68;
    v91[0] = v57;
    v91[1] = v61;
    v91[2] = v58;
    v91[3] = v89;
    swift_getOpaqueTypeConformance2();
    v69 = v71;
    sub_2C3F68();
    sub_72180(v65, v67, v62 & 1);

    return (*(v70 + 8))(v59, v69);
  }

LABEL_9:
  __break(1u);
  return result;
}

__n128 sub_216778@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2C0D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2C2AA8();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_6620C(&qword_3BCAB8, &qword_2F5990);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  if (sub_2C4618())
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 10.0;
  }

  v15 = *(v7 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_2C31A8();
  (*(*(v17 - 8) + 104))(v9 + v15, v16, v17);
  *v9 = v14;
  v9[1] = v14;
  sub_29A87C(v5);
  v18 = sub_2C0D18();
  (*(v3 + 8))(v5, v2);
  sub_217580(v9, v13, &type metadata accessor for RoundedRectangle);
  *&v13[*(v11 + 60)] = v18;
  *&v13[*(v11 + 64)] = 256;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v13, a1, &qword_3BCAB8, &qword_2F5990);
  v19 = a1 + *(sub_6620C(&qword_3C6D08, &qword_2F5998) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_216A48(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_217134(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReviewBrickComponent);
  sub_217AE8(&qword_3C8540, type metadata accessor for ReviewBrickComponent, &unk_2F58E8);
  return sub_2BFD18();
}

uint64_t sub_216C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6CA0, &qword_2F5950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216C84()
{
  result = qword_3C6CD8;
  if (!qword_3C6CD8)
  {
    sub_718D4(&qword_3C6CA8, &qword_2F5958);
    sub_216D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6CD8);
  }

  return result;
}

unint64_t sub_216D10()
{
  result = qword_3C6CE0;
  if (!qword_3C6CE0)
  {
    sub_718D4(&qword_3C6CA0, &qword_2F5950);
    sub_72B74(&qword_3C6CE8, &qword_3C6CF0, &qword_2F5978, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6CE0);
  }

  return result;
}

uint64_t sub_216DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _JetLocalizeDefaultFailed.init(error:retry:)(a1, a2, a3, v6);
}

uint64_t sub_216E50(uint64_t a1)
{
  v2 = sub_2C42D8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2E78();
}

unint64_t sub_216F20()
{
  result = qword_3C6D58;
  if (!qword_3C6D58)
  {
    sub_718D4(&qword_3C6D40, &unk_2F59D8);
    sub_216FD8();
    sub_72B74(&qword_3BE160, &qword_3BE168, &unk_2E5718, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6D58);
  }

  return result;
}

unint64_t sub_216FD8()
{
  result = qword_3C6D60;
  if (!qword_3C6D60)
  {
    sub_718D4(&qword_3BEC80, &qword_2E74A0);
    sub_217AE8(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6D60);
  }

  return result;
}

double sub_217094(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_BE2CC(a1, a2, a3 & 1);
  }

  return result;
}

double sub_2170E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_72180(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_217134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21719C()
{
  v1 = type metadata accessor for ReviewBrickComponentModel(0);
  v23 = *(*(v1 - 1) + 80);
  v2 = (v23 + 16) & ~v23;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for ReviewBrickComponent(0);
  v5 = *(*(v4 - 1) + 80);
  v22 = *(*(v4 - 1) + 64);
  v6 = v0;
  v7 = v0 + v2;
  sub_68CD0((v0 + v2));
  if (*(v0 + v2 + 64))
  {
    sub_68CD0((v7 + 40));
  }

  v8 = v1[7];
  v9 = sub_6620C(&qword_3C5878, &qword_2F59F0);
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[8];
  v11 = sub_2C5018();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v7 + v1[14];
  if (*(v13 + 8))
  {

    sub_68CD0((v13 + 32));
  }

  v14 = v7 + v1[15];
  if (*(v14 + 8))
  {

    sub_68CD0((v14 + 32));
  }

  v15 = (v2 + v3 + v5) & ~v5;
  v16 = v7 + v1[16];
  if (*(v16 + 8))
  {

    sub_68CD0((v16 + 32));
  }

  v17 = v6 + v15;
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2C0D48();
    (*(*(v18 - 8) + 8))(v6 + v15, v18);
  }

  else
  {
  }

  sub_71AF4(*(v17 + v4[5]), *(v17 + v4[5] + 8));
  v19 = v4[6];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_2C0C98();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  else
  {
  }

  sub_71AF4(*(v17 + v4[7]), *(v17 + v4[7] + 8));

  return _swift_deallocObject(v6, v15 + v22, v23 | v5 | 7);
}

uint64_t sub_217580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2175E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReviewBrickComponentModel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReviewBrickComponent(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_215D60(a1, v2 + v6, v9, a2);
}

unint64_t sub_2176CC()
{
  result = qword_3C6DB8;
  if (!qword_3C6DB8)
  {
    sub_718D4(&qword_3C6DB0, &qword_2F5A80);
    sub_718D4(&qword_3C6DC0, &qword_2F5A88);
    sub_718D4(&qword_3BC940, &qword_2F5A90);
    sub_217824();
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_217AE8(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DB8);
  }

  return result;
}

unint64_t sub_217824()
{
  result = qword_3C6DC8;
  if (!qword_3C6DC8)
  {
    sub_718D4(&qword_3C6DC0, &qword_2F5A88);
    sub_2178DC();
    sub_72B74(&qword_3BD800, &qword_3BD7E8, &qword_2E4500, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DC8);
  }

  return result;
}

unint64_t sub_2178DC()
{
  result = qword_3C6DD0;
  if (!qword_3C6DD0)
  {
    sub_718D4(&qword_3C6DD8, &qword_2F5A98);
    sub_718D4(&qword_3C6DE0, &unk_2F5AA0);
    sub_2179D0();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6A70, &qword_3C6A78, &unk_2F5AB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DD0);
  }

  return result;
}

unint64_t sub_2179D0()
{
  result = qword_3C6DE8;
  if (!qword_3C6DE8)
  {
    sub_718D4(&qword_3C6DE0, &unk_2F5AA0);
    sub_217AE8(&qword_3BE368, &type metadata accessor for StarRatingView, &protocol conformance descriptor for StarRatingView);
    sub_72B74(&qword_3BCB10, &qword_3BCB18, &qword_2E3B50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6DE8);
  }

  return result;
}

uint64_t sub_217AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_217B34()
{
  result = qword_3C6E00;
  if (!qword_3C6E00)
  {
    sub_718D4(&qword_3C6CF8, &qword_2F5980);
    sub_718D4(&qword_3C6CA8, &qword_2F5958);
    sub_216C84();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C6E08, &qword_3C6D00, &qword_2F5988, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6E00);
  }

  return result;
}

uint64_t sub_217C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_217C90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_217D10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a1;
  v11 = sub_2C30F8();
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4 & 1;
  v25 = a4;
  v24 = a5;
  v26 = a5;
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  sub_2C4398();
  sub_6620C(&qword_3C6E10, &qword_2F5C38);
  sub_72B74(&qword_3C6E18, &qword_3C6E10, &qword_2F5C38, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_2C3AA8();

  if ((a3 & 1) == 0)
  {
    sub_2C5DD8();
    v14 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v20 + 8))(v13, v21);
  }

  v15 = sub_2BEE68();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3 & 1;
  *(v16 + 32) = v23;
  *(v16 + 40) = v24;
  v17 = sub_6620C(&qword_3C6E20, &unk_2F5C40);
  *(a6 + *(v17 + 52)) = v15;
  v18 = (a6 + *(v17 + 56));
  *v18 = sub_2181B0;
  v18[1] = v16;

  return result;
}

uint64_t sub_217FAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = sub_2BEE48();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for HostingControllerVisibilityStateManager.State.visible(_:), v7, v9);
  sub_2181CC();
  sub_2C5A88();
  sub_2C5A88();
  if (v15 == v14)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2C65B8();
  }

  (*(v8 + 8))(v11, v7);

  LOBYTE(v15) = a4 & 1;
  *(&v15 + 1) = a5;
  LOBYTE(v14) = v12 & 1;
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  return sub_2C4388();
}

uint64_t sub_218170()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_2181CC()
{
  result = qword_3C0C10;
  if (!qword_3C0C10)
  {
    sub_2BEE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0C10);
  }

  return result;
}

uint64_t sub_21827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2C4BF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&unk_3CA260, &qword_2E3930);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2183C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_2C4BF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&unk_3CA260, &qword_2E3930);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SeriesListFilterAction(uint64_t a1)
{
  result = qword_3C6E88;
  if (!qword_3C6E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21853C(uint64_t a1)
{
  sub_7848C();
  if (v1 <= 0x3F)
  {
    sub_2C4BF8();
    if (v2 <= 0x3F)
    {
      sub_784F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21877C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for SheetHeaderComponent(uint64_t a1)
{
  result = qword_3C6F28;
  if (!qword_3C6F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218938(uint64_t a1)
{
  sub_FF518(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_FF518(319, &qword_3BE478, &type metadata accessor for FontConstants);
    if (v2 <= 0x3F)
    {
      sub_FF518(319, &qword_3BD600, &type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_218AA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v4 = sub_2C0C68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0C98();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_6620C(&qword_3C6F70, &qword_2F5D90);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  type metadata accessor for SheetHeaderComponent(0);
  sub_29AAE0(v11);
  sub_2C0C78();
  (*(v9 + 8))(v11, v8);
  sub_2C0C08();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *v14 = sub_2C3178();
  *(v14 + 1) = v16;
  v14[16] = 0;
  v17 = sub_6620C(&qword_3C6F78, &qword_2F5D98);
  sub_218D68(v23, v2, &v14[*(v17 + 44)]);
  sub_2C46B8();
  sub_2C2AD8();
  sub_21991C(v14, a2);
  v18 = a2 + *(sub_6620C(&qword_3C6F80, &qword_2F5DA0) + 36);
  v19 = v29;
  *(v18 + 64) = v28;
  *(v18 + 80) = v19;
  *(v18 + 96) = v30;
  v20 = v25;
  *v18 = v24;
  *(v18 + 16) = v20;
  result = v27;
  *(v18 + 32) = v26;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_218D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v33 = sub_2C0DB8();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C2388();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C6F88, &unk_2F5DA8);
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  type metadata accessor for SheetHeaderComponentModel(0);
  sub_6620C(&qword_3C07F0, &qword_2EA210);
  v17 = sub_2C1078();
  sub_2BF828();

  sub_264DA4(v7);
  sub_2C2378();
  sub_264DA4(v7);
  sub_2C0D98();
  (*(v5 + 8))(v7, v33);
  sub_21998C(&qword_3C6F90, &type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
  sub_2C3D38();
  (*(v9 + 8))(v11, v8);
  v18 = sub_2C3338();
  LOBYTE(v42[0]) = 0;
  sub_2191C4(a1, v36, v39);
  *&v38[7] = v39[0];
  *&v38[23] = v39[1];
  *&v38[39] = v39[2];
  *&v38[55] = v39[3];
  LOBYTE(v9) = v42[0];
  v19 = v34;
  v20 = v35;
  v21 = *(v34 + 16);
  v22 = v32;
  v21(v32, v16, v35);
  v23 = v37;
  v21(v37, v22, v20);
  v24 = &v23[*(sub_6620C(&qword_3C6F98, &qword_2F5DB8) + 48)];
  *&v40 = v18;
  *(&v40 + 1) = 0x4008000000000000;
  v41[0] = v9;
  *&v41[1] = *v38;
  *&v41[17] = *&v38[16];
  *&v41[33] = *&v38[32];
  *&v41[49] = *&v38[48];
  v25 = *&v38[63];
  *&v41[64] = *&v38[63];
  v26 = *v41;
  *v24 = v40;
  *(v24 + 1) = v26;
  v27 = *&v41[16];
  v28 = *&v41[32];
  v29 = *&v41[48];
  *(v24 + 10) = v25;
  *(v24 + 3) = v28;
  *(v24 + 4) = v29;
  *(v24 + 2) = v27;
  sub_2199D4(&v40, v42);
  v30 = *(v19 + 8);
  v30(v16, v20);
  v42[0] = v18;
  v42[1] = 0x4008000000000000;
  v43 = v9;
  v45 = *&v38[16];
  v46 = *&v38[32];
  *v47 = *&v38[48];
  *&v47[15] = *&v38[63];
  v44 = *v38;
  sub_219A44(v42);
  return (v30)(v22, v20);
}

double sub_2191C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = a3;
  v74 = a2;
  v67 = a1;
  v76 = sub_2C0D48();
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v69 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_2C0928();
  v77 = *(v75 - 8);
  __chkstk_darwin(v75);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C0978();
  v62 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for SheetHeaderComponentModel(0);
  v11 = (a1 + *(v66 + 32));
  v12 = v11[1];
  v80 = *v11;
  v81 = v12;
  v65 = sub_7212C(v66, v13, v14);

  v15 = sub_2C3A48();
  v17 = v16;
  v19 = v18;
  v64 = *(type metadata accessor for SheetHeaderComponent(0) + 20);
  sub_29AD08(v10);
  v58 = v6;
  sub_2C0938();
  v20 = *(v8 + 8);
  v61 = v8 + 8;
  v63 = v20;
  v20(v10, v7);
  sub_2C0908();
  v21 = *(v77 + 8);
  v77 += 8;
  v60 = v21;
  v21(v6, v75);
  v22 = sub_2C39E8();
  v24 = v23;
  v26 = v25;
  sub_72180(v15, v17, v19 & 1);

  v27 = v69;
  sub_29A87C(v69);
  sub_2C0CB8();
  v28 = *(v78 + 8);
  v78 += 8;
  v59 = v28;
  v28(v27, v76);
  v29 = sub_2C3998();
  v71 = v30;
  v72 = v29;
  v70 = v31;
  v68 = v32;
  sub_72180(v22, v24, v26 & 1);

  v33 = (v67 + *(v66 + 36));
  v34 = v33[1];
  v80 = *v33;
  v81 = v34;

  v35 = sub_2C3A48();
  v37 = v36;
  v39 = v38;
  sub_29AD08(v10);
  v40 = v58;
  sub_2C0938();
  v63(v10, v62);
  sub_2C0918();
  v60(v40, v75);
  v41 = sub_2C39E8();
  v43 = v42;
  LOBYTE(v40) = v44;
  sub_72180(v35, v37, v39 & 1);

  sub_29A87C(v27);
  sub_2C0D08();
  v59(v27, v76);
  v45 = sub_2C3998();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_72180(v41, v43, v40 & 1);

  v52 = v68 & 1;
  v79 = v68 & 1;
  LOBYTE(v80) = v68 & 1;
  LOBYTE(v35) = v49 & 1;
  v82 = v49 & 1;
  v54 = v72;
  v53 = v73;
  v56 = v70;
  v55 = v71;
  *v73 = v72;
  v53[1] = v56;
  *(v53 + 16) = v52;
  v53[3] = v55;
  v53[4] = v45;
  v53[5] = v47;
  *(v53 + 48) = v35;
  v53[7] = v51;
  sub_BE2CC(v54, v56, v52);

  sub_BE2CC(v45, v47, v35);

  sub_72180(v45, v47, v35);

  sub_72180(v54, v56, v79);

  return result;
}

uint64_t sub_219764(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_219AAC(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21998C(&unk_3C85E0, type metadata accessor for SheetHeaderComponent, &unk_2F5D28);
  return sub_2BFD18();
}

uint64_t sub_21991C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6F70, &qword_2F5D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21998C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2199D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C6FA0, &unk_2F5DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A44(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C6FA0, &unk_2F5DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SheetHeaderComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219B14()
{
  result = qword_3C6FA8;
  if (!qword_3C6FA8)
  {
    sub_718D4(&qword_3C6F80, &qword_2F5DA0);
    sub_219BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6FA8);
  }

  return result;
}

unint64_t sub_219BA0()
{
  result = qword_3C6FB0;
  if (!qword_3C6FB0)
  {
    sub_718D4(&qword_3C6F70, &qword_2F5D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6FB0);
  }

  return result;
}

uint64_t sub_219C28(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C1880, &qword_2F61C0);
  __chkstk_darwin(v2 - 8);
  sub_6932C(a1, &v5 - v3, &qword_3C1880, &qword_2F61C0);
  return sub_2C2D38();
}

uint64_t sub_219CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_219D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_2C2A38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_6620C(&qword_3C7278, &qword_2F61F8);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v40 = &v27 - v8;
  v9 = sub_6620C(&qword_3C7270, &qword_2F61F0);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  if (qword_3BB8D8 != -1)
  {
    swift_once();
  }

  v39 = sub_2C2588();
  sub_57AD8(v39, qword_3E8898);
  v37 = *(v5 + 16);
  v38 = v5 + 16;
  v37(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = *(v5 + 80);
  v35 = a1;
  v13 = (v12 + 16) & ~v12;
  v14 = swift_allocObject();
  v36 = *(v5 + 32);
  v36(v14 + v13, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v15 = sub_6620C(&qword_3C7248, &qword_2F61C8);
  v33 = v6;
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  v17 = sub_2263D0();
  sub_2C40A8();

  if (qword_3BB8E0 != -1)
  {
    swift_once();
  }

  sub_57AD8(v39, qword_3E88B0);
  v18 = v34;
  v37(v34, v35, v4);
  v19 = swift_allocObject();
  v36(v19 + v13, v18, v4);
  v41 = v16;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v29;
  v22 = v40;
  sub_2C40A8();

  (*(v28 + 8))(v22, v21);
  if (qword_3BB8E8 != -1)
  {
    swift_once();
  }

  sub_57AD8(v39, qword_3E88C8);
  v23 = v34;
  v37(v34, v35, v4);
  v24 = swift_allocObject();
  v36(v24 + v13, v23, v4);
  v41 = v21;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_2C40A8();

  return (*(v30 + 8))(v11, v25);
}

uint64_t sub_21A228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2D98();
  *a1 = result & 1;
  return result;
}

void sub_21A280(uint64_t a1)
{
  v2 = type metadata accessor for Shelf(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Page(0);
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (a1)
  {
    v9 = 0;
    v10 = 0;
    type metadata accessor for PageView(0);
    while (1)
    {
      sub_6620C(&qword_3C0C50, &qword_2EA860);
      sub_2C44C8();
      v11 = *&v8[*(v6 + 60)];

      sub_226368(v8, type metadata accessor for Page);
      if (v10 >= *(v11 + 16))
      {
        break;
      }

      sub_226300(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, type metadata accessor for Shelf);

      v12 = v5[*(v2 + 28)];
      sub_226368(v5, type metadata accessor for Shelf);
      v13 = __OFADD__(v9, v12);
      v9 += v12;
      if (v13)
      {
        goto LABEL_10;
      }

      if (a1 == ++v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21A494()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageView(0);
  sub_6620C(&qword_3BC330, &unk_2E3D50);
  sub_2C4968();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  v7 = v0 + *(v5 + 32);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v8, 0);
    (*(v2 + 8))(v4, v1);
    v8 = v14;
  }

  sub_2BF028();
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    sub_2C4DB8();
    v8 = v14;
  }

  v13 = v8;
  sub_2C4958();
  v14 = v6;
  sub_6620C(&unk_3BD220, &qword_2E3FF0);
  sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
  v11 = sub_2C4DF8();

  return v11;
}

uint64_t sub_21A74C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v248 = a1;
  v249 = sub_2C5118();
  v247 = *(v249 - 8);
  __chkstk_darwin(v249);
  v244 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v245 = &v196 - v5;
  __chkstk_darwin(v6);
  v246 = &v196 - v7;
  v8 = sub_2BEF78();
  v265 = *(v8 - 8);
  v266 = v8;
  __chkstk_darwin(v8);
  v243 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v262 = &v196 - v11;
  v12 = sub_6620C(&qword_3C70B0, &unk_2F5E70);
  __chkstk_darwin(v12 - 8);
  v239 = &v196 - v13;
  v213 = type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor(0);
  __chkstk_darwin(v213);
  v212 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_2C30F8();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2C1A28();
  v263 = *(v208 - 8);
  __chkstk_darwin(v208);
  v211 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&unk_3C0EA0, &qword_2EAC00);
  __chkstk_darwin(v17 - 8);
  v203 = &v196 - v18;
  v207 = sub_2C0F68();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v202 = (&v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v271 = type metadata accessor for Page(0);
  __chkstk_darwin(v271);
  v242 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v215 = &v196 - v22;
  __chkstk_darwin(v23);
  v214 = &v196 - v24;
  __chkstk_darwin(v25);
  v205 = &v196 - v26;
  __chkstk_darwin(v27);
  v204 = &v196 - v28;
  __chkstk_darwin(v29);
  v31 = &v196 - v30;
  v32 = type metadata accessor for PageView(0);
  v252 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v264 = sub_6620C(&qword_3C70B8, &qword_2F5E80);
  __chkstk_darwin(v264);
  v36 = &v196 - v35;
  v210 = sub_6620C(&qword_3C70C0, &qword_2F5E88);
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v251 = (&v196 - v37);
  v253 = sub_6620C(&qword_3C70C8, &qword_2F5E90);
  __chkstk_darwin(v253);
  v254 = (&v196 - v38);
  v219 = sub_6620C(&qword_3C70D0, &qword_2F5E98);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = &v196 - v39;
  v216 = sub_6620C(&qword_3C70D8, &qword_2F5EA0);
  __chkstk_darwin(v216);
  v220 = &v196 - v40;
  v259 = sub_6620C(&qword_3C70E0, &qword_2F5EA8);
  __chkstk_darwin(v259);
  v224 = &v196 - v41;
  v227 = sub_6620C(&qword_3C70E8, &qword_2F5EB0);
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v225 = &v196 - v42;
  v231 = sub_6620C(&qword_3C70F0, &qword_2F5EB8);
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v228 = &v196 - v43;
  v235 = sub_6620C(&qword_3C70F8, &qword_2F5EC0);
  v232 = *(v235 - 8);
  __chkstk_darwin(v235);
  v230 = &v196 - v44;
  v45 = sub_6620C(&qword_3C7100, &qword_2F5EC8);
  __chkstk_darwin(v45 - 8);
  v233 = &v196 - v46;
  v237 = sub_6620C(&qword_3C7108, &qword_2F5ED0);
  __chkstk_darwin(v237);
  v234 = &v196 - v47;
  v261 = sub_6620C(&qword_3C7110, &qword_2F5ED8);
  v238 = *(v261 - 8);
  __chkstk_darwin(v261);
  v236 = &v196 - v48;
  v241 = sub_6620C(&qword_3C7118, &unk_2F5EE0);
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v260 = &v196 - v49;
  sub_226300(v2, &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageView);
  v50 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v256 = *(v33 + 80);
  v255 = v50 + v34;
  v201 = swift_allocObject();
  v257 = v50;
  v258 = (&v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227474(v258, v201 + v50, type metadata accessor for PageView);
  v200 = sub_21FE30();
  v199 = sub_2C3758();
  KeyPath = swift_getKeyPath();
  v51 = *(v32 + 40);
  v268 = sub_6620C(&qword_3C0C50, &qword_2EA860);
  v269 = v51;
  sub_2C44C8();
  v52 = v271;
  v197 = v31[v271[23]];
  v250 = type metadata accessor for Page;
  v53 = v31;
  sub_226368(v31, type metadata accessor for Page);
  v196 = swift_getKeyPath();
  v54 = &v36[*(sub_6620C(&qword_3C7120, &unk_2F5F60) + 36)];
  v55 = *(sub_6620C(&qword_3BDFA8, &qword_2E55C8) + 28);
  sub_2C44C8();
  v56 = v52[8];
  v57 = sub_2C1A68();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v54 + v55, v53 + v56, v57);
  v267 = v53;
  sub_226368(v53, v250);
  (*(v58 + 56))(v54 + v55, 0, 1, v57);
  *v54 = v196;
  v59 = v201;
  *v36 = sub_2255B4;
  *(v36 + 1) = v59;
  *(v36 + 2) = v200;
  v36[24] = v199;
  *(v36 + 4) = KeyPath;
  v36[40] = v197;
  v60 = v36;
  v61 = swift_getKeyPath();
  v62 = sub_21A494();
  v63 = &v36[*(v264 + 36)];
  *v63 = v61;
  v63[1] = v62;
  v64 = v202;
  sub_220174(v202);
  v65 = v252;
  v66 = v2 + *(v252 + 56);
  v67 = *(v66 + 16);
  v276 = *v66;
  v277 = v67;
  sub_6620C(&qword_3C7128, &unk_2F5FA0);
  sub_2C4398();
  v68 = v2 + *(v65 + 60);
  v69 = *v68;
  v70 = *(v68 + 8);
  LOBYTE(v276) = v69;
  *(&v276 + 1) = v70;
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  sub_2C4398();
  sub_6620C(&qword_3C6FC0, &unk_2F5DF8);
  v71 = v203;
  sub_2C4398();
  v201 = sub_22566C();
  sub_2C3C38();

  v72 = v208;

  sub_69198(v71, &unk_3C0EA0, &qword_2EAC00);
  (*(v206 + 8))(v64, v207);
  sub_69198(v60, &qword_3C70B8, &qword_2F5E80);
  v73 = v204;
  sub_2C44C8();
  v74 = *(v73 + v271[9]);
  v75 = v250;
  sub_226368(v73, v250);
  v76 = v205;
  sub_2C44C8();
  v77 = *(v263 + 16);
  v78 = v211;
  v77();
  sub_226368(v76, v75);
  v79 = *v2;
  v270 = v2;
  LODWORD(v57) = *(v2 + 8);

  v80 = v79;
  LODWORD(v207) = v57;
  if ((v57 & 1) == 0)
  {
    sub_2C5DD8();
    v81 = sub_2C3718();
    sub_2C0058();

    v82 = v221;
    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v222 + 8))(v82, v223);
    v80 = v272;
  }

  v250 = v79;
  v83 = v213;
  v84 = v212;
  v85 = v78;
  (v77)(&v212[*(v213 + 20)], v78, v72);
  *v84 = v74;
  *&v84[*(v83 + 24)] = v80;
  *&v272 = v264;
  *(&v272 + 1) = v201;
  swift_getOpaqueTypeConformance2();
  sub_2285DC(&qword_3C7190, type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor, &unk_2F2788);
  v86 = v254;
  v87 = v210;
  v88 = v251;
  sub_2C3FD8();
  sub_226368(v84, type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor);
  (*(v263 + 8))(v85, v72);
  (*(v209 + 8))(v88, v87);
  v89 = v252;
  v90 = v86 + *(sub_6620C(&qword_3C7198, &qword_2F5FE0) + 36);
  sub_6620C(&qword_3C0C70, &qword_2F2510);
  v91 = v270;
  sub_2C44F8();
  v92 = type metadata accessor for PageAlertViewModifier(0);
  v93 = &v90[v92[5]];
  *v93 = swift_getKeyPath();
  v93[8] = 0;
  v94 = &v90[v92[6]];
  *v94 = swift_getKeyPath();
  v94[40] = 0;
  v95 = v92[7];
  *&v90[v95] = swift_getKeyPath();
  sub_6620C(&unk_3C4360, qword_2ED140);
  swift_storeEnumTagMultiPayload();
  v252 = *(v91 + *(v89 + 68));
  v96 = v267;
  sub_2C44C8();
  v97 = v271;
  v98 = v271[17];
  v99 = v86 + *(v253 + 9);
  v100 = type metadata accessor for PageViewEventViewModifier(0);
  v101 = &v99[v100[6]];
  v263 = *(v265 + 16);
  v264 = v265 + 16;
  (v263)(v101, v96 + v98, v266);
  sub_226368(v96, type metadata accessor for Page);
  v102 = v214;
  sub_2C44C8();
  v103 = *(v102 + v97[18]);

  sub_226368(v102, type metadata accessor for Page);
  v104 = v215;
  sub_2C44C8();
  v105 = v97[19];
  v106 = v100[8];
  v107 = sub_2C4BB8();
  (*(*(v107 - 8) + 16))(&v99[v106], v104 + v105, v107);
  sub_226368(v104, type metadata accessor for Page);
  *v99 = swift_getKeyPath();
  v99[8] = 0;
  *(v99 + 2) = v252;
  *&v99[v100[7]] = v103;

  v108 = sub_21A494();
  __chkstk_darwin(v108);
  sub_2C4DB8();
  if (v272 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  v109 = v217;
  v110 = v250;
  sub_2C4E28();
  sub_225990();
  v111 = v254;
  sub_2C3AD8();

  sub_69198(v111, &qword_3C70C8, &qword_2F5E90);

  if ((v207 & 1) == 0)
  {
    sub_2C5DD8();
    v112 = sub_2C3718();
    sub_2C0058();

    v113 = v221;
    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v222 + 8))(v113, v223);
    v110 = v272;
  }

  *&v272 = *(v110 + 2);

  sub_6620C(&qword_3BCE08, &qword_2F6080);
  sub_72B74(&qword_3BCE10, &qword_3BCE08, &qword_2F6080, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v114 = sub_2C2408();

  v253 = type metadata accessor for PageView;
  v115 = v258;
  sub_226300(v270, v258, type metadata accessor for PageView);
  v116 = swift_allocObject();
  v251 = type metadata accessor for PageView;
  sub_227474(v115, v116 + v257, type metadata accessor for PageView);
  v117 = v220;
  (*(v218 + 32))(v220, v109, v219);
  v118 = v216;
  *(v117 + *(v216 + 52)) = v114;
  v119 = (v117 + *(v118 + 56));
  *v119 = sub_225BD0;
  v119[1] = v116;
  v120 = v267;
  sub_2C44C8();
  v121 = *(v120 + v271[22]);

  v254 = type metadata accessor for Page;
  sub_226368(v120, type metadata accessor for Page);
  *&v272 = v121;
  sub_183EBC();
  v122 = sub_2C5E88();
  *&v276 = v122;
  v123 = sub_2C5E78();
  v124 = v239;
  (*(*(v123 - 8) + 56))(v239, 1, 1, v123);
  sub_6620C(&qword_3C71B0, &qword_2F6088);
  sub_72B74(&qword_3C71B8, &qword_3C71B0, &qword_2F6088, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_2285DC(&qword_3C71C0, sub_183EBC, &protocol conformance descriptor for OS_dispatch_queue);
  v125 = v224;
  sub_2C2438();
  sub_69198(v124, &qword_3C70B0, &unk_2F5E70);

  v126 = v258;
  sub_226300(v270, v258, v253);
  v127 = swift_allocObject();
  sub_227474(v126, v127 + v257, v251);
  sub_69130(v117, v125, &qword_3C70D8, &qword_2F5EA0);
  v128 = v259;
  v129 = (v125 + v259[14]);
  *v129 = sub_225BFC;
  v129[1] = v127;
  v130 = type metadata accessor for ListItemComponentModel(0);
  v131 = sub_6620C(&qword_3C71C8, &qword_2F6090);
  v132 = sub_72B74(&qword_3C71D0, &qword_3C70E0, &qword_2F5EA8, &protocol conformance descriptor for SubscriptionView<A, B>);
  v133 = type metadata accessor for ContextActionMenuView(255);
  v134 = sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView, &protocol conformance descriptor for ContextActionMenuView);
  *&v272 = v133;
  *(&v272 + 1) = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = sub_2285DC(&qword_3BD3F8, type metadata accessor for ListItemComponentModel, &protocol conformance descriptor for ListItemComponentModel);
  v256 = OpaqueTypeConformance2;
  v137 = v225;
  v257 = v131;
  sub_2C3B18();
  sub_69198(v125, &qword_3C70E0, &qword_2F5EA8);
  v138 = type metadata accessor for RecommendationItemComponentModel(0);
  v139 = sub_6620C(&qword_3C71D8, &qword_2F6098);
  *&v272 = v128;
  *(&v272 + 1) = v131;
  *&v273 = v130;
  *(&v273 + 1) = v132;
  v274 = OpaqueTypeConformance2;
  v275 = v136;
  v259 = &opaque type descriptor for <<opaque return type of View.componentMenuTemplate<A, B>(for:on:content:)>>;
  v140 = swift_getOpaqueTypeConformance2();
  v141 = sub_225C28();
  v142 = sub_2285DC(&qword_3BD408, type metadata accessor for RecommendationItemComponentModel, &unk_2EA5FC);
  v143 = v228;
  v144 = v227;
  sub_2C3B18();
  (*(v226 + 8))(v137, v144);
  v145 = type metadata accessor for ChartSwooshItemComponentModel(0);
  *&v272 = v144;
  *(&v272 + 1) = v139;
  *&v273 = v138;
  *(&v273 + 1) = v140;
  v274 = v141;
  v275 = v142;
  v253 = swift_getOpaqueTypeConformance2();
  v255 = sub_2285DC(&qword_3BD3A0, type metadata accessor for ChartSwooshItemComponentModel, &unk_2EFA80);
  v146 = v256;
  v147 = v230;
  v148 = v231;
  v149 = v257;
  sub_2C3B18();
  (*(v229 + 8))(v143, v148);
  v150 = v267;
  sub_2C44C8();
  v151 = v262;
  v152 = v266;
  (v263)(v262, v150 + v271[17], v266);
  sub_226368(v150, v254);
  v153 = sub_2BEF68();
  v155 = v154;
  v156 = *(v265 + 8);
  v265 += 8;
  v258 = v156;
  (v156)(v151, v152);
  *&v276 = v153;
  *(&v276 + 1) = v155;
  *&v272 = v148;
  *(&v272 + 1) = v149;
  *&v273 = v145;
  *(&v273 + 1) = v253;
  v274 = v146;
  v275 = v255;
  v157 = swift_getOpaqueTypeConformance2();
  sub_7212C(v157, v158, v159);
  v160 = v233;
  v161 = v235;
  sub_2C3F78();

  (*(v232 + 8))(v147, v161);
  v162 = v267;
  sub_2C44C8();
  v163 = v271;
  v164 = *(v162 + v271[21]);

  v165 = v254;
  sub_226368(v162, v254);
  v166 = v237;
  v167 = *(v237 + 36);
  v168 = v252;

  v169 = v234;
  sub_D5760(v164, v168, &v234[v167]);
  sub_69130(v160, v169, &qword_3C7100, &qword_2F5EC8);
  v170 = sub_225EB0();
  v171 = v236;
  sub_2C3B28();
  sub_69198(v169, &qword_3C7108, &qword_2F5ED0);
  *&v272 = v166;
  *(&v272 + 1) = v170;
  v172 = swift_getOpaqueTypeConformance2();
  v173 = v261;
  v259 = v172;
  sub_2C3B38();
  (*(v238 + 8))(v171, v173);
  v272 = 0u;
  v273 = 0u;
  v174 = v244;
  sub_2C50C8();
  sub_69198(&v272, qword_3C0250, &unk_2E4630);
  v175 = v242;
  sub_2C44C8();
  v176 = v243;
  v177 = v266;
  (v263)(v243, v175 + v163[17], v266);
  sub_226368(v175, v165);
  v178 = sub_2BEF58();
  v180 = v179;
  v181 = v258;
  (v258)(v176, v177);
  if (v180)
  {
    v182 = &type metadata for String;
  }

  else
  {
    v178 = 0;
    v182 = 0;
    *&v273 = 0;
  }

  *&v272 = v178;
  *(&v272 + 1) = v180;
  *(&v273 + 1) = v182;
  v183 = v245;
  sub_2C50F8();
  v184 = *(v247 + 8);
  v185 = v249;
  v184(v174, v249);
  sub_69198(&v272, qword_3C0250, &unk_2E4630);
  v186 = v267;
  sub_2C44C8();
  v187 = v262;
  v188 = v266;
  (v263)(v262, v186 + v271[17], v266);
  sub_226368(v186, type metadata accessor for Page);
  v189 = sub_2BEF68();
  v191 = v190;
  v181(v187, v188);
  *(&v273 + 1) = &type metadata for String;
  *&v272 = v189;
  *(&v272 + 1) = v191;
  v192 = v246;
  sub_2C50F8();
  v184(v183, v185);
  sub_69198(&v272, qword_3C0250, &unk_2E4630);
  *&v272 = v261;
  *(&v272 + 1) = v259;
  swift_getOpaqueTypeConformance2();
  v193 = v241;
  v194 = v260;
  sub_2C3B08();
  v184(v192, v185);
  return (*(v240 + 8))(v194, v193);
}