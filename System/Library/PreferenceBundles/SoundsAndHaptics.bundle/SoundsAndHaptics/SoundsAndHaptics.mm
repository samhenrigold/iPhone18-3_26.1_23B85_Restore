id sub_1684()
{
  type metadata accessor for FindSoundsAndHapticsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_C328 = result;
  return result;
}

unint64_t sub_1704()
{
  result = qword_C290;
  if (!qword_C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C290);
  }

  return result;
}

id sub_1774(uint64_t a1)
{
  sub_52B0();
  __chkstk_darwin();
  v2 = sub_5240();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_429C();
  v6 = [objc_allocWithZone(PSSpecifier) init];
  [v6 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_5270();
  sub_5230();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    MobileGestalt_get_deviceSupportsClosedLoopHaptics();

    sub_52F0();
    if (qword_C158 != -1)
    {
      swift_once();
    }

    v9 = qword_C328;
    v10 = sub_5300();
    v12 = v11;
    v14 = v13;
    sub_4188(&qword_C2A8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    sub_5310();
    sub_42E8(v10, v12, v14 & 1);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = sub_51B0();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_3198(&qword_C2B8, &qword_58A8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_52B0();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v6 = sub_5320();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = sub_52E0();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v8 = sub_5220();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  sub_3198(&qword_C2C0, &qword_58B0);
  v3[48] = swift_task_alloc();
  v9 = sub_5200();
  v3[49] = v9;
  v3[50] = *(v9 - 8);
  v3[51] = swift_task_alloc();
  sub_53F0();
  v3[52] = sub_53E0();
  v11 = sub_53D0();

  return _swift_task_switch(sub_1DD4, v11, v10);
}

uint64_t sub_1DD4()
{
  v142 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);

  sub_5350();
  sub_51D0();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 352);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    sub_4128(*(v0 + 384), &qword_C2C0, &qword_58B0);
    sub_5340();
    sub_5370();
    (*(v9 + 8))(v7, v8);
    goto LABEL_73;
  }

  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 384), *(v0 + 392));
  sub_5340();
  *(v0 + 96) = sub_51E0();
  *(v0 + 104) = v10;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_3D58();
  v11 = sub_5420();

  v13 = 0;
  v14 = *(v11 + 16);
  v15 = &_swiftEmptyArrayStorage;
LABEL_4:
  v16 = (v11 + 40 + 16 * v13);
  while (1)
  {
    if (v14 == v13)
    {

      v24 = v15;
      v25 = *(v15 + 2);
      if (!v25)
      {
        sub_51F0();
        if (v89)
        {
          v90 = *(v0 + 200);

          v91 = sub_53A0();

          [v90 setSpecifierIdentifierToScrollAndHighlight:v91];

          goto LABEL_72;
        }

        v25 = *(v15 + 2);
        if (!v25)
        {

          goto LABEL_72;
        }
      }

      v26 = (*(v0 + 256) + 8);
      v126 = (*(v0 + 304) + 48);
      v27 = *(v0 + 216);
      v132 = (v27 + 8);
      v130 = 15;
      v131 = v27;
      v125 = v26;
      while (1)
      {
        v30 = *(v24 + 4);
        v29 = *(v24 + 5);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v25 - 1) > *(v24 + 3) >> 1)
        {
          v24 = sub_3630(isUniquelyReferenced_nonNull_native, v25, 1, v24);
        }

        sub_408C((v24 + 32));
        v32 = *(v24 + 2);
        memmove(v24 + 32, v24 + 48, 16 * v32 - 16);
        *(v24 + 2) = v32 - 1;

        v129 = v30;
        v33 = sub_5144(v30, v29);
        if (v33 == 15)
        {
          v127 = v29;
          v128 = v24;
          result = sub_51C0();
          if (result)
          {
            v34 = result;
          }

          else
          {
            v34 = &_swiftEmptyArrayStorage;
          }

          v136 = v34[2];
          if (v136)
          {
            v35 = 0;
            v134 = v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
            countAndFlagsBits = &_swiftEmptyDictionarySingleton;
            while (1)
            {
              if (v35 >= v34[2])
              {
                __break(1u);
                goto LABEL_78;
              }

              (*(v27 + 16))(*(v0 + 224), &v134[*(v27 + 72) * v35], *(v0 + 208));
              v37 = sub_5190();
              v39 = v38;
              v40 = sub_51A0();
              if (v41 && (*(v0 + 144) = v40, *(v0 + 152) = v41, v42 = sub_5430(), v44 = v43, , v44))
              {
                *(v0 + 160) = v42;
                *(v0 + 168) = v44;
                sub_5460();
                v45 = v139[1];
                *(v0 + 56) = v139[0];
                *(v0 + 72) = v45;
                *(v0 + 88) = v140;
                v46 = swift_isUniquelyReferenced_nonNull_native();
                v48 = sub_3500(v37, v39);
                v49 = countAndFlagsBits[2];
                v50 = (v47 & 1) == 0;
                result = v49 + v50;
                if (__OFADD__(v49, v50))
                {
                  goto LABEL_79;
                }

                v51 = v47;
                if (countAndFlagsBits[3] >= result)
                {
                  if ((v46 & 1) == 0)
                  {
                    sub_3DAC();
                  }
                }

                else
                {
                  sub_373C(result, v46);
                  v52 = sub_3500(v37, v39);
                  if ((v51 & 1) != (v53 & 1))
                  {

                    return sub_54C0();
                  }

                  v48 = v52;
                }

                v63 = *(v0 + 224);
                v64 = *(v0 + 208);
                if (v51)
                {

                  sub_41D0(v0 + 56, countAndFlagsBits[7] + 40 * v48);
                  result = (*v132)(v63, v64);
                  v27 = v131;
                }

                else
                {
                  countAndFlagsBits[(v48 >> 6) + 8] |= 1 << v48;
                  v65 = (countAndFlagsBits[6] + 16 * v48);
                  *v65 = v37;
                  v65[1] = v39;
                  v66 = countAndFlagsBits[7] + 40 * v48;
                  v67 = *(v0 + 88);
                  v68 = *(v0 + 72);
                  *v66 = *(v0 + 56);
                  *(v66 + 16) = v68;
                  *(v66 + 32) = v67;
                  result = (*v132)(v63, v64);
                  v69 = countAndFlagsBits[2];
                  v70 = __OFADD__(v69, 1);
                  v71 = v69 + 1;
                  if (v70)
                  {
                    goto LABEL_80;
                  }

                  countAndFlagsBits[2] = v71;
                  v27 = v131;
                }
              }

              else
              {
                v54 = sub_3500(v37, v39);
                v56 = v55;

                if (v56)
                {
                  v57 = swift_isUniquelyReferenced_nonNull_native();
                  v139[0]._countAndFlagsBits = countAndFlagsBits;
                  if (!v57)
                  {
                    sub_3DAC();
                    countAndFlagsBits = v139[0]._countAndFlagsBits;
                  }

                  v58 = *(v0 + 224);
                  v59 = *(v0 + 208);

                  v60 = countAndFlagsBits[7] + 40 * v54;
                  v61 = *v60;
                  v62 = *(v60 + 16);
                  *(v0 + 48) = *(v60 + 32);
                  *(v0 + 16) = v61;
                  *(v0 + 32) = v62;
                  sub_3A0C(v54, countAndFlagsBits);
                  (*v132)(v58, v59);
                }

                else
                {
                  (*v132)(*(v0 + 224), *(v0 + 208));
                  *(v0 + 48) = 0;
                  *(v0 + 16) = 0u;
                  *(v0 + 32) = 0u;
                }

                result = sub_4128(v0 + 16, &qword_C2D0, &qword_58B8);
              }

              if (v136 == ++v35)
              {
                goto LABEL_54;
              }
            }
          }

          countAndFlagsBits = &_swiftEmptyDictionarySingleton;
LABEL_54:

          *(v0 + 424) = 1;
          sub_5460();
          v79 = swift_isUniquelyReferenced_nonNull_native();
          sub_3BC8(&v139[0]._countAndFlagsBits, 0x6574616D696E61, 0xE700000000000000, v79);
          v80 = countAndFlagsBits;
          sub_3198(&qword_C2D8, &qword_58C0);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_57E0;
          v24 = v128;
          *(v81 + 32) = v129;
          *(v81 + 40) = v127;
          v139[0]._countAndFlagsBits = v81;

          sub_340C(v82);
          *(v0 + 176) = v139[0]._countAndFlagsBits;
          sub_3198(&qword_C2E0, &qword_58C8);
          sub_40E0(&qword_C2E8, &qword_C2E0, &qword_58C8, &protocol conformance descriptor for [A]);
          v83 = sub_5390();
          v85 = v84;

          v86._countAndFlagsBits = sub_51F0();
          if (v86._object)
          {
            v139[0]._countAndFlagsBits = 35;
            v139[0]._object = 0xE100000000000000;
            sub_53C0(v86);

            sub_53C0(v139[0]);
          }

          v26 = v125;
          v87 = HIBYTE(v85) & 0xF;
          if ((v85 & 0x2000000000000000) == 0)
          {
            v87 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v87)
          {
            *(v0 + 128) = v83;
            *(v0 + 136) = v85;
            sub_5460();
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v141 = v80;
            sub_3BC8(&v139[0]._countAndFlagsBits, 1752457584, 0xE400000000000000, v88);
            v80 = v141;
          }

          else
          {
          }

          if (v130 != 15)
          {
            v107 = *(v0 + 272);
            v106 = *(v0 + 280);
            v108 = *(v0 + 248);

            sub_43A4(v130);
            sub_2C40(v80);

            sub_5250();

            v109 = *v125;
            (*v125)(v107, v108);
            sub_4188(&qword_C2F0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_52D0();
            v109(v106, v108);
LABEL_72:
            v111 = *(v0 + 400);
            v110 = *(v0 + 408);
            v112 = *(v0 + 392);
            v114 = *(v0 + 336);
            v113 = *(v0 + 344);
            v115 = *(v0 + 328);
            sub_5370();
            (*(v114 + 8))(v113, v115);
            (*(v111 + 8))(v110, v112);
LABEL_73:

            v116 = *(v0 + 8);

            return v116();
          }

          v28 = 15;
          v27 = v131;
        }

        else
        {
          v28 = v33;
          v73 = *(v0 + 288);
          v72 = *(v0 + 296);
          v75 = *(v0 + 240);
          v74 = *(v0 + 248);

          sub_43A4(v28);
          sub_5260();
          v76 = *v26;
          (*v26)(v73, v74);
          if ((*v126)(v75, 1, v72) != 1)
          {
            v99 = *(v0 + 400);
            v135 = *(v0 + 392);
            v137 = *(v0 + 408);
            v100 = *(v0 + 336);
            v101 = *(v0 + 344);
            v102 = *(v0 + 320);
            v133 = *(v0 + 328);
            v104 = *(v0 + 296);
            v103 = *(v0 + 304);
            v105 = *(v0 + 240);

            (*(v103 + 32))(v102, v105, v104);
            sub_5360();
            (*(v103 + 8))(v102, v104);
            (*(v100 + 8))(v101, v133);
            (*(v99 + 8))(v137, v135);
            goto LABEL_73;
          }

          sub_4128(*(v0 + 240), &qword_C2B8, &qword_58A8);
          if (v130 != 15)
          {
            v77 = *(v0 + 280);
            v78 = *(v0 + 248);
            sub_43A4(v130);
            sub_4188(&qword_C2F0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_52D0();
            v76(v77, v78);
          }
        }

        v130 = v28;
        v25 = *(v24 + 2);
        if (!v25)
        {

          if (v28 == 15)
          {
            goto LABEL_72;
          }

          v92 = *(v0 + 296);
          v93 = *(v0 + 264);
          v94 = *(v0 + 248);
          v95 = *(v0 + 232);
          sub_43A4(v130);
          sub_5260();
          v96 = *v26;
          (*v26)(v93, v94);
          if ((*v126)(v95, 1, v92) == 1)
          {
            v97 = *(v0 + 280);
            v98 = *(v0 + 248);
            sub_4128(*(v0 + 232), &qword_C2B8, &qword_58A8);
            sub_43A4(v130);
            sub_4188(&qword_C2F0, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
            sub_52D0();
            v96(v97, v98);
            goto LABEL_72;
          }

          v117 = *(v0 + 400);
          v138 = *(v0 + 408);
          v118 = *(v0 + 392);
          v120 = *(v0 + 336);
          v119 = *(v0 + 344);
          v121 = *(v0 + 328);
          v122 = *(v0 + 304);
          v123 = *(v0 + 312);
          v124 = *(v0 + 296);
          (*(v122 + 32))(v123, *(v0 + 232), v124);
          sub_5360();
          (*(v122 + 8))(v123, v124);
          (*(v120 + 8))(v119, v121);
          (*(v117 + 8))(v138, v118);
          goto LABEL_73;
        }
      }
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    ++v13;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      v20 = v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      v139[0]._countAndFlagsBits = v15;
      if ((result & 1) == 0)
      {
        result = sub_3F60(0, *(v15 + 2) + 1, 1);
        v20 = v139[0]._countAndFlagsBits;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_3F60((v21 > 1), v22 + 1, 1);
        v20 = v139[0]._countAndFlagsBits;
      }

      *(v20 + 16) = v22 + 1;
      v15 = v20;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v17;
      goto LABEL_4;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_2C40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3198(&qword_C300, &qword_58D8);
    v2 = sub_5490();
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
    sub_422C(*(a1 + 56) + 40 * v13, v41);
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
    sub_4288(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_4288(v35, v24);
    result = sub_5450(v2[5]);
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
    result = sub_4288(v24, (v2[7] + 32 * v10));
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

uint64_t sub_2F30()
{
  v1 = sub_3198(&qword_C298, &qword_5888);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_3198(&qword_C2A0, &qword_5890);
  v7 = sub_5240();
  v8 = sub_4188(&qword_C2A8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_5380();
  *(swift_allocObject() + 16) = v6;
  sub_40E0(&qword_C2B0, &qword_C298, &qword_5888, &protocol conformance descriptor for SettingsPane<A>);
  v9 = v6;
  sub_5330();
  return (*(v2 + 8))(v4, v1);
}

id sub_315C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_3198(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_31E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3220(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_32D0;

  return sub_1A58(a1, a2, v6);
}

uint64_t sub_32D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_33C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_340C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_3630(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_3500(uint64_t a1, uint64_t a2)
{
  sub_54D0();
  sub_53B0();
  v4 = sub_54E0();

  return sub_3578(a1, a2, v4);
}

unint64_t sub_3578(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_54B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_3630(char *result, int64_t a2, char a3, char *a4)
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
    sub_3198(&qword_C2D8, &qword_58C0);
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

uint64_t sub_373C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3198(&qword_C2F8, &qword_58D0);
  v38 = v4;
  result = sub_5480();
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
        sub_422C(v27, &v39);
      }

      sub_54D0();
      sub_53B0();
      result = sub_54E0();
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

uint64_t sub_3A0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_5440() + 1) & ~v5;
    do
    {
      sub_54D0();

      sub_53B0();
      v11 = sub_54E0();

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

uint64_t sub_3BC8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_3500(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_373C(v16, a4 & 1);
      v11 = sub_3500(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_54C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_3DAC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_41D0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_3D58()
{
  result = qword_C2C8;
  if (!qword_C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2C8);
  }

  return result;
}

void *sub_3DAC()
{
  v1 = v0;
  sub_3198(&qword_C2F8, &qword_58D0);
  v2 = *v0;
  v3 = sub_5470();
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
        sub_422C(*(v2 + 56) + 40 * v17, v28);
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

char *sub_3F60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_3F80(char *result, int64_t a2, char a3, char *a4)
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
    sub_3198(&qword_C2D8, &qword_58C0);
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

uint64_t sub_40E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_33C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4128(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3198(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_4288(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_429C()
{
  result = qword_C308;
  if (!qword_C308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C308);
  }

  return result;
}

uint64_t sub_42E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4308()
{
  sub_33C4(&qword_C298, &qword_5888);
  sub_40E0(&qword_C2B0, &qword_C298, &qword_5888, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_43A4(char a1)
{
  sub_5410();
  __chkstk_darwin();
  switch(a1)
  {
    case 1:
      v4 = &unk_C320;
      v5 = SHSHeadphoneHearingProtectionController_ptr;
      goto LABEL_14;
    case 2:
      v2 = sub_46E0(2u);
      goto LABEL_8;
    case 3:
      sub_52C0();
      v3 = 3;
      goto LABEL_22;
    case 4:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 4;
      goto LABEL_22;
    case 5:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 5;
      goto LABEL_22;
    case 6:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 6;
      goto LABEL_22;
    case 7:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 7;
      goto LABEL_22;
    case 8:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 8;
      goto LABEL_22;
    case 9:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 9;
      goto LABEL_22;
    case 10:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 10;
      goto LABEL_22;
    case 11:
      sub_50FC(0, &qword_C318, SHSToneController_ptr);
      v3 = 11;
LABEL_22:
      sub_46E0(v3);

      result = sub_5270();
      break;
    case 12:
      v4 = &unk_C310;
      v5 = SHSKeyboardClicksControllerViewController_ptr;
LABEL_14:
      v6 = sub_50FC(0, v4, v5);

      result = PreferencesControllerRecipe.init(viewControllerClass:)(v6);
      break;
    case 14:
      v2 = [objc_allocWithZone(PSSpecifier) init];
LABEL_8:

      result = PreferencesControllerRecipe.init(specifier:)(v2);
      break;
    default:
      sub_5400();
      result = sub_5290();
      break;
  }

  return result;
}

id sub_46E0(unsigned __int8 a1)
{
  v2 = [objc_allocWithZone(PSSpecifier) init];
  if (a1 <= 6u)
  {
    if (a1 <= 3u)
    {
      if (a1 == 2)
      {
        v15 = sub_53A0();
        [v2 setProperty:v15 forKey:PSIDKey];

        v11 = v2;
        v2 = [objc_opt_self() profileManagementSpecifier];
      }

      else
      {
        if (a1 != 3)
        {
          return v2;
        }

        v11 = sub_53A0();
        [v2 setProperty:v11 forKey:PSIDKey];
      }

LABEL_27:

      return v2;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        v28 = sub_53A0();
        [v2 setProperty:v28 forKey:PSIDKey];

        v29 = sub_53A0();
        v30 = sub_53A0();
        [v2 setProperty:v29 forKey:v30];

        v6 = [objc_opt_self() mainBundle];
        v38._countAndFlagsBits = 0x8000000000005B10;
        v7._countAndFlagsBits = 0x6E6F542074786554;
        v7._object = 0xE900000000000065;
        goto LABEL_24;
      }

      if (a1 == 6)
      {
        v3 = sub_53A0();
        [v2 setProperty:v3 forKey:PSIDKey];

        v4 = sub_53A0();
        v5 = sub_53A0();
        [v2 setProperty:v4 forKey:v5];

        v6 = [objc_opt_self() mainBundle];
        v38._countAndFlagsBits = 0x8000000000005B10;
        v7._countAndFlagsBits = 0x63696F562077654ELL;
        v7._object = 0xED00006C69616D65;
LABEL_24:
        v41.value._countAndFlagsBits = 0;
        v41.value._object = 0;
        v31.super.isa = v6;
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        sub_5210(v7, v41, v31, v44, 0xD000000000000010, v38);

        goto LABEL_25;
      }

      return v2;
    }

    v19 = sub_53A0();
    [v2 setProperty:v19 forKey:PSIDKey];

    v20 = sub_53A0();
    v21 = sub_53A0();
    [v2 setProperty:v20 forKey:v21];

    v22 = [objc_opt_self() mainBundle];
    v38._countAndFlagsBits = 0x8000000000005B10;
    v23._countAndFlagsBits = 0x656E6F74676E6952;
    v23._object = 0xE800000000000000;
LABEL_22:
    v40.value._countAndFlagsBits = 0;
    v40.value._object = 0;
    v27.super.isa = v22;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_5210(v23, v40, v27, v43, 0xD000000000000010, v38);

LABEL_25:
    v11 = sub_53A0();
LABEL_26:

    [v2 setName:v11];
    goto LABEL_27;
  }

  if (a1 <= 8u)
  {
    if (a1 == 7)
    {
      v16 = sub_53A0();
      [v2 setProperty:v16 forKey:PSIDKey];

      v17 = sub_53A0();
      v18 = sub_53A0();
      [v2 setProperty:v17 forKey:v18];

      v6 = [objc_opt_self() mainBundle];
      v38._countAndFlagsBits = 0x8000000000005B10;
      v7._countAndFlagsBits = 0x6C69614D2077654ELL;
      v7._object = 0xE800000000000000;
      goto LABEL_24;
    }

    if (a1 == 8)
    {
      v12 = sub_53A0();
      [v2 setProperty:v12 forKey:PSIDKey];

      v13 = sub_53A0();
      v14 = sub_53A0();
      [v2 setProperty:v13 forKey:v14];

      v6 = [objc_opt_self() mainBundle];
      v38._countAndFlagsBits = 0x8000000000005B10;
      v7._countAndFlagsBits = 0x69614D20746E6553;
      v7._object = 0xE90000000000006CLL;
      goto LABEL_24;
    }

    return v2;
  }

  switch(a1)
  {
    case 9u:
      v24 = sub_53A0();
      [v2 setProperty:v24 forKey:PSIDKey];

      v25 = sub_53A0();
      v26 = sub_53A0();
      [v2 setProperty:v25 forKey:v26];

      v22 = [objc_opt_self() mainBundle];
      v38._countAndFlagsBits = 0x8000000000005B10;
      v23._object = 0xEF737472656C4120;
      v23._countAndFlagsBits = 0x7261646E656C6143;
      goto LABEL_22;
    case 0xAu:
      v33 = sub_53A0();
      [v2 setProperty:v33 forKey:PSIDKey];

      v34 = sub_53A0();
      v35 = sub_53A0();
      [v2 setProperty:v34 forKey:v35];

      v36 = [objc_opt_self() mainBundle];
      v38._countAndFlagsBits = 0x8000000000005B10;
      v39._countAndFlagsBits = 0x7265646E696D6552;
      v39._object = 0xEF737472656C4120;
      v42.value._countAndFlagsBits = 0;
      v42.value._object = 0;
      v37.super.isa = v36;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      sub_5210(v39, v42, v37, v45, 0xD000000000000010, v38);

      v11 = sub_53A0();
      goto LABEL_26;
    case 0xBu:
      v8 = sub_53A0();
      [v2 setProperty:v8 forKey:PSIDKey];

      v9 = sub_53A0();
      v10 = sub_53A0();
      [v2 setProperty:v9 forKey:v10];

      v6 = [objc_opt_self() mainBundle];
      v38._countAndFlagsBits = 0x8000000000005B10;
      v7._countAndFlagsBits = 0x20746C7561666544;
      v7._object = 0xEE00737472656C41;
      goto LABEL_24;
  }

  return v2;
}

uint64_t sub_50FC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_5144(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_8538;
  v6._object = a2;
  v4 = sub_54A0(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}