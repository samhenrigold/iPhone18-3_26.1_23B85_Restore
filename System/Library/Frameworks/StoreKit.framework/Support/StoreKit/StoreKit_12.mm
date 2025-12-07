void sub_1001793D8()
{
  sub_100093D08();
  v3 = v2;
  v5 = v4;
  v170 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v6);
  sub_10017C8B0();
  __chkstk_darwin(v7);
  v171 = (&v151 - v8);
  v9 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v10 = sub_1000B01B0(v9);
  __chkstk_darwin(v10);
  sub_1001460C4();
  v163 = v11 - v12;
  v14 = __chkstk_darwin(v13);
  v16 = &v151 - v15;
  __chkstk_darwin(v14);
  v167 = &v151 - v17;
  v18 = type metadata accessor for URL();
  sub_1000890DC();
  object = v19;
  __chkstk_darwin(v21);
  sub_1001460C4();
  v161 = v22 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v151 - v26;
  __chkstk_darwin(v25);
  v162 = &v151 - v28;
  countAndFlagsBits = "SKExternalLinkAccount";
  if (v5)
  {
    if (v5 == 1)
    {
      v30 = 0xD000000000000015;
    }

    else
    {
      v30 = 0xD00000000000001BLL;
    }

    if (v5 == 1)
    {
      v31 = "] No valid URLs for ";
    }

    else
    {
      v31 = "nk configuration";
    }
  }

  else
  {
    v30 = 0xD000000000000016;
    v31 = "SKExternalLinkAccount";
  }

  sub_10017A330(v30, (v31 | 0x8000000000000000), &v175);

  if (!v176)
  {
    sub_1000AF25C(&v175, &unk_1003CCB70, &unk_1002ED050);
    goto LABEL_79;
  }

  v158 = v27;
  v32 = sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
  v33 = &type metadata for Any;
  if ((sub_10017CB88(v32, v34, v35, v32) & 1) == 0)
  {
    goto LABEL_79;
  }

  v160 = v16;
  v155 = "SKExternalLinkAccount";
  v165 = v0;
  v166 = v5;
  v152 = object;
  v168 = v18;
  v164 = v3;
  v154 = v1;
  v36 = *&v174[0];
  v37 = *&v174[0] + 64;
  v38 = 1 << *(*&v174[0] + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(*&v174[0] + 64);
  v41 = ((v38 + 63) >> 6);

  v42 = 0;
  v169 = v36;
  v159 = v41;
LABEL_14:
  if (v40)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v43 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v43);
    ++v42;
    if (v40)
    {
      v42 = v43;
LABEL_19:
      v40 &= v40 - 1;
      sub_10017CB5C();
      v44 = String.lowercased()();
      object = v44._object;

      v45 = sub_10017CB5C();
      v33 = sub_1000B6328(v45, v46);
      v48 = v47;

      if (v48)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v174[0] = v36;
        v50 = v36[3];
        sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v50);
        v51 = *&v174[0];

        sub_10008B5D0((*(v51 + 56) + 32 * v33), &v175);
        _NativeDictionary._delete(at:)();
        sub_10008B5D0(&v175, v174);
        countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
        v172 = v51;
        object = v44._countAndFlagsBits;
        v41 = v44._object;
        v52 = sub_1000B6328(v44._countAndFlagsBits, v44._object);
        v54 = v53;
        v55 = *(v51 + 16);
        v56 = (v53 & 1) == 0;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_98;
        }

        v33 = v52;
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(countAndFlagsBits, v55 + v56))
        {
          countAndFlagsBits = v44._countAndFlagsBits;
          object = v44._object;
          v57 = sub_1000B6328(v44._countAndFlagsBits, v44._object);
          if ((v54 & 1) != (v58 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v33 = v57;
        }

        else
        {
          countAndFlagsBits = v44._countAndFlagsBits;
          object = v44._object;
        }

        v41 = v159;
        if (v54)
        {

          v36 = v172;
          v63 = (*(v172 + 56) + 32 * v33);
          sub_100080F0C(v63);
          sub_10008B5D0(v174, v63);
          v33 = &type metadata for Any;
        }

        else
        {
          v36 = v172;
          *(v172 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          v64 = (v36[6] + 16 * v33);
          *v64 = countAndFlagsBits;
          v64[1] = object;
          sub_10008B5D0(v174, (v36[7] + 32 * v33));
          v65 = v36[2];
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_99;
          }

          v36[2] = v67;
          v33 = &type metadata for Any;
        }
      }

      else
      {
        countAndFlagsBits = sub_1000B6328(v44._countAndFlagsBits, v44._object);
        v60 = v59;

        if (v60)
        {
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v172 = v36;
          v62 = v36[3];
          sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v61, v62);
          v36 = v172;

          sub_10008B5D0((v36[7] + 32 * countAndFlagsBits), v174);
          v33 = &type metadata for Any;
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v174, 0, sizeof(v174));
          v33 = &type metadata for Any;
        }

        sub_1000AF25C(v174, &unk_1003CCB70, &unk_1002ED050);
      }

      goto LABEL_14;
    }
  }

  v69 = *(v164 + 16);
  v70 = &off_1003CB000;
  if (!v69)
  {
LABEL_59:
    LOBYTE(v40) = v166;
    countAndFlagsBits = v154;
    v41 = v165;
    object = 0xD000000000000015;
    if (v166 != 1)
    {
      goto LABEL_66;
    }

    sub_1001DA990(42, 0xE100000000000000, v36, &v175);
    if (v176)
    {
      if ((sub_10017CB88(v104, v105, v106, &type metadata for String) & 1) == 0)
      {
        goto LABEL_66;
      }

      v107 = v163;
      URL.init(string:)();
      v108 = v107;

      v109 = v168;
      if (sub_100081D0C(v107, 1, v168) != 1)
      {
        v147 = *(v152 + 4);
        v147(v161, v108, v109);
        v148 = sub_100080FB4(&qword_1003D0560, &unk_1002F6858);
        v149 = sub_10017CAA8(v148);
        v150 = sub_10017CB48(v149, xmmword_1002ED290);
        (v147)(v150);
        goto LABEL_95;
      }

      v110 = &unk_1003D0540;
      v111 = &unk_1002EDD50;
      v112 = v107;
    }

    else
    {
      v110 = &unk_1003CCB70;
      v111 = &unk_1002ED050;
      v112 = &v175;
    }

    sub_1000AF25C(v112, v110, v111);
LABEL_66:
    if (qword_1003CBE58 == -1)
    {
LABEL_67:
      v113 = sub_10007EDA4(v170, qword_1003F26C8);
      sub_10007EDDC(v113, countAndFlagsBits, v114);
      *&v175 = 0;
      *(&v175 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      *&v175 = 91;
      *(&v175 + 1) = 0xE100000000000000;
      *&v174[0] = sub_100213F6C(v41);
      *(&v174[0] + 1) = v115;
      v116 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
      v117._countAndFlagsBits = sub_10017CBD8(v116);
      String.append(_:)(v117);

      v118._countAndFlagsBits = (object - 1);
      v118._object = 0x800000010031AB90;
      String.append(_:)(v118);
      if (v40)
      {
        if (v40 == 1)
        {
          v119 = object;
        }

        else
        {
          v119 = object + 6;
        }

        if (v40 == 1)
        {
          v120 = "] No valid URLs for ";
        }

        else
        {
          v120 = "nk configuration";
        }
      }

      else
      {
        v119 = object + 1;
        v120 = v155;
      }

      v121 = v120 | 0x8000000000000000;
      String.append(_:)(*&v119);

      v122._countAndFlagsBits = 32;
      v122._object = 0xE100000000000000;
      String.append(_:)(v122);
      v123._countAndFlagsBits = Array.description.getter();
      v124 = v123._object;
      String.append(_:)(v123);

      v125 = v175;
      static os_log_type_t.default.getter();
      v126 = Logger.logObject.getter();
      if (sub_100098C50(v126))
      {
        sub_10008E688();
        v127 = sub_100093C08();
        *&v175 = v127;
        *countAndFlagsBits = 136446466;
        *(countAndFlagsBits + 4) = sub_100093CF0(v127, v128, &v175);
        *(countAndFlagsBits + 12) = 2082;
        sub_100080210(v125, *(&v125 + 1), &v175);
        sub_10017CBA8();
        *(countAndFlagsBits + 14) = v125;
        sub_10017C91C(&_mh_execute_header, v129, v130, "%{public}s%{public}s");
        sub_10017CAE8(v131, v132, v33 + 8);
        sub_1000AFF34();
        sub_100081C28(countAndFlagsBits);
      }

      else
      {
      }

      sub_100080130(countAndFlagsBits, v133, v134);

      goto LABEL_79;
    }

LABEL_100:
    sub_1000B7CD0();
    swift_once();
    goto LABEL_67;
  }

  v159 = "SKExternalPurchaseLink";
  v71 = (v164 + 40);
  *&v68 = 136446466;
  v153 = v68;
  v157 = "] No valid URLs for ";
  v156 = "nk configuration";
  v169 = v36;
  while (1)
  {
    v40 = *(v71 - 1);
    v72 = *v71;
    String.lowercased()();
    if (!v36[2] || (, v73 = sub_10017CB5C(), v75 = sub_1000B6328(v73, v74), v77 = v76, , (v77 & 1) == 0))
    {

      goto LABEL_50;
    }

    sub_100080F58(v36[7] + 32 * v75, &v175);
    sub_100080F58(&v175, v174);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v78 = v172;
    v79 = v173;
    v80 = v167;
    URL.init(string:)();
    if (sub_100081D0C(v80, 1, v168) != 1)
    {

      v135 = v80;
      v136 = *(v152 + 4);
      v136(v162, v135, v168);
      v137 = sub_100080FB4(&qword_1003D0560, &unk_1002F6858);
      v138 = sub_10017CAA8(v137);
      v139 = sub_10017CB48(v138, xmmword_1002ED290);
      (v136)(v139);
      goto LABEL_93;
    }

    sub_1000AF25C(v80, &unk_1003D0540, &unk_1002EDD50);
    if (v70[459] != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v81 = sub_10007EDA4(v170, qword_1003F26C8);
    sub_10007EDDC(v81, v171, v82);
    *&v174[0] = 0;
    *(&v174[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    *&v174[0] = 91;
    *(&v174[0] + 1) = 0xE100000000000000;
    v172 = sub_100213F6C(v165);
    v173 = v83;
    sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v84._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v84);

    sub_10009F134();
    if (v166)
    {
      if (v166 == 1)
      {
        v85 = 0xD000000000000015;
      }

      else
      {
        v85 = 0xD00000000000001BLL;
      }

      if (v166 == 1)
      {
        v86 = v157;
      }

      else
      {
        v86 = v156;
      }
    }

    else
    {
      v85 = 0xD000000000000016;
      v86 = v155;
    }

    v87 = v86 | 0x8000000000000000;
    String.append(_:)(*&v85);

    v88._countAndFlagsBits = 46;
    v88._object = 0xE100000000000000;
    String.append(_:)(v88);
    v89._countAndFlagsBits = v40;
    v89._object = v72;
    String.append(_:)(v89);

    v90._object = (v159 | 0x8000000000000000);
    v90._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v90);
    v91._countAndFlagsBits = v78;
    v91._object = v79;
    String.append(_:)(v91);

    v92 = v174[0];
    v93 = static os_log_type_t.error.getter();
    v94 = v171;
    v95 = Logger.logObject.getter();
    if (os_log_type_enabled(v95, v93))
    {
      v96 = sub_10008E688();
      v97 = swift_slowAlloc();
      *&v174[0] = v97;
      *v96 = v153;
      *(v96 + 4) = sub_100093CF0(v97, v98, v174);
      *(v96 + 12) = 2082;
      v99 = sub_100080210(v92, *(&v92 + 1), v174);

      *(v96 + 14) = v99;
      v70 = &off_1003CB000;
      _os_log_impl(&_mh_execute_header, v95, v93, "%{public}s%{public}s", v96, 0x16u);
      v33 = &type metadata for Any;
      swift_arrayDestroy();
      sub_100081C28(v97);
      sub_1000AFF34();

      sub_100080130(v94, v100, v101);
      sub_100080F0C(&v175);
    }

    else
    {

      sub_100080130(v94, v102, v103);
      sub_100080F0C(&v175);
      v33 = &type metadata for Any;
    }

    v36 = v169;
LABEL_50:
    v71 += 2;
    if (!--v69)
    {
      goto LABEL_59;
    }
  }

  sub_100080F58(&v175, v174);
  sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
  if (!swift_dynamicCast())
  {
    sub_100080F0C(&v175);
    goto LABEL_50;
  }

  countAndFlagsBits = 0;
  v140 = v172;
  v33 = *(v172 + 16);
  v171 = v152 + 32;
  v141 = v172 + 40;
  v142 = _swiftEmptyArrayStorage;
  object = &unk_1002EDD50;
  v170 = v172 + 40;
LABEL_82:
  v41 = (v141 + 16 * countAndFlagsBits);
  while (v33 != countAndFlagsBits)
  {
    if (countAndFlagsBits >= *(v140 + 16))
    {
      goto LABEL_97;
    }

    v40 = *(v41 - 1);

    v143 = v160;
    URL.init(string:)();

    if (sub_100081D0C(v143, 1, v168) != 1)
    {
      v40 = *v171;
      (*v171)(v158, v143, v168);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001D9BC0();
        v142 = v145;
      }

      v144 = v142[2];
      if (v144 >= v142[3] >> 1)
      {
        sub_1001D9BC0();
        v142 = v146;
      }

      ++countAndFlagsBits;
      v142[2] = v144 + 1;
      (v40)(v142 + ((v152[80] + 32) & ~v152[80]) + *(v152 + 9) * v144, v158, v168);
      v141 = v170;
      goto LABEL_82;
    }

    sub_1000AF25C(v143, &unk_1003D0540, &unk_1002EDD50);
    v41 += 16;
    ++countAndFlagsBits;
  }

LABEL_93:
  sub_100080F0C(&v175);
LABEL_95:

LABEL_79:
  sub_100093CB8();
}

double sub_10017A330@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v9 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10017BE60();
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForKey:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      sub_10008B5D0(&v32, a4);
      return result;
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  sub_1000AF25C(&v32, &unk_1003CCB70, &unk_1002ED050);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v17 = sub_10007EDA4(v9, qword_1003F26C8);
  sub_10007EDDC(v17, v11, v18);
  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  *&v32 = 91;
  *(&v32 + 1) = 0xE100000000000000;
  *&v30 = sub_100213F6C(v5);
  *(&v30 + 1) = v19;
  sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
  v20._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v20);

  v21._object = 0x800000010031AC10;
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v21);
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  String.append(_:)(v22);
  v23 = v32;
  v24 = static os_log_type_t.default.getter();
  v25 = Logger.logObject.getter();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    *&v32 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_100080210(0, 0xE000000000000000, &v32);
    *(v26 + 12) = 2082;
    v27 = sub_100080210(v23, *(&v23 + 1), &v32);

    *(v26 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100080130(v11, v28, v29);
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

void sub_10017A65C()
{
  sub_100093D08();
  v2 = v1;
  v3 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  v8 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = sub_10017AA40(16);
  if (!v14)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v21, v7, v22);
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v23._countAndFlagsBits = 91;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v52 = sub_100213F6C(v0);
    v53 = v24;
    sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    object = v25._object;
    String.append(_:)(v25);

    v27._object = 0x800000010031AB20;
    v27._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v27);
    v28 = static os_log_type_t.default.getter();
    v29 = sub_10017CC10(v28);
    if (os_log_type_enabled(v29, v11))
    {
      sub_10008E688();
      v30 = sub_10017CA4C();
      v54[0] = v30;
      *object = 136446466;
      *(object + 4) = sub_100093CF0(v30, v31, v54);
      *(object + 6) = 2082;
      v32 = sub_10017CB1C();
      v35 = sub_100080210(v32, v33, v34);

      *(object + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v11, "%{public}s%{public}s", object, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v30);
      sub_100081C28(object);
    }

    else
    {
    }

    sub_100080130(v7, v46, v47);
    type metadata accessor for URL();
    v42 = sub_10017CA88();
    goto LABEL_18;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;
  sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
  v18 = swift_allocObject();
  v51 = xmmword_1002ED290;
  *(v18 + 16) = xmmword_1002ED290;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;

  sub_1001793D8();
  v20 = v19;

  if (v20)
  {
    sub_1001787A0(v20, v11);
  }

  else
  {
    v36 = type metadata accessor for URL();
    sub_100081DFC(v11, 1, 1, v36);
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v51;
  *(v37 + 32) = v16;
  *(v37 + 40) = v17;
  sub_1001793D8();
  v39 = v38;

  v40 = type metadata accessor for URL();
  sub_10017CBF0(v11);
  v41 = v41 && v39 == 0;
  if (v41)
  {
    sub_1000AF25C(v11, &unk_1003D0540, &unk_1002EDD50);
    v42 = sub_10017CA88();
    v45 = v40;
LABEL_18:
    sub_100081DFC(v42, v43, v44, v45);
    goto LABEL_19;
  }

  if (v15)
  {
    sub_1000B71B8(v11, v2);
  }

  else
  {

    sub_1000AF25C(v11, &unk_1003D0540, &unk_1002EDD50);
    v48 = sub_10017CA88();
    sub_100081DFC(v48, v49, v50, v40);
  }

LABEL_19:
  sub_100093CB8();
}

uint64_t sub_10017AA40(uint64_t a1)
{
  v25 = 0;
  if (!os_eligibility_get_domain_answer())
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v9, qword_1003F26C8);
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v10._object = 0x800000010031AC60;
    v10._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v10);
    type metadata accessor for os_eligibility_answer_t(0);
    _print_unlocked<A, B>(_:_:)();
    v11._countAndFlagsBits = 0x747865746E6F4320;
    v11._object = 0xEA0000000000203ALL;
    String.append(_:)(v11);
    swift_unknownObjectRetain();
    sub_100080FB4(&qword_1003D0568, qword_1002F6868);
    v12._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v12);

    v13 = static os_log_type_t.default.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_100080210(0, 0xE000000000000000, &v23);
      *(v15 + 12) = 2082;
      v16 = sub_100080210(0, 0xE000000000000000, &v23);

      *(v15 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    if (v25)
    {
      v17 = swift_unknownObjectRetain();
      if (xpc_dictionary_get_string(v17, "OS_ELIGIBILITY_CONTEXT_COUNTRY_BILLING"))
      {
        String.init(utf8String:)();
        v19 = v18;
        swift_unknownObjectRelease();
        if (v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v20 = static os_log_type_t.error.getter();
    v6 = Logger.logObject.getter();
    if (!os_log_type_enabled(v6, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100080210(0, 0xE000000000000000, &v23);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_100080210(0xD00000000000003FLL, 0x800000010031AC80, &v23);
    _os_log_impl(&_mh_execute_header, v6, v20, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
LABEL_19:

LABEL_20:

    goto LABEL_21;
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v1, qword_1003F26C8);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x800000010031AC30;
  String.append(_:)(v2);
  type metadata accessor for os_eligibility_domain_t(0);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = static os_log_type_t.error.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100080210(0, 0xE000000000000000, &v23);
    *(v7 + 12) = 2082;
    v8 = sub_100080210(0, 0xE000000000000000, &v23);

    *(v7 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    goto LABEL_19;
  }

LABEL_21:
  swift_unknownObjectRelease();
  return 0;
}

void sub_10017B038()
{
  sub_100093D08();
  v4 = v1;
  v5 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v6);
  sub_10017C8B0();
  __chkstk_darwin(v7);
  sub_10017CA98();
  sub_10017AA40(16);
  if (v8)
  {
    sub_10017CA68();
    sub_10017A330(0xD000000000000026, v9, v10);
    if (v55)
    {
      sub_10008B5D0(&v54, v56);
      v11 = sub_10017C9A4();
      sub_100080F58(v11, v12);
      sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        if (*(v53 + 16))
        {
          sub_10017C93C(_swiftEmptyArrayStorage);
          v13 = v54;
          do
          {
            String.lowercased()();
            sub_10017CA30();
            if (v15)
            {
              sub_10017C970(v14);
              v13 = v54;
            }

            sub_10017CAD0();
          }

          while (!v16);
        }

        else
        {

          v13 = _swiftEmptyArrayStorage;
        }

        sub_1001D2344(v13);
        sub_10017CB1C();
        String.lowercased()();
        sub_10017CB00();
        v50 = sub_10017C994();
        sub_100108884(v50, v51, v52);

        sub_100080F0C(v56);
      }

      else
      {

        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v34 = sub_10007EDA4(v5, qword_1003F26C8);
        sub_10007EDDC(v34, v0, v35);
        sub_10017CA78();
        _StringGuts.grow(_:)(34);
        sub_100213F6C(v1);
        v36 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
        v37._countAndFlagsBits = sub_10017CBD8(v36);
        String.append(_:)(v37);

        sub_10009F134();
        v38._object = (v3 | 0x8000000000000000);
        v38._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v38);
        v39._countAndFlagsBits = 0xD00000000000001ALL;
        v39._object = 0x800000010031AD50;
        String.append(_:)(v39);
        sub_10017C9A4();
        _print_unlocked<A, B>(_:_:)();
        v40 = static os_log_type_t.error.getter();
        v41 = Logger.logObject.getter();
        if (os_log_type_enabled(v41, v40))
        {
          sub_10008E688();
          *&v54 = sub_10017CA4C();
          v42 = sub_10017C9F0(4.8752e-34);
          v43 = sub_10017C8F4(v42);

          *(v4 + 14) = v43;
          sub_10017CA10(&_mh_execute_header, v44, v45, "%{public}s%{public}s");
          sub_10017CAE8(v46, v47, &type metadata for Any + 8);
          sub_1000AFF34();
          sub_100081C28(v4);
        }

        else
        {
        }

        sub_100080130(v0, v48, v49);
        sub_100080F0C(v56);
      }
    }

    else
    {

      sub_1000AF25C(&v54, &unk_1003CCB70, &unk_1002ED050);
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v17 = sub_10007EDA4(v5, qword_1003F26C8);
    sub_10007EDDC(v17, v2, v18);
    sub_10017C960();
    _StringGuts.grow(_:)(68);
    sub_10017C9D0();
    *&v54 = sub_100213F6C(v1);
    *(&v54 + 1) = v19;
    v20 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v21._countAndFlagsBits = sub_10017CBC0(v20);
    object = v21._object;
    String.append(_:)(v21);

    v23._countAndFlagsBits = 0xD000000000000041;
    v23._object = 0x800000010031AD70;
    String.append(_:)(v23);
    v24 = *&v56[0];
    v25 = static os_log_type_t.default.getter();
    v26 = sub_10017CC10(v25);
    if (sub_100098C50(v26))
    {
      sub_10008E688();
      *&v56[0] = sub_100093C08();
      v27 = sub_10017C9B0(4.8752e-34);
      sub_10017C8CC(v27);
      sub_10017CBA8();
      *(v1 + 14) = v24;
      sub_10017C91C(&_mh_execute_header, v28, v29, "%{public}s%{public}s");
      sub_10017CAE8(v30, v31, &type metadata for Any + 8);
      sub_1000AFF34();
      sub_100081C28(v1);
    }

    else
    {
    }

    sub_100080130(v2, v32, v33);
  }

  sub_100093CB8();
}

void sub_10017B4C8()
{
  sub_100093D08();
  v4 = v1;
  v5 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v6);
  sub_10017C8B0();
  __chkstk_darwin(v7);
  sub_10017CA98();
  sub_10017AA40(37);
  if (v8)
  {
    sub_10017CA68();
    sub_10017A330(0xD000000000000023, v9, v10);
    if (v55)
    {
      sub_10008B5D0(&v54, v56);
      v11 = sub_10017C9A4();
      sub_100080F58(v11, v12);
      sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        if (*(v53 + 16))
        {
          sub_10017C93C(_swiftEmptyArrayStorage);
          v13 = v54;
          do
          {
            String.lowercased()();
            sub_10017CA30();
            if (v15)
            {
              sub_10017C970(v14);
              v13 = v54;
            }

            sub_10017CAD0();
          }

          while (!v16);
        }

        else
        {

          v13 = _swiftEmptyArrayStorage;
        }

        sub_1001D2344(v13);
        sub_10017CB1C();
        String.lowercased()();
        sub_10017CB00();
        v50 = sub_10017C994();
        sub_100108884(v50, v51, v52);

        sub_100080F0C(v56);
      }

      else
      {

        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v34 = sub_10007EDA4(v5, qword_1003F26C8);
        sub_10007EDDC(v34, v0, v35);
        sub_10017CA78();
        _StringGuts.grow(_:)(34);
        sub_100213F6C(v1);
        v36 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
        v37._countAndFlagsBits = sub_10017CBD8(v36);
        String.append(_:)(v37);

        sub_10009F134();
        v38._object = (v3 | 0x8000000000000000);
        v38._countAndFlagsBits = 0xD000000000000023;
        String.append(_:)(v38);
        v39._countAndFlagsBits = 0xD00000000000001ALL;
        v39._object = 0x800000010031AD50;
        String.append(_:)(v39);
        sub_10017C9A4();
        _print_unlocked<A, B>(_:_:)();
        v40 = static os_log_type_t.error.getter();
        v41 = Logger.logObject.getter();
        if (os_log_type_enabled(v41, v40))
        {
          sub_10008E688();
          *&v54 = sub_10017CA4C();
          v42 = sub_10017C9F0(4.8752e-34);
          v43 = sub_10017C8F4(v42);

          *(v4 + 14) = v43;
          sub_10017CA10(&_mh_execute_header, v44, v45, "%{public}s%{public}s");
          sub_10017CAE8(v46, v47, &type metadata for Any + 8);
          sub_1000AFF34();
          sub_100081C28(v4);
        }

        else
        {
        }

        sub_100080130(v0, v48, v49);
        sub_100080F0C(v56);
      }
    }

    else
    {

      sub_1000AF25C(&v54, &unk_1003CCB70, &unk_1002ED050);
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v17 = sub_10007EDA4(v5, qword_1003F26C8);
    sub_10007EDDC(v17, v2, v18);
    sub_10017C960();
    _StringGuts.grow(_:)(68);
    sub_10017C9D0();
    *&v54 = sub_100213F6C(v1);
    *(&v54 + 1) = v19;
    v20 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v21._countAndFlagsBits = sub_10017CBC0(v20);
    object = v21._object;
    String.append(_:)(v21);

    v23._countAndFlagsBits = 0xD000000000000041;
    v23._object = 0x800000010031AD70;
    String.append(_:)(v23);
    v24 = *&v56[0];
    v25 = static os_log_type_t.default.getter();
    v26 = sub_10017CC10(v25);
    if (sub_100098C50(v26))
    {
      sub_10008E688();
      *&v56[0] = sub_100093C08();
      v27 = sub_10017C9B0(4.8752e-34);
      sub_10017C8CC(v27);
      sub_10017CBA8();
      *(v1 + 14) = v24;
      sub_10017C91C(&_mh_execute_header, v28, v29, "%{public}s%{public}s");
      sub_10017CAE8(v30, v31, &type metadata for Any + 8);
      sub_1000AFF34();
      sub_100081C28(v1);
    }

    else
    {
    }

    sub_100080130(v2, v32, v33);
  }

  sub_100093CB8();
}

void sub_10017B958()
{
  sub_100093D08();
  v4 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v5);
  sub_10017C8B0();
  __chkstk_darwin(v6);
  sub_10017CA98();
  sub_10017AA40(17);
  if (v7)
  {
    sub_10017CA68();
    sub_10017A330(0xD000000000000012, v8, v9);
    if (v60)
    {
      sub_10008B5D0(&v59, v61);
      v10 = sub_10017C9A4();
      sub_100080F58(v10, v11);
      sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        v12 = *(v58 + 16);
        if (!v12)
        {

          v13 = _swiftEmptyArrayStorage;
          goto LABEL_25;
        }

        sub_10017C93C(_swiftEmptyArrayStorage);
        v13 = v59;
        v14 = v58 + 40;
        do
        {
          v15 = String.lowercased()();
          *&v59 = v13;
          v17 = v13[2];
          v16 = v13[3];
          if (v17 >= v16 >> 1)
          {
            sub_10017C970(v16);
            v13 = v59;
          }

          v13[2] = v17 + 1;
          *&v13[2 * v17 + 4] = v15;
          v14 += 16;
          --v12;
        }

        while (v12);
LABEL_17:

LABEL_25:
        sub_1001D2344(v13);
        sub_10017CB1C();
        String.lowercased()();
        sub_10017CB00();
        v53 = sub_10017C994();
        sub_100108884(v53, v54, v55);

        sub_100080F0C(v61);
        goto LABEL_28;
      }

      v35 = sub_10017C9A4();
      sub_100080F58(v35, v36);
      sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        sub_1001784DC(v58);
        v13 = v37;
        goto LABEL_17;
      }

      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v38 = sub_10007EDA4(v4, qword_1003F26C8);
      sub_10007EDDC(v38, v0, v39);
      sub_10017CA78();
      _StringGuts.grow(_:)(35);
      v40._countAndFlagsBits = 91;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      sub_100213F6C(v1);
      v41 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
      v42._countAndFlagsBits = sub_10017CBD8(v41);
      String.append(_:)(v42);

      sub_10009F134();
      v43._object = (v3 | 0x8000000000000000);
      v43._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v43);
      v44._countAndFlagsBits = 0xD00000000000001ALL;
      v44._object = 0x800000010031AD50;
      String.append(_:)(v44);
      sub_10017C9A4();
      _print_unlocked<A, B>(_:_:)();
      v45 = static os_log_type_t.error.getter();
      v46 = Logger.logObject.getter();
      if (os_log_type_enabled(v46, v45))
      {
        sub_10008E688();
        *&v59 = sub_10017CA4C();
        v47 = sub_10017C9F0(4.8752e-34);
        v48 = sub_10017C8F4(v47);

        *(&type metadata for Any + 14) = v48;
        sub_10017CA10(&_mh_execute_header, v49, v50, "%{public}s%{public}s");
        sub_10017CAE8(v51, v52, &type metadata for Any + 8);
        sub_1000AFF34();
        sub_100081C28(&type metadata for Any);
      }

      else
      {
      }

      sub_100080130(v0, v56, v57);
      sub_100080F0C(v61);
    }

    else
    {

      sub_1000AF25C(&v59, &unk_1003CCB70, &unk_1002ED050);
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v18 = sub_10007EDA4(v4, qword_1003F26C8);
    sub_10007EDDC(v18, v2, v19);
    sub_10017C960();
    _StringGuts.grow(_:)(63);
    sub_10017C9D0();
    *&v59 = sub_100213F6C(v1);
    *(&v59 + 1) = v20;
    v21 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v22._countAndFlagsBits = sub_10017CBC0(v21);
    object = v22._object;
    String.append(_:)(v22);

    v24._countAndFlagsBits = 0xD00000000000003CLL;
    v24._object = 0x800000010031ACF0;
    String.append(_:)(v24);
    v25 = *&v61[0];
    v26 = static os_log_type_t.default.getter();
    v27 = sub_10017CC10(v26);
    if (sub_100098C50(v27))
    {
      sub_10008E688();
      *&v61[0] = sub_100093C08();
      v28 = sub_10017C9B0(4.8752e-34);
      sub_10017C8CC(v28);
      sub_10017CBA8();
      *(v1 + 14) = v25;
      sub_10017C91C(&_mh_execute_header, v29, v30, "%{public}s%{public}s");
      sub_10017CAE8(v31, v32, &type metadata for Any + 8);
      sub_1000AFF34();
      sub_100081C28(v1);
    }

    else
    {
    }

    sub_100080130(v2, v33, v34);
  }

LABEL_28:
  sub_100093CB8();
}

id sub_10017BE60()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1001460C4();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10017CB34();
  URL.appendingPathComponent(_:isDirectory:)();
  v13 = *(v4 + 8);
  v13(v8, v2);
  sub_10008E5A4(0, &unk_1003D0550, NSDictionary_ptr);
  v14 = sub_10017C994();
  v15(v14);
  v16 = sub_100179048(v8);
  v13(v11, v2);
  return v16;
}

uint64_t sub_10017C008()
{
  sub_100179204(10, &v11);
  if (v12)
  {
    if (sub_10017CB68(v0, v1, v2, &type metadata for Bool, v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11) && (v10 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    sub_1000AF25C(&v11, &unk_1003CCB70, &unk_1002ED050);
  }

  result = sub_100070464();
  if (result)
  {
    if (qword_1003CBDF8 != -1)
    {
      swift_once();
    }

    return byte_1003F25E1;
  }

  return result;
}

id sub_10017C0C0()
{
  result = [objc_opt_self() deviceIsiPad];
  if (result)
  {
    objc_opt_self();
    result = 1;
    if (swift_dynamicCastObjCClass())
    {
      v2 = v0;
      v3 = sub_10017C148();

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10017C148()
{
  v1 = [v0 deviceFamilies];
  sub_10008E5A4(0, &qword_1003D0520, NSNumber_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [objc_allocWithZone(NSNumber) initWithInteger:2];
  v8 = v3;
  v7[2] = &v8;
  sub_1001788F8(sub_10017C88C, v7, v2);
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_10017C220()
{
  if ([v0 isProfileValidated])
  {
    return 0x52786F62646E6173;
  }

  else
  {
    return 0x74706965636572;
  }
}

void sub_10017C284()
{
  sub_100093D08();
  v1 = v0;
  v52 = v2;
  v3 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  v8 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  sub_1001460C4();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for URL();
  sub_1000890DC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1001460C4();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v51 - v24;
  v26 = [v1 dataContainerURL];
  if (v26)
  {
    v27 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  sub_100081DFC(v12, v28, 1, v16);
  sub_1000B71B8(v12, v15);
  sub_10017CBF0(v15);
  if (v29)
  {
    sub_1000AF25C(v15, &unk_1003D0540, &unk_1002EDD50);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v30 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v30, v7, v31);
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v54 = 0xD00000000000002ELL;
    v55 = 0x800000010031AA80;
    v53[0] = sub_100213F6C(v1);
    v53[1] = v32;
    sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v33._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v33);

    v34 = v54;
    v35 = v55;
    if (qword_1003CBE98 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v37 = v54;
    v36 = v55;
    v38 = static os_log_type_t.error.getter();
    v39 = Logger.logObject.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = sub_10008E688();
      v41 = swift_slowAlloc();
      v51 = v34;
      v42 = v41;
      v53[0] = v41;
      *v40 = 136446466;
      v54 = 91;
      v55 = 0xE100000000000000;
      v43._countAndFlagsBits = v37;
      v43._object = v36;
      String.append(_:)(v43);
      sub_10009F134();
      v44 = sub_100080210(v54, v55, v53);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = sub_100080210(v51, v35, v53);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v39, v38, "%{public}s%{public}s", v40, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v42);
      sub_100081C28(v40);
    }

    else
    {
    }

    sub_100080130(v7, v49, v50);
    v48 = 1;
    v47 = v52;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v46 = *(v18 + 8);
    v46(v15, v16);
    (*(v18 + 32))(v25, v22, v16);
    sub_10017C220();
    v47 = v52;
    URL.appendingPathComponent(_:isDirectory:)();

    v46(v25, v16);
    v48 = 0;
  }

  sub_100081DFC(v47, v48, 1, v16);
  sub_100093CB8();
}

unint64_t sub_10017C730(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10017C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10017C8CC(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100080210(v3, v2, (v4 - 112));
}

unint64_t sub_10017C8F4(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100080210(v3, v2, (v4 - 144));
}

void sub_10017C91C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_10017C93C(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;

  sub_100213374(0, v1, 0);
}

void sub_10017C970(unint64_t a1@<X8>)
{

  sub_100213374(a1 > 1, v1, 1);
}

unint64_t sub_10017C9B0(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 112));
}

void sub_10017C9D0()
{
  v2 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v2;
  v3 = 91;
  v4 = 0xE100000000000000;

  String.append(_:)(*&v3);
}

unint64_t sub_10017C9F0(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 144));
}

void sub_10017CA10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10017CA4C()
{

  return swift_slowAlloc();
}

uint64_t sub_10017CAA8(uint64_t a1)
{

  return swift_allocObject();
}

void sub_10017CAD0()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t sub_10017CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_10017CB00()
{
}

uint64_t sub_10017CB68(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8)
{

  return swift_dynamicCast();
}

uint64_t sub_10017CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10017CBA8()
{
}

uint64_t sub_10017CBC0(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t sub_10017CBD8(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t sub_10017CC10(uint64_t a1)
{

  return Logger.logObject.getter();
}

id sub_10017CC28(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  sub_1000890DC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = [objc_allocWithZone(AMSPromise) init];
  v15 = type metadata accessor for TaskPriority();
  sub_100081DFC(v13, 1, 1, v15);
  (*(v7 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  *(v17 + 5) = v2;
  (*(v7 + 32))(&v17[v16], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v17[(v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  v18 = v14;
  v19 = a2;
  sub_100165CBC();

  return v18;
}

uint64_t sub_10017CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_10017CE38, 0, 0);
}

uint64_t sub_10017CE38()
{
  sub_10008BE9C();
  *(v0 + 72) = [*(v0 + 40) completionHandlerAdapter];
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10017CEE8;

  return sub_10017D2EC();
}

uint64_t sub_10017CEE8(uint64_t a1)
{
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v2;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 88) = v1;

  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10017CFF8()
{
  v1 = *(v0 + 72);
  v2 = v1[2];
  v3 = *(v0 + 96);
  v2(v1, v3, 0);
  _Block_release(v1);

  sub_100098AC4();

  return v4();
}

uint64_t sub_10017D08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = v3;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v4 = v3[11];
  v5 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v5, qword_1003F26C8);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v3[2] = 0;
  v3[3] = 0xE000000000000000;
  v6._object = 0x800000010031AE80;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v6);
  v3[4] = v4;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v8 = v3[2];
  v7 = v3[3];
  LOBYTE(v4) = static os_log_type_t.error.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_100080210(0, 0xE000000000000000, v18);
    *(v10 + 12) = 2082;
    v11 = sub_100080210(v8, v7, v18);

    *(v10 + 14) = v11;
    sub_1000C4680(&_mh_execute_header, v12, v13, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000AFF34();
  }

  else
  {
  }

  v14 = v3[9];
  swift_errorRetain();
  v15 = _convertErrorToNSError(_:)();
  (v14)[2](v14, 0, v15);

  _Block_release(v14);

  sub_100098AC4();

  return v16();
}

uint64_t sub_10017D2EC()
{
  sub_10008BE9C();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = type metadata accessor for BagLanguageSource();
  v1[32] = v4;
  sub_1000B046C(v4);
  v1[33] = v5;
  v1[34] = sub_1000B05D0();
  v6 = type metadata accessor for Bag();
  v1[35] = v6;
  sub_1000B046C(v6);
  v1[36] = v7;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  type metadata accessor for JetPackPath();
  v1[39] = sub_1000B05D0();
  v8 = type metadata accessor for LocalizedStringsBundle();
  v1[40] = v8;
  sub_1000B046C(v8);
  v1[41] = v9;
  v1[42] = sub_1000B05D0();
  v1[43] = type metadata accessor for SKLogger(0);
  v1[44] = sub_1000B05D0();
  v10 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[45] = v10;
  sub_1000B046C(v10);
  v1[46] = v11;
  v1[47] = sub_1000B05D0();
  v12 = type metadata accessor for JetPackSigningPolicy();
  v1[48] = v12;
  sub_1000B046C(v12);
  v1[49] = v13;
  v1[50] = sub_1000B05D0();
  v14 = type metadata accessor for InMemoryJetPackLoader();
  v1[51] = v14;
  sub_1000B046C(v14);
  v1[52] = v15;
  v1[53] = sub_1000B05D0();
  v16 = type metadata accessor for URL();
  v1[54] = v16;
  sub_1000B046C(v16);
  v1[55] = v17;
  v1[56] = sub_1000B05D0();
  v18 = type metadata accessor for JetPackAMSRemoteStreamSource();
  v1[57] = v18;
  sub_1000B046C(v18);
  v1[58] = v19;
  v1[59] = sub_1000B05D0();
  sub_100098AD0();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_10017D60C()
{
  v25 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v0[60] = sub_10007EDA4(v0[43], qword_1003F26C8);
  _StringGuts.grow(_:)(44);

  v24[0] = 0xD00000000000002ALL;
  v24[1] = 0x800000010031AEB0;
  sub_10017EABC();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2 = static os_log_type_t.default.getter();

  v3 = Logger.logObject.getter();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100080210(0, 0xE000000000000000, v24);
    *(v4 + 12) = 2082;
    v5 = sub_100080210(0xD00000000000002ALL, 0x800000010031AEB0, v24);

    *(v4 + 14) = v5;
    sub_1000C4680(&_mh_execute_header, v6, v7, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000AFF34();
  }

  else
  {
  }

  v8 = v0[58];
  v9 = v0[56];
  v11 = v0[54];
  v10 = v0[55];
  v23 = v0[57];
  v13 = v0[49];
  v12 = v0[50];
  v21 = v0[59];
  v22 = v0[48];
  v14 = v0[29];
  v15 = sub_1001A9498();
  v0[61] = v15;
  (*(v10 + 16))(v9, v14, v11);
  v16 = [v15 configuration];
  sub_1001A9564();
  JetPackAMSRemoteStreamSource.init(url:urlSessionConfiguration:urlRequestEncoder:)();
  (*(v13 + 104))(v12, enum case for JetPackSigningPolicy.required(_:), v22);
  v0[5] = type metadata accessor for JetPackManagedKeyProvider();
  v0[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_10009E720(v0 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  v0[10] = v23;
  v0[11] = &protocol witness table for JetPackAMSRemoteStreamSource;
  v17 = sub_10009E720(v0 + 7);
  (*(v8 + 16))(v17, v21, v23);
  v18 = swift_task_alloc();
  v0[62] = v18;
  *v18 = v0;
  v18[1] = sub_10017D96C;
  v19 = v0[47];

  return InMemoryJetPackLoader.bundle(from:)(v19, v0 + 7);
}

uint64_t sub_10017D96C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
    sub_100080F0C((v3 + 56));
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10017DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = v3;
  sub_10007EDDC(*(v3 + 480), *(v3 + 352), a3);
  _StringGuts.grow(_:)(33);

  v48 = 0xD00000000000001FLL;
  v49 = 0x800000010031AEE0;
  v4 = JetPackResourceBundle.version.getter();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 48;
    v6 = 0xE100000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v4);

  v9 = v48;
  v8 = v49;
  v10 = static os_log_type_t.default.getter();
  v11 = Logger.logObject.getter();
  v12 = os_log_type_enabled(v11, v10);
  v13 = *(v3 + 352);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &v48);
    *(v14 + 12) = 2082;
    v15 = sub_100080210(v9, v8, &v48);

    *(v14 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    sub_1000AFF34();
  }

  else
  {
  }

  sub_100080130(v13, v16, v17);
  v18 = *(v3 + 504);
  v20 = *(v3 + 368);
  v19 = *(v3 + 376);
  v21 = *(v3 + 360);
  *(v3 + 120) = v21;
  *(v3 + 128) = &protocol witness table for InMemoryJetPackResourceBundle;
  v22 = sub_10009E720((v3 + 96));
  (*(v20 + 16))(v22, v19, v21);
  JetPackPath.init(_:)();
  LocalizedStringsBundle.init(resourceBundle:indexPath:)();
  if (v18)
  {
    v24 = *(v3 + 464);
    v23 = *(v3 + 472);
    v25 = *(v3 + 456);
    v27 = *(v3 + 416);
    v26 = *(v3 + 424);
    v28 = *(v3 + 408);
    v29 = *(v3 + 368);
    v30 = *(v3 + 376);
    v31 = *(v3 + 360);

    (*(v29 + 8))(v30, v31);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    sub_10017EB14();

    sub_100098AC4();

    return v32();
  }

  else
  {
    v34 = *(v3 + 328);
    v35 = *(v3 + 320);
    v37 = *(v3 + 296);
    v36 = *(v3 + 304);
    v39 = *(v3 + 280);
    v38 = *(v3 + 288);
    v41 = *(v3 + 264);
    v40 = *(v3 + 272);
    v46 = *(v3 + 256);
    v47 = *(v3 + 336);
    sub_1001A7AB4();
    Bag.init(from:)();
    (*(v38 + 16))(v37, v36, v39);
    BagLanguageSource.init(bag:)();
    type metadata accessor for AppleServicesLocalizer();
    *(v3 + 160) = v35;
    *(v3 + 168) = &protocol witness table for LocalizedStringsBundle;
    v42 = sub_10009E720((v3 + 136));
    (*(v34 + 16))(v42, v47, v35);
    *(v3 + 200) = v46;
    *(v3 + 208) = &protocol witness table for BagLanguageSource;
    v43 = sub_10009E720((v3 + 176));
    (*(v41 + 16))(v43, v40, v46);
    type metadata accessor for BaseObjectGraph();
    v44 = BaseObjectGraph.__allocating_init(name:_:)();
    *(v3 + 512) = v44;
    v45 = swift_task_alloc();
    *(v3 + 520) = v45;
    *v45 = v3;
    v45[1] = sub_10017DF3C;

    return static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)(v3 + 136, v3 + 176, v44);
  }
}

uint64_t sub_10017DF3C(uint64_t a1)
{
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v2;
  sub_100098AB4();
  *v8 = v7;
  v5[66] = v1;

  if (!v1)
  {
    v5[67] = a1;
    sub_100080F0C(v5 + 22);
    sub_100080F0C(v5 + 17);
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10017E068()
{
  v15 = *(v0 + 488);
  v1 = *(v0 + 464);
  v22 = *(v0 + 456);
  v23 = *(v0 + 472);
  v2 = *(v0 + 416);
  v20 = *(v0 + 408);
  v21 = *(v0 + 424);
  v24 = *(v0 + 536);
  v3 = *(v0 + 368);
  v18 = *(v0 + 360);
  v19 = *(v0 + 376);
  v4 = *(v0 + 328);
  v16 = *(v0 + 320);
  v17 = *(v0 + 336);
  v14 = *(v0 + 304);
  v5 = *(v0 + 288);
  v13 = *(v0 + 280);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC9storekitd19LocalizationJetPack_localizer] = v24;
  *(v0 + 216) = v10;
  *(v0 + 224) = v9;
  v25 = objc_msgSendSuper2((v0 + 216), "init");

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v14, v13);
  (*(v4 + 8))(v17, v16);
  (*(v3 + 8))(v19, v18);
  (*(v2 + 8))(v21, v20);
  (*(v1 + 8))(v23, v22);

  v11 = *(v0 + 8);

  return v11(v25);
}

uint64_t sub_10017E27C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100080F0C((v0 + 56));
  sub_10017EB14();

  sub_100098AC4();

  return v7();
}

uint64_t sub_10017E3B8()
{
  v1 = *(v0 + 464);
  v19 = *(v0 + 456);
  v20 = *(v0 + 472);
  v2 = *(v0 + 416);
  v17 = *(v0 + 408);
  v18 = *(v0 + 424);
  v3 = *(v0 + 368);
  v15 = *(v0 + 360);
  v16 = *(v0 + 376);
  v4 = *(v0 + 328);
  v13 = *(v0 + 320);
  v14 = *(v0 + 336);
  v12 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v12, v5);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);
  (*(v1 + 8))(v20, v19);
  sub_100080F0C((v0 + 176));
  sub_100080F0C((v0 + 136));
  sub_10017EB14();

  sub_100098AC4();

  return v10();
}

uint64_t sub_10017E694(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for LocalizerLookupStrategy();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for LocalizerLookupStrategy.default(_:), v2);
  v8 = AppleServicesLocalizer.string(forKey:with:using:)();
  (*(v4 + 8))(v7, v2);
  return v8;
}

uint64_t sub_10017E8B8()
{
  v1 = type metadata accessor for URL();
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10017E98C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  sub_1000B046C(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000A7644;

  return sub_10017CE14(a1, v9, v10, v11, v12, v1 + v7, v13);
}

unint64_t sub_10017EABC()
{
  result = qword_1003CDF58;
  if (!qword_1003CDF58)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF58);
  }

  return result;
}

void sub_10017EB2C()
{
  _StringGuts.grow(_:)(266);
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0x800000010031B2D0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x800000010031B040;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x202020200A2820;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._object = 0x800000010031B310;
  v4._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x746361736E617274;
  v5._object = 0xEE0064695F6E6F69;
  String.append(_:)(v5);
  v6._object = 0x800000010031B310;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x8000000100316D90;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x200A2C5458455420;
  v8._object = 0xEB00000000202020;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x5F746375646F7270;
  v9._object = 0xEA00000000006469;
  String.append(_:)(v9);
  v10._object = 0x800000010031B310;
  v10._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x64695F6D657469;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEE00202020200A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000010;
  v13._object = 0x8000000100314090;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4D49544554414420;
  v14._object = 0xEF202020200A2C45;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x800000010031B020;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4D49544554414420;
  v16._object = 0xEF202020200A2C45;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x797469746E617571;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x52454745544E4920;
  v18._object = 0xEE00202020200A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x5F74736575716572;
  v19._object = 0xEC00000061746164;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x200A2C424F4C4220;
  v20._object = 0xEB00000000202020;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000013;
  v21._object = 0x800000010031B000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x200A2C424F4C4220;
  v22._object = 0xEB00000000202020;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x737465737361;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000018;
  v24._object = 0x800000010031B370;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x695F656C646E7562;
  v25._object = 0xE900000000000064;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x746361736E617274;
  v27._object = 0xEE0064695F6E6F69;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000017;
  v28._object = 0x8000000100316F60;
  String.append(_:)(v28);
  qword_1003D05A0 = 0;
  *algn_1003D05A8 = 0xE000000000000000;
}

void sub_10017EEF8()
{
  _StringGuts.grow(_:)(133);
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0x800000010031B2D0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x800000010031B060;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x202020200A2820;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x495F656C646E7562;
  v3._object = 0xE900000000000044;
  String.append(_:)(v3);
  v4._object = 0x800000010031B2F0;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x6E656B6F74;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x800000010031B310;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x64696C61765F7369;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8._object = 0x800000010031B330;
  v8._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6470755F7473616CLL;
  v9._object = 0xEC00000064657461;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x800000010031B350;
  String.append(_:)(v10);
  qword_1003D05B0 = 0;
  *algn_1003D05B8 = 0xE000000000000000;
}

void sub_10017F0B0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];

  if (qword_1003CBE08 != -1)
  {
    swift_once();
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v4];

  if (qword_1003CBE10 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v5];
}

id sub_10017F238()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  sub_1000B00A8();
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0, off_10037DC98);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8, off_10037DCA0);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

BOOL sub_10017F308(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 18999)
    {
      return v2 > 18999;
    }

    v3 = [a1 currentSchemaVersion];
    if (!v3)
    {
      goto LABEL_5;
    }

    if (v3 != 19000)
    {
      if (v3 != 18400)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_100081C08(&qword_1003CBE58);
        }

        v6 = type metadata accessor for SKLogger(0);
        sub_10007EDA4(v6, qword_1003F26C8);
        aBlock = 0;
        v19 = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        aBlock = 0xD000000000000024;
        v19 = 0x800000010031B240;
        v24 = [a1 currentSchemaVersion];
        sub_100184D08();
        v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v7);

        v8._countAndFlagsBits = 540949792;
        v8._object = 0xE400000000000000;
        String.append(_:)(v8);
        v24 = 19000;
        sub_100184D08();
        v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v9);

        v11 = aBlock;
        v10 = v19;
        v12 = static os_log_type_t.error.getter();

        v13 = Logger.logObject.getter();

        if (os_log_type_enabled(v13, v12))
        {
          v14 = sub_10008E688();
          v15 = swift_slowAlloc();
          aBlock = v15;
          *v14 = 136446466;
          *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
          *(v14 + 12) = 2082;
          v16 = sub_100080210(v11, v10, &aBlock);

          *(v14 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
          swift_arrayDestroy();
          sub_100081C28(v15);
          sub_100081C28(v14);
        }

        else
        {
        }

        return v2 > 18999;
      }

LABEL_5:
      v22 = sub_10017F0B0;
      v23 = 0;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100224D90;
      v21 = &unk_10038D068;
      v4 = _Block_copy(&aBlock);

      v5 = [a1 migrateToVersion:19000 usingBlock:v4];
      _Block_release(v4);
      if ((v5 & 1) == 0)
      {
        return v2 > 18999;
      }
    }
  }
}

uint64_t sub_10017F65C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_10017F674()
{
  sub_100098BB4();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100184CE8;

  return sub_1001D5E3C(sub_100184CE0, v3);
}

id sub_10017F750(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10008E5A4(0, &qword_1003CCBB8, off_10037DC88);
  v14 = &type metadata for String;
  v12 = a2;
  v13 = a3;

  v6 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v12);
  type metadata accessor for LegacyTransactionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [a1 connection];
  v9 = [ObjCClassFromMetadata queryOnConnection:v8 predicate:v6];

  v10 = [v9 deleteAllEntities];
  return v10;
}

uint64_t sub_10017F858(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_10017F870(uint64_t a1)
{
  v2 = sub_1001A82CC(a1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v1[2];
    v7 = v1[3];
    v8 = swift_allocObject();
    v1[5] = v8;
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v4;
    v8[5] = v5;

    v9 = v7;
    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_10017F9A8;

    return sub_1001D5E3C(sub_100184C2C, v8);
  }

  else
  {
    sub_100098AC4();

    return v12();
  }
}

uint64_t sub_10017F9A8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

id sub_10017FAA4(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v54 = a1;
  v48 = type metadata accessor for LegacyTransactionInternal(0);
  v7 = *(v48 - 8);
  v8 = __chkstk_darwin(v48);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = *(a2 + 16);
  v14 = &selRef__appDidLaunch_;
  v15 = &selRef_domain;
  if (v13)
  {
    v52 = type metadata accessor for LegacyTransactionEntity();
    v16 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v51 = *(v7 + 72);
    v45 = 0x800000010031B1D0;
    *&v17 = 136446466;
    v44 = v17;
    v47 = a3;
    v46 = v10;
    v53 = v12;
    do
    {
      sub_100184B24(v16, v12, type metadata accessor for LegacyTransactionInternal);
      sub_100184B24(v12, v10, type metadata accessor for LegacyTransactionInternal);
      v18 = a3;
      v19 = sub_100180118(v10, v18, [v54 v14[404]]);
      v20 = v12;
      v21 = v19;
      if ([v19 v15[52]])
      {
        sub_100184B84(v20, type metadata accessor for LegacyTransactionInternal);

        v12 = v20;
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for SKLogger(0);
        sub_10007EDA4(v22, qword_1003F26C8);
        v56 = 0;
        v57 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v56 = 0xD000000000000024;
        v57 = v45;
        String.append(_:)(*&v53[*(v48 + 44)]);
        v23 = v57;
        v50 = v56;
        if (qword_1003CBE98 != -1)
        {
          swift_once();
        }

        TaskLocal.get()();
        v25 = v56;
        v24 = v57;
        v26 = static os_log_type_t.error.getter();

        v27 = Logger.logObject.getter();

        v49 = v26;
        if (os_log_type_enabled(v27, v26))
        {
          v28 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v28 = v44;
          v56 = 91;
          v57 = 0xE100000000000000;
          v29._countAndFlagsBits = v25;
          v29._object = v24;
          String.append(_:)(v29);
          v30._countAndFlagsBits = 8285;
          v30._object = 0xE200000000000000;
          String.append(_:)(v30);
          v31 = sub_100080210(v56, v57, &v55);

          *(v28 + 4) = v31;
          *(v28 + 12) = 2082;
          v32 = sub_100080210(v50, v23, &v55);

          *(v28 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v27, v49, "%{public}s%{public}s", v28, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v12 = v53;
        sub_100184B84(v53, type metadata accessor for LegacyTransactionInternal);
        v15 = &selRef_domain;
        v14 = &selRef__appDidLaunch_;
        a3 = v47;
        v10 = v46;
      }

      v16 += v51;
      --v13;
    }

    while (v13);
  }

  sub_100080FB4(&qword_1003D30B0, &unk_1002ED4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2E0;
  *(inited + 32) = 0x495F656C646E7562;
  *(inited + 40) = 0xE900000000000044;
  v34 = *&a3[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  *(inited + 48) = *&a3[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
  *(inited + 56) = v34;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E656B6F74;
  v35 = v42;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v35;
  *(inited + 104) = v43;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "last_updated");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 168) = type metadata accessor for Date();
  sub_10009E720((inited + 144));

  Date.init()();
  *(inited + 176) = 0x64696C61765F7369;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v36 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LegacyTransactionPropertiesEntity();
  sub_100223354(v36);
  v38 = v37;

  v39 = sub_1000DC274(v38, [v54 v14[404]]);
  v40 = [v39 v15[52]];

  return v40;
}

id sub_100180118(char *a1, char *a2, void *a3)
{
  v5 = Dictionary.init(dictionaryLiteral:)();
  v51 = a2;
  v6 = *&a2[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
  v7 = *&a2[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v6;
  *(&v55 + 1) = v7;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v8 = *a1;
  *(&v56 + 1) = &type metadata for UInt64;
  *&v55 = v8;
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v9;
  *(&v55 + 1) = v10;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v11 = type metadata accessor for LegacyTransactionInternal(0);
  v12 = v11[9];
  v13 = type metadata accessor for Date();
  *(&v56 + 1) = v13;
  v14 = sub_10009E720(&v55);
  v15 = *(*(v13 - 8) + 16);
  v15(v14, &a1[v12], v13);
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v16 = &a1[v11[11]];
  v17 = *v16;
  v18 = v16[1];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v17;
  *(&v55 + 1) = v18;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v19 = &a1[v11[12]];
  v20 = *v19;
  v21 = v19[1];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v20;
  *(&v55 + 1) = v21;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v22 = v11[10];
  *(&v56 + 1) = v13;
  v23 = sub_10009E720(&v55);
  v15(v23, &a1[v22], v13);
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v24 = *(a1 + 3);
  *(&v56 + 1) = &type metadata for UInt;
  *&v55 = v24;
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v25 = v5;
  v27 = *(a1 + 4);
  v26 = *(a1 + 5);
  if (v26 >> 60 == 15)
  {
    v55 = 0u;
    v56 = 0u;
    sub_1000BC7F4(v27, v26);
    sub_1000AF25C(&v55, &unk_1003CCB70, &unk_1002ED050);
    v28 = sub_1000B6328(0x5F74736575716572, 0xEC00000061746164);
    if (v29)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v25[3];
      sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);

      sub_10008B5D0((v25[7] + 32 * v30), &v53);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    sub_1000AF25C(&v53, &unk_1003CCB70, &unk_1002ED050);
  }

  else
  {
    *(&v56 + 1) = &type metadata for Data;
    *&v55 = v27;
    *(&v55 + 1) = v26;
    sub_10008B5D0(&v55, &v53);
    sub_1000BC7F4(v27, v26);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v34 = *(a1 + 6);
  v33 = *(a1 + 7);
  v35 = v34;
  v36 = v33;
  v37 = &type metadata for Data;
  if (v33 >> 60 == 15)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    *&v56 = 0;
  }

  *&v55 = v35;
  *(&v55 + 1) = v36;
  *(&v56 + 1) = v37;
  if (v33 >> 60 == 15)
  {
    sub_1000BC7F4(v34, v33);
    sub_1000AF25C(&v55, &unk_1003CCB70, &unk_1002ED050);
    v38 = sub_1000B6328(0xD000000000000013, 0x800000010031B000);
    if (v39)
    {
      v40 = v38;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25[3];
      sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v41, v42);

      sub_10008B5D0((v25[7] + 32 * v40), &v53);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    sub_1000AF25C(&v53, &unk_1003CCB70, &unk_1002ED050);
  }

  else
  {
    sub_10008B5D0(&v55, &v53);
    sub_1000BC7F4(v34, v33);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v43 = *&a1[v11[13]];
  if (v43)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *&v55 = v43;
    sub_100080FB4(&unk_1003CD718, &qword_1002EE4F0);
    sub_100184C38(&qword_1003CD7C8, sub_1000BC7A0, &protocol conformance descriptor for <A> [A]);
    v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(&v56 + 1) = &type metadata for Data;
    *&v55 = v44;
    *(&v55 + 1) = v45;
    sub_10008B5D0(&v55, &v53);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v46 = objc_allocWithZone(v50);
  sub_100223354(v25);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v48 = [v46 initWithPropertyValues:isa onConnection:a3];

  sub_100184B84(a1, type metadata accessor for LegacyTransactionInternal);
  return v48;
}

uint64_t sub_100180BDC()
{
  sub_100098BB4();
  v2 = v1;
  v0[10] = v1;
  v3 = type metadata accessor for Date();
  v0[11] = v3;
  v0[12] = *(v3 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100180CEC;

  return sub_1001832C8(v2);
}

uint64_t sub_100180CEC()
{
  sub_10008BE9C();
  sub_10008C070();
  *(v1 + 136) = v0;

  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100180DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = v3;
  v4 = v3[17];
  if (!v4)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v5 = v3[10];
    v6 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v6, qword_1003F26C8);
    _StringGuts.grow(_:)(39);

    v86 = 0xD000000000000025;
    v87 = 0x800000010031B100;
    v7 = [v5 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    TaskLocal.get()();
    v13 = v3[2];
    v12 = v3[3];
    v14 = static os_log_type_t.default.getter();

    v15 = Logger.logObject.getter();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = sub_10008E688();
      v17 = swift_slowAlloc();
      *v16 = 136446466;
      sub_1000AFCA0();
      v18._countAndFlagsBits = v13;
      v18._object = v12;
      String.append(_:)(v18);
      sub_10008C018();
      v27 = sub_10008BF20(v19, v20, v21, v22, v23, v24, v25, v26, v83, v85, v86, v87);

      *(v16 + 4) = v27;
      *(v16 + 12) = 2082;
      v28 = sub_100080210(0xD000000000000025, 0x800000010031B100, &v85);

      *(v16 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v17);
      sub_100081C28(v16);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v31 = sub_100183930();
  v33 = v32;
  v34 = sub_1001A82CC(v31);
  if (v35)
  {
    if (v34 == v31 && v35 == v33)
    {

LABEL_29:
      v56 = String._bridgeToObjectiveC()();
      v57 = [v4 BOOLValueForProperty:v56];

      if (v57)
      {
        v3[18] = sub_1001A7AB4();
        swift_getObjectType();
        if (qword_1003CC078 != -1)
        {
          swift_once();
        }

        v58 = qword_1003F28E0;
        v59 = swift_task_alloc();
        v3[19] = v59;
        *v59 = v3;
        v59[1] = sub_1001815BC;

        return sub_10024ECE0(v58);
      }

      if (qword_1003CBE58 != -1)
      {
        sub_100081C08(&qword_1003CBE58);
      }

      v60 = v3[10];
      v61 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v61, qword_1003F26C8);
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v62._countAndFlagsBits = 0xD00000000000001DLL;
      v62._object = 0x800000010031B170;
      String.append(_:)(v62);
      v63 = [v60 description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67._countAndFlagsBits = v64;
      v67._object = v66;
      String.append(_:)(v67);

      sub_1000B00A8();
      v68._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v68);
      if (qword_1003CBE98 != -1)
      {
        sub_10008BCDC(&qword_1003CBE98);
      }

      TaskLocal.get()();
      v70 = v3[6];
      v69 = v3[7];
      v71 = static os_log_type_t.default.getter();

      v42 = Logger.logObject.getter();

      if (!os_log_type_enabled(v42, v71))
      {

        goto LABEL_43;
      }

      sub_10008E688();
      v72 = sub_1000B002C();
      MEMORY[0] = 136446466;
      sub_1000AFCA0();
      v73._countAndFlagsBits = v70;
      v73._object = v69;
      String.append(_:)(v73);
      sub_10008C018();
      sub_10008BF20(v74, v75, v76, v77, v78, v79, v80, v81, 0, v85, v86, v87);

      sub_100184D18();
      v82 = sub_100080210(v84, 0xE000000000000000, &v85);

      MEMORY[0xE] = v82;
      _os_log_impl(&_mh_execute_header, v42, v71, "%{public}s%{public}s", 0, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v72);
      v55 = 0;
      goto LABEL_41;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v38 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v38, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC(&qword_1003CBE98);
  }

  TaskLocal.get()();
  v40 = v3[4];
  v39 = v3[5];
  v41 = static os_log_type_t.default.getter();

  v42 = Logger.logObject.getter();

  if (!os_log_type_enabled(v42, v41))
  {
    goto LABEL_42;
  }

  v43 = sub_10008E688();
  v44 = swift_slowAlloc();
  *v43 = 136446466;
  sub_1000AFCA0();
  v45._countAndFlagsBits = v40;
  v45._object = v39;
  String.append(_:)(v45);
  sub_10008C018();
  v54 = sub_10008BF20(v46, v47, v48, v49, v50, v51, v52, v53, v83, v85, v86, v87);

  *(v43 + 4) = v54;
  *(v43 + 12) = 2082;
  *(v43 + 14) = sub_100080210(0xD000000000000039, 0x800000010031B130, &v85);
  _os_log_impl(&_mh_execute_header, v42, v41, "%{public}s%{public}s", v43, 0x16u);
  swift_arrayDestroy();
  sub_100081C28(v44);
  v55 = v43;
LABEL_41:
  sub_100081C28(v55);
LABEL_42:

LABEL_43:

LABEL_11:

  sub_10009F198();

  return v29(0);
}

uint64_t sub_1001815BC(uint64_t a1)
{
  v4 = *v2;
  sub_100098AB4();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {

    swift_unknownObjectRelease();
    v6 = sub_100181AAC;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 160) = a1;
    v6 = sub_100181708;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100181708()
{
  v39 = v1;
  sub_100184D40();
  Date.addingTimeInterval(_:)();
  v5 = *(v4 + 8);
  v5(v0, v3);
  static Date.now.getter();
  v6 = static Date.> infix(_:_:)();
  v5(v2, v3);
  if (v6)
  {
    v7 = v1[17];
    v5(v1[15], v1[11]);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v8 = v1[10];
    v9 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v9, qword_1003F26C8);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v10._countAndFlagsBits = sub_100184D28();
    String.append(_:)(v10);
    v11 = [v8 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    sub_1000B00A8();
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    TaskLocal.get()();
    v18 = v1[8];
    v17 = v1[9];
    v19 = static os_log_type_t.default.getter();

    v20 = Logger.logObject.getter();

    v34 = v19;
    v21 = os_log_type_enabled(v20, v19);
    v35 = v1[17];
    v22 = v1[15];
    v23 = v1[11];
    if (v21)
    {
      sub_10008E688();
      v33 = v23;
      v24 = sub_1000B002C();
      *v6 = 136446466;
      v36 = v24;
      v37 = 91;
      v38 = 0xE100000000000000;
      v32 = v22;
      v25._countAndFlagsBits = v18;
      v25._object = v17;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 8285;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      sub_100080210(91, 0xE100000000000000, &v36);

      sub_100184D18();
      v27 = sub_100080210(0, 0xE000000000000000, &v36);

      *(v6 + 14) = v27;
      sub_100184D88(&_mh_execute_header, "%{public}s%{public}s", v34);
      swift_arrayDestroy();
      sub_100081C28(v24);
      sub_100081C28(v6);

      v28 = v32;
      v29 = v33;
    }

    else
    {

      v28 = v22;
      v29 = v23;
    }

    v5(v28, v29);
  }

  sub_10009F198();

  return v30(v6 & 1);
}

uint64_t sub_100181AAC()
{
  v36 = v1;
  sub_100184D40();
  Date.addingTimeInterval(_:)();
  v5 = *(v4 + 8);
  v5(v0, v3);
  static Date.now.getter();
  v6 = static Date.> infix(_:_:)();
  v5(v2, v3);
  if (v6)
  {
    v7 = v1[17];
    v5(v1[15], v1[11]);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v8 = v1[10];
    v9 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v9, qword_1003F26C8);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v10._countAndFlagsBits = sub_100184D28();
    String.append(_:)(v10);
    v11 = [v8 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12._countAndFlagsBits = sub_100184D08();
    String.append(_:)(v12);

    sub_1000B00A8();
    v13._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v13);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    TaskLocal.get()();
    v15 = v1[8];
    v14 = v1[9];
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    v31 = v16;
    v18 = os_log_type_enabled(v17, v16);
    v32 = v1[17];
    v19 = v1[15];
    v20 = v1[11];
    if (v18)
    {
      sub_10008E688();
      v30 = v20;
      v21 = sub_1000B002C();
      *v6 = 136446466;
      v33 = v21;
      v34 = 91;
      v35 = 0xE100000000000000;
      v29 = v19;
      v22._countAndFlagsBits = v15;
      v22._object = v14;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 8285;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      sub_100080210(91, 0xE100000000000000, &v33);

      sub_100184D18();
      v24 = sub_100080210(0, 0xE000000000000000, &v33);

      *(v6 + 14) = v24;
      sub_100184D88(&_mh_execute_header, "%{public}s%{public}s", v31);
      swift_arrayDestroy();
      sub_100081C28(v21);
      sub_100081C28(v6);

      v25 = v29;
      v26 = v30;
    }

    else
    {

      v25 = v19;
      v26 = v20;
    }

    v5(v25, v26);
  }

  sub_10009F198();

  return v27(v6 & 1);
}

uint64_t sub_100181E3C()
{
  sub_10008BE9C();
  v3 = v2;
  *(v1 + 16) = v0;
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_100181ED0;

  return sub_1001832C8(v3);
}

uint64_t sub_100181ED0()
{
  sub_10008BE9C();
  sub_10008C070();
  *(v1 + 32) = v0;

  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100181FC0()
{
  sub_100098BB4();
  v1 = v0[4];
  if (v1)
  {
    sub_1001077A8();
    v2 = swift_allocObject();
    v0[5] = v2;
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1001820C8;

    return sub_1001D5E3C(sub_100184BDC, v2);
  }

  else
  {
    sub_100098AC4();

    return v6();
  }
}

uint64_t sub_1001820C8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001821C8()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

id sub_100182220(void *a1)
{
  sub_100080FB4(&qword_1003D30B0, &unk_1002ED4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2E0;
  *(inited + 32) = 0x495F656C646E7562;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = sub_100183958();
  *(inited + 56) = v3;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E656B6F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_100183930();
  *(inited + 104) = v5;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "last_updated");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 168) = type metadata accessor for Date();
  v6 = sub_10009E720((inited + 144));
  sub_100183988(v6);
  *(inited + 176) = 0x64696C61765F7369;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 0;
  v7 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LegacyTransactionPropertiesEntity();
  sub_100223354(v7);
  v9 = v8;

  v10 = sub_1000DC274(v9, [a1 connection]);
  v11 = [v10 existsInDatabase];

  return v11;
}

uint64_t sub_10018269C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_1001826B0()
{
  sub_100098BB4();
  v1 = v0[5];
  sub_1001077A8();
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1001827B4;

  return sub_1001D5D00(sub_100184AE4, v3);
}

uint64_t sub_1001827B4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001828B4()
{
  sub_10008BE9C();
  sub_100184D64();
  v1 = *(v0 + 16);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_100182920(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 16;
  sub_10008E5A4(0, &qword_1003CCBB8, off_10037DC88);
  v7 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v6 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  v20 = &type metadata for String;
  v17 = v7;
  v18 = v6;

  v8 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v17);
  type metadata accessor for LegacyTransactionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [a1 connection];
  v11 = [ObjCClassFromMetadata queryOnConnection:v10 predicate:v8];

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100184B1C;
  *(v13 + 24) = v12;
  v21 = sub_1000DC764;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100223D74;
  v20 = &unk_10038CFC8;
  v14 = _Block_copy(&v17);
  v15 = a1;

  [v11 enumeratePersistentIDsUsingBlock:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100182B4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v8);
  v9 = type metadata accessor for LegacyTransactionInternal(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a4 connection];
  v14 = [objc_allocWithZone(type metadata accessor for LegacyTransactionEntity()) initWithPersistentID:a1 onConnection:v13];

  v15 = v14;
  sub_100182FE0(v15, v12);
  swift_beginAccess();
  sub_100143748();
  v16 = *(*a5 + 16);
  sub_1001437EC(v16);
  v17 = *a5;
  *(v17 + 16) = v16 + 1;
  sub_100184B24(v12, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, type metadata accessor for LegacyTransactionInternal);
  swift_endAccess();

  return sub_100184B84(v12, type metadata accessor for LegacyTransactionInternal);
}

void sub_100182FE0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = sub_100183EE4();
  v13 = sub_10014309C();
  if (v2)
  {
  }

  else
  {
    v49 = v12;
    v50 = v6;
    v47 = a2;
    v48 = v13;
    v51 = v14;
    v46 = sub_10018424C();
    v15 = sub_1001842D8();
    v17 = v16;
    v18 = sub_100184614();
    v20 = v19;
    sub_1001843DC(v11);
    sub_100183F70(v9);
    v42 = sub_1001845DC();
    v43 = v20;
    v44 = v17;
    v45 = v21;
    v22 = sub_100184170();
    v24 = v23;
    v41 = v22;
    v25 = sub_100183D3C();
    v26 = v50;
    v40 = v25;

    v27 = v18;
    v28 = v47;
    v29 = v48;
    *v47 = v49;
    v28[1] = v29;
    v30 = v46;
    v28[2] = v51;
    v28[3] = v30;
    v31 = v43;
    v32 = v44;
    v28[4] = v15;
    v28[5] = v32;
    v28[6] = v27;
    v28[7] = v31;
    v33 = type metadata accessor for LegacyTransactionInternal(0);
    v34 = *(v26 + 32);
    v34(v28 + v33[9], v11, v5);
    v34(v28 + v33[10], v9, v5);
    v35 = (v28 + v33[11]);
    v36 = v45;
    *v35 = v42;
    v35[1] = v36;
    v37 = (v28 + v33[12]);
    v38 = v40;
    *v37 = v41;
    v37[1] = v24;
    *(v28 + v33[13]) = v38;
  }
}

uint64_t sub_1001832C8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_1001832DC()
{
  sub_100098BB4();
  v1 = v0[5];
  sub_1001077A8();
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1001833D8;

  return sub_1001D5D00(sub_100184A04, v3);
}

uint64_t sub_1001833D8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001834D8()
{
  sub_10008BE9C();
  sub_100184D64();
  v1 = *(v0 + 16);
  v2 = v1;

  sub_10009F198();

  return v3(v1);
}

uint64_t sub_100183540(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 16;
  sub_10008E5A4(0, &qword_1003CCBB8, off_10037DC88);
  v7 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v6 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  v20 = &type metadata for String;
  v17 = v7;
  v18 = v6;

  v8 = sub_100223CB4(0x495F656C646E7562, 0xE900000000000044, &v17);
  type metadata accessor for LegacyTransactionPropertiesEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [a1 connection];
  v11 = [ObjCClassFromMetadata queryOnConnection:v10 predicate:v8];

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100184A3C;
  *(v13 + 24) = v12;
  v21 = sub_1000939AC;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100223D74;
  v20 = &unk_10038CF00;
  v14 = _Block_copy(&v17);
  v15 = a1;

  [v11 enumeratePersistentIDsUsingBlock:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_10018376C(uint64_t a1, int a2, _BYTE *a3, void **a4, id a5)
{
  v8 = [a5 connection];
  v9 = [objc_allocWithZone(type metadata accessor for LegacyTransactionPropertiesEntity()) initWithPersistentID:a1 onConnection:v8];

  swift_beginAccess();
  v10 = *a4;
  *a4 = v9;

  *a3 = 1;
}

id sub_100183810(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LegacyTransactionStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

uint64_t sub_100183988@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0, &qword_1002F0F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_1000AF25C(v14, &unk_1003CCB70, &unk_1002ED050);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000AF25C(v6, &qword_1003CD9A0, &qword_1002F0F80);
  }

  return result;
}

id sub_100183CE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

uint64_t sub_100183D3C()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 valueForProperty:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_1000AF25C(v9, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100080FB4(&unk_1003CD718, &qword_1002EE4F0);
  sub_100184C38(&qword_1003CD7F0, sub_1000BC8C8, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  result = sub_10008E168(v5, v6);
  if (!v1)
  {
    return *&v9[0];
  }

  return result;
}

id sub_100183EE4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberValueForProperty:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 unsignedLongLongValue];

  return v3;
}

uint64_t sub_100183F70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0, &qword_1002F0F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_1000AF25C(v14, &unk_1003CCB70, &unk_1002ED050);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000AF25C(v6, &qword_1003CD9A0, &qword_1002F0F80);
  }

  return result;
}

uint64_t sub_100184170()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringValueForProperty:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    sub_10009E7E4();
    swift_allocError();
    *v5 = 0xD000000000000017;
    *(v5 + 8) = 0x8000000100316D90;
    *(v5 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10018424C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberValueForProperty:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = [v2 unsignedIntegerValue];

  return v3;
}

uint64_t sub_1001842D8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForProperty:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000AF25C(v7, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }
}

uint64_t sub_1001843DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0, &qword_1002F0F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_1000AF25C(v14, &unk_1003CCB70, &unk_1002ED050);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000AF25C(v6, &qword_1003CD9A0, &qword_1002F0F80);
  }

  return result;
}

uint64_t sub_100184614()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForProperty:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000AF25C(v7, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }
}

id sub_100184714(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9.receiver = v3;
  v9.super_class = a3(0);
  v7 = objc_msgSendSuper2(&v9, "initWithPropertyValues:onConnection:", isa, a2);

  return v7;
}

id sub_100184834(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v8.receiver = v3;
  v8.super_class = a3(0);
  v6 = objc_msgSendSuper2(&v8, "initWithPersistentID:onConnection:", a1, a2);

  return v6;
}

id sub_1001848E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100184974(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001849D0()
{
  sub_1001077A8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184A0C()
{
  v1 = sub_10009F17C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100184A74()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100184AAC()
{

  v1 = sub_10009F17C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184AEC()
{
  v1 = sub_10009F17C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184B24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100184B84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100184BE4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100184C38(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&unk_1003CD718, &qword_1002EE4F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100184CB0()
{

  v0 = sub_10009F17C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100184D40()
{
  v2 = *(v0 + 112);

  return sub_100183988(v2);
}

uint64_t sub_100184D64()
{

  return swift_beginAccess();
}

void sub_100184D88(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

id sub_100184DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 isCancelledError];

  return v9;
}

uint64_t sub_100184F08(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  if ([v4 code] == a3)
  {
    v7 = [v4 domain];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_100186860();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_100184FB8(void *a1)
{
  v2 = a1;
  v3 = &selRef_domain;
  while (1)
  {
    v4 = v2;
    if ([v4 v3[263]])
    {
LABEL_24:

      return;
    }

    v5 = [v4 userInfo];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v6 + 16))
    {

      goto LABEL_18;
    }

    v9 = sub_1000B6328(v7, v8);
    v11 = v10;

    if (v11)
    {
      break;
    }

LABEL_18:
    v19 = [v4 userInfo];
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v20 + 16))
    {

LABEL_26:

      return;
    }

    v23 = sub_1000B6328(v21, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_100080F58(*(v20 + 56) + 32 * v23, v28);

    sub_100186738();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v2 = v29;
  }

  sub_100080F58(*(v6 + 56) + 32 * v9, v28);

  sub_100080FB4(&qword_1003D06D0, &qword_1002F6978);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = NSUnderlyingErrorKey;
  v27 = NSMultipleUnderlyingErrorsKey;
  v12 = v29;
  v13 = sub_1000AFC90(v29);
  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {

      v3 = &selRef_domain;
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_100184FB8(v15);
    v18 = v17;

    if (v1)
    {

      return;
    }

    ++v14;
    if (v18)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1001852D8(void *a1)
{
  v2 = a1;
  v3 = &selRef_redeemCodeURL;
  while (1)
  {
    v4 = v2;
    if (sub_1001857E4())
    {
LABEL_24:

      return;
    }

    v5 = [v4 v3[495]];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v6 + 16))
    {

      goto LABEL_18;
    }

    v9 = sub_1000B6328(v7, v8);
    v11 = v10;

    if (v11)
    {
      break;
    }

LABEL_18:
    v19 = [v4 v3[495]];
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v20 + 16))
    {

LABEL_26:

      return;
    }

    v23 = sub_1000B6328(v21, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_100080F58(*(v20 + 56) + 32 * v23, v28);

    sub_100186738();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v2 = v29;
  }

  sub_100080F58(*(v6 + 56) + 32 * v9, v28);

  sub_100080FB4(&qword_1003D06D0, &qword_1002F6978);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = NSUnderlyingErrorKey;
  v27 = NSMultipleUnderlyingErrorsKey;
  v12 = v29;
  v13 = sub_1000AFC90(v29);
  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {

      v3 = &selRef_redeemCodeURL;
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_1001852D8(v15);
    v18 = v17;

    if (v1)
    {

      return;
    }

    ++v14;
    if (v18)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1001855F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100186860();
  }

  return v11 & 1;
}

uint64_t sub_1001856B0()
{
  if ([v0 ams_isUserCancelledError])
  {
    return 1;
  }

  if ([v0 ak_isUserCancelError])
  {
    return 1;
  }

  if (sub_100184F08(0xD00000000000001ELL, 0x80000001003197F0, 0x3E9))
  {
    return 1;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_100184F08(v1, v2, 6);

  if (v3)
  {
    return 1;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_100184F08(v4, v5, 0x1FC);

  if (v6)
  {
    return 1;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_100184F08(v7, v8, 0x38B);

  if (v9)
  {
    return 1;
  }

  return sub_100184F08(0xD000000000000015, 0x8000000100313F50, 0xB);
}

BOOL sub_1001857E4()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_1001855F0(v1, v2);

  return (v3 & 1) != 0 && [v0 code] == -7005;
}

id sub_100185854(char *a1)
{
  v4 = v1;
  v5 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001868BC();
    if (*&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_serverCorrelationID + 8])
    {
      sub_1001867C8(&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_serverCorrelationID], v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201, v202, v203);
      v7 = a1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001867A0(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12, v13);

      v5 = v204;
    }

    else
    {
      sub_10018677C();
      v14 = a1;
      sub_10008105C(&v201);
      sub_1000B6328(v3, v2);
      if (v15)
      {
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v204 = _swiftEmptyDictionarySingleton;
        v17 = _swiftEmptyDictionarySingleton[3];
        sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17);
        v5 = v204;
        sub_100186808();
        v18 = sub_10018683C();
        v19 = sub_10008B5D0(v18, &v194);
        sub_1001867EC(v19, v20, &type metadata for String, v21, &protocol witness table for String);
      }

      else
      {
        v194 = 0u;
        v195 = 0u;
      }

      sub_10008105C(&v194);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001868BC();
    if (*&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_environment + 8])
    {
      sub_1001867C8(&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_environment], v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201, v202, v203);

      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_1001867A0(v22, v23, v24, v25, v26, v27);

      v5 = v204;
    }

    else
    {
      sub_10018677C();
      sub_10008105C(&v201);
      sub_1001868A0();
      if (v28)
      {
        sub_100186908();
        v204 = v5;
        sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
        sub_1001868C8();
        v5 = v204;
        sub_100186808();
        v29 = sub_10018683C();
        v30 = sub_10008B5D0(v29, &v194);
        sub_1001867EC(v30, v31, &type metadata for String, v32, &protocol witness table for String);
      }

      else
      {
        v194 = 0u;
        v195 = 0u;
      }

      sub_10008105C(&v194);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001868BC();
    if (*&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_storefrontCountryCode + 8])
    {
      sub_1001867C8(&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_storefrontCountryCode], v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201, v202, v203);

      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_1001867A0(v33, v34, v35, v36, v37, v38);

      v5 = v204;
    }

    else
    {
      sub_10018677C();
      sub_10008105C(&v201);
      sub_1001868A0();
      if (v39)
      {
        sub_100186908();
        v204 = v5;
        sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
        sub_1001868C8();
        v5 = v204;
        sub_100186808();
        v40 = sub_10018683C();
        v41 = sub_10008B5D0(v40, &v194);
        sub_1001867EC(v41, v42, &type metadata for String, v43, &protocol witness table for String);
      }

      else
      {
        v194 = 0u;
        v195 = 0u;
      }

      sub_10008105C(&v194);
    }
  }

  v44 = [v1 userInfo];
  v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v46, v47, v45, &v201);

  if (v203)
  {
    v54 = sub_100186884(&v204, v48, v49, &type metadata for Int, v50, v51, v52, v53, v186, v187, v188, v189, v190, v191, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, v197);
    if (v54)
    {
      v55 = 0;
      v56 = v204;
LABEL_23:
      v205 = 0;
      goto LABEL_36;
    }

    v204 = 0;
    v57 = v54 ^ 1;
  }

  else
  {
    sub_10008105C(&v201);
    v204 = 0;
    v57 = 1;
  }

  v205 = v57;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v58, v59, v5, &v201);

  if (!v203)
  {
    sub_10008105C(&v201);
LABEL_33:
    sub_10018677C();
    goto LABEL_34;
  }

  v60 = sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
  if ((sub_100186884(&v194, v61, v62, v60, v63, v64, v65, v66, v186, v187, v188, v189, v190, v191, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, v197) & 1) == 0 || !v194)
  {
    goto LABEL_33;
  }

  sub_1001DA990(0x546572756C696166, 0xEB00000000657079, v194, &v201);

  if (!v203)
  {
LABEL_34:
    sub_10008105C(&v201);
    goto LABEL_35;
  }

  if (sub_100186884(&v194, v67, v68, &type metadata for Int, v69, v70, v71, v72, v186, v187, v188, v189, v190, v191, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, v197))
  {
    v55 = 0;
    v56 = v194;
    v204 = v194;
    goto LABEL_23;
  }

LABEL_35:
  v56 = 0;
  v204 = 0;
  v55 = 1;
  v205 = 1;
LABEL_36:
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v55)
  {
    sub_1000B6328(v73, v74);
    if (v81)
    {
      v82 = sub_100186908();
      sub_100186854();
      sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
      sub_100186848();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v82, v5);
      v5 = v194;
      sub_100186808();
      v83 = sub_10018683C();
      v84 = sub_10008B5D0(v83, &v201);
      sub_1001867EC(v84, v85, &type metadata for String, v86, &protocol witness table for String);
    }

    else
    {
      sub_10018677C();
    }

    sub_10008105C(&v201);
  }

  else
  {
    v203 = &type metadata for Int;
    *&v201 = v56;
    sub_100186824(v73, v74, v75, v76, v77, v78, v79, v80, v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10018678C();
    sub_10023E7C0();

    v5 = v191;
  }

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = sub_1001855F0(v87, v88);

  if (v89)
  {
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
    v93 = sub_1001866D4(v4);
    if (v94)
    {
      v203 = &type metadata for String;
      *&v201 = v93;
      *(&v201 + 1) = v94;
      sub_100186824(v93, v94, v95, v96, v97, v98, v99, v100, v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018678C();
      sub_10023E7C0();

      v5 = v192;
    }

    else
    {
      v121 = sub_1000B6328(v90, v92);
      if (v122)
      {
        v123 = v121;
        v124 = swift_isUniquelyReferenced_nonNull_native();
        sub_100186854();
        sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
        sub_100186848();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v124, v5);
        v5 = v194;

        sub_10008B5D0((v5[7] + 32 * v123), &v201);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10018677C();
      }

      sub_10008105C(&v201);
    }

    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;
    v144 = [v4 code];
    objc_allocWithZone(NSError);

    v145 = v141;
    v146 = v143;
    v147 = v144;
LABEL_59:
    v148 = v5;
LABEL_60:
    v102 = sub_100212920(v145, v146, v147, v148);
    goto LABEL_82;
  }

  sub_100184FB8(v4);
  if ((v101 & 1) == 0)
  {
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = sub_100184F08(v104, v105, 0x131);

    if (v106)
    {
      if (v205)
      {
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;
        v110 = _convertErrorToNSError(_:)();
        v111 = ASDErrorWithSafeUserInfo();

        if (v111)
        {
          swift_getErrorValue();
          v203 = v188;
          v112 = sub_10009E720(&v201);
          (*(*(v188 - 1) + 16))(v112, v187, v188);

          sub_100186824(v113, v114, v115, v116, v117, v118, v119, v120, v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10018678C();
          sub_10023E7C0();

LABEL_80:
          type metadata accessor for ASDError(0);
          v176 = 500;
          goto LABEL_81;
        }

LABEL_66:
        v161 = sub_1000B6328(v107, v109);
        if (v162)
        {
          v163 = v161;
          v164 = swift_isUniquelyReferenced_nonNull_native();
          sub_100186854();
          sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
          sub_100186848();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v164, v5);
          sub_1001868E8();
          sub_10008B5D0((v5[7] + 32 * v163), &v201);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10018677C();
        }

        sub_10008105C(&v201);
        goto LABEL_80;
      }

      v149 = v204;
      if (v204 != 3705)
      {
        v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = v151;
        v153 = sub_1001866D4(v4);
        if (v154)
        {
          v203 = &type metadata for String;
          *&v201 = v153;
          *(&v201 + 1) = v154;
          sub_100186824(v153, v154, v155, v156, v157, v158, v159, v160, v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10018678C();
          sub_10023E7C0();

          v5 = v193;
        }

        else
        {
          v171 = sub_1000B6328(v150, v152);
          if (v172)
          {
            v173 = v171;
            v174 = swift_isUniquelyReferenced_nonNull_native();
            sub_100186854();
            sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
            sub_100186848();
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v174, v5);
            sub_1001868E8();
            sub_10008B5D0((v5[7] + 32 * v173), &v201);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            sub_10018677C();
          }

          sub_10008105C(&v201);
        }

        v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v185 = v184;
        objc_allocWithZone(NSError);

        v145 = v183;
        v146 = v185;
        v147 = v149;
        goto LABEL_59;
      }
    }

    else
    {
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v126;
      v127 = sub_1001855F0(v125, v126);

      if ((v127 & 1) == 0)
      {
        v109 = _convertErrorToNSError(_:)();
        v102 = ASDErrorWithSafeUserInfo();

        if (v102)
        {
          goto LABEL_82;
        }

        __break(1u);
        goto LABEL_66;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001868BC();
      v128 = _convertErrorToNSError(_:)();
      v129 = ASDErrorWithSafeUserInfo();

      if (v129)
      {
        swift_getErrorValue();
        v130 = v197;
        v131 = v198;
        v203 = v198;
        v132 = sub_10009E720(&v201);
        (*(*(v131 - 1) + 16))(v132, v130, v131);

        sub_100186824(v133, v134, v135, v136, v137, v138, v139, v140, v186, v187, v188, v189, v190, v191, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *v200, *&v200[8], v201);
        swift_isUniquelyReferenced_nonNull_native();
        sub_10018678C();
        sub_10023E7C0();
      }

      else
      {
        sub_1001868A0();
        if (v165)
        {
          v166 = sub_100186908();
          sub_100186854();
          sub_100080FB4(&qword_1003CCA88, &qword_1002ED070);
          sub_100186848();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v166, v5);
          sub_100186808();
          v167 = sub_10018683C();
          v168 = sub_10008B5D0(v167, &v201);
          sub_1001867EC(v168, v169, &type metadata for String, v170, &protocol witness table for String);
        }

        else
        {
          sub_10018677C();
        }

        sub_10008105C(&v201);
      }

      v175 = [v4 code];
      if (v175 == 12)
      {
        type metadata accessor for ASDError(0);
        v176 = 512;
        goto LABEL_81;
      }

      if (v175 == 100)
      {
        sub_1001852D8(v4);
        if (v178)
        {
          v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v181 = v180;
          v182 = objc_allocWithZone(NSError);
          v145 = v179;
          v146 = v181;
          v147 = -1004;
          v148 = 0;
          goto LABEL_60;
        }

        type metadata accessor for ASDError(0);
        v176 = 530;
LABEL_81:
        *&v194 = v176;
        sub_10008B578();

        _BridgedStoredNSError.init(_:userInfo:)();
        v102 = v201;
        goto LABEL_82;
      }

      if (v175 != 511)
      {
        goto LABEL_80;
      }
    }

    type metadata accessor for ASDError(0);
    v176 = 1052;
    goto LABEL_81;
  }

  sub_10008B5E0();
  v102 = swift_allocError();
  *v103 = 11;
LABEL_82:

  return v102;
}

id sub_100186564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a2);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v5 + 8))(v7, a2);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v9, v7, a2);
  }

  v10 = _convertErrorToNSError(_:)();

  v11 = [v10 toASDErrorWithMetadata:a1];

  return v11;
}

uint64_t sub_1001866D4(void *a1)
{
  v1 = [a1 ams_message];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100186738()
{
  result = qword_1003CF458[0];
  if (!qword_1003CF458[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1003CF458);
  }

  return result;
}

double sub_10018677C()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  return result;
}

_OWORD *sub_1001867A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  *(v7 - 112) = v6;

  return sub_10023E7C0();
}

_OWORD *sub_1001867C8@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  v22 = *a1;
  a19 = v20;
  *&a17 = v22;
  *(&a17 + 1) = v19;

  return sub_10008B5D0(&a17, &a8);
}

uint64_t sub_1001867EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_100186808()
{
}

_OWORD *sub_100186824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24)
{

  return sub_10008B5D0(&a24, &a15);
}

uint64_t sub_100186860()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100186884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{

  return swift_dynamicCast();
}

unint64_t sub_1001868A0()
{

  return sub_1000B6328(v1, v0);
}

BOOL sub_1001868C8()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_1001868E8()
{
}

uint64_t sub_100186908()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 sub_100186920(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100186934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100186974(uint64_t result, int a2, int a3)
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

uint64_t sub_1001869EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684632420 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100186B04(char a1)
{
  if (!a1)
  {
    return 0x49746E756F636361;
  }

  if (a1 == 1)
  {
    return 1684632420;
  }

  return 0x656D616E72657375;
}

uint64_t sub_100186B58(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D0700, &qword_1002F6B78);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  sub_100086D24(a1, a1[3]);
  sub_1001879A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v15[15] = 0;
  sub_10014E070(v11);
  if (!v2)
  {
    v12 = v3[2];
    v15[14] = 1;
    sub_10014E070(v12);
    v13 = v3[4];
    v15[13] = 2;
    sub_10014E070(v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100186CB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100080FB4(&qword_1003D0720, &qword_1002F6B88);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100086D24(a1, a1[3]);
  sub_1001879A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v25 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_100080F0C(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_100186ED4(char a1)
{
  if (a1)
  {
    return 0x54746E756F636361;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_100186F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079)
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

uint64_t sub_1001870A4(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void *), uint64_t a8)
{
  v19[0] = a3;
  v20 = a4;
  v10 = sub_100080FB4(a5, a6);
  sub_1000890DC();
  v12 = v11;
  sub_100089118();
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  v16 = sub_100086D24(a1, a1[3]);
  a7(v16);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v17 = v19[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v17)
  {
    v22 = v20;
    v21 = 1;
    sub_100187A4C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_100187264(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_100080FB4(a2, a3);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v8);
  v9 = a1[3];
  sub_100086D24(a1, v9);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100187950();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = sub_1000E3F18();
    v12(v11);
  }

  sub_100080F0C(a1);
  return v9;
}

uint64_t sub_100187444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001869EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018746C(uint64_t a1)
{
  v2 = sub_1001879A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001874A8(uint64_t a1)
{
  v2 = sub_1001879A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001874E4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100186CB0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100187548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100186F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100187570(uint64_t a1)
{
  v2 = sub_1001879F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001875AC(uint64_t a1)
{
  v2 = sub_1001879F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100187678(uint64_t a1)
{
  v2 = sub_1001878FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001876B4(uint64_t a1)
{
  v2 = sub_1001878FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100187734@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = sub_100187264(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9;
    *(a6 + 16) = v10;
  }

  return result;
}

unint64_t sub_1001877EC()
{
  result = qword_1003D06D8;
  if (!qword_1003D06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06D8);
  }

  return result;
}

uint64_t sub_10018786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001878A8()
{
  result = qword_1003D06E0;
  if (!qword_1003D06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06E0);
  }

  return result;
}

unint64_t sub_1001878FC()
{
  result = qword_1003D06F0;
  if (!qword_1003D06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06F0);
  }

  return result;
}

unint64_t sub_100187950()
{
  result = qword_1003D06F8;
  if (!qword_1003D06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06F8);
  }

  return result;
}

unint64_t sub_1001879A4()
{
  result = qword_1003D0708;
  if (!qword_1003D0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0708);
  }

  return result;
}

unint64_t sub_1001879F8()
{
  result = qword_1003D0718;
  if (!qword_1003D0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0718);
  }

  return result;
}

unint64_t sub_100187A4C()
{
  result = qword_1003D0730;
  if (!qword_1003D0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0730);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100187B80);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100187BB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100187C84);
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

unint64_t sub_100187CC0()
{
  result = qword_1003D0740;
  if (!qword_1003D0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0740);
  }

  return result;
}

unint64_t sub_100187D18()
{
  result = qword_1003D0748;
  if (!qword_1003D0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0748);
  }

  return result;
}

unint64_t sub_100187D70()
{
  result = qword_1003D0750;
  if (!qword_1003D0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0750);
  }

  return result;
}

unint64_t sub_100187DC8()
{
  result = qword_1003D0758;
  if (!qword_1003D0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0758);
  }

  return result;
}

unint64_t sub_100187E20()
{
  result = qword_1003D0760;
  if (!qword_1003D0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0760);
  }

  return result;
}

unint64_t sub_100187E78()
{
  result = qword_1003D0768;
  if (!qword_1003D0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0768);
  }

  return result;
}

unint64_t sub_100187ED0()
{
  result = qword_1003D0770;
  if (!qword_1003D0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0770);
  }

  return result;
}

unint64_t sub_100187F28()
{
  result = qword_1003D0778;
  if (!qword_1003D0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0778);
  }

  return result;
}

unint64_t sub_100187F80()
{
  result = qword_1003D0780[0];
  if (!qword_1003D0780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003D0780);
  }

  return result;
}

uint64_t sub_10018803C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 112);

  sub_1001DAA9C(a1, a2, v8, &v12);

  if (v13)
  {
    sub_100188190(&v12);
LABEL_5:
    type metadata accessor for TransactionCacheManager();
    swift_allocObject();
    v10 = a4;
    Strong = sub_100109560(v10);
    swift_weakInit();
    swift_weakAssign();
    v14 = 0;
    swift_beginAccess();

    sub_1002350E0();
    swift_endAccess();

    return Strong;
  }

  Strong = swift_weakLoadStrong();
  sub_100188190(&v12);
  if (!Strong)
  {
    goto LABEL_5;
  }

  return Strong;
}

uint64_t sub_100188190(uint64_t a1)
{
  v2 = sub_100080FB4(&qword_1003D0808, qword_1002F6F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001881F8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(AMSURLParser) initWithBag:a2];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 typeForURL:v4];

  v12 = 0;
  v7 = [v6 resultWithError:&v12];

  v8 = v12;
  if (v7)
  {
    v9 = v12;
    v8 = [v7 integerValue];
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

Class sub_10018832C(uint64_t a1, uint64_t a2)
{
  isa = v2;
  v6 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012A7F8(a1, v8);
  if (sub_100081D0C(v8, 1, v9) == 1)
  {
    sub_100146014(v8);
    sub_1001887F8();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (a2)
    {
      swift_unknownObjectRetain();
      v14 = sub_1001881F8(v12, a2);
      if (v2)
      {
        v15 = sub_1001889EC();
        v16(v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = v14;
        sub_10018884C();
        isa = NSNumber.init(integerLiteral:)(v21).super.super.isa;
        swift_unknownObjectRelease();
        v22 = sub_1001889EC();
        v23(v22);
      }
    }

    else
    {
      sub_1001887F8();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      v18 = sub_1001889EC();
      v19(v18);
    }
  }

  return isa;
}

id sub_100188748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_URLParserHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001887A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_URLParserHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001887F8()
{
  result = qword_1003D0838;
  if (!qword_1003D0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0838);
  }

  return result;
}

unint64_t sub_10018884C()
{
  result = qword_1003D0520;
  if (!qword_1003D0520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D0520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLParserHelper.ParserError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10018895CLL);
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

unint64_t sub_100188998()
{
  result = qword_1003D0840;
  if (!qword_1003D0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0840);
  }

  return result;
}

uint64_t sub_1001889FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100188A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100188AB4()
{
  result = qword_1003D0848;
  if (!qword_1003D0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0848);
  }

  return result;
}

uint64_t sub_100188B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Client.Server(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v58 - v12;
  sub_1001DA1F0();
  v22 = v14;
  v24 = *(v14 + 16);
  v23 = *(v14 + 24);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    sub_10018918C(v23 > 1, v24 + 1);
    v22 = v14;
  }

  *(v22 + 16) = v25;
  v26 = v22 + 24 * v24;
  *(v26 + 32) = 1;
  *(v26 + 40) = 0xD000000000000011;
  *(v26 + 48) = 0x800000010031B420;
  if (a5)
  {
    v27 = *(v22 + 24);
    v28 = v24 + 2;

    if ((v24 + 2) > (v27 >> 1))
    {
      sub_10018918C(v27 > 1, v24 + 2);
      v22 = v29;
    }

    v37 = 3;
  }

  else
  {
    sub_1001A7E5C(v14, v15, v16, v17, v18, v19, v20, v21, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    v38 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    v39 = sub_100081D0C(v13, 2, v38);
    v29 = sub_100094BEC(v13);
    if (v39 != 1)
    {
      goto LABEL_12;
    }

    v59 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
    sub_1000DCFE0();
    v29 = String.init<A>(_:radix:uppercase:)();
    a4 = v29;
    a5 = v30;
    v25 = *(v22 + 16);
    v40 = *(v22 + 24);
    v28 = v25 + 1;
    if (v25 >= v40 >> 1)
    {
      sub_10018918C(v40 > 1, v25 + 1);
      v22 = v29;
    }

    v37 = 0;
  }

  *(v22 + 16) = v28;
  v41 = v22 + 24 * v25;
  *(v41 + 32) = v37;
  *(v41 + 40) = a4;
  *(v41 + 48) = a5;
LABEL_12:
  sub_1001A7E5C(v29, v30, v31, v32, v33, v34, v35, v36, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v42 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  v43 = sub_100081D0C(v11, 2, v42);
  if (v43)
  {
    if (v43 != 1)
    {
      if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
      {
        v44 = 0x67696C6674736574;
      }

      else
      {
        v44 = 0x786F62646E6173;
      }

      if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
      {
        v45 = 0xEA00000000007468;
      }

      else
      {
        v45 = 0xE700000000000000;
      }

      v47 = *(v22 + 16);
      v46 = *(v22 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_10018918C(v46 > 1, v47 + 1);
        v22 = v57;
      }

      *(v22 + 16) = v47 + 1;
      v48 = v22 + 24 * v47;
      *(v48 + 32) = 2;
      *(v48 + 40) = v44;
      *(v48 + 48) = v45;
    }
  }

  else
  {
    v50 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v49 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
    v51 = *(v22 + 16);
    v52 = *(v22 + 24);

    if (v51 >= v52 >> 1)
    {
      sub_10018918C(v52 > 1, v51 + 1);
      v22 = v56;
    }

    *(v22 + 16) = v51 + 1;
    v53 = v22 + 24 * v51;
    *(v53 + 32) = 0;
    *(v53 + 40) = v50;
    *(v53 + 48) = v49;
    v54 = type metadata accessor for URL();
    (*(*(v54 - 8) + 8))(v11, v54);
  }

  return v22;
}

id sub_100188E80()
{
  if (qword_1003CBFD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F2840;
  qword_1003F2600 = qword_1003F2840;

  return v1;
}

unint64_t sub_100188EE4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383A38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100188F30(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 7761509;
      break;
    case 3:
      result = 0x6449796C696D6166;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100188FD4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100188EE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100189004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100188F30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ManageSubscriptionsEngagementDestination.QueryParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001890FCLL);
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

unint64_t sub_100189138()
{
  result = qword_1003D08A0;
  if (!qword_1003D08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08A0);
  }

  return result;
}

void sub_10018918C(uint64_t a1, uint64_t a2)
{

  sub_1001DA1F0();
}

id sub_1001891A4()
{
  sub_100189320();
  result = sub_1001891F4(0xD000000000000022, 0x800000010031B440, 1);
  qword_1003D08A8 = result;
  return result;
}

id sub_1001891F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

uint64_t sub_100189260()
{
  v1 = [objc_allocWithZone(AMSMetricsIdentifierStore) init];
  [v1 setAccount:v0];
  if (qword_1003CBE20 != -1)
  {
    swift_once();
  }

  v2 = [v1 identifierForKey:qword_1003D08A8];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100189320()
{
  result = qword_1003D08B0;
  if (!qword_1003D08B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D08B0);
  }

  return result;
}

unint64_t sub_100189378()
{
  result = qword_1003D08B8;
  if (!qword_1003D08B8)
  {
    sub_1000852D4(&qword_1003D08C0, qword_1002F71D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08B8);
  }

  return result;
}

uint64_t sub_1001893DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67696C6674736574 && a2 == 0xEA00000000007468)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001894F8(char a1)
{
  if (!a1)
  {
    return 0x69746375646F7270;
  }

  if (a1 == 1)
  {
    return 0x786F62646E6173;
  }

  return 0x67696C6674736574;
}

uint64_t sub_100189560(void *a1, int a2)
{
  v33 = a2;
  sub_100080FB4(&qword_1003D08D0, &qword_1002F72D0);
  sub_1000890DC();
  v31 = v4;
  v32 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_100080FB4(&qword_1003D08D8, &qword_1002F72D8);
  sub_1000890DC();
  v28 = v8;
  v29 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100080FB4(&qword_1003D08E0, &qword_1002F72E0);
  sub_1000890DC();
  v27 = v13;
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_100080FB4(&qword_1003D08E8, &qword_1002F72E8);
  sub_1000890DC();
  v19 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_100086D24(a1, a1[3]);
  sub_10018A0D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_10018A178();
      sub_1000EFB1C(&type metadata for AccountType.SandboxCodingKeys);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_10018A124();
      v24 = v30;
      sub_1000EFB1C(&type metadata for AccountType.TestflightCodingKeys);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10018A1CC();
    sub_1000EFB1C(&type metadata for AccountType.ProductionCodingKeys);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10018987C(void *a1)
{
  v63 = sub_100080FB4(&qword_1003D0910, &qword_1002F72F0);
  sub_1000890DC();
  v61 = v2;
  sub_100089118();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_100080FB4(&qword_1003D0918, &qword_1002F72F8);
  sub_1000890DC();
  v58 = v5;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_100080FB4(&qword_1003D0920, &qword_1002F7300);
  sub_1000890DC();
  v57 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_100080FB4(&qword_1003D0928, &unk_1002F7308);
  sub_1000890DC();
  v62 = v15;
  sub_100089118();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_100086D24(a1, v17);
  sub_10018A0D0();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100162698(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100162694(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_10018A178();
          v35 = v55;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_1000893A0();
            v37(v36);
LABEL_21:
            sub_100080F0C(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_10018A124();
          v17 = v59;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_1000893A0();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_1000893A0();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_10018A1CC();
        v43 = v54;
        sub_1000893B0();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100089250();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100089250();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100080FB4(&qword_1003CC798, &qword_1002EBEF0);
    *v40 = &type metadata for AccountType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100089250();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100080F0C(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100189E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001893DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100189E40(uint64_t a1)
{
  v2 = sub_10018A0D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189E7C(uint64_t a1)
{
  v2 = sub_10018A0D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189EB8(uint64_t a1)
{
  v2 = sub_10018A1CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189EF4(uint64_t a1)
{
  v2 = sub_10018A1CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189F30(uint64_t a1)
{
  v2 = sub_10018A178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189F6C(uint64_t a1)
{
  v2 = sub_10018A178();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189FA8(uint64_t a1)
{
  v2 = sub_10018A124();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189FE4(uint64_t a1)
{
  v2 = sub_10018A124();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018A020@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018987C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10018A07C()
{
  result = qword_1003D08C8;
  if (!qword_1003D08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08C8);
  }

  return result;
}

unint64_t sub_10018A0D0()
{
  result = qword_1003D08F0;
  if (!qword_1003D08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08F0);
  }

  return result;
}

unint64_t sub_10018A124()
{
  result = qword_1003D08F8;
  if (!qword_1003D08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08F8);
  }

  return result;
}

unint64_t sub_10018A178()
{
  result = qword_1003D0900;
  if (!qword_1003D0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0900);
  }

  return result;
}

unint64_t sub_10018A1CC()
{
  result = qword_1003D0908;
  if (!qword_1003D0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0908);
  }

  return result;
}

_BYTE *sub_10018A224(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10018A2F0);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10018A35C()
{
  result = qword_1003D0930;
  if (!qword_1003D0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0930);
  }

  return result;
}

unint64_t sub_10018A3B4()
{
  result = qword_1003D0938;
  if (!qword_1003D0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0938);
  }

  return result;
}

unint64_t sub_10018A40C()
{
  result = qword_1003D0940;
  if (!qword_1003D0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0940);
  }

  return result;
}

unint64_t sub_10018A464()
{
  result = qword_1003D0948;
  if (!qword_1003D0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0948);
  }

  return result;
}

unint64_t sub_10018A4BC()
{
  result = qword_1003D0950;
  if (!qword_1003D0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0950);
  }

  return result;
}

unint64_t sub_10018A514()
{
  result = qword_1003D0958;
  if (!qword_1003D0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0958);
  }

  return result;
}

unint64_t sub_10018A56C()
{
  result = qword_1003D0960;
  if (!qword_1003D0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0960);
  }

  return result;
}

unint64_t sub_10018A5C4()
{
  result = qword_1003D0968;
  if (!qword_1003D0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0968);
  }

  return result;
}

unint64_t sub_10018A61C()
{
  result = qword_1003D0970;
  if (!qword_1003D0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0970);
  }

  return result;
}

void sub_10018A674(uint64_t a1, unint64_t a2, void *a3)
{
  v154 = a1;
  v155 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100093D40();
  v10 = v9 - v8;
  v11 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v12 = sub_1000B01B0(v11);
  __chkstk_darwin(v12);
  sub_10018ECCC();
  v144 = v13;
  sub_10018ED10();
  __chkstk_darwin(v14);
  v16 = &v139[-v15];
  v17 = type metadata accessor for URL();
  sub_1000890DC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10018ECCC();
  v147 = v21;
  sub_10018ED10();
  __chkstk_darwin(v22);
  sub_10018ED54();
  v146 = v23;
  sub_10018ED10();
  __chkstk_darwin(v24);
  sub_10018ED54();
  v148 = v25;
  sub_10018ED10();
  __chkstk_darwin(v26);
  sub_10018ED54();
  v149 = v27;
  sub_10018ED10();
  __chkstk_darwin(v28);
  v30 = &v139[-v29];
  v150 = *(v6 + 104);
  (v150)(v10, enum case for URL.DirectoryHint.checkFileSystem(_:), v4);
  sub_10018C804(a3, v10);
  v151 = *(v6 + 8);
  v151(v10, v4);
  v31 = sub_100123E24();
  if (sub_100081D0C(v31, v32, v17) == 1)
  {
    sub_100146014(v16);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v33 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v33, qword_1003F26C8);
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    sub_1000C446C();
    v156 = 0xD00000000000001ELL;
    v157 = v34;
    v35 = [a3 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E40();

    v36._countAndFlagsBits = sub_1000B7EA0();
    String.append(_:)(v36);

    v37 = static os_log_type_t.error.getter();

    v38 = Logger.logObject.getter();

    if (os_log_type_enabled(v38, v37))
    {
      sub_1000B7DC8();
      v39 = swift_slowAlloc();
      sub_1000B7DBC();
      v40 = swift_slowAlloc();
      v156 = v40;
      *v39 = 136446466;
      v42 = sub_100093CF0(v40, v41, &v156);
      v43 = sub_100093BF8(v42);
      v45 = sub_10018EDEC(v43, v44, &v156);

      *(v39 + 14) = v45;
      sub_10017C91C(&_mh_execute_header, v46, v47, "%{public}s%{public}s");
      sub_1000B0010();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    return;
  }

  v145 = v19;
  v48 = *(v19 + 32);
  v152 = v30;
  v143 = v17;
  v48(v30, v16, v17);
  v142 = a3;
  sub_10018C880(a3);
  if (!v49)
  {
    goto LABEL_14;
  }

  v50 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v158 = 0;
  v141 = v50;
  v52 = [(__CFString *)v50 JSONObjectWithData:isa options:1 error:&v158];

  v53 = v158;
  if (!v52)
  {
    v59 = v53;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v153 = 0;
LABEL_14:
    sub_1000BC808(v154, v155);
    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10008E5A4(0, &qword_1003D0978, NSMutableDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v54 = v158;
  v55 = String._bridgeToObjectiveC()();

  v156 = 0x656D614E707061;
  v157 = 0xE700000000000000;
  [v54 __swift_setObject:v55 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v156 = 0;
  v56 = [(__CFString *)v141 dataWithJSONObject:v54 options:1 error:&v156];
  v57 = v156;
  if (!v56)
  {
    v128 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_25;
  }

  v154 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v155 = v58;

LABEL_15:
  v60 = objc_opt_self();
  v61 = [v60 defaultManager];
  v62 = sub_10024EC2C();

  v63 = [v60 defaultManager];
  URL._bridgeToObjectiveC()(v64);
  v66 = v65;
  if ((v62 & 0x100) != 0 || (v62 & 1) == 0)
  {
    v156 = 0;
    v94 = [v63 createDirectoryAtURL:v65 withIntermediateDirectories:1 attributes:0 error:&v156];

    v69 = v155;
    v68 = v156;
    if (v94)
    {
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v95;
      (v150)(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
      sub_100106050();
      v96 = v68;
      v97 = v147;
      v98 = v152;
      URL.appending<A>(path:directoryHint:)();
      v99 = sub_10018ED1C();
      v100(v99);

      v102 = v153;
      v101 = v154;
      Data.write(to:options:)();
      v103 = v143;
      if (v102)
      {
        sub_10008E168(v101, v69);
        v89 = *(v145 + 8);
        v89(v97, v103);
        v104 = v98;
        v105 = v103;
LABEL_28:
        v89(v104, v105);
        return;
      }

      v108 = *(v145 + 8);
      v108(v97, v143);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v156 = 0;
  v67 = [v63 URLForDirectory:99 inDomain:1 appropriateForURL:v65 create:1 error:&v156];

  v69 = v155;
  v68 = v156;
  if (!v67)
  {
LABEL_24:
    v106 = v68;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10008E168(v154, v69);
LABEL_25:
    (*(v145 + 8))(v152, v143);
    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v68;

  v141 = @"Configuration.storekit";
  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v71;
  v140 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v150(v10);
  v72 = sub_100106050();
  v73 = v148;
  v147 = v72;
  URL.appending<A>(path:directoryHint:)();
  v74 = sub_10018ED1C();
  v75(v74);

  v76 = [v60 defaultManager];
  URL._bridgeToObjectiveC()(v77);
  v79 = v78;
  v156 = 0;
  v80 = [v76 createDirectoryAtURL:v78 withIntermediateDirectories:0 attributes:0 error:&v156];

  v81 = v156;
  if (!v80)
  {
    v107 = v156;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v89 = *(v145 + 8);
    v90 = v143;
    v89(v73, v143);
    v91 = v149;
    sub_10018C964();
    v92 = v154;
    v93 = v155;
    goto LABEL_27;
  }

  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v82;
  (v150)(v10, v140, v4);
  v83 = v81;
  v84 = v146;
  URL.appending<A>(path:directoryHint:)();
  v85 = sub_10018ED1C();
  v86(v85);

  v87 = v154;
  v69 = v155;
  v88 = v153;
  Data.write(to:options:)();
  if (v88)
  {
    v89 = *(v145 + 8);
    v90 = v143;
    v89(v84, v143);
    v89(v73, v90);
    v91 = v149;
    sub_10018C964();
    v92 = v87;
    v93 = v69;
LABEL_27:
    sub_10008E168(v92, v93);
    v89(v91, v90);
    v104 = v152;
    v105 = v90;
    goto LABEL_28;
  }

  v153 = 0;
  v129 = *(v145 + 8);
  v103 = v143;
  v150 = (v145 + 8);
  v151 = v129;
  v129(v84, v143);
  v130 = [v60 defaultManager];
  v156 = 46;
  v157 = 0xE100000000000000;
  v131._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v131);

  v132 = v144;
  v133 = v153;
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (v133)
  {
    v134 = v151;
    v151(v148, v103);

    v135 = v149;
    sub_10018C964();
    sub_10008E168(v87, v69);
    v134(v135, v103);
    v134(v152, v103);
    return;
  }

  sub_100146014(v132);
  v137 = v151;
  v151(v148, v103);
  v138 = v149;
  sub_10018C964();
  v137(v138, v103);
  v108 = v137;
LABEL_30:
  v151 = v108;
  v155 = v69;
  v153 = 0;
  v109 = v142;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v110 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v110, qword_1003F26C8);
  v156 = 0;
  v157 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  sub_1000C446C();
  v156 = 0xD00000000000001DLL;
  v157 = v111;
  v112 = [v109 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v113._countAndFlagsBits = sub_1000B7EA0();
  String.append(_:)(v113);

  v114 = v156;
  v115 = v157;
  v116 = [v109 logKey];
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;

  v120 = static os_log_type_t.debug.getter();

  v121 = Logger.logObject.getter();

  if (os_log_type_enabled(v121, v120))
  {
    sub_1000B7DC8();
    v122 = swift_slowAlloc();
    sub_1000B7DBC();
    v158 = swift_slowAlloc();
    *v122 = 136446466;
    v156 = 91;
    v157 = 0xE100000000000000;
    v123._countAndFlagsBits = v117;
    v123._object = v119;
    String.append(_:)(v123);
    v124._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v124);
    v125 = v114;
    v126 = sub_100080210(v156, v157, &v158);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2082;
    v127 = sub_100080210(v125, v115, &v158);

    *(v122 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v121, v120, "%{public}s%{public}s", v122, 0x16u);
    swift_arrayDestroy();
    v103 = v143;
    sub_1000B7D68();

    v109 = v142;
    sub_1000B7D68();
  }

  else
  {
  }

  v136 = v151;
  sub_10018CA84(v109);
  sub_10008E168(v154, v155);
  v136(v152, v103);
}

void sub_10018B51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v90 = a3;
  v91 = a4;
  v92 = a1;
  v93 = a2;
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100093D40();
  sub_10018ED2C();
  v13 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v13);
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = v86 - v15;
  v17 = type metadata accessor for URL();
  sub_1000890DC();
  v97 = v18;
  __chkstk_darwin(v19);
  sub_10018ECCC();
  v89 = v20;
  sub_10018ED10();
  __chkstk_darwin(v21);
  sub_10018ED54();
  v98 = v22;
  sub_10018ED10();
  __chkstk_darwin(v23);
  v96 = v86 - v24;
  v94 = *(v11 + 104);
  v94(v7, enum case for URL.DirectoryHint.checkFileSystem(_:), v9);
  sub_10018C804(a5, v7);
  v25 = sub_1000B7EA0();
  v95 = v26;
  v26(v25);
  if (sub_100081D0C(v16, 1, v17) == 1)
  {
    sub_100146014(v16);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v27 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v27, qword_1003F26C8);
    sub_10018ED74();

    sub_1000C446C();
    v100 = 0xD00000000000001ELL;
    v101 = v28;
    v29 = [a5 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E40();

    v30._countAndFlagsBits = sub_1000B7EA0();
    String.append(_:)(v30);

    v31 = static os_log_type_t.error.getter();

    v32 = Logger.logObject.getter();

    if (os_log_type_enabled(v32, v31))
    {
      sub_1000B7DC8();
      v33 = swift_slowAlloc();
      sub_1000B7DBC();
      v34 = swift_slowAlloc();
      v100 = v34;
      *v33 = 136446466;
      v36 = sub_100093CF0(v34, v35, &v100);
      v37 = sub_100093BF8(v36);
      v39 = sub_10018EDEC(v37, v38, &v100);

      *(v33 + 14) = v39;
      sub_10017C91C(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
      sub_1000B0010();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }
  }

  else
  {
    v86[1] = v5;
    v87 = a5;
    v88 = v6;
    (*(v97 + 32))(v96, v16, v17);
    v100 = 0x737465737341;
    v101 = 0xE600000000000000;
    v94(v7, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100106050();
    URL.appending<A>(path:directoryHint:)();
    v42 = sub_1000B7EA0();
    v95(v42);
    v43 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v100 = 0;
    v47 = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v100];

    v48 = v100;
    if (v47)
    {
      v49 = v97;
      v100 = v90;
      v101 = v91;
      v94(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
      v50 = v48;
      v51 = v89;
      v52 = v98;
      URL.appending<A>(path:directoryHint:)();
      v53 = sub_1000B7EA0();
      v95(v53);
      v54 = v88;
      Data.write(to:options:)();
      if (v54)
      {
        v55 = *(v49 + 8);
        v55(v51, v17);
        v55(v52, v17);
        v55(v96, v17);
      }

      else
      {
        v59 = v49 + 8;
        v58 = *(v49 + 8);
        v94 = v17;
        v95 = v58;
        (v58)(v51, v17);
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v60 = type metadata accessor for SKLogger(0);
        sub_10007EDA4(v60, qword_1003F26C8);
        sub_10018ED74();

        sub_1000C446C();
        v100 = 0xD00000000000001ELL;
        v101 = v61;
        v62 = v87;
        v63 = [v87 bundleID];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67._countAndFlagsBits = v64;
        v67._object = v66;
        String.append(_:)(v67);
        v68 = v62;

        v69 = [v62 logKey];
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = static os_log_type_t.debug.getter();

        v73 = Logger.logObject.getter();

        LODWORD(v93) = v72;
        if (os_log_type_enabled(v73, v72))
        {
          sub_1000B7DC8();
          v74 = swift_slowAlloc();
          v88 = 0;
          v75 = v74;
          sub_1000B7DBC();
          v76 = swift_slowAlloc();
          v97 = v59;
          *v75 = 136446466;
          v99 = v76;
          v100 = 91;
          v101 = 0xE100000000000000;
          v77._countAndFlagsBits = v92;
          v77._object = v71;
          String.append(_:)(v77);
          v78._countAndFlagsBits = sub_1000B7DB0();
          String.append(_:)(v78);
          v79 = sub_100080210(v100, v101, &v99);

          *(v75 + 4) = v79;
          v68 = v87;
          *(v75 + 12) = 2082;
          v82 = sub_10018EDEC(v80, v81, &v99);

          *(v75 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v73, v93, "%{public}s%{public}s", v75, 0x16u);
          swift_arrayDestroy();
          sub_1000B7D68();

          sub_1000B7D68();
        }

        else
        {
        }

        v83 = v96;
        sub_10018CA84(v68);
        v85 = v94;
        v84 = v95;
        (v95)(v98, v94);
        (v84)(v83, v85);
      }
    }

    else
    {
      v56 = v100;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v57 = *(v97 + 8);
      v57(v98, v17);
      v57(v96, v17);
    }
  }
}

uint64_t sub_10018BD78(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_10018BD8C()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_10018BE54;
  v3 = swift_continuation_init();
  sub_10018E53C(v3, v2, v1, &unk_10038D880, sub_10018ECB0, &unk_10038D898);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10018BE54()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_10018BF2C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_10018BF40()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_10018ECC4;
  v3 = swift_continuation_init();
  sub_10018E53C(v3, v2, v1, &unk_10038D830, sub_10018EC44, &unk_10038D848);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10018C168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v43 = a1;
  v44 = a2;
  v47 = a4;
  v4 = type metadata accessor for URL();
  sub_1000890DC();
  v45 = v5;
  __chkstk_darwin(v6);
  sub_100093D40();
  v42 = v8 - v7;
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100093D40();
  v15 = v14 - v13;
  v16 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v17 = sub_1000B01B0(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v40 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v40 - v25;
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  v41 = objc_opt_self();
  v29 = [v41 defaultManager];
  v30 = [v29 sk_octanePersistedDataURL];

  if (v30)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_10018EDD4(v23, v31);
  sub_1000B71B8(v23, v26);
  v32 = sub_100123E24();
  if (sub_100081D0C(v32, v33, v4) == 1)
  {
    sub_100146014(v26);
    v34 = 1;
  }

  else
  {
    v48 = v43;
    v49 = v44;
    (*(v11 + 104))(v15, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100106050();
    URL.appending<A>(path:directoryHint:)();
    (*(v11 + 8))(v15, v9);
    (*(v45 + 8))(v26, v4);
    v34 = 0;
  }

  sub_10018EDD4(v28, v34);
  if (v46)
  {
    sub_10012A7F8(v28, v20);
    if (sub_100081D0C(v20, 1, v4) == 1)
    {
      sub_100146014(v20);
    }

    else
    {
      v35 = v45;
      v36 = v42;
      (*(v45 + 32))(v42, v20, v4);
      v37 = [v41 defaultManager];
      v38 = sub_10024EC2C();

      (*(v35 + 8))(v36, v4);
      if ((v38 & 0x100) == 0 || (v38 & 1) == 0)
      {
        sub_100146014(v28);
        return sub_10018EDD4(v47, 1);
      }
    }
  }

  return sub_1000B71B8(v28, v47);
}

uint64_t sub_10018C63C(void *a1, int a2)
{
  v3 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v4 = sub_1000B7EA0();
  sub_10018C168(v4, v5, a2, v6);
}

uint64_t sub_10018C6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_10018ED2C();
  sub_10018C168(a1, a2, 0, v4);
  v10 = type metadata accessor for URL();
  if (sub_100081D0C(v4, 1, v10) == 1)
  {
    sub_100146014(v4);
    v11 = 1;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100106050();
    URL.appending<A>(component:directoryHint:)();

    (*(*(v10 - 8) + 8))(v4, v10);
    v11 = 0;
  }

  return sub_10018EDD4(a4, v11);
}

uint64_t sub_10018C804(void *a1, uint64_t a2)
{
  v2 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v3 = sub_1000B7EA0();
  sub_10018C6B8(v3, v4, v5);
}

uint64_t sub_10018C880(void *a1)
{
  sub_10008E5A4(0, &qword_1003D2100, LSBundleRecord_ptr);
  v2 = [a1 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1001E0FC0(v3, v5, 0);
  v8 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = [v6 localizedName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_10018C964()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10018CA84(void *a1)
{
  v3 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100093D40();
  sub_10018ED2C();
  sub_10018C63C(a1, 1);
  if (sub_100081D0C(v6, 1, v7) == 1)
  {
    return sub_100146014(v6);
  }

  v12 = sub_1000B7EA0();
  v13(v12);
  v14 = [swift_getObjCClassFromMetadata() sharedInstance];
  URL.path(percentEncoded:)(0);
  v15 = String._bridgeToObjectiveC()();

  v16 = [a1 bundleID];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v14 useConfigurationDirectory:v15 forBundleID:v16];

  return (*(v9 + 8))(v1, v7);
}

uint64_t sub_10018CE4C(void *a1)
{
  v4 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_10018ED60();
  v6 = type metadata accessor for URL();
  sub_1000890DC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100093D40();
  sub_10018ED2C();
  sub_10018C63C(a1, 1);
  v10 = sub_100123E24();
  if (sub_100081D0C(v10, v11, v6) == 1)
  {
    sub_100146014(v1);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v12 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v12, qword_1003F26C8);
    sub_10017C960();
    _StringGuts.grow(_:)(31);

    sub_1000C446C();
    v94 = v13;
    v14 = [a1 bundleID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19 = v94;
    v20 = [a1 logKey];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      sub_1000B7DC8();
      v26 = swift_slowAlloc();
      sub_1000B7DBC();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      sub_10018ECE0(v27);
      v28._countAndFlagsBits = v21;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v29);
      v30 = sub_10018ED38();

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = sub_100080210(0xD00000000000001DLL, v19, &v95);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      sub_100098BC0();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v2, v1, v6);
    v32 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v93 = 0;
    v36 = [v32 removeItemAtURL:v34 error:&v93];

    if (v36)
    {
      v37 = qword_1003CBE58;
      v38 = v93;
      if (v37 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v39 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v39, qword_1003F26C8);
      sub_10017C960();
      _StringGuts.grow(_:)(26);

      sub_1000C446C();
      v93 = 0xD000000000000018;
      v94 = v40;
      v41 = &selRef__appDidLaunch_;
      v42 = [a1 bundleID];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      String.append(_:)(v46);

      v47 = v94;
      v89 = v93;
      v48 = [a1 logKey];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = static os_log_type_t.debug.getter();

      v52 = Logger.logObject.getter();

      v88 = v51;
      if (os_log_type_enabled(v52, v51))
      {
        sub_1000B7DC8();
        v91 = v8;
        v53 = swift_slowAlloc();
        sub_1000B7DBC();
        v54 = swift_slowAlloc();
        *v53 = 136446466;
        sub_10018ECE0(v54);
        v55._countAndFlagsBits = v87;
        v55._object = v50;
        String.append(_:)(v55);
        v56._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v56);
        v57 = v2;
        v58 = sub_10018ED38();

        *(v53 + 4) = v58;
        v2 = v57;
        *(v53 + 12) = 2082;
        v59 = sub_100080210(v89, v47, &v95);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v52, v88, "%{public}s%{public}s", v53, 0x16u);
        sub_100098BC0();
        v41 = &selRef__appDidLaunch_;
        sub_1000B7D68();

        v8 = v91;
        sub_1000B7D68();
      }

      else
      {
      }

      v85 = [objc_opt_self() shared];
      v86 = [a1 v41[318]];
      if (!v86)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = String._bridgeToObjectiveC()();
      }

      [v85 appRemovedWithBundleID:v86];

      return (*(v8 + 8))(v2, v6);
    }

    else
    {
      v90 = v2;
      v92 = v8;
      v61 = v93;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v63 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v63, qword_1003F26C8);
      sub_10017C960();
      _StringGuts.grow(_:)(37);
      v64._countAndFlagsBits = 0xD00000000000001FLL;
      v64._object = 0x800000010031B500;
      String.append(_:)(v64);
      v65 = [a1 bundleID];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69._countAndFlagsBits = v66;
      v69._object = v68;
      String.append(_:)(v69);

      v70._countAndFlagsBits = 8250;
      v70._object = 0xE200000000000000;
      String.append(_:)(v70);
      v95 = v62;
      sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
      _print_unlocked<A, B>(_:_:)();
      v72 = v93;
      v71 = v94;
      v73 = [a1 logKey];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = static os_log_type_t.error.getter();

      v78 = Logger.logObject.getter();

      if (os_log_type_enabled(v78, v77))
      {
        sub_1000B7DC8();
        v79 = swift_slowAlloc();
        sub_1000B7DBC();
        v80 = swift_slowAlloc();
        *v79 = 136446466;
        sub_10018ECE0(v80);
        v81._countAndFlagsBits = v74;
        v81._object = v76;
        String.append(_:)(v81);
        v82._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v82);
        v83 = sub_10018ED38();

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        v84 = sub_100080210(v72, v71, &v95);

        *(v79 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v78, v77, "%{public}s%{public}s", v79, 0x16u);
        sub_100098BC0();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      else
      {
      }

      return (*(v92 + 8))(v90, v6);
    }
  }
}

void (*sub_10018D784(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100093D40();
  v11 = v10 - v9;
  v12 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v12);
  sub_100089118();
  __chkstk_darwin(v13);
  sub_10018ED60();
  v14 = type metadata accessor for URL();
  sub_1000890DC();
  v75 = v15;
  __chkstk_darwin(v16);
  sub_10018ECCC();
  v71 = v17;
  sub_10018ED10();
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v70 = *(v7 + 104);
  v70(v11, enum case for URL.DirectoryHint.checkFileSystem(_:), v5);
  v73 = a1;
  v74 = a2;
  sub_10018C6B8(a1, a2, v2);
  v21 = *(v7 + 8);
  v21(v11, v5);
  v22 = sub_100123E24();
  if (sub_100081D0C(v22, v23, v14) == 1)
  {
    sub_100146014(v2);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v24 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v24, qword_1003F26C8);
    sub_10018ED94();

    sub_1000C446C();
    sub_10018EDB4(v25);
    v21 = static os_log_type_t.error.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v21))
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      v76 = v28;
      *v27 = 136446466;
      v30 = sub_100093CF0(v28, v29, &v76);
      v31 = sub_100093BF8(v30);
      v33 = sub_10018EDEC(v31, v32, &v76);

      *(v27 + 14) = v33;
      sub_10017C91C(&_mh_execute_header, v34, v35, "%{public}s%{public}s");
      sub_1000B0010();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v78 = 513;
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_10018ECF8();
    sub_10018EC68(v41, v42, &unk_1002EA92C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    v36 = *(v75 + 32);
    v69 = v14;
    v36(v20, v2, v14);
    v37 = [objc_opt_self() defaultManager];
    v38 = sub_10024EC2C();

    if (v38)
    {
      if ((v38 & 0x100) != 0)
      {
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v53;
        v70(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
        sub_100106050();
        v54 = v71;
        URL.appending<A>(path:directoryHint:)();
        v21(v11, v5);

        v55 = v72;
        v56 = Data.init(contentsOf:options:)();
        if (v55)
        {
          v21 = (v75 + 8);
          v57 = *(v75 + 8);
          v58 = v54;
          v59 = v69;
          v57(v58, v69);
          v57(v20, v59);
        }

        else
        {
          v21 = v56;
          v65 = *(v75 + 8);
          v66 = v54;
          v67 = v69;
          v65(v66, v69);
          v65(v20, v67);
        }
      }

      else
      {
        v39 = v72;
        v40 = Data.init(contentsOf:options:)();
        if (!v39)
        {
          v21 = v40;
        }

        (*(v75 + 8))(v20, v69);
      }
    }

    else
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v43 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v43, qword_1003F26C8);
      sub_10018ED94();

      sub_1000C446C();
      sub_10018EDB4(v44);
      v46 = v76;
      v45 = v77;
      v47 = static os_log_type_t.error.getter();

      v48 = Logger.logObject.getter();

      if (os_log_type_enabled(v48, v47))
      {
        sub_1000B7DC8();
        v49 = swift_slowAlloc();
        sub_1000B7DBC();
        v50 = swift_slowAlloc();
        v76 = v50;
        *v49 = 136446466;
        *(v49 + 4) = sub_100093CF0(v50, v51, &v76);
        *(v49 + 12) = 2082;
        v52 = sub_100080210(v46, v45, &v76);

        *(v49 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v48, v47, "%{public}s%{public}s", v49, 0x16u);
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      else
      {
      }

      v60 = v69;
      v61 = v75;
      type metadata accessor for ASDError(0);
      v78 = 513;
      v21 = sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_10018ECF8();
      sub_10018EC68(v62, v63, &unk_1002EA92C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      (*(v61 + 8))(v20, v60);
    }
  }

  return v21;
}

uint64_t sub_10018DF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_allocWithZone(LSApplicationRecord);
      swift_bridgeObjectRetain_n();
      v8 = sub_1001B3728(v6, v5, 0);
      if ([v8 isAppStoreVendable] & 1) != 0 || (objc_msgSend(v8, "isBeta"))
      {
        v30 = v3;
        sub_10008E5A4(0, &qword_1003CD2E8, off_10037DC68);

        v9 = sub_1002353A8();
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for SKLogger(0);
        sub_10007EDA4(v10, qword_1003F26C8);
        v32 = 0;
        v33 = 0xE000000000000000;
        _StringGuts.grow(_:)(76);
        v11._object = 0x800000010031B540;
        v11._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v11);
        v12._countAndFlagsBits = v6;
        v12._object = v5;
        String.append(_:)(v12);

        v13._countAndFlagsBits = 0xD000000000000031;
        v13._object = 0x800000010031B5C0;
        String.append(_:)(v13);
        v14 = v33;
        v28 = v32;
        v29 = v9;
        v15 = [v9 logKey];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = static os_log_type_t.debug.getter();

        v20 = Logger.logObject.getter();

        if (os_log_type_enabled(v20, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 136446466;
          v31 = v22;
          v32 = 91;
          v33 = 0xE100000000000000;
          v23._countAndFlagsBits = v16;
          v23._object = v18;
          String.append(_:)(v23);
          v24._countAndFlagsBits = 8285;
          v24._object = 0xE200000000000000;
          String.append(_:)(v24);
          v25 = sub_100080210(v32, v33, &v31);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2082;
          v26 = sub_100080210(v28, v14, &v31);

          *(v21 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s%{public}s", v21, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v3 = v30;
        sub_10018CE4C(v29);
      }

      else
      {
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_10018E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000890DC();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100093D40();
  sub_10018ED2C();
  v32 = type metadata accessor for DispatchQoS();
  sub_1000890DC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100093D40();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  sub_1000890DC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100093D40();
  v23 = v22 - v21;
  sub_10008E5A4(0, &qword_1003CF258, OS_dispatch_queue_serial_ptr);
  (*(v19 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v24 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v23, v17);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a1;
  aBlock[4] = a5;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = a6;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10018EC68(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60, &qword_1002EEE70);
  sub_10008E34C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v33 + 8))(v6, v8);
  (*(v12 + 8))(v16, v32);
}

uint64_t sub_10018E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10008E5A4(0, &qword_1003CD2E8, off_10037DC68);
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      swift_bridgeObjectRetain_n();
      v8 = sub_1002353A8();
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v9, qword_1003F26C8);
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v10._object = 0x800000010031B540;
      v10._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v7;
      v11._object = v6;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 0xD000000000000020;
      v12._object = 0x800000010031B560;
      String.append(_:)(v12);
      v13 = v30;
      v14 = v31;
      v28 = v8;
      v15 = [v8 logKey];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = static os_log_type_t.debug.getter();

      v20 = Logger.logObject.getter();

      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 136446466;
        v29 = v22;
        v30 = 91;
        v31 = 0xE100000000000000;
        v23._countAndFlagsBits = v16;
        v23._object = v18;
        String.append(_:)(v23);
        v24._countAndFlagsBits = 8285;
        v24._object = 0xE200000000000000;
        String.append(_:)(v24);
        v25 = sub_100080210(v30, v31, &v29);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v26 = sub_100080210(v13, v14, &v29);

        *(v21 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s%{public}s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_10018CE4C(v28);

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_10018EC0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018EC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018EC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018ECE0(uint64_t result)
{
  *(v1 - 112) = 91;
  *(v1 - 104) = 0xE100000000000000;
  *(v1 - 96) = result;
  return result;
}

unint64_t sub_10018ED38()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_100080210(v2, v3, (v0 - 96));
}

void sub_10018ED74()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(32);
}

void sub_10018ED94()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
}

void sub_10018EDB4(uint64_t a1@<X8>)
{
  *(v1 - 96) = 0xD000000000000022;
  *(v1 - 88) = a1;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);

  String.append(_:)(*&v3);
}

uint64_t sub_10018EDD4(uint64_t a1, uint64_t a2)
{

  return sub_100081DFC(a1, a2, 1, v2);
}

unint64_t sub_10018EDEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100080210(v4, v3, a3);
}

void *sub_10018EE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100213394(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100213394((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10008B5D0(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10018EF2C(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v14 = _swiftEmptyArrayStorage;
  result = sub_100213394(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v14;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      sub_10008E5A4(0, a2, a3);
      swift_dynamicCast();
      v14 = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        sub_100213394((v11 > 1), v12 + 1, 1);
        v7 = v14;
      }

      ++v9;
      v7[2] = v12 + 1;
      sub_10008B5D0(&v13, &v7[4 * v12 + 4]);
    }

    while (v6 != v9);
    return v7;
  }

  __break(1u);
  return result;
}

id sub_10018F08C()
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingAllPredicates:isa];

  return v1;
}

id sub_10018F1A4(uint64_t (*a1)(void))
{
  a1(0);
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 userDatabase];

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabase:v2];
  return v3;
}

void *sub_10018F244()
{
  sub_100080FB4(&qword_1003D0A78, &unk_1002F7738);
  swift_allocObject();
  return sub_100191C78();
}

uint64_t sub_10018F288()
{
  sub_100098BB4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 368) = v9;
  *(v0 + 376) = v16;
  *(v0 + 352) = v10;
  *(v0 + 360) = v11;
  *(v0 + 500) = v3;
  *(v0 + 336) = v5;
  *(v0 + 344) = v1;
  *(v0 + 320) = v12;
  *(v0 + 328) = v7;
  v13 = swift_task_alloc();
  *(v0 + 384) = v13;
  *v13 = v0;
  v13[1] = sub_10018F354;

  return sub_100193034(v4, v2, v8, v6);
}

uint64_t sub_10018F354()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 501) = v3;

  if (v0)
  {
    **(v5 + 376) = v3;
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_10018FEBC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100190710()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100190818()
{
  sub_10008BE9C();
  sub_1000F2C78((v0 + 216), v0 + 96);
  sub_1000F2C78((v0 + 96), *(v0 + 320));
  sub_100098AA4();

  return v1();
}

uint64_t sub_100190880()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10019098C()
{
  sub_10008BE9C();
  sub_1000F2C78((v0 + 176), v0 + 96);
  sub_1000F2C78((v0 + 96), *(v0 + 320));
  sub_100098AA4();

  return v1();
}

uint64_t sub_1001909F4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100190AFC()
{
  sub_10008BE9C();
  sub_1000F2C78((v0 + 136), v0 + 96);
  sub_1000F2C78((v0 + 96), *(v0 + 320));
  sub_100098AA4();

  return v1();
}

uint64_t sub_1001914BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 368) = a4;
  *(v5 + 376) = a5;
  *(v5 + 424) = a2;
  *(v5 + 352) = a1;
  *(v5 + 360) = a3;
  return sub_1000AFCB8();
}

uint64_t sub_1001918EC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 416) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001919E8()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

void *sub_100191C78()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v0[14] = 0xD00000000000002BLL;
  v0[15] = 0x800000010031B7F0;
  sub_10008E5A4(0, &qword_1003D0A80, NSUbiquitousKeyValueStore_ptr);
  v0[16] = sub_100191E50(0xD00000000000002BLL, 0x800000010031B7F0, 2);
  v2 = [objc_opt_self() defaultCenter];
  v3 = objc_opt_self();

  v4 = [v3 currentQueue];
  v5 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_10019BBE0;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001927B8;
  v9[3] = &unk_10038D910;
  v6 = _Block_copy(v9);

  v7 = [v2 addObserverForName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v1 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v1;
}

id sub_100191E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

uint64_t sub_100191ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_100081DFC(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a2;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_100165F40();
}

uint64_t sub_100192088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1001920A8, 0, 0);
}

uint64_t sub_1001920A8()
{
  sub_10008BE9C();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100192190;
    v3 = sub_1000B06F4(v0[6]);

    return sub_100192290(v3);
  }

  else
  {
    sub_10009F198();

    return v5(1);
  }
}

uint64_t sub_100192190()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = v1;
  sub_1000AFE64();
  *v3 = v2;
  v4 = *v0;
  sub_100098AB4();
  *v5 = v4;

  sub_10009F198();

  return v6();
}