uint64_t NANAttribute.attributeType.getter()
{
  type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002774DC(v0, v2, type metadata accessor for NANAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 1;
      break;
    case 2:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 2;
      break;
    case 3:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 5;
      break;
    case 6:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 6;
      break;
    case 7:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 7;
      break;
    case 8:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 8;
      break;
    case 9:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 9;
      break;
    case 10:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 16;
      break;
    case 17:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 18;
      break;
    case 18:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 19;
      break;
    case 19:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 23;
      break;
    case 22:
      result = 26;
      break;
    case 23:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 27;
      break;
    case 24:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 28;
      break;
    case 25:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 29;
      break;
    case 26:
      result = 30;
      break;
    case 27:
      result = 31;
      break;
    case 28:
      result = 32;
      break;
    case 29:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 33;
      break;
    case 30:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 34;
      break;
    case 31:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 35;
      break;
    case 32:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 36;
      break;
    case 33:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 37;
      break;
    case 34:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 39;
      break;
    case 35:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 40;
      break;
    case 36:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 41;
      break;
    case 37:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 42;
      break;
    case 38:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 43;
      break;
    case 39:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 44;
      break;
    case 40:
    case 41:
      sub_100277544(v2, type metadata accessor for NANAttribute);
      result = 45;
      break;
    case 42:
      v5 = *v2;
      sub_1000124C8(*(v2 + 1), *(v2 + 2));
      result = v5;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100262DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void NANAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v5 = &v236[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v7 = &v236[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002774DC(v2, v7, type metadata accessor for NANAttribute);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LODWORD(v246) = *(v7 + 3);
      v88 = *v7;
      v89 = *(v7 + 1);
      v90 = *(v7 + 2);
      v91 = *(v7 + 3);
      v92 = *(v7 + 4);
      v93 = *(v7 + 5);
      v94 = *(v7 + 6);
      v95 = *(v7 + 7);
      LODWORD(v245) = *(v7 + 8);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v88);
      Hasher._combine(_:)(v89);
      Hasher._combine(_:)(v90);
      Hasher._combine(_:)(v91);
      Hasher._combine(_:)(v92);
      Hasher._combine(_:)(v93);
      Hasher._combine(_:)(v94);
      Hasher._combine(_:)(v95);
      Hasher._combine(_:)(v245);
      Hasher._combine(_:)(v246);
      return;
    case 2u:
      v59 = *v7;
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(*(v59 + 16));
      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = (v59 + 40);
        do
        {
          v62 = *(v61 - 1);
          v63 = *v61;
          sub_10000AB0C(v62, *v61);
          Data.hash(into:)();
          sub_1000124C8(v62, v63);
          v61 += 2;
          --v60;
        }

        while (v60);
      }

      goto LABEL_84;
    case 3u:
      v73 = *(v7 + 3);
      *&v248[16] = *(v7 + 2);
      v249 = v73;
      v250 = *(v7 + 4);
      v74 = *(v7 + 1);
      v247 = *v7;
      *v248 = v74;
      Hasher._combine(_:)(3uLL);
      NANAttribute.ServiceDescriptor.hash(into:)(a1);
      sub_100197EB4(&v247);
      return;
    case 4u:
      v38 = *v7;
      Hasher._combine(_:)(4uLL);
      goto LABEL_76;
    case 5u:
      v108 = *(v7 + 1);
      v247 = *v7;
      *v248 = v108;
      *&v248[9] = *(v7 + 25);
      Hasher._combine(_:)(5uLL);
      v109 = BYTE1(v247);
      v110 = BYTE2(v247);
      v111 = BYTE3(v247);
      v112 = BYTE4(v247);
      v113 = BYTE5(v247);
      Hasher._combine(_:)(v247);
      Hasher._combine(_:)(v109);
      Hasher._combine(_:)(v110);
      Hasher._combine(_:)(v111);
      Hasher._combine(_:)(v112);
      Hasher._combine(_:)(v113);
      v114 = BYTE7(v247);
      v115 = BYTE8(v247);
      v116 = BYTE9(v247);
      v117 = BYTE10(v247);
      v118 = BYTE11(v247);
      Hasher._combine(_:)(BYTE6(v247));
      Hasher._combine(_:)(v114);
      Hasher._combine(_:)(v115);
      Hasher._combine(_:)(v116);
      Hasher._combine(_:)(v117);
      Hasher._combine(_:)(v118);
      v119 = v248[2];
      v120 = v248[1];
      Hasher._combine(_:)(v248[0]);
      Hasher._combine(_:)(v120);
      Hasher._combine(_:)(v119);
      Data.hash(into:)();
      Hasher._combine(_:)(v248[24]);
      sub_10027A24C(&v247);
      return;
    case 6u:
      LODWORD(v245) = *(v7 + 10);
      v40 = *(v7 + 3);
      v246 = *(v7 + 2);
      v138 = *v7;
      v139 = *(v7 + 1);
      v140 = *(v7 + 2);
      v141 = *(v7 + 3);
      v142 = *(v7 + 4);
      v143 = *(v7 + 5);
      v144 = *(v7 + 6);
      LODWORD(v243) = *(v7 + 8);
      LODWORD(v244) = *(v7 + 9);
      Hasher._combine(_:)(6uLL);
      Hasher._combine(_:)(v138);
      Hasher._combine(_:)(v139);
      Hasher._combine(_:)(v140);
      Hasher._combine(_:)(v141);
      Hasher._combine(_:)(v142);
      Hasher._combine(_:)(v143);
      Hasher._combine(_:)(v144);
      Hasher._combine(_:)(v243);
      Hasher._combine(_:)(v244);
      Hasher._combine(_:)(v245);
      goto LABEL_68;
    case 7u:
      v75 = *(v7 + 1);
      v247 = *v7;
      *v248 = v75;
      *&v248[16] = *(v7 + 4);
      Hasher._combine(_:)(7uLL);
      v76 = BYTE1(v247);
      v77 = BYTE2(v247);
      v78 = BYTE3(v247);
      v79 = BYTE4(v247);
      v80 = BYTE5(v247);
      Hasher._combine(_:)(v247);
      Hasher._combine(_:)(v76);
      Hasher._combine(_:)(v77);
      Hasher._combine(_:)(v78);
      Hasher._combine(_:)(v79);
      Hasher._combine(_:)(v80);
      v81 = BYTE7(v247);
      v82 = BYTE8(v247);
      v83 = BYTE9(v247);
      v84 = BYTE10(v247);
      v85 = BYTE11(v247);
      Hasher._combine(_:)(BYTE6(v247));
      Hasher._combine(_:)(v81);
      Hasher._combine(_:)(v82);
      Hasher._combine(_:)(v83);
      Hasher._combine(_:)(v84);
      Hasher._combine(_:)(v85);
      v86 = v248[2];
      v87 = v248[1];
      Hasher._combine(_:)(v248[0]);
      Hasher._combine(_:)(v87);
      Hasher._combine(_:)(v86);
      Data.hash(into:)();
      sub_10027A1EC(&v247);
      return;
    case 8u:
      LODWORD(v243) = *(v7 + 10);
      v154 = *(v7 + 2);
      v155 = *(v7 + 3);
      v156 = *(v7 + 5);
      v246 = *(v7 + 4);
      v244 = v154;
      v245 = v156;
      v157 = *v7;
      v158 = *(v7 + 1);
      v159 = *(v7 + 2);
      v160 = *(v7 + 3);
      v161 = *(v7 + 4);
      v162 = *(v7 + 5);
      v163 = *(v7 + 8);
      LODWORD(v242) = *(v7 + 9);
      Hasher._combine(_:)(8uLL);
      Hasher._combine(_:)(v157);
      Hasher._combine(_:)(v158);
      Hasher._combine(_:)(v159);
      Hasher._combine(_:)(v160);
      Hasher._combine(_:)(v161);
      Hasher._combine(_:)(v162);
      Hasher._combine(_:)(v163);
      Hasher._combine(_:)(v242);
      Hasher._combine(_:)(v243);
      v164 = v244;
      Data.hash(into:)();
      v166 = v245;
      v165 = v246;
      Data.hash(into:)();
      sub_1000124C8(v164, v155);
      v53 = v165;
      v54 = v166;
      goto LABEL_70;
    case 9u:
      v48 = *(v7 + 2);
      v49 = *(v7 + 1);
      v50 = *(v7 + 2);
      v51 = *v7;
      v52 = *(v7 + 1);
      Hasher._combine(_:)(9uLL);
      Hasher._combine(_:)(v51);
      Hasher._combine(_:)(v52);
      Hasher._combine(_:)(v48);
      Data.hash(into:)();
      v53 = v49;
      v54 = v50;
      goto LABEL_70;
    case 0xAu:
      v152 = *(v7 + 1);
      v153 = *v7;
      Hasher._combine(_:)(0xAuLL);
      Hasher._combine(_:)(v153);
      sub_1000E0538(a1, v152);
      goto LABEL_84;
    case 0xBu:
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = 11;
      goto LABEL_18;
    case 0xCu:
      v39 = *(v7 + 1);
      v40 = *(v7 + 2);
      v41 = *v7;
      v42 = *(v7 + 1);
      v43 = *(v7 + 2);
      v44 = *(v7 + 3);
      v45 = *(v7 + 4);
      v46 = *(v7 + 5);
      Hasher._combine(_:)(0xCuLL);
      Hasher._combine(_:)(v41);
      Hasher._combine(_:)(v42);
      Hasher._combine(_:)(v43);
      Hasher._combine(_:)(v44);
      Hasher._combine(_:)(v45);
      v47 = v46;
      goto LABEL_62;
    case 0xDu:
      v129 = *(v7 + 1);
      v130 = *v7;
      v131 = *(v7 + 1);
      v132 = *(v7 + 2);
      v133 = *(v7 + 3);
      v134 = *(v7 + 4);
      v135 = *(v7 + 5);
      v136 = *(v7 + 16);
      v137 = *(v7 + 18);
      v240 = *(v7 + 17);
      v241 = v137;
      LODWORD(v242) = *(v7 + 19);
      LODWORD(v243) = *(v7 + 20);
      LODWORD(v244) = *(v7 + 21);
      LODWORD(v245) = *(v7 + 22);
      LODWORD(v246) = *(v7 + 23);
      Hasher._combine(_:)(0xDuLL);
      Hasher._combine(_:)(v130);
      Hasher._combine(_:)(v131);
      Hasher._combine(_:)(v132);
      Hasher._combine(_:)(v133);
      Hasher._combine(_:)(v134);
      Hasher._combine(_:)(v135);
      Hasher._combine(_:)(v129);
      Hasher._combine(_:)(v136);
      Hasher._combine(_:)(v240);
      Hasher._combine(_:)(v241);
      Hasher._combine(_:)(v242);
      Hasher._combine(_:)(v243);
      Hasher._combine(_:)(v244);
      Hasher._combine(_:)(v245);
      Hasher._combine(_:)(v246);
      return;
    case 0xEu:
      v32 = *(v7 + 1);
      v247 = *v7;
      *v248 = v32;
      *&v248[16] = *(v7 + 4);
      Hasher._combine(_:)(0xEuLL);
      NANAttribute.ServiceDescriptorExtension.hash(into:)(a1);
      sub_100277A14(&v247);
      return;
    case 0xFu:
      v64 = *v7;
      v65 = *(v7 + 1);
      v66 = v7[1];
      v67 = *(v7 + 4);
      v68 = *(v7 + 5);
      v69 = *(v7 + 6);
      v70 = v7[4];
      v71 = *(v7 + 10);
      Hasher._combine(_:)(0xFuLL);
      if (v65)
      {
        v72 = 1;
      }

      else
      {
        v72 = 2 * v64;
      }

      Hasher._combine(_:)(v72);
      Hasher._combine(_:)(v66);
      Hasher._combine(_:)(v67);
      Hasher._combine(_:)(v68);
      Hasher._combine(_:)(v69);
      Hasher._combine(_:)(v70);
      Hasher._combine(_:)(v71);
      return;
    case 0x10u:
      v31 = *(v7 + 1);
      v247 = *v7;
      *v248 = v31;
      *&v248[16] = *(v7 + 2);
      Hasher._combine(_:)(0x10uLL);
      NANAttribute.Datapath.hash(into:)(a1);
      sub_10027A15C(&v247);
      return;
    case 0x11u:
      v97 = *(v7 + 1);
      v98 = *v7;
      v99 = v7[1];
      Hasher._combine(_:)(0x11uLL);
      Hasher._combine(_:)(v98);
      Hasher._combine(_:)(v99);
      sub_1000E0374(a1, v97);
      goto LABEL_84;
    case 0x12u:
      v30 = *(v7 + 1);
      v145 = *v7;
      v146 = *(v7 + 1);
      v147 = *(v7 + 2);
      v148 = *(v7 + 3);
      v149 = *(v7 + 4);
      v150 = *(v7 + 5);
      v151 = *(v7 + 6);
      Hasher._combine(_:)(0x12uLL);
      Hasher._combine(_:)(v145);
      Hasher._combine(_:)(v146);
      Hasher._combine(_:)(v147);
      Hasher._combine(_:)(v148);
      Hasher._combine(_:)(v149);
      Hasher._combine(_:)(v150);
      Hasher._combine(_:)(v151);
      goto LABEL_83;
    case 0x13u:
      v191 = *(v7 + 4);
      v192 = *(v7 + 5);
      v246 = *(v7 + 1);
      v193 = *(v7 + 16);
      v30 = *(v7 + 3);
      v194 = *v7;
      v195 = *(v7 + 1);
      v196 = *(v7 + 2);
      v197 = *(v7 + 3);
      Hasher._combine(_:)(0x13uLL);
      Hasher._combine(_:)(v194);
      Hasher._combine(_:)(v195);
      Hasher._combine(_:)(v196);
      Hasher._combine(_:)(v197);
      if (v192)
      {
        v191 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
      }

      Hasher._combine(_:)(v191);
      if (v193)
      {
        goto LABEL_81;
      }

      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v246);
      goto LABEL_83;
    case 0x14u:
      v106 = *v7;
      v107 = v7[1];
      Hasher._combine(_:)(0x14uLL);
      Hasher._combine(_:)(v106);
      Hasher._combine(_:)(v107);
      return;
    case 0x15u:
      v121 = *(v7 + 1);
      v122 = v7[8];
      v123 = *(v7 + 18);
      v124 = *(v7 + 19);
      v125 = *(v7 + 10);
      v126 = v7[14];
      v127 = *v7;
      v128 = *(v7 + 1);
      Hasher._combine(_:)(0x15uLL);
      LOWORD(v247) = v122;
      BYTE2(v247) = v123;
      BYTE3(v247) = v124 & 1;
      *(&v247 + 4) = v125;
      WORD6(v247) = v126;
      NANAttribute.UnalignedSchedule.hash(into:)(a1, v127 | (v128 << 32), v121, v247, *(&v247 + 1));
      return;
    case 0x16u:
      v38 = v7[1];
      v181 = *(v7 + 4);
      v182 = *v7;
      Hasher._combine(_:)(0x16uLL);
      Hasher._combine(_:)(v182);
      if (v181 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
LABEL_76:
        Hasher._combine(_:)(v38);
      }

      return;
    case 0x17u:
      v199 = *(v7 + 1);
      v200 = *(v7 + 8);
      v30 = *(v7 + 2);
      v201 = *v7;
      v202 = *(v7 + 1);
      v203 = *(v7 + 2);
      v204 = *(v7 + 3);
      Hasher._combine(_:)(0x17uLL);
      Hasher._combine(_:)(v201);
      Hasher._combine(_:)(v202);
      Hasher._combine(_:)(v203);
      Hasher._combine(_:)(v204);
      if (v200 == 1)
      {
LABEL_81:
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v199);
      }

      goto LABEL_83;
    case 0x18u:
      v58 = *v7;
      Hasher._combine(_:)(0x18uLL);
      NANAttribute.FineTimingMeasurementRangeReport.hash(into:)(a1, v58);
      goto LABEL_84;
    case 0x19u:
      v55 = *(v7 + 5);
      v250 = *(v7 + 4);
      v251 = v55;
      v252 = *(v7 + 6);
      v56 = *(v7 + 1);
      v247 = *v7;
      *v248 = v56;
      v57 = *(v7 + 3);
      *&v248[16] = *(v7 + 2);
      v249 = v57;
      Hasher._combine(_:)(0x19uLL);
      NANAttribute.ElementContainer.hash(into:)();
      sub_10027A0CC(&v247);
      return;
    case 0x1Au:
      v227 = *v7;
      v228 = *(v7 + 1);
      v229 = *(v7 + 2);
      v230 = *(v7 + 3);
      v231 = *(v7 + 4);
      v232 = *(v7 + 5);
      v233 = *(v7 + 6);
      v234 = *(v7 + 7);
      v237 = *(v7 + 8);
      v238 = *(v7 + 9);
      v239 = *(v7 + 10);
      v235 = *(v7 + 12);
      v240 = *(v7 + 11);
      v241 = v235;
      LODWORD(v242) = *(v7 + 13);
      LODWORD(v243) = *(v7 + 14);
      LODWORD(v244) = *(v7 + 15);
      LODWORD(v245) = v7[8];
      LODWORD(v246) = v7[9];
      Hasher._combine(_:)(0x1AuLL);
      Hasher._combine(_:)(v227);
      Hasher._combine(_:)(v228);
      Hasher._combine(_:)(v229);
      Hasher._combine(_:)(v230);
      Hasher._combine(_:)(v231);
      Hasher._combine(_:)(v232);
      Hasher._combine(_:)(v233);
      Hasher._combine(_:)(v234);
      v214 = v237;
      goto LABEL_73;
    case 0x1Bu:
      v21 = *v7;
      v22 = *(v7 + 1);
      v23 = *(v7 + 2);
      v24 = *(v7 + 3);
      v25 = *(v7 + 4);
      v26 = *(v7 + 5);
      v27 = *(v7 + 6);
      v28 = *(v7 + 7);
      LODWORD(v243) = *(v7 + 8);
      LODWORD(v244) = *(v7 + 9);
      LODWORD(v245) = v7[5];
      LODWORD(v246) = v7[6];
      Hasher._combine(_:)(0x1BuLL);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v27);
      v29 = v28;
      goto LABEL_74;
    case 0x1Cu:
      v205 = *v7;
      v206 = *(v7 + 1);
      v207 = *(v7 + 2);
      v208 = *(v7 + 3);
      v209 = *(v7 + 4);
      v210 = *(v7 + 5);
      v211 = *(v7 + 6);
      v212 = *(v7 + 7);
      v238 = *(v7 + 8);
      v239 = *(v7 + 9);
      v213 = *(v7 + 11);
      v240 = *(v7 + 10);
      v241 = v213;
      LODWORD(v242) = *(v7 + 12);
      LODWORD(v243) = *(v7 + 13);
      LODWORD(v244) = *(v7 + 14);
      LODWORD(v245) = v7[8];
      LODWORD(v246) = v7[9];
      Hasher._combine(_:)(0x1CuLL);
      Hasher._combine(_:)(v205);
      Hasher._combine(_:)(v206);
      Hasher._combine(_:)(v207);
      Hasher._combine(_:)(v208);
      Hasher._combine(_:)(v209);
      Hasher._combine(_:)(v210);
      Hasher._combine(_:)(v211);
      v214 = v212;
LABEL_73:
      Hasher._combine(_:)(v214);
      Hasher._combine(_:)(v238);
      Hasher._combine(_:)(v239);
      Hasher._combine(_:)(v240);
      Hasher._combine(_:)(v241);
      v29 = v242;
LABEL_74:
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(v243);
      Hasher._combine(_:)(v244);
      Hasher._combine(_:)(v245);
      Hasher._combine(_:)(v246);
      return;
    case 0x1Du:
      v40 = *(v7 + 3);
      v246 = *(v7 + 2);
      v215 = *v7;
      v216 = *(v7 + 1);
      v217 = *(v7 + 2);
      v218 = *(v7 + 3);
      v219 = *(v7 + 4);
      v220 = *(v7 + 5);
      v221 = *(v7 + 6);
      LODWORD(v242) = *(v7 + 7);
      LODWORD(v243) = *(v7 + 8);
      LODWORD(v244) = v7[5];
      LODWORD(v245) = v7[6];
      Hasher._combine(_:)(0x1DuLL);
      Hasher._combine(_:)(v215);
      Hasher._combine(_:)(v216);
      Hasher._combine(_:)(v217);
      Hasher._combine(_:)(v218);
      Hasher._combine(_:)(v219);
      Hasher._combine(_:)(v220);
      Hasher._combine(_:)(v221);
      Hasher._combine(_:)(v242);
      Hasher._combine(_:)(v243);
      Hasher._combine(_:)(v244);
      Hasher._combine(_:)(v245);
LABEL_68:
      v222 = v246;
      Data.hash(into:)();
      v53 = v222;
      goto LABEL_69;
    case 0x1Eu:
      v167 = *(v7 + 1);
      v168 = *v7;
      Hasher._combine(_:)(0x1EuLL);
      Hasher._combine(_:)(v168);
      Hasher._combine(_:)(*(v167 + 16));
      v169 = *(v167 + 16);
      if (v169)
      {
        v170 = (v167 + 33);
        do
        {
          v171 = *(v170 - 1);
          v172 = *v170;
          v170 += 2;
          Hasher._combine(_:)(v171 + 1);
          Hasher._combine(_:)(v172);
          --v169;
        }

        while (v169);
      }

      goto LABEL_84;
    case 0x1Fu:
      v96 = *v7;
      Hasher._combine(_:)(0x1FuLL);
      NANAttribute.SecurityContextInformation.hash(into:)(a1, v96);
      goto LABEL_84;
    case 0x20u:
      v173 = *(v7 + 5);
      v250 = *(v7 + 4);
      v251 = v173;
      *&v252 = *(v7 + 12);
      v174 = *(v7 + 1);
      v247 = *v7;
      *v248 = v174;
      v175 = *(v7 + 3);
      *&v248[16] = *(v7 + 2);
      v249 = v175;
      Hasher._combine(_:)(0x20uLL);
      Hasher._combine(_:)(v247);
      v176 = *v248;
      v177 = *(&v249 + 1);
      v242 = v250;
      v246 = *(&v251 + 1);
      v243 = v251;
      v244 = *(&v250 + 1);
      v245 = v252;
      if (BYTE8(v247))
      {
        v178 = 2;
      }

      else
      {
        v178 = 1;
      }

      v179 = WORD5(v247);
      v180 = WORD6(v247);
      Hasher._combine(_:)(v178);
      Hasher._combine(_:)(v179);
      Hasher._combine(_:)(v180);
      Hasher._combine(_:)(v176);
      Data.hash(into:)();
      Data.hash(into:)();
      Hasher._combine(_:)(v177);
      Hasher._combine(_:)(v242);
      Data.hash(into:)();
      Data.hash(into:)();
      sub_100143F68(&v247);
      return;
    case 0x21u:
      v33 = *v7;
      v34 = *(v7 + 1);
      v35 = *(v7 + 3);
      v36 = v7[8];
      v37 = *(v7 + 18);
      Hasher._combine(_:)(0x21uLL);
      Hasher._combine(_:)(v33);
      Hasher._combine(_:)(v34);
      Hasher._combine(_:)(v36);
      Hasher._combine(_:)(v37);
      NANAttribute.PublicAvailability.hash(into:)(a1, v35);
      goto LABEL_84;
    case 0x22u:
      v30 = *v7;
      Hasher._combine(_:)(0x22uLL);
LABEL_83:
      NANAttribute.PublicAvailability.hash(into:)(a1, v30);
      goto LABEL_84;
    case 0x23u:
      v14 = *v7;
      Hasher._combine(_:)(0x23uLL);
      Hasher._combine(_:)(*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = (v14 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          sub_10000AB0C(v17, *v16);
          Data.hash(into:)();
          sub_1000124C8(v17, v18);
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      goto LABEL_84;
    case 0x24u:
      v19 = *(v7 + 1);
      v247 = *v7;
      *v248 = v19;
      v20 = *(v7 + 3);
      *&v248[16] = *(v7 + 2);
      v249 = v20;
      Hasher._combine(_:)(0x24uLL);
      NANAttribute.DatapathExtension.hash(into:)(a1);
      sub_10027A06C(&v247);
      return;
    case 0x25u:
      v11 = *v7;
      Hasher._combine(_:)(0x25uLL);
      Hasher._combine(_:)(*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 32;
        do
        {
          Hasher._combine(_:)(*(v11 + v13++));
          --v12;
        }

        while (v12);
      }

LABEL_84:

      return;
    case 0x26u:
      v223 = *v7;
      v224 = *(v7 + 1);
      v225 = *(v7 + 2);
      v226 = *(v7 + 3);
      Hasher._combine(_:)(0x26uLL);
      Hasher._combine(_:)(0);
      Data.hash(into:)();
      Data.hash(into:)();
      sub_1000124C8(v223, v224);
      v53 = v225;
      v54 = v226;
      goto LABEL_70;
    case 0x27u:
      v183 = *(v7 + 1);
      v184 = *(v7 + 2);
      v185 = *(v7 + 3);
      v186 = *(v7 + 4);
      v187 = v7[20];
      v188 = *v7;
      v189 = *(v7 + 1);
      v190 = *(v7 + 2);
      Hasher._combine(_:)(0x27uLL);
      Hasher._combine(_:)(v188);
      Hasher._combine(_:)(v189);
      Hasher._combine(_:)(v190);
      if (v186 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if (v184)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v183);
        }

        Data.hash(into:)();
      }

      Hasher._combine(_:)(v187);
      sub_1000449CC(v183, v184, v185, v186);
      return;
    case 0x28u:
      sub_100262DC8(v7, v5, type metadata accessor for NANAttribute.CustomDeviceInformation);
      Hasher._combine(_:)(0x28uLL);
      Hasher._combine(_:)(*v5);
      Hasher._combine(_:)(v5[1]);
      Hasher._combine(_:)(*(v5 + 1));
      NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
      sub_100277544(v5, type metadata accessor for NANAttribute.CustomDeviceInformation);
      return;
    case 0x29u:
      v100 = *v7;
      v101 = *(v7 + 2);
      v39 = *(v7 + 1);
      v40 = *(v7 + 2);
      Hasher._combine(_:)(0x29uLL);
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_100480F30;
      *(v102 + 32) = v100;
      *(v102 + 34) = v101;
      v103 = sub_10002D874(v102);
      v105 = v104;

      Data.hash(into:)();
      sub_1000124C8(v103, v105);
      goto LABEL_63;
    case 0x2Au:
      v198 = *v7;
      v39 = *(v7 + 1);
      v40 = *(v7 + 2);
      Hasher._combine(_:)(0x2AuLL);
      v47 = byte_1004ABDA2[v198];
LABEL_62:
      Hasher._combine(_:)(v47);
LABEL_63:
      Data.hash(into:)();
      v53 = v39;
LABEL_69:
      v54 = v40;
LABEL_70:
      sub_1000124C8(v53, v54);
      break;
    default:
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = 0;
LABEL_18:
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      break;
  }
}

Swift::Int sub_1002641DC(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10026423C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002642A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *Array<A>.retrieve(allAttributes:)(char a1, uint64_t a2)
{
  type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = *(a2 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = a2 + v19;
  v11 = *(v6 + 72);
  v12 = _swiftEmptyArrayStorage;
  v20 = v5;
  do
  {
    sub_1002774DC(v10, v8, type metadata accessor for NANAttribute);
    if (byte_1004ABDA2[NANAttribute.attributeType.getter()] == byte_1004ABDA2[a1])
    {
      sub_100262DC8(v8, v5, type metadata accessor for NANAttribute);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C0850(0, v12[2] + 1, 1);
        v12 = v21;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000C0850((v14 > 1), v15 + 1, 1);
        v12 = v21;
      }

      v12[2] = v15 + 1;
      v16 = v12 + v19 + v15 * v11;
      v5 = v20;
      sub_100262DC8(v20, v16, type metadata accessor for NANAttribute);
    }

    else
    {
      sub_100277544(v8, type metadata accessor for NANAttribute);
    }

    v10 += v11;
    --v9;
  }

  while (v9);
  return v12;
}

void Array<A>.modify(attribute:using:)(char a1, void (*a2)(char *), unint64_t a3)
{
  v8 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v19 = *(*v3 + 16);
  if (v19)
  {
    v14[1] = a3;
    v15 = a2;
    v16 = v3;
    v17 = v4;
    v12 = 0;
    v18 = a1;
    while (1)
    {
      if (v12 >= v11[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      a3 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      a2 = (*(v8 + 72) * v12);
      sub_1002774DC(a2 + v11 + a3, v10, type metadata accessor for NANAttribute);
      v13 = NANAttribute.attributeType.getter();
      sub_100277544(v10, type metadata accessor for NANAttribute);
      if (byte_1004ABDA2[v13] == byte_1004ABDA2[v18])
      {
        break;
      }

      if (v19 == ++v12)
      {
        return;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

LABEL_12:
    v11 = sub_1000C2BDC(v11);
LABEL_8:
    if (v12 >= v11[2])
    {
      __break(1u);
    }

    else
    {
      v15(a2 + v11 + a3);
      *v16 = v11;
    }
  }
}

uint64_t sub_100264734()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_10003C7E8(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_10000AB0C(*v0, *(v0 + 8));
      result = sub_1000124C8(v7, v8);
      if (v12 >= v11)
      {
        v13 = Data._Representation.subscript.getter();
        v15 = v14;
        sub_1000124C8(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100264884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v32, v33);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v31[0];
  sub_100031694(v32, v33);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v6 = v31[0];
  sub_100029B34(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = sub_100037644(v8, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v7 + 16) || (v10 = sub_10007CF6C(v9), (v11 & 1) == 0))
  {

LABEL_12:
    v18 = v33;
    v19 = v34;
    sub_100031694(v32, v33);
    v20 = UnkeyedDecodingContainer.decodeData(with:)(v6, v18, v19);
    v22 = v21;
LABEL_14:
    sub_100002A00(v32);
    *a2 = v5;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22;
    return sub_100002A00(a1);
  }

  sub_100002B30(*(v7 + 56) + 32 * v10, v31);

  if (!swift_dynamicCast() || (v30 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v33;
  v13 = v34;
  sub_100031694(v32, v33);
  result = UnkeyedDecodingContainer.decodeData(with:)((v6 + 3) & 0x1FFFC, v12, v13);
  v16 = 0;
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(result + 16);
    }
  }

  else if (v17)
  {
    v16 = result;
  }

  v23 = __OFADD__(v16, v6);
  v24 = v16 + v6;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v25 = *(result + 16);
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else if (v17)
    {
      v25 = result;
      v26 = result >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v15);
    }

    if (v26 >= v25 && v24 >= v25)
    {
      v27 = v15;
      v28 = result;
      v20 = Data._Representation.subscript.getter();
      v22 = v29;
      sub_1000124C8(v28, v27);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100264BA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v32, v33);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v31[0];
  sub_100031694(v32, v33);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v6 = v31[0];
  sub_100029B34(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = sub_100037644(v8, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v7 + 16) || (v10 = sub_10007CF6C(v9), (v11 & 1) == 0))
  {

LABEL_12:
    v18 = v33;
    v19 = v34;
    sub_100031694(v32, v33);
    v20 = UnkeyedDecodingContainer.decodeData(with:)(v6, v18, v19);
    v22 = v21;
LABEL_14:
    sub_100002A00(v32);
    *a2 = v5;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22;
    return sub_100002A00(a1);
  }

  sub_100002B30(*(v7 + 56) + 32 * v10, v31);

  if (!swift_dynamicCast() || (v30 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v33;
  v13 = v34;
  sub_100031694(v32, v33);
  result = UnkeyedDecodingContainer.decodeData(with:)((v6 + 3) & 0x1FC, v12, v13);
  v16 = 0;
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(result + 16);
    }
  }

  else if (v17)
  {
    v16 = result;
  }

  v23 = __OFADD__(v16, v6);
  v24 = v16 + v6;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v25 = *(result + 16);
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else if (v17)
    {
      v25 = result;
      v26 = result >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v15);
    }

    if (v26 >= v25 && v24 >= v25)
    {
      v27 = v15;
      v28 = result;
      v20 = Data._Representation.subscript.getter();
      v22 = v29;
      sub_1000124C8(v28, v27);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100264EC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v32, v33);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v31[0];
  sub_100031694(v32, v33);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v6 = v31[0];
  sub_100029B34(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = sub_100037644(v8, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v7 + 16) || (v10 = sub_10007CF6C(v9), (v11 & 1) == 0))
  {

LABEL_12:
    v18 = v33;
    v19 = v34;
    sub_100031694(v32, v33);
    v20 = UnkeyedDecodingContainer.decodeData(with:)(v6, v18, v19);
    v22 = v21;
LABEL_14:
    sub_100002A00(v32);
    *a2 = v5;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22;
    return sub_100002A00(a1);
  }

  sub_100002B30(*(v7 + 56) + 32 * v10, v31);

  if (!swift_dynamicCast() || (v30 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v33;
  v13 = v34;
  sub_100031694(v32, v33);
  result = UnkeyedDecodingContainer.decodeData(with:)((v6 + 3) & 0x1FFFC, v12, v13);
  v16 = 0;
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(result + 16);
    }
  }

  else if (v17)
  {
    v16 = result;
  }

  v23 = __OFADD__(v16, v6);
  v24 = v16 + v6;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v25 = *(result + 16);
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else if (v17)
    {
      v25 = result;
      v26 = result >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v15);
    }

    if (v26 >= v25 && v24 >= v25)
    {
      v27 = v15;
      v28 = result;
      v20 = Data._Representation.subscript.getter();
      v22 = v29;
      sub_1000124C8(v28, v27);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL _s7CoreP2P12NANAttributeO17ServiceDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v4 = *(a2 + 22);
  if (*(a1 + 22))
  {
    if (!*(a2 + 22))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = sub_1000BCCE0(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  *v28 = *(a1 + 32);
  *&v28[15] = *(a1 + 47);
  *v27 = *(a2 + 32);
  *&v27[15] = *(a2 + 47);
  v8 = *v28;
  v9 = *&v28[16] | (v28[18] << 16);
  v10 = *v27;
  v11 = *&v27[16] | (v27[18] << 16);
  if (v28[18] == 255)
  {
    if (v27[18] == 255)
    {
      sub_100012400(v28, &v25, &qword_100593880, &qword_1004ABB50);
      sub_100012400(v27, &v25, &qword_100593880, &qword_1004ABB50);
      sub_1001842AC(v8, *(&v8 + 1), v9);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v27[18] == 255)
  {
LABEL_20:
    sub_100012400(v28, &v25, &qword_100593880, &qword_1004ABB50);
    sub_100012400(v27, &v25, &qword_100593880, &qword_1004ABB50);
    sub_1001842AC(v8, *(&v8 + 1), v9);
    sub_1001842AC(v10, *(&v10 + 1), v11);
    return 0;
  }

  sub_100012400(v28, &v25, &qword_100593880, &qword_1004ABB50);
  sub_100012400(v27, &v25, &qword_100593880, &qword_1004ABB50);
  v12 = sub_100237C88(v8, *(&v8 + 1), v9 & 0x1FFFF, v10, *(&v10 + 1), v11 & 0x1FFFF);
  sub_1001842AC(v10, *(&v10 + 1), v11);
  sub_1001842AC(v8, *(&v8 + 1), v9);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v25 = *(a1 + 56);
  v13 = *(a1 + 72);
  v26 = v13;
  v23 = *(a2 + 56);
  v14 = *(a2 + 72);
  v24 = v14;
  v15 = v25;
  v16 = v23;
  if (v25 == 4)
  {
    if (v23 == 4)
    {
      sub_100012400(&v25, v22, &qword_10058F2E0, qword_100491AC0);
      sub_100012400(&v23, v22, &qword_10058F2E0, qword_100491AC0);
      sub_1001842D0(v15, *(&v15 + 1), v13);
      return 1;
    }

    goto LABEL_26;
  }

  if (v23 == 4)
  {
LABEL_26:
    sub_100012400(&v25, v22, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v23, v22, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v15, *(&v15 + 1), v13);
    v19 = *(&v16 + 1);
    v18 = v16;
    v20 = v14;
LABEL_27:
    sub_1001842D0(v18, v19, v20);
    return 0;
  }

  if (v25 != v23)
  {
    sub_100012400(&v25, v22, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v23, v22, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v16, *(&v16 + 1), v14);
    v19 = *(&v15 + 1);
    v18 = v15;
    v20 = v13;
    goto LABEL_27;
  }

  sub_100012400(&v25, v22, &qword_10058F2E0, qword_100491AC0);
  sub_100012400(&v23, v22, &qword_10058F2E0, qword_100491AC0);
  v21 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v15 + 1), v13, *(&v16 + 1), v14);
  sub_1001842D0(v16, *(&v16 + 1), v14);
  sub_1001842D0(v15, *(&v15 + 1), v13);
  return v21;
}

BOOL sub_100265620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v15) = BYTE4(a1);
  HIBYTE(v15) = BYTE5(a1);
  LOBYTE(v12) = BYTE4(a4);
  HIBYTE(v12) = BYTE5(a4);
  v8 = a1 == a4 && v15 == v12 && a2 == a5;
  result = 0;
  if (v8 && a3 == a6)
  {
    LOBYTE(v14) = BYTE2(a3);
    BYTE1(v14) = BYTE3(a3);
    BYTE2(v14) = BYTE4(a3);
    HIBYTE(v14) = BYTE5(a3);
    LOBYTE(v16) = BYTE6(a3);
    HIBYTE(v16) = HIBYTE(a3);
    LOBYTE(v11) = BYTE2(a6);
    BYTE1(v11) = BYTE3(a6);
    BYTE2(v11) = BYTE4(a6);
    HIBYTE(v11) = BYTE5(a6);
    LOBYTE(v13) = BYTE6(a6);
    HIBYTE(v13) = HIBYTE(a6);
    if (v14 == v11 && v16 == v13)
    {
      return 1;
    }
  }

  return result;
}

BOOL _s7CoreP2P12NANAttributeO26ServiceDescriptorExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v4 = a2[8];
  if (a1[8])
  {
    if (!a2[8])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = a2[10];
  if (a1[10])
  {
    if (!a2[10])
    {
      return 0;
    }
  }

  else
  {
    if (a1[9] != a2[9])
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v21 = v2;
  v22 = v3;
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v11 = *(a2 + 2);
  v10 = *(a2 + 3);
  v12 = *(a2 + 4);
  if (v8 == 4)
  {
    if (v11 == 4)
    {
      sub_100197F08(a1, v20);
      sub_100197F08(a2, v20);
      sub_1001842D0(v8, v7, v9);
      return 1;
    }

    goto LABEL_20;
  }

  if (v11 == 4)
  {
LABEL_20:
    sub_100197F08(a1, v20);
    sub_100197F08(a2, v20);
    sub_1001842D0(v8, v7, v9);
    v15 = v11;
    v16 = v10;
    v17 = v12;
LABEL_21:
    sub_1001842D0(v15, v16, v17);
    return 0;
  }

  if (v8 != v11)
  {
    sub_100197F08(a1, v20);
    sub_100197F08(a2, v20);
    sub_1001842D0(v11, v10, v12);
    v15 = v8;
    v16 = v7;
    v17 = v9;
    goto LABEL_21;
  }

  sub_100197F08(a1, v20);
  sub_100197F08(a2, v20);
  v19 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9, v10, v12);
  sub_1001842D0(v11, v10, v12);
  sub_1001842D0(v8, v7, v9);
  return v19;
}

BOOL sub_100265934(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = BYTE4(a1);
  v7 = BYTE5(a1);
  v8 = BYTE6(a1);
  result = 0;
  if ((a3 & 0x100) != 0)
  {
    if ((v4 & 0x100) == 0)
    {
      return result;
    }
  }

  else if ((v4 & 0x100) != 0 || ((a3 ^ v4) & 0x7F) != 0)
  {
    return result;
  }

  if (v5 == WORD1(a3) && v6 == BYTE4(a3) && v7 == BYTE5(a3) && v8 == BYTE6(a3) && a2 == a4)
  {
    return BYTE2(a2) == BYTE2(a4);
  }

  return result;
}

BOOL _s7CoreP2P12NANAttributeO8DatapathV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  *v29 = *(a1 + 3);
  v2 = *(a1 + 7);
  *&v29[4] = *(a1 + 7);
  v3 = *v29 == *(a2 + 3) && v2 == *(a2 + 7);
  if (!v3 || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return 0;
  }

  v4 = a2[12];
  if (a1[12])
  {
    if (!a2[12])
    {
      return 0;
    }
  }

  else
  {
    if (a1[11] != a2[11])
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (a1[19])
  {
    if ((a2[19] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[19])
    {
      return 0;
    }

    v5 = *(a1 + 13) | (*(a1 + 17) << 32);
    v6 = *(a2 + 13) | (*(a2 + 17) << 32);
    v7.i64[0] = 0xFFFFFFFFFFFFLL;
    v7.i64[1] = 0xFFFFFFFFFFFFLL;
    v8 = vandq_s8(vdupq_n_s64(v5), v7);
    v9 = vshlq_u64(v8, xmmword_1004817A0);
    v10 = vandq_s8(vdupq_n_s64(v6), v7);
    v11 = vshlq_u64(v10, xmmword_1004817A0);
    v12 = vshlq_u64(v10, xmmword_100481790);
    v29[0] = *(a1 + 13);
    *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_100481790));
    *v9.i8 = vmovn_s64(v9);
    v9.i16[1] = v9.i16[2];
    v9.i16[2] = v8.i16[0];
    v9.i16[3] = v8.i16[2];
    *&v29[1] = vmovn_s16(v9).u32[0];
    v29[5] = BYTE5(v5);
    v28[0] = v6;
    *v8.i8 = vmovn_s64(v12);
    *v12.i8 = vmovn_s64(v11);
    v12.i16[1] = v12.i16[2];
    v12.i16[2] = v8.i16[0];
    v12.i16[3] = v8.i16[2];
    *&v28[1] = vmovn_s16(v12).u32[0];
    v28[5] = BYTE5(v6);
    if (*v29 != *v28 || *&v29[4] != *&v28[4])
    {
      return 0;
    }
  }

  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = *(a1 + 5);
  v18 = *(a2 + 3);
  v17 = *(a2 + 4);
  v19 = *(a2 + 5);
  if (v15 == 4)
  {
    if (v18 == 4)
    {
      sub_1002862DC(a1, v29);
      sub_1002862DC(a2, v29);
      sub_1001842D0(v15, v14, v16);
      return 1;
    }

    goto LABEL_30;
  }

  if (v18 == 4)
  {
LABEL_30:
    sub_1002862DC(a1, v29);
    sub_1002862DC(a2, v29);
    sub_1001842D0(v15, v14, v16);
    v23 = v18;
    v24 = v17;
    v25 = v19;
LABEL_31:
    sub_1001842D0(v23, v24, v25);
    return 0;
  }

  if (v15 != v18)
  {
    sub_1002862DC(a1, v29);
    sub_1002862DC(a2, v29);
    sub_1001842D0(v18, v17, v19);
    v23 = v15;
    v24 = v14;
    v25 = v16;
    goto LABEL_31;
  }

  sub_1002862DC(a1, v29);
  sub_1002862DC(a2, v29);
  v27 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v14, v16, v17, v19);
  sub_1001842D0(v18, v17, v19);
  sub_1001842D0(v15, v14, v16);
  return v27;
}

uint64_t sub_100265CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if ((a1 & 0x10000000000) == 0)
  {
    if ((a5 & 0x10000000000) != 0 || BYTE4(a1) != BYTE4(a5))
    {
      return 0;
    }

LABEL_7:
    if (a3)
    {
      if ((a7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a7 & 1) != 0 || a2 != a6)
    {
      return 0;
    }

    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a4, a8);
  }

  if ((a5 & 0x10000000000) != 0)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_100265D30(unint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    if (a4 ^ a1) >> 32 || (a5)
    {
      return 0;
    }

    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a3, a6);
  }

  if (a5)
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a3, a6);
  }

  return 0;
}

unsigned __int16 *_s7CoreP2P12NANAttributeO16ElementContainerV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result[1])
  {
    if ((a2[1] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    v6 = *result;
    v7 = *a2;
    if ((v7 & 0x100) != 0)
    {
      if ((v6 & 0x100) == 0)
      {
        return 0;
      }
    }

    else if (v6 & 0x100 | (v7 ^ v6) & 0x7F)
    {
      return 0;
    }
  }

  v2 = *(result + 1);
  v3 = *(a2 + 1);
  if (!v2)
  {
    if (v3)
    {
      return 0;
    }

LABEL_18:
    v8 = *(result + 3);
    v9 = *(a2 + 3);
    if (v8)
    {
      if (!v9)
      {
        return 0;
      }

      v10 = *(v8 + 16);
      if (v10 != *(v9 + 16))
      {
        return 0;
      }

      if (v10 && v8 != v9)
      {
        v11 = (v8 + 32);
        v12 = (v9 + 32);
        while (*v11 == *v12)
        {
          ++v11;
          ++v12;
          if (!--v10)
          {
            goto LABEL_26;
          }
        }

        return 0;
      }

LABEL_26:
      if (result[16] != a2[16])
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v15 = *(a2 + 5);
    if (*(result + 5))
    {
      if (!v15)
      {
        return 0;
      }

      v16 = result[24];
      v17 = a2[24];
      v18 = result;
      v19 = a2;
      if ((sub_1000C2E80() & 1) == 0)
      {
        return 0;
      }

      a2 = v19;
      result = v18;
      if (v16 != v17)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v20 = *(a2 + 7);
    if (*(result + 7))
    {
      if (!v20)
      {
        return 0;
      }

      v21 = result[32];
      v22 = a2[32];
      v23 = result;
      v24 = a2;
      if ((sub_1000C2E80() & 1) == 0)
      {
        return 0;
      }

      a2 = v24;
      result = v23;
      if (v21 != v22)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    v25 = *(a2 + 9);
    if (*(result + 9))
    {
      if (!v25)
      {
        return 0;
      }

      v26 = result[40];
      v27 = a2[40];
      v28 = result;
      v29 = a2;
      if ((sub_1000C2E80() & 1) == 0)
      {
        return 0;
      }

      a2 = v29;
      result = v28;
      if (v26 != v27)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    v30 = *(a2 + 11);
    if (*(result + 11))
    {
      if (!v30)
      {
        return 0;
      }

      v31 = result[48];
      v32 = a2[48];
      if ((sub_1000C2E80() & 1) == 0 || v31 != v32)
      {
        return 0;
      }

LABEL_60:

      return sub_1000C2E80();
    }

    if (!v30)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (result[8] != a2[8])
    {
      return 0;
    }

    goto LABEL_18;
  }

  v13 = (v2 + 32);
  v14 = (v3 + 32);
  while (v4)
  {
    if (*v13 != *v14)
    {
      return 0;
    }

    ++v13;
    ++v14;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

BOOL _s7CoreP2P12NANAttributeO26ExtendedWLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LOBYTE(v16) = BYTE4(a1);
  HIBYTE(v16) = BYTE5(a1);
  LOBYTE(v13) = BYTE4(a4);
  HIBYTE(v13) = BYTE5(a4);
  if (a1 != a4 || v16 != v13)
  {
    return 0;
  }

  LOBYTE(v15) = BYTE6(a1);
  BYTE1(v15) = HIBYTE(a1);
  HIWORD(v15) = a2;
  LOBYTE(v17) = BYTE2(a2);
  HIBYTE(v17) = BYTE3(a2);
  LOBYTE(v12) = BYTE6(a4);
  BYTE1(v12) = HIBYTE(a4);
  HIWORD(v12) = a5;
  LOBYTE(v14) = BYTE2(a5);
  HIBYTE(v14) = BYTE3(a5);
  return v15 == v12 && v17 == v14 && BYTE4(a2) == BYTE4(a5) && (a5 ^ a2) >> 40 == 0 && a3 == a6;
}

BOOL sub_100266124(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LOBYTE(v14) = BYTE4(a1);
  HIBYTE(v14) = BYTE5(a1);
  LOBYTE(v11) = BYTE4(a4);
  HIBYTE(v11) = BYTE5(a4);
  if (a1 != a4 || v14 != v11)
  {
    return 0;
  }

  LOBYTE(v13) = BYTE6(a1);
  BYTE1(v13) = HIBYTE(a1);
  HIWORD(v13) = a2;
  LOBYTE(v15) = BYTE2(a2);
  HIBYTE(v15) = BYTE3(a2);
  LOBYTE(v10) = BYTE6(a4);
  BYTE1(v10) = HIBYTE(a4);
  HIWORD(v10) = a5;
  LOBYTE(v12) = BYTE2(a5);
  HIBYTE(v12) = BYTE3(a5);
  if (v13 != v10 || v15 != v12)
  {
    return 0;
  }

  return (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(a5) & 0xFFFFFF) && a3 == a6;
}

BOOL sub_100266240(unint64_t a1, uint64_t a2, _BOOL8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOBYTE(v10) = BYTE4(a5);
  HIBYTE(v10) = BYTE5(a5);
  v8 = a1 == a5 && v11 == v10;
  if (!v8 || BYTE6(a1) != BYTE6(a5) || (a5 ^ a1) >> 56 || a2 != a6 || WORD1(a2) != WORD1(a6) || WORD2(a2) != WORD2(a6))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
}

BOOL _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 1) != *(a2 + 1) || !_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 2), *(a1 + 3), *(a2 + 2), *(a2 + 3)) || !_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 4), *(a1 + 5), *(a2 + 4), *(a2 + 5)) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7) || !_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 8), *(a1 + 9), *(a2 + 8), *(a2 + 9)))
  {
    return 0;
  }

  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v6 = *(a2 + 10);
  v7 = *(a2 + 11);

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v6, v7);
}

BOOL _s7CoreP2P12NANAttributeO17DatapathExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  LODWORD(v31) = *(a1 + 3);
  v2 = *(a1 + 7);
  WORD2(v31) = *(a1 + 7);
  v3 = v31 == *(a2 + 3) && v2 == *(a2 + 7);
  if (!v3 || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return 0;
  }

  v4 = a2[12];
  if (a1[12])
  {
    if (!a2[12])
    {
      return 0;
    }
  }

  else
  {
    if (a1[11] != a2[11])
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (a1[19])
  {
    if ((a2[19] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[19])
    {
      return 0;
    }

    v5 = *(a1 + 13) | (*(a1 + 17) << 32);
    v6 = *(a2 + 13) | (*(a2 + 17) << 32);
    v7.i64[0] = 0xFFFFFFFFFFFFLL;
    v7.i64[1] = 0xFFFFFFFFFFFFLL;
    v8 = vandq_s8(vdupq_n_s64(v5), v7);
    v9 = vshlq_u64(v8, xmmword_1004817A0);
    v10 = vandq_s8(vdupq_n_s64(v6), v7);
    v11 = vshlq_u64(v10, xmmword_1004817A0);
    v12 = vshlq_u64(v10, xmmword_100481790);
    LOBYTE(v31) = *(a1 + 13);
    *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_100481790));
    *v9.i8 = vmovn_s64(v9);
    v9.i16[1] = v9.i16[2];
    v9.i16[2] = v8.i16[0];
    v9.i16[3] = v8.i16[2];
    *(&v31 + 1) = vmovn_s16(v9).u32[0];
    BYTE5(v31) = BYTE5(v5);
    LOBYTE(v29) = v6;
    *v8.i8 = vmovn_s64(v12);
    *v12.i8 = vmovn_s64(v11);
    v12.i16[1] = v12.i16[2];
    v12.i16[2] = v8.i16[0];
    v12.i16[3] = v8.i16[2];
    *(&v29 + 1) = vmovn_s16(v12).u32[0];
    BYTE5(v29) = BYTE5(v6);
    if (v31 != v29 || WORD2(v31) != WORD2(v29))
    {
      return 0;
    }
  }

  v34 = *(a1 + 24);
  v33 = *(a2 + 24);
  v14 = v34;
  v15 = v33;
  if (*(&v34 + 1) >> 60 == 15)
  {
    if (*(&v33 + 1) >> 60 == 15)
    {
      v16 = a1;
      v17 = a2;
      sub_100012400(&v34, &v31, &unk_100596890, &qword_10049F8A0);
      sub_100012400(&v33, &v31, &unk_100596890, &qword_10049F8A0);
      sub_100017554(v14, *(&v14 + 1));
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*(&v33 + 1) >> 60 == 15)
  {
LABEL_30:
    sub_100012400(&v34, &v31, &unk_100596890, &qword_10049F8A0);
    sub_100012400(&v33, &v31, &unk_100596890, &qword_10049F8A0);
    sub_100017554(v14, *(&v14 + 1));
    sub_100017554(v15, *(&v15 + 1));
    return 0;
  }

  v16 = a1;
  v17 = a2;
  sub_100012400(&v34, &v31, &unk_100596890, &qword_10049F8A0);
  sub_100012400(&v33, &v31, &unk_100596890, &qword_10049F8A0);
  v18 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v14, *(&v14 + 1), v15, *(&v15 + 1));
  sub_100017554(v15, *(&v15 + 1));
  sub_100017554(v14, *(&v14 + 1));
  if (!v18)
  {
    return 0;
  }

LABEL_32:
  v31 = *(v16 + 40);
  v19 = *(v16 + 7);
  v32 = v19;
  v29 = *(v17 + 40);
  v20 = *(v17 + 7);
  v30 = v20;
  v21 = v31;
  v22 = v29;
  if (v31 == 4)
  {
    if (v29 == 4)
    {
      sub_100012400(&v31, v28, &qword_10058F2E0, qword_100491AC0);
      sub_100012400(&v29, v28, &qword_10058F2E0, qword_100491AC0);
      sub_1001842D0(v21, *(&v21 + 1), v19);
      return 1;
    }

    goto LABEL_36;
  }

  if (v29 == 4)
  {
LABEL_36:
    sub_100012400(&v31, v28, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v29, v28, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v21, *(&v21 + 1), v19);
    v25 = *(&v22 + 1);
    v24 = v22;
    v26 = v20;
LABEL_37:
    sub_1001842D0(v24, v25, v26);
    return 0;
  }

  if (v31 != v29)
  {
    sub_100012400(&v31, v28, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v29, v28, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v22, *(&v22 + 1), v20);
    v25 = *(&v21 + 1);
    v24 = v21;
    v26 = v19;
    goto LABEL_37;
  }

  sub_100012400(&v31, v28, &qword_10058F2E0, qword_100491AC0);
  sub_100012400(&v29, v28, &qword_10058F2E0, qword_100491AC0);
  v27 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v21 + 1), v19, *(&v22 + 1), v20);
  sub_1001842D0(v22, *(&v22 + 1), v20);
  sub_1001842D0(v21, *(&v21 + 1), v19);
  return v27;
}

BOOL _s7CoreP2P12NANAttributeO20PairingBootstrappingV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v11 = *(a2 + 3);
  v10 = *(a2 + 4);
  if (v6 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      v13 = a1;
      sub_10012A628(a1, v22);
      v14 = a2;
      sub_10012A628(a2, v22);
LABEL_7:
      sub_1000449CC(v5, v4, v7, v6);
      return *(v13 + 20) == *(v14 + 20);
    }

    goto LABEL_10;
  }

  if (v10 >> 60 != 15)
  {
    v14 = a2;
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
LABEL_18:
        sub_10012A628(a1, v22);
        sub_10012A628(v14, v22);
        sub_1000449CC(v9, v8, v11, v10);
LABEL_19:
        v17 = v5;
        v18 = v4;
        v19 = v7;
        v20 = v6;
        goto LABEL_20;
      }
    }

    else if ((v8 & 1) != 0 || v5 != v9)
    {
      goto LABEL_18;
    }

    v13 = a1;
    sub_10012A628(a1, v22);
    sub_10012A628(v14, v22);
    v21 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v11, v10);
    sub_1000449CC(v9, v8, v11, v10);
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_10:
  sub_10012A628(a1, v22);
  sub_10012A628(a2, v22);
  sub_1000449CC(v5, v4, v7, v6);
  v17 = v9;
  v18 = v8;
  v19 = v11;
  v20 = v10;
LABEL_20:
  sub_1000449CC(v17, v18, v19, v20);
  return 0;
}

BOOL sub_100266B2C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  result = 0;
  LOBYTE(v10) = BYTE1(a1);
  BYTE1(v10) = BYTE2(a1);
  BYTE2(v10) = BYTE3(a1);
  HIBYTE(v10) = BYTE4(a1);
  LOBYTE(v11) = BYTE5(a1);
  HIBYTE(v11) = BYTE6(a1);
  LOBYTE(v8) = BYTE1(a3);
  BYTE1(v8) = BYTE2(a3);
  BYTE2(v8) = BYTE3(a3);
  HIBYTE(v8) = BYTE4(a3);
  LOBYTE(v9) = BYTE5(a3);
  HIBYTE(v9) = BYTE6(a3);
  v7 = v10 != v8 || v11 != v9;
  if (!((a3 ^ a1) >> 56) && !v7 && a2 == a4 && BYTE1(a2) == BYTE1(a4))
  {
    return (a2 >> 16) == (a4 >> 16);
  }

  return result;
}

BOOL sub_100266C4C(uint64_t a1, int a2, _BOOL8 a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 == a5)
  {
    LOBYTE(v12) = BYTE1(a1);
    BYTE1(v12) = BYTE2(a1);
    BYTE2(v12) = BYTE3(a1);
    HIBYTE(v12) = BYTE4(a1);
    LOBYTE(v13) = BYTE5(a1);
    HIBYTE(v13) = BYTE6(a1);
    LOBYTE(v10) = BYTE1(a5);
    BYTE1(v10) = BYTE2(a5);
    BYTE2(v10) = BYTE3(a5);
    HIBYTE(v10) = BYTE4(a5);
    LOBYTE(v11) = BYTE5(a5);
    HIBYTE(v11) = BYTE6(a5);
    v8 = v12 == v10 && v13 == v11;
    if (v8 && a2 == a6 && ((a2 ^ a6) & 0x10000) == 0 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100266D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v7) = BYTE4(a1);
  HIBYTE(v7) = BYTE5(a1);
  LOBYTE(v6) = BYTE4(a3);
  HIBYTE(v6) = BYTE5(a3);
  v4 = a1 == a3 && v7 == v6;
  if (!v4 || BYTE6(a1) != BYTE6(a3))
  {
    return 0;
  }

  return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a4);
}

BOOL sub_100266E38(_BOOL8 result, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return a2 == a4 && (a4 ^ a2) < 0x100u;
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        return a2 == a4 && (a4 ^ a2) < 0x100u;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100266EAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a1 == a5 && !((a5 ^ a1) >> 32) && a2 == a6 && a3 == a7 && BYTE1(a3) == BYTE1(a7))
  {
    v8 = BYTE3(a7);
    if ((a3 & 0x1000000) != 0)
    {
      if (!BYTE3(a7))
      {
        return v8;
      }
    }

    else
    {
      if (BYTE2(a3) != BYTE2(a7))
      {
        LOBYTE(v8) = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (BYTE5(a4) == 255)
    {
      if (BYTE5(a8) != 255)
      {
        return 0;
      }
    }

    else if (BYTE5(a8) == 255 || !sub_100237BFC(__PAIR64__(a4, HIDWORD(a3)), BYTE4(a4) | (((HIDWORD(a4) >> 8) & 1) << 8), __SPAIR64__(a8, HIDWORD(a7)), BYTE4(a8) | (((HIDWORD(a8) >> 8) & 1) << 8)))
    {
      return 0;
    }

    return 1;
  }

  return v8;
}

BOOL _s7CoreP2P12NANAttributeO18WLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 6) == *(a2 + 6) && *(a1 + 10) == *(a2 + 10);
  if (v4 && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17))
  {
    if (((*(a1 + 18) ^ *(a2 + 18)) & 1) == 0 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
    {
      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  return v3;
}

BOOL _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO21__derived_enum_equalsySbAK_AKtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0);
  __chkstk_darwin();
  v52[0] = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  __chkstk_darwin();
  v7 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = (v52 - v8);
  __chkstk_darwin();
  v11 = (v52 - v10);
  __chkstk_darwin();
  v13 = v52 - v12;
  sub_10005DC58(&qword_1005935F0, &qword_1004ABA30);
  __chkstk_darwin();
  v15 = v52 - v14;
  v17 = (v52 + *(v16 + 56) - v14);
  sub_1002774DC(a1, v52 - v14, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  sub_1002774DC(a2, v17, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002774DC(v15, v9, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
      v20 = v9[1];
      v19 = v9[2];
      v22 = v9[3];
      v21 = v9[4];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v23 = *v9;
        v24 = *v17;
        v25 = *(v17 + 1);
        v26 = *(v17 + 2);
        v27 = *(v17 + 3);
        v28 = *(v17 + 4);
        if (v23 == v24 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v19, v25, v26))
        {
          v29 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v21, v27, v28);
          sub_1000124C8(v25, v26);
          sub_1000124C8(v27, v28);
          v30 = v20;
          v31 = v19;
          goto LABEL_21;
        }

        sub_1000124C8(v25, v26);
        sub_1000124C8(v27, v28);
        v49 = v20;
        v50 = v19;
        goto LABEL_31;
      }

      v42 = v20;
      v43 = v19;
    }

    else
    {
      sub_1002774DC(v15, v7, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
      v35 = v7[1];
      v34 = v7[2];
      v22 = v7[3];
      v21 = v7[4];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v36 = *v7;
        v37 = *v17;
        v38 = *(v17 + 1);
        v39 = *(v17 + 2);
        v40 = *(v17 + 3);
        v41 = *(v17 + 4);
        if (v36 == v37 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v34, v38, v39))
        {
          v29 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v21, v40, v41);
          sub_1000124C8(v38, v39);
          sub_1000124C8(v40, v41);
          v30 = v35;
          v31 = v34;
LABEL_21:
          sub_1000124C8(v30, v31);
          sub_1000124C8(v22, v21);
          if (v29)
          {
            sub_100277544(v15, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
            return 1;
          }

LABEL_32:
          sub_100277544(v15, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
          return 0;
        }

        sub_1000124C8(v38, v39);
        sub_1000124C8(v40, v41);
        v49 = v35;
        v50 = v34;
LABEL_31:
        sub_1000124C8(v49, v50);
        sub_1000124C8(v22, v21);
        goto LABEL_32;
      }

      v42 = v35;
      v43 = v34;
    }

    sub_1000124C8(v42, v43);
    sub_1000124C8(v22, v21);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1002774DC(v15, v11, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_26;
    }

    v33 = *v11 == *v17 && *(v11 + 1) == *(v17 + 1);
  }

  else
  {
    sub_1002774DC(v15, v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100277544(v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
LABEL_26:
      sub_100016290(v15, &qword_1005935F0, &qword_1004ABA30);
      return 0;
    }

    v44 = v52[0];
    sub_100262DC8(v17, v52[0], type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v45 = v53;
    v46 = v54;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v47 = v53;
    v48 = v54;
    v33 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v45, v46, v53, v54);
    sub_1000124C8(v47, v48);
    sub_1000124C8(v45, v46);
    sub_100277544(v44, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    sub_100277544(v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }

  sub_100277544(v15, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  return v33;
}

BOOL _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV23__derived_struct_equalsySbAI_AItFZ_0(__int16 *a1, __int16 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480F30;
  *(v8 + 32) = v4;
  *(v8 + 34) = v5;
  v9 = sub_10002D874(v8);
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100480F30;
  *(v12 + 32) = v6;
  *(v12 + 34) = v7;
  v13 = sub_10002D874(v12);
  v15 = v14;

  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v11, v13, v15);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v9, v11);
  if (!v16 || (0x252409u >> (8 * *(a1 + 3))) != (0x252409u >> (8 * *(a2 + 3))))
  {
    return 0;
  }

  v17 = *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) + 24);

  return _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO21__derived_enum_equalsySbAK_AKtFZ_0(a1 + v17, a2 + v17, v18);
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (((a1[8] ^ a2[8]) & 1) == 0 && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) && *(a1 + 2) == *(a2 + 2))
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v5 = *(a1 + 7);
    v4 = *(a1 + 8);
    v17 = *(a1 + 10);
    v18 = *(a1 + 9);
    v15 = *(a1 + 12);
    v16 = *(a1 + 11);
    v6 = *(a2 + 5);
    v7 = *(a2 + 6);
    v9 = *(a2 + 7);
    v8 = *(a2 + 8);
    v10 = *(a2 + 9);
    v11 = *(a2 + 10);
    v13 = *(a2 + 12);
    v14 = *(a2 + 11);
    if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v6, v7) && v5 == v9 && v4 == v8 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v17, v10, v11) && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v16, v15, v14, v13))
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100267948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v11) = BYTE4(a1);
  BYTE1(v11) = BYTE5(a1);
  BYTE2(v11) = BYTE6(a1);
  HIBYTE(v11) = HIBYTE(a1);
  LOBYTE(v10) = BYTE4(a3);
  BYTE1(v10) = BYTE5(a3);
  BYTE2(v10) = BYTE6(a3);
  HIBYTE(v10) = HIBYTE(a3);
  return v11 == v10 && a2 == a4 && BYTE2(a2) == BYTE2(a4) && BYTE3(a2) == BYTE3(a4) && BYTE4(a2) == BYTE4(a4) && BYTE5(a2) == BYTE5(a4);
}

BOOL _s7CoreP2P12NANAttributeO4IBSSV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  result = 0;
  if (v2)
  {
    v3 = *(a1 + 6) == *(a2 + 6) && *(a1 + 10) == *(a2 + 10);
    if (v3 && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17) && ((*(a1 + 18) ^ *(a2 + 18)) & 1) == 0 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
    {
      return 1;
    }
  }

  return result;
}

BOOL _s7CoreP2P12NANAttributeO4MeshV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  if (!v2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0 || !_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7, v8, v9);
}

BOOL sub_100267C38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v10) = BYTE2(a1);
  BYTE1(v10) = BYTE3(a1);
  BYTE2(v10) = BYTE4(a1);
  HIBYTE(v10) = BYTE5(a1);
  LOBYTE(v11) = BYTE6(a1);
  HIBYTE(v11) = HIBYTE(a1);
  LOBYTE(v8) = BYTE2(a3);
  BYTE1(v8) = BYTE3(a3);
  BYTE2(v8) = BYTE4(a3);
  HIBYTE(v8) = BYTE5(a3);
  LOBYTE(v9) = BYTE6(a3);
  HIBYTE(v9) = HIBYTE(a3);
  v5 = v10 != v8 || v11 != v9;
  v6 = a2 == a4 && (a4 ^ a2) >> 32 == 0;
  return !v5 && v6;
}

BOOL _s7CoreP2P12NANAttributeO23CustomDeviceInformationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v5 = *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);

  return _s7CoreP2P12NANAttributeO23CustomDeviceInformationV0D10AttributesV23__derived_struct_equalsySbAG_AGtFZ_0(&a1[v5], &a2[v5]);
}

uint64_t _s7CoreP2P12NANAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v350 = a2;
  *&v349 = a1;
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v310 = &v309 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v346 = &v309 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v345 = &v309 - v5;
  __chkstk_darwin();
  v347 = &v309 - v6;
  __chkstk_darwin();
  v343 = (&v309 - v7);
  __chkstk_darwin();
  v342 = (&v309 - v8);
  __chkstk_darwin();
  v341 = &v309 - v9;
  __chkstk_darwin();
  v340 = (&v309 - v10);
  __chkstk_darwin();
  v339 = (&v309 - v11);
  __chkstk_darwin();
  v337 = (&v309 - v12);
  __chkstk_darwin();
  v338 = &v309 - v13;
  __chkstk_darwin();
  v344 = &v309 - v14;
  __chkstk_darwin();
  v335 = (&v309 - v15);
  __chkstk_darwin();
  v336 = &v309 - v16;
  __chkstk_darwin();
  v333 = (&v309 - v17);
  __chkstk_darwin();
  v334 = &v309 - v18;
  __chkstk_darwin();
  v332 = &v309 - v19;
  __chkstk_darwin();
  v331 = &v309 - v20;
  __chkstk_darwin();
  v329 = (&v309 - v21);
  __chkstk_darwin();
  v327 = (&v309 - v22);
  __chkstk_darwin();
  v328 = &v309 - v23;
  __chkstk_darwin();
  v326 = &v309 - v24;
  __chkstk_darwin();
  v330 = &v309 - v25;
  __chkstk_darwin();
  v325 = &v309 - v26;
  __chkstk_darwin();
  v324 = (&v309 - v27);
  __chkstk_darwin();
  v322 = (&v309 - v28);
  __chkstk_darwin();
  v323 = &v309 - v29;
  __chkstk_darwin();
  v320 = (&v309 - v30);
  __chkstk_darwin();
  v321 = &v309 - v31;
  __chkstk_darwin();
  v318 = &v309 - v32;
  __chkstk_darwin();
  v319 = (&v309 - v33);
  __chkstk_darwin();
  v316 = &v309 - v34;
  __chkstk_darwin();
  v317 = &v309 - v35;
  __chkstk_darwin();
  v315 = &v309 - v36;
  __chkstk_darwin();
  v314 = &v309 - v37;
  __chkstk_darwin();
  v313 = (&v309 - v38);
  __chkstk_darwin();
  v312 = &v309 - v39;
  __chkstk_darwin();
  v311 = (&v309 - v40);
  __chkstk_darwin();
  v42 = (&v309 - v41);
  __chkstk_darwin();
  v44 = (&v309 - v43);
  __chkstk_darwin();
  v46 = (&v309 - v45);
  __chkstk_darwin();
  v48 = (&v309 - v47);
  __chkstk_darwin();
  v50 = &v309 - v49;
  __chkstk_darwin();
  v52 = &v309 - v51;
  sub_10005DC58(&qword_100593570, &qword_1004AB9F0);
  __chkstk_darwin();
  v54 = &v309 - v53;
  v56 = &v309 + *(v55 + 56) - v53;
  sub_1002774DC(v349, &v309 - v53, type metadata accessor for NANAttribute);
  *&v349 = v56;
  sub_1002774DC(v350, v56, type metadata accessor for NANAttribute);
  v350 = v54;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v350;
      sub_1002774DC(v350, v50, type metadata accessor for NANAttribute);
      v2.i32[0] = *(v50 + 2);
      v165 = v50[6];
      v166 = v50[7];
      v167 = v50[8];
      v168 = *(v50 + 3);
      v169 = v349;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_237;
      }

      if (*v50 == *v169 && v50[1] == v169[1])
      {
        v170 = vmovl_u8(v2).u64[0];
        v171 = *(v169 + 3);
        v172 = v169[8];
        v173 = *(v169 + 3);
        LODWORD(v357) = vuzp1_s8(v170, v170).u32[0];
        BYTE4(v357) = v165;
        BYTE5(v357) = v166;
        v174 = v357 == *(v169 + 2) && WORD2(v357) == v173;
        if (v174 && v167 == v172 && v168 == v171)
        {
          goto LABEL_269;
        }
      }

      goto LABEL_273;
    case 2u:
      v57 = v350;
      sub_1002774DC(v350, v48, type metadata accessor for NANAttribute);
      v63 = *v48;
      v64 = v349;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_59;
      }

      goto LABEL_201;
    case 3u:
      v57 = v350;
      sub_1002774DC(v350, v46, type metadata accessor for NANAttribute);
      v152 = v46[3];
      v352[1] = v46[2];
      v353 = v152;
      v354 = v46[4];
      v153 = v46[1];
      v351 = *v46;
      v352[0] = v153;
      v154 = v349;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v155 = v154[3];
        v358[1] = v154[2];
        v359 = v155;
        v360 = v154[4];
        v156 = v154[1];
        v357 = *v154;
        v358[0] = v156;
        v71 = _s7CoreP2P12NANAttributeO17ServiceDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(&v351, &v357);
        sub_100197EB4(&v357);
        sub_100197EB4(&v351);
        goto LABEL_213;
      }

      sub_100197EB4(&v351);
      goto LABEL_237;
    case 4u:
      v57 = v350;
      sub_1002774DC(v350, v44, type metadata accessor for NANAttribute);
      v109 = v349;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_237;
      }

      v110 = *v44 == *v109;
      goto LABEL_107;
    case 5u:
      v57 = v350;
      sub_1002774DC(v350, v42, type metadata accessor for NANAttribute);
      v207 = v42[1];
      v357 = *v42;
      v358[0] = v207;
      *(v358 + 9) = *(v42 + 25);
      v208 = v349;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_10027A24C(&v357);
        goto LABEL_237;
      }

      v209 = v208[1];
      v351 = *v208;
      v352[0] = v209;
      *(v352 + 9) = *(v208 + 25);
      LODWORD(v364[0]) = v357;
      v210 = v357 == v351 && WORD2(v357) == WORD2(v351);
      if (v210 && ((LODWORD(v364[0]) = *(&v357 + 6), *(&v357 + 6) == *(&v351 + 6)) ? (v211 = WORD5(v357) == WORD5(v351)) : (v211 = 0), v211 && LOBYTE(v358[0]) == LOBYTE(v352[0]) && BYTE1(v358[0]) == BYTE1(v352[0]) && ((BYTE2(v358[0]) ^ BYTE2(v352[0])) & 1) == 0 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v358[0] + 1), *&v358[1], *(&v352[0] + 1), *&v352[1])))
      {
        sub_10027A24C(&v357);
        sub_10027A24C(&v351);
        if (BYTE8(v358[1]) == BYTE8(v352[1]))
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A24C(&v351);
        sub_10027A24C(&v357);
      }

      goto LABEL_273;
    case 6u:
      v57 = v350;
      v222 = v311;
      sub_1002774DC(v350, v311, type metadata accessor for NANAttribute);
      v223 = v222[1];
      v357 = *v222;
      v358[0] = v223;
      v224 = v349;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_10027A21C(&v357);
        goto LABEL_237;
      }

      v225 = v224[1];
      v351 = *v224;
      v352[0] = v225;
      if (v357 == v351 && ((LODWORD(v364[0]) = *(&v357 + 1), *(&v357 + 1) == *(&v351 + 1)) ? (v226 = *(&v357 + 5) == *(&v351 + 5)) : (v226 = 0), v226 && BYTE8(v357) == BYTE8(v351) && BYTE9(v357) == BYTE9(v351) && ((BYTE10(v357) ^ BYTE10(v351)) & 1) == 0))
      {
        v227 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*&v358[0], *(&v358[0] + 1), *&v352[0], *(&v352[0] + 1));
        sub_10027A21C(&v351);
        sub_10027A21C(&v357);
        if (v227)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A21C(&v351);
        sub_10027A21C(&v357);
      }

      goto LABEL_273;
    case 7u:
      v157 = v312;
      sub_1002774DC(v350, v312, type metadata accessor for NANAttribute);
      v158 = *(v157 + 16);
      v357 = *v157;
      v358[0] = v158;
      *&v358[1] = *(v157 + 32);
      v159 = v349;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_10027A1EC(&v357);
        v57 = v350;
        goto LABEL_237;
      }

      v160 = v159[1];
      v351 = *v159;
      v352[0] = v160;
      *&v352[1] = *(v159 + 4);
      LODWORD(v364[0]) = v357;
      v161 = v357 == v351 && WORD2(v357) == WORD2(v351);
      if (!v161 || ((LODWORD(v364[0]) = *(&v357 + 6), *(&v357 + 6) == *(&v351 + 6)) ? (v162 = WORD5(v357) == WORD5(v351)) : (v162 = 0), !v162 || LOBYTE(v358[0]) != LOBYTE(v352[0]) || BYTE1(v358[0]) != BYTE1(v352[0]) || ((BYTE2(v358[0]) ^ BYTE2(v352[0])) & 1) != 0))
      {
        sub_10027A1EC(&v351);
        sub_10027A1EC(&v357);
        goto LABEL_246;
      }

      v163 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v358[0] + 1), *&v358[1], *(&v352[0] + 1), *&v352[1]);
      sub_10027A1EC(&v351);
      sub_10027A1EC(&v357);
      v164 = v350;
      if (v163)
      {
        goto LABEL_270;
      }

      goto LABEL_274;
    case 8u:
      v57 = v350;
      v237 = v313;
      sub_1002774DC(v350, v313, type metadata accessor for NANAttribute);
      v238 = v237[1];
      v357 = *v237;
      v358[0] = v238;
      v358[1] = v237[2];
      v239 = v349;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_10027A1BC(&v357);
        goto LABEL_237;
      }

      v240 = v239[1];
      v351 = *v239;
      v352[0] = v240;
      v352[1] = v239[2];
      LODWORD(v364[0]) = v357;
      v241 = v357 == v351 && WORD2(v357) == WORD2(v351);
      if (v241 && BYTE8(v357) == BYTE8(v351) && BYTE9(v357) == BYTE9(v351) && ((BYTE10(v357) ^ BYTE10(v351)) & 1) == 0 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*&v358[0], *(&v358[0] + 1), *&v352[0], *(&v352[0] + 1)))
      {
        v242 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*&v358[1], *(&v358[1] + 1), *&v352[1], *(&v352[1] + 1));
        sub_10027A1BC(&v351);
        sub_10027A1BC(&v357);
        if (v242)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A1BC(&v351);
        sub_10027A1BC(&v357);
      }

      goto LABEL_273;
    case 9u:
      v57 = v350;
      v117 = v314;
      sub_1002774DC(v350, v314, type metadata accessor for NANAttribute);
      v118 = v117[1];
      v119 = v117[2];
      v121 = *(v117 + 1);
      v120 = *(v117 + 2);
      v122 = v349;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v304 = v121;
        goto LABEL_233;
      }

      if (*v117 != *v122 || v118 != v122[1] || ((v119 ^ v122[2]) & 1) != 0)
      {
        sub_1000124C8(*(v122 + 1), *(v122 + 2));
        v306 = v121;
        goto LABEL_250;
      }

      v123 = *(v122 + 1);
      v124 = *(v122 + 2);
      v125 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v121, v120, v123, v124);
      sub_1000124C8(v123, v124);
      sub_1000124C8(v121, v120);
      if (v125)
      {
        goto LABEL_269;
      }

      goto LABEL_273;
    case 0xAu:
      v57 = v350;
      v232 = v315;
      sub_1002774DC(v350, v315, type metadata accessor for NANAttribute);
      v233 = *(v232 + 1);
      v234 = v349;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_201;
      }

      v235 = *v234;
      v236 = *(v234 + 1);
      if (*v232 != v235)
      {
        goto LABEL_244;
      }

      v182 = sub_1000BD2D0(v233, v236);
      goto LABEL_179;
    case 0xBu:
      v57 = v350;
      v106 = v317;
      sub_1002774DC(v350, v317, type metadata accessor for NANAttribute);
      v58 = v349;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_237;
      }

      v59 = v106[1];
      v60 = *v106;
      goto LABEL_37;
    case 0xCu:
      v57 = v350;
      v114 = v316;
      sub_1002774DC(v350, v316, type metadata accessor for NANAttribute);
      v357 = *v114;
      *&v358[0] = *(v114 + 16);
      v115 = v349;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_10027A18C(&v357);
        goto LABEL_237;
      }

      v351 = *v115;
      *&v352[0] = *(v115 + 2);
      LODWORD(v364[0]) = v357;
      if (v357 != v351 || WORD2(v357) != WORD2(v351))
      {
        sub_10027A18C(&v351);
        sub_10027A18C(&v357);
        goto LABEL_273;
      }

      v307 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v357 + 1), *&v358[0], *(&v351 + 1), *&v352[0]);
      sub_10027A18C(&v351);
      sub_10027A18C(&v357);
      if (!v307)
      {
        goto LABEL_273;
      }

      goto LABEL_269;
    case 0xDu:
      v57 = v350;
      v220 = v319;
      sub_1002774DC(v350, v319, type metadata accessor for NANAttribute);
      v221 = v349;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_237;
      }

      v151 = sub_100265620((*(v220 + 5) << 40) | (*(v220 + 4) << 32) | *v220, *(v220 + 1), *(v220 + 2), *v221 | (*(v221 + 4) << 32) | (*(v221 + 5) << 40), *(v221 + 1), *(v221 + 2));
      goto LABEL_212;
    case 0xEu:
      v57 = v350;
      v95 = v318;
      sub_1002774DC(v350, v318, type metadata accessor for NANAttribute);
      v96 = *(v95 + 16);
      v351 = *v95;
      v352[0] = v96;
      *&v352[1] = *(v95 + 32);
      v97 = v349;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v98 = v97[1];
        v357 = *v97;
        v358[0] = v98;
        *&v358[1] = *(v97 + 4);
        v71 = _s7CoreP2P12NANAttributeO26ServiceDescriptorExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(&v351, &v357);
        sub_100277A14(&v357);
        sub_100277A14(&v351);
        goto LABEL_213;
      }

      sub_100277A14(&v351);
      goto LABEL_237;
    case 0xFu:
      v57 = v350;
      v140 = v321;
      sub_1002774DC(v350, v321, type metadata accessor for NANAttribute);
      v141 = v349;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_237;
      }

      v142 = *v141;
      v143 = *(v141 + 1);
      v144 = *(v140 + 4) | (v140[10] << 16);
      v145 = v141[4];
      v146 = v141[5];
      v147 = v141[6];
      v148 = *(v141 + 4);
      v149 = v141[10];
      v150 = *v140 | (v140[6] << 48) | (v140[5] << 40) | (v140[4] << 32) | (*(v140 + 1) << 16) | ((v140[1] & 1) << 8);
      LOBYTE(v357) = v141[1] & 1;
      v151 = sub_100265934(v150, v144, v142 | (v143 << 16) | (v145 << 32) | (v146 << 40) | (v147 << 48) | (v357 << 8), v148 | (v149 << 16));
      goto LABEL_212;
    case 0x10u:
      v57 = v350;
      v91 = v320;
      sub_1002774DC(v350, v320, type metadata accessor for NANAttribute);
      v92 = v91[1];
      v351 = *v91;
      v352[0] = v92;
      v352[1] = v91[2];
      v93 = v349;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v94 = v93[1];
        v357 = *v93;
        v358[0] = v94;
        v358[1] = v93[2];
        v71 = _s7CoreP2P12NANAttributeO8DatapathV23__derived_struct_equalsySbAE_AEtFZ_0(&v351, &v357);
        sub_10027A15C(&v357);
        sub_10027A15C(&v351);
        goto LABEL_213;
      }

      sub_10027A15C(&v351);
      goto LABEL_237;
    case 0x11u:
      v57 = v350;
      v178 = v323;
      sub_1002774DC(v350, v323, type metadata accessor for NANAttribute);
      v179 = *(v178 + 1);
      v180 = *(v178 + 1);
      v181 = v349;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_201;
      }

      if (*v178 != *v181 || v179 != *(v181 + 1))
      {
        goto LABEL_244;
      }

      v182 = sub_1000BD70C(v180, *(v181 + 1));
      goto LABEL_179;
    case 0x12u:
      v57 = v350;
      v228 = v322;
      sub_1002774DC(v350, v322, type metadata accessor for NANAttribute);
      v357 = *v228;
      v229 = v349;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        sub_10027A12C(&v357);
        goto LABEL_237;
      }

      v351 = *v229;
      LODWORD(v364[0]) = v357;
      v230 = v357 == v351 && WORD2(v357) == WORD2(v351);
      if (v230 && BYTE6(v357) == BYTE6(v351))
      {
        v231 = _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(*(&v357 + 1), *(&v351 + 1));
        sub_10027A12C(&v351);
        sub_10027A12C(&v357);
        if (v231)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A12C(&v351);
        sub_10027A12C(&v357);
      }

      goto LABEL_273;
    case 0x13u:
      v57 = v350;
      v273 = v324;
      sub_1002774DC(v350, v324, type metadata accessor for NANAttribute);
      v274 = v273[1];
      v357 = *v273;
      v358[0] = v274;
      v275 = v349;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v276 = v275[1];
        v351 = *v275;
        v352[0] = v276;
        LOBYTE(v364[0]) = BYTE5(v351);
        LOBYTE(v363[0]) = v276;
        v71 = sub_100265CD8(v357 | (BYTE4(v357) << 32) | (BYTE5(v357) << 40), *(&v357 + 1), v358[0], *(&v358[0] + 1), v351 | (BYTE4(v351) << 32) | (BYTE5(v351) << 40), *(&v351 + 1), v276, *(&v276 + 1));
        sub_10027A0FC(&v357);
        sub_10027A0FC(&v351);
        goto LABEL_213;
      }

      sub_10027A0FC(&v357);
      goto LABEL_237;
    case 0x14u:
      v57 = v350;
      v205 = v325;
      sub_1002774DC(v350, v325, type metadata accessor for NANAttribute);
      v206 = v349;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_237;
      }

      v59 = *(v205 + 1);
      v60 = *v205;
      v107 = *v206;
      v108 = *(v206 + 1);
      goto LABEL_104;
    case 0x15u:
      v57 = v350;
      v212 = v330;
      sub_1002774DC(v350, v330, type metadata accessor for NANAttribute);
      v213 = v212[18];
      v214 = v212[19];
      v215 = *(v212 + 20);
      v216 = *(v212 + 14);
      v217 = v349;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_237;
      }

      if (*v212 != *v217 || v212[1] != v217[1] || *(v212 + 1) != *(v217 + 1) || *(v212 + 2) != *(v217 + 2) || *(v212 + 3) != *(v217 + 3) || v212[16] != v217[16] || v212[17] != v217[17])
      {
        goto LABEL_273;
      }

      v218 = v217[19];
      v219 = *(v217 + 14);
      if (v214)
      {
        if (!v217[19])
        {
          goto LABEL_273;
        }
      }

      else
      {
        if (v213 != v217[18])
        {
          v218 = 1;
        }

        if (v218)
        {
          goto LABEL_273;
        }
      }

      if (v216 >> 8 <= 0xFE)
      {
        if (v219 >> 8 <= 0xFE && sub_100237BFC(v215, v216 & 0x1FF, *(v217 + 20), v219 & 0x1FF))
        {
          goto LABEL_269;
        }
      }

      else if (v219 >> 8 > 0xFE)
      {
        goto LABEL_269;
      }

      goto LABEL_273;
    case 0x16u:
      v57 = v350;
      v264 = v326;
      sub_1002774DC(v350, v326, type metadata accessor for NANAttribute);
      v265 = *(v264 + 1);
      v266 = v264[4];
      v267 = v349;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_237;
      }

      if (*v264 != *v267)
      {
        goto LABEL_273;
      }

      v268 = v267[4];
      if (v266)
      {
        if (v267[4])
        {
          goto LABEL_269;
        }
      }

      else
      {
        if (v265 != *(v267 + 1))
        {
          v268 = 1;
        }

        if ((v268 & 1) == 0)
        {
          goto LABEL_269;
        }
      }

      goto LABEL_273;
    case 0x17u:
      v57 = v350;
      v283 = v328;
      sub_1002774DC(v350, v328, type metadata accessor for NANAttribute);
      v103 = *(v283 + 16);
      v284 = v349;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_201;
      }

      v105 = *(v284 + 16);
      if (*v283 != *v284)
      {
        goto LABEL_244;
      }

      if ((*(v283 + 8) & 1) == 0)
      {
        if (*(v284 + 4) == *(v283 + 4) && (*(v284 + 8) & 1) == 0)
        {
          goto LABEL_267;
        }

LABEL_244:

        goto LABEL_273;
      }

      if (!*(v284 + 8))
      {
        goto LABEL_244;
      }

LABEL_267:
      v248 = _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(v103, v105);

LABEL_268:

      if (v248)
      {
LABEL_269:
        v164 = v57;
LABEL_270:
        sub_100277544(v164, type metadata accessor for NANAttribute);
        v71 = 1;
      }

      else
      {
LABEL_273:
        v164 = v57;
LABEL_274:
        sub_100277544(v164, type metadata accessor for NANAttribute);
LABEL_275:
        v71 = 0;
      }

      return v71 & 1;
    case 0x18u:
      v57 = v350;
      v134 = v327;
      sub_1002774DC(v350, v327, type metadata accessor for NANAttribute);
      v135 = *v134;
      v136 = v349;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_201;
      }

      v61 = _s7CoreP2P12NANAttributeO32FineTimingMeasurementRangeReportV23__derived_struct_equalsySbAE_AEtFZ_0(v135, *v136, v137, v138, v139);
      goto LABEL_93;
    case 0x19u:
      v57 = v350;
      v126 = v329;
      sub_1002774DC(v350, v329, type metadata accessor for NANAttribute);
      v127 = v126[5];
      v354 = v126[4];
      v355 = v127;
      v356 = v126[6];
      v128 = v126[1];
      v351 = *v126;
      v352[0] = v128;
      v129 = v126[3];
      v352[1] = v126[2];
      v353 = v129;
      v130 = v349;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v131 = v130[5];
        v360 = v130[4];
        v361 = v131;
        v362 = v130[6];
        v132 = v130[1];
        v357 = *v130;
        v358[0] = v132;
        v133 = v130[3];
        v358[1] = v130[2];
        v359 = v133;
        v71 = _s7CoreP2P12NANAttributeO16ElementContainerV23__derived_struct_equalsySbAE_AEtFZ_0(&v351, &v357);
        sub_10027A0CC(&v351);
        sub_10027A0CC(&v357);
        goto LABEL_213;
      }

      sub_10027A0CC(&v351);
      goto LABEL_237;
    case 0x1Au:
      v57 = v350;
      v302 = v331;
      sub_1002774DC(v350, v331, type metadata accessor for NANAttribute);
      v303 = v349;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_237;
      }

      v151 = _s7CoreP2P12NANAttributeO26ExtendedWLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(*v302, *(v302 + 8), *(v302 + 16), *v303, *(v303 + 8), *(v303 + 16));
      goto LABEL_212;
    case 0x1Bu:
      v57 = v350;
      v72 = v332;
      sub_1002774DC(v350, v332, type metadata accessor for NANAttribute);
      v2.i32[0] = *(v72 + 1);
      v73 = v72[5];
      v74 = v72[6];
      v75 = v72[7];
      v76 = v72[8];
      v77 = v72[9];
      v78 = *(v72 + 5);
      LODWORD(v347) = *(v72 + 6);
      v79 = v349;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_237;
      }

      if (*v72 != *v79)
      {
        goto LABEL_273;
      }

      v80 = vmovl_u8(v2).u64[0];
      v81 = *(v79 + 6);
      v82 = *(v79 + 5);
      v83 = v79[9];
      v84 = v79[8];
      v85 = v79[7];
      v86 = *(v79 + 5);
      LODWORD(v357) = vuzp1_s8(v80, v80).u32[0];
      BYTE4(v357) = v73;
      BYTE5(v357) = v74;
      v87 = v357 == *(v79 + 1) && WORD2(v357) == v86;
      if (!v87 || v75 != v85 || v76 != v84 || v77 != v83 || v78 != v82 || v347 != v81)
      {
        goto LABEL_273;
      }

      goto LABEL_269;
    case 0x1Cu:
      v57 = v350;
      v285 = v334;
      sub_1002774DC(v350, v334, type metadata accessor for NANAttribute);
      v286 = v349;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_237;
      }

      v151 = sub_100266124(*v285, (*(v285 + 14) << 48) | (*(v285 + 13) << 40) | (*(v285 + 12) << 32) | *(v285 + 8), *(v285 + 16), *v286, *(v286 + 8) | (*(v286 + 12) << 32) | (*(v286 + 13) << 40) | (*(v286 + 14) << 48), *(v286 + 16));
LABEL_212:
      v71 = v151;
      goto LABEL_213;
    case 0x1Du:
      v57 = v350;
      v287 = v333;
      sub_1002774DC(v350, v333, type metadata accessor for NANAttribute);
      v288 = v287[1];
      v357 = *v287;
      v358[0] = v288;
      v289 = v349;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v290 = v289[1];
        v351 = *v289;
        v352[0] = v290;
        v71 = sub_100266240(v357, BYTE8(v357) | (WORD5(v357) << 16) | (WORD6(v357) << 32), *&v358[0], *(&v358[0] + 1), v351, BYTE8(v351) | (WORD5(v351) << 16) | (WORD6(v351) << 32), v290, *(&v290 + 1));
        sub_10027A09C(&v351);
        sub_10027A09C(&v357);
        goto LABEL_213;
      }

      sub_10027A09C(&v357);
      goto LABEL_237;
    case 0x1Eu:
      v57 = v350;
      v243 = v336;
      sub_1002774DC(v350, v336, type metadata accessor for NANAttribute);
      v244 = *(v243 + 1);
      v245 = v349;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_201;
      }

      v246 = *v245;
      v247 = *(v245 + 1);
      if (*v243 != v246)
      {
        goto LABEL_244;
      }

      v182 = sub_1000BE1B8(v244, v247);
LABEL_179:
      v248 = v182;

      goto LABEL_268;
    case 0x1Fu:
      v57 = v350;
      v175 = v335;
      sub_1002774DC(v350, v335, type metadata accessor for NANAttribute);
      v176 = *v175;
      v177 = v349;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_201;
      }

      v61 = _s7CoreP2P12NANAttributeO26SecurityContextInformationV23__derived_struct_equalsySbAE_AEtFZ_0(v176, *v177);
      goto LABEL_93;
    case 0x20u:
      v57 = v350;
      v249 = v344;
      sub_1002774DC(v350, v344, type metadata accessor for NANAttribute);
      v250 = *(v249 + 80);
      v360 = *(v249 + 64);
      v361 = v250;
      *&v362 = *(v249 + 96);
      v251 = *(v249 + 16);
      v357 = *v249;
      v358[0] = v251;
      v252 = *(v249 + 48);
      v358[1] = *(v249 + 32);
      v359 = v252;
      v253 = v349;
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        sub_100143F68(&v357);
        goto LABEL_237;
      }

      v254 = v253[5];
      v354 = v253[4];
      v355 = v254;
      *&v356 = *(v253 + 12);
      v255 = v253[1];
      v351 = *v253;
      v352[0] = v255;
      v256 = v253[3];
      v352[1] = v253[2];
      v353 = v256;
      if (v357 == v351)
      {
        v257 = *(v249 + 56);
        v363[2] = *(v249 + 40);
        v363[3] = v257;
        v258 = *(v249 + 88);
        v363[4] = *(v249 + 72);
        v363[5] = v258;
        v259 = *(v249 + 24);
        v363[0] = *(v249 + 8);
        v363[1] = v259;
        v260 = *(v253 + 56);
        v364[2] = *(v253 + 40);
        v364[3] = v260;
        v261 = *(v253 + 88);
        v364[4] = *(v253 + 72);
        v364[5] = v261;
        v262 = *(v253 + 24);
        v364[0] = *(v253 + 8);
        v364[1] = v262;
        v263 = _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V23__derived_struct_equalsySbAG_AGtFZ_0(v363, v364);
        sub_100143F68(&v351);
        sub_100143F68(&v357);
        if (v263)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_100143F68(&v351);
        sub_100143F68(&v357);
      }

      goto LABEL_273;
    case 0x21u:
      v57 = v350;
      v99 = v338;
      sub_1002774DC(v350, v338, type metadata accessor for NANAttribute);
      v100 = *(v99 + 8);
      v101 = *(v99 + 16);
      v102 = *(v99 + 18);
      v103 = *(v99 + 24);
      v104 = v349;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_201;
      }

      v105 = *(v104 + 24);
      if (*v99 != *v104 || v100 != *(v104 + 8) || v101 != *(v104 + 16) || v102 != *(v104 + 18))
      {
        goto LABEL_244;
      }

      goto LABEL_267;
    case 0x22u:
      v57 = v350;
      v88 = v337;
      sub_1002774DC(v350, v337, type metadata accessor for NANAttribute);
      v89 = *v88;
      v90 = v349;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_201;
      }

      v61 = _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(v89, *v90);
      goto LABEL_93;
    case 0x23u:
      v57 = v350;
      v62 = v339;
      sub_1002774DC(v350, v339, type metadata accessor for NANAttribute);
      v63 = *v62;
      v64 = v349;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_201;
      }

LABEL_59:
      v61 = _s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(v63, *v64);
      goto LABEL_93;
    case 0x24u:
      v57 = v350;
      v65 = v340;
      sub_1002774DC(v350, v340, type metadata accessor for NANAttribute);
      v66 = v65[1];
      v351 = *v65;
      v352[0] = v66;
      v67 = v65[3];
      v352[1] = v65[2];
      v353 = v67;
      v68 = v349;
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        v69 = v68[1];
        v357 = *v68;
        v358[0] = v69;
        v70 = v68[3];
        v358[1] = v68[2];
        v359 = v70;
        v71 = _s7CoreP2P12NANAttributeO17DatapathExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(&v351, &v357);
        sub_10027A06C(&v357);
        sub_10027A06C(&v351);
        goto LABEL_213;
      }

      sub_10027A06C(&v351);
      goto LABEL_237;
    case 0x25u:
      v57 = v350;
      sub_1002774DC(v350, v341, type metadata accessor for NANAttribute);
      if (swift_getEnumCaseMultiPayload() != 37)
      {
LABEL_201:

        goto LABEL_237;
      }

      v61 = sub_1000C2E80();
LABEL_93:
      v71 = v61;

      goto LABEL_213;
    case 0x26u:
      v57 = v350;
      v291 = v342;
      sub_1002774DC(v350, v342, type metadata accessor for NANAttribute);
      v293 = *v291;
      v292 = v291[1];
      v294 = v291[2];
      v295 = v291[3];
      v296 = v349;
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        sub_1000124C8(v293, v292);
        v304 = v294;
        v305 = v295;
        goto LABEL_236;
      }

      v297 = *v296;
      v298 = v296[1];
      v299 = v296[2];
      v300 = v296[3];
      if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v293, v292, *v296, v298))
      {
        v301 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v294, v295, v299, v300);
        sub_1000124C8(v297, v298);
        sub_1000124C8(v299, v300);
        sub_1000124C8(v293, v292);
        sub_1000124C8(v294, v295);
        if (v301)
        {
          v164 = v350;
          goto LABEL_270;
        }
      }

      else
      {
        sub_1000124C8(v297, v298);
        sub_1000124C8(v299, v300);
        sub_1000124C8(v293, v292);
        sub_1000124C8(v294, v295);
      }

      v164 = v350;
      goto LABEL_274;
    case 0x27u:
      v57 = v350;
      v269 = v343;
      sub_1002774DC(v350, v343, type metadata accessor for NANAttribute);
      v270 = v269[1];
      v351 = *v269;
      v352[0] = v270;
      *(v352 + 10) = *(v269 + 26);
      v271 = v349;
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        v272 = v271[1];
        v357 = *v271;
        v358[0] = v272;
        *(v358 + 10) = *(v271 + 26);
        v71 = _s7CoreP2P12NANAttributeO20PairingBootstrappingV23__derived_struct_equalsySbAE_AEtFZ_0(&v351, &v357);
        sub_1001440B0(&v357);
        sub_1001440B0(&v351);
        goto LABEL_213;
      }

      sub_1001440B0(&v351);
      goto LABEL_237;
    case 0x28u:
      v57 = v350;
      v111 = v347;
      sub_1002774DC(v350, v347, type metadata accessor for NANAttribute);
      v112 = v349;
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        v113 = v310;
        sub_100262DC8(v112, v310, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v71 = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV23__derived_struct_equalsySbAE_AEtFZ_0(v111, v113);
        sub_100277544(v113, type metadata accessor for NANAttribute.CustomDeviceInformation);
        sub_100277544(v111, type metadata accessor for NANAttribute.CustomDeviceInformation);
        goto LABEL_213;
      }

      sub_100277544(v111, type metadata accessor for NANAttribute.CustomDeviceInformation);
      goto LABEL_237;
    case 0x29u:
      v57 = v350;
      v183 = v345;
      sub_1002774DC(v350, v345, type metadata accessor for NANAttribute);
      v184 = *(v183 + 8);
      v185 = *(v183 + 16);
      v186 = v349;
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        v304 = v184;
        v305 = v185;
        goto LABEL_236;
      }

      v187 = *(v183 + 2);
      v188 = *v183;
      v189 = *v186;
      v190 = *(v186 + 2);
      v191 = *(v186 + 1);
      v192 = *(v186 + 2);
      v348 = v191;
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v193 = swift_allocObject();
      v349 = xmmword_100480F30;
      *(v193 + 16) = xmmword_100480F30;
      *(v193 + 32) = v188;
      *(v193 + 34) = v187;
      v194 = sub_10002D874(v193);
      v196 = v195;

      v197 = swift_allocObject();
      *(v197 + 16) = v349;
      *(v197 + 32) = v189;
      *(v197 + 34) = v190;
      v198 = sub_10002D874(v197);
      v200 = v199;

      v201 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v194, v196, v198, v200);
      sub_1000124C8(v198, v200);
      sub_1000124C8(v194, v196);
      if (!v201)
      {
        sub_1000124C8(v348, v192);
        sub_1000124C8(v184, v185);
LABEL_246:
        v164 = v350;
        goto LABEL_274;
      }

      v202 = v192;
      v203 = v348;
      v204 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v184, v185, v348, v202);
      sub_1000124C8(v203, v202);
      sub_1000124C8(v184, v185);
      v164 = v350;
      if (!v204)
      {
        goto LABEL_274;
      }

      goto LABEL_270;
    case 0x2Au:
      v57 = v350;
      v277 = v346;
      sub_1002774DC(v350, v346, type metadata accessor for NANAttribute);
      v278 = *(v277 + 1);
      v120 = *(v277 + 2);
      v279 = v349;
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        v304 = v278;
LABEL_233:
        v305 = v120;
LABEL_236:
        sub_1000124C8(v304, v305);
LABEL_237:
        sub_100016290(v57, &qword_100593570, &qword_1004AB9F0);
        goto LABEL_275;
      }

      v280 = *v277;
      v282 = *(v279 + 1);
      v281 = *(v279 + 2);
      if (byte_1004ABDA2[v280] != byte_1004ABDA2[*v279])
      {
        sub_1000124C8(*(v279 + 1), *(v279 + 2));
        v306 = v278;
LABEL_250:
        sub_1000124C8(v306, v120);
        goto LABEL_273;
      }

      v71 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v278, v120, *(v279 + 1), *(v279 + 2));
      sub_1000124C8(v282, v281);
      sub_1000124C8(v278, v120);
LABEL_213:
      sub_100277544(v57, type metadata accessor for NANAttribute);
      return v71 & 1;
    default:
      v57 = v350;
      sub_1002774DC(v350, v52, type metadata accessor for NANAttribute);
      v58 = v349;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_237;
      }

      v59 = v52[1];
      v60 = *v52;
LABEL_37:
      v107 = *v58;
      v108 = v58[1];
LABEL_104:
      v110 = v60 == v107 && v59 == v108;
LABEL_107:
      v71 = v110;
      goto LABEL_213;
  }
}

BOOL _s7CoreP2P12NANAttributeO23CustomDeviceInformationV0D10AttributesV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v112 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v110 = &v103 - v7;
  v111 = sub_10005DC58(&qword_100593578, &unk_1004AB9F8);
  __chkstk_darwin();
  v9 = &v103 - v8;
  v10 = type metadata accessor for UUID();
  v117 = *(v10 - 8);
  v118 = v10;
  __chkstk_darwin();
  v113 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v114 = &v103 - v12;
  v115 = sub_10005DC58(&qword_10058FF00, &qword_1004939D0);
  __chkstk_darwin();
  v116 = &v103 - v13;
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v19 = &v103 - v18;
  sub_10005DC58(&qword_100593580, &qword_1004ABA08);
  __chkstk_darwin();
  v22 = &v103 - v21;
  if (*a1 != *a2)
  {
    return 0;
  }

  v23 = a2[2];
  if (a1[2])
  {
    if (!a2[2])
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v104 = v6;
  v105 = v4;
  v106 = v9;
  v24 = v20;
  v25 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v26 = *(v25 + 24);
  v27 = *(v24 + 48);
  v107 = v25;
  v108 = a1;
  sub_100012400(&a1[v26], v22, &unk_100595C40, &qword_100499070);
  v109 = a2;
  sub_100012400(&a2[v26], &v22[v27], &unk_100595C40, &qword_100499070);
  v28 = *(v15 + 48);
  if (v28(v22, 1, v14) == 1)
  {
    if (v28(&v22[v27], 1, v14) == 1)
    {
      sub_100016290(v22, &unk_100595C40, &qword_100499070);
      goto LABEL_15;
    }

LABEL_13:
    sub_100016290(v22, &qword_100593580, &qword_1004ABA08);
    return 0;
  }

  sub_100012400(v22, v19, &unk_100595C40, &qword_100499070);
  if (v28(&v22[v27], 1, v14) == 1)
  {
    (*(v15 + 8))(v19, v14);
    goto LABEL_13;
  }

  (*(v15 + 32))(v17, &v22[v27], v14);
  v29 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v31 = v30;
  v32 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v34 = v33;
  v35 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v29, v31, v32, v33);
  sub_1000124C8(v32, v34);
  sub_1000124C8(v29, v31);
  v36 = *(v15 + 8);
  v36(v17, v14);
  v36(v19, v14);
  sub_100016290(v22, &unk_100595C40, &qword_100499070);
  if (!v35)
  {
    return 0;
  }

LABEL_15:
  v38 = v107;
  v37 = v108;
  v39 = v107[7];
  v41 = *&v108[v39];
  v40 = *&v108[v39 + 8];
  v42 = v109;
  v43 = &v109[v39];
  v45 = *v43;
  v44 = v43[1];
  if (v40 >> 60 == 15)
  {
    if (v44 >> 60 != 15)
    {
      goto LABEL_29;
    }

    sub_10005D67C(v41, v40);
    sub_10005D67C(v45, v44);
    sub_100017554(v41, v40);
  }

  else
  {
    if (v44 >> 60 == 15)
    {
      goto LABEL_29;
    }

    sub_10005D67C(v41, v40);
    sub_10005D67C(v45, v44);
    v46 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v41, v40, v45, v44);
    sub_100017554(v45, v44);
    sub_100017554(v41, v40);
    if (!v46)
    {
      return 0;
    }
  }

  v47 = v38[8];
  v41 = *&v37[v47];
  v40 = *&v37[v47 + 8];
  v48 = &v42[v47];
  v45 = *v48;
  v44 = v48[1];
  if (v40 >> 60 != 15)
  {
    if (v44 >> 60 == 15)
    {
      goto LABEL_29;
    }

    sub_10005D67C(v41, v40);
    sub_10005D67C(v45, v44);
    v49 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v41, v40, v45, v44);
    sub_100017554(v45, v44);
    sub_100017554(v41, v40);
    if (v49)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v44 >> 60 != 15)
  {
    goto LABEL_29;
  }

  sub_10005D67C(v41, v40);
  sub_10005D67C(v45, v44);
  sub_100017554(v41, v40);
LABEL_25:
  v50 = v38[9];
  v41 = *&v37[v50];
  v40 = *&v37[v50 + 8];
  v51 = &v42[v50];
  v45 = *v51;
  v44 = v51[1];
  if (v40 >> 60 == 15)
  {
    if (v44 >> 60 == 15)
    {
      sub_10005D67C(v41, v40);
      sub_10005D67C(v45, v44);
      sub_100017554(v41, v40);
      goto LABEL_34;
    }

LABEL_29:
    sub_10005D67C(v41, v40);
    sub_10005D67C(v45, v44);
    sub_100017554(v41, v40);
    v52 = v45;
    v53 = v44;
LABEL_30:
    sub_100017554(v52, v53);
    return 0;
  }

  if (v44 >> 60 == 15)
  {
    goto LABEL_29;
  }

  sub_10005D67C(v41, v40);
  sub_10005D67C(v45, v44);
  v55 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v41, v40, v45, v44);
  sub_100017554(v45, v44);
  sub_100017554(v41, v40);
  if (!v55)
  {
    return 0;
  }

LABEL_34:
  v56 = v38[10];
  v57 = v116;
  v58 = *(v115 + 48);
  sub_100012400(&v37[v56], v116, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(&v42[v56], v57 + v58, &qword_10058F4D0, &qword_100491AB0);
  v60 = v117;
  v59 = v118;
  v61 = *(v117 + 48);
  if (v61(v57, 1, v118) == 1)
  {
    if (v61(v57 + v58, 1, v59) == 1)
    {
      sub_100016290(v57, &qword_10058F4D0, &qword_100491AB0);
      goto LABEL_41;
    }

LABEL_39:
    sub_100016290(v57, &qword_10058FF00, &qword_1004939D0);
    return 0;
  }

  v63 = v114;
  sub_100012400(v57, v114, &qword_10058F4D0, &qword_100491AB0);
  if (v61(v57 + v58, 1, v59) == 1)
  {
    (*(v60 + 8))(v63, v59);
    goto LABEL_39;
  }

  v64 = v57 + v58;
  v65 = v113;
  (*(v60 + 32))(v113, v64, v59);
  sub_10027784C(&qword_100597540, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v60 + 8);
  v67(v65, v59);
  v67(v63, v59);
  sub_100016290(v57, &qword_10058F4D0, &qword_100491AB0);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  if ((sub_1000BE660(*&v37[v38[11]], *&v42[v38[11]], v62) & 1) == 0)
  {
    return 0;
  }

  v68 = v38[12];
  v69 = *(v111 + 48);
  v70 = v106;
  sub_100012400(&v37[v68], v106, &unk_100596870, &unk_1004B0F60);
  v71 = &v42[v68];
  v72 = v70;
  sub_100012400(v71, v70 + v69, &unk_100596870, &unk_1004B0F60);
  v73 = *(v112 + 48);
  v74 = v105;
  if (v73(v70, 1, v105) == 1)
  {
    if (v73(v70 + v69, 1, v74) == 1)
    {
      sub_100016290(v70, &unk_100596870, &unk_1004B0F60);
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  v78 = v110;
  sub_100012400(v70, v110, &unk_100596870, &unk_1004B0F60);
  if (v73(v70 + v69, 1, v74) == 1)
  {
    sub_100277544(v78, type metadata accessor for NANInternetSharingStatistics.Requester);
LABEL_51:
    v79 = &qword_100593578;
    v80 = &unk_1004AB9F8;
LABEL_52:
    sub_100016290(v72, v79, v80);
    return 0;
  }

  v81 = v104;
  sub_100262DC8(v72 + v69, v104, type metadata accessor for NANInternetSharingStatistics.Requester);
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    sub_100277544(v81, type metadata accessor for NANInternetSharingStatistics.Requester);
    sub_100277544(v78, type metadata accessor for NANInternetSharingStatistics.Requester);
    v79 = &unk_100596870;
    v80 = &unk_1004B0F60;
    goto LABEL_52;
  }

  v82 = *(v74 + 20);
  v83 = *(v78 + v82);
  v84 = *(v81 + v82);
  sub_100277544(v81, type metadata accessor for NANInternetSharingStatistics.Requester);
  sub_100277544(v78, type metadata accessor for NANInternetSharingStatistics.Requester);
  sub_100016290(v72, &unk_100596870, &unk_1004B0F60);
  if (v83 != v84)
  {
    return 0;
  }

LABEL_45:
  v75 = v38[13];
  v76 = *&v37[v75];
  v77 = *&v42[v75];
  if (v76)
  {
    if (!v77 || (_s7CoreP2P25NANMulticastLinkConditionV23__derived_struct_equalsySbAC_ACtFZ_0(v76, v77) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v85 = v38[14];
  v86 = &v37[v85];
  v87 = *&v37[v85];
  v88 = &v42[v85];
  v89 = *v88;
  if (!v87)
  {
    if (v89)
    {
      return 0;
    }

LABEL_65:
    v95 = v107[15];
    v96 = &v108[v95];
    v98 = *&v108[v95];
    v97 = *&v108[v95 + 8];
    v99 = &v109[v95];
    v101 = *v99;
    v100 = v99[1];
    if (v97 >> 60 == 15)
    {
      if (v100 >> 60 == 15)
      {
        sub_10005D67C(*v96, *(v96 + 1));
        sub_10005D67C(v101, v100);
        sub_100017554(v98, v97);
        return 1;
      }
    }

    else if (v100 >> 60 != 15)
    {
      sub_10005D67C(*v96, *(v96 + 1));
      sub_10005D67C(v101, v100);
      v102 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v98, v97, v101, v100);
      sub_100017554(v101, v100);
      sub_100017554(v98, v97);
      return v102;
    }

    sub_10005D67C(*v96, *(v96 + 1));
    sub_10005D67C(v101, v100);
    sub_100017554(v98, v97);
    v52 = v101;
    v53 = v100;
    goto LABEL_30;
  }

  if (!v89)
  {
    return 0;
  }

  v91 = *(v86 + 1);
  v90 = *(v86 + 2);
  v93 = v88[1];
  v92 = v88[2];
  v94 = sub_1000CE004(v87, v89);
  result = 0;
  if ((v94 & 1) != 0 && v91 == v93 && v90 == v92)
  {
    goto LABEL_65;
  }

  return result;
}

uint64_t _s7CoreP2P12NANAttributeO13AttributeTypeO8rawValueAESgs5UInt8V_tcfC_0(char a1)
{
  if ((a1 + 35) > 0x4Fu)
  {
    return 46;
  }

  else
  {
    return asc_1004ABDD0[(a1 + 35)];
  }
}

uint64_t _s7CoreP2P12NANAttributeO23CustomDeviceInformationV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10026B094(void *a1)
{
  v3 = sub_10005DC58(&qword_100593690, &qword_1004ABA80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100278E94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v27 = 0;
  sub_100285A80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v21;
  v27 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v21;
  v17 = v7;
  v18 = v22;
  v20 = v23;
  v8 = v24;
  v9 = v25;
  v10 = v26;
  v27 = 2;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v11 = v21;
  v27 = 3;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v17 | (v19 << 8) | (v18 << 16) | (v20 << 24) | (v16 << 32) | (v15 << 40) | (v14 << 48) | (v11 << 56);
}

uint64_t sub_10026B358(void *a1)
{
  v3 = sub_10005DC58(&qword_100593848, &qword_1004ABB38);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100277BCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v22 = 0;
  sub_100285A80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v16;
  v22 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v16;
  v9 = v17;
  v15 = v18;
  v14 = v19;
  v13 = v20;
  v12 = v21;
  v22 = 2;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 8) | (v9 << 16) | (v15 << 24) | (v14 << 32) | (v13 << 40) | (v12 << 48);
}

uint64_t sub_10026B5D0(void *a1)
{
  v3 = sub_10005DC58(&qword_100593780, &qword_1004ABAD8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_1002785DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v15 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v15 = 1;
  sub_10028607C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v12;
  sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
  v15 = 2;
  sub_1002854B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 32) | (v9 << 40) | (v11 << 48);
}

uint64_t sub_10026B818(void *a1)
{
  v3 = sub_10005DC58(&qword_100593790, &unk_1004ABAE8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100278424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v13 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  sub_1002860D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v12;
  sub_10005DC58(&qword_100592270, &qword_10049F8B0);
  v10[15] = 2;
  sub_100286124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 16);
}

uint64_t sub_10026BA2C(void *a1)
{
  v3 = sub_10005DC58(&qword_100593688, &qword_1004ABA78);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100278EE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v20 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *v19;
  v7 = v19[4];
  v8 = v19[5];
  v20 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v7;
  v17 = v8;
  v9 = v19[0];
  v10 = v19[1];
  v11 = *&v19[2];
  v20 = 2;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v20 = 3;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v18 | (v16 << 32) | (v17 << 40) | (v14 << 48) | (v13 << 56);
}

uint64_t sub_10026BCD8(void *a1)
{
  v3 = sub_10005DC58(&qword_100593670, &qword_1004ABA70);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100278F3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v23 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v23 = 1;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v9;
  v18 = v8;
  v19 = v7;
  v10 = v20;
  v11 = BYTE1(v20);
  v12 = BYTE2(v20);
  v23 = 2;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v23 = 3;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v19 | (v18 << 32) | (v17 << 40) | (v16 << 48) | (v15 << 56);
}

uint64_t sub_10026BF80(void *a1)
{
  v3 = sub_10005DC58(&qword_100593768, &qword_1004ABAD0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100029B34(a1, a1[3]);
  sub_1002787B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v10[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 16);
}

void *sub_10026C128(void *a1)
{
  v3 = sub_10005DC58(&qword_100593898, &qword_1004ABB60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_10027764C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_1005920C0, &unk_10049F800);
    sub_10028687C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002A00(a1);
  }

  return v7;
}

uint64_t sub_10026C2AC(void *a1)
{
  v3 = sub_10005DC58(&qword_100593588, &qword_1004ABA10);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100279C5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v12 = 0;
  sub_1000317F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[0];
  v8 = v11[1];
  v9 = v11[2];
  v12 = 1;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 8) | (v9 << 16);
}

uint64_t sub_10026C49C(void *a1)
{
  v3 = sub_10005DC58(&qword_1005937F8, &qword_1004ABB08);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100277FE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v16 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v13;
  v7 = v14;
  v8 = v15;
  LOBYTE(v13) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v7;
  v11 = v8;
  v16 = 2;
  sub_100286464();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v12 | (v10 << 32) | (v11 << 40);
}

unint64_t sub_10026C6C0(void *a1)
{
  v3 = sub_10005DC58(&qword_1005937D0, &qword_1004ABB00);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100278088();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v18 = 0;
  sub_100285B7C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v17;
  v19 = HIBYTE(v17);
  v18 = 1;
  sub_100286314();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v17;
  v18 = 2;
  sub_1000E5328();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v18 = 3;
  sub_100286368();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v9;
  v10 = v17;
  v18 = 4;
  sub_1002863BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v10;
  v11 = v17;
  LOBYTE(v17) = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 6;
  sub_100286410();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v12 = v19;
  sub_100002A00(a1);
  return v7 | (v8 << 16) | (v15 << 32) | (v14 << 40) | (v11 << 48) | ((v12 & 1) << 8);
}

uint64_t sub_10026CA00(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v14 = sub_10005DC58(a2, a3);
  v7 = *(v14 - 8);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_100029B34(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10 = v7;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  v17 = 0;
  sub_100165E30(&qword_10058ECD0, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
  v11 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v18;
  v16 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v10 + 8))(v9, v11);
  sub_100002A00(a1);
  return v13;
}

uint64_t sub_10026CC64@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005936B8, &qword_1004ABA90);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  sub_100029B34(a1, a1[3]);
  sub_100278BA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002A00(a1);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_100285B7C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = v43;
    v59 = BYTE2(v43);
    LOBYTE(v36) = 1;
    sub_100285BD0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v43;
    v10 = v44;
    LOBYTE(v36) = 2;
    sub_100285C24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v58 = v10;
    v34 = v43;
    v11 = v44;
    LOBYTE(v36) = 3;
    sub_100285C78();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v11;
    v33 = v6;
    v12 = v43;
    v13 = v44;
    LOBYTE(v36) = 4;
    sub_100285CCC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v13;
    v14 = v43;
    v30 = v44;
    LOBYTE(v36) = 5;
    sub_100285D20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v9;
    v15 = v43;
    v28 = v44;
    LOBYTE(v36) = 6;
    sub_100285D74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = a2;
    v16 = v43;
    v27 = v44;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    v60 = 7;
    sub_100165E30(&qword_10058ECD0, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v8, v5);
    v25 = v57;
    LOWORD(v36) = v29;
    LODWORD(v33) = v59;
    BYTE2(v36) = v59;
    v17 = v35;
    *(&v36 + 1) = v35;
    v18 = v58;
    LOWORD(v37) = v58;
    v19 = v34;
    *(&v37 + 1) = v34;
    LOWORD(v38) = v32;
    *(&v38 + 1) = v12;
    LOWORD(v39) = v31;
    *(&v39 + 1) = v14;
    LOWORD(v40) = v30;
    *(&v40 + 1) = v15;
    LOWORD(v41) = v28;
    *(&v41 + 1) = v16;
    LOWORD(v42) = v27;
    *(&v42 + 1) = v57;
    sub_100285DC8(&v36, &v43);
    sub_100002A00(a1);
    LOWORD(v43) = v29;
    BYTE2(v43) = v33;
    v44 = v17;
    v45 = v18;
    v46 = v19;
    v47 = v32;
    v48 = v12;
    v49 = v31;
    v50 = v14;
    v51 = v30;
    v52 = v15;
    v53 = v28;
    v54 = v16;
    v55 = v27;
    v56 = v25;
    result = sub_10027A0CC(&v43);
    v21 = v41;
    v22 = v26;
    v26[4] = v40;
    v22[5] = v21;
    v22[6] = v42;
    v23 = v37;
    *v22 = v36;
    v22[1] = v23;
    v24 = v39;
    v22[2] = v38;
    v22[3] = v24;
  }

  return result;
}

uint64_t sub_10026D374(void *a1)
{
  v3 = sub_10005DC58(&qword_100593888, &qword_1004ABB58);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100029B34(a1, v7);
  sub_1002867A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10005DC58(&qword_10058E398, &qword_100489498);
    v9[7] = 0;
    sub_1002867F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    v9[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002A00(a1);
  return v7;
}

void *sub_10026D54C(void *a1)
{
  v3 = sub_10005DC58(&qword_1005935A8, &qword_1004ABA18);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_100279B60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
    sub_1002854B0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002A00(a1);
  }

  return v7;
}

uint64_t sub_10026D6D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = sub_10005DC58(&qword_100593850, &qword_1004ABB40);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v27 - v9;
  sub_100029B34(a1, a1[3]);
  sub_100277A98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v38) = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = a2;
  v3.i32[0] = v40;
  v11 = v41;
  v12 = v42;
  LOBYTE(v38) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = v11;
  v4.i32[0] = v40;
  v13 = v41;
  v14 = v42;
  LOBYTE(v38) = 2;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v40;
  v35 = v14;
  v32 = BYTE2(v40);
  v33 = BYTE1(v40);
  v15 = v44;
  v36 = *&v43[2];
  v49 = 3;
  sub_100285B28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = vmovl_u8(v3);
  v30 = vmovl_u8(v4);
  (*(v8 + 8))(v10, v7);
  v28 = v50;
  LOBYTE(v38) = v31.i8[0];
  LOBYTE(v16) = v31.i8[4];
  BYTE1(v16) = v31.i8[6];
  v17 = v13;
  v29 = v13;
  LOBYTE(v13) = v48;
  BYTE2(v16) = v48;
  v18 = v15;
  v27 = v15;
  LOBYTE(v15) = v12;
  BYTE3(v16) = v12;
  BYTE4(v16) = v30.i8[0];
  BYTE5(v16) = v30.i8[2];
  BYTE6(v16) = v30.i8[4];
  BYTE1(v38) = v31.i8[2];
  HIBYTE(v16) = v30.i8[6];
  *(&v38 + 2) = v16;
  BYTE10(v38) = v17;
  v19 = v34;
  v20 = v35;
  BYTE11(v38) = v35;
  v39[0] = v34;
  v21 = v32;
  v22 = v33;
  v39[1] = v33;
  v39[2] = v32;
  v23 = v36;
  *&v39[8] = v36;
  *&v39[16] = v18;
  v39[24] = v50;
  sub_100277AEC(&v38, &v40);
  sub_100002A00(a1);
  v40 = vuzp1_s8(*v31.i8, *v31.i8).u32[0];
  v41 = v13;
  v42 = v15;
  *v43 = vuzp1_s8(*v30.i8, *v30.i8).u32[0];
  v43[4] = v29;
  v43[5] = v20;
  LOBYTE(v44) = v19;
  BYTE1(v44) = v22;
  BYTE2(v44) = v21;
  v45 = v23;
  v46 = v27;
  v47 = v28;
  result = sub_10027A24C(&v40);
  v25 = *v39;
  v26 = v37;
  *v37 = v38;
  v26[1] = v25;
  *(v26 + 25) = *&v39[9];
  return result;
}

uint64_t sub_10026DAD0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v21 = a6;
  v22 = sub_10005DC58(a2, a3);
  v9 = *(v22 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_100029B34(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_100002A00(a1);
  }

  v12 = v21;
  v13 = v22;
  LOBYTE(v23) = 0;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  sub_100039F68();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v23;
  v14 = v24;
  v26 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v11, v13);
  v15 = v23;
  v16 = v24;
  v17 = v20;
  sub_10000AB0C(v20, v14);
  sub_10000AB0C(v15, v16);
  sub_100002A00(a1);
  sub_1000124C8(v17, v14);
  result = sub_1000124C8(v15, v16);
  *v12 = v25;
  *(v12 + 8) = v17;
  *(v12 + 16) = v14;
  *(v12 + 24) = v15;
  *(v12 + 32) = v16;
  return result;
}

uint64_t sub_10026DD40(void *a1)
{
  v3 = sub_10005DC58(&qword_100593608, &qword_1004ABA48);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100279580();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v10[13] = 0;
  sub_1002856D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11;
  v10[12] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 32);
}

uint64_t sub_10026DEFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005935D0, &qword_1004ABA28);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100279A10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v15) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[15] = 1;
  sub_1002855DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *&v21[39] = v17;
  *&v21[55] = v18;
  *&v21[71] = v19;
  *&v21[87] = v20;
  *&v21[7] = v15;
  *&v21[23] = v16;
  result = sub_100002A00(a1);
  v11 = *&v21[32];
  *(a2 + 49) = *&v21[48];
  v12 = *&v21[80];
  *(a2 + 65) = *&v21[64];
  *(a2 + 81) = v12;
  v13 = *&v21[16];
  *(a2 + 1) = *v21;
  *(a2 + 17) = v13;
  *a2 = v9;
  *(a2 + 96) = *&v21[95];
  *(a2 + 33) = v11;
  return result;
}

uint64_t sub_10026E128(void *a1)
{
  v3 = sub_10005DC58(&qword_100593650, &qword_1004ABA60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100279110();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v10[14] = 0;
  sub_100285930();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10[15];
  v10[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 8);
}

uint64_t sub_10026E2E4(void *a1)
{
  v2 = sub_10005DC58(&qword_100593630, &qword_1004ABA58);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_100029B34(a1, a1[3]);
  sub_1002791B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_100285804();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_10005DC58(&qword_100592460, &qword_10049F958);
  v8[15] = 1;
  sub_100285858();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

uint64_t sub_10026E4D0(void *a1)
{
  v2 = sub_10005DC58(&qword_100593810, &qword_1004ABB18);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_100029B34(a1, a1[3]);
  sub_100277E60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_1000E5184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_10005DC58(&qword_100592188, &qword_10049F850);
  v8[15] = 1;
  sub_1002864B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

unint64_t sub_10026E6BC(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v7, v7[3]);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v6 = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(v4);
    if (v6 == 6)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    sub_100002A00(v7);
    sub_100002A00(a1);
  }

  return v3;
}

uint64_t sub_10026E78C(void *a1)
{
  v3 = sub_10005DC58(&qword_100593828, &qword_1004ABB20);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100277E0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v8 = v12;
  v9 = v11[4];
  sub_100002A00(a1);
  if (v8)
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  return v9 | v10;
}

uint64_t sub_10026E918(void *a1)
{
  v2 = sub_10005DC58(&qword_1005935C0, &qword_1004ABA20);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - v4;
  sub_100029B34(a1, a1[3]);
  sub_100279AB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LOBYTE(v9) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v9) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 2;
  sub_100285588();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = 3;
  sub_100285408();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v9;
  sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
  v11 = 4;
  sub_1002854B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

void *sub_10026EBAC(void *a1)
{
  v3 = sub_10005DC58(&qword_1005937C8, &qword_1004ABAF8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_100278280();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058ECD0, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002A00(a1);
  }

  return v7;
}

uint64_t sub_10026ED54(void *a1)
{
  v3 = sub_10005DC58(&qword_1005936A0, &qword_1004ABA88);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100285AD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v21 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *v20;
  v7 = v20[4];
  v8 = v20[5];
  v21 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v7;
  v18 = v8;
  v9 = v20[0];
  v10 = v20[1];
  v11 = *&v20[2];
  v21 = 2;
  sub_100285B28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v10;
  v15 = v9;
  v16 = v11;
  v21 = 3;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[1] = v20[2];
  v21 = 4;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v19 | (v17 << 32) | (v18 << 40) | (v15 << 48) | (v14 << 56);
}

void *sub_10026F04C(void *a1)
{
  v3 = sub_10005DC58(&qword_100593618, &qword_1004ABA50);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_100279338();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_100592488, &qword_10049F968);
    sub_10028572C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100002A00(a1);
  }

  return v7;
}

uint64_t sub_10026F1D0(void *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_100593868, &qword_1004ABB48);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_100029B34(a1, a1[3]);
  sub_10027796C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v11[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[14] = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100002A00(a1);
    return v8 | (v9 << 16);
  }

  return v2;
}

unint64_t sub_10026F378(void *a1)
{
  v3 = sub_10005DC58(&qword_100593668, &qword_1004ABA68);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100278F90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v32 = 0;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v26;
  v18 = v27;
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v10 = v31;
  v24 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v23 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 4;
  v12[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v20 | (v19 << 32) | (v18 << 40) | (v17 << 48) | (v16 << 56);
}

uint64_t sub_10026F628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_10005DC58(&qword_100593840, &qword_1004ABB30);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19.i8[-v9];
  sub_100029B34(a1, a1[3]);
  sub_100277C74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v29 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3.i32[0] = v23;
  v28 = v24;
  v11 = v25;
  v29 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v28;
  v4.i32[0] = v23;
  v21 = v25;
  v22 = v24;
  v29 = 2;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v10, v7);
  v19 = vmovl_u8(v3);
  v20 = vmovl_u8(v4);
  v13 = v23;
  v14 = BYTE2(v23);
  v15 = v26;
  v16 = v27;
  result = sub_100002A00(a1);
  *a2 = vuzp1_s8(*v19.i8, *v19.i8).u32[0];
  *(a2 + 4) = v12;
  *(a2 + 5) = v11;
  *(a2 + 6) = vuzp1_s8(*v20.i8, *v20.i8).u32[0];
  v18 = v21;
  *(a2 + 10) = v22;
  *(a2 + 11) = v18;
  *(a2 + 16) = v13;
  *(a2 + 18) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_10026F8B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100593838, &qword_1004ABB28);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - v7;
  sub_100029B34(a1, a1[3]);
  sub_100277D00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v34) = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v38;
  v33 = v37;
  v49 = v39;
  v31 = v40;
  v9 = v41;
  v10 = v42;
  LOBYTE(v34) = 1;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v10;
  v27 = v9;
  v29 = v38;
  v30 = v37;
  v28 = v39;
  v12 = v43;
  v11 = v44;
  v50 = 2;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v24 = *(&v48 + 1);
  v25 = v48;
  v13 = v11;
  v23 = v11;
  LOBYTE(v11) = v33;
  LOBYTE(v34) = v33;
  v14 = v12;
  v22 = v12;
  v15 = v31;
  LOBYTE(v12) = v32;
  BYTE1(v34) = v32;
  v16 = v49;
  BYTE2(v34) = v49;
  BYTE3(v34) = v31;
  v18 = v26;
  v17 = v27;
  BYTE4(v34) = v27;
  BYTE5(v34) = v26;
  BYTE8(v34) = v30;
  BYTE9(v34) = v29;
  BYTE10(v34) = v28;
  *&v35 = v14;
  *(&v35 + 1) = v13;
  v36 = v48;
  sub_1002865E4(&v34, &v37);
  sub_100002A00(a1);
  v37 = v11;
  v38 = v12;
  v39 = v16;
  v40 = v15;
  v41 = v17;
  v42 = v18;
  LOBYTE(v43) = v30;
  BYTE1(v43) = v29;
  BYTE2(v43) = v28;
  v44 = v22;
  v45 = v23;
  v46 = v25;
  v47 = v24;
  result = sub_10027A1BC(&v37);
  v20 = v35;
  *a2 = v34;
  a2[1] = v20;
  a2[2] = v36;
  return result;
}

uint64_t sub_10026FBF8(void *a1)
{
  v2 = sub_10005DC58(&qword_1005938A8, &qword_1004ABB68);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_100029B34(a1, a1[3]);
  sub_1002775A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[7] = 0;
  sub_100286464();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v9;
  v8[6] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v8[5] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100002A00(a1);
  return v6;
}

uint64_t sub_10026FDE0(void *a1)
{
  v3 = sub_10005DC58(&qword_100593808, &qword_1004ABB10);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100277F8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v14 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v14 = 1;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100002A00(a1);
  return v7 | (v8 << 32) | (v9 << 40);
}

uint64_t sub_10026FFCC(uint64_t a1, uint64_t a2, unsigned __int8 a3, const char *a4, ...)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < a3)
  {
    Logger.init(subsystem:category:)();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777728;
      *(v13 + 4) = a3;
      *(v13 + 5) = 2048;
      v14 = *(a1 + 16);

      *(v13 + 7) = v14;

      _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xFu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return a1;
}

uint64_t sub_1002701BC(uint64_t a1, uint64_t a2, unsigned __int8 a3, const char *a4, ...)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < a3)
  {
    Logger.init(subsystem:category:)();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 16777728;
      *(v13 + 4) = a3;
      *(v13 + 5) = 2048;
      v14 = *(a1 + 16);

      *(v13 + 7) = v14;

      _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xFu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return a1;
}

void sub_10027039C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v91 = a2;
  v94 = type metadata accessor for Logger();
  v3 = *(v94 - 8);
  __chkstk_darwin();
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v71 - v6;
  __chkstk_darwin();
  v9 = &v71 - v8;
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v15 = *(a1 + 16);
  if (!v15)
  {
    v81 = 0;

    Logger.init(subsystem:category:)();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Init failed: rawValue byte array is empty", v64, 2u);
    }

    (*(v3 + 8))(v5, v94);
    sub_10000B02C();
    swift_allocError();
    *v65 = 0;
    *(v65 + 8) = 0;
    *(v65 + 16) = 2;
LABEL_77:
    swift_willThrow();

    if (v81)
    {
    }

    return;
  }

  v75 = &v71 - v11;
  v76 = v10;
  v77 = v14;
  v78 = v13;
  v79 = v12;
  v16 = *(a1 + 32);
  v147 = a1 + 32;
  if (v16)
  {
    v17 = 256;
  }

  else
  {
    v17 = (v16 >> 1) & 0xF;
  }

  v80 = v17;

  v146 = 0;
  v19 = *(a1 + 16);
  if (v19 < 2)
  {
    v20 = 0;
    v83 = 0;
    v84 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    goto LABEL_75;
  }

  v72 = v9;
  v81 = v15;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v20 = 0;
  v92 = (v3 + 8);
  v93 = &unk_1004B4EC0;
  v74 = "er";
  v21 = 1;
  *&v18 = 16777728;
  v73 = v18;
  while (2)
  {
    v82 = v20;
LABEL_8:
    v22 = v21;
    while (1)
    {
      if (v22 + 1 >= v19)
      {

        sub_10000B02C();
        swift_allocError();
        *v70 = 0;
        *(v70 + 8) = 0;
        *(v70 + 16) = 2;
        goto LABEL_77;
      }

      v23 = *(v147 + v22 + 1);
      v24 = v22 + 2;
      v21 = v22 + 2 + v23;
      if (__OFADD__(v22 + 2, v23))
      {
        __break(1u);
LABEL_81:
        __break(1u);
        return;
      }

      if (v19 < v21)
      {
        goto LABEL_74;
      }

      v25 = v21 - v24;
      if (v21 < v24)
      {
        goto LABEL_81;
      }

      v26 = *(v147 + v22);
      if (v19 == v25)
      {

        v27 = a1;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
        if (v21 != v24)
        {
          if (v25 >= 1)
          {
            sub_10005DC58(&qword_10058B3C0, &qword_100481920);
            v27 = swift_allocObject();
            v31 = j__malloc_size(v27);
            v27[2] = v25;
            v27[3] = 2 * v31 - 64;
          }

          memcpy(v27 + 4, (v147 + v24), v21 - v24);
        }
      }

      if (v26 <= 191)
      {
        break;
      }

      switch(v26)
      {
        case 192:
          if (v27[2] >= v23)
          {

            HIDWORD(v84) = (v23 << 8) | 0xC0;
            v88 = v27;
            v20 = v82;
          }

          else
          {
            Logger.init(subsystem:category:)();

            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              HIDWORD(v84) = v33;
              v35 = v34;
              *v34 = v73;
              *(v34 + 4) = v23;
              *(v34 + 5) = 2048;
              v36 = v27[2];

              *(v35 + 7) = v36;

              _os_log_impl(&_mh_execute_header, v32, BYTE4(v84), "VHTOperation must be at least %hhu bytes (Size: %ld bytes)", v35, 0xFu);
            }

            else
            {
            }

            v20 = v82;
            (*v92)(v78, v94);

            v88 = 0;
            HIDWORD(v84) = 0;
          }

LABEL_60:
          v19 = *(a1 + 16);
          if (v21 < v19)
          {
            goto LABEL_8;
          }

          goto LABEL_75;
        case 221:
          if (v27[2] >= v23)
          {

            LODWORD(v85) = (v23 << 8) | 0xDD;
            v87 = v27;
            v20 = v82;
          }

          else
          {
            Logger.init(subsystem:category:)();

            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              LODWORD(v85) = v53;
              v55 = v54;
              *v54 = v73;
              *(v54 + 4) = v23;
              *(v54 + 5) = 2048;
              v56 = v27[2];

              *(v55 + 7) = v56;

              _os_log_impl(&_mh_execute_header, v52, v85, "VendorSpecific must be at least %hhu bytes (Size: %ld bytes)", v55, 0xFu);
            }

            else
            {
            }

            v20 = v82;
            (*v92)(v79, v94);

            v87 = 0;
            LODWORD(v85) = 0;
          }

          goto LABEL_60;
        case 255:
          if (v27[2] >= v23)
          {

            HIDWORD(v85) = (v23 << 8) | 0xFF;
            v86 = v27;
            v20 = v82;
          }

          else
          {
            Logger.init(subsystem:category:)();

            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              HIDWORD(v85) = v38;
              v40 = v39;
              *v39 = v73;
              *(v39 + 4) = v23;
              *(v39 + 5) = 2048;
              v41 = v27[2];

              *(v40 + 7) = v41;

              _os_log_impl(&_mh_execute_header, v37, BYTE4(v85), "ElementIDExtension must be at least %hhu bytes (Size: %ld bytes)", v40, 0xFu);
            }

            else
            {
            }

            v20 = v82;
            (*v92)(v72, v94);

            v86 = 0;
            HIDWORD(v85) = 0;
          }

          goto LABEL_60;
      }

LABEL_24:

      Logger.init(subsystem:category:)();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 16777472;
        v30[4] = v26;
        _os_log_impl(&_mh_execute_header, v28, v29, "Parsing ElementContainer. Unknown type: %hhu", v30, 5u);
      }

      (*v92)(v7, v94);
      v19 = *(a1 + 16);
      v22 = v21;
      if (v21 >= v19)
      {
LABEL_74:
        v20 = v82;
        goto LABEL_75;
      }
    }

    if (v26 != 45)
    {
      if (v26 == 61)
      {
        if (v27[2] >= v23)
        {

          HIDWORD(v83) = (v23 << 8) | 0x3D;
          v90 = v27;
          v20 = v82;
        }

        else
        {
          Logger.init(subsystem:category:)();

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            HIDWORD(v83) = v43;
            v45 = v44;
            *v44 = v73;
            *(v44 + 4) = v23;
            *(v44 + 5) = 2048;
            v46 = v27[2];

            *(v45 + 7) = v46;

            _os_log_impl(&_mh_execute_header, v42, BYTE4(v83), "HTInformation must be at least %hhu bytes. (Size: %ld bytes)", v45, 0xFu);
          }

          else
          {
          }

          v20 = v82;
          (*v92)(v76, v94);

          v90 = 0;
          HIDWORD(v83) = 0;
        }

        goto LABEL_60;
      }

      if (v26 == 191)
      {
        if (v27[2] >= v23)
        {

          LODWORD(v84) = (v23 << 8) | 0xBF;
          v89 = v27;
          v20 = v82;
        }

        else
        {
          Logger.init(subsystem:category:)();

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            LODWORD(v84) = v48;
            v50 = v49;
            *v49 = v73;
            *(v49 + 4) = v23;
            *(v49 + 5) = 2048;
            v51 = v27[2];

            *(v50 + 7) = v51;

            _os_log_impl(&_mh_execute_header, v47, v84, "VHTCapabilities must be at least %hhu bytes (Size: %ld bytes)", v50, 0xFu);
          }

          else
          {
          }

          v20 = v82;
          (*v92)(v77, v94);

          v89 = 0;
          LODWORD(v84) = 0;
        }

        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (v27[2] >= v23)
    {

      LODWORD(v83) = (v23 << 8) | 0x2D;
      v20 = v27;
    }

    else
    {
      Logger.init(subsystem:category:)();

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        LODWORD(v83) = v58;
        v60 = v59;
        *v59 = v73;
        *(v59 + 4) = v23;
        *(v59 + 5) = 2048;
        v61 = v27[2];

        *(v60 + 7) = v61;

        _os_log_impl(&_mh_execute_header, v57, v83, "HTCapabilities must be at least %hhu bytes. (Size: %ld bytes)", v60, 0xFu);
      }

      else
      {
      }

      (*v92)(v75, v94);

      v20 = 0;
      LODWORD(v83) = 0;
    }

    v19 = *(a1 + 16);
    if (v21 < v19)
    {
      continue;
    }

    break;
  }

LABEL_75:

  *(&v96 + 3) = v144;
  BYTE7(v96) = v145;
  *(&v97 + 2) = v142;
  WORD3(v97) = v143;
  *(&v98 + 2) = v140;
  WORD3(v98) = v141;
  *(&v99 + 2) = v138;
  WORD3(v99) = v139;
  *(&v100 + 2) = v136;
  WORD3(v100) = v137;
  *(&v101 + 2) = v134;
  WORD3(v101) = v135;
  WORD3(v102) = v133;
  *(&v102 + 2) = v132;
  LOWORD(v96) = v80;
  v103 = v80;
  BYTE2(v96) = v146;
  v104 = v146;
  v106 = v145;
  v105 = v144;
  *(&v96 + 1) = v20;
  LOWORD(v97) = v83;
  *(&v97 + 1) = v90;
  LOWORD(v98) = WORD2(v83);
  *(&v98 + 1) = v89;
  LOWORD(v99) = v84;
  *(&v99 + 1) = v88;
  LOWORD(v100) = WORD2(v84);
  *(&v100 + 1) = v87;
  LOWORD(v101) = v85;
  *(&v101 + 1) = v86;
  LOWORD(v102) = WORD2(v85);
  *(&v102 + 1) = a1;
  v107 = v20;
  v108 = v83;
  v109 = v142;
  v110 = v143;
  v111 = v90;
  v112 = WORD2(v83);
  v114 = v141;
  v113 = v140;
  v115 = v89;
  v116 = v84;
  v118 = v139;
  v117 = v138;
  v119 = v88;
  v120 = WORD2(v84);
  v122 = v137;
  v121 = v136;
  v123 = v87;
  v124 = v85;
  v126 = v135;
  v125 = v134;
  v127 = v86;
  v128 = WORD2(v85);
  v130 = v133;
  v129 = v132;
  v131 = a1;
  sub_100285DC8(&v96, &v95);
  sub_10027A0CC(&v103);
  v66 = v101;
  v67 = v91;
  v91[4] = v100;
  v67[5] = v66;
  v67[6] = v102;
  v68 = v97;
  *v67 = v96;
  v67[1] = v68;
  v69 = v99;
  v67[2] = v98;
  v67[3] = v69;
}

uint64_t sub_1002712F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = 1;
  v59 = 1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_1001842D0(4, 0, 0);
  }

  else
  {
    sub_100031694(v55, v56);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v40 = a2;
    sub_100031694(v55, v56);
    sub_10005DC58(&qword_100592220, &unk_10049F890);
    sub_10000CADC(&qword_1005937B0, &qword_100592220, &unk_10049F890, aA_5);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v57 = v43;
    sub_100031694(v55, v56);
    sub_100285408();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_100031694(v55, v56);
    sub_10003804C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v36 = v43;
    v37 = v43;
    v38 = BYTE1(v43);
    v39 = v43;
    sub_100031694(v55, v56);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v32 = BYTE5(v43);
    v33 = BYTE4(v43);
    v34 = BYTE2(v43);
    v35 = BYTE3(v43);
    sub_100031694(v55, v56);
    sub_100286288();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    if ((v43 & 8) != 0)
    {
      sub_100031694(v55, v56);
      v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v58 = 0;
    }

    else
    {
      v6 = 0;
    }

    if ((v43 & 0x10) != 0)
    {
      sub_100031694(v55, v56);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v7 = v43 | (BYTE4(v43) << 32) | (BYTE5(v43) << 40);
      v59 = 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = v43;
    v9 = BYTE3(v43);
    if ((v43 & 0x20) != 0)
    {
      sub_100031694(v55, v56);
      sub_100039F68();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v27 = v7;
      v29 = v6;
      v30 = v43;
      v31 = v43;
      v15 = *v41;
      v16 = sub_100033AA8(_swiftEmptyArrayStorage);
      v17 = type metadata accessor for BinaryDecoder();
      v18 = swift_allocObject();
      v19 = 0;
      *(v18 + 40) = &_swiftEmptyDictionarySingleton;
      *(v18 + 16) = v15;
      v20 = *(&v15 + 1) >> 62;
      if ((*(&v15 + 1) >> 62) > 1)
      {
        if (v20 == 2)
        {
          v19 = *(v15 + 16);
        }
      }

      else if (v20)
      {
        v19 = v15;
      }

      *(v18 + 32) = v19;
      swift_beginAccess();
      *(v18 + 40) = v16;
      v52 = v17;
      v53 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      v43 = v18;
      v21 = NANServiceInfo.init(from:)(&v43);
      v28 = v22;
      v24 = v23;
      v26 = v21;
      sub_1001842D0(4, 0, 0);
      v10 = v57;
      v11 = v38;
      v8 = v39;
      v12 = v34;
      v9 = v35;
      v25 = v24;
    }

    else
    {
      v27 = v7;
      v28 = 0;
      v29 = v6;
      v30 = v43;
      v31 = v43;
      v25 = 0;
      v26 = 4;
      v10 = v57;
      v11 = BYTE1(v43);
      v12 = BYTE2(v43);
    }

    sub_100002A00(v55);
    v41[0] = v10;
    v41[1] = v36;
    v41[2] = v37;
    v41[3] = v8;
    v41[4] = v11;
    v41[5] = v12;
    v41[6] = v9;
    v41[7] = v33;
    v41[8] = v32;
    v41[9] = v31;
    v41[10] = v30;
    v41[11] = v29;
    v57 = v58;
    v41[12] = v58;
    *&v41[17] = WORD2(v27);
    *&v41[13] = v27;
    v13 = v59;
    v41[19] = v59;
    *&v41[24] = v26;
    *&v42 = v28;
    *(&v42 + 1) = v25;
    sub_1002862DC(v41, &v43);
    sub_100002A00(a1);
    LOBYTE(v43) = v10;
    BYTE1(v43) = v36;
    BYTE2(v43) = v37;
    BYTE3(v43) = v39;
    BYTE4(v43) = v38;
    BYTE5(v43) = v34;
    BYTE6(v43) = v35;
    HIBYTE(v43) = v33;
    v44 = v32;
    v45 = v31;
    v46 = v30;
    v47 = v29;
    v48 = v57;
    v50 = WORD2(v27);
    v49 = v27;
    v51 = v13;
    v52 = v26;
    v53 = v28;
    v54 = v25;
    result = sub_10027A15C(&v43);
    v14 = *&v41[16];
    *v40 = *v41;
    v40[1] = v14;
    v40[2] = v42;
  }

  return result;
}

uint64_t sub_100271900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_1001842D0(4, 0, 0);
  }

  sub_100031694(v34, v35);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v34, v35);
  sub_10028661C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v29 & 0x100) != 0)
  {
    sub_100031694(v34, v35);
    sub_100286670();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v6 = v29;
    v36 = 0;
    if ((v29 & 0x200) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100031694(v34, v35);
    v20 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v21 = v6;
    v22 = v29;
    v23 = v29;
    v39 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  v36 = 1;
  if ((v29 & 0x200) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v21 = v6;
  v22 = v29;
  v23 = v29;
  v20 = 0;
LABEL_9:
  sub_10005DC58(&qword_10058D3B0, &unk_1004869B0);
  sub_100031694(v34, v35);
  sub_10000CADC(&qword_10058D3B8, &qword_10058D3B0, &unk_1004869B0, "})\n");
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v7 = v29;
  v8 = v30;
  v9 = sub_100033AA8(_swiftEmptyArrayStorage);
  v10 = type metadata accessor for BinaryDecoder();
  v11 = swift_allocObject();
  v12 = 0;
  v11[5] = &_swiftEmptyDictionarySingleton;
  v11[2] = v7;
  v11[3] = v8;
  v13 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v12 = *(v7 + 16);
    }
  }

  else if (v13)
  {
    v12 = v7;
  }

  v11[4] = v12;
  swift_beginAccess();
  v11[5] = v9;
  v32 = v10;
  v33 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v29 = v11;
  sub_10000AB0C(v7, v8);

  v17 = NANServiceInfo.init(from:)(&v29);
  v24 = v19;
  v25 = v18;

  sub_1000124C8(v7, v8);
  sub_1001842D0(4, 0, 0);
  sub_100002A00(v34);
  LOBYTE(v26) = v23;
  WORD1(v26) = v22;
  DWORD1(v26) = v21;
  v14 = v36;
  BYTE8(v26) = v36;
  BYTE9(v26) = v20;
  v15 = v39;
  BYTE10(v26) = v39;
  *&v27 = v17;
  *(&v27 + 1) = v25;
  v28 = v24;
  sub_100197F08(&v26, &v29);
  sub_100002A00(a1);
  LOBYTE(v29) = v23;
  WORD1(v29) = v22;
  HIDWORD(v29) = v21;
  LOBYTE(v30) = v14;
  BYTE1(v30) = v20;
  BYTE2(v30) = v15;
  *(&v30 + 3) = v37;
  HIBYTE(v30) = v38;
  v31 = v17;
  v32 = v25;
  v33 = v24;
  result = sub_100277A14(&v29);
  v16 = v27;
  *a2 = v26;
  *(a2 + 16) = v16;
  *(a2 + 32) = v28;
  return result;
}

uint64_t sub_100271D64(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v20, v21);
  v3 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v20, v21);
  v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v20, v21);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v21;
  v6 = v22;
  sub_100031694(v20, v21);
  v7 = UnkeyedDecodingContainer.decodeData(with:)(v3, v5, v6);
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_12;
    }

    v13 = v7;
    v7 = *(v7 + 16);
    v11 = v13;
    v14 = v13[3];
LABEL_10:
    v12 = v8;
    if (v14 >= v7)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v12 = v8;
    v11 = v7;
    goto LABEL_13;
  }

  if (v10)
  {
    v15 = v7;
    v7 = v7;
    v11 = v15;
    v14 = v15 >> 32;
    goto LABEL_10;
  }

  v11 = v7;
  v12 = v8;
LABEL_13:
  v16 = Data.subdata(in:)();
  v18 = v17;
  sub_1000124C8(v11, v12);
  sub_100002A00(v20);
  sub_10000AB0C(v16, v18);
  sub_100002A00(a1);
  sub_1000124C8(v16, v18);
  return v19 | (v4 << 8);
}

void *sub_100271F90(void *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v14, v15);
    sub_10027952C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v4 = v15;
    v5 = v16;
    sub_100031694(v14, v15);
    v3 = UnkeyedDecodingContainer.decodeData(with:)(8, v4, v5);
    v8 = v7;
    v9 = v15;
    v10 = v16;
    sub_100031694(v14, v15);
    v11 = UnkeyedDecodingContainer.decodeData(with:)(8, v9, v10);
    v13 = v12;
    sub_100002A00(v14);
    sub_10000AB0C(v3, v8);
    sub_10000AB0C(v11, v13);
    sub_100002A00(a1);
    sub_1000124C8(v3, v8);
    sub_1000124C8(v11, v13);
  }

  return v3;
}

uint64_t sub_100272138@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_1000449CC(0, 0, 0, 0xF000000000000000);
  }

  else
  {
    sub_100031694(v32, v33);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v23 = a2;
    sub_100031694(v32, v33);
    sub_10005DC58(&qword_1005925C0, &qword_10049F9C8);
    sub_10000CADC(&qword_100593590, &qword_1005925C0, &qword_10049F9C8, aA_5);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v35 = v26[0];
    sub_100031694(v32, v33);
    sub_100285408();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    if ((v26[0] & 0xF0) == 0x20)
    {
      sub_100031694(v32, v33);
      if ((v26[0] & 0xF) == 2)
      {
        LOWORD(v13) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        sub_100031694(v32, v33);
        v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v7 = v33;
        v8 = v34;
        sub_100031694(v32, v33);
        v9 = UnkeyedDecodingContainer.decodeData(with:)(v6, v7, v8);
        v11 = v10;
        v12 = 0;
        v13 = v13;
      }

      else
      {
        v14 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v15 = v33;
        v16 = v34;
        sub_100031694(v32, v33);
        v9 = UnkeyedDecodingContainer.decodeData(with:)(v14, v15, v16);
        v11 = v17;
        v13 = 0;
        v12 = 1;
      }

      v22 = v26[0];
      sub_1000449CC(0, 0, 0, 0xF000000000000000);
    }

    else
    {
      v22 = v26[0];
      v13 = 0;
      v12 = 0;
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    sub_100031694(v32, v33);
    sub_10028545C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v18 = v36;
    sub_100002A00(v32);
    v21 = v26[0];
    v19 = v35;
    LOBYTE(v24) = v35;
    BYTE1(v24) = v26[0];
    BYTE2(v24) = v22;
    *(&v24 + 1) = v13;
    *v25 = v12;
    *&v25[8] = v9;
    *&v25[16] = v11;
    *&v25[24] = v18;
    sub_10012A628(&v24, v26);
    sub_100002A00(a1);
    v26[0] = v19;
    v26[1] = v21;
    v26[2] = v22;
    v27 = v13;
    v28 = v12;
    v29 = v9;
    v30 = v11;
    v31 = v18;
    result = sub_1001440B0(v26);
    v20 = *v25;
    *v23 = v24;
    v23[1] = v20;
    *(v23 + 26) = *&v25[10];
  }

  return result;
}

uint64_t sub_100272538@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(&v52, v53);
  sub_100285630();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v55 = a2;
  sub_100031694(&v52, v53);
  sub_100285684();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v36 = v43[0];
  sub_100031694(&v52, v53);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(&v52, v53);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v35 = v43[0];
  v5 = v53;
  v6 = v54;
  sub_100031694(&v52, v53);
  v33 = v43[0];
  *&v34 = UnkeyedDecodingContainer.decodeData(with:)(32, v5, v6);
  *(&v34 + 1) = v7;
  v8 = v53;
  v9 = v54;
  sub_100031694(&v52, v53);
  v10 = UnkeyedDecodingContainer.decodeData(with:)(16, v8, v9);
  v12 = v11;
  v32 = v10;
  sub_100031694(&v52, v53);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v31 = v12;
  v30 = v43[0];
  sub_100031694(&v52, v53);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v28 = v43[0];
  v13 = v53;
  v14 = v54;
  sub_100031694(&v52, v53);
  *&v29 = UnkeyedDecodingContainer.decodeData(with:)(16, v13, v14);
  *(&v29 + 1) = v15;
  v27 = v43[0];
  sub_100031694(&v52, v53);
  v16 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v17 = v53;
  v18 = v54;
  sub_100031694(&v52, v53);
  v26 = UnkeyedDecodingContainer.decodeData(with:)(v16, v17, v18);
  v25 = v19;
  sub_100002A00(&v52);
  LOBYTE(v37) = v36;
  WORD1(v37) = v27;
  WORD2(v37) = v33;
  *(&v37 + 1) = v35;
  v38 = v34;
  *&v39 = v32;
  *(&v39 + 1) = v31;
  *&v40 = v30;
  *(&v40 + 1) = v28;
  v41 = v29;
  *&v42 = v26;
  *(&v42 + 1) = v25;
  sub_100143E5C(&v37, v43);
  sub_100002A00(a1);
  LOBYTE(v43[0]) = v36;
  WORD1(v43[0]) = v27;
  WORD2(v43[0]) = v33;
  v43[1] = v35;
  v44 = v34;
  v45 = v32;
  v46 = v31;
  v47 = v30;
  v48 = v28;
  v49 = v29;
  v50 = v26;
  v51 = v25;
  result = sub_100143EB8(v43);
  v21 = v40;
  v22 = v55;
  v55[2] = v39;
  v22[3] = v21;
  v23 = v42;
  v22[4] = v41;
  v22[5] = v23;
  v24 = v38;
  *v22 = v37;
  v22[1] = v24;
  return result;
}

unint64_t sub_100272C84(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v6, v7);
  sub_100285F2C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v5 & 8) != 0)
  {
    sub_100031694(v6, v7);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_100002A00(v6);
  sub_100002A00(a1);
  return (v4 << 16) | (((v5 & 8) == 0) << 32) | v5;
}

uint64_t sub_100272DB8(void *a1)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v40, v42);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v7 = v35;
  sub_100031694(v40, v42);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v8 = v35;
  sub_100031694(v40, v42);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v33 = v8;
  v9 = v35;
  sub_100031694(v40, v42);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v32 = v9;
  v10 = v35;
  sub_100031694(v40, v42);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v31 = v10;
  v11 = v35;
  sub_100031694(v40, v42);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v29 = v11;
  v12 = v35;
  v30 = v43;
  sub_100031694(v40, v42);
  sub_100285F80();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v44 = v35;
  v30 = v43;
  sub_100031694(v40, v42);
  sub_100285FD4();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v45 = 0;
  LODWORD(v30) = v35;
  v13 = sub_100038CD4(0, 2uLL, v35);
  if (v13 <= 1)
  {
    if (v13)
    {
      sub_100031694(v40, v42);
      sub_1000E537C();
      UnkeyedDecodingContainer.inferredDecode<A>()();
      v15 = v35 | (HIWORD(v35) << 16) | (v36 << 32) | (v37 << 48);
      v14 = v38 | 0x100;
    }

    else
    {
      sub_100031694(v40, v42);
      sub_1000E5328();
      UnkeyedDecodingContainer.inferredDecode<A>()();
      v14 = 0;
      v15 = v35;
    }

    goto LABEL_15;
  }

  if (v13 == 2)
  {
    v16 = a1[3];
    v28 = a1[4];
    sub_100029B34(a1, v16);
    v17 = dispatch thunk of Decoder.userInfo.getter();
    if (qword_10058A848 != -1)
    {
      swift_once();
    }

    v28 = sub_100037644(v3, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
    if (*(v17 + 16) && (v18 = sub_10007CF6C(v28), (v19 & 1) != 0))
    {
      sub_100002B30(*(v17 + 56) + 32 * v18, v39);
    }

    else
    {

      memset(v39, 0, sizeof(v39));
    }

    sub_10002B154(a1, &v35);
    v23 = sub_10005DC58(&qword_10058D3D8, &unk_10049EDB0);
    v24 = type metadata accessor for BinaryDecoder();
    v26[2] = v23;
    v26[1] = v24;
    if (swift_dynamicCast())
    {
      (*(v4 + 16))(v6, v28, v3);
      v34[3] = &type metadata for Bool;
      LOBYTE(v34[0]) = 1;
      swift_beginAccess();
      sub_100072BFC(v34, v6);
      swift_endAccess();
    }

    v27 = v43;
    sub_100031694(v40, v42);
    sub_1000E537C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v27 = v35 | (HIWORD(v35) << 16) | (v36 << 32) | (v37 << 48);
    v14 = v38 | 0x100;
    sub_10002B154(a1, &v35);
    if (swift_dynamicCast())
    {
      (*(v4 + 16))(v6, v28, v3);
      sub_100012400(v39, v34, &qword_10058BA80, &qword_1004818C0);
      swift_beginAccess();
      sub_100072BFC(v34, v6);
      swift_endAccess();
    }

    sub_100016290(v39, &qword_10058BA80, &qword_1004818C0);
    v21 = v30;
    v15 = v27;
    goto LABEL_16;
  }

  if (v13 == 3)
  {
    v15 = 0;
    v14 = -256;
LABEL_15:
    v21 = v30;
LABEL_16:
    sub_100002A00(v40);
    v22 = v45;
    sub_100002A00(a1);
    result = v7 | (v33 << 8) | (v32 << 32);
    v40[0] = v12;
    v40[1] = v44;
    v40[2] = v21;
    v40[3] = v22 & 1;
    *&v40[4] = v15;
    v41 = v14;
    return result;
  }

  sub_10000B02C();
  swift_allocError();
  *v25 = xmmword_10047CE70;
  *(v25 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002736B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
LABEL_4:
    sub_1001842AC(0, 0, 16711680);
    return sub_1001842D0(4, 0, 0);
  }

  sub_100031694(v117, v118);
  sub_1002866C4();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = *(&v101 + 1);
  v122 = v101;
  sub_100031694(v117, v118);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v117, v118);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v117, v118);
  sub_100286718();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v7 = v101;
  v95 = v101;
  if ((v101 & 0x40) != 0)
  {
    sub_100031694(v117, v118);
    v83 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v7 = v101;
  }

  else
  {
    v83 = 0;
  }

  v84 = v101;
  v85 = v101;
  v121 = (v7 & 0x40) == 0;
  if ((v7 & 4) == 0)
  {
    v8 = 0;
    if ((v7 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

  sub_10005DC58(&qword_10058CC70, &unk_100484290);
  sub_100031694(v117, v118);
  sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290, "})\n");
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v14 = v101;
  v15 = sub_100033AA8(_swiftEmptyArrayStorage);
  v16 = type metadata accessor for BinaryDecoder();
  v17 = swift_allocObject();
  v18 = 0;
  *(v17 + 40) = &_swiftEmptyDictionarySingleton;
  v82 = v6;
  *(v17 + 16) = v14;
  v19 = *(&v14 + 1) >> 62;
  if ((*(&v14 + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v18 = *(v14 + 16);
    }
  }

  else if (v19)
  {
    v18 = v14;
  }

  *(v17 + 32) = v18;
  swift_beginAccess();
  *(v17 + 40) = v15;
  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  sub_10000AB0C(v14, *(&v14 + 1));
  v22 = v20 >> 62;
  v87 = v21;
  v80 = v21 >> 32;
  v91 = BYTE6(v20);
  v77 = _swiftEmptyArrayStorage;
  while (1)
  {
    v6 = v82;
    v23 = *(v17 + 32);
    if (v22 > 1)
    {
      break;
    }

    v24 = v91;
    if (v22)
    {
      v24 = v80;
    }

LABEL_24:
    if (v23 >= v24)
    {
      goto LABEL_32;
    }

LABEL_27:
    v107 = v16;
    v108 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    *&v101 = v17;

    v25 = sub_1001424D4(&v101);
    v27 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_1001162E8(0, v77[2] + 1, 1, v77);
    }

    v29 = v77[2];
    v28 = v77[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v32 = sub_1001162E8((v28 > 1), v29 + 1, 1, v77);
      v30 = v29 + 1;
      v77 = v32;
    }

    v77[2] = v30;
    v31 = &v77[2 * v29];
    v31[4] = v25;
    v31[5] = v27;
  }

  if (v22 == 2)
  {
    v24 = *(v87 + 24);
    goto LABEL_24;
  }

  if (v23 < 0)
  {
    goto LABEL_27;
  }

LABEL_32:

  v33 = v77[2];
  if (v33)
  {
    *&v101 = _swiftEmptyArrayStorage;
    sub_1000C05C4(0, v33, 0);
    v8 = v101;
    v34 = v77 + 5;
    while (1)
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      v37 = *v34 >> 62;
      v92 = v33;
      if (v37 > 1)
      {
        if (v37 == 2)
        {
          v39 = *(v35 + 16);
          v38 = *(v35 + 24);
          goto LABEL_40;
        }
      }

      else if (v37)
      {
        v39 = v35;
        v38 = v35 >> 32;
LABEL_40:
        sub_10000AB0C(v35, v36);
        if (v38 < v39)
        {
          __break(1u);
          goto LABEL_82;
        }
      }

      v40 = Data.subdata(in:)();
      v88 = v41;
      sub_1000124C8(v35, v36);
      *&v101 = v8;
      v43 = v8[2];
      v42 = v8[3];
      if (v43 >= v42 >> 1)
      {
        sub_1000C05C4((v42 > 1), v43 + 1, 1);
        v8 = v101;
      }

      v34 += 2;
      v8[2] = v43 + 1;
      v44 = &v8[2 * v43];
      v44[4] = v40;
      v44[5] = v88;
      v33 = v92 - 1;
      if (v92 == 1)
      {

        sub_1000124C8(v14, *(&v14 + 1));
        v6 = v82;
        goto LABEL_47;
      }
    }
  }

  sub_1000124C8(v14, *(&v14 + 1));
  v8 = _swiftEmptyArrayStorage;
LABEL_47:
  v7 = v95;
  if ((v95 & 8) == 0)
  {
LABEL_10:
    v9 = 16711680;
    sub_1001842AC(0, 0, 16711680);
    v10 = 0;
    v11 = 0;
    if ((v7 & 0x10) == 0)
    {
LABEL_11:
      v76 = 0;
      v78 = 0;
      v79 = 4;
LABEL_12:
      sub_100002A00(v117);
      *&v96 = v122;
      *(&v96 + 1) = v6;
      LOBYTE(v97) = v85;
      BYTE1(v97) = v84;
      BYTE2(v97) = v95;
      WORD2(v97) = v83;
      v86 = v121;
      BYTE6(v97) = v121;
      *(&v97 + 1) = v8;
      *&v98 = v10;
      *(&v98 + 1) = v11;
      BYTE2(v99) = BYTE2(v9);
      LOWORD(v99) = v9;
      *(&v99 + 3) = v119;
      BYTE7(v99) = v120;
      *(&v99 + 1) = v79;
      *&v100 = v78;
      *(&v100 + 1) = v76;
      sub_10028676C(&v96, &v101);
      sub_100002A00(a1);
      *&v101 = v122;
      *(&v101 + 1) = v6;
      v102 = v85;
      v103 = v84;
      v104 = v95;
      v105 = v83;
      v106 = v86;
      v107 = v8;
      v108 = v10;
      v109 = v11;
      v111 = BYTE2(v9);
      v110 = v9;
      v112 = v119;
      v113 = v120;
      v114 = v79;
      v115 = v78;
      v116 = v76;
      result = sub_100197EB4(&v101);
      v12 = v99;
      a2[2] = v98;
      a2[3] = v12;
      a2[4] = v100;
      v13 = v97;
      *a2 = v96;
      a2[1] = v13;
      return result;
    }

LABEL_76:
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_100031694(v117, v118);
    sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290, "})\n");
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v66 = v101;
    v90 = sub_100033AA8(_swiftEmptyArrayStorage);
    v81 = type metadata accessor for BinaryDecoder();
    v67 = swift_allocObject();
    v68 = v67;
    v69 = 0;
    *(v67 + 40) = &_swiftEmptyDictionarySingleton;
    *(v67 + 16) = v66;
    v70 = *(&v66 + 1) >> 62;
    if ((*(&v66 + 1) >> 62) > 1)
    {
      if (v70 == 2)
      {
        v69 = *(v66 + 16);
      }
    }

    else if (v70)
    {
      v69 = v66;
    }

    *(v67 + 32) = v69;
    swift_beginAccess();
    *(v68 + 40) = v90;
    v107 = v81;
    v108 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    *&v101 = v68;
    v71 = NANServiceInfo.init(from:)(&v101);
    v78 = v72;
    v79 = v71;
    v76 = v73;
    sub_1001842D0(4, 0, 0);
    goto LABEL_12;
  }

LABEL_48:
  sub_10005DC58(&qword_10058CC70, &unk_100484290);
  sub_100031694(v117, v118);
  sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290, "})\n");
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v101 = v96;
  v45 = *(&v96 + 1) >> 62;
  if ((*(&v96 + 1) >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_56;
    }

    v47 = *(v96 + 16);
    v46 = *(v96 + 24);
LABEL_55:
    if (v47 != v46)
    {
      goto LABEL_57;
    }

LABEL_56:
    sub_10000B02C();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(v101, *(&v101 + 1));
    sub_100002A00(v117);
    sub_100002A00(a1);
    sub_1000124C8(v122, v6);

    goto LABEL_4;
  }

  if (v45)
  {
    v47 = v96;
    v46 = v96 >> 32;
    goto LABEL_55;
  }

  if ((*(&v96 + 1) & 0xFF000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_57:
  v49 = sub_100264734();
  v50 = sub_100038CD4(0, 1uLL, v49);
  if (!v50)
  {
    v51 = *(&v101 + 1);
    v52 = v101;
    v93 = sub_100033AA8(_swiftEmptyArrayStorage);
    type metadata accessor for BinaryDecoder();
    v53 = swift_allocObject();
    v54 = 0;
    v53[5] = &_swiftEmptyDictionarySingleton;
    v53[2] = v52;
    v53[3] = v51;
    v55 = v51 >> 62;
    if ((v51 >> 62) > 1)
    {
      if (v55 == 2)
      {
        v54 = *(v52 + 16);
      }
    }

    else if (v55)
    {
      v54 = v52;
    }

    v53[4] = v54;
    swift_beginAccess();
    v53[5] = v93;
    sub_10000AB0C(v52, v51);
    v89 = sub_100239F6C();

    v94 = sub_1000E5570(1, 1uLL, v49, v60) != 0;
    sub_1000124C8(v52, v51);
    v9 = 0;
LABEL_75:
    sub_1001842AC(0, 0, 16711680);
    v10 = v89;
    v11 = v94;
    if ((v95 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_76;
  }

  if (v50 != 1)
  {
LABEL_82:
    sub_10000B02C();
    swift_allocError();
    *v74 = xmmword_10047CE70;
    *(v74 + 16) = 2;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_83;
  }

  v56 = v101;
  v57 = *(&v101 + 1) >> 62;
  if ((*(&v101 + 1) >> 62) > 1)
  {
    if (v57 != 2)
    {
      goto LABEL_73;
    }

    v58 = *(v101 + 16);
    v59 = *(v101 + 24);
  }

  else
  {
    if (!v57)
    {
      goto LABEL_73;
    }

    v58 = v101;
    v59 = v101 >> 32;
  }

  if (v59 < v58)
  {
    __break(1u);
  }

LABEL_73:
  v89 = Data.subdata(in:)();
  v94 = v61;
  v62 = sub_100038CD4(2, 2uLL, v49);
  v63 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v62);
  if (v63 != 4)
  {
    v64 = v63;
    v65 = (sub_1000E5570(1, 1uLL, v49, v63) != 0) << 8;
    sub_1000124C8(v56, *(&v56 + 1));
    v9 = v65 | v64 | 0x10000;
    goto LABEL_75;
  }

LABEL_83:
  sub_10000B02C();
  swift_allocError();
  *v75 = xmmword_10047CE70;
  *(v75 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_10027446C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v110 = 1;
  v111 = 1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    sub_100017554(0, 0xF000000000000000);
    sub_1001842D0(4, 0, 0);
    return;
  }

  sub_100031694(v106, v107);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v88 = a2;
  sub_100031694(v106, v107);
  sub_10005DC58(&qword_100592220, &unk_10049F890);
  sub_10000CADC(&qword_1005937B0, &qword_100592220, &unk_10049F890, aA_5);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v109 = v92;
  v87 = v92;
  sub_100031694(v106, v107);
  sub_100285408();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v106, v107);
  sub_10003804C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v83 = v92;
  v84 = v92;
  v82 = BYTE1(v92);
  sub_100031694(v106, v107);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v72 = BYTE5(v92);
  v73 = BYTE4(v92);
  v74 = BYTE3(v92);
  v75 = BYTE2(v92);
  sub_100031694(v106, v107);
  sub_1002861FC();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v92 & 8) != 0)
  {
    sub_100031694(v106, v107);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v110 = 0;
  }

  else
  {
    v5 = 0;
  }

  if ((v92 & 0x10) != 0)
  {
    sub_100031694(v106, v107);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v61 = v5;
    v62 = v92;
    v60 = v92 | (BYTE4(v92) << 32) | (BYTE5(v92) << 40);
    v111 = 0;
  }

  else
  {
    v61 = v5;
    v62 = v92;
    v60 = 0;
  }

  v6 = v107;
  v7 = v108;
  sub_100031694(v106, v107);
  v8 = sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
  v9 = sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0, protocol conformance descriptor for TypeLengthValue<A, B>);
  v10 = UnkeyedDecodingContainer.inferredArrayDecode<A>()(v6, v8, v7, v9);
  v71 = *(v10 + 16);
  v59 = v92;
  v76 = v10;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!v71)
  {
    v16 = 0xF000000000000000;
    v17 = 4;
    v18 = v109;
LABEL_54:

    sub_100002A00(v106);
    v89[0] = v18;
    v89[1] = v87;
    v89[2] = v84;
    v89[3] = v83;
    v89[4] = v82;
    v89[5] = v75;
    v89[6] = v74;
    v89[7] = v73;
    v89[8] = v72;
    v89[9] = v59;
    v89[10] = v62;
    v89[11] = v61;
    v86 = v110;
    v89[12] = v110;
    *&v89[17] = WORD2(v60);
    *&v89[13] = v60;
    v55 = v111;
    v89[19] = v111;
    *&v89[24] = v11;
    *&v90 = v16;
    *(&v90 + 1) = v17;
    *&v91 = v12;
    *(&v91 + 1) = v13;
    sub_100286250(v89, &v92);
    sub_100002A00(a1);
    LOBYTE(v92) = v109;
    BYTE1(v92) = v87;
    BYTE2(v92) = v84;
    BYTE3(v92) = v83;
    BYTE4(v92) = v82;
    BYTE5(v92) = v75;
    BYTE6(v92) = v74;
    HIBYTE(v92) = v73;
    v93 = v72;
    v94 = v59;
    v95 = v62;
    v96 = v61;
    v97 = v86;
    v99 = WORD2(v60);
    v98 = v60;
    v100 = v55;
    v101 = v11;
    v102 = v16;
    v103 = v17;
    v104 = v12;
    v105 = v13;
    sub_10027A06C(&v92);
    v56 = *&v89[16];
    *v88 = *v89;
    v88[1] = v56;
    v57 = v91;
    v88[2] = v90;
    v88[3] = v57;
    return;
  }

  v14 = 0;
  v58 = enum case for DecodingError.valueNotFound(_:);
  v15 = (v10 + 48);
  v16 = 0xF000000000000000;
  v17 = 4;
  v18 = v109;
  while (v14 < *(v76 + 16))
  {
    v85 = *(v15 - 1);
    v81 = *v15;
    if (*(v15 - 16))
    {
      if (*(v15 - 16) == 1)
      {
        v77 = v15;
        v79 = v14;
        v23 = type metadata accessor for BinaryDecoder();
        v24 = swift_allocObject();
        v25 = 0;
        v24[5] = &_swiftEmptyDictionarySingleton;
        v24[2] = v85;
        v24[3] = v81;
        v26 = v81 >> 62;
        v68 = v23;
        if ((v81 >> 62) > 1)
        {
          if (v26 == 2)
          {
            v25 = *(v85 + 16);
          }
        }

        else if (v26)
        {
          v25 = v85;
        }

        v24[4] = v25;
        v30 = v24;
        swift_beginAccess();
        v30[5] = &_swiftEmptyDictionarySingleton;
        v101 = v68;
        v102 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        v92 = v30;
        sub_10000AB0C(v85, v81);
        sub_10000AB0C(v85, v81);
        sub_10000AB0C(v85, v81);

        v63 = sub_1002060AC(&v92);
        v66 = v31;
        v69 = v32;
        sub_1000124C8(v85, v81);

        sub_1000124C8(v85, v81);
        sub_1001842D0(v17, v12, v13);
        v17 = v63;
        v12 = v66;
        v13 = v69;
        v18 = v109;
        v15 = v77;
        v14 = v79;
      }

      goto LABEL_16;
    }

    v78 = v15;
    v80 = v14;
    type metadata accessor for BinaryDecoder();
    v27 = swift_allocObject();
    v28 = 0;
    v27[5] = &_swiftEmptyDictionarySingleton;
    v27[2] = v85;
    v27[3] = v81;
    v29 = v81 >> 62;
    if ((v81 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v28 = *(v85 + 16);
      }
    }

    else if (v29)
    {
      v28 = v85;
    }

    v27[4] = v28;
    swift_beginAccess();
    v27[5] = &_swiftEmptyDictionarySingleton;
    v101 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v33 = sub_1000325F0();
    v102 = v33;
    v92 = v27;
    v34 = *sub_100031694(&v92, &type metadata for BinaryDecoder.UnkeyedContainer);
    *&v89[24] = &type metadata for BinaryDecoder.UnkeyedContainer;
    *&v90 = v33;
    *v89 = v34;
    v35 = sub_100031694(v89, &type metadata for BinaryDecoder.UnkeyedContainer);
    v36 = *v35;
    v37 = *(*v35 + 32);
    v38 = v37 + 8;
    if (__OFADD__(v37, 8))
    {
      goto LABEL_56;
    }

    v39 = v36[2];
    v40 = v36[3];
    v41 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      v43 = v85;
      if (v41 != 2)
      {
        if (v38 < 1)
        {
          goto LABEL_40;
        }

        goto LABEL_13;
      }

      v42 = *(v39 + 24);
    }

    else
    {
      if (v41)
      {
        v42 = v39 >> 32;
      }

      else
      {
        v42 = BYTE6(v40);
      }

      v43 = v85;
    }

    if (v42 >= v38)
    {
LABEL_40:
      v64 = v37 + 8;
      if (v38 < v37)
      {
        goto LABEL_57;
      }

      sub_10000AB0C(v43, v81);

      sub_10000AB0C(v85, v81);

      v67 = Data._Representation.subscript.getter();
      v70 = v44;
      v36[4] = v64;

      v45 = v70 >> 62;
      if ((v70 >> 62) > 1)
      {
        v47 = v85;
        v48 = v67;
        if (v45 == 2)
        {
          v50 = *(v67 + 16);
          v49 = *(v67 + 24);
          v51 = __OFSUB__(v49, v50);
          v46 = v49 - v50;
          if (v51)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (v45)
        {
          v48 = v67;
          LODWORD(v46) = HIDWORD(v67) - v67;
          if (__OFSUB__(HIDWORD(v67), v67))
          {
            goto LABEL_59;
          }

          v46 = v46;
          v47 = v85;
        }

        else
        {
          v46 = BYTE6(v70);
          v47 = v85;
          v48 = v67;
        }

LABEL_50:
        if (v46 == 8)
        {
          v52 = v47;
          sub_100002A00(v89);

          sub_100002A00(&v92);
          v22 = v52;
          v20 = v67;
          v21 = v70;
          goto LABEL_15;
        }
      }

      v65 = type metadata accessor for DecodingError();
      swift_allocError();
      v54 = v53;
      sub_10005DC58(&qword_10058CE38, &unk_100483C40);
      *v54 = &type metadata for Data;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v65 - 8) + 104))(v54, v58);
      swift_willThrow();
      sub_1000124C8(v48, v70);
      goto LABEL_14;
    }

LABEL_13:
    sub_10000B02C();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 2;
    swift_willThrow();
    sub_10000AB0C(v43, v81);

    sub_10000AB0C(v43, v81);

LABEL_14:
    sub_100002A00(v89);

    sub_100002A00(&v92);

    v20 = 0;
    v21 = 0xF000000000000000;
    v22 = v85;
LABEL_15:
    sub_1000124C8(v22, v81);
    sub_100017554(v11, v16);
    v11 = v20;
    v16 = v21;
    v15 = v78;
    v14 = v80;
    v18 = v109;
LABEL_16:
    ++v14;
    v15 += 3;
    if (v71 == v14)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

unint64_t sub_100274FB8(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v10, v11);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v10, v11);
  sub_10005DC58(&qword_1005922F8, &qword_10049F8D8);
  sub_10000CADC(&qword_100593728, &qword_1005922F8, &qword_10049F8D8, aA_5);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v10, v11);
  sub_100285408();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v10, v11);
  sub_100285E00();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v9 & 2) != 0)
  {
    sub_100031694(v10, v11);
    sub_10005DC58(&qword_100593738, &qword_1004ABAC8);
    sub_100285E54();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v4 = v9 << 32;
  }

  else
  {
    v4 = 0;
  }

  if ((v9 & 4) != 0)
  {
    v8 = v4;
    v5 = v11;
    v6 = v12;
    sub_100031694(v10, v11);
    v7 = sub_100285534();
    UnkeyedDecodingContainer.inferredArrayDecode<A>()(v5, &type metadata for NANScheduleEntry, v6, v7);
    v4 = v8;
  }

  sub_100002A00(v10);
  sub_100002A00(a1);
  return v9 | (v9 << 8) | (v9 << 16) | (v9 << 24) | v4;
}

void *sub_1002752A8(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v6, v7);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_100031694(v6, v7);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_100031694(v6, v7);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = (v5 | (v5 << 8) | (v5 << 16));
    sub_100002A00(v6);
  }

  sub_100002A00(a1);
  return v3;
}

unint64_t sub_10027541C(void *a1)
{
  v11 = 1;
  v10 = 1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v8, v9);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v8, v9);
  sub_10005DC58(&qword_1005922B8, &qword_10049F8C8);
  sub_10000CADC(&qword_100593770, &qword_1005922B8, &qword_10049F8C8, aA_5);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v8, v9);
  sub_100285408();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v8, v9);
  sub_100286028();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if (v7)
  {
    sub_100031694(v8, v9);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v11 = 0;
    v6 = v4 << 32;
  }

  else
  {
    v6 = 0;
  }

  if ((v7 & 0x10) != 0)
  {
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v10 = 0;
  }

  sub_100002A00(v8);
  v5 = v11;
  sub_100002A00(a1);
  return v6 | ((v5 & 1) << 40) | (v7 << 24) | (v7 << 16) | (v7 << 8) | v7;
}

void sub_10027576C(uint64_t a1)
{
  v20 = _swiftEmptyArrayStorage;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return;
  }

  v1 = 0;
  v18 = a1 + 32;
  while (1)
  {
    v2 = *(v18 + 8 * v1);
    v3 = v20;
    v4 = *(v20 + 2);
    v5 = *(v2 + 16);
    if (v4 <= v5)
    {

      v6 = v20;
      if (!v4)
      {
LABEL_23:
        if (!*(v2 + 16))
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    else
    {

      sub_100235DAC((v4 - v5));
      v6 = v20;
      v4 = *(v20 + 2);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    if (v5)
    {
      v7 = 0;
      v8 = v5 - 1;
      v9 = v4 - 1;
      while (1)
      {
        v10 = *(v2 + 32 + v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000C28C4(v6);
        }

        v4 = *(v6 + 2);
        if (v7 >= v4)
        {
          break;
        }

        v6[v7 + 32] &= v10;
        if (v9 != v7)
        {
          v11 = v8 == v7++;
          if (!v11)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_15:
    if (v4 == *(v2 + 16))
    {
      break;
    }

LABEL_24:

    v13 = *(v20 + 2);
    v14 = *(v2 + 16);

    if (v13 && v14)
    {
      v15 = 0;
      v16 = v13 - 1;
      while (1)
      {
        v17 = *(v2 + 32 + v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1000C28C4(v3);
        }

        v13 = *(v3 + 2);
        if (v15 >= v13)
        {
          break;
        }

        v3[v15 + 32] |= v17;
        v20 = v3;
        if (v16 != v15)
        {
          v11 = v14 - 1 == v15++;
          if (!v11)
          {
            continue;
          }
        }

        goto LABEL_33;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_33:
    if (v13 < v14)
    {
      sub_100234FC0(v2, v2 + 32, v13, (2 * v14) | 1);
      goto LABEL_4;
    }

LABEL_3:

LABEL_4:
    ++v1;

    if (v1 == v19)
    {
      return;
    }
  }

  if (v6 == v2)
  {
    goto LABEL_3;
  }

  v12 = 32;
  while (v4)
  {
    if (v6[v12] != *(v2 + v12))
    {
      goto LABEL_24;
    }

    ++v12;
    if (!--v4)
    {
      goto LABEL_3;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1002759E0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275A18(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275A50(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275AC0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      if (BYTE6(a2) != 8)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 8)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 != 2)
  {
    goto LABEL_21;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v12 != 8)
  {
    goto LABEL_21;
  }

LABEL_11:
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v11 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v11)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a4);
    goto LABEL_20;
  }

  LODWORD(v14) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v14 = v14;
LABEL_20:
    if (v14 == 8)
    {
      return v7;
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(a3, a4);
    sub_1000124C8(v7, a2);
    return v7;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100275C0C(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v76 = type metadata accessor for SymmetricKey();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10005DC58(&qword_100592550, &unk_10049F998);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v72 - v6;
  v80 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v8 = *(v80 - 8);
  __chkstk_darwin();
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_20:
    v29 = v84;
    v30 = sub_100033AA8(_swiftEmptyArrayStorage);
    v31 = type metadata accessor for BinaryEncoder();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100480A90;
    v16 = v32 + 16;
    *(v32 + 32) = v30;
    v89 = v31;
    v90 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v87 = v32;

    sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
    sub_10000CADC(&qword_1005938C8, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
    Array<A>.encode(to:)();
    v33 = v29;
    if (v29)
    {

      sub_100002A00(&v87);
      return v16;
    }

    sub_100002A00(&v87);
    swift_beginAccess();
    v34 = *(v32 + 16);
    v35 = *(v32 + 24);
    sub_10000AB0C(v34, v35);

    v91 = v34;
    v92 = v35;
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      v39 = 0;
      if (v36 != 2)
      {
        goto LABEL_46;
      }

      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      v24 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v24)
      {
        goto LABEL_70;
      }

      if (v42 <= 15)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v36)
      {
        if (BYTE6(v35) > 0xFuLL)
        {
          goto LABEL_25;
        }

LABEL_32:
        if (v36 == 2)
        {
          goto LABEL_42;
        }

        if (v36 != 1)
        {
          goto LABEL_45;
        }

        LODWORD(v39) = HIDWORD(v34) - v34;
        if (!__OFSUB__(HIDWORD(v34), v34))
        {
          v39 = v39;
          goto LABEL_46;
        }

        goto LABEL_75;
      }

      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_71;
      }

      if (HIDWORD(v34) - v34 <= 15)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v36 > 1)
    {
LABEL_49:
      if (v36 != 2)
      {
        goto LABEL_64;
      }

      v54 = *(v34 + 16);
      v37 = *(v34 + 24);
      v24 = __OFSUB__(v37, v54);
      LOBYTE(v37) = v37 - v54;
      if (v24)
      {
        goto LABEL_72;
      }
    }

    else
    {
      while (v36)
      {
        LOBYTE(v37) = BYTE4(v34) - v34;
        if (!__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_51;
        }

        __break(1u);
LABEL_42:
        v44 = *(v34 + 16);
        v43 = *(v34 + 24);
        v24 = __OFSUB__(v43, v44);
        v39 = v43 - v44;
        if (v24)
        {
          __break(1u);
LABEL_45:
          v39 = BYTE6(v35);
        }

LABEL_46:
        v45 = v33;
        v46 = 16 - v39;
        if (__OFSUB__(16, v39))
        {
          goto LABEL_68;
        }

        v47 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
        v89 = v47;
        v90 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
        LOBYTE(v87) = -35;
        v85 = *sub_100029B34(&v87, v47);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100002A00(&v87);
        if (__OFSUB__(v46, 1))
        {
          goto LABEL_69;
        }

        v48 = sub_10014345C(v46 - 1);
        v50 = v49;
        v89 = &type metadata for Data;
        v90 = &protocol witness table for Data;
        v87 = v48;
        v88 = v49;
        v51 = sub_100029B34(&v87, &type metadata for Data);
        v52 = *v51;
        v53 = v51[1];
        sub_10000AB0C(v48, v50);
        sub_100178A18(v52, v53, &v91);
        v33 = v45;
        sub_1000124C8(v48, v50);
        sub_100002A00(&v87);
        v34 = v91;
        v35 = v92;
        v36 = v92 >> 62;
        if ((v92 >> 62) > 1)
        {
          goto LABEL_49;
        }
      }

      v37 = HIWORD(v35);
    }

LABEL_51:
    if ((v37 & 7) != 0)
    {
      if (v36)
      {
        if (v36 == 2)
        {
          v55 = *(v34 + 16);
          v56 = *(v34 + 24);
          v24 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v24)
          {
            goto LABEL_73;
          }

          v58 = -v57 < 0;
          v59 = -v57 & 7;
          v60 = v57 & 7;
          if (v58)
          {
            v61 = v60;
          }

          else
          {
            v61 = -v59;
          }
        }

        else
        {
          if (__OFSUB__(HIDWORD(v34), v34))
          {
            goto LABEL_74;
          }

          v62 = (BYTE4(v34) - v34) & 7;
          if (v34 - HIDWORD(v34) >= 0)
          {
            v62 = -((v34 - HIDWORD(v34)) & 7);
          }

          v61 = v62;
        }
      }

      else
      {
        v61 = HIWORD(v35) & 7;
      }

      v63 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
      v89 = v63;
      v90 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
      LOBYTE(v87) = -35;
      v85 = *sub_100029B34(&v87, v63);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100002A00(&v87);
      v64 = sub_10014345C(7 - v61);
      v66 = v65;
      v89 = &type metadata for Data;
      v90 = &protocol witness table for Data;
      v87 = v64;
      v88 = v65;
      v67 = sub_100029B34(&v87, &type metadata for Data);
      v68 = *v67;
      v69 = v67[1];
      sub_10000AB0C(v64, v66);
      sub_100178A18(v68, v69, &v91);
      sub_1000124C8(v64, v66);
      sub_100002A00(&v87);
      v34 = v91;
      v35 = v92;
    }

LABEL_64:
    v87 = v34;
    v88 = v35;
    sub_10000AB0C(v34, v35);
    v70 = v73;
    SymmetricKey.init<A>(data:)();
    v16 = static AES.KeyWrap.wrap(_:using:)();
    (*(v75 + 8))(v70, v76);
    sub_1000124C8(v91, v92);
    return v16;
  }

  v87 = _swiftEmptyArrayStorage;
  v82 = v11;
  sub_1000C06C4(0, v11, 0);
  v12 = v87;
  v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v79 = (v5 + 8);
  v77 = *(v8 + 72);
  v78 = xmmword_100480A90;
  while (1)
  {
    v83 = v12;
    v81 = v13;
    sub_1002774DC(v13, v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    type metadata accessor for BinaryEncoder();
    v14 = swift_allocObject();
    *(v14 + 16) = v78;
    *(v14 + 32) = &_swiftEmptyDictionarySingleton;
    v86 = v14;
    swift_retain_n();
    sub_10005DC58(&qword_1005938B8, &qword_1004ABB78);
    sub_10000CADC(&qword_1005938C0, &qword_1005938B8, &qword_1004ABB78, byte_10049852C);
    KeyedEncodingContainer.init<A>(_:)();
    v15 = v10[2];
    LOWORD(v86) = *v10;
    BYTE2(v86) = v15;
    v85 = 0;
    sub_1001F5AF0();
    v16 = v7;
    v17 = v84;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v17)
    {
      break;
    }

    LOBYTE(v86) = v10[3];
    v85 = 1;
    sub_100279984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v7;
    v18 = v4;
    LOBYTE(v86) = 2;
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    sub_10027784C(&qword_100592568, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData, protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v84 = 0;
    (*v79)(v16, v4);

    swift_beginAccess();
    v19 = *(v14 + 16);
    v20 = *(v14 + 24);
    sub_10000AB0C(v19, v20);

    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        v24 = __OFSUB__(v22, v23);
        v25 = v22 - v23;
        if (v24)
        {
          goto LABEL_67;
        }

        if (v25 >= 255)
        {
LABEL_28:
          sub_10000B02C();
          swift_allocError();
          *v38 = 0;
          *(v38 + 8) = 0;
          *(v38 + 16) = 2;
          swift_willThrow();
          sub_1000124C8(v19, v20);
          sub_100277544(v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

          return v16;
        }
      }
    }

    else if (v21)
    {
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      if (HIDWORD(v19) - v19 >= 255)
      {
        goto LABEL_28;
      }
    }

    else if (BYTE6(v20) == 255)
    {
      goto LABEL_28;
    }

    sub_100277544(v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v12 = v83;
    v87 = v83;
    v27 = v83[2];
    v26 = v83[3];
    if (v27 >= v26 >> 1)
    {
      sub_1000C06C4((v26 > 1), v27 + 1, 1);
      v12 = v87;
    }

    v12[2] = v27 + 1;
    v28 = &v12[3 * v27];
    *(v28 + 32) = -35;
    v28[5] = v19;
    v28[6] = v20;
    v13 = v81 + v77;
    --v82;
    v4 = v18;
    v7 = v16;
    if (!v82)
    {
      goto LABEL_20;
    }
  }

  (*v79)(v7, v4);
  sub_100277544(v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

  return v16;
}

double sub_100276834@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v7 = __DataStorage.init(length:)() | 0x4000000000000000;
  swift_allocObject();
  v8 = __DataStorage.init(length:)() | 0x4000000000000000;
  swift_allocObject();
  v9 = __DataStorage.init(length:)() | 0x4000000000000000;
  v10 = sub_100275C0C(a1, a2);
  if (v3)
  {
    v12 = type metadata accessor for SymmetricKey();
    (*(*(v12 - 8) + 8))(a2, v12);

    sub_1000124C8(0x2000000000, v7);
    sub_1000124C8(0x1000000000, v8);
    sub_1000124C8(0x1000000000, v9);
  }

  else
  {
    v14 = v10;
    v15 = v11;
    v16 = type metadata accessor for SymmetricKey();
    (*(*(v16 - 8) + 8))(a2, v16);

    v21[0] = 1;
    *&v21[2] = 4232;
    *&v21[8] = xmmword_1004881D0;
    *&v21[24] = v7;
    *&v22 = 0x1000000000;
    *(&v22 + 1) = v8;
    v23 = 0uLL;
    *&v24 = 0x1000000000;
    *(&v24 + 1) = v9;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v26[0] = 1;
    v27 = 4232;
    v28 = xmmword_1004881D0;
    v29 = v7;
    v30 = 0x1000000000;
    v31 = v8;
    v32 = 0;
    v33 = 0;
    v34 = 0x1000000000;
    v35 = v9;
    v36 = v14;
    v37 = v15;
    sub_100143E5C(v21, v20);
    sub_100143EB8(v26);
    v17 = v23;
    a3[2] = v22;
    a3[3] = v17;
    v18 = v25;
    a3[4] = v24;
    a3[5] = v18;
    result = *v21;
    v19 = *&v21[16];
    *a3 = *v21;
    a3[1] = v19;
  }

  return result;
}

uint64_t sub_100276A4C(uint64_t a1)
{
  v72 = sub_10005DC58(&qword_100592550, &unk_10049F998);
  v3 = *(v72 - 8);
  __chkstk_darwin();
  v5 = &v65 - v4;
  v70 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v6 = *(v70 - 8);
  __chkstk_darwin();
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_19:
    v27 = sub_100033AA8(_swiftEmptyArrayStorage);
    v28 = type metadata accessor for BinaryEncoder();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100480A90;
    v13 = v29 + 16;
    *(v29 + 32) = v27;
    v77 = v28;
    v78 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v75 = v29;

    sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
    sub_10000CADC(&qword_1005938C8, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
    Array<A>.encode(to:)();
    if (v1)
    {

      sub_100002A00(&v75);
      return v13;
    }

    sub_100002A00(&v75);
    swift_beginAccess();
    v13 = *(v29 + 16);
    v30 = *(v29 + 24);
    sub_10000AB0C(v13, v30);

    v79 = v13;
    v80 = v30;
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      v35 = 0;
      if (v31 != 2)
      {
        goto LABEL_46;
      }

      v37 = *(v13 + 16);
      v36 = *(v13 + 24);
      v22 = __OFSUB__(v36, v37);
      v38 = v36 - v37;
      if (v22)
      {
        goto LABEL_69;
      }

      if (v38 <= 15)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v31)
      {
        if (BYTE6(v30) > 0xFuLL)
        {
          goto LABEL_24;
        }

LABEL_32:
        if (v31 == 2)
        {
          goto LABEL_42;
        }

        if (v31 != 1)
        {
          goto LABEL_45;
        }

        LODWORD(v35) = HIDWORD(v13) - v13;
        if (!__OFSUB__(HIDWORD(v13), v13))
        {
          v35 = v35;
          goto LABEL_46;
        }

        goto LABEL_74;
      }

      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v13) - v13 <= 15)
      {
        goto LABEL_32;
      }
    }

LABEL_24:
    if (v31 > 1)
    {
LABEL_49:
      if (v31 != 2)
      {
        goto LABEL_64;
      }

      v49 = *(v13 + 16);
      v32 = *(v13 + 24);
      v22 = __OFSUB__(v32, v49);
      LOBYTE(v32) = v32 - v49;
      if (v22)
      {
        goto LABEL_71;
      }
    }

    else
    {
      while (v31)
      {
        LOBYTE(v32) = BYTE4(v13) - v13;
        if (!__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_51;
        }

        __break(1u);
LABEL_42:
        v40 = *(v13 + 16);
        v39 = *(v13 + 24);
        v22 = __OFSUB__(v39, v40);
        v35 = v39 - v40;
        if (v22)
        {
          __break(1u);
LABEL_45:
          v35 = BYTE6(v30);
        }

LABEL_46:
        v41 = 16 - v35;
        if (__OFSUB__(16, v35))
        {
          goto LABEL_67;
        }

        v42 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
        v77 = v42;
        v78 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
        LOBYTE(v75) = -35;
        v73 = *sub_100029B34(&v75, v42);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100002A00(&v75);
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_68;
        }

        v43 = sub_10014345C(v41 - 1);
        v45 = v44;
        v77 = &type metadata for Data;
        v78 = &protocol witness table for Data;
        v75 = v43;
        v76 = v44;
        v46 = sub_100029B34(&v75, &type metadata for Data);
        v47 = *v46;
        v48 = v46[1];
        sub_10000AB0C(v43, v45);
        sub_100178A18(v47, v48, &v79);
        sub_1000124C8(v43, v45);
        sub_100002A00(&v75);
        v13 = v79;
        v30 = v80;
        v31 = v80 >> 62;
        if ((v80 >> 62) > 1)
        {
          goto LABEL_49;
        }
      }

      v32 = HIWORD(v30);
    }

LABEL_51:
    if ((v32 & 7) != 0)
    {
      if (v31)
      {
        if (v31 == 2)
        {
          v50 = *(v13 + 16);
          v51 = *(v13 + 24);
          v22 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          if (v22)
          {
            goto LABEL_72;
          }

          v53 = -v52 < 0;
          v54 = -v52 & 7;
          v55 = v52 & 7;
          if (v53)
          {
            v56 = v55;
          }

          else
          {
            v56 = -v54;
          }
        }

        else
        {
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_73;
          }

          v57 = (BYTE4(v13) - v13) & 7;
          if (v13 - HIDWORD(v13) >= 0)
          {
            v57 = -((v13 - HIDWORD(v13)) & 7);
          }

          v56 = v57;
        }
      }

      else
      {
        v56 = HIWORD(v30) & 7;
      }

      v58 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
      v77 = v58;
      v78 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
      LOBYTE(v75) = -35;
      v73 = *sub_100029B34(&v75, v58);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100002A00(&v75);
      v59 = sub_10014345C(7 - v56);
      v61 = v60;
      v77 = &type metadata for Data;
      v78 = &protocol witness table for Data;
      v75 = v59;
      v76 = v60;
      v62 = sub_100029B34(&v75, &type metadata for Data);
      v63 = *v62;
      v64 = v62[1];
      sub_10000AB0C(v59, v61);
      sub_100178A18(v63, v64, &v79);
      sub_1000124C8(v59, v61);
      sub_100002A00(&v75);
      v13 = v79;
      v30 = v80;
    }

LABEL_64:
    sub_10000AB0C(v13, v30);
    sub_1000124C8(v13, v30);
    return v13;
  }

  v69 = v5;
  v75 = _swiftEmptyArrayStorage;
  sub_1000C06C4(0, v9, 0);
  v10 = v75;
  v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v68 = (v3 + 8);
  v66 = *(v6 + 72);
  v67 = xmmword_100480A90;
  while (1)
  {
    v71 = v10;
    sub_1002774DC(v11, v8, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    type metadata accessor for BinaryEncoder();
    v12 = swift_allocObject();
    *(v12 + 16) = v67;
    *(v12 + 32) = &_swiftEmptyDictionarySingleton;
    v74 = v12;
    swift_retain_n();
    sub_10005DC58(&qword_1005938B8, &qword_1004ABB78);
    sub_10000CADC(&qword_1005938C0, &qword_1005938B8, &qword_1004ABB78, byte_10049852C);
    v13 = v69;
    KeyedEncodingContainer.init<A>(_:)();
    v14 = v8[2];
    LOWORD(v74) = *v8;
    BYTE2(v74) = v14;
    v73 = 0;
    sub_1001F5AF0();
    v15 = v72;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v1)
    {
      break;
    }

    LOBYTE(v74) = v8[3];
    v73 = 1;
    sub_100279984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v74) = 2;
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    sub_10027784C(&qword_100592568, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData, protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    v16 = v72;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v68)(v13, v16);

    swift_beginAccess();
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    sub_10000AB0C(v18, v17);

    v19 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          goto LABEL_66;
        }

        if (v23 >= 255)
        {
LABEL_27:
          sub_10000B02C();
          swift_allocError();
          *v33 = 0;
          *(v33 + 8) = 0;
          *(v33 + 16) = 2;
          swift_willThrow();
          sub_1000124C8(v18, v17);
          sub_100277544(v8, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

          return v13;
        }
      }
    }

    else if (v19)
    {
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      if (HIDWORD(v18) - v18 >= 255)
      {
        goto LABEL_27;
      }
    }

    else if (BYTE6(v17) == 255)
    {
      goto LABEL_27;
    }

    sub_100277544(v8, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v10 = v71;
    v75 = v71;
    v25 = v71[2];
    v24 = v71[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000C06C4((v24 > 1), v25 + 1, 1);
      v10 = v75;
    }

    v10[2] = v25 + 1;
    v26 = &v10[3 * v25];
    *(v26 + 32) = -35;
    v26[5] = v18;
    v26[6] = v17;
    v11 += v66;
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  (*v68)(v13, v15);
  sub_100277544(v8, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

  return v13;
}