uint64_t sub_21AD8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v7 = sub_2CD500();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = a3;
  v49[4] = a4;
  v13 = sub_F390(v49);
  (*(*(a3 - 8) + 16))(v13, a1, a3);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);
  sub_EEAC(v49, v48);
  v15 = v12;
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v18;
    v42 = swift_slowAlloc();
    v47 = v42;
    *v18 = 136315138;
    sub_35E0(v48, v48[3]);
    v43 = v15;
    sub_2CD720();
    sub_21D4B4(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
    v19 = sub_2CE530();
    v41 = v9;
    v20 = v13;
    v22 = v21;

    sub_306C(v48);
    v23 = sub_3F08(v19, v22, &v47);
    v13 = v20;

    v24 = v40;
    *(v40 + 1) = v23;
    _os_log_impl(&dword_0, v16, v17, "DetermineIntent#amendPreviousAndNextAttributes Checking attributes: %s", v24, 0xCu);
    sub_306C(v42);

    (*(v10 + 8))(v43, v41);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
    sub_306C(v48);
  }

  v25 = v13;
  v26 = sub_2CD720();
  v28 = v44;
  v27 = v45;
  v43 = v45[13];
  (v43)(v44, enum case for CommonAudio.Attribute.next(_:), v7);
  v29 = sub_17F758(v28, v26);

  v30 = v27[1];
  v30(v28, v7);
  if (v29 & 1) != 0 || (v45 = v25, v31 = sub_2CD720(), v32 = v43, (v43)(v28, enum case for CommonAudio.Attribute.playNext(_:), v7), v33 = sub_17F758(v28, v31), , v30(v28, v7), (v33))
  {
    v34 = 2;
  }

  else
  {
    v36 = sub_2CD720();
    (v32)(v28, enum case for CommonAudio.Attribute.previous(_:), v7);
    v37 = sub_17F758(v28, v36);

    v30(v28, v7);
    if (v37)
    {
      v34 = 3;
    }

    else
    {
      v38 = sub_2CD720();
      (v32)(v28, enum case for CommonAudio.Attribute.playLast(_:), v7);
      v39 = sub_17F758(v28, v38);

      v30(v28, v7);
      if (v39)
      {
        v34 = 3;
      }

      else
      {
        v34 = 1;
      }
    }
  }

  [v46 setQueueLocation:v34];
  return sub_306C(v49);
}

uint64_t sub_21B320(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v39 = a5;
  v38 = a4;
  v36 = a3;
  v35 = a2;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v44[3] = a7;
  v44[4] = a8;
  v18 = sub_F390(v44);
  (*(*(a7 - 8) + 16))(v18, a1, a7);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v20 = *(v12 + 16);
  v20(v17, v19, v11);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "DetermineIntent#amendTargetDeviceIdsIfWHA Reached logic", v23, 2u);
  }

  v24 = *(v12 + 8);
  v24(v17, v11);
  sub_EEAC(v44, v42);
  sub_20410(&qword_355588, &qword_2D77C8);
  sub_20410(&qword_355590, &qword_2D77D0);
  if (swift_dynamicCast())
  {
    sub_F338(v40, v43);
    sub_35E0(v43, v43[3]);
    if (sub_2CDF10())
    {
      sub_35E0(v35, v35[3]);
      sub_EEAC(v43, v42);
      sub_EEAC(v36, v40);
      v25 = swift_allocObject();
      v26 = v37;
      v27 = v38;
      v25[2] = v37;
      v25[3] = v27;
      v25[4] = v39;
      sub_F338(v42, (v25 + 5));
      sub_F338(v40, (v25 + 10));
      v28 = v26;

      sub_2CDE40();

      sub_306C(v43);
      return sub_306C(v44);
    }

    sub_306C(v43);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_30B8(v40, &qword_3547A8, &unk_2D6BE8);
  }

  v20(v15, v19, v11);
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "DetermineIntent#amendTargetDeviceIdsIfWHA Non-WHA request because no home automation nodes present, returning completion", v31, 2u);
  }

  v32 = (v24)(v15, v11);
  v38(v32);
  return sub_306C(v44);
}

void sub_21B7C4(void *a1)
{
  v3 = sub_2CE000();
  v210 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v208 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v203 = &v201 - v7;
  v8 = __chkstk_darwin(v6);
  v202 = &v201 - v9;
  v10 = __chkstk_darwin(v8);
  v205 = &v201 - v11;
  v12 = __chkstk_darwin(v10);
  v204 = &v201 - v13;
  v14 = __chkstk_darwin(v12);
  v207 = &v201 - v15;
  v16 = __chkstk_darwin(v14);
  v206 = &v201 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = (&v201 - v19);
  __chkstk_darwin(v18);
  v22 = &v201 - v21;
  type metadata accessor for WHADialogMetadata();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_2CE260();
  v25 = [v23 initWithIdentifier:0 displayString:v24];

  [a1 numberOfHomeAutomationWords];
  isa = sub_2CEF40().super.super.isa;
  [v25 setNumberOfHomeAutomationWords:isa];

  LOBYTE(isa) = [a1 isAllSpeakers];
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v27 = sub_2CEB00(isa).super.super.isa;
  [v25 setIsAllSpeakers:v27];

  v28 = sub_2CEB00([a1 isPauseOrStop]).super.super.isa;
  [v25 setIsPauseOrStop:v28];

  v29 = sub_2CEB00([a1 isWholeHouseAudioCommand]).super.super.isa;
  [v25 setIsWholeHouseAudioCommand:v29];

  v30 = sub_2CEB00([a1 isInHere]).super.super.isa;
  [v25 setIsInHere:v30];

  v31 = sub_2CEB00([a1 hasExcept]).super.super.isa;
  v213 = v25;
  [v25 setHasExcept:v31];

  v32 = [a1 speakerRooms];
  v36 = 0;
  if (v32)
  {
    v33 = v32;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v34 = sub_2CE410();

    v35 = v34 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));

    if (v35 > 2)
    {
      v36 = 1;
    }
  }

  v37 = sub_2CEB00(v36).super.super.isa;
  [v213 setHasThreeOrMoreRooms:v37];

  v38 = [a1 speakerRooms];
  v42 = 0;
  if (v38)
  {
    v39 = v38;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v40 = sub_2CE410();

    v41 = v40 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));

    if (v41 > 1)
    {
      v42 = 1;
    }
  }

  v43 = sub_2CEB00(v42).super.super.isa;
  [v213 setHasTwoOrMoreRooms:v43];

  v44 = [a1 speakerNames];
  v48 = 0;
  if (v44)
  {
    v45 = v44;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v46 = sub_2CE410();

    v47 = v46 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));

    if (v47 > 2)
    {
      v48 = 1;
    }
  }

  v49 = sub_2CEB00(v48).super.super.isa;
  [v213 setHasThreeOrMoreDevices:v49];

  v50 = [a1 permanentNames];
  v54 = 0;
  if (v50)
  {
    v51 = v50;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v52 = sub_2CE410();

    v53 = v52 >> 62 ? sub_2CEDA0() : *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));

    if (v53 > 0)
    {
      v54 = 1;
    }
  }

  v55 = sub_2CEB00(v54).super.super.isa;
  v56 = v213;
  [v213 setHasGroups:v55];

  v57 = sub_2CEB00([a1 isParticipatingSpeaker]).super.super.isa;
  [v56 setIsParticipatingSpeaker:v57];

  v226 = _swiftEmptyArrayStorage;
  v58 = [a1 intentSpeakerRooms];
  v219 = v3;
  v209 = a1;
  v216 = v20;
  if (v58)
  {
    v59 = v58;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v60 = sub_2CE410();

    v225 = v60;
    sub_20410(&qword_355598, &qword_2D77D8);
    sub_21D450();
    v61 = sub_2CE580();

    v62 = v61;
    v63 = *(v61 + 16);
    if (v63)
    {
      v212 = v62;
      v225 = _swiftEmptyArrayStorage;
      sub_2DB78(0, v63, 0);
      a1 = v225;
      if (qword_34BF58 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_161;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_39:
    sub_80B10(a1);
    a1 = v209;
  }

  v78 = [a1 intentSpeakerNames];
  if (v78)
  {
    v79 = v78;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v80 = sub_2CE410();

    v225 = v80;
    sub_20410(&qword_355598, &qword_2D77D8);
    sub_21D450();
    v81 = sub_2CE580();

    v217 = v81;
    v82 = *(v81 + 16);
    if (v82)
    {
      v225 = _swiftEmptyArrayStorage;
      sub_2DB78(0, v82, 0);
      v84 = v225;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v85 = 0;
      v215 = (v210 + 16);
      v214 = (v210 + 8);
      v86 = &v217[5];
      *&v83 = 136315138;
      v211 = v83;
      v212 = v82;
      do
      {
        if (v82 == v85)
        {
          goto LABEL_153;
        }

        if (v85 >= v217[2].isa)
        {
          goto LABEL_154;
        }

        v87 = *(v86 - 1);
        v20 = *v86;
        v88 = sub_3ED0(v3, static Logger.default);
        swift_beginAccess();
        v89 = v216;
        (*v215)(v216, v88, v3);

        v1 = sub_2CDFE0();
        v90 = sub_2CE690();

        v91 = os_log_type_enabled(v1, v90);
        v218 = v87;
        if (v91)
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v223[0] = v93;
          *v92 = v211;
          *(v92 + 4) = sub_3F08(v87, v20, v223);
          _os_log_impl(&dword_0, v1, v90, "DetermineIntent#constructWHADialogMetadata speakerName: %s", v92, 0xCu);
          sub_306C(v93);
          v82 = v212;

          (*v214)(v89, v219);
        }

        else
        {

          (*v214)(v89, v3);
        }

        v225 = v84;
        v95 = v84[2];
        v94 = v84[3];

        if (v95 >= v94 >> 1)
        {
          sub_2DB78((v94 > 1), v95 + 1, 1);
          v84 = v225;
        }

        v85 = (v85 + 1);
        v84[2] = v95 + 1;
        v96 = &v84[3 * v95];
        v3 = v219;
        v96[4] = v218;
        v96[5] = v20;
        *(v96 + 48) = 0;
        v86 += 2;
      }

      while (v82 != v85);
    }

    else
    {

      v84 = _swiftEmptyArrayStorage;
    }

    sub_80B10(v84);
    a1 = v209;
  }

  v3 = v226;
  if (!v226[2])
  {
    goto LABEL_87;
  }

  v216 = v226[2];
  v98 = v226[4];
  v97 = v226[5];
  LODWORD(v99) = *(v226 + 48);
  v100 = qword_34BF58;

  if (v100 != -1)
  {
    swift_once();
  }

  v101 = v219;
  v102 = sub_3ED0(v219, static Logger.default);
  swift_beginAccess();
  v103 = *(v210 + 16);
  v104 = v206;
  v217 = (v210 + 16);
  v218 = v103;
  (v103)(v206, v102, v101);

  v105 = sub_2CDFE0();
  v106 = sub_2CE690();

  v107 = os_log_type_enabled(v105, v106);
  v215 = v98;
  if (v107)
  {
    v108 = swift_slowAlloc();
    LODWORD(v214) = v99;
    v99 = v108;
    v109 = swift_slowAlloc();
    v221[0] = v109;
    *v99 = 136315138;
    v223[0] = v98;
    v223[1] = v97;
    v224 = v214;

    v110 = sub_2CE2A0();
    v112 = sub_3F08(v110, v111, v221);
    a1 = v209;

    *(v99 + 4) = v112;
    _os_log_impl(&dword_0, v105, v106, "DetermineIntent#constructWHADialogMetadata firstDestination: %s", v99, 0xCu);
    sub_306C(v109);

    LOBYTE(v99) = v214;

    v113 = *(v210 + 8);
    (v113)(v206, v101);
  }

  else
  {

    v113 = *(v210 + 8);
    (v113)(v104, v101);
  }

  if ((v99 & 1) == 0)
  {
    (v218)(v207, v102, v219);
    v115 = sub_2CDFE0();
    v119 = sub_2CE690();
    if (os_log_type_enabled(v115, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_0, v115, v119, "DetermineIntent#constructWHADialogMetadata Destination #1: Destination is an accesory. Setting firstSpeakerName to firstDestination.name", v120, 2u);
      v20 = &selRef_setFirstSpeakerName_;
      v118 = v207;
      goto LABEL_67;
    }

    v20 = &selRef_setFirstSpeakerName_;
    v118 = v207;
LABEL_70:
    v121 = v216;
    goto LABEL_71;
  }

  v114 = v204;
  (v218)();
  v115 = sub_2CDFE0();
  v116 = sub_2CE690();
  if (!os_log_type_enabled(v115, v116))
  {
    v20 = &selRef_setFirstSpeakerRoom_;
    v118 = v114;
    goto LABEL_70;
  }

  v117 = swift_slowAlloc();
  *v117 = 0;
  _os_log_impl(&dword_0, v115, v116, "DetermineIntent#constructWHADialogMetadata Destination #1: Destination is a room or zone. Setting firstSpeakerRoom to firstDestination.name", v117, 2u);
  v20 = &selRef_setFirstSpeakerRoom_;
  v118 = v114;
LABEL_67:
  v121 = v216;

LABEL_71:

  v22 = (v210 + 8);
  (v113)(v118, v219);

  v63 = sub_2CE260();

  [v213 *v20];

  if (*(v3 + 16) < v121)
  {
    __break(1u);
LABEL_161:
    swift_once();
LABEL_28:
    v1 = 0;
    v215 = (v210 + 16);
    v214 = (v210 + 8);
    v65 = v212;
    v66 = (v212 + 40);
    *&v64 = 136315138;
    v211 = v64;
    v217 = v63;
    v218 = v22;
    while (v63 != v1)
    {
      if (v1 >= *(v65 + 16))
      {
        goto LABEL_152;
      }

      v20 = *(v66 - 1);
      v67 = *v66;
      v68 = sub_3ED0(v3, static Logger.default);
      swift_beginAccess();
      (*v215)(v22, v68, v3);

      v69 = sub_2CDFE0();
      v70 = sub_2CE690();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = v22;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v223[0] = v73;
        *v72 = v211;
        *(v72 + 4) = sub_3F08(v20, v67, v223);
        _os_log_impl(&dword_0, v69, v70, "DetermineIntent#constructWHADialogMetadata roomName: %s", v72, 0xCu);
        sub_306C(v73);
        v3 = v219;

        v74 = v71;
        v65 = v212;
        (*v214)(v74, v3);
      }

      else
      {

        (*v214)(v22, v3);
      }

      v225 = a1;
      v76 = a1[2];
      v75 = a1[3];

      if (v76 >= v75 >> 1)
      {
        sub_2DB78((v75 > 1), v76 + 1, 1);
        a1 = v225;
      }

      v1 = (v1 + 1);
      a1[2] = v76 + 1;
      v77 = &a1[3 * v76];
      v77[4] = v20;
      v77[5] = v67;
      *(v77 + 48) = 1;
      v66 += 2;
      v63 = v217;
      v22 = v218;
      if (v217 == v1)
      {

        goto LABEL_39;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    swift_once();
    goto LABEL_146;
  }

  if (v121 != (&dword_0 + 1))
  {
    v216 = v113;
    v122 = *(v3 + 64);
    v215 = *(v3 + 56);
    v123 = *(v3 + 72);

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v124 = v219;
    v125 = sub_3ED0(v219, static Logger.default);
    swift_beginAccess();
    v126 = v205;
    (v218)(v205, v125, v124);

    v127 = sub_2CDFE0();
    v128 = sub_2CE690();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v129 = 136315138;
      v220 = v130;
      v221[0] = v215;
      v221[1] = v122;
      v222 = v123;

      v131 = sub_2CE2A0();
      v133 = sub_3F08(v131, v132, &v220);

      *(v129 + 4) = v133;
      a1 = v209;
      _os_log_impl(&dword_0, v127, v128, "DetermineIntent#constructWHADialogMetadata secondDestination: %s", v129, 0xCu);
      sub_306C(v130);

      v124 = v219;

      v134 = v205;
    }

    else
    {

      v134 = v126;
    }

    (v216)(v134, v124);
    if (v123)
    {
      (v218)(v203, v125, v124);
      v135 = sub_2CDFE0();
      v136 = sub_2CE690();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&dword_0, v135, v136, "DetermineIntent#constructWHADialogMetadata Destination #2: Destination is a room or zone. Setting secondSpeakerRoom to the secondDestination.name", v137, 2u);
      }

      (v216)(v203, v124);

      v138 = sub_2CE260();

      [v213 setSecondSpeakerRoom:v138];
    }

    else
    {
      (v218)(v202, v125, v124);
      v139 = sub_2CDFE0();
      v140 = sub_2CE690();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_0, v139, v140, "DetermineIntent#constructWHADialogMetadata Destination #2: Destination is an accesory. Setting secondSpeakerName to secondDestination.name", v141, 2u);
      }

      (v216)(v202, v124);

      v138 = sub_2CE260();

      [v213 setSecondSpeakerName:v138];
    }
  }

LABEL_87:

  v142 = [a1 spokenEntityNames];
  if (v142)
  {
    v143 = v142;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v144 = sub_2CE410();
  }

  else
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_2D0770;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    *(v144 + 32) = sub_2CE5E0();
  }

  v145 = [a1 spokenEntityTypes];
  if (v145)
  {
    v146 = v145;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    v147 = sub_2CE410();
  }

  else
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_2D0770;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    *(v147 + 32) = sub_2CE5E0();
  }

  v3 = sub_229BBC(v144, v147);

  if ((v3 & 0xC000000000000001) != 0)
  {
    v148 = sub_2CED60();
    v1 = 0;
    v149 = 0;
    v150 = 0;
    v3 = v148 | 0x8000000000000000;
  }

  else
  {
    v151 = -1 << *(v3 + 32);
    v1 = (v3 + 64);
    v149 = ~v151;
    v152 = -v151;
    if (v152 < 64)
    {
      v153 = ~(-1 << v152);
    }

    else
    {
      v153 = -1;
    }

    v150 = v153 & *(v3 + 64);
  }

  v154 = 0;
  v216 = v149;
  v20 = ((v149 + 64) >> 6);
  v217 = _swiftEmptyArrayStorage;
  v218 = _swiftEmptyArrayStorage;
  while (v3 < 0)
  {
    v162 = sub_2CED70();
    if (!v162)
    {
      goto LABEL_135;
    }

    v164 = v163;
    v220 = v162;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    swift_dynamicCast();
    v160 = v221[0];
    v220 = v164;
    swift_dynamicCast();
    v161 = v221[0];
    v157 = v150;
    if (!v160)
    {
      goto LABEL_135;
    }

LABEL_109:
    v150 = v157;
    v165 = sub_2CE5F0();
    if (!v166)
    {
      goto LABEL_118;
    }

    if (v165 == 1297043282 && v166 == 0xE400000000000000)
    {
    }

    else
    {
      v168 = sub_2CEEA0();

      if ((v168 & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    v169 = sub_2CE5F0();
    if (v170)
    {
      v173 = v170;
      v179 = v217;
      if (v217)
      {
        v215 = v169;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = sub_B90C4(0, *(v179 + 2) + 1, 1, v179);
        }

        v176 = *(v179 + 2);
        v180 = *(v179 + 3);
        v217 = v179;
        v177 = v176 + 1;
        if (v176 >= v180 >> 1)
        {
          v217 = sub_B90C4((v180 > 1), v176 + 1, 1, v217);
        }

        v178 = v217;
LABEL_132:
        *(v178 + 2) = v177;
        v181 = &v178[16 * v176];
        *(v181 + 4) = v215;
        *(v181 + 5) = v173;
      }

      else
      {

        v217 = 0;
      }
    }

    else
    {
LABEL_118:
      v171 = sub_2CE5F0();
      if (v172)
      {
        v173 = v172;
        v174 = v218;
        if (v218)
        {
          v215 = v171;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v174 = sub_B90C4(0, *(v174 + 2) + 1, 1, v174);
          }

          v176 = *(v174 + 2);
          v175 = *(v174 + 3);
          v218 = v174;
          v177 = v176 + 1;
          if (v176 >= v175 >> 1)
          {
            v218 = sub_B90C4((v175 > 1), v176 + 1, 1, v218);
          }

          v178 = v218;
          goto LABEL_132;
        }

        v218 = 0;
      }

      else
      {
      }
    }
  }

  v155 = v154;
  v156 = v150;
  if (!v150)
  {
    while (1)
    {
      v154 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        break;
      }

      if (v154 >= v20)
      {
        goto LABEL_135;
      }

      v156 = v1[v154].isa;
      ++v155;
      if (v156)
      {
        goto LABEL_105;
      }
    }

    __break(1u);
    goto LABEL_151;
  }

LABEL_105:
  v157 = (v156 - 1) & v156;
  v158 = (v154 << 9) | (8 * __clz(__rbit64(v156)));
  v159 = *(*(v3 + 56) + v158);
  v160 = *(*(v3 + 48) + v158);
  v161 = v159;
  if (v160)
  {
    goto LABEL_109;
  }

LABEL_135:
  sub_21D448(v3);
  v182 = v218;
  v20 = v219;
  v3 = v210;
  v1 = v217;
  if (v218)
  {
    v183 = *(v218 + 2);
    if (v183)
    {
      if (v183 == 1)
      {
        v184 = &selRef_setFirstPermanentNameFromSpokenEntities_;
      }

      else
      {

        v185 = sub_2CE260();

        [v213 setFirstPermanentNameFromSpokenEntities:v185];

        if (*(v182 + 2) < 2uLL)
        {
          __break(1u);
          return;
        }

        v184 = &selRef_setSecondPermanentNameFromSpokenEntities_;
      }

      v186 = sub_2CE260();

      [v213 *v184];
    }
  }

  if (v1 && v1[2].isa == (&dword_0 + 1))
  {

    v187 = sub_2CE260();

    [v213 setFirstRoomNameFromSpokenEntities:v187];
  }

  if (qword_34BF58 != -1)
  {
    goto LABEL_155;
  }

LABEL_146:
  sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v188 = v208;
  (*(v3 + 16))();
  v189 = v213;
  v190 = sub_2CDFE0();
  v191 = sub_2CE690();

  if (os_log_type_enabled(v190, v191))
  {
    v192 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v217 = v1;
    v194 = v193;
    v220 = v193;
    *v192 = 136446210;
    v195 = v189;
    v196 = [v195 description];
    v197 = sub_2CE270();
    v199 = v198;

    v200 = sub_3F08(v197, v199, &v220);

    *(v192 + 4) = v200;
    _os_log_impl(&dword_0, v190, v191, "DetermineIntent#amendTargetDeviceIdsIfWHA whaDialogMetadata: %{public}s", v192, 0xCu);
    sub_306C(v194);

    (*(v210 + 8))(v188, v219);
  }

  else
  {

    (*(v3 + 8))(v188, v20);
  }
}

unint64_t sub_21D450()
{
  result = qword_3555A0[0];
  if (!qword_3555A0[0])
  {
    sub_2DB30(&qword_355598, &qword_2D77D8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_3555A0);
  }

  return result;
}

uint64_t sub_21D4B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21D588(void *a1)
{
  v2 = sub_2CDFD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE9E0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v7 = qword_35F760;
  sub_2CDFC0();
  sub_2CDF90(v6, &dword_0, v7, "appResolutionOnDeviceResolveApp", 31, 2, v5, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = sub_21D754(a1);
  sub_2CE9D0();
  sub_2CDFC0();
  sub_2CDFA0();
  v8(v5, v2);
  return v9;
}

uint64_t sub_21D754(void *a1)
{
  v2 = v1;
  v101.value._object = *v1;
  v99 = sub_2CE130();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = (&v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_2CE1A0();
  v96 = *(v97 - 8);
  v5 = __chkstk_darwin(v97);
  v93 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v90 - v7;
  v104 = sub_2CA870();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v101.value._countAndFlagsBits = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v90 - v18;
  v20 = __chkstk_darwin(v17);
  v92 = &v90 - v21;
  __chkstk_darwin(v20);
  v23 = &v90 - v22;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v25 = *(v14 + 16);
  v109 = v14 + 16;
  v110 = v24;
  v108 = v25;
  v25(v23, v24, v13);
  v26 = *(v10 + 16);
  v105 = a1;
  v26(v12, a1, v9);
  v27 = v12;
  v28 = v9;
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  v31 = os_log_type_enabled(v29, v30);
  v100 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v107 = v13;
    v34 = v33;
    v112[0] = v33;
    *v32 = 136315138;
    v35 = sub_2CA770();
    v36 = v28;
    v37 = v35;
    v91 = v2;
    v106 = v14;
    v39 = v38;
    (*(v10 + 8))(v27, v36);
    v40 = sub_3F08(v37, v39, v112);
    v14 = v106;
    v2 = v91;

    *(v32 + 4) = v40;
    _os_log_impl(&dword_0, v29, v30, "AppResolutionOnDeviceStrategy#resolveApp Resolving app with input: %s", v32, 0xCu);
    sub_306C(v34);
    v13 = v107;
  }

  else
  {

    (*(v10 + 8))(v27, v28);
  }

  v41 = *(v14 + 8);
  (v41)(v23, v13);
  v42 = v102;
  sub_2CA790();
  v43 = Parse.getSiriKitIntent(nowPlayingProvider:featureFlags:)(v2 + 25, (v2 + 2));
  (v103[1].isa)(v42, v104);
  if (v43)
  {
    v44 = swift_dynamicCastUnknownClass();
    if (v44)
    {
      v45 = v44;
      v46 = v2[30];
      v2[30] = v44;
      v47 = v43;

      v48 = v47;
      v49 = [v45 launchId];
      v106 = v14;
      v107 = v13;
      v91 = v41;
      v105 = v48;
      if (v49)
      {
        v50 = v49;
        v101.value._countAndFlagsBits = sub_2CE270();
        v101.value._object = v51;
      }

      else
      {
        v101.value._countAndFlagsBits = 0;
        v101.value._object = 0;
      }

      v57 = swift_allocObject();
      v102 = sub_2CA300();
      *(v57 + 16) = sub_2CA2C0();
      v104 = v57 + 16;
      v58 = dispatch_semaphore_create(0);
      v112[3] = sub_2CCFE0();
      v112[4] = &protocol witness table for AppResolutionStateProvider;
      sub_F390(v112);
      sub_2CCFD0();
      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v58;

      v60 = v58;
      sub_2CCF40();

      sub_306C(v112);
      v61 = v93;
      sub_2CE190();
      v62 = v95;
      *v95 = 8;
      v63 = v98;
      v64 = v99;
      (*(v98 + 104))(v62, enum case for DispatchTimeInterval.seconds(_:), v99);
      v65 = v94;
      sub_2CE1B0();
      (*(v63 + 8))(v62, v64);
      v66 = *(v96 + 8);
      v67 = v61;
      v68 = v97;
      v66(v67, v97);
      v103 = v60;
      sub_2CEA20();
      v66(v65, v68);
      v69 = sub_2CE140();
      v70 = v91;
      if (v69)
      {
        v71 = v92;
        v108(v92, v110, v107);
        v72 = sub_2CDFE0();
        v73 = sub_2CE680();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_0, v72, v73, "AppResolutionOnDeviceStrategy#resolveApp timed out waiting for resolveApp to return, continuing on with noAppFound", v74, 2u);
        }

        (v70)(v71, v107);
        v75 = sub_2CA2C0();
        v76 = v104;
        swift_beginAccess();
        *v76 = v75;
      }

      v113._object = 0x80000000002DFBD0;
      v113._countAndFlagsBits = 0xD000000000000028;
      sub_2CEAA0(v101, v113);
      v77 = v105;

      v78 = v100;
      v79 = v107;
      v108(v100, v110, v107);

      v80 = sub_2CDFE0();
      v81 = sub_2CE690();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v112[0] = v83;
        *v82 = 136315138;
        v84 = v70;
        v85 = v104;
        swift_beginAccess();
        v111 = *v85;
        sub_220B7C(&qword_3556A8, &type metadata accessor for AppResolutionAction, &protocol conformance descriptor for AppResolutionAction);
        v86 = sub_2CEE70();
        v88 = sub_3F08(v86, v87, v112);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_0, v80, v81, "AppResolutionOnDeviceStrategy#resolveApp returning result %s", v82, 0xCu);
        sub_306C(v83);

        (v84)(v100, v79);
      }

      else
      {

        (v70)(v78, v79);
      }

      swift_beginAccess();
      v89 = *(v57 + 16);

      return v89;
    }
  }

  countAndFlagsBits = v101.value._countAndFlagsBits;
  v108(v101.value._countAndFlagsBits, v110, v13);
  v53 = sub_2CDFE0();
  v54 = sub_2CE680();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "AppResolutionOnDeviceStrategy#resolveApp Unable to get SiriKit intent from parse", v55, 2u);
  }

  (v41)(countAndFlagsBits, v13);
  sub_2CA300();
  return sub_2CA2C0();
}

Swift::Int sub_21E390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_2CD050();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_20410(&qword_354750, &qword_2D69E0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  sub_F3F4(a1, &v39 - v16, &qword_354750, &qword_2D69E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = v39;
    v19 = sub_3ED0(v39, static Logger.default);
    swift_beginAccess();
    v20 = v40;
    (*(v40 + 16))(v14, v19, v18);
    swift_errorRetain();
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_2CEEF0();
      v27 = sub_3F08(v25, v26, v43);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "AppResolutionOnDeviceStrategy#resolveApp App resolution resulted in a failure. Error: %s", v23, 0xCu);
      sub_306C(v24);
    }

    (*(v20 + 8))(v14, v18);
    sub_2CA300();
    v28 = sub_2CA2C0();
  }

  else
  {
    (*(v5 + 32))(v7, v17, v4);
    v29 = v4;
    v30 = v5;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = v39;
    v32 = sub_3ED0(v39, static Logger.default);
    swift_beginAccess();
    v33 = v40;
    (*(v40 + 16))(v12, v32, v31);
    v34 = sub_2CDFE0();
    v35 = sub_2CE690();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "AppResolutionOnDeviceStrategy#resolveApp success", v36, 2u);
    }

    (*(v33 + 8))(v12, v31);
    v28 = sub_206AC(v7);
    (*(v30 + 8))(v7, v29);
  }

  v37 = v41;
  swift_beginAccess();
  *(v37 + 16) = v28;

  return sub_2CEA40();
}

uint64_t sub_21E888(uint64_t a1)
{
  v3 = *(v1 + 240);
  v4 = v3;
  v5 = sub_21E8D4(v3, a1);

  return v5;
}

uint64_t sub_21E8D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v90 = a1;
  v5 = *v3;
  v86 = v3;
  v92 = v5;
  v96 = sub_2CA870();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA7B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v87 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v84 - v16;
  v18 = __chkstk_darwin(v15);
  v88 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v97 = &v84 - v21;
  __chkstk_darwin(v20);
  v23 = &v84 - v22;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v25 = *(v12 + 16);
  v100 = v24;
  v99 = v12 + 16;
  v98 = v25;
  v25(v23, v24, v11);
  v26 = *(v8 + 16);
  v93 = a2;
  v26(v10, a2, v7);
  v27 = sub_2CDFE0();
  v28 = sub_2CE690();
  v29 = os_log_type_enabled(v27, v28);
  v89 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v91 = v12;
    v31 = v30;
    v32 = swift_slowAlloc();
    v85 = v11;
    v33 = v32;
    v107 = v32;
    *v31 = 136315138;
    sub_220B7C(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v34 = sub_2CEE70();
    v36 = v35;
    (*(v8 + 8))(v10, v7);
    v37 = sub_3F08(v34, v36, &v107);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_0, v27, v28, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse for input: %s", v31, 0xCu);
    sub_306C(v33);

    v12 = v91;

    v38 = *(v12 + 8);
    v39 = v85;
    v38(v23, v85);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v38 = *(v12 + 8);
    v38(v23, v11);
    v39 = v11;
  }

  v40 = v94;
  sub_2CA790();
  v41 = type metadata accessor for AppResolutionOnDeviceStrategy(0, v92[10], v92[11], v92[12]);
  WitnessTable = swift_getWitnessTable();
  sub_16D228(v40, v41, WitnessTable, &v107);
  (*(v95 + 8))(v40, v96);
  sub_F3F4(&v107, &v105, &qword_355698, qword_2D7A40);
  if (v106 == 1)
  {
    v98(v97, v100, v39);
    swift_errorRetain();
    v43 = sub_2CDFE0();
    v44 = sub_2CE680();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&dword_0, v43, v44, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse error getting app: %@", v45, 0xCu);
      sub_30B8(v46, &unk_34FC00, &unk_2D0150);
    }

    v38(v97, v39);
    sub_2CA670();
    v48 = sub_2CA650();

    sub_30B8(&v107, &qword_355698, qword_2D7A40);
  }

  else
  {
    sub_F338(&v105, v104);
    v49 = v90;
    if (v90)
    {
      v91 = v12;
      v50 = v88;
      v98(v88, v100, v39);
      sub_EEAC(v104, v102);
      v51 = v49;
      v52 = sub_2CDFE0();
      v53 = sub_2CE690();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v101[0] = v55;
        *v54 = 136315138;
        sub_35E0(v102, v103);
        if (!sub_2CCFF0() || (v56 = sub_2CCF90(), v58 = v57, , !v58))
        {

          v58 = 0xE500000000000000;
          v56 = 0x3E6C696E3CLL;
        }

        sub_306C(v102);
        v59 = sub_3F08(v56, v58, v101);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_0, v52, v53, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse App Resolution state found app: %s", v54, 0xCu);
        sub_306C(v55);

        v38(v88, v39);
      }

      else
      {

        v38(v50, v39);
        sub_306C(v102);
      }

      v64 = swift_allocObject();
      sub_2CA670();
      sub_220B14();
      swift_allocError();
      *v65 = 1;
      v66 = sub_2CA650();

      *(v64 + 16) = v66;
      v67 = dispatch_semaphore_create(0);
      v68 = v86;
      v69 = swift_allocObject();
      v69[2] = v67;
      v69[3] = v64;
      v69[4] = v68;
      v69[5] = v51;
      v70 = v51;
      v71 = v67;

      v97 = v70;
      sub_2CCF40();

      sub_2CEA30();
      v72 = v89;
      v98(v89, v100, v39);

      v73 = sub_2CDFE0();
      v74 = sub_2CE690();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v100 = v38;
        v76 = v75;
        v77 = swift_slowAlloc();
        v85 = v39;
        v78 = v77;
        v102[0] = v77;
        *v76 = 136315138;
        swift_beginAccess();

        v79 = sub_2CA640();
        v81 = v80;

        v82 = sub_3F08(v79, v81, v102);

        *(v76 + 4) = v82;
        _os_log_impl(&dword_0, v73, v74, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse Done, returning disambiguation response: %s", v76, 0xCu);
        sub_306C(v78);

        v100(v89, v85);
      }

      else
      {

        v38(v72, v39);
      }

      sub_306C(v104);
      sub_30B8(&v107, &qword_355698, qword_2D7A40);
      swift_beginAccess();
      v48 = *(v64 + 16);
    }

    else
    {
      v98(v87, v100, v39);
      v60 = sub_2CDFE0();
      v61 = sub_2CE680();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v60, v61, "Unable to get to the original intent, returning error", v62, 2u);
      }

      v38(v87, v39);
      sub_2CA670();
      sub_220B14();
      swift_allocError();
      *v63 = 1;
      v48 = sub_2CA650();
      sub_306C(v104);
      sub_30B8(&v107, &qword_355698, qword_2D7A40);
    }
  }

  return v48;
}

Swift::Int sub_21F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v101 = a5;
  v107 = a3;
  v108 = a2;
  v6 = sub_2CD050();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v99 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v104 = (&v96 - v11);
  __chkstk_darwin(v10);
  v13 = &v96 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v109 = v14;
  v110 = v15;
  v16 = __chkstk_darwin(v14);
  v102 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = (&v96 - v19);
  v20 = __chkstk_darwin(v18);
  v100 = &v96 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v96 - v23;
  __chkstk_darwin(v22);
  v26 = &v96 - v25;
  v27 = sub_20410(&qword_354750, &qword_2D69E0);
  __chkstk_darwin(v27);
  v29 = &v96 - v28;
  sub_F3F4(a1, &v96 - v28, &qword_354750, &qword_2D69E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = v109;
    v31 = sub_3ED0(v109, static Logger.default);
    swift_beginAccess();
    v32 = v110;
    (*(v110 + 16))(v26, v31, v30);
    swift_errorRetain();
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v111[0] = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = sub_2CEEF0();
      v39 = sub_3F08(v37, v38, v111);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v33, v34, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse App resolution resulted in a failure. Error: %s", v35, 0xCu);
      sub_306C(v36);
    }

    (*(v32 + 8))(v26, v30);
    sub_2CA670();
    sub_220B14();
    swift_allocError();
    *v40 = 1;
    v41 = sub_2CA650();

    goto LABEL_19;
  }

  v97 = v7;
  v42 = *(v7 + 32);
  v103 = v13;
  v106 = v6;
  v42(v13, v29, v6);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v43 = v109;
  v44 = sub_3ED0(v109, static Logger.default);
  swift_beginAccess();
  v45 = v110;
  v46 = *(v110 + 16);
  v46(v24, v44, v43);
  v47 = sub_2CDFE0();
  v48 = sub_2CE690();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v104;
  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v47, v48, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse success", v51, 2u);
  }

  v52 = *(v45 + 8);
  v110 = v45 + 8;
  v98 = v52;
  v52(v24, v43);
  v53 = v97;
  v54 = *(v97 + 16);
  v55 = v103;
  v56 = v106;
  v54(v50, v103, v106);
  if ((*(v53 + 88))(v50, v56) != enum case for AppResolutionResult.selected(_:))
  {
    v105 = *(v53 + 8);
    v105(v50, v56);
    v69 = v100;
    v46(v100, v44, v43);
    v70 = v69;
    v71 = v99;
    v54(v99, v55, v56);
    v72 = sub_2CDFE0();
    v73 = sub_2CE690();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v111[0] = v75;
      *v74 = 136315138;
      sub_220B7C(&qword_3556A0, &type metadata accessor for AppResolutionResult, &protocol conformance descriptor for AppResolutionResult);
      v76 = sub_2CEE70();
      v78 = v77;
      v79 = v71;
      v80 = v105;
      v105(v79, v106);
      v81 = sub_3F08(v76, v78, v111);

      *(v74 + 4) = v81;
      _os_log_impl(&dword_0, v72, v73, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse unexpected response: %s", v74, 0xCu);
      sub_306C(v75);
      v56 = v106;

      v55 = v103;
    }

    else
    {

      v82 = v71;
      v80 = v105;
      v105(v82, v56);
    }

    v98(v70, v43);
    sub_2CA670();
    sub_220B14();
    swift_allocError();
    *v83 = 1;
    v41 = sub_2CA650();
    v80(v55, v56);
LABEL_19:

    goto LABEL_30;
  }

  (*(v53 + 96))(v50, v56);
  v57 = *v50;
  v46(v105, v44, v43);

  v58 = sub_2CDFE0();
  v59 = sub_2CE690();
  v104 = v57;

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    v62 = sub_2CCF90();
    if (v63)
    {
      v64 = v62;
      v65 = v63;
      sub_10C40();
      swift_allocError();
      *v66 = v64;
      v66[1] = v65;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      v68 = v67;
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    *(v60 + 4) = v67;
    *v61 = v68;
    _os_log_impl(&dword_0, v58, v59, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse success with app: %@", v60, 0xCu);
    sub_30B8(v61, &unk_34FC00, &unk_2D0150);

    v56 = v106;
    v53 = v97;
    v43 = v109;
  }

  v98(v105, v43);
  objc_opt_self();
  v84 = v101;
  v85 = swift_dynamicCastObjCClass();
  if (v85)
  {
    v86 = v85;
    v46(v102, v44, v43);
    v87 = v84;
    v88 = sub_2CDFE0();
    v89 = sub_2CE690();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_0, v88, v89, "AppResolutionOnDeviceStrategy#parseDisambiguationResponse applying app to intent after disambiguation", v90, 2u);
    }

    v98(v102, v43);
    v112.value._countAndFlagsBits = sub_2CCF90();
    v113._object = 0x80000000002DFB90;
    v113._countAndFlagsBits = 0xD000000000000039;
    sub_2CEAA0(v112, v113);

    v91 = [v86 backingStore];
    objc_opt_self();
    v92 = swift_dynamicCastObjCClass();
    if (v92)
    {
      v93 = [v92 privatePlayMediaIntentData];

      [v93 setAppInferred:0];
    }

    else
    {
      v93 = v87;
      v87 = v91;
    }
  }

  sub_2CA670();
  v41 = sub_2CA660();

  (*(v53 + 8))(v103, v56);
LABEL_30:
  v94 = v107;
  swift_beginAccess();
  *(v94 + 16) = v41;

  return sub_2CEA40();
}

void sub_22019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[30];
  v8 = type metadata accessor for AppResolutionOnDeviceStrategy(0, *(*v3 + 80), *(*v3 + 88), *(*v3 + 96));
  v9 = v7;
  WitnessTable = swift_getWitnessTable();
  sub_17D10C(a1, a2, a3, v8, WitnessTable);
}

uint64_t sub_220274(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v6 = *v3;
  v7 = sub_2CA030();
  __chkstk_darwin(v7 - 8);
  v8 = sub_20410(&qword_3530D0, &qword_2D5728);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;

  sub_2CA020();
  sub_2CCFB0();
  sub_2CA450();
  v18 = v3;
  v12 = v3[30];
  v13 = type metadata accessor for AppResolutionOnDeviceStrategy(0, v6[10], v6[11], v6[12]);
  v14 = v12;
  WitnessTable = swift_getWitnessTable();
  sub_171ED0(v12, v11, a2, a3, v13, WitnessTable);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_220468()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  sub_306C((v0 + 120));
  sub_306C((v0 + 160));
  sub_306C((v0 + 200));

  return v0;
}

uint64_t sub_2204C8()
{
  sub_220468();

  return swift_deallocClassInstance();
}

uint64_t sub_220544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_E664;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_220608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24C84;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t sub_2206CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24C84;

  return AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)(a1, a2, a3, a4);
}

uint64_t sub_220808()
{
  v1 = *(*v0 + 104);

  return v1;
}

uint64_t sub_22092C()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2CDFE0();
  v6 = sub_2CE680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "AppResolutionOnDeviceStrategy#parseConfirmationResponse needs implementing", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_2CA480();
  sub_220B14();
  swift_allocError();
  *v8 = 0;
  v9 = sub_2CA470();

  return v9;
}

unint64_t sub_220B14()
{
  result = qword_355690;
  if (!qword_355690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355690);
  }

  return result;
}

uint64_t sub_220B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220BC4@<X0>(unint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v120 = a4;
  v128 = a3;
  v129 = a5;
  v126 = a2;
  v131 = sub_2CD270();
  v6 = *(v131 - 8);
  v7 = __chkstk_darwin(v131);
  v115 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v114 - v10;
  __chkstk_darwin(v9);
  v13 = &v114 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v124 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v118 = &v114 - v19;
  v20 = __chkstk_darwin(v18);
  v116 = &v114 - v21;
  v22 = __chkstk_darwin(v20);
  v123 = &v114 - v23;
  v24 = __chkstk_darwin(v22);
  v122 = &v114 - v25;
  __chkstk_darwin(v24);
  v27 = &v114 - v26;
  if (qword_34BF58 != -1)
  {
LABEL_49:
    swift_once();
  }

  v28 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v29 = *(v15 + 16);
  v133 = v15 + 16;
  v134 = v28;
  v132 = v29;
  v29(v27, v28, v14);
  v30 = sub_2CDFE0();
  v31 = sub_2CE690();
  v32 = os_log_type_enabled(v30, v31);
  v137 = v15;
  v125 = v13;
  v121 = v11;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v139 = v15;
    *v33 = 136446210;
    v34 = sub_2CCCA0();
    v36 = sub_3F08(v34, v35, &v139);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_0, v30, v31, "PlayMediaAlternativesSnippetProvider#snippetModel... %{public}s", v33, 0xCu);
    sub_306C(v15);

    v135 = *(v137 + 8);
    v135(v27, v14);
  }

  else
  {

    v37 = *(v15 + 8);
    v15 += 8;
    v135 = v37;
    v37(v27, v14);
  }

  v119 = sub_2234D4();
  v127 = v38;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    v39 = sub_2CEDA0();
  }

  else
  {
    v39 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v130 = v14;
  v136 = v6;
  if (v39)
  {
    v11 = 0;
    v6 = a1 & 0xC000000000000001;
    v40 = _swiftEmptyArrayStorage;
    v14 = &selRef_hasTwoOrMoreRooms;
    do
    {
      v27 = v11;
      while (1)
      {
        if (v6)
        {
          v41 = sub_2CECD0();
        }

        else
        {
          if (v27 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_48;
          }

          v41 = *(a1 + 8 * v27 + 32);
        }

        v42 = v41;
        v11 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v43 = [v41 artist];
        if (v43)
        {
          break;
        }

        ++v27;
        if (v11 == v39)
        {
          goto LABEL_25;
        }
      }

      v44 = v43;
      v45 = sub_2CE270();
      v117 = v46;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_B90C4(0, *(v40 + 2) + 1, 1, v40);
      }

      v15 = *(v40 + 2);
      v47 = *(v40 + 3);
      if (v15 >= v47 >> 1)
      {
        v40 = sub_B90C4((v47 > 1), v15 + 1, 1, v40);
      }

      *(v40 + 2) = v15 + 1;
      v48 = &v40[16 * v15];
      v49 = v117;
      *(v48 + 4) = v45;
      *(v48 + 5) = v49;
    }

    while (v11 != v39);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

LABEL_25:
  v50 = v128;
  sub_22365C(v40, v128);
  v52 = v51;

  if (!v52)
  {

    v70 = v124;
    v71 = v130;
    v132(v124, v134, v130);
    v72 = sub_2CDFE0();
    v73 = sub_2CE690();
    v74 = os_log_type_enabled(v72, v73);
    v54 = v131;
    v56 = v136;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v139 = v76;
      *v75 = 136446210;
      v77 = sub_2CCCA0();
      v79 = sub_3F08(v77, v78, &v139);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_0, v72, v73, "PlayMediaAlternativesSnippetProvider#snippetModel no alternative subtitle found. Return nil for alternative snippet. %{public}s", v75, 0xCu);
      sub_306C(v76);
    }

    v80 = v70;
    v81 = v71;
    goto LABEL_40;
  }

  v53 = sub_221838(a1, v126, v50);
  v55 = v130;
  v54 = v131;
  v56 = v136;
  if (!*(v53 + 2))
  {

    v82 = v118;
    v132(v118, v134, v55);
    v83 = sub_2CDFE0();
    v84 = sub_2CE690();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v139 = v86;
      *v85 = 136446210;
      v87 = sub_2CCCA0();
      v89 = sub_3F08(v87, v88, &v139);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_0, v83, v84, "PlayMediaAlternativesSnippetProvider#snippetModel no alternative items found. Return nil for alternative snippet. %{public}s", v85, 0xCu);
      sub_306C(v86);
    }

    v80 = v82;
    goto LABEL_39;
  }

  if (!sub_2CB460())
  {

    v90 = v116;
    v132(v116, v134, v55);
    v91 = sub_2CDFE0();
    v92 = sub_2CE680();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_0, v91, v92, "PlayMediaAlternativesSnippetProvider#snippetModel could not retrive a SiriEnvironment for currentRequest. returning nil to medigate a possible bug showing a snippet with the wrong background color.", v93, 2u);
    }

    v80 = v90;
LABEL_39:
    v81 = v55;
LABEL_40:
    v135(v80, v81);
    v94 = 1;
    v95 = v129;
    return (*(v56 + 56))(v95, v94, 1, v54);
  }

  sub_2CB130();

  v57 = sub_2CD3F0();

  v58 = v120;
  LODWORD(v138) = v57 & v120;
  v59 = v122;
  v132(v122, v134, v55);
  v60 = sub_2CDFE0();
  v61 = sub_2CE690();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v58;
    v65 = v63;
    v139 = v63;
    *v62 = 67109890;
    *(v62 + 4) = v138 & 1;
    *(v62 + 8) = 1024;
    *(v62 + 10) = v57 & 1;
    *(v62 + 14) = 1024;
    *(v62 + 16) = v64 & 1;
    *(v62 + 20) = 2082;
    v66 = sub_2CCCA0();
    v68 = sub_3F08(v66, v67, &v139);

    *(v62 + 22) = v68;
    v54 = v131;
    _os_log_impl(&dword_0, v60, v61, "PlayMediaAlternativesSnippetProvider#snippetModel shouldHaveABlackBackground is set to %{BOOL}d because isSystemApertureEnabled: %{BOOL}d and  hasSessionID %{BOOL}d. %{public}s", v62, 0x1Eu);
    sub_306C(v65);

    v69 = v122;
  }

  else
  {

    v69 = v59;
  }

  v135(v69, v55);
  v96 = v123;
  v97 = v125;
  sub_2CD260();
  v132(v96, v134, v55);
  v56 = v136;
  v98 = *(v136 + 16);
  v99 = v121;
  v98(v121, v97, v54);
  v100 = sub_2CDFE0();
  v101 = sub_2CE690();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v102 = 136315394;
    v98(v115, v99, v54);
    v103 = sub_2CE2A0();
    v105 = v104;
    (*(v56 + 8))(v99, v54);
    v106 = sub_3F08(v103, v105, &v139);

    *(v102 + 4) = v106;
    *(v102 + 12) = 2082;
    v107 = sub_2CCCA0();
    v109 = sub_3F08(v107, v108, &v139);

    *(v102 + 14) = v109;
    _os_log_impl(&dword_0, v100, v101, "PlayMediaAlternativesSnippetProvider#snippetModel returning alternative snippet: %s. %{public}s", v102, 0x16u);
    swift_arrayDestroy();

    v110 = v123;
    v111 = v130;
  }

  else
  {

    (*(v56 + 8))(v99, v54);
    v110 = v96;
    v111 = v55;
  }

  v135(v110, v111);
  v112 = v129;
  (*(v56 + 32))(v129, v125, v54);
  v95 = v112;
  v94 = 0;
  return (*(v56 + 56))(v95, v94, 1, v54);
}

char *sub_221838(unint64_t a1, void (*a2)(char *, uint64_t), void *a3)
{
  v64 = a3;
  v63 = a2;
  v59 = a1;
  v3 = sub_20410(&qword_3557C8, &unk_2D7AE8);
  __chkstk_darwin(v3 - 8);
  v5 = v49 - v4;
  v6 = sub_2CD200();
  v58 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v62 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = v49 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v52 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v49 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v17 = *(v11 + 16);
  v50 = v16;
  v49[1] = v11 + 16;
  v49[0] = v17;
  v17(v15, v16, v10);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "PlayMediaAlternativesSnippetProvider#alternativeItems...", v20, 2u);
  }

  v23 = *(v11 + 8);
  v22 = v11 + 8;
  v21 = v23;
  v23(v15, v10);
  v24 = v59;
  if (v59 >> 62)
  {
    result = sub_2CEDA0();
  }

  else
  {
    result = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
  }

  v53 = v22;
  v54 = v10;
  v51 = v21;
  if (result)
  {
    v57 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v26 = 0;
    v60 = v24 & 0xC000000000000001;
    v27 = v57;
    v28 = (v58 + 48);
    v29 = (v58 + 32);
    v55 = v58 + 8;
    v56 = (v58 + 16);
    v30 = _swiftEmptyArrayStorage;
    do
    {
      if (v60)
      {
        v31 = sub_2CECD0();
      }

      else
      {
        v31 = *(v24 + 8 * v26 + 32);
      }

      v32 = v31;
      sub_221EA0(v31, v63, v64, v5);
      if ((*v28)(v5, 1, v6) == 1)
      {

        sub_30B8(v5, &qword_3557C8, &unk_2D7AE8);
      }

      else
      {
        v33 = *v29;
        v34 = v61;
        (*v29)(v61, v5, v6);
        (*v56)(v62, v34, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_B949C(0, *(v30 + 2) + 1, 1, v30);
        }

        v36 = *(v30 + 2);
        v35 = *(v30 + 3);
        if (v36 >= v35 >> 1)
        {
          v30 = sub_B949C((v35 > 1), v36 + 1, 1, v30);
        }

        v37 = v58;
        (*(v58 + 8))(v61, v6);
        *(v30 + 2) = v36 + 1;
        v33(&v30[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36], v62, v6);
        v24 = v59;
        v27 = v57;
      }

      ++v26;
    }

    while (v27 != v26);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v38 = *(v30 + 2);
  v39 = v54;
  v40 = v52;
  if (v38)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v30;
    if (!isUniquelyReferenced_nonNull_native || (v38 - 1) > *(v30 + 3) >> 1)
    {
      v30 = sub_B949C(isUniquelyReferenced_nonNull_native, v38, 1, v30);
      v66 = v30;
    }

    sub_2258FC(0, 1, 0);
  }

  (v49[0])(v40, v50, v39);

  v42 = sub_2CDFE0();
  v43 = sub_2CE690();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65 = v45;
    *v44 = 134218242;
    *(v44 + 4) = *(v30 + 2);
    *(v44 + 12) = 2082;
    v46 = sub_2CCCA0();
    v48 = sub_3F08(v46, v47, &v65);

    *(v44 + 14) = v48;
    _os_log_impl(&dword_0, v42, v43, "PlayMediaAlternativesSnippetProvider#alternativeItems returning %ld alternative options %{public}s", v44, 0x16u);
    sub_306C(v45);
  }

  v51(v40, v39);

  return v30;
}

uint64_t sub_221EA0@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v155 = a3;
  v158 = a2;
  v6 = sub_2C8E80();
  v152 = *(v6 - 8);
  v153 = v6;
  v7 = __chkstk_darwin(v6);
  v151 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v138 - v9;
  v148 = sub_2CB900();
  v142 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2CB8B0();
  v149 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&unk_3519B0, &qword_2D1230);
  v13 = __chkstk_darwin(v12 - 8);
  v154 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v161 = &v138 - v15;
  v16 = sub_2C8D90();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v160 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v157 = &v138 - v25;
  v26 = __chkstk_darwin(v24);
  v144 = &v138 - v27;
  v28 = __chkstk_darwin(v26);
  v150 = &v138 - v29;
  v30 = __chkstk_darwin(v28);
  v141 = &v138 - v31;
  __chkstk_darwin(v30);
  v33 = &v138 - v32;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v35 = *(v21 + 16);
  v163 = v21 + 16;
  v164 = v34;
  v162 = v35;
  v35(v33, v34, v20);
  v36 = a1;
  v37 = sub_2CDFE0();
  v38 = sub_2CE690();

  v39 = os_log_type_enabled(v37, v38);
  v165 = a4;
  v166 = v21;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v139 = v16;
    v156 = v17;
    v42 = v41;
    v43 = swift_slowAlloc();
    v159 = v19;
    v44 = v43;
    v167 = v43;
    *v40 = 138412546;
    *(v40 + 4) = v36;
    *v42 = v36;
    *(v40 + 12) = 2082;
    v45 = v36;
    v46 = sub_2CCCA0();
    v48 = sub_3F08(v46, v47, &v167);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_0, v37, v38, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel from mediaItem: %@ %{public}s", v40, 0x16u);
    sub_30B8(v42, &unk_34FC00, &unk_2D0150);
    v17 = v156;
    v16 = v139;

    sub_306C(v44);
    v19 = v159;

    v49 = v166;
  }

  else
  {

    v49 = v21;
  }

  v50 = *(v49 + 8);
  v50(v33, v20);
  v51 = [v36 title];
  if (!v51)
  {
    v66 = v160;
    v162(v160, v164, v20);
    v67 = sub_2CDFE0();
    v68 = sub_2CE680();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v167 = v70;
      *v69 = 136446210;
      v71 = sub_2CCCA0();
      v73 = sub_3F08(v71, v72, &v167);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_0, v67, v68, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel could not find a title for mediaItem return nil.%{public}s", v69, 0xCu);
      sub_306C(v70);
    }

    v64 = v66;
    v65 = v20;
    goto LABEL_14;
  }

  v52 = v20;
  v53 = v51;
  v54 = sub_2CE270();

  v55 = v161;
  sub_22305C(v36, v161);
  if ((*(v17 + 48))(v55, 1, v16) == 1)
  {

    sub_30B8(v55, &unk_3519B0, &qword_2D1230);
    v56 = v157;
    v162(v157, v164, v52);
    v57 = sub_2CDFE0();
    v58 = sub_2CE680();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v167 = v60;
      *v59 = 136446210;
      v61 = sub_2CCCA0();
      v63 = sub_3F08(v61, v62, &v167);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v57, v58, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel could not find an image for mediaItem return nil.%{public}s", v59, 0xCu);
      sub_306C(v60);
    }

    v64 = v56;
    v65 = v52;
LABEL_14:
    v50(v64, v65);
LABEL_15:
    v74 = 1;
    v75 = v165;
    goto LABEL_16;
  }

  (*(v17 + 32))(v19, v55, v16);
  v78 = v158;
  if (sub_224420())
  {
    v79 = sub_2246F8(v78, v36);
  }

  else
  {
    v79 = sub_225218(v155, v36);
    if (!v79)
    {

      v107 = v144;
      v162(v144, v164, v52);
      v108 = sub_2CDFE0();
      v109 = sub_2CE680();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v167 = v111;
        *v110 = 136446210;
        v112 = sub_2CCCA0();
        v164 = v52;
        v159 = v19;
        v114 = v17;
        v115 = sub_3F08(v112, v113, &v167);

        *(v110 + 4) = v115;
        _os_log_impl(&dword_0, v108, v109, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel could not find a command for mediaItem return nil.%{public}s", v110, 0xCu);
        sub_306C(v111);

        v50(v107, v164);
        (*(v114 + 8))(v159, v16);
      }

      else
      {

        v50(v107, v52);
        (*(v17 + 8))(v19, v16);
      }

      goto LABEL_15;
    }
  }

  v160 = v54;
  v161 = v79;
  if (sub_224420())
  {
    v159 = v19;
    v156 = v17;
    v80 = [v36 identifier];
    if (v80 && (v81 = v80, sub_2CE270(), v81, sub_2CB910(), swift_allocObject(), sub_2CB920()))
    {
      v82 = *(v143 + 24);
      v83 = v145;
      sub_2CB8C0();
      v84 = v147;
      sub_2CB8A0();
      v85 = *(v149 + 8);
      v149 += 8;
      v158 = v85;
      v85(v83, v146);
      v86 = sub_195984(v84, v82);
      (*(v142 + 8))(v84, v148);
      if (v86)
      {
        v87 = v140;
        sub_2C8E70();
        v166 = sub_2C8E50();
        (*(v152 + 8))(v87, v153);
        v88 = [v36 artist];
        if (v88)
        {
          v89 = v88;
          sub_2CE270();
        }

        v135 = v156;
        v136 = v154;
        v137 = v159;
        (*(v156 + 16))(v154, v159, v16);
        (*(v135 + 56))(v136, 0, 1, v16);
        v75 = v165;
        sub_2CD1F0();

        (*(v135 + 8))(v137, v16);
        v74 = 0;
        goto LABEL_16;
      }

      v119 = v141;
      v162(v141, v164, v20);

      v120 = sub_2CDFE0();
      v121 = sub_2CE680();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v164 = v20;
        v167 = v123;
        *v122 = 136315394;
        v124 = v145;
        sub_2CB8C0();
        sub_2CB8A0();
        v158(v124, v146);
        v125 = sub_2CE2A0();
        v127 = sub_3F08(v125, v126, &v167);

        *(v122 + 4) = v127;
        *(v122 + 12) = 2082;
        v128 = sub_2CCCA0();
        v130 = sub_3F08(v128, v129, &v167);

        *(v122 + 14) = v130;
        _os_log_impl(&dword_0, v120, v121, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel the mediaItem identifier scheme %s is not allowed. Return nil.%{public}s", v122, 0x16u);
        swift_arrayDestroy();

        v118 = v141;
        v131 = v164;
      }

      else
      {

        v118 = v119;
        v131 = v20;
      }
    }

    else
    {

      v94 = v150;
      v162(v150, v164, v20);
      v95 = v36;
      v96 = sub_2CDFE0();
      v97 = sub_2CE680();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v167 = v100;
        *v98 = 138412546;
        v101 = [v95 identifier];
        if (v101)
        {
          v102 = v101;
          v164 = sub_2CE270();
          v104 = v103;

          sub_10C40();
          swift_allocError();
          *v105 = v164;
          v105[1] = v104;
          v20 = v52;
          v101 = _swift_stdlib_bridgeErrorToNSError();
          v106 = v101;
        }

        else
        {
          v106 = 0;
        }

        *(v98 + 4) = v101;
        *v99 = v106;
        *(v98 + 12) = 2082;
        v132 = sub_2CCCA0();
        v134 = sub_3F08(v132, v133, &v167);

        *(v98 + 14) = v134;
        _os_log_impl(&dword_0, v96, v97, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel failed to create PlaybackItem with identifier: %@. Return nil.%{public}s", v98, 0x16u);
        sub_30B8(v99, &unk_34FC00, &unk_2D0150);

        sub_306C(v100);

        v118 = v150;
      }

      else
      {

        v118 = v94;
      }

      v131 = v20;
    }

    v50(v118, v131);
    (*(v156 + 8))(v159, v16);
    goto LABEL_15;
  }

  v90 = v151;
  sub_2C8E70();
  sub_2C8E50();
  (*(v152 + 8))(v90, v153);
  v91 = [v36 artist];
  if (v91)
  {
    v92 = v19;
    v93 = v91;
    sub_2CE270();

    v19 = v92;
  }

  v116 = v154;
  (*(v17 + 16))(v154, v19, v16);
  (*(v17 + 56))(v116, 0, 1, v16);
  v117 = v19;
  v75 = v165;
  sub_2CD1F0();
  (*(v17 + 8))(v117, v16);
  v74 = 0;
LABEL_16:
  v76 = sub_2CD200();
  return (*(*(v76 - 8) + 56))(v75, v74, 1, v76);
}

uint64_t sub_22305C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = [a1 artwork];
  if (!v11)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v18, v4);
    v19 = sub_2CDFE0();
    v20 = sub_2CE680();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136446210;
      v23 = sub_2CCCA0();
      v25 = sub_3F08(v23, v24, &v37);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "PlayMediaAlternativesSnippetProvider#imageUrl could not find a mediaItem artwork. %{public}s", v21, 0xCu);
      sub_306C(v22);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [v11 _uri];
  if (!v13)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v10, v26, v4);
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v29 = 136446210;
      v30 = sub_2CCCA0();
      v32 = a2;
      v33 = sub_3F08(v30, v31, &v37);

      *(v29 + 4) = v33;
      a2 = v32;
      _os_log_impl(&dword_0, v27, v28, "PlayMediaAlternativesSnippetProvider#imageUrl could not find a image URI. %{public}s", v29, 0xCu);
      sub_306C(v36);
    }

    (*(v5 + 8))(v10, v4);
LABEL_16:
    v34 = sub_2C8D90();
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v14 = v13;
  sub_2C8D60();

  v15 = sub_2C8D90();
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, 0, 1, v15);
}

uint64_t sub_2234D4()
{
  v1 = sub_2C8EC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0((v0 + 32), *(v0 + 56));
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v7 = sub_2CC620();

  (*(v2 + 8))(v4, v1);
  return v7;
}

BOOL sub_22365C(char *a1, uint64_t a2)
{
  v117 = a2;
  v3 = sub_2C8EC0();
  v111 = *(v3 - 8);
  v112 = v3;
  __chkstk_darwin(v3);
  v110 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v107 = &v106 - v11;
  v12 = __chkstk_darwin(v10);
  v108 = &v106 - v13;
  v14 = __chkstk_darwin(v12);
  v113 = &v106 - v15;
  v16 = __chkstk_darwin(v14);
  v115 = &v106 - v17;
  __chkstk_darwin(v16);
  v19 = &v106 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v21 = v6 + 16;
  v118 = *(v6 + 16);
  v118(v19, v20, v5);

  v22 = sub_2CDFE0();
  v23 = sub_2CE690();

  v24 = os_log_type_enabled(v22, v23);
  v114 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v106 = v6;
    v116 = v5;
    v119 = v26;
    *v25 = 136315394;
    v27 = sub_2CE420();
    v29 = v20;
    v30 = sub_3F08(v27, v28, &v119);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = sub_2CCCA0();
    v33 = sub_3F08(v31, v32, &v119);

    *(v25 + 14) = v33;
    v20 = v29;
    v21 = v6 + 16;
    _os_log_impl(&dword_0, v22, v23, "PlayMediaAlternativesSnippetProvider#subtitle making artists label with %s. %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v5 = v116;
    v6 = v106;
  }

  v34 = *(v6 + 8);
  v34(v19, v5);
  if (*(a1 + 2))
  {
    result = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v117, &off_330B08);
    if (result)
    {
      v36 = v113;
      v118(v113, v20, v5);
      v37 = sub_2CDFE0();
      v38 = sub_2CE670();
      if (!os_log_type_enabled(v37, v38))
      {
LABEL_10:

        v34(v36, v5);
        return 0;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v119 = v40;
      *v39 = 136446210;
      v41 = sub_2CCCA0();
      v43 = sub_3F08(v41, v42, &v119);

      *(v39 + 4) = v43;
      v44 = "PlayMediaAlternativesSnippetProvider#subtitle returning empty string because we have a classical music request. %{public}s";
LABEL_9:
      _os_log_impl(&dword_0, v37, v38, v44, v39, 0xCu);
      sub_306C(v40);

      goto LABEL_10;
    }

    v57 = *(a1 + 2);
    if (!v57)
    {
      __break(1u);
      return result;
    }

    v117 = v21;
    v59 = *(a1 + 4);
    v58 = *(a1 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = a1;
    if (!isUniquelyReferenced_nonNull_native || (v57 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_B90C4(isUniquelyReferenced_nonNull_native, v57, 1, a1);
      v121 = a1;
    }

    sub_224360(0, 1, 0);
    v61 = sub_2BDFB4(a1);

    if (*(v61 + 16) != 1)
    {
      goto LABEL_29;
    }

    if (sub_17F970(v59, v58, v61))
    {

      v36 = v108;
      v118(v108, v20, v5);
      v37 = sub_2CDFE0();
      v38 = sub_2CE670();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_10;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v119 = v40;
      *v39 = 136446210;
      v62 = sub_2CCCA0();
      v64 = sub_3F08(v62, v63, &v119);

      *(v39 + 4) = v64;
      v44 = "PlayMediaAlternativesSnippetProvider#subtitle returning empty string because the only alternative artist is the same as the current artist playing. %{public}s";
      goto LABEL_9;
    }

    if (*(v61 + 16) == 1)
    {
      v115 = v20;
      v65 = sub_17F970(v59, v58, v61);

      if ((v65 & 1) == 0)
      {
        v66 = sub_7F104(v61);
        if (v67)
        {
          v68 = v66;
          v69 = v67;

          v70 = v107;
          v118(v107, v115, v5);

          v71 = sub_2CDFE0();
          v72 = sub_2CE670();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v116 = v5;
            v119 = v74;
            *v73 = 136315394;
            *(v73 + 4) = sub_3F08(v68, v69, &v119);
            *(v73 + 12) = 2082;
            v75 = sub_2CCCA0();
            v77 = sub_3F08(v75, v76, &v119);

            *(v73 + 14) = v77;
            _os_log_impl(&dword_0, v71, v72, "PlayMediaAlternativesSnippetProvider#subtitle returning %s since we only have one artist. %{public}s", v73, 0x16u);
            swift_arrayDestroy();

            v34(v107, v116);
          }

          else
          {

            v34(v70, v5);
          }

          return v68;
        }
      }
    }

    else
    {
LABEL_29:
      v115 = v20;
    }

    v113 = v34;
    v116 = v5;
    v78 = sub_7F104(v61);
    if (v79)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0;
    }

    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    v82 = *(v61 + 16);

    v108 = (v82 - 1);
    sub_35E0((v109 + 32), *(v109 + 56));
    type metadata accessor for PlayMediaAlternativeSnippetProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v84 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v85 = v110;
    sub_2CB570();
    sub_2CC620();

    (*(v111 + 8))(v85, v112);
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_2D0E40;
    if (sub_2CE320() >= 19)
    {
      sub_C394C(17, v80, v81);

      v87 = sub_2CE2E0();
      v89 = v88;

      v119 = v87;
      v120 = v89;

      v122._countAndFlagsBits = 3026478;
      v122._object = 0xE300000000000000;
      sub_2CE350(v122);

      v80 = v119;
      v81 = v120;
    }

    v91 = v113;
    v90 = v114;
    *(v86 + 56) = &type metadata for String;
    v92 = sub_1087C();
    *(v86 + 32) = v80;
    *(v86 + 40) = v81;
    *(v86 + 96) = &type metadata for Int;
    *(v86 + 104) = &protocol witness table for Int;
    v93 = v108;
    *(v86 + 64) = v92;
    *(v86 + 72) = v93;
    v94 = sub_2CE280();
    v96 = v95;

    v97 = v116;
    v118(v90, v115, v116);

    v98 = sub_2CDFE0();
    v99 = sub_2CE670();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v100 = 136315394;
      *(v100 + 4) = sub_3F08(v94, v96, &v119);
      *(v100 + 12) = 2082;
      v101 = sub_2CCCA0();
      v103 = sub_3F08(v101, v102, &v119);

      *(v100 + 14) = v103;
      _os_log_impl(&dword_0, v98, v99, "PlayMediaAlternativesSnippetProvider#subtitle returning %s. %{public}s", v100, 0x16u);
      swift_arrayDestroy();

      v104 = v114;
      v105 = v116;
    }

    else
    {

      v104 = v90;
      v105 = v97;
    }

    v91(v104, v105);
    return v94;
  }

  else
  {
    v45 = v115;
    v118(v115, v20, v5);
    v46 = sub_2CDFE0();
    v47 = sub_2CE670();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v119 = v50;
      *v49 = 136446210;
      v51 = sub_2CCCA0();
      v53 = v5;
      v54 = sub_3F08(v51, v52, &v119);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_0, v46, v47, "PlayMediaAlternativesSnippetProvider#subtitle returning empty string because alternativeArtistSet is empty. %{public}s", v49, 0xCu);
      sub_306C(v50);

      v55 = v48;
      v56 = v53;
    }

    else
    {

      v55 = v45;
      v56 = v5;
    }

    v34(v55, v56);
    return 0;
  }
}

uint64_t sub_2242FC()
{

  sub_306C((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_224360(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_224420()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CCF90();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (v4 == sub_2CBE10() && v7 == v8)
    {
      goto LABEL_13;
    }

    v18 = sub_2CEEA0();

    if (v18)
    {
LABEL_14:

      return 1;
    }

    if (v6 == sub_2CBE30() && v7 == v19)
    {
LABEL_13:

      goto LABEL_14;
    }

    v20 = sub_2CEEA0();

    return v20 & 1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v9 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v9, v0);
    v10 = sub_2CDFE0();
    v11 = sub_2CE680();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      v14 = sub_2CCCA0();
      v16 = sub_3F08(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "PlayMediaAlternativesSnippetProvider#isInternalApp null app identifier. %{public}s", v12, 0xCu);
      sub_306C(v13);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

id sub_2246F8(uint64_t a1, void *a2)
{
  v72 = a2;
  v70 = a1;
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v2 - 8);
  v4 = &v68 - v3;
  v5 = sub_2C8E80();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v68 - v13;
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v76 = *(v8 + 16);
  v77 = (v8 + 16);
  v76(v16, v17, v7);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  v20 = os_log_type_enabled(v18, v19);
  v69 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v68 = v14;
    v71 = v8;
    v23 = v7;
    v24 = v22;
    v78 = v22;
    *v21 = 136446210;
    v25 = sub_2CCCA0();
    v27 = v17;
    v28 = v11;
    v29 = sub_3F08(v25, v26, &v78);

    *(v21 + 4) = v29;
    v11 = v28;
    v17 = v27;
    _os_log_impl(&dword_0, v18, v19, "PlayMediaAlternativesSnippetProvider#punchoutCommand... %{public}s", v21, 0xCu);
    sub_306C(v24);
    v7 = v23;
    v8 = v71;
    v14 = v68;
  }

  v30 = *(v8 + 8);
  v30(v16, v7);
  v31 = [v72 privateMediaItemValueData];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 punchoutURI];

    if (v33)
    {
      v71 = v8;
      sub_2CE270();

      v34 = [objc_allocWithZone(SAUIAppPunchOut) init];
      v35 = v73;
      sub_2C8E70();
      sub_2C8E50();
      (*(v74 + 8))(v35, v75);
      v36 = sub_2CE260();

      [v34 setAceId:v36];

      v37 = v69;
      sub_2C8D80();

      v38 = sub_2C8D90();
      v39 = *(v38 - 8);
      v41 = 0;
      if ((*(v39 + 48))(v37, 1, v38) != 1)
      {
        sub_2C8D50(v40);
        v41 = v42;
        (*(v39 + 8))(v37, v38);
      }

      [v34 setPunchOutUri:v41];

      v76(v14, v17, v7);
      v43 = sub_2CDFE0();
      v44 = sub_2CE690();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v78 = v46;
        *v45 = 136446210;
        v47 = sub_2CCCA0();
        v49 = v7;
        v50 = sub_3F08(v47, v48, &v78);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_0, v43, v44, "PlayMediaAlternativesSnippetProvider#punchoutCommand returning app punch out command. %{public}s", v45, 0xCu);
        sub_306C(v46);

        v51 = v14;
        v52 = v49;
LABEL_19:
        v30(v51, v52);
        return v34;
      }

      v51 = v14;
LABEL_18:
      v52 = v7;
      goto LABEL_19;
    }
  }

  v34 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v53 = v73;
  sub_2C8E70();
  sub_2C8E50();
  (*(v74 + 8))(v53, v75);
  v54 = sub_2CE260();

  [v34 setAceId:v54];

  sub_2CCF90();
  if (v55)
  {
    v56 = sub_2CE260();
  }

  else
  {
    v56 = 0;
  }

  [v34 setLaunchId:v56];

  v76(v11, v17, v7);
  v57 = sub_2CDFE0();
  v58 = sub_2CE690();
  if (!os_log_type_enabled(v57, v58))
  {

    v51 = v11;
    goto LABEL_18;
  }

  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v77 = v30;
  v78 = v60;
  v61 = v11;
  v62 = v60;
  *v59 = 136446210;
  v63 = sub_2CCCA0();
  v65 = v7;
  v66 = sub_3F08(v63, v64, &v78);

  *(v59 + 4) = v66;
  _os_log_impl(&dword_0, v57, v58, "PlayMediaAlternativesSnippetProvider#punchoutCommand returning launch app command. %{public}s", v59, 0xCu);
  sub_306C(v62);

  v77(v61, v65);
  return v34;
}

void *sub_224EEC(void *a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (swift_dynamicCast())
  {
    v8 = v23;
    sub_20410(&unk_351900, &unk_2D0960);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2D0770;
    *(v9 + 32) = a2;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v10 = a2;
    isa = sub_2CE400().super.isa;

    v12 = sub_2CE260();
    [v8 setValue:isa forKey:v12];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v13 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v7, v13, v4);
    v14 = sub_2CDFE0();
    v15 = sub_2CE680();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = sub_2CCCA0();
      v20 = sub_3F08(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v14, v15, "PlayMediaAlternativesSnippetProvider#playMediaIntent failed to clone PlayMediaIntent.%{public}s", v16, 0xCu);
      sub_306C(v17);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v8;
}

id sub_225218(void *a1, void *a2)
{
  v4 = sub_2C8E80();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v61 - v12;
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v17 = *(v7 + 16);
  v69 = v7 + 16;
  v70 = v16;
  v68 = v17;
  v17(v15, v16, v6);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v62 = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v63 = v10;
    v64 = v13;
    v23 = v6;
    v24 = v7;
    v25 = v22;
    v71 = v22;
    *v21 = 136446210;
    v26 = sub_2CCCA0();
    v28 = a1;
    v29 = sub_3F08(v26, v27, &v71);

    *(v21 + 4) = v29;
    a1 = v28;
    _os_log_impl(&dword_0, v18, v19, "PlayMediaAlternativesSnippetProvider#intentCommand... %{public}s", v21, 0xCu);
    sub_306C(v25);
    v7 = v24;
    v6 = v23;
    v10 = v63;
    v13 = v64;

    a2 = v62;
  }

  v30 = *(v7 + 8);
  v30(v15, v6);
  v31 = sub_224EEC(a1, a2);
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(SAIntentGroupHandleIntent) init];
    v34 = v65;
    sub_2C8E70();
    sub_2C8E50();
    (*(v66 + 8))(v34, v67);
    v35 = sub_2CE260();

    [v33 setAceId:v35];

    v36 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
    v37 = v32;
    v38 = [v37 typeName];
    if (!v38)
    {
      sub_2CE270();
      v38 = sub_2CE260();
    }

    [v36 setTypeName:v38];

    v39 = [v37 backingStore];
    isa = [v39 data];

    if (isa)
    {
      v41 = sub_2C8DC0();
      v43 = v42;

      isa = sub_2C8DB0().super.isa;
      sub_52628(v41, v43);
    }

    [v36 setData:isa];

    [v33 setIntent:v36];
    v68(v13, v70, v6);
    v44 = sub_2CDFE0();
    v45 = sub_2CE690();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v13;
      v48 = v47;
      v71 = v47;
      *v46 = 136446210;
      v49 = sub_2CCCA0();
      v70 = v30;
      v51 = sub_3F08(v49, v50, &v71);
      v69 = v6;
      v52 = v51;

      *(v46 + 4) = v52;
      _os_log_impl(&dword_0, v44, v45, "PlayMediaAlternativesSnippetProvider#intentCommand returning handle intent command. %{public}s", v46, 0xCu);
      sub_306C(v48);

      v70(v64, v69);
    }

    else
    {

      v30(v13, v6);
    }
  }

  else
  {
    v68(v10, v70, v6);
    v53 = sub_2CDFE0();
    v54 = sub_2CE680();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = v56;
      *v55 = 136446210;
      v57 = sub_2CCCA0();
      v59 = sub_3F08(v57, v58, &v71);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_0, v53, v54, "PlayMediaAlternativesSnippetProvider#intentCommand could not build play intent returning nil. %{public}s", v55, 0xCu);
      sub_306C(v56);
    }

    v30(v10, v6);
    return 0;
  }

  return v33;
}

unint64_t sub_2258FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_2CD200();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t DialogService.init(appNameResolver:morphunProvider:aceServiceInvoker:multiUserConnectionProvider:contactsManager:deviceProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  sub_EEAC(a1, v6 + 16);
  sub_EEAC(a2, v6 + 216);
  sub_EEAC(a3, v6 + 56);
  sub_EEAC(a4, v6 + 96);
  sub_EEAC(a6, v6 + 176);
  sub_F3F4(a5, &v16, qword_34C708, &qword_2D1620);
  if (v17)
  {
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    sub_F338(&v16, &v18);
  }

  else
  {
    sub_EEAC(a3, &v18);
    v13 = sub_2C9E60();
    swift_allocObject();
    v14 = sub_2C9E50();
    v19 = v13;
    v20 = &protocol witness table for ContactsManager;
    *&v18 = v14;
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    if (v17)
    {
      sub_30B8(&v16, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v18, v6 + 136);
  return v6;
}

void *DialogService.deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);
  return v0;
}

uint64_t DialogService.fallbackUsername(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v33 = &v32 - v9;
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v35 = *(v5 + 16);
  v35(v11, v12, v4);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "going to compute fallback username", v15, 2u);
  }

  v16 = *(v5 + 8);
  v16(v11, v4);
  sub_F3F4(a1, v36, &qword_34C6C0, &qword_2D0710);
  v17 = v37;
  if (!v37)
  {
    sub_30B8(v36, &qword_34C6C0, &qword_2D0710);
    return 0;
  }

  v18 = v38;
  sub_35E0(v36, v37);
  v19 = (*(v18 + 32))(v17, v18);
  v21 = v20;
  sub_306C(v36);
  if (!v21)
  {
    return 0;
  }

  sub_EEAC(v2 + 216, v36);
  sub_35E0(v36, v37);
  v22 = sub_2CBC80();
  sub_306C(v36);
  if (v22)
  {
    v23 = v33;
    v35(v33, v12, v4);
    v24 = sub_2CDFE0();
    v25 = sub_2CE690();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "has needed data to use morphun in fallback username", v26, 2u);
    }

    v16(v23, v4);
    return v19;
  }

  else
  {

    v28 = v34;
    v35(v34, v12, v4);
    v29 = sub_2CDFE0();
    v30 = sub_2CE690();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "doesn't have needed data to use morphun in fallback username", v31, 2u);
    }

    v16(v28, v4);
    return 0;
  }
}

id sub_226074()
{
  type metadata accessor for DialogService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_35F848 = result;
  return result;
}

uint64_t sub_2260C8()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_3557D0 = v8;
  return result;
}

uint64_t DialogService.__allocating_init(appNameResolver:morphunProvider:aceServiceInvoker:multiUserConnectionProvider:contactsManager:deviceProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  sub_EEAC(a1, v12 + 16);
  sub_EEAC(a2, v12 + 216);
  sub_EEAC(a3, v12 + 56);
  sub_EEAC(a4, v12 + 96);
  sub_EEAC(a6, v12 + 176);
  sub_F3F4(a5, &v16, qword_34C708, &qword_2D1620);
  if (v17)
  {
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    sub_F338(&v16, &v18);
  }

  else
  {
    sub_EEAC(a3, &v18);
    v13 = sub_2C9E60();
    swift_allocObject();
    v14 = sub_2C9E50();
    v19 = v13;
    v20 = &protocol witness table for ContactsManager;
    *&v18 = v14;
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    if (v17)
    {
      sub_30B8(&v16, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v18, v12 + 136);
  return v12;
}

uint64_t sub_226430(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_F3F4(a2, v18, &qword_34C6C0, &qword_2D0710);
  v10 = v19;
  if (v19)
  {
    v11 = v20;
    sub_35E0(v18, v19);
    v12 = *(v11 + 80);

    v13 = v12(v10, v11);
    sub_306C(v18);
    if (v13)
    {
      v14 = swift_allocObject();
      v14[2] = sub_CE4A8;
      v14[3] = v9;
      v14[4] = a4;
      sub_35E0(a3 + 17, a3[20]);
      v15 = swift_allocObject();
      v15[2] = sub_229D54;
      v15[3] = v14;
      v15[4] = a3;

      sub_2CA090();
    }
  }

  else
  {

    v17 = sub_30B8(v18, &qword_34C6C0, &qword_2D0710);
  }

  return v8(v17);
}

uint64_t sub_226610(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a4 + 16) = a1;

  return a2(v7);
}

double sub_226688(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v45 = a7;
  v46 = a8;
  v44 = a6;
  v42 = a5;
  v47 = sub_2CE000();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *(inited + 48) = v15;
  *(inited + 72) = v16;
  strcpy((inited + 80), "isDialogDriven");
  *(inited + 95) = -18;

  *(inited + 96) = sub_2CB590() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 6383735;
  *(inited + 136) = 0xE300000000000000;
  swift_beginAccess();
  *(inited + 144) = *(a2 + 16);
  v48 = v16;
  *(inited + 168) = v16;
  *(inited + 176) = 0x6976654445537369;
  *(inited + 184) = 0xEA00000000006563;
  sub_35E0(a3 + 7, a3[10]);

  sub_2CA140();
  sub_35E0(v50, v51);
  sub_2CA3D0();
  v18 = v17;
  if (v17)
  {
  }

  sub_306C(v50);
  *(inited + 192) = v18 != 0;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x6F696E61706D6F63;
  *(inited + 232) = 0xE90000000000006ELL;
  swift_beginAccess();
  *(inited + 240) = *(a4 + 16);
  *(inited + 264) = v48;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x80000000002DFE50;
  sub_F3F4(v42, v50, &qword_34C6C0, &qword_2D0710);
  v19 = v51;
  if (v51)
  {
    v20 = v52;
    sub_35E0(v50, v51);
    v21 = *(v20 + 80);

    v22 = v21(v19, v20);
    sub_306C(v50);
  }

  else
  {

    sub_30B8(v50, &qword_34C6C0, &qword_2D0710);
    v22 = 0;
  }

  v23 = v43;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v22 & 1;
  v24 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = v47;
  v26 = sub_3ED0(v47, static Logger.default);
  swift_beginAccess();
  (*(v23 + 2))(v13, v26, v25);
  v27 = sub_2CDFE0();
  v28 = sub_2CE690();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v29 = 136446466;
    v30 = sub_2CCCB0();
    v43 = v13;
    v32 = sub_3F08(v30, v31, v49);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;

    v33 = sub_2CE210();
    v35 = v34;

    v36 = sub_3F08(v33, v35, v49);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_0, v27, v28, "CatService#execute %{public}s default params: %s", v29, 0x16u);
    swift_arrayDestroy();

    (*(v23 + 1))(v43, v47);
  }

  else
  {

    (*(v23 + 1))(v13, v25);
  }

  sub_20410(&qword_34CCD0, &unk_2D0E00);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_2D0E40;
  v38 = v44;
  swift_beginAccess();
  *(v37 + 32) = *(v38 + 16);
  *(v37 + 40) = v45;

  v39 = sub_E0370(v37, v24);

  swift_setDeallocating();
  swift_arrayDestroy();
  v46(v39);

  return result;
}

double sub_226CD8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v59 = a5;
  v60 = a4;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  if (a2)
  {
    v15 = a2;
    goto LABEL_10;
  }

  if (sub_2CB650())
  {
    sub_F3F4(a3, v65, &qword_34C6C0, &qword_2D0710);
    v16 = v66;
    if (v66)
    {
      v17 = v12;
      v18 = v67;
      sub_35E0(v65, v66);
      v19 = *(v18 + 56);
      v20 = v18;
      v12 = v17;
      a1 = v19(v16, v20);
      v15 = v21;
      sub_306C(v65);
      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
    }
  }

  a1 = 0;
  v15 = 0xE000000000000000;
LABEL_10:
  v22 = qword_34BF58;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v23, v11);
  sub_F3F4(a3, v65, &qword_34C6C0, &qword_2D0710);

  v24 = sub_2CDFE0();
  v25 = sub_2CE690();
  v26 = v15;
  v27 = v25;
  v57 = v26;

  if (os_log_type_enabled(v24, v27))
  {
    v53 = a1;
    v54 = v12;
    v55 = v11;
    v28 = 7104878;
    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64[0] = v52;
    *v29 = 67109890;
    *(v29 + 4) = sub_2CB650() & 1;
    *(v29 + 8) = 2080;
    if (a2)
    {
      v28 = v56;
      v30 = a2;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = sub_3F08(v28, v30, v64);

    *(v29 + 10) = v31;
    *(v29 + 18) = 2080;
    sub_F3F4(v65, v61, &qword_34C6C0, &qword_2D0710);
    v32 = v62;
    if (v62)
    {
      v33 = v63;
      sub_35E0(v61, v62);
      v34 = (*(v33 + 56))(v32, v33);
      v36 = v35;
      sub_306C(v61);
      a1 = v53;
      if (v36)
      {
        sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
        v37 = v34;
LABEL_22:
        v39 = sub_3F08(v37, v36, v64);

        *(v29 + 20) = v39;
        *(v29 + 28) = 2080;
        v38 = v57;
        *(v29 + 30) = sub_3F08(a1, v57, v64);
        _os_log_impl(&dword_0, v24, v27, "isHomePod = %{BOOL}d, appName = %s, proxiedAppName = %s, localizedName = %s", v29, 0x26u);
        swift_arrayDestroy();

        (*(v54 + 8))(v14, v55);
        goto LABEL_23;
      }
    }

    else
    {
      sub_30B8(v61, &qword_34C6C0, &qword_2D0710);
      a1 = v53;
    }

    sub_30B8(v65, &qword_34C6C0, &qword_2D0710);

    v36 = 0xE300000000000000;
    v37 = 7104878;
    goto LABEL_22;
  }

  sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
  (*(v12 + 8))(v14, v11);
  v38 = v57;
LABEL_23:
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "localizedName");
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 46) = -4864;
  *(inited + 48) = a1;
  *(inited + 56) = v38;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isFirstParty");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v41 = v58;
  *(inited + 96) = sub_2CBDB0() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x636973754D7369;
  *(inited + 136) = 0xE700000000000000;
  if (sub_2CBE10() == a6 && v42 == v41)
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_2CEEA0();
  }

  *(inited + 144) = v43 & 1;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x736163646F507369;
  *(inited + 184) = 0xEA00000000007374;
  if (sub_2CBE30() == a6 && v44 == v41)
  {
    v45 = 1;
  }

  else
  {
    v45 = sub_2CEEA0();
  }

  *(inited + 192) = v45 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x736B6F6F427369;
  *(inited + 232) = 0xE700000000000000;
  if (sub_2CBE00() == a6 && v46 == v41)
  {
    v47 = 1;
  }

  else
  {
    v47 = sub_2CEEA0();
  }

  *(inited + 240) = v47 & 1;
  *(inited + 264) = &type metadata for Bool;
  strcpy((inited + 272), "isSoundscapes");
  *(inited + 286) = -4864;
  if (sub_2CBD90() == a6 && v48 == v41)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_2CEEA0();
  }

  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v49 & 1;
  v50 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v60(v50);

  return result;
}

double sub_227450(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v38 = a4;
  v7 = sub_20410(&qword_355908, &qword_2D7B60);
  __chkstk_darwin(v7 - 8);
  v39 = v37 - v8;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37[1] = a3;
    v19 = a2;
    v20 = v18;
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = a1;
    v21 = v14;
    _os_log_impl(&dword_0, v15, v16, "DialogService#buildCompanionParams MeCard: %@", v17, 0xCu);
    sub_30B8(v20, &unk_34FC00, &unk_2D0150);
    a2 = v19;
  }

  (*(v10 + 8))(v12, v9);
  if (a1)
  {
    v22 = [v14 firstName];
    v23 = v39;
    if (v22)
    {
      v24 = v22;
      v25 = sub_2CE270();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v23 = v39;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 40) = 0x80000000002DFE70;
  v29 = sub_20410(&qword_34CCC0, &unk_2D0DE0);
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  *(inited + 72) = v29;
  *(inited + 80) = 0x7954656369766564;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 120) = v29;
  sub_35E0(v38 + 22, v38[25]);
  sub_2CBBE0();
  v30 = sub_2CB560();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v23, 1, v30) == 1)
  {
    sub_30B8(v23, &qword_355908, &qword_2D7B60);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = sub_2CB550();
    v33 = v34;
    (*(v31 + 8))(v23, v30);
  }

  *(inited + 96) = v32;
  *(inited + 104) = v33;
  v35 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  a2(v35);

  return result;
}

uint64_t DialogService.__deallocating_deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);

  return swift_deallocClassInstance();
}

unint64_t sub_227960()
{
  result = qword_3558F8;
  if (!qword_3558F8)
  {
    sub_2CCF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3558F8);
  }

  return result;
}

uint64_t sub_2279B8(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v51 = a2;
  v52 = a1;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a4;

  v14 = sub_4F538(v8, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a3)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2361B4();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_32;
  }

  sub_236798(v17, a3 & 1);
  v19 = sub_4F538(v8, v9);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_31:
    sub_2CEEE0();
    __break(1u);
LABEL_32:
    sub_2CECB0(30);
    v54._object = 0x80000000002DFEF0;
    v54._countAndFlagsBits = 0xD00000000000001BLL;
    sub_2CE350(v54);
    sub_2CED50();
    v55._countAndFlagsBits = 39;
    v55._object = 0xE100000000000000;
    sub_2CE350(v55);
    result = sub_2CED80();
    __break(1u);
    return result;
  }

  v14 = v19;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v22 = *a4;
  *(*a4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v23 = (v22[6] + 16 * v14);
  *v23 = v8;
  v23[1] = v9;
  v24 = (v22[7] + 16 * v14);
  *v24 = v10;
  v24[1] = v11;
  v25 = v22[2];
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22[2] = v27;
  v28 = v51;
  v29 = v52[2];
  if (v29 != 1)
  {
    v30 = v52 + 7;
    v31 = v51 + 7;
    v32 = 1;
    while (v32 < v29)
    {
      v33 = v28[2];
      if (v32 == v33)
      {
        goto LABEL_25;
      }

      if (v32 >= v33)
      {
        goto LABEL_30;
      }

      v35 = *(v30 - 1);
      v34 = *v30;
      v36 = *(v31 - 1);
      v37 = *v31;
      v38 = *a4;

      v39 = sub_4F538(v35, v34);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v26 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v26)
      {
        goto LABEL_27;
      }

      v44 = v40;
      if (v38[3] < v43)
      {
        sub_236798(v43, 1);
        v39 = sub_4F538(v35, v34);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v44)
      {
        goto LABEL_10;
      }

      v46 = *a4;
      *(*a4 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v47 = (v46[6] + 16 * v39);
      *v47 = v35;
      v47[1] = v34;
      v48 = (v46[7] + 16 * v39);
      *v48 = v36;
      v48[1] = v37;
      v49 = v46[2];
      v26 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v26)
      {
        goto LABEL_28;
      }

      ++v32;
      v46[2] = v50;
      v28 = v51;
      v29 = v52[2];
      v30 += 2;
      v31 += 2;
      if (v32 == v29)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  return swift_bridgeObjectRelease_n();
}

void sub_227DD4(unint64_t a1, unint64_t a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a1;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v32 = a2 & 0xC000000000000001;

  v9 = 4;
  v35 = v7 >> 62;
  v33 = v6 >> 62;
  v30 = v8;
  v31 = v7;
  if (v7 >> 62)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *(v36 + 16); ; i = sub_2CEDA0())
  {
    v11 = v9 - 4;
    if (v9 - 4 == i)
    {

      goto LABEL_33;
    }

    if (v34)
    {
      v12 = sub_2CECD0();
    }

    else
    {
      if (v11 >= *(v36 + 16))
      {
        goto LABEL_35;
      }

      v12 = *(v7 + 8 * v9);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v33)
    {
      if (v11 != sub_2CEDA0())
      {
        goto LABEL_11;
      }

LABEL_32:

LABEL_33:

      return;
    }

    if (v11 == *(v8 + 16))
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v32)
    {
      v14 = v6;
      v15 = sub_2CECD0();
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        goto LABEL_37;
      }

      v14 = v6;
      v15 = *(v6 + 8 * v9);
    }

    v16 = v15;
    v17 = *a4;
    v19 = sub_4F970(v13);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_36;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_236638();
        if (v23)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_237278(v22, a3 & 1);
      v24 = sub_4F970(v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_39;
      }

      v19 = v24;
      if (v23)
      {
LABEL_29:
        swift_allocError();
        swift_willThrow();
        swift_errorRetain();
        sub_20410(&qword_34C6E0, &unk_2D0730);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          return;
        }

        goto LABEL_40;
      }
    }

    v26 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(v26[6] + 8 * v19) = v13;
    *(v26[7] + 8 * v19) = v16;
    v27 = v26[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_38;
    }

    v26[2] = v29;
    ++v9;
    a3 = 1;
    v6 = v14;
    v8 = v30;
    v7 = v31;
    if (!v35)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
  sub_2CEEE0();
  __break(1u);
LABEL_40:
  sub_2CECB0(30);
  v37._object = 0x80000000002DFEF0;
  v37._countAndFlagsBits = 0xD00000000000001BLL;
  sub_2CE350(v37);
  sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
  sub_2CED50();
  v38._countAndFlagsBits = 39;
  v38._object = 0xE100000000000000;
  sub_2CE350(v38);
  sub_2CED80();
  __break(1u);
}

uint64_t sub_2281E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = *a1;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v8);
}

uint64_t sub_2282AC(uint64_t a1)
{
  v2 = sub_2CD430();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2283A4(uint64_t *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2281E0(a1, v5, v6, v8, v1 + v4, v7);
}

void *sub_22844C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [a1 intentSpeakerRooms];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2CE410();

      v5 = *(v4 + 16);
      if (v5)
      {
        v24 = v1;
        sub_2DB78(0, v5, 0);
        v23 = v4;
        v6 = (v4 + 40);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;
          v9 = _swiftEmptyArrayStorage[2];
          v10 = _swiftEmptyArrayStorage[3];

          if (v9 >= v10 >> 1)
          {
            sub_2DB78((v10 > 1), v9 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v9 + 1;
          v11 = &_swiftEmptyArrayStorage[3 * v9];
          v11[4] = v7;
          v11[5] = v8;
          *(v11 + 48) = 1;
          v6 += 2;
          --v5;
        }

        while (v5);

        v1 = v24;
      }

      else
      {
      }

      sub_80B10(_swiftEmptyArrayStorage);
    }

    v12 = [v1 intentSpeakerNames];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2CE410();

      v15 = *(v14 + 16);
      if (v15)
      {
        sub_2DB78(0, v15, 0);
        v16 = (v14 + 40);
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v20 = _swiftEmptyArrayStorage[2];
          v19 = _swiftEmptyArrayStorage[3];

          if (v20 >= v19 >> 1)
          {
            sub_2DB78((v19 > 1), v20 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v20 + 1;
          v21 = &_swiftEmptyArrayStorage[3 * v20];
          v21[4] = v18;
          v21[5] = v17;
          *(v21 + 48) = 0;
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      sub_80B10(_swiftEmptyArrayStorage);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_228688(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    sub_20410(&qword_34E178, &unk_2D1EC0);
    v5 = sub_2CEDE0();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v5;

  sub_2279B8(a1, a2, 1, &v7);
  return v7;
}

char *sub_228754(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 1);
  v4 = __chkstk_darwin(v2);
  v6 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v158 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v158 - v11;
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = &v158 - v15;
  __chkstk_darwin(v14);
  if (!a1)
  {
    if (qword_34BF58 == -1)
    {
LABEL_5:
      v23 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      (*(v3 + 2))(v6, v23, v2);
      v24 = sub_2CDFE0();
      v25 = sub_2CE690();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "No Whole House Audio Metadata present, passing empty app parameter values for CAT", v26, 2u);
      }

      (*(v3 + 1))(v6, v2);
      return sub_112C0(_swiftEmptyArrayStorage);
    }

LABEL_120:
    swift_once();
    goto LABEL_5;
  }

  v165 = &v158 - v17;
  v162 = v18;
  v19 = a1;
  v20 = sub_112C0(_swiftEmptyArrayStorage);
  v21 = [v19 numberOfHomeAutomationWords];
  v160 = v12;
  v161 = v9;
  if (v21)
  {
    v22 = v21;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v22;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Int;
    *&v171 = 0;
  }

  sub_E2DC(&v171, &v169);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v168 = v20;
  sub_237690(&v169, 0xD00000000000001BLL, 0x80000000002DAF40, isUniquelyReferenced_nonNull_native);
  v29 = v168;
  v30 = [v19 isAllSpeakers];
  if (v30)
  {
    v31 = v30;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v31;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Bool;
    LOBYTE(v171) = 0;
  }

  sub_E2DC(&v171, &v169);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v29;
  sub_237690(&v169, 0x6570536C6C417369, 0xED00007372656B61, v32);
  v33 = v168;
  v34 = [v19 isPauseOrStop];
  if (v34)
  {
    v35 = v34;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v35;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Bool;
    LOBYTE(v171) = 0;
  }

  sub_E2DC(&v171, &v169);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v33;
  sub_237690(&v169, 0x4F65737561507369, 0xED0000706F745372, v36);
  v37 = v168;
  v38 = [v19 isWholeHouseAudioCommand];
  if (v38)
  {
    v39 = v38;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v39;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Bool;
    LOBYTE(v171) = 0;
  }

  sub_E2DC(&v171, &v169);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v37;
  sub_237690(&v169, 0xD000000000000018, 0x80000000002DAF60, v40);
  v41 = v168;
  v42 = [v19 isInHere];
  if (v42)
  {
    v43 = v42;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v43;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Bool;
    LOBYTE(v171) = 0;
  }

  v164 = v3;
  sub_E2DC(&v171, &v169);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v41;
  sub_237690(&v169, 0x657265486E497369, 0xE800000000000000, v44);
  v45 = v168;
  v46 = [v19 hasExcept];
  if (v46)
  {
    v47 = v46;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v47;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Bool;
    LOBYTE(v171) = 0;
  }

  sub_E2DC(&v171, &v169);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v45;
  sub_237690(&v169, 0x7065637845736168, 0xE900000000000074, v48);
  v49 = v168;
  v50 = [v19 speakerRooms];
  if (v50)
  {
    v51 = v50;
    v52 = sub_2CE410();

    v53 = *(v52 + 16);

    v54 = v53 > 2;
  }

  else
  {
    v54 = 0;
  }

  v172 = &type metadata for Bool;
  LOBYTE(v171) = v54;
  sub_E2DC(&v171, &v169);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v49;
  sub_237690(&v169, 0xD000000000000013, 0x80000000002DAF80, v55);
  v56 = v168;
  v57 = [v19 speakerRooms];
  if (v57)
  {
    v58 = v57;
    v59 = sub_2CE410();

    v60 = *(v59 + 16);

    v61 = v60 > 1;
  }

  else
  {
    v61 = 0;
  }

  v3 = v164;
  v172 = &type metadata for Bool;
  LOBYTE(v171) = v61;
  sub_E2DC(&v171, &v169);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v56;
  sub_237690(&v169, 0xD000000000000011, 0x80000000002DAFC0, v62);
  v63 = v168;
  v64 = [v19 permanentNames];
  if (v64)
  {
    v65 = v64;
    v66 = sub_2CE410();

    v67 = *(v66 + 16);

    v68 = v67 != 0;
  }

  else
  {
    v68 = 0;
  }

  v172 = &type metadata for Bool;
  LOBYTE(v171) = v68;
  sub_E2DC(&v171, &v169);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v63;
  sub_237690(&v169, 0x70756F7247736168, 0xE900000000000073, v69);
  v70 = v168;
  v71 = [v19 isParticipatingSpeaker];
  if (v71)
  {
    v72 = v71;
    v170 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v169 = v72;
    sub_E2DC(&v169, &v171);
  }

  else
  {
    v172 = &type metadata for Bool;
    LOBYTE(v171) = 0;
  }

  sub_E2DC(&v171, &v169);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v70;
  sub_237690(&v169, 0xD000000000000016, 0x80000000002DAFE0, v73);
  v27 = v168;
  v74 = v19;
  v75 = sub_22844C(a1);

  v76 = [v74 isParticipatingSpeaker];
  if (v76)
  {
    v77 = v76;
    if (v75[2] == 1 && [v76 BOOLValue])
    {

      if (qword_34BF58 != -1)
      {
        goto LABEL_124;
      }

      goto LABEL_40;
    }
  }

  v83 = v75[2];
  v163 = v74;
  if (!v83)
  {
    goto LABEL_57;
  }

  v165 = v27;
  v84 = v75[4];
  v27 = v75[5];
  v85 = *(v75 + 48);
  v86 = qword_34BF58;

  if ((v85 & 1) == 0)
  {
    if (v86 != -1)
    {
      swift_once();
    }

    v94 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v159 = *(v3 + 2);
    v159(v16, v94, v2);
    v95 = sub_2CDFE0();
    v96 = sub_2CE690();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_0, v95, v96, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName", v97, 2u);
      v3 = v164;
    }

    v92 = *(v3 + 1);
    v92(v16, v2);
    v93 = "firstSpeakerName";
    goto LABEL_55;
  }

  if (v86 != -1)
  {
    goto LABEL_122;
  }

  while (1)
  {
    v87 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v88 = v162;
    v159 = *(v3 + 2);
    v159(v162, v87, v2);
    v89 = sub_2CDFE0();
    v90 = sub_2CE690();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "Destination #1: Destination is a room or zone. Setting speaker.firstSpeakerRoom to the groupName", v91, 2u);
    }

    v92 = *(v3 + 1);
    v92(v88, v2);
    v93 = "firstSpeakerRoom";
LABEL_55:
    v172 = &type metadata for String;
    v98 = v93 - 32;
    *&v171 = v84;
    *(&v171 + 1) = v27;
    sub_E2DC(&v171, &v169);

    v84 = v165;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v84;
    sub_237690(&v169, 0xD000000000000010, v98 | 0x8000000000000000, v99);

    v27 = v167;
    v74 = v163;
    if (v75[2] >= v83)
    {
      break;
    }

    __break(1u);
LABEL_122:
    swift_once();
  }

  if (v83 != 1)
  {
    v100 = v75[7];
    v3 = v75[8];
    v101 = *(v75 + 72);

    v102 = v92;
    if (v101)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v103 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      v104 = v161;
      v159(v161, v103, v2);
      v105 = sub_2CDFE0();
      v106 = sub_2CE690();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_0, v105, v106, "Destination #2: Destination is a room or zone. Setting speaker.secondSpeakerRoom to the groupName", v107, 2u);
      }

      v102(v104, v2);
      v108 = "secondSpeakerRoom";
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v109 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      v110 = v160;
      v159(v160, v109, v2);
      v111 = sub_2CDFE0();
      v112 = sub_2CE690();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_0, v111, v112, "Destination #2: Destination is an accesory. Setting speaker.secondSpeakerName to the groupName", v113, 2u);
      }

      v102(v110, v2);
      v108 = "secondSpeakerName";
    }

    v172 = &type metadata for String;
    v114 = v108 - 32;
    *&v171 = v100;
    *(&v171 + 1) = v3;
    sub_E2DC(&v171, &v169);

    v115 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v27;
    sub_237690(&v169, 0xD000000000000011, v114 | 0x8000000000000000, v115);

    v27 = v166;
  }

  else
  {
LABEL_57:
  }

  v116 = [v74 spokenEntityNames];
  if (v116)
  {
    v117 = v116;
    v118 = sub_2CE410();
  }

  else
  {
    v118 = &off_32F100;
  }

  v119 = [v74 spokenEntityTypes];
  v165 = v27;
  if (v119)
  {
    v120 = v119;
    v77 = sub_2CE410();
  }

  else
  {
    v77 = &off_32F130;
  }

  v6 = sub_228688(v118, v77);

  v121 = 0;
  v122 = 1 << v6[32];
  v123 = -1;
  if (v122 < 64)
  {
    v123 = ~(-1 << v122);
  }

  v124 = v123 & *(v6 + 8);
  v125 = (v122 + 63) >> 6;
  v126 = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage;
LABEL_79:
  v164 = v126;
LABEL_80:
  v127 = v2;
  while (1)
  {
    v2 = v127;
    if (!v124)
    {
      break;
    }

LABEL_86:
    v129 = __clz(__rbit64(v124));
    v124 &= v124 - 1;
    v130 = (v121 << 10) | (16 * v129);
    v131 = (*(v6 + 6) + v130);
    v132 = *v131;
    v133 = v131[1];
    v134 = (*(v6 + 7) + v130);
    v135 = *v134 == 1297043282 && v134[1] == 0xE400000000000000;
    if (v135 || (sub_2CEEA0() & 1) != 0)
    {
      v126 = 0;
      v3 = v164;
      if (v164)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_B90C4(0, *(v3 + 2) + 1, 1, v3);
        }

        v77 = *(v3 + 2);
        v138 = *(v3 + 3);
        v139 = v3;
        v3 = (v77 + 1);
        if (v77 >= v138 >> 1)
        {
          v139 = sub_B90C4((v138 > 1), v77 + 1, 1, v139);
        }

        *(v139 + 2) = v3;
        v140 = &v139[16 * v77];
        *(v140 + 4) = v132;
        *(v140 + 5) = v133;
        v126 = v139;
      }

      goto LABEL_79;
    }

    v127 = 0;
    if (v2)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_B90C4(0, *(v2 + 2) + 1, 1, v2);
      }

      v77 = *(v2 + 2);
      v136 = *(v2 + 3);
      v3 = (v77 + 1);
      if (v77 >= v136 >> 1)
      {
        v2 = sub_B90C4((v136 > 1), v77 + 1, 1, v2);
      }

      *(v2 + 2) = v3;
      v137 = &v2[16 * v77];
      *(v137 + 4) = v132;
      *(v137 + 5) = v133;
      goto LABEL_80;
    }
  }

  while (1)
  {
    v128 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v128 >= v125)
    {
      break;
    }

    v124 = *&v6[8 * v128 + 64];
    ++v121;
    if (v124)
    {
      v121 = v128;
      goto LABEL_86;
    }
  }

  if (!v2)
  {
    v3 = v163;
    v142 = v164;
    v27 = v165;
LABEL_108:
    if (v142)
    {
      goto LABEL_113;
    }

    goto LABEL_116;
  }

  v141 = *(v2 + 2);
  v3 = v163;
  v142 = v164;
  v27 = v165;
  if (!v141)
  {
    goto LABEL_108;
  }

  if (v141 == 1)
  {
    v143 = *(v2 + 4);
    v144 = *(v2 + 5);
    v172 = &type metadata for String;
    *&v171 = v143;
    *(&v171 + 1) = v144;
    sub_E2DC(&v171, &v169);

    v145 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v27;
    v146 = 0xD000000000000024;
    v147 = 0x80000000002DAEC0;
    goto LABEL_112;
  }

  v74 = "secondSpeakerRoom";
  v148 = *(v2 + 4);
  v149 = *(v2 + 5);
  v172 = &type metadata for String;
  *&v171 = v148;
  *(&v171 + 1) = v149;
  sub_E2DC(&v171, &v169);

  v150 = swift_isUniquelyReferenced_nonNull_native();
  v166 = v27;
  sub_237690(&v169, 0xD000000000000024, 0x80000000002DAEC0, v150);
  if (*(v2 + 2) >= 2uLL)
  {
    v151 = v166;
    v152 = *(v2 + 6);
    v153 = *(v2 + 7);
    v172 = &type metadata for String;
    *&v171 = v152;
    *(&v171 + 1) = v153;
    sub_E2DC(&v171, &v169);

    v145 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v151;
    v146 = 0xD000000000000025;
    v147 = 0x80000000002DAEF0;
LABEL_112:
    sub_237690(&v169, v146, v147, v145);
    v27 = v166;
    if (v142)
    {
LABEL_113:
      if (*(v142 + 2) == 1)
      {
        v154 = *(v142 + 4);
        v155 = *(v142 + 5);
        v172 = &type metadata for String;
        *&v171 = v154;
        *(&v171 + 1) = v155;
        sub_E2DC(&v171, &v169);

        v156 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v27;
        sub_237690(&v169, 0xD00000000000001FLL, 0x80000000002DAF20, v156);

        return v166;
      }
    }

LABEL_116:

    return v27;
  }

  __break(1u);
LABEL_124:
  swift_once();
LABEL_40:
  v78 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v79 = v165;
  (*(v3 + 2))(v165, v78, v2);
  v80 = sub_2CDFE0();
  v81 = sub_2CE690();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_0, v80, v81, "Skipping destination because isParticipatingSpeaker = true", v82, 2u);
  }

  else
  {
  }

  (*(v3 + 1))(v79, v2);
  return v27;
}

void *sub_229BBC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_2CEDA0();
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!(a2 >> 62))
    {
LABEL_3:
      v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_4;
    }
  }

  v5 = sub_2CEDA0();
LABEL_4:
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_20410(qword_355918, &unk_2D7B70);
    v6 = sub_2CEDE0();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  sub_227DD4(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_229CD0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_229D0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_229DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = sub_2CA810();
  v106 = *(v107 - 8);
  v4 = __chkstk_darwin(v107);
  v101 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v99 - v7;
  __chkstk_darwin(v6);
  v109 = &v99 - v9;
  v10 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v10 - 8);
  v123 = &v99 - v11;
  v119 = sub_2CD490();
  v125 = *(v119 - 8);
  v12 = __chkstk_darwin(v119);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v110 = &v99 - v15;
  __chkstk_darwin(v14);
  v111 = &v99 - v16;
  v121 = sub_2CA870();
  v120 = *(v121 - 8);
  v17 = __chkstk_darwin(v121);
  v116 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v124 = &v99 - v19;
  v20 = sub_2CA7B0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v100 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v105 = &v99 - v29;
  v30 = __chkstk_darwin(v28);
  v108 = &v99 - v31;
  v32 = __chkstk_darwin(v30);
  v104 = &v99 - v33;
  __chkstk_darwin(v32);
  v35 = &v99 - v34;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v103 = v8;
  v36 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v37 = *(v25 + 16);
  v115 = v36;
  v114 = v25 + 16;
  v113 = v37;
  v37(v35, v36, v24);
  v38 = *(v21 + 16);
  v122 = a1;
  v38(v23, a1, v20);
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v118 = a2;
    v42 = v20;
    v43 = v41;
    v99 = swift_slowAlloc();
    v130[0] = v99;
    *v43 = 136315138;
    sub_22B7E8(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v44 = sub_2CEE70();
    v117 = v25;
    v112 = v24;
    v46 = v45;
    (*(v21 + 8))(v23, v42);
    v47 = sub_3F08(v44, v46, v130);
    a2 = v118;
    v24 = v112;
    v25 = v117;

    *(v43 + 4) = v47;
    _os_log_impl(&dword_0, v39, v40, "AppResolutionStrategy#actionForInput input:%s", v43, 0xCu);
    sub_306C(v99);
  }

  else
  {

    (*(v21 + 8))(v23, v20);
  }

  v48 = *(v25 + 8);
  v48(v35, v24);
  v49 = v124;
  sub_2CA790();
  v50 = v120;
  v51 = v121;
  v52 = (*(v120 + 88))(v49, v121);
  v53 = v123;
  if (v52 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v50 + 96))(v49, v51);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v54 = sub_2CAFE0();
    (*(*(v54 - 8) + 8))(v49, v54);
  }

  else
  {
    if (v52 == enum case for Parse.directInvocation(_:))
    {
      (*(v50 + 96))(v49, v51);
      v55 = v106;
      v56 = v109;
      v57 = v107;
      (*(v106 + 32))(v109, v49, v107);
      sub_238E4C(v56, v130);
      if (v131 == 3)
      {
        sub_30B8(v130, &qword_34CCB0, &qword_2D5710);
        sub_2C9CE0();
        return (*(v55 + 8))(v56, v57);
      }

      else
      {
        v117 = v25;
        if (v131 != 255)
        {
          sub_30B8(v130, &qword_34CCB0, &qword_2D5710);
        }

        v125 = v48;
        v118 = a2;
        v58 = v105;
        v113(v105, v115, v24);
        v59 = v24;
        v60 = *(v55 + 16);
        v61 = v103;
        v60(v103, v56, v57);
        v62 = v55;
        v63 = sub_2CDFE0();
        v64 = sub_2CE680();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v112 = v59;
          v67 = v66;
          *&v128 = v66;
          *v65 = 136315138;
          v60(v101, v61, v57);
          v68 = sub_2CE2A0();
          v70 = v69;
          v71 = *(v62 + 8);
          v71(v61, v57);
          v72 = sub_3F08(v68, v70, &v128);

          *(v65 + 4) = v72;
          _os_log_impl(&dword_0, v63, v64, "AppResolutionStrategy#actionForInput received unsupported directInvocation: %s", v65, 0xCu);
          sub_306C(v67);

          v73 = v105;
          v74 = v112;
        }

        else
        {

          v71 = *(v62 + 8);
          v71(v61, v57);
          v73 = v58;
          v74 = v59;
        }

        v125(v73, v74);
        sub_2C9CF0();
        return (v71)(v109, v57);
      }
    }

    if (v52 != enum case for Parse.pommesResponse(_:) && v52 != enum case for Parse.uso(_:))
    {
      v89 = v100;
      v113(v100, v115, v24);
      v90 = sub_2CDFE0();
      v91 = sub_2CE680();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_0, v90, v91, "AppResolutionStrategy#actionForInput Ignoring unsupported parse", v92, 2u);
        v49 = v124;
      }

      v48(v89, v24);
      sub_2C9CF0();
      return (*(v50 + 8))(v49, v51);
    }

    (*(v50 + 8))(v49, v51);
  }

  v75 = v116;
  sub_2CA790();
  v76 = sub_D1D64(v75, &v128);
  (*(v50 + 8))(v75, v51, v76);
  if (v129)
  {
    sub_F338(&v128, v130);
    sub_35E0(v130, v130[3]);
    sub_2CD480();
    v77 = v125;
    v78 = v119;
    if ((*(v125 + 6))(v53, 1, v119) == 1)
    {
      sub_30B8(v53, &qword_34CCE8, &unk_2D0E20);
LABEL_20:
      sub_2C9CE0();
      return sub_306C(v130);
    }

    v112 = v24;
    v77[4](v111, v53, v78);
    v84 = v77[13];
    v84(v110, enum case for CommonAudio.Confirmation.cancel(_:), v78);
    sub_22B7E8(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    v118 = a2;
    v117 = v25;
    if (v128 == v126 && *(&v128 + 1) == v127)
    {
      v85 = 1;
    }

    else
    {
      v85 = sub_2CEEA0();
    }

    v86 = *(v125 + 1);
    v87 = v119;
    v125 = (v125 + 8);
    v86(v110, v119);

    if ((v85 & 1) == 0)
    {
      v88 = v102;
      v84(v102, enum case for CommonAudio.Confirmation.no(_:), v87);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v128 == v126 && *(&v128 + 1) == v127)
      {
        v86(v88, v87);
      }

      else
      {
        v93 = sub_2CEEA0();
        v86(v88, v87);

        if ((v93 & 1) == 0)
        {
          v86(v111, v87);
          goto LABEL_20;
        }
      }
    }

    v94 = v104;
    v95 = v112;
    v113(v104, v115, v112);
    v96 = sub_2CDFE0();
    v97 = sub_2CE690();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "AppResolutionStrategy#actionForInput cancelled", v98, 2u);
    }

    v48(v94, v95);
    sub_2C9CD0();
    v86(v111, v119);
    return sub_306C(v130);
  }

  sub_30B8(&v128, &qword_34CCF0, &unk_2D1270);
  v79 = v108;
  v113(v108, v115, v24);
  v80 = sub_2CDFE0();
  v81 = sub_2CE690();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_0, v80, v81, "AppResolutionStrategy#actionForInput received invalid intent", v82, 2u);
  }

  v48(v79, v24);
  return sub_2C9CF0();
}

uint64_t sub_22AE94(char *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *))
{
  v9 = type metadata accessor for AppResolutionStrategy(0, *(*v4 + 80), *(*v4 + 88), *(*v4 + 96));
  WitnessTable = swift_getWitnessTable();
  return sub_171ED0(a1, a2, a3, a4, v9, WitnessTable);
}

uint64_t sub_22AF64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for AppResolutionStrategy(0, *(*v4 + 80), *(*v4 + 88), *(*v4 + 96));
  WitnessTable = swift_getWitnessTable();
  return sub_178220(a1, a2, a3, a4, v9, WitnessTable);
}

uint64_t sub_22B034()
{

  sub_306C((v0 + 48));
  sub_306C((v0 + 88));
  sub_306C((v0 + 128));
  sub_306C((v0 + 168));

  return v0;
}

uint64_t sub_22B08C()
{
  sub_22B034();

  return swift_deallocClassInstance();
}

uint64_t sub_22B100@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_22B718();
}

uint64_t sub_22B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = type metadata accessor for AppResolutionStrategy(0, a5[10], a5[11], a5[12]);

  return a7(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_22B2E4()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_22B358(char *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v40 = a3;
  v8 = sub_2CA870();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  v34 = v16;
  v35 = v15;
  v20 = *(v9 + 16);
  v39 = a1;
  v20(v14, a1, v8);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = a2;
    v24 = v23;
    v32 = swift_slowAlloc();
    v41[0] = v32;
    *v24 = 136315138;
    v20(v12, v14, v8);
    v25 = sub_2CE2A0();
    v27 = v26;
    (*(v9 + 8))(v14, v8);
    v28 = sub_3F08(v25, v27, v41);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v21, v22, "AppResolutionStrategy#makeAppResolutionStateFromParse %s", v24, 0xCu);
    sub_306C(v32);

    a2 = v33;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  (*(v34 + 8))(v18, v35);
  v29 = type metadata accessor for AppResolutionStrategy(0, v36, v37, v38);
  WitnessTable = swift_getWitnessTable();
  sub_16D228(v39, v29, WitnessTable, v41);
  a2(v41);
  return sub_30B8(v41, &qword_355698, qword_2D7A40);
}

uint64_t sub_22B720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AppResolutionStrategy(0, *(*v3 + 80), *(*v3 + 88), *(*v3 + 96));
  WitnessTable = swift_getWitnessTable();
  return sub_17D10C(a1, a2, a3, v7, WitnessTable);
}

uint64_t sub_22B7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B830@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2CD540();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_339DA0 + a1);

  return v5(a2, v6, v4);
}

uint64_t getEnumTagSinglePayload for MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BA00()
{
  result = qword_355A08;
  if (!qword_355A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A08);
  }

  return result;
}

uint64_t sub_22BA54(char a1)
{
  result = 0x636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x74736163646F70;
      break;
    case 2:
      result = 0x7473696C79616C70;
      break;
    case 3:
      result = 0x646956636973756DLL;
      break;
    case 4:
      result = 1735290739;
      break;
    case 5:
      result = 0x6F6F426F69647561;
      break;
    case 6:
      result = 0x6F65646976;
      break;
    case 7:
      result = 0x5573656E755469;
      break;
    case 8:
      result = 0x74616C69706D6F63;
      break;
    case 9:
      result = 0x6D75626C61;
      break;
    case 10:
      result = 0x776F68537674;
      break;
    case 11:
      result = 2003789939;
      break;
    case 12:
      result = 0x6F68536F69646172;
      break;
    case 13:
      result = 0x5374736163646F70;
      break;
    case 14:
      result = 0x616C50636973756DLL;
      break;
    case 15:
      result = 0x6E6F6974617473;
      break;
    case 16:
      result = 0x65646F73697065;
      break;
    case 17:
      result = 28773;
      break;
    case 18:
      result = 28780;
      break;
    case 19:
      result = 0x656C676E6973;
      break;
    case 20:
      result = 0x65726E6567;
      break;
    case 21:
      result = 1937204590;
      break;
    case 22:
      result = 0x656E6F74676E6972;
      break;
    case 23:
      result = 0x73646E756F73;
      break;
    case 24:
      result = 0x6569766F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCA0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22BA54(*a1);
  v5 = v4;
  if (v3 == sub_22BA54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_22BD28()
{
  v1 = *v0;
  sub_2CEF50();
  sub_22BA54(v1);
  sub_2CE310();

  return sub_2CEF80();
}

double sub_22BD8C(uint64_t a1)
{
  sub_22BA54(*v1);
  sub_2CE310();

  return result;
}

Swift::Int sub_22BDE0(uint64_t a1)
{
  v2 = *v1;
  sub_2CEF50();
  sub_22BA54(v2);
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_22BE40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C038(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22BE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BA54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22BEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C08C();
  v5 = sub_22C0E0();
  v6 = sub_22C134();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_22BF24()
{
  result = qword_355A10;
  if (!qword_355A10)
  {
    sub_2DB30(&qword_355A18, &qword_2D7D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A10);
  }

  return result;
}

unint64_t sub_22BF8C()
{
  result = qword_355A20;
  if (!qword_355A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A20);
  }

  return result;
}

unint64_t sub_22BFE4()
{
  result = qword_355A28;
  if (!qword_355A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A28);
  }

  return result;
}

unint64_t sub_22C038(uint64_t a1, uint64_t a2)
{
  v2 = sub_2CEEC0();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22C08C()
{
  result = qword_355A30;
  if (!qword_355A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A30);
  }

  return result;
}

unint64_t sub_22C0E0()
{
  result = qword_355A38;
  if (!qword_355A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A38);
  }

  return result;
}

unint64_t sub_22C134()
{
  result = qword_355A40;
  if (!qword_355A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A40);
  }

  return result;
}

id sub_22C188(uint64_t a1)
{
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_2C8D90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_2C8F80();
  sub_2C8F60();
  v10 = v9;
  sub_2C8F70();
  v12 = v11;
  sub_2C8F50();
  sub_2C8D80();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_30B8(v4, &unk_3519B0, &qword_2D1230);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_2C8D50(v14);
  v16 = v15;
  v17 = [objc_opt_self() imageWithURL:v15 width:v10 height:v12];

  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_22C3C8(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C92B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.UNRECOGNIZED(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = *v9;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v12 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_2CDFE0();
    v14 = sub_2CE690();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_0, v13, v14, "ConverterHelpers#convertAmpConfidenceLevel unrecognized AudioConfidenceLevel: %ld", v15, 0xCu);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v10 == enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.low(_:))
  {
    return 1;
  }

  if (v10 == enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.medium(_:))
  {
    return 2;
  }

  if (v10 != enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.high(_:))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return 3;
}

void *sub_22C6DC(uint64_t a1)
{
  v2 = sub_2C9110();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v24 = *(v8 + 56);
    v25 = v9;
    v11 = (v8 - 8);
    while (1)
    {
      v13 = v8;
      v25(v5, v10, v2);
      v14 = sub_2C90F0();
      v16 = v15;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {

        v16 = 0;
      }

      v18 = sub_2C9100();
      v20 = v19;
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        if (v16)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v20 = 0;
        if (v16)
        {
LABEL_13:
          v22 = sub_2CE260();

          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        }
      }

      v22 = 0;
      if (!v20)
      {
LABEL_17:
        v12 = 0;
        goto LABEL_4;
      }

LABEL_3:
      v12 = sub_2CE260();

LABEL_4:
      [objc_allocWithZone(INMediaSubItem) initWithIdentifier:v22 assetInfo:v12];

      (*v11)(v5, v2);
      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v10 += v24;
      --v6;
      v8 = v13;
      if (!v6)
      {
        return v26;
      }
    }
  }

  return result;
}

uint64_t sub_22C940()
{
  v0 = sub_2CE000();
  __chkstk_darwin(v0);
  v1 = sub_2C91B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2C9090();
  sub_234704(&qword_355A70, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);
  v5 = sub_2CDA00();
  (*(v2 + 8))(v4, v1);
  return v5;
}

id sub_22CC18(uint64_t a1, uint64_t a2)
{
  v146 = a2;
  v2 = sub_20410(&qword_355A58, &qword_2D7E88);
  __chkstk_darwin(v2 - 8);
  v4 = v115 - v3;
  v5 = sub_2CB8E0();
  v147 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v116 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v123 = v115 - v9;
  v10 = __chkstk_darwin(v8);
  v118 = v115 - v11;
  __chkstk_darwin(v10);
  isa = (v115 - v12);
  v13 = sub_2C92B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C9070();
  v19 = v18;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v127 = v17;
  }

  else
  {

    v127 = 0;
    v19 = 0;
  }

  v21 = sub_2C8F90();
  v23 = v22;
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v21;
  }

  else
  {

    v25 = 0;
    v23 = 0;
  }

  v26 = sub_2C9060();
  v28 = HIBYTE(v27) & 0xF;
  v142 = v26;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v143 = v27;
  }

  else
  {

    v142 = 0;
    v143 = 0;
  }

  v29 = sub_2C90C0();
  v31 = HIBYTE(v30) & 0xF;
  v137 = v29;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v138 = v30;
  }

  else
  {

    v137 = 0;
    v138 = 0;
  }

  v32 = sub_2C8FF0();
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v125 = v32;
    v136 = v33;
  }

  else
  {

    v125 = 0;
    v136 = 0;
  }

  v35 = sub_2C9080();
  v141 = sub_22C188(v35);

  v36 = sub_2C9040();
  v38 = HIBYTE(v37) & 0xF;
  v134 = v36;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v135 = v37;
  }

  else
  {

    v134 = 0;
    v135 = 0;
  }

  v39 = sub_2C8FB0();
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v124 = v39;
    v133 = v40;
  }

  else
  {

    v124 = 0;
    v133 = 0;
  }

  v139 = sub_2C8FD0();
  sub_2C9010();
  sub_2C9000();
  v140 = sub_22C3C8(v16);
  (*(v14 + 8))(v16, v13);
  v42 = sub_2C9020();
  v43 = sub_2C90B0();
  v45 = v44;
  v46 = (v44 >> 56) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v122 = v43;
  }

  else
  {

    v122 = 0;
    v45 = 0;
  }

  v47 = v4;
  v48 = sub_2C8FA0();
  LODWORD(v129) = sub_2C90D0();
  v49 = sub_2C90A0();
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {
    v121 = v49;
    v131 = v50;
  }

  else
  {

    v121 = 0;
    v131 = 0;
  }

  v52 = sub_2C9030();
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  v145 = v19;
  if (v54)
  {
    v120 = v52;
    v130 = v53;
  }

  else
  {

    v120 = 0;
    v130 = 0;
  }

  v55 = sub_2C8FE0();
  v57 = v56;
  v58 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v58 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {

    v55 = 0;
    v57 = 0;
  }

  v132 = v45;
  v144 = v23;
  v126 = v25;
  v119 = v55;
  if (v23)
  {
    v117 = v42;

    sub_2CB890();

    v59 = sub_2CB8B0();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v47, 1, v59) == 1)
    {
      sub_30B8(v47, &qword_355A58, &qword_2D7E88);
      goto LABEL_73;
    }

    v115[1] = v48;
    v61 = v118;
    sub_2CB880();
    (*(v60 + 8))(v47, v59);
    v62 = v147;
    (*(v147 + 4))(isa, v61, v5);
    v63 = v5;
    v64 = *(v62 + 13);
    v64(v123, enum case for PlaybackItem.ContentOrigin.device(_:), v63);
    sub_234704(&qword_355A68, &type metadata accessor for PlaybackItem.ContentOrigin, &protocol conformance descriptor for PlaybackItem.ContentOrigin);
    sub_2CE3E0();
    v118 = v63;
    sub_2CE3E0();
    if (v150 == v148 && v151 == v149)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_2CEEA0();
    }

    v66 = *(v147 + 1);
    v67 = v118;
    v147 = (v147 + 8);
    v66(v123, v118);

    if ((v65 & 1) == 0)
    {
      v68 = v116;
      v64(v116, enum case for PlaybackItem.ContentOrigin.sirisync(_:), v67);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v150 == v148 && v151 == v149)
      {
        v66(v68, v67);
      }

      else
      {
        v69 = sub_2CEEA0();
        v66(v68, v67);

        if ((v69 & 1) == 0)
        {
          v66(isa, v67);
          goto LABEL_73;
        }
      }
    }

    v70 = v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_B90C4(0, *(v70 + 2) + 1, 1, v70);
    }

    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    if (v72 >= v71 >> 1)
    {
      v70 = sub_B90C4((v71 > 1), v72 + 1, 1, v70);
    }

    (v66)(isa);
    *(v70 + 2) = v72 + 1;
    v73 = &v70[16 * v72];
    strcpy(v73 + 32, "SourceLibrary");
    *(v73 + 23) = -4864;
  }

LABEL_73:
  v74 = sub_2C8FC0();
  sub_22C6DC(v74);

  isa = sub_2CE480().super.super.isa;
  v139 = sub_2CE480().super.super.isa;
  v75.super.super.isa = sub_2CE480().super.super.isa;
  v147 = sub_2CE520().super.super.isa;
  v76 = sub_22C940();
  v78 = v77;
  if (v136)
  {
    v129 = sub_2CE260();

    if (v138)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v129 = 0;
    if (v138)
    {
LABEL_75:
      v138 = sub_2CE260();

      if (v135)
      {
        goto LABEL_76;
      }

LABEL_80:
      v137 = 0;
      if (v133)
      {
        goto LABEL_77;
      }

      goto LABEL_81;
    }
  }

  v138 = 0;
  if (!v135)
  {
    goto LABEL_80;
  }

LABEL_76:
  v137 = sub_2CE260();

  if (v133)
  {
LABEL_77:
    v136 = sub_2CE260();

    goto LABEL_82;
  }

LABEL_81:
  v136 = 0;
LABEL_82:
  if (v132)
  {
    v135 = sub_2CE260();
  }

  else
  {
    v135 = 0;
  }

  if (v131)
  {
    v79 = sub_2CE260();
  }

  else
  {
    v79 = 0;
  }

  if (v130)
  {
    v80 = sub_2CE260();

    if (v57)
    {
LABEL_90:
      v81 = sub_2CE260();

      goto LABEL_93;
    }
  }

  else
  {
    v80 = 0;
    if (v57)
    {
      goto LABEL_90;
    }
  }

  v81 = 0;
LABEL_93:
  v82.super.isa = sub_2CE400().super.isa;

  if (v78 >> 60 == 15)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_2C8DB0().super.isa;
    sub_5267C(v76, v78);
  }

  v133 = v83;
  v84 = objc_allocWithZone(INPrivateMediaItemValueData);
  sub_334A0(0, &qword_355A60, INMediaSubItem_ptr);
  v85 = sub_2CE400().super.isa;
  v134 = v85;

  v113 = v83;
  v114 = v85;
  v86 = v147;
  v112 = v82.super.isa;
  v110 = v80;
  v111 = v81;
  v108 = v75.super.super.isa;
  v109 = v79;
  v87 = v75.super.super.isa;
  v88 = v139;
  v89 = v84;
  v130 = v80;
  v90 = v129;
  v131 = v81;
  v91 = v138;
  v132 = v82.super.isa;
  v93 = v136;
  v92 = v137;
  v94 = v79;
  v95 = isa;
  v96 = v135;
  v140 = [v89 initWithRecommendationId:v129 assetInfo:v138 sharedUserIdFromPlayableMusicAccount:v137 punchoutURI:v136 requiresSubscription:isa provider:v135 isAvailable:v139 isHardBan:v108 bundleId:v109 universalResourceLink:v110 providerAppName:v111 internalSignals:v112 ampConfidenceScore:v147 ampConfidenceLevel:v140 pegasusMetaData:v113 mediaSubItems:v114];

  v97 = v140;
  if (v144)
  {
    v98 = v140;
    v99 = sub_2CE260();
  }

  else
  {
    v100 = v140;
    v99 = 0;
  }

  v101 = v145;
  if (!v143)
  {
    v102 = 0;
    if (v145)
    {
      goto LABEL_101;
    }

LABEL_103:
    v103 = 0;
    goto LABEL_104;
  }

  v102 = sub_2CE260();

  if (!v101)
  {
    goto LABEL_103;
  }

LABEL_101:
  v103 = sub_2CE260();

LABEL_104:
  v104 = objc_allocWithZone(INMediaItem);
  v105 = v141;
  v106 = [v104 initWithIdentifier:v99 title:v102 type:v146 artwork:v141 artist:v103 topics:0 namedEntities:0 privateMediaItemValueData:v97];

  return v106;
}

id sub_22D99C()
{
  v0 = sub_2CE000();
  v46 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v40 - v3;
  v5 = sub_2C9120();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = (&v40 - v8);
  v47 = sub_2C90E0();
  v10 = *(v47 - 8);
  v11 = __chkstk_darwin(v47);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  sub_2CDA80();
  sub_2C9050();
  v16 = (*(v6 + 88))(v9, v5);
  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.UNRECOGNIZED(_:))
  {
    (*(v6 + 96))(v9, v5);
    v17 = *v9;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    v19 = v46;
    (*(v46 + 16))(v4, v18, v0);
    v20 = sub_2CDFE0();
    v21 = sub_2CE690();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v47;
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v17;
      _os_log_impl(&dword_0, v20, v21, "ConverterHelpers#convertAudioItems unrecognized AudioItemType: %ld", v24, 0xCu);
    }

    (*(v19 + 8))(v4, v0);
    v25 = sub_22CC18(v15, 0);
    (*(v10 + 8))(v15, v23);
    return v25;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.song(_:))
  {
    v26 = v15;
    v27 = 1;
LABEL_27:
    v25 = sub_22CC18(v26, v27);
    (*(v10 + 8))(v15, v47);
    return v25;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.album(_:))
  {
    v26 = v15;
    v27 = 2;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.artist(_:))
  {
    v26 = v15;
    v27 = 3;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.genre(_:))
  {
    v26 = v15;
    v27 = 4;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.playlist(_:))
  {
    v26 = v15;
    v27 = 5;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastShow(_:))
  {
    v26 = v15;
    v27 = 6;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastEpisode(_:))
  {
    v26 = v15;
    v27 = 7;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.audioBook(_:))
  {
    v26 = v15;
    v27 = 10;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastStation(_:))
  {
    v26 = v15;
    v27 = 15;
    goto LABEL_27;
  }

  if (v16 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.radioStation(_:))
  {
    v26 = v15;
    v27 = 16;
    goto LABEL_27;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v46 + 16))(v45, v29, v0);
  (*(v10 + 16))(v13, v15, v47);
  v30 = sub_2CDFE0();
  v44 = sub_2CE690();
  if (os_log_type_enabled(v30, v44))
  {
    v31 = swift_slowAlloc();
    v41 = v31;
    v43 = swift_slowAlloc();
    v48 = v43;
    *v31 = 136315138;
    v42 = v30;
    sub_2C9050();
    v40 = sub_2CE2A0();
    v33 = v32;
    v34 = *(v10 + 8);
    v34(v13, v47);
    v35 = sub_3F08(v40, v33, &v48);

    v36 = v41;
    *(v41 + 1) = v35;
    v37 = v42;
    _os_log_impl(&dword_0, v42, v44, "ConverterHelpers#convertAudioItems unrecognized AudioItemType type: %s", v36, 0xCu);
    sub_306C(v43);

    (*(v46 + 8))(v45, v0);
    v38 = v47;
  }

  else
  {

    v34 = *(v10 + 8);
    v39 = v47;
    v34(v13, v47);
    (*(v46 + 8))(v45, v0);
    v38 = v39;
  }

  v25 = sub_22CC18(v15, 0);
  v34(v15, v38);
  (*(v6 + 8))(v9, v5);
  return v25;
}

void *sub_22E0F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_2CECD0();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_22D99C();

      sub_2CE3F0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2CE430();
      }

      sub_2CE460();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_22E23C(uint64_t a1)
{
  v144 = sub_2C9260();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_2C9D60();
  v139 = *(v149 - 8);
  v3 = __chkstk_darwin(v149);
  v135 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v138 = &v135 - v6;
  __chkstk_darwin(v5);
  v147 = &v135 - v7;
  v148 = sub_2C9D80();
  v151 = *(v148 - 1);
  v8 = __chkstk_darwin(v148);
  v137 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v135 - v10;
  v12 = sub_2C91E0();
  v141 = *(v12 - 8);
  __chkstk_darwin(v12);
  v140 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v156 = v14;
  v157 = v15;
  v16 = __chkstk_darwin(v14);
  v155 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v145 = &v135 - v19;
  v20 = __chkstk_darwin(v18);
  v146 = &v135 - v21;
  v22 = __chkstk_darwin(v20);
  v136 = &v135 - v23;
  __chkstk_darwin(v22);
  v153 = (&v135 - v24);
  v25 = sub_20410(&qword_355A50, &qword_2D7E80);
  __chkstk_darwin(v25 - 8);
  v27 = &v135 - v26;
  v28 = sub_2C9200();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v135 - v33;
  sub_2CDB20();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_30B8(v27, &qword_355A50, &qword_2D7E80);
    v35 = sub_2CB460();
    v37 = v155;
    v36 = v156;
    if (v35)
    {
      v38 = v35;
      v150 = a1;
      sub_2CB100();
      sub_2CA3A0();

      isa = sub_2C9D50();
      v40 = v151 + 8;
      v39 = *(v151 + 1);
      v42 = v41;
      v39(v11, v148);
      if (v42)
      {
        v141 = v38;
        v145 = v42;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v151 = v40;
        v43 = sub_3ED0(v36, static Logger.default);
        swift_beginAccess();
        v44 = v136;
        v154 = *(v157 + 16);
        v154(v136, v43, v36);
        v45 = sub_2CDFE0();
        v46 = sub_2CE680();
        v47 = os_log_type_enabled(v45, v46);
        v48 = v146;
        if (v47)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_0, v45, v46, "ConverterHelpers#convertPrivateMediaIntentData AudioExperience.multiuserContext missing. Fetching multi user info from SiriEnvironment", v49, 2u);
        }

        v50 = v156;
        v52 = (v157 + 8);
        v51 = *(v157 + 8);
        v51(v44, v156);
        sub_2CB100();
        v53 = v137;
        sub_2CA3A0();

        v54 = v147;
        sub_2C9D70();
        v39(v53, v148);
        v154(v48, v43, v50);
        v55 = v139;
        v56 = v138;
        v57 = v149;
        v151 = *(v139 + 16);
        (v151)(v138, v54, v149);
        v58 = v145;

        v59 = sub_2CDFE0();
        v60 = sub_2CE670();

        v61 = os_log_type_enabled(v59, v60);
        v153 = v51;
        if (v61)
        {
          v62 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v158[0] = v137;
          *v62 = 136315394;
          v140 = v52;
          *(v62 + 4) = sub_3F08(isa, v58, v158);
          *(v62 + 12) = 2080;
          (v151)(v135, v56, v149);
          v63 = sub_2CE2A0();
          v64 = v56;
          v66 = v65;
          v67 = *(v55 + 8);
          v68 = v58;
          v148 = v67;
          v67(v64, v149);
          v69 = sub_3F08(v63, v66, v158);
          v57 = v149;

          *(v62 + 14) = v69;
          _os_log_impl(&dword_0, v59, v60, "ConverterHelpers#convertPrivateMediaIntentData SiriEnvironment sharedUserID: %s, confidence: %s", v62, 0x16u);
          swift_arrayDestroy();

          v153(v146, v156);
        }

        else
        {

          v96 = *(v55 + 8);
          v68 = v58;
          v148 = v96;
          v96(v56, v57);
          v51(v146, v156);
        }

        v159 = v57;
        v160 = &protocol witness table for IdentifiedUser.Classification;
        v97 = sub_F390(v158);
        v98 = v147;
        (v151)(v97, v147, v57);
        v99 = sub_2CEA10();
        sub_306C(v158);
        v100 = objc_allocWithZone(INSpeakerIDInfo);
        v101 = sub_2CE260();
        v90 = [v100 initWithSharedUserID:v101 speakerIDConfidence:v99];

        v148(v98, v57);
        v37 = v155;
        v36 = v156;
        v88 = v68;
        goto LABEL_24;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v91 = sub_3ED0(v36, static Logger.default);
    swift_beginAccess();
    v92 = v145;
    v154 = *(v157 + 16);
    v154(v145, v91, v36);
    v93 = sub_2CDFE0();
    v94 = sub_2CE680();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "ConverterHelpers#convertPrivateMediaIntentData AudioExperience.multiuserContext missing and we don't have SiriEnvironment sharedUserId. There will be no speakerIDInfo for this request", v95, 2u);
    }

    v153 = *(v157 + 8);
    v153(v92, v36);
    v88 = 0;
    v90 = 0;
  }

  else
  {
    (*(v29 + 32))(v34, v27, v28);
    isa = sub_2C91C0();
    v71 = v70;
    v148 = v12;
    v159 = v12;
    v160 = &protocol witness table for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification;
    sub_F390(v158);
    sub_2C91F0();
    v149 = sub_2CEA10();
    sub_306C(v158);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v150 = a1;
    v36 = v156;
    v72 = sub_3ED0(v156, static Logger.default);
    swift_beginAccess();
    v73 = v153;
    v154 = *(v157 + 16);
    v154(v153, v72, v36);
    v74 = *(v29 + 16);
    v151 = v34;
    v74(v32, v34, v28);

    v75 = v71;
    v76 = sub_2CDFE0();
    v77 = sub_2CE670();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v162 = v79;
      *v78 = 136315650;
      *(v78 + 4) = sub_3F08(isa, v75, &v162);
      *(v78 + 12) = 2048;
      v80 = v140;
      v145 = v75;
      sub_2C91F0();
      v81 = sub_2C91D0();
      (*(v141 + 8))(v80, v148);
      v82 = *(v29 + 8);
      v82(v32, v28);
      *(v78 + 14) = v81;
      v75 = v145;
      *(v78 + 22) = 2048;
      v83 = v149;
      *(v78 + 24) = v149;
      _os_log_impl(&dword_0, v76, v77, "ConverterHelpers#convertPrivateMediaIntentData AudioExperience.multiuserContext sharedUserID: %s, userIdentificationClassification: %ld, speakerIDConfidence: %ld", v78, 0x20u);
      sub_306C(v79);
      v36 = v156;

      v84 = v153;
      v153 = *(v157 + 8);
      v153(v84, v36);
    }

    else
    {
      v85 = *(v29 + 8);
      v85(v32, v28);

      v86 = v73;
      v82 = v85;
      v153 = *(v157 + 8);
      v153(v86, v36);
      v83 = v149;
    }

    v87 = objc_allocWithZone(INSpeakerIDInfo);
    v88 = v75;
    v89 = sub_2CE260();
    v90 = [v87 initWithSharedUserID:v89 speakerIDConfidence:v83];

    v82(v151, v28);
    v37 = v155;
  }

LABEL_24:
  if (sub_2CDB40() || v102 != 0xE000000000000000)
  {
    v105 = sub_2CEEA0();

    v103 = 0;
    v104 = v90;
    if ((v105 & 1) == 0)
    {
      sub_2CDB40();
      v106 = v142;
      sub_2CDB30();
      sub_2C9250();
      (*(v143 + 8))(v106, v144);
      v107 = objc_allocWithZone(INAppIdentifier);
      v108 = sub_2CE260();
      v37 = v155;

      v109 = sub_2CE260();
      v104 = v90;

      v103 = [v107 initWithBundleIdentifier:v108 bundleVersion:0 appName:v109];
    }
  }

  else
  {

    v103 = 0;
    v104 = v90;
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v110.super.super.isa = sub_2CEAF0(1.0).super.super.isa;
  v111.super.super.isa = sub_2CEAF0(1.0).super.super.isa;
  v112 = v104;
  v113 = v103;
  v114 = v110.super.super.isa;
  v115 = v111.super.super.isa;
  if (v88)
  {
    v116 = sub_2CE260();
  }

  else
  {
    v116 = 0;
  }

  v117 = [objc_allocWithZone(INPrivateMediaIntentData) initWithSpeakerIDInfo:v104 proxiedThirdPartyAppInfo:v103 isAppAttributionRequired:0 useDialogMemoryForAttribution:0 isAppCorrection:0 fallbackUsername:0 wholeHouseAudioMetadata:0 nlConfidenceScore:v110.super.super.isa nlConfidenceLevel:0 asrConfidenceScore:v111.super.super.isa asrConfidenceLevel:0 resolvedSharedUserID:v116 homeAutomationEntityProvider:0];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v118 = sub_3ED0(v36, static Logger.default);
  swift_beginAccess();
  v154(v37, v118, v36);
  v119 = v117;
  v120 = sub_2CDFE0();
  v121 = sub_2CE690();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v154 = v103;
    v124 = v123;
    v161 = v123;
    *v122 = 136315138;
    v125 = v119;
    isa = v110.super.super.isa;
    v126 = v125;
    v127 = [v125 description];
    v128 = sub_2CE270();
    v151 = v104;
    v130 = v129;

    v131 = sub_3F08(v128, v130, &v161);

    *(v122 + 4) = v131;
    _os_log_impl(&dword_0, v120, v121, "ConverterHelpers#convertPrivateMediaIntentData privateMediaData: %s", v122, 0xCu);
    sub_306C(v124);

    v132 = v156;
    v133 = v155;
  }

  else
  {

    v133 = v37;
    v132 = v36;
  }

  v153(v133, v132);
  return v119;
}

uint64_t sub_22F4A0(uint64_t a1)
{
  v2 = sub_2CE000();
  v30 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = sub_20410(&qword_353C88, &unk_2D6070);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_2C9240();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, v8, &qword_353C88, &unk_2D6070);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_30B8(v8, &qword_353C88, &unk_2D6070);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_234704(&qword_355A48, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);
  v13 = sub_2CDA00();
  v16 = v15;
  v17 = v13;
  v18 = v30;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v18 + 16))(v5, v19, v2);
  sub_525D4(v17, v16);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (!os_log_type_enabled(v20, v21))
  {

    sub_52628(v17, v16);
LABEL_18:
    (*(v18 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    return v17;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v22 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v23 = v17;
    if (v22 != 2)
    {
      v24 = 0;
      goto LABEL_17;
    }

    v26 = *(v17 + 16);
    v25 = *(v17 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    v23 = v17;
    if (!v22)
    {
      v24 = BYTE6(v16);
LABEL_17:
      *(result + 4) = v24;
      v28 = result;
      sub_52628(v23, v16);
      _os_log_impl(&dword_0, v20, v21, "ConverterHelpers#audioIntentDetails: len=%ld", v28, 0xCu);

      v18 = v30;
      goto LABEL_18;
    }
  }

  LODWORD(v24) = HIDWORD(v23) - v23;
  if (!__OFSUB__(HIDWORD(v23), v23))
  {
    v24 = v24;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_22F9F8(uint64_t a1)
{
  v52 = a1;
  v1 = sub_2C92A0();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_353C88, &unk_2D6070);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = sub_2CDBD0();
  sub_22E0F0(v14);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v16 = *(v8 + 16);
  v56 = v8 + 16;
  v57 = v15;
  v55 = v16;
  v16(v13, v15, v7);

  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  v19 = os_log_type_enabled(v17, v18);
  v60 = v11;
  v61 = v8;
  v59 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v62 = v21;
    *v20 = 136315138;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v22 = sub_2CE420();
    v24 = sub_3F08(v22, v23, &v62);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v17, v18, "ConverterHelpers#convertPrivateSearchForMediaIntentData audioSearchResults: %s", v20, 0xCu);
    sub_306C(v21);
    v7 = v59;

    v58 = *(v61 + 8);
  }

  else
  {

    v58 = *(v8 + 8);
  }

  v58(v13, v7);
  v25 = v52;
  v62 = sub_2CDB00();
  sub_80D34(&off_32F4E0);
  v26 = sub_22E23C(v25);
  sub_2CDB50();
  sub_2C9290();
  (*(v53 + 8))(v3, v54);
  v27 = sub_2C9240();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  v28 = sub_22F4A0(v6);
  v30 = v29;
  sub_30B8(v6, &qword_353C88, &unk_2D6070);
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v31.super.isa = sub_2CE400().super.isa;

  v32.super.isa = sub_2CE400().super.isa;

  isa = 0;
  if (v30 >> 60 != 15)
  {
    isa = sub_2C8DB0().super.isa;
    sub_5267C(v28, v30);
  }

  v34 = [objc_allocWithZone(INPrivateSearchForMediaIntentData) initWithPrivateMediaIntentData:v26 audioSearchResults:v31.super.isa internalSignals:v32.super.isa appInferred:0 pegasusMetaData:isa];

  v35 = v60;
  v55(v60, v57, v7);
  v36 = v34;
  v37 = v7;
  v38 = v36;
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v62 = v42;
    *v41 = 136315138;
    v43 = v38;
    v44 = [v43 description];
    v45 = sub_2CE270();
    v47 = v46;

    v48 = sub_3F08(v45, v47, &v62);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_0, v39, v40, "ConverterHelpers#convertPrivateSearchForMediaIntentData privateSearchForMediaIntentData: %s", v41, 0xCu);
    sub_306C(v42);

    v49 = v60;
    v50 = v59;
  }

  else
  {

    v49 = v35;
    v50 = v37;
  }

  v58(v49, v50);
  return v38;
}

uint64_t sub_230064()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C92C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2C91A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CDB10();
  sub_2C9190();
  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.UNRECOGNIZED(_:))
  {
    (*(v5 + 96))(v7, v4);
    v13 = *v7;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v14, v0);
    v15 = sub_2CDFE0();
    v16 = sub_2CE690();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v13;
      _os_log_impl(&dword_0, v15, v16, "ConverterHelpers#convertPlaybackQueueLocation unrecognized playbackQueueLocation: %ld", v17, 0xCu);
    }

    (*(v1 + 8))(v3, v0);
    return 1;
  }

  if (v12 == enum case for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.next(_:))
  {
    return 2;
  }

  if (v12 != enum case for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.later(_:))
  {
    (*(v5 + 8))(v7, v4);
    return 1;
  }

  return 3;
}

id sub_2303EC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  v63 = sub_2CE000();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2C92A0();
  v7 = *(v60 - 1);
  __chkstk_darwin(v60);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_353C88, &unk_2D6070);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_2C91A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22E0F0(a2);
  if (v5 == 2)
  {
    sub_2CDB70();
  }

  isa = sub_2CE480().super.super.isa;
  sub_2CDB10();
  sub_2C9130();
  v17 = *(v14 + 8);
  v17(v16, v13);
  v18.super.super.isa = sub_2CE480().super.super.isa;
  sub_2CDB10();
  sub_2C9170();
  v17(v16, v13);
  v19.super.super.isa = sub_2CE480().super.super.isa;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v20.super.super.isa = sub_2CEB00(0).super.super.isa;
  v21 = sub_2CDB00();
  strcpy(v68, "PommesResponse");
  v68[15] = -18;
  __chkstk_darwin(v21);
  *(&v57 + 1) = v68;
  if ((sub_13964(sub_13A68, &v56 + 8, v21) & 1) == 0)
  {
    *v68 = v21;
    sub_80D34(&off_32F540);
  }

  v22 = v63;
  v23 = sub_22E23C(a1);
  isa = isa;
  v65 = v23;
  v24 = v18.super.super.isa;
  v25 = v19.super.super.isa;
  v64 = v20.super.super.isa;
  sub_2CDB50();
  sub_2C9290();
  (*(v7 + 8))(v9, v60);
  v26 = sub_2C9240();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  v27 = sub_22F4A0(v12);
  v29 = v28;
  sub_30B8(v12, &qword_353C88, &unk_2D6070);
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v30.super.isa = sub_2CE400().super.isa;

  v31.super.isa = sub_2CE400().super.isa;

  v32 = 0;
  if (v29 >> 60 != 15)
  {
    v32 = sub_2C8DB0().super.isa;
    sub_5267C(v27, v29);
  }

  v33 = objc_allocWithZone(INPrivatePlayMediaIntentData);
  v34 = v64;
  v36 = v65;
  v35 = isa;
  v37 = [v33 initWithAppSelectionEnabled:0 appInferred:isa audioSearchResults:v30.super.isa privateMediaIntentData:v65 appSelectionSignalsEnabled:0 appSelectionSignalsFrequencyDenominator:0 shouldSuppressCommonWholeHouseAudioRoutes:0 immediatelyStartPlayback:v24 isAmbiguousPlay:v25 isPersonalizedRequest:v64 internalSignals:v31.super.isa entityConfidenceSignalsEnabled:0 entityConfidenceSignalsFrequencyDenominatorInternal:0 entityConfidenceSignalsFrequencyDenominatorProd:0 entityConfidenceSignalsMaxItemsToDisambiguate:0 alternativeProviderBundleIdentifier:0 ampPAFDataSetID:v32 pegasusMetaData:?];

  v38 = v61;
  v39 = v62;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  (*(v38 + 16))(v39, v40, v22);
  v41 = v37;
  v42 = sub_2CDFE0();
  v43 = sub_2CE690();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v60 = v24;
    v46 = v38;
    v47 = v45;
    v67 = v45;
    *v44 = 136315138;
    v48 = v41;
    v49 = [v48 description];
    v59 = v25;
    v50 = v49;
    v51 = sub_2CE270();
    v53 = v52;

    v54 = sub_3F08(v51, v53, &v67);

    *(v44 + 4) = v54;
    _os_log_impl(&dword_0, v42, v43, "ConverterHelpers#convertPrivatePlayMediaIntentData privatePlayData: %s", v44, 0xCu);
    sub_306C(v47);

    (*(v46 + 8))(v62, v63);
  }

  else
  {

    (*(v38 + 8))(v39, v22);
  }

  return v41;
}

id sub_230B38(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v49 = a4;
  v45 = a3;
  v46 = a1;
  v5 = sub_2C8E80();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v47 = *(v8 + 16);
  v47(v12, v14, v7);

  v15 = sub_2CDFE0();
  v16 = sub_2CE690();

  v17 = os_log_type_enabled(v15, v16);
  v51 = v13;
  if (!v17)
  {

    v48 = *(v8 + 8);
    v48(v12, v7);
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = swift_slowAlloc();
  v41 = v8;
  v19 = v18;
  v20 = swift_slowAlloc();
  v53 = v20;
  *v19 = 136315138;
  *(v19 + 4) = sub_3F08(v46, a2, &v53);
  _os_log_impl(&dword_0, v15, v16, "ConverterHelpers#convertIntentMetadata Setting launchId to: %s", v19, 0xCu);
  sub_306C(v20);
  v13 = v51;

  v21 = v41;

  v48 = *(v21 + 8);
  v48(v12, v7);
  if (v13)
  {
LABEL_7:
    v22 = v13;
    v23 = sub_2CE260();
    [v22 setLaunchId:v23];

    v24 = v22;
    v25 = v42;
    sub_2C8E70();
    sub_2C8E50();
    (*(v43 + 8))(v25, v44);
    v26 = sub_2CE260();
    v13 = v51;

    [v24 setIntentId:v26];
  }

LABEL_8:
  if (v49)
  {
    v27 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v27 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v27 && v13)
    {
      v28 = v13;
      v29 = sub_2CE260();
      [v28 setSystemExtensionBundleId:v29];
    }
  }

  v30 = v50;
  v47(v50, v14, v7);
  v31 = v13;
  v32 = sub_2CDFE0();
  v33 = sub_2CE690();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v13;
    v53 = v35;
    *v34 = 136315138;
    v36 = v31;
    sub_20410(&qword_355A90, &qword_2D7E98);
    v37 = sub_2CE2A0();
    v39 = sub_3F08(v37, v38, &v53);
    v13 = v51;

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v32, v33, "ConverterHelpers#convertIntentMetadata intentMetadata: %s", v34, 0xCu);
    sub_306C(v35);
  }

  v48(v30, v7);
  return v13;
}

id sub_2310A0(uint64_t a1)
{
  v163 = sub_2CD540();
  v165 = *(v163 - 8);
  __chkstk_darwin(v163);
  v151 = &v149 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v3 = __chkstk_darwin(v162);
  v153 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v167 = &v149 - v5;
  v6 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v7 = __chkstk_darwin(v6 - 8);
  v150 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v152 = &v149 - v10;
  v11 = __chkstk_darwin(v9);
  v157 = &v149 - v12;
  v13 = __chkstk_darwin(v11);
  v155 = &v149 - v14;
  v15 = __chkstk_darwin(v13);
  v159 = &v149 - v16;
  __chkstk_darwin(v15);
  v160 = &v149 - v17;
  v168 = sub_2CD500();
  v166 = *(v168 - 1);
  __chkstk_darwin(v168);
  v158 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v169 = *(v19 - 8);
  v170 = v19;
  v20 = __chkstk_darwin(v19);
  v154 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v161 = &v149 - v23;
  __chkstk_darwin(v22);
  v164 = &v149 - v24;
  v25 = sub_2CD4A0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v156 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20410(&qword_34D690, &qword_2D1590);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v31 = &v149 - v30;
  v32 = sub_20410(&qword_34D698, &qword_2D1598);
  v33 = __chkstk_darwin(v32 - 8);
  v35 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v149 - v37;
  __chkstk_darwin(v36);
  v40 = &v149 - v39;
  v171 = a1;
  sub_2CD6A0();
  (*(v26 + 104))(v38, enum case for CommonAudio.Noun.library(_:), v25);
  (*(v26 + 56))(v38, 0, 1, v25);
  v41 = *(v29 + 56);
  sub_F3F4(v40, v31, &qword_34D698, &qword_2D1598);
  sub_F3F4(v38, &v31[v41], &qword_34D698, &qword_2D1598);
  v42 = *(v26 + 48);
  if (v42(v31, 1, v25) != 1)
  {
    sub_F3F4(v31, v35, &qword_34D698, &qword_2D1598);
    if (v42(&v31[v41], 1, v25) != 1)
    {
      v66 = &v31[v41];
      v67 = v156;
      (*(v26 + 32))(v156, v66, v25);
      sub_234704(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun, &protocol conformance descriptor for CommonAudio.Noun);
      v68 = sub_2CE250();
      v69 = *(v26 + 8);
      v69(v67, v25);
      sub_30B8(v38, &qword_34D698, &qword_2D1598);
      sub_30B8(v40, &qword_34D698, &qword_2D1598);
      v69(v35, v25);
      sub_30B8(v31, &qword_34D698, &qword_2D1598);
      v43 = v168;
      if (v68)
      {
        goto LABEL_14;
      }

LABEL_7:
      v173 = v171;
      sub_20410(&qword_34D6D8, &qword_2D15D0);
      v44 = v166;
      v45 = *(v166 + 72);
      v46 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_2D10E0;
      v48 = v47 + v46;
      v49 = enum case for CommonAudio.Attribute.fromArtist(_:);
      v50 = *(v44 + 104);
      v50(v47 + v46, enum case for CommonAudio.Attribute.fromArtist(_:), v43);
      v51 = enum case for CommonAudio.Attribute.fromAlbum(_:);
      v50(v48 + v45, enum case for CommonAudio.Attribute.fromAlbum(_:), v43);
      v50(v48 + 2 * v45, enum case for CommonAudio.Attribute.fromSong(_:), v43);
      sub_186A50(v47);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2CD700();
      LOBYTE(v47) = sub_2CD950();

      if (v47)
      {
        v52 = v171;
        v173 = v171;
        v53 = v158;
        v50(v158, v49, v43);
        v54 = sub_2CD910();
        v55 = *(v44 + 8);
        v55(v53, v43);
        if (v54)
        {
          v56 = 3;
        }

        else
        {
          v173 = v52;
          v50(v53, v51, v43);
          v88 = sub_2CD910();
          v55(v53, v43);
          if (v88)
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }
        }

        v89 = v169;
        v90 = v161;
        v91 = objc_allocWithZone(INMediaItem);
        v92 = sub_2CE260();
        v93 = [v91 initWithIdentifier:v92 title:0 type:v56 artwork:0];

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v94 = v170;
        v95 = sub_3ED0(v170, static Logger.default);
        swift_beginAccess();
        (*(v89 + 16))(v90, v95, v94);
        v77 = v93;
        v96 = sub_2CDFE0();
        v97 = sub_2CE690();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = v89;
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v172 = v100;
          *v99 = 136315138;
          v101 = v77;
          v102 = [v101 description];
          v103 = sub_2CE270();
          v105 = v104;

          v106 = sub_3F08(v103, v105, &v172);

          *(v99 + 4) = v106;
          _os_log_impl(&dword_0, v96, v97, "ConverterHelpers#convertMediaContainer intent has fromArtist, fromAlbum or fromSong item: %s", v99, 0xCu);
          sub_306C(v100);

          (*(v98 + 8))(v161, v170);
          return v77;
        }

LABEL_54:

        (*(v89 + 8))(v90, v170);
        return v77;
      }

      v57 = v160;
      sub_2CD6F0();
      v58 = v165;
      v59 = v159;
      v60 = v163;
      v168 = *(v165 + 104);
      (v168)(v159, enum case for CommonAudio.MediaType.podcast(_:), v163);
      v166 = *(v58 + 56);
      (v166)(v59, 0, 1, v60);
      v61 = *(v162 + 48);
      v62 = v167;
      sub_F3F4(v57, v167, &qword_34D6D0, qword_2D34A0);
      v63 = v62;
      sub_F3F4(v59, v62 + v61, &qword_34D6D0, qword_2D34A0);
      v64 = *(v58 + 48);
      if (v64(v63, 1, v60) == 1)
      {
        sub_30B8(v59, &qword_34D6D0, qword_2D34A0);
        v65 = v167;
        sub_30B8(v57, &qword_34D6D0, qword_2D34A0);
        if (v64(v65 + v61, 1, v60) == 1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v107 = v155;
        sub_F3F4(v63, v155, &qword_34D6D0, qword_2D34A0);
        if (v64(v63 + v61, 1, v60) != 1)
        {
          v115 = v165;
          v116 = v63 + v61;
          v117 = v151;
          (*(v165 + 32))(v151, v116, v60);
          sub_234704(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
          v118 = sub_2CE250();
          v119 = *(v115 + 8);
          v119(v117, v60);
          sub_30B8(v159, &qword_34D6D0, qword_2D34A0);
          sub_30B8(v160, &qword_34D6D0, qword_2D34A0);
          v119(v155, v60);
          sub_30B8(v167, &qword_34D6D0, qword_2D34A0);
          if (v118)
          {
            goto LABEL_39;
          }

          goto LABEL_29;
        }

        sub_30B8(v159, &qword_34D6D0, qword_2D34A0);
        v65 = v167;
        sub_30B8(v160, &qword_34D6D0, qword_2D34A0);
        (*(v165 + 8))(v107, v60);
      }

      sub_30B8(v65, &qword_34D6A8, &unk_2D15A0);
LABEL_29:
      v108 = v157;
      sub_2CD6F0();
      v109 = v152;
      v110 = v163;
      (v168)(v152, enum case for CommonAudio.MediaType.podcastStation(_:), v163);
      v111 = v110;
      (v166)(v109, 0, 1, v110);
      v112 = *(v162 + 48);
      v113 = v153;
      sub_F3F4(v108, v153, &qword_34D6D0, qword_2D34A0);
      sub_F3F4(v109, v113 + v112, &qword_34D6D0, qword_2D34A0);
      if (v64(v113, 1, v110) == 1)
      {
        sub_30B8(v109, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v108, &qword_34D6D0, qword_2D34A0);
        if (v64(v113 + v112, 1, v110) == 1)
        {
          v65 = v113;
LABEL_32:
          sub_30B8(v65, &qword_34D6D0, qword_2D34A0);
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      v114 = v150;
      sub_F3F4(v113, v150, &qword_34D6D0, qword_2D34A0);
      if (v64(v113 + v112, 1, v110) == 1)
      {
        sub_30B8(v109, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v157, &qword_34D6D0, qword_2D34A0);
        (*(v165 + 8))(v114, v110);
LABEL_35:
        sub_30B8(v113, &qword_34D6A8, &unk_2D15A0);
        return 0;
      }

      v120 = v165;
      v121 = v113 + v112;
      v122 = v151;
      (*(v165 + 32))(v151, v121, v110);
      sub_234704(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v123 = sub_2CE250();
      v124 = *(v120 + 8);
      v124(v122, v111);
      sub_30B8(v109, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v157, &qword_34D6D0, qword_2D34A0);
      v124(v114, v111);
      sub_30B8(v113, &qword_34D6D0, qword_2D34A0);
      if ((v123 & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v125 = sub_2CD5F0();
      if (v125[2])
      {
        v126 = v125[4];
        v127 = v125[5];

        v128 = HIBYTE(v127) & 0xF;
        if ((v127 & 0x2000000000000000) == 0)
        {
          v128 = v126 & 0xFFFFFFFFFFFFLL;
        }

        v89 = v169;
        v90 = v154;
        if (v128)
        {
          v129 = sub_2CD5F0();
          if (!v129[2])
          {
            goto LABEL_55;
          }

          goto LABEL_47;
        }
      }

      else
      {

        v89 = v169;
        v90 = v154;
      }

      v129 = sub_2CD6E0();
      if (!v129[2])
      {
LABEL_55:

        return 0;
      }

LABEL_47:
      v131 = v129[4];
      v130 = v129[5];
      swift_bridgeObjectRetain_n();

      v132 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v132 = v131 & 0xFFFFFFFFFFFFLL;
      }

      if (v132)
      {
        v133 = objc_allocWithZone(INMediaItem);
        v134 = sub_2CE260();

        v135 = [v133 initWithIdentifier:0 title:v134 type:0 artwork:0];

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v136 = v170;
        v137 = sub_3ED0(v170, static Logger.default);
        swift_beginAccess();
        (*(v89 + 16))(v90, v137, v136);
        v77 = v135;
        v96 = sub_2CDFE0();
        v138 = sub_2CE690();

        if (os_log_type_enabled(v96, v138))
        {
          v139 = v89;
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v172 = v141;
          *v140 = 136315138;
          v142 = v77;
          v143 = [v142 description];
          v144 = sub_2CE270();
          v146 = v145;

          v147 = sub_3F08(v144, v146, &v172);

          *(v140 + 4) = v147;
          _os_log_impl(&dword_0, v96, v138, "ConverterHelpers#convertMediaContainer intent has podcast or podcast station with not empty title item: %s", v140, 0xCu);
          sub_306C(v141);

          (*(v139 + 8))(v154, v170);
          return v77;
        }

        goto LABEL_54;
      }

      goto LABEL_55;
    }

    sub_30B8(v38, &qword_34D698, &qword_2D1598);
    sub_30B8(v40, &qword_34D698, &qword_2D1598);
    (*(v26 + 8))(v35, v25);
LABEL_6:
    sub_30B8(v31, &qword_34D690, &qword_2D1590);
    v43 = v168;
    goto LABEL_7;
  }

  sub_30B8(v38, &qword_34D698, &qword_2D1598);
  sub_30B8(v40, &qword_34D698, &qword_2D1598);
  if (v42(&v31[v41], 1, v25) != 1)
  {
    goto LABEL_6;
  }

  sub_30B8(v31, &qword_34D698, &qword_2D1598);
LABEL_14:
  v70 = objc_allocWithZone(INMediaItem);
  v71 = sub_2CE260();
  v72 = [v70 initWithIdentifier:v71 title:0 type:0 artwork:0];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v73 = v170;
  v74 = sub_3ED0(v170, static Logger.default);
  swift_beginAccess();
  v75 = v169;
  v76 = v164;
  (*(v169 + 16))(v164, v74, v73);
  v77 = v72;
  v78 = sub_2CDFE0();
  v79 = sub_2CE690();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v172 = v81;
    *v80 = 136315138;
    v82 = v77;
    v83 = [v82 description];
    v84 = sub_2CE270();
    v86 = v85;

    v87 = sub_3F08(v84, v86, &v172);

    *(v80 + 4) = v87;
    _os_log_impl(&dword_0, v78, v79, "ConverterHelpers#convertMediaContainer library noun found item: %s", v80, 0xCu);
    sub_306C(v81);

    (*(v75 + 8))(v164, v170);
  }

  else
  {

    (*(v75 + 8))(v76, v170);
  }

  return v77;
}

id sub_232644(uint64_t a1)
{
  v37 = sub_2CE000();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2C92A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_353C88, &unk_2D6070);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_2CDBD0();
  sub_22E0F0(v10);

  v41[1] = sub_2CDB00();
  sub_80D34(&off_32F5A0);
  v40 = sub_22E23C(a1);
  sub_2CDB50();
  sub_2C9290();
  (*(v4 + 8))(v6, v3);
  v11 = sub_2C9240();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = sub_22F4A0(v9);
  v14 = v13;
  sub_30B8(v9, &qword_353C88, &unk_2D6070);
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v15.super.isa = sub_2CE400().super.isa;

  v16.super.isa = sub_2CE400().super.isa;

  isa = 0;
  if (v14 >> 60 != 15)
  {
    isa = sub_2C8DB0().super.isa;
    sub_5267C(v12, v14);
  }

  v18 = objc_allocWithZone(INPrivateAddMediaIntentData);
  v19 = v40;
  v20 = [v18 initWithPrivateMediaIntentData:v40 audioSearchResults:v15.super.isa internalSignals:v16.super.isa pegasusMetaData:isa];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = v37;
  v22 = sub_3ED0(v37, static Logger.default);
  swift_beginAccess();
  v24 = v38;
  v23 = v39;
  (*(v39 + 16))(v38, v22, v21);
  v25 = v20;
  v26 = sub_2CDFE0();
  v27 = sub_2CE690();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136315138;
    v30 = v25;
    v31 = [v30 description];
    v32 = sub_2CE270();
    v34 = v33;

    v35 = sub_3F08(v32, v34, v41);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_0, v26, v27, "ConverterHelpers#convertPrivateAddMediaIntentData privateAddMediaIntentData: %s", v28, 0xCu);
    sub_306C(v29);

    (*(v39 + 8))(v38, v21);
  }

  else
  {

    (*(v23 + 8))(v24, v21);
  }

  return v25;
}

unint64_t sub_232B38(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v198 = a2;
  v177 = sub_2C9120();
  v176 = *(v177 - 8);
  v3 = __chkstk_darwin(v177);
  v175 = &v171[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v174 = &v171[-v5];
  v179 = sub_2C90E0();
  v6 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v171[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v186 = sub_2CDA60();
  v185 = *(v186 - 8);
  v8 = __chkstk_darwin(v186);
  v184 = &v171[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v183 = &v171[-v10];
  v215 = sub_2CE000();
  v217 = *(v215 - 8);
  v11 = __chkstk_darwin(v215 - 8);
  v216 = &v171[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v173 = &v171[-v14];
  __chkstk_darwin(v13);
  v16 = &v171[-v15];
  v182 = sub_2CD500();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v171[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v200 = sub_2CD4A0();
  v206 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = &v171[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v199 = sub_20410(&qword_34D690, &qword_2D1590);
  __chkstk_darwin(v199);
  v207 = &v171[-v19];
  v20 = sub_20410(&qword_34D698, &qword_2D1598);
  v21 = __chkstk_darwin(v20 - 8);
  v190 = &v171[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v205 = &v171[-v24];
  __chkstk_darwin(v23);
  v208 = &v171[-v25];
  v26 = sub_2CD4C0();
  v214 = *(v26 - 8);
  __chkstk_darwin(v26);
  v191 = &v171[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v28 = __chkstk_darwin(v209);
  v203 = &v171[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v171[-v30];
  v32 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v33 = __chkstk_darwin(v32 - 8);
  v188 = &v171[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v201 = &v171[-v36];
  v37 = __chkstk_darwin(v35);
  v202 = &v171[-v38];
  v39 = __chkstk_darwin(v37);
  v41 = &v171[-v40];
  v42 = __chkstk_darwin(v39);
  v44 = &v171[-v43];
  __chkstk_darwin(v42);
  v46 = &v171[-v45];
  v47 = [objc_allocWithZone(_INPBMediaDestination) init];
  v48 = sub_2CD610();
  v49 = v48[2];
  v189 = v6;
  v210 = v47;
  v211 = v16;
  v212 = a1;
  if (v49)
  {
    v50 = v48[5];
    v204 = v48[4];
    v213 = v50;
  }

  else
  {
    v197 = v41;

    v51 = sub_2CD640();
    if (!v51[2])
    {
      goto LABEL_8;
    }

    v52 = v51[4];
    v53 = v51[5];

    v54 = HIBYTE(v53) & 0xF;
    v204 = v52;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v213 = v53;
    }

    else
    {
LABEL_8:

      v204 = 0;
      v213 = 0;
    }

    v41 = v197;
  }

  sub_2CD6C0();
  v55 = v214;
  v56 = *(v214 + 104);
  v194 = enum case for CommonAudio.Verb.update(_:);
  v196 = v214 + 104;
  v193 = v56;
  v56(v44);
  v57 = *(v55 + 56);
  v195 = v55 + 56;
  v192 = v57;
  v57(v44, 0, 1, v26);
  v58 = *(v209 + 48);
  sub_F3F4(v46, v31, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v44, &v31[v58], &qword_34D6B8, &qword_2D15B0);
  v59 = *(v55 + 48);
  v60 = (v59)(v31, 1, v26);
  v61 = &selRef_hasTwoOrMoreRooms;
  v197 = v59;
  if (v60 == 1)
  {
    sub_30B8(v44, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
    v62 = (v59)(&v31[v58], 1, v26);
    v63 = v217;
    v64 = v211;
    if (v62 == 1)
    {
      sub_30B8(v31, &qword_34D6B8, &qword_2D15B0);
      v65 = v215;
      v66 = v208;
      if (!v213)
      {
        goto LABEL_17;
      }

LABEL_28:
      v86 = v210;
      [v210 v61[285]];
      v77 = v216;
      v75 = v213;
      goto LABEL_44;
    }

LABEL_16:
    sub_30B8(v31, &qword_34D6B0, &unk_2D4FC0);
    v66 = v208;
    goto LABEL_17;
  }

  sub_F3F4(v31, v41, &qword_34D6B8, &qword_2D15B0);
  if ((v59)(&v31[v58], 1, v26) == 1)
  {
    sub_30B8(v44, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
    (*(v214 + 8))(v41, v26);
    goto LABEL_16;
  }

  v88 = v214;
  v89 = &v31[v58];
  v90 = v191;
  (*(v214 + 32))(v191, v89, v26);
  sub_234704(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v172 = sub_2CE250();
  v91 = *(v88 + 8);
  v91(v90, v26);
  sub_30B8(v44, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
  v91(v41, v26);
  v61 = &selRef_hasTwoOrMoreRooms;
  sub_30B8(v31, &qword_34D6B8, &qword_2D15B0);
  v65 = v215;
  v63 = v217;
  v64 = v211;
  v66 = v208;
  if ((v172 & 1) != 0 && v213)
  {
    goto LABEL_28;
  }

LABEL_17:
  sub_2CD6A0();
  v68 = v205;
  v67 = v206;
  v69 = v200;
  (*(v206 + 104))(v205, enum case for CommonAudio.Noun.library(_:), v200);
  (*(v67 + 56))(v68, 0, 1, v69);
  v70 = *(v199 + 48);
  v71 = v207;
  sub_F3F4(v66, v207, &qword_34D698, &qword_2D1598);
  sub_F3F4(v68, &v71[v70], &qword_34D698, &qword_2D1598);
  v72 = *(v67 + 48);
  if (v72(v71, 1, v69) == 1)
  {
    sub_30B8(v68, &qword_34D698, &qword_2D1598);
    v73 = v207;
    sub_30B8(v66, &qword_34D698, &qword_2D1598);
    v74 = v72(&v73[v70], 1, v69);
    v75 = v213;
    v63 = v217;
    v65 = v215;
    if (v74 == 1)
    {
      sub_30B8(v73, &qword_34D698, &qword_2D1598);
      v76 = 1;
      v77 = v216;
LABEL_35:
      v86 = v210;
      v64 = v211;
      v87 = &selRef_hasTwoOrMoreRooms;
      goto LABEL_43;
    }

    goto LABEL_22;
  }

  v78 = v190;
  sub_F3F4(v71, v190, &qword_34D698, &qword_2D1598);
  if (v72(&v71[v70], 1, v69) == 1)
  {
    sub_30B8(v205, &qword_34D698, &qword_2D1598);
    v73 = v207;
    sub_30B8(v208, &qword_34D698, &qword_2D1598);
    (*(v206 + 8))(v78, v69);
    v75 = v213;
    v63 = v217;
LABEL_22:
    sub_30B8(v73, &qword_34D690, &qword_2D1590);
    v79 = v202;
    v80 = v201;
    goto LABEL_23;
  }

  v93 = v206;
  v94 = v187;
  (*(v206 + 32))(v187, &v71[v70], v69);
  sub_234704(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun, &protocol conformance descriptor for CommonAudio.Noun);
  v95 = v71;
  v96 = sub_2CE250();
  v97 = v78;
  v98 = *(v93 + 8);
  v98(v94, v69);
  sub_30B8(v205, &qword_34D698, &qword_2D1598);
  sub_30B8(v208, &qword_34D698, &qword_2D1598);
  v98(v97, v69);
  sub_30B8(v95, &qword_34D698, &qword_2D1598);
  v75 = v213;
  v63 = v217;
  v79 = v202;
  v80 = v201;
  if (v96)
  {
    v76 = 1;
    v65 = v215;
    v77 = v216;
    goto LABEL_35;
  }

LABEL_23:
  sub_2CD6C0();
  v193(v80, v194, v26);
  v192(v80, 0, 1, v26);
  v81 = *(v209 + 48);
  v82 = v203;
  sub_F3F4(v79, v203, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v80, &v82[v81], &qword_34D6B8, &qword_2D15B0);
  v83 = v197;
  if ((v197)(v82, 1, v26) != 1)
  {
    v92 = v188;
    sub_F3F4(v82, v188, &qword_34D6B8, &qword_2D15B0);
    if (v83(&v82[v81], 1, v26) != 1)
    {
      v99 = v214;
      v100 = &v82[v81];
      v101 = v191;
      (*(v214 + 32))(v191, v100, v26);
      sub_234704(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      LODWORD(v209) = sub_2CE250();
      v102 = *(v99 + 8);
      v102(v101, v26);
      sub_30B8(v201, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v202, &qword_34D6B8, &qword_2D15B0);
      v102(v92, v26);
      v63 = v217;
      sub_30B8(v82, &qword_34D6B8, &qword_2D15B0);
      v65 = v215;
      v77 = v216;
      v86 = v210;
      v87 = &selRef_hasTwoOrMoreRooms;
      if (v209)
      {
        goto LABEL_37;
      }

      v76 = 1;
LABEL_32:
      v64 = v211;
      goto LABEL_43;
    }

    sub_30B8(v201, &qword_34D6B8, &qword_2D15B0);
    v84 = v203;
    sub_30B8(v202, &qword_34D6B8, &qword_2D15B0);
    (*(v214 + 8))(v92, v26);
    v86 = v210;
    v87 = &selRef_hasTwoOrMoreRooms;
    v65 = v215;
LABEL_31:
    sub_30B8(v84, &qword_34D6B0, &unk_2D4FC0);
    v76 = 1;
    v77 = v216;
    goto LABEL_32;
  }

  sub_30B8(v80, &qword_34D6B8, &qword_2D15B0);
  v84 = v203;
  sub_30B8(v79, &qword_34D6B8, &qword_2D15B0);
  v85 = v83(&v84[v81], 1, v26);
  v86 = v210;
  v87 = &selRef_hasTwoOrMoreRooms;
  v65 = v215;
  if (v85 != 1)
  {
    goto LABEL_31;
  }

  sub_30B8(v84, &qword_34D6B8, &qword_2D15B0);
LABEL_37:
  v220[3] = v212;
  v103 = v181;
  v104 = v180;
  v105 = v182;
  (*(v181 + 104))(v180, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v182);
  sub_2CD700();
  v106 = sub_2CD910();
  (*(v103 + 8))(v104, v105);
  if (v106)
  {
    v64 = v211;
    if (v86)
    {
      sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
      v107 = v86;
      v108 = sub_2CE5E0();
      [v107 setPlaylistName:v108];
    }

    v76 = 2;
  }

  else
  {
    v76 = 1;
    v64 = v211;
  }

  v77 = v216;
LABEL_43:
  [v86 v87[285]];
  if (v75)
  {
LABEL_44:
    v109 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v109 = v204 & 0xFFFFFFFFFFFFLL;
    }

    if (!v109)
    {
      goto LABEL_74;
    }

    v110 = qword_34BF58;

    if (v110 != -1)
    {
      swift_once();
    }

    v111 = sub_3ED0(v65, static Logger.default);
    swift_beginAccess();
    v214 = *(v63 + 16);
    (v214)(v64, v111, v65);

    v112 = sub_2CDFE0();
    v113 = v63;
    v114 = sub_2CE690();

    if (os_log_type_enabled(v112, v114))
    {
      v115 = swift_slowAlloc();
      v212 = v111;
      v116 = v64;
      v117 = v115;
      v118 = swift_slowAlloc();
      v220[0] = v118;
      *v117 = 136315138;
      v219 = sub_2CDBE0();
      sub_20410(&qword_34D410, &qword_2D1250);
      v119 = sub_2CE2A0();
      v121 = sub_3F08(v119, v120, v220);

      *(v117 + 4) = v121;
      v65 = v215;
      _os_log_impl(&dword_0, v112, v114, "ConverterHelpers#convertMediaDestination targetPlaylists: %s", v117, 0xCu);
      sub_306C(v118);

      v122 = *(v113 + 8);
      v123 = v116;
      v111 = v212;
      v122(v123, v65);
    }

    else
    {

      v122 = *(v113 + 8);
      v122(v64, v65);
    }

    result = sub_2CDBE0();
    if (!result)
    {
      goto LABEL_63;
    }

    v125 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v158 = result;
      v159 = sub_2CEDA0();
      result = v158;
      if (v159)
      {
        goto LABEL_55;
      }
    }

    else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_55:
      v212 = v122;
      if ((result & 0xC000000000000001) != 0)
      {
        v126 = sub_2CECD0();
      }

      else
      {
        if (!*(v125 + 16))
        {
          __break(1u);
          return result;
        }

        v126 = *(result + 32);
      }

      v127 = v126;

      v128 = v183;
      sub_2CDA70();
      v129 = v185;
      v130 = v184;
      v131 = v186;
      (*(v185 + 104))(v184, enum case for AudioResult.ItemSource.clientLocalDevice(_:), v186);
      sub_234704(&qword_355A80, &type metadata accessor for AudioResult.ItemSource, &protocol conformance descriptor for AudioResult.ItemSource);
      sub_2CE3E0();
      sub_2CE3E0();
      v132 = *(v129 + 8);
      v132(v130, v131);
      v132(v128, v131);
      if (v220[0] == v219)
      {
        v133 = v178;
        sub_2CDA80();
        v134 = v174;
        sub_2C9050();
        v135 = *(v189 + 8);
        v189 += 8;
        v211 = v135;
        v135(v133, v179);
        v136 = v176;
        v137 = v175;
        v138 = v177;
        (*(v176 + 104))(v175, enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.playlist(_:), v177);
        sub_234704(&qword_355A88, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemType);
        sub_2CE3E0();
        sub_2CE3E0();
        v139 = *(v136 + 8);
        v139(v137, v138);
        v139(v134, v138);
        if (v220[0] == v219)
        {

          v140 = v173;
          v65 = v215;
          (v214)(v173, v111, v215);
          v141 = v127;
          v142 = sub_2CDFE0();
          v143 = sub_2CE690();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v145 = v140;
            v146 = swift_slowAlloc();
            v220[0] = v146;
            *v144 = 136315138;
            v147 = v178;
            sub_2CDA80();
            v148 = sub_2C9060();
            v150 = v149;
            v151 = v211;
            (v211)(v147, v179);
            v152 = sub_3F08(v148, v150, v220);
            v65 = v215;

            *(v144 + 4) = v152;
            _os_log_impl(&dword_0, v142, v143, "ConverterHelpers#convertMediaDestination correcting to destination playlist: %s", v144, 0xCu);
            sub_306C(v146);

            v212(v145, v65);
            v77 = v216;
          }

          else
          {

            v212(v140, v65);
            v77 = v216;
            v151 = v211;
          }

          v86 = v210;
          if (v210)
          {
            sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
            v155 = v86;
            v156 = v178;
            sub_2CDA80();
            sub_2C9060();
            v151(v156, v179);
            v157 = sub_2CE5E0();
            [v155 setPlaylistName:v157];
          }

          v63 = v217;
          goto LABEL_74;
        }
      }

      v65 = v215;
LABEL_63:
      v86 = v210;
      if (v210)
      {
LABEL_64:
        sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
        v153 = v86;
        v154 = sub_2CE5E0();
        [v153 setPlaylistName:v154];

LABEL_73:
        v77 = v216;
        v63 = v217;
        goto LABEL_74;
      }

LABEL_72:

      goto LABEL_73;
    }

    v86 = v210;
    if (v210)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_74:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v160 = sub_3ED0(v65, static Logger.default);
  swift_beginAccess();
  (*(v63 + 16))(v77, v160, v65);
  v161 = v86;
  v162 = sub_2CDFE0();
  v163 = sub_2CE690();

  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = v63;
    v166 = swift_slowAlloc();
    v218 = v86;
    v219 = v166;
    *v164 = 136315138;
    v167 = v161;
    sub_20410(&qword_355A78, &qword_2D7E90);
    v168 = sub_2CE2A0();
    v170 = sub_3F08(v168, v169, &v219);

    *(v164 + 4) = v170;
    _os_log_impl(&dword_0, v162, v163, "ConverterHelpers#convertMediaDestination mediaDestination: %s", v164, 0xCu);
    sub_306C(v166);

    (*(v165 + 8))(v216, v65);
  }

  else
  {

    (*(v63 + 8))(v77, v65);
  }

  return v86;
}