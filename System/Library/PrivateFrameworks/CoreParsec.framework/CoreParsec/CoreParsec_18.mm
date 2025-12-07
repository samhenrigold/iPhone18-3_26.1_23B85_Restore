void ByteBuffer.writeAvroMap(_:)()
{
  sub_100005478();
  v3 = v2;
  v162 = type metadata accessor for String.Encoding();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100004370();
  v161 = v7;
  v8 = *(v3 + 16);
  if (!v8)
  {
    v148 = sub_100006D64();
    sub_10006C9F0(v148, v149, v150, v151);
    sub_1001731C4();
    if (!v28)
    {
LABEL_196:
      sub_10017323C();
      sub_1000054F4();

      goto LABEL_197;
    }

LABEL_207:
    v154 = sub_1000066A8(v100);
    sub_10006C9F0(v154, v3, 1, v1);
    goto LABEL_196;
  }

  v9 = 2 * v8;

  v10 = sub_1001706E8(v9);
  v11 = ByteBuffer.writeBytes(_:)(v10);

  v12 = 0;
  v13 = v3 + 64;
  v14 = 1 << *(v3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v1 = v15 & *(v3 + 64);
  v16 = (v14 + 63) >> 6;
  v159 = v3 + 64;
  v160 = (v5 + 8);
  v157 = v3;
  v158 = v16;
  if (v1)
  {
    while (1)
    {
      v17 = v12;
LABEL_9:
      v18 = (*(v3 + 48) + 16 * (__clz(__rbit64(v1)) | (v17 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_10000BFF0();
      memcpy(v171, v21, sizeof(v171));
      if ((v19 & 0x1000000000000000) != 0)
      {
        v22 = String.UTF8View._foreignCount()();
      }

      else if ((v19 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      v23 = (2 * v22) ^ (v22 >> 63);

      sub_100172FB0();
      sub_1001706E8(v23);
      sub_100015BE4();
      v164 = v11;
      if (v24)
      {
        sub_10000C910();
        Data._Representation.append(contentsOf:)();
        v25 = *(v23 + 16);
      }

      else
      {
        v25 = 0;
      }

      v1 &= v1 - 1;

      v3 = v161;
      static String.Encoding.utf8.getter();
      sub_100172FC8();
      v26 = String.data(using:allowLossyConversion:)();
      v11 = v27;
      (*v160)(v161, v162);
      sub_10017317C();
      if (!v29 & v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

      if (!v29 & v28)
      {
        v10 = 0xC000000000000000;
      }

      else
      {
        v10 = v11;
      }

      sub_100037EB4();
      Data.append(_:)();

      switch(v10 >> 62)
      {
        case 1uLL:
          v38 = sub_100037EB4();
          sub_100014A40(v38, v39);
          v12 = (HIDWORD(v30) - v30);
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_202;
          }

          v12 = v12;
LABEL_30:
          v3 = v25 + v12;
          if (__OFADD__(v25, v12))
          {
            goto LABEL_199;
          }

          break;
        case 2uLL:
          v11 = *(v30 + 16);
          v33 = *(v30 + 24);
          v34 = sub_100037EB4();
          sub_100014A40(v34, v35);
          v12 = v33 - v11;
          if (!__OFSUB__(v33, v11))
          {
            goto LABEL_30;
          }

          goto LABEL_203;
        case 3uLL:
          v36 = sub_100037EB4();
          sub_100014A40(v36, v37);
          v12 = 0;
          goto LABEL_30;
        default:
          v31 = sub_100037EB4();
          sub_100014A40(v31, v32);
          v12 = BYTE6(v10);
          goto LABEL_30;
      }

      v40 = *v171;
      v41 = *&v171[16];
      v10 = *&v171[24];
      v163 = v25 + v12;
      switch(v171[64])
      {
        case 1:
          sub_100172FB0();
          ByteBuffer.writeAvroArray(_:)();
          goto LABEL_39;
        case 2:
          sub_100172FB0();
          ByteBuffer.writeAvroMap(_:)();
LABEL_39:
          v48 = v47;
          sub_100096480(v171);

          goto LABEL_56;
        case 3:
          v172 = *v171;
          sub_100172FB0();
          v48 = ByteBuffer.writeAvroRecord(_:)(&v172);
LABEL_55:
          sub_100096480(v171);
          sub_100096480(v171);
LABEL_56:
          v11 = v164;
          goto LABEL_57;
        case 4:
          sub_1001640BC(&v167);
          v45 = (2 * v170) ^ (v170 >> 63);
          sub_100163ABC(v171, v166);
          sub_100163B18(&v167, v166);
          sub_1001706E8(v45);
          sub_100015BE4();
          if (v46)
          {
            sub_10000C910();
            Data._Representation.append(contentsOf:)();
            v155 = *(v45 + 16);
          }

          else
          {
            v155 = 0;
          }

          countAndFlagsBits = v168.schema.type._countAndFlagsBits;
          object = v168.schema.type._object;
          v51 = v168.schema.name._countAndFlagsBits;
          v10 = v168.schema.name._object;
          switch(v169)
          {
            case 1:
              v64 = sub_10001BF00();
              sub_100163ABC(v64, v166);
              ByteBuffer.writeAvroArray(_:)();
              goto LABEL_50;
            case 2:
              v59 = sub_10001BF00();
              sub_100163ABC(v59, v166);
              ByteBuffer.writeAvroMap(_:)();
LABEL_50:
              v62 = v60;
              sub_100163B74(&v167);
              sub_100096480(v171);

              goto LABEL_106;
            case 3:
              v173 = v168;
              sub_100163ABC(&v168, v166);
              v61 = ByteBuffer.writeAvroRecord(_:)(&v173);
LABEL_48:
              v62 = v61;
              sub_100163B74(&v167);
              sub_100096480(v171);
              v63 = &v168;
              goto LABEL_105;
            case 4:
              memcpy(v166, (v168.schema.type._countAndFlagsBits + 16), sizeof(v166));
              v55 = (2 * v166[10]) ^ (v166[10] >> 63);
              v56 = sub_10001BF00();
              sub_100163ABC(v56, v165);
              sub_100163B18(v166, v165);
              sub_1001706E8(v55);
              sub_100015BE4();
              if (v57)
              {
                sub_10000C910();
                Data._Representation.append(contentsOf:)();
                v58 = *(v55 + 16);
              }

              else
              {
                v58 = 0;
              }

              sub_100172EF0(v174, v166);
              v10 = ByteBuffer.writeAvroValue(_:)(v174);
              sub_100163B74(v166);
              sub_100163B74(&v167);
              sub_100096480(v171);
              v78 = sub_10001BF00();
              sub_100096480(v78);
              sub_100096480(v171);
              v62 = v58 + v10;
              if (!__OFADD__(v58, v10))
              {
                goto LABEL_107;
              }

              __break(1u);
              goto LABEL_208;
            default:
              switch(LOBYTE(v168.schema.name._object))
              {
                case 1:
                  sub_1001705C0((2 * LODWORD(v168.schema.type._countAndFlagsBits)) ^ (SLODWORD(v168.schema.type._countAndFlagsBits) >> 31));
                  goto LABEL_117;
                case 2:
                  sub_1001706E8((2 * v168.schema.type._countAndFlagsBits) ^ (v168.schema.type._countAndFlagsBits >> 63));
LABEL_117:
                  sub_100015BE4();
                  if (v103)
                  {
                    sub_10000C910();
                    Data._Representation.append(contentsOf:)();
                    v62 = *(v10 + 16);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v3 = v157;

                  sub_100163B74(&v167);
                  sub_100096480(v171);
                  v109 = sub_10001BF00();
                  sub_100096480(v109);
                  sub_100096480(v171);
                  goto LABEL_108;
                case 3:
                  v98 = sub_100046184(&qword_100216160, &qword_10019A598);
                  v10 = sub_10000BB9C(v98);
                  sub_100008270(v10);
                  *(sub_100172E78(v99) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 4:
                  v96 = sub_100046184(&qword_100216160, &qword_10019A598);
                  v10 = sub_100173104(v96);
                  sub_100008270(v10);
                  *(sub_100172E78(v97) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 5:
                  if ((v168.schema.type._object & 0x1000000000000000) != 0)
                  {
                    v104 = String.UTF8View._foreignCount()();
                  }

                  else if ((v168.schema.type._object & 0x2000000000000000) != 0)
                  {
                    v104 = (v168.schema.type._object >> 56) & 0xF;
                  }

                  else
                  {
                    v104 = v168.schema.type._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  v105 = (2 * v104) ^ (v104 >> 63);
                  v106 = sub_10001BF00();
                  sub_100163ABC(v106, v166);
                  sub_1001706E8(v105);
                  sub_100015BE4();
                  if (v107)
                  {
                    sub_10000C910();
                    Data._Representation.append(contentsOf:)();
                    v108 = *(v105 + 16);
                  }

                  else
                  {
                    v108 = 0;
                  }

                  static String.Encoding.utf8.getter();
                  sub_100172FC8();
                  String.data(using:allowLossyConversion:)();
                  v124 = sub_100172EBC();
                  v125(v124);
                  if (v51 >> 60 == 15)
                  {
                    v126 = 0;
                  }

                  else
                  {
                    v126 = v105;
                  }

                  if (v51 >> 60 == 15)
                  {
                    v10 = 0xC000000000000000;
                  }

                  else
                  {
                    v10 = v51;
                  }

                  sub_1000E2418();
                  Data.append(_:)();
                  switch(v10 >> 62)
                  {
                    case 1uLL:
                      v139 = sub_1000E2418();
                      sub_100014A40(v139, v140);
                      sub_100163B74(&v167);
                      sub_100096480(v171);
                      v141 = sub_10001BF00();
                      sub_100096480(v141);
                      sub_100096480(v171);
                      LODWORD(v130) = HIDWORD(v126) - v126;
                      if (__OFSUB__(HIDWORD(v126), v126))
                      {
                        goto LABEL_225;
                      }

                      v130 = v130;
LABEL_186:
                      v3 = v157;
                      v16 = v158;
                      v13 = v159;
                      v101 = __OFADD__(v108, v130);
                      v62 = v108 + v130;
                      if (!v101)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_215;
                    case 2uLL:
                      v132 = *(v126 + 16);
                      v131 = *(v126 + 24);
                      v133 = sub_1000E2418();
                      sub_100014A40(v133, v134);
                      sub_100163B74(&v167);
                      sub_100096480(v171);
                      v135 = sub_10001BF00();
                      sub_100096480(v135);
                      sub_100096480(v171);
                      v130 = v131 - v132;
                      if (!__OFSUB__(v131, v132))
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_224;
                    case 3uLL:
                      v136 = sub_1000E2418();
                      sub_100014A40(v136, v137);
                      sub_100163B74(&v167);
                      sub_100096480(v171);
                      v138 = sub_10001BF00();
                      sub_100096480(v138);
                      sub_100096480(v171);
                      v130 = 0;
                      goto LABEL_186;
                    default:
                      v127 = sub_1000E2418();
                      sub_100014A40(v127, v128);
                      sub_100163B74(&v167);
                      sub_100096480(v171);
                      v129 = sub_10001BF00();
                      sub_100096480(v129);
                      sub_100096480(v171);
                      v130 = BYTE6(v10);
                      goto LABEL_186;
                  }

                case 6:
                  sub_100163ABC(&v168, v166);
                  v61 = sub_1001704E8(countAndFlagsBits, object, v51);
                  goto LABEL_48;
                case 7:
                  sub_100163B74(&v167);
                  sub_100096480(v171);
                  v102 = sub_10001BF00();
                  sub_100096480(v102);
                  sub_100096480(v171);
                  v62 = 0;
                  goto LABEL_107;
                default:
                  v52 = v168.schema.type._countAndFlagsBits & 1;
                  v53 = sub_100046184(&qword_100216160, &qword_10019A598);
                  v10 = sub_1001730BC(v53);
                  sub_100008270(v10);
                  *(sub_100172E78(v54) + 32) = v52;
LABEL_104:
                  Data._Representation.append(contentsOf:)();
                  v62 = *(v10 + 16);

                  sub_100163B74(&v167);
                  sub_100096480(v171);
                  v63 = sub_10001BF00();
                  break;
              }

LABEL_105:
              sub_100096480(v63);
LABEL_106:
              sub_100096480(v171);
LABEL_107:
              v3 = v157;
LABEL_108:
              v16 = v158;
              v13 = v159;
LABEL_109:
              v100 = v155;
              v48 = v155 + v62;
              if (__OFADD__(v155, v62))
              {
                goto LABEL_206;
              }

              v11 = v164;
              break;
          }

          goto LABEL_111;
        default:
          switch(v171[24])
          {
            case 1:
              sub_1001732CC();
              goto LABEL_61;
            case 2:
              sub_1001706E8((2 * *v171) ^ (*v171 >> 63));
LABEL_61:
              sub_100015BE4();
              if (v69)
              {
                sub_10000C910();
                Data._Representation.append(contentsOf:)();
                v48 = *(v10 + 16);
              }

              else
              {
                v48 = 0;
              }

              v11 = v164;
              v3 = v157;

              sub_100096480(v171);
              sub_100096480(v171);
              goto LABEL_58;
            case 3:
              v67 = sub_100046184(&qword_100216160, &qword_10019A598);
              v10 = sub_10000BB9C(v67);
              sub_100008270(v10);
              *(sub_100172E78(v68) + 32) = v40;
              goto LABEL_54;
            case 4:
              v65 = sub_100046184(&qword_100216160, &qword_10019A598);
              v10 = sub_100173104(v65);
              sub_100008270(v10);
              *(sub_100172E78(v66) + 32) = v40;
              goto LABEL_54;
            case 5:
              if ((*&v171[8] & 0x1000000000000000) != 0)
              {
                v72 = sub_1000126FC();
              }

              else
              {
                sub_10000FF70();
                if (v29)
                {
                  v72 = v70;
                }

                else
                {
                  v72 = v71;
                }
              }

              v73 = (2 * v72) ^ (v72 >> 63);
              sub_100172FB0();
              sub_1001706E8(v73);
              sub_100015BE4();
              if (v74)
              {
                sub_10000C910();
                Data._Representation.append(contentsOf:)();
                v156 = *(v73 + 16);
              }

              else
              {
                v156 = 0;
              }

              static String.Encoding.utf8.getter();
              sub_100172E5C(v161);
              v79 = sub_100172EBC();
              v80(v79);
              if (v41 >> 60 == 15)
              {
                v81 = 0;
              }

              else
              {
                v81 = v73;
              }

              if (v41 >> 60 == 15)
              {
                v10 = 0xC000000000000000;
              }

              else
              {
                v10 = v41;
              }

              sub_1000E2418();
              Data.append(_:)();
              v11 = v164;
              switch(v10 >> 62)
              {
                case 1uLL:
                  v94 = sub_1000E2418();
                  sub_100014A40(v94, v95);
                  sub_100096480(v171);
                  sub_100096480(v171);
                  LODWORD(v84) = HIDWORD(v81) - v81;
                  if (__OFSUB__(HIDWORD(v81), v81))
                  {
                    goto LABEL_214;
                  }

                  v84 = v84;
LABEL_98:
                  v3 = v157;
                  v16 = v158;
                  v13 = v159;
                  v48 = v156 + v84;
                  if (!__OFADD__(v156, v84))
                  {
                    goto LABEL_111;
                  }

LABEL_208:
                  __break(1u);
                  break;
                case 2uLL:
                  v89 = *(v81 + 16);
                  v88 = *(v81 + 24);
                  v90 = sub_1000E2418();
                  sub_100014A40(v90, v91);
                  sub_100096480(v171);
                  sub_100096480(v171);
                  v84 = v88 - v89;
                  if (!__OFSUB__(v88, v89))
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_213;
                case 3uLL:
                  v92 = sub_1000E2418();
                  sub_100014A40(v92, v93);
                  sub_100096480(v171);
                  sub_100096480(v171);
                  v84 = 0;
                  goto LABEL_98;
                default:
                  v82 = sub_1000E2418();
                  sub_100014A40(v82, v83);
                  sub_100096480(v171);
                  sub_100096480(v171);
                  v84 = BYTE6(v10);
                  goto LABEL_98;
              }

              goto LABEL_209;
            case 6:
              v75 = (*&v171[8] >> 60) & 3;
              if (v75)
              {
                v76 = *&v171[8] >> 62;
                v77 = v171[14];
                if (v75 == 1)
                {
                  v10 = 0;
                  switch(v76)
                  {
                    case 1:
                      sub_100173130();
                      if (v101)
                      {
                        goto LABEL_219;
                      }

                      v10 = v110;
LABEL_138:
                      sub_100172FB0();
LABEL_139:
                      if (!__OFSUB__(v10, v41))
                      {
                        sub_100173028(v10 - v41);
                        sub_100015BE4();
                        if (v113)
                        {
                          sub_10000C910();
                          Data._Representation.append(contentsOf:)();
                          v114 = *(v10 + 16);
                        }

                        else
                        {
                          v114 = 0;
                        }

                        sub_100172F80();
                        switch(v76)
                        {
                          case 1:
                            sub_100096480(v171);
                            sub_100096480(v171);
                            sub_100173130();
                            if (v101)
                            {
                              goto LABEL_223;
                            }

                            v77 = v123;
LABEL_169:
                            v11 = v164;
                            v16 = v158;
                            v13 = v159;
                            v48 = v114 + v77;
                            if (!__OFADD__(v114, v77))
                            {
                              goto LABEL_170;
                            }

                            goto LABEL_212;
                          case 2:
                            v10 = *(v40 + 16);
                            v122 = *(v40 + 24);
                            sub_100096480(v171);
                            sub_100096480(v171);
                            v101 = __OFSUB__(v122, v10);
                            v77 = v122 - v10;
                            if (!v101)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_222;
                          case 3:
                            sub_100096480(v171);
                            sub_100096480(v171);
                            v77 = 0;
                            goto LABEL_169;
                          default:
                            sub_100096480(v171);
                            sub_100096480(v171);
                            goto LABEL_169;
                        }
                      }

                      break;
                    case 2:
                      v112 = *(*v171 + 16);
                      v111 = *(*v171 + 24);
                      v10 = v111 - v112;
                      if (!__OFSUB__(v111, v112))
                      {
                        goto LABEL_138;
                      }

                      goto LABEL_217;
                    case 3:
                      goto LABEL_139;
                    default:
                      v10 = v171[14];
                      goto LABEL_139;
                  }

LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
                }

                v10 = 0;
                switch(v76)
                {
                  case 1:
                    sub_100173130();
                    if (v101)
                    {
                      goto LABEL_218;
                    }

                    v10 = v115;
LABEL_148:
                    sub_100172FB0();
LABEL_149:
                    sub_1001706E8((2 * v10) ^ (v10 >> 63));
                    sub_100015BE4();
                    if (v118)
                    {
                      sub_10000C910();
                      Data._Representation.append(contentsOf:)();
                      v119 = *(v10 + 16);
                    }

                    else
                    {
                      v119 = 0;
                    }

                    sub_100172F80();
                    switch(v76)
                    {
                      case 0:
                        sub_100096480(v171);
                        sub_100096480(v171);
                        goto LABEL_160;
                      case 1:
                        sub_100096480(v171);
                        sub_100096480(v171);
                        sub_100173130();
                        if (v101)
                        {
                          goto LABEL_221;
                        }

                        v77 = v121;
LABEL_160:
                        v11 = v164;
                        v16 = v158;
                        v13 = v159;
                        v48 = v119 + v77;
                        if (__OFADD__(v119, v77))
                        {
                          goto LABEL_211;
                        }

LABEL_170:
                        v3 = v157;
                        break;
                      case 2:
                        v10 = *(v40 + 16);
                        v120 = *(v40 + 24);
                        sub_100096480(v171);
                        sub_100096480(v171);
                        v101 = __OFSUB__(v120, v10);
                        v77 = v120 - v10;
                        if (!v101)
                        {
                          goto LABEL_160;
                        }

                        goto LABEL_220;
                      case 3:
                        sub_100096480(v171);
                        sub_100096480(v171);
                        v77 = 0;
                        goto LABEL_160;
                      default:
                        JUMPOUT(0);
                    }

                    return;
                  case 2:
                    v117 = *(*v171 + 16);
                    v116 = *(*v171 + 24);
                    v10 = v116 - v117;
                    if (!__OFSUB__(v116, v117))
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_216;
                  case 3:
                    goto LABEL_149;
                  default:
                    v10 = v171[14];
                    goto LABEL_149;
                }
              }

              else
              {
                v85 = 2 * *(*v171 + 16);
                sub_100172FB0();
                sub_1001706E8(v85);
                sub_100015BE4();
                if (v86)
                {
                  sub_10000C910();
                  Data._Representation.append(contentsOf:)();
                  v87 = *(v85 + 16);
                }

                else
                {
                  v87 = 0;
                }

                if (*(v40 + 16))
                {
                  sub_10017329C();
                  v10 = *(v40 + 16);
                }

                else
                {
                  v10 = 0;
                }

                v11 = v164;
                sub_100096480(v171);
                sub_100096480(v171);
                v48 = v87 + v10;
                if (__OFADD__(v87, v10))
                {
LABEL_209:
                  __break(1u);
                  goto LABEL_210;
                }

LABEL_57:
                v3 = v157;
LABEL_58:
                v16 = v158;
                v13 = v159;
              }

LABEL_111:
              v12 = v163 + v48;
              if (__OFADD__(v163, v48))
              {
                goto LABEL_200;
              }

              v101 = __OFADD__(v11, v12);
              v11 += v12;
              if (v101)
              {
                goto LABEL_201;
              }

              v12 = v17;
              if (!v1)
              {
                goto LABEL_6;
              }

              break;
            case 7:
              sub_100096480(v171);
              sub_100096480(v171);
              v48 = 0;
              goto LABEL_56;
            default:
              v42 = v171[0] & 1;
              v43 = sub_100046184(&qword_100216160, &qword_10019A598);
              v10 = sub_1001730BC(v43);
              sub_100008270(v10);
              *(sub_100172E78(v44) + 32) = v42;
LABEL_54:
              Data._Representation.append(contentsOf:)();
              v48 = *(v10 + 16);

              goto LABEL_55;
          }

          break;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    if (v17 >= v16)
    {
      break;
    }

    v1 = *(v13 + 8 * v17);
    ++v12;
    if (v1)
    {
      goto LABEL_9;
    }
  }

  v142 = sub_100006D64();
  sub_10006C9F0(v142, v143, v144, v145);
  v3 = v146;
  v1 = *(v146 + 16);
  v12 = *(v146 + 24);
  v10 = v1 + 1;
  if (v1 < v12 >> 1)
  {
    goto LABEL_193;
  }

LABEL_204:
  v152 = sub_1000066A8(v12);
  sub_10006C9F0(v152, v10, 1, v3);
  v3 = v153;
LABEL_193:
  *(v3 + 16) = v10;
  v147 = sub_100172F50();
  ByteBuffer.writeBytes(_:)(v147);
  sub_10000AB28();

  if (__OFADD__(v11, v0))
  {
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

LABEL_197:
  sub_100005460();
}

Swift::Int __swiftcall ByteBuffer.writeAvroRecord(_:)(SwiftAvro::AvroRecord *a1)
{
  sub_100005478();
  v5 = v1;
  v7 = v6;
  v927 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v927);
  v926 = &v915 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 56);
  v919 = *(v10 + 16);
  v11 = 0;
  if (!v919)
  {
    goto LABEL_751;
  }

  v12 = 0;
  v917 = v10;
  v918 = v10 + 32;
  v924 = (v8 + 8);
  v941 = v5;
LABEL_3:
  if (v12 >= *(v10 + 16))
  {
    goto LABEL_770;
  }

  v928 = v11;
  v13 = (v918 + 72 * v12);
  memcpy(v951, v13, sizeof(v951));
  v929 = v12 + 1;
  v14 = *v951;
  v15 = *&v951[24];
  v934 = *&v951[24];
  v16 = *&v951[16];
  switch(v951[64])
  {
    case 1:
      v915 = *&v951[16];
      v916 = *&v951[8];
      v315 = *(*&v951[24] + 16);
      if (!v315)
      {
        goto LABEL_608;
      }

      v316 = 2 * v315;
      sub_100172D9C();
      sub_100172D9C();
      v317 = sub_1001706E8(v316);
      v318 = v5;
      v319 = ByteBuffer.writeBytes(_:)(v317);

      v320 = *(v15 + 16);
      if (!v320)
      {
        goto LABEL_621;
      }

      v321 = 0;
      v922 = *(v15 + 16);
      v923 = v15 + 32;
      v322 = v320;
      while (2)
      {
        if (v321 >= v322)
        {
          goto LABEL_766;
        }

        v933 = v319;
        v323 = v321;
        v318 = (v923 + 72 * v321);
        memcpy(v946, v318, sizeof(v946));
        v932 = v323 + 1;
        v2 = *v946;
        v324 = *&v946[8];
        v3 = *&v946[24];
        v939 = *&v946[24];
        v325 = *&v946[16];
        switch(v946[64])
        {
          case 1:
            v920 = *&v946[16];
            v921 = *&v946[8];
            v474 = *(*&v946[24] + 16);
            if (!v474)
            {
              sub_10000BA78();
              sub_10000BA78();
              v655 = sub_100006D64();
              sub_10006C9F0(v655, v656, v657, _swiftEmptyArrayStorage);
              sub_100008870();
              if (v51)
              {
                v772 = sub_100006530(v658);
                sub_10006C9F0(v772, v773, v774, v317);
                v317 = v775;
              }

              v337 = v933;
              goto LABEL_452;
            }

            v475 = 2 * v474;
            sub_10000BA78();
            sub_10000BA78();
            v317 = sub_1001706E8(v475);
            v476 = v5;
            v477 = ByteBuffer.writeBytes(_:)(v317);

            v478 = *(v3 + 16);
            if (v478)
            {
              v479 = 0;
              v935 = *(v3 + 16);
              v936 = v3 + 32;
              v480 = v478;
              while (2)
              {
                if (v479 >= v480)
                {
                  goto LABEL_757;
                }

                v4 = v5;
                sub_10017325C(72);
                v940 = v479 + 1;
                v317 = v942;
                object = v944._object;
                countAndFlagsBits = v944._countAndFlagsBits;
                switch(v945)
                {
                  case 1:
                    v930 = v943;
                    v931 = v944._countAndFlagsBits;
                    v511 = *(v944._object + 2);
                    if (!v511)
                    {
                      v539 = sub_10000CB00();
                      sub_100163ABC(v539, v540);
                      v541 = sub_10000CB00();
                      sub_100163ABC(v541, v542);
                      v543 = sub_100006D64();
                      sub_10006C9F0(v543, v544, v545, _swiftEmptyArrayStorage);
                      sub_100008870();
                      if (v51)
                      {
                        v622 = sub_100006530(v546);
                        sub_10006C9F0(v622, v623, v624, v317);
                        v317 = v625;
                      }

                      sub_10000F70C();
                      v476 = v4;
                      Data._Representation.append(contentsOf:)();

                      sub_1000149B4();
                      v5 = v4;
LABEL_358:

                      sub_100096480(&v942);
                      sub_100012FC8();

                      goto LABEL_385;
                    }

                    v512 = 2 * v511;
                    v513 = sub_10000CB00();
                    sub_100163ABC(v513, v514);
                    v515 = sub_10000CB00();
                    sub_100163ABC(v515, v516);
                    sub_1001706E8(v512);
                    sub_10000F300();
                    v925 = v477;
                    if (v517)
                    {
                      sub_10000B170();
                      Data._Representation.append(contentsOf:)();
                      v518 = *(v317 + 16);
                    }

                    else
                    {
                      v518 = 0;
                    }

                    v2 = object[2];
                    if (v2)
                    {
                      v574 = (object + 8);
                      while (2)
                      {
                        sub_100010018();
                        v575 = *v949;
                        v576 = *&v949[8];
                        v317 = *&v949[16];
                        v577 = v949[24];
                        switch(v949[64])
                        {
                          case 1:
                            sub_100172D64();
                            sub_100172D64();
                            v579 = v4;
                            ByteBuffer.writeAvroArray(_:)();
                            goto LABEL_397;
                          case 2:
                            sub_100172D64();
                            sub_100172D64();
                            v579 = v4;
                            ByteBuffer.writeAvroMap(_:)();
LABEL_397:
                            v581 = sub_10000AFB8();
                            sub_100096480(v581);

                            goto LABEL_398;
                          case 3:
                            v952.schema.type._countAndFlagsBits = *v949;
                            v952.schema.type._object = *&v949[8];
                            v952.schema.name = *&v949[16];
                            v580 = *(v574 + 1);
                            v952.schema.namespace = *v574;
                            *&v952.schema.fields._rawValue = v580;
                            sub_100172D64();
                            v578 = ByteBuffer.writeAvroRecord(_:)(&v952);
                            goto LABEL_394;
                          case 4:
                            sub_100172DCC(v953);
                            sub_100172D64();
                            sub_100163B18(v953, v950);
                            v579 = ByteBuffer.writeAvroUnion(_:)(v953);
                            sub_100163B74(v953);
                            goto LABEL_395;
                          default:
                            sub_100172D64();
                            v578 = ByteBuffer.writeAvroPrimitive(_:)(v575, v576, v317, v577);
LABEL_394:
                            v579 = v578;
LABEL_395:
                            sub_100096480(v949);
LABEL_398:
                            v66 = __OFADD__(v518, v579);
                            v518 += v579;
                            if (v66)
                            {
                              goto LABEL_753;
                            }

                            v574 += 72;
                            if (!--v2)
                            {
                              break;
                            }

                            continue;
                        }

                        break;
                      }
                    }

                    v582 = sub_100006D64();
                    sub_10006C9F0(v582, v583, v584, _swiftEmptyArrayStorage);
                    sub_1001731B0();
                    if (v51)
                    {
                      v610 = sub_100006530(v585);
                      sub_10006C9F0(v610, v611, v612, v317);
                      v317 = v613;
                    }

                    v3 = v939;
                    *(sub_10000BF64() + v2) = 0;
                    Data._Representation.append(contentsOf:)();

                    sub_1000149B4();

                    sub_100096480(&v942);
                    sub_100012FC8();

                    v476 = v518 + v4;
                    if (__OFADD__(v518, v4))
                    {
                      goto LABEL_784;
                    }

                    v477 = v925;
                    v479 = v940;
                    v5 = v4;
LABEL_413:
                    v66 = __OFADD__(v477, v476);
                    v477 += v476;
                    if (v66)
                    {
                      goto LABEL_758;
                    }

                    if (v479 == v935)
                    {
                      break;
                    }

                    v480 = *(v3 + 16);
                    continue;
                  case 2:
                    v930 = v943;
                    v938 = v944._object;
                    v931 = v944._countAndFlagsBits;
                    v500 = *(v944._object + 2);
                    if (!v500)
                    {
                      v531 = sub_10000CB00();
                      sub_100163ABC(v531, v532);
                      v533 = sub_10000CB00();
                      sub_100163ABC(v533, v534);
                      v535 = sub_100006D64();
                      sub_10006C9F0(v535, v536, v537, _swiftEmptyArrayStorage);
                      sub_100008870();
                      v5 = v4;
                      if (v51)
                      {
                        v618 = sub_100006530(v538);
                        sub_10006C9F0(v618, v619, v620, v317);
                        v317 = v621;
                      }

                      sub_10000F70C();
                      v476 = v4;
                      Data._Representation.append(contentsOf:)();

                      sub_1000149B4();
                      goto LABEL_358;
                    }

                    v501 = 2 * v500;
                    v502 = sub_10000CB00();
                    sub_100163ABC(v502, v503);
                    v504 = sub_10000CB00();
                    sub_100163ABC(v504, v505);
                    sub_1001706E8(v501);
                    sub_10000F300();
                    v925 = v477;
                    if (v506)
                    {
                      sub_10000B170();
                      v501 = v4;
                      Data._Representation.append(contentsOf:)();
                      v507 = *(v317 + 16);
                    }

                    else
                    {
                      v507 = 0;
                    }

                    v547 = v938 + 64;
                    sub_100004538();
                    v2 = v549 & v548;
                    v4 = (v550 + 63) >> 6;

                    v551 = 0;
                    if (v2)
                    {
LABEL_361:
                      v937 = v507;
                      v552 = v551;
                      goto LABEL_366;
                    }

                    while (1)
                    {
                      v552 = v551 + 1;
                      if (__OFADD__(v551, 1))
                      {
                        break;
                      }

                      if (v552 >= v4)
                      {

                        v570 = sub_100006D64();
                        sub_10006C9F0(v570, v571, v572, _swiftEmptyArrayStorage);
                        sub_100008870();
                        if (v51)
                        {
                          v614 = sub_100006530(v573);
                          sub_10006C9F0(v614, v615, v616, v317);
                          v317 = v617;
                        }

                        v5 = v941;
                        v3 = v939;
                        v477 = v925;
                        sub_10000F70C();
                        Data._Representation.append(contentsOf:)();

                        sub_1000149B4();

                        sub_100096480(&v942);
                        sub_100012FC8();

                        v476 = v507 + v5;
                        if (!__OFADD__(v507, v5))
                        {
LABEL_385:
                          v479 = v940;
                          goto LABEL_413;
                        }

LABEL_785:
                        __break(1u);
LABEL_786:
                        __break(1u);
LABEL_787:
                        __break(1u);
LABEL_788:
                        __break(1u);
                        goto LABEL_789;
                      }

                      v2 = *(v547 + 8 * v552);
                      ++v551;
                      if (v2)
                      {
                        v937 = v507;
LABEL_366:
                        v553 = (*(v938 + 48) + 16 * (__clz(__rbit64(v2)) | (v552 << 6)));
                        v555 = *v553;
                        v554 = v553[1];
                        sub_10000BFF0();
                        memcpy(v949, v556, 0x41uLL);
                        if ((v554 & 0x1000000000000000) != 0)
                        {
                          String.UTF8View._foreignCount()();
                        }

                        sub_100018A18();

                        sub_100172D64();
                        v557 = sub_1001706E8(v501);
                        v558 = v941;
                        v559 = ByteBuffer.writeBytes(_:)(v557);

                        v560._countAndFlagsBits = v555;
                        v560._object = v554;
                        ByteBuffer.writeString(_:)(v560);
                        sub_10000AB28();

                        v66 = __OFADD__(v559, v558);
                        v561 = v559 + v558;
                        if (!v66)
                        {
                          v2 &= v2 - 1;
                          v562 = *v949;
                          v563 = *&v949[8];
                          v317 = *&v949[16];
                          v564 = v949[24];
                          switch(v949[64])
                          {
                            case 1:
                              sub_100172D64();
                              v501 = v941;
                              ByteBuffer.writeAvroArray(_:)();
                              goto LABEL_377;
                            case 2:
                              sub_100172D64();
                              v501 = v941;
                              ByteBuffer.writeAvroMap(_:)();
LABEL_377:
                              v568 = sub_10000AFB8();
                              sub_100096480(v568);

                              goto LABEL_378;
                            case 3:
                              v954 = *v949;
                              sub_100172D64();
                              v501 = v941;
                              ByteBuffer.writeAvroRecord(_:)(&v954);
                              goto LABEL_374;
                            case 4:
                              sub_100172DCC(v955);
                              sub_100172D64();
                              sub_100163B18(v955, v950);
                              v501 = v941;
                              ByteBuffer.writeAvroUnion(_:)(v955);
                              v566 = sub_10000AFB8();
                              sub_100096480(v566);
                              sub_100163B74(v955);
                              goto LABEL_375;
                            default:
                              sub_100172D64();
                              v565 = v562;
                              v501 = v941;
                              ByteBuffer.writeAvroPrimitive(_:)(v565, v563, v317, v564);
LABEL_374:
                              v567 = sub_10000AFB8();
                              sub_100096480(v567);
LABEL_375:
                              sub_100096480(v949);
LABEL_378:
                              v569 = v561 + v501;
                              if (__OFADD__(v561, v501))
                              {
                                goto LABEL_764;
                              }

                              v507 = v937 + v569;
                              if (__OFADD__(v937, v569))
                              {
                                goto LABEL_765;
                              }

                              v551 = v552;
                              if (!v2)
                              {
                                continue;
                              }

                              goto LABEL_361;
                          }
                        }

LABEL_763:
                        __break(1u);
LABEL_764:
                        __break(1u);
LABEL_765:
                        __break(1u);
LABEL_766:
                        __break(1u);
LABEL_767:
                        __break(1u);
LABEL_768:
                        __break(1u);
LABEL_769:
                        __break(1u);
LABEL_770:
                        __break(1u);
LABEL_771:
                        __break(1u);
LABEL_772:
                        __break(1u);
LABEL_773:
                        __break(1u);
                        goto LABEL_774;
                      }
                    }

                    __break(1u);
LABEL_753:
                    __break(1u);
                    goto LABEL_754;
                  case 3:
                    v956.schema.type._countAndFlagsBits = v942;
                    v956.schema.type._object = v943;
                    v956.schema.name = v944;
                    v508 = *(v476 + 48);
                    v956.schema.namespace = *(v476 + 32);
                    *&v956.schema.fields._rawValue = v508;
                    v509 = sub_10000CB00();
                    sub_100163ABC(v509, v510);
                    v5 = v4;
                    v488 = ByteBuffer.writeAvroRecord(_:)(&v956);
                    goto LABEL_343;
                  case 4:
                    sub_1000382B4();
                    sub_100025124();
                    v2 = v490 ^ (v489 >> 63);
                    v491 = (v2 & 0x7F);
                    v492 = sub_100172E24();
                    if (v2 >= 0x80)
                    {
                      sub_100163ABC(v492, v493);
                      v519 = sub_100172E24();
                      sub_100163ABC(v519, v520);
                      sub_100172ED8();
                      v521 = sub_100006D64();
                      sub_10006C9F0(v521, v522, v523, _swiftEmptyArrayStorage);
                      v317 = v524;
                      v3 = *(v524 + 16);
                      v5 = v4;
                      do
                      {
                        v525 = *(v317 + 24);
                        v476 = v3 + 1;
                        if (v3 >= v525 >> 1)
                        {
                          v527 = sub_100006530(v525);
                          sub_10006C9F0(v527, v528, v529, v317);
                          v317 = v530;
                        }

                        sub_100008C28();
                        ++v3;
                      }

                      while (v526);
                    }

                    else
                    {
                      sub_100163ABC(v492, v493);
                      v494 = sub_100172E24();
                      sub_100163ABC(v494, v495);
                      sub_100172ED8();
                      v317 = _swiftEmptyArrayStorage;
                      v5 = v4;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v602 = sub_1000040F0();
                      sub_10006C9F0(v602, v603, v604, v317);
                      v317 = v605;
                    }

                    sub_100014CF0();
                    if (v51)
                    {
                      v606 = sub_100006530(v496);
                      sub_10006C9F0(v606, v607, v608, v317);
                      v317 = v609;
                    }

                    v497 = sub_10000BF64();
                    *(v497 + v2) = v491;
                    sub_100172F38(v497);
                    v498 = *(v317 + 16);

                    sub_10000B9DC();
                    switch(v499)
                    {
                      case 1:
                        v592 = sub_100005700();
                        sub_100163ABC(v592, v949);
                        sub_100017D04();
                        ByteBuffer.writeAvroArray(_:)();
                        goto LABEL_410;
                      case 2:
                        v588 = sub_100005700();
                        sub_100163ABC(v588, v949);
                        sub_100017D04();
                        ByteBuffer.writeAvroMap(_:)();
LABEL_410:
                        sub_100172DE4();
                        sub_100096480(&v942);

                        goto LABEL_411;
                      case 3:
                        v957.schema.type._countAndFlagsBits = v476;
                        v957.schema.type._object = v2;
                        v957.schema.name._countAndFlagsBits = v317;
                        v957.schema.name._object = v3;
                        v589 = sub_100007E7C();
                        v591 = sub_10001BCC8(&v957, v589, v590);
                        sub_100163ABC(v591, v949);
                        v476 = v5;
                        ByteBuffer.writeAvroRecord(_:)(&v957);
                        goto LABEL_408;
                      case 4:
                        sub_100172D18();
                        sub_100005B10();
                        v586 = sub_100005700();
                        sub_100163ABC(v586, v948);
                        sub_100173010();
                        sub_1001706E8(v476);
                        sub_10000F300();
                        if (v587)
                        {
                          sub_10000B170();
                          v476 = v5;
                          Data._Representation.append(contentsOf:)();
                          v4 = *(v317 + 16);
                        }

                        else
                        {
                          v4 = 0;
                        }

                        sub_100172FEC();
                        switch(v593)
                        {
                          case 1:
                            sub_100023FEC();
                            sub_100017D04();
                            ByteBuffer.writeAvroArray(_:)();
                            goto LABEL_426;
                          case 2:
                            sub_100023FEC();
                            sub_100017D04();
                            ByteBuffer.writeAvroMap(_:)();
LABEL_426:
                            v600 = sub_10000AFB8();
                            sub_100163B74(v600);
                            sub_100163B74(v950);
                            sub_100096480(&v942);

                            goto LABEL_427;
                          case 3:
                            v958.schema.type._countAndFlagsBits = v476;
                            v958.schema.type._object = v2;
                            v958.schema.name._countAndFlagsBits = v317;
                            v958.schema.name._object = v3;
                            v491 = v949;
                            v596 = sub_100007B00();
                            v598 = sub_10001BCC8(&v958, v596, v597);
                            sub_100163ABC(v598, v948);
                            v476 = v5;
                            ByteBuffer.writeAvroRecord(_:)(&v958);
                            goto LABEL_424;
                          case 4:
                            sub_100172DCC(v948);
                            sub_10001ACCC();
                            sub_10017307C();
                            sub_1001732E4();
                            v594._rawValue = sub_1001706E8(v476);
                            sub_100172F20(v594);
                            sub_100172F08();
                            sub_100172E84(v959);
                            ByteBuffer.writeAvroValue(_:)(v959);
                            sub_10001DA44();
                            sub_100163B74(v949);
                            sub_100163B74(v950);
                            sub_100096480(&v942);
                            sub_100096480(v2 + 8);
                            v595 = sub_100005700();
                            sub_100096480(v595);
                            sub_100096480(&v942);
                            v66 = __OFADD__(v317, v476);
                            v476 += v317;
                            if (!v66)
                            {
                              goto LABEL_428;
                            }

                            goto LABEL_818;
                          default:
                            sub_100172EA0();
                            sub_100009A4C();
LABEL_424:
                            v599 = sub_10000AFB8();
                            sub_100163B74(v599);
                            sub_100163B74(v950);
                            sub_100096480(&v942);
                            sub_100096480((v491 + 8));
LABEL_427:
                            v601 = sub_100005700();
                            sub_100096480(v601);
                            sub_100096480(&v942);
LABEL_428:
                            v66 = __OFADD__(v4, v476);
                            v476 += v4;
                            v3 = v939;
                            v479 = v940;
                            if (!v66)
                            {
                              goto LABEL_412;
                            }

                            goto LABEL_797;
                        }

                      default:
                        sub_100013644();
                        sub_100009A4C();
LABEL_408:
                        sub_100172DE4();
                        sub_100096480(&v942);
                        sub_100096480((v491 + 8));
LABEL_411:
                        sub_100096480(&v942);
                        v3 = v939;
                        v479 = v940;
LABEL_412:
                        v66 = __OFADD__(v498, v476);
                        v476 += v498;
                        if (!v66)
                        {
                          goto LABEL_413;
                        }

                        goto LABEL_775;
                    }

                  default:
                    v483 = sub_10000CB00();
                    sub_100163ABC(v483, v484);
                    v485 = sub_10000F18C();
                    v486 = countAndFlagsBits;
                    v5 = v4;
                    v488 = ByteBuffer.writeAvroPrimitive(_:)(v485, v487, v486, object);
LABEL_343:
                    v476 = v488;
                    sub_100096480(&v942);
                    goto LABEL_385;
                }

                break;
              }
            }

            v629 = sub_100006D64();
            sub_10006C9F0(v629, v630, v631, _swiftEmptyArrayStorage);
            sub_100008870();
            if (v51)
            {
              v768 = sub_100006530(v632);
              sub_10006C9F0(v768, v769, v770, v317);
              v317 = v771;
            }

            *(v317 + 16) = v476;
            v633 = sub_100172F50();
            ByteBuffer.writeBytes(_:)(v633);
            sub_1001730EC();

            sub_100096480(v946);
            v318 = (v477 + v5);
            if (__OFADD__(v477, v5))
            {
              goto LABEL_795;
            }

            goto LABEL_484;
          case 2:
            v920 = *&v946[16];
            v921 = *&v946[8];
            v342 = *(*&v946[24] + 16);
            if (!v342)
            {
              sub_10000BA78();
              sub_10000BA78();
              v647 = sub_100006D64();
              sub_10006C9F0(v647, v648, v649, _swiftEmptyArrayStorage);
              sub_100008870();
              v337 = v933;
              if (v51)
              {
                v651 = sub_100006530(v650);
                sub_10006C9F0(v651, v652, v653, v317);
                v317 = v654;
              }

LABEL_452:
              sub_10000F70C();
              v318 = v5;
              Data._Representation.append(contentsOf:)();

              sub_100096480(v946);
              sub_100012FC8();

LABEL_453:
              v659 = v934;
LABEL_485:
              v66 = __OFADD__(v337, v318);
              v319 = v318 + v337;
              if (v66)
              {
                goto LABEL_767;
              }

              v321 = v932;
              if (v932 != v922)
              {
                v322 = *(v659 + 16);
                continue;
              }

LABEL_621:
              v811 = sub_100006D64();
              sub_10006C9F0(v811, v812, v813, _swiftEmptyArrayStorage);
              sub_100008870();
              if (v51)
              {
                v903 = sub_100006530(v814);
                sub_10006C9F0(v903, v904, v905, v317);
                v317 = v906;
              }

              *(v317 + 16) = v318;
              v815 = sub_100172F50();
              v816 = ByteBuffer.writeBytes(_:)(v815);

              sub_100096480(v951);
              v66 = __OFADD__(v319, v816);
              v13 = (v319 + v816);
              if (v66)
              {
                goto LABEL_806;
              }

              goto LABEL_656;
            }

            v343 = 2 * v342;
            sub_10000BA78();
            sub_10000BA78();
            v344._rawValue = sub_1001706E8(v343);
            sub_100172F20(v344);
            sub_1000054F4();

            v345 = (v3 + 64);
            sub_100004538();
            v4 = v347 & v346;
            v349 = (v348 + 63) >> 6;

            v350 = v349;
            v351 = 0;
            v936 = v349;
            v937 = v3 + 64;
            if (!v4)
            {
              goto LABEL_237;
            }

            while (1)
            {
              v5 = v351;
LABEL_240:
              sub_1001731F0();
              v353 = *v352;
              v354 = v352[1];
              sub_10000BFF0();
              memcpy(v947, v355, sizeof(v947));
              v940 = v353;
              if ((v354 & 0x1000000000000000) != 0)
              {
                v356 = String.UTF8View._foreignCount()();
              }

              else if ((v354 & 0x2000000000000000) != 0)
              {
                v356 = HIBYTE(v354) & 0xF;
              }

              else
              {
                v356 = v353 & 0xFFFFFFFFFFFFLL;
              }

              v938 = v343;
              v357 = (2 * v356) ^ (v356 >> 63);
              LOBYTE(v358) = v357 & 0x7F;

              v359 = sub_1000190C0();
              if (v357 >= 0x80)
              {
                sub_100163ABC(v359, v360);
                v362 = sub_100006D64();
                sub_10006C9F0(v362, v363, v364, _swiftEmptyArrayStorage);
                v361 = v365;
                v366 = v365[2];
                do
                {
                  v950[0] = v361;
                  sub_10000AD48();
                  sub_1001729D8(v366, v367);
                  v361 = v950[0];
                  v368 = v950[0] + v366++;
                  *(v950[0] + 16) = v366;
                  *(v368 + 32) = v358 | 0x80;
                  v358 = (v357 >> 7) & 0x7F;
                  v369 = v357 >> 14;
                  v357 >>= 7;
                }

                while (v369);
              }

              else
              {
                sub_100163ABC(v359, v360);
                v361 = _swiftEmptyArrayStorage;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v465 = sub_1000040F0();
                sub_10006C9F0(v465, v466, v467, v361);
                v361 = v468;
              }

              v371 = v361[2];
              v370 = v361[3];
              if (v371 >= v370 >> 1)
              {
                v469 = sub_100006530(v370);
                sub_10006C9F0(v469, v470, v471, v361);
                v361 = v472;
              }

              v4 &= v4 - 1;
              v361[2] = v371 + 1;
              *(v361 + v371 + 32) = v358;
              Data._Representation.append(contentsOf:)();
              v372 = v361[2];

              v373 = v926;
              static String.Encoding.utf8.getter();
              v374 = String.data(using:allowLossyConversion:)();
              v376 = v375;
              sub_10017315C();
              v377(v373, v927);
              sub_1001731E4();
              v380 = !v379 & v378 ? 0 : v374;
              v381 = !v379 & v378 ? 0xC000000000000000 : v376;
              sub_100008380();
              Data.append(_:)();

              switch(v381 >> 62)
              {
                case 1uLL:
                  v391 = sub_100008380();
                  sub_100014A40(v391, v392);
                  LODWORD(v384) = HIDWORD(v380) - v380;
                  if (__OFSUB__(HIDWORD(v380), v380))
                  {
                    goto LABEL_791;
                  }

                  v384 = v384;
LABEL_266:
                  v393 = v372 + v384;
                  v3 = v939;
                  if (__OFADD__(v372, v384))
                  {
                    goto LABEL_772;
                  }

                  break;
                case 2uLL:
                  v386 = *(v380 + 16);
                  v385 = *(v380 + 24);
                  v387 = sub_100008380();
                  sub_100014A40(v387, v388);
                  v384 = v385 - v386;
                  if (!__OFSUB__(v385, v386))
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_792;
                case 3uLL:
                  v389 = sub_100008380();
                  sub_100014A40(v389, v390);
                  v384 = 0;
                  goto LABEL_266;
                default:
                  v382 = sub_100008380();
                  sub_100014A40(v382, v383);
                  v384 = BYTE6(v381);
                  goto LABEL_266;
              }

              v395 = *&v947[8];
              v394 = *v947;
              v397 = *&v947[24];
              v396 = *&v947[16];
              switch(v947[64])
              {
                case 1:
                  v930 = *&v947[8];
                  v931 = *&v947[16];
                  v925 = v372 + v384;
                  if (!*(*&v947[24] + 16))
                  {
                    goto LABEL_305;
                  }

                  v940 = *&v947[24];
                  sub_100167778(*&v947[24]);
                  sub_100018A18();
                  v432 = sub_1000190C0();
                  sub_100163ABC(v432, v433);
                  v434._rawValue = sub_1001706E8(v394);
                  sub_100172F98(v434);
                  sub_100172F08();
                  v435 = *(v940 + 16);
                  if (v435)
                  {
                    v436 = v940 + 64;
                    while (2)
                    {
                      sub_100010018();
                      v437 = *v949;
                      v438 = *&v949[8];
                      v439 = *&v949[16];
                      v440 = v949[24];
                      switch(v949[64])
                      {
                        case 1:
                          sub_100172D64();
                          sub_100172D64();
                          sub_1001731D8();
                          ByteBuffer.writeAvroArray(_:)();
                          goto LABEL_299;
                        case 2:
                          sub_100172D64();
                          sub_100172D64();
                          sub_1001731D8();
                          ByteBuffer.writeAvroMap(_:)();
LABEL_299:
                          v443 = sub_10000AFB8();
                          sub_100096480(v443);

                          goto LABEL_300;
                        case 3:
                          v960.schema.type._countAndFlagsBits = *v949;
                          v960.schema.type._object = *&v949[8];
                          v960.schema.name = *&v949[16];
                          v442 = *(v436 + 16);
                          v960.schema.namespace = *v436;
                          *&v960.schema.fields._rawValue = v442;
                          sub_100172D64();
                          v441 = ByteBuffer.writeAvroRecord(_:)(&v960);
                          goto LABEL_296;
                        case 4:
                          sub_100172DCC(v961);
                          sub_100172D64();
                          sub_100163B18(v961, v950);
                          v437 = ByteBuffer.writeAvroUnion(_:)(v961);
                          sub_100163B74(v961);
                          goto LABEL_297;
                        default:
                          sub_100172D64();
                          v441 = ByteBuffer.writeAvroPrimitive(_:)(v437, v438, v439, v440);
LABEL_296:
                          v437 = v441;
LABEL_297:
                          sub_100096480(v949);
LABEL_300:
                          v66 = __OFADD__(v395, v437);
                          v395 += v437;
                          if (v66)
                          {
                            goto LABEL_761;
                          }

                          v436 += 72;
                          if (!--v435)
                          {
                            break;
                          }

                          continue;
                      }

                      break;
                    }
                  }

                  v444._rawValue = sub_1001706E8(0);
                  v445 = sub_100172F98(v444);

                  sub_1000149B4();

                  sub_100096480(v947);
                  v66 = __OFADD__(v395, v445);
                  v394 = v395 + v445;
                  if (!v66)
                  {
                    goto LABEL_307;
                  }

                  goto LABEL_803;
                case 2:
                  v930 = *&v947[8];
                  v931 = *&v947[16];
                  v925 = v372 + v384;
                  v410 = *(*&v947[24] + 16);
                  if (!v410)
                  {
LABEL_305:
                    v446 = sub_1000190C0();
                    sub_100163ABC(v446, v447);
                    v448 = sub_100006D64();
                    sub_10006C9F0(v448, v449, v450, _swiftEmptyArrayStorage);
                    v950[0] = v451;
                    v452 = *(v451 + 16);
                    sub_10000AD48();
                    sub_1001729D8(v452, v453);
                    sub_100172E30();

                    sub_1000149B4();

                    sub_100096480(v947);
                    sub_100167778(v395);
                    sub_10000AB28();

                    goto LABEL_308;
                  }

                  v411 = 2 * v410;
                  v412 = sub_1000190C0();
                  sub_100163ABC(v412, v413);
                  v414._rawValue = sub_1001706E8(v411);
                  sub_100172F98(v414);
                  sub_1000054F4();

                  sub_100004538();
                  v417 = v416 & v415;
                  v419 = (v418 + 63) >> 6;
                  v940 = v397;

                  v420 = 0;
                  break;
                case 3:
                  v963 = *v947;
                  v430 = sub_1000190C0();
                  sub_100163ABC(v430, v431);
                  v402 = ByteBuffer.writeAvroRecord(_:)(&v963);
                  goto LABEL_287;
                case 4:
                  sub_100172DCC(v950);
                  sub_10001ACCC();
                  sub_100163ABC(v947, v949);
                  sub_100172ED8();
                  sub_1001706E8(v394);
                  sub_100015BE4();
                  if (v403)
                  {
                    sub_10000C910();
                    Data._Representation.append(contentsOf:)();
                  }

                  v404 = sub_100167778(v397);

                  v405 = v950[1];
                  v406 = *&v950[3];
                  switch(LOBYTE(v950[9]))
                  {
                    case 1:
                      v463 = sub_100005700();
                      sub_100163ABC(v463, v949);
                      sub_1001731D8();
                      ByteBuffer.writeAvroArray(_:)();
                      goto LABEL_316;
                    case 2:
                      v459 = sub_100005700();
                      sub_100163ABC(v459, v949);
                      sub_1001731D8();
                      ByteBuffer.writeAvroMap(_:)();
LABEL_316:
                      sub_100172DE4();
                      sub_100096480(v947);

                      goto LABEL_317;
                    case 3:
                      v964.schema.type._countAndFlagsBits = v950[1];
                      v964.schema.type._object = v950[2];
                      v964.schema.name = *&v950[3];
                      v460 = sub_100007E7C();
                      v462 = sub_10001BCC8(&v964, v460, v461);
                      sub_100163ABC(v462, v949);
                      v405 = v941;
                      ByteBuffer.writeAvroRecord(_:)(&v964);
                      goto LABEL_314;
                    case 4:
                      sub_100172D18();
                      sub_100005B10();
                      sub_100163ABC(&v950[1], v948);
                      sub_100173010();
                      v457._rawValue = sub_1001706E8(v405);
                      sub_100172F98(v457);
                      sub_1001732FC();
                      sub_100172EF0(v965, v949);
                      ByteBuffer.writeAvroValue(_:)(v965);
                      v458 = sub_10000AFB8();
                      sub_100163B74(v458);
                      sub_100163B74(v950);
                      sub_100096480(v947);
                      sub_100096480(&v950[1]);
                      sub_100096480(v947);
                      v66 = __OFADD__(v406, v405);
                      v405 += v406;
                      if (!v66)
                      {
                        goto LABEL_318;
                      }

                      goto LABEL_816;
                    default:
                      sub_100013644();
                      v407 = sub_10000BAF0();
                      v405 = v941;
                      ByteBuffer.writeAvroPrimitive(_:)(v407, v408, v409, SBYTE8(v406));
LABEL_314:
                      sub_100172DE4();
                      sub_100096480(v947);
                      sub_100096480(v396 + 8);
LABEL_317:
                      sub_100096480(v947);
LABEL_318:
                      v66 = __OFADD__(v404, v405);
                      v394 = v404 + v405;
                      v3 = v939;
                      v350 = v936;
                      v345 = v937;
                      if (!v66)
                      {
                        goto LABEL_319;
                      }

                      goto LABEL_796;
                  }

                default:
                  v398 = sub_1000190C0();
                  sub_100163ABC(v398, v399);
                  v400 = sub_1000385F0();
                  v402 = ByteBuffer.writeAvroPrimitive(_:)(v400, v401, v396, v397);
LABEL_287:
                  v394 = v402;
                  sub_100096480(v947);
                  sub_100096480(v947);
                  v350 = v936;
                  v345 = v937;
                  goto LABEL_319;
              }

LABEL_275:
              if (v417)
              {
                v935 = v411;
                v421 = v940;
                goto LABEL_282;
              }

              v421 = v940;
              while (1)
              {
                v422 = v420 + 1;
                if (__OFADD__(v420, 1))
                {
                  goto LABEL_759;
                }

                if (v422 >= v419)
                {
                  break;
                }

                v417 = *(v397 + 64 + 8 * v422);
                ++v420;
                if (v417)
                {
                  v935 = v411;
                  v420 = v422;
LABEL_282:
                  v423 = (*(v421 + 48) + 16 * (__clz(__rbit64(v417)) | (v420 << 6)));
                  v424 = *v423;
                  v425 = v423[1];
                  sub_10000BFF0();
                  memcpy(v962, v426, 0x41uLL);

                  sub_100163ABC(v962, v950);
                  v427._countAndFlagsBits = v424;
                  v427._object = v425;
                  ByteBuffer.writeAvroString(_:)(v427);
                  sub_1001732FC();
                  v428 = ByteBuffer.writeAvroValue(_:)(v962);
                  sub_100096480(v962);
                  v429 = v397 + v428;
                  if (__OFADD__(v397, v428))
                  {
                    goto LABEL_782;
                  }

                  v417 &= v417 - 1;
                  v411 = v935 + v429;
                  if (__OFADD__(v935, v429))
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_275;
                }
              }

              v454 = sub_1001706E8(0);
              v455 = v411;
              v456 = v941;
              ByteBuffer.writeBytes(_:)(v454);
              sub_10000AB28();

              sub_1000149B4();

              sub_100096480(v947);
              v66 = __OFADD__(v455, v456);
              v394 = v455 + v456;
              if (v66)
              {
                goto LABEL_804;
              }

LABEL_307:
              v3 = v939;
LABEL_308:
              v350 = v936;
              v345 = v937;
              v393 = v925;
LABEL_319:
              v464 = v393 + v394;
              if (__OFADD__(v393, v394))
              {
                goto LABEL_773;
              }

              v343 = v938 + v464;
              if (__OFADD__(v938, v464))
              {
                break;
              }

              v351 = v5;
              if (!v4)
              {
LABEL_237:
                while (1)
                {
                  v5 = v351 + 1;
                  if (__OFADD__(v351, 1))
                  {
                    break;
                  }

                  if (v5 >= v350)
                  {

                    v950[0] = _swiftEmptyArrayStorage;
                    sub_100003F14();
                    v2 = v343;
                    sub_100172934(v626);
                    v317 = *(v950[0] + 16);
                    v627 = sub_100010008();
                    sub_1001729D8(v627, v345);
                    sub_10002D480();
                    sub_100173150();
                    ByteBuffer.writeBytes(_:)(v628);
                    sub_1001730EC();

                    sub_100096480(v946);
                    v318 = (v950 + v343);
                    if (!__OFADD__(v2, v950))
                    {
                      goto LABEL_484;
                    }

LABEL_794:
                    __break(1u);
LABEL_795:
                    __break(1u);
LABEL_796:
                    __break(1u);
LABEL_797:
                    __break(1u);
LABEL_798:
                    __break(1u);
LABEL_799:
                    __break(1u);
LABEL_800:
                    __break(1u);
LABEL_801:
                    __break(1u);
LABEL_802:
                    __break(1u);
LABEL_803:
                    __break(1u);
LABEL_804:
                    __break(1u);
LABEL_805:
                    __break(1u);
LABEL_806:
                    __break(1u);
LABEL_807:
                    __break(1u);
LABEL_808:
                    __break(1u);
LABEL_809:
                    __break(1u);
LABEL_810:
                    __break(1u);
LABEL_811:
                    __break(1u);
LABEL_812:
                    __break(1u);
LABEL_813:
                    __break(1u);
LABEL_814:
                    __break(1u);
LABEL_815:
                    __break(1u);
LABEL_816:
                    __break(1u);
LABEL_817:
                    __break(1u);
LABEL_818:
                    __break(1u);
LABEL_819:
                    __break(1u);
LABEL_820:
                    __break(1u);
LABEL_821:
                    __break(1u);
LABEL_822:
                    __break(1u);
LABEL_823:
                    __break(1u);
LABEL_824:
                    __break(1u);
LABEL_825:
                    __break(1u);
LABEL_826:
                    __break(1u);
LABEL_827:
                    __break(1u);
LABEL_828:
                    __break(1u);
LABEL_829:
                    __break(1u);
LABEL_830:
                    __break(1u);
LABEL_831:
                    __break(1u);
LABEL_832:
                    __break(1u);
LABEL_833:
                    __break(1u);
LABEL_834:
                    __break(1u);
LABEL_835:
                    __break(1u);
LABEL_836:
                    __break(1u);
LABEL_837:
                    __break(1u);
LABEL_838:
                    __break(1u);
LABEL_839:
                    __break(1u);
LABEL_840:
                    __break(1u);
LABEL_841:
                    __break(1u);
LABEL_842:
                    __break(1u);
LABEL_843:
                    __break(1u);
LABEL_844:
                    __break(1u);
LABEL_845:
                    __break(1u);
LABEL_846:
                    __break(1u);
LABEL_847:
                    __break(1u);
LABEL_848:
                    __break(1u);
LABEL_849:
                    __break(1u);
LABEL_850:
                    __break(1u);
LABEL_851:
                    __break(1u);
LABEL_852:
                    __break(1u);
LABEL_853:
                    __break(1u);
                  }

                  v4 = *(v345 + v5);
                  ++v351;
                  if (v4)
                  {
                    goto LABEL_240;
                  }
                }

LABEL_754:
                __break(1u);
LABEL_755:
                __break(1u);
LABEL_756:
                __break(1u);
LABEL_757:
                __break(1u);
LABEL_758:
                __break(1u);
LABEL_759:
                __break(1u);
LABEL_760:
                __break(1u);
LABEL_761:
                __break(1u);
LABEL_762:
                __break(1u);
                goto LABEL_763;
              }
            }

LABEL_774:
            __break(1u);
LABEL_775:
            __break(1u);
            break;
          case 3:
            v966.schema.type._countAndFlagsBits = *v946;
            v966.schema.type._object = *&v946[8];
            v966.schema.name = *&v946[16];
            v473 = *(v318 + 3);
            v966.schema.namespace = *(v318 + 2);
            *&v966.schema.fields._rawValue = v473;
            sub_10000BA78();
            v318 = ByteBuffer.writeAvroRecord(_:)(&v966);
            sub_100096480(v946);
            goto LABEL_484;
          case 4:
            memcpy(v950, (*v946 + 16), sizeof(v950));
            sub_100025124();
            v3 = v330 ^ (v329 >> 63);
            v317 = _swiftEmptyArrayStorage;
            v948[0] = _swiftEmptyArrayStorage;
            v331 = sub_100173204();
            if (v3 >= 0x80)
            {
              sub_100163ABC(v331, v332);
              v634 = sub_100173204();
              sub_100163ABC(v634, v635);
              sub_100172ED8();
              sub_100003F14();
              v318 = v948;
              sub_100172934(v636);
              sub_1001732B4();
              sub_1001732B4();
              v317 = v948[0];
              do
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v639 = sub_1000040F0();
                  sub_10006C9F0(v639, v640, v641, v317);
                  v317 = v642;
                }

                sub_1000079C4();
                if (v51)
                {
                  v643 = sub_100006530(v637);
                  sub_10006C9F0(v643, v644, v645, v317);
                  v317 = v646;
                }

                sub_100172D7C();
              }

              while (v638);
            }

            else
            {
              sub_100163ABC(v331, v332);
              v333 = sub_100173204();
              sub_100163ABC(v333, v334);
              sub_100172ED8();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v760 = sub_1000040F0();
              sub_10006C9F0(v760, v761, v762, v317);
              v317 = v763;
            }

            v335 = *(v317 + 16);
            sub_1000079C4();
            v337 = v933;
            if (v51)
            {
              v764 = sub_100006530(v336);
              sub_10006C9F0(v764, v765, v766, v317);
              v317 = v767;
            }

            v338 = sub_10000BF64();
            v335[v338] = v3 & 0x7F;
            sub_100172F38(v338);
            v339 = *(v317 + 16);

            v2 = v950[1];
            sub_10017319C();
            switch(v340)
            {
              case 1:
                v666 = sub_100005700();
                sub_100163ABC(v666, v949);
                sub_10000BA20();
                ByteBuffer.writeAvroArray(_:)();
                goto LABEL_460;
              case 2:
                v662 = sub_100005700();
                sub_100163ABC(v662, v949);
                sub_10000BA20();
                ByteBuffer.writeAvroMap(_:)();
LABEL_460:
                sub_100172DE4();
                sub_100096480(v946);

                break;
              case 3:
                v967.schema.type._countAndFlagsBits = v2;
                v967.schema.type._object = v317;
                v967.schema.name._countAndFlagsBits = v3;
                v967.schema.name._object = v4;
                v663 = sub_100007E7C();
                v665 = sub_10001BCC8(&v967, v663, v664);
                sub_100163ABC(v665, v949);
                v318 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v967);
LABEL_458:
                sub_100172DE4();
                sub_100096480(v946);
                sub_100096480((v335 + 8));
                break;
              case 4:
                memcpy(v949, (v2 + 16), sizeof(v949));
                sub_100005B10();
                v660 = sub_100005700();
                sub_100163ABC(v660, v948);
                sub_100173010();
                sub_1001706E8(v318);
                sub_10000F300();
                if (v661)
                {
                  sub_10000B170();
                  v318 = v5;
                  Data._Representation.append(contentsOf:)();
                  v4 = *(v317 + 16);
                }

                else
                {
                  v4 = 0;
                }

                sub_100172FEC();
                switch(v680)
                {
                  case 1:
                    sub_100023FEC();
                    sub_100017D04();
                    ByteBuffer.writeAvroArray(_:)();
                    goto LABEL_532;
                  case 2:
                    sub_100023FEC();
                    sub_100017D04();
                    ByteBuffer.writeAvroMap(_:)();
LABEL_532:
                    v723 = sub_10000AFB8();
                    sub_100163B74(v723);
                    sub_100163B74(v950);
                    sub_100096480(v946);

                    goto LABEL_533;
                  case 3:
                    v968.schema.type._countAndFlagsBits = v318;
                    v968.schema.type._object = v2;
                    v968.schema.name._countAndFlagsBits = v317;
                    v968.schema.name._object = v3;
                    v335 = v949;
                    v719 = sub_100007B00();
                    v721 = sub_10001BCC8(&v968, v719, v720);
                    sub_100163ABC(v721, v948);
                    v318 = v5;
                    ByteBuffer.writeAvroRecord(_:)(&v968);
                    goto LABEL_530;
                  case 4:
                    sub_100172DCC(v948);
                    sub_10001ACCC();
                    sub_10017307C();
                    sub_1001732E4();
                    v717._rawValue = sub_1001706E8(v318);
                    sub_100172F20(v717);
                    sub_100172F08();
                    sub_100172E84(v969);
                    ByteBuffer.writeAvroValue(_:)(v969);
                    sub_10001DA44();
                    sub_100163B74(v949);
                    sub_100163B74(v950);
                    sub_100096480(v946);
                    sub_100096480(v2 + 8);
                    v718 = sub_100005700();
                    sub_100096480(v718);
                    sub_100096480(v946);
                    v66 = __OFADD__(v317, v318);
                    v318 = (v318 + v317);
                    if (!v66)
                    {
                      goto LABEL_534;
                    }

                    goto LABEL_825;
                  default:
                    sub_100172EA0();
                    sub_100009A4C();
LABEL_530:
                    v722 = sub_10000AFB8();
                    sub_100163B74(v722);
                    sub_100163B74(v950);
                    sub_100096480(v946);
                    sub_100096480((v335 + 8));
LABEL_533:
                    v724 = sub_100005700();
                    sub_100096480(v724);
                    sub_100096480(v946);
LABEL_534:
                    v659 = v934;
                    v66 = __OFADD__(v4, v318);
                    v318 = (v318 + v4);
                    if (!v66)
                    {
                      goto LABEL_463;
                    }

                    goto LABEL_807;
                }

              default:
                switch(v4)
                {
                  case 1:
                    sub_1001705C0((2 * v2) ^ (v2 >> 31));
                    goto LABEL_552;
                  case 2:
                    sub_1001706E8((2 * v2) ^ (v2 >> 63));
LABEL_552:
                    sub_10000F300();
                    if (v735)
                    {
                      sub_10000B170();
                      v318 = v5;
                      Data._Representation.append(contentsOf:)();
                    }

                    v736 = sub_100005700();
                    sub_100096480(v736);
                    sub_100163B74(v950);
                    sub_100096480(v946);
                    sub_100012FC8();

                    goto LABEL_461;
                  case 3:
                    *v949 = v2;
                    v341 = &v949[4];
                    goto LABEL_549;
                  case 4:
                    *v949 = v2;
                    v341 = &v949[8];
                    goto LABEL_549;
                  case 5:
                    if ((v317 & 0x1000000000000000) != 0)
                    {
                      sub_100003898();
                      String.UTF8View._foreignCount()();
                    }

                    sub_100018A18();
                    v3 = v950;
                    sub_100163ABC(&v950[1], v949);
                    sub_100163ABC(&v950[1], v949);
                    v737._rawValue = sub_1001706E8(v318);
                    v940 = sub_100172F20(v737);

                    v4 = v926;
                    static String.Encoding.utf8.getter();
                    v738 = String.data(using:allowLossyConversion:)();
                    sub_10017315C();
                    v739(v4, v927);
                    sub_1001731E4();
                    if (!v52 & v51)
                    {
                      v317 = 0;
                    }

                    else
                    {
                      v317 = v738;
                    }

                    v740 = sub_10000F18C();
                    v742 = ByteBuffer.writeData(_:)(v740, v741);
                    v743 = sub_10000F18C();
                    sub_100014A40(v743, v744);
                    sub_100096480(&v950[1]);
                    sub_100096480(&v950[1]);
                    sub_100163B74(v950);
                    sub_100096480(v946);
                    sub_100096480(v946);
                    v66 = __OFADD__(v940, v742);
                    v318 = (v940 + v742);
                    if (!v66)
                    {
                      goto LABEL_462;
                    }

                    goto LABEL_834;
                  case 6:
                    sub_100013644();
                    v745 = sub_100003898();
                    v318 = v5;
                    sub_1001704E8(v745, v746, v3);
                    goto LABEL_458;
                  case 7:
                    v734 = sub_100005700();
                    sub_100096480(v734);
                    sub_100163B74(v950);
                    sub_100096480(v946);
                    sub_100096480(v946);
                    v318 = 0;
                    goto LABEL_462;
                  default:
                    v949[0] = v2 & 1;
                    v341 = &v949[1];
LABEL_549:
                    v732._rawValue = sub_100172B5C(v949, v341);
                    sub_100172F20(v732);
                    sub_1000054F4();

                    v733 = sub_100005700();
                    sub_100096480(v733);
                    sub_100096480(v946);
                    sub_100163B74(v950);
                    break;
                }

                break;
            }

LABEL_461:
            sub_100096480(v946);
LABEL_462:
            v659 = v934;
LABEL_463:
            v66 = __OFADD__(v339, v318);
            v318 = (v318 + v339);
            if (!v66)
            {
              goto LABEL_485;
            }

            goto LABEL_786;
          default:
            switch(v946[24])
            {
              case 1:
                v2 = (2 * *v946) ^ (*v946 >> 31);
                v317 = _swiftEmptyArrayStorage;
                v950[0] = _swiftEmptyArrayStorage;
                LOBYTE(v668) = ((2 * v946[0]) ^ (*v946 >> 31)) & 0x7F;
                if (v2 >= 0x80)
                {
                  sub_10000E050();
                  v318 = v950;
                  sub_100172934(v694);
                  v695 = sub_100010008();
                  sub_100172934(v695);
                  v696 = sub_100010008();
                  sub_100172934(v696);
                  v317 = v950[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v700 = sub_1000040F0();
                      sub_10006C9F0(v700, v701, v702, v317);
                      v317 = v703;
                    }

                    sub_1000126E0();
                    if (v51)
                    {
                      v704 = sub_100006530(v697);
                      sub_10006C9F0(v704, v705, v706, v317);
                      v317 = v707;
                    }

                    v698 = v668 | 0x80;
                    v668 = (v2 >> 7) & 0x7F;
                    v699 = v2 >> 14;
                    v2 = v2 >> 7;
                    *(v317 + 16) = v950;
                    *(v317 + v3 + 32) = v698;
                  }

                  while (v699);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v784 = sub_1000040F0();
                  sub_10006C9F0(v784, v785, v786, v317);
                  v317 = v787;
                }

                sub_100014CF0();
                if (v51)
                {
                  v788 = sub_100006530(v672);
                  sub_10006C9F0(v788, v789, v790, v317);
                  v317 = v791;
                }

                goto LABEL_483;
              case 2:
                v2 = (2 * *v946) ^ (*v946 >> 63);
                v317 = _swiftEmptyArrayStorage;
                v950[0] = _swiftEmptyArrayStorage;
                LOBYTE(v668) = v2 & 0x7F;
                if (v2 >= 0x80)
                {
                  sub_10000E050();
                  v318 = v950;
                  sub_100172934(v681);
                  v682 = sub_100010008();
                  sub_100172934(v682);
                  v683 = sub_100010008();
                  sub_100172934(v683);
                  v317 = v950[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v686 = sub_1000040F0();
                      sub_10006C9F0(v686, v687, v688, v317);
                      v317 = v689;
                    }

                    sub_1000126E0();
                    if (v51)
                    {
                      v690 = sub_100006530(v684);
                      sub_10006C9F0(v690, v691, v692, v317);
                      v317 = v693;
                    }

                    sub_100008C28();
                  }

                  while (v685);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v776 = sub_1000040F0();
                  sub_10006C9F0(v776, v777, v778, v317);
                  v317 = v779;
                }

                sub_100014CF0();
                if (v51)
                {
                  v780 = sub_100006530(v669);
                  sub_10006C9F0(v780, v781, v782, v317);
                  v317 = v783;
                }

LABEL_483:
                v673 = sub_10000BF64();
                *(v673 + v2) = v668;
                sub_100172F38(v673);
                sub_100096480(v946);
                sub_100096480(v946);
                sub_100012FC8();

                goto LABEL_484;
              case 3:
                LODWORD(v950[0]) = *v946;
                v326 = sub_100172DFC();
                v328 = (v670 + 4);
                goto LABEL_474;
              case 4:
                v950[0] = *v946;
                v326 = sub_100172DFC();
                v328 = (v667 + 8);
                goto LABEL_474;
              case 5:
                if ((*&v946[8] & 0x1000000000000000) != 0)
                {
                  String.UTF8View._foreignCount()();
                }

                sub_100018A18();
                sub_10000BA78();
                sub_10000BA78();
                sub_10000BA78();
                sub_1001706E8(v318);
                sub_10000F300();
                if (v674)
                {
                  sub_10000B170();
                  Data._Representation.append(contentsOf:)();
                  v675 = *(v317 + 16);
                }

                else
                {
                  v675 = 0;
                }

                v3 = v926;
                static String.Encoding.utf8.getter();
                v708 = String.data(using:allowLossyConversion:)();
                v317 = v709;
                sub_10017315C();
                v710(v3, v927);
                if (v317 >> 60 == 15)
                {
                  v2 = 0;
                }

                else
                {
                  v2 = v708;
                }

                if (v317 >> 60 == 15)
                {
                  v317 = 0xC000000000000000;
                }

                sub_100003898();
                Data.append(_:)();
                sub_100096480(v946);
                sub_100096480(v946);
                sub_100096480(v946);
                switch(v317 >> 62)
                {
                  case 1uLL:
                    v730 = sub_100003898();
                    sub_100014A40(v730, v731);
                    LODWORD(v713) = HIDWORD(v2) - v2;
                    if (__OFSUB__(HIDWORD(v2), v2))
                    {
                      goto LABEL_827;
                    }

                    v713 = v713;
LABEL_543:
                    v337 = v933;
                    v318 = (v675 + v713);
                    if (!__OFADD__(v675, v713))
                    {
                      goto LABEL_453;
                    }

                    goto LABEL_814;
                  case 2uLL:
                    v3 = *(v2 + 16);
                    v725 = *(v2 + 24);
                    v726 = sub_100003898();
                    sub_100014A40(v726, v727);
                    v713 = v725 - v3;
                    if (!__OFSUB__(v725, v3))
                    {
                      goto LABEL_543;
                    }

                    goto LABEL_828;
                  case 3uLL:
                    v728 = sub_100003898();
                    sub_100014A40(v728, v729);
                    v713 = 0;
                    goto LABEL_543;
                  default:
                    v711 = sub_100003898();
                    sub_100014A40(v711, v712);
                    v713 = BYTE6(v317);
                    goto LABEL_543;
                }

              case 6:
                v676 = (*&v946[8] >> 60) & 3;
                if (v676)
                {
                  v317 = *&v946[8] >> 62;
                  v677 = HIDWORD(*v946);
                  v678 = v946[14];
                  if (v676 != 1)
                  {
                    v4 = *&v946[8];
                    v716 = 0;
                    switch(v317)
                    {
                      case 1uLL:
                        if (__OFSUB__(*&v946[4], *v946))
                        {
                          goto LABEL_840;
                        }

                        v716 = *&v946[4] - *v946;
LABEL_584:
                        sub_10000BA78();
                        sub_10000BA78();
                        sub_10000BA78();
LABEL_585:
                        sub_1001706E8((2 * v716) ^ (v716 >> 63));
                        sub_10000E2A0();
                        if (v754)
                        {
                          sub_10000EC9C();
                          Data._Representation.append(contentsOf:)();
                          v755 = *(v3 + 16);
                        }

                        else
                        {
                          v755 = 0;
                        }

                        Data.append(_:)();
                        sub_100096480(v946);
                        sub_100096480(v946);
                        switch(v317)
                        {
                          case 0:
                            sub_100096480(v946);
                            goto LABEL_596;
                          case 1:
                            sub_100096480(v946);
                            if (__OFSUB__(v677, v2))
                            {
                              goto LABEL_843;
                            }

                            v678 = v677 - v2;
LABEL_596:
                            v337 = v933;
                            v659 = v934;
                            v318 = (v755 + v678);
                            if (!__OFADD__(v755, v678))
                            {
                              goto LABEL_485;
                            }

                            goto LABEL_823;
                          case 2:
                            v757 = *(v2 + 16);
                            v756 = *(v2 + 24);
                            sub_100096480(v946);
                            v66 = __OFSUB__(v756, v757);
                            v678 = v756 - v757;
                            if (!v66)
                            {
                              goto LABEL_596;
                            }

                            goto LABEL_842;
                          case 3:
                            sub_100096480(v946);
                            v678 = 0;
                            goto LABEL_596;
                          default:
                            goto LABEL_854;
                        }

                      case 2uLL:
                        v753 = *(*v946 + 16);
                        v752 = *(*v946 + 24);
                        v716 = v752 - v753;
                        if (!__OFSUB__(v752, v753))
                        {
                          goto LABEL_584;
                        }

                        goto LABEL_839;
                      case 3uLL:
                        goto LABEL_585;
                      default:
                        v716 = v946[14];
                        goto LABEL_585;
                    }
                  }

                  v679 = 0;
                  switch(v317)
                  {
                    case 1uLL:
                      if (__OFSUB__(*&v946[4], *v946))
                      {
                        goto LABEL_838;
                      }

                      v747 = *&v946[16];
                      v3 = *&v946[8];
                      v679 = *&v946[4] - *v946;
                      break;
                    case 2uLL:
                      v747 = *&v946[16];
                      v749 = *(*v946 + 16);
                      v748 = *(*v946 + 24);
                      v679 = v748 - v749;
                      if (__OFSUB__(v748, v749))
                      {
                        goto LABEL_841;
                      }

                      v3 = *&v946[8];
                      break;
                    case 3uLL:
                      goto LABEL_575;
                    default:
                      v679 = v946[14];
                      goto LABEL_575;
                  }

                  sub_10000BA78();
                  sub_10000BA78();
                  sub_10000BA78();
                  v324 = v3;
                  v325 = v747;
LABEL_575:
                  if (!__OFSUB__(v679, v325))
                  {
                    v4 = v324;
                    sub_100173028(v679 - v325);
                    sub_10000E2A0();
                    if (v750)
                    {
                      sub_10000EC9C();
                      Data._Representation.append(contentsOf:)();
                      v751 = *(v3 + 16);
                    }

                    else
                    {
                      v751 = 0;
                    }

                    Data.append(_:)();
                    sub_100096480(v946);
                    sub_100096480(v946);
                    switch(v317)
                    {
                      case 1:
                        sub_100096480(v946);
                        if (__OFSUB__(v677, v2))
                        {
                          goto LABEL_845;
                        }

                        v678 = v677 - v2;
LABEL_605:
                        v337 = v933;
                        v659 = v934;
                        v318 = (v751 + v678);
                        if (!__OFADD__(v751, v678))
                        {
                          goto LABEL_485;
                        }

                        goto LABEL_824;
                      case 2:
                        v759 = *(v2 + 16);
                        v758 = *(v2 + 24);
                        sub_100096480(v946);
                        v66 = __OFSUB__(v758, v759);
                        v678 = v758 - v759;
                        if (!v66)
                        {
                          goto LABEL_605;
                        }

                        goto LABEL_844;
                      case 3:
                        sub_100096480(v946);
                        v678 = 0;
                        goto LABEL_605;
                      default:
                        sub_100096480(v946);
                        goto LABEL_605;
                    }
                  }

                  goto LABEL_822;
                }

                v714 = *(*v946 + 16);
                sub_10000BA78();
                sub_10000BA78();
                sub_10000BA78();
                sub_1001706E8(2 * v714);
                sub_10000F300();
                if (v715)
                {
                  sub_10000B170();
                  Data._Representation.append(contentsOf:)();
                  v3 = *(v317 + 16);
                }

                else
                {
                  v3 = 0;
                }

                if (*(v2 + 16))
                {
                  sub_10000C910();
                  Data._Representation.append(contentsOf:)();
                }

                sub_100096480(v946);
                sub_100096480(v946);
                sub_100096480(v946);
                v318 = (v3 + v714);
                if (__OFADD__(v3, v714))
                {
                  goto LABEL_821;
                }

LABEL_484:
                v337 = v933;
                v659 = v934;
                break;
              case 7:
                sub_100096480(v946);
                sub_100096480(v946);
                v318 = 0;
                goto LABEL_484;
              default:
                LOBYTE(v950[0]) = v946[0] & 1;
                v326 = sub_100172DFC();
                v328 = (v327 + 1);
LABEL_474:
                sub_100172B5C(v326, v328);
                sub_10000F300();
                if (v671)
                {
                  sub_10000B170();
                  v318 = v5;
                  Data._Representation.append(contentsOf:)();
                }

                sub_100096480(v946);
                sub_100096480(v946);
                sub_100012FC8();

                goto LABEL_484;
            }

            goto LABEL_485;
        }

        goto LABEL_776;
      }

    case 2:
      v915 = *&v951[16];
      v916 = *&v951[8];
      v28 = *(*&v951[24] + 16);
      if (!v28)
      {
LABEL_608:
        sub_100172D9C();
        sub_100172D9C();
        v792 = sub_100006D64();
        sub_10006C9F0(v792, v793, v794, _swiftEmptyArrayStorage);
        sub_100008870();
        if (v51)
        {
          v900 = sub_100006530(v795);
          sub_10006C9F0(v900, v901, v902, v14);
        }

        sub_10000F70C();
        v13 = v5;
        Data._Representation.append(contentsOf:)();

LABEL_655:
        sub_100096480(v951);
        sub_100012FC8();

        goto LABEL_656;
      }

      v29 = *&v951[24];
      v30 = 2 * v28;
      sub_100172D9C();
      sub_100172D9C();
      v31._rawValue = sub_1001706E8(v30);
      v32 = sub_100172F20(v31);

      v33 = v15 + 64;
      sub_100004538();
      v36 = v35 & v34;
      v38 = ((v37 + 63) >> 6);

      v39 = v36;
      v40 = v38;
      v41 = 0;
      v925 = v38;
      v923 = v29 + 64;
      if (!v36)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      v988.schema.type._countAndFlagsBits = *v951;
      v988.schema.type._object = *&v951[8];
      v988.schema.name = *&v951[16];
      v314 = *(v13 + 3);
      v988.schema.namespace = *(v13 + 2);
      *&v988.schema.fields._rawValue = v314;
      sub_100172D9C();
      v13 = ByteBuffer.writeAvroRecord(_:)(&v988);
      sub_100096480(v951);
      goto LABEL_656;
    case 4:
      sub_1000382B4();
      sub_100025124();
      v3 = v21 ^ (v20 >> 63);
      v22 = _swiftEmptyArrayStorage;
      v948[0] = _swiftEmptyArrayStorage;
      v2 = v3 & 0x7F;
      if (v3 >= 0x80)
      {
        sub_100163ABC(v951, v949);
        sub_100163ABC(v951, v949);
        sub_100172ED8();
        sub_100003F14();
        v13 = v948;
        sub_100172934(v800);
        sub_1001732B4();
        sub_1001732B4();
        v22 = v948[0];
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v803 = sub_1000040F0();
            sub_10006C9F0(v803, v804, v805, v22);
            v22 = v806;
          }

          sub_1000079C4();
          if (v51)
          {
            v807 = sub_100006530(v801);
            sub_10006C9F0(v807, v808, v809, v22);
            v22 = v810;
          }

          sub_100172D7C();
        }

        while (v802);
      }

      else
      {
        sub_100163ABC(v951, v949);
        sub_100163ABC(v951, v949);
        sub_100172ED8();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v892 = sub_1000040F0();
        sub_10006C9F0(v892, v893, v894, v22);
        v22 = v895;
      }

      v23 = v22[2];
      sub_1000079C4();
      if (v51)
      {
        v896 = sub_100006530(v24);
        sub_10006C9F0(v896, v897, v898, v22);
        v22 = v899;
      }

      v25 = sub_10000BF64();
      v23[v25] = v2;
      sub_100172F38(v25);
      v26 = v22[2];

      sub_10000B9DC();
      switch(v27)
      {
        case 1:
          v828 = sub_100005700();
          sub_100163ABC(v828, v949);
          sub_100017D04();
          ByteBuffer.writeAvroArray(_:)();
          goto LABEL_634;
        case 2:
          v824 = sub_100005700();
          sub_100163ABC(v824, v949);
          sub_100017D04();
          ByteBuffer.writeAvroMap(_:)();
LABEL_634:
          sub_100172DE4();
          sub_100096480(v951);

          goto LABEL_635;
        case 3:
          v989.schema.type._countAndFlagsBits = v13;
          v989.schema.type._object = (v3 & 0x7F);
          v989.schema.name._countAndFlagsBits = v22;
          v989.schema.name._object = v3;
          v825 = sub_100007E7C();
          v827 = sub_10001BCC8(&v989, v825, v826);
          sub_100163ABC(v827, v949);
          v13 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v989);
          goto LABEL_632;
        case 4:
          sub_100172D18();
          sub_100005B10();
          v817 = sub_100005700();
          sub_100163ABC(v817, v948);
          sub_100173010();
          sub_1001706E8(v13);
          sub_100015BE4();
          if (v818)
          {
            sub_10000C910();
            Data._Representation.append(contentsOf:)();
          }

          v819 = sub_100167778(v3 & 0x7F);

          v820 = *&v949[8];
          v3 = *&v949[16];
          v2 = *&v949[24];
          v4 = *&v949[32];
          switch(v949[72])
          {
            case 1:
              sub_100023FEC();
              sub_10000BA20();
              ByteBuffer.writeAvroArray(_:)();
              goto LABEL_693;
            case 2:
              sub_100023FEC();
              sub_10000BA20();
              ByteBuffer.writeAvroMap(_:)();
LABEL_693:
              v869 = sub_10000AFB8();
              sub_100163B74(v869);
              sub_100163B74(v950);
              sub_100096480(v951);

              goto LABEL_694;
            case 3:
              v990.schema.type._countAndFlagsBits = *&v949[8];
              v990.schema.type._object = *&v949[16];
              v990.schema.name = *&v949[24];
              v23 = v949;
              v865 = sub_100007B00();
              v867 = sub_10001BCC8(&v990, v865, v866);
              sub_100163ABC(v867, v948);
              v820 = v5;
              ByteBuffer.writeAvroRecord(_:)(&v990);
              goto LABEL_691;
            case 4:
              sub_100172DCC(v948);
              sub_10001ACCC();
              v3 = v949;
              sub_100163ABC(&v949[8], v947);
              sub_1001732E4();
              v863._rawValue = sub_1001706E8(v820);
              sub_100172F20(v863);
              sub_1001732FC();
              sub_100172E84(v991);
              ByteBuffer.writeAvroValue(_:)(v991);
              sub_10001DA44();
              sub_100163B74(v949);
              sub_100163B74(v950);
              sub_100096480(v951);
              sub_100096480(&v949[8]);
              v864 = sub_100005700();
              sub_100096480(v864);
              sub_100096480(v951);
              v66 = __OFADD__(v2, v820);
              v820 += v2;
              if (!v66)
              {
                goto LABEL_695;
              }

              goto LABEL_835;
            default:
              sub_100172EA0();
              v821 = sub_10000BAF0();
              v820 = v5;
              ByteBuffer.writeAvroPrimitive(_:)(v821, v822, v823, v4);
LABEL_691:
              v868 = sub_10000AFB8();
              sub_100163B74(v868);
              sub_100163B74(v950);
              sub_100096480(v951);
              sub_100096480((v23 + 8));
LABEL_694:
              v870 = sub_100005700();
              sub_100096480(v870);
              sub_100096480(v951);
LABEL_695:
              v66 = __OFADD__(v819, v820);
              v13 = (v819 + v820);
              if (!v66)
              {
                goto LABEL_636;
              }

              goto LABEL_815;
          }

        default:
          sub_100013644();
          sub_100009A4C();
LABEL_632:
          sub_100172DE4();
          sub_100096480(v951);
          sub_100096480((v23 + 8));
LABEL_635:
          sub_100096480(v951);
LABEL_636:
          v66 = __OFADD__(v26, v13);
          v13 = (v13 + v26);
          v12 = v929;
          if (!v66)
          {
            goto LABEL_657;
          }

          goto LABEL_793;
      }

    default:
      switch(v951[24])
      {
        case 1:
          sub_1001705C0((2 * *v951) ^ (*v951 >> 31));
          sub_10000F300();
          if (!v834)
          {
            goto LABEL_654;
          }

          sub_10000B170();
LABEL_653:
          v13 = v5;
          Data._Representation.append(contentsOf:)();
LABEL_654:
          sub_100096480(v951);
          goto LABEL_655;
        case 2:
          v2 = (2 * *v951) ^ (*v951 >> 63);
          v830 = _swiftEmptyArrayStorage;
          v950[0] = _swiftEmptyArrayStorage;
          if (v2 >= 0x80)
          {
            sub_10000E050();
            sub_100172934(v847);
            v848 = sub_100010008();
            sub_100172934(v848);
            v849 = sub_100010008();
            sub_100172934(v849);
            v830 = v950[0];
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v852 = sub_1000040F0();
                sub_10006C9F0(v852, v853, v854, v830);
                v830 = v855;
              }

              sub_1000126E0();
              if (v51)
              {
                v856 = sub_100006530(v850);
                sub_10006C9F0(v856, v857, v858, v830);
                v830 = v859;
              }

              sub_100008C28();
            }

            while (v851);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v907 = sub_1000040F0();
            sub_10006C9F0(v907, v908, v909, v830);
            v830 = v910;
          }

          sub_100014CF0();
          if (v51)
          {
            v911 = sub_100006530(v831);
            sub_10006C9F0(v911, v912, v913, v830);
          }

          *(sub_10000BF64() + v2) = v2 & 0x7F;
          goto LABEL_653;
        case 3:
          LODWORD(v950[0]) = *v951;
          v17 = sub_100172DFC();
          v19 = (v832 + 4);
          goto LABEL_647;
        case 4:
          v950[0] = *v951;
          v17 = sub_100172DFC();
          v19 = (v829 + 8);
          goto LABEL_647;
        case 5:
          v4 = *&v951[8];
          if ((*&v951[8] & 0x1000000000000000) != 0)
          {
            String.UTF8View._foreignCount()();
          }

          sub_100018A18();
          sub_100172D9C();
          sub_100172D9C();
          sub_100172D9C();
          sub_1001706E8(v13);
          sub_10000E2A0();
          if (v835)
          {
            sub_10000EC9C();
            Data._Representation.append(contentsOf:)();
          }

          v2 = sub_100167778(v3);

          v836 = v926;
          static String.Encoding.utf8.getter();
          v837 = String.data(using:allowLossyConversion:)();
          v839 = v838;
          sub_10017315C();
          v840(v836, v927);
          if (v839 >> 60 == 15)
          {
            v3 = 0;
          }

          else
          {
            v3 = v837;
          }

          if (v839 >> 60 == 15)
          {
            v839 = 0xC000000000000000;
          }

          sub_100007700();
          Data.append(_:)();
          sub_100096480(v951);
          sub_100096480(v951);
          sub_100096480(v951);
          switch(v839 >> 62)
          {
            case 1uLL:
              v877 = sub_100007700();
              sub_100014A40(v877, v878);
              LODWORD(v843) = HIDWORD(v3) - v3;
              if (__OFSUB__(HIDWORD(v3), v3))
              {
                goto LABEL_836;
              }

              v843 = v843;
LABEL_704:
              v12 = v929;
              v13 = (v2 + v843);
              if (!__OFADD__(v2, v843))
              {
                goto LABEL_657;
              }

              goto LABEL_819;
            case 2uLL:
              v872 = *(v3 + 16);
              v871 = *(v3 + 24);
              v873 = sub_100007700();
              sub_100014A40(v873, v874);
              v843 = v871 - v872;
              if (!__OFSUB__(v871, v872))
              {
                goto LABEL_704;
              }

              goto LABEL_837;
            case 3uLL:
              v875 = sub_100007700();
              sub_100014A40(v875, v876);
              v843 = 0;
              goto LABEL_704;
            default:
              v841 = sub_100007700();
              sub_100014A40(v841, v842);
              v843 = BYTE6(v839);
              goto LABEL_704;
          }

        case 6:
          v844 = (*&v951[8] >> 60) & 3;
          if (v844)
          {
            v2 = *&v951[8] >> 62;
            v4 = HIDWORD(*v951);
            v845 = v951[14];
            if (v844 != 1)
            {
              v862 = 0;
              switch(v2)
              {
                case 1uLL:
                  if (__OFSUB__(*&v951[4], *v951))
                  {
                    goto LABEL_847;
                  }

                  v862 = *&v951[4] - *v951;
LABEL_727:
                  sub_100172D9C();
                  sub_100172D9C();
                  sub_100172D9C();
LABEL_728:
                  sub_1001706E8((2 * v862) ^ (v862 >> 63));
                  sub_10000E2A0();
                  if (v886)
                  {
                    sub_10000EC9C();
                    Data._Representation.append(contentsOf:)();
                    v887 = *(v3 + 16);
                  }

                  else
                  {
                    v887 = 0;
                  }

                  Data.append(_:)();
                  sub_100096480(v951);
                  sub_100096480(v951);
                  switch(v2)
                  {
                    case 0:
                      sub_100096480(v951);
                      goto LABEL_739;
                    case 1:
                      sub_100096480(v951);
                      if (__OFSUB__(v4, v14))
                      {
                        goto LABEL_851;
                      }

                      v845 = v4 - v14;
LABEL_739:
                      v12 = v929;
                      v13 = (v887 + v845);
                      if (!__OFADD__(v887, v845))
                      {
                        goto LABEL_657;
                      }

                      goto LABEL_832;
                    case 2:
                      v889 = *(v14 + 16);
                      v888 = *(v14 + 24);
                      sub_100096480(v951);
                      v66 = __OFSUB__(v888, v889);
                      v845 = v888 - v889;
                      if (!v66)
                      {
                        goto LABEL_739;
                      }

                      goto LABEL_850;
                    case 3:
                      sub_100096480(v951);
                      v845 = 0;
                      goto LABEL_739;
                    default:
LABEL_854:
                      JUMPOUT(0);
                  }

                case 2uLL:
                  v885 = *(*v951 + 16);
                  v884 = *(*v951 + 24);
                  v862 = v884 - v885;
                  if (!__OFSUB__(v884, v885))
                  {
                    goto LABEL_727;
                  }

                  goto LABEL_849;
                case 3uLL:
                  goto LABEL_728;
                default:
                  v862 = v951[14];
                  goto LABEL_728;
              }
            }

            v846 = 0;
            switch(v2)
            {
              case 1uLL:
                if (__OFSUB__(*&v951[4], *v951))
                {
                  goto LABEL_846;
                }

                v879 = *&v951[16];
                v3 = *&v951[8];
                v846 = *&v951[4] - *v951;
                break;
              case 2uLL:
                v879 = *&v951[16];
                v881 = *(*v951 + 16);
                v880 = *(*v951 + 24);
                v846 = v880 - v881;
                if (__OFSUB__(v880, v881))
                {
                  goto LABEL_848;
                }

                v3 = *&v951[8];
                break;
              case 3uLL:
                goto LABEL_718;
              default:
                v846 = v951[14];
                goto LABEL_718;
            }

            sub_100172D9C();
            sub_100172D9C();
            sub_100172D9C();
            v16 = v879;
LABEL_718:
            if (!__OFSUB__(v846, v16))
            {
              sub_100173028(v846 - v16);
              sub_10000E2A0();
              if (v882)
              {
                sub_10000EC9C();
                Data._Representation.append(contentsOf:)();
                v883 = *(v3 + 16);
              }

              else
              {
                v883 = 0;
              }

              Data.append(_:)();
              sub_100096480(v951);
              sub_100096480(v951);
              switch(v2)
              {
                case 1:
                  sub_100096480(v951);
                  if (__OFSUB__(v4, v14))
                  {
                    goto LABEL_853;
                  }

                  v845 = v4 - v14;
LABEL_748:
                  v12 = v929;
                  v13 = (v883 + v845);
                  if (!__OFADD__(v883, v845))
                  {
                    goto LABEL_657;
                  }

                  goto LABEL_833;
                case 2:
                  v891 = *(v14 + 16);
                  v890 = *(v14 + 24);
                  sub_100096480(v951);
                  v66 = __OFSUB__(v890, v891);
                  v845 = v890 - v891;
                  if (!v66)
                  {
                    goto LABEL_748;
                  }

                  goto LABEL_852;
                case 3:
                  sub_100096480(v951);
                  v845 = 0;
                  goto LABEL_748;
                default:
                  sub_100096480(v951);
                  goto LABEL_748;
              }
            }

            goto LABEL_831;
          }

          v860 = *(*v951 + 16);
          sub_100172D9C();
          sub_100172D9C();
          sub_100172D9C();
          sub_1001706E8(2 * v860);
          sub_100015BE4();
          if (v861)
          {
            sub_10000C910();
            Data._Representation.append(contentsOf:)();
            v3 = *(v2 + 16);
          }

          else
          {
            v3 = 0;
          }

          if (*(v14 + 16))
          {
            sub_10000B170();
            Data._Representation.append(contentsOf:)();
          }

          sub_100096480(v951);
          sub_100096480(v951);
          sub_100096480(v951);
          v13 = (v3 + v860);
          if (__OFADD__(v3, v860))
          {
            goto LABEL_830;
          }

          break;
        case 7:
          sub_100096480(v951);
          sub_100096480(v951);
          v13 = 0;
          goto LABEL_656;
        default:
          LOBYTE(v950[0]) = v951[0] & 1;
          v17 = sub_100172DFC();
          v19 = (v18 + 1);
LABEL_647:
          sub_100172B5C(v17, v19);
          sub_10000F300();
          if (v833)
          {
            sub_10000B170();
            v13 = v5;
            Data._Representation.append(contentsOf:)();
          }

          sub_100096480(v951);
          sub_100096480(v951);
          sub_100012FC8();

          goto LABEL_656;
      }

      goto LABEL_656;
  }

LABEL_17:
  v42 = v41;
LABEL_21:
  v43 = v39;
  v936 = v42;
  v44 = *(*(v934 + 48) + 16 * (__clz(__rbit64(v39)) | (v42 << 6)) + 8);
  sub_10000BFF0();
  memcpy(v946, v45, sizeof(v946));
  if ((v44 & 0x1000000000000000) != 0)
  {
    sub_100008380();
    String.UTF8View._foreignCount()();
  }

  sub_100018A18();

  sub_10000BA78();
  sub_1001706E8(v33);
  sub_10000F300();
  if (v46)
  {
    sub_10000B170();
    Data._Representation.append(contentsOf:)();
    v4 = *(v29 + 16);
  }

  else
  {
    v4 = 0;
  }

  v937 = (v43 - 1) & v43;

  v47 = v926;
  static String.Encoding.utf8.getter();
  sub_100172FC8();
  v48 = String.data(using:allowLossyConversion:)();
  v50 = v49;
  v940 = *v924;
  (v940)(v47, v927);
  sub_1001731E4();
  if (!v52 & v51)
  {
    v53 = 0;
  }

  else
  {
    v53 = v48;
  }

  if (!v52 & v51)
  {
    v54 = 0xC000000000000000;
  }

  else
  {
    v54 = v50;
  }

  sub_100007700();
  Data.append(_:)();

  switch(v54 >> 62)
  {
    case 1uLL:
      v64 = sub_100007700();
      sub_100014A40(v64, v65);
      LODWORD(v57) = HIDWORD(v53) - v53;
      if (__OFSUB__(HIDWORD(v53), v53))
      {
        goto LABEL_801;
      }

      v57 = v57;
LABEL_40:
      v66 = __OFADD__(v4, v57);
      v67 = v4 + v57;
      if (v66)
      {
        goto LABEL_779;
      }

      break;
    case 2uLL:
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      v60 = sub_100007700();
      sub_100014A40(v60, v61);
      v57 = v58 - v59;
      if (!__OFSUB__(v58, v59))
      {
        goto LABEL_40;
      }

      goto LABEL_800;
    case 3uLL:
      v62 = sub_100007700();
      sub_100014A40(v62, v63);
      v57 = 0;
      goto LABEL_40;
    default:
      v55 = sub_100007700();
      sub_100014A40(v55, v56);
      v57 = BYTE6(v54);
      goto LABEL_40;
  }

  v68 = *v946;
  v29 = *&v946[8];
  v3 = *&v946[24];
  v38 = *&v946[16];
  v935 = v67;
  switch(v946[64])
  {
    case 1:
      v920 = *&v946[8];
      v921 = *&v946[16];
      if (!*(*&v946[24] + 16))
      {
        goto LABEL_197;
      }

      sub_100167778(*&v946[24]);
      sub_100018A18();
      sub_10000BA78();
      v160._rawValue = sub_1001706E8(v68);
      sub_100172F20(v160);
      sub_1001732FC();
      v161 = *(v3 + 16);
      if (!v161)
      {
        goto LABEL_201;
      }

      v38 = 0;
      v938 = *(v3 + 16);
      v939 = (v3 + 32);
      v162 = v161;
      v922 = v32;
      v930 = v3;
      while (2)
      {
        if (v38 >= v162)
        {
          goto LABEL_768;
        }

        sub_10017325C(72);
        v940 = v38 + 1;
        v29 = v942;
        v5 = v944._object;
        switch(v945)
        {
          case 1:
            v931 = v943;
            v932 = v944._countAndFlagsBits;
            v198 = *(v944._object + 2);
            if (!v198)
            {
              goto LABEL_128;
            }

            v199 = 2 * v198;
            v200 = sub_10000CB00();
            sub_100163ABC(v200, v201);
            v202 = sub_10000CB00();
            sub_100163ABC(v202, v203);
            sub_1001706E8(v199);
            sub_10000F300();
            v933 = v44;
            if (v204)
            {
              sub_10000B170();
              Data._Representation.append(contentsOf:)();
              v205 = *(v29 + 16);
            }

            else
            {
              v205 = 0;
            }

            v246 = *(v5 + 16);
            if (v246)
            {
              v247 = v5 + 64;
              while (2)
              {
                sub_100010018();
                v248 = *v949;
                v29 = *&v949[8];
                v249 = *&v949[16];
                v4 = *&v949[24];
                switch(v949[64])
                {
                  case 1:
                    sub_100172D64();
                    sub_100172D64();
                    sub_100172FE0();
                    ByteBuffer.writeAvroArray(_:)();
                    goto LABEL_164;
                  case 2:
                    sub_100172D64();
                    sub_100172D64();
                    sub_100172FE0();
                    ByteBuffer.writeAvroMap(_:)();
LABEL_164:
                    v254 = sub_10000AFB8();
                    sub_100096480(v254);

                    goto LABEL_165;
                  case 3:
                    v970.schema.type._countAndFlagsBits = *v949;
                    v970.schema.type._object = *&v949[8];
                    v970.schema.name = *&v949[16];
                    v253 = *(v247 + 16);
                    v970.schema.namespace = *v247;
                    *&v970.schema.fields._rawValue = v253;
                    sub_100172D64();
                    v252 = ByteBuffer.writeAvroRecord(_:)(&v970);
                    goto LABEL_161;
                  case 4:
                    sub_100172DCC(v971);
                    sub_100172D64();
                    sub_100163B18(v971, v950);
                    v248 = ByteBuffer.writeAvroUnion(_:)(v971);
                    sub_100163B74(v971);
                    goto LABEL_162;
                  default:
                    sub_100172D64();
                    v250 = sub_1000385F0();
                    v252 = ByteBuffer.writeAvroPrimitive(_:)(v250, v251, v249, v4);
LABEL_161:
                    v248 = v252;
LABEL_162:
                    sub_100096480(v949);
LABEL_165:
                    v66 = __OFADD__(v205, v248);
                    v205 += v248;
                    if (v66)
                    {
                      goto LABEL_760;
                    }

                    v247 += 72;
                    if (!--v246)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }

            v255 = sub_100006D64();
            sub_10006C9F0(v255, v256, v257, _swiftEmptyArrayStorage);
            sub_1001731B0();
            if (v51)
            {
              v294 = sub_100006530(v258);
              sub_10006C9F0(v294, v295, v296, v29);
              v29 = v297;
            }

            v3 = v930;
            *(sub_10000BF64() + v246) = 0;
            v259 = v941;
            Data._Representation.append(contentsOf:)();

            sub_100096480(&v942);
            sub_100012FC8();

            v66 = __OFADD__(v205, v259);
            v68 = v205 + v259;
            if (!v66)
            {
              goto LABEL_170;
            }

            goto LABEL_798;
          case 2:
            v931 = v943;
            v932 = v944._countAndFlagsBits;
            v186 = *(v944._object + 2);
            if (!v186)
            {
LABEL_128:
              v206 = sub_10000CB00();
              sub_100163ABC(v206, v207);
              v208 = sub_10000CB00();
              sub_100163ABC(v208, v209);
              v210 = sub_100006D64();
              sub_10006C9F0(v210, v211, v212, _swiftEmptyArrayStorage);
              sub_100008870();
              if (v51)
              {
                v290 = sub_100006530(v213);
                sub_10006C9F0(v290, v291, v292, v29);
                v29 = v293;
              }

              sub_10000F70C();
              v68 = v941;
              Data._Representation.append(contentsOf:)();
              v5 = v68;

              sub_100096480(&v942);
              sub_100012FC8();

LABEL_131:
              v38 = v940;
              goto LABEL_180;
            }

            v933 = v44;
            v187 = 2 * v186;
            v188 = sub_10000CB00();
            sub_100163ABC(v188, v189);
            v190 = sub_10000CB00();
            sub_100163ABC(v190, v191);
            sub_1001706E8(v187);
            sub_10000F300();
            if (v192)
            {
              sub_10000B170();
              Data._Representation.append(contentsOf:)();
              v193 = *(v29 + 16);
            }

            else
            {
              v193 = 0;
            }

            sub_100004538();
            v230 = v229 & v228;
            v4 = (v231 + 63) >> 6;

            v232 = 0;
            break;
          case 3:
            v973 = v942;
            v974 = v943;
            v975 = v944;
            v194 = *(v68 + 48);
            v976 = *(v68 + 32);
            v977 = v194;
            v195 = sub_10000CB00();
            sub_100163ABC(v195, v196);
            sub_100173150();
            v169 = ByteBuffer.writeAvroRecord(_:)(v197);
            goto LABEL_124;
          case 4:
            v933 = v44;
            v170 = v3;
            sub_1000382B4();
            sub_100025124();
            v173 = v172 ^ (v171 >> 63);
            v174 = v173 & 0x7F;
            v175 = sub_100172E24();
            if (v173 >= 0x80)
            {
              sub_100163ABC(v175, v176);
              v214 = sub_100172E24();
              sub_100163ABC(v214, v215);
              sub_100172ED8();
              v216 = sub_100006D64();
              sub_10006C9F0(v216, v217, v218, _swiftEmptyArrayStorage);
              v179 = v219;
              v220 = v219[2];
              v5 = v941;
              do
              {
                v221 = v179[3];
                if (v220 >= v221 >> 1)
                {
                  v224 = sub_100006530(v221);
                  sub_10006C9F0(v224, v225, v226, v179);
                  v179 = v227;
                }

                v222 = v174 | 0x80;
                v174 = (v173 >> 7) & 0x7F;
                v223 = v173 >> 14;
                v173 >>= 7;
                v179[2] = v220 + 1;
                *(v179 + v220++ + 32) = v222;
              }

              while (v223);
            }

            else
            {
              sub_100163ABC(v175, v176);
              v177 = sub_100172E24();
              sub_100163ABC(v177, v178);
              sub_100172ED8();
              v179 = _swiftEmptyArrayStorage;
              v5 = v941;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v282 = sub_1000040F0();
              sub_10006C9F0(v282, v283, v284, v179);
              v179 = v285;
            }

            v181 = v179[2];
            v180 = v179[3];
            if (v181 >= v180 >> 1)
            {
              v286 = sub_100006530(v180);
              sub_10006C9F0(v286, v287, v288, v179);
              v179 = v289;
            }

            v179[2] = v181 + 1;
            *(v179 + v181 + 32) = v174;
            sub_100172F38((v179 + 4));
            v4 = v179[2];

            v182 = v950[1];
            v29 = v950[2];
            v183 = *&v950[3];
            switch(LOBYTE(v950[9]))
            {
              case 1:
                v267 = sub_100005700();
                sub_100163ABC(v267, v949);
                sub_100017D04();
                ByteBuffer.writeAvroArray(_:)();
                goto LABEL_177;
              case 2:
                v263 = sub_100005700();
                sub_100163ABC(v263, v949);
                sub_100017D04();
                ByteBuffer.writeAvroMap(_:)();
LABEL_177:
                sub_100172DE4();
                sub_100096480(&v942);

                goto LABEL_178;
              case 3:
                v978.schema.type._countAndFlagsBits = v950[1];
                v978.schema.type._object = v950[2];
                v978.schema.name = *&v950[3];
                v264 = sub_100007E7C();
                v266 = sub_10001BCC8(&v978, v264, v265);
                sub_100163ABC(v266, v949);
                v182 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v978);
                goto LABEL_175;
              case 4:
                sub_100172D18();
                sub_100005B10();
                v260 = sub_100005700();
                sub_100163ABC(v260, v948);
                sub_100173010();
                sub_1001706E8(v182);
                sub_10000F300();
                if (v261)
                {
                  sub_10000B170();
                  Data._Representation.append(contentsOf:)();
                  v262 = *(v29 + 16);
                }

                else
                {
                  v262 = 0;
                }

                v268 = *&v949[8];
                v269 = *&v949[24];
                v29 = *&v949[32];
                switch(v949[72])
                {
                  case 1:
                    sub_100023FEC();
                    v271 = v941;
                    ByteBuffer.writeAvroArray(_:)();
                    goto LABEL_193;
                  case 2:
                    sub_100023FEC();
                    v271 = v941;
                    ByteBuffer.writeAvroMap(_:)();
LABEL_193:
                    v280 = sub_10000AFB8();
                    sub_100163B74(v280);
                    sub_100163B74(v950);
                    sub_100096480(&v942);

                    goto LABEL_194;
                  case 3:
                    v979.schema.type._countAndFlagsBits = *&v949[8];
                    v979.schema.type._object = *&v949[16];
                    v979.schema.name = *&v949[24];
                    v174 = v949;
                    v276 = sub_100007B00();
                    v278 = sub_10001BCC8(&v979, v276, v277);
                    sub_100163ABC(v278, v948);
                    v271 = v941;
                    ByteBuffer.writeAvroRecord(_:)(&v979);
                    goto LABEL_191;
                  case 4:
                    sub_100172DCC(v948);
                    sub_10001ACCC();
                    sub_10017307C();
                    sub_1001732E4();
                    v274._rawValue = sub_1001706E8(v268);
                    sub_100172F98(v274);
                    sub_100172F08();
                    sub_100172E84(v980);
                    ByteBuffer.writeAvroValue(_:)(v980);
                    sub_10001DA44();
                    sub_100163B74(v949);
                    sub_100163B74(v950);
                    sub_100096480(&v942);
                    sub_100096480(v269 + 8);
                    v275 = sub_100005700();
                    sub_100096480(v275);
                    sub_100096480(&v942);
                    v66 = __OFADD__(v29, v268);
                    v271 = v29 + v268;
                    if (!v66)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_829;
                  default:
                    sub_100172EA0();
                    v270 = sub_10000BAF0();
                    v271 = v941;
                    ByteBuffer.writeAvroPrimitive(_:)(v270, v272, v273, v29);
LABEL_191:
                    v279 = sub_10000AFB8();
                    sub_100163B74(v279);
                    sub_100163B74(v950);
                    sub_100096480(&v942);
                    sub_100096480(v174 + 8);
LABEL_194:
                    v281 = sub_100005700();
                    sub_100096480(v281);
                    sub_100096480(&v942);
LABEL_195:
                    v3 = v170;
                    v44 = v933;
                    v38 = v940;
                    v66 = __OFADD__(v262, v271);
                    v182 = v262 + v271;
                    if (v66)
                    {
                      goto LABEL_813;
                    }

                    v5 = v941;
                    break;
                }

                goto LABEL_179;
              default:
                sub_100013644();
                v184 = sub_1000385F0();
                v182 = v5;
                ByteBuffer.writeAvroPrimitive(_:)(v184, v185, v183, SBYTE8(v183));
LABEL_175:
                sub_100172DE4();
                sub_100096480(&v942);
                sub_100096480(v174 + 8);
LABEL_178:
                sub_100096480(&v942);
                v3 = v170;
                v44 = v933;
                v38 = v940;
LABEL_179:
                v66 = __OFADD__(v4, v182);
                v68 = v4 + v182;
                if (!v66)
                {
                  goto LABEL_180;
                }

                goto LABEL_790;
            }

          default:
            v163 = sub_10000CB00();
            sub_100163ABC(v163, v164);
            sub_10000F18C();
            sub_100173150();
            v169 = ByteBuffer.writeAvroPrimitive(_:)(v165, v166, v167, v168);
LABEL_124:
            v68 = v169;
            sub_100096480(&v942);
            goto LABEL_131;
        }

LABEL_139:
        if (v230)
        {
          goto LABEL_144;
        }

        while (1)
        {
          v233 = v232 + 1;
          if (__OFADD__(v232, 1))
          {
            goto LABEL_755;
          }

          if (v233 >= v4)
          {
            break;
          }

          v230 = *(v5 + 64 + 8 * v233);
          ++v232;
          if (v230)
          {
            v232 = v233;
LABEL_144:
            v234 = (*(v5 + 48) + 16 * (__clz(__rbit64(v230)) | (v232 << 6)));
            v235 = *v234;
            v236 = v234[1];
            sub_10000BFF0();
            memcpy(v972, v237, 0x41uLL);

            sub_100163ABC(v972, v950);
            v238._countAndFlagsBits = v235;
            v238._object = v236;
            ByteBuffer.writeAvroString(_:)(v238);
            sub_100172F08();
            v239 = ByteBuffer.writeAvroValue(_:)(v972);
            sub_100096480(v972);
            v240 = v29 + v239;
            if (__OFADD__(v29, v239))
            {
              goto LABEL_777;
            }

            v230 &= v230 - 1;
            v66 = __OFADD__(v193, v240);
            v193 += v240;
            if (v66)
            {
              goto LABEL_778;
            }

            goto LABEL_139;
          }
        }

        v241 = sub_100006D64();
        sub_10006C9F0(v241, v242, v243, _swiftEmptyArrayStorage);
        sub_100008870();
        if (v51)
        {
          v298 = sub_100006530(v244);
          sub_10006C9F0(v298, v299, v300, v29);
          v29 = v301;
        }

        v32 = v922;
        v3 = v930;
        sub_10000F70C();
        v245 = v941;
        Data._Representation.append(contentsOf:)();

        sub_100096480(&v942);
        sub_100012FC8();

        v66 = __OFADD__(v193, v245);
        v68 = v193 + v245;
        if (v66)
        {
          goto LABEL_799;
        }

LABEL_170:
        v38 = v940;
        v5 = v941;
        v44 = v933;
LABEL_180:
        v66 = __OFADD__(v44, v68);
        v44 += v68;
        if (v66)
        {
          goto LABEL_769;
        }

        if (v38 != v938)
        {
          v162 = *(v3 + 16);
          continue;
        }

        break;
      }

LABEL_201:
      sub_100170344(0);
      sub_1001730EC();

      sub_100096480(v946);
      v159 = v44 + v5;
      if (__OFADD__(v44, v5))
      {
        goto LABEL_811;
      }

      goto LABEL_202;
    case 2:
      v920 = *&v946[8];
      v921 = *&v946[16];
      v79 = *(*&v946[24] + 16);
      if (!v79)
      {
LABEL_197:
        sub_10000BA78();
        v950[0] = _swiftEmptyArrayStorage;
        sub_100003F14();
        sub_100172934(v302);
        v29 = *(v950[0] + 16);
        v303 = sub_100010008();
        sub_1001729D8(v303, v38);
        v38 = v950[0];
        *(v950[0] + 16) = v29 + 1;
        *(v38 + v29 + 32) = 0;
        v159 = v5;
        Data._Representation.append(contentsOf:)();

        sub_100096480(v946);
        sub_100167778(v38);
        sub_1000054F4();

        goto LABEL_202;
      }

      v80 = 2 * v79;
      sub_10000BA78();
      v81._rawValue = sub_1001706E8(v80);
      v4 = sub_100172F20(v81);

      v82 = v3 + 64;
      sub_100004538();
      v85 = v84 & v83;
      v87 = (v86 + 63) >> 6;

      v88 = 0;
      v922 = v32;
      v930 = v3;
      v932 = v3 + 64;
      v933 = v87;
      if (!v85)
      {
        goto LABEL_50;
      }

      break;
    case 3:
      v985 = *v946;
      sub_10000BA78();
      v71 = ByteBuffer.writeAvroRecord(_:)(&v985);
      goto LABEL_105;
    case 4:
      sub_100172DCC(v950);
      sub_10001ACCC();
      v72 = sub_100173204();
      sub_100163ABC(v72, v73);
      sub_100172ED8();
      sub_1001706E8(v68);
      sub_10000F300();
      if (v74)
      {
        sub_10000B170();
        Data._Representation.append(contentsOf:)();
      }

      sub_100167778(v29);
      sub_100173314();
      v75 = v950[1];
      sub_10017319C();
      switch(v76)
      {
        case 1:
          v312 = sub_100005700();
          sub_100163ABC(v312, v949);
          sub_10000BA20();
          ByteBuffer.writeAvroArray(_:)();
          goto LABEL_210;
        case 2:
          v308 = sub_100005700();
          sub_100163ABC(v308, v949);
          sub_10000BA20();
          ByteBuffer.writeAvroMap(_:)();
LABEL_210:
          sub_100172DE4();
          sub_100096480(v946);

          goto LABEL_211;
        case 3:
          v986.schema.type._countAndFlagsBits = v75;
          v986.schema.type._object = v29;
          v986.schema.name._countAndFlagsBits = v3;
          v986.schema.name._object = v4;
          v309 = sub_100007E7C();
          v311 = sub_10001BCC8(&v986, v309, v310);
          sub_100163ABC(v311, v949);
          v75 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v986);
          goto LABEL_208;
        case 4:
          sub_100172D18();
          sub_100005B10();
          v3 = v950;
          sub_100163ABC(&v950[1], v948);
          sub_100173010();
          v306._rawValue = sub_1001706E8(v75);
          sub_100172F20(v306);
          sub_100172F08();
          sub_100172EF0(v987, v949);
          ByteBuffer.writeAvroValue(_:)(v987);
          v307 = sub_10000AFB8();
          sub_100163B74(v307);
          sub_100163B74(v950);
          sub_100096480(v946);
          sub_100096480(&v950[1]);
          sub_100096480(v946);
          v66 = __OFADD__(v29, v75);
          v75 += v29;
          if (!v66)
          {
            goto LABEL_212;
          }

          goto LABEL_820;
        default:
          sub_100013644();
          v77 = sub_1000385F0();
          v75 = v5;
          ByteBuffer.writeAvroPrimitive(_:)(v77, v78, v3, v4);
LABEL_208:
          sub_100172DE4();
          sub_100096480(v946);
          sub_100096480(v38 + 8);
LABEL_211:
          sub_100096480(v946);
LABEL_212:
          v40 = v925;
          v305 = v936;
          v39 = v937;
          v66 = __OFADD__(v44, v75);
          v159 = v44 + v75;
          if (!v66)
          {
            goto LABEL_213;
          }

          goto LABEL_805;
      }

    default:
      sub_10000BA78();
      v69 = sub_1000385F0();
      v71 = ByteBuffer.writeAvroPrimitive(_:)(v69, v70, v38, v3);
LABEL_105:
      v159 = v71;
      sub_100096480(v946);
      sub_100096480(v946);
      goto LABEL_202;
  }

  while (2)
  {
    v5 = v88;
LABEL_53:
    sub_1001731F0();
    v90 = *(v89 + 8);
    sub_10000BFF0();
    memcpy(v947, v91, sizeof(v947));
    if ((v90 & 0x1000000000000000) != 0)
    {
      sub_10001BD4C();
      String.UTF8View._foreignCount()();
    }

    sub_100018A18();

    v92 = sub_1000190C0();
    sub_100163ABC(v92, v93);
    sub_1001706E8(v82);
    sub_10000F300();
    v938 = v4;
    if (v94)
    {
      sub_10000B170();
      Data._Representation.append(contentsOf:)();
      v939 = *(v29 + 16);
    }

    else
    {
      v939 = 0;
    }

    v85 &= v85 - 1;

    v95 = v926;
    static String.Encoding.utf8.getter();
    sub_100172FC8();
    v96 = String.data(using:allowLossyConversion:)();
    v98 = v97;
    (v940)(v95, v927);
    sub_1001731E4();
    if (!v100 & v99)
    {
      v101 = 0;
    }

    else
    {
      v101 = v96;
    }

    if (!v100 & v99)
    {
      v29 = 0xC000000000000000;
    }

    else
    {
      v29 = v98;
    }

    sub_1000E2258();
    Data.append(_:)();

    v87 = v933;
    switch(v29 >> 62)
    {
      case 1uLL:
        v111 = sub_1000E2258();
        sub_100014A40(v111, v112);
        LODWORD(v104) = HIDWORD(v101) - v101;
        if (__OFSUB__(HIDWORD(v101), v101))
        {
          goto LABEL_809;
        }

        v104 = v104;
LABEL_72:
        v38 = (v939 + v104);
        if (__OFADD__(v939, v104))
        {
          goto LABEL_787;
        }

        break;
      case 2uLL:
        v106 = *(v101 + 16);
        v105 = *(v101 + 24);
        v107 = sub_1000E2258();
        sub_100014A40(v107, v108);
        v104 = v105 - v106;
        if (!__OFSUB__(v105, v106))
        {
          goto LABEL_72;
        }

        goto LABEL_808;
      case 3uLL:
        v109 = sub_1000E2258();
        sub_100014A40(v109, v110);
        v104 = 0;
        goto LABEL_72;
      default:
        v102 = sub_1000E2258();
        sub_100014A40(v102, v103);
        v104 = BYTE6(v29);
        goto LABEL_72;
    }

    v114 = *&v947[8];
    v113 = *v947;
    v116 = *&v947[24];
    v115 = *&v947[16];
    switch(v947[64])
    {
      case 1:
        v939 = (v939 + v104);
        if (*(*&v947[24] + 16))
        {
          sub_100167778(*&v947[24]);
          sub_100018A18();
          v134 = sub_1000190C0();
          sub_100163ABC(v134, v135);
          v136._rawValue = sub_1001706E8(v113);
          v137 = sub_100172F98(v136);

          v138 = *(v116 + 16);
          if (v138)
          {
            v29 = v116 + 32;
            while (1)
            {
              memcpy(v981, v29, 0x41uLL);
              sub_100163ABC(v981, v950);
              v139 = ByteBuffer.writeAvroValue(_:)(v981);
              sub_100096480(v981);
              v66 = __OFADD__(v137, v139);
              v137 += v139;
              if (v66)
              {
                break;
              }

              v29 += 72;
              if (!--v138)
              {
                goto LABEL_88;
              }
            }

LABEL_776:
            __break(1u);
LABEL_777:
            __break(1u);
LABEL_778:
            __break(1u);
LABEL_779:
            __break(1u);
LABEL_780:
            __break(1u);
LABEL_781:
            __break(1u);
LABEL_782:
            __break(1u);
LABEL_783:
            __break(1u);
LABEL_784:
            __break(1u);
            goto LABEL_785;
          }

LABEL_88:
          v140._rawValue = sub_1001706E8(0);
          v141 = sub_100172F98(v140);

          sub_100096480(v947);
          v66 = __OFADD__(v137, v141);
          v113 = v137 + v141;
          if (v66)
          {
            goto LABEL_817;
          }

          v32 = v922;
          v133 = v938;
          v38 = v939;
          v87 = v933;
        }

        else
        {
          v142 = sub_1000190C0();
          sub_100163ABC(v142, v143);
          v144 = sub_100006D64();
          sub_10006C9F0(v144, v145, v146, _swiftEmptyArrayStorage);
          v950[0] = v147;
          v148 = *(v147 + 16);
          sub_10000AD48();
          sub_1001729D8(v148, v149);
          sub_100172E30();

          sub_100096480(v947);
          sub_100167778(v29);
          sub_10000AB28();

          v32 = v922;
          v133 = v938;
          v38 = v939;
        }

LABEL_100:
        v158 = v38 + v113;
        v3 = v930;
        if (__OFADD__(v38, v113))
        {
          goto LABEL_788;
        }

        v66 = __OFADD__(v133, v158);
        v4 = &v158[v133];
        if (v66)
        {
LABEL_789:
          __break(1u);
LABEL_790:
          __break(1u);
LABEL_791:
          __break(1u);
LABEL_792:
          __break(1u);
LABEL_793:
          __break(1u);
          goto LABEL_794;
        }

        v88 = v5;
        v82 = v932;
        if (v85)
        {
          continue;
        }

        while (1)
        {
LABEL_50:
          v5 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            goto LABEL_762;
          }

          if (v5 >= v87)
          {
            break;
          }

          v85 = *(v82 + 8 * v5);
          ++v88;
          if (v85)
          {
            goto LABEL_53;
          }
        }

        sub_100173150();
        sub_100170344(v304);
        sub_1001730EC();

        sub_100096480(v946);
        v66 = __OFADD__(v4, v82);
        v159 = v4 + v82;
        if (v66)
        {
          goto LABEL_810;
        }

LABEL_202:
        v40 = v925;
        v305 = v936;
        v39 = v937;
LABEL_213:
        v313 = v935 + v159;
        if (__OFADD__(v935, v159))
        {
          goto LABEL_780;
        }

        v66 = __OFADD__(v32, v313);
        v32 += v313;
        if (v66)
        {
          goto LABEL_781;
        }

        v41 = v305;
        v33 = v923;
        if (v39)
        {
          goto LABEL_17;
        }

        while (1)
        {
LABEL_18:
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_756;
          }

          if (v42 >= v40)
          {
            break;
          }

          v39 = *(v33 + 8 * v42);
          ++v41;
          if (v39)
          {
            goto LABEL_21;
          }
        }

        v2 = v934;

        v950[0] = _swiftEmptyArrayStorage;
        sub_100003F14();
        sub_100172934(v796);
        v797 = sub_100010008();
        sub_1001729D8(v797, v38);
        v798 = sub_10002D480();
        v799 = ByteBuffer.writeBytes(_:)(v798);

        sub_100096480(v951);
        v66 = __OFADD__(v32, v799);
        v13 = (v32 + v799);
        if (v66)
        {
          goto LABEL_802;
        }

LABEL_656:
        v12 = v929;
LABEL_657:
        v11 = v13 + v928;
        if (__OFADD__(v928, v13))
        {
          goto LABEL_771;
        }

        v10 = v917;
        if (v12 != v919)
        {
          goto LABEL_3;
        }

LABEL_751:
        sub_100005460();
        return result;
      case 2:
        v128 = sub_1000190C0();
        sub_100163ABC(v128, v129);
        sub_100172FE0();
        ByteBuffer.writeAvroMap(_:)();
        v113 = v130;
        sub_100096480(v947);

        goto LABEL_82;
      case 3:
        v982 = *v947;
        v131 = sub_1000190C0();
        sub_100163ABC(v131, v132);
        v119 = ByteBuffer.writeAvroRecord(_:)(&v982);
        goto LABEL_81;
      case 4:
        sub_100172DCC(v950);
        sub_10001ACCC();
        sub_100163ABC(v947, v949);
        sub_100172ED8();
        sub_1001706E8(v113);
        sub_10000F300();
        if (v120)
        {
          sub_10000B170();
          Data._Representation.append(contentsOf:)();
        }

        v121 = sub_100167778(v29);

        v122 = v950[1];
        v29 = v950[2];
        v123 = *&v950[3];
        switch(LOBYTE(v950[9]))
        {
          case 1:
            v157 = sub_100005700();
            sub_100163ABC(v157, v949);
            sub_100172FE0();
            ByteBuffer.writeAvroArray(_:)();
            goto LABEL_97;
          case 2:
            v153 = sub_100005700();
            sub_100163ABC(v153, v949);
            sub_100172FE0();
            ByteBuffer.writeAvroMap(_:)();
LABEL_97:
            sub_100172DE4();
            sub_100096480(v947);

            goto LABEL_98;
          case 3:
            v983.schema.type._countAndFlagsBits = v950[1];
            v983.schema.type._object = v950[2];
            v983.schema.name = *&v950[3];
            v29 = v38;
            v154 = sub_100007E7C();
            v156 = sub_10001BCC8(&v983, v154, v155);
            sub_100163ABC(v156, v949);
            v122 = v941;
            ByteBuffer.writeAvroRecord(_:)(&v983);
            sub_100172DE4();
            sub_100096480(v947);
            v127 = v38 + 8;
            goto LABEL_95;
          case 4:
            v29 = v38;
            sub_100172D18();
            sub_100005B10();
            sub_100163ABC(&v950[1], v948);
            sub_100173010();
            v150._rawValue = sub_1001706E8(v122);
            v151 = sub_100172F98(v150);

            sub_100172EF0(v984, v949);
            ByteBuffer.writeAvroValue(_:)(v984);
            v152 = sub_10000AFB8();
            sub_100163B74(v152);
            sub_100163B74(v950);
            sub_100096480(v947);
            sub_100096480(&v950[1]);
            sub_100096480(v947);
            v66 = __OFADD__(v151, v122);
            v122 += v151;
            if (v66)
            {
              goto LABEL_826;
            }

            v32 = v922;
            v133 = v938;
            break;
          default:
            v124 = sub_100005700();
            sub_100163ABC(v124, v949);
            v125 = sub_1000385F0();
            v122 = v941;
            ByteBuffer.writeAvroPrimitive(_:)(v125, v126, v123, SBYTE8(v123));
            sub_100172DE4();
            sub_100096480(v947);
            v127 = sub_100005700();
LABEL_95:
            sub_100096480(v127);
LABEL_98:
            sub_100096480(v947);
            v32 = v922;
            v133 = v938;
            break;
        }

        v66 = __OFADD__(v121, v122);
        v113 = v121 + v122;
        if (!v66)
        {
          goto LABEL_100;
        }

        goto LABEL_812;
      default:
        v117 = sub_1000190C0();
        sub_100163ABC(v117, v118);
        v119 = ByteBuffer.writeAvroPrimitive(_:)(v113, v114, v115, v116);
LABEL_81:
        v113 = v119;
        sub_100096480(v947);
        sub_100096480(v947);
LABEL_82:
        v32 = v922;
        v133 = v938;
        goto LABEL_100;
    }
  }
}

Swift::Int ByteBuffer.writeAvroUnion(_:)(uint64_t a1)
{
  v3 = sub_100173028(*(a1 + 80));
  ByteBuffer.writeBytes(_:)(v3);
  sub_100172F08();
  memcpy(__dst, (a1 + 8), 0x41uLL);
  v4 = ByteBuffer.writeAvroValue(_:)(__dst);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeAvroString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((a1._object & 0x1000000000000000) != 0)
  {
    v4 = String.UTF8View._foreignCount()();
  }

  else if ((a1._object & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v5 = sub_100173040(v4);
  ByteBuffer.writeBytes(_:)(v5);
  sub_100173314();
  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  v7 = ByteBuffer.writeString(_:)(v6);
  v8 = __OFADD__(v1, v7);
  result = v1 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100170344(uint64_t a1)
{
  v1 = sub_100173040(a1);
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroInt(_:)(Swift::Int32 a1)
{
  v1 = sub_1001705C0((2 * a1) ^ (a1 >> 31));
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

char *sub_1001704E8(char *result, unint64_t a2, uint64_t a3)
{
  v6 = (a2 >> 60) & 3;
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    v3 = a3;
    v7 = sub_100173210();
    v10 = sub_100164430(v7, v8, v9);
    v4 = sub_100173040(v10);
    v11 = ByteBuffer.writeBytes(_:)(v4);

    v12 = sub_100173210();
    v14 = ByteBuffer.writeImmutableBuffer(_:)(v12, v13);
    v15 = __OFADD__(v11, v14);
    v16 = (v11 + v14);
    if (!v15)
    {
      return v16;
    }

    __break(1u);
  }

  v17 = sub_1001706E8(2 * *(result + 2));
  ByteBuffer.writeBytes(_:)(v17);
  sub_100172F08();
  v18 = ByteBuffer.writeBytes(_:)(result);
  v15 = __OFADD__(v3, v18);
  v16 = (v3 + v18);
  if (!v15)
  {
    return v16;
  }

  __break(1u);
LABEL_9:
  sub_100173210();
  v19 = Data.count.getter();
  v20 = sub_100173040(v19);
  ByteBuffer.writeBytes(_:)(v20);
  sub_100173314();
  v21 = sub_100173210();
  v23 = ByteBuffer.writeData(_:)(v21, v22);
  v15 = __OFADD__(v4, v23);
  v16 = v4 + v23;
  if (v15)
  {
    __break(1u);
  }

  return v16;
}

void *sub_1001705C0(unsigned int a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v6 = a1;
    sub_10006C9F0(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v7;
    v8 = v7[2];
    do
    {
      v9 = v2[3];
      if (v8 >= v9 >> 1)
      {
        sub_10006C9F0(v9 > 1, v8 + 1, 1, v2);
        v2 = v12;
      }

      v10 = v1 | 0x80;
      v1 = (v6 >> 7) & 0x7F;
      v11 = v6 >> 14;
      v6 >>= 7;
      v2[2] = v8 + 1;
      *(v2 + v8++ + 32) = v10;
    }

    while (v11);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006C9F0(0, v2[2] + 1, 1, v2);
    v2 = v13;
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    sub_10006C9F0(v3 > 1, v4 + 1, 1, v2);
    v2 = v14;
  }

  v2[2] = v4 + 1;
  *(v2 + v4 + 32) = v1;
  return v2;
}

void *sub_1001706E8(unint64_t a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v6 = a1;
    sub_10006C9F0(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v7;
    v8 = v7[2];
    do
    {
      v9 = v2[3];
      if (v8 >= v9 >> 1)
      {
        sub_10006C9F0(v9 > 1, v8 + 1, 1, v2);
        v2 = v12;
      }

      v10 = v1 | 0x80;
      v1 = (v6 >> 7) & 0x7F;
      v11 = v6 >> 14;
      v6 >>= 7;
      v2[2] = v8 + 1;
      *(v2 + v8++ + 32) = v10;
    }

    while (v11);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006C9F0(0, v2[2] + 1, 1, v2);
    v2 = v13;
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    sub_10006C9F0(v3 > 1, v4 + 1, 1, v2);
    v2 = v14;
  }

  v2[2] = v4 + 1;
  *(v2 + v4 + 32) = v1;
  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroBytes(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_1001706E8(2 * *(a1._rawValue + 2));
  ByteBuffer.writeBytes(_:)(v3);
  sub_100172F08();
  v4 = ByteBuffer.writeBytes(_:)(a1);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_100164430(a1, a2, a3);
  v4 = sub_100173040(v3);
  v5 = ByteBuffer.writeBytes(_:)(v4);

  v6 = sub_10000F18C();
  v8 = ByteBuffer.writeImmutableBuffer(_:)(v6, v7);
  v9 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2)
{
  v5 = Data.count.getter();
  v6 = sub_100173040(v5);
  ByteBuffer.writeBytes(_:)(v6);
  sub_100173314();
  v7 = ByteBuffer.writeData(_:)(a1, a2);
  v8 = __OFADD__(v2, v7);
  result = v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

void *sub_100170930()
{
  v1 = *v0;
  v2 = v0[1];
  ByteBufferView.init(_:)(*v0, v2, v0[2], v25);
  v3 = v26;
  v4 = v27;
  v23 = v26 - v27;
  if (v26 != v27)
  {
    v22 = v0;
    v5 = v25[0];
    v6 = v25[1];
    v7 = v25[2];
    sub_100014924(v1, v2);
    v8 = 0;
    v24 = v7;
    v9 = v28;
    v10 = v28;
    v11 = v6 >> 62;
    v12 = v23;
    while (1)
    {
      if (v3 + v8 >= v4)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v3 < v7)
      {
        goto LABEL_25;
      }

      switch(v11)
      {
        case 1uLL:
          if (v5 >> 32 < v5)
          {
            goto LABEL_26;
          }

          v18 = __DataStorage._bytes.getter();
          if (!v18)
          {
            goto LABEL_17;
          }

          v19 = __DataStorage._offset.getter();
          if (__OFSUB__(v5, v19))
          {
            goto LABEL_28;
          }

          v18 += v5 - v19;
LABEL_17:
          __DataStorage._length.getter();
          v13 = *(v18 + v3 + v8);
LABEL_18:
          v11 = v6 >> 62;
          v7 = v24;
LABEL_19:
          if ((v13 & 0x80) == 0)
          {
            ByteBufferView.subscript.getter(v3, v3 + v8 + 1, v28);
            v20 = sub_10016795C(v28);
            sub_100168B48(v25);
            v22[2] = v3 + v8 + 1;
            return v20;
          }

          ++v8;
          ++v9;
          ++v10;
          if (!(v12 + v8))
          {
            goto LABEL_21;
          }

          break;
        case 2uLL:
          v14 = v4;
          v15 = *(v5 + 16);
          v16 = __DataStorage._bytes.getter();
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = __DataStorage._offset.getter();
          if (__OFSUB__(v15, v17))
          {
            goto LABEL_27;
          }

          v16 += v15 - v17;
LABEL_11:
          __DataStorage._length.getter();
          v13 = *(v16 + v3 + v8);
          v4 = v14;
          v12 = v23;
          goto LABEL_18;
        case 3uLL:
          *&v28[6] = 0;
          *v28 = 0;
          v13 = v10[v3];
          goto LABEL_19;
        default:
          *v28 = v5;
          *&v28[8] = v6;
          *&v28[12] = WORD2(v6);
          v13 = v9[v3];
          goto LABEL_19;
      }
    }
  }

  sub_100014924(v1, v2);
LABEL_21:
  sub_100168B48(v25);
  return 0;
}

uint64_t sub_100170B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 31;
    do
    {
      v4 = *(v3 + v1) & 0x7F | (v2 << 7);
      v2 = *(v3 + v1--) & 0x7F | (v2 << 7);
    }

    while (v1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_100170BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 31 + v1) & 0x7F | (v2 << 7);
      v2 = v3;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *ByteBuffer.readAvroValue(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      sub_10017327C();

      sub_100173168();
      ByteBuffer.readAvroArray(_:)();
      goto LABEL_7;
    case 2uLL:
      sub_10017327C();

      v4 = sub_100173168();
      ByteBuffer.readAvroMap(_:)(v4, v5, v6, v7);
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10[1] = v8;
      v10[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1000967A0(v10, __src);
      ByteBuffer.readAvroRecord(_:)();
      sub_100161354(v10);
      return memcpy(a2, __src, 0x41uLL);
    case 4uLL:

      ByteBuffer.readAvroUnion(_:)(v3, __src);
LABEL_8:

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(a1 + 16), __src);
      break;
  }

  return memcpy(a2, __src, 0x41uLL);
}

uint64_t ByteBuffer.readAvroPrimitive(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = result;
  v5 = 7;
  object = result;
  switch(result)
  {
    case 1:
      v7 = *(v2 + 16);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_39;
      }

      v9 = sub_100164C10(*v2, *(v2 + 8), v7, *(v2 + 16));
      object = 0;
      result = 0;
      v5 = 0;
      *(v2 + 16) = v8;
      countAndFlagsBits = v9 != 0;
      goto LABEL_25;
    case 2:
      v20 = sub_100170930();
      if (!v20)
      {
        goto LABEL_24;
      }

      if (v20[2] >= 6uLL)
      {
        goto LABEL_23;
      }

      v21 = sub_100170B9C(v20);
      object = 0;
      result = 0;
      countAndFlagsBits = -(v21 & 1) ^ (v21 >> 1);
      v5 = 1;
      goto LABEL_25;
    case 3:
      if (!sub_100170930())
      {
        goto LABEL_24;
      }

      sub_100172D34();
      if (v23)
      {
        goto LABEL_23;
      }

      sub_100170BEC(v22);
      result = sub_10002DF84();
      countAndFlagsBits = -(v24 & 1) ^ (v24 >> 1);
      v5 = 2;
      goto LABEL_25;
    case 4:
      v10 = *(v2 + 16);
      if (__OFADD__(v10, 4))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v11 = sub_100008380();
      sub_100014924(v11, v12);
      v13 = sub_10001AE8C();
      if ((sub_100164D3C(v13, v14, v15, v16, v17, v18, v19) & 0x100000000) != 0)
      {
        goto LABEL_24;
      }

      result = sub_10002DF84();
      *(v2 + 16) = v10 + 4;
      countAndFlagsBits = countAndFlagsBits;
      v5 = 3;
      goto LABEL_25;
    case 5:
      v28 = *(v2 + 16);
      if (__OFADD__(v28, 8))
      {
        goto LABEL_40;
      }

      v29 = sub_100008380();
      sub_100014924(v29, v30);
      v31 = sub_10001AE8C();
      sub_100164FB4(v31, v32, v33, v34, v35, v36, v37);
      if (v38)
      {
        goto LABEL_24;
      }

      result = sub_10002DF84();
      *(v2 + 16) = v28 + 8;
      v5 = 4;
      goto LABEL_25;
    case 6:
      if (!sub_100170930())
      {
        goto LABEL_24;
      }

      sub_100172D34();
      if (v23)
      {
        goto LABEL_23;
      }

      v40 = sub_100170BEC(v39);
      v41 = sub_100172D08(v40);
      v42 = ByteBuffer.readString(length:)(v41);
      if (v42.value._object)
      {
        countAndFlagsBits = v42.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      if (v42.value._object)
      {
        object = v42.value._object;
      }

      else
      {
        object = 0;
      }

      if (v42.value._object)
      {
        result = 0;
      }

      else
      {
        result = 255;
      }

      if (v42.value._object)
      {
        v5 = 5;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_25;
    case 7:
      if (!sub_100170930())
      {
        goto LABEL_24;
      }

      sub_100172D34();
      if (v23)
      {
LABEL_23:
      }

      else
      {
        v26 = sub_100170BEC(v25);
        v27 = sub_100172D08(v26);
        if (ByteBuffer.readBytes(length:)(v27))
        {
          result = sub_10002DF84();
          v5 = 6;
          goto LABEL_25;
        }
      }

LABEL_24:
      countAndFlagsBits = 0;
      object = 0;
      v5 = 0;
      result = 255;
LABEL_25:
      *a2 = countAndFlagsBits;
      *(a2 + 8) = object;
      *(a2 + 16) = 0;
      *(a2 + 24) = v5;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = result;
      return result;
    default:
      goto LABEL_25;
  }
}

void ByteBuffer.readAvroArray(_:)()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (!sub_100170930())
  {
    goto LABEL_68;
  }

  sub_100172D34();
  if (v10)
  {
LABEL_67:

LABEL_68:
    v6 = 0;
    v4 = 0;
    v2 = 0;
    v14 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v19 = -1;
    goto LABEL_69;
  }

  v11 = sub_100170BEC(v9);
  if (v11)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
  }

  v12 = -(v11 & 1);
  v13 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 >> 1 == v12)
  {

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v20 = v12 ^ (v11 >> 1);

  v21 = 0;
  v14 = _swiftEmptyArrayStorage;
  v81 = v2 >> 61;
  v82 = v0;
  v83 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v80 = v20;
  v75 = v4;
  v76 = v8;
  v73 = v2;
  v74 = v6;
LABEL_10:
  if (v21 >= v20)
  {
    goto LABEL_81;
  }

  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    goto LABEL_82;
  }

  v84 = v23;
  switch(v81)
  {
    case 1uLL:
      sub_10017321C();

      sub_100173188();
      ByteBuffer.readAvroArray(_:)();
      v85 = v97[0];
      v87 = v97[1];
      v88 = v97[3];
      v90 = v97[2];
      v24 = v98;
      goto LABEL_19;
    case 2uLL:
      sub_10017321C();

      v30 = sub_100173188();
      ByteBuffer.readAvroMap(_:)(v30, v31, v32, v33);
      v85 = v99;
      v87 = v100;
      v88 = v102;
      v90 = v101;
      v24 = v103;
LABEL_19:
      v13 = v83;

      v0 = v82;

      goto LABEL_20;
    case 3uLL:
      v34 = *(v13 + 32);
      v114[0] = *(v13 + 16);
      v114[1] = v34;
      v114[2] = *(v13 + 48);
      v115 = *(v13 + 64);
      sub_1000967A0(v114, v93);
      ByteBuffer.readAvroRecord(_:)();
      v85 = v104[0];
      v87 = v104[1];
      v88 = v104[3];
      v90 = v104[2];
      v24 = v105;
      sub_100161354(v114);
      goto LABEL_20;
    case 4uLL:
      v79 = *(v13 + 16);
      v25 = *v0;
      v26 = *(v0 + 2);
      v27 = *(v0 + 1);
      v28 = v27 >> 62;
      v29 = 0;
      v78 = v25;
      switch(v27 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(DWORD1(v25), v25))
          {
            goto LABEL_92;
          }

          v42 = DWORD1(v25) - v25;
          sub_100014924(v25, v27);
          v29 = v42;
          *&v25 = v78;
          break;
        case 2uLL:
          v44 = *(v25 + 16);
          v43 = *(v25 + 24);
          v45 = v43 - v44;
          if (__OFSUB__(v43, v44))
          {
            goto LABEL_93;
          }

          sub_100014924(v25, v27);
          *&v25 = v78;
          v29 = v45;
          break;
        case 3uLL:
          break;
        default:
          v29 = BYTE6(v27);
          break;
      }

      if (v29 < v26)
      {
        goto LABEL_87;
      }

      if (v26 < 0)
      {
        goto LABEL_88;
      }

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(v2 + 16), v95);
      v85 = v95[0];
      v87 = v95[1];
      v88 = v95[3];
      v90 = v95[2];
      v24 = v96;
LABEL_20:
      if (v24 != 255)
      {
        goto LABEL_21;
      }

      goto LABEL_72;
  }

  v46 = 0;
  switch(v28)
  {
    case 1:
      LODWORD(v46) = DWORD1(v25) - v25;
      if (__OFSUB__(DWORD1(v25), v25))
      {
        goto LABEL_94;
      }

      v46 = v46;
LABEL_38:
      v77 = v14;
      if (v46 < v29)
      {
        goto LABEL_89;
      }

      v49 = v26 - v29;
      if (v26 == v29)
      {
        sub_100014A40(v25, v27);

        goto LABEL_70;
      }

      v50 = v25;
      v91 = v25;
      v86 = v25 >> 32;
      v89 = v29;

      v51 = v89;
      v52 = 0;
      break;
    case 2:
      v47 = *(v25 + 16);
      v48 = *(v25 + 24);
      v22 = __OFSUB__(v48, v47);
      v46 = v48 - v47;
      if (!v22)
      {
        goto LABEL_38;
      }

      goto LABEL_95;
    case 3:
      goto LABEL_38;
    default:
      v46 = BYTE6(v27);
      goto LABEL_38;
  }

  while (2)
  {
    if (v26 + v52 >= v51)
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    switch(v28)
    {
      case 1:
        if (v86 < v91)
        {
          goto LABEL_83;
        }

        v59 = __DataStorage._bytes.getter();
        if (v59)
        {
          v55 = v59;
          v60 = __DataStorage._offset.getter();
          v57 = v91 - v60;
          if (__OFSUB__(v91, v60))
          {
            goto LABEL_85;
          }

LABEL_53:
          v61 = v57 + v55;
        }

        else
        {
LABEL_54:
          v61 = 0;
        }

        __DataStorage._length.getter();
        v58 = *(v61 + v26 + v52);
        v51 = v89;
LABEL_56:
        if (v58 < 0)
        {
          ++v52;
          if (!(v49 + v52))
          {
            sub_100014A40(v50, v27);

LABEL_70:

            v88 = 0u;
            v90 = 0u;
            v85 = 0u;
            v87 = 0u;
            v8 = v76;
            goto LABEL_79;
          }

          continue;
        }

        v62 = ByteBuffer.count.getter(v50, v27);
        v63 = v26 + v52;
        if (v62 <= v26 + v52)
        {
          goto LABEL_90;
        }

        v64 = v63 + 1;
        v116 = v78;
        v117 = vdupq_n_s64(v26);
        v118 = v63 + 1;
        v65 = sub_100172BD8(v52 + 1, 0);
        v66 = sub_10017249C(v93, (v65 + 4), v52 + 1) - 1;
        sub_100014A40(*&v93[0], *(&v93[0] + 1));
        v8 = v76;
        v14 = v77;
        v4 = v75;
        v6 = v74;
        if (v66 != v52)
        {
          goto LABEL_91;
        }

        *(v82 + 2) = v64;
        v2 = v73;
        if (v65[2] >= 0xBuLL)
        {

          goto LABEL_78;
        }

        v67 = sub_100170BEC(v65);
        if ((v67 & 1) != 0 || (v68 = -(v67 & 1) ^ (v67 >> 1), v68 >= *(v79 + 16)))
        {

LABEL_78:

          v88 = 0u;
          v90 = 0u;
          v85 = 0u;
          v87 = 0u;
LABEL_79:

          v4 = *(&v85 + 1);
          v6 = v85;
          v17 = v88;
          v14 = *(&v87 + 1);
          v2 = v87;
          v19 = -1;
          v16 = v90;
          goto LABEL_69;
        }

        v69 = *(v79 + 8 * v68 + 32);

        ByteBuffer.readAvroValue(_:)(v69, &v106);
        if (v110 == 255)
        {
          v88 = v109;
          v90 = v108;
          v85 = v106;
          v87 = v107;

LABEL_72:

          goto LABEL_79;
        }

        __src[0] = v106;
        __src[1] = v107;
        __src[2] = v108;
        __src[3] = v109;
        v113 = v110;

        sub_100173BDC(v111, __src, v70, v68);

        sub_100172EF0(v93, v111);
        sub_100163ABC(v93, v92);
        sub_100163B74(v111);
        v85 = v93[0];
        v87 = v93[1];
        v88 = v93[3];
        v90 = v93[2];
        LOBYTE(v24) = v94;
        v0 = v82;
        v13 = v83;
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000040F0();
          sub_1001722F8();
          v14 = v71;
        }

        v36 = v14[2];
        v35 = v14[3];
        v38 = v88;
        v37 = v90;
        v40 = v85;
        v39 = v87;
        if (v36 >= v35 >> 1)
        {
          sub_1000066A8(v35);
          sub_1001722F8();
          v40 = v85;
          v39 = v87;
          v38 = v88;
          v37 = v90;
          v14 = v72;
        }

        v14[2] = v36 + 1;
        v41 = &v14[9 * v36];
        *(v41 + 2) = v40;
        *(v41 + 3) = v39;
        *(v41 + 4) = v37;
        *(v41 + 5) = v38;
        *(v41 + 96) = v24;
        v20 = v80;
        v21 = v84;
        if (v84 != v80)
        {
          goto LABEL_10;
        }

LABEL_6:
        v15 = sub_100171FA4();
        if ((v18 & 1) != 0 || v15)
        {

          goto LABEL_67;
        }

        v19 = 1;
LABEL_69:
        *v8 = v6;
        *(v8 + 8) = v4;
        *(v8 + 16) = v2;
        *(v8 + 24) = v14;
        *(v8 + 32) = v16;
        *(v8 + 48) = v17;
        *(v8 + 64) = v19;
        sub_100005460();
        return;
      case 2:
        v53 = *(v50 + 16);
        v54 = __DataStorage._bytes.getter();
        if (!v54)
        {
          goto LABEL_54;
        }

        v55 = v54;
        v56 = __DataStorage._offset.getter();
        v57 = v53 - v56;
        if (!__OFSUB__(v53, v56))
        {
          goto LABEL_53;
        }

        goto LABEL_84;
      case 3:
        *(v93 + 6) = 0;
        *&v93[0] = 0;
        goto LABEL_49;
      default:
        LOBYTE(v93[0]) = v91;
        BYTE1(v93[0]) = BYTE1(v50);
        BYTE2(v93[0]) = BYTE2(v50);
        BYTE3(v93[0]) = BYTE3(v50);
        BYTE4(v93[0]) = BYTE4(v50);
        BYTE5(v93[0]) = BYTE5(v50);
        BYTE6(v93[0]) = BYTE6(v50);
        BYTE7(v93[0]) = HIBYTE(v50);
        WORD4(v93[0]) = v27;
        BYTE10(v93[0]) = BYTE2(v27);
        BYTE11(v93[0]) = BYTE3(v27);
        BYTE12(v93[0]) = BYTE4(v27);
        BYTE13(v93[0]) = BYTE5(v27);
LABEL_49:
        v58 = *(v93 + v26 + v52);
        goto LABEL_56;
    }
  }
}

uint64_t ByteBuffer.readAvroMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100170930();
  if (!result)
  {
    goto LABEL_30;
  }

  sub_100172D34();
  if (v10)
  {
    goto LABEL_29;
  }

  v11 = sub_100170BEC(v9);
  result = Dictionary.init(dictionaryLiteral:)();
  if (v11)
  {
    goto LABEL_34;
  }

  v12 = result;
  v30 = a2;
  v33 = -(v11 & 1) ^ (v11 >> 1);
  v13 = a3 & 0x1FFFFFFFFFFFFFFFLL;

  v14 = 0;
  v31 = a3;
  v32 = a3 >> 61;
  while (1)
  {
    if (v33 == v14)
    {
      result = sub_100171FA4();
      if ((v26 & 1) == 0 && !result)
      {
        v27 = 2;
        v29 = a1;
        v28 = v30;
        goto LABEL_31;
      }

LABEL_25:

LABEL_27:

      goto LABEL_29;
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v15 = sub_100170930();
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    sub_100172D34();
    if (v10)
    {

      goto LABEL_27;
    }

    v17 = sub_100170BEC(v16);
    v18 = sub_100172D08(v17);
    v19 = ByteBuffer.readString(length:)(v18);
    if (!v19.value._object)
    {
      goto LABEL_25;
    }

    switch(v32)
    {
      case 1uLL:

        ByteBuffer.readAvroArray(_:)();

        a3 = v31;
        goto LABEL_17;
      case 2uLL:
        v21 = *(v13 + 16);
        v22 = *(v13 + 24);
        v23 = *(v13 + 32);

        ByteBuffer.readAvroMap(_:)(v21, v22, v23, __src);
        a3 = v31;

        goto LABEL_17;
      case 3uLL:
        v24 = *(v13 + 32);
        v38[0] = *(v13 + 16);
        v38[1] = v24;
        v38[2] = *(v13 + 48);
        v39 = *(v13 + 64);
        sub_1000967A0(v38, __src);
        ByteBuffer.readAvroRecord(_:)();
        sub_100161354(v38);
        goto LABEL_18;
      case 4uLL:

        ByteBuffer.readAvroUnion(_:)(v20, __src);
LABEL_17:

LABEL_18:
        memcpy(__dst, __src, sizeof(__dst));
        break;
      default:
        ByteBuffer.readAvroPrimitive(_:)(*(a3 + 16), __dst);
        break;
    }

    if (__dst[64] == 255)
    {
      break;
    }

    v36[0] = *__dst;
    v36[1] = *&__dst[16];
    v36[2] = *&__dst[32];
    v36[3] = *&__dst[48];
    v37 = __dst[64];
    if ((sub_10015B364(v36, a3) & 1) == 0)
    {

      AvroValue.schema.getter();
      sub_100172C40(__dst);

      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v12;
    sub_100172A20(v36, v19.value._countAndFlagsBits, v19.value._object, isUniquelyReferenced_nonNull_native);

    v12 = __src[0];
    ++v14;
  }

LABEL_29:

LABEL_30:
  v29 = 0;
  v28 = 0;
  a3 = 0;
  v12 = 0;
  v27 = -1;
LABEL_31:
  *a4 = v29;
  *(a4 + 8) = v28;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = v27;
  return result;
}

void ByteBuffer.readAvroRecord(_:)()
{
  sub_100005478();
  v33 = v0;
  v2 = v1;
  v31 = v3;
  sub_1000967A0(v1, v38);
  AvroRecord.init(schema:)(&v37, v2);
  rawValue = v2->fields._rawValue;
  v5 = rawValue[2];
  if (v5)
  {
    v6 = rawValue + 6;
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v10 = *v6;
      v6 += 3;
      v9 = v10;
      switch(v10 >> 61)
      {
        case 1uLL:
          sub_100173098();

          sub_100012FD4();
          ByteBuffer.readAvroArray(_:)();
          goto LABEL_9;
        case 2uLL:
          sub_100173098();

          v13 = sub_100012FD4();
          ByteBuffer.readAvroMap(_:)(v13, v14, v15, v16);
LABEL_9:

          v8 = v32;
          goto LABEL_10;
        case 3uLL:
          v17 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v40[0] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v40[1] = v17;
          v40[2] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v41 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

          sub_1000967A0(v40, __src);
          ByteBuffer.readAvroRecord(_:)();
          sub_100161354(v40);
          break;
        case 4uLL:

          ByteBuffer.readAvroUnion(_:)(v12, __src);
LABEL_10:

          break;
        default:
          v11 = *(v9 + 16);

          ByteBuffer.readAvroPrimitive(_:)(v11, __src);
          break;
      }

      v18 = memcpy(__dst, __src, 0x41uLL);
      if (LOBYTE(__dst[4]) == 255)
      {
        break;
      }

      v38[0] = __dst[0];
      v38[1] = __dst[1];
      v38[2] = __dst[2];
      v38[3] = __dst[3];
      v39 = __dst[4];
      AvroRecord.set(_:forField:)(v38, v8, v7);
      sub_100172C40(__dst);

      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    sub_100173058(v18, v19, v20, v21, v22, v23, v24, v25, v31, v32, v33, v34, __src[0], __src[1], __src[2], __src[3]);

    type = __dst[0];
    name = __dst[1];
    v29 = __dst[2];
    v30 = __dst[3];
    v28 = __dst[4];
  }

  else
  {
LABEL_13:
    type = v37.schema.type;
    name = v37.schema.name;
    v28 = 3;
    v29 = v37.schema.namespace;
    v30 = *&v37.schema.fields._rawValue;
  }

  *v31 = type;
  *(v31 + 16) = name;
  *(v31 + 32) = v29;
  *(v31 + 48) = v30;
  *(v31 + 64) = v28;
  sub_100005460();
}

void ByteBuffer.readAvroUnion(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_100170930())
  {
    sub_100172F60();
    goto LABEL_7;
  }

  sub_100172D34();
  if (v5)
  {

LABEL_5:
    sub_100172F60();
    v10 = 0uLL;
    goto LABEL_7;
  }

  v11 = sub_100170BEC(v4);
  if (v11)
  {
    goto LABEL_5;
  }

  v12 = -(v11 & 1) ^ (v11 >> 1);
  if (v12 >= *(a1 + 16))
  {
    goto LABEL_5;
  }

  v13 = *(a1 + 8 * v12 + 32);

  ByteBuffer.readAvroValue(_:)(v13, &v21);
  if (v25 == 255)
  {
    v17 = v23;
    v18 = v24;
    v15 = v21;
    v16 = v22;

    v8 = v17;
    v9 = v18;
    v10 = v15;
    v7 = v16;
    v6 = -1;
  }

  else
  {
    __src[0] = v21;
    __src[1] = v22;
    __src[2] = v23;
    __src[3] = v24;
    v29 = v25;

    sub_100173BDC(&v26, __src, v14, v12);

    memcpy(__dst, v27, 0x41uLL);
    sub_100163ABC(__dst, v19);
    sub_100163B74(&v26);
    v10 = __dst[0];
    v7 = __dst[1];
    v8 = __dst[2];
    v9 = __dst[3];
    v6 = __dst[4];
  }

LABEL_7:
  *a2 = v10;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v6;
}

void *sub_100171FA4()
{
  result = sub_100170930();
  if (result)
  {
    sub_100172D34();
    if (v2)
    {

      return 0;
    }

    else
    {
      v3 = sub_100170BEC(v1);
      return sub_100172D08(v3);
    }
  }

  return result;
}

uint64_t sub_100171FE4(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  _StringGuts.grow(_:)(82);
  v4._object = 0x80000001001B3890;
  v4._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x646C656946;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x756F662074756220;
  v6._object = 0xEB0000000020646ELL;
  String.append(_:)(v6);
  swift_getObjectType();
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

void sub_100172134()
{
  sub_100005510();
  if (v3)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100046184(&qword_10021F828, &qword_1001A5950);
    v9 = swift_allocObject();
    sub_100008270(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v7] <= v11)
    {
      memmove(v11, v12, v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v7);
  }
}

void sub_100172208()
{
  sub_100005510();
  if (v3)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100046184(&qword_10021F830, &qword_1001A5958);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_10017313C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001722F8()
{
  sub_100005510();
  if (v3)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100046184(&qword_10021F840, &qword_1001A5968);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_10017313C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[72 * v7] <= v11)
    {
      memmove(v11, v12, 72 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1001723E8(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_100217C30, &qword_10019BF58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

char *sub_10017246C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[72 * a2] <= __dst)
  {
    return memmove(__dst, __src, 72 * a2);
  }

  return __src;
}

uint64_t sub_10017249C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[1];
  v25 = *v3;
  v7 = v3[2];
  if (!a2)
  {
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    v9 = v3[3];
    goto LABEL_28;
  }

  if (a3 < 0)
  {
    goto LABEL_35;
  }

  v21 = a1;
  v8 = 0;
  v20 = v4 - v5;
  v9 = v3[3];
  v10 = v6 >> 62;
  v23 = a2;
  v24 = a3;
  v22 = v3[2];
  while (2)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v4 == v9)
    {
      v9 = v4;
      a3 = v20;
      a1 = v21;
      break;
    }

    if (v9 >= v4)
    {
      goto LABEL_30;
    }

    if (v5 < v7)
    {
      goto LABEL_31;
    }

    switch(v10)
    {
      case 1uLL:
        if (v25 >> 32 < v25)
        {
          goto LABEL_32;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = __DataStorage._offset.getter();
        if (__OFSUB__(v25, v18))
        {
          goto LABEL_34;
        }

        v17 += v25 - v18;
LABEL_21:
        __DataStorage._length.getter();
        v16 = *(v17 + v9);
LABEL_22:
        a2 = v23;
        a3 = v24;
        v10 = v6 >> 62;
LABEL_23:
        *(a2 + v8++) = v16;
        ++v9;
        if (v11 != a3)
        {
          continue;
        }

        a1 = v21;
        break;
      case 2uLL:
        v12 = v5;
        v13 = *(v25 + 16);
        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v15))
        {
          goto LABEL_33;
        }

        v14 += v13 - v15;
LABEL_14:
        __DataStorage._length.getter();
        v16 = *(v14 + v9);
        v5 = v12;
        v7 = v22;
        goto LABEL_22;
      case 3uLL:
        memset(v26, 0, 14);
        goto LABEL_16;
      default:
        v26[0] = v25;
        LOWORD(v26[1]) = v6;
        BYTE2(v26[1]) = BYTE2(v6);
        BYTE3(v26[1]) = BYTE3(v6);
        BYTE4(v26[1]) = BYTE4(v6);
        BYTE5(v26[1]) = BYTE5(v6);
LABEL_16:
        v16 = *(v26 + v9);
        goto LABEL_23;
    }

    break;
  }

LABEL_28:
  *a1 = v25;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v9;
  return a3;
}

void *sub_100172760(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v22 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v16 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = v19;
      v11[1] = v20;
      v11[2] = v21;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v22;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100172934(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1001729D8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100172A20(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005B74(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100046184(&qword_10021F838, &qword_1001A5960);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100005B74(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  if (v17)
  {
    v20 = *(*v5 + 56) + 72 * v16;

    return sub_100172CA8(a1, v20);
  }

  else
  {
    v22 = sub_100007700();
    sub_10017C638(v22, v23, a3, a1, v24);
  }
}

void *sub_100172B5C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100172BD8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100172BD8(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_100216160, &qword_10019A598);
  v4 = swift_allocObject();
  sub_100008270(v4);
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_100172C40(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021F820, &qword_1001A5948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100172D18()
{

  return memcpy((v0 + 536), (v1 + 16), 0x58uLL);
}

uint64_t sub_100172D64()
{

  return sub_100163ABC(v0 + 536, v0 + 624);
}

uint64_t sub_100172D9C()
{

  return sub_100163ABC(v0 + 712, v0 + 624);
}

uint64_t sub_100172DB4()
{

  return sub_100163ABC(v0 + 432, v0 + 344);
}

void *sub_100172DCC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

uint64_t sub_100172DE4()
{

  return sub_100163B74(v0 + 624);
}

void sub_100172E08(uint64_t a1)
{

  sub_10006C9F0(a1, v2, 1, v1);
}

uint64_t sub_100172E30()
{
  v3 = *(v0 + 624);
  *(v3 + 16) = v1 + 1;
  *(v3 + 32 + v1) = 0;

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100172E5C(uint64_t a1)
{

  return String.data(using:allowLossyConversion:)();
}

uint64_t sub_100172E78@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return v2;
}

void *sub_100172E84(void *a1)
{

  return memcpy(a1, (v1 + 456), 0x41uLL);
}

uint64_t sub_100172EA0()
{

  return sub_100163ABC(v0 + 544, v0 + 448);
}

uint64_t sub_100172ED8()
{

  return sub_100163B18(v0 + 624, v0 + 536);
}

void *sub_100172EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (a2 + 8), 0x41uLL);
}

uint64_t sub_100172F08()
{
}

Swift::Int sub_100172F20(Swift::OpaquePointer a1)
{

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t sub_100172F38(uint64_t a1)
{

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100172F80()
{

  return Data.append(_:)();
}

Swift::Int sub_100172F98(Swift::OpaquePointer a1)
{

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t sub_100172FB0()
{

  return sub_100163ABC(v0 + 352, v0 + 264);
}

uint64_t sub_100173010()
{

  return sub_100163B18(v0 + 536, v0 + 448);
}

void *sub_100173028@<X0>(uint64_t a1@<X8>)
{

  return sub_1001706E8((2 * a1) ^ (a1 >> 63));
}

void *sub_100173040(uint64_t a1)
{
  v2 = (2 * a1) ^ (a1 >> 63);

  return sub_1001706E8(v2);
}

uint64_t sub_100173058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  v18 = v16[6];
  a13 = v16[5];
  a14 = v18;
  v19 = v16[8];
  a15 = v16[7];
  a16 = v19;

  return sub_1000967FC(&a13);
}

uint64_t sub_10017307C()
{

  return sub_100163ABC(v0 + 544, v0 + 360);
}

uint64_t sub_100173098()
{
}

uint64_t sub_1001730BC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1001730D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_100163ABC(v20, va);
}

uint64_t sub_1001730EC()
{
}

uint64_t sub_100173104(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10017311C()
{
  *(v0 + 16) = v2;
  result = v0 + 32;
  *(v0 + 32 + v3) = v1;
  return result;
}

uint64_t sub_10017313C(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10017321C()
{
}

Swift::Int sub_10017323C()
{
  *(v0._rawValue + 2) = v1;
  *(v0._rawValue + v2 + 32) = 0;

  return ByteBuffer.writeBytes(_:)(v0);
}

void *sub_10017325C@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 216), (v1 + v3 * a1), 0x41uLL);
}

uint64_t sub_10017327C()
{
}

uint64_t sub_10017329C()
{

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1001732B4()
{

  return sub_100172934(v0);
}

void *sub_1001732CC()
{

  return sub_1001705C0((2 * v0) ^ (v0 >> 31));
}

uint64_t sub_1001732E4()
{

  return sub_100163B18(v0 + 448, v0 + 360);
}

uint64_t sub_1001732FC()
{
}

uint64_t sub_100173314()
{
}

unint64_t AvroValue.schema.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 64))
  {
    case 1:
      sub_1000077D0();
      v19 = swift_allocObject();
      sub_10000E2AC(v19, v20, v21, v22, v23, v24, v25, v26, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_10000F94C(v32, &qword_10021F850, &qword_1001A59F0);
      v8 = v1 | 0x2000000000000000;
      break;
    case 2:
      sub_1000077D0();
      v9 = swift_allocObject();
      sub_10000E2AC(v9, v10, v11, v12, v13, v14, v15, v16, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_10000F94C(v32, &qword_10021F848, &qword_1001A59E8);
      v8 = v1 | 0x4000000000000000;
      break;
    case 3:
      *&v28 = *v0;
      *(&v28 + 1) = v2;
      *v29 = v3;
      v29[8] = v4;
      *&v29[9] = *(v0 + 25);
      *&v29[24] = *(v0 + 40);
      v17 = swift_allocObject();
      v18 = *v29;
      *(v17 + 16) = v28;
      *(v17 + 32) = v18;
      *(v17 + 48) = *&v29[16];
      *(v17 + 64) = *&v29[32];
      v8 = v17 | 0x6000000000000000;
      sub_1000967A0(&v28, v32);
      break;
    case 4:
      v6 = *(*v0 + 16);
      sub_1000068B4();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = v7 | 0x8000000000000000;

      break;
    default:
      v5 = 6;
      switch(*(v0 + 24))
      {
        case 1:
          sub_100096480(v0);
          v5 = 2;
          break;
        case 2:
          sub_100096480(v0);
          v5 = 3;
          break;
        case 3:
          sub_100096480(v0);
          v5 = 4;
          break;
        case 4:
          sub_100096480(v0);
          v5 = 5;
          break;
        case 5:
          break;
        case 6:
          v5 = 7;
          break;
        case 7:
          sub_100096480(v0);
          v5 = 0;
          break;
        default:
          sub_100096480(v0);
          v5 = 1;
          break;
      }

      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      break;
  }

  return v8;
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  sub_100024008(a1);
}

{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  sub_100024008(a1);
}

uint64_t AvroMap.init(schema:)()
{
  sub_10000705C();
  Dictionary.init(dictionaryLiteral:)();
  return v0;
}

void __swiftcall AvroRecord.init(schema:)(SwiftAvro::AvroRecord *__return_ptr retstr, SwiftAvro::AvroRecordSchema *schema)
{
  type = schema->type;
  name = schema->name;
  v12 = schema->namespace;
  rawValue = schema->fields._rawValue;
  v13 = rawValue;
  v4 = *(rawValue + 2);
  if (v4)
  {
    sub_1000967A0(schema, __src);
    sub_1001780C8(0, v4, 0);
    v6 = (rawValue + 48);
    do
    {
      v7 = *v6;

      sub_10015B47C(v7, __src);

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1001780C8((v8 > 1), v9 + 1, 1);
      }

      v6 += 3;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      memcpy(&_swiftEmptyArrayStorage[9 * v9 + 4], __src, 0x41uLL);
      --v4;
    }

    while (v4);
    sub_100161354(schema);
  }

  retstr->schema.type = type;
  retstr->schema.name = name;
  retstr->schema.namespace = v12;
  retstr->schema.fields._rawValue = v13;
  retstr->fields._rawValue = _swiftEmptyArrayStorage;
}

void AvroValue.init(_:)(_OWORD *a1@<X8>, _OWORD *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;
  sub_100024008(a1);
}

void *AvroValue.init(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_10001AEBC();
  v3 = swift_allocObject();
  result = sub_100017D10(v3);
  *a1 = v1;
  *(a1 + 64) = 4;
  return result;
}

uint64_t sub_100173770()
{

  return _swift_deallocObject(v0, 40, 7);
}

void static AvroValue.int(_:)(void *a1@<X8>, unsigned int a2@<W0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

void static AvroValue.float(_:)(void *a1@<X8>, unsigned int a2@<S0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

uint64_t static AvroValue.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 5;
  *(a3 + 64) = 0;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 6;
  *(a2 + 64) = 0;
}

void AvroRecord.set(_:forField:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = 0;
  v9 = *(v4 + 48);
  v10 = *(v9 + 16);
  v11 = (v9 + 40);
  for (i = -32; ; i -= 72)
  {
    if (v10 == v8)
    {
      v15 = sub_1001780E8();
      sub_100004248(&type metadata for InvalidFieldError, v15);
      *v16 = a2;
      v16[1] = a3;
      swift_willThrow();

      return;
    }

    if (*(v11 - 1) == a2 && *v11 == a3)
    {
      break;
    }

    sub_10000C91C();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      break;
    }

    ++v8;
    v11 += 3;
  }

  v14 = *(v4 + 56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001780A0();
    v14 = v17;
  }

  if (v8 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    AvroValue.update(_:)(a1);
    *(v4 + 56) = v14;
  }
}

double static AvroValue.record(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a1[3];
  v11 = a1[2];
  v12 = v4;
  sub_100163C2C(a1, &v8);
  v5 = v10;
  *a2 = v9;
  *(a2 + 16) = v5;
  result = *&v11;
  v7 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v7;
  *(a2 + 64) = 3;
  return result;
}

uint64_t sub_10017398C(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(v5 + 8 * v3);

    v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, a1);

    if (v7)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_100173A14(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = a3 - a2;
  if (a2)
  {
    while (1)
    {
      if (v5 == result)
      {
        return 0;
      }

      if (*(a2 + result) == a1)
      {
        return result;
      }

      if (v5 <= result)
      {
        break;
      }

      ++result;
    }

    __break(1u);
  }

  return result;
}

uint64_t AvroMap.set(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (sub_10015B364(a1, v7))
  {

    sub_100163ABC(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v3 + 24);
    sub_100172A20(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v13[0];
  }

  else
  {

    v10 = AvroValue.schema.getter();
    v11 = sub_10017813C();
    sub_100004248(&type metadata for SchemaMismatchError, v11);
    *v12 = v7;
    v12[1] = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100173B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 64) = a5;
}

uint64_t *sub_100173BDC@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X1>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  if (a4 < 0 || *(a3 + 16) <= a4)
  {
    sub_100006D34();
    _StringGuts.grow(_:)(134);
    v8._countAndFlagsBits = 0xD00000000000003CLL;
    v8._object = 0x80000001001B39A0;
    String.append(_:)(v8);

    sub_100006B0C();
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._object = 0x80000001001B39E0;
    v10._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v10);
    sub_100006B0C();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0xD000000000000026;
    v12._object = 0x80000001001B3A10;
    String.append(_:)(v12);
    v13 = sub_100178E98();
    sub_100004248(&type metadata for InternalError, v13);
    *v14 = v15;
    v14[1] = v16;
    swift_willThrow();
    return sub_100096480(__src);
  }

  else
  {
    *a1 = a3;
    result = memcpy(a1 + 1, __src, 0x41uLL);
    a1[10] = a4;
  }

  return result;
}

uint64_t SchemaMismatchError.expected.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SchemaMismatchError.actual.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SchemaMismatchError.description.getter(unint64_t a1, unint64_t a2)
{
  sub_100006D34();
  _StringGuts.grow(_:)(33);

  sub_1000066DC();
  sub_10000BF70();
  v4._countAndFlagsBits = AvroSchema.description.getter(a1);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F67207475622027;
  v5._object = 0xEB00000000272074;
  String.append(_:)(v5);
  v9._countAndFlagsBits = AvroSchema.description.getter(a2);
  sub_100014CD8(v9);

  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v8;
}

uint64_t static SchemaMismatchError.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4);
}

uint64_t SchemaMismatchError.hash(into:)(uint64_t a1, unint64_t a2)
{
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a2);
  v2 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v2, v3);
}

Swift::Int SchemaMismatchError.hashValue.getter()
{
  sub_10000AA8C();
  v2 = sub_100006A80(v1);
  v10 = sub_10001BDBC(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0]);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v10, v11);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v0);
  return Hasher._finalize()();
}

uint64_t InvalidFieldError.description.getter(uint64_t a1, void *a2)
{
  sub_100006D34();
  _StringGuts.grow(_:)(27);

  sub_1000066DC();
  sub_10000BF70();
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 39;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7;
}

uint64_t static InternalError.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100008C48(a1, a2, a3, a4);
  }
}

Swift::Int sub_1001740BC()
{
  sub_10000AA8C();
  v1 = sub_100006A80(v0);
  sub_10001BDBC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  switch(*(a1 + 64))
  {
    case 1:
      if (*(a2 + 64) != 1)
      {
        return 0;
      }

      v30 = *a2;
      v31 = a2[1];
      v32 = a2[3];
      v33 = v30 == v4 && v3 == v31;
      if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v34 = sub_100005FBC();
      if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v34, v35) & 1) == 0)
      {
        return 0;
      }

      v28 = v6 | (v7 << 8);
      v29 = v32;
      goto LABEL_31;
    case 2:
      if (*(a2 + 64) != 2)
      {
        return 0;
      }

      v21 = *a2;
      v22 = a2[1];
      v23 = a2[3];
      v24 = v21 == v4 && v3 == v22;
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v25 = sub_100005FBC();
      return (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v25, v26) & 1) != 0 && (sub_100175A24(v6 | (v7 << 8), v23) & 1) != 0;
    case 3:
      if (*(a2 + 64) == 3)
      {
        v27 = *(a2 + 1);
        v37[0] = *a2;
        v37[1] = v27;
        v37[2] = *(a2 + 2);
        *&v37[3] = a2[6];
        *&v36[0] = v4;
        *(&v36[0] + 1) = v3;
        *&v36[1] = v5;
        BYTE8(v36[1]) = v6;
        *(&v36[1] + 9) = v7;
        HIBYTE(v36[1]) = BYTE6(v7);
        *(&v36[1] + 13) = WORD2(v7);
        v36[2] = *(a1 + 2);
        *&v36[3] = a1[6];
        if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
        {
          v28 = sub_100006B0C();
LABEL_31:
          if (sub_10015D69C(v28, v29))
          {
            return 1;
          }
        }
      }

      return 0;
    case 4:
      memcpy(__dst, (v4 + 24), 0x41uLL);
      if (*(a2 + 64) != 4)
      {
        return 0;
      }

      v14 = *(v4 + 96);
      sub_1000079D0();
      memcpy(v15, v16, v17);
      sub_100163B18(v37, v36);
      v18 = sub_1000041F8();
      if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19))
      {
        memcpy(v36, v37 + 8, 0x41uLL);
        v20 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(__dst, v36);
        sub_100163B74(v37);
        if ((v20 & 1) != 0 && v14 == v38)
        {
          return 1;
        }
      }

      else
      {
        sub_100163B74(v37);
      }

      return 0;
    default:
      if (*(a2 + 64))
      {
        return 0;
      }

      v8 = a2[1];
      v9 = a2[2];
      v10 = *a2;
      v11 = *(a2 + 24);
      v12 = *a1;

      return _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v3, v5, v6, v10, v8, v9, v11);
  }
}

void _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  switch(*(v1 + 64))
  {
    case 1:
      Hasher._combine(_:)(1uLL);
      sub_10000E068();
      String.hash(into:)();
      v16 = sub_100007CD4();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v16, v17);
      goto LABEL_14;
    case 2:
      Hasher._combine(_:)(2uLL);
      sub_10000E068();
      String.hash(into:)();
      v11 = sub_100007CD4();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v11, v12);
      sub_10000AFC4();

      sub_10017831C(v13, v14);
      break;
    case 3:
      Hasher._combine(_:)(3uLL);
      sub_10000E068();
      String.hash(into:)();
      sub_100007CD4();
      String.hash(into:)();
      if (v2)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      sub_100162948(a1, v3);
LABEL_14:
      sub_10000AFC4();

      sub_100161940(v18, v19);
      break;
    case 4:
      memcpy(__dst, (*v1 + 16), 0x58uLL);
      Hasher._combine(_:)(4uLL);
      sub_100163B18(__dst, v21);
      v9 = sub_1000041F8();
      AvroUnionSchema.hash(into:)(v9, v10);
      memcpy(v21, &__dst[1], 0x41uLL);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
      Hasher._combine(_:)(__dst[10]);
      sub_100163B74(__dst);
      sub_10000AFC4();
      break;
    default:
      Hasher._combine(_:)(0);
      sub_10000E068();
      sub_10000AFC4();

      _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(v5, v6, v7);
      break;
  }
}

Swift::Int sub_1001745C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = Hasher.init(_seed:)();
  v13 = sub_10000F30C(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return Hasher._finalize()();
}

Swift::Int sub_100174658(uint64_t a1)
{
  sub_100006A80(a1);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001746B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t static AvroPrimitive.string(_:)()
{
  sub_10000AA8C();

  return sub_10000672C();
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a1 = a2;
  a1[1] = a3 | 0x1000000000000000;
  a1[2] = a4;
  sub_100006544(a1);
}

uint64_t static AvroPrimitive.bytes(_:)()
{
  sub_10000705C();
  sub_100014924(v1, v2);
  return v0;
}

{
  sub_10000AA8C();
  sub_100014924(v1, v2);
  return v0;
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3 | 0x2000000000000000;
  a1[2] = 0;
  sub_100006544(a1);
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 | 0x1000000000000000;
  result = sub_100014924(a1, a2);
  *a4 = a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = a3;
  *(a4 + 24) = 6;
  *(a4 + 64) = 0;
  return result;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 | 0x2000000000000000;
  result = sub_100014924(a1, a2);
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 6;
  *(a3 + 64) = 0;
  return result;
}

void static AvroValue.null.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100006544(a1);
}

uint64_t static AvroValue.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001AEBC();
  v5 = swift_allocObject();
  sub_100017D10(v5);
  result = sub_100163B18(a1, v7);
  *a2 = v2;
  *(a2 + 64) = 4;
  return result;
}

uint64_t AvroValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result & 1;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  return result;
}

void AvroValue.init(integerLiteral:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

void AvroValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100006544(a1);
}

void AvroValue.init(stringLiteral:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  sub_100006544(a1);
}

void AvroValue.init(arrayLiteral:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

uint64_t AvroValue.update(_:)(_BYTE *a1)
{
  v3 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  v5 = AvroValue.schema.getter();
  v6 = sub_10015B364(a1, v5);

  if (v6)
  {
    sub_100178F64(v88);
    if (v89 >= 4u)
    {
      memcpy(v87, (v88[0] + 16), sizeof(v87));
      memcpy(v86, (v88[0] + 16), sizeof(v86));
      sub_100178190(v88, &v75);
      sub_100163B18(v87, &v75);
      AvroUnion.update(_:)(a1);
      if (v2)
      {
        sub_100018A24(&v75, v12, v13, v14, v15, v16, v17, v18, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        sub_100163B74(&v75);
        return sub_1001781C8(v88);
      }

      else
      {
        sub_100178F64(&v55);
        sub_100096480(&v55);
        sub_100018A24(&v64, v19, v20, v21, v22, v23, v24, v25, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        sub_10001AEBC();
        v26 = swift_allocObject();
        sub_100018A24((v26 + 16), v27, v28, v29, v30, v31, v32, v33, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        sub_100018A24(&v75, v34, v35, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        sub_100163B18(&v64, &v44);
        sub_100163B74(&v75);
        result = sub_1001781C8(v88);
        *v3 = v26;
        v3[64] = 4;
      }
    }

    else
    {
      sub_100172CA8(a1, v1);
      return sub_100163ABC(a1, v87);
    }
  }

  else
  {
    sub_100178F64(v90);
    v8 = AvroValue.schema.getter();
    v9 = AvroValue.schema.getter();
    v10 = sub_10017813C();
    sub_100004248(&type metadata for SchemaMismatchError, v10);
    *v11 = v8;
    v11[1] = v9;
    return swift_willThrow();
  }

  return result;
}

void *AvroUnion.update(_:)(_BYTE *a1)
{
  v2 = v1;
  if (a1[64] == 4)
  {
    sub_1000079D0();
    memcpy(v4, v5, v6);
    sub_100163B18(__src, v22);
    v7 = sub_100006B0C();
    if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8))
    {
      memcpy(v22, v2, sizeof(v22));
      sub_100163B74(v22);
      return memcpy(v2, __src, 0x58uLL);
    }

    sub_100163B74(__src);
  }

  v10 = *v2;
  v11 = AvroValue.schema.getter();
  v12 = sub_10017398C(v11, v10);
  v14 = v13;

  if (v14)
  {
LABEL_10:
    sub_1000068B4();
    v17 = swift_allocObject();
    *(v17 + 16) = v10;
    v18 = v17 | 0x8000000000000000;

    v19 = AvroValue.schema.getter();
    v20 = sub_10017813C();
    sub_100004248(&type metadata for SchemaMismatchError, v20);
    *v21 = v18;
    v21[1] = v19;
    return swift_willThrow();
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v10 + 16))
  {
    v15 = *(v10 + 8 * v12 + 32);

    v16 = sub_10015B364(a1, v15);

    if (v16)
    {
      memcpy(__src, v2 + 1, 0x41uLL);
      sub_100163ABC(a1, v22);
      sub_100096480(__src);
      result = memcpy(v2 + 1, a1, 0x41uLL);
      v2[10] = v12;
      return result;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AvroValue.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v13 = *(v9 + 24);
  switch(*(v9 + 64))
  {
    case 1:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v20 = sub_10000ECA8();
      AvroArray.description.getter(v20, v21, v22, v13);
      goto LABEL_8;
    case 2:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v17 = sub_10000ECA8();
      AvroMap.description.getter(v17, v18, v19, v13);
LABEL_8:
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      return sub_100006B0C();
    case 3:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v11, v10, v12, v13, *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), v32, v33, v34);
      AvroRecord.description.getter();
      goto LABEL_6;
    case 4:
      memcpy(__dst, (v11 + 16), sizeof(__dst));
      sub_100163ABC(v9, &v24);
      sub_100163B18(__dst, &v24);
      AvroUnion.description.getter();
      sub_100163B74(__dst);
      goto LABEL_6;
    default:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      v14 = sub_10000ECA8();
      AvroPrimitive.description.getter(v14, v15, v16, v13);
LABEL_6:
      sub_100096480(v9);
      return sub_100006B0C();
  }
}

void AvroRecord.subscript.getter()
{
  sub_100007A1C();
  v3 = 0;
  v4 = *(v0 + 48);
  v5 = *(v4 + 16);
  v6 = (v4 + 40);
  for (i = 32; ; i += 72)
  {
    if (v5 == v3)
    {
      sub_100009A70();
LABEL_15:
      sub_10000570C(v20, v21, v22);
      return;
    }

    v8 = *(v6 - 1) == v2 && *v6 == v1;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v3;
    v6 += 3;
  }

  v9 = *(v0 + 56);
  if (v3 < *(v9 + 16))
  {
    memcpy(__dst, (v9 + i), 0x41uLL);
    if (LOBYTE(__dst[8]) == 4)
    {
      memcpy(v42, (__dst[0] + 24), 0x41uLL);
      sub_10000F720(v10, v11, v12, v13, v14, v15, v16, v17, v23, v25, v26, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5]);
    }

    else
    {
      v27 = *&__dst[3];
      v30 = *&__dst[1];
      v24 = *&__dst[5];
      v18 = __dst;
      v19 = v42;
    }

    sub_100163ABC(v18, v19);
    v22 = v24;
    v21 = v27;
    v20 = v30;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t static AvroRecord.__derived_struct_equals(_:_:)()
{
  sub_10000AA8C();
  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 56);
  v3 = *(v0 + 56);

  return sub_10015D69C(v2, v3);
}

void AvroRecord.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[5];
  v5 = v2[6];
  String.hash(into:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    sub_1000385F0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100162948(a1, v5);
  v6 = v2[7];

  sub_100161940(a1, v6);
}

Swift::Int AvroRecord.hashValue.getter(uint64_t a1)
{
  sub_100006A80(a1);
  v2 = *(v1 + 40);
  v3 = String.hash(into:)();
  sub_10001BDBC(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24[0]);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v11 = String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = sub_10000F30C(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  sub_100162948(v19, v20);
  sub_100161940(v24, *(v1 + 56));
  return Hasher._finalize()();
}

Swift::Int sub_100175320(uint64_t a1)
{
  Hasher.init(_seed:)();
  AvroRecord.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t AvroRecord.description.getter()
{
  _StringGuts.grow(_:)(34);

  sub_1000066DC();
  sub_10000BF70();
  v0._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v0);

  v1 = sub_10000470C();
  sub_100015BF0(v1);
  v4._countAndFlagsBits = AvroRecordSchema.description.getter();
  sub_100014CD8(v4);

  sub_100012FAC();
  return v3;
}

uint64_t AvroArray.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (sub_10015B364(a1, v4))
  {
    sub_10017291C();
    v5 = *(*(v1 + 24) + 16);
    sub_1001729C0(v5);
    v6 = *(v1 + 24);
    *(v6 + 16) = v5 + 1;
    sub_100178F64((v6 + 72 * v5 + 32));
    *(v2 + 24) = v6;
    return sub_100163ABC(a1, v11);
  }

  else
  {

    v8 = AvroValue.schema.getter();
    v9 = sub_10017813C();
    sub_100004248(&type metadata for SchemaMismatchError, v9);
    *v10 = v4;
    v10[1] = v8;
    return swift_willThrow();
  }
}

uint64_t AvroArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);

  Sequence.forEach(_:)();
  if (!v4)
  {
  }

  *(v3 + 24) = v5;
  return swift_willThrow();
}

unint64_t AvroArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = a2 + 72 * result;
  v7 = *(v4 + 32);
  v5 = v4 + 32;
  v6 = v7;
  v8 = *(v5 + 64);
  if (v8 == 4)
  {
    memmove(__dst, (v6 + 24), 0x41uLL);
  }

  else
  {
    __dst[0] = v6;
    v9 = *(v5 + 24);
    *&__dst[1] = *(v5 + 8);
    *&__dst[3] = v9;
    *&__dst[5] = *(v5 + 40);
    __dst[7] = *(v5 + 56);
    LOBYTE(__dst[8]) = v8;
  }

  sub_100163ABC(__dst, &v10);
  return memcpy(a3, __dst, 0x41uLL);
}

uint64_t AvroArray.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_100006D34();
  _StringGuts.grow(_:)(33);

  sub_1000066DC();
  sub_10000BF70();
  v7._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v7);

  v8 = sub_10000470C();
  sub_100015BF0(v8);
  v11._countAndFlagsBits = AvroArraySchema.description.getter(a1, a2, a3);
  sub_100014CD8(v11);

  sub_100012FAC();
  return v10;
}

uint64_t sub_100175818()
{
  sub_10000705C();

  return v0;
}

void AvroMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 16))
  {
    v7 = sub_100005B74(a1, a2);
    if (v8)
    {
      memcpy(__dst, (*(a6 + 56) + 72 * v7), 0x41uLL);
      if (LOBYTE(__dst[8]) == 4)
      {
        memcpy(v41, (__dst[0] + 24), 0x41uLL);
        sub_10000F720(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v25, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5]);
      }

      else
      {
        v26 = *&__dst[3];
        v29 = *&__dst[1];
        v23 = *&__dst[5];
        v17 = __dst;
        v18 = v41;
      }

      sub_100163ABC(v17, v18);
      v21 = v23;
      v20 = v26;
      v19 = v29;
    }

    else
    {
      sub_100009A70();
      v19 = 0uLL;
    }
  }

  else
  {
    sub_100009A70();
  }

  sub_10000570C(v19, v20, v21);
}

uint64_t sub_10017597C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  v11 = a1 == a5 && a2 == a6;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_10000672C();

  return a9(v12);
}

uint64_t sub_100175A24(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v392 = a1 + 64;
  sub_100004154();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v397 = v9;
  v402 = v4;
  v407 = v2;
  if (v7)
  {
LABEL_4:
    v10 = __clz(__rbit64(v7));
    v412 = (v7 - 1) & v7;
    goto LABEL_10;
  }

  while (2)
  {
    v11 = v3;
    do
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_334:

        goto LABEL_341;
      }

      if (v3 >= v9)
      {
        return 1;
      }

      v12 = *(v392 + 8 * v3);
      ++v11;
    }

    while (!v12);
    v10 = __clz(__rbit64(v12));
    v412 = (v12 - 1) & v12;
LABEL_10:
    v13 = v10 | (v3 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    memcpy(__dst, (*(v4 + 56) + 72 * v13), 0x41uLL);
    v440 = *&__dst[48];
    v453 = *&__dst[16];
    v417 = *&__dst[32];
    v427 = *__dst;
    v17 = __dst[64];

    sub_100163ABC(__dst, &v479);
    if (!v16)
    {
      return 1;
    }

    v492 = v427;
    v493 = v453;
    v494 = v417;
    v495 = v440;
    v496 = v17;
    v18 = sub_100005B74(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_331;
    }

    v21 = memcpy(v491, (*(v2 + 56) + 72 * v18), 0x41uLL);
    v29 = *v491;
    v28 = v491[1];
    v30 = v491[2];
    v31 = v491[4];
    v32 = v491[5];
    v33 = v491[2] >> 61;
    switch(LOBYTE(v491[8]))
    {
      case 1:
        if (v496 != 1)
        {
          goto LABEL_331;
        }

        *&v453 = v491[3];
        v68 = *(&v492 + 1);
        v67 = v492;
        v70 = *(&v493 + 1);
        v69 = v493;
        if (v491[0] != v492 || v491[1] != *(&v492 + 1))
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v72 = v69 >> 61;
        switch(v33)
        {
          case 1:
            v146 = v72 == 1;
            goto LABEL_157;
          case 2:
            v146 = v72 == 2;
LABEL_157:
            v2 = v407;
            if (!v146)
            {
              goto LABEL_331;
            }

            v163 = sub_100005B20();
            if (!v53 || v164 != v20)
            {
              v163 = sub_10000CD34(v163, v164, v165);
              if ((v163 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v172 = sub_100003F2C(v163, v164, v165, v166, v167, v168, v169, v170, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v172, v173);

            LOBYTE(v18) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30);

            goto LABEL_165;
          case 3:
            if (v72 != 3)
            {
              goto LABEL_331;
            }

            *&v440 = v70;
            v147 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v148 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v149 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v150 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v151 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            *&v417 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            *&v427 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v152 = v69 & 0x1FFFFFFFFFFFFFFFLL;
            v153 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v154 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v156 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v155 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v157 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v158 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            v159 = *(v152 + 64);
            if (v147 != v153 || v148 != v154)
            {
              v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((v147 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v149 != v156 || v150 != v155)
            {
              sub_10000C91C();
              v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((v147 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v151)
            {
              if (!v158)
              {
                goto LABEL_331;
              }

              v147 = v417;
              if (v417 != v157 || v151 != v158)
              {
                v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
                if ((v147 & 1) == 0)
                {
                  goto LABEL_331;
                }
              }
            }

            else if (v158)
            {
              goto LABEL_331;
            }

            v214 = sub_100003F2C(v147, v148, v153, v68, v24, v25, v26, v27, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v214, v215);

            LOBYTE(v18) = sub_10015EECC(v432, v159);

            v2 = v407;
            v70 = v445;
            if ((v18 & 1) == 0)
            {
              goto LABEL_341;
            }

LABEL_283:
            sub_10015D69C(v456, v70);
            sub_100178F58();
            sub_100096480(v298);
            sub_100096480(v491);
            if ((v18 & 1) == 0)
            {
              return 0;
            }

            break;
          case 4:
            v2 = v407;
            if (v72 != 4)
            {
              goto LABEL_331;
            }

            v125 = sub_100003F2C(v21, v28, v67, v68, v24, v25, v26, v27, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v125, v126);

            v127 = sub_1000041F8();
            LOBYTE(v18) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v127, v128);
            goto LABEL_165;
          default:
            v2 = v407;
            if (v72)
            {
              goto LABEL_331;
            }

            v73 = 1819047278;
            v74 = *(v30 + 16);
            v75 = 0xE400000000000000;
            v76 = 1819047278;
            switch(v74)
            {
              case 1:
                v75 = 0xE700000000000000;
                v76 = 0x6E61656C6F6F62;
                break;
              case 2:
                v75 = 0xE300000000000000;
                v76 = 7630441;
                break;
              case 3:
                v76 = 1735290732;
                break;
              case 4:
                v75 = 0xE500000000000000;
                v76 = 0x74616F6C66;
                break;
              case 5:
                v75 = 0xE600000000000000;
                v76 = 0x656C62756F64;
                break;
              case 6:
                v75 = 0xE600000000000000;
                v76 = 0x676E69727473;
                break;
              case 7:
                v75 = 0xE500000000000000;
                v76 = 0x7365747962;
                break;
              default:
                break;
            }

            v284 = 0xE400000000000000;
            switch(*(v69 + 16))
            {
              case 1:
                v284 = 0xE700000000000000;
                v73 = 0x6E61656C6F6F62;
                break;
              case 2:
                v284 = 0xE300000000000000;
                v73 = 7630441;
                break;
              case 3:
                v73 = 1735290732;
                break;
              case 4:
                v284 = 0xE500000000000000;
                v73 = 0x74616F6C66;
                break;
              case 5:
                v284 = 0xE600000000000000;
                v73 = 0x656C62756F64;
                break;
              case 6:
                v284 = 0xE600000000000000;
                v73 = 0x676E69727473;
                break;
              case 7:
                v284 = 0xE500000000000000;
                v73 = 0x7365747962;
                break;
              default:
                break;
            }

            if (v76 == v73 && v75 == v284)
            {
              v296 = sub_100003F2C(v76, v28, v73, v68, v24, v25, v26, v27, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v296, v297);
            }

            else
            {
              sub_10000C91C();
              v286 = _stringCompareWithSmolCheck(_:_:expecting:)();
              LOBYTE(v18) = v286;
              v294 = sub_100003F2C(v286, v287, v288, v289, v290, v291, v292, v293, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v294, v295);

LABEL_165:

              if ((v18 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

            goto LABEL_283;
        }

        goto LABEL_327;
      case 2:
        if (v496 != 2)
        {
          goto LABEL_331;
        }

        v49 = v491[3];
        v51 = *(&v492 + 1);
        v50 = v492;
        v52 = v493;
        v53 = v491[0] == v492 && v491[1] == *(&v492 + 1);
        if (!v53)
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v54 = v52 >> 61;
        switch(v33)
        {
          case 1:
            v124 = v54 == 1;
            goto LABEL_124;
          case 2:
            v124 = v54 == 2;
LABEL_124:
            v2 = v407;
            if (!v124)
            {
              goto LABEL_331;
            }

            v133 = sub_100005B20();
            if (!v53 || v134 != v20)
            {
              v133 = sub_10000CD34(v133, v134, v135);
              if ((v133 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v142 = sub_100003F2C(v133, v134, v135, v136, v137, v138, v139, v140, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v142, v143);

            LOBYTE(v18) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30);

            goto LABEL_132;
          case 3:
            v129 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v497 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v498 = v129;
            v499 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v500 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v2 = v407;
            if (v54 != 3)
            {
              goto LABEL_331;
            }

            v130 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v501[0] = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v501[1] = v130;
            v501[2] = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v502 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v131 = sub_100003F2C(v21, v28, v50, v51, v24, v25, v26, v27, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v131, v132);
            sub_1000967A0(v501, __dst);
            LOBYTE(v18) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
            sub_100161354(v501);
            if ((v18 & 1) == 0)
            {
              goto LABEL_341;
            }

            goto LABEL_133;
          case 4:
            v2 = v407;
            if (v54 != 4)
            {
              goto LABEL_331;
            }

            v120 = sub_100003F2C(v21, v28, v50, v51, v24, v25, v26, v27, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v120, v121);

            v122 = sub_1000041F8();
            LOBYTE(v18) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v122, v123);
            goto LABEL_132;
          default:
            v2 = v407;
            if (v54)
            {
              goto LABEL_331;
            }

            v55 = 1819047278;
            v56 = *(v30 + 16);
            v57 = 0xE400000000000000;
            switch(v56)
            {
              case 1:
                v57 = 0xE700000000000000;
                v55 = 0x6E61656C6F6F62;
                break;
              case 2:
                v57 = 0xE300000000000000;
                v55 = 7630441;
                break;
              case 3:
                v55 = 1735290732;
                break;
              case 4:
                v57 = 0xE500000000000000;
                v55 = 0x74616F6C66;
                break;
              case 5:
                v57 = 0xE600000000000000;
                v55 = 0x656C62756F64;
                break;
              case 6:
                v57 = 0xE600000000000000;
                v55 = 0x676E69727473;
                break;
              case 7:
                v57 = 0xE500000000000000;
                v55 = 0x7365747962;
                break;
              default:
                break;
            }

            v263 = sub_1001608C8(*(v52 + 16));
            if (v55 == v263 && v57 == v264)
            {
              v282 = sub_100003F2C(v263, v264, v265, v266, v267, v268, v269, v270, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v282, v283);
            }

            else
            {
              sub_1000385F0();
              sub_10000C91C();
              v272 = _stringCompareWithSmolCheck(_:_:expecting:)();
              LOBYTE(v18) = v272;
              v280 = sub_100003F2C(v272, v273, v274, v275, v276, v277, v278, v279, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v280, v281);

LABEL_132:

              if ((v18 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

LABEL_133:
            sub_100175A24(v49, *(&v52 + 1));
            sub_100178F58();
            sub_100096480(v144);
            v145 = v491;
            break;
        }

        goto LABEL_134;
      case 3:
        v382 = v491[7];
        if (v496 != 3)
        {
          goto LABEL_331;
        }

        *&v427 = v491[6];
        v58 = v491[3];
        v60 = *(&v492 + 1);
        v59 = v492;
        v62 = *(&v493 + 1);
        v61 = v493;
        v63 = v494;
        v376 = *(&v495 + 1);
        *&v417 = v495;
        if (v491[0] != v492 || v491[1] != *(&v492 + 1))
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v30 != v61 || v58 != v62)
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v32)
        {
          if (!*(&v63 + 1))
          {
            goto LABEL_331;
          }

          if (v31 != v63 || v32 != *(&v63 + 1))
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v21 & 1) == 0)
            {
              goto LABEL_331;
            }
          }
        }

        else if (*(&v63 + 1))
        {
          goto LABEL_331;
        }

        v77 = v427;
        v78 = *(v427 + 16);
        v79 = v417;
        if (v78 != *(v417 + 16))
        {
          goto LABEL_331;
        }

        if (!v78 || v427 == v417)
        {
          v117 = sub_100003F2C(v21, v28, v59, v60, v24, v25, v26, v27, v362, v367, v376, v382, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_100163ABC(v117, v118);
LABEL_113:
          sub_10015D69C(v381, v375);
          sub_100178F58();
          sub_100096480(v119);
          sub_100096480(v491);
          v2 = v407;
          if ((v61 & 1) == 0)
          {
            return 0;
          }

LABEL_327:
          v4 = v402;
LABEL_328:
          v9 = v397;
          v7 = v412;
          if (v412)
          {
            goto LABEL_4;
          }

          continue;
        }

        result = static Optional<A>.sqlNullable.getter();
        if ((result & 1) == 0)
        {
          v358 = sub_100003F2C(result, v81, v82, v83, v84, v85, v86, v87, v362, v367, v376, v382, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_100163ABC(v358, v359);
          result = sub_100171FE4(0, v77);
          __break(1u);
          goto LABEL_345;
        }

        if (!*(v427 + 16))
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        v88 = *(v427 + 32);
        v89 = *(v427 + 40);
        v90 = *(v427 + 48);
        result = static Optional<A>.sqlNullable.getter();
        if ((result & 1) == 0)
        {
LABEL_346:
          v360 = sub_100003F2C(result, v81, v82, v83, v84, v85, v86, v87, v362, v367, v376, v382, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_100163ABC(v360, v361);

          result = sub_100171FE4(0, v79);
          __break(1u);
          goto LABEL_347;
        }

        if (!*(v417 + 16))
        {
LABEL_347:
          __break(1u);
          return result;
        }

        v91 = *(v417 + 32);
        v92 = *(v417 + 48);
        if (v88 != v91 || v89 != *(v417 + 40))
        {
          result = sub_10000CD34(v88, v89, v91);
          if ((result & 1) == 0)
          {
LABEL_331:
            v357 = &v492;
            goto LABEL_342;
          }
        }

        v94 = sub_100003F2C(result, v81, v91, v83, v84, v85, v86, v87, v362, v367, v376, v382, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
        sub_100163ABC(v94, v95);
        v387 = v78;
        v96 = (v429 + 72);
        v97 = (v79 + 72);
        v98 = 1;
        while (2)
        {

          v99 = v92 >> 61;
          v455 = v96;
          v442 = v97;
          switch(v90 >> 61)
          {
            case 1uLL:
              if (v99 == 1)
              {
                goto LABEL_94;
              }

              goto LABEL_332;
            case 2uLL:
              if (v99 != 2)
              {
                goto LABEL_332;
              }

LABEL_94:
              v61 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v110 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v111 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v112 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v113 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == v110 && *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == v111;
              if (!v113 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_334;
              }

              LOBYTE(v61) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v61, v112);

              goto LABEL_100;
            case 3uLL:
              v108 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v503 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v504 = v108;
              v505 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v506 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              if (v99 != 3)
              {
                goto LABEL_332;
              }

              v109 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v507[0] = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v507[1] = v109;
              v507[2] = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v508 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              sub_1000967A0(v507, __dst);
              LOBYTE(v61) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
              sub_100161354(v507);

              goto LABEL_100;
            case 4uLL:
              if (v99 != 4)
              {
                goto LABEL_332;
              }

              v106 = sub_100007CD4();
              LOBYTE(v61) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v106, v107);

LABEL_100:

              if (v61)
              {
                goto LABEL_101;
              }

              goto LABEL_341;
            default:
              if (v99)
              {
LABEL_332:

                goto LABEL_341;
              }

              v100 = *(v90 + 16);
              v101 = *(v92 + 16);
              v61 = sub_1001608C8(v100);
              v103 = v102;
              if (v61 == sub_1001608C8(v101) && v103 == v104)
              {
              }

              else
              {
                sub_10000C91C();
                LOBYTE(v61) = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v61 & 1) == 0)
                {
                  goto LABEL_341;
                }
              }

LABEL_101:
              if (v78 == v98)
              {
                goto LABEL_113;
              }

              if (v98 < v78)
              {
                if (v98 >= *(v429 + 16))
                {
                  goto LABEL_336;
                }

                if (v98 >= *(v418 + 16))
                {
                  goto LABEL_337;
                }

                v114 = *(v455 - 2);
                v90 = *v455;
                v115 = *(v442 - 2);
                v92 = *v442;
                v116 = v114 == v115 && *(v455 - 1) == *(v442 - 1);
                if (!v116 && (sub_10000CD34(v114, *(v455 - 1), v115) & 1) == 0)
                {
                  goto LABEL_341;
                }

                v96 = v455 + 3;
                v97 = v442 + 3;
                ++v98;
                continue;
              }

              __break(1u);
LABEL_336:
              __break(1u);
LABEL_337:
              __break(1u);
LABEL_338:
              sub_100163B74(&v476);
LABEL_339:
              sub_100163B74(&v479);
LABEL_340:
              sub_100163B74(__dst);
LABEL_341:
              sub_100096480(&v492);
              v357 = v491;
LABEL_342:
              sub_100096480(v357);
              return 0;
          }
        }

      case 4:
        if (v496 != 4)
        {
          goto LABEL_331;
        }

        v36 = *(v491[0] + 32);
        v37 = *(v491[0] + 40);
        v441 = *(v491[0] + 48);
        v428 = *(v491[0] + 56);
        v38 = *(v491[0] + 72);
        v39 = *(v491[0] + 80);
        v40 = *(v491[0] + 88);
        v454 = *(v491[0] + 96);
        v41 = *(v491[0] + 24);
        sub_1000079D0();
        memcpy(v42, v43, v44);
        sub_100163ABC(v491, &v479);
        sub_100163B18(__dst, &v479);
        v45 = sub_100007CD4();
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v45, v46) & 1) == 0)
        {
          goto LABEL_340;
        }

        switch(v40)
        {
          case 1:
            v2 = v407;
            if (v489 != 1)
            {
              goto LABEL_340;
            }

            v195 = *&__dst[24];
            v194 = *&__dst[32];
            if (*&v41 != *&__dst[8] || v36 != *&__dst[16])
            {
              sub_100005FBC();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v195) & 1) == 0)
            {
              goto LABEL_340;
            }

            v191 = sub_10015D69C(v441, v194);
            goto LABEL_192;
          case 2:
            v2 = v407;
            if (v489 != 2)
            {
              goto LABEL_340;
            }

            v189 = *&__dst[24];
            v188 = *&__dst[32];
            if (*&v41 != *&__dst[8] || v36 != *&__dst[16])
            {
              sub_100005FBC();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v189) & 1) == 0)
            {
              goto LABEL_340;
            }

            v191 = sub_100175A24(v441, v188);
            goto LABEL_192;
          case 3:
            v2 = v407;
            if (v489 != 3)
            {
              goto LABEL_340;
            }

            v192 = *&__dst[64];
            v509 = v41;
            v510 = v36;
            v511 = v37;
            v512 = v441;
            v513 = v428;
            v514 = v38;
            v515 = *&__dst[8];
            v516 = *&__dst[24];
            v517 = *&__dst[32];
            v518 = *&__dst[40];
            v519 = *&__dst[56];
            if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
            {
              goto LABEL_340;
            }

            v193 = sub_10015D69C(v39, v192);
            sub_100163B74(__dst);
            sub_100096480(&v492);
            sub_100096480(v491);
            if ((v193 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_305;
          case 4:
            if (v489 != 4)
            {
              goto LABEL_340;
            }

            v175 = *(*&v41 + 32);
            v174 = *(*&v41 + 40);
            v176 = *(*&v41 + 48);
            v430 = *(*&v41 + 56);
            v178 = *(*&v41 + 72);
            v177 = *(*&v41 + 80);
            v179 = *(*&v41 + 88);
            v443 = *(*&v41 + 96);
            v182 = *&v41 + 16;
            v180 = *(*&v41 + 16);
            v181 = *(v182 + 8);
            sub_1000079D0();
            memcpy(v183, v184, v185);
            v186 = v479;
            sub_100163B18(&v479, &v476);
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v180, v186))
            {
              switch(v179)
              {
                case 1:
                  if (v486 != 1)
                  {
                    goto LABEL_339;
                  }

                  v261 = v481;
                  v260 = v482;
                  v262 = v181 == v480 && v175 == *(&v480 + 1);
                  if (!v262 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v407;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v174, v261) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v257 = sub_10015D69C(v176, v260);
                  goto LABEL_247;
                case 2:
                  if (v486 != 2)
                  {
                    goto LABEL_339;
                  }

                  v255 = v481;
                  v254 = v482;
                  v256 = v181 == v480 && v175 == *(&v480 + 1);
                  if (!v256 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v407;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v174, v255) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v257 = sub_100175A24(v176, v254);
LABEL_247:
                  v187 = v257;
                  sub_100163B74(&v479);
                  sub_100163B74(__dst);
                  sub_100096480(&v492);
                  sub_100096480(v491);
                  goto LABEL_248;
                case 3:
                  if (v486 != 3)
                  {
                    goto LABEL_339;
                  }

                  v258 = v485;
                  v520 = v181;
                  v521 = v175;
                  v522 = v174;
                  v523 = v176;
                  v524 = v430;
                  v525 = v178;
                  v526 = v480;
                  v527 = v481;
                  v528 = v482;
                  v529 = v483;
                  v530 = v484;
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v259 = sub_10015D69C(v177, v258);
                  sub_100163B74(&v479);
                  sub_100163B74(__dst);
                  sub_100096480(&v492);
                  sub_100096480(v491);
                  v2 = v407;
                  if ((v259 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                case 4:
                  memcpy(v531, (v181 + 24), 0x41uLL);
                  if (v486 != 4)
                  {
                    goto LABEL_339;
                  }

                  v247 = *(v181 + 96);
                  sub_1000079D0();
                  memcpy(v248, v249, v250);
                  sub_100163B18(&v476, &v465);
                  v251 = sub_1000041F8();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v251, v252) & 1) == 0)
                  {
                    goto LABEL_338;
                  }

                  memcpy(v532, v477, 0x41uLL);
                  v253 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v531, v532);
                  sub_100163B74(&v476);
                  sub_100163B74(&v479);
                  sub_100163B74(__dst);
                  sub_100096480(&v492);
                  sub_100096480(v491);
                  v2 = v407;
                  if ((v253 & 1) == 0 || v247 != v478)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                default:
                  if (v486)
                  {
                    goto LABEL_339;
                  }

                  v187 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v181, v175, v174, v176, v480, *(&v480 + 1), v481, v482);
                  sub_100163B74(&v479);
                  sub_100163B74(__dst);
                  sub_100096480(&v492);
                  sub_100096480(v491);
                  v2 = v407;
LABEL_248:
                  if ((v187 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_249:
                  if (v443 != v487)
                  {
                    return 0;
                  }

                  goto LABEL_305;
              }
            }

            goto LABEL_339;
          default:
            v2 = v407;
            if (v489)
            {
              goto LABEL_340;
            }

            break;
        }

        v47 = *&__dst[8];
        v48 = __dst[32];
        switch(v441)
        {
          case 1:
            if (__dst[32] == 1)
            {
              goto LABEL_295;
            }

            goto LABEL_340;
          case 2:
            sub_100163B74(__dst);
            sub_100096480(&v492);
            sub_100096480(v491);
            if (v48 != 2)
            {
              return 0;
            }

            v299 = *&v41 == v47;
            goto LABEL_296;
          case 3:
            if (__dst[32] != 3)
            {
              goto LABEL_340;
            }

LABEL_295:
            sub_100163B74(__dst);
            sub_100096480(&v492);
            sub_100096480(v491);
            v299 = LODWORD(v41) == v47;
            goto LABEL_296;
          case 4:
            if (__dst[32] != 4)
            {
              goto LABEL_340;
            }

            sub_100163B74(__dst);
            sub_100096480(&v492);
            sub_100096480(v491);
            v299 = v41 == *&v47;
LABEL_296:
            if (!v299)
            {
              return 0;
            }

            goto LABEL_305;
          case 5:
            if (__dst[32] != 5)
            {
              goto LABEL_340;
            }

            if (*&v41 == *&__dst[8] && v36 == *&__dst[16])
            {
LABEL_304:
              sub_100163B74(__dst);
              sub_100096480(&v492);
              sub_100096480(v491);
            }

            else
            {
              sub_100005FBC();
              v191 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_192:
              v197 = v191;
              sub_100163B74(__dst);
              sub_100096480(&v492);
              sub_100096480(v491);
              if ((v197 & 1) == 0)
              {
                return 0;
              }
            }

LABEL_305:
            if (v454 != v490)
            {
              return 0;
            }

            break;
          case 6:
            if (__dst[32] != 6)
            {
              goto LABEL_340;
            }

            v301 = sub_100005FBC();
            v191 = sub_1001778CC(v301, v302, v303, v47, v304);
            goto LABEL_192;
          case 7:
            if (__dst[32] != 7 || *&__dst[8] | *&__dst[24] | *&__dst[16])
            {
              goto LABEL_340;
            }

            goto LABEL_304;
          default:
            sub_100163B74(__dst);
            sub_100096480(&v492);
            sub_100096480(v491);
            if (v48 || ((v47 ^ LOBYTE(v41)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_305;
        }

        goto LABEL_327;
      default:
        if (v496)
        {
          goto LABEL_331;
        }

        v34 = *(&v492 + 1);
        v35 = *&v492;
        LODWORD(v18) = BYTE8(v493);
        v2 = v407;
        switch(LOBYTE(v491[3]))
        {
          case 1:
            if (BYTE8(v493) == 1)
            {
              goto LABEL_199;
            }

            goto LABEL_331;
          case 2:
            sub_100096480(&v492);
            if (v18 != 2)
            {
              return 0;
            }

            v198 = *&v29 == *&v35;
            goto LABEL_325;
          case 3:
            if (BYTE8(v493) != 3)
            {
              goto LABEL_331;
            }

LABEL_199:
            sub_100096480(&v492);
            v198 = *&v29 == *&v35;
            goto LABEL_325;
          case 4:
            if (BYTE8(v493) != 4)
            {
              goto LABEL_331;
            }

            sub_100096480(&v492);
            v198 = v29 == v35;
            goto LABEL_325;
          case 5:
            if (BYTE8(v493) != 5)
            {
              goto LABEL_331;
            }

            if (v491[0] == v492 && v491[1] == *(&v492 + 1))
            {
LABEL_211:
              sub_100096480(&v492);
              v4 = v402;
              goto LABEL_328;
            }

            _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100178F58();
LABEL_134:
            sub_100096480(v145);
            if ((v18 & 1) == 0)
            {
              return 0;
            }

            break;
          case 6:
            if (BYTE8(v493) != 6)
            {
              goto LABEL_331;
            }

            if (((v491[1] >> 60) & 3) != 0)
            {
              v200 = v491[1] & 0xCFFFFFFFFFFFFFFFLL;
              v201 = sub_100003F2C(v21, v491[1], v22, v23, v24, v25, v26, v27, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v203 = sub_100163ABC(v201, v202);
              v211 = sub_100003F2C(v203, v204, v205, v206, v207, v208, v209, v210, v363, v368, v377, v383, v388, v393, v398, v403, v408, v413, v419, v423, v431, v436, v444, v449, v457, v461, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v211, v212);
              v213 = v369;
              goto LABEL_314;
            }

            v216 = sub_100046184(&qword_100217F20, &qword_1001A5520);
            v481 = v216;
            v482 = sub_100163BC8();
            v479 = *&v29;
            v217 = sub_100007534(&v479, v216);
            v225 = *(*v217 + 16);
            if (v225)
            {
              if (v225 <= 0xE)
              {
                v317 = sub_100003F2C(v217, v218, v219, v220, v221, v222, v223, v224, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                v319 = sub_100163ABC(v317, v318);
                v327 = sub_100003F2C(v319, v320, v321, v322, v323, v324, v325, v326, v366, v373, v380, v386, v391, v396, v401, v406, v411, v416, v422, v426, v435, v439, v448, v452, v460, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_100163ABC(v327, v328);
                v29 = COERCE_DOUBLE(Data.InlineData.init(_:)());
                v213 = v374 & 0xF00000000000000 | v329 & 0xFFFFFFFFFFFFFFLL;
                v200 = v213;
                goto LABEL_313;
              }

              type metadata accessor for __DataStorage();
              v226 = swift_allocObject();
              v234 = sub_100003F2C(v226, v227, v228, v229, v230, v231, v232, v233, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              if (v225 >= v236)
              {
                v330 = sub_100163ABC(v234, v235);
                v338 = sub_100003F2C(v330, v331, v332, v333, v334, v335, v336, v337, v364, v370, v378, v384, v389, v394, v399, v404, v409, v414, v420, v424, v433, v437, v446, v450, v458, v462, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_100163ABC(v338, v339);
                sub_100005FBC();
                v340 = __DataStorage.init(bytes:length:)();
                type metadata accessor for Data.RangeReference();
                v29 = COERCE_DOUBLE(swift_allocObject());
                *(*&v29 + 16) = 0;
                *(*&v29 + 24) = v225;
                v200 = v340 | 0x8000000000000000;
              }

              else
              {
                v237 = sub_100163ABC(v234, v235);
                v245 = sub_100003F2C(v237, v238, v239, v240, v241, v242, v243, v244, v364, v370, v378, v384, v389, v394, v399, v404, v409, v414, v420, v424, v433, v437, v446, v450, v458, v462, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_100163ABC(v245, v246);
                sub_100005FBC();
                *&v29 = v225 << 32;
                v200 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
              }
            }

            else
            {
              v305 = sub_100003F2C(v217, v218, v219, v220, v221, v222, v223, v224, v362, v367, v375, v381, v387, v392, v397, v402, v407, v412, v417, *(&v417 + 1), v427, *(&v427 + 1), v440, *(&v440 + 1), v453, *(&v453 + 1), v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v307 = sub_100163ABC(v305, v306);
              v315 = sub_100003F2C(v307, v308, v309, v310, v311, v312, v313, v314, v365, v372, v379, v385, v390, v395, v400, v405, v410, v415, v421, v425, v434, v438, v447, v451, v459, v463, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477[0], v477[1], v477[2], v477[3], v477[4], v477[5], v477[6], v477[7], v477[8], v478, v479, v480, *(&v480 + 1), v481, v482, v483, *(&v483 + 1), v484, v485, v486, v487, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v315, v316);
              v29 = 0.0;
              v200 = 0xC000000000000000;
            }

            v213 = v371;
LABEL_313:
            sub_100007378(&v479);
LABEL_314:
            v341 = Data.hashValue.getter();
            sub_100014A40(*&v29, v200);
            v367 = v213;
            if (((v34 >> 60) & 3) != 0)
            {
              v342 = v34 & 0xCFFFFFFFFFFFFFFFLL;
              v343 = sub_1000190CC();
              sub_100163ABC(v343, v344);
            }

            else
            {
              v345 = sub_100046184(&qword_100217F20, &qword_1001A5520);
              v481 = v345;
              v482 = sub_100163BC8();
              v479 = *&v35;
              v346 = *(*sub_100007534(&v479, v345) + 16);
              if (v346)
              {
                if (v346 <= 0xE)
                {
                  v352 = sub_1000190CC();
                  sub_100163ABC(v352, v353);
                  v35 = COERCE_DOUBLE(Data.InlineData.init(_:)());
                  v342 = v362 & 0xF00000000000000 | v354 & 0xFFFFFFFFFFFFFFLL;
                  v362 = v342;
                }

                else
                {
                  type metadata accessor for __DataStorage();
                  swift_allocObject();
                  v347 = sub_1000190CC();
                  if (v346 >= v349)
                  {
                    sub_100163ABC(v347, v348);
                    sub_1000385F0();
                    v355 = __DataStorage.init(bytes:length:)();
                    type metadata accessor for Data.RangeReference();
                    v35 = COERCE_DOUBLE(swift_allocObject());
                    *(*&v35 + 16) = 0;
                    *(*&v35 + 24) = v346;
                    v342 = v355 | 0x8000000000000000;
                  }

                  else
                  {
                    sub_100163ABC(v347, v348);
                    sub_1000385F0();
                    *&v35 = v346 << 32;
                    v342 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v350 = sub_1000190CC();
                sub_100163ABC(v350, v351);
                v35 = 0.0;
                v342 = 0xC000000000000000;
              }

              sub_100007378(&v479);
            }

            v356 = Data.hashValue.getter();
            sub_100014A40(*&v35, v342);
            sub_100096480(&v492);
            sub_100096480(v491);
            v198 = v341 == v356;
LABEL_325:
            if (!v198)
            {
              return 0;
            }

            goto LABEL_327;
          case 7:
            if (BYTE8(v493) != 7 || v492 | v493 | *(&v492 + 1))
            {
              goto LABEL_331;
            }

            goto LABEL_211;
          default:
            sub_100096480(&v492);
            if (v18 || ((LOBYTE(v35) ^ LOBYTE(v29)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_327;
        }

        goto LABEL_327;
    }
  }
}