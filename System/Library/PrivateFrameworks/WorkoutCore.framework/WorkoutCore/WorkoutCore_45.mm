id PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  LODWORD(v8) = *(v5 + 16);
  v9 = v8 >> 6;
  if (v8 >> 6 <= 1)
  {
    if (v9)
    {
      v11 = 0xEB00000000656C62;
      v18 = 0x617A696C61636F4CLL;
      if (v7 == 0.0)
      {
        goto LABEL_15;
      }

      if (*&v7 >> 62)
      {
        goto LABEL_36;
      }

      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for Zone();
      v20 = *&v7;
      goto LABEL_11;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass_];
    v13 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B46BA40);
    v7 = COERCE_DOUBLE(MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62));
    v14 = [v12 localizedStringForKey:v13 value:0 table:*&v7];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = [objc_opt_self() localizedShortPowerUnitString];
    if (v15)
    {
      v16 = v15;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE100000000000000;
      v8 = 87;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_20B4282E0;
    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          v49 = v48;
          v50 = v6;
          v51 = [v11 mainBundle];
          v65._object = 0x800000020B456470;
          v65._countAndFlagsBits = 0xD000000000000018;
          v52._countAndFlagsBits = 1684827173;
          v52._object = 0xE400000000000000;
          v53._countAndFlagsBits = 0;
          v53._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v65);

          v54 = swift_allocObject();
          v55 = MEMORY[0x277D83B88];
          *(v54 + 16) = xmmword_20B423A90;
          v56 = MEMORY[0x277D83C10];
          *(v54 + 56) = v55;
          *(v54 + 64) = v56;
          *(v54 + 32) = v50;
          v57 = static String.localizedStringWithFormat(_:_:)();
          v59 = v58;

          v60 = MEMORY[0x277D837D0];
          v49[7] = MEMORY[0x277D837D0];
          v61 = lazy protocol witness table accessor for type String and conformance String();
          v49[4] = v57;
          v49[5] = v59;
          v49[12] = v60;
          v49[13] = v61;
          v49[8] = v61;
          v49[9] = v8;
          v49[10] = v18;
          v47 = static String.localizedStringWithFormat(_:_:)();

LABEL_24:

          return v47;
        }

LABEL_34:
        __break(1u);
        do
        {
          __break(1u);
LABEL_36:
          type metadata accessor for Zone();

          v20 = _bridgeCocoaArray<A>(_:)();
LABEL_11:
          outlined consume of PowerZonesAlertZoneType(*&v6, *&v7, v8);
          v21 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v20);

          if (v21)
          {
            type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
            v22 = swift_getObjCClassFromMetadata();
            v23 = [objc_opt_self() bundleForClass_];
            v24 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
            v25 = MEMORY[0x20F2E6C00](v18, v11);
            v26 = [v23 localizedStringForKey:v24 value:0 table:v25];
            goto LABEL_14;
          }

LABEL_15:
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          v31 = swift_getObjCClassFromMetadata();
          v8 = objc_opt_self();
          v32 = [v8 bundleForClass_];
          v33 = MEMORY[0x20F2E6C00](0x4F5A5F5245574F50, 0xEF454D414E5F454ELL);
          v34 = MEMORY[0x20F2E6C00](v18, v11);
          v11 = [v32 localizedStringForKey:v33 value:0 table:v34];

          v7 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_20B423A90;
          v36 = *&v6 + 1;
        }

        while (__OFADD__(*&v6, 1));
        v37 = v35;
        v38 = [v8 mainBundle];
        v64._object = 0x800000020B456470;
        v64._countAndFlagsBits = 0xD000000000000018;
        v39._countAndFlagsBits = 1684827173;
        v39._object = 0xE400000000000000;
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v64);

        v41 = swift_allocObject();
        v42 = MEMORY[0x277D83B88];
        *(v41 + 16) = xmmword_20B423A90;
        v43 = MEMORY[0x277D83C10];
        *(v41 + 56) = v42;
        *(v41 + 64) = v43;
        *(v41 + 32) = v36;
        v44 = static String.localizedStringWithFormat(_:_:)();
        v46 = v45;

        v37[7] = MEMORY[0x277D837D0];
        v37[8] = lazy protocol witness table accessor for type String and conformance String();
        v37[4] = v44;
        v37[5] = v46;
        v47 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v9 == 2)
  {
    type metadata accessor for TargetZone();
    inited = swift_initStackObject();
    *(inited + 16) = v8 & 0x3F;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    if ((v8 & 0x3Fu) <= 3 || (v8 & 0x3Fu) <= 5 || (v8 & 0x3F) == 6)
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v63 = 0;
      if ((v62 & 1) == 0)
      {
        v63 = v6 > 0.0 || v7 > 0.0;
      }
    }

    else
    {

      v63 = 0;
    }

    *(inited + 40) = v63;
    return TargetZone.displayString(formattingManager:activityType:)(a1, a2);
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v27 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
    v25 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];
LABEL_14:
    v28 = v26;

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v29;
  }
}

void PowerZonesAlertTargetZone.spokenString(formattingManager:activityType:)(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 16) >> 6;
  if (v7 <= 1)
  {
    if (v7)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v99 = objc_opt_self();
      v100 = [v99 bundleForClass_];
      v101 = MEMORY[0x20F2E6C00](0x4D414E5F454E4F5ALL, 0xE900000000000045);
      v102 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v103 = [v100 localizedStringForKey:v101 value:0 table:v102];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_20B423A90;
      if (!__OFADD__(*&v6, 1))
      {
        v105 = MEMORY[0x277D83C10];
        *(v104 + 56) = MEMORY[0x277D83B88];
        *(v104 + 64) = v105;
        *(v104 + 32) = *&v6 + 1;
        v106 = String.init(format:_:)();
        v128 = v107;
        v131 = v106;

        v108 = [v99 bundleForClass_];
        v109 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
        v110 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v111 = [v108 localizedStringForKey:v109 value:0 table:v110];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_20B4282E0;
        v113 = [v99 bundleForClass_];
        v114 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B46B900);
        v115 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v116 = [v113 localizedStringForKey:v114 value:0 table:v115];

        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v120 = MEMORY[0x277D837D0];
        *(v112 + 56) = MEMORY[0x277D837D0];
        v121 = lazy protocol witness table accessor for type String and conformance String();
        *(v112 + 32) = v117;
        *(v112 + 40) = v119;
        *(v112 + 96) = v120;
        *(v112 + 104) = v121;
        *(v112 + 64) = v121;
        *(v112 + 72) = v131;
        *(v112 + 80) = v128;
        String.init(format:_:)();
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v8 = [a1 localizedPowerUnitStringForPower_];
      if (!v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v10 = MEMORY[0x277D837D0];
      v11 = StringProtocol.localizedLowercase.getter();
      v124 = v12;
      v129 = v11;

      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v13 = swift_getObjCClassFromMetadata();
      v14 = objc_opt_self();
      v15 = [v14 bundleForClass_];
      v16 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B46BA60);
      v17 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_20B4282E0;
      if ((~*&v6 & 0x7FF0000000000000) != 0)
      {
        if (v6 > -9.22337204e18)
        {
          if (v6 < 9.22337204e18)
          {
            v20 = v19;
            v21 = dispatch thunk of CustomStringConvertible.description.getter();
            v22 = v10;
            v24 = v23;
            v20[7] = v22;
            v25 = lazy protocol witness table accessor for type String and conformance String();
            v20[4] = v21;
            v20[5] = v24;
            v20[12] = v22;
            v20[13] = v25;
            v20[8] = v25;
            v20[9] = v129;
            v20[10] = v124;
            v26 = static String.localizedStringWithFormat(_:_:)();
            v125 = v27;
            v130 = v26;

            v28 = [v14 bundleForClass_];
            v29 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B468380);
            v30 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_20B423A90;
            v33 = [v14 bundleForClass_];
            v34 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B46B900);
            v35 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            *(v32 + 56) = MEMORY[0x277D837D0];
            *(v32 + 64) = v25;
            *(v32 + 32) = v37;
            *(v32 + 40) = v39;
            v40 = String.init(format:_:)();
            v42 = v41;

            v43 = [v14 bundleForClass_];
            v44 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
            v45 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = swift_allocObject();
            *(v47 + 16) = xmmword_20B4282E0;
            v48 = MEMORY[0x277D837D0];
            *(v47 + 56) = MEMORY[0x277D837D0];
            *(v47 + 64) = v25;
            *(v47 + 32) = v40;
            *(v47 + 40) = v42;
            *(v47 + 96) = v48;
            *(v47 + 104) = v25;
            *(v47 + 72) = v130;
            *(v47 + 80) = v125;
            String.init(format:_:)();
LABEL_19:

            return;
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 != 2)
  {
    PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)(a1, a2);
    return;
  }

  v49 = v5[1];
  v50 = [a1 localizedPowerUnitStringForPower_];
  if (v50)
  {
    v51 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v52 = MEMORY[0x277D837D0];
    v53 = StringProtocol.localizedLowercase.getter();
    v55 = v54;

    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_20B4282E0;
          if ((~*&v49 & 0x7FF0000000000000) != 0)
          {
            if (v49 > -9.22337204e18)
            {
              if (v49 < 9.22337204e18)
              {
                v60 = v59;
                v126 = v56;
                v61 = dispatch thunk of CustomStringConvertible.description.getter();
                v63 = v62;
                v60[7] = v52;
                v64 = lazy protocol witness table accessor for type String and conformance String();
                v60[4] = v61;
                v60[5] = v63;
                v60[12] = v52;
                v60[13] = v64;
                v60[8] = v64;
                v60[9] = v53;
                v60[10] = v55;
                v65 = String.init(format:_:)();
                v122 = v66;
                type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
                v67 = swift_getObjCClassFromMetadata();
                v68 = objc_opt_self();
                v69 = [v68 bundleForClass_];
                v70 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B4683C0);
                v71 = v58;
                v72 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v73 = [v69 localizedStringForKey:v70 value:0 table:v72];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v74 = swift_allocObject();
                *(v74 + 16) = xmmword_20B4282E0;
                v75 = MEMORY[0x277D837D0];
                *(v74 + 56) = MEMORY[0x277D837D0];
                *(v74 + 64) = v64;
                *(v74 + 32) = v126;
                *(v74 + 40) = v71;
                *(v74 + 96) = v75;
                *(v74 + 104) = v64;
                *(v74 + 72) = v65;
                *(v74 + 80) = v122;
                v127 = String.init(format:_:)();
                v123 = v76;

                v77 = [v68 bundleForClass_];
                v78 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4683E0);
                v79 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = swift_allocObject();
                *(v81 + 16) = xmmword_20B423A90;
                v82 = [v68 bundleForClass_];
                v83 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B46B900);
                v84 = MEMORY[0x20F2E6C00]();
                v85 = [v82 localizedStringForKey:v83 value:0 table:v84];

                v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v88 = v87;

                *(v81 + 56) = MEMORY[0x277D837D0];
                *(v81 + 64) = v64;
                *(v81 + 32) = v86;
                *(v81 + 40) = v88;
                v89 = String.init(format:_:)();
                v91 = v90;

                v92 = [v68 bundleForClass_];
                v93 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
                v94 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v95 = [v92 localizedStringForKey:v93 value:0 table:v94];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v96 = swift_allocObject();
                *(v96 + 16) = xmmword_20B4282E0;
                v97 = MEMORY[0x277D837D0];
                *(v96 + 56) = MEMORY[0x277D837D0];
                *(v96 + 64) = v64;
                *(v96 + 32) = v89;
                *(v96 + 40) = v91;
                *(v96 + 96) = v97;
                *(v96 + 104) = v64;
                *(v96 + 72) = v127;
                *(v96 + 80) = v123;
                String.init(format:_:)();
                goto LABEL_19;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
}

id TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)(id a1, void *a2, double a3)
{
  v7 = *v3;
  if (v7 > 4)
  {
    if (v7 - 5 >= 2)
    {
      return 0;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B46BA40);
    v29 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = [objc_opt_self() localizedShortPowerUnitString];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE100000000000000;
      v33 = 87;
    }

    TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a1, a2, a3);
    v61 = v60;
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_20B4282E0;
    v65 = MEMORY[0x277D837D0];
    *(v64 + 56) = MEMORY[0x277D837D0];
    v66 = lazy protocol witness table accessor for type String and conformance String();
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    *(v64 + 96) = v65;
    *(v64 + 104) = v66;
    *(v64 + 64) = v66;
    *(v64 + 72) = v33;
    *(v64 + 80) = v35;
    v25 = static String.localizedStringWithFormat(_:_:)();
LABEL_21:

    goto LABEL_22;
  }

  if (v7 >= 3)
  {
    v36 = [a1 effectiveTypeIdentifier];
    if (v36 == 13)
    {
      v37 = 0xD000000000000029;
    }

    else
    {
      v37 = 0xD000000000000021;
    }

    if (v36 == 13)
    {
      v38 = "SHORT_DESCRIPTION";
    }

    else
    {
      v38 = "NUMBER_RANGE_WITH_UNIT";
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v39 = swift_getObjCClassFromMetadata();
    v40 = objc_opt_self();
    v41 = [v40 bundleForClass_];
    v42 = MEMORY[0x20F2E6C00](v37, v38 | 0x8000000000000000);

    v43 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v67 = a2;
    v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = [v40 bundleForClass_];
    v49 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B46BA80);
    v50 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a1, v67, a3);
    v53 = v52;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_20B4282E0;
    v57 = MEMORY[0x277D837D0];
    *(v56 + 56) = MEMORY[0x277D837D0];
    v58 = lazy protocol witness table accessor for type String and conformance String();
    *(v56 + 32) = v53;
    *(v56 + 40) = v55;
    *(v56 + 96) = v57;
    *(v56 + 104) = v58;
    *(v56 + 64) = v58;
    *(v56 + 72) = v45;
    *(v56 + 80) = v47;
    v25 = static String.localizedStringWithFormat(_:_:)();
    goto LABEL_21;
  }

  if (FIUIDistanceTypeForActivityType() != 2)
  {
    result = [a2 localizedPaceAndUnitStringForSpeed:a1 activityType:a3];
    if (!result)
    {
      goto LABEL_25;
    }

    v59 = result;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v25;
  }

  TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a1, a2, a3);
  v9 = v8;
  v11 = v10;
  result = [a2 localizedSpeedUnitStringForActivityType_];
  if (result)
  {
    v13 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v14 = MEMORY[0x277D837D0];
    v15 = StringProtocol.localizedUppercase.getter();
    v17 = v16;

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B46BAA0);
    v21 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20B4282E0;
    *(v23 + 56) = v14;
    v24 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v9;
    *(v23 + 40) = v11;
    *(v23 + 96) = v14;
    *(v23 + 104) = v24;
    *(v23 + 64) = v24;
    *(v23 + 72) = v15;
    *(v23 + 80) = v17;
    v25 = static String.localizedStringWithFormat(_:_:)();

LABEL_22:

    return v25;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(id result, void *a2, double a3)
{
  v4 = *v3;
  if (v4 - 3 < 4)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        v5 = a3;
        v6 = [objc_opt_self() mainBundle];
        v24._object = 0x800000020B456470;
        v7._countAndFlagsBits = 1684827173;
        v7._object = 0xE400000000000000;
        v8._countAndFlagsBits = 0;
        v8._object = 0xE000000000000000;
        v24._countAndFlagsBits = 0xD000000000000018;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v9 = swift_allocObject();
        v10 = MEMORY[0x277D83B88];
        *(v9 + 16) = xmmword_20B423A90;
        v11 = MEMORY[0x277D83C10];
        *(v9 + 56) = v10;
        *(v9 + 64) = v11;
        *(v9 + 32) = v5;
        static String.localizedStringWithFormat(_:_:)();

        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 3)
  {
    v14 = FIUIDistanceTypeForActivityType();
    v15 = MEMORY[0x20F2E8410]();
    v16 = [objc_opt_self() meterUnit];
    v17 = [objc_opt_self() quantityWithUnit:v16 doubleValue:a3];

    if (v15 == 4)
    {
      [a2 speedPerHourWithDistance:v17 overDuration:4 paceFormat:v14 distanceType:1.0];
      v19 = v18;
      v20 = objc_opt_self();
      v21 = MEMORY[0x20F2E7210](v19);
      v22 = [v20 stringWithNumber:v21 decimalPrecision:1 roundingMode:4 decimalTrimmingMode:1];

      if (!v22)
      {

        return;
      }
    }

    else
    {
      v23 = [a2 localizedPaceStringWithDistance:v17 overDuration:v15 paceFormat:v14 distanceType:1.0];
      if (!v23)
      {
LABEL_17:
        __break(1u);
        return;
      }

      v22 = v23;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t specialized HeartRateTargetZone.displayString(formattingManager:activityType:)(void *a1)
{
  v2 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass_];
      v34 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
      v35 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v37;
    }

    v4 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if (*(v4 + 16))
    {
      goto LABEL_24;
    }

    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = [a1 localizedHeartRateUnitString];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 5066818;
    }

    if (*(v1 + v2) == 1 && (*(v4 + 16) & 1) == 0 && *(v4 + 8) - *v4 <= 1.0)
    {
      v63 = [objc_opt_self() _countPerMinuteUnit];
      v64 = [objc_opt_self() quantityWithUnit:v63 doubleValue:v5];

      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v65 = swift_getObjCClassFromMetadata();
      v66 = [objc_opt_self() bundleForClass_];
      v67 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B46BA60);
      v68 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v69 = [v66 localizedStringForKey:v67 value:0 table:v68];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_20B4282E0;
      v71 = [a1 localizedStringWithHeartRate_];
      if (v71)
      {
        v72 = v71;
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = MEMORY[0x277D837D0];
        *(v70 + 56) = MEMORY[0x277D837D0];
        v77 = lazy protocol witness table accessor for type String and conformance String();
        *(v70 + 32) = v73;
        *(v70 + 40) = v75;
        *(v70 + 96) = v76;
        *(v70 + 104) = v77;
        *(v70 + 64) = v77;
        *(v70 + 72) = v9;
        *(v70 + 80) = v11;
        v31 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_17;
      }

      goto LABEL_23;
    }

    v78 = v9;
    v79 = v11;
    v39 = objc_opt_self();
    v40 = [v39 _countPerMinuteUnit];
    v41 = objc_opt_self();
    v42 = [v41 quantityWithUnit:v40 doubleValue:v6];

    v43 = [v39 _countPerMinuteUnit];
    v80 = [v41 quantityWithUnit:v43 doubleValue:v5];

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    v46 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46B9C0);
    v47 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_20B423A20;
    v50 = v42;
    v51 = [a1 localizedStringWithHeartRate_];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = MEMORY[0x277D837D0];
      *(v49 + 56) = MEMORY[0x277D837D0];
      v57 = lazy protocol witness table accessor for type String and conformance String();
      *(v49 + 64) = v57;
      *(v49 + 32) = v53;
      *(v49 + 40) = v55;
      v58 = [a1 localizedStringWithHeartRate_];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        *(v49 + 96) = v56;
        *(v49 + 104) = v57;
        *(v49 + 72) = v60;
        *(v49 + 80) = v62;
        *(v49 + 136) = v56;
        *(v49 + 144) = v57;
        *(v49 + 112) = v78;
        *(v49 + 120) = v79;
        v31 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
    swift_beginAccess();
    if (v12[1])
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ALL, 0x800000020B46BB50, "WorkoutCore/TargetZoneDisplaying.swift", 38, 2, 154, 0);
      goto LABEL_26;
    }

    v13 = *v12;
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v14 = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();
    v16 = [v15 bundleForClass_];
    v17 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B46BB90);
    v18 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20B423A90;
    if (!__OFADD__(v13, 1))
    {
      v21 = v20;
      v22 = [v15 mainBundle];
      v81._object = 0x800000020B456470;
      v81._countAndFlagsBits = 0xD000000000000018;
      v23._countAndFlagsBits = 1684827173;
      v23._object = 0xE400000000000000;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v81);

      v25 = swift_allocObject();
      v26 = MEMORY[0x277D83B88];
      *(v25 + 16) = xmmword_20B423A90;
      v27 = MEMORY[0x277D83C10];
      *(v25 + 56) = v26;
      *(v25 + 64) = v27;
      *(v25 + 32) = v13 + 1;
      v28 = static String.localizedStringWithFormat(_:_:)();
      v30 = v29;

      v21[7] = MEMORY[0x277D837D0];
      v21[8] = lazy protocol witness table accessor for type String and conformance String();
      v21[4] = v28;
      v21[5] = v30;
      v31 = static String.localizedStringWithFormat(_:_:)();

LABEL_17:

      return v31;
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000038, 0x800000020B46BAF0, "WorkoutCore/TargetZoneDisplaying.swift", 38, 2, 177, 0);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized HeartRateTargetZone.spokenString(formattingManager:activityType:)(void *a1)
{
  v2 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
  if (!*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    v58 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
    swift_beginAccess();
    if (v58[1])
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ALL, 0x800000020B46BB50, "WorkoutCore/TargetZoneDisplaying.swift", 38, 2, 191, 0);
      goto LABEL_33;
    }

    v59 = *v58;
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = objc_opt_self();
    v62 = [v61 bundleForClass_];
    v63 = MEMORY[0x20F2E6C00](0x4D414E5F454E4F5ALL, 0xE900000000000045);
    v64 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_20B423A90;
    if (!__OFADD__(v59, 1))
    {
      v67 = MEMORY[0x277D83C10];
      *(v66 + 56) = MEMORY[0x277D83B88];
      *(v66 + 64) = v67;
      *(v66 + 32) = v59 + 1;
      v68 = String.init(format:_:)();
      v129 = v69;
      v131 = v68;

      v70 = [v61 bundleForClass_];
      v71 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
      v72 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_20B4282E0;
      v75 = [v61 bundleForClass_];
      v76 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46BB30);
      v77 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v78 = [v75 localizedStringForKey:v76 value:0 table:v77];

      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = MEMORY[0x277D837D0];
      *(v74 + 56) = MEMORY[0x277D837D0];
      v83 = lazy protocol witness table accessor for type String and conformance String();
      *(v74 + 32) = v79;
      *(v74 + 40) = v81;
      *(v74 + 96) = v82;
      *(v74 + 104) = v83;
      *(v74 + 64) = v83;
      *(v74 + 72) = v131;
      *(v74 + 80) = v129;
      v57 = String.init(format:_:)();
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v4 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if (*(v4 + 16))
    {
LABEL_31:
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000038, 0x800000020B46BAF0, "WorkoutCore/TargetZoneDisplaying.swift", 38, 2, 217, 0);
LABEL_33:
      __break(1u);
      return result;
    }

    v6 = *v4;
    v5 = *(v4 + 8);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v7 = swift_getObjCClassFromMetadata();
    v128 = objc_opt_self();
    v130 = v7;
    v8 = [v128 bundleForClass_];
    v9 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B4685F0);
    v10 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (*(v1 + v2) == 1 && (*(v4 + 16) & 1) == 0 && *(v4 + 8) - *v4 <= 1.0)
    {
      v85 = [objc_opt_self() _countPerMinuteUnit];
      v86 = [objc_opt_self() quantityWithUnit:v85 doubleValue:v5];

      v87 = [v128 bundleForClass_];
      v88 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B46BA60);
      v89 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v90 = [v87 localizedStringForKey:v88 value:0 table:v89];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_20B4282E0;
      v127 = v86;
      v92 = [a1 localizedStringWithHeartRate_];
      if (v92)
      {
        v93 = v92;
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        v97 = MEMORY[0x277D837D0];
        *(v91 + 56) = MEMORY[0x277D837D0];
        v120 = lazy protocol witness table accessor for type String and conformance String();
        *(v91 + 32) = v94;
        *(v91 + 40) = v96;
        *(v91 + 96) = v97;
        *(v91 + 104) = v120;
        *(v91 + 64) = v120;
        *(v91 + 72) = v12;
        *(v91 + 80) = v14;
        v124 = static String.localizedStringWithFormat(_:_:)();
        v121 = v98;

        v99 = [v128 bundleForClass_];
        v100 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B468380);
        v101 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v102 = [v99 localizedStringForKey:v100 value:0 table:v101];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_20B423A90;
        v104 = [v128 bundleForClass_];
        v105 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46BB30);
        v106 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v107 = [v104 &selRef_timeIntervalSinceReferenceDate + 4];

        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        *(v103 + 56) = MEMORY[0x277D837D0];
        *(v103 + 64) = v120;
        *(v103 + 32) = v108;
        *(v103 + 40) = v110;
        v111 = String.init(format:_:)();
        v113 = v112;

        v114 = [v128 bundleForClass_];
        v115 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
        v116 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v117 = [v114 localizedStringForKey:v115 value:0 table:v116];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_20B4282E0;
        v119 = MEMORY[0x277D837D0];
        *(v118 + 56) = MEMORY[0x277D837D0];
        *(v118 + 64) = v120;
        *(v118 + 32) = v111;
        *(v118 + 40) = v113;
        *(v118 + 96) = v119;
        *(v118 + 104) = v120;
        *(v118 + 72) = v124;
        *(v118 + 80) = v121;
        v57 = String.init(format:_:)();

        goto LABEL_17;
      }

      goto LABEL_30;
    }

    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          v15 = dispatch thunk of CustomStringConvertible.description.getter();
          v17 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_20B4282E0;
          if ((~*&v5 & 0x7FF0000000000000) != 0)
          {
            if (v5 > -9.22337204e18)
            {
              if (v5 < 9.22337204e18)
              {
                v19 = v18;
                v20 = dispatch thunk of CustomStringConvertible.description.getter();
                v125 = v15;
                v21 = v14;
                v23 = v22;
                v24 = MEMORY[0x277D837D0];
                v19[7] = MEMORY[0x277D837D0];
                v25 = lazy protocol witness table accessor for type String and conformance String();
                v19[4] = v20;
                v19[5] = v23;
                v19[12] = v24;
                v19[13] = v25;
                v19[8] = v25;
                v19[9] = v12;
                v19[10] = v21;
                v122 = String.init(format:_:)();
                v27 = v26;
                v28 = [v128 bundleForClass_];
                v29 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B4683C0);
                v30 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v31 = v17;
                v32 = [v28 localizedStringForKey:v29 value:0 table:v30];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v33 = swift_allocObject();
                *(v33 + 16) = xmmword_20B4282E0;
                *(v33 + 56) = v24;
                *(v33 + 64) = v25;
                *(v33 + 32) = v125;
                *(v33 + 40) = v31;
                *(v33 + 96) = v24;
                *(v33 + 104) = v25;
                *(v33 + 72) = v122;
                *(v33 + 80) = v27;
                v34 = String.init(format:_:)();
                v123 = v35;
                v126 = v34;

                v36 = [v128 bundleForClass_];
                v37 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4683E0);
                v38 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v40 = swift_allocObject();
                *(v40 + 16) = xmmword_20B423A90;
                v41 = [v128 bundleForClass_];
                v42 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46BB30);
                v43 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

                v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v47 = v46;

                v48 = MEMORY[0x277D837D0];
                *(v40 + 56) = MEMORY[0x277D837D0];
                *(v40 + 64) = v25;
                *(v40 + 32) = v45;
                *(v40 + 40) = v47;
                v49 = String.init(format:_:)();
                v51 = v50;

                v52 = [v128 bundleForClass_];
                v53 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
                v54 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v56 = swift_allocObject();
                *(v56 + 16) = xmmword_20B4282E0;
                *(v56 + 56) = v48;
                *(v56 + 64) = v25;
                *(v56 + 32) = v49;
                *(v56 + 40) = v51;
                *(v56 + 96) = v48;
                *(v56 + 104) = v25;
                *(v56 + 72) = v126;
                *(v56 + 80) = v123;
                v57 = String.init(format:_:)();
LABEL_17:

                return v57;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return specialized HeartRateTargetZone.displayString(formattingManager:activityType:)(a1);
}

char *TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  if (*v3 > 1u)
  {
    if (*v3 == 2)
    {
      if (v5 == 1)
      {
        v15[3] = &type metadata for WorkoutFeatures;
        v15[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
        LOBYTE(v15[0]) = 2;
        v8 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v15);
        if (v8)
        {
          v7 = &outlined read-only object #2 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
        }

        else
        {
          v7 = &outlined read-only object #3 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
        }
      }

      else
      {
        v7 = &outlined read-only object #4 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
      }
    }

    else
    {
      v7 = &outlined read-only object #5 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
    }
  }

  else
  {
    v6 = &outlined read-only object #1 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
    if (v5 == 1)
    {
      v6 = &outlined read-only object #0 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
    }

    if (*v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v15[0]) = v5;
  v9 = FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:)(a3, v15);
  v10 = specialized _NativeSet.genericIntersection<A>(_:)(v7, v9);

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore10TargetZoneC0K4TypeO_Tt1g5(*(v10 + 16), 0);
  v13 = specialized Sequence._copySequenceContents(initializing:)(v15, v12 + 32, v11, v10);
  outlined consume of Set<TargetZone.ZoneType>.Iterator._Variant(v15[0]);
  if (v13 != v11)
  {
    __break(1u);
LABEL_17:

    v12 = MEMORY[0x277D84F90];
  }

  v15[0] = v12;

  specialized MutableCollection<>.sort(by:)(v15);

  return v15[0];
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance TargetZone.ZoneType(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static TargetZone.ZoneType.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance TargetZone.ZoneType(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static TargetZone.ZoneType.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance TargetZone.ZoneType(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static TargetZone.ZoneType.< infix(_:_:)(&v4, &v5) & 1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_184:
    v9 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_223;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_217:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    v109 = v5;
    v125 = v10;
    v110 = *(v10 + 2);
    if (v110 >= 2)
    {
      while (*v9)
      {
        v5 = v110 - 1;
        v111 = *&v10[16 * v110];
        v112 = *&v10[16 * v110 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v9 + v111), (*v9 + *&v10[16 * v110 + 16]), (*v9 + v112), v6);
        if (v109)
        {
          goto LABEL_194;
        }

        if (v112 < v111)
        {
          goto LABEL_210;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v110 - 2 >= *(v10 + 2))
        {
          goto LABEL_211;
        }

        v113 = &v10[16 * v110];
        *v113 = v111;
        *(v113 + 1) = v112;
        v125 = v10;
        specialized Array.remove(at:)(v110 - 1);
        v10 = v125;
        v110 = *(v125 + 2);
        if (v110 <= 1)
        {
          goto LABEL_194;
        }
      }

      goto LABEL_221;
    }

LABEL_194:

    return;
  }

  v8 = 0;
  v9 = 0xEC00000065636170;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v8++;
    v118 = v11;
    if (v8 < v7)
    {
      v12 = v11;
      v13 = *v6;
      v14 = *(*v6 + v11);
      v124 = v8[*v6];
      v123 = v14;
      __dst = specialized static TargetZone.ZoneType.< infix(_:_:)(&v124, &v123);
      v15 = v12 + 2;
      if (v15 < v7)
      {
        v8 = (v7 - 1);
        while (1)
        {
          v19 = *(v13 + v15);
          if (v19 > 3)
          {
            if (*(v13 + v15) > 5u)
            {
              if (v19 == 6)
              {
                v20 = 0x5F65676172657661;
                v21 = 0xED00007265776F70;
              }

              else
              {
                v21 = 0xE400000000000000;
                v20 = 1701736302;
              }
            }

            else if (v19 == 4)
            {
              v20 = 0x5F65676172657661;
              v21 = 0xEF65636E65646163;
            }

            else
            {
              v20 = 0xD000000000000013;
              v21 = 0x800000020B4544E0;
            }
          }

          else if (*(v13 + v15) > 1u)
          {
            if (v19 == 2)
            {
              v20 = 0xD000000000000012;
              v21 = 0x800000020B454490;
            }

            else
            {
              v20 = 0xD000000000000015;
              v21 = 0x800000020B4544B0;
            }
          }

          else
          {
            v20 = 0x5F676E696C6C6F72;
            v21 = 0xEC00000065636170;
            if (*(v13 + v15))
            {
              v20 = 0x5F65676172657661;
              v21 = 0xEC00000065636170;
            }
          }

          v22 = *(v13 + v15 - 1);
          v23 = 1701736302;
          if (v22 == 6)
          {
            v23 = 0x5F65676172657661;
          }

          v24 = 0xED00007265776F70;
          if (v22 != 6)
          {
            v24 = 0xE400000000000000;
          }

          if (v22 == 4)
          {
            v25 = 0x5F65676172657661;
          }

          else
          {
            v25 = 0xD000000000000013;
          }

          v26 = 0xEF65636E65646163;
          if (v22 != 4)
          {
            v26 = 0x800000020B4544E0;
          }

          if (*(v13 + v15 - 1) <= 5u)
          {
            v23 = v25;
            v24 = v26;
          }

          v27 = 0xD000000000000015;
          if (v22 == 2)
          {
            v27 = 0xD000000000000012;
            v28 = 0x800000020B454490;
          }

          else
          {
            v28 = 0x800000020B4544B0;
          }

          if (*(v13 + v15 - 1))
          {
            v29 = 0x5F65676172657661;
          }

          else
          {
            v29 = 0x5F676E696C6C6F72;
          }

          if (*(v13 + v15 - 1) <= 1u)
          {
            v27 = v29;
            v28 = 0xEC00000065636170;
          }

          if (*(v13 + v15 - 1) <= 3u)
          {
            v30 = v27;
          }

          else
          {
            v30 = v23;
          }

          if (*(v13 + v15 - 1) <= 3u)
          {
            v31 = v28;
          }

          else
          {
            v31 = v24;
          }

          if (v20 == v30 && v21 == v31)
          {

            if (__dst)
            {
              v32 = (v15 - 1);
              v9 = 0xEC00000065636170;
              v11 = v118;
              goto LABEL_55;
            }
          }

          else
          {
            v16 = v7;
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 = __dst ^ v17;
            v7 = v16;
            v6 = a3;
            if (v18)
            {
              v8 = (v15 - 1);
              v9 = 0xEC00000065636170;
              break;
            }
          }

          ++v15;
          v9 = 0xEC00000065636170;
          if (v7 == v15)
          {
            v15 = v7;
            break;
          }
        }
      }

      v32 = v8;
      v8 = v15;
      v11 = v118;
      if (__dst)
      {
LABEL_55:
        if (v15 < v11)
        {
          goto LABEL_214;
        }

        if (v11 <= v32)
        {
          v57 = v15 - 1;
          v58 = v11;
          do
          {
            if (v58 != v57)
            {
              v60 = *v6;
              if (!*v6)
              {
                goto LABEL_220;
              }

              v61 = *(v60 + v58);
              *(v60 + v58) = *(v60 + v57);
              *(v60 + v57) = v61;
            }
          }

          while (++v58 < v57--);
        }

        v8 = v15;
      }
    }

    v33 = v6[1];
    if (v8 < v33)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_213;
      }

      if (&v8[-v11] < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_215;
        }

        if (v11 + a4 < v33)
        {
          v33 = v11 + a4;
        }

        if (v33 < v11)
        {
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (v8 != v33)
        {
          break;
        }
      }
    }

LABEL_133:
    if (v8 < v11)
    {
      goto LABEL_212;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v63 = *(v10 + 2);
    v62 = *(v10 + 3);
    v9 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v10);
    }

    *(v10 + 2) = v9;
    v64 = &v10[16 * v63];
    *(v64 + 4) = v118;
    *(v64 + 5) = v8;
    __dstb = *a1;
    if (!*a1)
    {
      goto LABEL_222;
    }

    if (v63)
    {
      while (1)
      {
        v65 = v9 - 1;
        if (v9 >= 4)
        {
          break;
        }

        if (v9 == 3)
        {
          v66 = *(v10 + 4);
          v67 = *(v10 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_153:
          if (v69)
          {
            goto LABEL_201;
          }

          v82 = &v10[16 * v9];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_204;
          }

          v88 = &v10[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_207;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_208;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v9 - 2;
            }

            goto LABEL_174;
          }

          goto LABEL_167;
        }

        v92 = &v10[16 * v9];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_167:
        if (v87)
        {
          goto LABEL_203;
        }

        v95 = &v10[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_206;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_174:
        v103 = v65 - 1;
        if (v65 - 1 >= v9)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
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
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
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
          goto LABEL_216;
        }

        v104 = *v6;
        if (!*v6)
        {
          goto LABEL_219;
        }

        v105 = v8;
        v106 = v6;
        v107 = *&v10[16 * v103 + 32];
        v6 = *&v10[16 * v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v104 + v107), (v104 + *&v10[16 * v65 + 32]), v6 + v104, __dstb);
        if (v5)
        {
          goto LABEL_194;
        }

        if (v6 < v107)
        {
          goto LABEL_197;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v103 >= *(v10 + 2))
        {
          goto LABEL_198;
        }

        v108 = &v10[16 * v103];
        *(v108 + 4) = v107;
        *(v108 + 5) = v6;
        v125 = v10;
        specialized Array.remove(at:)(v65);
        v10 = v125;
        v9 = *(v125 + 2);
        v8 = v105;
        v6 = v106;
        if (v9 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v10[16 * v9 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_199;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_200;
      }

      v77 = &v10[16 * v9];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_202;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_205;
      }

      if (v81 >= v73)
      {
        v99 = &v10[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_209;
        }

        if (v68 < v102)
        {
          v65 = v9 - 2;
        }

        goto LABEL_174;
      }

      goto LABEL_153;
    }

LABEL_3:
    v7 = v6[1];
    v9 = 0xEC00000065636170;
    if (v8 >= v7)
    {
      goto LABEL_184;
    }
  }

  v114 = v5;
  v34 = *v6;
  v35 = &v8[*v6];
  v36 = v11 - v8;
  v119 = v33;
LABEL_69:
  __dsta = v8;
  v37 = v8[v34];
  v38 = v36;
  v39 = v35;
  while (1)
  {
    if (v37 > 3u)
    {
      if (v37 > 5u)
      {
        if (v37 == 6)
        {
          v43 = 0x5F65676172657661;
          v44 = 0xED00007265776F70;
        }

        else
        {
          v44 = 0xE400000000000000;
          v43 = 1701736302;
        }
      }

      else
      {
        if (v37 == 4)
        {
          v43 = 0x5F65676172657661;
        }

        else
        {
          v43 = 0xD000000000000013;
        }

        if (v37 == 4)
        {
          v44 = 0xEF65636E65646163;
        }

        else
        {
          v44 = 0x800000020B4544E0;
        }
      }
    }

    else
    {
      v40 = 0xD000000000000015;
      if (v37 == 2)
      {
        v40 = 0xD000000000000012;
        v41 = 0x800000020B454490;
      }

      else
      {
        v41 = 0x800000020B4544B0;
      }

      if (v37)
      {
        v42 = 0x5F65676172657661;
      }

      else
      {
        v42 = 0x5F676E696C6C6F72;
      }

      if (v37 <= 1u)
      {
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      if (v37 <= 1u)
      {
        v44 = 0xEC00000065636170;
      }

      else
      {
        v44 = v41;
      }
    }

    v45 = *(v39 - 1);
    v46 = 1701736302;
    if (v45 == 6)
    {
      v46 = 0x5F65676172657661;
    }

    v47 = 0xED00007265776F70;
    if (v45 != 6)
    {
      v47 = 0xE400000000000000;
    }

    if (v45 == 4)
    {
      v48 = 0x5F65676172657661;
    }

    else
    {
      v48 = 0xD000000000000013;
    }

    v49 = 0xEF65636E65646163;
    if (v45 != 4)
    {
      v49 = 0x800000020B4544E0;
    }

    if (*(v39 - 1) <= 5u)
    {
      v46 = v48;
      v47 = v49;
    }

    v50 = 0xD000000000000015;
    if (v45 == 2)
    {
      v50 = 0xD000000000000012;
      v51 = 0x800000020B454490;
    }

    else
    {
      v51 = 0x800000020B4544B0;
    }

    if (*(v39 - 1))
    {
      v52 = 0x5F65676172657661;
    }

    else
    {
      v52 = 0x5F676E696C6C6F72;
    }

    if (*(v39 - 1) <= 1u)
    {
      v50 = v52;
      v51 = 0xEC00000065636170;
    }

    if (*(v39 - 1) <= 3u)
    {
      v53 = v50;
    }

    else
    {
      v53 = v46;
    }

    if (*(v39 - 1) <= 3u)
    {
      v54 = v51;
    }

    else
    {
      v54 = v47;
    }

    if (v43 == v53 && v44 == v54)
    {

LABEL_68:
      v8 = __dsta + 1;
      ++v35;
      --v36;
      if (__dsta + 1 != v119)
      {
        goto LABEL_69;
      }

      v8 = v119;
      v5 = v114;
      v6 = a3;
      v11 = v118;
      goto LABEL_133;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v55 & 1) == 0)
    {
      v9 = 0xEC00000065636170;
      goto LABEL_68;
    }

    if (!v34)
    {
      break;
    }

    v37 = *v39;
    *v39 = *(v39 - 1);
    *--v39 = v37;
    v56 = __CFADD__(v38++, 1);
    v9 = 0xEC00000065636170;
    if (v56)
    {
      goto LABEL_68;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__src, _BYTE *a2, _BYTE *a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        while (1)
        {
          v11 = *v6;
          if (v11 > 3)
          {
            if (*v6 > 5u)
            {
              if (v11 == 6)
              {
                v12 = 0x5F65676172657661;
                v13 = 0xED00007265776F70;
              }

              else
              {
                v13 = 0xE400000000000000;
                v12 = 1701736302;
              }
            }

            else if (v11 == 4)
            {
              v12 = 0x5F65676172657661;
              v13 = 0xEF65636E65646163;
            }

            else
            {
              v12 = 0xD000000000000013;
              v13 = 0x800000020B4544E0;
            }
          }

          else if (*v6 > 1u)
          {
            if (v11 == 2)
            {
              v12 = 0xD000000000000012;
              v13 = 0x800000020B454490;
            }

            else
            {
              v12 = 0xD000000000000015;
              v13 = 0x800000020B4544B0;
            }
          }

          else
          {
            v12 = 0x5F676E696C6C6F72;
            v13 = 0xEC00000065636170;
            if (*v6)
            {
              v12 = 0x5F65676172657661;
            }
          }

          v14 = *v4;
          if (v14 > 3)
          {
            if (*v4 > 5u)
            {
              if (v14 == 6)
              {
                v16 = 0xED00007265776F70;
                if (v12 != 0x5F65676172657661)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                v16 = 0xE400000000000000;
                if (v12 != 1701736302)
                {
                  goto LABEL_43;
                }
              }
            }

            else if (v14 == 4)
            {
              v16 = 0xEF65636E65646163;
              if (v12 != 0x5F65676172657661)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v16 = 0x800000020B4544E0;
              if (v12 != 0xD000000000000013)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            if (*v4 > 1u)
            {
              if (v14 == 2)
              {
                v16 = 0x800000020B454490;
                if (v12 != 0xD000000000000012)
                {
                  goto LABEL_43;
                }

                goto LABEL_40;
              }

              v15 = 0xD000000000000015;
              v16 = 0x800000020B4544B0;
            }

            else
            {
              v15 = 0x5F676E696C6C6F72;
              v16 = 0xEC00000065636170;
              if (*v4)
              {
                if (v12 != 0x5F65676172657661)
                {
                  goto LABEL_43;
                }

                goto LABEL_40;
              }
            }

            if (v12 != v15)
            {
              goto LABEL_43;
            }
          }

LABEL_40:
          if (v13 == v16)
          {

            goto LABEL_47;
          }

LABEL_43:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            v18 = v6 + 1;
            v19 = v6;
            if (v7 >= v6 && v7 < v18)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

LABEL_47:
          v20 = v4 + 1;
          v19 = v4;
          v18 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v20)
            {
              goto LABEL_52;
            }
          }

LABEL_51:
          *v7 = *v19;
LABEL_52:
          ++v7;
          if (v4 < v10)
          {
            v6 = v18;
            if (v18 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_116;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_123;
      }

LABEL_122:
      if (v6 >= v10)
      {
        goto LABEL_123;
      }

      return 1;
    }

    v6 = v7;
LABEL_121:
    if (v6 != v4)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_121;
  }

LABEL_60:
  v21 = v6 - 1;
  --v5;
  v22 = v10;
  __dsta = v6 - 1;
  do
  {
    v24 = *--v22;
    v23 = v24;
    if (v24 > 3)
    {
      if (v23 > 5)
      {
        if (v23 == 6)
        {
          v25 = 0x5F65676172657661;
          v26 = 0xED00007265776F70;
        }

        else
        {
          v26 = 0xE400000000000000;
          v25 = 1701736302;
        }
      }

      else if (v23 == 4)
      {
        v25 = 0x5F65676172657661;
        v26 = 0xEF65636E65646163;
      }

      else
      {
        v25 = 0xD000000000000013;
        v26 = 0x800000020B4544E0;
      }
    }

    else if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xD000000000000012;
        v26 = 0x800000020B454490;
      }

      else
      {
        v25 = 0xD000000000000015;
        v26 = 0x800000020B4544B0;
      }
    }

    else
    {
      v25 = 0x5F676E696C6C6F72;
      v26 = 0xEC00000065636170;
      if (v23)
      {
        v25 = 0x5F65676172657661;
      }
    }

    v27 = *v21;
    if (v27 > 3)
    {
      if (*v21 > 5u)
      {
        if (v27 == 6)
        {
          v30 = 0x5F65676172657661;
        }

        else
        {
          v30 = 1701736302;
        }

        if (v27 == 6)
        {
          v29 = 0xED00007265776F70;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        if (v25 != v30)
        {
          goto LABEL_104;
        }
      }

      else if (v27 == 4)
      {
        v29 = 0xEF65636E65646163;
        if (v25 != 0x5F65676172657661)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v29 = 0x800000020B4544E0;
        if (v25 != 0xD000000000000013)
        {
          goto LABEL_104;
        }
      }
    }

    else if (*v21 > 1u)
    {
      if (v27 == 2)
      {
        v29 = 0x800000020B454490;
        if (v25 != 0xD000000000000012)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v29 = 0x800000020B4544B0;
        if (v25 != 0xD000000000000015)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (*v21)
      {
        v28 = 0x5F65676172657661;
      }

      else
      {
        v28 = 0x5F676E696C6C6F72;
      }

      v29 = 0xEC00000065636170;
      if (v25 != v28)
      {
        goto LABEL_104;
      }
    }

    if (v26 == v29)
    {

      goto LABEL_105;
    }

LABEL_104:
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      if (v5 + 1 < v6 || v5 >= v6)
      {
        *v5 = *__dsta;
      }

      if (v10 > v4)
      {
        --v6;
        if (__dsta > v7)
        {
          goto LABEL_60;
        }
      }

      v6 = __dsta;
      if (__dsta == v4)
      {
        goto LABEL_122;
      }

      goto LABEL_123;
    }

LABEL_105:
    v21 = v6 - 1;
    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *v22;
    }

    --v5;
    v10 = v22;
  }

  while (v22 > v4);
  v10 = v22;
LABEL_116:
  if (v6 == v4)
  {
    goto LABEL_122;
  }

LABEL_123:
  memmove(v6, v4, v10 - v4);
  return 1;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v10, v7, v3, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v16, v7, v19);
    v12 = v19[0];

    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  return v12;
}

void specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *(a3 + 16);
  if (!v32)
  {
    v29 = 0;
LABEL_70:

    specialized _NativeSet.extractSubset(using:count:)(a1, a2, v29, a4);
    return;
  }

  v29 = 0;
  v5 = 0;
  v35 = a4 + 56;
  v31 = a3 + 32;
  while (2)
  {
    v6 = *(v31 + v5++);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v7 = Hasher._finalize()();
    v8 = -1 << *(a4 + 32);
    v9 = v7 & ~v8;
    v10 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & *(v35 + 8 * (v9 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v33 = v5;
    v34 = ~v8;
    while (1)
    {
      v12 = *(*(a4 + 48) + v9);
      if (v12 <= 3)
      {
        break;
      }

      if (*(*(a4 + 48) + v9) > 5u)
      {
        if (v12 == 6)
        {
          v16 = 0x5F65676172657661;
          v17 = 0xED00007265776F70;
          if (v6 > 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v17 = 0xE400000000000000;
          v16 = 1701736302;
          if (v6 > 3)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v12 == 4)
        {
          v16 = 0x5F65676172657661;
        }

        else
        {
          v16 = 0xD000000000000013;
        }

        if (v12 == 4)
        {
          v17 = 0xEF65636E65646163;
        }

        else
        {
          v17 = 0x800000020B4544E0;
        }

        if (v6 > 3)
        {
          goto LABEL_32;
        }
      }

LABEL_49:
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v26 = 0xD000000000000012;
        }

        else
        {
          v26 = 0xD000000000000015;
        }

        if (v6 == 2)
        {
          v23 = 0x800000020B454490;
        }

        else
        {
          v23 = 0x800000020B4544B0;
        }

        if (v16 == v26)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v24 = 0x5F676E696C6C6F72;
        v23 = 0xEC00000065636170;
        if (v6)
        {
          v24 = 0x5F65676172657661;
        }

        if (v16 == v24)
        {
          goto LABEL_53;
        }
      }

LABEL_54:
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_66;
      }

      v9 = (v9 + 1) & v34;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if ((*(v35 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        v5 = v33;
        goto LABEL_3;
      }
    }

    v13 = 0xD000000000000015;
    if (v12 == 2)
    {
      v13 = 0xD000000000000012;
    }

    v14 = 0x800000020B4544B0;
    if (v12 == 2)
    {
      v14 = 0x800000020B454490;
    }

    v15 = 0x5F676E696C6C6F72;
    if (*(*(a4 + 48) + v9))
    {
      v15 = 0x5F65676172657661;
    }

    if (*(*(a4 + 48) + v9) <= 1u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (*(*(a4 + 48) + v9) <= 1u)
    {
      v17 = 0xEC00000065636170;
    }

    else
    {
      v17 = v14;
    }

    if (v6 <= 3)
    {
      goto LABEL_49;
    }

LABEL_32:
    v18 = 0x5F65676172657661;
    v19 = 1701736302;
    if (v6 == 6)
    {
      v19 = 0x5F65676172657661;
    }

    v20 = 0xED00007265776F70;
    if (v6 != 6)
    {
      v20 = 0xE400000000000000;
    }

    if (v6 != 4)
    {
      v18 = 0xD000000000000013;
    }

    v21 = 0xEF65636E65646163;
    if (v6 != 4)
    {
      v21 = 0x800000020B4544E0;
    }

    if (v6 <= 5)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    if (v6 <= 5)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    if (v16 != v22)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (v17 != v23)
    {
      goto LABEL_54;
    }

LABEL_66:
    v27 = a1[v10];
    a1[v10] = v27 | v11;
    v5 = v33;
    if ((v27 & v11) != 0)
    {
LABEL_3:
      if (v5 == v32)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v29, 1))
  {
    ++v29;
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t specialized static TargetZone.ZoneType.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000065636170;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 3)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000020B454490;
    if (v3 != 2)
    {
      v5 = 0xD000000000000015;
      v6 = 0x800000020B4544B0;
    }

    v7 = 0x5F65676172657661;
    if (!*a1)
    {
      v7 = 0x5F676E696C6C6F72;
    }

    if (*a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = 0xEC00000065636170;
    }

    else
    {
      v9 = v6;
    }

    if (*a2 > 3u)
    {
      goto LABEL_13;
    }

LABEL_28:
    if (*a2 > 1u)
    {
      if (v4 == 2)
      {
        v16 = 0xD000000000000012;
      }

      else
      {
        v16 = 0xD000000000000015;
      }

      if (v4 == 2)
      {
        v2 = 0x800000020B454490;
      }

      else
      {
        v2 = 0x800000020B4544B0;
      }

      if (v8 != v16)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*a2)
      {
        v14 = 0x5F65676172657661;
      }

      else
      {
        v14 = 0x5F676E696C6C6F72;
      }

      if (v8 != v14)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_51;
  }

  v10 = 0x5F65676172657661;
  v11 = 0xED00007265776F70;
  if (v3 != 6)
  {
    v10 = 1701736302;
    v11 = 0xE400000000000000;
  }

  v12 = 0x5F65676172657661;
  v13 = 0xEF65636E65646163;
  if (v3 != 4)
  {
    v12 = 0xD000000000000013;
    v13 = 0x800000020B4544E0;
  }

  if (*a1 <= 5u)
  {
    v8 = v12;
  }

  else
  {
    v8 = v10;
  }

  if (v3 <= 5)
  {
    v9 = v13;
  }

  else
  {
    v9 = v11;
  }

  if (*a2 <= 3u)
  {
    goto LABEL_28;
  }

LABEL_13:
  if (*a2 > 5u)
  {
    if (v4 == 6)
    {
      v15 = 0x5F65676172657661;
    }

    else
    {
      v15 = 1701736302;
    }

    if (v4 == 6)
    {
      v2 = 0xED00007265776F70;
    }

    else
    {
      v2 = 0xE400000000000000;
    }

    if (v8 != v15)
    {
      goto LABEL_53;
    }
  }

  else if (v4 == 4)
  {
    v2 = 0xEF65636E65646163;
    if (v8 != 0x5F65676172657661)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = 0x800000020B4544E0;
    if (v8 != 0xD000000000000013)
    {
LABEL_53:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_54;
    }
  }

LABEL_51:
  if (v9 != v2)
  {
    goto LABEL_53;
  }

  v17 = 0;
LABEL_54:

  return v17 & 1;
}

void partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t Published.Publisher.didSet.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v18 - v4;
  v6 = type metadata accessor for NSRunLoop();
  WitnessTable = swift_getWitnessTable();
  v8 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v18[0] = a1;
  v18[1] = v6;
  v18[2] = WitnessTable;
  v18[3] = v8;
  v9 = type metadata accessor for Publishers.ReceiveOn();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v18 - v12;
  v14 = [objc_opt_self() mainRunLoop];
  v18[0] = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v5);

  swift_getWitnessTable();
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v10 + 8))(v13, v9);
  return v16;
}

unint64_t type metadata accessor for NSRunLoop()
{
  result = lazy cache variable for type metadata for NSRunLoop;
  if (!lazy cache variable for type metadata for NSRunLoop)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSRunLoop);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSRunLoop();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
}

unint64_t Apple_Workout_Core_MultisportTransitionState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_MultisportTransitionState@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_MultisportTransitionState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MultisportTransitionState(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MultisportTransitionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MultisportTransitionState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  swift_beginAccess();
  result = *(v1 + 16);
  if (*(v1 + 24))
  {
    return 0.0;
  }

  return result;
}

void key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v3;
  *(v6 + 24) = 0;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.setter(double a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v5 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v5);
    *(v1 + v3) = v5;
  }

  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL Apple_Workout_Core_MultiSportMetricsPublisher.hasCurrentActivityStartSinceReference.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall Apple_Workout_Core_MultiSportMetricsPublisher.clearCurrentActivityStartSinceReference()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v3 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14);
  }

  return Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.modify;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.modify;
}

double Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

void key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *(v10 + v11) = v7;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.setter(uint64_t *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a1;
  swift_beginAccess();
  *(v8 + v9) = a2;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastLegDistance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastLegDistance.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v9 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v5;

  free(v4);
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastLegAveragePace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastLegAveragePace.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

void key path getter for Apple_Workout_Core_MultiSportMetricsPublisher.transitionState : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

void key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.transitionState : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = v7 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  *v8 = v3;
  *(v8 + 8) = v4;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  v8 = v7 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  *v8 = v3;
  *(v8 + 8) = v4;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  v11 = v8 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  *v11 = v3;
  *(v11 + 8) = v6;

  free(v2);
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v2 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  return *(v1 + v2);
}

void key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount : Apple_Workout_Core_MultiSportMetricsPublisher(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v6 + v7) = v3;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v6 + v7) = a1;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v7 + v10) = v3;

  free(v2);
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastEffectiveTransitionDateSinceReference.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastEffectiveTransitionDateSinceReference.modify;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v9 + v10, v8);
  v11 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v8, a2);
  }

  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity(a1, v16);
  v17 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v19 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v19);
    *(a2 + v17) = v19;
  }

  outlined init with take of Apple_Workout_Core_Activity(v16, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  v20 = *a5;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v11, v19 + v20);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v12 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v12);
    *(v4 + v10) = v12;
  }

  outlined init with take of Apple_Workout_Core_Activity(a1, v9);
  v13 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v14 = *a2;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v9, v12 + v14);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.nextMultisportActivity.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14);
  }

  return Apple_Workout_Core_MultiSportMetricsPublisher.nextMultisportActivity.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    outlined init with copy of Apple_Workout_Core_Activity(*(v4 + 120), *(v4 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v13 = *(v4 + 96);
    v14 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v12, v16);
    (*(v14 + 56))(v16, 0, 1, v13);
    v17 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v16, v8 + v17);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_Activity(v11);
  }

  else
  {
    v18 = *(v4 + 72);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v4 + 128);
      v22 = *(v4 + 72);
      type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      swift_allocObject();
      v20 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v23 = *(v4 + 96);
    v24 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v11, v16);
    (*(v24 + 56))(v16, 0, 1, v23);
    v25 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v16, v20 + v25);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);
  free(v16);

  free(v4);
}

BOOL Apple_Workout_Core_MultiSportMetricsPublisher.hasCurrentActivity.getter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v8 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v7 + v8, v6);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return v10;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.clearCurrentActivity()(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v10);
    *(v3 + v8) = v10;
  }

  v11 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = *a1;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v7, v10 + v12);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static Apple_Workout_Core_MultisportTransitionState._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v32 = &v32 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v6 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime) = 0;
  v33 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance) = 0;
  v34 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace) = 0;
  v10 = v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  *v10 = 0;
  *(v10 + 8) = 1;
  v35 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount) = 0;
  v36 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference) = 0;
  v37 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  v8(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, 1, 1, v7);
  swift_beginAccess();
  v11 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v8;
  v12 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  v13 = v32;
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v12, v32);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v13, v1 + v6);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_beginAccess();
  *(v1 + v9) = v15;
  v16 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = v33;
  swift_beginAccess();
  *(v1 + v18) = v17;
  v19 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = v34;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = (a1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState);
  swift_beginAccess();
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  swift_beginAccess();
  *v10 = v23;
  *(v10 + 8) = v22;
  v24 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  LODWORD(v24) = *(a1 + v24);
  v25 = v35;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v36;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v29, v13);

  v30 = v37;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v13, v1 + v30);
  swift_endAccess();
  return v1;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.__deallocating_deinit()
{
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v11);
    *(v4 + v8) = v10;
  }

  return closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
          }

          goto LABEL_5;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
          goto LABEL_18;
        }

        closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else if (result <= 6)
      {
        if (result == 5)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
LABEL_5:
          closure #3 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        closure #6 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else
      {
        switch(result)
        {
          case 7:
            closure #7 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
            goto LABEL_5;
          case 9:
            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
LABEL_18:
            closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(v16, v17, v18, v19, v20);
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Activity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

void Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity, 2);
    v9 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
    swift_beginAccess();
    if (*(a1 + v9))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v10 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
    swift_beginAccess();
    if (*(a1 + v11))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = (a1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState);
    swift_beginAccess();
    if (*v12)
    {
      lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
    swift_beginAccess();
    if (*(a1 + v13))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, 9);
  }
}

void closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[5] = a4;
  v19[0] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v17, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v11, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v11, v16);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_Activity(v16);
}

BOOL closure #1 in static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  v9 = MEMORY[0x28223BE20](v72, v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v69 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v70 = &v66 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v66 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  swift_beginAccess();
  v31 = *(a2 + 24);
  if (v30)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v29 != *(a2 + 16))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v68 = v11;
  v32 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v32, v28);
  v33 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  v34 = *(v72 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(v28, v14);
  outlined init with copy of Apple_Workout_Core_Activity?(a2 + v33, &v14[v34]);
  v35 = *(v5 + 48);
  if (v35(v14, 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v35(&v14[v34], 1, v4) == 1)
    {
      v67 = v35;
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v14, v25);
  if (v35(&v14[v34], 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined destroy of Apple_Workout_Core_Activity(v25);
    goto LABEL_12;
  }

  v67 = v35;
  v36 = v71;
  outlined init with take of Apple_Workout_Core_Activity(&v14[v34], v71);

  v37 = static Apple_Workout_Core_Activity.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_Activity(v36);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined destroy of Apple_Workout_Core_Activity(v25);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  v38 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  if (v39 != *(a2 + v40))
  {
    goto LABEL_32;
  }

  v41 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  v42 = *(a1 + v41);
  v43 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  if (v42 != *(a2 + v43))
  {
    goto LABEL_32;
  }

  v44 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  if (v45 != *(a2 + v46))
  {
    goto LABEL_32;
  }

  v47 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v48 = *(a1 + v47);
  v49 = (a2 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState);
  swift_beginAccess();
  v50 = *v49;
  if (*(v49 + 8) != 1)
  {
    v51 = v68;
    v52 = v70;
    if (v48 != v50)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v51 = v68;
  v52 = v70;
  if (!v50)
  {
    if (!v48)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if (v50 != 1)
  {
    if (v48 == 2)
    {
      goto LABEL_27;
    }

LABEL_32:

    return 0;
  }

  if (v48 != 1)
  {
    goto LABEL_32;
  }

LABEL_27:
  v53 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  LODWORD(v53) = *(a1 + v53);
  v54 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  if (v53 != *(a2 + v54))
  {
    goto LABEL_32;
  }

  v55 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  v56 = *(a1 + v55);
  v57 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  if (v56 != *(a2 + v57))
  {
    goto LABEL_32;
  }

  v58 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v58, v52);
  v59 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  v60 = *(v72 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(v52, v51);
  outlined init with copy of Apple_Workout_Core_Activity?(a2 + v59, v51 + v60);
  v61 = v67;
  if (v67(v51, 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v52, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v61(v51 + v60, 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v51, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      return 1;
    }

LABEL_36:
    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v51, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    return 0;
  }

  v63 = v69;
  outlined init with copy of Apple_Workout_Core_Activity?(v51, v69);
  if (v61(v51 + v60, 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v52, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined destroy of Apple_Workout_Core_Activity(v63);
    goto LABEL_36;
  }

  v64 = v71;
  outlined init with take of Apple_Workout_Core_Activity(v51 + v60, v71);
  v65 = static Apple_Workout_Core_Activity.== infix(_:_:)();

  outlined destroy of Apple_Workout_Core_Activity(v64);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v52, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined destroy of Apple_Workout_Core_Activity(v63);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v51, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return (v65 & 1) != 0;
}

Swift::Int Apple_Workout_Core_MultiSportMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MultiSportMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MultiSportMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MultiSportMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MultiSportMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_MultisportTransitionState@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MultiSportMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MultiSportMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B26_MultisportTransitionStateOGMd, &_sSay11WorkoutCore06Apple_a1_B26_MultisportTransitionStateOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double keypath_get_8Tm_0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_MultisportTransitionState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_MultisportTransitionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_MultisportTransitionState(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_MultisportTransitionState(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_Activity?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Workout_Core_Activity?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_Activity?)
  {
    type metadata accessor for Apple_Workout_Core_Activity(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_Core_Activity?);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *WorkoutConfiguration.sanitized()(uint64_t a1)
{
  v1 = specialized WorkoutConfiguration.sanitized()();

  return v1;
}

char *specialized WorkoutConfiguration.sanitized()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v6 = [*&v0[v5] metadata];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);

  v9 = *&v1[v5];
  v10 = FIUIWorkoutActivityType.activityTypeForRegistry()();

  v11 = *&v1[v5];
  *&v1[v5] = v10;
  v12 = v10;

  v13 = [v12 metadata];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = *(v14 + 16);

  v38 = v8;
  if (v8 != v15)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v20 = 136315906;
      v35 = v19;
      v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v23 = v39;
      v22 = v40;
      v24 = v37;
      (*(v39 + 16))(v37, &v17[v21], v40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v23 + 8))(v24, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v41);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v38;
      *(v20 + 22) = 2048;
      *(v20 + 24) = v15;
      *(v20 + 32) = 2080;
      v29 = WorkoutConfiguration.logDisplayName.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v41);

      *(v20 + 34) = v31;
      _os_log_impl(&dword_20AEA4000, v18, v35, "[ConfigurationStore] sanitized activityType in workout_configuration %s, metadata count (before: %ld, after: %ld) (%s)", v20, 0x2Au);
      v32 = v36;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for RaceMetadataKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceMetadataKeys(_WORD *result, int a2, int a3)
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

NSString __swiftcall NSString.firstLetterCapitalized()()
{
  v1 = [v0 substringToIndex_];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.uppercased()();

  v2 = [v0 substringFromIndex_];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.init<A>(_:)();
  v7 = v3;
  String.append<A>(contentsOf:)();

  v4 = MEMORY[0x20F2E6C00](v6, v7);

  return v4;
}

id @objc NSString.firstLetterCapitalized()(void *a1)
{
  v1 = a1;
  v2 = NSString.firstLetterCapitalized()();

  return v2;
}

id WorkoutCoreInjector.inject()()
{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for nanoSyncControl, &static WorkoutCoreInjector.nanoSyncControl, one-time initialization function for nanoSyncControl);
}

{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for unitManager, &static WorkoutCoreInjector.unitManager, one-time initialization function for unitManager);
}

{
  if (one-time initialization token for unitManager != -1)
  {
    swift_once();
  }

  v0 = [static WorkoutCoreInjector.unitManager unitManager];

  return v0;
}

{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for formattingManager, &static WorkoutCoreInjector.formattingManager, one-time initialization function for formattingManager);
}

{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for backgroundAssertionManager, &static WorkoutCoreInjector.backgroundAssertionManager, one-time initialization function for backgroundAssertionManager);
}

void one-time initialization function for formattingManager()
{
  if (one-time initialization token for unitManager != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.unitManager;
  v1 = objc_allocWithZone(MEMORY[0x277D0A7E8]);
  v2 = v0;
  v3 = [v1 initWithUnitManager_];

  if (v3)
  {
    static WorkoutCoreInjector.formattingManager = v3;
  }

  else
  {
    __break(1u);
  }
}

char *WorkoutCoreInjector.inject()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.healthStore;
  v1 = objc_allocWithZone(type metadata accessor for QueryClient());
  return QueryClient.init(_:)(v0);
}

id @objc static WorkoutCoreInjector.shared.getter(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id one-time initialization function for nanoSyncControl(uint64_t a1, Class *a2, void *a3)
{
  if (one-time initialization token for shared != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  if (one-time initialization token for healthStore != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  result = [objc_allocWithZone(*a2) initWithHealthStore_];
  *a3 = result;
  return result;
}

id WorkoutCoreInjector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCoreInjector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static WorkoutConfiguration.makeOpenGoal(activityType:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v3 = specialized static WorkoutConfiguration.make(activityType:goal:)(a1, v2);

  return v3;
}

_OWORD *specialized static WorkoutConfigurationFactory.make(for:activityMoveMode:)(void *a1, void *a2)
{
  v250 = a2;
  v234 = a1;
  v247 = type metadata accessor for Date();
  v228 = *(v247 - 8);
  v3 = MEMORY[0x28223BE20](v247, v2);
  v222 = &v211 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v227 = &v211 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v223 = &v211 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v224 = &v211 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v214 = *(v13 - 8);
  v215 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v213 = &v211 - v15;
  v16 = type metadata accessor for UUID();
  v248 = *(v16 - 1);
  v17 = v248;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v216 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v217 = &v211 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v218 = &v211 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v219 = &v211 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v221 = &v211 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v220 = &v211 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v211 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v211 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v211 - v45;
  v249 = &v211 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  i = swift_allocObject();
  i[1] = xmmword_20B42FA20;
  v47 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v236 = specialized Occurrence.__allocating_init(count:)(0);
  v48 = *(v17 + 16);
  v246 = v43;
  v48(v43, v46, v16);
  v229 = type metadata accessor for GoalWorkoutConfiguration(0);
  v49 = objc_allocWithZone(v229);
  swift_beginAccess();
  v261 = v47;
  v235 = _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v233 = v47;
  Published.init(initialValue:)();
  swift_endAccess();
  v48(v39, v43, v16);
  v243 = v48;
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v51 = v228 + 7;
  v50 = v228[7];
  v242 = v50;
  v52 = v247;
  v50(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v247);
  v50(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v52);
  v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v241 = type metadata accessor for WorkoutPlan.Route();
  v54 = *(v241 - 8);
  v55 = *(v54 + 56);
  v239 = v54 + 56;
  v240 = v55;
  v55(&v49[v53], 1, 1, v241);
  v56 = v248;
  v237 = *(v248 + 56);
  v238 = v248 + 56;
  v237(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v16);
  v57 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v245 = v39;
  v48(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v39, v16);
  v58 = v234;
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v234;
  v49[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v236;
  swift_beginAccess();
  *&v49[v57] = 0;
  v49[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v236 = type metadata accessor for WorkoutConfiguration(0);
  v262.receiver = v49;
  v262.super_class = v236;
  v234 = v58;
  v59 = objc_msgSendSuper2(&v262, sel_init);

  v60 = *(v56 + 8);
  v248 = v56 + 8;
  v60(v39, v16);
  v61 = v246;
  v60(v246, v16);
  v62 = v249;
  v60(v249, v16);
  *(i + 4) = v59;
  v226 = objc_opt_self();
  v63 = [v226 minuteUnit];
  v225 = objc_opt_self();
  v64 = [v225 quantityWithUnit:v63 doubleValue:30.0];

  v65 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v64];
  UUID.init()();
  v231 = specialized Occurrence.__allocating_init(count:)(0);
  v66 = v243;
  v243(v61, v62, v16);
  v67 = objc_allocWithZone(v229);
  swift_beginAccess();
  v259 = v65;
  v233 = v65;
  Published.init(initialValue:)();
  swift_endAccess();
  v68 = v245;
  v66(v245, v61, v16);
  *&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v69 = v247;
  v70 = v242;
  v242(&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v247);
  v230 = v51;
  v70(&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v69);
  v71 = i;
  v240(&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v241);
  v237(&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v16);
  v72 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v232 = v17 + 16;
  v66(&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v68, v16);
  v73 = v234;
  *&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v234;
  v67[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v67[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v231;
  swift_beginAccess();
  *&v67[v72] = 0;
  v67[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v260.receiver = v67;
  v260.super_class = v236;
  v74 = v73;
  v75 = objc_msgSendSuper2(&v260, sel_init);

  v60(v68, v16);
  v60(v246, v16);
  v233 = v16;
  v231 = v60;
  v60(v249, v16);
  v71[5] = v75;
  v263 = v71;
  v234 = v74;
  if (v250 == 1)
  {
    v76 = [v226 kilocalorieUnit];
    v77 = [v225 quantityWithUnit:v76 doubleValue:200.0];

    v78 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v77];
    v79 = v249;
    UUID.init()();
    v212 = specialized Occurrence.__allocating_init(count:)(0);
    v80 = v246;
    v81 = v233;
    v82 = v243;
    v243(v246, v79, v233);
    v83 = objc_allocWithZone(v229);
    swift_beginAccess();
    v257 = v78;
    i = v78;
    Published.init(initialValue:)();
    swift_endAccess();
    v84 = v245;
    v82(v245, v80, v81);
    *&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v85 = v247;
    v86 = v242;
    v242(&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v247);
    v86(&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v85);
    v74 = v234;
    v240(&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v241);
    v237(&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v81);
    v87 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v82(&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v84, v81);
    *&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v74;
    v83[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v83[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v212;
    swift_beginAccess();
    *&v83[v87] = 0;
    v83[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v251.receiver = v83;
    v251.super_class = v236;
    v88 = v74;
    v89 = objc_msgSendSuper2(&v251, sel_init);

    v90 = v231;
    v231(v84, v81);
    v90(v80, v81);
    v90(v249, v81);
    v91 = v89;
    MEMORY[0x20F2E6F30]();
    if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v71 = v263;
  }

  result = [objc_opt_self() fiui:v74 supportedGoalTypesForActivityType:v250 activityMoveMode:?];
  if (result)
  {
    v93 = result;
    _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v94 >> 62)
    {
      goto LABEL_22;
    }

    v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v71; v95; i = v71)
    {
      v96 = 0;
      v250 = (v94 & 0xC000000000000001);
      v97 = v94 & 0xFFFFFFFFFFFFFF8;
      v98 = MEMORY[0x277D84F90];
      v99 = v94;
      while (1)
      {
        if (v250)
        {
          v100 = MEMORY[0x20F2E7A20](v96, v94);
        }

        else
        {
          if (v96 >= *(v97 + 16))
          {
            goto LABEL_21;
          }

          v100 = *(v94 + 8 * v96 + 32);
        }

        v101 = v100;
        v102 = (v96 + 1);
        if (__OFADD__(v96, 1))
        {
          break;
        }

        v71 = v95;
        v103 = [v100 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
        }

        v105 = *(v98 + 2);
        v104 = *(v98 + 3);
        if (v105 >= v104 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v98);
        }

        *(v98 + 2) = v105 + 1;
        *&v98[8 * v105 + 32] = v103;
        ++v96;
        v95 = v71;
        v94 = v99;
        if (v102 == v71)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v95 = __CocoaSet.count.getter();
    }

    v98 = MEMORY[0x277D84F90];
LABEL_24:

    v106 = *(v98 + 2);
    v107 = 32;
    v108 = i;
    do
    {
      if (!v106)
      {

        goto LABEL_31;
      }

      v109 = *&v98[v107];
      v107 += 8;
      --v106;
    }

    while (v109 != 1);

    v110 = [v226 mileUnit];
    v111 = [v225 quantityWithUnit:v110 doubleValue:2.0];

    v112 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v111];
    v113 = v249;
    UUID.init()();
    v250 = specialized Occurrence.__allocating_init(count:)(0);
    v114 = v246;
    v115 = v233;
    v116 = v243;
    v243(v246, v113, v233);
    v117 = objc_allocWithZone(v229);
    swift_beginAccess();
    v257 = v112;
    i = v112;
    Published.init(initialValue:)();
    swift_endAccess();
    v118 = v245;
    v116(v245, v114, v115);
    *&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v119 = v247;
    v120 = v242;
    v242(&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v247);
    v120(&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v119);
    v240(&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v241);
    v237(&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v115);
    v121 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v116(&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v118, v115);
    v122 = v234;
    *&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v234;
    v117[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v117[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v250;
    swift_beginAccess();
    *&v117[v121] = 0;
    v117[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v258.receiver = v117;
    v258.super_class = v236;
    v123 = v122;
    v124 = objc_msgSendSuper2(&v258, sel_init);

    v125 = v231;
    v231(v118, v115);
    v125(v114, v115);
    v125(v249, v115);
    v126 = v124;
    MEMORY[0x20F2E6F30]();
    if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v108 = v263;
LABEL_31:
    v127 = FIUIWorkoutActivityType.configurationTypes.getter();
    v128 = specialized Set.contains(_:)(3u, v127);

    if (v128)
    {
      v129 = v226;
      v130 = [v226 mileUnit];
      v131 = v225;
      v132 = [v225 quantityWithUnit:v130 doubleValue:2.0];

      v133 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v132];
      v134 = [v129 minuteUnit];
      v135 = [v131 quantityWithUnit:v134 doubleValue:30.0];

      v136 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v135];
      v137 = v249;
      UUID.init()();
      v250 = specialized Occurrence.__allocating_init(count:)(0);
      v138 = v246;
      v139 = v233;
      v140 = v243;
      v243(v246, v137, v233);
      v141 = objc_allocWithZone(type metadata accessor for PacerWorkoutConfiguration(0));
      swift_beginAccess();
      v254 = v133;
      i = v133;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      v254 = v136;
      v229 = v136;
      Published.init(initialValue:)();
      swift_endAccess();
      v142 = v245;
      v140(v245, v138, v139);
      *&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v143 = v247;
      v144 = v242;
      v242(&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v247);
      v144(&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v143);
      v145 = v234;
      v240(&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v241);
      v237(&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v139);
      v146 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v140(&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v142, v139);
      *&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v145;
      v141[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
      *&v141[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v250;
      swift_beginAccess();
      *&v141[v146] = 0;
      v141[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v252.receiver = v141;
      v252.super_class = v236;
      v147 = v145;
      v148 = objc_msgSendSuper2(&v252, sel_init);

      v149 = v231;
      v231(v142, v139);
      v149(v138, v139);
      v149(v249, v139);
      v150 = v148;
      MEMORY[0x20F2E6F30]();
      if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v108 = v263;
    }

    v151 = FIUIWorkoutActivityType.configurationTypes.getter();
    v152 = specialized Set.contains(_:)(1u, v151);

    if (v152)
    {
      v153 = v249;
      UUID.init()();
      v154 = objc_allocWithZone(type metadata accessor for IntervalWorkout(0));
      v155 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0x6D6B3120782034, 0xE700000000000000, v153, 0, 0);
      UUID.init()();
      v250 = specialized Occurrence.__allocating_init(count:)(0);
      v156 = v246;
      v157 = v233;
      v158 = v243;
      v243(v246, v153, v233);
      v159 = objc_allocWithZone(type metadata accessor for IntervalWorkoutConfiguration(0));
      v160 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
      LOBYTE(v257) = 0;
      v161 = v213;
      Published.init(initialValue:)();
      (*(v214 + 32))(&v159[v160], v161, v215);
      swift_beginAccess();
      v254 = v155;
      i = v155;
      Published.init(initialValue:)();
      swift_endAccess();
      v162 = v245;
      v158(v245, v156, v157);
      *&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v163 = v247;
      v164 = v242;
      v242(&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v247);
      v164(&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v163);
      v165 = v234;
      v240(&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v241);
      v237(&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v157);
      v166 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v158(&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v162, v157);
      *&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v165;
      v159[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
      *&v159[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v250;
      swift_beginAccess();
      *&v159[v166] = 0;
      v159[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v253.receiver = v159;
      v253.super_class = v236;
      v167 = v165;
      v168 = objc_msgSendSuper2(&v253, sel_init);

      v169 = v231;
      v231(v162, v157);
      v169(v156, v157);
      v169(v249, v157);
      v170 = v168;
      MEMORY[0x20F2E6F30]();
      if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v108 = v263;
    }

    v171 = FIUIWorkoutActivityType.configurationTypes.getter();
    v172 = specialized Set.contains(_:)(2u, v171);

    if (v172)
    {
      v173 = MEMORY[0x20F2E6C00](7364973, 0xE300000000000000);
      v174 = [objc_opt_self() systemImageNamed_];

      if (one-time initialization token for outdoorRun != -1)
      {
        swift_once();
      }

      v175 = static FIUIWorkoutActivityType.outdoorRun;
      UUID.init()();
      UUID.init()();
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1600.0, 1610.0);
      v177 = v176;
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(480.0, 500.0);
      v179 = v178;
      static Date.now.getter();
      UUID.init()();
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1600.0, 1610.0);
      v181 = v180;
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(400.0, 420.0);
      v183 = v182;
      v184 = v227;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v185 = v228 + 1;
      v186 = v228[1];
      v186(v184, v247);
      v250 = v174;
      i = v175;
      v234 = v185;
      v235 = v186;
      if (v174 && (v187 = UIImagePNGRepresentation(v174)) != 0)
      {
        v188 = v187;
        v189 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v225 = v190;
        v226 = v189;
      }

      else
      {
        v225 = 0xC000000000000000;
        v226 = 0;
      }

      v191 = v249;
      UUID.init()();
      v229 = specialized Occurrence.__allocating_init(count:)(0);
      v192 = v246;
      v193 = v233;
      v194 = v243;
      v243(v246, v220, v233);
      v194(v245, v221, v193);
      v195 = v228[2];
      v196 = v247;
      v195(v227, v224, v247);
      v194(v218, v219, v193);
      v195(v222, v223, v196);
      v194(v217, v191, v193);
      v197 = objc_allocWithZone(type metadata accessor for RaceWorkoutConfiguration(0));
      v198 = &v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
      *v198 = 0x1000000000000013;
      v198[1] = 0x800000020B46BF60;
      v194(&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v192, v193);
      swift_beginAccess();
      v256 = 1;
      Published.init(initialValue:)();
      swift_endAccess();
      v194(&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v245, v193);
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v177;
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v179;
      v195(&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v227, v196);
      v194(&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v218, v193);
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v181;
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v183;
      v195(&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v222, v196);
      v199 = &v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
      v200 = v225;
      *v199 = v226;
      v199[1] = v200;
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
      *&v197[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE999999999999ALL;
      v202 = v216;
      v201 = v217;
      v194(v216, v217, v193);
      *&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v203 = v242;
      v242(&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v196);
      v203(&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v196);
      v240(&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v241);
      v237(&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v193);
      v204 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v194(&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v202, v193);
      v205 = i;
      *&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = i;
      v197[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
      *&v197[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v229;
      swift_beginAccess();
      *&v197[v204] = 0;
      v197[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v255.receiver = v197;
      v255.super_class = v236;
      v206 = v205;
      v207 = objc_msgSendSuper2(&v255, sel_init);
      v208 = v231;
      v231(v202, v193);
      v208(v201, v193);
      v209 = v235;
      v235(v222, v196);
      v208(v218, v193);
      v209(v227, v196);
      v208(v245, v193);
      v208(v246, v193);
      v208(v249, v193);
      v209(v223, v196);
      v208(v219, v193);
      v209(v224, v196);
      v208(v221, v193);
      v208(v220, v193);
      v210 = v207;
      MEMORY[0x20F2E6F30]();
      if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v263;
    }

    return v108;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_3(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t Date.logString.getter()
{
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v0 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v58 = a3;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v59 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v52 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v54 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v52 - v22;
  v24 = type metadata accessor for DateInterval();
  v60 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v52 - v30;
  v32 = a1;
  v33 = v62;
  v34 = static Date.> infix(_:_:)();
  v57 = v13;
  v35 = *(v13 + 16);
  if (v34)
  {
    v63 = (v13 + 16);
    v55 = v35;
    v35(v23, v33, v12);
    v52 = v32;
    v53 = v12;
    v55(v20, v32, v12);
    v63 = v31;
    DateInterval.init(start:end:)();
    v36 = *(v56 + 16);
    if (v36)
    {
      v37 = v56 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v38 = *(v60 + 72);
      v39 = (v60 + 48);
      v40 = (v60 + 32);
      v41 = (v60 + 8);
      v42 = 0.0;
      do
      {
        DateInterval.intersection(with:)();
        if ((*v39)(v11, 1, v24) == 1)
        {
          outlined destroy of DateInterval?(v11, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        }

        else
        {
          (*v40)(v28, v11, v24);
          DateInterval.duration.getter();
          v44 = v43;
          (*v41)(v28, v24);
          v42 = v42 + v44;
        }

        v37 += v38;
        --v36;
      }

      while (v36);
    }

    v47 = v59;
    outlined init with copy of Date?(v58, v59);
    v48 = v57;
    v49 = v53;
    if ((*(v57 + 48))(v47, 1, v53) == 1)
    {
      outlined destroy of DateInterval?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v50 = v54;
      (*(v48 + 32))(v54, v47, v49);
      Date.timeIntervalSince(_:)();
      (*(v48 + 8))(v50, v49);
    }

    v51 = v63;
    Date.addingTimeInterval(_:)();
    return (*(v60 + 8))(v51, v24);
  }

  else
  {
    v45 = v61;

    return (v35)(v45, v33, v12);
  }
}

uint64_t outlined destroy of DateInterval?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static Date.loggingString(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DateInterval?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 7104878;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v12 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v12 stringFromDate_];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 8))(v10, v6);
    return v15;
  }
}

uint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance Date()
{
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v0 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t WorkoutConfigurationWeight.init(completedCount:daysAgo:addedWeight:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double one-time initialization function for zero()
{
  *&result = 0x100000000;
  static WorkoutConfigurationWeight.zero = 0x100000000;
  dword_27C72E250 = 0;
  return result;
}

double static WorkoutConfigurationWeight.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = dword_27C72E250;
  result = *&static WorkoutConfigurationWeight.zero;
  *a1 = static WorkoutConfigurationWeight.zero;
  *(a1 + 8) = v1;
  return result;
}

uint64_t WorkoutConfigurationWeight.description.getter()
{
  _StringGuts.grow(_:)(55);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B46BF80);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](0x73796164202F2029, 0xEC000000286F6741);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B46BFA0);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationWeight(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationWeight(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t Apple_Workout_Core_Zone.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_Zone(0);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_Zone(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_Zone;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_Zone)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_Zone.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Zone(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_Zone.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Zone(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_Zone._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_Zone._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_Zone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 2 || result == 3)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_Zone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 16) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v3 + 20) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for Apple_Workout_Core_Zone(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

Swift::Int Apple_Workout_Core_Zone.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_Zone(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_Zone@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_Zone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_Zone@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_Zone._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_Zone(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_Zone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_Zone(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_Zone(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static HKQuery._predicateForWorkoutsWithMetadata(indoor:)(char a1)
{
  if (a1)
  {
    v1 = 4;
  }

  else
  {
    v1 = 5;
  }

  v2 = objc_opt_self();
  v3 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = [v2 predicateForObjectsWithMetadataKey:v3 operatorType:v1 value:isa];

  return v5;
}

void closure #1 in static HKQuery.lastWorkoutQuery(activityType:completion:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id, void *, __n128))
{
  if (!a2 || (v6 = specialized _arrayConditionalCast<A, B>(_:)(a2)) == 0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.app);

    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGSgMd, &_sSaySo8HKSampleCGSgMR);
      v19 = Optional.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v22 = Optional.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Unexpected query result with samples: %s, error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    (a4)(0, a3);
    return;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_19:

    lazy protocol witness table accessor for type LastWorkoutQueryError and conformance LastWorkoutQueryError();
    v26 = swift_allocError();
    (a4)(0, v26);
    v12 = v26;

    goto LABEL_12;
  }

  v25 = v6;
  v8 = __CocoaSet.count.getter();
  v6 = v25;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_5:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v11 = MEMORY[0x20F2E7A20](v10);
LABEL_10:
    v27 = v11;

    (a4)(v27, a3);
    v12 = v27;

LABEL_12:

    return;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v7 + 16))
  {
    v11 = *(v6 + 8 * v10 + 32);
    goto LABEL_10;
  }

  __break(1u);
}

id @objc static HKQuery.lastWorkoutQuery(activityType:completion:)(int a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  v8 = specialized static HKQuery.lastWorkoutQuery(activityType:completion:)(v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned HKWorkout?, @unowned NSError?) -> (), v6);

  return v8;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned HKWorkout?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id @objc static HKQuery._swimmingLocationTypePredicate(activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(v3);

  return v4;
}

id @objc static HKQuery._predicateForWorkoutsWithMetadata(indoor:)(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v4 = objc_opt_self();
  v5 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v7 = [v4 predicateForObjectsWithMetadataKey:v5 operatorType:v3 value:isa];

  return v7;
}

id @objc static HKQuery._predicateForWorkouts(swimmingLocationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277CCC510];
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v5;
  v8 = [v6 initWithInteger_];
  v9 = [v4 predicateForObjectsWithMetadataKey:v7 operatorType:4 value:v8];

  return v9;
}

id specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(void *a1)
{
  if ([a1 identifier] != 46)
  {
    return 0;
  }

  result = [a1 swimmingLocationType];
  if (result)
  {
    v3 = [a1 swimmingLocationType];
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277CCC510];
    v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v7 = v5;
    v8 = [v6 initWithInteger_];
    v9 = [v4 predicateForObjectsWithMetadataKey:v7 operatorType:4 value:v8];

    return v9;
  }

  return result;
}

id specialized static HKQuery.lastWorkoutQuery(activityType:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B425990;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 _predicateForObjectsFromAppleWatches];
  v41 = v6;
  type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for HKSampleQuery, 0x277CCD8D0);
  v8 = [swift_getObjCClassFromMetadata() predicateForWorkoutsWithWorkoutActivityType_];
  if ([a1 isIndoor])
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  v10 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v12 = [v7 predicateForObjectsWithMetadataKey:v10 operatorType:v9 value:isa];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B42FA20;
  *(inited + 32) = v8;
  *(inited + 40) = v12;
  v14 = v8;
  v15 = v12;
  specialized Array.append<A>(contentsOf:)(inited);
  v16 = specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(a1);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    MEMORY[0x20F2E6F30]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.default);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v34, v35, "[LastWorkoutQuery] subPredicates is empty. Not executing last workout query.", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    return 0;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_18;
  }

  result = __CocoaSet.count.getter();
LABEL_10:
  v38 = v15;
  v39 = v14;
  v37 = v17;
  if (result != 1)
  {
    v20 = a3;
    v21 = a2;
    type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
    v23 = Array._bridgeToObjectiveC()().super.isa;
    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    goto LABEL_15;
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    v20 = a3;
    v21 = a2;
    v22 = MEMORY[0x20F2E7A20](0, v41);
    goto LABEL_15;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = a3;
    v21 = a2;
    v22 = *(v41 + 32);
LABEL_15:
    v24 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
    type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for HKSeriesType, 0x277CCD920);
    v25 = [swift_getObjCClassFromMetadata() workoutType];
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20B425990;
    *(v26 + 32) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v20;
    v28 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
    v29 = v24;

    v30 = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #1 in static HKQuery.lastWorkoutQuery(activityType:completion:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_81;
    v31 = _Block_copy(aBlock);
    v32 = [v28 initWithSampleType:v25 predicate:v22 limit:1 sortDescriptors:v30 resultsHandler:v31];

    _Block_release(v31);

    return v32;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for HKSampleQuery(uint64_t a1, unint64_t *a2, void *a3)
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

double IntervalWorkoutTracker.instantaneousPower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 144);
}

id IntervalWorkoutTracker.instantaneousPowerStale.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 instantaneousPowerStale];
  swift_unknownObjectRelease();
  return v2;
}

double IntervalWorkoutTracker.averagePower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 136);
}

void IntervalWorkoutTracker.thirtySecondAveragePower.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (v1)
  {
    [v1 thirtySecondAveragePower];
    swift_unknownObjectRelease();
  }
}

uint64_t IntervalWorkoutTracker.chartDataElements.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = [v1 chartDataElements];
  swift_unknownObjectRelease();
  type metadata accessor for WorkoutChartDataElement(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void IntervalWorkoutTracker.setInstantaneousPower(_:sampleDate:)(double a1)
{
  v3 = [*(v1 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (v3)
  {
    v4 = v3;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v4 setInstantaneousPower:isa sampleDate:a1];

    swift_unknownObjectRelease();
  }
}

void *IntervalWorkoutTracker.zoneTracker.getter()
{
  v1 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IntervalWorkoutTracker.zoneTracker.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for IntervalWorkoutTracker.zoneTracker : IntervalWorkoutTracker(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t IntervalWorkoutTracker.firstActivityStarted.getter()
{
  v1 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

void IntervalWorkoutTracker.firstActivityStarted.setter(char a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*IntervalWorkoutTracker.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return IntervalWorkoutTracker.delegate.modify;
}

id @objc IntervalWorkoutTracker.delegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

double IntervalWorkoutTracker.delegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t (*IntervalWorkoutTracker.alertDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return IntervalWorkoutTracker.alertDelegate.modify;
}

void IntervalWorkoutTracker.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double key path setter for IntervalWorkoutTracker.progressDelegate : IntervalWorkoutTracker(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  IntervalWorkoutTracker.progressDelegate.didset(Strong);
  swift_unknownObjectRelease();
  return result;
}

double IntervalWorkoutTracker.progressDelegate.didset(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static WOLog.intervalWorkout);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_20AEA4000, v2, v3, "Reset existing progress delegate.", v4, 2u);
        MEMORY[0x20F2E9420](v4, -1, -1);
      }
    }
  }

  v5 = IntervalWorkoutTracker.getStepState()();
  v7 = v6;
  if (v5)
  {

    IntervalWorkoutTracker.notifyProgressDelegateOfUpdate(step:nextStep:)(v8, v7);
  }

  return result;
}

double IntervalWorkoutTracker.progressDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  IntervalWorkoutTracker.progressDelegate.didset(Strong);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

void (*IntervalWorkoutTracker.progressDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return IntervalWorkoutTracker.progressDelegate.modify;
}

void IntervalWorkoutTracker.progressDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40) + *(*a1 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v5 + 8) = v4;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRetain();
    IntervalWorkoutTracker.progressDelegate.didset(Strong);
    swift_unknownObjectRelease();
  }

  else
  {
    IntervalWorkoutTracker.progressDelegate.didset(Strong);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  free(v3);
}

void IntervalWorkoutTracker.updateProgressDelegate(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    v5 = v1 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v5 + 8) = v4;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRetain_n();
    IntervalWorkoutTracker.progressDelegate.didset(Strong);
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000005FLL, 0x800000020B46C070, "WorkoutCore/IntervalWorkoutTracker.swift", 40, 2, 67, 0);
    __break(1u);
  }
}

double IntervalWorkoutTracker.swimDistanceRoundingThresholdDistance.getter()
{
  v1 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void IntervalWorkoutTracker.swimDistanceRoundingThresholdDistance.setter(double a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *IntervalWorkoutTracker.init(configuration:builder:fallbackDataProvider:powerAccumulator:swimmingAccumulator:)(char *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker] = 0;
  v5[OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted] = 0;
  v11 = &v5[OBJC_IVAR___WOIntervalWorkoutTracker_lastNotifiedKeyPath];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  v11[24] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B46C0D0);
  [v13 doubleForKey_];
  v16 = v15;

  *&v6[v12] = v16;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_configuration] = a1;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider] = a3;
  v44 = 0uLL;
  v45 = 0;
  v17 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode;
  v18 = *&a1[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode];
  type metadata accessor for IntervalWorkoutProgressionData(0);
  swift_allocObject();
  v19 = a1;
  swift_unknownObjectRetain();
  v20 = IntervalWorkoutProgressionData.init(role:activityMoveMode:)(&v44, v18);
  v21 = OBJC_IVAR___WOIntervalWorkoutTracker_previousData;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_previousData] = v20;
  v22 = a2;
  v23 = LiveWorkoutConfiguration.currentActivityType.getter();
  *&v44 = v22;
  *(&v44 + 1) = v23;
  v45 = a4;
  v24 = *&a1[v17];
  swift_allocObject();
  v25 = a4;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData] = IntervalWorkoutProgressionData.init(role:activityMoveMode:)(&v44, v24);
  [objc_opt_self() fakeValueForDurationInPreviousIntervals];
  if (v26 <= 0.0)
  {
    v6[OBJC_IVAR___WOIntervalWorkoutTracker_isFakingData] = 0;
  }

  else
  {
    v27 = v26;
    v6[OBJC_IVAR___WOIntervalWorkoutTracker_isFakingData] = 1;
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.intervalWorkout);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v30, "NOTE: WE ARE FAKING INTERVAL DATA.", v31, 2u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v32 = *&v6[v21];
    swift_beginAccess();
    v32[12] = v27;
    v33 = *(v32 + 2);

    if (v33)
    {
      v34 = v33;
      SegmentPaceAccumulator.updateDuration(_:)(v27);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v32 + 9);
      ObjectType = swift_getObjectType();
      (*(v35 + 8))(3, ObjectType, v35);
      swift_unknownObjectRelease();
    }
  }

  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_swimmingAccumulator] = a5;
  v43.receiver = v6;
  v43.super_class = type metadata accessor for IntervalWorkoutTracker();
  v37 = objc_msgSendSuper2(&v43, sel_init);

  swift_unknownObjectRelease();
  v38 = *&v37[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
  swift_beginAccess();
  *(v38 + 72) = &protocol witness table for IntervalWorkoutTracker;
  swift_unknownObjectWeakAssign();
  v39 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  v40 = *&v37[v39];
  if (v40 == 0.0)
  {
    v40 = 2.0;
  }

  *&v37[v39] = v40;
  return v37;
}

void IntervalWorkoutTracker.updateZoneTracker(distanceUnit:metadataSavingDelegate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  if (*(v2 + v5))
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v6 = *(v2 + v5);
    if (v6)
    {
      v7 = v6 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
      swift_beginAccess();
      *(v7 + 8) = 0;
      swift_unknownObjectWeakAssign();
      v8 = *(v3 + v5);
      if (v8)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          v11 = v8;
          v12 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B461640);
          [v10 removeMetadata:v12 forceTopLevel:1];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(v3 + v5);
  *(v3 + v5) = 0;

  if (one-time initialization token for intervalWorkout != -1)
  {
    swift_once();
  }

  v28 = v5;
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static WOLog.intervalWorkout);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20AEA4000, v14, v15, "Creating zone tracker for intervals", v16, 2u);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v17 = LiveWorkoutConfiguration.currentActivityType.getter();
  v27 = v3;
  v18 = LiveWorkoutConfiguration.currentTargetZones.getter();
  v31 = type metadata accessor for ZoneTracker();
  v19 = objc_allocWithZone(v31);
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_currentDistance] = 0;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_currentDuration] = 0;
  v20 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  v30 = a1;
  swift_unknownObjectRetain();
  *&v19[v20] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_activityType] = v17;
  v21 = v17;
  v22 = specialized static ZoneTracker.targetZoneDictionary(from:)(v18);

  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates] = v22;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit] = v30;
  v19[OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts] = 1;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts] = 0x402E000000000000;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime] = 0x404E000000000000;
  swift_unknownObjectWeakAssign();
  v32.receiver = v19;
  v32.super_class = v31;
  v23 = v30;
  v24 = objc_msgSendSuper2(&v32, sel_init);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v25 = &v24[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate];
  swift_beginAccess();
  *(v25 + 1) = &protocol witness table for IntervalWorkoutTracker;
  swift_unknownObjectWeakAssign();
  v26 = *(v27 + v28);
  *(v27 + v28) = v24;
}

void IntervalWorkoutTracker.beginFirstActivity(date:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for intervalWorkout != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.intervalWorkout);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v44[1] = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v48 = v14;
    *v13 = 136315138;
    lazy protocol witness table accessor for type Date and conformance Date();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v48);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Beginning first activity at: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_8(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v19 = *(*&v2[OBJC_IVAR___WOIntervalWorkoutTracker_configuration] + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    isa = v19;
    static Published.subscript.getter(&v48);

    if (v50 == 1)
    {

      return;
    }

    v44[0] = isa;
    v22 = *(&v48 + 1);
    v21 = v48;
    v23 = v49;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v48);

    v24 = v48;
    v48 = __PAIR128__(v22, v21);
    v49 = v23;
    v25 = IntervalWorkout.stepForKeyPath(_:)(&v48);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v48);

    if ((v21 & 0x8000000000000000) != 0 || (v22 & 0x8000000000000000) != 0 || v23 < 0 || ((v26 = v48, v27 = IntervalWorkout.blocks.getter(), v27 >> 62) ? (isa = v27, v28 = __CocoaSet.count.getter()) : (v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v21 >= v28))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000020B457060, "WorkoutCore/IntervalWorkout.swift", 33, 2, 274, 0);
      __break(1u);
      return;
    }

    v29 = IntervalWorkout.blocks.getter();
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v21, v29);
    }

    else
    {
      if (v21 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_39;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v48);

    v30 = v48;
    v31 = type metadata accessor for WorkoutAlertInterval();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
    *v33 = 0u;
    *(v33 + 1) = 0u;
    *(v33 + 25) = 0u;
    *&v32[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = v25;
    v34 = &v32[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
    *v34 = v22;
    *(v34 + 1) = v30;
    v47.receiver = v32;
    v47.super_class = v31;

    v28 = objc_msgSendSuper2(&v47, sel_init);
    [(objc_class *)v28 setType:16];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertSource:v2 didTriggerAlert:v28];
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {

LABEL_34:

      return;
    }

    v2 = v36;
    isa = Date._bridgeToObjectiveC()().super.isa;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v48);

    v37 = v48;
    *&v48 = v21;
    *(&v48 + 1) = v22;
    v49 = v23;
    v52.block = &v48;
    v51 = IntervalWorkout.stepIndex(for:)(v52);
    is_nil = v51.is_nil;

    if (is_nil)
    {
      v21 = 0;
    }

    else
    {
      v21 = Int._bridgeToObjectiveC()().super.super.isa;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v48);

    v26 = v48;
    if (!IntervalWorkout.isValid.getter())
    {
LABEL_32:
      v42 = 0;
LABEL_33:

      [v2 didBeginNewStepWithDate:isa stepIndex:v21 stepCount:v42];
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    if (one-time initialization token for InitialState == -1)
    {
LABEL_27:
      v40 = static IntervalWorkoutKeyPath.InitialState;
      v41 = qword_27C729E28;
      v42 = 1;
      while (1)
      {
        v46 = v41;
        v45 = v40;
        v39.value.block = &v45;
        v39 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v39.value);
        if (v50)
        {
          goto LABEL_33;
        }

        v40 = v48;
        v41 = v49;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          goto LABEL_32;
        }
      }
    }

LABEL_39:
    swift_once();
    goto LABEL_27;
  }
}

void IntervalWorkoutTracker.updateStepData(dataProvider:metricType:)(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
      return;
    case 1:
      v4 = v2;
      v5 = LiveWorkoutConfiguration.currentActivityType.getter();
      if ([v5 effectiveTypeIdentifier] == 46)
      {
        v6 = [v5 swimmingLocationType];

        if (v6 == 1)
        {

          IntervalWorkoutTracker.setPoolSwimmingDistance(dataProvider:)(a1);
          return;
        }
      }

      else
      {
      }

      [objc_msgSend(a1 distanceProvider)];
      v42 = v41;
      swift_unknownObjectRelease();
      v43 = v4;
      v44 = *(v4 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v45 = *(v43 + OBJC_IVAR___WOIntervalWorkoutTracker_previousData);
      swift_beginAccess();
      if (v42 - *(v45 + 88) < 0.0)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = v42 - *(v45 + 88);
      }

      swift_beginAccess();
      *(v44 + 88) = v46;
      v47 = *(v44 + 16);
      if (v47)
      {
        swift_beginAccess();
        v48 = *(v44 + 96);
        v49 = v47;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v46, v48);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = *(v44 + 72);
        ObjectType = swift_getObjectType();
        (*(v50 + 8))(1, ObjectType, v50);
        goto LABEL_43;
      }

      return;
    case 2:
      [objc_msgSend(a1 energyBurnProvider)];
      v21 = v20;
      swift_unknownObjectRelease();
      v22 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v23 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_previousData);
      swift_beginAccess();
      if (v21 - *(v23 + 104) < 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v21 - *(v23 + 104);
      }

      swift_beginAccess();
      *(v22 + 104) = v24;
      v56[3] = &type metadata for WorkoutFeatures;
      v56[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v56[0]) = 3;
      v25 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm_8(v56);
      if (v25)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v22 + 72);
          v27 = swift_getObjectType();
          (*(v26 + 8))(2, v27, v26);
          goto LABEL_43;
        }
      }

      return;
    case 3:
      [objc_msgSend(a1 elapsedTimeProvider)];
      v29 = v28;
      swift_unknownObjectRelease();
      v30 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v31 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_previousData);
      swift_beginAccess();
      if (v29 - *(v31 + 96) < 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v29 - *(v31 + 96);
      }

      swift_beginAccess();
      *(v30 + 96) = v32;
      v33 = *(v30 + 16);
      if (v33)
      {
        v34 = v33;
        SegmentPaceAccumulator.updateDuration(_:)(v32);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v30 + 72);
        v36 = swift_getObjectType();
        (*(v35 + 8))(3, v36, v35);
        goto LABEL_43;
      }

      return;
    case 4:
      v37 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v38 = [a1 paceProvider];
      if (v38)
      {
        [v38 currentPaceInMetersPerSecond];
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
      }

      swift_beginAccess();
      *(v37 + 120) = v40;
      IntervalWorkoutProgressionData.currentPace.didset();
      return;
    case 11:
      v16 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v17 = [a1 powerProvider];
      if (v17)
      {
        [v17 instantaneousPower];
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
      }

      swift_beginAccess();
      *(v16 + 144) = v19;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v54 = *(v16 + 72);
        v55 = swift_getObjectType();
        (*(v54 + 8))(11, v55, v54);
        goto LABEL_43;
      }

      return;
    case 15:
      v12 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v13 = [a1 cadenceProvider];
      if (v13)
      {
        [v13 currentCadence];
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
      }

      swift_beginAccess();
      *(v12 + 160) = v15;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v52 = *(v12 + 72);
        v53 = swift_getObjectType();
        (*(v52 + 8))(15, v53, v52);
        goto LABEL_43;
      }

      return;
    case 50:
      v7 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      [objc_msgSend(a1 intervalCadenceProvider)];
      v9 = v8;
      swift_unknownObjectRelease();
      swift_beginAccess();
      *(v7 + 152) = v9;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v7 + 72);
        v11 = swift_getObjectType();
        (*(v10 + 8))(16, v11, v10);
LABEL_43:
        swift_unknownObjectRelease();
      }

      return;
    default:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004ALL, 0x800000020B46C410, "WorkoutCore/IntervalWorkoutTracker.swift", 40, 2, 188, 0);
      __break(1u);
      return;
  }
}

void IntervalWorkoutTracker.setPoolSwimmingDistance(dataProvider:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v68[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v68[-v14];
  [objc_msgSend(a1 distanceProvider)];
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = *&v1[OBJC_IVAR___WOIntervalWorkoutTracker_previousData];
  swift_beginAccess();
  if (v17 - *(v18 + 88) < 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17 - *(v18 + 88);
  }

  v20 = *&v1[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
  v21 = v20 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  if (*(v21 + 8) != 1)
  {
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.intervalWorkout);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v31, "Not updating pool swimming distance or duration. distanceGoalAchievedDuration is set", v32, 2u);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    return;
  }

  v22 = [*&v1[OBJC_IVAR___WOIntervalWorkoutTracker_swimmingAccumulator] lastSwimData];
  if (!v22)
  {
LABEL_16:
    swift_beginAccess();
    *(v20 + 88) = v19;
    v33 = *(v20 + 16);
    if (v33)
    {
      swift_beginAccess();
      v34 = *(v20 + 96);
      v35 = v33;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v19, v34);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v20 + 72);
      ObjectType = swift_getObjectType();
      (*(v36 + 8))(1, ObjectType, v36);
      swift_unknownObjectRelease();
    }

    return;
  }

  v23 = v22;
  v24 = v1;
  v25 = COERCE_DOUBLE(IntervalWorkoutTracker.getPoolSwimmingDistanceGoal()());
  if ((v26 & 1) != 0 || (v27 = v25, v25 <= 0.0))
  {

    goto LABEL_16;
  }

  v73 = v25;
  swift_beginAccess();
  if (*(v20 + 88) >= v19)
  {
    v38 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
    swift_beginAccess();
    (*(v8 + 16))(v15, v20 + v38, v7);
  }

  else
  {
    v28 = [v23 distanceTimestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  IntervalWorkoutProgressionData.setDistanceAchievedDurationForTimeAndDistanceGoal(distanceGoal:newDistance:newDistanceTimestamp:)(v27, v19);
  v39 = *(v20 + 88);
  if (v19 <= v39 && *(v21 + 8) == 1)
  {
    v40 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
    swift_beginAccess();
    if (v27 - v19 < *&v24[v40])
    {
      v70 = v40;
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      v72 = __swift_project_value_buffer(v41, static WOLog.intervalWorkout);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v71 = v42;
        v45 = v44;
        *v44 = 0;
        _os_log_impl(&dword_20AEA4000, v71, v43, "Swimming distance update missing. Rounding to the nearest distance goal.", v44, 2u);
        v46 = v45;
        v42 = v71;
        MEMORY[0x20F2E9420](v46, -1, -1);
      }

      v47 = v24;
      v71 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      v72 = v47;

      v69 = v48;
      v49 = v48;
      v50 = v71;
      if (os_log_type_enabled(v71, v49))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218496;
        *(v51 + 4) = v19;
        *(v51 + 12) = 2048;
        *(v51 + 14) = v73;
        *(v51 + 22) = 2048;
        *(v51 + 24) = *&v24[v70];
        _os_log_impl(&dword_20AEA4000, v50, v69, "Current step distance: %f Distance goal: %f. swimDistanceRoundingThresholdDistance: %f", v51, 0x20u);
        MEMORY[0x20F2E9420](v51, -1, -1);
      }

      *(v20 + 88) = v73;
      v52 = *(v20 + 16);
      if (v52)
      {
        swift_beginAccess();
        v53 = *(v20 + 96);
        v54 = v52;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v27, v53);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v55 = *(v20 + 72);
        v56 = swift_getObjectType();
        (*(v55 + 8))(1, v56, v55);
        swift_unknownObjectRelease();
      }

      static Date.now.getter();
      (*(v8 + 56))(v6, 0, 1, v7);
      v57 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
      swift_beginAccess();
      outlined assign with take of Date?(v6, v20 + v57);
      swift_endAccess();
      [v72 duration];
      *v21 = v58;
      *(v21 + 8) = 0;
      if (v58 > 0.0)
      {
        v59 = v58;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v60 = *(v20 + 72);
          v61 = swift_getObjectType();
          (*(v60 + 16))(v61, v60, v59);
          swift_unknownObjectRelease();
        }
      }

      (*(v8 + 8))(v15, v7);
      return;
    }

LABEL_44:
    (*(v8 + 8))(v15, v7);

    return;
  }

  if (v39 >= v19)
  {
    goto LABEL_44;
  }

  *(v20 + 88) = v19;
  v62 = *(v20 + 16);
  if (v62)
  {
    swift_beginAccess();
    v63 = *(v20 + 96);
    v64 = v62;
    SegmentPaceAccumulator.updateDistance(_:duration:)(v19, v63);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v65 = *(v20 + 72);
    v66 = swift_getObjectType();
    (*(v65 + 8))(1, v66, v65);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v8 + 32))(v12, v15, v7);
  v67 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  (*(v8 + 40))(v20 + v67, v12, v7);
  swift_endAccess();
}

uint64_t IntervalWorkoutTracker.getPoolSwimmingDistanceGoal()()
{
  v0 = IntervalWorkoutTracker.getStepState()();

  if (!v0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v1 = v12;
  if ([v12 goalTypeIdentifier] == 2)
  {
    v2 = [v1 requiredDistance];

    if (v2)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v12);

      v3 = v12;
      v4 = [v12 requiredDistance];

      if (v4)
      {
LABEL_9:
        v8 = [objc_opt_self() meterUnit];
        [v4 doubleValueForUnit_];
        v10 = v9;

        return v10;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v5 = v12;
  v6 = [v12 goalTypeIdentifier];

  if (v6 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v12);

    v7 = v12;
    v4 = [v12 value];

    if (v4)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return 0;
}

void IntervalWorkoutTracker.notifyProgressDelegateOfUpdate(step:nextStep:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    if (*(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_isFakingData) == 1)
    {
      v7 = objc_opt_self();
      [v7 fakeValueForDistance];
      v30 = v8;
      [v7 fakeValueForAveragePace];
      v10 = v9;
      [v7 fakeValueForCurrentPace];
      v12 = v11;
      [v7 fakeValueForAveragePower];
      v14 = v13;
      [v7 fakeValueForInstantaneousPower];
      v16 = v15;
      [v7 fakeValueForAverageCadence];
      v18 = v17;
      [v7 fakeValueForInstantaneousCadence];
      v20 = v19;
      [v7 fakeValueForActiveCalories];
      v22 = v21;
      v23 = 0;
      v24 = 1;
    }

    else
    {
      v25 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      swift_beginAccess();
      v30 = v25[11];
      swift_beginAccess();
      v10 = v25[14];
      swift_beginAccess();
      v12 = v25[15];
      swift_beginAccess();
      v14 = v25[17];
      swift_beginAccess();
      v16 = v25[18];
      swift_beginAccess();
      v18 = v25[19];
      swift_beginAccess();
      v20 = v25[20];
      swift_beginAccess();
      v22 = v25[13];
      v26 = v25 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
      swift_beginAccess();
      v23 = *v26;
      v24 = v26[8];
    }

    v27 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
    swift_beginAccess();
    v28 = *(v27 + 96);
    ObjectType = swift_getObjectType();
    v31[0] = v30;
    v31[1] = v28;
    v31[2] = v10;
    v31[3] = v12;
    v31[4] = v14;
    v31[5] = v16;
    v31[6] = v18;
    v31[7] = v20;
    v31[8] = v22;
    v31[9] = v23;
    v32 = v24;
    (*(v6 + 8))(a1, v31, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

uint64_t IntervalWorkoutTracker.getStepState()()
{
  v1 = *(*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    static Published.subscript.getter(&v15);

    if (v18 == 1)
    {

      return 0;
    }

    else
    {
      v5 = v16;
      v4 = v17;
      v6 = v15;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v15);

      v7 = v15;
      v15 = v6;
      v16 = v5;
      v17 = v4;
      v8 = IntervalWorkout.stepForKeyPath(_:)(&v15);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v15);

      v9 = v15;
      v14[0] = v6;
      v14[1] = v5;
      v14[2] = v4;
      v19.block = v14;
      IntervalWorkout.nextKeyPath(currentKeyPath:)(v19);

      if ((v18 & 1) == 0)
      {
        v10 = v15;
        v11 = v16;
        v12 = v17;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v15);

        v13 = v15;
        v15 = v10;
        v16 = v11;
        v17 = v12;
        IntervalWorkout.stepForKeyPath(_:)(&v15);
      }

      return v8;
    }
  }

  return result;
}

Swift::Void __swiftcall IntervalWorkoutTracker.moveToNextStepManually()()
{
  v1 = *(*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter(v7);

    if (v9 != 1)
    {
      v3 = v8;
      v6 = *v7;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v7);

      v4 = v7[0];
      *v7 = v6;
      v8 = v3;
      IntervalWorkout.stepForKeyPath(_:)(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v7);

      v5 = v7[0];
      IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)([v7[0] goalTypeIdentifier] == 0);
    }
  }
}

void IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)(int a1)
{
  v180 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v161 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v161 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v161 - v17;
  v19 = *&v1[OBJC_IVAR___WOIntervalWorkoutTracker_configuration];
  v20 = *(v19 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    return;
  }

  v175 = v5;
  v173 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v20;
  static Published.subscript.getter(&v189);

  if (v191 == 1)
  {

    return;
  }

  v169 = v21;
  v179 = v18;
  v176 = v7;
  v181 = v6;
  v22 = *(&v189 + 1);
  v23 = v189;
  v24 = v190;
  if (one-time initialization token for intervalWorkout != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static WOLog.intervalWorkout);
  v27 = v1;
  v178 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v182 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v177 = v22;
    v32 = v31;
    v33 = swift_slowAlloc();
    *&v189 = v33;
    *v32 = 136315394;
    v34 = IntervalWorkoutProgressionData.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v189);
    v174 = v19;
    v37 = v23;
    v38 = v24;
    v39 = v36;

    *(v32 + 4) = v39;
    *(v32 + 12) = 2080;
    v40 = IntervalWorkoutProgressionData.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v189);

    *(v32 + 14) = v42;
    v24 = v38;
    v23 = v37;
    _os_log_impl(&dword_20AEA4000, v28, v29, "moving to next step:\n previousData: %s\n thisStepData: %s", v32, 0x16u);
    swift_arrayDestroy();
    v43 = v33;
    v27 = v182;
    MEMORY[0x20F2E9420](v43, -1, -1);
    v44 = v32;
    v22 = v177;
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

  v177 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v189);

  v45 = v189;
  *&v189 = v23;
  *(&v189 + 1) = v22;
  v190 = v24;
  v46 = IntervalWorkout.stepForKeyPath(_:)(&v189);

  v47 = *&v27[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
  v48 = *&v27[OBJC_IVAR___WOIntervalWorkoutTracker_previousData];
  v49 = LiveWorkoutConfiguration.currentActivityType.getter();
  v50 = [v49 lapLength];

  if (v50)
  {
    v51 = [objc_opt_self() meterUnit];
    [v50 doubleValueForUnit_];
    v53 = v52;

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v55 = v181;
  v56 = v176;
  v57 = v179;
  v167 = v48;
  v168 = v46;
  IntervalWorkoutProgressionData.rollDataIntoAccumulated(accumulated:with:lapLength:)(&v189, v179, v48, v46, v54, v50 == 0);
  v58 = v189;
  v60 = v190;
  v59 = v191;
  v170 = v192;
  LODWORD(v171) = v193;
  v164 = *(v56 + 16);
  v165 = v56 + 16;
  v164(v177, v57, v55);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  v63 = os_log_type_enabled(v61, v62);
  v172 = v60;
  v174 = v59;
  v166 = v47;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v162 = v62;
    v65 = v64;
    v163 = swift_slowAlloc();
    *&v185 = v163;
    *v65 = 136315394;

    v66 = v61;
    v161 = WorkoutStep.description.getter();
    v68 = v67;
    *&v189 = 0;
    *(&v189 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C920);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C940);
    Double.write<A>(to:)();
    v69 = v189;
    *&v189 = v161;
    *(&v189 + 1) = v68;

    MEMORY[0x20F2E6D80](v69, *(&v69 + 1));

    v70 = v176;
    v71 = v181;

    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, *(&v189 + 1), &v185);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date();
    v73 = v177;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    v77 = *(v70 + 8);
    v77(v73, v71);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v185);
    v27 = v182;

    *(v65 + 14) = v78;
    _os_log_impl(&dword_20AEA4000, v66, v162, "completed interval: %s, date: %s", v65, 0x16u);
    v79 = v163;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v79, -1, -1);
    MEMORY[0x20F2E9420](v65, -1, -1);
  }

  else
  {

    v77 = *(v56 + 8);
    v77(v177, v55);
  }

  if (LiveWorkoutConfiguration.moveToNextStep()())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v189);

    if ((v191 & 1) == 0)
    {
      v177 = v77;
      v102 = *(&v189 + 1);
      v101 = v189;
      v103 = v190;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v189);

      v104 = v189;
      v189 = __PAIR128__(v102, v101);
      v190 = v103;
      isa = IntervalWorkout.stepForKeyPath(_:)(&v189);

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v178 = v102;
        v109 = v103;
        v110 = isa;
        v111 = v108;
        v112 = swift_slowAlloc();
        *&v185 = v112;
        *v111 = 136315394;

        v113 = WorkoutStep.description.getter();
        v115 = v114;

        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v185);

        *(v111 + 4) = v116;
        *(v111 + 12) = 2080;
        *&v189 = v101;
        *(&v189 + 1) = v178;
        v190 = v109;
        v117 = IntervalWorkoutKeyPath.description.getter();
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v185);

        *(v111 + 14) = v119;
        _os_log_impl(&dword_20AEA4000, v106, v107, "Moving to next step %s at key path %s.", v111, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v112, -1, -1);
        v120 = v111;
        isa = v110;
        v103 = v109;
        v102 = v178;
        MEMORY[0x20F2E9420](v120, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v121 = v172;

      v122 = v174;

      static Published.subscript.getter(&v189);

      if (v101 < 0 || (v102 & 0x8000000000000000) != 0 || v103 < 0 || ((v123 = v189, v124 = IntervalWorkout.blocks.getter(), v124 >> 62) ? (v125 = __CocoaSet.count.getter()) : (v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v101 >= v125))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000020B457060, "WorkoutCore/IntervalWorkout.swift", 33, 2, 274, 0);
        __break(1u);
        return;
      }

      v126 = IntervalWorkout.blocks.getter();
      if ((v126 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v101, v126);
      }

      else
      {
        if (v101 >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_61;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v189);

      v127 = v189;
      v128 = type metadata accessor for WorkoutAlertInterval();
      v129 = objc_allocWithZone(v128);
      v130 = &v129[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
      *v130 = v58;
      *(v130 + 2) = v121;
      *(v130 + 3) = v122;
      *(v130 + 4) = v170;
      v130[40] = v171;
      *&v129[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = isa;
      v131 = &v129[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
      *v131 = v102;
      *(v131 + 1) = v127;
      v187.receiver = v129;
      v187.super_class = v128;
      v178 = isa;

      v132 = objc_msgSendSuper2(&v187, sel_init);
      [v132 setType_];
      v133 = v182;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v133 didTriggerAlert:v132];
        swift_unknownObjectRelease();
      }

      v171 = v132;
      swift_beginAccess();
      v135 = swift_unknownObjectWeakLoadStrong();
      if (!v135)
      {
        goto LABEL_51;
      }

      v125 = v135;
      isa = Date._bridgeToObjectiveC()().super.isa;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v189);

      v136 = v189;
      *&v189 = v101;
      *(&v189 + 1) = v102;
      v190 = v103;
      v195.block = &v189;
      v194 = IntervalWorkout.stepIndex(for:)(v195);
      is_nil = v194.is_nil;

      if (is_nil)
      {
        v122 = 0;
      }

      else
      {
        v122 = Int._bridgeToObjectiveC()().super.super.isa;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v189);

      v123 = v189;
      if (!IntervalWorkout.isValid.getter())
      {
LABEL_49:
        v141 = 0;
LABEL_50:

        [v125 didBeginNewStepWithDate:isa stepIndex:v122 stepCount:v141];
        swift_unknownObjectRelease();
LABEL_51:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20B423A90;
        *(inited + 32) = 0xD000000000000018;
        v144 = inited + 32;
        *(inited + 40) = 0x800000020B464730;
        *(inited + 72) = MEMORY[0x277D839B0];
        *(inited + 48) = v180 & 1;
        v145 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        _sSo8NSObjectCSgWOhTm_18(v144, &_sSS_yptMd, &_sSS_yptMR);
        v146 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
        v147 = v166;
        swift_beginAccess();
        v148 = v147 + v146;
        v149 = v175;
        outlined init with copy of Date?(v148, v175);
        v150 = v176;
        v151 = v181;
        if ((*(v176 + 48))(v149, 1, v181) == 1)
        {
          _sSo8NSObjectCSgWOhTm_18(v149, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v152 = v173;
          (*(v150 + 32))(v173, v149, v151);
          v191 = v151;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v189);
          v164(boxed_opaque_existential_0, v152, v151);
          outlined init with take of Any(&v189, &v185);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v184 = v145;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v185, 0xD000000000000027, 0x800000020B464750, isUniquelyReferenced_nonNull_native);
          v177(v152, v151);
        }

        v155 = v179;
        v156 = v182;
        swift_beginAccess();
        v157 = swift_unknownObjectWeakLoadStrong();
        if (v157)
        {
          v158 = v157;
          v159 = Date._bridgeToObjectiveC()().super.isa;
          v160 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v158 didMoveToNextStep:v156 date:v159 previousStepMetadata:v160];

          swift_unknownObjectRelease();

          v177(v155, v151);
        }

        else
        {

          v177(v155, v151);
        }

        return;
      }

      if (one-time initialization token for InitialState == -1)
      {
LABEL_44:
        v139 = static IntervalWorkoutKeyPath.InitialState;
        v140 = qword_27C729E28;
        v141 = 1;
        while (1)
        {
          v186 = v140;
          v185 = v139;
          v138.value.block = &v185;
          v138 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v138.value);
          if (v191)
          {
            goto LABEL_50;
          }

          v139 = v189;
          v140 = v190;
          if (__OFADD__(v141++, 1))
          {
            __break(1u);
            goto LABEL_49;
          }
        }
      }

LABEL_61:
      swift_once();
      goto LABEL_44;
    }
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v174;
  if (v82)
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_20AEA4000, v80, v81, "Finished workout.", v84, 2u);
    v85 = v84;
    v27 = v182;
    MEMORY[0x20F2E9420](v85, -1, -1);
  }

  v86 = type metadata accessor for WorkoutAlertInterval();
  v87 = objc_allocWithZone(v86);
  v88 = &v87[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
  *v88 = v58;
  *(v88 + 2) = v172;
  *(v88 + 3) = v83;
  *(v88 + 4) = v170;
  v88[40] = v171;
  *&v87[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = 0;
  v89 = &v87[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
  *v89 = 0;
  *(v89 + 1) = 0;
  v188.receiver = v87;
  v188.super_class = v86;

  v90 = objc_msgSendSuper2(&v188, sel_init);
  [v90 setType_];
  swift_beginAccess();
  v91 = swift_unknownObjectWeakLoadStrong();
  if (v91)
  {
    [v91 alertSource:v27 didTriggerAlert:v90];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v92 = swift_unknownObjectWeakLoadStrong();
  if (v92)
  {
    v93 = v92;
    v94 = v167;
    swift_beginAccess();
    [v93 didFinishIntervals_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v95 = swift_unknownObjectWeakLoadStrong();
  if (v95)
  {
    v96 = v27;
    v97 = v95;
    v98 = v77;
    v99 = v179;
    v100 = Date._bridgeToObjectiveC()().super.isa;
    [v97 didFinishIntervalWorkout:v96 date:v100];

    swift_unknownObjectRelease();

    v98(v99, v181);
  }

  else
  {

    v77(v179, v181);
  }
}

Swift::Void __swiftcall IntervalWorkoutTracker.recoverState(builder:)(HKLiveWorkoutBuilder builder)
{
  v2 = [(objc_class *)builder.super.super.isa workoutActivities];
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v3);
}

id IntervalWorkoutTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntervalWorkoutTracker.__deallocating_deinit(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IntervalWorkoutTracker();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double IntervalWorkoutTracker.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = IntervalWorkoutTracker.getStepState()();
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v27);

    v10 = v27;
    IntervalWorkoutTracker.updateStepData(dataProvider:metricType:)(a1, a2);
    IntervalWorkoutTracker.notifyProgressDelegateOfUpdate(step:nextStep:)(v9, v8);
    v11 = LiveWorkoutConfiguration.currentActivityType.getter();
    if ([v11 effectiveTypeIdentifier] == 46)
    {
      v12 = [v11 swimmingLocationType];

      v13 = v12 == 1;
    }

    else
    {

      v13 = 0;
    }

    if (IntervalWorkoutProgressionData.achievedGoal(goal:checkDistanceIsWithinRange:)(v10, v13))
    {
      IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)(1);
    }

    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.intervalWorkout);
    v16 = v3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315394;
      v21 = IntervalWorkoutProgressionData.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v27);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = IntervalWorkoutProgressionData.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v27);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Step: %s Prev: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }
  }

  else
  {
  }

  return result;
}

id IntervalWorkoutTracker.didUpdateMetricType(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    return [result dataProvider:v1 didUpdate:a1];
  }

  return result;
}

Swift::Void __swiftcall IntervalWorkoutTracker.didSetDistanceGoalAchievedDuration(_:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD00000000000002BLL;
  v3 = inited + 32;
  *(inited + 40) = 0x800000020B464780;
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo8NSObjectCSgWOhTm_18(v3, &_sSS_yptMd, &_sSS_yptMR);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 insertMetadataInCurrentActivityWithMetadata_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Double __swiftcall IntervalWorkoutTracker.zoneTrackerAlertHoldoffTime(for:)(WorkoutCore::TargetZone::ZoneType a1)
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v1 = swift_dynamicCastClass();
  result = 60.0;
  if (v1)
  {
    return 10.0;
  }

  return result;
}

double protocol witness for ZoneTrackerDelegate.zoneTrackerAlertHoldoffTime(for:) in conformance IntervalWorkoutTracker()
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v0 = swift_dynamicCastClass();
  result = 60.0;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

void specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v170 = &v154 - v5;
  v167 = type metadata accessor for Date();
  v6 = *(v167 - 8);
  v8 = MEMORY[0x28223BE20](v167, v7);
  v155 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v162 = &v154 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v168 = &v154 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v154 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v154 - v21;
  v23 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  v166 = v1;
  *(v1 + v23) = 1;
  if (a1 >> 62)
  {
    v24 = __CocoaSet.count.getter();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v25 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (!v25)
  {
    return;
  }

  if (v24 < 1)
  {
    __break(1u);
    return;
  }

  v26 = a1;
  v27 = 0;
  v28 = 0;
  v171 = v26 & 0xC000000000000001;
  v172 = v24;
  v169 = (v6 + 56);
  v160 = (v6 + 32);
  v161 = (v6 + 48);
  v164 = (v6 + 8);
  v165 = v25;
  v173 = v26;
  do
  {
    if (v171)
    {
      v30 = MEMORY[0x20F2E7A20](v27);
    }

    else
    {
      v30 = *(v26 + 8 * v27 + 32);
    }

    v31 = v30;
    v32 = [v30 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28)
    {
      v33 = v28;
      v34 = [v28 startDate];
      v35 = v168;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = *v160;
      v37 = v170;
      v38 = v35;
      v39 = v167;
      (*v160)(v170, v38, v167);
      (*v169)(v37, 0, 1, v39);
      v36(v19, v37, v39);
    }

    else
    {
      v33 = 0;
      v40 = v170;
      v39 = v167;
      (*v169)(v170, 1, 1, v167);
      static Date.distantPast.getter();
      if ((*v161)(v40, 1, v39) != 1)
      {
        _sSo8NSObjectCSgWOhTm_18(v170, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    v41 = static Date.> infix(_:_:)();
    v42 = *v164;
    (*v164)(v19, v39);
    v163 = v42;
    v42(v22, v39);
    if (v41)
    {

      v28 = v31;
    }

    else
    {

      v28 = v33;
    }

    ++v27;
    v26 = v173;
  }

  while (v172 != v27);
  v43 = 0;
  v161 = OBJC_IVAR___WOIntervalWorkoutTracker_previousData;
  v156 = "stacnceGoalAchievedDate";
  v157 = OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData;
  *&v29 = 138412546;
  v159 = v29;
  *&v29 = 134218752;
  v158 = v29;
  *&v29 = 134217984;
  v154 = v29;
  v44 = v167;
  v45 = v162;
  do
  {
    v168 = v43;
    if (v171)
    {
      v46 = MEMORY[0x20F2E7A20]();
    }

    else
    {
      v46 = *(v26 + 8 * v43 + 32);
    }

    v47 = v46;
    v169 = v28;
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    v49 = __swift_project_value_buffer(v48, static WOLog.intervalWorkout);
    v50 = v47;
    v170 = v49;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v175[0] = v55;
      *v53 = v159;
      *(v53 + 4) = v50;
      *v54 = v50;
      *(v53 + 12) = 2080;
      v56 = [v50 metadata];
      if (v56)
      {
        v57 = v56;
        v58 = COERCE_DOUBLE(static Dictionary._unconditionallyBridgeFromObjectiveC(_:)());
      }

      else
      {
        v58 = 0.0;
      }

      v174 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
      v59 = Optional.description.getter();
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v175);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_20AEA4000, v51, v52, "Restoring from activity %@ with metadata %s", v53, 0x16u);
      _sSo8NSObjectCSgWOhTm_18(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_8(v55);
      MEMORY[0x20F2E9420](v55, -1, -1);
      MEMORY[0x20F2E9420](v53, -1, -1);

      v44 = v167;
      v45 = v162;
    }

    else
    {
    }

    v63 = [v50 workoutConfiguration];
    [v63 activityType];

    v64 = _HKWorkoutDistanceTypeForActivityType();
    v65 = 0.0;
    v66 = 0.0;
    v28 = v169;
    if (v64)
    {
      v67 = v64;
      v68 = [v50 statisticsForType_];
      if (v68)
      {
        v69 = v68;
        v70 = [v68 sumQuantity];
        if (v70)
        {
          v71 = v70;
          v72 = [objc_opt_self() meterUnit];
          [v71 doubleValueForUnit_];
          v66 = v73;

          v74 = v69;
        }

        else
        {
          v74 = v67;
          v67 = v69;
        }
      }
    }

    v75 = [v50 statisticsForType_];
    if (v75)
    {
      v76 = v75;
      v77 = [v75 sumQuantity];

      if (v77)
      {
        v78 = [objc_opt_self() kilocalorieUnit];
        [v77 doubleValueForUnit_];
        v65 = v79;
      }
    }

    [v50 duration];
    v81 = v80;
    v82 = v50;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v83, v84))
    {

      if (!v28)
      {
        goto LABEL_64;
      }

      goto LABEL_50;
    }

    v85 = swift_slowAlloc();
    *v85 = v158;
    *(v85 + 4) = v81;
    *(v85 + 12) = 2048;
    *(v85 + 14) = v65;
    *(v85 + 22) = 2048;
    *(v85 + 24) = v66;
    *(v85 + 32) = 1024;
    if (v28)
    {
      type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
      v86 = v82;
      v87 = v28;
      v88 = static NSObject.== infix(_:_:)();

      v45 = v162;
      if (v88)
      {
        v89 = 1;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v89 = 0;
LABEL_49:
    *(v85 + 34) = v89;

    _os_log_impl(&dword_20AEA4000, v83, v84, "Restored data: %fs, %fkCal, %fm. Current: %{BOOL}d", v85, 0x26u);
    MEMORY[0x20F2E9420](v85, -1, -1);

    if (!v28)
    {
      goto LABEL_64;
    }

LABEL_50:
    type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    v90 = v82;
    v91 = v28;
    v92 = static NSObject.== infix(_:_:)();

    if ((v92 & 1) == 0)
    {
LABEL_64:
      v105 = *(v161 + v166);
      swift_beginAccess();
      v106 = v81 + *(v105 + 96);
      *(v105 + 96) = v106;
      v107 = *(v105 + 16);
      if (v107)
      {
        v108 = v107;
        SegmentPaceAccumulator.updateDuration(_:)(v106);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v109 = *(v105 + 72);
        ObjectType = swift_getObjectType();
        (*(v109 + 8))(3, ObjectType, v109);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      *(v105 + 104) = v65 + *(v105 + 104);
      v176 = &type metadata for WorkoutFeatures;
      v177 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v175[0]) = 3;
      v111 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm_8(v175);
      if ((v111 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v112 = *(v105 + 72);
        v113 = swift_getObjectType();
        (*(v112 + 8))(2, v113, v112);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v114 = v66 + *(v105 + 88);
      *(v105 + 88) = v114;
      v115 = *(v105 + 16);
      if (!v115)
      {
        goto LABEL_82;
      }

      v116 = *(v105 + 96);
      v117 = *&v115[OBJC_IVAR___WOSegmentPaceAccumulator_distance];
      if (v117 < v114)
      {
        *&v115[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = v114;
      }

      if (*&v115[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] >= v116)
      {
        v118 = &v115[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
        if (*&v115[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= v116)
        {
          if (v117 >= v114)
          {
LABEL_82:
            if (swift_unknownObjectWeakLoadStrong())
            {
              v122 = *(v105 + 72);
              v123 = swift_getObjectType();
              (*(v122 + 8))(1, v123, v122);
              swift_unknownObjectRelease();
            }

            goto LABEL_19;
          }

LABEL_79:
          v119 = v115;
          v120 = [v119 updateHandler];
          if (v120)
          {
            v121 = v120;
            (*(v120 + 2))();
            _Block_release(v121);
          }

          goto LABEL_82;
        }
      }

      else
      {
        *&v115[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = v116;
        v118 = &v115[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
        if (*&v115[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= v116)
        {
          goto LABEL_79;
        }
      }

      *v118 = v116;
      goto LABEL_79;
    }

    v93 = *(v166 + v157);
    swift_beginAccess();
    *(v93 + 96) = v81;
    v94 = *(v93 + 16);
    if (v94)
    {
      v95 = v94;
      SegmentPaceAccumulator.updateDuration(_:)(v81);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v96 = *(v93 + 72);
      v97 = swift_getObjectType();
      (*(v96 + 8))(3, v97, v96);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    *(v93 + 104) = v65;
    v176 = &type metadata for WorkoutFeatures;
    v177 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v175[0]) = 3;
    v98 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm_8(v175);
    if ((v98 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v99 = *(v93 + 72);
      v100 = swift_getObjectType();
      (*(v99 + 8))(2, v100, v99);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    *(v93 + 88) = v66;
    v101 = *(v93 + 16);
    if (!v101)
    {
      goto LABEL_91;
    }

    v102 = *(v93 + 96);
    v103 = *&v101[OBJC_IVAR___WOSegmentPaceAccumulator_distance];
    if (v103 < v66)
    {
      *&v101[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = v66;
    }

    if (*&v101[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] < v102)
    {
      *&v101[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = v102;
      v104 = &v101[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
      if (*&v101[OBJC_IVAR___WOSegmentPaceAccumulator_duration] < v102)
      {
LABEL_87:
        *v104 = v102;
      }

LABEL_88:
      v124 = v101;
      v125 = [v124 updateHandler];
      if (v125)
      {
        v126 = v125;
        (*(v125 + 2))();
        _Block_release(v126);
      }

      goto LABEL_91;
    }

    v104 = &v101[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
    if (*&v101[OBJC_IVAR___WOSegmentPaceAccumulator_duration] < v102)
    {
      goto LABEL_87;
    }

    if (v103 < v66)
    {
      goto LABEL_88;
    }

LABEL_91:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v127 = *(v93 + 72);
      v128 = swift_getObjectType();
      (*(v127 + 8))(1, v128, v127);
      swift_unknownObjectRelease();
    }

    v129 = [v90 metadata];
    if (v129)
    {
      v130 = v129;
      v131 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v131 + 16) && (v132 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, v156 | 0x8000000000000000), (v133 & 1) != 0))
      {
        outlined init with copy of Any(*(v131 + 56) + 32 * v132, v175);

        if (swift_dynamicCast())
        {
          v134 = v174;
          if (v174 > 0.0)
          {
            v135 = IntervalWorkoutTracker.getPoolSwimmingDistanceGoal()();
            if ((v136 & 1) == 0)
            {
              v137 = *&v135;
              v138 = Logger.logObject.getter();
              v139 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                *v140 = v154;
                *(v140 + 4) = v134;
                _os_log_impl(&dword_20AEA4000, v138, v139, "distanceAchievedDuration is recovered for current activity with value %f", v140, 0xCu);
                MEMORY[0x20F2E9420](v140, -1, -1);
              }

              v141 = v93 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
              swift_beginAccess();
              *v141 = v134;
              *(v141 + 8) = 0;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v142 = *(v93 + 72);
                v143 = swift_getObjectType();
                (*(v142 + 16))(v143, v142, v134);
                swift_unknownObjectRelease();
              }

              *(v93 + 88) = v137;
              v144 = *(v93 + 16);
              if (v144)
              {
                v145 = *(v93 + 96);
                v146 = v144;
                SegmentPaceAccumulator.updateDistance(_:duration:)(v137, v145);
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v147 = *(v93 + 72);
                v148 = swift_getObjectType();
                (*(v147 + 8))(1, v148, v147);

                swift_unknownObjectRelease();
                goto LABEL_19;
              }
            }
          }
        }
      }

      else
      {
      }
    }

LABEL_19:
    v26 = v173;
    v43 = v168 + 1;
  }

  while (v172 != v168 + 1);
  if (v28)
  {
    v149 = [v28 startDate];
    v150 = v155;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*v160)(v45, v150, v44);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v152 = Strong;
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v152 didRecover_];
      swift_unknownObjectRelease();
    }

    v163(v45, v44);
  }

  else
  {
    v28 = v165;
  }
}