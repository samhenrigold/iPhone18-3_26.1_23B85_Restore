uint64_t sub_17F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v30 = sub_17F8(&qword_103E0, &qword_74E8);
  __chkstk_darwin(v30);
  v31 = (&v26 - v5);
  v6 = sub_6C70();
  __chkstk_darwin(v6 - 8);
  v7 = sub_6C20();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_17F8(&qword_103E8, &qword_74F0);
  v10 = *(v29 - 8);
  v11 = __chkstk_darwin(v29);
  v26 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  sub_6DF0();
  v28 = sub_6DE0();
  sub_6DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_67A8(0, &qword_103F0, PSUICellularController_ptr);
  v15 = [objc_allocWithZone(PSSpecifier) init];
  [v15 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  [v15 setProperty:a2 forKey:@"PSUISettingsCellularDeferredURLStateKey"];
  sub_6C30();
  sub_6C10();
  sub_6CC0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = sub_6CE0();
  v20 = v19;
  v22 = v21;
  v23 = sub_64CC(&qword_102A0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_6CF0();
  sub_67F0(v18, v20, v22 & 1);

  (*(v27 + 8))(v9, v7);
  v24 = v29;
  (*(v10 + 16))(v26, v14, v29);
  v33 = v7;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  *v31 = sub_6D00();
  swift_storeEnumTagMultiPayload();
  sub_17F8(&qword_103F8, &unk_74F8);
  v33 = v7;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  sub_6CD0();
  (*(v10 + 8))(v14, v24);
}

unint64_t sub_1D78()
{
  result = qword_10298;
  if (!qword_10298)
  {
    sub_1E64(&qword_10290, &qword_7398);
    sub_6C20();
    sub_64CC(&qword_102A0, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10298);
  }

  return result;
}

uint64_t sub_1E64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[104] = a5;
  v5[103] = a4;
  v5[102] = a3;
  v5[101] = a2;
  v5[100] = a1;
  sub_6E20();
  v5[105] = swift_task_alloc();
  v6 = sub_6C70();
  v5[106] = v6;
  v5[107] = *(v6 - 8);
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v5[110] = swift_task_alloc();
  v7 = sub_17F8(&qword_10350, &qword_7498);
  v5[111] = v7;
  v5[112] = *(v7 - 8);
  v5[113] = swift_task_alloc();
  v8 = sub_17F8(&qword_10358, &qword_74A0);
  v5[114] = v8;
  v5[115] = *(v8 - 8);
  v5[116] = swift_task_alloc();
  v9 = sub_6B90();
  v5[117] = v9;
  v5[118] = *(v9 - 8);
  v5[119] = swift_task_alloc();
  v10 = sub_6C90();
  v5[120] = v10;
  v5[121] = *(v10 - 8);
  v5[122] = swift_task_alloc();
  v11 = sub_6CB0();
  v5[123] = v11;
  v5[124] = *(v11 - 8);
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v12 = sub_6C00();
  v5[127] = v12;
  v5[128] = *(v12 - 8);
  v5[129] = swift_task_alloc();
  sub_17F8(&qword_10360, &qword_74A8);
  v5[130] = swift_task_alloc();
  v13 = sub_6BE0();
  v5[131] = v13;
  v5[132] = *(v13 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = sub_6DF0();
  v5[135] = sub_6DE0();
  v15 = sub_6DA0();
  v5[136] = v15;
  v5[137] = v14;

  return _swift_task_switch(sub_22DC, v15, v14);
}

uint64_t sub_22DC()
{
  v1 = v0;
  v2 = v0[132];
  v3 = v1[131];
  v4 = v1[130];
  v5 = v1[129];
  v6 = v1[128];
  v7 = v1[127];
  sub_6D30();
  sub_6BB0();
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v8 = v1[130];
    v9 = v1[126];
    v10 = v1[124];
    v11 = v1[123];

    sub_646C(v8, &qword_10360, &qword_74A8);
    sub_6D20();
    sub_6D40();
    (*(v10 + 8))(v9, v11);
    goto LABEL_190;
  }

  (*(v1[132] + 32))(v1[133], v1[130], v1[131]);
  sub_6C80();
  sub_6D20();
  v12 = sub_6BC0();
  v1[77] = v12;
  v1[78] = v13;
  v1[79] = 47;
  v1[80] = 0xE100000000000000;
  v193 = v1;
  sub_5790(v12, v13, v14);
  v15 = sub_6E30();

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = -v16;
    v19 = v15 + 40;
    do
    {
      v20 = (v19 + 16 * v17++);
      while (1)
      {
        if ((v17 - 1) >= *(v15 + 16))
        {
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:

          isUniquelyReferenced_nonNull_native = v193;
LABEL_188:
          v160 = *(isUniquelyReferenced_nonNull_native + 1064);
          v161 = *(isUniquelyReferenced_nonNull_native + 1056);
          v162 = *(isUniquelyReferenced_nonNull_native + 1048);
          v163 = *(isUniquelyReferenced_nonNull_native + 1000);
          v164 = *(isUniquelyReferenced_nonNull_native + 992);
          v165 = *(isUniquelyReferenced_nonNull_native + 984);
          v1 = isUniquelyReferenced_nonNull_native;
          v166 = *(isUniquelyReferenced_nonNull_native + 976);
          v167 = v1[121];
          v168 = v1[120];
          sub_6D40();
          (*(v164 + 8))(v163, v165);
          (*(v167 + 8))(v166, v168);
          (*(v161 + 8))(v160, v162);
          goto LABEL_189;
        }

        v21 = *(v20 - 1);
        v22 = *v20;

        sub_6DE0();
        sub_6DA0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          break;
        }

        ++v17;
        v20 += 2;
        if (v18 + v17 == 1)
        {
          goto LABEL_19;
        }
      }

      *&v195 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_5A20(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_5A20((v24 > 1), v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v22;
      v19 = v15 + 40;
    }

    while (v18 + v17);
  }

LABEL_19:
  isUniquelyReferenced_nonNull_native = v193;
  v193[138] = _swiftEmptyArrayStorage;

  v28 = sub_6BA0();
  if (!v28)
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v191 = v28[2];
  if (v191)
  {
    v29 = 0;
    v30 = v193 + 47;
    v181 = v193 + 72;
    v31 = v193[118];
    v185 = v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v188 = v31;
    v183 = (v31 + 8);
    v182 = v28;
    do
    {
      if (v29 >= v28[2])
      {
        goto LABEL_204;
      }

      (*(v188 + 16))(*(isUniquelyReferenced_nonNull_native + 952), &v185[*(v188 + 72) * v29], *(isUniquelyReferenced_nonNull_native + 936));
      sub_6DE0();
      sub_6DA0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v32 = sub_6B70();
      v34 = v33;
      v35 = sub_6B80();
      if (v36 && (*(isUniquelyReferenced_nonNull_native + 760) = v35, *(isUniquelyReferenced_nonNull_native + 768) = v36, v37 = sub_6E50(), v39 = v38, , v39))
      {
        *(isUniquelyReferenced_nonNull_native + 776) = v37;
        *(isUniquelyReferenced_nonNull_native + 784) = v39;
        sub_6E90();
        *v181 = v195;
        *(v193 + 37) = v196;
        v193[76] = v197;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_5828(v32, v34);
        v42 = _swiftEmptyDictionarySingleton[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          __break(1u);
          goto LABEL_208;
        }

        v45 = v40;
        if (_swiftEmptyDictionarySingleton[3] >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_5FD8();
          }
        }

        else
        {
          sub_5B4C(v44, isUniquelyReferenced_nonNull_native);
          v46 = sub_5828(v32, v34);
          if ((v45 & 1) != (v47 & 1))
          {
            v62 = &type metadata for String;

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v62);
          }

          v41 = v46;
        }

        v56 = v193[119];
        v57 = v193[117];
        if (v45)
        {

          sub_6630(v181, _swiftEmptyDictionarySingleton[7] + 40 * v41);
          (*v183)(v56, v57);
        }

        else
        {
          _swiftEmptyDictionarySingleton[(v41 >> 6) + 8] |= 1 << v41;
          v58 = (_swiftEmptyDictionarySingleton[6] + 16 * v41);
          *v58 = v32;
          v58[1] = v34;
          v59 = _swiftEmptyDictionarySingleton[7] + 40 * v41;
          v60 = v193[76];
          v61 = *(v193 + 37);
          *v59 = *v181;
          *(v59 + 16) = v61;
          *(v59 + 32) = v60;
          v62 = (*v183)(v56, v57);
          v63 = _swiftEmptyDictionarySingleton[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
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
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v62);
          }

          _swiftEmptyDictionarySingleton[2] = v65;
        }

        isUniquelyReferenced_nonNull_native = v193;
      }

      else
      {
        v48 = sub_5828(v32, v34);
        v50 = v49;

        if (v50)
        {
          *&v195 = _swiftEmptyDictionarySingleton;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_5FD8();
          }

          v51 = *(isUniquelyReferenced_nonNull_native + 952);
          v52 = *(isUniquelyReferenced_nonNull_native + 936);

          v53 = _swiftEmptyDictionarySingleton[7] + 40 * v48;
          v54 = *v53;
          v55 = *(v53 + 16);
          v193[51] = *(v53 + 32);
          *v30 = v54;
          *(v193 + 49) = v55;
          sub_5E1C(v48, _swiftEmptyDictionarySingleton);
          (*v183)(v51, v52);
        }

        else
        {
          (*v183)(*(isUniquelyReferenced_nonNull_native + 952), *(isUniquelyReferenced_nonNull_native + 936));
          v193[51] = 0;
          *v30 = 0u;
          *(v193 + 49) = 0u;
        }

        sub_646C(v30, &qword_10370, &qword_74B0);
      }

      v28 = v182;
      ++v29;
    }

    while (v191 != v29);
  }

  v66 = _swiftEmptyArrayStorage;
  if (_swiftEmptyDictionarySingleton[2])
  {
    v67 = sub_5828(1701869940, 0xE400000000000000);
    if (v68)
    {
      sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v67, isUniquelyReferenced_nonNull_native + 416);
      if (swift_dynamicCast())
      {

        v69 = isUniquelyReferenced_nonNull_native;
        v70 = *(isUniquelyReferenced_nonNull_native + 712);
        v71 = *(v69 + 720);
        if (v70 == 0x64456C6576617274 && v71 == 0xEF6E6F6974616375 || (sub_6EE0() & 1) != 0 || v70 == 0x6F4D6C6576617274 && v71 == 0xEA00000000006564 || (sub_6EE0() & 1) != 0 || v70 == 0x656D656C62616E65 && v71 == 0xEA0000000000746ELL || (sub_6EE0() & 1) != 0)
        {
          if (_swiftEmptyDictionarySingleton[2])
          {
            v72 = sub_5828(0x746E65696C63, 0xE600000000000000);
            if (v73)
            {
              sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v72, (v193 + 67));
              if (swift_dynamicCast())
              {
                if (v193[93] == 0xD000000000000014 && 0x8000000000007D50 == v193[94])
                {

LABEL_181:
                  isUniquelyReferenced_nonNull_native = v193;
                  v158 = v193[103];

                  sub_4D48(_swiftEmptyDictionarySingleton);

                  isa = sub_6D60().super.isa;

                  [v158 setResourcesDictionary:isa];
                  goto LABEL_187;
                }

                v157 = sub_6EE0();

                if (v157)
                {
                  goto LABEL_181;
                }
              }
            }
          }
        }

        if (v70 == 0xD00000000000001BLL && 0x8000000000007D30 == v71 || (sub_6EE0() & 1) != 0)
        {
          isUniquelyReferenced_nonNull_native = v193;
          v159 = v193[103];

LABEL_186:
          sub_4D48(_swiftEmptyDictionarySingleton);

          isa = sub_6D60().super.isa;

          [v159 setResourcesDictionary:isa];
          goto LABEL_187;
        }

        if (v70 == 0x4D495365646461 && v71 == 0xE700000000000000)
        {
        }

        else
        {
          v170 = sub_6EE0();

          if ((v170 & 1) == 0)
          {
            goto LABEL_205;
          }
        }

        isUniquelyReferenced_nonNull_native = v193;
        if (_swiftEmptyDictionarySingleton[2])
        {
          v171 = sub_5828(0x746E65696C63, 0xE600000000000000);
          if (v172)
          {
            sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v171, (v193 + 62));
            if (swift_dynamicCast())
            {
              if (v193[91] == 0x6C7070612E6D6F63 && v193[92] == 0xEE00697269532E65)
              {

LABEL_209:
                v159 = *(isUniquelyReferenced_nonNull_native + 824);
                goto LABEL_186;
              }

LABEL_208:
              v179 = sub_6EE0();

              if (v179)
              {
                goto LABEL_209;
              }
            }
          }
        }

LABEL_210:

        goto LABEL_188;
      }
    }
  }

  *(isUniquelyReferenced_nonNull_native + 648) = sub_6BC0();
  *(isUniquelyReferenced_nonNull_native + 656) = v74;
  *(isUniquelyReferenced_nonNull_native + 664) = 0xD000000000000019;
  *(isUniquelyReferenced_nonNull_native + 672) = 0x8000000000007AC0;
  v75 = sub_6E40();

  if (!v75)
  {
    if (_swiftEmptyDictionarySingleton[2])
    {
      v131 = sub_5828(0x6174616464726163, 0xE800000000000000);
      if (v132)
      {
        sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v131, isUniquelyReferenced_nonNull_native + 456);

        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_168;
        }

        v133 = *(isUniquelyReferenced_nonNull_native + 704);
        v134 = HIBYTE(v133) & 0xF;
        if ((v133 & 0x2000000000000000) == 0)
        {
          v134 = *(isUniquelyReferenced_nonNull_native + 696) & 0xFFFFFFFFFFFFLL;
        }

        if (v134)
        {
          v135 = isUniquelyReferenced_nonNull_native + 16;
          v136 = isUniquelyReferenced_nonNull_native + 792;
          v137 = *(isUniquelyReferenced_nonNull_native + 928);
          v138 = *(isUniquelyReferenced_nonNull_native + 920);
          v139 = *(isUniquelyReferenced_nonNull_native + 912);
          v194 = *(isUniquelyReferenced_nonNull_native + 832);
          v140 = isUniquelyReferenced_nonNull_native;
          v141 = sub_6D70();
          v140[139] = v141;

          v140[2] = v140;
          v140[7] = v136;
          v140[3] = sub_436C;
          swift_continuation_init();
          v140[38] = v139;
          v142 = sub_62EC(v140 + 35);
          sub_67A8(0, &qword_103B8, CTCellularPlanQRCodeAction_ptr);
          v140[140] = sub_17F8(&qword_103C0, &qword_74C8);
          sub_6DB0();
          (*(v138 + 32))(v142, v137, v139);
          v140[31] = _NSConcreteStackBlock;
          v140[32] = 1107296256;
          v140[33] = sub_5034;
          v140[34] = &unk_C748;
          [v194 getActionForCardData:v141 completionHandler:?];
          (*(v138 + 8))(v142, v139);

          return _swift_continuation_await(v135);
        }
      }
    }

LABEL_168:
    v143 = *(isUniquelyReferenced_nonNull_native + 824);
    v144 = [objc_allocWithZone(NSError) initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    isa = sub_6BF0();

    [v143 setUrlHandlerError:isa];
LABEL_187:

    goto LABEL_188;
  }

  v76 = _swiftEmptyArrayStorage[2];
  if (!v76)
  {
    sub_6BD0();
    if (v146)
    {
      v147 = *(isUniquelyReferenced_nonNull_native + 816);

      v148 = sub_6D70();

      [v147 setSpecifierIdentifierToScrollAndHighlight:v148];

      goto LABEL_188;
    }

    v76 = _swiftEmptyArrayStorage[2];
    if (!v76)
    {

      goto LABEL_210;
    }
  }

  v189 = (*(isUniquelyReferenced_nonNull_native + 856) + 8);
  while (1)
  {
    v79 = *(v66 + 4);
    v80 = *(v66 + 5);

    v81 = swift_isUniquelyReferenced_nonNull_native();
    if (!v81 || (v76 - 1) > *(v66 + 3) >> 1)
    {
      v66 = sub_618C(v81, v76, 1, v66);
    }

    sub_6298((v66 + 32));
    v82 = *(v66 + 2);
    memmove(v66 + 32, v66 + 48, 16 * v82 - 16);
    *(v66 + 2) = v82 - 1;
    if (v79 == 0xD000000000000011 && 0x8000000000007AE0 == v80 || (sub_6EE0() & 1) != 0)
    {
      v77 = v193[102];
      v78 = sub_6D70();

      [v77 setSpecifierIdentifierToScrollAndSelect:v78];

      goto LABEL_68;
    }

    if ((v79 != 0xD000000000000014 || 0x8000000000007B00 != v80) && (sub_6EE0() & 1) == 0)
    {
      break;
    }

    v62 = [objc_opt_self() sharedInstance];
    if (!v62)
    {
      goto LABEL_213;
    }

    v83 = v62;
    v84 = [v62 planItems];

    if (!v84)
    {
      goto LABEL_212;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v85 = sub_6D90();

    if (v85 >> 62)
    {
      v86 = sub_6EA0();
    }

    else
    {
      v86 = *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8));
    }

    if (v86 >= 2 && !*(v66 + 2))
    {
      v62 = [objc_allocWithZone(PSUICellularDataSpecifier) initWithHostController:0];
      if (!v62)
      {
        goto LABEL_216;
      }

      v93 = v193[110];
      v94 = v193[106];

      v95 = &unk_103B0;
      v96 = PSUICellularDataListItemsController_ptr;
LABEL_107:
      sub_67A8(0, v95, v96);
      sub_6C30();
      sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_6CA0();
      (*v189)(v93, v94);
      goto LABEL_68;
    }

LABEL_68:
    v76 = *(v66 + 2);
    if (!v76)
    {
      isUniquelyReferenced_nonNull_native = v193;

      goto LABEL_188;
    }
  }

  if (v79 == 0xD000000000000015 && 0x8000000000007B20 == v80 || (sub_6EE0() & 1) != 0)
  {
    v62 = [objc_opt_self() sharedInstance];
    if (!v62)
    {
      goto LABEL_215;
    }

    v87 = v62;
    v88 = [v62 planItems];

    if (!v88)
    {
      goto LABEL_214;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v89 = sub_6D90();

    if (v89 >> 62)
    {
      v90 = sub_6EA0();
    }

    else
    {
      v90 = *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8));
    }

    if (v90 != 1)
    {
      goto LABEL_178;
    }

    v91 = v193[109];
    v92 = v193[106];
    sub_67A8(0, &qword_103A8, PSUICellularDataOptionsController_ptr);
    sub_6C40();
    goto LABEL_94;
  }

  if (v79 == 0xD000000000000013 && 0x8000000000007B40 == v80 || (sub_6EE0() & 1) != 0)
  {
    v62 = [objc_opt_self() sharedInstance];
    if (!v62)
    {
      goto LABEL_218;
    }

    v97 = v62;
    v98 = [v62 planItems];

    if (!v98)
    {
      goto LABEL_217;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v99 = sub_6D90();

    if (v99 >> 62)
    {
      v100 = sub_6EA0();
    }

    else
    {
      v100 = *(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8));
    }

    if (v100 < 2)
    {
      goto LABEL_206;
    }

    v62 = [objc_allocWithZone(PSUIDefaultVoiceLineSpecifier) initSpecifier];
    if (!v62)
    {
      goto LABEL_219;
    }

    v93 = v193[108];
    v94 = v193[106];

    v95 = &unk_103A0;
    v96 = PSUIDefaultVoiceLineListItemsController_ptr;
    goto LABEL_107;
  }

  if (v79 == 0x444F4D5F41544144 && v80 == 0xE900000000000045 || (sub_6EE0() & 1) != 0)
  {
    v62 = [objc_opt_self() sharedInstance];
    if (!v62)
    {
      goto LABEL_221;
    }

    v101 = v62;
    v102 = [v62 planItems];

    if (!v102)
    {
      goto LABEL_220;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v103 = sub_6D90();

    if (v103 >> 62)
    {
      v104 = sub_6EA0();
    }

    else
    {
      v104 = *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8));
    }

    if (v104 != 1)
    {
      goto LABEL_178;
    }

    v105 = v193[109];
    v106 = v193[106];
    sub_67A8(0, &qword_10280, OS_dispatch_queue_ptr);
    v107 = sub_6E00();
    v108 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v107];

    [objc_allocWithZone(PSUIDataModeSpecifier) initWithCTClient:v108 hostController:0 parentSpecifier:0];
    sub_6C60();
    sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_6CA0();

    (*v189)(v105, v106);
    goto LABEL_68;
  }

  if ((v79 != 0xD00000000000001DLL || 0x8000000000007B60 != v80) && (sub_6EE0() & 1) == 0)
  {
    if (v79 == 0xD000000000000023 && 0x8000000000007B80 == v80 || (sub_6EE0() & 1) != 0)
    {
      v62 = [objc_opt_self() sharedInstance];
      if (!v62)
      {
        goto LABEL_224;
      }

      v115 = v62;
      v116 = [v62 planItems];

      if (!v116)
      {
        goto LABEL_225;
      }

      sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
      v117 = sub_6D90();

      if (v117 >> 62)
      {
        v118 = sub_6EA0();
      }

      else
      {
        v118 = *(&dword_10 + (v117 & 0xFFFFFFFFFFFFFF8));
      }

      if (v118 != 1)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if ((v79 != 0xD00000000000001FLL || 0x8000000000007BB0 != v80) && (sub_6EE0() & 1) == 0)
      {
        v123 = v66;
        if (v79 == 0x4C4C415F574F4853 && v80 == 0xE800000000000000)
        {
        }

        else
        {
          v124 = sub_6EE0();

          if ((v124 & 1) == 0)
          {
            v127 = v193[127];
            v128 = sub_6D70();
            sub_17F8(&qword_10378, &qword_74B8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_7370;
            v193[85] = 7107189;
            v193[86] = 0xE300000000000000;
            sub_6E90();
            *(inited + 96) = v127;
            sub_62EC((inited + 72));
            sub_6D30();
            sub_6350(inited);
            swift_setDeallocating();
            sub_646C(inited + 32, &qword_10380, &qword_74C0);
            v130 = sub_6D60().super.isa;

            sub_687C(v128, v130);

            v66 = v123;
            goto LABEL_68;
          }
        }

        v125 = v193[109];
        v126 = v193[106];
        sub_67A8(0, &qword_10388, PSUIPerAppUsageListController_ptr);
        sub_6C40();
        sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_6CA0();
        (*v189)(v125, v126);
        goto LABEL_68;
      }

      v62 = [objc_opt_self() sharedInstance];
      if (!v62)
      {
        goto LABEL_226;
      }

      v119 = v62;
      v120 = [v62 planItems];

      if (!v120)
      {
        goto LABEL_227;
      }

      sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
      v121 = sub_6D90();

      if (v121 >> 62)
      {
        v122 = sub_6EA0();
      }

      else
      {
        v122 = *(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8));
      }

      if (v122 != 1)
      {
LABEL_178:
        v1 = v193;
        v149 = v193[132];
        v190 = v193[131];
        v192 = v193[133];
        v150 = v193[126];
        v151 = v193[125];
        v152 = v193[124];
        v153 = v193[123];
        v186 = v193[122];
        v154 = v193[121];
        v155 = v193[120];

        sub_6D20();
        sub_6D40();
        v156 = *(v152 + 8);
        v156(v150, v153);
        v156(v151, v153);
        (*(v154 + 8))(v186, v155);
        goto LABEL_179;
      }
    }

    v91 = v193[109];
    v92 = v193[106];
    sub_6E10();
    sub_6C50();
LABEL_94:
    sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_6CA0();
    (*v189)(v91, v92);
    goto LABEL_68;
  }

  v62 = [objc_opt_self() sharedInstance];
  if (!v62)
  {
    goto LABEL_222;
  }

  v109 = v62;
  v110 = [v62 planItems];

  if (!v110)
  {
    goto LABEL_223;
  }

  sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
  v111 = sub_6D90();

  if (v111 >> 62)
  {
    v112 = sub_6EA0();
  }

  else
  {
    v112 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
  }

  if (v112 == 1)
  {
    v113 = v193[102];
    v114 = sub_6D70();

    [v113 setSpecifierIdentifierToScrollAndSelect:v114];

    goto LABEL_68;
  }

LABEL_206:
  v1 = v193;
  v149 = v193[132];
  v190 = v193[131];
  v192 = v193[133];
  v173 = v193[126];
  v174 = v193[125];
  v175 = v193[124];
  v176 = v193[123];
  v187 = v193[122];
  v177 = v193[121];
  v184 = v193[120];

  sub_6D20();
  sub_6D40();
  v178 = *(v175 + 8);
  v178(v173, v176);
  v178(v174, v176);
  (*(v177 + 8))(v187, v184);
LABEL_179:
  (*(v149 + 8))(v192, v190);
LABEL_189:

LABEL_190:

  v169 = v1[1];

  return v169();
}

uint64_t sub_436C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1128) = v2;
  v3 = *(v1 + 1096);
  v4 = *(v1 + 1088);
  if (v2)
  {
    v5 = sub_4934;
  }

  else
  {
    v5 = sub_449C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_449C()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v0 + 39;
  v4 = v0[139];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v1[99];
  v1[142] = v8;

  v1[10] = v1;
  v1[11] = sub_4650;
  swift_continuation_init();
  v1[46] = v7;
  v9 = sub_62EC(v1 + 43);
  sub_6DB0();
  (*(v6 + 32))(v9, v5, v7);
  v1[39] = _NSConcreteStackBlock;
  v1[40] = 1107296256;
  v1[41] = sub_50E4;
  v1[42] = &unk_C770;
  [v8 performWithCompletionHandler:v3];
  (*(v6 + 8))(v9, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_4650()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1144) = v2;
  v3 = *(v1 + 1096);
  v4 = *(v1 + 1088);
  if (v2)
  {
    v5 = sub_4B20;
  }

  else
  {
    v5 = sub_4780;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4780()
{

  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v8 = *(v0 + 968);
  v9 = *(v0 + 960);
  sub_6D40();
  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v7, v9);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_4934()
{
  v1 = v0[139];
  v2 = v0[103];

  swift_willThrow();

  v3 = sub_6BF0();
  [v2 setUrlHandlerError:v3];

  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[125];
  v8 = v0[124];
  v9 = v0[123];
  v10 = v0[122];
  v11 = v0[121];
  v12 = v0[120];
  sub_6D40();
  (*(v8 + 8))(v7, v9);
  (*(v11 + 8))(v10, v12);
  (*(v5 + 8))(v4, v6);

  v13 = v0[1];

  return v13();
}

uint64_t sub_4B20()
{
  v1 = v0[142];

  swift_willThrow();

  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  v8 = v0[122];
  v9 = v0[121];
  v10 = v0[120];
  sub_6D40();
  (*(v6 + 8))(v5, v7);
  (*(v9 + 8))(v8, v10);
  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

unint64_t sub_4CE4()
{
  result = qword_102A8;
  if (!qword_102A8)
  {
    sub_1E64(&qword_10288, &qword_7390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102A8);
  }

  return result;
}

uint64_t sub_4D48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_17F8(&qword_103D0, &qword_74D8);
    v2 = sub_6ED0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_6514(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_668C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_668C(v35, v24);
    result = sub_6E70(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_668C(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_5034(uint64_t a1, void *a2, void *a3)
{
  sub_66F0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_17F8(&qword_10358, &qword_74A0);
    sub_6DC0();
  }

  else if (a2)
  {
    v6 = a2;
    sub_17F8(&qword_10358, &qword_74A0);
    sub_6DD0();
  }

  else
  {
    __break(1u);
  }
}

void sub_50E4(uint64_t a1, void *a2)
{
  sub_66F0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_17F8(&qword_10350, &qword_7498);
    sub_6DC0();
  }

  else
  {
    sub_17F8(&qword_10350, &qword_7498);
    sub_6DD0();
  }
}

unint64_t sub_5178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_102B0;
  if (!qword_102B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102B0);
  }

  return result;
}

uint64_t sub_51E8()
{
  v1 = sub_17F8(&qword_10288, &qword_7390);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  sub_17F8(&qword_10290, &qword_7398);
  sub_1D78();
  sub_6D50();
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  sub_4CE4();
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_6D10();
  return (*(v2 + 8))(v4, v1);
}

void sub_53A8(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  v3 = [objc_allocWithZone(PSUISettingsCellularDeferredURLState) init];
  sub_67A8(0, &qword_10280, OS_dispatch_queue_ptr);
  v4 = sub_6E00();
  v5 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v4];

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
}

__n128 sub_5480(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_54DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_552C()
{
  sub_1E64(&qword_10288, &qword_7390);
  sub_4CE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5590()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_55D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_569C;

  return sub_1EAC(a1, a2, v6, v7, v8);
}

uint64_t sub_569C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_5790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10368;
  if (!qword_10368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10368);
  }

  return result;
}

unint64_t sub_57E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_6E70(*(v2 + 40));

  return sub_58A0(a1, v4);
}

unint64_t sub_5828(uint64_t a1, uint64_t a2)
{
  sub_6F00();
  sub_6D80();
  v4 = sub_6F10();

  return sub_5968(a1, a2, v4);
}

unint64_t sub_58A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_6514(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_6E80();
      sub_669C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_5968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_6EE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_5A20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5A40(char *result, int64_t a2, char a3, char *a4)
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
    sub_17F8(&qword_103D8, &qword_74E0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_5B4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_17F8(&qword_103C8, &qword_74D0);
  v38 = v4;
  result = sub_6EC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_6514(v27, &v39);
      }

      sub_6F00();
      sub_6D80();
      result = sub_6F10();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_5E1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_6E60() + 1) & ~v5;
    do
    {
      sub_6F00();

      sub_6D80();
      v11 = sub_6F10();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_5FD8()
{
  v1 = v0;
  sub_17F8(&qword_103C8, &qword_74D0);
  v2 = *v0;
  v3 = sub_6EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_6514(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_618C(char *result, int64_t a2, char a3, char *a4)
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
    sub_17F8(&qword_103D8, &qword_74E0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t *sub_62EC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_6350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_17F8(&qword_103D0, &qword_74D8);
    v3 = sub_6ED0();
    v4 = a1 + 32;

    while (1)
    {
      sub_6734(v4, v13);
      result = sub_57E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_668C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_646C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_17F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_64CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_65E4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_668C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_66F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_6734(uint64_t a1, uint64_t a2)
{
  v4 = sub_17F8(&qword_10380, &qword_74C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_67A8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_67F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_687C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v7 = off_10500;
  v13 = off_10500;
  if (!off_10500)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_69BC;
    v9[3] = &unk_C7A8;
    v9[4] = &v10;
    sub_69BC(v9);
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v7)
  {
    v7(v5, v6);
  }

  else
  {
    v8 = dlerror();
    abort_report_np("%s", v8);
    __break(1u);
  }
}

void sub_698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_69BC(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10508)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_6AFC;
    v5[4] = &unk_C7E0;
    v5[5] = v5;
    v6 = off_C7C8;
    v7 = 0;
    qword_10508 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10508;
    if (qword_10508)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10508;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6AFC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10508 = result;
  return result;
}