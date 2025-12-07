uint64_t sub_10015D1D4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015D070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D274@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroPrimitiveSchema.float.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015D29C(uint64_t a1)
{
  v2 = sub_100161480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D2D8(uint64_t a1)
{
  v2 = sub_100161480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InternalError.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AvroRecordSchema.Field.init(name:type:optional:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000AA8C();
  if (v4)
  {
    sub_100046184(&qword_10021F680, &qword_1001A44F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100198F10;
    if (qword_10021F5B0 != -1)
    {
      sub_10000B150(&qword_10021F5B0);
    }

    *(v5 + 32) = static AvroSchema.null;
    *(v5 + 40) = a3;
    sub_1000068B4();
    v6 = swift_allocObject();
    AvroUnionSchema.init(of:)(v5);
    *(v6 + 16) = v5;
  }

  return sub_10000672C();
}

uint64_t sub_10015D414(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10015D4E4(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10015D50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015D414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D534(uint64_t a1)
{
  v2 = sub_1001629CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D570(uint64_t a1)
{
  v2 = sub_1001629CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AvroRecordSchema.__derived_struct_equals(_:_:)()
{
  sub_10000AA8C();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[5];
  v6 = v0[5];
  if (v5)
  {
    if (v6)
    {
      v7 = v1[4] == v0[4] && v5 == v6;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_18:
  v8 = v1[6];
  v9 = v0[6];

  return sub_10015EECC(v8, v9);
}

uint64_t sub_10015D69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (!v3 || a1 == a2)
  {
    return 1;
  }

  v4 = 0;
  v278 = 0;
  v291 = a2 + 32;
  v292 = a1 + 32;
  v281 = *(a1 + 16);
  while (2)
  {
    v5 = 9 * v4++;
    memcpy(__dst, (v292 + 8 * v5), 0x41uLL);
    memcpy(v309, (v291 + 8 * v5), 0x41uLL);
    v6 = *&__dst[0];
    v7 = *&__dst[2];
    v8 = *&__dst[3];
    v9 = *&__dst[4];
    v10 = __dst[5];
    switch(LOBYTE(__dst[8]))
    {
      case 1:
        if (LOBYTE(v309[8]) != 1)
        {
          return 0;
        }

        sub_10000FED0();
        v45 = v27 && v43 == v44;
        if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v46 = sub_100005B04();
        sub_100163ABC(v46, v47);
        v48 = sub_100008C08();
        sub_100163ABC(v48, v49);
        v50 = sub_10000AC38();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v51) & 1) == 0)
        {
          goto LABEL_344;
        }

        v52 = v8;
        v53 = v9;
        goto LABEL_167;
      case 2:
        if (LOBYTE(v309[8]) != 2)
        {
          return 0;
        }

        sub_10000FED0();
        v27 = v27 && v25 == v26;
        if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v28 = sub_100005B04();
        sub_100163ABC(v28, v29);
        v30 = sub_100008C08();
        sub_100163ABC(v30, v31);
        v32 = sub_10000AC38();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v32, v33) & 1) == 0)
        {
          goto LABEL_344;
        }

        v34 = sub_100175A24(v8, v9);
        goto LABEL_168;
      case 3:
        v280 = *&__dst[7];
        if (LOBYTE(v309[8]) != 3)
        {
          return 0;
        }

        v285 = v4;
        v35 = *&v309[2];
        v36 = v309[3];
        v37 = v309[4];
        v2 = v309[5];
        v286 = *&v309[6];
        v287 = *&__dst[6];
        v279 = *&v309[7];
        v38 = *&__dst[0] == *&v309[0] && *&__dst[1] == *&v309[1];
        if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v39 = v7 == v35 && v8 == *&v36;
        if (!v39 && (sub_100163F88(v7, v8, v35) & 1) == 0)
        {
          return 0;
        }

        if (v10 == 0.0)
        {
          v4 = v285;
          v40 = v286;
          v41 = v287;
          if (v2 != 0.0)
          {
            return 0;
          }
        }

        else
        {
          v4 = v285;
          v40 = v286;
          v41 = v287;
          if (v2 == 0.0)
          {
            return 0;
          }

          if (v9 != *&v37 || *&v10 != *&v2)
          {
            sub_100007CD4();
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }
        }

        v54 = v41[2];
        if (v54 != v40[2])
        {
          return 0;
        }

        if (!v54 || v41 == v40)
        {
          v124 = sub_100005B04();
          sub_100163ABC(v124, v125);
          v126 = sub_100008C08();
          sub_100163ABC(v126, v127);
LABEL_166:
          v53 = v279;
          v52 = v280;
LABEL_167:
          v34 = sub_10015D69C(v52, v53);
LABEL_168:
          v128 = v34;
          sub_100096480(v309);
          sub_100096480(__dst);
          if ((v128 & 1) == 0)
          {
            return 0;
          }

LABEL_284:
          result = 1;
          if (v4 == v3)
          {
            return result;
          }

          continue;
        }

        v55 = v41[4];
        v56 = v41[5];
        v57 = v41[6];
        v58 = v40[4];
        v59 = v40[5];
        v60 = v40[6];
        v61 = v55 == v58 && v56 == v59;
        if (v61 || (sub_100163F88(v55, v41[5], v58) & 1) != 0)
        {
          v62 = sub_100005B04();
          sub_100163ABC(v62, v63);
          v64 = sub_100008C08();
          sub_100163ABC(v64, v65);
          v66 = v41 + 9;
          v67 = v40 + 9;
          v68 = 1;
          v282 = v54;
          while (1)
          {
            v69 = v60 >> 61;
            v290 = v66;
            v288 = v68;
            *&v289 = v67;
            switch(v57 >> 61)
            {
              case 1uLL:
                if (v69 != 1)
                {
                  goto LABEL_344;
                }

                v96 = sub_10001ACA8();
                v99 = v27 && v97 == v59;
                if (!v99 && (sub_100163F88(v96, v97, v98) & 1) == 0)
                {
                  goto LABEL_344;
                }

                v79 = v57 >> 61;
                switch(v54 >> 61)
                {
                  case 1uLL:
                    goto LABEL_116;
                  case 2uLL:
                    goto LABEL_114;
                  case 3uLL:
                    v117 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v310 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v311 = v117;
                    v312 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v313 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                    if (v79 != 3)
                    {
                      goto LABEL_344;
                    }

                    v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                    v118 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v314[0] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v314[1] = v118;
                    v314[2] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v315 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                    sub_1000967A0(v314, v307);
                    v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                    v82 = v314;
                    break;
                  case 4uLL:
                    goto LABEL_111;
                  default:
                    goto LABEL_105;
                }

LABEL_128:
                sub_100161354(v82);

                goto LABEL_129;
              case 2uLL:
                if (v69 != 2)
                {
                  goto LABEL_344;
                }

                v75 = sub_10001ACA8();
                v78 = v27 && v76 == v59;
                if (!v78 && (sub_100163F88(v75, v76, v77) & 1) == 0)
                {
                  goto LABEL_344;
                }

                break;
              case 3uLL:
                if (v69 != 3)
                {
                  goto LABEL_344;
                }

                v283 = v56;
                v284 = v59;
                v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                v83 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v84 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v85 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v2 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
                v86 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v87 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
                v276 = v86;
                v277 = *(v54 + 64);
                v88 = (v60 & 0x1FFFFFFFFFFFFFFFLL);
                v89 = v88[4];
                v90 = v88[5];
                v91 = v88[7];
                v275 = v88[6];
                v92 = v88[8];
                v93 = v83 == v88[2] && v84 == v88[3];
                if (!v93 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_344;
                }

                v94 = v85 == v89 && *&v2 == v90;
                if (!v94 && (sub_100163F88(v85, *&v2, v89) & 1) == 0)
                {
                  goto LABEL_344;
                }

                if (v87)
                {
                  if (!v91)
                  {
                    goto LABEL_344;
                  }

                  v95 = v276 == v275 && v87 == v91;
                  if (!v95 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_344;
                  }
                }

                else if (v91)
                {
                  goto LABEL_344;
                }

                sub_10015EECC(v277, v92);
                sub_10000835C();

LABEL_151:

                if ((LOBYTE(v2) & 1) == 0)
                {
                  goto LABEL_344;
                }

                goto LABEL_155;
              case 4uLL:
                if (v69 != 4)
                {
                  goto LABEL_344;
                }

                v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                v2 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                v73 = sub_1000385F0();
                _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v73, v74);
                sub_10000835C();

                goto LABEL_151;
              default:
                if (v69)
                {
                  goto LABEL_344;
                }

                v70 = *(v60 + 16);
                v71 = 0xE400000000000000;
                v72 = 1819047278;
                switch(*(v57 + 16))
                {
                  case 1:
                    v71 = 0xE700000000000000;
                    v72 = sub_10000AFA4();
                    break;
                  case 2:
                    v71 = 0xE300000000000000;
                    v72 = 7630441;
                    break;
                  case 3:
                    v72 = 1735290732;
                    break;
                  case 4:
                    v71 = 0xE500000000000000;
                    v72 = sub_100163FD8();
                    break;
                  case 5:
                    v71 = 0xE600000000000000;
                    v72 = sub_10000CEF8();
                    break;
                  case 6:
                    v71 = 0xE600000000000000;
                    v72 = sub_100163FA0();
                    break;
                  case 7:
                    v71 = 0xE500000000000000;
                    v72 = sub_100163FC8();
                    break;
                  default:
                    break;
                }

                v54 = 0xE400000000000000;
                v119 = 1819047278;
                switch(v70)
                {
                  case 1:
                    v54 = 0xE700000000000000;
                    sub_10000CAEC();
                    break;
                  case 2:
                    v54 = 0xE300000000000000;
                    v119 = 7630441;
                    break;
                  case 3:
                    v119 = 1735290732;
                    break;
                  case 4:
                    v54 = 0xE500000000000000;
                    sub_10000CD10();
                    break;
                  case 5:
                    v54 = 0xE600000000000000;
                    sub_100013634();
                    break;
                  case 6:
                    v54 = 0xE600000000000000;
                    sub_100014CC8();
                    break;
                  case 7:
                    v54 = 0xE500000000000000;
                    sub_100018A08();
                    break;
                  default:
                    break;
                }

                if (v72 != v119 || v71 != v54)
                {
                  v2 = COERCE_DOUBLE(sub_10000FFF0(v72, v71, v119));

                  goto LABEL_151;
                }

                goto LABEL_154;
            }

            v79 = v57 >> 61;
            switch(v54 >> 61)
            {
              case 1uLL:
LABEL_116:
                if (v79 != 1)
                {
                  goto LABEL_344;
                }

                goto LABEL_117;
              case 2uLL:
LABEL_114:
                if (v79 != 2)
                {
                  goto LABEL_344;
                }

LABEL_117:
                v113 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v114 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v277 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v115 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v54 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v2 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v116 = v113 == v115 && v114 == v54;
                if (!v116 && (sub_10000FFF0(v113, v114, v115) & 1) == 0)
                {
                  goto LABEL_344;
                }

                LODWORD(v277) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v277, *&v2);

                if ((v277 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              case 3uLL:
                v80 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v316 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v317 = v80;
                v318 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v319 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                if (v79 != 3)
                {
                  goto LABEL_344;
                }

                v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                v81 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v320[0] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v320[1] = v81;
                v320[2] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v321 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                sub_1000967A0(v320, v307);
                v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                v82 = v320;
                goto LABEL_128;
              case 4uLL:
LABEL_111:
                if (v79 != 4)
                {
                  goto LABEL_344;
                }

                *&v2 = v57 & 0x1FFFFFFFFFFFFFFFLL;

                v111 = sub_100007CD4();
                v54 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v111, v112);

                if ((v54 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              default:
LABEL_105:
                if (v79)
                {
                  goto LABEL_344;
                }

                v100 = *(v54 + 16);
                v101 = *(v57 + 16);
                v102 = sub_1001608C8(v100);
                v104 = v103;
                v105 = sub_1001608C8(v101);
                v54 = v106;
                if (v102 == v105 && v104 == v106)
                {

                  v2 = *&v284;

LABEL_154:
                }

                else
                {
                  v108 = sub_10000BE80();
                  v2 = COERCE_DOUBLE(sub_10000FFF0(v108, v109, v110));

LABEL_129:

                  if ((LOBYTE(v2) & 1) == 0)
                  {
LABEL_337:

                    goto LABEL_344;
                  }

LABEL_130:
                }

LABEL_155:
                if (v282 == v288)
                {
                  v3 = v281;
                  v4 = v285;
                  goto LABEL_166;
                }

                if (v288 >= v282)
                {
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  sub_100163B74(v305);
LABEL_342:
                  sub_100163B74(v306);
                  goto LABEL_343;
                }

                if (v288 >= *(v287 + 16))
                {
                  goto LABEL_339;
                }

                if (v288 >= *(v286 + 16))
                {
                  goto LABEL_340;
                }

                v121 = *(v290 - 2);
                v56 = *(v290 - 1);
                v57 = *v290;
                v122 = *(v289 - 16);
                v59 = *(v289 - 8);
                v60 = *v289;
                v123 = v121 == v122 && v56 == v59;
                if (!v123 && (sub_100163F88(v121, *(v290 - 1), v122) & 1) == 0)
                {
                  goto LABEL_344;
                }

                v66 = v290 + 3;
                v67 = (v289 + 24);
                v68 = v288 + 1;
                break;
            }
          }
        }

        return 0;
      case 4:
        if (LOBYTE(v309[8]) != 4)
        {
          return 0;
        }

        v285 = v4;
        v13 = *(*&__dst[0] + 32);
        *&v289 = *(*&__dst[0] + 40);
        v15 = *(*&__dst[0] + 48);
        v14 = *(*&__dst[0] + 56);
        v16 = *(*&__dst[0] + 64);
        v17 = *(*&__dst[0] + 72);
        v18 = *(*&__dst[0] + 80);
        v19 = *(*&__dst[0] + 88);
        v290 = *(*&__dst[0] + 96);
        v20 = *(*&__dst[0] + 16);
        v2 = *(*&__dst[0] + 24);
        memcpy(v307, (*&v309[0] + 16), sizeof(v307));
        v21 = v307[0];
        sub_100163ABC(__dst, v306);
        sub_100163ABC(v309, v306);
        sub_100163B18(v307, v306);
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21) & 1) == 0)
        {
          goto LABEL_343;
        }

        switch(v19)
        {
          case 1:
            if (LOBYTE(v307[9]) != 1)
            {
              goto LABEL_343;
            }

            v157 = v307[3];
            v156 = v307[4];
            if (*&v2 != v307[1] || v13 != v307[2])
            {
              sub_10000DC5C();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v289, v157) & 1) == 0)
            {
              goto LABEL_343;
            }

            v149 = sub_10015D69C(v15, v156);
            goto LABEL_210;
          case 2:
            if (LOBYTE(v307[9]) != 2)
            {
              goto LABEL_343;
            }

            v147 = v307[3];
            v146 = v307[4];
            if (*&v2 != v307[1] || v13 != v307[2])
            {
              sub_10000DC5C();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v289, v147) & 1) == 0)
            {
              goto LABEL_343;
            }

            v149 = sub_100175A24(v15, v146);
LABEL_210:
            v159 = v149;
            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            v3 = v281;
            v4 = v285;
            if ((v159 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_283;
          case 3:
            if (LOBYTE(v307[9]) != 3)
            {
              goto LABEL_343;
            }

            v151 = v307[3];
            v150 = v307[4];
            v152 = v307[6];
            v288 = v307[7];
            v286 = v307[5];
            v287 = v307[8];
            if (*&v2 != v307[1] || v13 != v307[2])
            {
              sub_10000DC5C();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            v154 = v289 == v151 && v15 == v150;
            if (!v154 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_343;
            }

            if (v16)
            {
              v4 = v285;
              if (!v152 || (v14 == v286 ? (v155 = v16 == v152) : (v155 = 0), !v155 && (sub_100007CD4(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)))
              {
LABEL_343:
                sub_100163B74(v307);
LABEL_344:
                sub_100096480(v309);
                sub_100096480(__dst);
                return 0;
              }
            }

            else
            {
              v4 = v285;
              if (v152)
              {
                goto LABEL_343;
              }
            }

            if ((sub_10015EECC(v17, v288) & 1) == 0)
            {
              goto LABEL_343;
            }

            v173 = sub_10015D69C(v18, v287);
            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            v3 = v281;
            if ((v173 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_283;
          case 4:
            if (LOBYTE(v307[9]) != 4)
            {
              goto LABEL_343;
            }

            v130 = *(*&v2 + 32);
            v129 = *(*&v2 + 40);
            v131 = *(*&v2 + 48);
            v289 = *(*&v2 + 56);
            v132 = *(*&v2 + 72);
            v133 = *(*&v2 + 88);
            v134 = *(*&v2 + 96);
            v136 = *&v2 + 16;
            v2 = *(*&v2 + 16);
            v135 = *(v136 + 8);
            memcpy(v306, (v307[1] + 16), sizeof(v306));
            sub_100163B18(v306, v305);
            v137 = sub_10000DC5C();
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v137, v138))
            {
              switch(v133)
              {
                case 1:
                  if (v306[72] != 1)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v306[32];
                  if (v135 != *&v306[8] || v130 != *&v306[16])
                  {
                    sub_1000078A0();
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v206 = sub_100007FC8();
                  v3 = v281;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v206, v207) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v208 = sub_10000BB84();
                  v201 = sub_10015D69C(v208, v209);
                  goto LABEL_280;
                case 2:
                  if (v306[72] != 2)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v306[32];
                  if (v135 != *&v306[8] || v130 != *&v306[16])
                  {
                    sub_1000078A0();
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v197 = sub_100007FC8();
                  v3 = v281;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v197, v198) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v199 = sub_10000BB84();
                  v201 = sub_100175A24(v199, v200);
LABEL_280:
                  v210 = v201;
                  sub_100163B74(v306);
                  sub_100163B74(v307);
                  sub_100096480(v309);
                  sub_100096480(__dst);
                  if (v210)
                  {
                    goto LABEL_281;
                  }

                  return 0;
                case 3:
                  if (v306[72] != 3)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v306[64];
                  v322 = v135;
                  v323 = v130;
                  v324 = v129;
                  v325 = v131;
                  v326 = v289;
                  v327 = v132;
                  v328 = *&v306[8];
                  v329 = *&v306[24];
                  v330 = *&v306[32];
                  v331 = *&v306[40];
                  v332 = *&v306[56];
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v202 = sub_10000AC38();
                  v145 = sub_10015D69C(v202, v203);
                  goto LABEL_270;
                case 4:
                  memcpy(v333, (v135 + 24), 0x41uLL);
                  if (v306[72] != 4)
                  {
                    goto LABEL_342;
                  }

                  v192 = *(v135 + 96);
                  memcpy(v305, (*&v306[8] + 16), sizeof(v305));
                  v2 = *v305;
                  sub_100163B18(v305, &v294);
                  v193 = sub_1000041F8();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v193, v194) & 1) == 0)
                  {
                    goto LABEL_341;
                  }

                  memcpy(v334, &v305[1], 0x41uLL);
                  v195 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v333, v334);
                  sub_100163B74(v305);
                  sub_100163B74(v306);
                  sub_100163B74(v307);
                  sub_100096480(v309);
                  sub_100096480(__dst);
                  v3 = v281;
                  if ((v195 & 1) == 0 || v192 != v305[10])
                  {
                    return 0;
                  }

                  goto LABEL_281;
                default:
                  if (v306[72])
                  {
                    goto LABEL_342;
                  }

                  v139 = sub_1000078A0();
                  v145 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v139, v140, v129, v131, v141, v142, v143, v144);
LABEL_270:
                  v204 = v145;
                  sub_100163B74(v306);
                  sub_100163B74(v307);
                  sub_100096480(v309);
                  sub_100096480(__dst);
                  v3 = v281;
                  if ((v204 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_281:
                  v27 = v134 == *&v306[80];
                  v4 = v285;
                  if (!v27)
                  {
                    return 0;
                  }

                  goto LABEL_283;
              }
            }

            goto LABEL_342;
          default:
            if (LOBYTE(v307[9]))
            {
              goto LABEL_343;
            }

            break;
        }

        v22 = *&v307[1];
        v23 = v307[2];
        v24 = LOBYTE(v307[4]);
        v3 = v281;
        switch(v15)
        {
          case 1:
            v4 = v285;
            if (LOBYTE(v307[4]) != 1)
            {
              goto LABEL_343;
            }

            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            if (LODWORD(v2) != LODWORD(v22))
            {
              return 0;
            }

            goto LABEL_283;
          case 2:
            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            v4 = v285;
            if (v24 != 2 || *&v2 != *&v22)
            {
              return 0;
            }

            goto LABEL_283;
          case 3:
            v4 = v285;
            if (LOBYTE(v307[4]) != 3)
            {
              goto LABEL_343;
            }

            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            if (*&v2 != *&v22)
            {
              return 0;
            }

            goto LABEL_283;
          case 4:
            v4 = v285;
            if (LOBYTE(v307[4]) != 4)
            {
              goto LABEL_343;
            }

            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            if (v2 != v22)
            {
              return 0;
            }

            goto LABEL_283;
          case 5:
            v4 = v285;
            if (LOBYTE(v307[4]) != 5)
            {
              goto LABEL_343;
            }

            if (*&v2 == v307[1] && v13 == v307[2])
            {
LABEL_308:
              sub_100163B74(v307);
              sub_100096480(v309);
              sub_100096480(__dst);
            }

            else
            {
              sub_10000DC5C();
              v213 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100163B74(v307);
              sub_100096480(v309);
              sub_100096480(__dst);
              if ((v213 & 1) == 0)
              {
                return 0;
              }
            }

            goto LABEL_283;
          case 6:
            v4 = v285;
            if (LOBYTE(v307[4]) != 6)
            {
              goto LABEL_343;
            }

            if (((v13 >> 60) & 3) != 0)
            {
              v214 = sub_10000DC5C();
              sub_100163C88(v214, v215, v289, 6);
            }

            else
            {
              v228 = sub_100046184(&qword_100217F20, &qword_1001A5520);
              *&v306[24] = v228;
              *&v306[32] = sub_100163BC8();
              *v306 = v2;
              v229 = sub_100007534(v306, v228);
              v230 = *v229 + 32;
              v231 = *(*v229 + 16);
              v232 = sub_10000DC5C();
              sub_100163C88(v232, v233, v289, 6);
              sub_1000F891C(v230, v230 + v231, v305);
              if (v278)
              {
                goto LABEL_346;
              }

              sub_100007378(v306);
            }

            sub_10000BE80();
            v234 = Data.hashValue.getter();
            v235 = sub_10000BE80();
            sub_100014A40(v235, v236);
            if (((v23 >> 60) & 3) != 0)
            {
              *&v2 = v23 & 0xCFFFFFFFFFFFFFFFLL;
              sub_100163ABC(&v307[1], v306);
            }

            else
            {
              v237 = sub_100046184(&qword_100217F20, &qword_1001A5520);
              v305[3] = v237;
              v305[4] = sub_100163BC8();
              *v305 = v22;
              v238 = sub_100007534(v305, v237);
              v239 = *v238 + 32;
              v240 = *(*v238 + 16);
              sub_100163ABC(&v307[1], v306);
              sub_1000F891C(v239, v239 + v240, v306);
              if (v278)
              {
LABEL_346:

                __break(1u);
                return result;
              }

              v2 = *&v306[8];
              sub_100007378(v305);
            }

            sub_10000BB84();
            v241 = Data.hashValue.getter();
            v242 = sub_10000BB84();
            sub_100014A40(v242, v243);
            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            if (v234 != v241)
            {
              return 0;
            }

LABEL_283:
            if (v290 != v307[10])
            {
              return 0;
            }

            break;
          case 7:
            v4 = v285;
            if (LOBYTE(v307[4]) != 7 || v307[1] | v307[3] | v307[2])
            {
              goto LABEL_343;
            }

            goto LABEL_308;
          default:
            sub_100163B74(v307);
            sub_100096480(v309);
            sub_100096480(__dst);
            v4 = v285;
            if (v24 || ((LODWORD(v22) ^ LODWORD(v2)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_283;
        }

        goto LABEL_284;
      default:
        if (!LOBYTE(v309[8]))
        {
          v11 = *&v309[0];
          v12 = v309[1];
          switch(LOBYTE(__dst[3]))
          {
            case 1:
              if (LOBYTE(v309[3]) != 1 || LODWORD(__dst[0]) != LODWORD(v309[0]))
              {
                return 0;
              }

              goto LABEL_284;
            case 2:
              if (LOBYTE(v309[3]) != 2 || *&__dst[0] != *&v309[0])
              {
                return 0;
              }

              goto LABEL_284;
            case 3:
              if (LOBYTE(v309[3]) != 3 || *__dst != *v309)
              {
                return 0;
              }

              goto LABEL_284;
            case 4:
              if (LOBYTE(v309[3]) != 4 || __dst[0] != v309[0])
              {
                return 0;
              }

              goto LABEL_284;
            case 5:
              if (LOBYTE(v309[3]) != 5)
              {
                return 0;
              }

              v164 = *&__dst[0] == *&v309[0] && *&__dst[1] == *&v309[1];
              if (!v164 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_284;
            case 6:
              v165 = v274;
              if (LOBYTE(v309[3]) != 6)
              {
                return 0;
              }

              if (((*&__dst[1] >> 60) & 3) != 0)
              {
                v166 = *&__dst[1] & 0xCFFFFFFFFFFFFFFFLL;
                v167 = sub_100005B04();
                sub_100163ABC(v167, v168);
                v169 = sub_100005B04();
                sub_100163ABC(v169, v170);
                v171 = sub_100008C08();
                sub_100163ABC(v171, v172);
              }

              else
              {
                v174 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                *&v306[24] = v174;
                *&v306[32] = sub_100163BC8();
                *v306 = v6;
                v175 = sub_100007534(v306, v174);
                v183 = *(*v175 + 16);
                if (v183)
                {
                  if (v183 <= 0xE)
                  {
                    sub_1000077A4(v175, v176, v177, v178, v179, v180, v181, v182, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, *(&v289 + 1), v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0], v305[1], v305[2], v305[3], v305[4], v305[5], v305[6], v305[7], v305[8], v305[9], v305[10], *v306, *&v306[8], *&v306[16], *&v306[24], *&v306[32], *&v306[40], *&v306[48], *&v306[56], *&v306[64], *&v306[72], *&v306[80]);
                    v6 = v307[0];
                    sub_10002DF74();
                    v222 = sub_100005B04();
                    sub_100163ABC(v222, v223);
                    v224 = sub_100005B04();
                    sub_100163ABC(v224, v225);
                    v226 = sub_100008C08();
                    sub_100163ABC(v226, v227);
                    v166 = v165;
                  }

                  else
                  {
                    v184 = type metadata accessor for __DataStorage();
                    sub_1000E2424(v184);
                    sub_100164020();
                    v185 = sub_100005B04();
                    if (v183 >= v187)
                    {
                      sub_100163ABC(v185, v186);
                      v244 = sub_100005B04();
                      sub_100163ABC(v244, v245);
                      v246 = sub_100008C08();
                      sub_100163ABC(v246, v247);
                      sub_10016408C();
                      sub_10000899C();
                      v248 = type metadata accessor for Data.RangeReference();
                      v6 = sub_10000B9C4(v248);
                      *(v6 + 16) = 0;
                      *(v6 + 24) = v183;
                      v166 = *&v2 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_100163ABC(v185, v186);
                      v188 = sub_100005B04();
                      sub_100163ABC(v188, v189);
                      v190 = sub_100008C08();
                      sub_100163ABC(v190, v191);
                      v6 = v183 << 32;
                      v166 = sub_10016408C() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v216 = sub_100005B04();
                  sub_100163ABC(v216, v217);
                  v218 = sub_100005B04();
                  sub_100163ABC(v218, v219);
                  v220 = sub_100008C08();
                  sub_100163ABC(v220, v221);
                  v6 = 0;
                  v166 = 0xC000000000000000;
                }

                v274 = v165;
                sub_100007378(v306);
              }

              v249 = Data.hashValue.getter();
              sub_100014A40(v6, v166);
              if (((*&v12 >> 60) & 3) != 0)
              {
                v250 = *&v12 & 0xCFFFFFFFFFFFFFFFLL;
                v251 = sub_100008C08();
                sub_100163ABC(v251, v252);
              }

              else
              {
                v253 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                *&v306[24] = v253;
                *&v306[32] = sub_100163BC8();
                *v306 = v11;
                v254 = sub_100007534(v306, v253);
                v262 = *(*v254 + 16);
                if (v262)
                {
                  v263 = v273;
                  if (v262 <= 0xE)
                  {
                    sub_1000077A4(v254, v255, v256, v257, v258, v259, v260, v261, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, *(&v289 + 1), v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0], v305[1], v305[2], v305[3], v305[4], v305[5], v305[6], v305[7], v305[8], v305[9], v305[10], *v306, *&v306[8], *&v306[16], *&v306[24], *&v306[32], *&v306[40], *&v306[48], *&v306[56], *&v306[64], *&v306[72], *&v306[80]);
                    v11 = v307[0];
                    v250 = v263 & 0xF00000000000000 | LODWORD(v307[1]) | ((WORD2(v307[1]) | (BYTE6(v307[1]) << 16)) << 32);
                    v270 = sub_100008C08();
                    sub_100163ABC(v270, v271);
                    v273 = v250;
                  }

                  else
                  {
                    v264 = type metadata accessor for __DataStorage();
                    sub_1000E2424(v264);
                    sub_100164020();
                    v265 = sub_100008C08();
                    if (v262 >= v267)
                    {
                      sub_100163ABC(v265, v266);
                      sub_10016408C();
                      sub_10000899C();
                      v272 = type metadata accessor for Data.RangeReference();
                      v11 = sub_10000B9C4(v272);
                      *(v11 + 16) = 0;
                      *(v11 + 24) = v262;
                      v250 = v273 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_100163ABC(v265, v266);
                      v11 = v262 << 32;
                      v250 = sub_10016408C() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v268 = sub_100008C08();
                  sub_100163ABC(v268, v269);
                  v11 = 0;
                  v250 = 0xC000000000000000;
                }

                sub_100007378(v306);
              }

              v2 = COERCE_DOUBLE(Data.hashValue.getter());
              sub_100014A40(v11, v250);
              sub_100096480(v309);
              sub_100096480(__dst);
              if (v249 != *&v2)
              {
                return 0;
              }

              goto LABEL_284;
            case 7:
              if (LOBYTE(v309[3]) != 7 || *&v309[0] | *&v309[2] | *&v309[1])
              {
                return 0;
              }

              goto LABEL_284;
            default:
              if (LOBYTE(v309[3]) || ((LODWORD(v309[0]) ^ LODWORD(__dst[0])) & 1) != 0)
              {
                return 0;
              }

              goto LABEL_284;
          }
        }

        return 0;
    }
  }
}

uint64_t sub_10015EECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *(v3 - 2);
      v6 = *v3;
      v7 = *(i - 2);
      v8 = *i;
      v9 = v5 == v7 && *(v3 - 1) == *(i - 1);
      if (!v9 && (sub_10000FFF0(v5, *(v3 - 1), v7) & 1) == 0)
      {
        break;
      }

      v10 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v8);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v54 = a2 + 32;
  v55 = result + 32;
  while (2)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      return result;
    }

    v4 = v3++;
    v5 = *(v55 + 8 * v4);
    v6 = *(v54 + 8 * v4);
    v7 = v6 >> 61;
    switch(v5 >> 61)
    {
      case 1uLL:
        if (v7 != 1)
        {
          return 0;
        }

        goto LABEL_35;
      case 2uLL:
        if (v7 != 2)
        {
          return 0;
        }

LABEL_35:
        v27 = v3;
        v28 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v30 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v31 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v32 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v33 = v28 == v31 && v29 == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if (!v33 && (sub_10000FFF0(v28, v29, v31) & 1) == 0)
        {
          return 0;
        }

        v34 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v32);

        v3 = v27;
        if ((v34 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      case 3uLL:
        if (v7 != 3)
        {
          return 0;
        }

        v14 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
        result = v14[2];
        v15 = v14[3];
        v17 = v14[4];
        v16 = v14[5];
        v18 = v14[6];
        v19 = v14[7];
        v20 = v14[8];
        v22 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v21 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v23 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v52 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v53 = v21;
        v56 = v20;
        v57 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        if (result != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || v15 != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v21 = v53;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v17 != v22 || v16 != v21)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v19)
        {
          if (!v52)
          {
            return 0;
          }

          if (v18 != v23 || v19 != v52)
          {
            result = sub_10000FFF0(v18, v19, v23);
            if ((result & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v52)
        {
          return 0;
        }

        v36 = v56;
        v35 = v57;
        v37 = *(v56 + 16);
        if (v37 != *(v57 + 16))
        {
          return 0;
        }

        if (v37)
        {
          v38 = v56 == v57;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
LABEL_80:
          if (v3 == v2)
          {
            return 1;
          }

          continue;
        }

        v50 = v3;
        v51 = v2;

        v39 = 0;
        v40 = (v56 + 48);
        v41 = (v57 + 48);
        while (1)
        {
          if (v39 >= *(v36 + 16))
          {
            goto LABEL_85;
          }

          if (v39 >= *(v35 + 16))
          {
            goto LABEL_86;
          }

          v42 = *v40;
          v43 = *v41;
          v44 = *(v40 - 2) == *(v41 - 2) && *(v40 - 1) == *(v41 - 1);
          if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v45 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v42, v43);

          if ((v45 & 1) == 0)
          {
            break;
          }

          ++v39;
          v40 += 3;
          v41 += 3;
          v36 = v56;
          v35 = v57;
          if (v37 == v39)
          {

            v3 = v50;
            v2 = v51;
            goto LABEL_80;
          }
        }

        return 0;
      case 4uLL:
        if (v7 != 4)
        {
          return 0;
        }

        v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v12 = sub_1000385F0();
        _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13);
        sub_10000835C();

        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      default:
        if (v7)
        {
          return 0;
        }

        v8 = *(v6 + 16);
        v9 = 0xE400000000000000;
        v10 = 1819047278;
        switch(*(v5 + 16))
        {
          case 1:
            v9 = 0xE700000000000000;
            v10 = sub_10000AFA4();
            break;
          case 2:
            v9 = 0xE300000000000000;
            v10 = 7630441;
            break;
          case 3:
            v10 = 1735290732;
            break;
          case 4:
            v9 = 0xE500000000000000;
            v10 = sub_100163FD8();
            break;
          case 5:
            v9 = 0xE600000000000000;
            v10 = sub_10000CEF8();
            break;
          case 6:
            v9 = 0xE600000000000000;
            v10 = sub_100163FA0();
            break;
          case 7:
            v9 = 0xE500000000000000;
            v10 = sub_100163FC8();
            break;
          default:
            break;
        }

        v46 = 0xE400000000000000;
        v47 = 1819047278;
        switch(v8)
        {
          case 1:
            v46 = 0xE700000000000000;
            sub_10000CAEC();
            break;
          case 2:
            v46 = 0xE300000000000000;
            v47 = 7630441;
            break;
          case 3:
            v47 = 1735290732;
            break;
          case 4:
            v46 = 0xE500000000000000;
            sub_10000CD10();
            break;
          case 5:
            v46 = 0xE600000000000000;
            sub_100013634();
            break;
          case 6:
            v46 = 0xE600000000000000;
            sub_100014CC8();
            break;
          case 7:
            v46 = 0xE500000000000000;
            sub_100018A08();
            break;
          default:
            break;
        }

        if (v10 == v47 && v9 == v46)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_80;
    }
  }
}

void AvroRecordSchema.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  String.hash(into:)();
  if (*(v2 + 40))
  {
    Hasher._combine(_:)(1u);
    sub_1000385F0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v2 + 48);

  sub_100162948(a1, v4);
}

Swift::Int AvroRecordSchema.hashValue.getter(uint64_t a1)
{
  sub_100006A80(a1);
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100162948(v3, *(v1 + 48));
  return Hasher._finalize()();
}

Swift::Int sub_10015F65C(uint64_t a1)
{
  Hasher.init(_seed:)();
  AvroRecordSchema.hash(into:)(v2);
  return Hasher._finalize()();
}

void sub_10015F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100006A3C();
  v24 = v23;
  v38[1] = v25;
  v39 = v22;
  v38[0] = v26;
  v28 = v27;
  v31 = sub_100046184(v29, v30);
  sub_100003650();
  v33 = v32;
  sub_100003760();
  __chkstk_darwin(v34);
  v36 = v38 - v35;
  sub_100007534(v28, v28[3]);
  v24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37 = v39;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v37)
  {
    v40 = v38[0];
    sub_100164014();
    sub_100161300();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v33 + 8))(v36, v31);
  sub_100007FD4();
}

uint64_t AvroRecordSchema.Field.init(from:)()
{
  sub_10000BA14();
  v2 = sub_100046184(&qword_10021F698, &qword_1001A4500);
  sub_100003650();
  sub_100003760();
  __chkstk_darwin(v3);
  v4 = v0[4];
  v5 = sub_10000E044();
  sub_1000190A8(v5, v6);
  sub_1001629CC();
  sub_100163FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100162A20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10001BEF4();
    v9(v8, v2);
  }

  sub_100007378(v0);
  return v4;
}

void AvroRecordSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006A3C();
  sub_10000BA14();
  v27 = v26;
  sub_100046184(&qword_10021F6A8, &qword_1001A4508);
  sub_100003650();
  sub_100003760();
  __chkstk_darwin(v28);
  v29 = sub_10000C904();
  sub_1000190A8(v29, v30);
  sub_100161480();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    sub_100007378(v24);
  }

  else
  {
    sub_100163F08();
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v32;
    v45 = v31;
    sub_100164014();
    sub_100163F08();
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v35;
    v43 = v34;
    v44 = v27;
    sub_100163F08();
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v38;
    v42 = v37;
    sub_100046184(&qword_10021F640, &qword_1001A44E8);
    sub_100162A74(&qword_10021F6B0, sub_100162AE8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = sub_100007E6C();
    v41(v40);

    sub_100007378(v24);

    *v44 = v45;
    v44[1] = v33;
    v44[2] = v43;
    v44[3] = v36;
    v44[4] = v42;
    v44[5] = v39;
    v44[6] = v46;
  }

  sub_100007FD4();
}

double sub_10015FD2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  AvroRecordSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SBYTE4(v13), SBYTE5(v13), SBYTE6(v13), SHIBYTE(v13), v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t AvroRecordSchema.Field.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  String.append(_:)(*&a1);
  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v7._countAndFlagsBits = AvroSchema.description.getter(a3);
  sub_100014CD8(v7);

  v5._countAndFlagsBits = 125;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 123;
}

uint64_t AvroRecordSchema.description.getter()
{
  sub_100006D34();
  _StringGuts.grow(_:)(34);

  sub_100163F40();
  String.append(_:)(v0[1]);
  v1._countAndFlagsBits = 0x73646C656966202CLL;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  v4._countAndFlagsBits = Array.description.getter();
  sub_100014CD8(v4);

  sub_100012FAC();
  return v3;
}

uint64_t InternalError.description.getter()
{
  sub_10000AA8C();

  return sub_10000672C();
}

uint64_t AvroArraySchema.items.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10015FF4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100160010(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100160044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015FF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016006C(uint64_t a1)
{
  v2 = sub_1001613D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001600A8(uint64_t a1)
{
  v2 = sub_1001613D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroArraySchema.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.hash(into:)();
  v3 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v4);
}

uint64_t sub_1001601EC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t AvroArraySchema.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100006D34();
  _StringGuts.grow(_:)(22);

  sub_100163F40();
  v6._countAndFlagsBits = AvroSchema.description.getter(a3);
  sub_100014CD8(v6);

  sub_100012FAC();
  return v5;
}

uint64_t sub_1001602BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100160380(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1001603C0(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001603F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001602BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016041C(uint64_t a1)
{
  v2 = sub_10016142C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100160458(uint64_t a1)
{
  v2 = sub_10016142C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s9SwiftAvro0B11ArraySchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

Swift::Int _s9SwiftAvro0B11ArraySchemaV9hashValueSivg_0()
{
  sub_10000705C();
  sub_100006A80(v1);
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v0);
  return Hasher._finalize()();
}

Swift::Int sub_100160554(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  Hasher.init(_seed:)();
  a4(v10, v6, v7, v8);
  return Hasher._finalize()();
}

void sub_1001605F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100006A3C();
  v25 = v24;
  v27 = v26;
  v30 = sub_100046184(v28, v29);
  sub_100003650();
  sub_100003760();
  __chkstk_darwin(v31);
  v32 = sub_10000F698();
  sub_100007534(v32, v33);
  v25();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100164014();
    sub_100162A20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = sub_10001BEF4();
    v35(v34, v30);
  }

  sub_100007378(v27);
  sub_100007FD4();
}

unint64_t AvroMapSchema.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100006D34();
  _StringGuts.grow(_:)(21);

  v5._countAndFlagsBits = AvroSchema.description.getter(a3);
  sub_100014CD8(v5);

  sub_100012FAC();
  return 0xD000000000000012;
}

unint64_t sub_10016087C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002018B0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001608C8(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = sub_10000AFA4();
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 1735290732;
      break;
    case 4:
      result = sub_100163FD8();
      break;
    case 5:
      result = sub_10000CEF8();
      break;
    case 6:
      result = sub_100163FA0();
      break;
    case 7:
      result = sub_100163FC8();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001609AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016087C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001609DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001608C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100160A48(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_1001608C8(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static AvroPrimitiveSchema.__derived_struct_equals(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1819047278;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1819047278;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = sub_10000AFA4();
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7630441;
      break;
    case 3:
      v5 = 1735290732;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = sub_100163FD8();
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = sub_10000CEF8();
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = sub_100163FA0();
      break;
    case 7:
      v3 = 0xE500000000000000;
      v5 = sub_100163FC8();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      sub_10000CAEC();
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7630441;
      break;
    case 3:
      v2 = 1735290732;
      break;
    case 4:
      v6 = 0xE500000000000000;
      sub_10000CD10();
      break;
    case 5:
      v6 = 0xE600000000000000;
      sub_100013634();
      break;
    case 6:
      v6 = 0xE600000000000000;
      sub_100014CC8();
      break;
    case 7:
      v6 = 0xE500000000000000;
      sub_100018A08();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100160C14(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100160D04(uint64_t a1)
{
  v1 = a1;
  sub_100006A80(a1);
  sub_1001608C8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100160D70(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AvroPrimitiveSchema.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_100160E64(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_10000FFF0(1701869940, 0xE400000000000000, a1);
    sub_10000835C();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_100160EF4(uint64_t a1)
{
  sub_100006A80(a1);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100160F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100160E64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100160F64(uint64_t a1)
{
  v2 = sub_100161384();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100160FA0(uint64_t a1)
{
  v2 = sub_100161384();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroPrimitiveSchema.init(from:)()
{
  sub_100006A3C();
  v2 = v1;
  v3 = sub_100046184(&qword_10021F6D0, &qword_1001A4520);
  sub_100003650();
  v5 = v4;
  sub_100003760();
  __chkstk_darwin(v6);
  v8 = &v14[-1] - v7;
  v9 = sub_10000E044();
  sub_100007534(v9, v10);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v0)
  {
    v11 = sub_10000E044();
    sub_1000190A8(v11, v12);
    sub_100161384();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    sub_100162B3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    sub_1000190A8(v14, v14[3]);
    sub_100162B3C();
    sub_100163FFC();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100007378(v14);
  }

  sub_100007378(v2);
  sub_100007FD4();
}

void sub_1001611EC(_BYTE *a1@<X8>)
{
  AvroPrimitiveSchema.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

BOOL sub_100161250(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

unint64_t sub_100161300()
{
  result = qword_10021F5F8;
  if (!qword_10021F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F5F8);
  }

  return result;
}

unint64_t sub_100161384()
{
  result = qword_10021F608;
  if (!qword_10021F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F608);
  }

  return result;
}

unint64_t sub_1001613D8()
{
  result = qword_10021F618;
  if (!qword_10021F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F618);
  }

  return result;
}

unint64_t sub_10016142C()
{
  result = qword_10021F628;
  if (!qword_10021F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F628);
  }

  return result;
}

unint64_t sub_100161480()
{
  result = qword_10021F638;
  if (!qword_10021F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F638);
  }

  return result;
}

unint64_t sub_1001614D4()
{
  result = qword_10021F650;
  if (!qword_10021F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F650);
  }

  return result;
}

unint64_t sub_100161528()
{
  result = qword_10021F658;
  if (!qword_10021F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F658);
  }

  return result;
}

unint64_t sub_10016157C()
{
  result = qword_10021F660;
  if (!qword_10021F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F660);
  }

  return result;
}

unint64_t sub_1001615D0()
{
  result = qword_10021F668;
  if (!qword_10021F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F668);
  }

  return result;
}

unint64_t sub_100161624()
{
  result = qword_10021F670;
  if (!qword_10021F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F670);
  }

  return result;
}

unint64_t sub_100161678()
{
  result = qword_10021F678;
  if (!qword_10021F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F678);
  }

  return result;
}

void AvroUnionSchema.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_100023FCC(a1, a2);
  if (v2)
  {
    v4 = v3 + 32;
    do
    {
      v4 += 8;

      v5 = sub_10000BE80();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v5, v6);

      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_10016173C()
{
  sub_10000AA8C();
  sub_100006A80(v2);
  v0(v4, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001617A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t AvroUnionSchema.init(from:)()
{
  sub_10000BA14();
  sub_100007534(v3, v3[3]);
  sub_10016406C();
  if (!v2)
  {
    sub_1000190A8(v6, v6[3]);
    sub_100046184(&qword_10021F6E0, &qword_1001A4528);
    sub_100162B90();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v1 = v5;
    sub_100007378(v6);
  }

  sub_100007378(v0);
  return v1;
}

uint64_t sub_1001618F4@<X0>(uint64_t *a1@<X8>)
{
  result = AvroUnionSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_100161940(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  v223 = v4;
  if (v4)
  {
    v5 = 0;
    v222 = a2 + 32;
    do
    {
      v224 = v5;
      v6 = (v222 + 72 * v5);
      memcpy(__dst, v6, 0x41uLL);
      v7 = __dst[0];
      v8 = __dst[1];
      v9 = __dst[3];
      v10 = __dst[5];
      v11 = __dst[6];
      switch(LOBYTE(__dst[8]))
      {
        case 1:
          sub_100163EF0();
          v29 = sub_100011BBC();
          sub_100163ABC(v29, v30);
          sub_100007FC8();
          String.hash(into:)();
          v31 = sub_100012FA0();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v31, v32);
          v33 = sub_1000046E4();
          sub_100161940(v33, v34);
          goto LABEL_46;
        case 2:
          sub_100163ED8();
          v19 = sub_100011BBC();
          sub_100163ABC(v19, v20);
          sub_100007FC8();
          String.hash(into:)();
          v21 = sub_100012FA0();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v21, v22);
          v23 = sub_1000046E4();
          sub_10017831C(v23, v24);
          goto LABEL_46;
        case 3:
          memcpy(v244, v6, 0x41uLL);
          sub_100017CEC();
          v25 = sub_100164008();
          sub_100163C2C(v25, v26);
          v27 = sub_100164008();
          sub_100163C2C(v27, v28);
          sub_100007FC8();
          String.hash(into:)();
          sub_100012FA0();
          String.hash(into:)();
          if (v10)
          {
            sub_10000BBF0();
            sub_10000E284();
          }

          else
          {
            sub_10000FE6C();
          }

          v43 = v224;
          Hasher._combine(_:)(*(v11 + 16));
          for (i = *(v11 + 16); i; --i)
          {
            sub_100009A30();

            sub_1000041F8();
            String.hash(into:)();

            v45 = sub_10000C904();
            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v45, v46);
            sub_100163F58();
          }

          v47 = sub_10000E044();
          sub_100161940(v47, v48);
          goto LABEL_175;
        case 4:
          memcpy(v244, (__dst[0] + 16), sizeof(v244));
          sub_10001BCB0();
          v12 = v244[0];
          Hasher._combine(_:)(*(v244[0] + 16));
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = v12 + 32;
            sub_100037EC0();
            sub_100037EC0();
            v15 = sub_100164008();
            sub_100163B18(v15, v16);
            do
            {
              v14 += 8;

              v17 = sub_1000041F8();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v17, v18);

              --v13;
            }

            while (v13);
          }

          else
          {
            sub_100037EC0();
            sub_100037EC0();
            v35 = sub_100164008();
            sub_100163B18(v35, v36);
          }

          v37 = v244[1];
          v38 = v244[2];
          v39 = v244[4];
          v40 = v244[5];
          v41 = v244[6];
          v42 = v244[7];
          switch(LOBYTE(v244[9]))
          {
            case 1:
              sub_100163EF0();
              sub_100007FC8();
              String.hash(into:)();
              v55 = sub_100012FA0();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v55, v56);
              v57 = sub_1000046E4();
              sub_100161940(v57, v58);
              goto LABEL_30;
            case 2:
              sub_100163ED8();
              sub_100007FC8();
              String.hash(into:)();
              v51 = sub_100012FA0();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v51, v52);
              v53 = sub_1000046E4();
              sub_10017831C(v53, v54);
LABEL_30:
              v43 = v224;
              break;
            case 3:
              sub_100017CEC();
              sub_100007FC8();
              String.hash(into:)();
              sub_100012FA0();
              String.hash(into:)();
              if (v41)
              {
                sub_10000BBF0();
                sub_10000E284();
              }

              else
              {
                sub_10000FE6C();
              }

              v43 = v224;
              v76 = *(v42 + 16);
              Hasher._combine(_:)(v76);
              for (; v76; --v76)
              {
                sub_100009A30();

                sub_1000041F8();
                String.hash(into:)();

                v77 = sub_10000C904();
                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v77, v78);
                sub_100163F58();
              }

              v79 = sub_10000E044();
              sub_100161940(v79, v80);
              break;
            case 4:
              memcpy(v243, (v244[1] + 16), sizeof(v243));
              sub_10001BCB0();
              sub_100163F70();
              if (v40)
              {
                sub_100163B18(v243, &v236);
                do
                {
                  sub_100163FB0();
                  v49 = sub_1000041F8();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v49, v50);

                  --v40;
                }

                while (v40);
              }

              else
              {
                sub_100163B18(v243, &v236);
              }

              v43 = v243[3];
              v70 = v243[4];
              v71 = v243[5];
              v72 = v243[6];
              switch(LOBYTE(v243[9]))
              {
                case 1:
                  sub_100163EF0();
                  sub_100006508();
                  String.hash(into:)();
                  v99 = sub_10000F698();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v99, v100);
                  v101 = sub_10000E044();
                  sub_100161940(v101, v102);
                  goto LABEL_69;
                case 2:
                  sub_100163ED8();
                  sub_100006508();
                  String.hash(into:)();
                  v95 = sub_10000F698();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v95, v96);
                  v97 = sub_10000E044();
                  sub_10017831C(v97, v98);
                  goto LABEL_69;
                case 3:
                  sub_100017CEC();
                  sub_100006508();
                  String.hash(into:)();
                  sub_10000F698();
                  String.hash(into:)();
                  if (v72)
                  {
                    sub_10000BBF0();
                    sub_10000E284();
                  }

                  else
                  {
                    sub_10000FE6C();
                  }

                  sub_100006868();
                  for (; v70; --v70)
                  {
                    sub_100009A30();

                    sub_1000041F8();
                    String.hash(into:)();

                    v120 = sub_10000C904();
                    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v120, v121);
                    sub_100163F58();
                  }

                  v122 = sub_100007FC8();
                  sub_100161940(v122, v123);
                  goto LABEL_173;
                case 4:
                  sub_1001640BC(&v236);
                  sub_10001BCB0();
                  sub_100163F70();
                  if (v71)
                  {
                    sub_100163B18(&v236, v233);
                    do
                    {
                      sub_100163FB0();
                      v93 = sub_1000041F8();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v93, v94);

                      --v71;
                    }

                    while (v71);
                  }

                  else
                  {
                    sub_100163B18(&v236, v233);
                  }

                  v43 = v237;
                  v114 = v238;
                  v115 = v239;
                  v116 = v240;
                  switch(v241)
                  {
                    case 1:
                      sub_100163EF0();
                      sub_100006508();
                      String.hash(into:)();
                      v142 = sub_10000F698();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v142, v143);
                      v144 = sub_10000E044();
                      sub_100161940(v144, v145);
                      goto LABEL_108;
                    case 2:
                      sub_100163ED8();
                      sub_100006508();
                      String.hash(into:)();
                      v138 = sub_10000F698();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v138, v139);
                      v140 = sub_10000E044();
                      sub_10017831C(v140, v141);
                      goto LABEL_108;
                    case 3:
                      sub_100017CEC();
                      sub_100006508();
                      String.hash(into:)();
                      sub_10000F698();
                      String.hash(into:)();
                      if (v116)
                      {
                        sub_10000BBF0();
                        sub_10000E284();
                      }

                      else
                      {
                        sub_10000FE6C();
                      }

                      sub_100006868();
                      for (; v114; --v114)
                      {
                        sub_100009A30();

                        sub_1000041F8();
                        String.hash(into:)();

                        v161 = sub_10000C904();
                        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v161, v162);
                        sub_100163F58();
                      }

                      v163 = sub_100007FC8();
                      sub_100161940(v163, v164);
                      goto LABEL_172;
                    case 4:
                      sub_1001640BC(v233);
                      sub_10001BCB0();
                      sub_100163F70();
                      if (v115)
                      {
                        sub_100163B18(v233, v230);
                        do
                        {
                          sub_100163FB0();
                          v136 = sub_1000041F8();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v136, v137);

                          --v115;
                        }

                        while (v115);
                      }

                      else
                      {
                        sub_100163B18(v233, v230);
                      }

                      v43 = v233[3];
                      v155 = v233[4];
                      v156 = v233[5];
                      v157 = v233[6];
                      switch(v234)
                      {
                        case 1:
                          sub_100163EF0();
                          sub_100006508();
                          String.hash(into:)();
                          v171 = sub_10000F698();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v171, v172);
                          v173 = sub_10000E044();
                          sub_100161940(v173, v174);
                          goto LABEL_129;
                        case 2:
                          sub_100163ED8();
                          sub_100006508();
                          String.hash(into:)();
                          v167 = sub_10000F698();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v167, v168);
                          v169 = sub_10000E044();
                          sub_10017831C(v169, v170);
                          goto LABEL_129;
                        case 3:
                          sub_100017CEC();
                          sub_100006508();
                          String.hash(into:)();
                          sub_10000F698();
                          String.hash(into:)();
                          if (v157)
                          {
                            sub_10000BBF0();
                            sub_10000E284();
                          }

                          else
                          {
                            sub_10000FE6C();
                          }

                          sub_100006868();
                          for (; v155; --v155)
                          {
                            sub_100009A30();

                            sub_1000041F8();
                            String.hash(into:)();

                            v186 = sub_10000C904();
                            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v186, v187);
                            sub_100163F58();
                          }

                          v188 = sub_100007FC8();
                          sub_100161940(v188, v189);
                          goto LABEL_171;
                        case 4:
                          sub_1001640BC(v230);
                          sub_10001BCB0();
                          sub_100163F70();
                          if (v156)
                          {
                            sub_100163B18(v230, v227);
                            do
                            {
                              sub_100163FB0();
                              v165 = sub_1000041F8();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v165, v166);

                              --v156;
                            }

                            while (v156);
                          }

                          else
                          {
                            sub_100163B18(v230, v227);
                          }

                          v43 = v230[3];
                          v180 = v230[4];
                          v181 = v230[5];
                          v182 = v230[6];
                          switch(v231)
                          {
                            case 1:
                              sub_100163EF0();
                              sub_100006508();
                              String.hash(into:)();
                              v196 = sub_10000F698();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v196, v197);
                              v198 = sub_10000E044();
                              sub_100161940(v198, v199);
                              goto LABEL_148;
                            case 2:
                              sub_100163ED8();
                              sub_100006508();
                              String.hash(into:)();
                              v192 = sub_10000F698();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v192, v193);
                              v194 = sub_10000E044();
                              sub_10017831C(v194, v195);
                              goto LABEL_148;
                            case 3:
                              sub_100017CEC();
                              sub_100006508();
                              String.hash(into:)();
                              sub_10000F698();
                              String.hash(into:)();
                              if (v182)
                              {
                                sub_10000BBF0();
                                sub_10000E284();
                              }

                              else
                              {
                                sub_10000FE6C();
                              }

                              sub_100006868();
                              for (; v180; --v180)
                              {
                                sub_100009A30();

                                sub_1000041F8();
                                String.hash(into:)();

                                v204 = sub_10000C904();
                                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v204, v205);
                                sub_100163F58();
                              }

                              v206 = sub_100007FC8();
                              sub_100161940(v206, v207);
                              goto LABEL_170;
                            case 4:
                              sub_1001640BC(v227);
                              sub_10001BCB0();
                              sub_100163F70();
                              if (v181)
                              {
                                sub_100163B18(v227, v226);
                                do
                                {
                                  sub_100163FB0();
                                  v190 = sub_1000041F8();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v190, v191);

                                  --v181;
                                }

                                while (v181);
                              }

                              else
                              {
                                sub_100163B18(v227, v226);
                              }

                              v200 = v227[2];
                              v201 = v227[6];
                              switch(v228)
                              {
                                case 1:
                                  sub_100163EF0();
                                  sub_10000F698();
                                  String.hash(into:)();
                                  v214 = sub_10000E044();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v214, v215);
                                  v216 = sub_100007FC8();
                                  sub_100161940(v216, v217);
                                  goto LABEL_164;
                                case 2:
                                  sub_100163ED8();
                                  sub_10000F698();
                                  String.hash(into:)();
                                  v210 = sub_10000E044();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v210, v211);
                                  v212 = sub_100007FC8();
                                  sub_10017831C(v212, v213);
                                  goto LABEL_164;
                                case 3:
                                  sub_100017CEC();
                                  sub_10000F698();
                                  String.hash(into:)();
                                  sub_10000E044();
                                  String.hash(into:)();
                                  if (v201)
                                  {
                                    sub_10000BBF0();
                                    sub_100012FA0();
                                    String.hash(into:)();
                                  }

                                  else
                                  {
                                    sub_10000FE6C();
                                  }

                                  v43 = v224;
                                  v218 = sub_10000C904();
                                  sub_100162948(v218, v219);
                                  v220 = sub_100007CD4();
                                  sub_100161940(v220, v221);
                                  goto LABEL_169;
                                case 4:
                                  memcpy(v226, (v227[1] + 16), sizeof(v226));
                                  sub_10001BCB0();
                                  sub_100163F70();
                                  if (v201)
                                  {
                                    sub_100163B18(v226, v225);
                                    v43 = v224;
                                    do
                                    {
                                      sub_100163FB0();
                                      v208 = sub_1000041F8();
                                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v208, v209);

                                      --v201;
                                    }

                                    while (v201);
                                  }

                                  else
                                  {
                                    sub_100163B18(v226, v225);
                                    v43 = v224;
                                  }

                                  memcpy(v246, &v226[1], sizeof(v246));
                                  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
                                  Hasher._combine(_:)(v226[10]);
                                  sub_100163B74(v226);
                                  goto LABEL_169;
                                default:
                                  sub_100163F18();
                                  v202 = sub_10000F698();
                                  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(v202, v203, v200);
LABEL_164:
                                  v43 = v224;
LABEL_169:
                                  Hasher._combine(_:)(v229);
                                  sub_100163B74(v227);
                                  break;
                              }

                              goto LABEL_170;
                            default:
                              sub_100163F18();
                              v183 = sub_100006508();
                              sub_1001640D4(v183, v184, v185);
LABEL_148:
                              v43 = v224;
LABEL_170:
                              Hasher._combine(_:)(v232);
                              sub_100163B74(v230);
                              break;
                          }

                          goto LABEL_171;
                        default:
                          sub_100163F18();
                          v158 = sub_100006508();
                          sub_1001640D4(v158, v159, v160);
LABEL_129:
                          v43 = v224;
LABEL_171:
                          Hasher._combine(_:)(v235);
                          sub_100163B74(v233);
                          break;
                      }

                      goto LABEL_172;
                    default:
                      sub_100163F18();
                      v117 = sub_100006508();
                      sub_1001640D4(v117, v118, v119);
LABEL_108:
                      v43 = v224;
LABEL_172:
                      Hasher._combine(_:)(v242);
                      sub_100163B74(&v236);
                      break;
                  }

                  goto LABEL_173;
                default:
                  sub_100163F18();
                  v73 = sub_100006508();
                  sub_1001640D4(v73, v74, v75);
LABEL_69:
                  v43 = v224;
LABEL_173:
                  Hasher._combine(_:)(v243[10]);
                  sub_100163B74(v243);
                  break;
              }

              break;
            default:
              sub_100163F18();
              switch(v39)
              {
                case 1:
                  sub_100163ED8();
                  v105 = v37;
                  goto LABEL_83;
                case 2:
                  sub_100017CEC();
                  v103 = v37;
                  goto LABEL_74;
                case 3:
                  sub_10001BCB0();
                  if ((v37 & 0x7FFFFF) == 0 && (v37 & 0x7F800000) == 0)
                  {
                    v105 = 0;
                  }

                  else
                  {
                    v105 = v37;
                  }

LABEL_83:
                  Hasher._combine(_:)(v105);
                  goto LABEL_30;
                case 4:
                  Hasher._combine(_:)(5uLL);
                  if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v103 = v37;
                  }

                  else
                  {
                    v103 = 0;
                  }

LABEL_74:
                  Hasher._combine(_:)(v103);
                  goto LABEL_30;
                case 5:
                  Hasher._combine(_:)(6uLL);
                  sub_100007FC8();
                  String.hash(into:)();
                  goto LABEL_30;
                case 6:
                  Hasher._combine(_:)(7uLL);
                  if (((v38 >> 60) & 3) != 0)
                  {
                    v106 = sub_10000AC38();
                    sub_100014924(v106, v107);
                    v43 = v224;
                  }

                  else
                  {
                    v130 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                    v237 = v130;
                    v238 = sub_100163BC8();
                    v236 = v37;
                    v131 = sub_100007534(&v236, v130);
                    v132 = *v131;
                    v133 = *(*v131 + 16);
                    if (v133)
                    {
                      v43 = v224;
                      if (v133 <= 0xE)
                      {
                        *(v243 + 6) = 0;
                        v243[0] = 0;
                        BYTE6(v243[1]) = v133;
                        memcpy(v243, (v132 + 32), v133);
                        sub_10002DF74();
                        sub_10001BDA0();
                      }

                      else
                      {
                        v134 = type metadata accessor for __DataStorage();
                        sub_1000E2424(v134);
                        sub_100164020();
                        if (v133 >= v135)
                        {
                          sub_10001BDA0();
                          sub_1001640A4();
                          sub_10000899C();
                          v175 = type metadata accessor for Data.RangeReference();
                          v176 = sub_10000B9C4(v175);
                          *(v176 + 16) = 0;
                          *(v176 + 24) = v133;
                        }

                        else
                        {
                          sub_10001BDA0();
                          sub_1001640A4();
                        }
                      }
                    }

                    else
                    {
                      sub_10001BDA0();
                      v43 = v224;
                    }

                    sub_100007378(&v236);
                  }

                  sub_10000AC38();
                  v177 = Data.hashValue.getter();
                  v178 = sub_10000AC38();
                  sub_100014A40(v178, v179);
                  Hasher._combine(_:)(v177);
                  goto LABEL_174;
                case 7:
                  sub_100163F18();
                  goto LABEL_30;
                default:
                  sub_100163EF0();
                  Hasher._combine(_:)(v37 & 1);
                  goto LABEL_30;
              }
          }

LABEL_174:
          Hasher._combine(_:)(v244[10]);
          sub_100163B74(v244);
LABEL_175:
          sub_100096480(__dst);
          sub_100096480(__dst);
          break;
        default:
          sub_100163F18();
          switch(v9)
          {
            case 1:
              sub_100163ED8();
              v61 = v7;
              goto LABEL_44;
            case 2:
              sub_100017CEC();
              v59 = v7;
              goto LABEL_35;
            case 3:
              sub_10001BCB0();
              if ((v7 & 0x7FFFFF) == 0 && (v7 & 0x7F800000) == 0)
              {
                v61 = 0;
              }

              else
              {
                v61 = v7;
              }

LABEL_44:
              Hasher._combine(_:)(v61);
              break;
            case 4:
              Hasher._combine(_:)(5uLL);
              if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v59 = v7;
              }

              else
              {
                v59 = 0;
              }

LABEL_35:
              Hasher._combine(_:)(v59);
              break;
            case 5:
              Hasher._combine(_:)(6uLL);
              v62 = sub_100011BBC();
              sub_100163ABC(v62, v63);
              sub_100007FC8();
              String.hash(into:)();
              goto LABEL_46;
            case 6:
              Hasher._combine(_:)(7uLL);
              if (((v8 >> 60) & 3) != 0)
              {
                v64 = sub_100011BBC();
                sub_100163ABC(v64, v65);
                v66 = sub_100011BBC();
                sub_100163ABC(v66, v67);
                v68 = sub_100011BBC();
                sub_100163ABC(v68, v69);
                v43 = v224;
              }

              else
              {
                v81 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                v243[3] = v81;
                v243[4] = sub_100163BC8();
                v243[0] = v7;
                v82 = sub_100007534(v243, v81);
                v83 = *v82;
                v84 = *(*v82 + 16);
                if (v84)
                {
                  v43 = v224;
                  if (v84 <= 0xE)
                  {
                    *(v244 + 6) = 0;
                    v244[0] = 0;
                    BYTE6(v244[1]) = v84;
                    memcpy(v244, (v83 + 32), v84);
                    sub_10002DF74();
                    v124 = sub_100011BBC();
                    sub_100163ABC(v124, v125);
                    v126 = sub_100011BBC();
                    sub_100163ABC(v126, v127);
                    v128 = sub_100011BBC();
                    sub_100163ABC(v128, v129);
                  }

                  else
                  {
                    v85 = type metadata accessor for __DataStorage();
                    sub_1000E2424(v85);
                    sub_100164020();
                    v86 = sub_100011BBC();
                    if (v84 >= v88)
                    {
                      sub_100163ABC(v86, v87);
                      v146 = sub_100011BBC();
                      sub_100163ABC(v146, v147);
                      v148 = sub_100011BBC();
                      sub_100163ABC(v148, v149);
                      sub_1001640A4();
                      sub_10000899C();
                      v150 = type metadata accessor for Data.RangeReference();
                      v151 = sub_10000B9C4(v150);
                      *(v151 + 16) = 0;
                      *(v151 + 24) = v84;
                    }

                    else
                    {
                      sub_100163ABC(v86, v87);
                      v89 = sub_100011BBC();
                      sub_100163ABC(v89, v90);
                      v91 = sub_100011BBC();
                      sub_100163ABC(v91, v92);
                      sub_1001640A4();
                    }
                  }
                }

                else
                {
                  v108 = sub_100011BBC();
                  sub_100163ABC(v108, v109);
                  v110 = sub_100011BBC();
                  sub_100163ABC(v110, v111);
                  v112 = sub_100011BBC();
                  sub_100163ABC(v112, v113);
                  v43 = v224;
                }

                sub_100007378(v243);
              }

              sub_10000AC38();
              v152 = Data.hashValue.getter();
              v153 = sub_10000AC38();
              sub_100014A40(v153, v154);
              Hasher._combine(_:)(v152);
              goto LABEL_175;
            case 7:
              sub_100163F18();
              break;
            default:
              sub_100163EF0();
              Hasher._combine(_:)(v7 & 1);
              break;
          }

          sub_100096480(__dst);
LABEL_46:
          sub_100096480(__dst);
          v43 = v224;
          break;
      }

      v5 = v43 + 1;
    }

    while (v5 != v223);
  }
}

void sub_100162948(uint64_t a1, uint64_t a2)
{
  sub_100023FCC(a1, a2);
  if (v2)
  {
    v5 = (v4 + 48);
    do
    {
      v6 = *v5;
      v5 += 3;

      sub_10000BE80();
      String.hash(into:)();

      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v6);
      sub_100163F58();

      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1001629CC()
{
  result = qword_10021F690;
  if (!qword_10021F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F690);
  }

  return result;
}

unint64_t sub_100162A20()
{
  result = qword_10021F6A0;
  if (!qword_10021F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6A0);
  }

  return result;
}

uint64_t sub_100162A74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021F640, &qword_1001A44E8);
    a2();
    sub_1000385F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100162AE8()
{
  result = qword_10021F6B8;
  if (!qword_10021F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6B8);
  }

  return result;
}

unint64_t sub_100162B3C()
{
  result = qword_10021F6D8;
  if (!qword_10021F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6D8);
  }

  return result;
}

unint64_t sub_100162B90()
{
  result = qword_10021F6E8;
  if (!qword_10021F6E8)
  {
    sub_1000461CC(&qword_10021F6E0, &qword_1001A4528);
    sub_100162A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6E8);
  }

  return result;
}

unint64_t sub_100162C18()
{
  result = qword_10021F6F0;
  if (!qword_10021F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6F0);
  }

  return result;
}

unint64_t sub_100162C70()
{
  result = qword_10021F6F8;
  if (!qword_10021F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6F8);
  }

  return result;
}

unint64_t sub_100162CC8()
{
  result = qword_10021F700;
  if (!qword_10021F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F700);
  }

  return result;
}

unint64_t sub_100162D20()
{
  result = qword_10021F708;
  if (!qword_10021F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F708);
  }

  return result;
}

unint64_t sub_100162D78()
{
  result = qword_10021F710;
  if (!qword_10021F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F710);
  }

  return result;
}

unint64_t sub_100162DD0()
{
  result = qword_10021F718;
  if (!qword_10021F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F718);
  }

  return result;
}

unint64_t sub_100162E28()
{
  result = qword_10021F720;
  if (!qword_10021F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F720);
  }

  return result;
}

uint64_t sub_100162E94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100162ED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100162F68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return sub_10002D478(*a1 + 123);
    }

    v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7B)
    {
      return sub_10002D478(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return sub_10002D478(v3);
}

uint64_t sub_100162FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100163048(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10002D478(-1);
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
      return sub_10002D478((*a1 | (v4 << 8)) - 8);
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

      return sub_10002D478((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10002D478((*a1 | (v4 << 8)) - 8);
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

  return sub_10002D478(v8);
}

_BYTE *sub_1001630CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100038618(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroRecordSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10016328C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10002D478(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return sub_10002D478((*a1 | (v4 << 8)) - 2);
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

      return sub_10002D478((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10002D478((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10002D478(v8);
}

_BYTE *sub_100163310(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100038618(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001633E8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100163494()
{
  result = qword_10021F728;
  if (!qword_10021F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F728);
  }

  return result;
}

unint64_t sub_1001634EC()
{
  result = qword_10021F730;
  if (!qword_10021F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F730);
  }

  return result;
}

unint64_t sub_100163544()
{
  result = qword_10021F738;
  if (!qword_10021F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F738);
  }

  return result;
}

unint64_t sub_10016359C()
{
  result = qword_10021F740;
  if (!qword_10021F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F740);
  }

  return result;
}

unint64_t sub_1001635F4()
{
  result = qword_10021F748;
  if (!qword_10021F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F748);
  }

  return result;
}

unint64_t sub_10016364C()
{
  result = qword_10021F750;
  if (!qword_10021F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F750);
  }

  return result;
}

unint64_t sub_1001636A4()
{
  result = qword_10021F758;
  if (!qword_10021F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F758);
  }

  return result;
}

unint64_t sub_1001636FC()
{
  result = qword_10021F760;
  if (!qword_10021F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F760);
  }

  return result;
}

unint64_t sub_100163754()
{
  result = qword_10021F768;
  if (!qword_10021F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F768);
  }

  return result;
}

unint64_t sub_1001637AC()
{
  result = qword_10021F770;
  if (!qword_10021F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F770);
  }

  return result;
}

unint64_t sub_100163804()
{
  result = qword_10021F778;
  if (!qword_10021F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F778);
  }

  return result;
}

unint64_t sub_10016385C()
{
  result = qword_10021F780;
  if (!qword_10021F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F780);
  }

  return result;
}

unint64_t sub_1001638B4()
{
  result = qword_10021F788;
  if (!qword_10021F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F788);
  }

  return result;
}

unint64_t sub_10016390C()
{
  result = qword_10021F790;
  if (!qword_10021F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F790);
  }

  return result;
}

unint64_t sub_100163964()
{
  result = qword_10021F798;
  if (!qword_10021F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F798);
  }

  return result;
}

unint64_t sub_1001639BC()
{
  result = qword_10021F7A0;
  if (!qword_10021F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7A0);
  }

  return result;
}

unint64_t sub_100163A14()
{
  result = qword_10021F7A8;
  if (!qword_10021F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7A8);
  }

  return result;
}

unint64_t sub_100163A68()
{
  result = qword_10021F7B0;
  if (!qword_10021F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7B0);
  }

  return result;
}

unint64_t sub_100163BC8()
{
  result = qword_10021F7B8;
  if (!qword_10021F7B8)
  {
    sub_1000461CC(&qword_100217F20, &qword_1001A5520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7B8);
  }

  return result;
}

uint64_t sub_100163C88(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_100163CAC(a1, a2);
  }

  if (a4 == 5)
  {
  }

  return a1;
}

uint64_t sub_100163CAC(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_100014924(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_100163D00(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 0:

      a1 = sub_100163E18(a1, a2, a3, a4);
      break;
    case 1:
    case 2:

      goto LABEL_3;
    case 3:

      break;
    case 4:
LABEL_3:

      break;
    default:
      return a1;
  }

  return a1;
}

uint64_t sub_100163E18(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_100163E3C(a1, a2);
  }

  if (a4 == 5)
  {
  }

  return a1;
}

uint64_t sub_100163E3C(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_100014A40(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void sub_100163ED8()
{

  Hasher._combine(_:)(2uLL);
}

void sub_100163EF0()
{

  Hasher._combine(_:)(1uLL);
}

void sub_100163F18()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_100163F58()
{
}

void sub_100163F70()
{
  v2 = *(v0 + 16);

  Hasher._combine(_:)(v2);
}

uint64_t sub_100163F88(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100163FB0()
{
}

uint64_t sub_10016402C()
{
}

uint64_t sub_10016404C(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t sub_10016406C()
{

  return dispatch thunk of Decoder.singleValueContainer()();
}

uint64_t sub_10016408C()
{

  return __DataStorage.init(bytes:length:)();
}

uint64_t sub_1001640A4()
{

  return __DataStorage.init(bytes:length:)();
}

void *sub_1001640BC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

void sub_1001640D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(a1, a2, a3);
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  Data._Representation.append(contentsOf:)();
  return *(a1._rawValue + 2);
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_10021F5F0 != -1)
  {
    sub_100006D44(&qword_10021F5F0);
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_10021F5F0 != -1)
  {
    sub_100006D44(&qword_10021F5F0);
  }

  return static Endianness.host;
}

Swift::Int sub_1001641DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Endianness.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

double ByteBuffer.readableBytesView.getter@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>)
{
  ByteBufferView.init(_:)(a2, a3, a4, v9);
  v5 = sub_10000672C();
  sub_100014924(v5, v6);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_18;
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      if (v4 < a3)
      {
        __break(1u);
        goto LABEL_16;
      }

      if (a3 < 0)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = 0;
      switch(a2 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_20;
          }

          v8 = HIDWORD(result) - result;
          break;
        case 2uLL:
          v10 = *(result + 16);
          v9 = *(result + 24);
          v8 = v9 - v10;
          if (__OFSUB__(v9, v10))
          {
            goto LABEL_21;
          }

          break;
        case 3uLL:
          break;
        default:
          v8 = BYTE6(a2);
          break;
      }

      if (v8 >= v4)
      {
        *a4 = result;
        a4[1] = a2;
        a4[2] = a3;
        a4[3] = a3;
        a4[4] = v4;
        return result;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
  }
}

uint64_t ByteBuffer.count.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(a1), a1);
      v5 = HIDWORD(a1) - a1;
      if (v4)
      {
        __break(1u);
        goto LABEL_8;
      }

      result = v5;
      break;
    case 2uLL:
      v8 = a1 + 16;
      v6 = *(a1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    return dispatch thunk of FixedWidthInteger.littleEndian.getter();
  }

  else
  {
    return dispatch thunk of FixedWidthInteger.bigEndian.getter();
  }
}

uint64_t sub_100164430(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_9;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
LABEL_6:
      result = v3 - a3;
      if (__OFSUB__(v3, a3))
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
  }
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    Data._Representation.append(contentsOf:)();
  }

  return 0;
}

uint64_t ByteBuffer.init(data:)()
{
  sub_100014A40(0, 0xC000000000000000);
  v0 = sub_10000672C();
  sub_100014924(v0, v1);
  v2 = sub_10000672C();
  sub_100014A40(v2, v3);
  return sub_10000672C();
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  sub_100003A6C();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = v3[2];
  ByteBuffer.getInteger<A>(at:endianness:as:)(v12, v12, a2, &v20 - v10, *v3, v3[1]);
  if (sub_100008D0C(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v6);
    v13 = a3;
    v14 = 1;
    return sub_1000051C0(v13, v14, 1, a2);
  }

  v15 = *(a2 - 1) + 32;
  result = (*v15)(a3, v11, a2);
  v17 = *(v15 + 32);
  v18 = __OFADD__(v12, v17);
  v19 = v12 + v17;
  if (!v18)
  {
    v3[2] = v19;
    v13 = a3;
    v14 = 0;
    return sub_1000051C0(v13, v14, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, void *a3@<X6>, uint64_t a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v7 = *(*(a3 - 1) + 64);
  if (result < a2 || v7 < 0)
  {

    return sub_1000051C0(a4, 1, 1, a3);
  }

  else if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else if (a3 == &type metadata for UInt8)
  {
    __chkstk_darwin(result);
    v24 = &type metadata for UInt8;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    ByteBuffer.withUnsafeBytes<A>(_:)(sub_10016689C, v23, a5, a6, v21, &type metadata for UInt8);
    return sub_1000051C0(a4, 0, 1, &type metadata for UInt8);
  }

  else
  {
    __chkstk_darwin(result);
    v22[2] = v10;
    v22[3] = v11;
    v23[0] = v12;
    v23[1] = v13;
    v24 = a5;
    v25 = a6;
    v26 = v14;
    LOBYTE(v27) = v15 & 1;
    v16 = type metadata accessor for Optional();
    return ByteBuffer.withUnsafeBytes<A>(_:)(sub_100166864, v22, a5, a6, v17, v16);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v4;
  }
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
    v9 = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = sub_100008C14();
      length = sub_1001649FC(v4, v5, v6, v7, v8);
      if (v9)
      {
        *(v1 + 16) = v3;
      }
    }
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = length;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at < v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if ((length & 0x8000000000000000) == 0)
    {
      if (__OFADD__(at, length))
      {
        __break(1u);
      }

      else
      {
        v8 = sub_100011BC8(0, 0, v2);
        v5 = sub_1001649FC(v8, v9, v10, v11, v12);
      }
    }
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = sub_100008C14();
      length = sub_100164B7C(v4, v5, v6, v7, v8);
      *(v1 + 16) = v3;
    }
  }

  result.value._rawValue = length;
  result.is_nil = v9;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if (__OFADD__(at, length))
    {
      __break(1u);
    }

    else
    {
      v6 = sub_100011BC8(0, length, v2);
      v5 = sub_100164B7C(v6, v7, v8, v9, v10);
    }
  }

  result.is_nil = length;
  result.value._rawValue = v5;
  return result;
}

uint64_t sub_1001649FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_16;
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v10;
      return sub_100166CCC(a1, v8, v7, a4, a5);
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
      return sub_100166CCC(a1, v8, v7, a4, a5);
    case 3uLL:
      if (!(a5 | a4))
      {
        return static String._fromUTF8Repairing(_:)();
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    default:
      if (BYTE6(a2) < a4 || BYTE6(a2) < a5)
      {
        goto LABEL_17;
      }

      if (a5 < a4)
      {
LABEL_18:
        __break(1u);
      }

      return static String._fromUTF8Repairing(_:)();
  }
}

uint64_t sub_100164B7C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_9:
      result = sub_100166DD4(result, v8, v7, a4, a5);
      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100166A90(result, v5, a4, a5);
      break;
  }

  return result;
}

uint64_t sub_100164C10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_100166E78(a1, v7, v6, a4);
      break;
    case 3uLL:
      memset(v9, 0, 14);
      result = *(v9 + a4);
      break;
    default:
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = *(v9 + a4);
      break;
  }

  return result;
}

unint64_t sub_100164D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_100008834(a1, a2, a3, a4, a5, a6, a7);
  v15 = sub_100003674();
  result = sub_100014924(v15, v16);
  switch(v13 >> 62)
  {
    case 1uLL:
      v92 = v11;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_21;
      }

      v90 = v14;
      v91 = v12;
      v89 = &v89;
      v56 = sub_100003674();
      sub_100014924(v56, v57);
      v58 = sub_100003674();
      sub_100014924(v58, v59);
      v60 = sub_100003674();
      sub_100014924(v60, v61);
      if (__DataStorage._bytes.getter())
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_22;
        }
      }

      goto LABEL_15;
    case 2uLL:
      v91 = v12;
      v92 = v11;
      v89 = &v89;
      v90 = v14;
      v33 = *(v8 + 16);
      v34 = *(v8 + 24);
      v35 = sub_100003674();
      sub_100014924(v35, v36);
      v37 = sub_100003674();
      sub_100014924(v37, v38);
      v39 = sub_100003674();
      sub_100014924(v39, v40);
      if (__DataStorage._bytes.getter() && (result = __DataStorage._offset.getter(), __OFSUB__(v33, result)))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      else
      {
        if (__OFSUB__(v34, v33))
        {
          __break(1u);
LABEL_9:
          v41 = sub_100003674();
          sub_100014924(v41, v42);
          v43 = sub_100003674();
          sub_100014924(v43, v44);
          sub_1000046F0();
          v53 = sub_100166B48(v45, v46, v47, v48, v49, v50, v51, v52);
          if (v9)
          {
            v54 = sub_100003674();
            sub_100014A40(v54, v55);
            goto LABEL_16;
          }

          v30 = v53;
          v81 = sub_100003674();
          sub_100014A40(v81, v82);
        }

        else
        {
LABEL_15:
          __DataStorage._length.getter();
          v62 = sub_100003674();
          sub_100014924(v62, v63);
          v64 = sub_10000825C();
          v65 = v91;
          v30 = sub_100165A20(v64, v66, v67, v92, v10, v7, v90, v68);
          v69 = sub_100003674();
          sub_100014A40(v69, v70);
          v71 = sub_100003674();
          sub_100014A40(v71, v72);
          v73 = sub_100003674();
          sub_100014A40(v73, v74);
          if (v65)
          {
LABEL_16:
            v75 = sub_100003674();
            sub_100014A40(v75, v76);
            v77 = sub_100003674();
            sub_100014A40(v77, v78);
            v79 = sub_100003674();
            return sub_100014A40(v79, v80);
          }
        }

LABEL_19:
        v83 = sub_100003674();
        sub_100014A40(v83, v84);
        v85 = sub_100003674();
        sub_100014A40(v85, v86);
        v87 = sub_100003674();
        sub_100014A40(v87, v88);
        return v30 | ((HIDWORD(v30) & 1) << 32);
      }

      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v18 = sub_100003674();
      sub_100014924(v18, v19);
      v20 = sub_100003674();
      sub_100014924(v20, v21);
      sub_1000046F0();
      v30 = sub_100166B48(v22, v23, v24, v25, v26, v27, v28, v29);
      v31 = sub_100003674();
      sub_100014A40(v31, v32);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
  }
}

uint64_t sub_100164FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_100008834(a1, a2, a3, a4, a5, a6, a7);
  v16 = sub_100003674();
  result = sub_100014924(v16, v17);
  switch(v14 >> 62)
  {
    case 1uLL:
      v92 = v12;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_22;
      }

      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v48 = sub_100003674();
      sub_100014924(v48, v49);
      v50 = sub_100003674();
      sub_100014924(v50, v51);
      v52 = sub_100003674();
      sub_100014924(v52, v53);
      if (__DataStorage._bytes.getter())
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_23;
        }
      }

      goto LABEL_14;
    case 2uLL:
      v92 = v12;
      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v23 = *(v8 + 16);
      v24 = *(v8 + 24);
      v25 = sub_100003674();
      sub_100014924(v25, v26);
      v27 = sub_100003674();
      sub_100014924(v27, v28);
      v29 = sub_100003674();
      sub_100014924(v29, v30);
      if (!__DataStorage._bytes.getter() || (result = __DataStorage._offset.getter(), !__OFSUB__(v23, result)))
      {
        if (__OFSUB__(v24, v23))
        {
          __break(1u);
LABEL_8:
          v31 = sub_100003674();
          sub_100014924(v31, v32);
          v33 = sub_100003674();
          sub_100014924(v33, v34);
LABEL_9:
          sub_1000046F0();
          v43 = sub_100166C10(v35, v36, v37, v38, v39, v40, v41, v42);
          if (v9)
          {
            v44 = sub_100003674();
            sub_100014A40(v44, v45);
            v46 = sub_100003674();
            sub_100014A40(v46, v47);
LABEL_16:
            v70 = sub_100003674();
            sub_100014A40(v70, v71);
            v72 = sub_100003674();
            sub_100014A40(v72, v73);
            return v11;
          }

          v11 = v43;
          v74 = sub_100003674();
          sub_100014A40(v74, v75);
        }

        else
        {
LABEL_14:
          __DataStorage._length.getter();
          v54 = sub_100003674();
          sub_100014924(v54, v55);
          v56 = sub_10000825C();
          v57 = v91;
          v61 = sub_100165AE4(v56, v58, v59, v92, v10, v7, v90, v60);
          if (v57)
          {
            v62 = sub_100003674();
            sub_100014A40(v62, v63);
            v64 = sub_100003674();
            sub_100014A40(v64, v65);
            v66 = sub_100003674();
            sub_100014A40(v66, v67);
            v68 = sub_100003674();
            sub_100014A40(v68, v69);
            goto LABEL_16;
          }

          v11 = v61;
          v76 = sub_100003674();
          sub_100014A40(v76, v77);
          v78 = sub_100003674();
          sub_100014A40(v78, v79);
          v80 = sub_100003674();
          sub_100014A40(v80, v81);
        }

        v82 = sub_100003674();
        sub_100014A40(v82, v83);
        v84 = sub_100003674();
        sub_100014A40(v84, v85);
        v86 = sub_100003674();
        sub_100014A40(v86, v87);
        return v11;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v19 = sub_100003674();
      sub_100014924(v19, v20);
      v21 = sub_100003674();
      sub_100014924(v21, v22);
      goto LABEL_9;
  }
}

uint64_t sub_100165274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a5;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = *(a7 - 8);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  sub_1001658A8(v13, sub_10016771C, v24, a7, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v14);
  ByteBuffer._toEndianness<A>(value:endianness:)(v13, v23 & 1, v15, v16, v17, a7, a8);
  (*(v10 + 8))(v13, a7);
  return sub_1000051C0(a6, 0, 1, a7);
}

uint64_t ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, unint64_t a2)
{
  Data.append(_:)();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer.writeData(_:)(uint64_t a1, unint64_t a2)
{
  Data.append(_:)();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  v1 = type metadata accessor for String.Encoding();
  sub_100003A6C();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  (*(v3 + 8))(v6, v1);
  v7 = sub_100007CD4();
  v9 = ByteBuffer.writeData(_:)(v7, v8);
  v10 = sub_100007CD4();
  sub_100014A40(v10, v11);
  return v9;
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A6C();
  __chkstk_darwin(v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ByteBuffer._toEndianness<A>(value:endianness:)(v9, v8 & 1, v10, v11, v12, v10, v11);
  v19 = v3;
  sub_1001658A8(v7, sub_100166910, v18, a3, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v13);
  v14 = sub_100003674();
  v15(v14);
  return v17[1];
}

uint64_t sub_100165840@<X0>(void *a1@<X8>, _BYTE *a2@<X0>, _BYTE *a3@<X1>)
{
  v4 = sub_100172B5C(a2, a3);
  if (v4[2])
  {
    Data._Representation.append(contentsOf:)();
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1001658A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

char *sub_10016599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return v4;
  }

  v6 = a4 - a3;
  if (a4 == a3)
  {
    return v4;
  }

  v4 = sub_100172D04();
  result = sub_1001676B0(v4 + 4, v6, (a3 + a1), v6);
  if (v9 == v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100165A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  __dst = 0;
  if (a1)
  {
    memcpy(&__dst, (a1 + a3), a4 - a3);
    v11 = __dst;
  }

  else
  {
    v11 = 0;
  }

  sub_100014A40(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_100165AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v14 = 0;
  if (a1)
  {
    memcpy(&v14, (a1 + a3), a4 - a3);
    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  sub_100014A40(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

Swift::Int ByteBuffer.hashValue.getter(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100165C94(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  ByteBuffer.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t ByteBufferView._buffer.getter()
{
  v0 = sub_100007CD4();
  sub_100014924(v0, v1);
  return sub_100007CD4();
}

uint64_t ByteBufferView._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014A40(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        LODWORD(v6) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_11;
        }

        v6 = v6;
        break;
      case 2uLL:
        v8 = *(result + 16);
        v7 = *(result + 24);
        v9 = __OFSUB__(v7, v8);
        v6 = v7 - v8;
        if (v9)
        {
          goto LABEL_12;
        }

        break;
      case 3uLL:
        break;
      default:
        v6 = BYTE6(a2);
        break;
    }

    if (v6 >= a5)
    {
      *a6 = result;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      a6[4] = a5;
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  return ByteBuffer.withUnsafeBytes<A>(_:)(sub_100166930, v10, v7, v8, a5, a3);
}

char *sub_100165E78(char *result, uint64_t a2, void *(*a3)(void *__return_ptr, char *, char *), uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(a5 + 24);
  v9 = *(a5 + 32);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v12[4] = v6;
  v12[5] = v7;
  result = a3(v12, &result[v8], &result[v8 + v11]);
  if (!v5)
  {
    return v12[0];
  }

  return result;
}

uint64_t sub_100165EDC(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = *(a5 + 24);
    v5 = *(a5 + 32);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      return a3(result + v6, result + v6 + v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    if (v3 <= result)
    {
      return sub_100164C10(*v1, v1[1], v3, result);
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 8);
    v9 = result;
    v10 = 0;
    switch(v7 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_12;
        }

        v10 = HIDWORD(v5) - v5;
        goto LABEL_7;
      case 2uLL:
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
          goto LABEL_13;
        }

LABEL_7:
        v13 = *(v3 + 8);
        result = sub_100166950(v3, v14);
        v6 = v13;
        break;
      case 3uLL:
        break;
      default:
        v10 = BYTE6(v7);
        break;
    }

    if (v10 >= a2)
    {
      *a3 = v5;
      *(a3 + 8) = v6;
      *(a3 + 24) = v9;
      *(a3 + 32) = a2;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  result = ByteBufferView.withUnsafeBytes<A>(_:)(sub_100166988, v10, a3, a4, a5);
  if (!v6)
  {
    return sub_1000051C0(a6, 0, 1, a3);
  }

  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v1 = sub_100166140(a1, sub_1001669BC, sub_100167068);
  result.value.value = v1;
  result.value.is_nil = v2;
  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customLastIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v1 = sub_100166140(a1, sub_100167088, sub_100167760);
  result.value.value = v1;
  result.value.is_nil = v2;
  return result;
}

uint64_t sub_100166140(char a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *, char *))
{
  v8[16] = a1;
  v4 = *v3;
  v5 = v3[1];
  v7[2] = a2;
  v7[3] = v8;
  return sub_1001669F0(v4, v5, a3, v7);
}

uint64_t sub_100166190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  result = a5(a3, a1, a2);
  if ((v9 & 1) == 0 && (v10 = *(a4 + 24), v11 = __OFADD__(result, v10), result += v10, v11))
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

uint64_t sub_1001661FC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100166254(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result < *(v2 + 24) || *(v2 + 32) < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100166278(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5 < a3 || v4 > a3 || v4 > result || v5 < result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  v11 = __OFADD__(result, a2);
  result += a2;
  if (v11)
  {
    goto LABEL_29;
  }

  if (result < v4 || v5 < result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1001662F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100166338(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100166338(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result < *(v1 + 24) || result >= *(v1 + 32))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_10016635C(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 32) && v2 >= *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100166388@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001663B0@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.endIndex.getter();
  *a1 = result;
  return result;
}

double sub_100166420@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = *(v2 + 4);
  ByteBufferView.subscript.getter(v5, v4, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_100166480@<X0>(uint64_t *a6@<X8>)
{
  result = sub_1001664C4();
  *a6 = result;
  a6[1] = v8;
  return result;
}

uint64_t sub_1001664C4()
{
  result = *(v0 + 24);
  if (*(v0 + 32) < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100166574@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1001665CC@<X0>(uint64_t a1@<X8>)
{
  sub_100006518();
  result = sub_100166278(v2, v3, v4);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100166658(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100166700(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100166714@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ByteBufferView.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_100166740(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_100166758@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_1001667B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100166988(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 24))(a1, v3);
}

uint64_t sub_1001669F0(uint64_t result, unint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v9 = v10;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v7 = *(result + 24);
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v9 = v7;
LABEL_8:
      result = sub_100166EE8(result, v9, v8, a3);
      break;
    case 3uLL:
      result = 0;
      v6 = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = BYTE6(a2);
      v6 = a2 & 0xFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100166FA8(result, v6, v5, a3);
      break;
  }

  return result;
}

void *sub_100166A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_100172D04();
  memcpy((v5 + 32), &v8 + a3, v4);
  return v5;
}

uint64_t sub_100166B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  __dst = 0;
  memcpy(&__dst, &v15 + a3, a4 - a3);
  v11 = __dst;
  sub_100014A40(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_100166C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v14 = 0;
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  memcpy(&v14, &v15 + a3, a4 - a3);
  v11 = v14;
  sub_100014A40(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_100166CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v10 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = __DataStorage._length.getter();
  if (v10)
  {
    if (result < v12)
    {
      v12 = result;
    }

    v13 = sub_10016767C(0, a4, v10, v10 + v12);
    result = sub_10016767C(a4, a5, v10, v10 + v12);
    if (!__OFADD__(v13, result))
    {
      if (v13 + result >= v13)
      {
        return static String._fromUTF8Repairing(_:)();
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_10016767C(0, a5, 0, 0);
  if ((result & 0x8000000000000000) == 0)
  {
    return static String._fromUTF8Repairing(_:)();
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_100166DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v10 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return sub_10016599C(v10, v16, a4, a5);
}

uint64_t sub_100166E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    __DataStorage._length.getter();
    return *(v9 + a4);
  }

  __break(1u);
  return result;
}

void *sub_100166EE8(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = a4(&v16, v9, v15);
  if (!v4)
  {
    return v16;
  }

  return result;
}

void *sub_100166FA8(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t *, char *))
{
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  result = a4(&v9, &v6, &v6 + a3);
  if (!v4)
  {
    return v9;
  }

  return result;
}

char *sub_100167034@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_100165E78(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

unint64_t sub_1001670C0()
{
  result = qword_10021F7C0;
  if (!qword_10021F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7C0);
  }

  return result;
}

unint64_t sub_100167118()
{
  result = qword_10021F7C8;
  if (!qword_10021F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7C8);
  }

  return result;
}

unint64_t sub_10016716C()
{
  result = qword_10021F7D0;
  if (!qword_10021F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7D0);
  }

  return result;
}

unint64_t sub_1001671F8()
{
  result = qword_10021F7E0;
  if (!qword_10021F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7E0);
  }

  return result;
}

unint64_t sub_10016724C()
{
  result = qword_10021F7E8;
  if (!qword_10021F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7E8);
  }

  return result;
}

unint64_t sub_1001672D8()
{
  result = qword_10021F7F8;
  if (!qword_10021F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7F8);
  }

  return result;
}

uint64_t sub_10016736C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021F068, &qword_1001A3EF8);
    sub_100153C14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001673E8()
{
  result = qword_10021F800;
  if (!qword_10021F800)
  {
    sub_1000461CC(&qword_10021F808, &qword_1001A5788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F800);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Endianness(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100167524(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100167570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1001675CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 40))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100167618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10016767C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

char *sub_1001676B0(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

void *sub_10016771C(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t sub_100167784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = (*(a1 + 48) + 24 * (__clz(__rbit64(v8)) | (v11 << 6)));
    v14 = *v13;
    if (*v13 == a2 && v13[1] == a3)
    {
      v14 = a2;
LABEL_17:

LABEL_18:

      return v14;
    }

    v8 &= v8 - 1;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001678CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1001723E8(*(a1 + 16), 0);
  v4 = sub_100172760(&v6, v3 + 4, v2, a1);
  sub_100019180(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10016795C(void *result)
{
  v1 = result[3];
  v2 = result[4];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    v4 = result;
    if (v3)
    {
      v5 = sub_1001079EC(v2 - v1, 0);
      v4 = sub_10017249C(v6, (v5 + 4), v3);
      sub_100014A40(v6[0], v6[1]);
      if (v4 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    sub_100168B48(v4);
    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t AvroRecordSchema.makeTemplate(withPresetValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_1000967A0(v5, &v34);
  AvroRecord.init(schema:)(&v36, v5);

  v35 = sub_100167C90(v7);
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = Dictionary.init(dictionaryLiteral:)();
  }

  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  for (i = v8; v12; result = sub_100096480(__dst))
  {
LABEL_11:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = (*(v8 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    memcpy(__dst, (*(v8 + 56) + 72 * v17), 0x41uLL);
    v21 = v35;
    swift_bridgeObjectRetain_n();
    sub_100163ABC(__dst, &v34);
    v22 = sub_100167784(v21, v19, v20);
    if (v23)
    {
      v25 = v23;
      v26 = v22;
      v27 = sub_10016876C(v22, v23, v24);
      v33 = v4;
      v29 = v28;

      sub_100168918(v27, v29);
      AvroRecord.set(_:forField:)(__dst, v26, v25);
      v4 = v33;
      if (v33)
      {
        sub_100096480(__dst);

        v34 = v36;
        sub_1000967FC(&v34);
      }
    }

    else
    {
    }

    v8 = i;
    v12 &= v12 - 1;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      result = sub_1001678CC(v35);
      name = v36.schema.name;
      *a2 = v36.schema.type;
      *(a2 + 16) = name;
      v31 = *&v36.schema.fields._rawValue;
      *(a2 + 32) = v36.schema.namespace;
      *(a2 + 48) = v31;
      *(a2 + 64) = result;
      return result;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100167C90(uint64_t a1)
{
  sub_100168B9C();
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v10 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v4 == v3)
    {

      return v10;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);

    sub_100167D70(&v9, v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_100167D70(Swift::Int *a1, Swift::Int a2, Swift::Int a3, unint64_t a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v25, a4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v8 + 48) + 24 * v11);
      v14 = v13[2];
      v15 = *v13 == a2 && v13[1] == a3;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v16 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v14, a4);

        if (v16)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v19 = (*(v8 + 48) + 24 * v11);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    *a1 = v20;
    a1[1] = v21;
    a1[2] = v22;

    return 0;
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *v23;

    sub_1001681C8(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v23 = v25[0];
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_100167F4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100046184(&qword_10021F810, &qword_1001A5940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1000934E4(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    Hasher.init(_seed:)();
    String.hash(into:)();
    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v31, v19);
    result = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 24 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1001681C8(Swift::Int result, Swift::Int a2, unint64_t a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_100167F4C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1001683A0();
      goto LABEL_17;
    }

    sub_100168510(v9 + 1);
  }

  v11 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v25, a3);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v11 + 48) + 24 * a4);
      v15 = v14[2];
      v16 = *v14 == v8 && v14[1] == a2;
      if (v16 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {

        v17 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v15, a3);

        if (v17)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v18 = *v23;
  *(*v23 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = (*(v18 + 48) + 24 * a4);
  *v19 = v8;
  v19[1] = a2;
  v19[2] = a3;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1001683A0()
{
  v1 = v0;
  sub_100046184(&qword_10021F810, &qword_1001A5940);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
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

Swift::Int sub_100168510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100046184(&qword_10021F810, &qword_1001A5940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        Hasher.init(_seed:)();

        String.hash(into:)();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v30, v19);
        result = Hasher._finalize()();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 24 * v23);
        *v28 = v17;
        v28[1] = v18;
        v28[2] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10016876C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v20, a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v7 + 48) + 24 * v10);
    v13 = v12[2];
    v14 = *v12 == a1 && v12[1] == a2;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v13, a3);

      if (v15)
      {
        break;
      }
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001683A0();
    v18 = v20[0];
  }

  v16 = *(*(v18 + 48) + 24 * v10);
  sub_10016895C(v10);
  *v3 = v20[0];
  return v16;
}

uint64_t sub_100168918(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10016895C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 24 * v6 + 16);
        Hasher.init(_seed:)();

        String.hash(into:)();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v23, v10);
        v11 = Hasher._finalize()();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v2;
            v17 = (v15 + 24 * v6);
            if (v2 != v6 || v16 >= v17 + 24)
            {
              v19 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v19;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100168B9C()
{
  result = qword_10021F818;
  if (!qword_10021F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F818);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = a1;
  switch(*(a1 + 64))
  {
    case 1:
      sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
      ByteBuffer.writeAvroArray(_:)();
      goto LABEL_12;
    case 2:
      goto LABEL_7;
    case 3:
      sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v24, v10, v9, v11, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *&v25[64], v26, v27);
      v14 = ByteBuffer.writeAvroRecord(_:)(v25);
LABEL_9:
      v8 = v14;
LABEL_10:
      sub_100096480(v12);
      return v8;
    case 4:
      memcpy(__dst, (v10 + 16), sizeof(__dst));
      v15 = (2 * __dst[10]) ^ (__dst[10] >> 63);
      sub_100163ABC(v12, v25);
      sub_100163B18(__dst, v25);
      v16 = sub_1001706E8(v15);
      ByteBuffer.writeBytes(_:)(v16);
      sub_100172F08();
      memcpy(v25, &__dst[1], 0x41uLL);
      v17 = ByteBuffer.writeAvroValue(_:)(v25);
      sub_100163B74(__dst);
      a1 = sub_100096480(v12);
      v18 = __OFADD__(v11, v17);
      v8 = v11 + v17;
      if (!v18)
      {
        return v8;
      }

      __break(1u);
LABEL_7:
      sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
      ByteBuffer.writeAvroMap(_:)();
LABEL_12:
      sub_1001730EC();

      return v8;
    default:
      switch(*(a1 + 24))
      {
        case 1u:
          v21 = sub_1001705C0((2 * v10) ^ (v10 >> 31));
          goto LABEL_19;
        case 2u:
          v21 = sub_1001706E8((2 * v10) ^ (v10 >> 63));
LABEL_19:
          ByteBuffer.writeBytes(_:)(v21);
          sub_1000054F4();

          goto LABEL_10;
        case 3u:
          v22 = sub_100172F70(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27, v10);
          v14 = sub_100168EA8(v22);
          goto LABEL_9;
        case 4u:
          v20 = sub_100172F70(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27, *a1);
          v14 = sub_100168F1C(v20);
          goto LABEL_9;
        case 5u:
          sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
          v23._countAndFlagsBits = v10;
          v23._object = v9;
          v14 = ByteBuffer.writeAvroString(_:)(v23);
          goto LABEL_9;
        case 6u:
          sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
          v14 = sub_1001704E8(v10, v9, v11);
          goto LABEL_9;
        case 7u:
          sub_100096480(a1);
          return 0;
        default:
          v13 = sub_100172F70(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27, v10 & 1);
          v14 = sub_100168E34(v13);
          goto LABEL_9;
      }
  }
}

uint64_t sub_100168E34(_BYTE *a1)
{
  v2 = sub_100172BD8(1, 0);
  *(v2 + 32) = *a1;
  if (v2[2])
  {
    Data._Representation.append(contentsOf:)();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100168EA8(_DWORD *a1)
{
  v2 = sub_100172BD8(4, 0);
  *(v2 + 8) = *a1;
  if (v2[2])
  {
    Data._Representation.append(contentsOf:)();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100168F1C(void *a1)
{
  v2 = sub_100172BD8(8, 0);
  v2[4] = *a1;
  if (v2[2])
  {
    Data._Representation.append(contentsOf:)();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100168F90(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v4 < a2 || v3 > a2 || v3 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v8)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_100168FBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

void sub_100168FD0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_100168B48(v0);
    return;
  }

  v4 = sub_100172BD8(v2 - v1, 0);
  sub_100166950(v0, v6);
  v5 = sub_10017249C(v6, (v4 + 4), v3);
  sub_100014A40(v6[0], v6[1]);
  if (v5 == v3)
  {
    sub_100168B48(v0);
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Int ByteBuffer.writeAvroPrimitive(_:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v6 = 0;
  switch(a4)
  {
    case 1:
      v8 = sub_1001705C0((2 * a1) ^ (a1 >> 31));
      goto LABEL_6;
    case 2:
      v8 = sub_1001706E8((2 * a1) ^ (a1 >> 63));
LABEL_6:
      v9 = ByteBuffer.writeBytes(_:)(v8);

      return v9;
    case 3:
      LODWORD(v26) = a1;
      return sub_100168EA8(&v26);
    case 4:
      v26 = a1;
      return sub_100168F1C(&v26);
    case 5:
      v22 = sub_10000DD04();
      sub_100163C88(v22, v23, v24, 5);
      v25._countAndFlagsBits = a1;
      v25._object = a2;
      v17 = ByteBuffer.writeAvroString(_:)(v25);
      v18 = sub_10000DD04();
      v21 = 5;
      goto LABEL_12;
    case 6:
      v11 = sub_10000DD04();
      sub_100163C88(v11, v12, v13, 6);
      v14 = sub_10000DD04();
      v17 = sub_1001704E8(v14, v15, v16);
      v18 = sub_10000DD04();
      v21 = 6;
LABEL_12:
      sub_100163E18(v18, v19, v20, v21);
      return v17;
    case 7:
      return v6;
    default:
      LOBYTE(v26) = a1 & 1;
      return sub_100168E34(&v26);
  }
}

void ByteBuffer.writeAvroArray(_:)()
{
  sub_100005478();
  v3 = v2;
  v280 = type metadata accessor for String.Encoding();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100004370();
  v279 = v5;
  v6 = *(v3 + 16);
  if (!v6)
  {
    v264 = sub_100006D64();
    sub_10006C9F0(v264, v265, v266, v267);
    sub_1001731C4();
    if (!v77)
    {
LABEL_328:
      sub_10017323C();
      sub_1000054F4();

      goto LABEL_329;
    }

LABEL_336:
    v270 = sub_1000066A8(v27);
    sub_10006C9F0(v270, v6, 1, v1);
    goto LABEL_328;
  }

  v7 = sub_1001706E8(2 * v6);
  v1 = ByteBuffer.writeBytes(_:)(v7);

  v8 = 0;
  v283 = v3 + 32;
  while (1)
  {
    v9 = v283 + 72 * v8;
    memcpy(v295, v9, sizeof(v295));
    ++v8;
    v10 = *v295;
    v11 = *&v295[24];
    v12 = *&v295[16];
    switch(v295[64])
    {
      case 1:
        sub_100172DB4();
        sub_100172DB4();
        ByteBuffer.writeAvroArray(_:)();
        goto LABEL_18;
      case 2:
        sub_100172DB4();
        sub_100172DB4();
        ByteBuffer.writeAvroMap(_:)();
LABEL_18:
        v26 = v24;
        sub_100096480(v295);

LABEL_19:

        goto LABEL_211;
      case 3:
        v296.schema.type._countAndFlagsBits = *v295;
        v296.schema.type._object = *&v295[8];
        v296.schema.name = *&v295[16];
        v25 = *(v9 + 48);
        v296.schema.namespace = *(v9 + 32);
        *&v296.schema.fields._rawValue = v25;
        sub_100172DB4();
        v26 = ByteBuffer.writeAvroRecord(_:)(&v296);
        sub_100096480(v295);
        goto LABEL_211;
      case 4:
        sub_1001640BC(&v291);
        if (((2 * v294) ^ (v294 >> 63)) >= 0x80)
        {
          sub_100163ABC(v295, &v287);
          sub_100163ABC(v295, &v287);
          sub_100163B18(&v291, &v287);
          v28 = sub_100006D64();
          sub_10006C9F0(v28, v29, v30, _swiftEmptyArrayStorage);
          v15 = v31;
          v32 = v31[2];
          do
          {
            v33 = v15[3];
            if (v32 >= v33 >> 1)
            {
              v35 = sub_1000066A8(v33);
              sub_100172E08(v35);
              v15 = v36;
            }

            sub_100172D40();
          }

          while (v34);
        }

        else
        {
          sub_100163ABC(v295, &v287);
          sub_100163ABC(v295, &v287);
          sub_100163B18(&v291, &v287);
          v15 = _swiftEmptyArrayStorage;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v229 = sub_1000040F0();
          sub_10006C9F0(v229, v230, v231, v15);
          v15 = v232;
        }

        v16 = v15[3];
        if (v15[2] >= v16 >> 1)
        {
          v233 = sub_1000066A8(v16);
          sub_100172E08(v233);
          v15 = v234;
        }

        break;
      default:
        switch(v295[24])
        {
          case 1:
            sub_1001732CC();
            sub_10000E2A0();
            if (!v50)
            {
              goto LABEL_45;
            }

            sub_10000EC9C();
LABEL_44:
            Data._Representation.append(contentsOf:)();
LABEL_45:
            sub_100096480(v295);
            sub_100096480(v295);
            v26 = *(v11 + 16);

            goto LABEL_211;
          case 2:
            if (((2 * *v295) ^ (*v295 >> 63)) >= 0x80)
            {
              v67 = sub_100006D64();
              sub_10006C9F0(v67, v68, v69, _swiftEmptyArrayStorage);
              v11 = v70;
              v71 = *(v70 + 16);
              do
              {
                v72 = *(v11 + 24);
                if (v71 >= v72 >> 1)
                {
                  v74 = sub_1000066A8(v72);
                  sub_100172E08(v74);
                  v11 = v75;
                }

                sub_100172D40();
              }

              while (v73);
            }

            else
            {
              v11 = _swiftEmptyArrayStorage;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v253 = sub_1000040F0();
              sub_10006C9F0(v253, v254, v255, v11);
              v11 = v256;
            }

            v47 = *(v11 + 24);
            if (*(v11 + 16) >= v47 >> 1)
            {
              v257 = sub_1000066A8(v47);
              sub_100172E08(v257);
              v11 = v258;
            }

            sub_10017311C();
            goto LABEL_44;
          case 3:
            v48 = sub_100046184(&qword_100216160, &qword_10019A598);
            v11 = sub_10000BB9C(v48);
            sub_100008270(v11);
            *(sub_10000CF08(v49) + 32) = v10;
            goto LABEL_40;
          case 4:
            v45 = sub_100046184(&qword_100216160, &qword_10019A598);
            v11 = sub_100173104(v45);
            sub_100008270(v11);
            *(sub_10000CF08(v46) + 32) = v10;
            goto LABEL_40;
          case 5:
            if ((*&v295[8] & 0x1000000000000000) != 0)
            {
              v53 = sub_1000126FC();
            }

            else
            {
              sub_10000FF70();
              if (v78)
              {
                v53 = v51;
              }

              else
              {
                v53 = v52;
              }
            }

            v54 = (2 * v53) ^ (v53 >> 63);
            sub_100172DB4();
            sub_100172DB4();
            sub_100172DB4();
            sub_1001706E8(v54);
            sub_10000E2A0();
            if (v55)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v56 = *(v54 + 16);
            }

            else
            {
              v56 = 0;
            }

            static String.Encoding.utf8.getter();
            sub_100172E5C(v279);
            sub_10000CD20();
            v76(v279, v280);
            sub_10017317C();
            if (!v78 & v77)
            {
              v79 = 0;
            }

            else
            {
              v79 = v54;
            }

            if (!v78 & v77)
            {
              v11 = 0xC000000000000000;
            }

            else
            {
              v11 = v10;
            }

            sub_10001BD4C();
            Data.append(_:)();
            sub_100096480(v295);
            sub_100096480(v295);
            sub_100096480(v295);
            switch(v11 >> 62)
            {
              case 1uLL:
                v102 = sub_10001BD4C();
                sub_100014A40(v102, v103);
                LODWORD(v27) = HIDWORD(v79) - v79;
                if (__OFSUB__(HIDWORD(v79), v79))
                {
                  goto LABEL_341;
                }

                v27 = v27;
LABEL_90:
                v26 = v56 + v27;
                if (!__OFADD__(v56, v27))
                {
                  goto LABEL_211;
                }

                goto LABEL_335;
              case 2uLL:
                v97 = *(v79 + 16);
                v96 = *(v79 + 24);
                v98 = sub_10001BD4C();
                sub_100014A40(v98, v99);
                v27 = v96 - v97;
                if (!__OFSUB__(v96, v97))
                {
                  goto LABEL_90;
                }

                goto LABEL_342;
              case 3uLL:
                v100 = sub_10001BD4C();
                sub_100014A40(v100, v101);
                v27 = 0;
                goto LABEL_90;
              default:
                v80 = sub_10001BD4C();
                sub_100014A40(v80, v81);
                v27 = BYTE6(v11);
                goto LABEL_90;
            }

          case 6:
            v57 = (*&v295[8] >> 60) & 3;
            if (v57)
            {
              v11 = *&v295[8] >> 62;
              v274 = HIDWORD(*v295);
              v282 = v295[14];
              if (v57 != 1)
              {
                v85 = 0;
                switch(v11)
                {
                  case 1uLL:
                    if (__OFSUB__(*&v295[4], *v295))
                    {
                      goto LABEL_347;
                    }

                    v85 = *&v295[4] - *v295;
LABEL_138:
                    sub_100172DB4();
                    sub_100172DB4();
                    sub_100172DB4();
LABEL_139:
                    sub_1001706E8((2 * v85) ^ (v85 >> 63));
                    sub_100172FD4();
                    if (v128)
                    {
                      sub_100013010();
                      v129 = *(v9 + 16);
                    }

                    else
                    {
                      v129 = 0;
                    }

                    sub_100172F80();
                    sub_100096480(v295);
                    sub_100096480(v295);
                    switch(v11)
                    {
                      case 0:
                        sub_100096480(v295);
                        v27 = v282;
                        goto LABEL_150;
                      case 1:
                        sub_100096480(v295);
                        LODWORD(v27) = v274 - v10;
                        if (__OFSUB__(v274, v10))
                        {
                          goto LABEL_349;
                        }

                        v27 = v27;
LABEL_150:
                        v26 = v129 + v27;
                        if (!__OFADD__(v129, v27))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_338;
                      case 2:
                        v130 = *(v10 + 16);
                        v11 = *(v10 + 24);
                        sub_100096480(v295);
                        v27 = v11 - v130;
                        if (!__OFSUB__(v11, v130))
                        {
                          goto LABEL_150;
                        }

                        goto LABEL_348;
                      case 3:
                        sub_100096480(v295);
                        v27 = 0;
                        goto LABEL_150;
                      default:
LABEL_381:
                        JUMPOUT(0);
                    }

                  case 2uLL:
                    v127 = *(*v295 + 16);
                    v126 = *(*v295 + 24);
                    v85 = v126 - v127;
                    if (!__OFSUB__(v126, v127))
                    {
                      goto LABEL_138;
                    }

                    goto LABEL_346;
                  case 3uLL:
                    goto LABEL_139;
                  default:
                    v85 = v295[14];
                    goto LABEL_139;
                }
              }

              v58 = 0;
              switch(v11)
              {
                case 1uLL:
                  if (__OFSUB__(*&v295[4], *v295))
                  {
                    goto LABEL_345;
                  }

                  v58 = *&v295[4] - *v295;
LABEL_128:
                  sub_100172DB4();
                  sub_100172DB4();
                  sub_100172DB4();
LABEL_129:
                  if (!__OFSUB__(v58, v12))
                  {
                    sub_100173028(v58 - v12);
                    sub_100172FD4();
                    if (v124)
                    {
                      sub_100013010();
                      v125 = *(v58 + 16);
                    }

                    else
                    {
                      v125 = 0;
                    }

                    sub_100172F80();
                    sub_100096480(v295);
                    sub_100096480(v295);
                    switch(v11)
                    {
                      case 1:
                        sub_100096480(v295);
                        LODWORD(v27) = v274 - v10;
                        if (__OFSUB__(v274, v10))
                        {
                          goto LABEL_351;
                        }

                        v27 = v27;
LABEL_159:
                        v26 = v125 + v27;
                        if (!__OFADD__(v125, v27))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_339;
                      case 2:
                        v131 = *(v10 + 16);
                        v11 = *(v10 + 24);
                        sub_100096480(v295);
                        v27 = v11 - v131;
                        if (!__OFSUB__(v11, v131))
                        {
                          goto LABEL_159;
                        }

                        goto LABEL_350;
                      case 3:
                        sub_100096480(v295);
                        v27 = 0;
                        goto LABEL_159;
                      default:
                        sub_100096480(v295);
                        v27 = v282;
                        goto LABEL_159;
                    }
                  }

                  break;
                case 2uLL:
                  v123 = *(*v295 + 16);
                  v122 = *(*v295 + 24);
                  v58 = v122 - v123;
                  if (!__OFSUB__(v122, v123))
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_344;
                case 3uLL:
                  goto LABEL_129;
                default:
                  v58 = v295[14];
                  goto LABEL_129;
              }

              goto LABEL_337;
            }

            v82 = *(*v295 + 16);
            v11 = 2 * v82;
            sub_100172DB4();
            sub_100172DB4();
            sub_100172DB4();
            sub_1001706E8(2 * v82);
            sub_10000E2A0();
            if (v83)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v84 = *(2 * v82 + 0x10);
            }

            else
            {
              v84 = 0;
            }

            if (*(v10 + 16))
            {
              sub_10017329C();
            }

            sub_100096480(v295);
            sub_100096480(v295);
            sub_100096480(v295);
            v26 = v84 + v82;
            if (!__OFADD__(v84, v82))
            {
              goto LABEL_211;
            }

            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
            break;
          case 7:
            sub_100096480(v295);
            sub_100096480(v295);
            v26 = 0;
            goto LABEL_211;
          default:
            v13 = sub_100046184(&qword_100216160, &qword_10019A598);
            v11 = sub_1001730BC(v13);
            sub_100008270(v11);
            *(sub_10000CF08(v14) + 32) = v10 & 1;
LABEL_40:
            Data._Representation.append(contentsOf:)();
            sub_100096480(v295);
            sub_100096480(v295);
            v26 = *(v11 + 16);
            goto LABEL_19;
        }

        goto LABEL_353;
    }

    sub_10017311C();
    Data._Representation.append(contentsOf:)();
    v281 = v15[2];

    countAndFlagsBits = v292.schema.type._countAndFlagsBits;
    v18 = v292.schema.name._countAndFlagsBits;
    object = v292.schema.name._object;
    switch(v293)
    {
      case 1:
        v44 = sub_10000706C();
        sub_100163ABC(v44, &v287);
        ByteBuffer.writeAvroArray(_:)();
        goto LABEL_30;
      case 2:
        v41 = sub_10000706C();
        sub_100163ABC(v41, &v287);
        ByteBuffer.writeAvroMap(_:)();
LABEL_30:
        v11 = v42;
        sub_100163B74(&v291);
        sub_100096480(v295);

        goto LABEL_115;
      case 3:
        v297 = v292;
        sub_100163ABC(&v292, &v287);
        v11 = ByteBuffer.writeAvroRecord(_:)(&v297);
        sub_100163B74(&v291);
        sub_100096480(v295);
        v43 = &v292;
LABEL_114:
        sub_100096480(v43);
LABEL_115:
        sub_100096480(v295);
        break;
      case 4:
        sub_1001640BC(&v287);
        v37 = (2 * v290) ^ (v290 >> 63);
        v38 = sub_10000706C();
        sub_100163ABC(v38, v285);
        sub_100163B18(&v287, v285);
        sub_1001706E8(v37);
        sub_10000E2A0();
        if (v39)
        {
          sub_10000EC9C();
          Data._Representation.append(contentsOf:)();
          v40 = *(v37 + 16);
        }

        else
        {
          v40 = 0;
        }

        v59 = v288.schema.type._countAndFlagsBits;
        v61 = v288.schema.name._countAndFlagsBits;
        v60 = v288.schema.name._object;
        switch(v289)
        {
          case 1:
            v95 = sub_1000126A4();
            sub_100163ABC(v95, v285);
            ByteBuffer.writeAvroArray(_:)();
            goto LABEL_83;
          case 2:
            v91 = sub_1000126A4();
            sub_100163ABC(v91, v285);
            ByteBuffer.writeAvroMap(_:)();
LABEL_83:
            v93 = v92;
            sub_100163B74(&v287);
            sub_100163B74(&v291);
            sub_100096480(v295);

            goto LABEL_207;
          case 3:
            v298 = v288;
            sub_100163ABC(&v288, v285);
            v93 = ByteBuffer.writeAvroRecord(_:)(&v298);
            sub_100163B74(&v287);
            sub_100163B74(&v291);
            sub_100096480(v295);
            v94 = &v288;
            goto LABEL_206;
          case 4:
            v86 = v40;
            sub_1001640BC(v285);
            v87 = (2 * v286) ^ (v286 >> 63);
            v88 = sub_1000126A4();
            sub_100163ABC(v88, v284);
            sub_100163B18(v285, v284);
            sub_1001706E8(v87);
            sub_10000E2A0();
            if (v89)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v90 = *(v87 + 16);
            }

            else
            {
              v90 = 0;
            }

            sub_100172EF0(v299, v285);
            v119 = ByteBuffer.writeAvroValue(_:)(v299);
            sub_100163B74(v285);
            sub_100163B74(&v287);
            sub_100163B74(&v291);
            sub_100096480(v295);
            v120 = sub_1000126A4();
            sub_100096480(v120);
            v121 = sub_10000706C();
            sub_100096480(v121);
            sub_100096480(v295);
            v93 = v90 + v119;
            if (__OFADD__(v90, v119))
            {
              goto LABEL_340;
            }

            v40 = v86;
            goto LABEL_209;
          default:
            switch(LOBYTE(v288.schema.name._object))
            {
              case 1:
                sub_1001732CC();
                goto LABEL_190;
              case 2:
                sub_1001706E8((2 * v288.schema.type._countAndFlagsBits) ^ (v288.schema.type._countAndFlagsBits >> 63));
LABEL_190:
                sub_10000E2A0();
                if (v161)
                {
                  sub_10000EC9C();
                  Data._Representation.append(contentsOf:)();
                  v93 = v60[2];
                }

                else
                {
                  v93 = 0;
                }

                goto LABEL_204;
              case 3:
                v159 = sub_100046184(&qword_100216160, &qword_10019A598);
                v65 = sub_10000BB9C(v159);
                sub_100008270(v65);
                *(sub_10000CF08(v160) + 32) = v59;
                goto LABEL_187;
              case 4:
                v157 = sub_100046184(&qword_100216160, &qword_10019A598);
                v65 = sub_100173104(v157);
                sub_100008270(v65);
                *(sub_10000CF08(v158) + 32) = v59;
                goto LABEL_187;
              case 5:
                if ((v288.schema.type._object & 0x1000000000000000) != 0)
                {
                  v164 = sub_1000126FC();
                }

                else
                {
                  sub_10000FF70();
                  if (v78)
                  {
                    v164 = v162;
                  }

                  else
                  {
                    v164 = v163;
                  }
                }

                v165 = (2 * v164) ^ (v164 >> 63);
                v166 = sub_1000126A4();
                sub_100163ABC(v166, v285);
                sub_1001706E8(v165);
                sub_10000E2A0();
                v277 = v40;
                if (v167)
                {
                  sub_10000EC9C();
                  Data._Representation.append(contentsOf:)();
                  v168 = *(v165 + 16);
                }

                else
                {
                  v168 = 0;
                }

                static String.Encoding.utf8.getter();
                sub_100172E5C(v279);
                sub_10000CD20();
                v200(v279, v280);
                sub_10017317C();
                if (!v202 & v201)
                {
                  v203 = 0;
                }

                else
                {
                  v203 = v165;
                }

                if (!v202 & v201)
                {
                  v204 = 0xC000000000000000;
                }

                else
                {
                  v204 = v59;
                }

                sub_100173004();
                Data.append(_:)();
                switch(v204 >> 62)
                {
                  case 1uLL:
                    v224 = sub_100173004();
                    sub_100014A40(v224, v225);
                    sub_100163B74(&v287);
                    sub_100163B74(&v291);
                    sub_100096480(v295);
                    v226 = sub_1000126A4();
                    sub_100096480(v226);
                    if (__OFSUB__(HIDWORD(v203), v203))
                    {
                      goto LABEL_372;
                    }

                    v208 = HIDWORD(v203) - v203;
                    break;
                  case 2uLL:
                    v215 = v168;
                    v217 = *(v203 + 16);
                    v216 = *(v203 + 24);
                    v218 = sub_100173004();
                    sub_100014A40(v218, v219);
                    sub_100163B74(&v287);
                    sub_100163B74(&v291);
                    sub_100096480(v295);
                    v220 = sub_1000126A4();
                    sub_100096480(v220);
                    v208 = v216 - v217;
                    if (__OFSUB__(v216, v217))
                    {
                      goto LABEL_371;
                    }

                    v40 = v277;
                    v168 = v215;
                    break;
                  case 3uLL:
                    v221 = sub_100173004();
                    sub_100014A40(v221, v222);
                    sub_100163B74(&v287);
                    sub_100163B74(&v291);
                    sub_100096480(v295);
                    v223 = sub_1000126A4();
                    sub_100096480(v223);
                    v208 = 0;
                    break;
                  default:
                    v205 = sub_100173004();
                    sub_100014A40(v205, v206);
                    sub_100163B74(&v287);
                    sub_100163B74(&v291);
                    sub_100096480(v295);
                    v207 = sub_1000126A4();
                    sub_100096480(v207);
                    v208 = BYTE6(v204);
                    break;
                }

                v227 = sub_10000706C();
                sub_100096480(v227);
                v93 = v168 + v208;
                if (!__OFADD__(v168, v208))
                {
                  goto LABEL_208;
                }

                goto LABEL_358;
              case 6:
                v169 = (v288.schema.type._object >> 60) & 3;
                if (v169)
                {
                  v170 = v288.schema.type._object >> 62;
                  v273 = BYTE6(v288.schema.type._object);
                  v278 = v40;
                  v171 = 0;
                  if (v169 != 1)
                  {
                    v214 = v288.schema.type._object >> 62;
                    switch(v170)
                    {
                      case 1uLL:
                        sub_100173130();
                        if (v173)
                        {
                          goto LABEL_374;
                        }

                        v171 = v242;
LABEL_298:
                        v245 = sub_1000126A4();
                        sub_100163ABC(v245, v285);
LABEL_299:
                        sub_1001706E8((2 * v171) ^ (v171 >> 63));
                        sub_10000E2A0();
                        if (v246)
                        {
                          sub_10000EC9C();
                          Data._Representation.append(contentsOf:)();
                          v247 = *(v171 + 16);
                        }

                        else
                        {
                          v247 = 0;
                        }

                        sub_100172F80();
                        switch(v214)
                        {
                          case 0:
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            v248 = v273;
                            goto LABEL_310;
                          case 1:
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            sub_100173130();
                            if (v173)
                            {
                              goto LABEL_376;
                            }

                            v248 = v248;
LABEL_310:
                            v93 = v247 + v248;
                            if (__OFADD__(v247, v248))
                            {
                              goto LABEL_369;
                            }

LABEL_320:
                            v40 = v278;
                            break;
                          case 2:
                            v250 = *(v59 + 16);
                            v249 = *(v59 + 24);
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            v248 = v249 - v250;
                            if (!__OFSUB__(v249, v250))
                            {
                              goto LABEL_310;
                            }

                            goto LABEL_375;
                          case 3:
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            v248 = 0;
                            goto LABEL_310;
                          default:
                            goto LABEL_381;
                        }

                        goto LABEL_205;
                      case 2uLL:
                        v244 = *(v288.schema.type._countAndFlagsBits + 16);
                        v243 = *(v288.schema.type._countAndFlagsBits + 24);
                        v171 = v243 - v244;
                        if (!__OFSUB__(v243, v244))
                        {
                          goto LABEL_298;
                        }

                        __break(1u);
LABEL_374:
                        __break(1u);
LABEL_375:
                        __break(1u);
LABEL_376:
                        __break(1u);
LABEL_377:
                        __break(1u);
LABEL_378:
                        __break(1u);
LABEL_379:
                        __break(1u);
LABEL_380:
                        __break(1u);
                        goto LABEL_381;
                      case 3uLL:
                        goto LABEL_299;
                      default:
                        v171 = BYTE6(v288.schema.type._object);
                        goto LABEL_299;
                    }
                  }

                  v271 = v288.schema.type._object >> 62;
                  switch(v170)
                  {
                    case 1uLL:
                      sub_100173130();
                      if (v173)
                      {
                        goto LABEL_378;
                      }

                      v171 = v235;
LABEL_288:
                      v238 = sub_1000126A4();
                      sub_100163ABC(v238, v285);
LABEL_289:
                      if (!__OFSUB__(v171, v61))
                      {
                        sub_100173028(v171 - v61);
                        sub_10000E2A0();
                        if (v239)
                        {
                          sub_10000EC9C();
                          Data._Representation.append(contentsOf:)();
                          v240 = *(v171 + 16);
                        }

                        else
                        {
                          v240 = 0;
                        }

                        sub_100172F80();
                        switch(v271)
                        {
                          case 1:
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            sub_100173130();
                            if (v173)
                            {
                              goto LABEL_380;
                            }

                            v241 = v241;
LABEL_319:
                            v93 = v240 + v241;
                            if (!__OFADD__(v240, v241))
                            {
                              goto LABEL_320;
                            }

                            goto LABEL_370;
                          case 2:
                            v252 = *(v59 + 16);
                            v251 = *(v59 + 24);
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            v241 = v251 - v252;
                            if (!__OFSUB__(v251, v252))
                            {
                              goto LABEL_319;
                            }

                            goto LABEL_379;
                          case 3:
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            v241 = 0;
                            goto LABEL_319;
                          default:
                            sub_100163B74(&v287);
                            sub_100163B74(&v291);
                            sub_100096480(v295);
                            v241 = v273;
                            goto LABEL_319;
                        }
                      }

                      break;
                    case 2uLL:
                      v237 = *(v288.schema.type._countAndFlagsBits + 16);
                      v236 = *(v288.schema.type._countAndFlagsBits + 24);
                      v171 = v236 - v237;
                      if (!__OFSUB__(v236, v237))
                      {
                        goto LABEL_288;
                      }

                      goto LABEL_377;
                    case 3uLL:
                      goto LABEL_289;
                    default:
                      v171 = BYTE6(v288.schema.type._object);
                      goto LABEL_289;
                  }

                  goto LABEL_368;
                }

                v209 = v40;
                v210 = 2 * *(v288.schema.type._countAndFlagsBits + 16);
                v211 = sub_1000126A4();
                sub_100163ABC(v211, v285);
                sub_1001706E8(v210);
                sub_10000E2A0();
                if (v212)
                {
                  sub_10000EC9C();
                  Data._Representation.append(contentsOf:)();
                  v213 = *(v210 + 16);
                }

                else
                {
                  v213 = 0;
                }

                if (*(v59 + 16))
                {
                  sub_10017329C();
                  v228 = *(v59 + 16);
                }

                else
                {
                  v228 = 0;
                }

                sub_100163B74(&v287);
                sub_100163B74(&v291);
                sub_100096480(v295);
                v93 = v213 + v228;
                if (__OFADD__(v213, v228))
                {
                  goto LABEL_367;
                }

                v40 = v209;
LABEL_205:
                v94 = sub_1000126A4();
LABEL_206:
                sub_100096480(v94);
LABEL_207:
                v172 = sub_10000706C();
                sub_100096480(v172);
LABEL_208:
                sub_100096480(v295);
LABEL_209:
                v11 = v40 + v93;
                if (__OFADD__(v40, v93))
                {
                  goto LABEL_332;
                }

                break;
              case 7:
                sub_100163B74(&v287);
                sub_100163B74(&v291);
                sub_100096480(v295);
                v93 = 0;
                goto LABEL_205;
              default:
                v62 = v40;
                v63 = v288.schema.type._countAndFlagsBits & 1;
                v64 = sub_100046184(&qword_100216160, &qword_10019A598);
                v65 = sub_1001730BC(v64);
                sub_100008270(v65);
                *(sub_10000CF08(v66) + 32) = v63;
                v40 = v62;
LABEL_187:
                Data._Representation.append(contentsOf:)();
                v93 = v65[2];

LABEL_204:
                sub_100163B74(&v287);
                sub_100163B74(&v291);
                sub_100096480(v295);
                goto LABEL_205;
            }

            break;
        }

        break;
      default:
        switch(LOBYTE(v292.schema.name._object))
        {
          case 1:
            sub_1001732CC();
            goto LABEL_99;
          case 2:
            sub_1001706E8((2 * v292.schema.type._countAndFlagsBits) ^ (v292.schema.type._countAndFlagsBits >> 63));
LABEL_99:
            sub_100172FD4();
            if (v109)
            {
              sub_100013010();
              v11 = object[2];
            }

            else
            {
              v11 = 0;
            }

            goto LABEL_113;
          case 3:
            v106 = sub_100046184(&qword_100216160, &qword_10019A598);
            v22 = sub_10000BB9C(v106);
            sub_100008270(v22);
            *(v22 + 16) = 4;
            *(v22 + 24) = v107;
            *(v22 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 4:
            v104 = sub_100046184(&qword_100216160, &qword_10019A598);
            v22 = sub_100173104(v104);
            sub_100008270(v22);
            *(v22 + 16) = 8;
            *(v22 + 24) = v105;
            *(v22 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 5:
            if ((v292.schema.type._object & 0x1000000000000000) != 0)
            {
              v112 = sub_1000126FC();
            }

            else
            {
              sub_10000FF70();
              if (v78)
              {
                v112 = v110;
              }

              else
              {
                v112 = v111;
              }
            }

            v113 = (2 * v112) ^ (v112 >> 63);
            v114 = sub_10000706C();
            sub_100163ABC(v114, &v287);
            sub_1001706E8(v113);
            sub_10000E2A0();
            if (v115)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v275 = *(v113 + 16);
            }

            else
            {
              v275 = 0;
            }

            static String.Encoding.utf8.getter();
            sub_100172E5C(v279);
            sub_10000CD20();
            v132(v279, v280);
            sub_10017317C();
            if (!v134 & v133)
            {
              v135 = 0;
            }

            else
            {
              v135 = v113;
            }

            if (!v134 & v133)
            {
              v136 = 0xC000000000000000;
            }

            else
            {
              v136 = countAndFlagsBits;
            }

            sub_10001BD4C();
            Data.append(_:)();
            switch(v136 >> 62)
            {
              case 1uLL:
                v154 = sub_10001BD4C();
                sub_100014A40(v154, v155);
                sub_100163B74(&v291);
                sub_100096480(v295);
                v156 = sub_10000706C();
                sub_100096480(v156);
                sub_100096480(v295);
                LODWORD(v140) = HIDWORD(v135) - v135;
                if (__OFSUB__(HIDWORD(v135), v135))
                {
                  goto LABEL_356;
                }

                v140 = v140;
LABEL_181:
                v11 = v275 + v140;
                if (!__OFADD__(v275, v140))
                {
                  goto LABEL_210;
                }

                goto LABEL_343;
              case 2uLL:
                v147 = *(v135 + 16);
                v146 = *(v135 + 24);
                v148 = sub_10001BD4C();
                sub_100014A40(v148, v149);
                sub_100163B74(&v291);
                sub_100096480(v295);
                v150 = sub_10000706C();
                sub_100096480(v150);
                sub_100096480(v295);
                v140 = v146 - v147;
                if (!__OFSUB__(v146, v147))
                {
                  goto LABEL_181;
                }

                goto LABEL_357;
              case 3uLL:
                v151 = sub_10001BD4C();
                sub_100014A40(v151, v152);
                sub_100163B74(&v291);
                sub_100096480(v295);
                v153 = sub_10000706C();
                sub_100096480(v153);
                sub_100096480(v295);
                v140 = 0;
                goto LABEL_181;
              default:
                v137 = sub_10001BD4C();
                sub_100014A40(v137, v138);
                sub_100163B74(&v291);
                sub_100096480(v295);
                v139 = sub_10000706C();
                sub_100096480(v139);
                sub_100096480(v295);
                v140 = BYTE6(v136);
                goto LABEL_181;
            }

          case 6:
            v116 = (v292.schema.type._object >> 60) & 3;
            if (v116)
            {
              v117 = v292.schema.type._object >> 62;
              countAndFlagsBits_high = HIDWORD(v292.schema.type._countAndFlagsBits);
              v276 = BYTE6(v292.schema.type._object);
              if (v116 != 1)
              {
                v145 = 0;
                switch(v117)
                {
                  case 1uLL:
                    if (__OFSUB__(HIDWORD(v292.schema.type._countAndFlagsBits), v292.schema.type._countAndFlagsBits))
                    {
                      goto LABEL_362;
                    }

                    v145 = HIDWORD(v292.schema.type._countAndFlagsBits) - LODWORD(v292.schema.type._countAndFlagsBits);
LABEL_234:
                    v185 = sub_10000706C();
                    sub_100163ABC(v185, &v287);
LABEL_235:
                    sub_1001706E8((2 * v145) ^ (v145 >> 63));
                    sub_100172FD4();
                    if (v186)
                    {
                      sub_100013010();
                      v187 = object[2];
                    }

                    else
                    {
                      v187 = 0;
                    }

                    sub_100172F80();
                    switch(v117)
                    {
                      case 0:
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v188 = sub_10000706C();
                        sub_100096480(v188);
                        sub_100096480(v295);
                        v189 = v276;
                        goto LABEL_246;
                      case 1:
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v194 = sub_10000706C();
                        sub_100096480(v194);
                        sub_100096480(v295);
                        LODWORD(v189) = countAndFlagsBits_high - countAndFlagsBits;
                        if (__OFSUB__(countAndFlagsBits_high, countAndFlagsBits))
                        {
                          goto LABEL_364;
                        }

                        v189 = v189;
LABEL_246:
                        v11 = v187 + v189;
                        if (!__OFADD__(v187, v189))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_354;
                      case 2:
                        v191 = *(countAndFlagsBits + 16);
                        v190 = *(countAndFlagsBits + 24);
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v192 = sub_10000706C();
                        sub_100096480(v192);
                        sub_100096480(v295);
                        v189 = v190 - v191;
                        if (!__OFSUB__(v190, v191))
                        {
                          goto LABEL_246;
                        }

                        goto LABEL_363;
                      case 3:
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v193 = sub_10000706C();
                        sub_100096480(v193);
                        sub_100096480(v295);
                        v189 = 0;
                        goto LABEL_246;
                      default:
                        goto LABEL_381;
                    }

                  case 2uLL:
                    v184 = *(v292.schema.type._countAndFlagsBits + 16);
                    v183 = *(v292.schema.type._countAndFlagsBits + 24);
                    v145 = v183 - v184;
                    if (!__OFSUB__(v183, v184))
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_361;
                  case 3uLL:
                    goto LABEL_235;
                  default:
                    v145 = BYTE6(v292.schema.type._object);
                    goto LABEL_235;
                }
              }

              v118 = 0;
              switch(v117)
              {
                case 1uLL:
                  if (__OFSUB__(HIDWORD(v292.schema.type._countAndFlagsBits), v292.schema.type._countAndFlagsBits))
                  {
                    goto LABEL_360;
                  }

                  v118 = HIDWORD(v292.schema.type._countAndFlagsBits) - LODWORD(v292.schema.type._countAndFlagsBits);
LABEL_224:
                  v178 = sub_10000706C();
                  sub_100163ABC(v178, &v287);
LABEL_225:
                  if (!__OFSUB__(v118, v18))
                  {
                    sub_100173028(v118 - v18);
                    sub_100172FD4();
                    if (v179)
                    {
                      sub_100013010();
                      v180 = *(v118 + 16);
                    }

                    else
                    {
                      v180 = 0;
                    }

                    sub_100172F80();
                    switch(v117)
                    {
                      case 1:
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v199 = sub_10000706C();
                        sub_100096480(v199);
                        sub_100096480(v295);
                        LODWORD(v182) = countAndFlagsBits_high - countAndFlagsBits;
                        if (__OFSUB__(countAndFlagsBits_high, countAndFlagsBits))
                        {
                          goto LABEL_366;
                        }

                        v182 = v182;
LABEL_255:
                        v11 = v180 + v182;
                        if (!__OFADD__(v180, v182))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_355;
                      case 2:
                        v196 = *(countAndFlagsBits + 16);
                        v195 = *(countAndFlagsBits + 24);
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v197 = sub_10000706C();
                        sub_100096480(v197);
                        sub_100096480(v295);
                        v182 = v195 - v196;
                        if (!__OFSUB__(v195, v196))
                        {
                          goto LABEL_255;
                        }

                        goto LABEL_365;
                      case 3:
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v198 = sub_10000706C();
                        sub_100096480(v198);
                        sub_100096480(v295);
                        v182 = 0;
                        goto LABEL_255;
                      default:
                        sub_100163B74(&v291);
                        sub_100096480(v295);
                        v181 = sub_10000706C();
                        sub_100096480(v181);
                        sub_100096480(v295);
                        v182 = v276;
                        goto LABEL_255;
                    }
                  }

                  break;
                case 2uLL:
                  v177 = *(v292.schema.type._countAndFlagsBits + 16);
                  v176 = *(v292.schema.type._countAndFlagsBits + 24);
                  v118 = v176 - v177;
                  if (!__OFSUB__(v176, v177))
                  {
                    goto LABEL_224;
                  }

                  goto LABEL_359;
                case 3uLL:
                  goto LABEL_225;
                default:
                  v118 = BYTE6(v292.schema.type._object);
                  goto LABEL_225;
              }

LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);
            }

            v141 = 2 * *(v292.schema.type._countAndFlagsBits + 16);
            v142 = sub_10000706C();
            sub_100163ABC(v142, &v287);
            sub_1001706E8(v141);
            sub_10000E2A0();
            if (v143)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v144 = *(v141 + 16);
            }

            else
            {
              v144 = 0;
            }

            if (*(countAndFlagsBits + 16))
            {
              sub_10017329C();
              v174 = *(countAndFlagsBits + 16);
            }

            else
            {
              v174 = 0;
            }

            sub_100163B74(&v291);
            sub_100096480(v295);
            v175 = sub_10000706C();
            sub_100096480(v175);
            sub_100096480(v295);
            v173 = __OFADD__(v144, v174);
            v11 = v144 + v174;
            if (v173)
            {
              goto LABEL_352;
            }

            break;
          case 7:
            sub_100163B74(&v291);
            sub_100096480(v295);
            v108 = sub_10000706C();
            sub_100096480(v108);
            sub_100096480(v295);
            v11 = 0;
            goto LABEL_210;
          default:
            v20 = v292.schema.type._countAndFlagsBits & 1;
            v21 = sub_100046184(&qword_100216160, &qword_10019A598);
            v22 = sub_1001730BC(v21);
            sub_100008270(v22);
            *(v22 + 16) = 1;
            *(v22 + 24) = v23;
            *(v22 + 32) = v20;
LABEL_96:
            Data._Representation.append(contentsOf:)();
            v11 = *(v22 + 16);

LABEL_113:
            sub_100163B74(&v291);
            sub_100096480(v295);
            v43 = sub_10000706C();
            goto LABEL_114;
        }

        break;
    }

LABEL_210:
    v27 = v281;
    v26 = v281 + v11;
    if (__OFADD__(v281, v11))
    {
      goto LABEL_331;
    }

LABEL_211:
    v173 = __OFADD__(v1, v26);
    v1 += v26;
    if (v173)
    {
      break;
    }

    if (v8 == v6)
    {
      v259 = sub_100006D64();
      sub_10006C9F0(v259, v260, v261, v262);
      v6 = v263;
      v11 = *(v263 + 16);
      v27 = *(v263 + 24);
      v8 = v11 + 1;
      if (v11 >= v27 >> 1)
      {
        goto LABEL_333;
      }

      goto LABEL_325;
    }
  }

  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  v268 = sub_1000066A8(v27);
  sub_10006C9F0(v268, v8, 1, v6);
  v6 = v269;
LABEL_325:
  *(v6 + 16) = v8;
  *(v6 + v11 + 32) = 0;
  ByteBuffer.writeBytes(_:)(v6);
  sub_10000AB28();

  if (__OFADD__(v1, v0))
  {
    __break(1u);
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

LABEL_329:
  sub_100005460();
}