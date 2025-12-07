uint64_t sub_9F510()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161820);
  sub_5B30(v0, qword_161820);
  return sub_1257AC();
}

uint64_t sub_9F55C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v73 = sub_123E4C();
  v75 = *(v73 - 8);
  v1 = __chkstk_darwin(v73);
  v66 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v65 - v3;
  v5 = sub_123DAC();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_123D6C();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TimerNLv3Intent(0);
  v8 = __chkstk_darwin(v74);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = sub_123D3C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_124BCC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  v21 = (*(v14 + 88))(v16, v13);
  if (v21 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v14 + 96))(v16, v13);
LABEL_5:
    v22 = *(v18 + 32);
    v22(v20, v16, v17);
    v22(v12, v20, v17);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v23 = sub_125ABC();
    sub_5B30(v23, qword_161820);
    sub_9848(v12, v10);
    v24 = sub_125AAC();
    v25 = sub_125DFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v77 = v27;
      *v26 = 136315138;
      sub_A8580(&qword_161ED0, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v28 = sub_12618C();
      v30 = v29;
      sub_97EC(v10);
      v31 = sub_8530(v28, v30, &v77);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "validateCancellation: %s", v26, 0xCu);
      sub_5BB0(v27);
    }

    else
    {

      sub_97EC(v10);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    if (v78 - 1 < 2)
    {
      v32 = v76;
      sub_12376C();
      sub_97EC(v12);
LABEL_14:
      v33 = sub_12379C();
      v34 = *(*(v33 - 8) + 56);
      v35 = v32;
      goto LABEL_15;
    }

    sub_97EC(v12);
LABEL_17:
    v33 = sub_12379C();
    v34 = *(*(v33 - 8) + 56);
    v35 = v76;
    v36 = 1;
    return v34(v35, v36, 1, v33);
  }

  if (v21 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v14 + 96))(v16, v13);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v21 != enum case for Parse.directInvocation(_:))
  {
    if (v21 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v14 + 96))(v16, v13);
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v57 = sub_125ABC();
        sub_5B30(v57, qword_161820);
        v40 = sub_125AAC();
        v41 = sub_125DFC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          v43 = "validateCancellation: Received UserDialogAct - UserCancelled";
          goto LABEL_40;
        }

LABEL_41:

        v58 = v76;
        sub_12376C();
        swift_unknownObjectRelease();
        v33 = sub_12379C();
        v34 = *(*(v33 - 8) + 56);
        v35 = v58;
LABEL_15:
        v36 = 0;
        return v34(v35, v36, 1, v33);
      }

      if (qword_15EED0 == -1)
      {
LABEL_24:
        v39 = sub_125ABC();
        sub_5B30(v39, qword_161820);
        v40 = sub_125AAC();
        v41 = sub_125DFC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          v43 = "validateCancellation: Received UserDialogAct - UserRejected";
LABEL_40:
          _os_log_impl(&dword_0, v40, v41, v43, v42, 2u);

          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v21 != enum case for Parse.uso(_:))
      {
        goto LABEL_20;
      }

      (*(v14 + 96))(v16, v13);
      v44 = v70;
      (*(v70 + 32))(v71, v16, v72);
      v45 = v67;
      sub_123D5C();
      v46 = sub_123D9C();
      (*(v68 + 8))(v45, v69);
      v47 = 0;
      v48 = *(v46 + 16);
      v49 = v75;
      while (1)
      {
        if (v48 == v47)
        {
          v59 = 0;
          v60 = v66;
          v61 = v75;
          do
          {
            if (v48 == v59)
            {
              (*(v44 + 8))(v71, v72);

              goto LABEL_17;
            }

            if (v59 >= *(v46 + 16))
            {
              goto LABEL_55;
            }

            v62 = v73;
            (*(v61 + 16))(v60, v46 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v59++, v73);
            v63 = sub_123DFC();
            (*(v61 + 8))(v60, v62);
          }

          while ((v63 & 1) == 0);

          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v64 = sub_125ABC();
          sub_5B30(v64, qword_161820);
          v53 = sub_125AAC();
          v54 = sub_125DFC();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            v56 = "validateCancellation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v47 >= *(v46 + 16))
        {
          break;
        }

        v50 = v73;
        (*(v49 + 16))(v4, v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47++, v73);
        v51 = sub_123DEC();
        (*(v49 + 8))(v4, v50);
        if (v51)
        {

          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v52 = sub_125ABC();
          sub_5B30(v52, qword_161820);
          v53 = sub_125AAC();
          v54 = sub_125DFC();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            v56 = "validateCancellation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_50:
            _os_log_impl(&dword_0, v53, v54, v56, v55, 2u);
          }

LABEL_51:

          v32 = v76;
          sub_12376C();
          (*(v44 + 8))(v71, v72);
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
    }

    swift_once();
    goto LABEL_24;
  }

LABEL_20:
  v38 = sub_12379C();
  (*(*(v38 - 8) + 56))(v76, 1, 1, v38);
  return (*(v14 + 8))(v16, v13);
}

BOOL sub_A01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v111 = a1;
  v112 = a2;
  v3 = sub_123DAC();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123D6C();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1252AC();
  v98 = *(v7 - 8);
  v99 = v7;
  __chkstk_darwin(v7);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1252CC();
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_123D1C();
  v107 = *(v12 - 8);
  v108 = v12;
  __chkstk_darwin(v12);
  v109 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v14);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_123D3C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_124BCC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v111, v17);
  v25 = (*(v18 + 88))(v20, v17);
  if (v25 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v18 + 96))(v20, v17);
LABEL_5:
    v26 = *(v22 + 32);
    v26(v24, v20, v21);
    v26(v16, v24, v21);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v16);
    v27 = byte_1292FA[SLOBYTE(v115[0])];
    v28 = v112;
    goto LABEL_8;
  }

  if (v25 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v18 + 96))(v20, v17);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v25 == enum case for Parse.directInvocation(_:))
  {
    (*(v18 + 96))(v20, v17);
    v42 = v107;
    v41 = v108;
    (*(v107 + 32))(v109, v20, v108);
    v43 = sub_123CFC();
    v45 = v44;
    v46 = v106;
    (*(v106 + 104))(v11, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v9);
    v47 = sub_1252BC();
    v49 = v48;
    (*(v46 + 8))(v11, v9);
    v28 = v112;
    if (v43 == v47 && v45 == v49)
    {

LABEL_26:
      v27 = 10;
LABEL_27:
      (*(v42 + 8))(v109, v41);
LABEL_8:
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v29 = sub_125ABC();
      sub_5B30(v29, qword_161820);
      v30 = sub_125AAC();
      v31 = sub_125DFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v115[0] = swift_slowAlloc();
        *v32 = 136315394;
        v113 = v28;
        swift_getMetatypeMetadata();
        v33 = sub_125BAC();
        v35 = sub_8530(v33, v34, v115);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        LOBYTE(v113) = v27;
        v36 = sub_125BAC();
        v38 = sub_8530(v36, v37, v115);

        *(v32 + 14) = v38;
        _os_log_impl(&dword_0, v30, v31, "Testing currentIntentType %s against input verb %s", v32, 0x16u);
        swift_arrayDestroy();
      }

      result = 1;
      switch(v27)
      {
        case 1:
        case 3:
        case 4:
        case 9:
          v40 = sub_1255EC();
          goto LABEL_38;
        case 2:
          goto LABEL_35;
        case 5:
          v40 = sub_12555C();
          goto LABEL_38;
        case 7:
        case 17:
        case 18:
          v40 = sub_12558C();
          goto LABEL_38;
        case 8:
          v40 = sub_12564C();
          goto LABEL_38;
        case 10:
          if (sub_1256CC() == v28)
          {
            return 1;
          }

LABEL_35:
          v40 = sub_12561C();
          goto LABEL_38;
        case 12:
          v40 = sub_12550C();
          goto LABEL_38;
        case 13:
        case 14:
          return result;
        default:
          v40 = sub_12568C();
LABEL_38:
          result = v40 == v28;
          break;
      }

      return result;
    }

    v53 = sub_1261BC();

    if (v53)
    {
      goto LABEL_26;
    }

    v61 = sub_123D0C();
    if (!v61)
    {
      goto LABEL_77;
    }

    v62 = v61;
    v64 = v98;
    v63 = v99;
    v65 = v97;
    (*(v98 + 104))(v97, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v99);
    v66 = sub_12529C();
    v68 = v67;
    (*(v64 + 8))(v65, v63);
    if (*(v62 + 16))
    {
      v69 = sub_8AD8(v66, v68);
      v71 = v70;

      if (v71)
      {
        sub_8B50(*(v62 + 56) + 32 * v69, v115);

        if (swift_dynamicCast())
        {
          v27 = sub_B66D0(v113, v114);
          if (v27 != 19)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
    }

LABEL_77:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v92 = sub_125ABC();
    sub_5B30(v92, qword_161820);
    v93 = sub_125AAC();
    v94 = sub_125DFC();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v95, 2u);
    }

    (*(v42 + 8))(v109, v41);
    return 0;
  }

  v28 = v112;
  if (v25 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v18 + 96))(v20, v17);
    ObjectType = swift_getObjectType();
    v51 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v51)
    {
      v27 = sub_C69B0(v51);
      if (sub_B6264(v27) == 1886352499 && v52 == 0xE400000000000000)
      {

        goto LABEL_53;
      }

      v76 = sub_1261BC();

      if (v76)
      {
LABEL_53:
        v77 = sub_C6BD8();
        swift_unknownObjectRelease();

        if ((v77 & 1) == 0)
        {
          goto LABEL_8;
        }

        return 1;
      }

      swift_unknownObjectRelease();
LABEL_83:

      goto LABEL_8;
    }

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v72 = sub_125ABC();
    sub_5B30(v72, qword_161820);
    v73 = sub_125AAC();
    v74 = sub_125DFC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "No USO task found on input. Deferring to later checks for parse validity.", v75, 2u);
    }

    swift_unknownObjectRelease();

    return 1;
  }

  else if (v25 == enum case for Parse.uso(_:))
  {
    (*(v18 + 96))(v20, v17);
    v55 = v103;
    v54 = v104;
    v56 = v105;
    (*(v104 + 32))(v103, v20, v105);
    v57 = v100;
    sub_123D5C();
    v58 = sub_32E7C();
    v59 = (*(v101 + 8))(v57, v102);
    if (v58)
    {
      v27 = sub_C69B0(v59);
      if (sub_B6264(v27) == 1886352499 && v60 == 0xE400000000000000)
      {
      }

      else
      {
        v86 = sub_1261BC();

        if ((v86 & 1) == 0)
        {
          (*(v54 + 8))(v55, v56);
          goto LABEL_83;
        }
      }

      v87 = sub_C6BD8();

      (*(v54 + 8))(v55, v56);
      if ((v87 & 1) == 0)
      {
        goto LABEL_8;
      }

      return 1;
    }

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v82 = sub_125ABC();
    sub_5B30(v82, qword_161820);
    v83 = sub_125AAC();
    v84 = sub_125DFC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_0, v83, v84, "No USO task found on input. Deferring to later checks for parse validity.", v85, 2u);
    }

    (*(v54 + 8))(v55, v56);
    return 1;
  }

  else if (v25 == enum case for Parse.ifClientAction(_:))
  {
    (*(v18 + 8))(v20, v17);
    return 1;
  }

  else if (v25 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v78 = sub_125ABC();
    sub_5B30(v78, qword_161820);
    v79 = sub_125AAC();
    v80 = sub_125DFC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_0, v79, v80, "Empty parse found while testing valid input. Disallowing empty input.", v81, 2u);
    }

    return 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v88 = sub_125ABC();
    sub_5B30(v88, qword_161820);
    v89 = sub_125AAC();
    v90 = sub_125DEC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "Unknown parse type found while testing input validity. Disallowing unknown input.", v91, 2u);
    }

    (*(v18 + 8))(v20, v17);
    return 0;
  }
}

void sub_A11D4(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v281 = a2;
  v292 = a1;
  v290 = a4;
  v5 = sub_5AE8(&unk_161EC0, &unk_126E20);
  __chkstk_darwin(v5 - 8);
  v271 = &v254 - v6;
  v273 = sub_123A1C();
  v272 = *(v273 - 8);
  v7 = __chkstk_darwin(v273);
  v270 = &v254 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v267 = &v254 - v9;
  v10 = sub_123D1C();
  v275 = *(v10 - 8);
  v276 = v10;
  __chkstk_darwin(v10);
  v274 = &v254 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_123E4C();
  v282 = *(v12 - 8);
  v283 = v12;
  v13 = __chkstk_darwin(v12);
  v277 = &v254 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v280 = &v254 - v16;
  __chkstk_darwin(v15);
  v258 = &v254 - v17;
  v261 = sub_123DAC();
  v266 = *(v261 - 8);
  v18 = __chkstk_darwin(v261);
  v257 = &v254 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v260 = &v254 - v20;
  v264 = sub_123D6C();
  v21 = *(v264 - 8);
  v22 = __chkstk_darwin(v264);
  v255 = &v254 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v256 = &v254 - v25;
  __chkstk_darwin(v24);
  v265 = &v254 - v26;
  v269 = sub_123CDC();
  v268 = *(v269 - 8);
  v27 = __chkstk_darwin(v269);
  v259 = &v254 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v262 = &v254 - v29;
  v30 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v30 - 8);
  v278 = &v254 - v31;
  v289 = type metadata accessor for TimerNLv3Intent(0);
  v32 = __chkstk_darwin(v289);
  v287 = &v254 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v254 - v34;
  v36 = sub_123D3C();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v279 = &v254 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v291 = (&v254 - v40);
  v41 = sub_124BCC();
  v285 = *(v41 - 8);
  v286 = v41;
  __chkstk_darwin(v41);
  v284 = &v254 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v43 = sub_125ABC();
  v44 = sub_5B30(v43, qword_161820);
  v45 = sub_125AAC();
  v46 = sub_125DDC();
  v47 = os_log_type_enabled(v45, v46);
  v288 = a3;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v263 = v21;
    v49 = v48;
    v50 = v35;
    v51 = v44;
    v52 = swift_slowAlloc();
    v293 = a3;
    v294 = v52;
    *v49 = 136315138;
    swift_getMetatypeMetadata();
    v53 = sub_125BAC();
    v55 = v36;
    v56 = sub_8530(v53, v54, &v294);

    *(v49 + 4) = v56;
    v36 = v55;
    _os_log_impl(&dword_0, v45, v46, "TimerFlowUtils.decideActionForDisambiguationInput with intent type: %s", v49, 0xCu);
    sub_5BB0(v52);
    v44 = v51;
    v35 = v50;

    v21 = v263;
  }

  v57 = sub_A4794(v292, 0);
  v58 = v291;
  if ((v57 & 1) == 0)
  {
    sub_12378C();
    return;
  }

  sub_123CCC();
  v59 = v37;
  v60 = (*(v37 + 88))(v58, v36);
  if (v60 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v37 + 96))(v58, v36);
    goto LABEL_11;
  }

  if (v60 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v37 + 96))(v58, v36);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_11:
    v61 = v284;
    v62 = *(v285 + 32);
    v63 = v286;
    v62(v284, v58, v286);
    v62(v35, v61, v63);
    v291 = v35;
    v64 = v287;
    sub_9848(v35, v287);
    v65 = sub_125AAC();
    v66 = sub_125DFC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v286 = v44;
      v69 = v68;
      v294 = v68;
      *v67 = 136315138;
      sub_A8580(&qword_161ED0, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v70 = sub_12618C();
      v71 = v36;
      v73 = v72;
      sub_97EC(v64);
      v74 = sub_8530(v70, v73, &v294);
      v36 = v71;

      *(v67 + 4) = v74;
      _os_log_impl(&dword_0, v65, v66, "TimerNLIntent: %s", v67, 0xCu);
      sub_5BB0(v69);
    }

    else
    {

      sub_97EC(v64);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    v75 = v291;
    sub_12428C();
    if (v294 > 1u)
    {
      if (v294 != 2)
      {
        v87 = v279;
        sub_123CCC();
        v88 = sub_12532C();
        v89 = v278;
        (*(*(v88 - 8) + 56))(v278, 1, 1, v88);
        v90 = sub_A588C(v87, v89);
        sub_5CA8(v89, &qword_15FFB0, &unk_1270A0);
        (*(v59 + 8))(v87, v36);
        if (v90)
        {
          if (swift_dynamicCastUnknownClass())
          {
            sub_12377C();
          }

          else
          {
            v115 = v268;
            v116 = v262;
            v117 = v269;
            (*(v268 + 16))(v262, v292, v269);
            v90 = v90;
            v118 = sub_125AAC();
            v119 = sub_125DEC();

            if (os_log_type_enabled(v118, v119))
            {
              v120 = v116;
              v121 = swift_slowAlloc();
              v292 = swift_slowAlloc();
              v294 = v292;
              *v121 = 136315650;
              sub_A8580(&unk_161858, &type metadata accessor for Input, &protocol conformance descriptor for Input);
              v122 = sub_12618C();
              v124 = v123;
              (*(v115 + 8))(v120, v117);
              v125 = sub_8530(v122, v124, &v294);

              *(v121 + 4) = v125;
              *(v121 + 12) = 2080;
              v126 = sub_12631C();
              v128 = sub_8530(v126, v127, &v294);

              *(v121 + 14) = v128;
              *(v121 + 22) = 2080;
              v129 = v90;
              v130 = [v129 description];
              v131 = sub_125B9C();
              v133 = v132;

              v134 = sub_8530(v131, v133, &v294);

              *(v121 + 24) = v134;
              _os_log_impl(&dword_0, v118, v119, "Flows stack receives unexpected from input %s. Expecting: %s, Generated: %s", v121, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v115 + 8))(v116, v117);
            }

            sub_12378C();
          }
        }

        else
        {
          v100 = sub_125AAC();
          v101 = sub_125DEC();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_0, v100, v101, "Unable to parse intent from parse", v102, 2u);
          }

          sub_12378C();
        }

        v76 = v291;
        goto LABEL_69;
      }
    }

    else if (!v294 || (v281 & 1) != 0)
    {
      sub_12377C();
LABEL_22:
      v76 = v75;
LABEL_69:
      sub_97EC(v76);
      return;
    }

    sub_12376C();
    goto LABEL_22;
  }

  if (v60 == enum case for Parse.directInvocation(_:))
  {
    (*(v37 + 96))(v58, v36);
    v78 = v274;
    v77 = v275;
    v79 = v58;
    v80 = v276;
    (*(v275 + 32))(v274, v79, v276);
    v81 = v271;
    sub_12527C();
    v82 = v272;
    v83 = v273;
    if ((*(v272 + 48))(v81, 1, v273) == 1)
    {
      sub_5CA8(v81, &unk_161EC0, &unk_126E20);
      v84 = sub_125AAC();
      v85 = sub_125DFC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v84, v85, "Received confirmation directInvocation, buttonPressed", v86, 2u);
      }

      sub_12377C();
    }

    else
    {
      v103 = v267;
      (*(v82 + 32))(v267, v81, v83);
      v104 = v270;
      (*(v82 + 16))(v270, v103, v83);
      v105 = (*(v82 + 88))(v104, v83);
      if (v105 != enum case for ConfirmationResponse.confirmed(_:) && v105 != enum case for ConfirmationResponse.rejected(_:))
      {
        v149 = sub_125AAC();
        v150 = sub_125DEC();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&dword_0, v149, v150, "Received an unknown, unhandled SiriKit confirmation, returning .ignore() for interaction", v151, 2u);
          v103 = v267;
        }

        sub_12378C();
        v152 = *(v82 + 8);
        v152(v103, v83);
        (*(v77 + 8))(v78, v80);
        v152(v270, v83);
        return;
      }

      sub_12377C();
      (*(v82 + 8))(v103, v83);
    }

    (*(v77 + 8))(v78, v80);
    return;
  }

  if (v60 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v37 + 96))(v58, v36);
    v91 = *v58;
    if (v281)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        swift_unknownObjectRetain();
        v92 = sub_125AAC();
        v93 = sub_125DFC();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v92, v93))
        {
LABEL_39:

          sub_12377C();
LABEL_62:
          swift_unknownObjectRelease();
          return;
        }

        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v293 = v91;
        v294 = v95;
        *v94 = 136315138;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v96 = sub_125BAC();
        v98 = sub_8530(v96, v97, &v294);

        *(v94 + 4) = v98;
        v99 = "Received UserDialogAct - %s";
LABEL_38:
        _os_log_impl(&dword_0, v92, v93, v99, v94, 0xCu);
        sub_5BB0(v95);

        goto LABEL_39;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v135 = sub_125AAC();
        v136 = sub_125DFC();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_0, v135, v136, "Received UserDialogAct - UserCancelled", v137, 2u);
        }

        sub_12376C();
        goto LABEL_62;
      }
    }

    ObjectType = swift_getObjectType();
    v163 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v163)
    {
      v164 = sub_C69B0(v163);

      if (sub_B6264(v164) == 0x627265566F6ELL && v165 == 0xE600000000000000)
      {

LABEL_102:
        swift_unknownObjectRetain();
        v92 = sub_125AAC();
        v93 = sub_125DFC();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v92, v93))
        {
          goto LABEL_39;
        }

        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v293 = v91;
        v294 = v95;
        *v94 = 136315138;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v187 = sub_125BAC();
        v189 = sub_8530(v187, v188, &v294);

        *(v94 + 4) = v189;
        v99 = "decideActionForDisambiguationInput: decide handle disambiguation userDialogAct: %s";
        goto LABEL_38;
      }

      v186 = sub_1261BC();

      if (v186)
      {
        goto LABEL_102;
      }
    }

    v190 = v279;
    sub_123CCC();
    v191 = sub_12532C();
    v192 = v278;
    (*(*(v191 - 8) + 56))(v278, 1, 1, v191);
    v193 = sub_A588C(v190, v192);
    sub_5CA8(v192, &qword_15FFB0, &unk_1270A0);
    (*(v37 + 8))(v190, v36);
    if (v193 && (v194 = swift_dynamicCastUnknownClass()) != 0)
    {
      v195 = v194;
      v196 = v193;
      v197 = sub_125AAC();
      v198 = sub_125DFC();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v293 = v195;
        v294 = v200;
        *v199 = 136315138;
        swift_getWitnessTable();
        v201 = sub_12618C();
        v203 = sub_8530(v201, v202, &v294);

        *(v199 + 4) = v203;
        _os_log_impl(&dword_0, v197, v198, "decideActionForDisambiguationInput: Handling action for intent: %s", v199, 0xCu);
        sub_5BB0(v200);
      }

      sub_12377C();
      swift_unknownObjectRelease();
    }

    else
    {
      v204 = v193;
      v205 = sub_125AAC();
      v206 = sub_125DEC();

      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *v207 = 136315394;
        v208 = sub_12631C();
        v210 = sub_8530(v208, v209, &v294);

        *(v207 + 4) = v210;
        *(v207 + 12) = 2080;
        v293 = v193;
        v211 = v204;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v212 = sub_125BAC();
        v214 = sub_8530(v212, v213, &v294);

        *(v207 + 14) = v214;
        _os_log_impl(&dword_0, v205, v206, "decideActionForDisambiguationInput: Intent from parse does not match IntentType. Expected %s, received %s", v207, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      swift_unknownObjectRelease();
    }

    return;
  }

  if (v60 != enum case for Parse.uso(_:))
  {
    v138 = v36;
    v139 = v268;
    v140 = v259;
    v141 = v269;
    (*(v268 + 16))(v259, v292, v269);
    v142 = sub_125AAC();
    v143 = sub_125DEC();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v292 = swift_slowAlloc();
      v294 = v292;
      *v144 = 136315138;
      sub_123CCC();
      v145 = sub_125BAC();
      v147 = v146;
      (*(v139 + 8))(v140, v141);
      v148 = sub_8530(v145, v147, &v294);
      v58 = v291;

      *(v144 + 4) = v148;
      _os_log_impl(&dword_0, v142, v143, "Received unsupported parse for confirmation: %s", v144, 0xCu);
      sub_5BB0(v292);
    }

    else
    {

      (*(v139 + 8))(v140, v141);
    }

    sub_12378C();
    (*(v37 + 8))(v58, v138);
    return;
  }

  v286 = v44;
  v287 = v37;
  v106 = *(v37 + 96);
  v289 = v36;
  v106(v58, v36);
  v263 = v21;
  (*(v21 + 32))(v265, v58, v264);
  v107 = v260;
  sub_123D5C();
  v108 = sub_123D9C();
  v109 = *(v266 + 8);
  v266 += 8;
  v109(v107, v261);
  v110 = *(v108 + 16);
  v111 = (v282 + 8);
  if ((v281 & 1) == 0)
  {
    v153 = 0;
    v154 = v282;
    v155 = v283;
    while (v110 != v153)
    {
      if (v153 >= *(v108 + 16))
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        return;
      }

      v156 = v280;
      (*(v154 + 16))(v280, v108 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v153++, v155);
      v157 = sub_123DEC();
      (*(v154 + 8))(v156, v155);
      if (v157)
      {

        v158 = sub_125AAC();
        v159 = sub_125DFC();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          v161 = "USO parse userDialogActs contains hasRejected, and we're in a non-windowed config -- returning .cancel()!";
          goto LABEL_91;
        }

LABEL_92:

        sub_12376C();
        (*(v263 + 8))(v265, v264);
        return;
      }
    }

LABEL_85:
    v166 = 0;
    v167 = *(v108 + 16);
    v168 = v282;
    v169 = v283;
    while (v167 != v166)
    {
      if (v166 >= *(v108 + 16))
      {
        goto LABEL_126;
      }

      v170 = v277;
      (*(v168 + 16))(v277, v108 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v166++, v169);
      v171 = sub_123DFC();
      (*(v168 + 8))(v170, v169);
      if (v171)
      {

        v158 = sub_125AAC();
        v159 = sub_125DFC();
        if (!os_log_type_enabled(v158, v159))
        {
          goto LABEL_92;
        }

        v160 = swift_slowAlloc();
        *v160 = 0;
        v161 = "USO parse userDialogActs contains hasCancelled; returning .cancel()";
LABEL_91:
        _os_log_impl(&dword_0, v158, v159, v161, v160, 2u);

        goto LABEL_92;
      }
    }

    v178 = v257;
    v179 = v265;
    sub_123D5C();
    v180 = sub_123D8C();
    v181 = (v109)(v178, v261);
    v182 = v289;
    v183 = v264;
    if (v180)
    {
      v184 = sub_C69B0(v181);

      if (sub_B6264(v184) == 0x627265566F6ELL && v185 == 0xE600000000000000)
      {

LABEL_113:
        v216 = v179;
        v217 = v263;
        v218 = *(v263 + 16);
        v219 = v256;
        v218(v256, v216, v183);
        v220 = sub_125AAC();
        v221 = sub_125DFC();
        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          v292 = swift_slowAlloc();
          v294 = v292;
          *v222 = 136315138;
          v218(v255, v219, v183);
          v223 = sub_125BAC();
          v225 = v224;
          v226 = *(v217 + 8);
          v226(v219, v183);
          v227 = sub_8530(v223, v225, &v294);

          *(v222 + 4) = v227;
          _os_log_impl(&dword_0, v220, v221, "decideActionForDisambiguationInput decide handle disambiguation UsoParse: %s", v222, 0xCu);
          sub_5BB0(v292);
        }

        else
        {

          v226 = *(v217 + 8);
          v226(v219, v183);
        }

        sub_12377C();
        v226(v265, v183);
        return;
      }

      v215 = sub_1261BC();

      if (v215)
      {
        goto LABEL_113;
      }
    }

    v228 = v279;
    sub_123CCC();
    v229 = sub_12532C();
    v230 = v278;
    (*(*(v229 - 8) + 56))(v278, 1, 1, v229);
    v231 = sub_A588C(v228, v230);
    sub_5CA8(v230, &qword_15FFB0, &unk_1270A0);
    (*(v287 + 8))(v228, v182);
    if (v231 && (v232 = swift_dynamicCastUnknownClass()) != 0)
    {
      v233 = v232;
      v234 = v231;
      v235 = sub_125AAC();
      v236 = sub_125DFC();
      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        v293 = v233;
        v294 = v238;
        *v237 = 136315138;
        swift_getWitnessTable();
        v239 = sub_12618C();
        v241 = sub_8530(v239, v240, &v294);

        *(v237 + 4) = v241;
        _os_log_impl(&dword_0, v235, v236, "decideActionForDisambiguationInput: Handling action for intent: %s", v237, 0xCu);
        sub_5BB0(v238);
      }

      sub_12377C();
      (*(v263 + 8))(v265, v183);
    }

    else
    {
      v242 = v231;
      v243 = sub_125AAC();
      v244 = sub_125DEC();

      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *v245 = 136315394;
        v246 = sub_12631C();
        v248 = sub_8530(v246, v247, &v294);

        *(v245 + 4) = v248;
        v249 = v265;
        *(v245 + 12) = 2080;
        v293 = v231;
        v250 = v242;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v251 = sub_125BAC();
        v253 = sub_8530(v251, v252, &v294);

        *(v245 + 14) = v253;
        _os_log_impl(&dword_0, v243, v244, "decideActionForDisambiguationInput: Intent from parse does not match IntentType. Expected %s, received %s", v245, 0x16u);
        swift_arrayDestroy();
        v179 = v249;
      }

      sub_12378C();
      (*(v263 + 8))(v179, v183);
    }

    return;
  }

  v112 = 0;
  v113 = v258;
  while (1)
  {
    if (v110 == v112)
    {
      goto LABEL_85;
    }

    if (v112 >= *(v108 + 16))
    {
      goto LABEL_127;
    }

    (*(v282 + 16))(v113, v108 + ((*(v282 + 80) + 32) & ~*(v282 + 80)) + *(v282 + 72) * v112, v283);
    if (sub_123DDC() & 1) != 0 || (sub_123E2C())
    {
      break;
    }

    v114 = sub_123DEC();
    (*v111)(v113, v283);
    ++v112;
    if (v114)
    {

      goto LABEL_94;
    }
  }

  (*v111)(v113, v283);
LABEL_94:
  v172 = sub_125AAC();
  v173 = sub_125DFC();
  v174 = os_log_type_enabled(v172, v173);
  v175 = v264;
  v176 = v265;
  if (v174)
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&dword_0, v172, v173, "USO parse userDialogActs contains hasAccepted, hasWantedToProceed or hasRejected; returning .handle() since these are window actions", v177, 2u);
  }

  sub_12377C();
  (*(v263 + 8))(v176, v175);
}

uint64_t sub_A34D4()
{
  v0 = sub_5AE8(&qword_161868, &qword_1292F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  sub_124BBC();
  v3 = sub_1242AC();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_5CA8(v2, &qword_161868, &qword_1292F0);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_161820);
    v6 = sub_125AAC();
    v7 = sub_125DFC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Parse received is NOT a valid timer nlv3Intent: domainNode in nlv3Intent is nil", v8, 2u);
    }

    return 0;
  }

  v10 = sub_12429C();
  v12 = v11;
  (*(v4 + 8))(v2, v3);
  v13 = v10 == 0x72656D6974 && v12 == 0xE500000000000000;
  if (!v13 && (sub_1261BC() & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v14 = sub_125ABC();
    sub_5B30(v14, qword_161820);

    v15 = sub_125AAC();
    v16 = sub_125DFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      v19 = sub_8530(v10, v12, &v21);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_0, v15, v16, "Parse received is NOT a valid timer nlv3Intent: received unexpected domain node %s", v17, 0xCu);
      sub_5BB0(v18);
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

uint64_t sub_A3830(uint64_t a1)
{
  sub_12437C();
  sub_E344(v14, v12, &unk_161840, &qword_128110);
  if (v13)
  {
    sub_E344(v12, v11, &unk_161840, &qword_128110);
    sub_124A5C();
    if (swift_dynamicCast() || (sub_12454C(), swift_dynamicCast()) || (sub_12455C(), swift_dynamicCast()) || (sub_1244AC(), swift_dynamicCast()) || (sub_1245FC(), swift_dynamicCast()) || (sub_1244CC(), swift_dynamicCast()) || (sub_1245BC(), swift_dynamicCast()) || (sub_1244DC(), swift_dynamicCast()) || (sub_12445C(), swift_dynamicCast()) || (sub_12472C(), swift_dynamicCast()) || (sub_1245DC(), swift_dynamicCast()) || (sub_12458C(), swift_dynamicCast()) || (sub_12459C(), swift_dynamicCast()))
    {
      sub_5CA8(v14, &unk_161840, &qword_128110);

      sub_5BB0(v11);
      v1 = 1;
      goto LABEL_29;
    }

    sub_5BB0(v11);
  }

  if ((sub_C6BD8() & 1) != 0 && sub_C66F0())
  {

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v2 = sub_125ABC();
    sub_5B30(v2, qword_161820);
    v3 = sub_125AAC();
    v4 = sub_125DEC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Timer flow received non-timer NLv4 parse – but matches acceptable signature for sleep timer", v5, 2u);
    }

    sub_5CA8(v14, &unk_161840, &qword_128110);
    v1 = 1;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_161820);
    v7 = sub_125AAC();
    v8 = sub_125DEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Timer flow received non-timer NLv4 parse", v9, 2u);
    }

    sub_5CA8(v14, &unk_161840, &qword_128110);
    v1 = 0;
  }

LABEL_29:
  sub_5CA8(v12, &unk_161840, &qword_128110);
  return v1;
}

uint64_t sub_A3C90(uint64_t a1, char a2)
{
  sub_12437C();
  sub_E344(v38, v36, &unk_161840, &qword_128110);
  if (!v37)
  {
    goto LABEL_28;
  }

  sub_E344(v36, v35, &unk_161840, &qword_128110);
  sub_12449C();
  if (swift_dynamicCast() || (sub_12444C(), swift_dynamicCast()) || (sub_12443C(), swift_dynamicCast()) || (sub_12446C(), swift_dynamicCast()) || (sub_1244BC(), swift_dynamicCast()) || (sub_1244EC(), swift_dynamicCast()) || (sub_12456C(), swift_dynamicCast()) || (sub_1245AC(), swift_dynamicCast()) || (sub_1245CC(), swift_dynamicCast()) || (sub_12460C(), swift_dynamicCast()) || (sub_1245EC(), swift_dynamicCast()))
  {

    sub_5BB0(v35);
    sub_5CA8(v36, &unk_161840, &qword_128110);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v3 = sub_125ABC();
    sub_5B30(v3, qword_161820);
    sub_E344(v38, v36, &unk_161840, &qword_128110);
    v4 = sub_125AAC();
    v5 = sub_125DFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315138;
      sub_E344(v36, v35, &unk_161840, &qword_128110);
      sub_5AE8(&unk_161840, &qword_128110);
      v8 = sub_125BAC();
      v10 = v9;
      sub_5CA8(v36, &unk_161840, &qword_128110);
      v11 = sub_8530(v8, v10, v34);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_0, v4, v5, "Received a valid NoEntity task: %s", v6, 0xCu);
      sub_5BB0(v7);
    }

    else
    {

      sub_5CA8(v36, &unk_161840, &qword_128110);
    }

    v12 = v38;
    goto LABEL_19;
  }

  sub_1246AC();
  if (!swift_dynamicCast())
  {
    sub_5BB0(v35);
LABEL_28:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v23 = sub_125ABC();
    sub_5B30(v23, qword_161820);
    sub_E344(v38, v35, &unk_161840, &qword_128110);
    v24 = sub_125AAC();
    v25 = sub_125DFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315138;
      sub_E344(v35, v34, &unk_161840, &qword_128110);
      sub_5AE8(&unk_161840, &qword_128110);
      v28 = sub_125BAC();
      v30 = v29;
      sub_5CA8(v35, &unk_161840, &qword_128110);
      v31 = sub_8530(v28, v30, v32);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "Received an invalid NoEntity or not a NoEntity task: %s", v26, 0xCu);
      sub_5BB0(v27);
    }

    else
    {

      sub_5CA8(v35, &unk_161840, &qword_128110);
    }

    sub_5CA8(v38, &unk_161840, &qword_128110);
    goto LABEL_34;
  }

  if ((a2 & 1) != 0 && sub_C8908() != 3)
  {
    sub_5CA8(v38, &unk_161840, &qword_128110);
    sub_5BB0(v35);
    v12 = v36;
LABEL_19:
    sub_5CA8(v12, &unk_161840, &qword_128110);
    return 1;
  }

  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_161820);
  sub_E344(v38, v34, &unk_161840, &qword_128110);
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    sub_E344(v34, v32, &unk_161840, &qword_128110);
    sub_5AE8(&unk_161840, &qword_128110);
    v19 = sub_125BAC();
    v21 = v20;
    sub_5CA8(v34, &unk_161840, &qword_128110);
    v22 = sub_8530(v19, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "Received a UsoTask_noVerb_common_Setting task with no room confirmation (rejecting): %s", v17, 0xCu);
    sub_5BB0(v18);
  }

  else
  {

    sub_5CA8(v34, &unk_161840, &qword_128110);
  }

  sub_5CA8(v38, &unk_161840, &qword_128110);
  sub_5BB0(v35);
LABEL_34:
  sub_5CA8(v36, &unk_161840, &qword_128110);
  return 0;
}

uint64_t sub_A44BC(uint64_t a1)
{
  v13[0] = sub_124B9C();
  v13[1] = v1;
  strcpy(v11, "common_Alarm");
  HIBYTE(v11[6]) = 0;
  v11[7] = -5120;
  sub_A852C();
  v2 = sub_125F3C();

  if ((v2 & 1) == 0)
  {
    return 1;
  }

  sub_12437C();
  sub_E344(v13, v11, &unk_161840, &qword_128110);
  if (v12)
  {
    sub_12453C();
    if (swift_dynamicCast())
    {
LABEL_9:

      if (sub_124B7C())
      {
        v4 = sub_1242DC();
        v5 = v4 != 0;
        if (v4)
        {
          v6 = sub_1243BC();

          sub_5CA8(v13, &unk_161840, &qword_128110);
          result = v6;
          if (!v6)
          {
            return result;
          }
        }

        else
        {
          sub_5CA8(v13, &unk_161840, &qword_128110);
        }

        return v5;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_5CA8(v11, &unk_161840, &qword_128110);
  }

  sub_E344(v13, v11, &unk_161840, &qword_128110);
  if (!v12)
  {
    sub_5CA8(v11, &unk_161840, &qword_128110);
    goto LABEL_14;
  }

  sub_12457C();
  if (swift_dynamicCast())
  {
    goto LABEL_9;
  }

LABEL_14:
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v7 = sub_125ABC();
  sub_5B30(v7, qword_161820);
  v8 = sub_125AAC();
  v9 = sub_125DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Timer domain rejecting Alarm parse we cannot support", v10, 2u);
  }

  sub_5CA8(v13, &unk_161840, &qword_128110);
  return 0;
}

uint64_t sub_A4794(void *a1, int a2)
{
  v91 = a2;
  v3 = sub_123CDC();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v102 = &v90[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_123D1C();
  v111 = *(v5 - 8);
  v112 = v5;
  __chkstk_darwin(v5);
  v110 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_123E8C();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_5AE8(&qword_160510, &qword_12B170);
  __chkstk_darwin(v8 - 8);
  v99 = &v90[-v9];
  v96 = sub_123D7C();
  v98 = *(v96 - 8);
  v10 = __chkstk_darwin(v96);
  v92 = &v90[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v97 = &v90[-v12];
  v13 = sub_123E4C();
  v14 = *(v13 - 1);
  v113 = v13;
  v114 = v14;
  v15 = __chkstk_darwin(v13);
  v101 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v90[-v17];
  v19 = sub_123DAC();
  v105 = *(v19 - 8);
  v106 = v19;
  v20 = __chkstk_darwin(v19);
  v100 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v90[-v22];
  v24 = sub_123D6C();
  v107 = *(v24 - 8);
  v108 = v24;
  __chkstk_darwin(v24);
  v109 = &v90[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_123D3C();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  __chkstk_darwin(v28);
  v30 = &v90[-v29];
  v31 = sub_124BCC();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v90[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_123CCC();
  v35 = (*(v27 + 88))(v30, v26);
  if (v35 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v27 + 96))(v30, v26);
LABEL_5:
    (*(v32 + 32))(v34, v30, v31);
    v36 = sub_A34D4();
    (*(v32 + 8))(v34, v31);
    return v36 & 1;
  }

  if (v35 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v27 + 96))(v30, v26);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v35 == enum case for Parse.directInvocation(_:))
  {
    (*(v27 + 96))(v30, v26);
    v39 = v110;
    v38 = v111;
    v40 = v112;
    (*(v111 + 32))(v110, v30, v112);
    v41 = sub_12526C();
    (*(v38 + 8))(v39, v40);
    v36 = v41 ^ 1;
    return v36 & 1;
  }

  if (v35 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v27 + 96))(v30, v26);
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRelease();
      v36 = 1;
      return v36 & 1;
    }

    ObjectType = swift_getObjectType();
    v78 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v78)
    {
      v79 = v78;
      if (sub_A3830(v78) & 1) != 0 || (sub_A3C90(v79, v91 & 1))
      {
        swift_unknownObjectRelease();

        v36 = 1;
      }

      else
      {
        v36 = sub_A44BC(v79);
        swift_unknownObjectRelease();
      }

      return v36 & 1;
    }

    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v80 = sub_125ABC();
    sub_5B30(v80, qword_161820);
    v81 = sub_125AAC();
    v82 = sub_125DFC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "NLv4IntentOnly parse received is NOT valid timer input: not able to get timerTask", v83, 2u);
    }

    swift_unknownObjectRelease();

LABEL_49:
    v36 = 0;
    return v36 & 1;
  }

  if (v35 != enum case for Parse.uso(_:))
  {
    if (v35 == enum case for Parse.ifClientAction(_:))
    {
      (*(v27 + 8))(v30, v26);
      v36 = 1;
      return v36 & 1;
    }

    if (qword_15EED0 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

  (*(v27 + 96))(v30, v26);
  (*(v107 + 32))(v109, v30, v108);
  sub_123D5C();
  v26 = sub_123D9C();
  v42 = *(v105 + 8);
  v27 = v105 + 8;
  v42(v23, v106);
  v30 = 0;
  v43 = *(v26 + 16);
  a1 = v113;
  v44 = (v114 + 8);
  while (v43 != v30)
  {
    if (v30 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    (*(v114 + 16))(v18, v26 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v30, a1);
    if (sub_123DDC() & 1) != 0 || (sub_123DFC() & 1) != 0 || (sub_123DEC())
    {

      (*v44)(v18, v113);
      goto LABEL_27;
    }

    v45 = sub_123E2C();
    a1 = v113;
    (*v44)(v18, v113);
    ++v30;
    if (v45)
    {

LABEL_27:
      (*(v107 + 8))(v109, v108);
      v36 = 1;
      return v36 & 1;
    }
  }

  v59 = v100;
  sub_123D5C();
  a1 = v59;
  v60 = sub_123D9C();
  v30 = v113;
  v61 = v60;
  v42(v59, v106);
  v26 = *(v61 + 16);
  v62 = v101;
  if (v26)
  {
    v63 = 0;
    while (v63 < *(v61 + 16))
    {
      (*(v114 + 16))(v62, v61 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v63, v30);
      a1 = v62;
      if (sub_123DBC())
      {

        v65 = v99;
        (*(v114 + 32))(v99, v62, v30);
        v64 = 0;
        goto LABEL_40;
      }

      ++v63;
      (*v44)(v62, v30);
      if (v26 == v63)
      {
        goto LABEL_38;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
LABEL_29:
    v46 = sub_125ABC();
    sub_5B30(v46, qword_161820);
    v48 = v102;
    v47 = v103;
    v49 = v104;
    (*(v103 + 16))(v102, a1, v104);
    v50 = sub_125AAC();
    v51 = sub_125DFC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      LODWORD(v114) = v51;
      v53 = v48;
      v54 = v52;
      v113 = swift_slowAlloc();
      v115 = v113;
      *v54 = 136315138;
      sub_123CCC();
      v55 = sub_125BAC();
      v57 = v56;
      (*(v47 + 8))(v53, v49);
      v58 = sub_8530(v55, v57, &v115);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_0, v50, v114, "Parse received is NOT valid timer input: %s", v54, 0xCu);
      sub_5BB0(v113);
    }

    else
    {

      (*(v47 + 8))(v48, v49);
    }

    (*(v27 + 8))(v30, v26);
    goto LABEL_49;
  }

LABEL_38:

  v64 = 1;
  v65 = v99;
LABEL_40:
  v67 = v113;
  v66 = v114;
  (*(v114 + 56))(v65, v64, 1, v113);
  if ((*(v66 + 48))(v65, 1, v67) == 1)
  {
    sub_5CA8(v65, &qword_160510, &qword_12B170);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v71 = sub_125ABC();
    sub_5B30(v71, qword_161820);
    v72 = sub_125AAC();
    v73 = sub_125DEC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "Failed to parse userParse. Not valid timer input.", v74, 2u);
    }

LABEL_48:
    (*(v107 + 8))(v109, v108);
    goto LABEL_49;
  }

  v68 = v93;
  sub_123E0C();
  (*v44)(v65, v67);
  v69 = v92;
  sub_123E5C();
  (*(v94 + 8))(v68, v95);
  v70 = v96;
  (*(v98 + 32))(v97, v69, v96);
  sub_123F0C();
  v75 = sub_12424C();
  if (!(v75 >> 62))
  {
    if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_52;
    }

LABEL_74:

    if (qword_15EED0 == -1)
    {
LABEL_75:
      v86 = sub_125ABC();
      sub_5B30(v86, qword_161820);
      v87 = sub_125AAC();
      v88 = sub_125DEC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "USO tasks graph has no tasks. Not valid timer input.", v89, 2u);
      }

      (*(v98 + 8))(v97, v70);
      goto LABEL_48;
    }

LABEL_80:
    swift_once();
    goto LABEL_75;
  }

  v84 = v75;
  v85 = sub_1260FC();
  v75 = v84;
  if (!v85)
  {
    goto LABEL_74;
  }

LABEL_52:
  if ((v75 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
    {
      v76 = *(v75 + 32);

      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_80;
  }

  v76 = sub_125FFC();
LABEL_55:

  if (sub_A3830(v76) & 1) != 0 || (sub_A3C90(v76, v91 & 1))
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_A44BC(v76);
  }

  (*(v98 + 8))(v97, v70);
  (*(v107 + 8))(v109, v108);
  return v36 & 1;
}

id sub_A588C(uint64_t a1, uint64_t a2)
{
  v389 = a1;
  v367 = sub_1252AC();
  v371 = *(v367 - 8);
  v3 = __chkstk_darwin(v367);
  v342 = &v341 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v343 = &v341 - v6;
  v7 = __chkstk_darwin(v5);
  v351 = &v341 - v8;
  v9 = __chkstk_darwin(v7);
  v344 = &v341 - v10;
  v11 = __chkstk_darwin(v9);
  v352 = &v341 - v12;
  v13 = __chkstk_darwin(v11);
  v347 = &v341 - v14;
  v15 = __chkstk_darwin(v13);
  v346 = &v341 - v16;
  __chkstk_darwin(v15);
  v365 = &v341 - v17;
  v373 = sub_1252CC();
  v379 = *(v373 - 8);
  v18 = __chkstk_darwin(v373);
  v355 = &v341 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v356 = &v341 - v21;
  v22 = __chkstk_darwin(v20);
  v363 = &v341 - v23;
  __chkstk_darwin(v22);
  v369 = &v341 - v24;
  v378 = sub_123D1C();
  v25 = *(v378 - 8);
  v26 = __chkstk_darwin(v378);
  v28 = &v341 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v366 = &v341 - v30;
  v31 = __chkstk_darwin(v29);
  v364 = &v341 - v32;
  v33 = __chkstk_darwin(v31);
  v345 = &v341 - v34;
  __chkstk_darwin(v33);
  v36 = &v341 - v35;
  v359 = sub_123DAC();
  v358 = *(v359 - 8);
  __chkstk_darwin(v359);
  v357 = &v341 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = sub_123D6C();
  v361 = *(v362 - 8);
  __chkstk_darwin(v362);
  v360 = &v341 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_12532C();
  v386 = *(v39 - 8);
  v387 = v39;
  v40 = __chkstk_darwin(v39);
  v350 = &v341 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v368 = &v341 - v43;
  __chkstk_darwin(v42);
  v375 = &v341 - v44;
  v380 = type metadata accessor for TimerNLv3Intent(0);
  v45 = __chkstk_darwin(v380);
  v377 = &v341 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v383 = &v341 - v47;
  v48 = sub_124BCC();
  v384 = *(v48 - 8);
  v385 = v48;
  v49 = __chkstk_darwin(v48);
  v376 = &v341 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v382 = &v341 - v51;
  v391 = sub_123D3C();
  v388 = *(v391 - 1);
  v52 = __chkstk_darwin(v391);
  v349 = &v341 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v353 = &v341 - v55;
  __chkstk_darwin(v54);
  v390 = (&v341 - v56);
  v57 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v58 = __chkstk_darwin(v57);
  v60 = &v341 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v58);
  v374 = &v341 - v62;
  v63 = __chkstk_darwin(v61);
  v381 = &v341 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v341 - v66;
  __chkstk_darwin(v65);
  v69 = &v341 - v68;
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v70 = sub_125ABC();
  v71 = sub_5B30(v70, qword_161820);
  sub_E344(a2, v69, &qword_15FFB0, &unk_1270A0);
  v372 = v71;
  v72 = sub_125AAC();
  v73 = sub_125DFC();
  v74 = os_log_type_enabled(v72, v73);
  v348 = v28;
  v354 = v60;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v370 = v25;
    v77 = v76;
    *&v394 = v76;
    *v75 = 136315138;
    sub_E344(v69, v67, &qword_15FFB0, &unk_1270A0);
    v78 = sub_125BAC();
    v80 = v79;
    sub_5CA8(v69, &qword_15FFB0, &unk_1270A0);
    v81 = sub_8530(v78, v80, &v394);

    *(v75 + 4) = v81;
    _os_log_impl(&dword_0, v72, v73, "TimerFlowUtils makeIntentFromParse() called with halInfo: %s", v75, 0xCu);
    sub_5BB0(v77);
    v25 = v370;
  }

  else
  {

    sub_5CA8(v69, &qword_15FFB0, &unk_1270A0);
  }

  v83 = v388;
  v82 = v389;
  v84 = *(v388 + 16);
  v85 = v390;
  v86 = v391;
  v84(v390, v389, v391);
  v87 = (*(v83 + 88))(v85, v86);
  if (v87 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v83 + 96))(v85, v86);
    v89 = v384;
    v88 = v385;
    v90 = v382;
    (*(v384 + 32))(v382, v85, v385);
    v91 = v383;
    (*(v89 + 16))(v383, v90, v88);
    v92 = v381;
    sub_E344(a2, v381, &qword_15FFB0, &unk_1270A0);
    v94 = v386;
    v93 = v387;
    if ((*(v386 + 48))(v92, 1, v387) == 1)
    {
      sub_5CA8(v92, &qword_15FFB0, &unk_1270A0);
      v95 = sub_E1A4C();
LABEL_26:
      sub_97EC(v91);
      (*(v89 + 8))(v90, v88);
      return v95;
    }

    v97 = v375;
    (*(v94 + 32))(v375, v92, v93);
    v95 = sub_1252DC();
    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    if (!v394)
    {
      sub_30B8C(0, &qword_160620, NSNumber_ptr);
      isa = sub_125EFC(1).super.super.isa;
      [v95 setSkipConfirmation:isa];
    }

    goto LABEL_25;
  }

  if (v87 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v83 + 96))(v85, v86);
    sub_5AE8(&unk_15FF80, &unk_126EE0);
    v89 = v384;
    v88 = v385;
    v90 = v376;
    (*(v384 + 32))(v376, v85, v385);
    v91 = v377;
    (*(v89 + 16))(v377, v90, v88);
    v96 = v374;
    sub_E344(a2, v374, &qword_15FFB0, &unk_1270A0);
    v94 = v386;
    v93 = v387;
    if ((*(v386 + 48))(v96, 1, v387) == 1)
    {
      sub_5CA8(v96, &qword_15FFB0, &unk_1270A0);
      v95 = sub_123D2C();

      goto LABEL_26;
    }

    v97 = v368;
    (*(v94 + 32))(v368, v96, v93);
    v95 = sub_1252DC();
    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_A8580(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    if (!v394)
    {
      sub_30B8C(0, &qword_160620, NSNumber_ptr);
      v109 = sub_125EFC(1).super.super.isa;
      [v95 setSkipConfirmation:v109];
    }

LABEL_25:
    (*(v94 + 8))(v97, v93);
    goto LABEL_26;
  }

  if (v87 != enum case for Parse.directInvocation(_:))
  {
    if (v87 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v83 + 96))(v85, v86);
      v111 = sub_33F74(*v85, a2);
      if (v111)
      {
        v95 = v111;
        swift_unknownObjectRelease();
        return v95;
      }

      v156 = sub_125AAC();
      v157 = sub_125DEC();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_0, v156, v157, "Failed to parse timer NLv4Intent from userDialogAct", v158, 2u);
      }

      swift_unknownObjectRelease();
    }

    else if (v87 == enum case for Parse.uso(_:))
    {
      (*(v83 + 96))(v85, v86);
      v139 = v361;
      v140 = v360;
      v141 = v85;
      v142 = v362;
      (*(v361 + 32))(v360, v141, v362);
      v143 = v357;
      sub_123D5C();
      v144 = sub_32E7C();
      if (v144)
      {
        v95 = sub_33650(v144, a2);

        (*(v358 + 8))(v143, v359);
        if (v95)
        {
          (*(v139 + 8))(v140, v142);
          return v95;
        }
      }

      else
      {
        (*(v358 + 8))(v143, v359);
      }

      v205 = sub_125AAC();
      v206 = sub_125DEC();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 0;
        _os_log_impl(&dword_0, v205, v206, "Failed to parse timer intent from USO parse", v207, 2u);
      }

      (*(v139 + 8))(v140, v142);
    }

    else
    {
      if (v87 == enum case for Parse.ifClientAction(_:))
      {
        (*(v83 + 8))(v85, v86);
        v95 = [objc_allocWithZone(sub_1255EC()) init];
        [v95 setType:1];
        sub_1255DC();
        v153 = objc_allocWithZone(INSpeakableString);
        v154 = sub_125B8C();
        v155 = [v153 initWithSpokenPhrase:v154];

        [v95 setLabel:v155];
        return v95;
      }

      v195 = v353;
      v84(v353, v82, v86);
      v196 = sub_125AAC();
      v197 = sub_125DEC();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *&v394 = v199;
        *v198 = 136315138;
        v84(v349, v195, v391);
        v200 = sub_125BAC();
        v202 = v201;
        v203 = *(v83 + 8);
        v203(v195, v391);
        v204 = sub_8530(v200, v202, &v394);

        *(v198 + 4) = v204;
        _os_log_impl(&dword_0, v196, v197, "Received an unsupported parse: %s", v198, 0xCu);
        sub_5BB0(v199);
        v86 = v391;

        v85 = v390;
      }

      else
      {

        v203 = *(v83 + 8);
        v203(v195, v86);
      }

      v203(v85, v86);
    }

    return 0;
  }

  v389 = a2;
  (*(v83 + 96))(v85, v86);
  (*(v25 + 32))(v36, v85, v378);
  v341 = v36;
  v99 = sub_123CFC();
  v101 = v100;
  v102 = v379;
  v103 = v369;
  v104 = v373;
  v391 = *(v379 + 104);
  (v391)(v369, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v373);
  v105 = sub_1252BC();
  v107 = v106;
  v108 = *(v102 + 8);
  v379 = v102 + 8;
  v108(v103, v104);
  if (v99 == v105 && v101 == v107)
  {

    goto LABEL_32;
  }

  v112 = sub_1261BC();

  if (v112)
  {
LABEL_32:
    v113 = v341;
    v114 = sub_123D0C();
    if (!v114)
    {
      goto LABEL_55;
    }

    v115 = v114;
    v116 = v371;
    v117 = *(v371 + 104);
    v118 = v365;
    v119 = v367;
    v117(v365, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v367);
    v120 = sub_12529C();
    v122 = v121;
    v123 = *(v116 + 8);
    v371 = v116 + 8;
    v123(v118, v119);
    if (*(v115 + 16))
    {
      v124 = sub_8AD8(v120, v122);
      v126 = v125;

      if (v126)
      {
        sub_8B50(*(v115 + 56) + 32 * v124, &v394);
        if (swift_dynamicCast())
        {
          v127 = sub_B66D0(v392, v393);
          if (v127 == 1)
          {
            v270 = v346;
            v271 = v367;
            v117(v346, enum case for DirectInvocationUtils.Timer.UserInfoKey.usoEntity(_:), v367);
            v272 = sub_12529C();
            v274 = v273;
            v123(v270, v271);
            if (*(v115 + 16))
            {
              v275 = sub_8AD8(v272, v274);
              v276 = v341;
              if (v277)
              {
                sub_8B50(*(v115 + 56) + 32 * v275, &v394);
              }

              else
              {
                v394 = 0u;
                v395 = 0u;
              }
            }

            else
            {
              v394 = 0u;
              v395 = 0u;
              v276 = v341;
            }

            if (*(&v395 + 1))
            {
              if (swift_dynamicCast())
              {
                v289 = v392;
                v288 = v393;
                sub_122DFC();
                swift_allocObject();
                sub_122DEC();
                sub_124BDC();
                sub_A8580(&qword_161850, &type metadata accessor for UsoEntity, &protocol conformance descriptor for UsoEntity);
                sub_122DDC();

                sub_12434C();

                sub_12448C();

                v324 = v394;
                if (v394)
                {
                  sub_1255EC();
                  v95 = sub_F2998(v324, 1);

                  sub_E498(v289, v288);

                  (*(v25 + 8))(v276, v378);
                  return v95;
                }

                sub_E498(v289, v288);
              }
            }

            else
            {
              sub_5CA8(&v394, &unk_161840, &qword_128110);
            }

            v290 = sub_125AAC();
            v291 = sub_125DEC();
            if (os_log_type_enabled(v290, v291))
            {
              v292 = swift_slowAlloc();
              *v292 = 0;
              _os_log_impl(&dword_0, v290, v291, "The userData has a malformed or missing usoEntity to create.", v292, 2u);
            }

            (*(v25 + 8))(v276, v378);
            return 0;
          }

          if (v127 != 2)
          {
            if (v127 != 19)
            {

              v128 = *(v25 + 16);
              v129 = v345;
              v113 = v341;
              v128(v345, v341, v378);
              v130 = sub_125AAC();
              v131 = sub_125DEC();
              if (os_log_type_enabled(v130, v131))
              {
                v132 = swift_slowAlloc();
                v391 = swift_slowAlloc();
                *&v394 = v391;
                *v132 = 136315138;
                v133 = v378;
                v128(v364, v129, v378);
                v134 = sub_125BAC();
                v136 = v135;
                v137 = *(v25 + 8);
                v137(v129, v133);
                v138 = sub_8530(v134, v136, &v394);

                *(v132 + 4) = v138;
                _os_log_impl(&dword_0, v130, v131, "Unsupported verb or userData for undo direct invocation: %s", v132, 0xCu);
                sub_5BB0(v391);

                v137(v113, v133);
                return 0;
              }

LABEL_57:

              v170 = *(v25 + 8);
              v171 = v378;
              v170(v129, v378);
              v170(v113, v171);
              return 0;
            }

            goto LABEL_54;
          }

          v263 = v347;
          v264 = v367;
          v117(v347, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v367);
          v265 = sub_12529C();
          v267 = v266;
          v123(v263, v264);
          if (*(v115 + 16) && (v268 = sub_8AD8(v265, v267), (v269 & 1) != 0))
          {
            sub_8B50(*(v115 + 56) + 32 * v268, &v394);
          }

          else
          {
            v394 = 0u;
            v395 = 0u;
          }

          v278 = v341;

          if (*(&v395 + 1))
          {
            if (swift_dynamicCast())
            {
              v279 = v392;
              v280 = v393;
              v95 = [objc_allocWithZone(sub_12561C()) init];
              sub_1257EC();
              v281 = sub_1147F8(v279, v280);
              [v95 setTargetTimer:v281];

              v282 = [v95 targetTimer];
              if (v282)
              {
                v283 = v282;
                sub_30B8C(0, &qword_160620, NSNumber_ptr);
                v284 = sub_125EEC(0).super.super.isa;
                [v283 setShouldMatchAny:v284];
              }

              (*(v25 + 8))(v278, v378);
              return v95;
            }
          }

          else
          {
            sub_5CA8(&v394, &unk_161840, &qword_128110);
          }

          v285 = sub_125AAC();
          v286 = sub_125DEC();
          if (os_log_type_enabled(v285, v286))
          {
            v287 = swift_slowAlloc();
            *v287 = 0;
            _os_log_impl(&dword_0, v285, v286, "The userData has a malformed or missing timerId to delete.", v287, 2u);
          }

          (*(v25 + 8))(v278, v378);
          return 0;
        }
      }
    }

    else
    {
    }

LABEL_54:

    v113 = v341;
LABEL_55:
    v159 = *(v25 + 16);
    v129 = v366;
    v159(v366, v113, v378);
    v130 = sub_125AAC();
    v160 = sub_125DEC();
    if (os_log_type_enabled(v130, v160))
    {
      v161 = swift_slowAlloc();
      v370 = v25;
      v162 = v378;
      v163 = v161;
      v164 = swift_slowAlloc();
      *&v394 = v164;
      *v163 = 136315138;
      v159(v364, v129, v162);
      v165 = sub_125BAC();
      v167 = v166;
      v168 = *(v370 + 8);
      v168(v129, v162);
      v169 = sub_8530(v165, v167, &v394);

      *(v163 + 4) = v169;
      _os_log_impl(&dword_0, v130, v160, "Malformed userData for direct invocation: %s", v163, 0xCu);
      sub_5BB0(v164);

      v168(v341, v162);
      return 0;
    }

    goto LABEL_57;
  }

  v370 = v25;
  v145 = sub_123CFC();
  v147 = v146;
  v148 = v363;
  v149 = v373;
  (v391)(v363, enum case for DirectInvocationUtils.Timer.URI.disambiguation(_:), v373);
  v150 = sub_1252BC();
  v152 = v151;
  v108(v148, v149);
  if (v145 == v150 && v147 == v152)
  {
  }

  else
  {
    v172 = sub_1261BC();

    if ((v172 & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  v173 = sub_123D0C();
  if (!v173)
  {
LABEL_80:
    v394 = 0u;
    v395 = 0u;
    goto LABEL_81;
  }

  v174 = v173;
  v175 = v371;
  v176 = v352;
  v177 = v367;
  v390 = *(v371 + 104);
  (v390)(v352, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v367);
  v178 = sub_12529C();
  v180 = v179;
  v181 = *(v175 + 8);
  v181(v176, v177);
  if (!*(v174 + 16))
  {

    goto LABEL_79;
  }

  v182 = sub_8AD8(v178, v180);
  v184 = v183;

  if ((v184 & 1) == 0)
  {
LABEL_79:

    goto LABEL_80;
  }

  sub_8B50(*(v174 + 56) + 32 * v182, &v394);

  if (!*(&v395 + 1))
  {
LABEL_81:
    sub_5CA8(&v394, &unk_161840, &qword_128110);
    goto LABEL_82;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v185 = sub_B66D0(v392, v393), v185 == 19))
  {
LABEL_82:
    v208 = sub_123CFC();
    v210 = v209;
    v211 = v356;
    v212 = v373;
    (v391)(v356, enum case for DirectInvocationUtils.Timer.URI.handleVerbAction(_:), v373);
    v213 = sub_1252BC();
    v215 = v214;
    v108(v211, v212);
    if (v208 == v213 && v210 == v215)
    {
    }

    else
    {
      v216 = sub_1261BC();

      if ((v216 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    v217 = sub_123D0C();
    if (!v217)
    {
      goto LABEL_97;
    }

    v218 = v217;
    v219 = v371;
    v220 = v351;
    v221 = v367;
    v390 = *(v371 + 104);
    (v390)(v351, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v367);
    v222 = sub_12529C();
    v224 = v223;
    v225 = *(v219 + 8);
    v371 = v219 + 8;
    v225(v220, v221);
    if (*(v218 + 16))
    {
      v226 = sub_8AD8(v222, v224);
      v228 = v227;

      if (v228)
      {
        sub_8B50(*(v218 + 56) + 32 * v226, &v394);

        if (!*(&v395 + 1))
        {
          goto LABEL_98;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_99;
        }

        v229 = sub_B66D0(v392, v393);
        if (v229 == 19)
        {
          goto LABEL_99;
        }

        if (sub_B6264(v229) == 0x657461657263 && v230 == 0xE600000000000000)
        {
        }

        else
        {
          v293 = sub_1261BC();

          if ((v293 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v294 = sub_123D0C();
        if (v294)
        {
          v295 = v294;
          v296 = v343;
          v297 = v367;
          (v390)(v343, enum case for DirectInvocationUtils.Timer.UserInfoKey.duration(_:), v367);
          v298 = sub_12529C();
          v300 = v299;
          v225(v296, v297);
          if (*(v295 + 16) && (v301 = sub_8AD8(v298, v300), (v302 & 1) != 0))
          {
            sub_8B50(*(v295 + 56) + 32 * v301, &v394);
          }

          else
          {
            v394 = 0u;
            v395 = 0u;
          }

          if (*(&v395 + 1))
          {
            sub_30B8C(0, &qword_160620, NSNumber_ptr);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_99;
            }

            v314 = v392;
            v325 = sub_125AAC();
            v326 = sub_125DFC();
            if (os_log_type_enabled(v325, v326))
            {
              v327 = swift_slowAlloc();
              *v327 = 0;
              _os_log_impl(&dword_0, v325, v326, "Timer domain handling create timer action valid duration", v327, 2u);
            }

            v328 = sub_123D0C();
            if (v328)
            {
              v329 = v328;
              v330 = v342;
              v331 = v367;
              (v390)(v342, enum case for DirectInvocationUtils.Timer.UserInfoKey.label(_:), v367);
              v332 = sub_12529C();
              v334 = v333;
              v225(v330, v331);
              if (*(v329 + 16) && (v335 = sub_8AD8(v332, v334), (v336 & 1) != 0))
              {
                sub_8B50(*(v329 + 56) + 32 * v335, &v394);
              }

              else
              {
                v394 = 0u;
                v395 = 0u;
              }

              if (*(&v395 + 1))
              {
                v337 = swift_dynamicCast();
                if (v337)
                {
                  v338 = v392;
                }

                else
                {
                  v338 = 0;
                }

                if (v337)
                {
                  v339 = v393;
                }

                else
                {
                  v339 = 0;
                }

                goto LABEL_172;
              }
            }

            else
            {
              v394 = 0u;
              v395 = 0u;
            }

            sub_5CA8(&v394, &unk_161840, &qword_128110);
            v338 = 0;
            v339 = 0;
LABEL_172:
            sub_1255EC();
            [v314 doubleValue];
            v95 = sub_F1FAC(v338, v339, v340);
LABEL_173:

            (*(v370 + 8))(v341, v378);
            return v95;
          }

LABEL_98:
          sub_5CA8(&v394, &unk_161840, &qword_128110);
          goto LABEL_99;
        }

LABEL_97:
        v394 = 0u;
        v395 = 0u;
        goto LABEL_98;
      }
    }

    else
    {
    }

    goto LABEL_97;
  }

  LODWORD(v388) = v185;
  v186 = sub_123D0C();
  if (!v186)
  {
    goto LABEL_80;
  }

  v187 = v186;
  v188 = v344;
  v189 = v367;
  (v390)(v344, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v367);
  v190 = sub_12529C();
  v192 = v191;
  v181(v188, v189);
  if (*(v187 + 16) && (v193 = sub_8AD8(v190, v192), (v194 & 1) != 0))
  {
    sub_8B50(*(v187 + 56) + 32 * v193, &v394);
  }

  else
  {
    v394 = 0u;
    v395 = 0u;
  }

  if (!*(&v395 + 1))
  {
    goto LABEL_81;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_82;
  }

  v303 = v392;
  v304 = v393;
  sub_1257EC();
  v305 = sub_1147F8(v303, v304);
  v95 = sub_340DC(v305, v388);

  if (v95)
  {
    v306 = sub_125AAC();
    v307 = sub_125DDC();
    if (os_log_type_enabled(v306, v307))
    {
      v308 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      *&v394 = v309;
      *v308 = 136315138;
      LOBYTE(v392) = v388;
      v310 = sub_125BAC();
      v312 = sub_8530(v310, v311, &v394);

      *(v308 + 4) = v312;
      _os_log_impl(&dword_0, v306, v307, "Making intent for verb: %s", v308, 0xCu);
      sub_5BB0(v309);
    }

    v313 = v95;
    v314 = sub_125AAC();
    v315 = sub_125DDC();

    if (os_log_type_enabled(v314, v315))
    {
      v316 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      *&v394 = v317;
      *v316 = 136315138;
      v318 = v313;
      v319 = [v318 description];
      v320 = sub_125B9C();
      v322 = v321;

      v323 = sub_8530(v320, v322, &v394);

      *(v316 + 4) = v323;
      _os_log_impl(&dword_0, v314, v315, "Intent: %s", v316, 0xCu);
      sub_5BB0(v317);
    }

    goto LABEL_173;
  }

LABEL_99:
  v231 = sub_123CFC();
  v233 = v232;
  v234 = v355;
  v235 = v373;
  (v391)(v355, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v373);
  v236 = sub_1252BC();
  v238 = v237;
  v108(v234, v235);
  if (v231 == v236 && v233 == v238)
  {

    v239 = v370;
    v241 = v386;
    v240 = v387;
  }

  else
  {
    v242 = sub_1261BC();

    v239 = v370;
    v241 = v386;
    v240 = v387;
    if ((v242 & 1) == 0)
    {
      v250 = *(v370 + 16);
      v251 = v348;
      v252 = v341;
      v253 = v378;
      v250(v348, v341, v378);
      v254 = sub_125AAC();
      v255 = sub_125DEC();
      if (os_log_type_enabled(v254, v255))
      {
        v256 = swift_slowAlloc();
        v391 = swift_slowAlloc();
        *&v394 = v391;
        *v256 = 136315138;
        v250(v364, v251, v253);
        v257 = sub_125BAC();
        v259 = v258;
        v260 = *(v239 + 8);
        v260(v251, v253);
        v261 = sub_8530(v257, v259, &v394);

        *(v256 + 4) = v261;
        _os_log_impl(&dword_0, v254, v255, "Timer received an unsupported direct invocation: %s", v256, 0xCu);
        sub_5BB0(v391);

        v260(v252, v253);
      }

      else
      {

        v262 = *(v239 + 8);
        v262(v251, v253);
        v262(v252, v253);
      }

      return 0;
    }
  }

  v243 = v354;
  sub_E344(v389, v354, &qword_15FFB0, &unk_1270A0);
  v244 = (*(v241 + 48))(v243, 1, v240);
  v245 = v341;
  if (v244 == 1)
  {
    sub_5CA8(v243, &qword_15FFB0, &unk_1270A0);
    v246 = sub_125AAC();
    v247 = sub_125DEC();
    if (os_log_type_enabled(v246, v247))
    {
      v248 = swift_slowAlloc();
      *v248 = 0;
      _os_log_impl(&dword_0, v246, v247, "TimerToDismiss is empty or remoteDevice is nil, falling back to cancel timer.", v248, 2u);
    }

    v95 = [objc_allocWithZone(sub_12561C()) init];
  }

  else
  {
    v249 = v350;
    (*(v241 + 32))(v350, v243, v240);
    v95 = sub_1252DC();
    (*(v241 + 8))(v249, v240);
  }

  (*(v239 + 8))(v245, v378);
  return v95;
}

unint64_t sub_A852C()
{
  result = qword_161870;
  if (!qword_161870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161870);
  }

  return result;
}

uint64_t sub_A8580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A85C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_12352C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_12532C();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  __chkstk_darwin(v8);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v12 = __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  if (qword_15EED0 != -1)
  {
    swift_once();
  }

  v20 = sub_125ABC();
  v21 = sub_5B30(v20, qword_161820);
  v61 = a3;
  sub_E344(a3, v19, &qword_15FFB0, &unk_1270A0);
  v62 = v21;
  v22 = sub_125AAC();
  v23 = sub_125DFC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v58 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v57 = v6;
    v27 = v26;
    v65 = v26;
    *v25 = 136315138;
    sub_E344(v19, v17, &qword_15FFB0, &unk_1270A0);
    v28 = sub_125BAC();
    v30 = v29;
    sub_5CA8(v19, &qword_15FFB0, &unk_1270A0);
    v31 = sub_8530(v28, v30, &v65);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v22, v23, "makeIntentExecutionBehavior: Deciding execution behavior with halInfo: %s", v25, 0xCu);
    sub_5BB0(v27);
    v6 = v57;

    v5 = v58;
  }

  else
  {

    sub_5CA8(v19, &qword_15FFB0, &unk_1270A0);
  }

  sub_E344(v61, v14, &qword_15FFB0, &unk_1270A0);
  v33 = v63;
  v32 = v64;
  if ((*(v64 + 48))(v14, 1, v63) == 1)
  {
    sub_5CA8(v14, &qword_15FFB0, &unk_1270A0);
LABEL_16:
    v41 = sub_125AAC();
    v42 = sub_125DFC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v43, 2u);
    }

    sub_12356C();

    sub_12574C();
    sub_30B8C(0, &qword_161888, INIntent_ptr);
    v44 = a2;
    v45 = v60;
    sub_12351C();
    v46 = sub_12355C();
    (*(v6 + 8))(v45, v5);
    return v46;
  }

  v34 = v59;
  (*(v32 + 32))();
  v35 = sub_1252EC();
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = sub_125F7C();

    if (!v36)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v37 = *(v35 + 16);

    if (!v37)
    {
LABEL_15:
      (*(v32 + 8))(v34, v33);
      goto LABEL_16;
    }
  }

  v38 = sub_1251FC();
  if (!v38)
  {
    goto LABEL_15;
  }

  v39 = v38;
  sub_1252FC();
  if (v40)
  {

    goto LABEL_15;
  }

  v48 = v39;
  v49 = sub_125AAC();
  v50 = sub_125DFC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65 = v52;
    *v51 = 136315138;
    v53 = sub_12594C();
    v55 = sub_8530(v53, v54, &v65);

    *(v51 + 4) = v55;
    v33 = v63;
    _os_log_impl(&dword_0, v49, v50, "makeIntentExecutionBehavior: Handle on target device: %s", v51, 0xCu);
    sub_5BB0(v52);
  }

  sub_12356C();
  v46 = sub_12354C();

  (*(v64 + 8))(v34, v33);
  return v46;
}

uint64_t sub_A8C70()
{
  v0 = sub_123DAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_123D6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v9 + 96))(v11, v8);
    ObjectType = swift_getObjectType();
    if (SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType))
    {
      v14 = sub_C8908();

      swift_unknownObjectRelease();
      return v14;
    }

    swift_unknownObjectRelease();
  }

  else if (v12 == enum case for Parse.uso(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    sub_123D5C();
    v16 = sub_123D8C();
    (*(v1 + 8))(v3, v0);
    if (v16)
    {
      v17 = sub_C8908();

      (*(v5 + 8))(v7, v4);
      return v17;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  return 3;
}

uint64_t type metadata accessor for DismissTimerCATsSimple(uint64_t a1)
{
  result = qword_161890;
  if (!qword_161890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_606C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_A91B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_124EDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_124E6C();
  (*(v4 + 8))(a2, v3);
  return v7;
}

Swift::Int sub_A9354(unsigned __int8 a1)
{
  sub_12626C();
  sub_12627C(a1);
  return sub_12628C();
}

Swift::Int sub_A93B8(uint64_t a1)
{
  sub_12626C();
  sub_A932C(v3, *v1);
  return sub_12628C();
}

uint64_t getEnumTagSinglePayload for CircuitBreakerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CircuitBreakerError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_A950C()
{
  sub_12626C();
  sub_12627C(0);
  return sub_12628C();
}

Swift::Int sub_A9578(uint64_t a1)
{
  sub_12626C();
  sub_12627C(0);
  return sub_12628C();
}

uint64_t sub_A95BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_5AE8(&qword_161B50, &qword_129580);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_5AE8(&unk_15F170, &unk_126E00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_5CA8(a1, &qword_161B50, &qword_129580);
    v13 = sub_8C3C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_AB7E0();
        v17 = v21;
      }

      sub_96B30(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_AB1CC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_5CA8(v8, &qword_161B50, &qword_129580);
  }

  else
  {
    sub_96B30(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_AB440(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_A97F0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161A60);
  sub_5B30(v0, qword_161A60);
  return sub_1257AC();
}

uint64_t sub_A983C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a1;
  v29 = a3;
  v3 = sub_125A9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_125ABC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_124FFC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_12501C();
  v27 = *(v15 - 8);
  v28 = v15;
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for SiriTimeMeasurement.LogDescription.bobcatTimers(_:), v11);
  if (qword_15EED8 != -1)
  {
    swift_once();
  }

  v18 = sub_5B30(v7, qword_161A60);
  (*(v8 + 16))(v10, v18, v7);
  mach_absolute_time();
  sub_12502C();
  sub_125E3C();
  v19 = sub_12579C();
  sub_125A8C();
  sub_125A7C();

  v20 = *(v4 + 8);
  v20(v6, v3);
  v21 = sub_23B08(v25, v25[3]);
  sub_ABA04(v26, *v21);
  sub_125E2C();
  v22 = sub_12579C();
  sub_125A8C();
  sub_125A7C();

  v20(v6, v3);
  sub_12500C();
  sub_124E2C();
  return (*(v27 + 8))(v17, v28);
}

void *sub_A9C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AD09C(&qword_161B88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  result = sub_12620C();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_A9D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23B08((v3 + 32), *(v3 + 56));
  v18[2] = a1;
  v18[3] = a2;
  v6 = sub_1260DC();
  sub_A9C7C(sub_AD018, v18, v6);
  swift_beginAccess();
  sub_1262DC();
  swift_endAccess();
  result = sub_1262CC();
  if (result)
  {
    if (qword_15EED8 != -1)
    {
      swift_once();
    }

    v8 = sub_125ABC();
    sub_5B30(v8, qword_161A60);

    v9 = sub_125AAC();
    v10 = sub_125DEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_1262BC();
      v14 = sub_8530(v12, v13, v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = sub_1262BC();
      v17 = sub_8530(v15, v16, v19);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_0, v9, v10, "Exceeded max total time, %s > %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    sub_AD048();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_A9F90()
{
  sub_5BB0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_A9FEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = sub_5AE8(&qword_161B50, &qword_129580);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  a3(v7);
  v10 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_A95BC(v9, a4);
}

void sub_AA0E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_5AE8(&qword_161B48, &qword_129578);
  v4 = __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  sub_E344(a1, v14, &qword_161B48, &qword_129578);
  sub_96B30(&v14[*(v3 + 48)], v17);
  v18 = sub_124E4C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_5CA8(v17, &unk_15F170, &unk_126E00);
    if (qword_15EED8 != -1)
    {
      swift_once();
    }

    v20 = sub_125ABC();
    sub_5B30(v20, qword_161A60);
    sub_E344(a1, v9, &qword_161B48, &qword_129578);
    v21 = sub_125AAC();
    v22 = sub_125DEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      sub_E344(v9, v6, &qword_161B48, &qword_129578);
      v25 = 0x53736574756E696DLL;
      v26 = 0xEE0073646E6F6365;
      if (*v6 != 2)
      {
        v25 = 0xD000000000000020;
        v26 = 0x800000000012C180;
      }

      v27 = 0x73646E6F636573;
      if (!*v6)
      {
        v27 = 0x746C7561666564;
      }

      if (*v6 <= 1u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      if (*v6 <= 1u)
      {
        v29 = 0xE700000000000000;
      }

      else
      {
        v29 = v26;
      }

      v30 = *(v3 + 48);
      sub_5CA8(v9, &qword_161B48, &qword_129578);
      sub_5CA8(&v6[v30], &unk_15F170, &unk_126E00);
      v31 = sub_8530(v28, v29, &v35);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_0, v21, v22, "No print value for dialog candidate %s", v23, 0xCu);
      sub_5BB0(v24);
    }

    else
    {

      sub_5CA8(v9, &qword_161B48, &qword_129578);
    }

    v32 = v34;
    *(v34 + 32) = 0;
    *v32 = 0u;
    v32[1] = 0u;
  }

  else
  {
    sub_124E3C();
    (*(v19 + 8))(v17, v18);
    sub_125A1C();
    swift_allocObject();
    sub_125A0C();
    sub_E344(a1, v12, &qword_161B48, &qword_129578);
    v33 = *(v3 + 48);
    sub_1259DC();

    sub_5CA8(&v12[v33], &unk_15F170, &unk_126E00);
    sub_1259EC();

    sub_1259FC();
  }
}

Swift::Int sub_AA660()
{
  sub_12626C();
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_AA734(uint64_t a1)
{
  sub_125BFC();
}

Swift::Int sub_AA7F4(uint64_t a1)
{
  sub_12626C();
  sub_125BFC();

  return sub_12628C();
}

unint64_t sub_AA8C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_ACF30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_AA8F4(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEE0073646E6F6365;
  v5 = 0x53736574756E696DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000020;
    v4 = 0x800000000012C180;
  }

  if (*v1)
  {
    v3 = 0x73646E6F636573;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_AA984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_5AE8(&qword_15F6B0, &unk_129760);
  v33 = v4;
  result = sub_12611C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        sub_E3AC(v24, v34);
      }

      else
      {
        sub_AD304(v24, v34);
      }

      sub_12626C();
      sub_125BFC();
      result = sub_12628C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_E3AC(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_AAC48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_5AE8(&unk_15F170, &unk_126E00);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = *v2;
  sub_5AE8(&qword_161B68, &qword_1295B0);
  v35 = v4;
  result = sub_12611C();
  v9 = result;
  if (*(v7 + 16))
  {
    v33[0] = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v33[1] = 0x800000000012C180;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v34 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v35)
      {
        sub_96B30(v27, v36);
      }

      else
      {
        sub_E344(v27, v36, &unk_15F170, &unk_126E00);
      }

      sub_12626C();
      sub_125BFC();

      result = sub_12628C();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = sub_96B30(v36, *(v9 + 56) + v26 * v20);
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33[0];
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33[0];
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_AB010(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_125F5C() + 1) & ~v5;
    do
    {
      sub_12626C();

      sub_125BFC();
      v11 = sub_12628C();

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
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
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

unint64_t sub_AB1CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_125F5C() + 1) & ~v5;
    while (1)
    {
      sub_12626C();
      sub_125BFC();

      result = sub_12628C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_AB440(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_8C3C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_AB7E0();
      goto LABEL_7;
    }

    sub_AAC48(v13, a3 & 1);
    v20 = sub_8C3C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 72) * v10;

    return sub_22A1C(a1, v18);
  }

LABEL_13:

  return sub_AB598(v10, a2, a1, v16);
}

uint64_t sub_AB598(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_5AE8(&unk_15F170, &unk_126E00);
  result = sub_96B30(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_AB638()
{
  v1 = v0;
  sub_5AE8(&qword_15F6B0, &unk_129760);
  v2 = *v0;
  v3 = sub_12610C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 48 * v17;
        sub_AD304(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_E3AC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

void *sub_AB7E0()
{
  v1 = v0;
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  sub_5AE8(&qword_161B68, &qword_1295B0);
  v5 = *v0;
  v6 = sub_12610C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_E344(*(v5 + 56) + v22, v4, &unk_15F170, &unk_126E00);
        *(*(v7 + 48) + v20) = v21;
        result = sub_96B30(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_ABA04(uint64_t a1, uint64_t a2)
{
  v78 = sub_5AE8(&qword_161B48, &qword_129578);
  __chkstk_darwin(v78);
  v5 = &v72 - v4;
  v6 = sub_5AE8(&qword_161B50, &qword_129580);
  __chkstk_darwin(v6 - 8);
  v8 = &v72 - v7;
  v9 = sub_122FEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5AE8(&qword_161B58, &unk_129588);
  __chkstk_darwin(v13 - 8);
  v15 = &v72 - v14;
  v80 = sub_12300C();
  v79 = *(v80 - 8);
  v16 = __chkstk_darwin(v80);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v87 = type metadata accessor for DefaultCircuitBreaker();
  v88 = &off_1592C0;
  v86 = a2;

  v21 = 0;
  if ((sub_ACB04() & 1) != 0 && a1)
  {

    v22 = sub_125A5C();
    if (!v23)
    {
      goto LABEL_53;
    }

    v77 = v23;
    v75 = v22;
    sub_124C7C();
    v21 = sub_124C5C();
    if (v21)
    {
      i = v5;
      v76 = a1;
      sub_124C4C();

      sub_124CDC();

      v24 = v79;
      v25 = v18;
      v26 = v80;
      (*(v79 + 32))(v20, v25, v80);
      sub_122FFC();
      sub_122FDC();
      (*(v10 + 8))(v12, v9);
      v27 = sub_122F9C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v15, 1, v27) == 1)
      {
        (*(v24 + 8))(v20, v26);

        sub_5CA8(v15, &qword_161B58, &unk_129588);
LABEL_54:
        v21 = 0;
        goto LABEL_55;
      }

      v29 = sub_122F8C();
      v31 = v30;
      (*(v28 + 8))(v15, v27);
      if (sub_ACCD0(v20, v29, v31))
      {
        v85 = &_swiftEmptyDictionarySingleton;
        if (v29 == 28261 && v31 == 0xE200000000000000)
        {

          v32 = i;
        }

        else
        {
          v33 = sub_1261BC();

          v32 = i;
          if ((v33 & 1) == 0)
          {
            v34 = v76;
            v38 = v80;
            goto LABEL_23;
          }
        }

        v34 = v76;
        v35 = COERCE_DOUBLE(sub_124D2C()) + 30.0;
        if (v36)
        {
          v35 = 30.0;
        }

        v37 = fmod(v35, 60.0);
        v38 = v80;
        if (v37 == 0.0)
        {
          goto LABEL_21;
        }

        v39 = COERCE_DOUBLE(sub_124D2C()) / 60.0 + 30.0;
        if (v40)
        {
          v39 = 30.0;
        }

        if (fmod(v39, 60.0) == 0.0)
        {
LABEL_21:
          v41 = sub_23B08(&v86, v87);
          __chkstk_darwin(v41);
          *(&v72 - 2) = &v85;
          *(&v72 - 1) = v34;
          sub_A9D14(sub_ACFE4, (&v72 - 4));
          v34 = v76;
        }

LABEL_23:
        v42 = COERCE_DOUBLE(sub_124D2C());
        if ((v43 & 1) == 0 && v42 >= 3600.0)
        {
          v44 = sub_23B08(&v86, v87);
          __chkstk_darwin(v44);
          *(&v72 - 2) = &v85;
          *(&v72 - 1) = v34;
          sub_A9D14(sub_ACFB0, (&v72 - 4));
          v34 = v76;
        }

        v45 = COERCE_DOUBLE(sub_124D2C());
        if ((v46 & 1) == 0 && v45 >= 60.0)
        {
          v47 = COERCE_DOUBLE(sub_124D2C());
          if ((v48 & 1) != 0 || v47 <= 3600.0)
          {
            v49 = sub_23B08(&v86, v87);
            __chkstk_darwin(v49);
            *(&v72 - 2) = &v85;
            *(&v72 - 1) = v34;
            sub_A9D14(sub_ACF7C, (&v72 - 4));
          }
        }

        while (1)
        {
          swift_beginAccess();
          if (!v85[2])
          {
            break;
          }

          v73 = v20;
          sub_124D1C();
          v54 = sub_5AE8(&unk_15F170, &unk_126E00);
          v20 = *(v54 - 8);
          (*(v20 + 7))(v8, 0, 1, v54);
          swift_beginAccess();
          sub_A95BC(v8, 0);
          swift_endAccess();
          v55 = v85;
          v56 = (v85 + 8);
          v57 = 1 << *(v85 + 32);
          v58 = -1;
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          v8 = v58 & v85[8];
          v59 = (v57 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v60 = 0;
          v61 = _swiftEmptyArrayStorage;
          for (i = v55; v8; v55 = i)
          {
LABEL_42:
            while (1)
            {
              v63 = __clz(__rbit64(v8)) | (v60 << 6);
              v64 = *(v55[6] + v63);
              sub_E344(v55[7] + *(v20 + 9) * v63, &v32[*(v78 + 48)], &unk_15F170, &unk_126E00);
              *v32 = v64;
              sub_AA0E0(v32, &v82);
              v8 &= v8 - 1;
              sub_5CA8(v32, &qword_161B48, &qword_129578);
              if (v83)
              {
                break;
              }

              sub_5CA8(&v82, &qword_161B60, &qword_129598);
              if (!v8)
              {
                goto LABEL_38;
              }
            }

            sub_2F4EC(&v82, &v84);
            sub_2F4EC(&v84, &v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_CDED8(0, v61[2] + 1, 1, v61);
            }

            v66 = v61[2];
            v65 = v61[3];
            if (v66 >= v65 >> 1)
            {
              v61 = sub_CDED8((v65 > 1), v66 + 1, 1, v61);
            }

            v61[2] = v66 + 1;
            sub_2F4EC(&v82, &v61[5 * v66 + 4]);
          }

LABEL_38:
          while (1)
          {
            v62 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              break;
            }

            if (v62 >= v59)
            {

              v67 = v73;
              sub_122F7C();
              sub_125A2C();

              sub_125A4C();
              sub_23B08(&v82, v83);
              sub_125A3C();

              sub_23B08(v81, v81[3]);
              v69 = sub_125A6C();
              v71 = sub_ACF30(v69, v70);

              sub_5BB0(&v84);
              (*(v79 + 8))(v67, v80);
              sub_5BB0(v81);
              if (v71 == 4)
              {
                v21 = 0;
              }

              else
              {
                v21 = v71;
              }

              sub_5BB0(&v82);

              goto LABEL_55;
            }

            v8 = *&v56[8 * v62];
            ++v60;
            if (v8)
            {
              v60 = v62;
              goto LABEL_42;
            }
          }

          __break(1u);
          swift_once();
          v50 = sub_125ABC();
          sub_5B30(v50, qword_161A60);
          v51 = sub_125AAC();
          v52 = sub_125DEC();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 134217984;
            swift_beginAccess();
            *(v53 + 4) = v85[2];
            _os_log_impl(&dword_0, v51, v52, "Circuit breaker tripped, %ld dialog candidates", v53, 0xCu);
          }

          v38 = v80;
        }

        (*(v79 + 8))(v20, v38);

        goto LABEL_53;
      }

      (*(v79 + 8))(v20, v80);

LABEL_53:

      goto LABEL_54;
    }
  }

LABEL_55:
  sub_5BB0(&v86);
  return v21;
}

id sub_ACB04()
{
  v0 = sub_124CCC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_124C7C();
  sub_124C6C();
  sub_124C3C();

  sub_1254FC();

  sub_124C9C();
  sub_AD09C(&qword_161B78, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
  v7 = sub_125B7C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    return &dword_0 + 1;
  }

  v9 = [objc_opt_self() sharedPreferences];
  v10 = [v9 siriResponseShouldAlwaysPrint];

  return v10;
}

BOOL sub_ACCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1250BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_161B70, &qword_1295B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  if ((a2 != 28261 || a3 != 0xE200000000000000) && (sub_1261BC() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_122FCC();
  v12 = sub_122FBC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v15 = sub_122FAC();
    v17 = v16;
    (*(v13 + 8))(v11, v12);
    if (v15 == 21333 && v17 == 0xE200000000000000)
    {
    }

    else
    {
      v19 = sub_1261BC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  sub_5CA8(v11, &qword_161B70, &qword_1295B8);
LABEL_6:
  sub_1250AC();
  v14 = sub_12508C();
  (*(v6 + 8))(v8, v5);
  return v14;
}

unint64_t sub_ACF30(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_157F00;
  v6._object = a2;
  v4 = sub_12613C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_AD048()
{
  result = qword_161B80;
  if (!qword_161B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161B80);
  }

  return result;
}

uint64_t sub_AD09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TimerNaturalLanguageGeneration.TimerDurationPhrase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimerNaturalLanguageGeneration.TimerDurationPhrase(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_AD258()
{
  result = qword_161B90;
  if (!qword_161B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161B90);
  }

  return result;
}

unint64_t sub_AD2B0()
{
  result = qword_161B98;
  if (!qword_161B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161B98);
  }

  return result;
}

uint64_t sub_AD304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_AD3C8()
{
  sub_5AE8(&qword_15F180, &unk_126E10);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_129770;
  *(v1 + 32) = 0xD000000000000020;
  *(v1 + 40) = 0x800000000012E1F0;
  *(v1 + 48) = *v0;
  *(v1 + 72) = &type metadata for Bool;
  *(v1 + 80) = 0x6E69577473726966;
  *(v1 + 88) = 0xEF657A6953776F64;
  if (*(v0 + 16))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = &type metadata for Double;
  }

  *(v1 + 96) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = 0x676E6970756F7267;
  *(v1 + 136) = 0xE800000000000000;
  v5 = *(v0 + 24);
  v17 = v5;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for TimerTimerGrouping();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v6;
  *(v2 + 176) = 0xD000000000000016;
  *(v2 + 184) = 0x800000000012E280;
  *(v2 + 192) = *(v0 + 32);
  *(v2 + 216) = &type metadata for Bool;
  strcpy((v2 + 224), "isConclusion");
  *(v2 + 237) = 0;
  *(v2 + 238) = -5120;
  *(v2 + 240) = *(v0 + 33);
  *(v2 + 264) = &type metadata for Bool;
  strcpy((v2 + 272), "isFirstWindow");
  *(v2 + 286) = -4864;
  *(v2 + 288) = *(v0 + 34);
  *(v2 + 312) = &type metadata for Bool;
  strcpy((v2 + 320), "isLastWindow");
  *(v2 + 333) = 0;
  *(v2 + 334) = -5120;
  *(v2 + 336) = *(v0 + 35);
  *(v2 + 360) = &type metadata for Bool;
  *(v2 + 368) = 0xD000000000000016;
  *(v2 + 376) = 0x800000000012E240;
  *(v2 + 384) = *(v0 + 36);
  *(v2 + 408) = &type metadata for Bool;
  *(v2 + 416) = 0xD00000000000001ALL;
  *(v2 + 424) = 0x800000000012E2A0;
  *(v2 + 432) = *(v0 + 37);
  *(v2 + 456) = &type metadata for Bool;
  *(v2 + 464) = 0x736D657469;
  *(v2 + 472) = 0xE500000000000000;
  v16 = *(v0 + 40);
  v7 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 480) = v16;
  *(v2 + 504) = v7;
  *(v2 + 512) = 0xD000000000000013;
  *(v2 + 520) = 0x800000000012E260;
  if (*(v0 + 56))
  {
    v8 = 0;
    v9 = 0;
    *(v2 + 536) = 0u;
  }

  else
  {
    v8 = *(v0 + 48);
    v9 = &type metadata for Double;
  }

  *(v2 + 528) = v8;
  *(v2 + 552) = v9;
  *(v2 + 560) = 0x6574496C61746F74;
  *(v2 + 568) = 0xEA0000000000736DLL;
  if (*(v0 + 72))
  {
    v10 = 0;
    v11 = 0;
    *(v2 + 584) = 0u;
  }

  else
  {
    v10 = *(v0 + 64);
    v11 = &type metadata for Double;
  }

  *(v2 + 576) = v10;
  *(v2 + 600) = v11;
  *(v2 + 608) = 0x6953776F646E6977;
  *(v2 + 616) = 0xEA0000000000657ALL;
  if (*(v0 + 88))
  {
    v12 = 0;
    v13 = 0;
    *(v2 + 632) = 0u;
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = &type metadata for Double;
  }

  *(v2 + 624) = v12;
  *(v2 + 648) = v13;
  sub_E344(&v17, v15, &qword_161BF0, &qword_129810);
  sub_E344(&v16, v15, &qword_15F928, &unk_127400);
  return v2;
}

uint64_t sub_AD73C()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = __chkstk_darwin(v1 - 8);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - v5;
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_129780;
  *(v9 + 32) = 0xD000000000000020;
  *(v9 + 40) = 0x800000000012E1F0;
  *(v9 + 48) = *v0;
  *(v9 + 72) = &type metadata for Bool;
  *(v9 + 80) = 0x6E69577473726966;
  *(v9 + 88) = 0xEF657A6953776F64;
  v11 = *(v0 + 16);
  v40 = v6;
  if (v11)
  {
    v12 = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 8);
    v12 = &type metadata for Double;
  }

  *(v9 + 96) = v13;
  *(v9 + 120) = v12;
  *(v9 + 128) = 0x676E6970756F7267;
  *(v9 + 136) = 0xE800000000000000;
  v14 = *(v0 + 24);
  if (v14)
  {
    v15 = type metadata accessor for TimerTimerGrouping();
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v16;
  *(v10 + 168) = v15;
  *(v10 + 176) = 0xD000000000000019;
  *(v10 + 184) = 0x800000000012E220;
  *(v10 + 192) = *(v0 + 32);
  *(v10 + 216) = &type metadata for Bool;
  strcpy((v10 + 224), "isConclusion");
  *(v10 + 237) = 0;
  *(v10 + 238) = -5120;
  *(v10 + 240) = *(v0 + 33);
  *(v10 + 264) = &type metadata for Bool;
  strcpy((v10 + 272), "isFirstWindow");
  *(v10 + 286) = -4864;
  *(v10 + 288) = *(v0 + 34);
  *(v10 + 312) = &type metadata for Bool;
  strcpy((v10 + 320), "isLastWindow");
  *(v10 + 333) = 0;
  *(v10 + 334) = -5120;
  *(v10 + 336) = *(v0 + 35);
  *(v10 + 360) = &type metadata for Bool;
  *(v10 + 368) = 0xD000000000000016;
  *(v10 + 376) = 0x800000000012E240;
  *(v10 + 384) = *(v0 + 36);
  *(v10 + 408) = &type metadata for Bool;
  *(v10 + 416) = 0x736D657469;
  *(v10 + 424) = 0xE500000000000000;
  v17 = *(v0 + 40);
  v18 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v10 + 432) = v17;
  *(v10 + 456) = v18;
  *(v10 + 464) = 0xD000000000000013;
  *(v10 + 472) = 0x800000000012E260;
  if (*(v0 + 56))
  {
    v19 = 0;
    *(v10 + 488) = 0;
    *(v10 + 496) = 0;
    v20 = 0;
  }

  else
  {
    v20 = *(v0 + 48);
    v19 = &type metadata for Double;
  }

  *(v10 + 480) = v20;
  *(v10 + 504) = v19;
  strcpy((v10 + 512), "requestedState");
  *(v10 + 527) = -18;
  v21 = type metadata accessor for SearchForTimersHandledOtherMultiParameters(0);
  sub_E344(v0 + v21[14], v8, &unk_15F170, &unk_126E00);
  v22 = sub_124E4C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v8, 1, v22) == 1)
  {

    sub_5CA8(v8, &unk_15F170, &unk_126E00);
    *(v10 + 528) = 0u;
    *(v10 + 544) = 0u;
  }

  else
  {
    *(v10 + 552) = v22;
    v25 = sub_23B4C((v10 + 528));
    (*(v23 + 32))(v25, v8, v22);
  }

  *(v10 + 560) = 0xD000000000000016;
  *(v10 + 568) = 0x800000000012C830;
  v26 = *(v0 + v21[15]);
  v27 = v40;
  if (v26)
  {
    v28 = sub_124D7C();
    v29 = v26;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    *(v10 + 584) = 0u;
  }

  *(v10 + 576) = v29;
  *(v10 + 600) = v28;
  *(v10 + 608) = 0xD000000000000013;
  *(v10 + 616) = 0x800000000012C810;
  sub_E344(v0 + v21[16], v27, &unk_15F170, &unk_126E00);
  if (v24(v27, 1, v22) == 1)
  {

    sub_5CA8(v27, &unk_15F170, &unk_126E00);
    *(v10 + 624) = 0u;
    *(v10 + 640) = 0u;
  }

  else
  {
    *(v10 + 648) = v22;
    v30 = sub_23B4C((v10 + 624));
    (*(v23 + 32))(v30, v27, v22);
  }

  strcpy((v10 + 656), "requestedType");
  *(v10 + 670) = -4864;
  v31 = v41;
  sub_E344(v0 + v21[17], v41, &unk_15F170, &unk_126E00);
  if (v24(v31, 1, v22) == 1)
  {
    sub_5CA8(v31, &unk_15F170, &unk_126E00);
    *(v10 + 672) = 0u;
    *(v10 + 688) = 0u;
  }

  else
  {
    *(v10 + 696) = v22;
    v32 = sub_23B4C((v10 + 672));
    (*(v23 + 32))(v32, v31, v22);
  }

  *(v10 + 704) = 0x6574496C61746F74;
  *(v10 + 712) = 0xEA0000000000736DLL;
  v33 = (v0 + v21[18]);
  if (v33[1])
  {
    v34 = 0;
    *(v10 + 728) = 0u;
    v35 = 0;
  }

  else
  {
    v35 = *v33;
    v34 = &type metadata for Double;
  }

  *(v10 + 720) = v35;
  *(v10 + 744) = v34;
  *(v10 + 752) = 0x6953776F646E6977;
  *(v10 + 760) = 0xEA0000000000657ALL;
  v36 = (v0 + v21[19]);
  if (v36[1])
  {
    v37 = 0;
    *(v10 + 776) = 0u;
    v38 = 0;
  }

  else
  {
    v38 = *v36;
    v37 = &type metadata for Double;
  }

  *(v10 + 768) = v38;
  *(v10 + 792) = v37;
  return v10;
}

uint64_t sub_ADDF4(__int16 a1, uint64_t a2)
{
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1270B0;
  *(v4 + 32) = 0xD00000000000001ALL;
  *(v4 + 40) = 0x800000000012E2A0;
  *(v4 + 48) = a1 & 1;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "isSleepTimer");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  *(v4 + 96) = HIBYTE(a1) & 1;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x72656D6974;
  *(v4 + 136) = 0xE500000000000000;
  if (a2)
  {
    v5 = type metadata accessor for TimerTimer(0);
    v6 = a2;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v6;
  *(v4 + 168) = v5;

  return v4;
}

uint64_t sub_ADEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_E344(a1, v11, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v12;
}

__n128 sub_AE0C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_AE0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AE130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AE1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_AE27C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_AE32C(uint64_t a1)
{
  sub_AE4FC();
  if (v1 <= 0x3F)
  {
    sub_AE54C(319, &unk_161C68, type metadata accessor for TimerTimerGrouping, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_AE54C(319, &unk_1602C8, type metadata accessor for TimerTimer, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_AE54C(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_AE54C(319, &qword_15FCF8, &type metadata accessor for DialogDuration, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_AE4FC()
{
  if (!qword_161C60)
  {
    v0 = sub_125F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_161C60);
    }
  }
}

void sub_AE54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_AE5C0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161CD0);
  sub_5B30(v0, qword_161CD0);
  return sub_1257AC();
}

uint64_t sub_AE60C(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_123B3C();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v4 = sub_124F4C();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  sub_5AE8(&qword_15F9E0, &unk_127710);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = sub_1250BC();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v6 = sub_125ABC();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[51] = v7;
  v2[52] = *(v7 - 8);
  v2[53] = swift_task_alloc();
  v8 = sub_12501C();
  v2[54] = v8;
  v2[55] = *(v8 - 8);
  v2[56] = swift_task_alloc();
  v9 = sub_12368C();
  v2[57] = v9;
  v2[58] = *(v9 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v10 = sub_123D1C();
  v2[63] = v10;
  v2[64] = *(v10 - 8);
  v2[65] = swift_task_alloc();
  v11 = sub_12392C();
  v2[66] = v11;
  v2[67] = *(v11 - 8);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();

  return _swift_task_switch(sub_AEA70, 0, 0);
}

uint64_t sub_AEA70()
{
  if (qword_15EEE0 != -1)
  {
    swift_once();
  }

  *(v0 + 568) = sub_5B30(*(v0 + 384), qword_161CD0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PauseTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v3, 2u);
  }

  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v4 = sub_123A9C();
  v5 = [v4 pausedTimers];

  if (!v5)
  {
    goto LABEL_66;
  }

  sub_1257EC();
  v6 = sub_125C6C();
  *(v0 + 576) = v6;

  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  if (!sub_1260FC())
  {
LABEL_65:

LABEL_66:
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v96 = 3;
    swift_willThrow();
LABEL_67:

    v97 = *(v0 + 8);

    return v97();
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_72:
      swift_once();
      goto LABEL_52;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;
  *(v0 + 584) = v8;
  v10 = *(v0 + 560);
  sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v9;
  v12 = v9;
  sub_FF26C(inited, v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = [v12 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_125B9C();
    v17 = v16;

    if (v7)
    {
      if (sub_1260FC() != 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) != 1)
    {
LABEL_14:

      goto LABEL_17;
    }

    v18 = *(v0 + 520);
    v19 = *(v0 + 504);
    v20 = *(v0 + 512);
    sub_D500(v15, v17, v18);

    sub_12386C();
    (*(v20 + 8))(v18, v19);
  }

LABEL_17:
  *(v0 + 592) = sub_2BE74(v6);
  sub_12361C();
  if (v7)
  {
    v21 = sub_1260FC();
  }

  else
  {
    v21 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 600) = v21;
  if (v21 == 1)
  {
    sub_12573C();
    sub_12572C();
    v22 = *(v0 + 240);
    v23 = *(v0 + 248);
    sub_23B08((v0 + 216), v22);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v24 = sub_125FFC();
    }

    else
    {
      v24 = *(v6 + 32);
    }

    v63 = v24;
    v64 = [v24 identifier];

    if (v64)
    {
      v65 = sub_125B9C();
      v67 = v66;
    }

    else
    {
      v65 = 0;
      v67 = 0;
    }

    *(v0 + 608) = v67;
    v68 = swift_task_alloc();
    *(v0 + 616) = v68;
    *v68 = v0;
    v68[1] = sub_AF900;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v65, v67, v22, v23);
  }

  *(v0 + 640) = 0u;
  v103 = *(v0 + 568);
  v26 = *(v0 + 416);
  v25 = *(v0 + 424);
  v27 = *(v0 + 400);
  v28 = *(v0 + 408);
  v29 = *(v0 + 392);
  v100 = *(v0 + 384);
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 56), *(v0 + 80));
  sub_1235DC();
  sub_5BB0((v0 + 56));
  (*(v26 + 104))(v25, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v28);
  (*(v29 + 16))(v27, v103, v100);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 96), *(v0 + 120));
  v30 = sub_1235DC();
  sub_5BB0((v0 + 96));
  if (v30)
  {
    v31 = sub_648C8(*(v0 + 576), 13);
    *(v0 + 776) = v31;

    if (v31)
    {
      v32 = objc_opt_self();
      *(v0 + 256) = 0;
      v33 = [v32 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:v0 + 256];
      v34 = *(v0 + 256);
      if (v33)
      {
        v35 = v33;
        v36 = v34;
        v37 = sub_122EFC();
        v39 = v38;

        *(v0 + 784) = v37;
        *(v0 + 792) = v39;
        if (qword_15EDE0 != -1)
        {
          swift_once();
        }

        v40 = *(v0 + 272);
        v41 = swift_task_alloc();
        *(v0 + 800) = v41;
        v41[2] = v37;
        v41[3] = v39;
        v41[4] = v40;
        v42 = swift_task_alloc();
        *(v0 + 808) = v42;
        *v42 = v0;
        v42[1] = sub_B1CA0;
        v43 = *(v0 + 592);

        return sub_11B684(v43, sub_B52E0, v41);
      }

      v90 = *(v0 + 536);
      v105 = *(v0 + 528);
      v107 = *(v0 + 560);
      v102 = *(v0 + 496);
      v91 = *(v0 + 464);
      v98 = *(v0 + 584);
      v99 = *(v0 + 456);
      v92 = *(v0 + 440);
      v93 = *(v0 + 448);
      v94 = *(v0 + 432);
      v95 = v34;

      sub_122E8C();

      swift_willThrow();
      (*(v92 + 8))(v93, v94);
      (*(v91 + 8))(v102, v99);
      (*(v90 + 8))(v107, v105);
    }

    else
    {

      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "Could not get timer action from timer.", v81, 2u);
      }

      v82 = *(v0 + 584);
      v83 = *(v0 + 536);
      v104 = *(v0 + 528);
      v106 = *(v0 + 560);
      v101 = *(v0 + 496);
      v85 = *(v0 + 456);
      v84 = *(v0 + 464);
      v86 = *(v0 + 440);
      v87 = *(v0 + 448);
      v88 = *(v0 + 432);

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v89 = 1;
      swift_willThrow();

      (*(v86 + 8))(v87, v88);
      (*(v84 + 8))(v101, v85);
      (*(v83 + 8))(v106, v104);
    }

    goto LABEL_67;
  }

  v46 = *(v0 + 368);
  v45 = *(v0 + 376);
  v47 = *(v0 + 360);
  sub_1250AC();
  v48 = sub_12504C();
  (*(v46 + 8))(v45, v47);
  if (v48)
  {
    v49 = sub_125AAC();
    v50 = sub_125DFC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v51, 2u);
    }

    v52 = *(v0 + 600);
    if (v52)
    {
      sub_22A8C(0, v52 & ~(v52 >> 63), 0);
      if (v52 < 0)
      {
        __break(1u);
      }

      v53 = 0;
      v54 = *(v0 + 320);
      v55 = *(v0 + 576) + 32;
      do
      {
        if ((*(v0 + 576) & 0xC000000000000001) != 0)
        {
          v56 = sub_125FFC();
        }

        else
        {
          v56 = *(v55 + 8 * v53);
        }

        v57 = v56;
        sub_1135FC(*(v0 + 328));

        v59 = _swiftEmptyArrayStorage[2];
        v58 = _swiftEmptyArrayStorage[3];
        if (v59 >= v58 >> 1)
        {
          sub_22A8C((v58 > 1), v59 + 1, 1);
        }

        v60 = *(v0 + 600);
        v61 = *(v0 + 328);
        v62 = *(v0 + 312);
        ++v53;
        _swiftEmptyArrayStorage[2] = v59 + 1;
        (*(v54 + 32))(_swiftEmptyArrayStorage + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v61, v62);
      }

      while (v53 != v60);
    }

    v71 = *(v0 + 352);
    sub_12521C();
    v72 = enum case for SiriTimePluginModel.timerMulti(_:);
    v73 = sub_12503C();
    v74 = *(v73 - 8);
    (*(v74 + 104))(v71, v72, v73);
    (*(v74 + 56))(v71, 0, 1, v73);
    if (qword_15EDD8 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 592);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v76 = swift_allocObject();
    *(v0 + 656) = v76;
    *(v76 + 16) = xmmword_126CB0;
    strcpy((v76 + 32), "pausedTimers");
    *(v76 + 45) = 0;
    *(v76 + 46) = -5120;
    *(v76 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
    *(v76 + 48) = v75;
    v77 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
    v78 = swift_task_alloc();
    *(v0 + 664) = v78;
    *v78 = v0;
    v78[1] = sub_B0510;

    return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v77))(0xD000000000000020, 0x800000000012E3D0, v76);
  }

  if (qword_15EDE0 != -1)
  {
    goto LABEL_72;
  }

LABEL_52:
  v69 = swift_task_alloc();
  *(v0 + 736) = v69;
  *v69 = v0;
  v69[1] = sub_B1640;
  v70 = *(v0 + 592);

  return sub_11BA94(v70);
}

uint64_t sub_AF900(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = a2;

  return _swift_task_switch(sub_AFA50, 0, 0);
}

uint64_t sub_AFA50()
{
  sub_5BB0(v0 + 27);
  v1 = v0[79];
  v2 = v0[78];
  v0[81] = v1;
  v0[80] = v2;
  v77 = v0[71];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v6 = v0[49];
  v72 = v0[51];
  v74 = v0[48];
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v0 + 7, v0[10]);
  v7 = sub_1235DC() & (v1 != 0);
  sub_5BB0(v0 + 7);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v72);
  (*(v6 + 16))(v5, v77, v74);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v0 + 12, v0[15]);
  v8 = sub_1235DC();
  sub_5BB0(v0 + 12);
  if ((v8 & 1) == 0 || v7)
  {
    v24 = v0[46];
    v23 = v0[47];
    v25 = v0[45];
    sub_1250AC();
    v26 = sub_12504C();
    (*(v24 + 8))(v23, v25);
    if (v26)
    {
      v27 = sub_125AAC();
      v28 = sub_125DFC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v29, 2u);
      }

      if (v7)
      {
        v30 = v0[44];
        v31 = sub_12503C();
        (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      }

      else
      {
        v45 = v0[75];
        if (v45)
        {
          sub_22A8C(0, v45 & ~(v45 >> 63), 0);
          if (v45 < 0)
          {
            __break(1u);
          }

          v46 = 0;
          v47 = v0[40];
          v48 = v0[72] + 32;
          do
          {
            if ((v0[72] & 0xC000000000000001) != 0)
            {
              v49 = sub_125FFC();
            }

            else
            {
              v49 = *(v48 + 8 * v46);
            }

            v50 = v49;
            sub_1135FC(v0[41]);

            v52 = _swiftEmptyArrayStorage[2];
            v51 = _swiftEmptyArrayStorage[3];
            if (v52 >= v51 >> 1)
            {
              sub_22A8C((v51 > 1), v52 + 1, 1);
            }

            v53 = v0[75];
            v54 = v0[41];
            v55 = v0[39];
            ++v46;
            _swiftEmptyArrayStorage[2] = v52 + 1;
            (*(v47 + 32))(_swiftEmptyArrayStorage + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v52, v54, v55);
          }

          while (v46 != v53);
        }

        v56 = v0[44];
        sub_12521C();
        v57 = enum case for SiriTimePluginModel.timerMulti(_:);
        v58 = sub_12503C();
        v59 = *(v58 - 8);
        (*(v59 + 104))(v56, v57, v58);
        (*(v59 + 56))(v56, 0, 1, v58);
      }

      if (qword_15EDD8 != -1)
      {
        swift_once();
      }

      v60 = v0[74];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v61 = swift_allocObject();
      v0[82] = v61;
      *(v61 + 16) = xmmword_126CB0;
      strcpy((v61 + 32), "pausedTimers");
      *(v61 + 45) = 0;
      *(v61 + 46) = -5120;
      *(v61 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v61 + 48) = v60;
      v62 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v63 = swift_task_alloc();
      v0[83] = v63;
      *v63 = v0;
      v63[1] = sub_B0510;

      return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v62))(0xD000000000000020, 0x800000000012E3D0, v61);
    }

    else
    {

      if (qword_15EDE0 != -1)
      {
        swift_once();
      }

      v32 = swift_task_alloc();
      v0[92] = v32;
      *v32 = v0;
      v32[1] = sub_B1640;
      v33 = v0[74];

      return sub_11BA94(v33);
    }
  }

  else
  {
    v9 = sub_648C8(v0[72], 13);
    v0[97] = v9;

    if (v9)
    {
      v10 = objc_opt_self();
      v0[32] = 0;
      v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v0 + 32];
      v12 = v0[32];
      if (v11)
      {
        v13 = v11;
        v14 = v12;
        v15 = sub_122EFC();
        v17 = v16;

        v0[98] = v15;
        v0[99] = v17;
        if (qword_15EDE0 != -1)
        {
          swift_once();
        }

        v18 = v0[34];
        v19 = swift_task_alloc();
        v0[100] = v19;
        v19[2] = v15;
        v19[3] = v17;
        v19[4] = v18;
        v20 = swift_task_alloc();
        v0[101] = v20;
        *v20 = v0;
        v20[1] = sub_B1CA0;
        v21 = v0[74];

        return sub_11B684(v21, sub_B52E0, v19);
      }

      v71 = v0[73];
      v64 = v0[67];
      v79 = v0[66];
      v81 = v0[70];
      v65 = v0[58];
      v73 = v0[57];
      v76 = v0[62];
      v66 = v0[55];
      v67 = v0[56];
      v68 = v0[54];
      v69 = v12;

      sub_122E8C();

      swift_willThrow();
      (*(v66 + 8))(v67, v68);
      (*(v65 + 8))(v76, v73);
      (*(v64 + 8))(v81, v79);
    }

    else
    {

      v34 = sub_125AAC();
      v35 = sub_125DFC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "Could not get timer action from timer.", v36, 2u);
      }

      v37 = v0[73];
      v38 = v0[67];
      v78 = v0[66];
      v80 = v0[70];
      v75 = v0[62];
      v40 = v0[57];
      v39 = v0[58];
      v41 = v0[55];
      v42 = v0[56];
      v43 = v0[54];

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();

      (*(v41 + 8))(v42, v43);
      (*(v39 + 8))(v75, v40);
      (*(v38 + 8))(v80, v78);
    }

    v70 = v0[1];

    return v70();
  }
}

uint64_t sub_B0510(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v4 = sub_B0BD4;
  }

  else
  {

    v4 = sub_B0664;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B0664()
{
  v46 = v0;
  v1 = *(v0 + 648);
  if (v1)
  {

    v2 = sub_125AAC();
    v3 = sub_125DFC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 640);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v45 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_8530(v4, v1, &v45);
      _os_log_impl(&dword_0, v2, v3, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v5, 0xCu);
      sub_5BB0(v6);
    }

    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 536);
    v10 = *(v0 + 528);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    sub_12361C();
    (*(v9 + 16))(v8, v7, v10);
    sub_2AEC8(v11, v12);
    v13 = sub_12503C();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    v16 = *(v0 + 344);
    if (v15 == 1)
    {
      sub_5CA8(*(v0 + 344), &qword_15F9E0, &unk_127710);
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0;
    }

    else
    {
      *(v0 + 200) = v13;
      *(v0 + 208) = sub_2AF38();
      v23 = sub_23B4C((v0 + 176));
      (*(v14 + 32))(v23, v16, v13);
    }

    v24 = swift_task_alloc();
    *(v0 + 688) = v24;
    *v24 = v0;
    v24[1] = sub_B0DFC;
    v25 = *(v0 + 648);
    v26 = *(v0 + 640);
    v27 = *(v0 + 552);
    v28 = *(v0 + 488);
    v29 = *(v0 + 448);
    v30 = *(v0 + 264);
    v49 = 2;
    v48 = 0x800000000012D470;
    v31 = v0 + 176;
  }

  else
  {

    v17 = sub_125AAC();
    v18 = sub_125DFC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 576);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      if (v20 >> 62)
      {
        v22 = sub_1260FC();
      }

      else
      {
        v22 = *(&dword_10 + (*(v0 + 576) & 0xFFFFFFFFFFFFFF8));
      }

      *(v21 + 4) = v22;

      _os_log_impl(&dword_0, v17, v18, "[PauseTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer snippet model for %ld timers.", v21, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v32 = *(v0 + 560);
    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v35 = *(v0 + 528);
    v36 = *(v0 + 352);
    v37 = *(v0 + 336);
    sub_12361C();
    (*(v34 + 16))(v33, v32, v35);
    sub_2AEC8(v36, v37);
    v38 = sub_12503C();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 48))(v37, 1, v38);
    v41 = *(v0 + 336);
    if (v40 == 1)
    {
      sub_5CA8(*(v0 + 336), &qword_15F9E0, &unk_127710);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
    }

    else
    {
      *(v0 + 160) = v38;
      *(v0 + 168) = sub_2AF38();
      v42 = sub_23B4C((v0 + 136));
      (*(v39 + 32))(v42, v41, v38);
    }

    v43 = swift_task_alloc();
    *(v0 + 712) = v43;
    *v43 = v0;
    v43[1] = sub_B1230;
    v27 = *(v0 + 544);
    v28 = *(v0 + 480);
    v29 = *(v0 + 448);
    v30 = *(v0 + 264);
    v49 = 2;
    v48 = 0x800000000012D470;
    v31 = v0 + 136;
    v26 = 0;
    v25 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v30, v28, v27, v31, v29, v26, v25, 0xD000000000000018);
}

uint64_t sub_B0BD4()
{
  v1 = v0[73];
  v2 = v0[67];
  v12 = v0[66];
  v13 = v0[70];
  v3 = v0[58];
  v10 = v0[57];
  v11 = v0[62];
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[54];
  v7 = v0[44];

  sub_5CA8(v7, &qword_15F9E0, &unk_127710);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v11, v10);
  (*(v2 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_B0DFC()
{
  v1 = *v0;
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 536);
  v4 = *(*v0 + 528);
  v5 = *(*v0 + 488);
  v6 = *(*v0 + 464);
  v7 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  v8 = *(v6 + 8);
  *(v1 + 696) = v8;
  *(v1 + 704) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_B1030, 0, 0);
}

uint64_t sub_B1030()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 584);
  v3 = *(v0 + 496);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 432);
  v7 = *(v0 + 440);
  v8 = *(v0 + 352);

  sub_5CA8(v8, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  (*(*(v0 + 536) + 8))(*(v0 + 560), *(v0 + 528));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_B1230()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v3 = *(*v0 + 536);
  v4 = *(*v0 + 528);
  v5 = *(*v0 + 480);
  v6 = *(*v0 + 464);
  v7 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  v8 = *(v6 + 8);
  *(v1 + 720) = v8;
  *(v1 + 728) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_B1440, 0, 0);
}

uint64_t sub_B1440()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 584);
  v3 = *(v0 + 496);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 432);
  v7 = *(v0 + 440);
  v8 = *(v0 + 352);

  sub_5CA8(v8, &qword_15F9E0, &unk_127710);
  (*(v7 + 8))(v5, v6);
  v1(v3, v4);
  (*(*(v0 + 536) + 8))(*(v0 + 560), *(v0 + 528));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_B1640(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {

    v4 = sub_B2348;
  }

  else
  {
    v4 = sub_B17A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B17A8()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[70];
  (*(v0[58] + 16))(v0[59], v0[62], v0[57]);
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  sub_123B0C();

  v5 = swift_task_alloc();
  v0[95] = v5;
  *v5 = v0;
  v5[1] = sub_B1908;
  v6 = v0[56];
  v7 = v0[38];
  v8 = v0[33];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v8, v7, v6);
}

uint64_t sub_B1908()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = v2[93];
  (*(v2[36] + 8))(v2[38], v2[35]);

  if (v0)
  {
    v4 = sub_B2534;
  }

  else
  {
    v4 = sub_B1ABC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B1ABC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 432);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  (*(*(v0 + 536) + 8))(*(v0 + 560), *(v0 + 528));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_B1CA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 816) = a1;
  *(v3 + 824) = v1;

  if (v1)
  {

    v4 = sub_B2720;
  }

  else
  {

    v4 = sub_B1E3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B1E3C()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[70];
  (*(v0[58] + 16))(v0[59], v0[62], v0[57]);
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  sub_123B0C();

  v5 = swift_task_alloc();
  v0[104] = v5;
  *v5 = v0;
  v5[1] = sub_B1F9C;
  v6 = v0[56];
  v7 = v0[37];
  v8 = v0[33];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v8, v7, v6);
}

uint64_t sub_B1F9C()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  v3 = v2[102];
  (*(v2[36] + 8))(v2[37], v2[35]);

  if (v0)
  {
    v4 = sub_B2920;
  }

  else
  {
    v4 = sub_B2150;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B2150()
{
  v1 = v0[97];
  v2 = v0[73];
  v3 = v0[62];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  sub_E498(v0[98], v0[99]);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  (*(v0[67] + 8))(v0[70], v0[66]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_B2348()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 496);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_B2534()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 496);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_B2720()
{
  v1 = v0[97];
  v2 = v0[73];
  v3 = v0[67];
  v12 = v0[66];
  v13 = v0[70];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v8 = v0[56];
  v9 = v0[54];
  sub_E498(v0[98], v0[99]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B2920()
{
  v1 = v0[97];
  v2 = v0[73];
  v3 = v0[67];
  v12 = v0[66];
  v13 = v0[70];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v8 = v0[56];
  v9 = v0[54];
  sub_E498(v0[98], v0[99]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_B2B20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_122EEC(0);
  sub_124E1C();
  v7 = sub_124E4C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  sub_22A1C(v6, a1 + *(v8 + 24));
  sub_124DEC();
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  sub_123AAC();
  v9 = sub_124DDC();

  *a1 = v9;
  return result;
}

uint64_t sub_B2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5AE8(&unk_162190, &unk_128500);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;

  sub_123B2C();
  v8 = sub_12392C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a4, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_123B1C();
}

uint64_t sub_B2D74(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_125ABC();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_124FFC();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_12501C();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  sub_124EDC();
  v3[32] = swift_task_alloc();
  v7 = sub_12392C();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v8 = sub_12368C();
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_B2FD4, 0, 0);
}

uint64_t sub_B2FD4()
{
  if (qword_15EEE0 != -1)
  {
    swift_once();
  }

  v29 = sub_5B30(v0[23], qword_161CD0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PauseTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v28 = v0[23];

  sub_12364C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[39] = sub_124DBC();
  (*(v4 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v8 + 16))(v7, v29, v28);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v9 = sub_123A9C();
  v10 = sub_12553C();

  if (v10 <= 101)
  {
    if (v10 == 100)
    {
      v30 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v26 = swift_task_alloc();
      v0[43] = v26;
      *v26 = v0;
      v26[1] = sub_B37E8;
      v13 = 0x800000000012C5A0;
      v12 = 0xD000000000000012;
      goto LABEL_25;
    }

    if (v10 != 101)
    {
LABEL_24:
      v30 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v27 = swift_task_alloc();
      v0[52] = v27;
      *v27 = v0;
      v27[1] = sub_B42C8;
      v13 = 0xEF726F7272652365;
      v12 = 0x73614272656D6974;
      goto LABEL_25;
    }

    v14 = v0[21];
    v15 = swift_task_alloc();
    v0[40] = v15;
    *(v15 + 16) = v14;
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_B35F0;

    return sub_104D80(sub_B52B8, v15);
  }

  else
  {
    if (v10 != 102)
    {
      if (v10 == 103)
      {
        if (qword_15EDE0 != -1)
        {
          swift_once();
        }

        v30 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v25 = swift_task_alloc();
        v0[48] = v25;
        *v25 = v0;
        v25[1] = sub_B3CD8;
        v12 = 0xD000000000000020;
        v13 = 0x800000000012E330;
        goto LABEL_25;
      }

      if (v10 == 104)
      {
        v30 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v11 = swift_task_alloc();
        v0[50] = v11;
        *v11 = v0;
        v11[1] = sub_B3FD0;
        v12 = 0xD000000000000025;
        v13 = 0x800000000012D8A0;
LABEL_25:

        return (v30)(v12, v13, _swiftEmptyArrayStorage);
      }

      goto LABEL_24;
    }

    if (qword_15EDE0 != -1)
    {
      swift_once();
    }

    v19 = v0[21];
    v18 = v0[22];
    v20 = v18[3];
    v21 = v18[4];
    sub_23B08(v18, v20);
    v22 = sub_11CC78(v20, v21);
    v23 = swift_task_alloc();
    v0[45] = v23;
    *(v23 + 16) = v19;
    v24 = swift_task_alloc();
    v0[46] = v24;
    *v24 = v0;
    v24[1] = sub_B3AE0;

    return sub_11BC00(v22 & 1, sub_B52B0, v23);
  }
}

uint64_t sub_B35F0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[42] = v1;

  if (v1)
  {
    v4 = sub_B4814;
  }

  else
  {
    v4 = sub_B3728;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B3728()
{
  v1 = v0[3];
  v0[54] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_B45C0;
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B37E8(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[44] = v1;

  if (v1)
  {
    v4 = sub_B39C4;
  }

  else
  {
    v4 = sub_B3904;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B3904()
{
  v1 = v0[6];
  v0[54] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_B45C0;
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B39C4()
{

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B3AE0(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[47] = v1;

  if (v1)
  {
    v4 = sub_B4930;
  }

  else
  {
    v4 = sub_B3C18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B3C18()
{
  v1 = v0[9];
  v0[54] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_B45C0;
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B3CD8(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[49] = v1;

  if (v1)
  {
    v4 = sub_B3EB4;
  }

  else
  {
    v4 = sub_B3DF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B3DF4()
{
  v1 = v0[12];
  v0[54] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_B45C0;
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B3EB4()
{

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B3FD0(uint64_t a1)
{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = v1;
  v3[51] = v1;

  if (v1)
  {
    v4 = sub_B41AC;
  }

  else
  {
    v4 = sub_B40EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B40EC()
{
  v1 = v0[15];
  v0[54] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_B45C0;
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B41AC()
{

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B42C8(uint64_t a1)
{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = v1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_B44A4;
  }

  else
  {
    v4 = sub_B43E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B43E4()
{
  v1 = v0[18];
  v0[54] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[55] = v2;
  *v2 = v0;
  v2[1] = sub_B45C0;
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B44A4()
{

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B45C0()
{
  v2 = *(*v1 + 432);
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_B4A4C;
  }

  else
  {
    v3 = sub_B46EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B46EC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  v11 = *(v0 + 288);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_B4814()
{

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B4930()
{

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B4A4C()
{

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_B4B74(uint64_t a1)
{
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v4 = sub_123ABC();
  sub_12555C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_B4BF8(uint64_t a1)
{
  sub_5AE8(&qword_161CF0, &qword_1299C8);
  v2 = sub_123ABC();
  v3 = [v2 targetTimer];

  if (v3)
  {
    sub_124D6C();
    swift_allocObject();
    sub_124D5C();
    v4 = [v3 remainingTime];
    v5 = v4;
    if (v4)
    {
      [v4 doubleValue];
    }

    sub_124D4C();

    v6 = sub_124D3C();
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_B4D08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_B4DB0;

  return sub_AE60C(a1, a2);
}

uint64_t sub_B4DB0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B4EE4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_B4EE4()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_B4FB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_B5058;

  return sub_B2D74(a1, a2);
}

uint64_t sub_B5058()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B518C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_B518C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_B525C()
{
  result = qword_161CE8;
  if (!qword_161CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161CE8);
  }

  return result;
}

uint64_t sub_B5350()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1270B0;
  *(v4 + 32) = 7368801;
  *(v4 + 40) = 0xE300000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = sub_124DEC();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  strcpy((v4 + 80), "resumedTimers");
  *(v4 + 94) = -4864;
  v8 = v0[1];
  v9 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v4 + 96) = v8;
  *(v4 + 120) = v9;
  *(v4 + 128) = 0x6174614477656976;
  *(v4 + 136) = 0xE800000000000000;
  v10 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(v10 + 24), v3, &unk_15F170, &unk_126E00);
  v11 = sub_124E4C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {

    sub_5CA8(v3, &unk_15F170, &unk_126E00);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v11;
    v13 = sub_23B4C((v4 + 144));
    (*(v12 + 32))(v13, v3, v11);
  }

  return v4;
}

uint64_t sub_B5584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_B561C, 0, 0);
}

uint64_t sub_B561C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[6] + 24);
  v5 = sub_124E4C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *v1 = 0;
  *(v1 + 1) = v3;

  v2(v1);
  v6 = sub_B5350();
  v0[8] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_B5764;

  return v9(0xD00000000000001ALL, 0x800000000012D430, v6);
}

uint64_t sub_B5764(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_B5924;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_B58B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B58B0()
{
  sub_B5E68(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_B5924()
{
  sub_B5E68(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B5994(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_B59B4, 0, 0);
}

uint64_t sub_B59B4()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "resumedTimers");
  *(v2 + 46) = -4864;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23FD8;

  return v5(0xD000000000000019, 0x800000000012D410, v2);
}

uint64_t sub_B5B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_E344(a1, v11, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v12;
}

uint64_t sub_B5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B5D98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_B5E68(uint64_t a1)
{
  v2 = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B5F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_B6000(uint64_t a1)
{
  sub_59A04(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for TimerNLv4Constants.TimerVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv4Constants.TimerVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B6200()
{
  result = qword_161E70;
  if (!qword_161E70)
  {
    sub_5B68(&qword_161E78, qword_129AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161E70);
  }

  return result;
}

uint64_t sub_B6264(char a1)
{
  result = 0x6978456B63656863;
  switch(a1)
  {
    case 1:
      result = 0x657461657263;
      break;
    case 2:
      result = 0x6574656C6564;
      break;
    case 3:
      result = 0x656C6261736964;
      break;
    case 4:
      result = 0x656C62616E65;
      break;
    case 5:
      result = 0x6573756170;
      break;
    case 6:
      result = 0x74736575716572;
      break;
    case 7:
      result = 0x7465736572;
      break;
    case 8:
      result = 0x656D75736572;
      break;
    case 9:
      result = 0x7472617473;
      break;
    case 10:
      result = 1886352499;
      break;
    case 11:
      result = 0x736972616D6D7573;
      break;
    case 12:
      result = 0x657461647075;
      break;
    case 13:
      result = 0x6E776F6E6B6E75;
      break;
    case 14:
      result = 0x627265566F6ELL;
      break;
    case 15:
      result = 1852141679;
      break;
    case 16:
      result = 1684104562;
      break;
    case 17:
      result = 0x746165706572;
      break;
    case 18:
      result = 0x74726174736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B646C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B6264(*a1);
  v5 = v4;
  if (v3 == sub_B6264(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1261BC();
  }

  return v8 & 1;
}

Swift::Int sub_B64F4()
{
  v1 = *v0;
  sub_12626C();
  sub_B6264(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_B6558(uint64_t a1)
{
  sub_B6264(*v1);
  sub_125BFC();
}

Swift::Int sub_B65AC(uint64_t a1)
{
  v2 = *v1;
  sub_12626C();
  sub_B6264(v2);
  sub_125BFC();

  return sub_12628C();
}

unint64_t sub_B660C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B66D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_B663C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B6264(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_B667C()
{
  result = qword_161E80;
  if (!qword_161E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161E80);
  }

  return result;
}

unint64_t sub_B66D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1261DC();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_B678C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t sub_B6840()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_161E90);
  sub_5B30(v0, qword_161E90);
  return sub_1257AC();
}

uint64_t sub_B688C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_15EEF8 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_161E90);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "CreateTimer.ConfirmIntentStrategy.actionForInput() called.", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v16 = sub_12514C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_346FC(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_B6B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_123CDC();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_1252AC();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_123D1C();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = sub_123E4C();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v8 = sub_123DAC();
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();
  v9 = sub_123D6C();
  v3[39] = v9;
  v3[40] = *(v9 - 8);
  v3[41] = swift_task_alloc();
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v10 = sub_123A1C();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = type metadata accessor for TimerNLv3Intent(0);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v11 = sub_123D3C();
  v3[58] = v11;
  v3[59] = *(v11 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v12 = sub_124BCC();
  v3[62] = v12;
  v3[63] = *(v12 - 8);
  v3[64] = swift_task_alloc();

  return _swift_task_switch(sub_B6FF8, 0, 0);
}

uint64_t sub_B6FF8()
{
  v266 = v0;
  v1 = v0;
  if (qword_15EEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_161E90);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "CreateTimer.ConfirmIntentStrategy.parseConfirmationResponse() called", v5, 2u);
  }

  object = v0[30]._object;
  countAndFlagsBits = v0[29]._countAndFlagsBits;
  v7 = v0[29]._object;

  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v9 = sub_123ABC();
  sub_123CCC();
  v10 = v7[11](object, countAndFlagsBits);
  if (v10 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v1[29]._object + 12))(v1[30]._object, v1[29]._countAndFlagsBits);
LABEL_9:
    v11 = v1[32]._countAndFlagsBits;
    v12 = v1[31]._countAndFlagsBits;
    v14 = v1[28]._countAndFlagsBits;
    v13 = v1[28]._object;
    v15 = *(v1[31]._object + 4);
    v15(v11, v1[30]._object, v12);
    v15(v13, v11, v12);
    sub_9848(v13, v14);
    v16 = sub_125AAC();
    v17 = sub_125DFC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[28]._countAndFlagsBits;
    v20 = v1;
    if (v18)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v265[0] = v22;
      *v21 = 136315138;
      sub_98AC(&qword_161ED0, &unk_12A9D8);
      v23 = sub_12618C();
      v25 = v24;
      sub_97EC(v19);
      v26 = sub_8530(v23, v25, v265);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, v16, v17, "timerNLIntent: %s", v21, 0xCu);
      sub_5BB0(v22);
    }

    else
    {

      sub_97EC(v19);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    v27 = v20;
    v28 = v20[28]._object;
    v29 = v20[27]._countAndFlagsBits;
    v30 = v20[25]._countAndFlagsBits;
    v32 = v27[24]._countAndFlagsBits;
    v31 = v27[24]._object;
    sub_98AC(&qword_15FFA0, &unk_12AA00);
    v1 = v27;
    sub_12428C();
    v33 = &enum case for ConfirmationResponse.confirmed(_:);
    if (BYTE4(v27[32]._object))
    {
      v33 = &enum case for ConfirmationResponse.rejected(_:);
    }

    (*(v30 + 104))(v29, *v33, v31);
    (*(v30 + 16))(v32, v29, v31);
    (*(v30 + 56))(v32, 0, 1, v31);
    sub_1255EC();
    sub_1239CC();
    (*(v30 + 8))(v29, v31);
    sub_97EC(v28);
    goto LABEL_17;
  }

  if (v10 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v1[29]._object + 12))(v1[30]._object, v1[29]._countAndFlagsBits);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_9;
  }

  v36 = v1;
  if (v10 == enum case for Parse.directInvocation(_:))
  {
    v37 = v1[30]._object;
    v39 = v1[24]._object;
    v38 = v1[25]._countAndFlagsBits;
    v40 = v1[21]._object;
    v41 = v1[14]._object;
    v43 = v1[12]._object;
    v42 = v1[13]._countAndFlagsBits;
    (*(v1[29]._object + 12))(v37, v1[29]._countAndFlagsBits);
    (*(v42 + 32))(v41, v37, v43);
    sub_12527C();
    if ((*(v38 + 48))(v40, 1, v39) != 1)
    {
      v101 = v1[25]._countAndFlagsBits;
      v102 = v1[25]._object;
      v104 = v1[24]._countAndFlagsBits;
      v103 = v1[24]._object;
      v105 = v1[14]._object;
      v107 = v1[12]._object;
      v106 = v1[13]._countAndFlagsBits;
      (*(v101 + 32))(v102, v1[21]._object, v103);
      (*(v101 + 16))(v104, v102, v103);
      (*(v101 + 56))(v104, 0, 1, v103);
      sub_1255EC();
      sub_1239CC();
      (*(v101 + 8))(v102, v103);
LABEL_51:
      (*(v106 + 8))(v105, v107);
      goto LABEL_17;
    }

    v259 = v9;
    sub_5CA8(v1[21]._object, &unk_161EC0, &unk_126E20);
    v44 = sub_123D0C();
    if (!v44)
    {
      goto LABEL_104;
    }

    v45 = v44;
    v46 = v1[12]._countAndFlagsBits;
    v47 = v1;
    v48 = v1[11]._countAndFlagsBits;
    v49 = v47[10]._object;
    v50 = *(v48 + 104);
    v50(v46, enum case for DirectInvocationUtils.Timer.UserInfoKey.buttonPressed(_:), v49);
    v51 = sub_12529C();
    v53 = v52;
    v54 = *(v48 + 8);
    v54(v46, v49);
    if (*(v45 + 16))
    {
      v55 = sub_8AD8(v51, v53);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        goto LABEL_103;
      }

      sub_8B50(*(v45 + 56) + 32 * v55, &v36[1]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_103;
      }

      v58._rawValue = &off_157950;
      v59 = sub_12613C(v58, v36[5]);

      if (v59)
      {
        if (v59 != 1)
        {
          goto LABEL_103;
        }

        v256 = 1;
      }

      else
      {
        v256 = 0;
      }

      v208 = v36[11]._object;
      v209 = v36[10]._object;
      v50(v208, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v209);
      v210 = sub_12529C();
      v212 = v211;
      v54(v208, v209);
      if (*(v45 + 16))
      {
        v213 = sub_8AD8(v210, v212);
        v215 = v214;

        if (v215)
        {
          v1 = v36;
          sub_8B50(*(v45 + 56) + 32 * v213, &v36[3]);

          if (swift_dynamicCast())
          {
            v216 = sub_B66D0(v36[6]._countAndFlagsBits, v36[6]._object);
            if (v216 != 19)
            {
              if (sub_B6264(v216) == 0x657461657263 && v217 == 0xE600000000000000)
              {

LABEL_113:
                v255 = *(v1[25]._countAndFlagsBits + 56);
                v255(v1[21]._countAndFlagsBits, 1, 1, v1[24]._object);
                v238 = sub_125AAC();
                v239 = sub_125DFC();
                if (os_log_type_enabled(v238, v239))
                {
                  v240 = swift_slowAlloc();
                  v241 = swift_slowAlloc();
                  v265[0] = v241;
                  *v240 = 136315138;
                  if (v256)
                  {
                    v242 = 0x6C65636E6163;
                  }

                  else
                  {
                    v242 = 7562617;
                  }

                  if (v256)
                  {
                    v243 = 0xE600000000000000;
                  }

                  else
                  {
                    v243 = 0xE300000000000000;
                  }

                  v244 = sub_8530(v242, v243, v265);

                  *(v240 + 4) = v244;
                  _os_log_impl(&dword_0, v238, v239, "Received confirmation directionInvocation, buttonPressed: %s", v240, 0xCu);
                  sub_5BB0(v241);
                }

                v245 = v36[21]._countAndFlagsBits;
                if (v256)
                {
                  v246 = sub_1261BC();

                  sub_5CA8(v245, &unk_161EC0, &unk_126E20);
                  v247 = &enum case for ConfirmationResponse.rejected(_:);
                  if (v246)
                  {
                    v247 = &enum case for ConfirmationResponse.confirmed(_:);
                  }
                }

                else
                {

                  sub_5CA8(v245, &unk_161EC0, &unk_126E20);
                  v247 = &enum case for ConfirmationResponse.confirmed(_:);
                }

                v1 = v36;
                v249 = v36[24]._object;
                v248 = v36[25]._countAndFlagsBits;
                v250 = v36[24]._countAndFlagsBits;
                v251 = v1[21]._countAndFlagsBits;
                v105 = v1[14]._object;
                v107 = v1[12]._object;
                v106 = v1[13]._countAndFlagsBits;
                (*(v248 + 104))(v251, *v247, v249);
                v255(v251, 0, 1, v249);
                sub_BA424(v251, v250);
                sub_1255EC();
                sub_1239CC();
                sub_5CA8(v251, &unk_161EC0, &unk_126E20);
                goto LABEL_51;
              }

LABEL_112:
              v237 = sub_1261BC();

              if (v237)
              {
                goto LABEL_113;
              }
            }
          }

LABEL_104:
          v218 = v1;
          v219 = *(v1[13]._countAndFlagsBits + 16);
          v219(v1[14]._countAndFlagsBits, v1[14]._object, v1[12]._object);
          v220 = sub_125AAC();
          v221 = sub_125DEC();
          v222 = os_log_type_enabled(v220, v221);
          v223 = v1[14]._countAndFlagsBits;
          if (v222)
          {
            v264 = v221;
            v224 = v1[13]._countAndFlagsBits;
            v225 = v1[13]._object;
            v226 = v1[12]._object;
            v227 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v265[0] = v258;
            *v227 = 136315138;
            v219(v225, v223, v226);
            v228 = sub_125BAC();
            v230 = v229;
            v231 = *(v224 + 8);
            v231(v223, v226);
            v232 = sub_8530(v228, v230, v265);

            *(v227 + 4) = v232;
            _os_log_impl(&dword_0, v220, v264, "Received unsupported directInvocation for confirmation: %s", v227, 0xCu);
            sub_5BB0(v258);
          }

          else
          {
            v234 = v1[12]._object;
            v233 = v1[13]._countAndFlagsBits;

            v231 = *(v233 + 8);
            v231(v223, v234);
          }

          v1 = v218;
          v235 = v218[14]._object;
          v236 = v218[12]._object;
          BYTE1(v218[32]._object) = 0;
          sub_5AE8(&unk_15F1A0, &unk_126ED0);
          sub_84CC();
          swift_allocError();
          sub_1251BC();
          swift_willThrow();

          v231(v235, v236);
          goto LABEL_17;
        }

LABEL_103:

        v1 = v36;
        goto LABEL_104;
      }
    }

    goto LABEL_103;
  }

  if (v10 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v60 = v1[30]._object;
    v62 = v1[24]._object;
    v61 = v1[25]._countAndFlagsBits;
    v260 = v1;
    v63 = v1[23]._object;
    (*(v1[29]._object + 12))(v60, v1[29]._countAndFlagsBits);
    v64 = *v60;
    v65 = *(v61 + 56);
    v65(v63, 1, 1, v62);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v66 = sub_125AAC();
      v67 = sub_125DFC();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_0, v66, v67, "Received UserDialogAct - UserAccepted", v68, 2u);
      }

      v70 = v1[24]._object;
      v69 = v1[25]._countAndFlagsBits;
      v71 = v1[23]._object;

      sub_5CA8(v71, &unk_161EC0, &unk_126E20);
      (*(v69 + 104))(v71, enum case for ConfirmationResponse.confirmed(_:), v70);
      v65(v71, 0, 1, v70);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v72 = sub_125AAC();
      v73 = sub_125DEC();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "Received UserDialogAct - UserWantedToProceed (Unexpected!)", v74, 2u);
      }

      v76 = v1[24]._object;
      v75 = v1[25]._countAndFlagsBits;
      v77 = v1[23]._object;

      sub_5CA8(v77, &unk_161EC0, &unk_126E20);
      (*(v75 + 104))(v77, enum case for ConfirmationResponse.confirmed(_:), v76);
      v65(v77, 0, 1, v76);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v78 = sub_125AAC();
      v79 = sub_125DFC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_0, v78, v79, "Received UserDialogAct - UserRejected", v80, 2u);
      }

      v82 = v1[24]._object;
      v81 = v1[25]._countAndFlagsBits;
      v83 = v1[23]._object;

      sub_5CA8(v83, &unk_161EC0, &unk_126E20);
      (*(v81 + 104))(v83, enum case for ConfirmationResponse.rejected(_:), v82);
      v65(v83, 0, 1, v82);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v84 = sub_125AAC();
      v85 = sub_125DFC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v84, v85, "Received UserDialogAct - UserCancelled", v86, 2u);
      }

      v88 = v1[24]._object;
      v87 = v1[25]._countAndFlagsBits;
      v89 = v1[23]._object;

      sub_5CA8(v89, &unk_161EC0, &unk_126E20);
      (*(v87 + 104))(v89, enum case for ConfirmationResponse.rejected(_:), v88);
      v65(v89, 0, 1, v88);
    }

    v91 = v1[24]._object;
    v90 = v1[25]._countAndFlagsBits;
    v92 = v1[23]._countAndFlagsBits;
    sub_BA424(v1[23]._object, v92);
    if ((*(v90 + 48))(v92, 1, v91) == 1)
    {
      sub_5CA8(v1[23]._countAndFlagsBits, &unk_161EC0, &unk_126E20);
      swift_unknownObjectRetain();
      v93 = sub_125AAC();
      v94 = sub_125DEC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v265[0] = v96;
        *v95 = 136315138;
        v1[7]._countAndFlagsBits = v64;
        swift_unknownObjectRetain();
        sub_5AE8(&unk_160610, &unk_129CC0);
        v97 = sub_125BAC();
        v99 = sub_8530(v97, v98, v265);

        *(v95 + 4) = v99;
        v1 = v260;
        _os_log_impl(&dword_0, v93, v94, "Received unsupported userDialogAct for confirmation: %s", v95, 0xCu);
        sub_5BB0(v96);
      }

      v100 = v1[23]._object;
      BYTE3(v1[32]._object) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_5CA8(v100, &unk_161EC0, &unk_126E20);
    }

    else
    {
      v177 = v1[26]._object;
      v179 = v1[24]._object;
      v178 = v1[25]._countAndFlagsBits;
      v180 = v1[24]._countAndFlagsBits;
      v262 = v1[23]._object;
      (*(v178 + 32))(v177, v1[23]._countAndFlagsBits, v179);
      (*(v178 + 16))(v180, v177, v179);
      v65(v180, 0, 1, v179);
      sub_1255EC();
      sub_1239CC();
      swift_unknownObjectRelease();
      (*(v178 + 8))(v177, v179);
      sub_5CA8(v262, &unk_161EC0, &unk_126E20);
    }
  }

  else
  {
    if (v10 == enum case for Parse.uso(_:))
    {
      v108 = v1[30]._object;
      v109 = v1[29]._countAndFlagsBits;
      v110 = v1[29]._object;
      v111 = v1[25]._countAndFlagsBits;
      v257 = v1[24]._object;
      v259 = v9;
      v253 = v1[22]._object;
      v112 = v1[20]._countAndFlagsBits;
      v113 = v1[20]._object;
      v114 = v1;
      v117 = v1 + 19;
      v116 = v1[19]._countAndFlagsBits;
      v115 = v117->_object;
      v119 = v114[18]._countAndFlagsBits;
      v118 = v114[18]._object;
      v120 = v114[15]._object;
      v110[12](v108, v109);
      (*(v112 + 32))(v113, v108, v115);
      sub_123D5C();
      v121 = sub_123D9C();
      v118[1](v116, v119);
      v122 = v253;
      v123 = v257;
      v256 = v111 + 56;
      v254 = *(v111 + 56);
      v254(v122, 1, 1, v123);
      v124 = 0;
      v125 = *(v121 + 16);
      v1 = (v120 + 16);
      while (v125 != v124)
      {
        if (v124 >= *(v121 + 16))
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v126 = v36[17]._object;
        v127 = v36[15]._countAndFlagsBits;
        (*(v120 + 2))(v126, v121 + ((v120[80] + 32) & ~v120[80]) + *(v120 + 9) * v124++, v127);
        v128 = sub_123DDC();
        (*(v120 + 1))(v126, v127);
        if (v128)
        {
          v129 = sub_125AAC();
          v130 = sub_125DFC();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            *v131 = 0;
            _os_log_impl(&dword_0, v129, v130, "USO parse userDialogActs contains hasAccepted; response is .confirmed.", v131, 2u);
          }

          v133 = v36[24]._object;
          v132 = v36[25]._countAndFlagsBits;
          v134 = v36[22]._object;

          sub_5CA8(v134, &unk_161EC0, &unk_126E20);
          (*(v132 + 104))(v134, enum case for ConfirmationResponse.confirmed(_:), v133);
          v254(v134, 0, 1, v133);
          break;
        }
      }

      v135 = 0;
      while (v125 != v135)
      {
        if (v135 >= *(v121 + 16))
        {
          goto LABEL_109;
        }

        v136 = v36[17]._countAndFlagsBits;
        v137 = v36[15]._countAndFlagsBits;
        (*(v120 + 2))(v136, v121 + ((v120[80] + 32) & ~v120[80]) + *(v120 + 9) * v135++, v137);
        v138 = sub_123E2C();
        (*(v120 + 1))(v136, v137);
        if (v138)
        {
          v139 = sub_125AAC();
          v140 = sub_125DFC();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            *v141 = 0;
            _os_log_impl(&dword_0, v139, v140, "USO parse userDialogActs contains hasWantedToProceed; response is .confirmed (unexpected!)", v141, 2u);
          }

          v143 = v36[24]._object;
          v142 = v36[25]._countAndFlagsBits;
          v144 = v36[22]._object;

          sub_5CA8(v144, &unk_161EC0, &unk_126E20);
          (*(v142 + 104))(v144, enum case for ConfirmationResponse.confirmed(_:), v143);
          v254(v144, 0, 1, v143);
          break;
        }
      }

      v145 = 0;
      while (v125 != v145)
      {
        if (v145 >= *(v121 + 16))
        {
          goto LABEL_110;
        }

        v146 = v36[16]._object;
        v147 = v36[15]._countAndFlagsBits;
        (*(v120 + 2))(v146, v121 + ((v120[80] + 32) & ~v120[80]) + *(v120 + 9) * v145++, v147);
        v148 = sub_123DEC();
        (*(v120 + 1))(v146, v147);
        if (v148)
        {
          v149 = sub_125AAC();
          v150 = sub_125DFC();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            *v151 = 0;
            _os_log_impl(&dword_0, v149, v150, "USO parse userDialogActs contains hasRejected; response is .rejected.", v151, 2u);
          }

          v153 = v36[24]._object;
          v152 = v36[25]._countAndFlagsBits;
          v154 = v36[22]._object;

          sub_5CA8(v154, &unk_161EC0, &unk_126E20);
          (*(v152 + 104))(v154, enum case for ConfirmationResponse.rejected(_:), v153);
          v254(v154, 0, 1, v153);
          break;
        }
      }

      v155 = 0;
      while (v125 != v155)
      {
        if (v155 >= *(v121 + 16))
        {
          goto LABEL_111;
        }

        v156 = v36[16]._countAndFlagsBits;
        v157 = v36[15]._countAndFlagsBits;
        (*(v120 + 2))(v156, v121 + ((v120[80] + 32) & ~v120[80]) + *(v120 + 9) * v155++, v157);
        v158 = sub_123DFC();
        (*(v120 + 1))(v156, v157);
        if (v158)
        {
          v159 = sub_125AAC();
          v160 = sub_125DFC();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&dword_0, v159, v160, "USO parse userDialogActs contains hasCancelled; response is .rejected.", v161, 2u);
          }

          v163 = v36[24]._object;
          v162 = v36[25]._countAndFlagsBits;
          v164 = v36[22]._object;

          sub_5CA8(v164, &unk_161EC0, &unk_126E20);
          (*(v162 + 104))(v164, enum case for ConfirmationResponse.rejected(_:), v163);
          v254(v164, 0, 1, v163);
          break;
        }
      }

      v1 = v36;
      v165 = v36[24]._object;
      v166 = v36[25]._countAndFlagsBits;
      v167 = v36[22]._countAndFlagsBits;
      sub_BA424(v36[22]._object, v167);
      if ((*(v166 + 48))(v167, 1, v165) != 1)
      {
        v199 = v36[26]._countAndFlagsBits;
        v201 = v36[24]._object;
        v200 = v36[25]._countAndFlagsBits;
        v202 = v36[24]._countAndFlagsBits;
        v203 = v36[22]._object;
        v204 = v36[22]._countAndFlagsBits;
        v205 = v36[20]._countAndFlagsBits;
        v263 = v36[20]._object;
        v252 = v36[19]._object;

        (*(v200 + 32))(v199, v204, v201);
        (*(v200 + 16))(v202, v199, v201);
        v254(v202, 0, 1, v201);
        sub_1255EC();
        sub_1239CC();
        (*(v200 + 8))(v199, v201);
        v206 = v203;
        v1 = v36;
        sub_5CA8(v206, &unk_161EC0, &unk_126E20);
        (*(v205 + 8))(v263, v252);
        goto LABEL_17;
      }

      sub_5CA8(v36[22]._countAndFlagsBits, &unk_161EC0, &unk_126E20);

      v168 = sub_125AAC();
      v169 = sub_125DEC();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v265[0] = v171;
        *v170 = 136315138;
        v172 = sub_125C7C();
        v173 = v1;
        v175 = v174;

        v176 = sub_8530(v172, v175, v265);
        v1 = v173;

        *(v170 + 4) = v176;
        _os_log_impl(&dword_0, v168, v169, "Received unsupported userDialogActs for confirmation: %s", v170, 0xCu);
        sub_5BB0(v171);
      }

      else
      {
      }

      v207 = v1[22]._object;
      v197 = v1[20]._countAndFlagsBits;
      v196 = v1[20]._object;
      v198 = v1[19]._object;
      BYTE2(v1[32]._object) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      sub_5CA8(v207, &unk_161EC0, &unk_126E20);
    }

    else
    {
      (*(v1[9]._object + 2))(v1[10]._countAndFlagsBits, v1[8]._countAndFlagsBits, v1[9]._countAndFlagsBits);
      v181 = sub_125AAC();
      v182 = sub_125DEC();
      if (os_log_type_enabled(v181, v182))
      {
        v184 = v1[9]._object;
        v183 = v1[10]._countAndFlagsBits;
        v261 = v9;
        v185 = v1[9]._countAndFlagsBits;
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v265[0] = v187;
        *v186 = 136315138;
        sub_123CCC();
        v188 = sub_125BAC();
        v190 = v189;
        v191 = v185;
        v9 = v261;
        v184[1](v183, v191);
        v192 = sub_8530(v188, v190, v265);
        v1 = v36;

        *(v186 + 4) = v192;
        _os_log_impl(&dword_0, v181, v182, "Received an unsupported input: %s", v186, 0xCu);
        sub_5BB0(v187);
      }

      else
      {
        v194 = v1[9]._object;
        v193 = v1[10]._countAndFlagsBits;
        v195 = v1[9]._countAndFlagsBits;

        v194[1](v193, v195);
      }

      v196 = v1[30]._object;
      v198 = v1[29]._countAndFlagsBits;
      v197 = v1[29]._object;
      LOBYTE(v1[32]._object) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();
    }

    (*(v197 + 8))(v196, v198);
  }

LABEL_17:

  v34 = v1->_object;

  return v34();
}

uint64_t sub_B9138(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_5AE8(&unk_162190, &unk_128500);
  v2[4] = swift_task_alloc();
  v3 = sub_125ABC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_12501C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_B92E8, 0, 0);
}

uint64_t sub_B92E8()
{
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v1 = sub_123A9C();
  *(v0 + 112) = v1;
  v2 = [v1 createdTimer];
  *(v0 + 120) = v2;
  if (v2)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = sub_113D6C(0, 0);
    *(v0 + 128) = v6;
    (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v5);
    if (qword_15EEF8 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = sub_5B30(v9, qword_161E90);
    (*(v8 + 16))(v7, v10, v9);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EE10 != -1)
    {
      swift_once();
    }

    sub_5AE8(&qword_15F180, &unk_126E10);
    v11 = swift_allocObject();
    *(v0 + 136) = v11;
    *(v11 + 16) = xmmword_126CB0;
    *(v11 + 32) = 0x72656D6974;
    *(v11 + 40) = 0xE500000000000000;
    *(v11 + 72) = type metadata accessor for TimerTimer(0);
    *(v11 + 48) = v6;
    v18 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v12 = swift_task_alloc();
    *(v0 + 144) = v12;
    *v12 = v0;
    v12[1] = sub_B9704;

    return v18(0xD000000000000024, 0x800000000012E4B0, v11);
  }

  else
  {
    if (qword_15EEF8 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 40), qword_161E90);
    v14 = sub_125AAC();
    v15 = sub_125DEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "timer to confirm is not found!", v16, 2u);
    }

    *(v0 + 184) = 3;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_B9704(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_B9A6C;
  }

  else
  {

    v4 = sub_B9828;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B9828()
{
  v1 = v0[4];
  v2 = sub_12392C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_B9910;
  v4 = v0[13];
  v5 = v0[4];
  v6 = v0[2];

  return sub_F2BE4(v6, 1, v5, v4);
}

uint64_t sub_B9910()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  sub_5CA8(*(v2 + 32), &unk_162190, &unk_128500);

  if (v0)
  {
    v4 = sub_B9C18;
  }

  else
  {
    v4 = sub_B9B44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B9A6C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_B9B44()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  (*(v4 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_B9C18()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  (*(v4 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}