uint64_t sub_1D1C22294(void *a1, void *a2)
{
  v4 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E677DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - v11;
  v13 = [a1 serviceType];
  v14 = sub_1D1E6781C();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  ServiceKind.init(rawValue:)(v17);
  v18 = v57;
  if (v57 == 53)
  {
    v18 = 0;
  }

  v56 = v18;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB34F0 == v19)
  {
  }

  else
  {
    v20 = sub_1D1E6904C();

    if ((v20 & 1) == 0)
    {
      v29 = [a1 name];
      v30 = sub_1D1E6781C();

      return v30;
    }
  }

  v54 = a1;
  v21 = [a2 category];
  v22 = [v21 categoryType];

  v23 = sub_1D1E6781C();
  v25 = v24;

  if (v23 == sub_1D1E6781C() && v25 == v26)
  {

LABEL_11:
    sub_1D1E6776C();
    v28 = v53;
    (*(v7 + 16))(v10, v12, v53);
    goto LABEL_18;
  }

  v27 = sub_1D1E6904C();

  if (v27)
  {
    goto LABEL_11;
  }

  v31 = [a2 category];
  v32 = [v31 categoryType];

  v33 = sub_1D1E6781C();
  v35 = v34;

  if (v33 == sub_1D1E6781C() && v35 == v36)
  {

    v28 = v53;
  }

  else
  {
    sub_1D1E6904C();

    v28 = v53;
  }

  sub_1D1E6776C();
  (*(v7 + 16))(v10, v12, v28);
LABEL_18:
  if (qword_1EE07A000 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE0813C0;
  sub_1D1E66ACC();
  v30 = sub_1D1E6787C();
  (*(v7 + 8))(v12, v28);
  v38 = v54;
  v39 = [v54 configuredName];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = [v38 defaultName];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1D1E6781C();
      v48 = v47;

      if (v46 == v41 && v48 == v43)
      {

        return v30;
      }

      v49 = sub_1D1E6904C();

      if (v49)
      {
        return v30;
      }
    }

    else
    {
    }
  }

  v50 = [v38 configuredName];
  if (v50)
  {
    v51 = v50;
    v30 = sub_1D1E6781C();
  }

  return v30;
}

void sub_1D1C22840(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v4 = [a1 services];
  v42 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v5 = sub_1D1E67C1C();

  v41 = a3;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_31:

    v26 = v41;
    goto LABEL_32;
  }

LABEL_30:
  v6 = sub_1D1E6873C();
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_3:
  v7 = 0;
  v44 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v44)
    {
      v8 = MEMORY[0x1D3891EF0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v11 = [v8 linkedServices];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1D1E67C1C();

      v46 = v43;
      MEMORY[0x1EEE9AC00](v14);
      v40[2] = &v46;
      LOBYTE(v12) = sub_1D18B8754(sub_1D1C2D7D0, v40, v13);

      if (v12)
      {
        break;
      }
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_31;
    }
  }

  v15 = v9;
  v16 = [v15 serviceType];
  v17 = sub_1D1E6781C();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  ServiceKind.init(rawValue:)(v20);

  v21 = v46;
  if (v46 == 53)
  {
    v21 = 0;
  }

  LOBYTE(v46) = v21;
  v45 = 29;
  v22 = ServiceKind.rawValue.getter();
  v24 = v23;
  if (v22 == ServiceKind.rawValue.getter() && v24 == v25)
  {

    v26 = v41;
    goto LABEL_19;
  }

  v27 = sub_1D1E6904C();

  v26 = v41;
  if (v27)
  {
LABEL_19:
    v28 = [v43 serviceType];
    v29 = sub_1D1E6781C();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    ServiceKind.init(rawValue:)(v32);
    v33 = v46;
    if (v46 == 53)
    {
      v33 = 0;
    }

    LOBYTE(v46) = v33;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v34)
    {

LABEL_25:
      v36 = sub_1D1E66A7C();
      (*(*(v36 - 8) + 56))(v26, 1, 1, v36);

      return;
    }

    v35 = sub_1D1E6904C();

    if (v35)
    {
      goto LABEL_25;
    }
  }

  if (v15)
  {
    v37 = [v15 uniqueIdentifier];
    sub_1D1E66A5C();

    v38 = sub_1D1E66A7C();
    (*(*(v38 - 8) + 56))(v26, 0, 1, v38);
    return;
  }

LABEL_32:
  v39 = sub_1D1E66A7C();
  (*(*(v39 - 8) + 56))(v26, 1, 1, v39);
}

uint64_t sub_1D1C22C84@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  if ([a1 isBridged])
  {
    v9 = [a2 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v10 = sub_1D1E67C1C();

    v28 = a3;
    if (v10 >> 62)
    {
      goto LABEL_19;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v29; v11; i = v29)
    {
      v13 = 0;
      v31 = v10 & 0xFFFFFFFFFFFFFF8;
      v32 = v10 & 0xC000000000000001;
      v14 = (i + 8);
      while (1)
      {
        if (v32)
        {
          v15 = MEMORY[0x1D3891EF0](v13, v10);
        }

        else
        {
          if (v13 >= *(v31 + 16))
          {
            goto LABEL_18;
          }

          v15 = *(v10 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v18 = [v15 uniqueIdentifiersForBridgedAccessories];
        if (v18)
        {
          v19 = v18;
          v20 = v6;
          v21 = sub_1D1E67C1C();

          v22 = [v30 uniqueIdentifier];
          sub_1D1E66A5C();

          LOBYTE(v22) = sub_1D17C4CF4(v8, v21);
          v6 = v20;

          (*v14)(v8, v20);
          if (v22)
          {

            v24 = [v16 uniqueIdentifier];

            v25 = v28;
            sub_1D1E66A5C();

            return (*(v29 + 56))(v25, 0, 1, v20);
          }
        }

        ++v13;
        if (v17 == v11)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v11 = sub_1D1E6873C();
    }

LABEL_20:

    return (*(v29 + 56))(v28, 1, 1, v6);
  }

  else
  {
    v23 = *(v29 + 56);

    return v23(a3, 1, 1, v6);
  }
}

unint64_t sub_1D1C22FB4(uint64_t a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C2AEC4(a1, v10, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v10 + 1);
    v12 = v10[16];
    if (v12 == 4)
    {

      v13 = [a2 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v11 + 16) && (v14 = sub_1D1742188(), (v15 & 1) != 0))
      {
        v16 = *(*(v11 + 56) + v14);
        (*(v5 + 8))(v7, v4);

        return v16;
      }

      else
      {

        (*(v5 + 8))(v7, v4);
        return [a2 isReachable];
      }
    }

    sub_1D1AC373C(*v10, *(v10 + 1), v12);
  }

  else
  {
    sub_1D1C2AF2C(v10, type metadata accessor for StateSnapshot.UpdateType);
  }

  return ([a2 isReachable] & 1) != 0 || objc_msgSend(a2, sel_suspendedState) == 3 || objc_msgSend(a2, sel_suspendedState) == 2;
}

__n128 StaticService.AutoClimateControlConfig.init(adaptiveTemperatureSetting:sleepSchedule:cleanEnergySetting:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a3 + 32);
  v9 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  sub_1D1741A90(a1, a4 + *(v9 + 20), &qword_1EC64CA18, &qword_1D1EABE10);
  result = *a3;
  v11 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v11;
  *(a4 + 32) = v8;
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t StaticService.copyReplacing(id:name:isPrimary:isDoubleHigh:isReachable:isCalibrating:isLowBattery:accessoryId:mediaSourceIdentifier:deviceMetadata:dateAdded:accessoryLastSeenDate:accessoryLastSeenBatteryStatus:accessorySupportsCHIP:accessoryRequiresThreadRouter:removingMediaSourceIdentifier:roomIds:roomName:shouldShowInDashboard:accessoryShowsAsIndividualTiles:isFavorite:contributesToHomeStatus:customIconSymbol:removingCustomIconSymbol:serviceKind:serviceSubKind:parentServiceId:batteryServiceId:linkedStaticServices:associatedServiceKind:removingAssociatedServiceKind:staticCharacteristicsBag:staticProfileBag:softwareUpdate:homeNonResponsiveType:bridgedStaticServices:bridgeAccessoryId:matterEndpointID:autoClimateControlConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, char a29, unsigned __int8 *a30, unsigned __int8 *a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 *a35, char a36, uint64_t *a37, uint64_t *a38, uint64_t a39, uint64_t (*a40)(char *, uint64_t, unsigned __int8 *), uint64_t a41, uint64_t a42, int a43, uint64_t a44)
{
  v248 = a7;
  v245 = a5;
  v246 = a6;
  v244 = a4;
  v227 = a3;
  v225 = a2;
  v249 = a37;
  v250 = a40;
  v247 = a35;
  v242 = a30;
  v243 = a31;
  v241 = a16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v222 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v223 = &v201 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v53 = MEMORY[0x1EEE9AC00](v52 - 8);
  v218 = &v201 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v237 = &v201 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v214 = &v201 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v236 = &v201 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v213 = &v201 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v235 = &v201 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v65 = MEMORY[0x1EEE9AC00](v64 - 8);
  v211 = &v201 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v232 = &v201 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v69 = MEMORY[0x1EEE9AC00](v68 - 8);
  v219 = &v201 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v234 = &v201 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v215 = &v201 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v231 = &v201 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v212 = &v201 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v230 = &v201 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v83 = &v201 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v201 - v84;
  v86 = sub_1D1E66A7C();
  v87 = MEMORY[0x1EEE9AC00](v86);
  v233 = &v201 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v201 - v89;
  v91 = *v241;
  LODWORD(v241) = *v242;
  LODWORD(v242) = *v243;
  v238 = *v247;
  v239 = v91;
  v228 = *v249;
  v92 = a38[1];
  v229 = *a38;
  v226 = v92;
  LODWORD(v243) = *v250;
  v94 = v93;
  v96 = v95;
  sub_1D1741C08(a1, v85, &qword_1EC642590, qword_1D1E71260);
  v97 = *(v96 + 48);
  v98 = v97(v85, 1, v94);
  v249 = (v96 + 48);
  v250 = v97;
  v251 = v44;
  if (v98 == 1)
  {
    (*(v96 + 16))(v90, v44, v94);
    if (v97(v85, 1, v94) != 1)
    {
      sub_1D1741A30(v85, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v96 + 32))(v90, v85, v94);
  }

  if (v227)
  {
    v220 = v227;
  }

  else
  {
    v99 = (v251 + *(type metadata accessor for StaticService(0) + 20));
    v100 = v99[1];
    v225 = *v99;
    v220 = v100;
  }

  if (v244 == 2)
  {
    v244 = *(v251 + *(type metadata accessor for StaticService(0) + 24));
  }

  if (v245 == 2)
  {
    v245 = *(v251 + *(type metadata accessor for StaticService(0) + 28));
  }

  if (a8 == 2)
  {
    a8 = *(v251 + *(type metadata accessor for StaticService(0) + 40));
  }

  if (v246 == 2)
  {
    v246 = *(v251 + *(type metadata accessor for StaticService(0) + 32));
  }

  v101 = v248;
  v221 = v90;
  v247 = v94;
  v224 = a8;
  if (v248 == 2)
  {
    v101 = *(v251 + *(type metadata accessor for StaticService(0) + 36));
  }

  v248 = v101;
  sub_1D1741C08(a10, v83, &qword_1EC642590, qword_1D1E71260);
  v102 = v247;
  v103 = v250;
  v104 = v250(v83, 1, v247);
  v240 = v96;
  if (v104 == 1)
  {
    v105 = type metadata accessor for StaticService(0);
    (*(v96 + 16))(v233, v251 + *(v105 + 44), v102);
    v106 = v103(v83, 1, v102);

    if (v106 != 1)
    {
      sub_1D1741A30(v83, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v96 + 32))(v233, v83, v102);
  }

  if (a19)
  {
    v107 = 0;
  }

  else
  {
    v107 = a11;
  }

  v108 = a19 | a12;
  if (a19 & 1) == 0 && (a12)
  {
    v109 = v251 + *(type metadata accessor for StaticService(0) + 48);
    v107 = *v109;
    v108 = *(v109 + 8);
  }

  v216 = v108;
  v217 = v107;
  v110 = v211;
  sub_1D1741C08(a13, v211, &qword_1EC644620, &unk_1D1E75A00);
  v111 = type metadata accessor for StaticDeviceMetadata(0);
  v112 = *(v111 - 8);
  v113 = *(v112 + 48);
  if (v113(v110, 1, v111) == 1)
  {
    v114 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v251 + *(v114 + 52), v232, &qword_1EC644620, &unk_1D1E75A00);
    v115 = v113(v110, 1, v111);
    v116 = v247;
    if (v115 != 1)
    {
      sub_1D1741A30(v110, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v117 = v232;
    sub_1D1C2B18C(v110, v232, type metadata accessor for StaticDeviceMetadata);
    (*(v112 + 56))(v117, 0, 1, v111);
    v116 = v247;
  }

  v118 = v213;
  sub_1D1741C08(a14, v213, &qword_1EC642570, &qword_1D1E6C6A0);
  v119 = sub_1D1E669FC();
  v120 = *(v119 - 8);
  v121 = *(v120 + 48);
  if (v121(v118, 1, v119) == 1)
  {
    v122 = type metadata accessor for StaticService(0);
    v123 = v251;
    sub_1D1741C08(v251 + *(v122 + 56), v235, &qword_1EC642570, &qword_1D1E6C6A0);
    v124 = v121(v118, 1, v119);
    v125 = v214;
    if (v124 != 1)
    {
      sub_1D1741A30(v118, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v126 = v235;
    (*(v120 + 32))(v235, v118, v119);
    (*(v120 + 56))(v126, 0, 1, v119);
    v123 = v251;
    v125 = v214;
  }

  sub_1D1741C08(a15, v125, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v121(v125, 1, v119) == 1)
  {
    v127 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v123 + *(v127 + 60), v236, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v121(v125, 1, v119) != 1)
    {
      sub_1D1741A30(v125, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v128 = v236;
    (*(v120 + 32))(v236, v125, v119);
    (*(v120 + 56))(v128, 0, 1, v119);
  }

  v129 = a17;
  if (v239 == 2)
  {
    v239 = *(v123 + *(type metadata accessor for StaticService(0) + 64));
  }

  v130 = a18;
  if (a17 == 2)
  {
    v129 = *(v123 + *(type metadata accessor for StaticService(0) + 68));
  }

  if (a18 == 2)
  {
    v130 = *(v123 + *(type metadata accessor for StaticService(0) + 72));
  }

  if (a20)
  {
    v210 = a20;
  }

  else
  {
    v210 = *(v123 + *(type metadata accessor for StaticService(0) + 76));
  }

  v132 = a23;
  v227 = a22;
  if (!a22)
  {
    v133 = (v123 + *(type metadata accessor for StaticService(0) + 80));
    a21 = *v133;
    v227 = v133[1];
  }

  v134 = a24;
  if (a23 == 2)
  {
    v135 = type metadata accessor for StaticService(0);
    v134 = a24;
    v132 = *(v123 + *(v135 + 84));
  }

  v136 = a25;
  if (v134 == 2)
  {
    v137 = type metadata accessor for StaticService(0);
    v136 = a25;
    v134 = *(v123 + *(v137 + 88));
  }

  v138 = a26;
  LODWORD(v214) = v129;
  v208 = v134;
  if (v136 == 2)
  {
    v136 = *(v123 + *(type metadata accessor for StaticService(0) + 92));
  }

  v207 = v136;
  if (a26 == 2)
  {
    v138 = *(v123 + *(type metadata accessor for StaticService(0) + 96));
  }

  if (a29)
  {
    v204 = 0;
    v205 = 0;
  }

  else
  {
    v139 = a28;
    if (a28)
    {
      v204 = a27;
    }

    else
    {
      v140 = (v123 + *(type metadata accessor for StaticService(0) + 100));
      v139 = v140[1];
      v204 = *v140;
    }

    v205 = v139;
  }

  LODWORD(v213) = v130;
  if (v241 == 53)
  {
    LODWORD(v241) = *(v123 + *(type metadata accessor for StaticService(0) + 104));
  }

  v211 = a21;
  if (v242 == 5)
  {
    LODWORD(v242) = *(v123 + *(type metadata accessor for StaticService(0) + 108));
  }

  if (a36)
  {
    v141 = 53;
  }

  else
  {
    if (v238 != 53)
    {
      goto LABEL_74;
    }

    v141 = *(v123 + *(type metadata accessor for StaticService(0) + 112));
  }

  v238 = v141;
LABEL_74:
  v209 = v132;
  v142 = v212;
  sub_1D1741C08(a32, v212, &qword_1EC642590, qword_1D1E71260);
  v143 = v250;
  if (v250(v142, 1, v116) == 1)
  {
    v144 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v123 + *(v144 + 116), v230, &qword_1EC642590, qword_1D1E71260);
    v145 = v143(v142, 1, v116);
    v146 = v142;
    v147 = v145;

    if (v147 != 1)
    {
      sub_1D1741A30(v146, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v148 = v142;
    v149 = v240;
    v150 = v230;
    (*(v240 + 32))(v230, v148, v116);
    (*(v149 + 56))(v150, 0, 1, v116);
  }

  v151 = v215;
  sub_1D1741C08(a33, v215, &qword_1EC642590, qword_1D1E71260);
  v152 = v250;
  v153 = v250(v151, 1, v116);
  v154 = v219;
  v155 = v228;
  v206 = v138;
  if (v153 == 1)
  {
    v156 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v123 + *(v156 + 120), v231, &qword_1EC642590, qword_1D1E71260);
    v157 = v152(v151, 1, v116);
    v158 = v218;
    if (v157 != 1)
    {
      sub_1D1741A30(v151, &qword_1EC642590, qword_1D1E71260);
    }

    v159 = v229;
    if (a34)
    {
LABEL_82:
      v215 = a34;
      v160 = a39;
      if (v155)
      {
        goto LABEL_83;
      }

LABEL_87:
      v212 = *(v123 + *(type metadata accessor for StaticService(0) + 128));

      if (v159)
      {
        goto LABEL_84;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v161 = v240;
    v162 = v231;
    (*(v240 + 32))(v231, v151, v116);
    (*(v161 + 56))(v162, 0, 1, v116);
    v158 = v218;
    v159 = v229;
    if (a34)
    {
      goto LABEL_82;
    }
  }

  v215 = *(v123 + *(type metadata accessor for StaticService(0) + 124));

  v160 = a39;
  if (!v155)
  {
    goto LABEL_87;
  }

LABEL_83:
  v212 = v155;
  if (v159)
  {
LABEL_84:
    v203 = v159;
    v202 = v226;
    goto LABEL_89;
  }

LABEL_88:
  v163 = (v123 + *(type metadata accessor for StaticService(0) + 132));
  v164 = v163[1];
  v203 = *v163;

  v202 = v164;

LABEL_89:
  sub_1D1741C08(v160, v158, &qword_1EC644760, &unk_1D1E9E530);
  v165 = type metadata accessor for StaticSoftwareUpdate(0);
  v166 = *(v165 - 8);
  v167 = *(v166 + 48);
  if (v167(v158, 1, v165) == 1)
  {
    v168 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v123 + *(v168 + 136), v237, &qword_1EC644760, &unk_1D1E9E530);
    v169 = v167(v158, 1, v165);

    sub_1D1C2B374(v229, v226);
    if (v169 != 1)
    {
      sub_1D1741A30(v158, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v170 = v237;
    sub_1D1C2B18C(v158, v237, type metadata accessor for StaticSoftwareUpdate);
    (*(v166 + 56))(v170, 0, 1, v165);

    sub_1D1C2B374(v229, v226);
  }

  if (v243 == 3)
  {
    LODWORD(v243) = *(v123 + *(type metadata accessor for StaticService(0) + 140));
  }

  if (a41)
  {
    v171 = a41;
  }

  else
  {
    v171 = *(v123 + *(type metadata accessor for StaticService(0) + 144));
  }

  v172 = a43;
  sub_1D1741C08(a42, v154, &qword_1EC642590, qword_1D1E71260);
  v173 = v250;
  if (v250(v154, 1, v116) == 1)
  {
    v174 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v123 + *(v174 + 148), v234, &qword_1EC642590, qword_1D1E71260);
    v175 = v173(v154, 1, v116);

    if (v175 != 1)
    {
      sub_1D1741A30(v154, &qword_1EC642590, qword_1D1E71260);
    }

    if ((a43 & 0x10000) == 0)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v177 = v240;
    v178 = v234;
    (*(v240 + 32))(v234, v154, v116);
    (*(v177 + 56))(v178, 0, 1, v116);

    if ((a43 & 0x10000) == 0)
    {
LABEL_102:
      v176 = 0;
      goto LABEL_105;
    }
  }

  v179 = (v123 + *(type metadata accessor for StaticService(0) + 152));
  v172 = *v179;
  v176 = *(v179 + 2);
LABEL_105:
  v180 = v222;
  sub_1D1741C08(a44, v222, &qword_1EC64C9B0, &qword_1D1EA1190);
  v181 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v182 = *(v181 - 8);
  v183 = *(v182 + 48);
  if (v183(v180, 1, v181) == 1)
  {
    v184 = type metadata accessor for StaticService(0);
    v185 = v223;
    sub_1D1741C08(v123 + *(v184 + 160), v223, &qword_1EC64C9B0, &qword_1D1EA1190);
    v186 = v185;
    if (v183(v180, 1, v181) != 1)
    {
      sub_1D1741A30(v180, &qword_1EC64C9B0, &qword_1D1EA1190);
    }
  }

  else
  {
    v186 = v223;
    sub_1D1C2B18C(v180, v223, type metadata accessor for StaticService.AutoClimateControlConfig);
    (*(v182 + 56))(v186, 0, 1, v181);
  }

  v187 = type metadata accessor for StaticService(0);
  sub_1D1741A90(v232, a9 + v187[13], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v235, a9 + v187[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v236, a9 + v187[15], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v230, a9 + v187[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v231, a9 + v187[30], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v237, a9 + v187[34], &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741A90(v234, a9 + v187[37], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v123 + v187[39], a9 + v187[39], &qword_1EC644870, &unk_1D1EABA00);
  sub_1D1741A90(v186, a9 + v187[40], &qword_1EC64C9B0, &qword_1D1EA1190);
  v188 = *(v240 + 32);
  v189 = v247;
  v188(a9, v221, v247);
  v190 = (a9 + v187[5]);
  v191 = v220;
  *v190 = v225;
  v190[1] = v191;
  *(a9 + v187[6]) = v244 & 1;
  *(a9 + v187[7]) = v245 & 1;
  *(a9 + v187[8]) = v246 & 1;
  *(a9 + v187[9]) = v248;
  *(a9 + v187[10]) = v224;
  result = (v188)(a9 + v187[11], v233, v189);
  v193 = a9 + v187[12];
  *v193 = v217;
  *(v193 + 8) = v216 & 1;
  *(a9 + v187[16]) = v239;
  *(a9 + v187[17]) = v214 & 1;
  *(a9 + v187[18]) = v213 & 1;
  *(a9 + v187[19]) = v210;
  v194 = (a9 + v187[20]);
  v195 = v227;
  *v194 = v211;
  v194[1] = v195;
  *(a9 + v187[21]) = v209 & 1;
  *(a9 + v187[22]) = v208 & 1;
  *(a9 + v187[23]) = v207 & 1;
  *(a9 + v187[24]) = v206 & 1;
  v196 = (a9 + v187[25]);
  v197 = v205;
  *v196 = v204;
  v196[1] = v197;
  *(a9 + v187[26]) = v241;
  *(a9 + v187[27]) = v242;
  *(a9 + v187[28]) = v238;
  *(a9 + v187[31]) = v215;
  *(a9 + v187[32]) = v212;
  v198 = (a9 + v187[33]);
  v199 = v202;
  *v198 = v203;
  v198[1] = v199;
  *(a9 + v187[35]) = v243;
  *(a9 + v187[36]) = v171;
  v200 = a9 + v187[38];
  *v200 = v172;
  *(v200 + 2) = v176;
  return result;
}

uint64_t sub_1D1C24AE8()
{
  result = sub_1D179ACDC(&unk_1F4D5ED90);
  qword_1EE081448 = result;
  return result;
}

uint64_t sub_1D1C24B10()
{
  result = sub_1D179ACDC(&unk_1F4D5ED58);
  qword_1EC6BE1B0 = result;
  return result;
}

double sub_1D1C24B38()
{
  if (qword_1EC6423A8 != -1)
  {
    swift_once();
  }

  qword_1EC6BE1B8 = qword_1EC64C9A8;

  return result;
}

uint64_t sub_1D1C24B9C()
{
  result = sub_1D179ACDC(&unk_1F4D65E40);
  qword_1EC64C9A8 = result;
  return result;
}

uint64_t sub_1D1C24BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v74 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v61 - v14;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticService(0);
  __swift_allocate_value_buffer(v20, qword_1EC6BE1C0);
  v21 = __swift_project_value_buffer(v20, qword_1EC6BE1C0);
  if (qword_1EC6423C0 != -1)
  {
    swift_once();
  }

  v73 = v13;
  v75 = v10;
  v22 = __swift_project_value_buffer(v16, qword_1EC6BE1F0);
  v69 = *(v17 + 16);
  v70 = v19;
  v69(v19, v22, v16);
  sub_1D1E66A0C();
  v23 = *(v17 + 48);
  v71 = v15;
  result = v23(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v25 = type metadata accessor for StaticDeviceMetadata(0);
    v26 = *(*(v25 - 8) + 56);
    v68 = v6;
    v26(v6, 1, 1, v25);
    v27 = v72;
    sub_1D1E6698C();
    v28 = sub_1D1E669FC();
    v29 = *(*(v28 - 8) + 56);
    v29(v27, 0, 1, v28);
    v29(v74, 1, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v30 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v31 = swift_allocObject();
    v67 = xmmword_1D1E739C0;
    *(v31 + 16) = xmmword_1D1E739C0;
    if (qword_1EC6423E8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for StaticRoom(0);
    v33 = __swift_project_value_buffer(v32, qword_1EC64DA80);
    v69((v31 + v30), v33, v16);
    v69 = sub_1D179BE14(v31);
    swift_setDeallocating();
    (*(v17 + 8))(v31 + v30, v16);
    swift_deallocClassInstance();
    v34 = (v33 + *(v32 + 20));
    v35 = v34[1];
    v66 = *v34;
    v36 = *(v17 + 56);
    v36(v73, 1, 1, v16);
    v62 = v36;
    v36(v75, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643240, &qword_1D1E71698);
    v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0) - 8);
    v38 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v67;
    v40 = (v39 + v38);
    v41 = v37[14];
    *v40 = 105;
    v42 = qword_1EC6423D0;
    *&v67 = v35;

    if (v42 != -1)
    {
      swift_once();
    }

    v64 = 0x80000001D1EB5E20;
    v43 = type metadata accessor for StaticCharacteristic(0);
    v44 = __swift_project_value_buffer(v43, qword_1EC64D010);
    sub_1D1C2AEC4(v44, &v40[v41], type metadata accessor for StaticCharacteristic);
    v65 = sub_1D18DB9B4(v39);
    swift_setDeallocating();
    sub_1D1741A30(v40, &qword_1EC643248, &qword_1D1E716A0);
    swift_deallocClassInstance();
    v45 = MEMORY[0x1E69E7CC0];
    v63 = sub_1D18DB57C(MEMORY[0x1E69E7CC0]);
    v46 = sub_1D18DB798(v45);
    v47 = v20[34];
    v48 = type metadata accessor for StaticSoftwareUpdate(0);
    (*(*(v48 - 8) + 56))(v21 + v47, 1, 1, v48);
    v62(v21 + v20[37], 1, 1, v16);
    v49 = v20[39];
    v50 = type metadata accessor for EndpointPath(0);
    (*(*(v50 - 8) + 56))(v21 + v49, 1, 1, v50);
    v51 = v20[40];
    v52 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
    (*(*(v52 - 8) + 56))(v21 + v51, 1, 1, v52);
    v53 = *(v17 + 32);
    v53(v21, v70, v16);
    v54 = v21 + v20[5];
    strcpy(v54, "Sample Light");
    *(v54 + 13) = 0;
    *(v54 + 14) = -5120;
    *(v21 + v20[6]) = 1;
    *(v21 + v20[7]) = 0;
    *(v21 + v20[8]) = 1;
    *(v21 + v20[9]) = 0;
    *(v21 + v20[10]) = 0;
    v53(v21 + v20[11], v71, v16);
    v55 = v21 + v20[12];
    *v55 = 0;
    *(v55 + 8) = 1;
    sub_1D1741A90(v68, v21 + v20[13], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1741A90(v72, v21 + v20[14], &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741A90(v74, v21 + v20[15], &qword_1EC642570, &qword_1D1E6C6A0);
    *(v21 + v20[16]) = 2;
    *(v21 + v20[17]) = 0;
    *(v21 + v20[18]) = 0;
    *(v21 + v20[19]) = v69;
    v56 = (v21 + v20[20]);
    v57 = v67;
    *v56 = v66;
    v56[1] = v57;
    *(v21 + v20[21]) = 0;
    *(v21 + v20[22]) = 0;
    *(v21 + v20[23]) = 0;
    *(v21 + v20[24]) = 1;
    v58 = (v21 + v20[25]);
    *v58 = 0xD000000000000012;
    v58[1] = v64;
    *(v21 + v20[26]) = 28;
    *(v21 + v20[27]) = 5;
    *(v21 + v20[28]) = 53;
    sub_1D1741A90(v73, v21 + v20[29], &qword_1EC642590, qword_1D1E71260);
    result = sub_1D1741A90(v75, v21 + v20[30], &qword_1EC642590, qword_1D1E71260);
    *(v21 + v20[31]) = v45;
    *(v21 + v20[32]) = v65;
    v59 = (v21 + v20[33]);
    *v59 = v63;
    v59[1] = v46;
    *(v21 + v20[35]) = 0;
    *(v21 + v20[36]) = v45;
    v60 = v21 + v20[38];
    *v60 = 0;
    *(v60 + 2) = 1;
  }

  return result;
}

uint64_t sub_1D1C25578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC6BE1D8);
  v4 = __swift_project_value_buffer(v3, qword_1EC6BE1D8);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C256A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC6BE1F0);
  v4 = __swift_project_value_buffer(v3, qword_1EC6BE1F0);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t StaticService.copyReplacing(matterEndpointPath:autoClimateControlConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v116 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v135 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v134 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v133 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v88 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v88 - v26;
  v28 = sub_1D1E66A7C();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v119 = v29;
  v33 = *(v29 + 16);
  v114 = &v88 - v34;
  v33();
  v35 = type metadata accessor for StaticService(0);
  v36 = v35[6];
  v37 = (v3 + v35[5]);
  v39 = *v37;
  v38 = v37[1];
  v112 = v39;
  v90 = v38;
  v113 = *(v3 + v36);
  v40 = v35[8];
  v108 = *(v3 + v35[7]);
  v111 = *(v3 + v40);
  v41 = v35[10];
  v104 = *(v3 + v35[9]);
  v107 = *(v3 + v41);
  v42 = v3 + v35[11];
  v117 = v32;
  v120 = v28;
  (v33)(v32, v42, v28);
  v43 = v35[13];
  v44 = (v3 + v35[12]);
  v98 = *v44;
  v97 = *(v44 + 8);
  v121 = v27;
  sub_1D1741C08(v3 + v43, v27, &qword_1EC644620, &unk_1D1E75A00);
  v45 = v3 + v35[14];
  v122 = v24;
  sub_1D1741C08(v45, v24, &qword_1EC642570, &qword_1D1E6C6A0);
  v46 = v3 + v35[15];
  v123 = v22;
  sub_1D1741C08(v46, v22, &qword_1EC642570, &qword_1D1E6C6A0);
  v47 = v35[17];
  v110 = *(v3 + v35[16]);
  v109 = *(v3 + v47);
  v48 = v35[19];
  v106 = *(v3 + v35[18]);
  v89 = *(v3 + v48);
  v49 = (v3 + v35[20]);
  v105 = *(v3 + v35[21]);
  v50 = v35[23];
  v102 = *(v3 + v35[22]);
  v103 = *(v3 + v50);
  v52 = *v49;
  v51 = v49[1];
  v91 = v52;
  v125 = v51;
  v53 = v35[25];
  v96 = *(v3 + v35[24]);
  v54 = *(v3 + v53 + 8);
  v99 = *(v3 + v53);
  v130 = v54;
  v55 = v35[27];
  v93 = *(v3 + v35[26]);
  v95 = *(v3 + v55);
  v56 = v35[29];
  v92 = *(v3 + v35[28]);
  sub_1D1741C08(v3 + v56, v132, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v3 + v35[30], v133, &qword_1EC642590, qword_1D1E71260);
  v57 = v35[32];
  v129 = *(v3 + v35[31]);
  v58 = *(v3 + v57);
  v59 = v35[34];
  v60 = (v3 + v35[33]);
  v61 = *v60;
  v126 = v60[1];
  v127 = v61;
  sub_1D1741C08(v3 + v59, v135, &qword_1EC644760, &unk_1D1E9E530);
  v62 = v35[36];
  v94 = *(v3 + v35[35]);
  v128 = *(v3 + v62);
  sub_1D1741C08(v3 + v35[37], v134, &qword_1EC642590, qword_1D1E71260);
  v63 = (v3 + v35[38]);
  v101 = *v63;
  v100 = *(v63 + 2);
  sub_1D1741C08(v116, v131, &qword_1EC644870, &unk_1D1EABA00);
  v64 = v115;
  sub_1D1741C08(v118, v115, &qword_1EC64C9B0, &qword_1D1EA1190);
  v65 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  v68 = v64;
  if (v67(v64, 1, v65) == 1)
  {
    v69 = v124;
    sub_1D1741C08(v3 + v35[40], v124, &qword_1EC64C9B0, &qword_1D1EA1190);
    v70 = v67(v64, 1, v65);

    v71 = v58;

    v72 = v90;

    v73 = v89;

    v74 = v69;
    v75 = v71;
    if (v70 != 1)
    {
      sub_1D1741A30(v68, &qword_1EC64C9B0, &qword_1D1EA1190);
    }
  }

  else
  {
    v74 = v124;
    sub_1D1C2B18C(v64, v124, type metadata accessor for StaticService.AutoClimateControlConfig);
    (*(v66 + 56))(v74, 0, 1, v65);

    v75 = v58;

    v72 = v90;

    v73 = v89;
  }

  v76 = v120;
  v77 = *(v119 + 32);
  v77(a3, v114, v120);
  v78 = (a3 + v35[5]);
  *v78 = v112;
  v78[1] = v72;
  *(a3 + v35[6]) = v113;
  *(a3 + v35[7]) = v108;
  *(a3 + v35[8]) = v111;
  *(a3 + v35[9]) = v104;
  *(a3 + v35[10]) = v107;
  v77(a3 + v35[11], v117, v76);
  v79 = a3 + v35[12];
  *v79 = v98;
  *(v79 + 8) = v97;
  sub_1D1741A90(v121, a3 + v35[13], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v122, a3 + v35[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v123, a3 + v35[15], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a3 + v35[16]) = v110;
  *(a3 + v35[17]) = v109;
  *(a3 + v35[18]) = v106;
  *(a3 + v35[19]) = v73;
  v80 = (a3 + v35[20]);
  v81 = v125;
  *v80 = v91;
  v80[1] = v81;
  *(a3 + v35[21]) = v105;
  *(a3 + v35[22]) = v102;
  *(a3 + v35[23]) = v103;
  *(a3 + v35[24]) = v96;
  v82 = (a3 + v35[25]);
  v83 = v130;
  *v82 = v99;
  v82[1] = v83;
  *(a3 + v35[26]) = v93;
  *(a3 + v35[27]) = v95;
  *(a3 + v35[28]) = v92;
  sub_1D1741A90(v132, a3 + v35[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v133, a3 + v35[30], &qword_1EC642590, qword_1D1E71260);
  *(a3 + v35[31]) = v129;
  *(a3 + v35[32]) = v75;
  v84 = (a3 + v35[33]);
  v85 = v126;
  *v84 = v127;
  v84[1] = v85;
  sub_1D1741A90(v135, a3 + v35[34], &qword_1EC644760, &unk_1D1E9E530);
  *(a3 + v35[35]) = v94;
  *(a3 + v35[36]) = v128;
  sub_1D1741A90(v134, a3 + v35[37], &qword_1EC642590, qword_1D1E71260);
  v86 = a3 + v35[38];
  *v86 = v101;
  *(v86 + 2) = v100;
  sub_1D1741A90(v131, a3 + v35[39], &qword_1EC644870, &unk_1D1EABA00);
  return sub_1D1741A90(v74, a3 + v35[40], &qword_1EC64C9B0, &qword_1D1EA1190);
}

uint64_t StaticService.debugDescription.getter()
{
  v1 = sub_1D1E6929C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for StaticService(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  sub_1D1C2AEC4(v0, boxed_opaque_existential_1, type metadata accessor for StaticService);
  sub_1D1E6927C();
  v6 = sub_1D1E6928C();
  (*(v2 + 8))(v4, v1);
  v17[1] = v6;
  sub_1D1E68A9C();
  sub_1D1E68BFC();
  if (*(&v26 + 1))
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1D1741C08(v23, &v18, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if (v19)
      {
        v8 = v18;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3890F70](v8, v9);

      MEMORY[0x1D3890F70](8250, 0xE200000000000000);
      sub_1D1E68ABC();
      v10 = v21;
      v11 = v22;
      sub_1D1741A30(v23, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D177CF00(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D177CF00((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      sub_1D1E68BFC();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *&v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v15 = sub_1D1E6770C();

  return v15;
}

double StaticService.AutoClimateControlConfig.cleanEnergySetting.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_1D1C2B3B4(v2, v3, v4);
}

double StaticService.AutoClimateControlConfig.sleepSchedule.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StaticService.AutoClimateControlConfig(0) + 24));

  return result;
}

unint64_t sub_1D1C266E4()
{
  v1 = 0x6863537065656C73;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D1C26750@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1C2D508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1C26778(uint64_t a1)
{
  v2 = sub_1D1C2B3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C267B4(uint64_t a1)
{
  v2 = sub_1D1C2B3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticService.AutoClimateControlConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA20, &qword_1D1EA11D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C2B3C8();
  sub_1D1E6930C();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v16 = *v3;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  HIBYTE(v15) = 0;
  sub_1D1C2B3B4(v16, v9, v10);
  sub_1D1C2B41C();
  sub_1D1E68E5C();
  sub_1D1C2B470(v16, v17, v18);
  if (!v2)
  {
    v13 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
    LOBYTE(v16) = 1;
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    sub_1D1C2AFE0(&qword_1EC64CA38, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E68E5C();
    v16 = *(v3 + *(v13 + 24));
    HIBYTE(v15) = 2;
    sub_1D1C2B484();

    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticService.AutoClimateControlConfig.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = *(v1 + 16);
  if (v10 == 1 || (v16 = *(v1 + 24), v17 = *(v1 + 32), sub_1D1E6922C(), sub_1D1E6922C(), sub_1D1E6922C(), !v10) || (sub_1D1E6922C(), sub_1D1E678EC(), (v17 & 1) != 0))
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1D3892890](v15);
  }

  v11 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  sub_1D1741C08(v1 + *(v11 + 20), v9, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v9, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v6);
    v12 = v6[1];
    sub_1D1E6922C();
    if (v12)
    {
      sub_1D176FF94(a1, v12);
    }

    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
    sub_1D1E676EC();
    sub_1D1E6922C();
    sub_1D1C2AF2C(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v13 = *(v1 + *(v11 + 24));
  if (!v13)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D176FDE8(a1, v13);
}

uint64_t StaticService.AutoClimateControlConfig.hashValue.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-1] - v6;
  sub_1D1E6920C();
  v8 = *(v0 + 16);
  if (v8 == 1 || (v15 = *(v0 + 24), v9 = *(v0 + 32), sub_1D1E6922C(), sub_1D1E6922C(), sub_1D1E6922C(), !v8) || (sub_1D1E6922C(), sub_1D1E678EC(), (v9 & 1) != 0))
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1D3892890](v14);
  }

  v10 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  sub_1D1741C08(v0 + *(v10 + 20), v7, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v7, v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v4);
    v11 = v4[1];
    sub_1D1E6922C();
    if (v11)
    {
      sub_1D176FF94(v16, v11);
    }

    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
    sub_1D1E676EC();
    sub_1D1E6922C();
    sub_1D1C2AF2C(v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v12 = *(v0 + *(v10 + 24));
  sub_1D1E6922C();
  if (v12)
  {
    sub_1D176FDE8(v16, v12);
  }

  return sub_1D1E6926C();
}

uint64_t StaticService.AutoClimateControlConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA48, &qword_1D1EA11D8);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C2B3C8();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v12;
  v25 = 0;
  sub_1D1C2B4D8();
  v14 = v21;
  sub_1D1E68CBC();
  v15 = v24;
  v16 = v23;
  *v13 = v22;
  *(v13 + 16) = v16;
  *(v13 + 32) = v15;
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  LOBYTE(v22) = 1;
  sub_1D1C2AFE0(&qword_1EC64CA58, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  sub_1D1E68CBC();
  sub_1D1741A90(v6, v13 + *(v10 + 20), &qword_1EC64CA18, &qword_1D1EABE10);
  v25 = 2;
  sub_1D1C2B52C();
  sub_1D1E68CBC();
  (*(v20 + 8))(v9, v14);
  *(v13 + *(v10 + 24)) = v22;
  sub_1D1C2AEC4(v13, v19, type metadata accessor for StaticService.AutoClimateControlConfig);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1C2AF2C(v13, type metadata accessor for StaticService.AutoClimateControlConfig);
}

uint64_t sub_1D1C27484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_1D1E6920C();
  v11 = *(v2 + 16);
  if (v11 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v18 = *(v2 + 24);
    v19 = a2;
    v12 = *(v2 + 32);
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
    if (v11 && (sub_1D1E6922C(), sub_1D1E678EC(), (v12 & 1) == 0))
    {
      sub_1D1E6922C();
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = v18;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x1D3892890](v13);
    }

    else
    {
      sub_1D1E6922C();
    }

    a2 = v19;
  }

  sub_1D1741C08(v2 + *(a2 + 20), v10, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v10, v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v7);
    v14 = v7[1];
    sub_1D1E6922C();
    if (v14)
    {
      sub_1D176FF94(v20, v14);
    }

    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
    sub_1D1E676EC();
    sub_1D1E6922C();
    sub_1D1C2AF2C(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v15 = *(v2 + *(a2 + 24));
  sub_1D1E6922C();
  if (v15)
  {
    sub_1D176FDE8(v20, v15);
  }

  return sub_1D1E6926C();
}

void *sub_1D1C27794(uint64_t a1)
{
  v2 = type metadata accessor for TileInfoBearerCollection(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C2AEC4(a1, v4, type metadata accessor for TileInfoBearerCollection);
  v5 = sub_1D1C6406C();
  result = sub_1D1C2AF2C(v4, type metadata accessor for TileInfoBearerCollection);
  v7 = *(v5 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0] + 32;
    v12 = v5 + 32;
    v25 = 32;
    while (v9 < *(v5 + 16))
    {
      result = sub_1D17419CC(v12, v26);
      if (!v10)
      {
        v13 = v8[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3] >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v19 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v19);
          }

          v8[2] = 0;
        }

        v11 = v18 + 40 * v19;
        v10 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v8 = v16;
      }

      v21 = __OFSUB__(v10--, 1);
      if (v21)
      {
        goto LABEL_27;
      }

      ++v9;
      result = sub_1D16EEE20(v26, v11);
      v11 += 40;
      v12 += 40;
      if (v7 == v9)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = 0;
LABEL_22:

  v22 = v8[3];
  if (v22 < 2)
  {
    return v8;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v10);
  v24 = v23 - v10;
  if (!v21)
  {
    v8[2] = v24;
    return v8;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1D1C279CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = sub_1D1C28430(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 > 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643238, &qword_1D1E71690);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 3);
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 24);

  if (v7 < 0)
  {
    goto LABEL_63;
  }

  v14 = (v11 + 32);
  v15 = v12 >> 1;
  v16 = v3 >> 63;
  v17 = v11;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v7)
  {
    v15 -= v7;
    do
    {
      v22 = v5 <= v4;
      if (v3 > 0)
      {
        v22 = v5 >= v4;
      }

      if (v22)
      {
        if (v18 & 1 | (v5 != v4))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          return result;
        }

        if (!v20 && v19 == 0x8000000000000000)
        {
          goto LABEL_62;
        }

        v18 = 1;
        v21 = v4;
      }

      else
      {
        v21 = v5 + v3;
        if (__OFADD__(v5, v3))
        {
          v21 = v16 ^ 0x7FFFFFFFFFFFFFFFLL;
        }

        if (__OFADD__(v5, v3))
        {
          v19 = 0x8000000000000000;
        }

        else
        {
          v19 = 0;
        }

        v20 = !__OFADD__(v5, v3);
      }

      *v14++ = v5;
      v5 = v21;
      --v7;
    }

    while (v7);
    v5 = v21;
  }

  v45 = v16 ^ 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v23 = v5 <= v4;
    if (v3 > 0)
    {
      v23 = v5 >= v4;
    }

    if (v23)
    {
      break;
    }

    v24 = v5 + v3;
    if (__OFADD__(v5, v3))
    {
      v20 = 0;
      v19 = 0x8000000000000000;
      v24 = v45;
      if (v15)
      {
        v24 = v45;
        goto LABEL_53;
      }
    }

    else
    {
      v19 = 0;
      v20 = 1;
      if (v15)
      {
        goto LABEL_53;
      }
    }

LABEL_41:
    v25 = v17[3];
    if (((v25 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_60;
    }

    v46 = v20;
    v47 = v18;
    v26 = v4;
    v27 = v3;
    v28 = v19;
    v29 = v25 & 0xFFFFFFFFFFFFFFFELL;
    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    v31 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643238, &qword_1D1E71690);
    v17 = swift_allocObject();
    v32 = _swift_stdlib_malloc_size(v17);
    v34 = v32 - 32;
    v33 = v32 < 32;
    v35 = v32 - 25;
    v36 = v31;
    if (v33)
    {
      v34 = v35;
    }

    v37 = v34 >> 3;
    v17[2] = v30;
    v17[3] = 2 * (v34 >> 3);
    v38 = (v17 + 4);
    v39 = v31[3] >> 1;
    if (v31[2])
    {
      v40 = v31 + 4;
      if (v17 != v31 || v38 >= v40 + 8 * v39)
      {
        memmove(v17 + 4, v40, 8 * v39);
        v36 = v31;
      }

      v36[2] = 0;
    }

    v14 = (v38 + 8 * v39);
    v15 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

    v19 = v28;
    v3 = v27;
    v4 = v26;
    v20 = v46;
    v18 = v47;
LABEL_53:
    v41 = __OFSUB__(v15--, 1);
    if (v41)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    *v14++ = v5;
    v5 = v24;
  }

  if (!((v5 != v4) | v18 & 1) && (v20 || v19 != 0x8000000000000000))
  {
    v18 = 1;
    v24 = v5;
    if (v15)
    {
      v24 = v5;
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  v42 = v17[3];
  if (v42 >= 2)
  {
    v43 = v42 >> 1;
    v41 = __OFSUB__(v43, v15);
    v44 = v43 - v15;
    if (v41)
    {
      goto LABEL_64;
    }

    v17[2] = v44;
  }

  return v17;
}

double *sub_1D1C27CF0(double a1, double a2, double a3)
{
  v6 = sub_1D1C284C0(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 3);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v8 + 3);

  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v13 = v8 + 4;
  v14 = v11 >> 1;
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v14 -= v7;
    v17 = a1;
    while (1)
    {
      v18 = v17 <= a2;
      if (a3 > 0.0)
      {
        v18 = v17 >= a2;
      }

      if (v18)
      {
        if (v15 & 1 | (v17 != a2))
        {
          goto LABEL_50;
        }

        v15 = 1;
        i = v17;
      }

      else
      {
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
          goto LABEL_51;
        }

        i = a1 + v16 * a3;
      }

      *v13++ = v17;
      v17 = i;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v22)
  {
LABEL_21:
    v21 = i <= a2;
    if (a3 > 0.0)
    {
      v21 = i >= a2;
    }

    if (!v21)
    {
      v20 = __OFADD__(v16++, 1);
      if (v20)
      {
        goto LABEL_48;
      }

      v22 = a1 + v16 * a3;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v15 & 1)
    {
      break;
    }

    v15 = 1;
    v22 = i;
    if (v14)
    {
      v22 = i;
      goto LABEL_41;
    }

LABEL_29:
    v23 = *(v8 + 3);
    if (((v23 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size(v26);
    v28 = v27 - 32;
    if (v27 < 32)
    {
      v28 = v27 - 25;
    }

    v29 = v28 >> 3;
    *(v26 + 2) = v25;
    *(v26 + 3) = 2 * (v28 >> 3);
    v30 = (v26 + 4);
    v31 = *(v8 + 3) >> 1;
    if (*(v8 + 2))
    {
      v32 = v8 + 4;
      if (v26 != v8 || v30 >= v32 + 8 * v31)
      {
        memmove(v26 + 4, v32, 8 * v31);
      }

      v8[2] = 0.0;
    }

    v13 = (v30 + 8 * v31);
    v14 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

    v8 = v26;
LABEL_41:
    v20 = __OFSUB__(v14--, 1);
    if (v20)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v13++ = i;
  }

  v33 = *(v8 + 3);
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v20 = __OFSUB__(v34, v14);
    v35 = v34 - v14;
    if (v20)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v35;
  }

  return v8;
}

uint64_t sub_1D1C27FB4(uint64_t a1)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  sub_1D1741C08(v1, &v23 - v14, &qword_1EC64C9B0, &qword_1D1EA1190);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1C2B18C(v15, v12, type metadata accessor for StaticService.AutoClimateControlConfig);
  sub_1D1E6922C();
  v17 = *(v12 + 2);
  if (v17 == 1 || (v24 = *(v12 + 3), v18 = v12[32], sub_1D1E6922C(), sub_1D1E6922C(), sub_1D1E6922C(), !v17))
  {
    sub_1D1E6922C();
    v19 = v26;
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
    v19 = v26;
    if (v18)
    {
      sub_1D1E6922C();
    }

    else
    {
      sub_1D1E6922C();
      if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v22 = v24;
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x1D3892890](v22);
    }
  }

  sub_1D1741C08(&v12[*(v9 + 20)], v8, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v25 + 48))(v8, 1, v19) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v8, v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v5);
    v20 = v5[1];
    sub_1D1E6922C();
    if (v20)
    {
      sub_1D176FF94(a1, v20);
    }

    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
    sub_1D1E676EC();
    sub_1D1E6922C();
    sub_1D1C2AF2C(v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v21 = *&v12[*(v9 + 24)];
  sub_1D1E6922C();
  if (v21)
  {
    sub_1D176FDE8(a1, v21);
  }

  return sub_1D1C2AF2C(v12, type metadata accessor for StaticService.AutoClimateControlConfig);
}

uint64_t sub_1D1C28430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_1D1C284C0(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

BOOL _s13HomeDataModel13StaticServiceV24AutoClimateControlConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = (&v40 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAE8, &qword_1D1EA1808);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v40 - v10;
  v46 = a1;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 32);
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v47 = a2;
  v20 = *(a2 + 32);
  if (v13 == 1)
  {
    v41 = v9;
    sub_1D1C2B3B4(v12, v11, 1);
    if (v18 == 1)
    {
      sub_1D1C2B3B4(v16, v17, 1);
      sub_1D1C2B470(v12, v11, 1);
      goto LABEL_9;
    }

    sub_1D1C2B3B4(v16, v17, v18);
LABEL_7:
    sub_1D1C2B470(v12, v11, v13);
    sub_1D1C2B470(v16, v17, v18);
    return 0;
  }

  v53[0] = v12;
  v53[1] = v11;
  v53[2] = v13;
  v53[3] = v14;
  v54 = v15;
  if (v18 == 1)
  {
    sub_1D1C2B3B4(v12, v11, v13);
    sub_1D1C2B3B4(v16, v17, 1);
    sub_1D1C2B3B4(v12, v11, v13);

    goto LABEL_7;
  }

  v41 = v9;
  v48 = v16 & 0x101;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  sub_1D1C2B3B4(v12, v11, v13);
  sub_1D1C2B3B4(v16, v17, v18);
  sub_1D1C2B3B4(v12, v11, v13);
  v21 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(v53, &v48);

  sub_1D1C2B470(v12, v11, v13);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v22 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v23 = *(v22 + 20);
  v24 = *(v41 + 48);
  v26 = v45;
  v25 = v46;
  sub_1D1741C08(v46 + v23, v45, &qword_1EC64CA18, &qword_1D1EABE10);
  v27 = v47 + v23;
  v28 = v47;
  sub_1D1741C08(v27, v26 + v24, &qword_1EC64CA18, &qword_1D1EABE10);
  v29 = v44;
  v30 = *(v43 + 48);
  if (v30(v26, 1, v44) != 1)
  {
    v31 = v42;
    sub_1D1741C08(v26, v42, &qword_1EC64CA18, &qword_1D1EABE10);
    if (v30(v26 + v24, 1, v29) != 1)
    {
      v32 = v26 + v24;
      v33 = v40;
      sub_1D1C2B18C(v32, v40, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v34 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV7SettingV2eeoiySbAI_AItFZ_0(v31, v33);
      sub_1D1C2AF2C(v33, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1C2AF2C(v31, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1741A30(v26, &qword_1EC64CA18, &qword_1D1EABE10);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_1D1C2AF2C(v31, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
LABEL_14:
    sub_1D1741A30(v26, &qword_1EC64CAE8, &qword_1D1EA1808);
    return 0;
  }

  if (v30(v26 + v24, 1, v29) != 1)
  {
    goto LABEL_14;
  }

  sub_1D1741A30(v26, &qword_1EC64CA18, &qword_1D1EABE10);
LABEL_16:
  v35 = *(v22 + 24);
  v36 = *(v28 + v35);
  if (*(v25 + v35))
  {
    v37 = *(v25 + v35);
    if (v36)
    {
      swift_bridgeObjectRetain_n();

      v38 = sub_1D177AE98(v37, v36);
      swift_bridgeObjectRelease_n();

      return (v38 & 1) != 0;
    }
  }

  else if (!v36)
  {

    return 1;
  }

  return 0;
}

BOOL _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v245 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v243 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v247 = (&v222 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v244 = (&v222 - v6);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAF8, &qword_1D1EA1830);
  MEMORY[0x1EEE9AC00](v242);
  v246 = &v222 - v7;
  v240 = type metadata accessor for EndpointPath(0);
  v237 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v238 = &v222 - v10;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB00, &qword_1D1EA1838);
  MEMORY[0x1EEE9AC00](v236);
  v241 = &v222 - v11;
  v12 = type metadata accessor for StaticSoftwareUpdate(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v222 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v222 - v20;
  v235 = sub_1D1E66A7C();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v233 = &v222 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v232 = &v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v229 = &v222 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v231 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v230 = &v222 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v228 = &v222 - v35;
  v253 = sub_1D1E669FC();
  v255 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v249 = &v222 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v248 = &v222 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v252 = &v222 - v40;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v41 = MEMORY[0x1EEE9AC00](v254);
  v250 = &v222 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v260 = &v222 - v43;
  v259 = type metadata accessor for StaticDeviceMetadata(0);
  v257 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v251 = &v222 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v258 = &v222 - v46;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644880, &qword_1D1E76500);
  MEMORY[0x1EEE9AC00](v256);
  v261 = &v222 - v47;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v48 = type metadata accessor for StaticService(0);
  v49 = v48[5];
  v50 = *(a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  if (v50 != *v52 || v51 != v52[1])
  {
    v227 = v28;
    v53 = v19;
    v54 = v30;
    v55 = v13;
    v56 = v18;
    v57 = v15;
    v58 = v12;
    v59 = v21;
    v60 = v48;
    v61 = sub_1D1E6904C();
    v48 = v60;
    v21 = v59;
    v12 = v58;
    v15 = v57;
    v18 = v56;
    v13 = v55;
    v30 = v54;
    v19 = v53;
    v28 = v227;
    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v48[6]) != *(a2 + v48[6]) || *(a1 + v48[7]) != *(a2 + v48[7]) || *(a1 + v48[8]) != *(a2 + v48[8]))
  {
    return 0;
  }

  v63 = v48[9];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64 == 2)
  {
    if (v65 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v65 == 2 || ((v65 ^ v64) & 1) != 0)
    {
      return result;
    }
  }

  v66 = v48[10];
  v67 = *(a1 + v66);
  v68 = *(a2 + v66);
  if (v67 == 2)
  {
    if (v68 != 2)
    {
      return 0;
    }

LABEL_20:
    v226 = v48;
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      return 0;
    }

    v69 = v226[12];
    v70 = (a1 + v69);
    v71 = *(a1 + v69 + 8);
    v72 = (a2 + v69);
    v73 = *(a2 + v69 + 8);
    v74 = a1;
    if (v71)
    {
      v75 = v261;
      if (!v73)
      {
        return 0;
      }
    }

    else
    {
      if (*v70 != *v72)
      {
        LOBYTE(v73) = 1;
      }

      v75 = v261;
      if (v73)
      {
        return 0;
      }
    }

    v227 = v28;
    v225 = v226[13];
    v76 = *(v256 + 48);
    v223 = v74;
    sub_1D1741C08(v74 + v225, v75, &qword_1EC644620, &unk_1D1E75A00);
    v224 = a2;
    v256 = v76;
    sub_1D1741C08(a2 + v225, v75 + v76, &qword_1EC644620, &unk_1D1E75A00);
    v77 = v259;
    v257 = *(v257 + 48);
    if ((v257)(v75, 1, v259) == 1)
    {
      v78 = (v257)(v75 + v256, 1, v77);
      v79 = v260;
      if (v78 == 1)
      {
        v259 = v30;
        sub_1D1741A30(v75, &qword_1EC644620, &unk_1D1E75A00);
        goto LABEL_34;
      }
    }

    else
    {
      sub_1D1741C08(v75, v258, &qword_1EC644620, &unk_1D1E75A00);
      v80 = (v257)(v75 + v256, 1, v77);
      v79 = v260;
      if (v80 != 1)
      {
        v259 = v30;
        v81 = v75 + v256;
        v82 = v251;
        sub_1D1C2B18C(v81, v251, type metadata accessor for StaticDeviceMetadata);
        v83 = v258;
        LODWORD(v257) = _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(v258, v82);
        sub_1D1C2AF2C(v82, type metadata accessor for StaticDeviceMetadata);
        sub_1D1C2AF2C(v83, type metadata accessor for StaticDeviceMetadata);
        sub_1D1741A30(v261, &qword_1EC644620, &unk_1D1E75A00);
        if ((v257 & 1) == 0)
        {
          return 0;
        }

LABEL_34:
        v257 = v18;
        v258 = v19;
        v261 = v13;
        v84 = v226[14];
        v85 = *(v254 + 48);
        sub_1D1741C08(v223 + v84, v79, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741C08(v224 + v84, v79 + v85, &qword_1EC642570, &qword_1D1E6C6A0);
        v86 = *(v255 + 48);
        v87 = v253;
        if (v86(v79, 1, v253) == 1)
        {
          if (v86(v79 + v85, 1, v87) == 1)
          {
            sub_1D1741A30(v79, &qword_1EC642570, &qword_1D1E6C6A0);
            goto LABEL_41;
          }
        }

        else
        {
          v88 = v252;
          sub_1D1741C08(v79, v252, &qword_1EC642570, &qword_1D1E6C6A0);
          if (v86(v79 + v85, 1, v87) != 1)
          {
            v89 = v255;
            v90 = v79 + v85;
            v91 = v249;
            (*(v255 + 32))(v249, v90, v87);
            sub_1D1C2AFE0(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
            LODWORD(v256) = sub_1D1E6775C();
            v92 = *(v89 + 8);
            v92(v91, v87);
            v92(v252, v87);
            sub_1D1741A30(v260, &qword_1EC642570, &qword_1D1E6C6A0);
            if ((v256 & 1) == 0)
            {
              return 0;
            }

LABEL_41:
            v260 = v15;
            v93 = v226[15];
            v94 = *(v254 + 48);
            v95 = v250;
            sub_1D1741C08(v223 + v93, v250, &qword_1EC642570, &qword_1D1E6C6A0);
            v96 = v224 + v93;
            v97 = v95;
            sub_1D1741C08(v96, v95 + v94, &qword_1EC642570, &qword_1D1E6C6A0);
            if (v86(v95, 1, v87) == 1)
            {
              if (v86(v95 + v94, 1, v87) == 1)
              {
                sub_1D1741A30(v95, &qword_1EC642570, &qword_1D1E6C6A0);
                goto LABEL_48;
              }
            }

            else
            {
              v98 = v95;
              v99 = v248;
              sub_1D1741C08(v98, v248, &qword_1EC642570, &qword_1D1E6C6A0);
              if (v86(v97 + v94, 1, v87) != 1)
              {
                v100 = v255;
                v101 = v97 + v94;
                v102 = v249;
                (*(v255 + 32))(v249, v101, v87);
                sub_1D1C2AFE0(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                v103 = v87;
                v104 = sub_1D1E6775C();
                v105 = *(v100 + 8);
                v105(v102, v103);
                v105(v99, v103);
                sub_1D1741A30(v97, &qword_1EC642570, &qword_1D1E6C6A0);
                if ((v104 & 1) == 0)
                {
                  return 0;
                }

LABEL_48:
                v106 = v12;
                v107 = v226[16];
                v108 = *(v223 + v107);
                v109 = *(v224 + v107);
                if (v108 == 2)
                {
                  v110 = v21;
                  if (v109 != 2)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (v109 == 2)
                  {
                    return 0;
                  }

                  v110 = v21;
                  if (v108)
                  {
                    v111 = 0x6C616D726F6ELL;
                  }

                  else
                  {
                    v111 = 7827308;
                  }

                  if (v108)
                  {
                    v112 = 0xE600000000000000;
                  }

                  else
                  {
                    v112 = 0xE300000000000000;
                  }

                  if (v109)
                  {
                    v113 = 0x6C616D726F6ELL;
                  }

                  else
                  {
                    v113 = 7827308;
                  }

                  if (v109)
                  {
                    v114 = 0xE600000000000000;
                  }

                  else
                  {
                    v114 = 0xE300000000000000;
                  }

                  if (v111 == v113 && v112 == v114)
                  {
                  }

                  else
                  {
                    v115 = sub_1D1E6904C();

                    if ((v115 & 1) == 0)
                    {
                      return 0;
                    }
                  }
                }

                if (*(v223 + v226[17]) != *(v224 + v226[17]) || *(v223 + v226[18]) != *(v224 + v226[18]) || (sub_1D17A6E98(*(v223 + v226[19]), *(v224 + v226[19])) & 1) == 0)
                {
                  return 0;
                }

                v116 = v226[20];
                v117 = (v223 + v116);
                v118 = *(v223 + v116 + 8);
                v119 = (v224 + v116);
                v120 = v119[1];
                if (v118)
                {
                  if (!v120 || (*v117 != *v119 || v118 != v120) && (sub_1D1E6904C() & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (v120)
                {
                  return 0;
                }

                if (*(v223 + v226[21]) != *(v224 + v226[21]) || *(v223 + v226[22]) != *(v224 + v226[22]) || *(v223 + v226[23]) != *(v224 + v226[23]) || *(v223 + v226[24]) != *(v224 + v226[24]))
                {
                  return 0;
                }

                v121 = v226[25];
                v122 = (v223 + v121);
                v123 = *(v223 + v121 + 8);
                v124 = (v224 + v121);
                v125 = v124[1];
                if (v123)
                {
                  if (!v125 || (*v122 != *v124 || v123 != v125) && (sub_1D1E6904C() & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (v125)
                {
                  return 0;
                }

                v126 = v226[26];
                v127 = *(v223 + v126);
                LOBYTE(v126) = *(v224 + v126);
                v262[7] = v127;
                v262[6] = v126;
                v128 = ServiceKind.rawValue.getter();
                v130 = v129;
                if (v128 == ServiceKind.rawValue.getter() && v130 == v131)
                {
                }

                else
                {
                  v132 = sub_1D1E6904C();

                  if ((v132 & 1) == 0)
                  {
                    return 0;
                  }
                }

                v133 = v226[27];
                v134 = *(v223 + v133);
                v135 = *(v224 + v133);
                if (v134 == 5)
                {
                  if (v135 != 5)
                  {
                    return 0;
                  }
                }

                else if (v135 == 5 || (sub_1D17A07A0(v134, v135) & 1) == 0)
                {
                  return 0;
                }

                v136 = v226[28];
                v137 = *(v223 + v136);
                v138 = *(v224 + v136);
                if (v137 == 53)
                {
                  if (v138 != 53)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (v138 == 53)
                  {
                    return 0;
                  }

                  v262[5] = v137;
                  v262[4] = v138;
                  v139 = ServiceKind.rawValue.getter();
                  v141 = v140;
                  if (v139 == ServiceKind.rawValue.getter() && v141 == v142)
                  {
                  }

                  else
                  {
                    v143 = sub_1D1E6904C();

                    if ((v143 & 1) == 0)
                    {
                      return 0;
                    }
                  }
                }

                v144 = v226[29];
                v145 = *(v259 + 48);
                v146 = v228;
                sub_1D1741C08(v223 + v144, v228, &qword_1EC642590, qword_1D1E71260);
                sub_1D1741C08(v224 + v144, v146 + v145, &qword_1EC642590, qword_1D1E71260);
                v256 = *(v234 + 48);
                if ((v256)(v146, 1, v235) == 1)
                {
                  if ((v256)(v228 + v145, 1, v235) == 1)
                  {
                    sub_1D1741A30(v228, &qword_1EC642590, qword_1D1E71260);
                    goto LABEL_113;
                  }
                }

                else
                {
                  v147 = v228;
                  sub_1D1741C08(v228, v229, &qword_1EC642590, qword_1D1E71260);
                  if ((v256)(v147 + v145, 1, v235) != 1)
                  {
                    v151 = v234;
                    v152 = v228;
                    v153 = v233;
                    v154 = v235;
                    (*(v234 + 32))(v233, v228 + v145, v235);
                    sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                    v155 = v229;
                    LODWORD(v255) = sub_1D1E6775C();
                    v156 = *(v151 + 8);
                    v156(v153, v154);
                    v156(v155, v154);
                    sub_1D1741A30(v152, &qword_1EC642590, qword_1D1E71260);
                    if ((v255 & 1) == 0)
                    {
                      return 0;
                    }

LABEL_113:
                    v157 = v226[30];
                    v158 = *(v259 + 48);
                    v159 = v230;
                    sub_1D1741C08(v223 + v157, v230, &qword_1EC642590, qword_1D1E71260);
                    sub_1D1741C08(v224 + v157, v159 + v158, &qword_1EC642590, qword_1D1E71260);
                    if ((v256)(v159, 1, v235) == 1)
                    {
                      if ((v256)(v230 + v158, 1, v235) == 1)
                      {
                        sub_1D1741A30(v230, &qword_1EC642590, qword_1D1E71260);
                        goto LABEL_121;
                      }
                    }

                    else
                    {
                      v160 = v230;
                      sub_1D1741C08(v230, v227, &qword_1EC642590, qword_1D1E71260);
                      if ((v256)(v160 + v158, 1, v235) != 1)
                      {
                        v161 = v234;
                        v162 = v230;
                        v163 = v233;
                        v164 = v235;
                        (*(v234 + 32))(v233, v230 + v158, v235);
                        sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                        v165 = v227;
                        LODWORD(v255) = sub_1D1E6775C();
                        v166 = *(v161 + 8);
                        v166(v163, v164);
                        v166(v165, v164);
                        sub_1D1741A30(v162, &qword_1EC642590, qword_1D1E71260);
                        if ((v255 & 1) == 0)
                        {
                          return 0;
                        }

LABEL_121:
                        if ((sub_1D177AE58(*(v223 + v226[31]), *(v224 + v226[31])) & 1) == 0)
                        {
                          return 0;
                        }

                        v167 = v226[32];
                        v168 = *(v223 + v167);
                        v169 = *(v224 + v167);

                        v170 = sub_1D1846E74(v168, v169);

                        if ((v170 & 1) == 0)
                        {
                          return 0;
                        }

                        v171 = v226[33];
                        v172 = *(v223 + v171);
                        v173 = *(v223 + v171 + 8);
                        v174 = (v224 + v171);
                        v175 = *v174;
                        v176 = v174[1];

                        if ((sub_1D184CF18(v172, v175) & 1) == 0)
                        {

                          return 0;
                        }

                        v177 = sub_1D184D5B4(v173, v176);

                        if ((v177 & 1) == 0)
                        {
                          return 0;
                        }

                        v178 = v226[34];
                        v179 = *(v258 + 48);
                        sub_1D1741C08(v223 + v178, v110, &qword_1EC644760, &unk_1D1E9E530);
                        sub_1D1741C08(v224 + v178, v110 + v179, &qword_1EC644760, &unk_1D1E9E530);
                        v180 = *(v261 + 48);
                        if (v180(v110, 1, v106) == 1)
                        {
                          if (v180(v110 + v179, 1, v106) == 1)
                          {
                            sub_1D1741A30(v110, &qword_1EC644760, &unk_1D1E9E530);
LABEL_134:
                            if (*(v223 + v226[35]) != *(v224 + v226[35]) || (sub_1D177AE58(*(v223 + v226[36]), *(v224 + v226[36])) & 1) == 0)
                            {
                              return 0;
                            }

                            v186 = v226[37];
                            v187 = *(v259 + 48);
                            v188 = v231;
                            sub_1D1741C08(v223 + v186, v231, &qword_1EC642590, qword_1D1E71260);
                            sub_1D1741C08(v224 + v186, v188 + v187, &qword_1EC642590, qword_1D1E71260);
                            if ((v256)(v188, 1, v235) == 1)
                            {
                              if ((v256)(v231 + v187, 1, v235) == 1)
                              {
                                sub_1D1741A30(v231, &qword_1EC642590, qword_1D1E71260);
                                goto LABEL_145;
                              }
                            }

                            else
                            {
                              v189 = v231;
                              sub_1D1741C08(v231, v232, &qword_1EC642590, qword_1D1E71260);
                              if ((v256)(v189 + v187, 1, v235) != 1)
                              {
                                v190 = v234;
                                v191 = v231;
                                v192 = v231 + v187;
                                v193 = v233;
                                v194 = v235;
                                (*(v234 + 32))(v233, v192, v235);
                                sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                                v195 = v232;
                                v196 = sub_1D1E6775C();
                                v197 = *(v190 + 8);
                                v197(v193, v194);
                                v197(v195, v194);
                                sub_1D1741A30(v191, &qword_1EC642590, qword_1D1E71260);
                                if ((v196 & 1) == 0)
                                {
                                  return 0;
                                }

LABEL_145:
                                v198 = v226[38];
                                v199 = (v223 + v198);
                                v200 = *(v223 + v198 + 2);
                                v201 = (v224 + v198);
                                v202 = *(v224 + v198 + 2);
                                if (v200)
                                {
                                  if (!v202)
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  if (*v199 != *v201)
                                  {
                                    LOBYTE(v202) = 1;
                                  }

                                  if (v202)
                                  {
                                    return 0;
                                  }
                                }

                                v203 = v226[39];
                                v204 = *(v236 + 48);
                                v205 = v241;
                                sub_1D1741C08(v223 + v203, v241, &qword_1EC644870, &unk_1D1EABA00);
                                sub_1D1741C08(v224 + v203, v205 + v204, &qword_1EC644870, &unk_1D1EABA00);
                                v206 = *(v237 + 48);
                                if (v206(v205, 1, v240) == 1)
                                {
                                  if (v206(v241 + v204, 1, v240) == 1)
                                  {
                                    sub_1D1741A30(v241, &qword_1EC644870, &unk_1D1EABA00);
LABEL_154:
                                    v207 = v226[40];
                                    v208 = *(v242 + 48);
                                    v209 = v246;
                                    sub_1D1741C08(v223 + v207, v246, &qword_1EC64C9B0, &qword_1D1EA1190);
                                    sub_1D1741C08(v224 + v207, v209 + v208, &qword_1EC64C9B0, &qword_1D1EA1190);
                                    v210 = *(v243 + 48);
                                    if (v210(v209, 1, v245) == 1)
                                    {
                                      if (v210(v246 + v208, 1, v245) == 1)
                                      {
                                        sub_1D1741A30(v246, &qword_1EC64C9B0, &qword_1D1EA1190);
                                        return 1;
                                      }
                                    }

                                    else
                                    {
                                      v216 = v246;
                                      sub_1D1741C08(v246, v244, &qword_1EC64C9B0, &qword_1D1EA1190);
                                      if (v210(v216 + v208, 1, v245) != 1)
                                      {
                                        v217 = v246;
                                        v218 = v246 + v208;
                                        v219 = v247;
                                        sub_1D1C2B18C(v218, v247, type metadata accessor for StaticService.AutoClimateControlConfig);
                                        v220 = v244;
                                        v221 = _s13HomeDataModel13StaticServiceV24AutoClimateControlConfigV2eeoiySbAE_AEtFZ_0(v244, v219);
                                        sub_1D1C2AF2C(v219, type metadata accessor for StaticService.AutoClimateControlConfig);
                                        sub_1D1C2AF2C(v220, type metadata accessor for StaticService.AutoClimateControlConfig);
                                        sub_1D1741A30(v217, &qword_1EC64C9B0, &qword_1D1EA1190);
                                        return v221;
                                      }

                                      sub_1D1C2AF2C(v244, type metadata accessor for StaticService.AutoClimateControlConfig);
                                    }

                                    sub_1D1741A30(v246, &qword_1EC64CAF8, &qword_1D1EA1830);
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v211 = v241;
                                  sub_1D1741C08(v241, v238, &qword_1EC644870, &unk_1D1EABA00);
                                  if (v206(v211 + v204, 1, v240) != 1)
                                  {
                                    sub_1D1C2B18C(v241 + v204, v239, type metadata accessor for EndpointPath);
                                    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && *(v238 + *(v240 + 20)) == *(v239 + *(v240 + 20)))
                                    {
                                      v212 = *(v240 + 24);
                                      v213 = v238;
                                      v214 = *(v238 + v212);
                                      v215 = *(v239 + v212);
                                      sub_1D1C2AF2C(v239, type metadata accessor for EndpointPath);
                                      sub_1D1C2AF2C(v213, type metadata accessor for EndpointPath);
                                      sub_1D1741A30(v241, &qword_1EC644870, &unk_1D1EABA00);
                                      if (v214 != v215)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_154;
                                    }

                                    sub_1D1C2AF2C(v239, type metadata accessor for EndpointPath);
                                    sub_1D1C2AF2C(v238, type metadata accessor for EndpointPath);
                                    v148 = &qword_1EC644870;
                                    v149 = &unk_1D1EABA00;
                                    goto LABEL_165;
                                  }

                                  sub_1D1C2AF2C(v238, type metadata accessor for EndpointPath);
                                }

                                v148 = &qword_1EC64CB00;
                                v149 = &qword_1D1EA1838;
LABEL_165:
                                v150 = &v264;
                                goto LABEL_119;
                              }

                              (*(v234 + 8))(v232, v235);
                            }

                            v148 = &qword_1EC642980;
                            v149 = &unk_1D1E6E6E0;
                            v150 = &v263;
LABEL_119:
                            sub_1D1741A30(*(v150 - 32), v148, v149);
                            return 0;
                          }
                        }

                        else
                        {
                          sub_1D1741C08(v110, v257, &qword_1EC644760, &unk_1D1E9E530);
                          if (v180(v110 + v179, 1, v106) != 1)
                          {
                            sub_1D1C2B18C(v110 + v179, v260, type metadata accessor for StaticSoftwareUpdate);
                            if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
                            {
                              v183 = v257;
                              v184 = v260;
                              updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v257 + *(v106 + 20), &v260[*(v106 + 20)]);
                              sub_1D1C2AF2C(v184, type metadata accessor for StaticSoftwareUpdate);
                              sub_1D1C2AF2C(v183, type metadata accessor for StaticSoftwareUpdate);
                              sub_1D1741A30(v110, &qword_1EC644760, &unk_1D1E9E530);
                              if (!updated)
                              {
                                return 0;
                              }

                              goto LABEL_134;
                            }

                            sub_1D1C2AF2C(v260, type metadata accessor for StaticSoftwareUpdate);
                            sub_1D1C2AF2C(v257, type metadata accessor for StaticSoftwareUpdate);
                            v181 = &qword_1EC644760;
                            v182 = &unk_1D1E9E530;
LABEL_140:
                            sub_1D1741A30(v110, v181, v182);
                            return 0;
                          }

                          sub_1D1C2AF2C(v257, type metadata accessor for StaticSoftwareUpdate);
                        }

                        v181 = &qword_1EC64C608;
                        v182 = &qword_1D1E9FA10;
                        goto LABEL_140;
                      }

                      (*(v234 + 8))(v227, v235);
                    }

                    v148 = &qword_1EC642980;
                    v149 = &unk_1D1E6E6E0;
                    v150 = v262;
                    goto LABEL_119;
                  }

                  (*(v234 + 8))(v229, v235);
                }

                v148 = &qword_1EC642980;
                v149 = &unk_1D1E6E6E0;
                v150 = &v260;
                goto LABEL_119;
              }

              (*(v255 + 8))(v99, v87);
            }

            sub_1D1741A30(v97, &qword_1EC642AC0, &qword_1D1E6E810);
            return 0;
          }

          (*(v255 + 8))(v88, v87);
        }

        sub_1D1741A30(v79, &qword_1EC642AC0, &qword_1D1E6E810);
        return 0;
      }

      sub_1D1C2AF2C(v258, type metadata accessor for StaticDeviceMetadata);
    }

    sub_1D1741A30(v75, &qword_1EC644880, &qword_1D1E76500);
    return 0;
  }

  result = 0;
  if (v68 != 2 && ((v68 ^ v67) & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D1C2AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C2AF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1C2AF8C()
{
  result = qword_1EC64C9C0;
  if (!qword_1EC64C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9C0);
  }

  return result;
}

uint64_t sub_1D1C2AFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1C2B028(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
    sub_1D1C2AFE0(a2, type metadata accessor for StaticService, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C2B0C4()
{
  result = qword_1EC64C9D8;
  if (!qword_1EC64C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9D8);
  }

  return result;
}

unint64_t sub_1D1C2B118()
{
  result = qword_1EC64C9E0;
  if (!qword_1EC64C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9E0);
  }

  return result;
}

uint64_t sub_1D1C2B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C2B1F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C2AFE0(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C2B290()
{
  result = qword_1EC64CA00;
  if (!qword_1EC64CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA00);
  }

  return result;
}

unint64_t sub_1D1C2B2E4()
{
  result = qword_1EC64CA08;
  if (!qword_1EC64CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA08);
  }

  return result;
}

double sub_1D1C2B374(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double sub_1D1C2B3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1D1C2B3C8()
{
  result = qword_1EC64CA28;
  if (!qword_1EC64CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA28);
  }

  return result;
}

unint64_t sub_1D1C2B41C()
{
  result = qword_1EC64CA30;
  if (!qword_1EC64CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA30);
  }

  return result;
}

uint64_t sub_1D1C2B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1D1C2B484()
{
  result = qword_1EC64CA40;
  if (!qword_1EC64CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA40);
  }

  return result;
}

unint64_t sub_1D1C2B4D8()
{
  result = qword_1EC64CA50;
  if (!qword_1EC64CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA50);
  }

  return result;
}

unint64_t sub_1D1C2B52C()
{
  result = qword_1EC64CA60;
  if (!qword_1EC64CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA60);
  }

  return result;
}

uint64_t sub_1D1C2B5C8(void *a1)
{
  a1[1] = sub_1D1C2AFE0(&qword_1EC64CA68, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[2] = sub_1D1C2AFE0(&qword_1EC64CA70, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[3] = sub_1D1C2AFE0(&qword_1EC644750, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[4] = sub_1D1C2AFE0(&qword_1EC6446F8, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[5] = sub_1D1C2AFE0(&qword_1EE07AB20, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  result = sub_1D1C2AFE0(&qword_1EC64CA78, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1C2B6EC(void *a1)
{
  a1[1] = sub_1D1C2AFE0(&qword_1EC644750, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[2] = sub_1D1C2AFE0(&qword_1EC6446F8, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[3] = sub_1D1C2AFE0(&qword_1EE07AB20, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  result = sub_1D1C2AFE0(&qword_1EC64CA78, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  a1[4] = result;
  return result;
}

void sub_1D1C2B830(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1D8, MEMORY[0x1E69E6530]);
      if (v3 <= 0x3F)
      {
        sub_1D1C2BC40(319, &qword_1EE07DF30, type metadata accessor for StaticDeviceMetadata, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D1C2BC40(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D17BDF80(319, qword_1EE07CAB8, &type metadata for StaticAccessory.BatteryStatus);
            if (v6 <= 0x3F)
            {
              sub_1D1791340(319);
              if (v7 <= 0x3F)
              {
                sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
                if (v8 <= 0x3F)
                {
                  sub_1D17BDF80(319, qword_1EE07D8B8, &type metadata for ServiceSubKind);
                  if (v9 <= 0x3F)
                  {
                    sub_1D17BDF80(319, qword_1EE07DB20, &type metadata for ServiceKind);
                    if (v10 <= 0x3F)
                    {
                      sub_1D1C2BC40(319, &qword_1EE07E018, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D1C2BC40(319, &qword_1EC64CA88, type metadata accessor for StaticService, MEMORY[0x1E69E62F8]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D1C2BC40(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1D17BDF80(319, &qword_1EE07D1D0, MEMORY[0x1E69E75F8]);
                            if (v14 <= 0x3F)
                            {
                              sub_1D1C2BC40(319, qword_1EE07DAD8, type metadata accessor for EndpointPath, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1D1C2BC40(319, &qword_1EE07AB28, type metadata accessor for StaticService.AutoClimateControlConfig, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
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
      }
    }
  }
}

void sub_1D1C2BC40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1C2BCCC(uint64_t a1)
{
  sub_1D17BDF80(319, &qword_1EC64CAA0, &type metadata for AutoClimateModel.Thermostat.CleanEnergySettingConfig);
  if (v1 <= 0x3F)
  {
    sub_1D1C2BC40(319, &qword_1EC64CAA8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC64CAB0, &type metadata for AutoClimateModel.Thermostat.WeekdaySchedule);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticService.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticService.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1C2BF1C()
{
  result = qword_1EC64CAB8;
  if (!qword_1EC64CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAB8);
  }

  return result;
}

unint64_t sub_1D1C2BF74()
{
  result = qword_1EC64CAC0;
  if (!qword_1EC64CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAC0);
  }

  return result;
}

unint64_t sub_1D1C2BFCC()
{
  result = qword_1EC64CAC8;
  if (!qword_1EC64CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAC8);
  }

  return result;
}

unint64_t sub_1D1C2C024()
{
  result = qword_1EC64CAD0;
  if (!qword_1EC64CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAD0);
  }

  return result;
}

unint64_t sub_1D1C2C07C()
{
  result = qword_1EC64CAD8;
  if (!qword_1EC64CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAD8);
  }

  return result;
}

unint64_t sub_1D1C2C0D4()
{
  result = qword_1EC64CAE0;
  if (!qword_1EC64CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAE0);
  }

  return result;
}

uint64_t sub_1D1C2C128(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7262696C61437369 && a2 == 0xED0000676E697461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746142776F4C7369 && a2 == 0xEC00000079726574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC69B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x654D656369766564 && a2 == 0xEE00617461646174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC69D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC69F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6A10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC6A30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D1EC6A50 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC6150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBDFA0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4B65636976726573 && a2 == 0xEB00000000646E69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x5365636976726573 && a2 == 0xEE00646E694B6275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6A70 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6553746E65726170 && a2 == 0xEF64496563697672 || (sub_1D1E6904C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6A90 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC6AB0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6AD0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6AF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC6B10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC6B30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6B50 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6B70 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6B90 == a2)
  {

    return 36;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

uint64_t sub_1D1C2CC84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticService(0);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D1E66A7C();
  v12 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAF0, &unk_1D1EA1820);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v46 = a1;
  v47 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v48 = v19;
  v49 = 0;
  v50 = v22 & v20;
  v51 = a2;
  v52 = a3;
  v23 = (v12 + 32);
  v42 = (v12 + 8);
  v43 = v12;

  v41[1] = a3;

  while (1)
  {
    sub_1D1AC07A4(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_1D1716918(v46);
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v14, v17, v45);
    sub_1D1C2B18C(&v17[v25], v53, type metadata accessor for StaticService);
    v27 = *a5;
    v29 = sub_1D1742188();
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1735934();
        v36 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v42)(v14, v45);
      sub_1D1B61488(v53, v36[7] + *(v44 + 72) * v29);
      a4 = 1;
    }

    else
    {
      sub_1D1723194(v32, a4 & 1);
      v34 = sub_1D1742188();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v29 = v34;
      v36 = *a5;
      if (v33)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v26((v36[6] + *(v43 + 72) * v29), v14, v45);
      sub_1D1C2B18C(v53, v36[7] + *(v44 + 72) * v29, type metadata accessor for StaticService);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void sub_1D1C2D090(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v58 = a3;
  v6 = sub_1D1E66A7C();
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643700, &qword_1D1E71E58);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v49 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = *(v10 + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v54 = *(v11 + 72);
  v49 = v15;
  v50 = a1;
  v16 = a1 + v15;
  v17 = v57;
  sub_1D1741C08(v16, v57, &qword_1EC643700, &qword_1D1E71E58);
  v18 = *(v52 + 32);
  v55 = (v52 + 32);
  v56 = v6;
  v18(v8, v17, v6);
  v53 = v14;
  v19 = *(v17 + v14);
  v20 = *v58;
  v22 = sub_1D1742188();
  v23 = *(v20 + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v21;
  if (*(v20 + 3) >= v25)
  {
    v17 = v55;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v19;
    while (1)
    {
LABEL_8:
      v19 = *v58;
      v51 = v17 - 3;
      if (v3)
      {
        v3 = v56;
        (*(v17 - 3))(v8, v56);
        v29 = *(v19 + 7);
        v30 = *(v29 + 8 * v22);
        *(v29 + 8 * v22) = v28;
      }

      else
      {
        *(v19 + (v22 >> 6) + 8) |= 1 << v22;
        v3 = v56;
        v18((*(v19 + 6) + *(v52 + 72) * v22), v8, v56);
        *(*(v19 + 7) + 8 * v22) = v28;
        v31 = *(v19 + 2);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_25;
        }

        *(v19 + 2) = v33;
      }

      v18 = (v13 - 1);
      if (v13 == 1)
      {
        return;
      }

      v13 = v50 + v54 + v49;
      while (1)
      {
        v36 = v57;
        sub_1D1741C08(v13, v57, &qword_1EC643700, &qword_1D1E71E58);
        v19 = *v17;
        (*v17)(v8, v36, v3);
        v37 = *(v36 + v53);
        v38 = *v58;
        v22 = sub_1D1742188();
        v40 = *(v38 + 2);
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          break;
        }

        v43 = v39;
        if (*(v38 + 3) < v42)
        {
          sub_1D1721444(v42, 1);
          v44 = sub_1D1742188();
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_27;
          }

          v22 = v44;
        }

        v46 = *v58;
        if (v43)
        {
          v3 = v56;
          (*v51)(v8, v56);
          v34 = *(v46 + 7);
          v35 = *(v34 + 8 * v22);
          *(v34 + 8 * v22) = v37;

          v17 = v55;
        }

        else
        {
          *(v46 + (v22 >> 6) + 8) |= 1 << v22;
          v17 = v55;
          v3 = v56;
          (v19)(*(v46 + 6) + *(v52 + 72) * v22, v8, v56);
          *(*(v46 + 7) + 8 * v22) = v37;
          v47 = *(v46 + 2);
          v32 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v32)
          {
            goto LABEL_25;
          }

          *(v46 + 2) = v48;
        }

        v13 += v54;
        v18 = (v18 - 1);
        if (!v18)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v19;
      sub_1D1734504();
    }
  }

  sub_1D1721444(v25, a2 & 1);
  v26 = sub_1D1742188();
  if ((v3 & 1) == (v27 & 1))
  {
    v22 = v26;
    v28 = v19;
    v17 = v55;
    goto LABEL_8;
  }

LABEL_27:
  sub_1D1E690FC();
  __break(1u);
}

uint64_t sub_1D1C2D508(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D1EC6BB0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC6BD0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863537065656C73 && a2 == 0xED0000656C756465)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id StaticService.statusString(with:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v68 = sub_1D1E669FC();
  v9 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for StatusStrings.Options(0);
  v14 = MEMORY[0x1EEE9AC00](v67);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  sub_1D1C3BA30(a1, &v61 - v17, type metadata accessor for StatusStrings.Options);
  v19 = a1[4];
  v65 = v8;
  if (v19 == 1)
  {
    v20 = a1[5];
    LODWORD(v63) = a1[6];
    v21 = v16;
    v22 = v67;
    v23 = *(v11 + 60);
    v24 = *(v2 + *(v11 + 64));
    sub_1D1C3BED8(v18, type metadata accessor for StatusStrings.Options);
    sub_1D1741C08(v2 + v23, &v18[v22[11]], &qword_1EC642570, &qword_1D1E6C6A0);
    *v18 = 65793;
    v18[4] = 1;
    v18[5] = v20;
    v18[6] = v63;
    v18[v22[12]] = v24;
    v25 = v22[13];
    v16 = v21;
    v26 = &v18[v25];
    v26[4] = 0;
    *v26 = 2;
  }

  if (qword_1EC6423C8 != -1)
  {
    swift_once();
  }

  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EC64CB08);
  sub_1D1C3BA30(v2, v13, type metadata accessor for StaticService);
  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6835C();
  if (os_log_type_enabled(v28, v29))
  {
    v63 = v2;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v69[0] = v31;
    *v30 = 136316162;
    v32 = sub_1D1E66A1C();
    v34 = v33;
    sub_1D1C3BED8(v13, type metadata accessor for StaticService);
    v35 = sub_1D1B1312C(v32, v34, v69);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    if (qword_1EC642410 != -1)
    {
      swift_once();
    }

    v62 = qword_1EC6BE260;
    swift_beginAccess();
    sub_1D1C3BA30(v18, v16, type metadata accessor for StatusStrings.Options);
    v36 = v65;
    sub_1D1741A90(&v16[*(v67 + 44)], v65, &qword_1EC642570, &qword_1D1E6C6A0);
    v37 = v9;
    v38 = *(v9 + 48);
    if (v38(v36, 1, v68) == 1)
    {
      v39 = v31;
      v40 = v28;
      v41 = v29;
      v42 = v64;
      sub_1D1E668FC();
      v43 = v38(v36, 1, v68);
      v44 = v42;
      v29 = v41;
      v28 = v40;
      v31 = v39;
      if (v43 != 1)
      {
        sub_1D1741A30(v36, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v44 = v64;
      (*(v37 + 32))(v64, v36, v68);
    }

    v45 = sub_1D1E6694C();
    (*(v37 + 8))(v44, v68);
    v46 = [v62 stringFromDate_];

    v47 = sub_1D1E6781C();
    v49 = v48;

    v50 = sub_1D1B1312C(v47, v49, v69);

    *(v30 + 14) = v50;
    *(v30 + 22) = 2080;
    v51 = v18[*(v67 + 48)];
    v52 = 7827308;
    if (v51)
    {
      v52 = 0x6C616D726F6ELL;
    }

    v53 = 0xE300000000000000;
    if (v51)
    {
      v53 = 0xE600000000000000;
    }

    if (v51 == 2)
    {
      v54 = 0x6E776F6E6B6E75;
    }

    else
    {
      v54 = v52;
    }

    if (v51 == 2)
    {
      v55 = 0xE700000000000000;
    }

    else
    {
      v55 = v53;
    }

    v56 = sub_1D1B1312C(v54, v55, v69);

    *(v30 + 24) = v56;
    *(v30 + 32) = 1024;
    *(v30 + 34) = v18[5];
    *(v30 + 38) = 1024;
    *(v30 + 40) = v18[6];
    _os_log_impl(&dword_1D16EC000, v28, v29, "Generating status string for staticService: %s with lastSeenDate: %s and with lastSeenBatteryStatus: %s for isStatusTitle value: %{BOOL}d and for isDetailedStatusTitle value: %{BOOL}d", v30, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  else
  {

    sub_1D1C3BED8(v13, type metadata accessor for StaticService);
  }

  swift_beginAccess();
  v57 = type metadata accessor for StaticMatterDevice(0);
  v58 = v66;
  (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
  v59 = StaticService.statusString(with:associatedMatterDevice:)(v18);
  sub_1D1741A30(v58, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C3BED8(v18, type metadata accessor for StatusStrings.Options);
  return v59;
}

id StaticService.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v3 = type metadata accessor for StaticService(0);
  if (*(v1 + v3[8]) == 1)
  {
    *&v19[0] = *(v1 + v3[32]);
    LOBYTE(v16) = *(v1 + v3[26]);

    v4 = StaticCharacteristicsBag.isReachable(for:)(&v16);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + v3[35]);
  v6 = *(v1 + v3[9]);
  *&v19[0] = *(v1 + v3[32]);
  LOBYTE(v16) = *(v1 + v3[26]);

  v7 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
  StaticCharacteristicsBag.isUpdating(for:)(v7);
  v9 = v8;

  LOBYTE(v19[0]) = a1[4];
  v10 = v19[0];
  LOBYTE(v16) = a1[3];
  v11 = StaticService.characteristicStateString(context:temperatureScale:)(v19, &v16);
  LOBYTE(v19[0]) = v10;
  v12 = sub_1D1C38C04(v19);
  LOBYTE(v16) = v4;
  BYTE1(v16) = v5;
  BYTE2(v16) = v6;
  BYTE3(v16) = 2;
  BYTE4(v16) = v9 & 1;
  *(&v16 + 1) = v11.value._countAndFlagsBits;
  *&v17 = v11.value._object;
  *(&v17 + 1) = v12;
  v18 = v13;
  v14 = StatusStrings.string(for:)(a1);
  v19[0] = v16;
  v19[1] = v17;
  v20 = v18;
  sub_1D1A46590(v19);
  return v14;
}

uint64_t StaticService.simpleStatusString.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 104));
  if (v1 == 48)
  {

    return StaticService.ventilationFanSimple.getter();
  }

  else if (v1 == 16)
  {

    return StaticService.fanStringSimple.getter();
  }

  else
  {
    v4 = 1;
    v3 = 0;
    return StaticService.characteristicStateString(context:temperatureScale:)(&v4, &v3).value._countAndFlagsBits;
  }
}

uint64_t StaticService.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for StaticSoftwareUpdate(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticService(0);
  v10 = v9;
  if ((*(v0 + v9[8]) & 1) == 0)
  {
    v18[0] = *(v0 + v9[32]);
    v19 = *(v0 + v9[26]);

    v11 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    StaticCharacteristicsBag.isUpdating(for:)(v11);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D1741C08(v1 + v10[34], v4, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC644760, &unk_1D1E9E530);
  }

  else
  {
    sub_1D1C3B520(v4, v8, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1D2F0C0(v18);
    if (LOBYTE(v18[0]) != 8 && (LOBYTE(v18[0]) == 3 || LOBYTE(v18[0]) == 5))
    {
      sub_1D1C3BED8(v8, type metadata accessor for StaticSoftwareUpdate);
      return 0xD000000000000015;
    }

    sub_1D1C3BED8(v8, type metadata accessor for StaticSoftwareUpdate);
  }

  v15 = *(v1 + v10[10]);
  if (v15 != 2 && (v15 & 1) != 0)
  {
    v18[3] = &type metadata for HomeAppFeatures;
    v18[4] = sub_1D19C6154();
    LOBYTE(v18[0]) = 3;
    v16 = sub_1D1E66D5C();
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v16)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return 0x2E79726574746162;
    }
  }

  v18[0] = *(v1 + v10[32]);
  v19 = 88;
  v17 = sub_1D1CE4920(&v19);
  if (v17 == 2)
  {
    return 0;
  }

  if (v17)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0;
  }
}

Swift::String_optional __swiftcall StaticService.characteristicStateString(context:temperatureScale:)(HomeDataModel::StatusContext context, HomeDataModel::ClimateSummarizer::TemperatureScale temperatureScale)
{
  v3 = *context;
  v4 = *temperatureScale;
  v5 = type metadata accessor for StaticService(0);
  v6 = 0;
  v7 = 0;
  switch(*(v2 + v5[26]))
  {
    case 3:
      v72 = v5[32];
      if (v3 != 2)
      {
        *v340 = *(v2 + v72);
        LOBYTE(v339) = 3;
        v196 = sub_1D1CE4920(&v339);
        *v340 = *(v2 + v72);
        LOBYTE(v339) = 30;
        v371 = StaticCharacteristicsBag.int(for:)(&v339);
        is_nil = v371.is_nil;
        if (v371.is_nil)
        {
          value = 0;
        }

        else
        {
          value = v371.value;
        }

        *v340 = *(v2 + v72);
        LOBYTE(v339) = 115;
        sub_1D1CE53A4(&v339);
        if (v196 == 2)
        {
          if (is_nil || value)
          {
LABEL_186:
            v336[0] = 0;
            v230 = sub_1D1C309A8(v196, value, is_nil, v199, v200 & 1);
            v231 = 0;
            v336[1] = v230;
            v336[2] = v232;
            v233 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v234 = &v336[2 * v231];
              do
              {
                if (++v231 == 3)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
                  swift_arrayDestroy();
                  *v340 = v233;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
                  sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
                  v43 = sub_1D1E6770C();
                  goto LABEL_19;
                }

                v235 = v234 + 2;
                v236 = *v234;
                v234 += 2;
              }

              while (!v236);
              v237 = *(v235 - 3);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v233 = sub_1D177CF00(0, *(v233 + 2) + 1, 1, v233);
              }

              v239 = *(v233 + 2);
              v238 = *(v233 + 3);
              if (v239 >= v238 >> 1)
              {
                v233 = sub_1D177CF00((v238 > 1), v239 + 1, 1, v233);
              }

              *(v233 + 2) = v239 + 1;
              v240 = &v233[16 * v239];
              *(v240 + 4) = v237;
              *(v240 + 5) = v236;
            }
          }
        }

        else if ((v196 & 1) != 0 && (is_nil || value != 0))
        {
          goto LABEL_186;
        }

        v6 = sub_1D1C309A8(v196, value, is_nil, v199, v200 & 1);
        goto LABEL_349;
      }

      *v340 = *(v2 + v72);
      LOBYTE(v339) = 3;
      v73 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v72);
      LOBYTE(v339) = -109;
      v351 = StaticCharacteristicsBag.int(for:)(&v339);
      v74 = v351.value;
      v75 = v351.is_nil;
      *v340 = *(v2 + v72);
      LOBYTE(v339) = 30;
      v352 = StaticCharacteristicsBag.int(for:)(&v339);
      v76 = v352.is_nil;
      if (v352.is_nil)
      {
        v77 = 0;
      }

      else
      {
        v77 = v352.value;
      }

      *v340 = *(v2 + v72);
      LOBYTE(v339) = 115;
      sub_1D1CE53A4(&v339);
      v80 = v78;
      v81 = v79;
      if (v73 == 2)
      {
        if (v76 || v77)
        {
          goto LABEL_180;
        }
      }

      else if ((v73 & 1) != 0 && (v76 || v77 != 0))
      {
LABEL_180:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435C0, &qword_1D1EA1840);
        v227 = swift_allocObject();
        if (!v75)
        {
          if (!v74)
          {
            v228 = "ValueAirPurifierTargetStateAuto";
            v229 = 0xD000000000000031;
            goto LABEL_240;
          }

          if (v74 == 1)
          {
            v228 = "eCarbonDioxideDetected";
            v229 = 0xD00000000000002FLL;
LABEL_240:
            v241 = static String.hfLocalized(_:)(v229, v228 | 0x8000000000000000);
LABEL_241:
            v227[5] = v242;
            v227[4] = v241;
            v268 = sub_1D1C309A8(v73, v77, v76, v80, v81 & 1);
            v269 = 0;
            v227[6] = v268;
            v227[7] = v270;
            v271 = MEMORY[0x1E69E7CC0];
LABEL_242:
            v272 = &v227[2 * v269 + 5];
            while (++v269 != 3)
            {
              v273 = v272 + 2;
              v274 = *v272;
              v272 += 2;
              if (v274)
              {
                v275 = *(v273 - 3);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v271 = sub_1D177CF00(0, *(v271 + 2) + 1, 1, v271);
                }

                v277 = *(v271 + 2);
                v276 = *(v271 + 3);
                if (v277 >= v276 >> 1)
                {
                  v271 = sub_1D177CF00((v276 > 1), v277 + 1, 1, v271);
                }

                *(v271 + 2) = v277 + 1;
                v278 = &v271[16 * v277];
                *(v278 + 4) = v275;
                *(v278 + 5) = v274;
                goto LABEL_242;
              }
            }

            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            *v340 = v271;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
            sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
            v89 = sub_1D1E6770C();
            v91 = v279;
            goto LABEL_327;
          }
        }

        v241 = 0;
        v242 = 0;
        goto LABEL_241;
      }

      v6 = sub_1D1C309A8(v73, v77, v76, v78, v79 & 1);
LABEL_349:
      result.value._object = v7;
      result.value._countAndFlagsBits = v6;
      return result;
    case 4:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 8;
      v84 = StaticCharacteristicsBag.int(for:)(&v339);
      *&v84.is_nil = v84.is_nil;
      if (*&v84.is_nil)
      {
        v84.value = 0;
      }

      v6 = sub_1D1C3953C(v84.value, v84.is_nil);
      goto LABEL_349;
    case 9:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 18;
      v348 = StaticCharacteristicsBag.int(for:)(&v339);
      v58 = v348.value;
      v6 = 0;
      if (v348.is_nil)
      {
        goto LABEL_158;
      }

      v7 = 0;
      if (v58 != 1)
      {
        goto LABEL_349;
      }

      v9 = "eContactDetected";
      v10 = 0xD000000000000036;
      goto LABEL_280;
    case 0xB:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 28;
      v358 = StaticCharacteristicsBag.int(for:)(&v339);
      if (v358.is_nil)
      {
        goto LABEL_119;
      }

      if (v358.value == 1)
      {
        v9 = "tion.FaucetValve, State:Running";
        v10 = 0xD000000000000033;
      }

      else
      {
        if (v358.value)
        {
          goto LABEL_119;
        }

        v9 = "eContactNotDetected";
        v10 = 0xD000000000000030;
      }

      goto LABEL_280;
    case 0xE:
      v116 = v5[32];
      if (v3 != 2)
      {
        *v340 = *(v2 + v116);
        LOBYTE(v339) = 40;
        v373 = StaticCharacteristicsBag.int(for:)(&v339);
        v202 = v373.value;
        v203 = v373.is_nil;
        *v340 = *(v2 + v116);
        LOBYTE(v339) = -98;
        v374 = StaticCharacteristicsBag.int(for:)(&v339);
        v204 = v374.value;
        v205 = v374.is_nil;
        *v340 = *(v2 + v116);
        LOBYTE(v339) = 102;
        v375 = StaticCharacteristicsBag.int(for:)(&v339);
        v206 = v375.is_nil;
        if (v375.is_nil)
        {
          v207 = 0;
        }

        else
        {
          v207 = v375.value;
        }

        *v340 = *(v2 + v116);
        LOBYTE(v339) = 88;
        v189 = sub_1D1CE4920(&v339);
        v190 = v203;
        v191 = v205;
        v193 = v202;
        v194 = v204;
        v195 = v207;
        v192 = v206;
        goto LABEL_150;
      }

      *v340 = *(v2 + v116);
      LOBYTE(v339) = -98;
      v359 = StaticCharacteristicsBag.int(for:)(&v339);
      v50 = v359.value;
      v117 = v359.is_nil;
      *v340 = *(v2 + v116);
      LOBYTE(v339) = 102;
      v360 = StaticCharacteristicsBag.int(for:)(&v339);
      if (!v117)
      {
        goto LABEL_174;
      }

      if (v360.is_nil)
      {
        goto LABEL_119;
      }

      if (!v360.value)
      {
        goto LABEL_226;
      }

      if (v360.value == 1)
      {
        goto LABEL_225;
      }

      if (v360.value != 2)
      {
        goto LABEL_119;
      }

      goto LABEL_173;
    case 0x10:
      v59 = v5[32];
      *v340 = *(v2 + v59);
      v60 = 105;
      goto LABEL_125;
    case 0x11:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 3;
      v85 = sub_1D1CE4920(&v339);
      if (v85 == 2)
      {
        goto LABEL_119;
      }

      v86 = (v85 & 1) == 0;
      if (v85)
      {
        v87 = 0xD00000000000002FLL;
      }

      else
      {
        v87 = 0xD00000000000002BLL;
      }

      if (v86)
      {
        v88 = "TitleLeakDetectedSimple";
      }

      else
      {
        v88 = "tion.FaucetValve, State:Off";
      }

      v89 = static String.hfLocalized(_:)(v87, v88 | 0x8000000000000000);
      v91 = v90;
      goto LABEL_327;
    case 0x13:
      v92 = v5[32];
      *v340 = *(v2 + v92);
      LOBYTE(v339) = 31;
      v353 = StaticCharacteristicsBag.int(for:)(&v339);
      v93 = v353.is_nil;
      if (v353.is_nil)
      {
        v94 = 0;
      }

      else
      {
        v94 = v353.value;
      }

      *v340 = *(v2 + v92);
      LOBYTE(v339) = -107;
      v354 = StaticCharacteristicsBag.int(for:)(&v339);
      v95 = v354.is_nil;
      if (v354.is_nil)
      {
        v96 = 0;
      }

      else
      {
        v96 = v354.value;
      }

      *v340 = *(v2 + v92);
      LOBYTE(v339) = 88;
      v97 = sub_1D1CE4920(&v339);
      v6 = sub_1D1C398C4(v94, v93, v96, v95, v97);
      goto LABEL_349;
    case 0x14:
      v130 = v5[32];
      if (v3 == 2)
      {
        *v340 = *(v2 + v130);
        LOBYTE(v339) = 41;
        sub_1D1CE53A4(&v339);
        v333 = v131;
        v133 = v132;
        *v340 = *(v2 + v130);
        LOBYTE(v339) = 44;
        sub_1D1CE53A4(&v339);
        v135 = v134;
        v137 = v136;
        *v340 = *(v2 + v130);
        LOBYTE(v339) = 3;
        v138 = sub_1D1CE4920(&v339);
        *v340 = *(v2 + v130);
        LOBYTE(v339) = -105;
        v363 = StaticCharacteristicsBag.int(for:)(&v339);
        v330 = v363.value;
        v139 = v363.is_nil;
        *v340 = *(v2 + v130);
        LOBYTE(v339) = 33;
        v364 = StaticCharacteristicsBag.int(for:)(&v339);
        v328 = v364.value;
        v140 = v364.is_nil;
        *v340 = *(v2 + v130);
        LOBYTE(v339) = 55;
        sub_1D1CE53A4(&v339);
        v326 = v141;
        v143 = v142;
        *v340 = *(v2 + v130);
        LOBYTE(v339) = 29;
        sub_1D1CE53A4(&v339);
        if ((v137 & 1) == 0)
        {
          v225 = v135;
          v226 = v133 & 1;
          goto LABEL_199;
        }

        v146 = v144;
        v6 = 0;
        if (v138 != 2 && !v139)
        {
          v147 = v145;
          v7 = 0;
          if (v140)
          {
            goto LABEL_349;
          }

          if (v138)
          {
            if (v147)
            {
              v148 = 0;
              if (v143)
              {
                v149 = 0;
                v150 = 0xE000000000000000;
                v151 = 0xE000000000000000;
LABEL_293:
                if (v330 != 2)
                {
                  if (v330 != 1)
                  {
                    if (!v330 && (v143 & 1) == 0 && (v147 & 1) == 0)
                    {
                      v295 = v149;
                      static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
                      v296 = swift_allocObject();
                      *(v296 + 16) = xmmword_1D1E73A90;
                      v297 = MEMORY[0x1E69E6158];
                      *(v296 + 56) = MEMORY[0x1E69E6158];
                      v298 = sub_1D1757D20();
                      *(v296 + 32) = v295;
                      *(v296 + 40) = v151;
                      *(v296 + 96) = v297;
                      *(v296 + 104) = v298;
                      *(v296 + 64) = v298;
                      *(v296 + 72) = v148;
                      *(v296 + 80) = v150;
                      goto LABEL_299;
                    }

                    goto LABEL_305;
                  }

                  if (v328 >= 2)
                  {
                    if (v328 != 2)
                    {
                      if (v328 == 3)
                      {

                        if ((v147 & 1) == 0)
                        {
                          v300 = 0x80000001D1EC6D80;
                          v301 = 0xD00000000000003FLL;
LABEL_348:
                          static String.hfLocalized(_:)(v301, v300);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
                          v321 = swift_allocObject();
                          *(v321 + 16) = xmmword_1D1E739C0;
                          *(v321 + 56) = MEMORY[0x1E69E6158];
                          *(v321 + 64) = sub_1D1757D20();
                          *(v321 + 32) = v148;
                          *(v321 + 40) = v150;
                          v89 = sub_1D1E6783C();
                          v91 = v322;
                          goto LABEL_318;
                        }

                        goto LABEL_337;
                      }

LABEL_305:

                      goto LABEL_337;
                    }

                    v307 = v149;

                    if (v143)
                    {
                      goto LABEL_337;
                    }

                    goto LABEL_341;
                  }

                  v307 = v149;

                  if (v143)
                  {
                    goto LABEL_337;
                  }

LABEL_333:
                  v310 = 0xD000000000000043;
                  v311 = 0x80000001D1EC6E50;
LABEL_342:
                  static String.hfLocalized(_:)(v310, v311);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
                  v312 = swift_allocObject();
                  *(v312 + 16) = xmmword_1D1E739C0;
                  *(v312 + 56) = MEMORY[0x1E69E6158];
                  *(v312 + 64) = sub_1D1757D20();
                  *(v312 + 32) = v307;
                  *(v312 + 40) = v151;
                  v89 = sub_1D1E6783C();
                  v314 = v313;

                  v7 = v314;
                  goto LABEL_328;
                }

                if (v328 < 2)
                {
                  if ((v147 & 1) == 0)
                  {
                    v301 = 0xD000000000000043;
                    v300 = 0x80000001D1EC6E00;
                    goto LABEL_348;
                  }

LABEL_337:

                  goto LABEL_119;
                }

                if (v328 != 2)
                {
                  if (v328 != 3)
                  {
                    goto LABEL_337;
                  }

LABEL_310:

                  if ((v147 & 1) == 0)
                  {
                    v302 = v146;
                    v303 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
LABEL_346:
                    static String.hfLocalized(_:)(0xD00000000000003FLL, (v303 - 32) | 0x8000000000000000);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
                    v315 = swift_allocObject();
                    *(v315 + 16) = xmmword_1D1E739C0;
                    v340[0] = 0;
                    v316 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v302);
                    v318 = v317;
                    *(v315 + 56) = MEMORY[0x1E69E6158];
                    *(v315 + 64) = sub_1D1757D20();
                    *(v315 + 32) = v316;
                    *(v315 + 40) = v318;
                    v89 = sub_1D1E6783C();
                    v320 = v319;

                    v7 = v320;
                    goto LABEL_328;
                  }

LABEL_119:
                  v6 = 0;
                  v7 = 0;
                  goto LABEL_349;
                }

                if (v143)
                {
                  goto LABEL_119;
                }

                v302 = v326;
                goto LABEL_345;
              }

              v280 = v326;
              v150 = 0xE000000000000000;
            }

            else
            {
              v280 = v146;
              v340[0] = 0;
              v148 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v146);
              v150 = v281;
              if (v143)
              {
                v149 = 0;
                v151 = 0xE000000000000000;
                goto LABEL_293;
              }

              if (v146 >= v326)
              {
                v280 = v326;
              }
            }

            v340[0] = 0;
            v149 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v280);
            v151 = v294;
            goto LABEL_293;
          }

LABEL_279:
          v9 = "tingWithTemperature";
          v10 = 0xD00000000000002ALL;
LABEL_280:
          v6 = static String.hfLocalized(_:)(v10, v9 | 0x8000000000000000);
          goto LABEL_349;
        }

LABEL_158:
        v7 = 0;
        goto LABEL_349;
      }

      *v340 = *(v2 + v130);
      LOBYTE(v339) = 3;
      v208 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v130);
      LOBYTE(v339) = -105;
      v376 = StaticCharacteristicsBag.int(for:)(&v339);
      v209 = v376.value;
      v210 = v376.is_nil;
      *v340 = *(v2 + v130);
      LOBYTE(v339) = 33;
      v377 = StaticCharacteristicsBag.int(for:)(&v339);
      v332 = v377.value;
      v211 = v377.is_nil;
      *v340 = *(v2 + v130);
      LOBYTE(v339) = 55;
      sub_1D1CE53A4(&v339);
      v335 = v212;
      v214 = v213;
      *v340 = *(v2 + v130);
      LOBYTE(v339) = 29;
      sub_1D1CE53A4(&v339);
      v146 = v216;
      v6 = 0;
      if (v208 == 2 || v210)
      {
        goto LABEL_158;
      }

      v147 = v215;
      v7 = 0;
      if (v211)
      {
        goto LABEL_349;
      }

      if ((v208 & 1) == 0)
      {
        goto LABEL_279;
      }

      if (v147)
      {
        v217 = 0;
        if (v214)
        {
          v218 = 0;
          v178 = 0xE000000000000000;
          v151 = 0xE000000000000000;
LABEL_257:
          if (v209 == 2)
          {

            if (v332 >= 2)
            {
              if (v332 != 2)
              {
                if (v332 != 3)
                {
                  goto LABEL_337;
                }

                goto LABEL_310;
              }

              if (v214)
              {
                goto LABEL_119;
              }

              v302 = v335;
LABEL_345:
              v303 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
              goto LABEL_346;
            }

            if (v147)
            {
              goto LABEL_337;
            }

            v288 = 0xD000000000000043;
            v287 = 0x80000001D1EC6E00;
          }

          else
          {
            if (v209 != 1)
            {
              if (!v209 && (v214 & 1) == 0 && (v147 & 1) == 0)
              {
                v283 = v218;
                static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
                v284 = swift_allocObject();
                *(v284 + 16) = xmmword_1D1E73A90;
                v285 = MEMORY[0x1E69E6158];
                *(v284 + 56) = MEMORY[0x1E69E6158];
                v286 = sub_1D1757D20();
                *(v284 + 32) = v283;
                *(v284 + 40) = v151;
                *(v284 + 96) = v285;
                *(v284 + 104) = v286;
                *(v284 + 64) = v286;
                *(v284 + 72) = v217;
                *(v284 + 80) = v178;
LABEL_299:
                v89 = sub_1D1E6783C();
                v91 = v299;

                goto LABEL_327;
              }

              goto LABEL_305;
            }

            if (v332 < 2)
            {
              v307 = v218;

              if (v214)
              {
                goto LABEL_337;
              }

              goto LABEL_333;
            }

            if (v332 == 2)
            {
              v307 = v218;

              if (v214)
              {
                goto LABEL_337;
              }

LABEL_341:
              v311 = 0x80000001D1EC6DC0;
              v310 = 0xD00000000000003FLL;
              goto LABEL_342;
            }

            if (v332 != 3)
            {
              goto LABEL_305;
            }

            if (v147)
            {
              goto LABEL_337;
            }

            v287 = 0x80000001D1EC6D80;
            v288 = 0xD00000000000003FLL;
          }

          static String.hfLocalized(_:)(v288, v287);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v305 = swift_allocObject();
          *(v305 + 16) = xmmword_1D1E739C0;
          *(v305 + 56) = MEMORY[0x1E69E6158];
          *(v305 + 64) = sub_1D1757D20();
          *(v305 + 32) = v217;
LABEL_317:
          *(v305 + 40) = v178;
          v89 = sub_1D1E6783C();
          v91 = v306;
LABEL_318:

LABEL_327:

          v7 = v91;
LABEL_328:
          v6 = v89;
          goto LABEL_349;
        }

        v263 = v335;
        v178 = 0xE000000000000000;
      }

      else
      {
        v263 = v146;
        v340[0] = v4;
        v217 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v146);
        v178 = v264;
        if (v214)
        {
          v218 = 0;
          v151 = 0xE000000000000000;
          goto LABEL_257;
        }

        if (v146 >= v335)
        {
          v263 = v335;
        }
      }

      v340[0] = 0;
      v218 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v263);
      v151 = v282;
      goto LABEL_257;
    case 0x15:
      v118 = v5[32];
      *v340 = *(v2 + v118);
      LOBYTE(v339) = 3;
      v119 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v118);
      LOBYTE(v339) = 36;
      v361 = StaticCharacteristicsBag.int(for:)(&v339);
      v120 = v361.is_nil;
      if (v361.is_nil)
      {
        v121 = 0;
      }

      else
      {
        v121 = v361.value;
      }

      *v340 = *(v2 + v118);
      LOBYTE(v339) = -102;
      v362 = StaticCharacteristicsBag.int(for:)(&v339);
      v122 = v362.is_nil;
      if (v362.is_nil)
      {
        v123 = 0;
      }

      else
      {
        v123 = v362.value;
      }

      *v340 = *(v2 + v118);
      LOBYTE(v339) = 58;
      sub_1D1CE53A4(&v339);
      v125 = v124;
      v127 = v126;
      *v340 = *(v2 + v118);
      LOBYTE(v339) = 48;
      sub_1D1CE53A4(&v339);
      v6 = sub_1D1C39B94(v119, v121, v120, v123, v122, v125, v127 & 1, v129, v128 & 1);
      goto LABEL_349;
    case 0x16:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 41;
      sub_1D1CE53A4(&v339);
      v6 = sub_1D1C39F74(v48, v47 & 1);
      goto LABEL_349;
    case 0x18:
      v61 = v5[32];
      *v340 = *(v2 + v61);
      LOBYTE(v339) = 65;
      v62 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v61);
      LOBYTE(v339) = 3;
      v63 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v61);
      LOBYTE(v339) = 106;
      v349 = StaticCharacteristicsBag.int(for:)(&v339);
      if (v349.is_nil)
      {
        v64 = 0;
      }

      else
      {
        v64 = v349.value;
      }

      v6 = sub_1D1C3A024(v62, v63, v64, v349.is_nil);
      goto LABEL_349;
    case 0x1A:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 74;
      v346 = StaticCharacteristicsBag.int(for:)(&v339);
      v55 = v346.value;
      v6 = 0;
      if (v346.is_nil)
      {
        goto LABEL_158;
      }

      v7 = 0;
      if (v55 != 1)
      {
        goto LABEL_349;
      }

      v56 = "HFCharacteristicTitleLeakDetectedSimple";
      goto LABEL_31;
    case 0x1B:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 37;
      sub_1D1CE53A4(&v339);
      v6 = sub_1D1C3A170(v12, v11 & 1);
      goto LABEL_349;
    case 0x1C:
      v98 = v5[32];
      if (v3 != 2)
      {
        *v340 = *(v2 + v98);
        LOBYTE(v339) = 105;
        v201 = sub_1D1CE4920(&v339);
        *v340 = *(v2 + v98);
        LOBYTE(v339) = 12;
        v372 = StaticCharacteristicsBag.int(for:)(&v339);
        v6 = sub_1D1C3A0BC(v201, v372.value, v372.is_nil);
        goto LABEL_349;
      }

      *v340 = *(v2 + v98);
      LOBYTE(v339) = 105;
      v99 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v98);
      LOBYTE(v339) = 12;
      v355 = StaticCharacteristicsBag.int(for:)(&v339);
      v100 = v355.value;
      v101 = v355.is_nil;
      v102 = v5[33];
      *v340 = *(v2 + v102);
      StaticProfileBag.isNaturalLightSupported.getter();
      v104 = v103;
      v339 = *(v2 + v102);
      StaticProfileBag.isNaturalLightEnabled.getter();
      if (v99 == 2)
      {
        goto LABEL_119;
      }

      v106 = 0xD000000000000022;
      if (v99)
      {
        v106 = 0xD000000000000021;
        v107 = "startUpCurrentLevel";
      }

      else
      {
        v107 = "oachAngleSupported";
      }

      if ((v99 & 1) == 0 || v101)
      {
        goto LABEL_288;
      }

      if (v100 >= 1 && ((v104 ^ 1) & 1) == 0 && ((v105 ^ 1) & 1) == 0)
      {
        v337 = sub_1D19CB618(1, 0.0, 100.0, v100);
        v338 = v108;

        MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);

        v109 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC6F40);
        v111 = v110;

        MEMORY[0x1D3890F70](v109, v111);

        v6 = v337;
        v7 = v338;
        goto LABEL_349;
      }

      if (v100 >= 1)
      {
        v6 = sub_1D19CB618(1, 0.0, 100.0, v100);
        goto LABEL_349;
      }

      v106 = 0xD000000000000021;
      v107 = "startUpCurrentLevel";
LABEL_288:
      v89 = static String.hfLocalized(_:)(v106, v107 | 0x8000000000000000);
      v91 = v293;
      goto LABEL_327;
    case 0x1E:
      v112 = v5[32];
      *v340 = *(v2 + v112);
      LOBYTE(v339) = 38;
      v356 = StaticCharacteristicsBag.int(for:)(&v339);
      v113 = v356.is_nil;
      if (v356.is_nil)
      {
        v114 = 0;
      }

      else
      {
        v114 = v356.value;
      }

      *v340 = *(v2 + v112);
      LOBYTE(v339) = -100;
      v357 = StaticCharacteristicsBag.int(for:)(&v339);
      if (v357.is_nil)
      {
        v115 = 0;
      }

      else
      {
        v115 = v357.value;
      }

      v6 = sub_1D1C3A290(v114, v113, v115, v357.is_nil);
      goto LABEL_349;
    case 0x20:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 83;
      v153 = sub_1D1CE4920(&v339);
      if (v153 == 2)
      {
        goto LABEL_119;
      }

      if (v153)
      {
        v219 = "ionOccupancyAlarm_Triggered";
        v220 = 0xD000000000000028;
      }

      else
      {
        v219 = "HFStatusTitleOccupancyAlarm";
        v220 = 0xD000000000000025;
      }

      v6 = static String.hfLocalized(_:)(v220, v219 | 0x8000000000000000);
      goto LABEL_349;
    case 0x21:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 89;
      v365 = StaticCharacteristicsBag.int(for:)(&v339);
      v152 = v365.value;
      v6 = 0;
      if (v365.is_nil)
      {
        goto LABEL_158;
      }

      v7 = 0;
      if (v152 != 1)
      {
        goto LABEL_349;
      }

      v9 = "RoomsDescriptionMultiple";
      v10 = 0xD00000000000002BLL;
      goto LABEL_280;
    case 0x22:
    case 0x29:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 105;
      v8 = sub_1D1CE4920(&v339);
      if (v8 == 2)
      {
        goto LABEL_119;
      }

      v9 = "oachAngleSupported";
      if (v8)
      {
        v9 = "startUpCurrentLevel";
        v10 = 0xD000000000000021;
      }

      else
      {
        v10 = 0xD000000000000022;
      }

      goto LABEL_280;
    case 0x23:
      v154 = v5[32];
      if (v3 == 2)
      {
        *v340 = *(v2 + v154);
        LOBYTE(v339) = -96;
        v155 = StaticCharacteristicsBag.int(for:)(&v339);
        *&v155.is_nil = v155.is_nil;
        if (*&v155.is_nil)
        {
          v155.value = 0;
        }

        v6 = sub_1D1C3A37C(v155.value, v155.is_nil);
      }

      else
      {
        *v340 = *(v2 + v154);
        LOBYTE(v339) = 42;
        v378 = StaticCharacteristicsBag.int(for:)(&v339);
        v221 = v378.is_nil;
        if (v378.is_nil)
        {
          v222 = 0;
        }

        else
        {
          v222 = v378.value;
        }

        *v340 = *(v2 + v154);
        LOBYTE(v339) = -96;
        v379 = StaticCharacteristicsBag.int(for:)(&v339);
        if (v379.is_nil)
        {
          v223 = 0;
        }

        else
        {
          v223 = v379.value;
        }

        v6 = sub_1D1C3A42C(v222, v221, v223, v379.is_nil);
      }

      goto LABEL_349;
    case 0x24:
      v9 = "toWithTemperature";
      v10 = 0xD000000000000029;
      goto LABEL_280;
    case 0x25:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 127;
      v347 = StaticCharacteristicsBag.int(for:)(&v339);
      v57 = v347.value;
      v6 = 0;
      if (v347.is_nil)
      {
        goto LABEL_158;
      }

      v7 = 0;
      if (v57 != 1)
      {
        goto LABEL_349;
      }

      v56 = "HFStatusDescriptionSmokeAlarm_Triggered";
LABEL_31:
      v9 = (v56 - 32);
      v10 = 0xD000000000000027;
      goto LABEL_280;
    case 0x2C:
      v38 = v5[32];
      *v340 = *(v2 + v38);
      LOBYTE(v339) = 3;
      v39 = v2;
      v40 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v38);
      LOBYTE(v339) = 4;

      v343 = StaticCharacteristicsBag.int(for:)(&v339);
      v41 = v343.value;
      LOBYTE(v38) = v343.is_nil;

      v42 = sub_1D1C3A56C(*(v39 + v5[31]));
      v43 = sub_1D1C3A89C(v40, v41, v38 & 1, v42);
LABEL_19:
      v45 = v43;
      v46 = v44;

      v7 = v46;
      v6 = v45;
      goto LABEL_349;
    case 0x2D:
      *v340 = *(v2 + v5[32]);
      LOBYTE(v339) = 44;
      sub_1D1CE53A4(&v339);
      if (v83)
      {
        goto LABEL_119;
      }

      v340[0] = v4;
      v6 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v82);
      goto LABEL_349;
    case 0x2E:
      v13 = v5[32];
      if (v3 == 2)
      {
        *v340 = *(v2 + v13);
        LOBYTE(v339) = 41;
        sub_1D1CE53A4(&v339);
        v333 = v14;
        v16 = v15;
        *v340 = *(v2 + v13);
        LOBYTE(v339) = 44;
        sub_1D1CE53A4(&v339);
        v18 = v17;
        v20 = v19;
        *v340 = *(v2 + v13);
        LOBYTE(v339) = -104;
        v341 = StaticCharacteristicsBag.int(for:)(&v339);
        v329 = v341.value;
        v21 = v341.is_nil;
        *v340 = *(v2 + v13);
        LOBYTE(v339) = 34;
        v342 = StaticCharacteristicsBag.int(for:)(&v339);
        v327 = v342.value;
        v22 = v342.is_nil;
        *v340 = *(v2 + v13);
        LOBYTE(v339) = -94;
        sub_1D1CE53A4(&v339);
        v24 = v23;
        v26 = v25;
        *v340 = *(v2 + v13);
        LOBYTE(v339) = 55;
        sub_1D1CE53A4(&v339);
        v324 = v27;
        v325 = v28;
        *v340 = *(v2 + v13);
        LOBYTE(v339) = 29;
        sub_1D1CE53A4(&v339);
        if ((v20 & 1) == 0)
        {
          v225 = v18;
          v226 = v16 & 1;
LABEL_199:
          v6 = sub_1D1C3999C(v333, v226, v225);
          goto LABEL_349;
        }

        v31 = v29;
        v6 = 0;
        if (v21 || v22)
        {
          goto LABEL_158;
        }

        v32 = v30;
        v7 = 0;
        if (v26)
        {
          goto LABEL_349;
        }

        v340[0] = 0;
        v33 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v24);
        v35 = v34;
        if (v329 <= 1)
        {
          if (v329)
          {
            if (v329 == 1)
            {
              v36 = v327;
              if (!v327)
              {
                v37 = "HFServiceControlDescriptionHeaterCoolerTargetHeatingWithTemperature";
LABEL_324:
                v304 = (v37 - 32);
                v292 = 0xD000000000000043;
                goto LABEL_325;
              }

              goto LABEL_282;
            }

            goto LABEL_273;
          }

          v36 = v327;
          if (v327)
          {
            goto LABEL_282;
          }

LABEL_278:

          goto LABEL_279;
        }

        if (v329 == 2)
        {
          v36 = v327;
          if (!v327)
          {
            v37 = "HFServiceControlDescriptionHeaterCoolerTargetCoolingWithTemperature";
            goto LABEL_324;
          }

LABEL_282:
          if (v36 != 1)
          {
            if (v36 != 2)
            {
              goto LABEL_337;
            }

            goto LABEL_284;
          }

          goto LABEL_285;
        }

        if (v329 != 3)
        {
LABEL_273:
          if (v327 == 2)
          {
LABEL_284:
            v290 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
LABEL_286:
            v291 = (v290 - 32) | 0x8000000000000000;
            v292 = 0xD00000000000003FLL;
LABEL_326:
            static String.hfLocalized(_:)(v292, v291);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
            v308 = swift_allocObject();
            *(v308 + 16) = xmmword_1D1E739C0;
            *(v308 + 56) = MEMORY[0x1E69E6158];
            *(v308 + 64) = sub_1D1757D20();
            *(v308 + 32) = v33;
            *(v308 + 40) = v35;
            v89 = sub_1D1E6783C();
            v91 = v309;

            goto LABEL_327;
          }

          if (v327 != 1)
          {
            goto LABEL_337;
          }

LABEL_285:
          v290 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
          goto LABEL_286;
        }

        if (v325 & 1) != 0 || (v32)
        {
          v304 = "DescriptionHeaterCoolerOff";
          v292 = 0xD000000000000031;
LABEL_325:
          v291 = v304 | 0x8000000000000000;
          goto LABEL_326;
        }

        v256 = v324;
        if (v31 < v324)
        {
          v256 = v31;
        }

        v340[0] = 0;
        v250 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v256);
        v252 = v257;
        v340[0] = 0;
        v253 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v31);
        v255 = v258;
LABEL_220:
        static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v259 = swift_allocObject();
        *(v259 + 16) = xmmword_1D1E73A90;
        v260 = MEMORY[0x1E69E6158];
        *(v259 + 56) = MEMORY[0x1E69E6158];
        v261 = sub_1D1757D20();
        *(v259 + 32) = v250;
        *(v259 + 40) = v252;
        *(v259 + 96) = v260;
        *(v259 + 104) = v261;
        *(v259 + 64) = v261;
        *(v259 + 72) = v253;
        *(v259 + 80) = v255;
        v89 = sub_1D1E6783C();
        v91 = v262;

        goto LABEL_327;
      }

      *v340 = *(v2 + v13);
      LOBYTE(v339) = -104;
      v366 = StaticCharacteristicsBag.int(for:)(&v339);
      v162 = v366.value;
      v163 = v366.is_nil;
      *v340 = *(v2 + v13);
      LOBYTE(v339) = 34;
      v367 = StaticCharacteristicsBag.int(for:)(&v339);
      v334 = v367.value;
      v164 = v367.is_nil;
      *v340 = *(v2 + v13);
      LOBYTE(v339) = -94;
      sub_1D1CE53A4(&v339);
      v166 = v165;
      v168 = v167;
      *v340 = *(v2 + v13);
      LOBYTE(v339) = 55;
      sub_1D1CE53A4(&v339);
      v331 = v169;
      v171 = v170;
      *v340 = *(v2 + v13);
      LOBYTE(v339) = 29;
      sub_1D1CE53A4(&v339);
      v174 = v173;
      v6 = 0;
      if (v163 || v164)
      {
        goto LABEL_158;
      }

      v175 = v172;
      v7 = 0;
      if (v168)
      {
        goto LABEL_349;
      }

      v340[0] = v4;
      v176 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v166);
      v178 = v177;
      if (v162 > 1)
      {
        if (v162 == 2)
        {
          v179 = v334;
          if (!v334)
          {
            v180 = "HFServiceControlDescriptionHeaterCoolerTargetCoolingWithTemperature";
            goto LABEL_314;
          }

LABEL_234:
          if (v179 != 1)
          {
            if (v179 != 2)
            {
              goto LABEL_337;
            }

            goto LABEL_236;
          }

          goto LABEL_237;
        }

        if (v162 == 3)
        {
          if ((v171 & 1) == 0 && (v175 & 1) == 0)
          {

            v248 = v331;
            v249 = v174;
            if (v174 < v331)
            {
              v248 = v174;
            }

            v340[0] = v4;
            v250 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v248);
            v252 = v251;
            v340[0] = v4;
            v253 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v340, v249);
            v255 = v254;
            goto LABEL_220;
          }

          v289 = "DescriptionHeaterCoolerOff";
          v267 = 0xD000000000000031;
          goto LABEL_315;
        }
      }

      else
      {
        if (!v162)
        {
          v179 = v334;
          if (!v334)
          {
            goto LABEL_278;
          }

          goto LABEL_234;
        }

        if (v162 == 1)
        {
          v179 = v334;
          if (!v334)
          {
            v180 = "HFServiceControlDescriptionHeaterCoolerTargetHeatingWithTemperature";
LABEL_314:
            v289 = (v180 - 32);
            v267 = 0xD000000000000043;
LABEL_315:
            v266 = v289 | 0x8000000000000000;
            goto LABEL_316;
          }

          goto LABEL_234;
        }
      }

      if (v334 == 2)
      {
LABEL_236:
        v265 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
LABEL_238:
        v266 = (v265 - 32) | 0x8000000000000000;
        v267 = 0xD00000000000003FLL;
LABEL_316:
        static String.hfLocalized(_:)(v267, v266);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_1D1E739C0;
        *(v305 + 56) = MEMORY[0x1E69E6158];
        *(v305 + 64) = sub_1D1757D20();
        *(v305 + 32) = v176;
        goto LABEL_317;
      }

      if (v334 != 1)
      {
        goto LABEL_337;
      }

LABEL_237:
      v265 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
      goto LABEL_238;
    case 0x2F:
      v159 = v5[32];
      *v340 = *(v2 + v159);
      LOBYTE(v339) = 3;
      v160 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v159);
      LOBYTE(v339) = 65;
      v161 = sub_1D1CE4920(&v339);
      v6 = _s13HomeDataModel13StaticServiceV11valveString6active5inUseSSSgSbSg_AHtFZ_0(v160, v161);
      goto LABEL_349;
    case 0x30:
      v59 = v5[32];
      *v340 = *(v2 + v59);
      v60 = 3;
LABEL_125:
      LOBYTE(v339) = v60;
      v156 = sub_1D1CE4920(&v339);
      *v340 = *(v2 + v59);
      LOBYTE(v339) = 115;
      sub_1D1CE53A4(&v339);
      v6 = sub_1D1C397FC(v156, v158, v157 & 1);
      goto LABEL_349;
    case 0x33:
      v49 = v5[32];
      if (v3 != 2)
      {
        *v340 = *(v2 + v49);
        LOBYTE(v339) = 40;
        v368 = StaticCharacteristicsBag.int(for:)(&v339);
        v181 = v368.value;
        v182 = v368.is_nil;
        v65 = v2;
        v183 = *(v2 + v49);
        goto LABEL_137;
      }

      *v340 = *(v2 + v49);
      LOBYTE(v339) = -98;
      v344 = StaticCharacteristicsBag.int(for:)(&v339);
      v50 = v344.value;
      v51 = v344.is_nil;
      *v340 = *(v2 + v49);
      LOBYTE(v339) = 102;
      v345 = StaticCharacteristicsBag.int(for:)(&v339);
      v52 = v345.value;
      v53 = v345.is_nil;
      *v340 = *(v2 + v49);
      LOBYTE(v339) = 88;
      v54 = sub_1D1CE4920(&v339);
      if (v54 != 2 && (v54 & 1) != 0)
      {
        v9 = "HMServiceTypeDoor";
        v10 = 0xD000000000000031;
        goto LABEL_280;
      }

      if (v51)
      {
        if (v53)
        {
          goto LABEL_119;
        }

        if (v52)
        {
          if (v52 == 1)
          {
LABEL_225:
            v224 = "HFCharacteristicValueDoorStateOpening";
          }

          else
          {
            if (v52 != 2)
            {
              goto LABEL_119;
            }

LABEL_173:
            v224 = "HFCharacteristicValueDoorStateStopped";
          }
        }

        else
        {
LABEL_226:
          v224 = "HFCharacteristicValueDoorStateClosing";
        }

        v9 = (v224 - 32);
        v10 = 0xD000000000000025;
        goto LABEL_280;
      }

LABEL_174:
      if (!v50)
      {
        v9 = "ValueDoorStateOpening";
        v10 = 0xD000000000000024;
        goto LABEL_280;
      }

      if (v50 == 100)
      {
        v9 = "ValueDoorStateClosed";
        v10 = 0xD000000000000022;
        goto LABEL_280;
      }

      v243 = sub_1D19CB618(1, 0.0, 100.0, v50);
      v245 = v244;
      static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v246 = swift_allocObject();
      *(v246 + 16) = xmmword_1D1E739C0;
      *(v246 + 56) = MEMORY[0x1E69E6158];
      *(v246 + 64) = sub_1D1757D20();
      *(v246 + 32) = v243;
      *(v246 + 40) = v245;
      v89 = sub_1D1E6784C();
      v91 = v247;
      goto LABEL_327;
    case 0x34:
      v49 = v5[32];
      v65 = v2;
      if (v3 == 2)
      {
        *v340 = *(v2 + v49);
        LOBYTE(v339) = -98;
        v350 = StaticCharacteristicsBag.int(for:)(&v339);
        v66 = v350.value;
        v67 = v350.is_nil;
        v68 = StaticService.positionState.getter();
        v70 = v69;
        *v340 = *(v2 + v49);
        LOBYTE(v339) = 88;
        v71 = sub_1D1CE4920(&v339);
        v6 = sub_1D1C3AA1C(1, v66, v67, v68, v70 & 1, v71);
      }

      else
      {
        *v340 = *(v2 + v49);
        LOBYTE(v339) = 40;
        v369 = StaticCharacteristicsBag.int(for:)(&v339);
        v181 = v369.value;
        v182 = v369.is_nil;
        v183 = *(v2 + v49);
LABEL_137:
        *v340 = v183;
        LOBYTE(v339) = -98;
        v370 = StaticCharacteristicsBag.int(for:)(&v339);
        v184 = v370.value;
        v185 = v370.is_nil;
        v186 = StaticService.positionState.getter();
        v188 = v187;
        *v340 = *(v65 + v49);
        LOBYTE(v339) = 88;
        v189 = sub_1D1CE4920(&v339);
        v190 = v182;
        v191 = v185;
        v192 = v188 & 1;
        v193 = v181;
        v194 = v184;
        v195 = v186;
LABEL_150:
        v6 = sub_1D1C39610(v193, v190, v194, v191, v195, v192, v189);
      }

      goto LABEL_349;
    default:
      goto LABEL_349;
  }
}

uint64_t static StaticService.activeString(active:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  if (v2)
  {
    v4 = "oachAngleSupported";
  }

  else
  {
    v4 = "startUpCurrentLevel";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t static StaticService.airPurifierStateString(active:targetAirPurifierState:currentAirPurifierState:rotationSpeed:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1 != 2)
  {
    if ((a1 & 1) != 0 && a5 & 1 | (a4 != 0))
    {
      goto LABEL_7;
    }

    return sub_1D1C309A8(a1, a4, a5 & 1, a6, a7 & 1);
  }

  if ((a5 & 1) == 0 && !a4)
  {
    return sub_1D1C309A8(a1, a4, a5 & 1, a6, a7 & 1);
  }

LABEL_7:
  if (a3)
  {
    goto LABEL_12;
  }

  v9 = 0xD00000000000002FLL;
  if (!a2)
  {
    v10 = a5;
    v11 = a1;
    v12 = a7;
    v13 = "ValueAirPurifierTargetStateAuto";
    v9 = 0xD000000000000031;
    goto LABEL_14;
  }

  if (a2 != 1)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_15;
  }

  v10 = a5;
  v11 = a1;
  v12 = a7;
  v13 = "eCarbonDioxideDetected";
LABEL_14:
  static String.hfLocalized(_:)(v9, v13 | 0x8000000000000000);
  a7 = v12;
  LOBYTE(a1) = v11;
  a5 = v10;
LABEL_15:
  v27[0] = v15;
  v16 = 0;
  v27[1] = sub_1D1C309A8(a1, a4, a5 & 1, a6, a7 & 1);
  v27[2] = v17;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v19 = &v27[2 * v16];
  while (++v16 != 3)
  {
    v20 = v19 + 2;
    v21 = *v19;
    v19 += 2;
    if (v21)
    {
      v22 = *(v20 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177CF00(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_1D177CF00((v23 > 1), v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v22;
      *(v25 + 5) = v21;
      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
  v26 = sub_1D1E6770C();

  return v26;
}

uint64_t sub_1D1C309A8(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      if (!a2)
      {
        v6 = "HDMStatusTitlePm2_5Micrometers";
        v7 = 0xD000000000000034;
        goto LABEL_18;
      }

      if (a2 == 1 || a2 == 2)
      {
        v8 = 0x80000001D1EC74C0;
        v7 = 0xD000000000000029;
        return static String.hfLocalized(_:)(v7, v8);
      }
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = "tionAirPurifierTurningOff";
    v7 = 0xD000000000000028;
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v6 = "tionAirPurifierTurningOn";
    v7 = 0xD000000000000030;
    goto LABEL_18;
  }

  if (a2 != 2)
  {
    return 0;
  }

  if (a5)
  {
    v6 = "urifierStateIdle";
    v7 = 0xD000000000000032;
LABEL_18:
    v8 = v6 | 0x8000000000000000;
    return static String.hfLocalized(_:)(v7, v8);
  }

  if (*&a4 <= 0.0)
  {
    v6 = "startUpCurrentLevel";
    v7 = 0xD000000000000021;
    goto LABEL_18;
  }

  return sub_1D19CB618(1, 0.0, 100.0, *&a4);
}

uint64_t static StaticService.airQualitySensorString(airQualityValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    return sub_1D1C3953C(*&v2, v1 == 0);
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 > 4)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(*&v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return sub_1D1C3953C(*&v2, v1 == 0);
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (*&v2 <= *&v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return sub_1D1C3953C(*&v2, v1 == 0);
}

uint64_t static StaticService.carbonDioxideSensorString(context:carbonDioxideDetectedValues:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (v4 == 1)
    {
      return static String.hfLocalized(_:)(0xD000000000000036, 0x80000001D1EC7070);
    }
  }

  return 0;
}

uint64_t static StaticService.carbonDioxideSensorString(context:carbonDioxideDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000036, 0x80000001D1EC7070);
  }

  return result;
}

uint64_t static StaticService.carbonMonoxideString(context:carbonMonoxideDetectedValues:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (v4 == 1)
    {
      return static String.hfLocalized(_:)(0xD000000000000037, 0x80000001D1EC7120);
    }
  }

  return 0;
}

uint64_t static StaticService.carbonMonoxideString(context:carbonMonoxideDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000037, 0x80000001D1EC7120);
  }

  return result;
}

uint64_t static StaticService.contactSensorString(context:contactStateValues:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (!v4)
    {
      return static String.hfLocalized(_:)(0xD000000000000030, 0x80000001D1EC7030);
    }
  }

  return 0;
}

uint64_t static StaticService.contactSensorString(context:contactState:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v3 = 0xD000000000000030;
  if (!a2)
  {
    v4 = "eContactNotDetected";
    return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
  }

  if (a2 != 1)
  {
    return 0;
  }

  v4 = "tion.FaucetValve, State:Running";
  v3 = 0xD000000000000033;
  return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
}

uint64_t static StaticService.doorStateString(doorStateValues:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 57;
  while (2)
  {
    v9 = (v8 + 32 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v1)
      {
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_49;
      }

      v11 = *(v9 - 25);
      result = *(v9 - 9);
      v12 = *v9;
      v19 = v12 == 2;
      v13 = v12 | v2;
      if (!v19)
      {
        v2 = v13;
      }

      v14 = v11 ? 1 : *(v9 - 17);
      if ((v14 & 1) == 0)
      {
        break;
      }

      if ((*(v9 - 1) & 1) == 0)
      {
        v3 |= result == 0;
        v15 = v11 == 1 ? *(v9 - 17) : 1;
        if (v15)
        {
          goto LABEL_22;
        }

        v6 |= result == 1;
        if (*(v9 - 17))
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      ++v10;
      v9 += 32;
      if (v7 == v1)
      {
        goto LABEL_23;
      }
    }

    if (*(v9 - 1))
    {
      goto LABEL_5;
    }

    v5 |= result == 0;
LABEL_22:
    v4 |= result == 1;
    if (v7 != v1)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v16 = v2 | v3 | v4;
  if ((v16 & 1) == 0 && (v5 & 1) == 0 && (v6 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    v17 = "HFCharacteristicValueDoorStateOpening";
  }

  else
  {
    v17 = "HFCharacteristicValueDoorStateClosing";
  }

  v18 = (v17 - 32);
  v19 = (v2 & 1) == 0;
  if (v2)
  {
    v20 = 0xD000000000000031;
  }

  else
  {
    v20 = 0xD000000000000025;
  }

  if (!v19)
  {
    v18 = "HMServiceTypeDoor";
  }

  v21 = (v5 & 1) == 0;
  if (v5)
  {
    v22 = 0xD000000000000022;
  }

  else
  {
    v22 = 0xD000000000000024;
  }

  if (v21)
  {
    v23 = "ValueDoorStateOpening";
  }

  else
  {
    v23 = "ValueDoorStateClosed";
  }

  if (v16)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  if (v16)
  {
    v25 = v18;
  }

  else
  {
    v25 = v23;
  }

  return static String.hfLocalized(_:)(v24, v25 | 0x8000000000000000);
}

uint64_t static StaticService.currentTemperatureString(currentTemperature:temperatureScale:)(uint64_t a1, char a2, unsigned __int8 *a3)
{
  if (a2)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6 = *a3;
  return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v6, *&a1);
}

uint64_t static StaticService.faucetString(active:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000002FLL;
  }

  else
  {
    v3 = 0xD00000000000002BLL;
  }

  if (v2)
  {
    v4 = "TitleLeakDetectedSimple";
  }

  else
  {
    v4 = "tion.FaucetValve, State:Off";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t static StaticService.heaterCoolerString(active:targetHeaterCoolerState:currentHeaterCoolerState:heatingThreshold:coolingThreshold:stripTemperatureSymbol:temperatureScale:)(char a1, uint64_t a2, char a3, unint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, unsigned __int8 *a11)
{
  result = 0;
  if (a1 != 2 && (a3 & 1) == 0 && (a5 & 1) == 0)
  {
    if ((a1 & 1) == 0)
    {
      return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
    }

    v13 = a4;
    if (a9)
    {
      v14 = 0;
      if (a7)
      {
        v15 = 0;
        v16 = 0xE000000000000000;
        v17 = 0xE000000000000000;
        goto LABEL_21;
      }

      v22 = a6;
      v16 = 0xE000000000000000;
    }

    else
    {
      v18 = a2;
      v19 = a6;
      v20 = a7;
      v21 = a8;
      v22 = a8;
      if (a10)
      {
        v23 = static ClimateSummarizer.strippedTemperatureString(_:)(*&a8);
      }

      else
      {
        v55 = *a11;
        v23 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v55, *&a8);
      }

      v14 = v23;
      v16 = v24;
      a7 = v20;
      a6 = v19;
      a2 = v18;
      if (v20)
      {
        a4 = v13;
        v15 = 0;
        v17 = 0xE000000000000000;
        a8 = v21;
        goto LABEL_21;
      }

      a8 = v21;
      if (*&v22 >= *&v19)
      {
        v22 = v19;
      }
    }

    v25 = a2;
    v26 = a6;
    v27 = a8;
    v28 = a7;
    if (a10)
    {
      v15 = static ClimateSummarizer.strippedTemperatureString(_:)(*&v22);
    }

    else
    {
      v56 = 0;
      v15 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v56, *&v22);
    }

    v17 = v29;
    a7 = v28;
    a8 = v27;
    a4 = v13;
    a6 = v26;
    a2 = v25;
LABEL_21:
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        if (!a2 && (a7 & 1) == 0 && (a9 & 1) == 0)
        {
          v30 = v15;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D1E73A90;
          v32 = MEMORY[0x1E69E6158];
          *(v31 + 56) = MEMORY[0x1E69E6158];
          v33 = sub_1D1757D20();
          *(v31 + 32) = v30;
          *(v31 + 40) = v17;
          *(v31 + 96) = v32;
          *(v31 + 104) = v33;
          *(v31 + 64) = v33;
          *(v31 + 72) = v14;
          *(v31 + 80) = v16;
          v34 = sub_1D1E6783C();

LABEL_53:

          return v34;
        }

        goto LABEL_32;
      }

      if (a4 < 2)
      {
        v43 = v15;
        v44 = a7;

        if (v44)
        {
          goto LABEL_33;
        }

        v45 = 0xD000000000000043;
        v46 = 0x80000001D1EC6E50;
      }

      else
      {
        if (a4 != 2)
        {
          if (a4 != 3)
          {
LABEL_32:

LABEL_33:

            return 0;
          }

          if (a9)
          {
            goto LABEL_33;
          }

          v35 = 0x80000001D1EC6D80;
          v36 = 0xD00000000000003FLL;
LABEL_52:
          static String.hfLocalized(_:)(v36, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1D1E739C0;
          *(v54 + 56) = MEMORY[0x1E69E6158];
          *(v54 + 64) = sub_1D1757D20();
          *(v54 + 32) = v14;
          *(v54 + 40) = v16;
          v34 = sub_1D1E6783C();

          goto LABEL_53;
        }

        v43 = v15;
        v47 = a7;

        if (v47)
        {
          goto LABEL_33;
        }

        v46 = 0x80000001D1EC6DC0;
        v45 = 0xD00000000000003FLL;
      }

      static String.hfLocalized(_:)(v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D1E739C0;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = sub_1D1757D20();
      *(v48 + 32) = v43;
      *(v48 + 40) = v17;
      v49 = sub_1D1E6783C();

      return v49;
    }

    v37 = a6;
    v38 = a8;
    v39 = a7;

    if (v13 >= 2)
    {
      if (v13 == 2)
      {

        if (v39)
        {
          return 0;
        }

        v40 = *&v37;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6DC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D1E739C0;
        v57 = 0;
        v42 = &v57;
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_33;
        }

        if (a9)
        {
          return 0;
        }

        v40 = *&v38;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6D80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D1E739C0;
        v58 = 0;
        v42 = &v58;
      }

      v50 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v42, v40);
      v52 = v51;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1D1757D20();
      *(v41 + 32) = v50;
      *(v41 + 40) = v52;
      v53 = sub_1D1E6783C();

      return v53;
    }

    if (a9)
    {
      goto LABEL_33;
    }

    v36 = 0xD000000000000043;
    v35 = 0x80000001D1EC6E00;
    goto LABEL_52;
  }

  return result;
}

uint64_t static StaticService.targetHeaterCoolerString(currentRelativeHumidity:currentTemperature:active:targetHeaterCoolerState:currentHeaterCoolerState:heatingThreshold:coolingThreshold:stripTemperatureSymbol:)(uint64_t a1, char a2, unint64_t a3, char a4, char a5, uint64_t a6, char a7, unint64_t a8, __n128 a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, double a20, char a21, char a22)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D1C3999C(a1, a2 & 1, *&a3);
  }

  result = 0;
  if (a5 != 2 && (a7 & 1) == 0 && (a17 & 1) == 0)
  {
    if ((a5 & 1) == 0)
    {
      return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
    }

    if (a21)
    {
      v23 = 0;
      if (a19)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
        v26 = 0xE000000000000000;
        goto LABEL_25;
      }

      v29 = a18;
      v25 = 0xE000000000000000;
    }

    else
    {
      v27 = a6;
      v28 = a8;
      v29 = a20;
      if (a22)
      {
        v30 = static ClimateSummarizer.strippedTemperatureString(_:)(a20);
      }

      else
      {
        v56 = 0;
        v30 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v56, a20);
      }

      v23 = v30;
      v25 = v31;
      a8 = v28;
      a6 = v27;
      if (a19)
      {
        v24 = 0;
        v26 = 0xE000000000000000;
        goto LABEL_25;
      }

      if (a20 >= a18)
      {
        v29 = a18;
      }
    }

    v32 = a6;
    v33 = a8;
    if (a22)
    {
      v24 = static ClimateSummarizer.strippedTemperatureString(_:)(v29);
    }

    else
    {
      v57 = 0;
      v24 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v57, v29);
    }

    v26 = v34;
    a8 = v33;
    a6 = v32;
LABEL_25:
    if (a6 != 2)
    {
      if (a6 != 1)
      {
        if (!a6 && (a19 & 1) == 0 && (a21 & 1) == 0)
        {
          v35 = v24;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1D1E73A90;
          v37 = MEMORY[0x1E69E6158];
          *(v36 + 56) = MEMORY[0x1E69E6158];
          v38 = sub_1D1757D20();
          *(v36 + 32) = v35;
          *(v36 + 40) = v26;
          *(v36 + 96) = v37;
          *(v36 + 104) = v38;
          *(v36 + 64) = v38;
          *(v36 + 72) = v23;
          *(v36 + 80) = v25;
          v39 = sub_1D1E6783C();

LABEL_56:

          return v39;
        }

        goto LABEL_36;
      }

      if (a8 < 2)
      {
        v46 = v24;

        if (a19)
        {
          goto LABEL_37;
        }

        v47 = 0xD000000000000043;
        v48 = 0x80000001D1EC6E50;
      }

      else
      {
        if (a8 != 2)
        {
          if (a8 != 3)
          {
LABEL_36:

LABEL_37:

            return 0;
          }

          if (a21)
          {
            goto LABEL_37;
          }

          v40 = 0x80000001D1EC6D80;
          v41 = 0xD00000000000003FLL;
LABEL_55:
          static String.hfLocalized(_:)(v41, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1D1E739C0;
          *(v55 + 56) = MEMORY[0x1E69E6158];
          *(v55 + 64) = sub_1D1757D20();
          *(v55 + 32) = v23;
          *(v55 + 40) = v25;
          v39 = sub_1D1E6783C();

          goto LABEL_56;
        }

        v46 = v24;

        if (a19)
        {
          goto LABEL_37;
        }

        v48 = 0x80000001D1EC6DC0;
        v47 = 0xD00000000000003FLL;
      }

      static String.hfLocalized(_:)(v47, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1D1E739C0;
      *(v49 + 56) = MEMORY[0x1E69E6158];
      *(v49 + 64) = sub_1D1757D20();
      *(v49 + 32) = v46;
      *(v49 + 40) = v26;
      v50 = sub_1D1E6783C();

      return v50;
    }

    v42 = a8;

    if (v42 >= 2)
    {
      if (v42 == 2)
      {

        if (a19)
        {
          return 0;
        }

        v43 = a18;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6DC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D1E739C0;
        v58 = 0;
        v45 = &v58;
      }

      else
      {
        if (v42 != 3)
        {
          goto LABEL_37;
        }

        if (a21)
        {
          return 0;
        }

        v43 = a20;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6D80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D1E739C0;
        v59 = 0;
        v45 = &v59;
      }

      v51 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v45, v43);
      v53 = v52;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1D1757D20();
      *(v44 + 32) = v51;
      *(v44 + 40) = v53;
      v54 = sub_1D1E6783C();

      return v54;
    }

    if (a21)
    {
      goto LABEL_37;
    }

    v41 = 0xD000000000000043;
    v40 = 0x80000001D1EC6E00;
    goto LABEL_55;
  }

  return result;
}

uint64_t static StaticService.humidifierDehumidifierTargetValue(active:targetHumidifierDehumidifierState:humidifierThreshold:dehumidifierThreshold:strippedPercentageSymbol:)@<X0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, double a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>)
{
  v52 = a5;
  LODWORD(v53) = a8;
  v51 = a7;
  v49 = a4;
  v50 = a6;
  LODWORD(v55) = a3;
  v54 = a2;
  v11 = a1;
  v12 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E6658C();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v47 = (v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v44[2] = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D1E6634C();
  v44[0] = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D1E677BC();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = sub_1D1E6659C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44[1] = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D1E6636C();
  v56 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v29 = (v44 - v28);
  v30 = sub_1D1E6639C();
  MEMORY[0x1EEE9AC00](v30 - 8);
  if (v11 != 2)
  {
    if ((a1 & 1) == 0)
    {
      static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EC1E60);
      sub_1D1E6638C();
      sub_1D1E6637C();
      return (*(v56 + 56))(a9, 0, 1, v24);
    }

    v35 = a9;
    if (v55)
    {
      goto LABEL_9;
    }

    v36 = v53 ^ 1;
    if (v54 == 2)
    {
      if (v51)
      {
        goto LABEL_21;
      }

      v43 = *&v50;
    }

    else
    {
      if (v54 != 1)
      {
        if (v54)
        {
LABEL_9:
          static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EC1F50);
          sub_1D1E6638C();
          sub_1D1E6637C();
          return (*(v56 + 56))(v35, 0, 1, v24);
        }

        if ((v52 & 1) == 0 && (v51 & 1) == 0)
        {
          v37 = *&v50;
          sub_1D1C32300(v36 & 1, v29, 0.0, 100.0, v49);
          sub_1D1C32300(v36 & 1, v27, 0.0, 100.0, v37);
          sub_1D1E677AC();
          sub_1D1E6779C();
          v57 = MEMORY[0x1E69E7CC0];
          v54 = sub_1D1C3B158();
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB28, &unk_1D1EA1848);
          sub_1D17D8EA8(&qword_1EC64CB30, &qword_1EC64CB28, &unk_1D1EA1848, MEMORY[0x1E69E6328]);
          sub_1D1E6868C();
          sub_1D1E6777C();
          v55 = a9;
          v38 = *(v44[0] + 8);
          v38(v20, v18);
          sub_1D1E6779C();
          v57 = MEMORY[0x1E69E7CC0];
          sub_1D1E6868C();
          sub_1D1E6777C();
          v38(v20, v18);
          sub_1D1E6779C();
          sub_1D1E677CC();
          v39 = _s25_doNotTouchThisDummyClassCMa();
          v40 = v46;
          v41 = v47;
          *v47 = v39;
          (*(v45 + 104))(v41, *MEMORY[0x1E6968E00], v40);
          sub_1D1E66ACC();
          sub_1D1E665AC();
          v35 = v55;
          sub_1D1E6635C();
          v42 = *(v56 + 8);
          v42(v27, v24);
          v42(v29, v24);
          return (*(v56 + 56))(v35, 0, 1, v24);
        }

LABEL_21:
        v31 = *(v56 + 56);
        v32 = a9;
        goto LABEL_3;
      }

      if (v52)
      {
        goto LABEL_21;
      }

      v43 = v49;
    }

    sub_1D1C32300(v36 & 1, a9, 0.0, 100.0, v43);
    v31 = *(v56 + 56);
    v32 = a9;
    v33 = 0;
    goto LABEL_4;
  }

  v31 = *(v56 + 56);
  v32 = a9;
LABEL_3:
  v33 = 1;
LABEL_4:

  return v31(v32, v33, 1, v24);
}

uint64_t sub_1D1C32300@<X0>(int a1@<W0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v49 = a1;
  v54 = a2;
  v8 = sub_1D1E68FFC();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v48 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB38, &qword_1D1EA1858);
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v44 - v19;
  v50 = sub_1D1E6673C();
  v20 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v44 - v29;
  if (a3 > a5)
  {
    v31 = a3;
  }

  else
  {
    v31 = a5;
  }

  if (v31 > a4)
  {
    v31 = a4;
  }

  v32 = (v31 - a3) / (a4 - a3);
  if (v49)
  {
    v55 = v32;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6665C();
    sub_1D1E6672C();
    MEMORY[0x1D388FCA0](v22, v24);
    (*(v20 + 8))(v22, v50);
    v33 = *(v25 + 8);
    v33(v28, v24);
    v34 = v51;
    sub_1D1E6664C();
    v33(v30, v24);
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858, MEMORY[0x1E6968E38]);
    v35 = v53;
    sub_1D1E675AC();
    return (*(v52 + 8))(v34, v35);
  }

  else
  {
    v55 = v32 * 100.0;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6662C();
    v38 = v46;
    v37 = v47;
    v39 = v44;
    (*(v46 + 104))(v44, *MEMORY[0x1E69E7030], v47);
    MEMORY[0x1D388FCB0](v39, 0, 1, v10);
    (*(v38 + 8))(v39, v37);
    v40 = *(v48 + 8);
    v40(v13, v10);
    sub_1D1E6672C();
    v41 = v45;
    MEMORY[0x1D388FCE0](v22, v10);
    (*(v20 + 8))(v22, v50);
    v40(v16, v10);
    v42 = v51;
    sub_1D1E665CC();
    v40(v41, v10);
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858, MEMORY[0x1E6968E38]);
    v43 = v53;
    sub_1D1E675AC();
    return (*(v52 + 8))(v42, v43);
  }
}

uint64_t static StaticService.humidifierDehumidifierTargetValueString(active:targetHumidifierDehumidifierState:humidifierThreshold:dehumidifierThreshold:strippedPercentageSymbol:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    v10 = 0xD000000000000022;
    v9 = 0x80000001D1EC1E60;
    return static String.hfLocalized(_:)(v10, v9);
  }

  if (a3)
  {
LABEL_5:
    v9 = 0x80000001D1EC1F50;
    v10 = 0xD000000000000021;
    return static String.hfLocalized(_:)(v10, v9);
  }

  if (a2 == 2)
  {
    if ((a7 & 1) == 0)
    {
      v23 = a6;
      return sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, *&v23);
    }

    return 0;
  }

  if (a2 == 1)
  {
    if ((a5 & 1) == 0)
    {
      v23 = a4;
      return sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, *&v23);
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  result = 0;
  if ((a5 & 1) == 0 && (a7 & 1) == 0)
  {
    static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC7160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E73A90;
    v15 = sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, *&a4);
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1D1757D20();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, *&a6);
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v22 = sub_1D1E6783C();

    return v22;
  }

  return result;
}

uint64_t static StaticService.localizedHumiditySensorValue(currentRelativeHumidity:includesPercentSymbol:)@<X0>(double a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v48 = a3;
  v55 = a2;
  v49 = a1;
  v56 = a4;
  v4 = sub_1D1E68FFC();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v47 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB38, &qword_1D1EA1858);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v44 - v16;
  v17 = sub_1D1E6673C();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v44 - v26;
  if (v55)
  {
    v28 = sub_1D1E6636C();
    v29 = *(*(v28 - 8) + 56);
    v30 = v28;
    v31 = v56;

    return v29(v31, 1, 1, v30);
  }

  else
  {
    if (v48)
    {
      v57 = v49 / 100.0;
      sub_1D1E66ABC();
      sub_1D173FC5C();
      sub_1D1E6665C();
      sub_1D1E6672C();
      MEMORY[0x1D388FCA0](v19, v21);
      (*(v50 + 8))(v19, v51);
      v33 = *(v22 + 8);
      v33(v25, v21);
      v34 = v52;
      sub_1D1E6664C();
      v33(v27, v21);
      sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858, MEMORY[0x1E6968E38]);
      v35 = v56;
      v36 = v54;
      sub_1D1E675AC();
      (*(v53 + 8))(v34, v36);
    }

    else
    {
      v57 = v49;
      sub_1D1E66ABC();
      sub_1D173FC5C();
      sub_1D1E6662C();
      v38 = v45;
      v37 = v46;
      (*(v45 + 104))(v6, *MEMORY[0x1E69E7030], v46);
      MEMORY[0x1D388FCB0](v6, 0, 1, v7);
      (*(v38 + 8))(v6, v37);
      v39 = *(v47 + 8);
      v39(v10, v7);
      sub_1D1E6672C();
      v40 = v44;
      MEMORY[0x1D388FCE0](v19, v7);
      (*(v50 + 8))(v19, v51);
      v39(v13, v7);
      v41 = v52;
      sub_1D1E665CC();
      v39(v40, v7);
      sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858, MEMORY[0x1E6968E38]);
      v35 = v56;
      v42 = v54;
      sub_1D1E675AC();
      (*(v53 + 8))(v41, v42);
    }

    v43 = sub_1D1E6636C();
    return (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
  }
}

uint64_t static StaticService.leakSensorString(context:leakDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC6F60);
  }

  return result;
}

uint64_t static StaticService.lightBulbAndNaturalLightingDescriptionString(powerState:brightness:isNaturalLightSupported:isNaturalLightEnabled:)(char a1, uint64_t a2, char a3, char a4, char a5)
{
  if (a1 == 2)
  {
    return 0;
  }

  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = 0xD000000000000022;
  }

  if (v6)
  {
    v9 = "oachAngleSupported";
  }

  else
  {
    v9 = "startUpCurrentLevel";
  }

  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    if (a2 >= 1 && (a4 & 1) != 0 && (a5 & 1) != 0)
    {
      v14 = sub_1D19CB618(1, 0.0, 100.0, a2);

      MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);

      v10 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC6F40);
      v12 = v11;

      MEMORY[0x1D3890F70](v10, v12);

      return v14;
    }

    if (a2 >= 1)
    {
      return sub_1D19CB618(1, 0.0, 100.0, a2);
    }

    v8 = 0xD000000000000021;
    v9 = "startUpCurrentLevel";
  }

  v13 = static String.hfLocalized(_:)(v8, v9 | 0x8000000000000000);

  return v13;
}

uint64_t static StaticService.lockPhysicalControlString(lockPhysicalControlValues:)(uint64_t a1)
{
  v2 = 0xD00000000000002FLL;
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = "lControlsUnlocked";
  while (v3)
  {
    v6 = *v4++;
    --v3;
    if (!v6)
    {
      v2 = 0xD000000000000031;
      v5 = "ormatted humidities";
      return static String.hfLocalized(_:)(v2, v5 | 0x8000000000000000);
    }
  }

  return static String.hfLocalized(_:)(v2, v5 | 0x8000000000000000);
}

unint64_t static StaticService.lockStateString(lockStateValues:)(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = a1 + 56;
LABEL_2:
  v10 = (v9 + 32 * v2);
  for (result = v2; v8 != result; ++result)
  {
    if (result >= v8)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

    v2 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_58;
    }

    if (*(v10 - 16) != 1)
    {
      v13 = *(v10 - 3);
      v14 = *(v10 - 1);
      if (!v13 && (*v10 & 1) == 0 && v14 == 1)
      {
        v7 = 1;
        goto LABEL_2;
      }

      if ((v13 != 1) | *v10 & 1)
      {
        if (v13)
        {
          if (v13 == 2)
          {
            v3 = 1;
            goto LABEL_2;
          }

          if (v13 == 3)
          {
            v1 = 1;
            goto LABEL_2;
          }
        }

        else
        {
          if (v14)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            v12 = *v10;
          }

          if ((v12 & 1) == 0)
          {
            v4 = 1;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (!v14)
        {
          v6 = 1;
          goto LABEL_2;
        }

        if (v14 == 1)
        {
          v5 = 1;
          goto LABEL_2;
        }
      }
    }

    v10 += 32;
  }

  v15 = v3 | v1 | v6;
  v16 = v15 | v7 | v4;
  if (((v16 | v5) & 1) == 0)
  {
    return 0;
  }

  v17 = "ge.exclamationmark.fill";
  v18 = (v1 & 1) == 0;
  if (v1)
  {
    v19 = 0xD00000000000002ELL;
  }

  else
  {
    v19 = 0xD000000000000030;
  }

  if (v18)
  {
    v17 = "ValueLockMechanismStateLocking";
  }

  v20 = (v3 & 1) == 0;
  if (v3)
  {
    v21 = 0xD00000000000002DLL;
  }

  else
  {
    v21 = v19;
  }

  if (v20)
  {
    v22 = v17;
  }

  else
  {
    v22 = "ValueLockMechanismStateUnknown";
  }

  v23 = (v7 & 1) == 0;
  if (v7)
  {
    v24 = 0xD00000000000002ELL;
  }

  else
  {
    v24 = 0xD000000000000030;
  }

  if (v23)
  {
    v25 = "ValueLockMechanismStateSecured";
  }

  else
  {
    v25 = "ValueLockPhysicalControlsLocked";
  }

  if (v15)
  {
    v24 = v21;
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v16)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0xD00000000000002ELL;
  }

  if (v16)
  {
    v28 = v26;
  }

  else
  {
    v28 = "ValueLockMechanismStateJammed";
  }

  return static String.hfLocalized(_:)(v27, v28 | 0x8000000000000000);
}

uint64_t static StaticService.motionSensorString(context:motionDetected:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    return 0;
  }

  v3 = "HFStatusTitleOccupancyAlarm";
  if (a2)
  {
    v3 = "ionOccupancyAlarm_Triggered";
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000025;
  }

  return static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
}

uint64_t static StaticService.motorizedDoorOrWindowTargetString(doorOrWindowValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -v1;
  v10 = a1 + 56;
  v11 = 1;
LABEL_3:
  v12 = (v10 + 32 * v8++);
  do
  {
    if (*(v12 - 16))
    {
      if ((*v12 & 1) == 0)
      {
        v13 = *(v12 - 1);
        if (v13)
        {
          if (v13 == 2)
          {
            v7 = 1;
          }

          else if (v13 == 1)
          {
            v2 = 1;
            if (v9 + v8)
            {
              goto LABEL_3;
            }

LABEL_28:
            v16 = "HFCharacteristicValueDoorStateOpening";
LABEL_32:
            v18 = (v16 - 32) | 0x8000000000000000;
            v19 = 0xD000000000000025;
            return static String.hfLocalized(_:)(v19, v18);
          }
        }

        else
        {
          v3 = 1;
        }
      }
    }

    else
    {
      v14 = *(v12 - 3);
      if (v14 == 100)
      {
        v15 = 1;
      }

      else
      {
        v15 = v5;
      }

      if (v14)
      {
        v5 = v15;
      }

      else
      {
        v6 = 1;
      }

      if (v11)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        v11 = 1;
      }

      else
      {
        if (v4 < v14)
        {
LABEL_5:
          v11 = 0;
          v4 = *(v12 - 3);
          goto LABEL_6;
        }

        v11 = 0;
      }
    }

LABEL_6:
    ++v8;
    v12 += 32;
  }

  while (v9 + v8 != 1);
  if (v2)
  {
    goto LABEL_28;
  }

  if (v3)
  {
    v16 = "HFCharacteristicValueDoorStateClosing";
    goto LABEL_32;
  }

  if (v5)
  {
    v20 = "ValueDoorStateClosed";
    v19 = 0xD000000000000022;
LABEL_38:
    v18 = v20 | 0x8000000000000000;
    return static String.hfLocalized(_:)(v19, v18);
  }

  if (v6)
  {
    v20 = "ValueDoorStateOpening";
    v19 = 0xD000000000000024;
    goto LABEL_38;
  }

  if (v11)
  {
    if (v7)
    {
      v16 = "HFCharacteristicValueDoorStateStopped";
      goto LABEL_32;
    }

    return 0;
  }

  else
  {
    v21 = v4;
    static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D1E739C0;
    v23 = sub_1D19CB618(1, 0.0, 100.0, v21);
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D1757D20();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = sub_1D1E6784C();

    return v26;
  }
}

uint64_t static StaticService.occupancySensorString(context:occupancyDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC5BE0);
  }

  return result;
}

uint64_t static StaticService.smokeSensorString(context:smokeDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC5D30);
  }

  return result;
}

uint64_t static StaticService.statusFaultString(statusFault:)(uint64_t a1, char a2)
{
  result = 0;
  if ((a2 & 1) == 0 && a1 == 1)
  {
    return static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC72B0);
  }

  return result;
}

uint64_t static StaticService.securitySystemString(securitySystemValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 56);
  do
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 16);
    v12 = *(v9 - 1);
    if (v11)
    {
      goto LABEL_12;
    }

    if (v10 == 4)
    {
      v8 = 1;
      goto LABEL_4;
    }

    if (v10)
    {
LABEL_12:
      if (*v9)
      {
        goto LABEL_4;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          goto LABEL_15;
        }

        v2 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      if (*v9)
      {
        goto LABEL_4;
      }

      if (v12 <= 1)
      {
        if (!v12)
        {
          v4 = 1;
          goto LABEL_4;
        }

LABEL_15:
        if (v12 != 1)
        {
          goto LABEL_4;
        }

        v13 = (v10 == 1) & ~v11;
        v5 |= v13;
LABEL_21:
        v2 |= v13 ^ 1;
        goto LABEL_4;
      }
    }

    if (v12 == 2)
    {
      v13 = (v10 == 2) & ~v11;
      v6 |= v13;
      goto LABEL_21;
    }

    if (v12 == 3)
    {
      v14 = (v10 == 3) & ~v11;
      v7 |= v14;
      v3 |= v14 ^ 1;
    }

LABEL_4:
    v9 += 32;
    --v1;
  }

  while (v1);
  v15 = v8 | v2 | v3;
  v16 = v15 | v4 | v5;
  if (((v16 | v6 | v7) & 1) == 0)
  {
    return 0;
  }

  v17 = (v2 & 1) == 0;
  if (v2)
  {
    v18 = 0xD000000000000035;
  }

  else
  {
    v18 = 0xD000000000000038;
  }

  if (v17)
  {
    v19 = "StateGroupedTitleStatusFault";
  }

  else
  {
    v19 = "ritySystemStateDisarming";
  }

  if (v8)
  {
    v18 = 0xD000000000000038;
    v20 = "smStateUnsecured";
  }

  else
  {
    v20 = v19;
  }

  if (v4)
  {
    v21 = "HFCharacteristicValueCurrentSecuritySystemStateStayArm";
  }

  else
  {
    v21 = "HFCharacteristicValueCurrentSecuritySystemStateAwayArm";
  }

  v22 = (v21 - 32);
  if (v15)
  {
    v22 = v20;
  }

  else
  {
    v18 = 0xD000000000000036;
  }

  if (v6)
  {
    v23 = "HFCharacteristicValueCurrentSecuritySystemStateNightArm";
  }

  else
  {
    v23 = "HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
  }

  v24 = (v23 - 32);
  if (v16)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0xD000000000000037;
  }

  if (v16)
  {
    v24 = v22;
  }

  return static String.hfLocalized(_:)(v25, v24 | 0x8000000000000000);
}

uint64_t static StaticService.swingModeString(swingModeValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  while (v1)
  {
    v3 = *v2++;
    --v1;
    if (v3 == 1)
    {
      return static String.hfLocalized(_:)(0xD000000000000013, 0x80000001D1EC7360);
    }
  }

  return static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EC7380);
}

uint64_t static StaticService.switchString(powerState:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v2 = "oachAngleSupported";
  if (a1)
  {
    v2 = "startUpCurrentLevel";
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  return static String.hfLocalized(_:)(v3, v2 | 0x8000000000000000);
}

uint64_t static StaticService.televisionInputSourceString(activeIdentifier:inputSources:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || !a3)
  {
    return 0;
  }

  v4 = *(a3 + 16);
  v3 = a3 + 16;
  v5 = v4 + 1;
  while (--v5)
  {
    v6 = (v3 + 40);
    v7 = *(v3 + 16);
    v3 += 40;
    if (v7 == a1)
    {
      if (*(v6 - 1))
      {
        v8 = *(v6 - 2);
      }

      else
      {
        v8 = *v6;
      }

      return v8;
    }
  }

  return v5;
}

uint64_t static StaticService.thermostatString(targetHeatingCoolingMode:currentHeatingCooling:targetTemperature:heatingThreshold:coolingThreshold:stripTemperatureSymbol:temperatureScale:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, char a19, unsigned __int8 *a20)
{
  result = 0;
  if ((a2 & 1) == 0 && (a4 & 1) == 0 && (a6 & 1) == 0)
  {
    v25 = *a20;
    if (a19)
    {
      v26 = static ClimateSummarizer.strippedTemperatureString(_:)(*&a5);
    }

    else
    {
      v51 = *a20;
      v26 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v51, *&a5);
    }

    v28 = v26;
    v29 = v27;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a3 != 2)
        {
          if (a3 != 1)
          {
            if (!a3)
            {
              v30 = "HFServiceControlDescriptionHeaterCoolerTargetCoolingWithTemperature";
              goto LABEL_34;
            }

LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if (a1 == 3)
      {
        if ((a8 & 1) == 0 && (a18 & 1) == 0)
        {

          v31 = *&a7;
          if (a17 < *&a7)
          {
            v31 = a17;
          }

          if (a19)
          {
            v32 = static ClimateSummarizer.strippedTemperatureString(_:)(v31);
            v34 = v33;
            v35 = static ClimateSummarizer.strippedTemperatureString(_:)(a17);
          }

          else
          {
            v50 = v25;
            v32 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v50, v31);
            v34 = v43;
            v49 = v25;
            v35 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v49, a17);
          }

          v44 = v35;
          v45 = v36;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1D1E73A90;
          v47 = MEMORY[0x1E69E6158];
          *(v46 + 56) = MEMORY[0x1E69E6158];
          v48 = sub_1D1757D20();
          *(v46 + 32) = v32;
          *(v46 + 40) = v34;
          *(v46 + 96) = v47;
          *(v46 + 104) = v48;
          *(v46 + 64) = v48;
          *(v46 + 72) = v44;
          *(v46 + 80) = v45;
          v42 = sub_1D1E6783C();

          goto LABEL_42;
        }

        v37 = "DescriptionHeaterCoolerOff";
        v38 = 0xD000000000000031;
        goto LABEL_40;
      }
    }

    else
    {
      if (!a1)
      {
        if (a3 == 2)
        {
          goto LABEL_36;
        }

        if (a3 != 1)
        {
          if (!a3)
          {

            return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      if (a1 == 1)
      {
        if (a3 != 2)
        {
          if (a3 != 1)
          {
            if (!a3)
            {
              v30 = "HFServiceControlDescriptionHeaterCoolerTargetHeatingWithTemperature";
LABEL_34:
              v37 = (v30 - 32);
              v38 = 0xD000000000000043;
LABEL_40:
              v40 = v37 | 0x8000000000000000;
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          goto LABEL_35;
        }

LABEL_36:
        v39 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
        goto LABEL_37;
      }
    }

    if (a3 == 2)
    {
      goto LABEL_36;
    }

    if (a3 != 1)
    {
      goto LABEL_38;
    }

LABEL_35:
    v39 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
LABEL_37:
    v40 = (v39 - 32) | 0x8000000000000000;
    v38 = 0xD00000000000003FLL;
LABEL_41:
    static String.hfLocalized(_:)(v38, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D1E739C0;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1D1757D20();
    *(v41 + 32) = v28;
    *(v41 + 40) = v29;
    v42 = sub_1D1E6783C();

LABEL_42:

    return v42;
  }

  return result;
}

uint64_t static StaticService.targetThermostatString(currentRelativeHumidity:currentTemperature:targetHeatingCoolingMode:currentHeatingCooling:targetTemperature:heatingThreshold:coolingThreshold:)(uint64_t a1, char a2, unint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, __n128 a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, double a21, char a22)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D1C3999C(a1, a2 & 1, *&a3);
  }

  result = 0;
  if ((a6 & 1) == 0 && (a8 & 1) == 0 && (a18 & 1) == 0)
  {
    v50 = 0;
    v25 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v50, a17);
    v26 = a5;
    v27 = v25;
    v29 = v28;
    if (v26 > 1)
    {
      v30 = a7;
      if (v26 == 2)
      {
        if (!a7)
        {
          v31 = "HFServiceControlDescriptionHeaterCoolerTargetCoolingWithTemperature";
          goto LABEL_33;
        }

LABEL_25:
        if (v30 != 1)
        {
          if (v30 == 2)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }

      if (v26 == 3)
      {
        if ((a20 & 1) == 0 && (a22 & 1) == 0)
        {

          v32 = a19;
          if (a21 < a19)
          {
            v32 = a21;
          }

          v49 = 0;
          v33 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v49, v32);
          v35 = v34;
          v48 = 0;
          v36 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v48, a21);
          v38 = v37;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1D1E73A90;
          v40 = MEMORY[0x1E69E6158];
          *(v39 + 56) = MEMORY[0x1E69E6158];
          v41 = sub_1D1757D20();
          *(v39 + 32) = v33;
          *(v39 + 40) = v35;
          *(v39 + 96) = v40;
          *(v39 + 104) = v41;
          *(v39 + 64) = v41;
          *(v39 + 72) = v36;
          *(v39 + 80) = v38;
          v42 = sub_1D1E6783C();

          goto LABEL_36;
        }

        v46 = "DescriptionHeaterCoolerOff";
        v45 = 0xD000000000000031;
        goto LABEL_34;
      }
    }

    else
    {
      v30 = a7;
      if (!v26)
      {
        if (!a7)
        {

          return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
        }

        goto LABEL_25;
      }

      if (v26 == 1)
      {
        if (!a7)
        {
          v31 = "HFServiceControlDescriptionHeaterCoolerTargetHeatingWithTemperature";
LABEL_33:
          v46 = (v31 - 32);
          v45 = 0xD000000000000043;
LABEL_34:
          v44 = v46 | 0x8000000000000000;
          goto LABEL_35;
        }

        goto LABEL_25;
      }
    }

    if (v30 == 2)
    {
LABEL_27:
      v43 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
LABEL_29:
      v44 = (v43 - 32) | 0x8000000000000000;
      v45 = 0xD00000000000003FLL;
LABEL_35:
      static String.hfLocalized(_:)(v45, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1D1E739C0;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      *(v47 + 64) = sub_1D1757D20();
      *(v47 + 32) = v27;
      *(v47 + 40) = v29;
      v42 = sub_1D1E6783C();

LABEL_36:

      return v42;
    }

    if (v30 != 1)
    {
LABEL_30:

      return 0;
    }

LABEL_28:
    v43 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
    goto LABEL_29;
  }

  return result;
}

void static StaticService.sensorCharacteristicString(context:services:characteristicKind:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v682 = a3;
  v686 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v675 = &v668 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v674 = &v668 - v6;
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = MEMORY[0x1EEE9AC00](v685);
  MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](&v668 - v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v681 = &v668 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v680 = &v668 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v679 = &v668 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v678 = &v668 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v684 = &v668 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v683 = &v668 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v676 = &v668 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v668 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v677 = &v668 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v669 = &v668 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v673 = &v668 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v672 = &v668 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v671 = &v668 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v670 = &v668 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v668 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v668 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v668 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v668 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v668 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v668 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v668 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v80 = &v668 - v79;
  v81 = *v682 - 6;
  v682 = v32;
  switch(v81)
  {
    case 0:
      v82 = *(v686 + 64);
      v682 = (v686 + 64);
      v83 = 1 << *(v686 + 32);
      v84 = -1;
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      v85 = v84 & v82;
      v681 = (v83 + 63) >> 6;

      v86 = 0;
      v680 = MEMORY[0x1E69E7CC0];
      v87 = v678;
      if (v85)
      {
        goto LABEL_5;
      }

      while (1)
      {
        do
        {
LABEL_7:
          v105 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_377;
          }

          if (v105 >= v681)
          {

            v649 = v680;
            v650 = 1;
            goto LABEL_342;
          }

          v85 = *&v682[8 * v105];
          ++v86;
        }

        while (!v85);
        v86 = v105;
        do
        {
LABEL_5:
          while (1)
          {
            v88 = __clz(__rbit64(v85));
            v85 &= v85 - 1;
            v89 = v88 | (v86 << 6);
            v90 = v686;
            v91 = *(v686 + 48);
            v92 = sub_1D1E66A7C();
            v93 = *(v92 - 8);
            (*(v93 + 16))(v87, v91 + *(v93 + 72) * v89, v92);
            v94 = *(v90 + 56);
            v95 = (type metadata accessor for StaticService(0) - 8);
            v96 = v94 + *(*v95 + 72) * v89;
            v97 = v685;
            sub_1D1C3BA30(v96, v87 + *(v685 + 48), type metadata accessor for StaticService);
            v98 = v683;
            sub_1D1741C08(v87, v683, &qword_1EC642DB0, &unk_1D1E6F360);
            v99 = *(v97 + 48);
            v100 = v684;
            v101 = v684 + v99;
            (*(v93 + 32))(v684, v98, v92);
            sub_1D1C3B520(v98 + v99, v100 + v99, type metadata accessor for StaticService);
            v688 = *(v101 + v95[34]);
            v687 = 6;
            sub_1D1CE53A4(&v687);
            v103 = v102;
            LOBYTE(v95) = v104;
            sub_1D1741A30(v100, &qword_1EC642DB0, &unk_1D1E6F360);
            sub_1D1741A30(v87, &qword_1EC642DB0, &unk_1D1E6F360);
            if ((v95 & 1) == 0)
            {
              break;
            }

            if (!v85)
            {
              goto LABEL_7;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v680 = sub_1D177D4E8(0, *(v680 + 2) + 1, 1, v680);
          }

          v107 = *(v680 + 2);
          v106 = *(v680 + 3);
          if (v107 >= v106 >> 1)
          {
            v680 = sub_1D177D4E8((v106 > 1), v107 + 1, 1, v680);
          }

          v108 = v680;
          *(v680 + 2) = v107 + 1;
          *&v108[8 * v107 + 32] = v103;
        }

        while (v85);
      }

    case 1:
      v332 = v686 + 64;
      v333 = 1 << *(v686 + 32);
      v334 = -1;
      if (v333 < 64)
      {
        v334 = ~(-1 << v333);
      }

      v335 = v334 & *(v686 + 64);
      v336 = ((v333 + 63) >> 6);

      v679 = MEMORY[0x1E69E7CC0];
      v680 = v336;
      v337 = &unk_1D1E6F360;
      v338 = v669;
      v681 = v332;
      v339 = 0;
      if (v335)
      {
        goto LABEL_164;
      }

LABEL_165:
      while (2)
      {
        v341 = v339 + 1;
        if (__OFADD__(v339, 1))
        {
          __break(1u);
          goto LABEL_373;
        }

        if (v341 < v336)
        {
          v335 = *(v332 + 8 * v341);
          ++v339;
          if (!v335)
          {
            continue;
          }

          v340 = v337;
          while (1)
          {
            v342 = __clz(__rbit64(v335));
            v335 &= v335 - 1;
            v343 = v342 | (v341 << 6);
            v344 = v686;
            v345 = *(v686 + 48);
            v346 = sub_1D1E66A7C();
            v347 = *(v346 - 8);
            v683 = v346;
            v684 = v347;
            (*(v347 + 16))(v338, v345 + *(v347 + 72) * v343, v346);
            v348 = *(v344 + 56);
            v349 = (type metadata accessor for StaticService(0) - 8);
            v350 = v348 + *(*v349 + 72) * v343;
            v351 = v685;
            sub_1D1C3BA30(v350, v338 + *(v685 + 48), type metadata accessor for StaticService);
            v352 = v677;
            v337 = v340;
            sub_1D1741C08(v338, v677, &qword_1EC642DB0, v340);
            v353 = *(v351 + 48);
            v354 = v338;
            v355 = v682;
            v356 = &v682[v353];
            (*(v684 + 32))(v682, v352, v683);
            sub_1D1C3B520(v352 + v353, v355 + v353, type metadata accessor for StaticService);
            v688 = *&v356[v349[34]];
            v687 = 7;
            v694 = StaticCharacteristicsBag.int(for:)(&v687);
            if (v694.is_nil)
            {
              sub_1D1741A30(v355, &qword_1EC642DB0, v337);
              sub_1D1741A30(v354, &qword_1EC642DB0, v337);
              v339 = v341;
              v338 = v354;
              v336 = v680;
              v332 = v681;
              if (!v335)
              {
                goto LABEL_165;
              }
            }

            else
            {
              value = v694.value;
              sub_1D1741A30(v355, &qword_1EC642DB0, v337);
              sub_1D1741A30(v354, &qword_1EC642DB0, v337);
              v338 = v354;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177FBD8(0, *(v679 + 2) + 1, 1, v679);
              }

              v359 = *(v679 + 2);
              v358 = *(v679 + 3);
              if (v359 >= v358 >> 1)
              {
                v679 = sub_1D177FBD8((v358 > 1), v359 + 1, 1, v679);
              }

              v360 = v679;
              *(v679 + 2) = v359 + 1;
              *&v360[8 * v359 + 32] = value;
              v336 = v680;
              v332 = v681;
              v339 = v341;
              if (!v335)
              {
                goto LABEL_165;
              }
            }

LABEL_164:
            v340 = v337;
            v341 = v339;
          }
        }

        break;
      }

      _s13HomeDataModel13StaticServiceV20airParticulateString0fG5SizesSSSgSaySo024HMCharacteristicValueAirG4SizeVG_tFZ_0(v679);
      goto LABEL_371;
    case 12:
      v267 = v686 + 64;
      v268 = 1 << *(v686 + 32);
      v269 = -1;
      if (v268 < 64)
      {
        v269 = ~(-1 << v268);
      }

      v270 = v269 & *(v686 + 64);
      v271 = (v268 + 63) >> 6;

      v272 = 0;
      while (v270)
      {
LABEL_131:
        v274 = __clz(__rbit64(v270));
        v270 &= v270 - 1;
        v275 = v274 | (v272 << 6);
        v276 = v686;
        v277 = *(v686 + 48);
        v278 = sub_1D1E66A7C();
        v683 = *(v278 - 8);
        v279 = v277 + *(v683 + 72) * v275;
        v280 = *(v683 + 16);
        v684 = v278;
        v280(v80, v279);
        v281 = *(v276 + 56);
        v282 = (type metadata accessor for StaticService(0) - 8);
        v283 = v281 + *(*v282 + 72) * v275;
        v284 = v685;
        sub_1D1C3BA30(v283, &v80[*(v685 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v80, v67, &qword_1EC642DB0, &unk_1D1E6F360);
        v285 = &v67[*(v284 + 48)];
        v688 = *(v285 + v282[34]);
        v687 = 18;
        v691 = StaticCharacteristicsBag.int(for:)(&v687);
        v286 = v691.value;
        LOBYTE(v281) = v691.is_nil;
        sub_1D1741A30(v80, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v281)
        {
          sub_1D1C3BED8(v285, type metadata accessor for StaticService);
          (*(v683 + 8))(v67, v684);
          continue;
        }

        sub_1D1C3BED8(v285, type metadata accessor for StaticService);
        (*(v683 + 8))(v67, v684);
        if (v286 == 1)
        {

          v666 = "eContactDetected";
          v667 = 0xD000000000000036;
          goto LABEL_368;
        }
      }

      while (1)
      {
        v273 = v272 + 1;
        if (__OFADD__(v272, 1))
        {
          goto LABEL_388;
        }

        if (v273 >= v271)
        {
          goto LABEL_235;
        }

        v270 = *(v267 + 8 * v273);
        ++v272;
        if (v270)
        {
          v272 = v273;
          goto LABEL_131;
        }
      }

    case 13:
      v464 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v70;
      v465 = 1 << *(v686 + 32);
      v466 = -1;
      if (v465 < 64)
      {
        v466 = ~(-1 << v465);
      }

      v467 = v466 & v464;
      v680 = ((v465 + 63) >> 6);

      v468 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v469 = v682;
      if (v467)
      {
        goto LABEL_239;
      }

LABEL_241:
      while (2)
      {
        v487 = v468 + 1;
        if (__OFADD__(v468, 1))
        {
          goto LABEL_381;
        }

        if (v487 < v680)
        {
          v467 = *(v681 + 8 * v487);
          ++v468;
          if (v467)
          {
            v468 = v487;
            do
            {
LABEL_239:
              while (1)
              {
                v470 = __clz(__rbit64(v467));
                v467 &= v467 - 1;
                v471 = v470 | (v468 << 6);
                v472 = v686;
                v473 = *(v686 + 48);
                v474 = sub_1D1E66A7C();
                v475 = *(v474 - 8);
                (*(v475 + 16))(v469, v473 + *(v475 + 72) * v471, v474);
                v476 = *(v472 + 56);
                v477 = (type metadata accessor for StaticService(0) - 8);
                v478 = v476 + *(*v477 + 72) * v471;
                v479 = v685;
                sub_1D1C3BA30(v478, v469 + *(v685 + 48), type metadata accessor for StaticService);
                v480 = v683;
                sub_1D1741C08(v469, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v481 = *(v479 + 48);
                v482 = v684;
                v483 = v684 + v481;
                (*(v475 + 32))(v684, v480, v474);
                sub_1D1C3B520(v480 + v481, v482 + v481, type metadata accessor for StaticService);
                v688 = *(v483 + v477[34]);
                v687 = 19;
                sub_1D1CE53A4(&v687);
                v485 = v484;
                LOBYTE(v477) = v486;
                sub_1D1741A30(v482, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v469, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v477 & 1) == 0)
                {
                  break;
                }

                if (!v467)
                {
                  goto LABEL_241;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v489 = *(v679 + 2);
              v488 = *(v679 + 3);
              if (v489 >= v488 >> 1)
              {
                v679 = sub_1D177D4E8((v488 > 1), v489 + 1, 1, v679);
              }

              v490 = v679;
              *(v679 + 2) = v489 + 1;
              *&v490[8 * v489 + 32] = v485;
            }

            while (v467);
          }

          continue;
        }

        goto LABEL_251;
      }

    case 14:
      v682 = v68;
      v495 = *(v686 + 64);
      v681 = v686 + 64;
      v496 = 1 << *(v686 + 32);
      v497 = -1;
      if (v496 < 64)
      {
        v497 = ~(-1 << v496);
      }

      v498 = v497 & v495;
      v680 = ((v496 + 63) >> 6);

      v499 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v500 = v682;
      if (v498)
      {
        goto LABEL_256;
      }

LABEL_258:
      while (2)
      {
        v518 = v499 + 1;
        if (__OFADD__(v499, 1))
        {
          goto LABEL_382;
        }

        if (v518 < v680)
        {
          v498 = *(v681 + 8 * v518);
          ++v499;
          if (v498)
          {
            v499 = v518;
            do
            {
LABEL_256:
              while (1)
              {
                v501 = __clz(__rbit64(v498));
                v498 &= v498 - 1;
                v502 = v501 | (v499 << 6);
                v503 = v686;
                v504 = *(v686 + 48);
                v505 = sub_1D1E66A7C();
                v506 = *(v505 - 8);
                (*(v506 + 16))(v500, v504 + *(v506 + 72) * v502, v505);
                v507 = *(v503 + 56);
                v508 = (type metadata accessor for StaticService(0) - 8);
                v509 = v507 + *(*v508 + 72) * v502;
                v510 = v685;
                sub_1D1C3BA30(v509, v500 + *(v685 + 48), type metadata accessor for StaticService);
                v511 = v683;
                sub_1D1741C08(v500, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v512 = *(v510 + 48);
                v513 = v684;
                v514 = v684 + v512;
                (*(v506 + 32))(v684, v511, v505);
                sub_1D1C3B520(v511 + v512, v513 + v512, type metadata accessor for StaticService);
                v688 = *(v514 + v508[34]);
                v687 = 20;
                sub_1D1CE53A4(&v687);
                v516 = v515;
                LOBYTE(v508) = v517;
                sub_1D1741A30(v513, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v500, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v508 & 1) == 0)
                {
                  break;
                }

                if (!v498)
                {
                  goto LABEL_258;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v520 = *(v679 + 2);
              v519 = *(v679 + 3);
              if (v520 >= v519 >> 1)
              {
                v679 = sub_1D177D4E8((v519 > 1), v520 + 1, 1, v679);
              }

              v521 = v679;
              *(v679 + 2) = v520 + 1;
              *&v521[8 * v520 + 32] = v516;
            }

            while (v498);
          }

          continue;
        }

        break;
      }

      v658 = "onoxidePeakLevel";
      v659 = 0xD00000000000001FLL;
      goto LABEL_357;
    case 15:
      v287 = v686 + 64;
      v288 = 1 << *(v686 + 32);
      v289 = -1;
      if (v288 < 64)
      {
        v289 = ~(-1 << v288);
      }

      v290 = v289 & *(v686 + 64);
      v291 = (v288 + 63) >> 6;

      v292 = 0;
      while (v290)
      {
LABEL_143:
        v294 = __clz(__rbit64(v290));
        v290 &= v290 - 1;
        v295 = v294 | (v292 << 6);
        v296 = v686;
        v297 = *(v686 + 48);
        v298 = sub_1D1E66A7C();
        v683 = *(v298 - 8);
        v299 = v297 + *(v683 + 72) * v295;
        v300 = *(v683 + 16);
        v684 = v298;
        v300(v64, v299);
        v301 = *(v296 + 56);
        v302 = (type metadata accessor for StaticService(0) - 8);
        v303 = v301 + *(*v302 + 72) * v295;
        v304 = v685;
        sub_1D1C3BA30(v303, &v64[*(v685 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v64, v61, &qword_1EC642DB0, &unk_1D1E6F360);
        v305 = &v61[*(v304 + 48)];
        v688 = *(v305 + v302[34]);
        v687 = 21;
        v692 = StaticCharacteristicsBag.int(for:)(&v687);
        v306 = v692.value;
        LOBYTE(v301) = v692.is_nil;
        sub_1D1741A30(v64, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v301)
        {
          sub_1D1C3BED8(v305, type metadata accessor for StaticService);
          (*(v683 + 8))(v61, v684);
          continue;
        }

        sub_1D1C3BED8(v305, type metadata accessor for StaticService);
        (*(v683 + 8))(v61, v684);
        if (v306 == 1)
        {

          v666 = "TargetStateManual";
          v667 = 0xD000000000000037;
          goto LABEL_368;
        }
      }

      while (1)
      {
        v293 = v292 + 1;
        if (__OFADD__(v292, 1))
        {
          goto LABEL_392;
        }

        if (v293 >= v291)
        {
          goto LABEL_235;
        }

        v290 = *(v287 + 8 * v293);
        ++v292;
        if (v290)
        {
          v292 = v293;
          goto LABEL_143;
        }
      }

    case 16:
      v361 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v69;
      v362 = 1 << *(v686 + 32);
      v363 = -1;
      if (v362 < 64)
      {
        v363 = ~(-1 << v362);
      }

      v364 = v363 & v361;
      v680 = ((v362 + 63) >> 6);

      v365 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v366 = v682;
      if (v364)
      {
        goto LABEL_181;
      }

LABEL_183:
      while (2)
      {
        v384 = v365 + 1;
        if (__OFADD__(v365, 1))
        {
          goto LABEL_378;
        }

        if (v384 < v680)
        {
          v364 = *(v681 + 8 * v384);
          ++v365;
          if (v364)
          {
            v365 = v384;
            do
            {
LABEL_181:
              while (1)
              {
                v367 = __clz(__rbit64(v364));
                v364 &= v364 - 1;
                v368 = v367 | (v365 << 6);
                v369 = v686;
                v370 = *(v686 + 48);
                v371 = sub_1D1E66A7C();
                v372 = *(v371 - 8);
                (*(v372 + 16))(v366, v370 + *(v372 + 72) * v368, v371);
                v373 = *(v369 + 56);
                v374 = (type metadata accessor for StaticService(0) - 8);
                v375 = v373 + *(*v374 + 72) * v368;
                v376 = v685;
                sub_1D1C3BA30(v375, v366 + *(v685 + 48), type metadata accessor for StaticService);
                v377 = v683;
                sub_1D1741C08(v366, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v378 = *(v376 + 48);
                v379 = v684;
                v380 = v684 + v378;
                (*(v372 + 32))(v684, v377, v371);
                sub_1D1C3B520(v377 + v378, v379 + v378, type metadata accessor for StaticService);
                v688 = *(v380 + v374[34]);
                v687 = 22;
                sub_1D1CE53A4(&v687);
                v382 = v381;
                LOBYTE(v374) = v383;
                sub_1D1741A30(v379, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v366, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v374 & 1) == 0)
                {
                  break;
                }

                if (!v364)
                {
                  goto LABEL_183;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v386 = *(v679 + 2);
              v385 = *(v679 + 3);
              if (v386 >= v385 >> 1)
              {
                v679 = sub_1D177D4E8((v385 > 1), v386 + 1, 1, v679);
              }

              v387 = v679;
              *(v679 + 2) = v386 + 1;
              *&v387[8 * v386 + 32] = v382;
            }

            while (v364);
          }

          continue;
        }

        break;
      }

LABEL_251:

      v491 = sub_1D1C3B588(v679, 1);
      v493 = v492;
      if (v492)
      {
        static String.hfLocalized(_:)(0xD00000000000001CLL, 0x80000001D1EC73F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v494 = swift_allocObject();
        *(v494 + 16) = xmmword_1D1E739C0;
        *(v494 + 56) = MEMORY[0x1E69E6158];
        *(v494 + 64) = sub_1D1757D20();
        *(v494 + 32) = v491;
        *(v494 + 40) = v493;
        sub_1D1E6784C();
      }

      goto LABEL_371;
    case 17:
      v388 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v78;
      v389 = 1 << *(v686 + 32);
      v390 = -1;
      if (v389 < 64)
      {
        v390 = ~(-1 << v389);
      }

      v391 = v390 & v388;
      v680 = ((v389 + 63) >> 6);

      v392 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v393 = v682;
      if (v391)
      {
        goto LABEL_196;
      }

LABEL_198:
      while (2)
      {
        v411 = v392 + 1;
        if (__OFADD__(v392, 1))
        {
          goto LABEL_379;
        }

        if (v411 < v680)
        {
          v391 = *(v681 + 8 * v411);
          ++v392;
          if (v391)
          {
            v392 = v411;
            do
            {
LABEL_196:
              while (1)
              {
                v394 = __clz(__rbit64(v391));
                v391 &= v391 - 1;
                v395 = v394 | (v392 << 6);
                v396 = v686;
                v397 = *(v686 + 48);
                v398 = sub_1D1E66A7C();
                v399 = *(v398 - 8);
                (*(v399 + 16))(v393, v397 + *(v399 + 72) * v395, v398);
                v400 = *(v396 + 56);
                v401 = (type metadata accessor for StaticService(0) - 8);
                v402 = v400 + *(*v401 + 72) * v395;
                v403 = v685;
                sub_1D1C3BA30(v402, v393 + *(v685 + 48), type metadata accessor for StaticService);
                v404 = v683;
                sub_1D1741C08(v393, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v405 = *(v403 + 48);
                v406 = v684;
                v407 = v684 + v405;
                (*(v399 + 32))(v684, v404, v398);
                sub_1D1C3B520(v404 + v405, v406 + v405, type metadata accessor for StaticService);
                v688 = *(v407 + v401[34]);
                v687 = 23;
                sub_1D1CE53A4(&v687);
                v409 = v408;
                LOBYTE(v401) = v410;
                sub_1D1741A30(v406, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v393, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v401 & 1) == 0)
                {
                  break;
                }

                if (!v391)
                {
                  goto LABEL_198;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v413 = *(v679 + 2);
              v412 = *(v679 + 3);
              if (v413 >= v412 >> 1)
              {
                v679 = sub_1D177D4E8((v412 > 1), v413 + 1, 1, v679);
              }

              v414 = v679;
              *(v679 + 2) = v413 + 1;
              *&v414[8 * v413 + 32] = v409;
            }

            while (v391);
          }

          continue;
        }

        break;
      }

      v658 = "HDMSwingModeDisabled";
      v659 = 0xD000000000000020;
LABEL_357:
      sub_1D1C3B860(v679, v659, v658 | 0x8000000000000000);
      goto LABEL_371;
    case 22:
      v547 = v686 + 64;
      v548 = 1 << *(v686 + 32);
      v549 = -1;
      if (v548 < 64)
      {
        v549 = ~(-1 << v548);
      }

      v550 = v549 & *(v686 + 64);
      v551 = (v548 + 63) >> 6;

      v552 = 0;
      while (v550)
      {
LABEL_292:
        v554 = __clz(__rbit64(v550));
        v550 &= v550 - 1;
        v555 = v554 | (v552 << 6);
        v556 = v686;
        v557 = *(v686 + 48);
        v558 = sub_1D1E66A7C();
        v683 = *(v558 - 8);
        v559 = v557 + *(v683 + 72) * v555;
        v560 = *(v683 + 16);
        v684 = v558;
        v560(v58, v559);
        v561 = *(v556 + 56);
        v562 = (type metadata accessor for StaticService(0) - 8);
        v563 = v561 + *(*v562 + 72) * v555;
        v564 = v685;
        sub_1D1C3BA30(v563, &v58[*(v685 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v58, v55, &qword_1EC642DB0, &unk_1D1E6F360);
        v565 = &v55[*(v564 + 48)];
        v688 = *(v565 + v562[34]);
        v687 = 28;
        v697 = StaticCharacteristicsBag.int(for:)(&v687);
        v566 = v697.value;
        LOBYTE(v561) = v697.is_nil;
        sub_1D1741A30(v58, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v561)
        {
          sub_1D1C3BED8(v565, type metadata accessor for StaticService);
          (*(v683 + 8))(v55, v684);
          continue;
        }

        sub_1D1C3BED8(v565, type metadata accessor for StaticService);
        (*(v683 + 8))(v55, v684);
        if (!v566)
        {

          v666 = "eContactNotDetected";
          v667 = 0xD000000000000030;
          goto LABEL_368;
        }
      }

      while (1)
      {
        v553 = v552 + 1;
        if (__OFADD__(v552, 1))
        {
          goto LABEL_389;
        }

        if (v553 >= v551)
        {

          v666 = "tion.FaucetValve, State:Running";
          v667 = 0xD000000000000033;
          goto LABEL_368;
        }

        v550 = *(v547 + 8 * v553);
        ++v552;
        if (v550)
        {
          v552 = v553;
          goto LABEL_292;
        }
      }

    case 29:
      v522 = *(v686 + 64);
      v682 = (v686 + 64);
      v523 = 1 << *(v686 + 32);
      v524 = -1;
      if (v523 < 64)
      {
        v524 = ~(-1 << v523);
      }

      v525 = v524 & v522;
      v681 = (v523 + 63) >> 6;

      v526 = 0;
      v680 = MEMORY[0x1E69E7CC0];
      v527 = v679;
      if (v525)
      {
        goto LABEL_271;
      }

LABEL_273:
      while (2)
      {
        v543 = v526 + 1;
        if (__OFADD__(v526, 1))
        {
          goto LABEL_383;
        }

        if (v543 < v681)
        {
          v525 = *&v682[8 * v543];
          ++v526;
          if (v525)
          {
            v526 = v543;
            do
            {
LABEL_271:
              while (1)
              {
                v528 = __clz(__rbit64(v525));
                v525 &= v525 - 1;
                v529 = v528 | (v526 << 6);
                v530 = v686;
                v531 = *(v686 + 48);
                v532 = sub_1D1E66A7C();
                v533 = *(v532 - 8);
                (*(v533 + 16))(v527, v531 + *(v533 + 72) * v529, v532);
                v534 = *(v530 + 56);
                v535 = (type metadata accessor for StaticService(0) - 8);
                v536 = v534 + *(*v535 + 72) * v529;
                v537 = v685;
                sub_1D1C3BA30(v536, &v527[*(v685 + 48)], type metadata accessor for StaticService);
                v538 = v683;
                sub_1D1741C08(v527, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v539 = *(v537 + 48);
                v540 = v684;
                v541 = v684 + v539;
                (*(v533 + 32))(v684, v538, v532);
                sub_1D1C3B520(v538 + v539, v540 + v539, type metadata accessor for StaticService);
                v688 = *(v541 + v535[34]);
                v687 = 35;
                v696 = StaticCharacteristicsBag.int(for:)(&v687);
                v542 = v696.value;
                LOBYTE(v535) = v696.is_nil;
                sub_1D1741A30(v540, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v527, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v535 & 1) == 0)
                {
                  break;
                }

                if (!v525)
                {
                  goto LABEL_273;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v680 = sub_1D177D8E4(0, *(v680 + 2) + 1, 1, v680);
              }

              v545 = *(v680 + 2);
              v544 = *(v680 + 3);
              if (v545 >= v544 >> 1)
              {
                v680 = sub_1D177D8E4((v544 > 1), v545 + 1, 1, v680);
              }

              v546 = v680;
              *(v680 + 2) = v545 + 1;
              *&v546[8 * v545 + 32] = v542;
            }

            while (v525);
          }

          continue;
        }

        break;
      }

      v660 = v680;
      v661 = *(v680 + 2);
      if (!v661)
      {
        goto LABEL_369;
      }

      v688 = MEMORY[0x1E69E7CC0];
      sub_1D1C39404(v661);
      v662 = 32;
      v654 = v688;
      do
      {
        v663 = *&v660[v662];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D49C(0, *(v654 + 16) + 1, 1);
          v654 = v688;
        }

        v665 = *(v654 + 16);
        v664 = *(v654 + 24);
        if (v665 >= v664 >> 1)
        {
          sub_1D178D49C((v664 > 1), v665 + 1, 1);
          v654 = v688;
        }

        *(v654 + 16) = v665 + 1;
        *(v654 + 8 * v665 + 32) = v663;
        v662 += 8;
        --v661;
      }

      while (v661);
      goto LABEL_352;
    case 31:
      v197 = *(v686 + 64);
      v682 = (v686 + 64);
      v198 = 1 << *(v686 + 32);
      v199 = -1;
      if (v198 < 64)
      {
        v199 = ~(-1 << v198);
      }

      v200 = v199 & v197;
      v681 = (v198 + 63) >> 6;

      v201 = 0;
      v680 = MEMORY[0x1E69E7CC0];
      v202 = v676;
      if (v200)
      {
        goto LABEL_85;
      }

LABEL_87:
      while (2)
      {
        v220 = v201 + 1;
        if (__OFADD__(v201, 1))
        {
          goto LABEL_375;
        }

        if (v220 < v681)
        {
          v200 = *&v682[8 * v220];
          ++v201;
          if (v200)
          {
            v201 = v220;
            do
            {
LABEL_85:
              while (1)
              {
                v203 = __clz(__rbit64(v200));
                v200 &= v200 - 1;
                v204 = v203 | (v201 << 6);
                v205 = v686;
                v206 = *(v686 + 48);
                v207 = sub_1D1E66A7C();
                v208 = *(v207 - 8);
                (*(v208 + 16))(v202, v206 + *(v208 + 72) * v204, v207);
                v209 = *(v205 + 56);
                v210 = (type metadata accessor for StaticService(0) - 8);
                v211 = v209 + *(*v210 + 72) * v204;
                v212 = v685;
                sub_1D1C3BA30(v211, v202 + *(v685 + 48), type metadata accessor for StaticService);
                v213 = v683;
                sub_1D1741C08(v202, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v214 = *(v212 + 48);
                v215 = v684;
                v216 = v684 + v214;
                (*(v208 + 32))(v684, v213, v207);
                sub_1D1C3B520(v213 + v214, v215 + v214, type metadata accessor for StaticService);
                v688 = *(v216 + v210[34]);
                v687 = 37;
                sub_1D1CE53A4(&v687);
                v218 = v217;
                LOBYTE(v210) = v219;
                sub_1D1741A30(v215, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v202, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v210 & 1) == 0)
                {
                  break;
                }

                if (!v200)
                {
                  goto LABEL_87;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v680 = sub_1D177D4E8(0, *(v680 + 2) + 1, 1, v680);
              }

              v222 = *(v680 + 2);
              v221 = *(v680 + 3);
              if (v222 >= v221 >> 1)
              {
                v680 = sub_1D177D4E8((v221 > 1), v222 + 1, 1, v680);
              }

              v223 = v680;
              *(v680 + 2) = v222 + 1;
              *&v223[8 * v222 + 32] = v218;
            }

            while (v200);
          }

          continue;
        }

        break;
      }

      v648 = v680;
      goto LABEL_341;
    case 40:
      v307 = *(v686 + 64);
      v682 = (v686 + 64);
      v308 = 1 << *(v686 + 32);
      v309 = -1;
      if (v308 < 64)
      {
        v309 = ~(-1 << v308);
      }

      v310 = v309 & v307;
      v681 = (v308 + 63) >> 6;

      v311 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v312 = v680;
      if (v310)
      {
        goto LABEL_149;
      }

LABEL_151:
      while (2)
      {
        v328 = v311 + 1;
        if (__OFADD__(v311, 1))
        {
          goto LABEL_376;
        }

        if (v328 < v681)
        {
          v310 = *&v682[8 * v328];
          ++v311;
          if (v310)
          {
            v311 = v328;
            do
            {
LABEL_149:
              while (1)
              {
                v313 = __clz(__rbit64(v310));
                v310 &= v310 - 1;
                v314 = v313 | (v311 << 6);
                v315 = v686;
                v316 = *(v686 + 48);
                v317 = sub_1D1E66A7C();
                v318 = *(v317 - 8);
                (*(v318 + 16))(v312, v316 + *(v318 + 72) * v314, v317);
                v319 = *(v315 + 56);
                v320 = (type metadata accessor for StaticService(0) - 8);
                v321 = v319 + *(*v320 + 72) * v314;
                v322 = v685;
                sub_1D1C3BA30(v321, &v312[*(v685 + 48)], type metadata accessor for StaticService);
                v323 = v683;
                sub_1D1741C08(v312, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v324 = *(v322 + 48);
                v325 = v684;
                v326 = v684 + v324;
                (*(v318 + 32))(v684, v323, v317);
                sub_1D1C3B520(v323 + v324, v325 + v324, type metadata accessor for StaticService);
                v688 = *(v326 + v320[34]);
                v687 = 46;
                v693 = StaticCharacteristicsBag.int(for:)(&v687);
                v327 = v693.value;
                LOBYTE(v320) = v693.is_nil;
                sub_1D1741A30(v325, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v312, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v320 & 1) == 0)
                {
                  break;
                }

                if (!v310)
                {
                  goto LABEL_151;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D8E4(0, *(v679 + 2) + 1, 1, v679);
              }

              v330 = *(v679 + 2);
              v329 = *(v679 + 3);
              if (v330 >= v329 >> 1)
              {
                v679 = sub_1D177D8E4((v329 > 1), v330 + 1, 1, v679);
              }

              v331 = v679;
              *(v679 + 2) = v330 + 1;
              *&v331[8 * v330 + 32] = v327;
            }

            while (v310);
          }

          continue;
        }

        break;
      }

      v651 = v679;
      v652 = *(v679 + 2);
      if (v652)
      {
        v688 = MEMORY[0x1E69E7CC0];
        sub_1D1C39404(v652);
        v653 = 32;
        v654 = v688;
        do
        {
          v655 = *&v651[v653];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D178D49C(0, *(v654 + 16) + 1, 1);
            v654 = v688;
          }

          v657 = *(v654 + 16);
          v656 = *(v654 + 24);
          if (v657 >= v656 >> 1)
          {
            sub_1D178D49C((v656 > 1), v657 + 1, 1);
            v654 = v688;
          }

          *(v654 + 16) = v657 + 1;
          *(v654 + 8 * v657 + 32) = v655;
          v653 += 8;
          --v652;
        }

        while (v652);
LABEL_352:
      }

      else
      {
LABEL_369:

        v654 = MEMORY[0x1E69E7CC0];
      }

      sub_1D1C3B588(v654, 0);
      goto LABEL_371;
    case 68:
      v224 = v686 + 64;
      v225 = 1 << *(v686 + 32);
      v226 = -1;
      if (v225 < 64)
      {
        v226 = ~(-1 << v225);
      }

      v227 = v226 & *(v686 + 64);
      v228 = (v225 + 63) >> 6;

      v229 = 0;
      while (v227)
      {
LABEL_106:
        v231 = __clz(__rbit64(v227));
        v227 &= v227 - 1;
        v232 = v231 | (v229 << 6);
        v233 = v686;
        v234 = *(v686 + 48);
        v235 = sub_1D1E66A7C();
        v683 = *(v235 - 8);
        v236 = v234 + *(v683 + 72) * v232;
        v237 = *(v683 + 16);
        v684 = v235;
        v237(v52, v236);
        v238 = *(v233 + 56);
        v239 = (type metadata accessor for StaticService(0) - 8);
        v240 = v238 + *(*v239 + 72) * v232;
        v241 = v685;
        sub_1D1C3BA30(v240, &v52[*(v685 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v52, v49, &qword_1EC642DB0, &unk_1D1E6F360);
        v242 = &v49[*(v241 + 48)];
        v688 = *(v242 + v239[34]);
        v687 = 74;
        v689 = StaticCharacteristicsBag.int(for:)(&v687);
        v243 = v689.value;
        LOBYTE(v238) = v689.is_nil;
        sub_1D1741A30(v52, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v238)
        {
          sub_1D1C3BED8(v242, type metadata accessor for StaticService);
          (*(v683 + 8))(v49, v684);
          continue;
        }

        sub_1D1C3BED8(v242, type metadata accessor for StaticService);
        (*(v683 + 8))(v49, v684);
        if (v243 == 1)
        {

          v244 = "HFCharacteristicTitleLeakDetectedSimple";
          goto LABEL_121;
        }
      }

      while (1)
      {
        v230 = v229 + 1;
        if (__OFADD__(v229, 1))
        {
          goto LABEL_390;
        }

        if (v230 >= v228)
        {
          goto LABEL_235;
        }

        v227 = *(v224 + 8 * v230);
        ++v229;
        if (v227)
        {
          v229 = v230;
          goto LABEL_106;
        }
      }

    case 77:
      v680 = v77;
      v684 = v76;
      v163 = v686 + 64;
      v164 = 1 << *(v686 + 32);
      v165 = -1;
      if (v164 < 64)
      {
        v165 = ~(-1 << v164);
      }

      v166 = v165 & *(v686 + 64);
      v167 = (v164 + 63) >> 6;

      v168 = 0;
      while (2)
      {
        while (2)
        {
          if (v166)
          {
            goto LABEL_57;
          }

          do
          {
            v169 = v168 + 1;
            if (__OFADD__(v168, 1))
            {
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
              goto LABEL_394;
            }

            if (v169 >= v167)
            {

              v666 = "HFStatusTitleOccupancyAlarm";
              v667 = 0xD000000000000025;
              goto LABEL_368;
            }

            v166 = *(v163 + 8 * v169);
            ++v168;
          }

          while (!v166);
          v168 = v169;
LABEL_57:
          v170 = __clz(__rbit64(v166)) | (v168 << 6);
          v171 = v686;
          v172 = *(v686 + 48);
          v173 = sub_1D1E66A7C();
          v682 = *(v173 - 8);
          v174 = v172 + *(v682 + 9) * v170;
          v175 = *(v682 + 2);
          v176 = v680;
          v683 = v173;
          v175(v680, v174);
          v177 = *(v171 + 56);
          v178 = (type metadata accessor for StaticService(0) - 8);
          v179 = v177 + *(*v178 + 72) * v170;
          v180 = v685;
          sub_1D1C3BA30(v179, &v176[*(v685 + 48)], type metadata accessor for StaticService);
          v181 = v684;
          sub_1D1741C08(v176, v684, &qword_1EC642DB0, &unk_1D1E6F360);
          v182 = *(v181 + *(v180 + 48) + v178[34]);
          v183 = *(v182 + 16);
          v681 = v181 + *(v180 + 48);
          if (v183)
          {
            v184 = sub_1D171D140(83);
            if (v185)
            {
              v186 = v184;
              v187 = *(v182 + 56);
              v188 = type metadata accessor for StaticCharacteristic(0);
              v189 = *(v188 - 8);
              v190 = v187 + *(v189 + 72) * v186;
              v191 = v674;
              sub_1D1C3BA30(v190, v674, type metadata accessor for StaticCharacteristic);
              sub_1D1741A30(v680, &qword_1EC642DB0, &unk_1D1E6F360);
              (*(v189 + 56))(v191, 0, 1, v188);
              goto LABEL_63;
            }

            v192 = v680;
          }

          else
          {
            v192 = v176;
          }

          sub_1D1741A30(v192, &qword_1EC642DB0, &unk_1D1E6F360);
          v188 = type metadata accessor for StaticCharacteristic(0);
          v191 = v674;
          (*(*(v188 - 8) + 56))(v674, 1, 1, v188);
LABEL_63:
          v193 = v675;
          v166 &= v166 - 1;
          sub_1D1741A90(v191, v675, &qword_1EC643630, &qword_1D1E71D10);
          type metadata accessor for StaticCharacteristic(0);
          if ((*(*(v188 - 8) + 48))(v193, 1, v188) == 1)
          {
            sub_1D1741A30(v193, &qword_1EC643630, &qword_1D1E71D10);
LABEL_51:
            sub_1D1C3BED8(v681, type metadata accessor for StaticService);
            (*(v682 + 1))(v684, v683);
            continue;
          }

          break;
        }

        v194 = v193 + *(v188 + 24);
        v195 = *v194;
        v196 = *(v194 + 16);
        if (v196 <= 2)
        {
          if (!v196)
          {
            goto LABEL_79;
          }

          if (v196 == 1)
          {
            v195 = v195;
          }

          else
          {
            v195 = v195;
          }

          goto LABEL_77;
        }

        if (v196 > 4)
        {
          if (v196 != 5 && v196 != 6)
          {
LABEL_81:
            sub_1D1C3BED8(v193, type metadata accessor for StaticCharacteristic);
            goto LABEL_51;
          }

          v195 = v195;
          goto LABEL_77;
        }

        if (v196 == 3)
        {
          v195 = v195;
          goto LABEL_77;
        }

        if ((v195 & 0x8000000000000000) == 0)
        {
LABEL_77:
          if (v195 > 1)
          {
            goto LABEL_81;
          }

          LOBYTE(v195) = v195 == 1;
LABEL_79:
          sub_1D1C3BED8(v193, type metadata accessor for StaticCharacteristic);
          sub_1D1C3BED8(v681, type metadata accessor for StaticService);
          (*(v682 + 1))(v684, v683);
          if (v195)
          {

            v666 = "ionOccupancyAlarm_Triggered";
            v667 = 0xD000000000000028;
LABEL_368:
            static String.hfLocalized(_:)(v667, v666 | 0x8000000000000000);
            return;
          }

          continue;
        }

        break;
      }

LABEL_394:
      __break(1u);
      return;
    case 81:
      v415 = *(v686 + 64);
      v682 = (v686 + 64);
      v416 = 1 << *(v686 + 32);
      v417 = -1;
      if (v416 < 64)
      {
        v417 = ~(-1 << v416);
      }

      v418 = v417 & v415;
      v680 = ((v416 + 63) >> 6);

      v419 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v420 = v681;
      if (v418)
      {
        goto LABEL_211;
      }

LABEL_213:
      while (2)
      {
        v438 = v419 + 1;
        if (__OFADD__(v419, 1))
        {
          goto LABEL_380;
        }

        if (v438 < v680)
        {
          v418 = *&v682[8 * v438];
          ++v419;
          if (v418)
          {
            v419 = v438;
            do
            {
LABEL_211:
              while (1)
              {
                v421 = __clz(__rbit64(v418));
                v418 &= v418 - 1;
                v422 = v421 | (v419 << 6);
                v423 = v686;
                v424 = *(v686 + 48);
                v425 = sub_1D1E66A7C();
                v426 = *(v425 - 8);
                (*(v426 + 16))(v420, v424 + *(v426 + 72) * v422, v425);
                v427 = *(v423 + 56);
                v428 = (type metadata accessor for StaticService(0) - 8);
                v429 = v427 + *(*v428 + 72) * v422;
                v430 = v685;
                sub_1D1C3BA30(v429, v420 + *(v685 + 48), type metadata accessor for StaticService);
                v431 = v683;
                sub_1D1741C08(v420, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v432 = *(v430 + 48);
                v433 = v684;
                v434 = v684 + v432;
                (*(v426 + 32))(v684, v431, v425);
                sub_1D1C3B520(v431 + v432, v433 + v432, type metadata accessor for StaticService);
                v688 = *(v434 + v428[34]);
                v687 = 87;
                sub_1D1CE53A4(&v687);
                v436 = v435;
                LOBYTE(v428) = v437;
                sub_1D1741A30(v433, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v420, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v428 & 1) == 0)
                {
                  break;
                }

                if (!v418)
                {
                  goto LABEL_213;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v440 = *(v679 + 2);
              v439 = *(v679 + 3);
              if (v440 >= v439 >> 1)
              {
                v679 = sub_1D177D4E8((v439 > 1), v440 + 1, 1, v679);
              }

              v441 = v679;
              *(v679 + 2) = v440 + 1;
              *&v441[8 * v440 + 32] = v436;
            }

            while (v418);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 83:
      v442 = v686 + 64;
      v443 = 1 << *(v686 + 32);
      v444 = -1;
      if (v443 < 64)
      {
        v444 = ~(-1 << v443);
      }

      v445 = v444 & *(v686 + 64);
      v446 = (v443 + 63) >> 6;

      v447 = 0;
      while (1)
      {
        if (!v445)
        {
          do
          {
            v448 = v447 + 1;
            if (__OFADD__(v447, 1))
            {
              goto LABEL_393;
            }

            if (v448 >= v446)
            {
              goto LABEL_235;
            }

            v445 = *(v442 + 8 * v448);
            ++v447;
          }

          while (!v445);
          v447 = v448;
        }

        v449 = __clz(__rbit64(v445));
        v445 &= v445 - 1;
        v450 = v449 | (v447 << 6);
        v451 = v686;
        v452 = *(v686 + 48);
        v453 = sub_1D1E66A7C();
        v683 = *(v453 - 8);
        v454 = v452 + *(v683 + 72) * v450;
        v455 = *(v683 + 16);
        v456 = v670;
        v684 = v453;
        v455(v670, v454);
        v457 = *(v451 + 56);
        v458 = (type metadata accessor for StaticService(0) - 8);
        v459 = v457 + *(*v458 + 72) * v450;
        v460 = v685;
        sub_1D1C3BA30(v459, v456 + *(v685 + 48), type metadata accessor for StaticService);
        v461 = v671;
        sub_1D1741C08(v456, v671, &qword_1EC642DB0, &unk_1D1E6F360);
        v462 = v461 + *(v460 + 48);
        v688 = *(v462 + v458[34]);
        v687 = 89;
        v695 = StaticCharacteristicsBag.int(for:)(&v687);
        v463 = v695.value;
        LOBYTE(v457) = v695.is_nil;
        sub_1D1741A30(v456, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v457)
        {
          sub_1D1C3BED8(v462, type metadata accessor for StaticService);
          (*(v683 + 8))(v461, v684);
          continue;
        }

        sub_1D1C3BED8(v462, type metadata accessor for StaticService);
        (*(v683 + 8))(v461, v684);
        if (v463 == 1)
        {

          v666 = "RoomsDescriptionMultiple";
          v667 = 0xD00000000000002BLL;
          goto LABEL_368;
        }
      }

    case 88:
      v594 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v75;
      v595 = 1 << *(v686 + 32);
      v596 = -1;
      if (v595 < 64)
      {
        v596 = ~(-1 << v595);
      }

      v597 = v596 & v594;
      v680 = ((v595 + 63) >> 6);

      v598 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v599 = v682;
      if (v597)
      {
        goto LABEL_313;
      }

LABEL_315:
      while (2)
      {
        v617 = v598 + 1;
        if (__OFADD__(v598, 1))
        {
          goto LABEL_385;
        }

        if (v617 < v680)
        {
          v597 = *(v681 + 8 * v617);
          ++v598;
          if (v597)
          {
            v598 = v617;
            do
            {
LABEL_313:
              while (1)
              {
                v600 = __clz(__rbit64(v597));
                v597 &= v597 - 1;
                v601 = v600 | (v598 << 6);
                v602 = v686;
                v603 = *(v686 + 48);
                v604 = sub_1D1E66A7C();
                v605 = *(v604 - 8);
                (*(v605 + 16))(v599, v603 + *(v605 + 72) * v601, v604);
                v606 = *(v602 + 56);
                v607 = (type metadata accessor for StaticService(0) - 8);
                v608 = v606 + *(*v607 + 72) * v601;
                v609 = v685;
                sub_1D1C3BA30(v608, v599 + *(v685 + 48), type metadata accessor for StaticService);
                v610 = v683;
                sub_1D1741C08(v599, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v611 = *(v609 + 48);
                v612 = v684;
                v613 = v684 + v611;
                (*(v605 + 32))(v684, v610, v604);
                sub_1D1C3B520(v610 + v611, v612 + v611, type metadata accessor for StaticService);
                v688 = *(v613 + v607[34]);
                v687 = 94;
                sub_1D1CE53A4(&v687);
                v615 = v614;
                LOBYTE(v607) = v616;
                sub_1D1741A30(v612, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v599, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v607 & 1) == 0)
                {
                  break;
                }

                if (!v597)
                {
                  goto LABEL_315;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v619 = *(v679 + 2);
              v618 = *(v679 + 3);
              if (v619 >= v618 >> 1)
              {
                v679 = sub_1D177D4E8((v618 > 1), v619 + 1, 1, v679);
              }

              v620 = v679;
              *(v679 + 2) = v619 + 1;
              *&v620[8 * v619 + 32] = v615;
            }

            while (v597);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 89:
      v567 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v74;
      v568 = 1 << *(v686 + 32);
      v569 = -1;
      if (v568 < 64)
      {
        v569 = ~(-1 << v568);
      }

      v570 = v569 & v567;
      v680 = ((v568 + 63) >> 6);

      v571 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v572 = v682;
      if (v570)
      {
        goto LABEL_298;
      }

LABEL_300:
      while (2)
      {
        v590 = v571 + 1;
        if (__OFADD__(v571, 1))
        {
          goto LABEL_384;
        }

        if (v590 < v680)
        {
          v570 = *(v681 + 8 * v590);
          ++v571;
          if (v570)
          {
            v571 = v590;
            do
            {
LABEL_298:
              while (1)
              {
                v573 = __clz(__rbit64(v570));
                v570 &= v570 - 1;
                v574 = v573 | (v571 << 6);
                v575 = v686;
                v576 = *(v686 + 48);
                v577 = sub_1D1E66A7C();
                v578 = *(v577 - 8);
                (*(v578 + 16))(v572, v576 + *(v578 + 72) * v574, v577);
                v579 = *(v575 + 56);
                v580 = (type metadata accessor for StaticService(0) - 8);
                v581 = v579 + *(*v580 + 72) * v574;
                v582 = v685;
                sub_1D1C3BA30(v581, v572 + *(v685 + 48), type metadata accessor for StaticService);
                v583 = v683;
                sub_1D1741C08(v572, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v584 = *(v582 + 48);
                v585 = v684;
                v586 = v684 + v584;
                (*(v578 + 32))(v684, v583, v577);
                sub_1D1C3B520(v583 + v584, v585 + v584, type metadata accessor for StaticService);
                v688 = *(v586 + v580[34]);
                v687 = 95;
                sub_1D1CE53A4(&v687);
                v588 = v587;
                LOBYTE(v580) = v589;
                sub_1D1741A30(v585, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v572, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v580 & 1) == 0)
                {
                  break;
                }

                if (!v570)
                {
                  goto LABEL_300;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v592 = *(v679 + 2);
              v591 = *(v679 + 3);
              if (v592 >= v591 >> 1)
              {
                v679 = sub_1D177D4E8((v591 > 1), v592 + 1, 1, v679);
              }

              v593 = v679;
              *(v679 + 2) = v592 + 1;
              *&v593[8 * v592 + 32] = v588;
            }

            while (v570);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 90:
      v109 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v73;
      v110 = 1 << *(v686 + 32);
      v111 = -1;
      if (v110 < 64)
      {
        v111 = ~(-1 << v110);
      }

      v112 = v111 & v109;
      v680 = ((v110 + 63) >> 6);

      v113 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v114 = v682;
      if (v112)
      {
        goto LABEL_20;
      }

LABEL_22:
      while (2)
      {
        v132 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
LABEL_373:
          __break(1u);
          goto LABEL_374;
        }

        if (v132 < v680)
        {
          v112 = *(v681 + 8 * v132);
          ++v113;
          if (v112)
          {
            v113 = v132;
            do
            {
LABEL_20:
              while (1)
              {
                v115 = __clz(__rbit64(v112));
                v112 &= v112 - 1;
                v116 = v115 | (v113 << 6);
                v117 = v686;
                v118 = *(v686 + 48);
                v119 = sub_1D1E66A7C();
                v120 = *(v119 - 8);
                (*(v120 + 16))(v114, v118 + *(v120 + 72) * v116, v119);
                v121 = *(v117 + 56);
                v122 = (type metadata accessor for StaticService(0) - 8);
                v123 = v121 + *(*v122 + 72) * v116;
                v124 = v685;
                sub_1D1C3BA30(v123, v114 + *(v685 + 48), type metadata accessor for StaticService);
                v125 = v683;
                sub_1D1741C08(v114, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v126 = *(v124 + 48);
                v127 = v684;
                v128 = v684 + v126;
                (*(v120 + 32))(v684, v125, v119);
                sub_1D1C3B520(v125 + v126, v127 + v126, type metadata accessor for StaticService);
                v688 = *(v128 + v122[34]);
                v687 = 96;
                sub_1D1CE53A4(&v687);
                v130 = v129;
                LOBYTE(v122) = v131;
                sub_1D1741A30(v127, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v114, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v112)
                {
                  goto LABEL_22;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v134 = *(v679 + 2);
              v133 = *(v679 + 3);
              if (v134 >= v133 >> 1)
              {
                v679 = sub_1D177D4E8((v133 > 1), v134 + 1, 1, v679);
              }

              v135 = v679;
              *(v679 + 2) = v134 + 1;
              *&v135[8 * v134 + 32] = v130;
            }

            while (v112);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 121:
      v245 = v686 + 64;
      v246 = 1 << *(v686 + 32);
      v247 = -1;
      if (v246 < 64)
      {
        v247 = ~(-1 << v246);
      }

      v248 = v247 & *(v686 + 64);
      v249 = (v246 + 63) >> 6;

      v250 = 0;
      while (1)
      {
        if (!v248)
        {
          do
          {
            v251 = v250 + 1;
            if (__OFADD__(v250, 1))
            {
              goto LABEL_391;
            }

            if (v251 >= v249)
            {
LABEL_235:

              return;
            }

            v248 = *(v245 + 8 * v251);
            ++v250;
          }

          while (!v248);
          v250 = v251;
        }

        v252 = __clz(__rbit64(v248));
        v248 &= v248 - 1;
        v253 = v252 | (v250 << 6);
        v254 = v686;
        v255 = *(v686 + 48);
        v256 = sub_1D1E66A7C();
        v683 = *(v256 - 8);
        v257 = v255 + *(v683 + 72) * v253;
        v258 = *(v683 + 16);
        v259 = v672;
        v684 = v256;
        v258(v672, v257);
        v260 = *(v254 + 56);
        v261 = (type metadata accessor for StaticService(0) - 8);
        v262 = v260 + *(*v261 + 72) * v253;
        v263 = v685;
        sub_1D1C3BA30(v262, v259 + *(v685 + 48), type metadata accessor for StaticService);
        v264 = v673;
        sub_1D1741C08(v259, v673, &qword_1EC642DB0, &unk_1D1E6F360);
        v265 = v264 + *(v263 + 48);
        v688 = *(v265 + v261[34]);
        v687 = 127;
        v690 = StaticCharacteristicsBag.int(for:)(&v687);
        v266 = v690.value;
        LOBYTE(v260) = v690.is_nil;
        sub_1D1741A30(v259, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v260)
        {
          sub_1D1C3BED8(v265, type metadata accessor for StaticService);
          (*(v683 + 8))(v264, v684);
          continue;
        }

        sub_1D1C3BED8(v265, type metadata accessor for StaticService);
        (*(v683 + 8))(v264, v684);
        if (v266 == 1)
        {

          v244 = "HFStatusDescriptionSmokeAlarm_Triggered";
LABEL_121:
          v666 = (v244 - 32);
          v667 = 0xD000000000000027;
          goto LABEL_368;
        }
      }

    case 129:
      v621 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v72;
      v622 = 1 << *(v686 + 32);
      v623 = -1;
      if (v622 < 64)
      {
        v623 = ~(-1 << v622);
      }

      v624 = v623 & v621;
      v680 = ((v622 + 63) >> 6);

      v625 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v626 = v682;
      if (v624)
      {
        goto LABEL_328;
      }

LABEL_330:
      while (2)
      {
        v644 = v625 + 1;
        if (__OFADD__(v625, 1))
        {
          goto LABEL_386;
        }

        if (v644 < v680)
        {
          v624 = *(v681 + 8 * v644);
          ++v625;
          if (v624)
          {
            v625 = v644;
            do
            {
LABEL_328:
              while (1)
              {
                v627 = __clz(__rbit64(v624));
                v624 &= v624 - 1;
                v628 = v627 | (v625 << 6);
                v629 = v686;
                v630 = *(v686 + 48);
                v631 = sub_1D1E66A7C();
                v632 = *(v631 - 8);
                (*(v632 + 16))(v626, v630 + *(v632 + 72) * v628, v631);
                v633 = *(v629 + 56);
                v634 = (type metadata accessor for StaticService(0) - 8);
                v635 = v633 + *(*v634 + 72) * v628;
                v636 = v685;
                sub_1D1C3BA30(v635, v626 + *(v685 + 48), type metadata accessor for StaticService);
                v637 = v683;
                sub_1D1741C08(v626, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v638 = *(v636 + 48);
                v639 = v684;
                v640 = v684 + v638;
                (*(v632 + 32))(v684, v637, v631);
                sub_1D1C3B520(v637 + v638, v639 + v638, type metadata accessor for StaticService);
                v688 = *(v640 + v634[34]);
                v687 = -121;
                sub_1D1CE53A4(&v687);
                v642 = v641;
                LOBYTE(v634) = v643;
                sub_1D1741A30(v639, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v626, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v634 & 1) == 0)
                {
                  break;
                }

                if (!v624)
                {
                  goto LABEL_330;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v646 = *(v679 + 2);
              v645 = *(v679 + 3);
              if (v646 >= v645 >> 1)
              {
                v679 = sub_1D177D4E8((v645 > 1), v646 + 1, 1, v679);
              }

              v647 = v679;
              *(v679 + 2) = v646 + 1;
              *&v647[8 * v646 + 32] = v642;
            }

            while (v624);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 163:
      v136 = *(v686 + 64);
      v681 = v686 + 64;
      v682 = v71;
      v137 = 1 << *(v686 + 32);
      v138 = -1;
      if (v137 < 64)
      {
        v138 = ~(-1 << v137);
      }

      v139 = v138 & v136;
      v680 = ((v137 + 63) >> 6);

      v140 = 0;
      v679 = MEMORY[0x1E69E7CC0];
      v141 = v682;
      if (v139)
      {
        goto LABEL_35;
      }

LABEL_37:
      while (2)
      {
        v159 = v140 + 1;
        if (__OFADD__(v140, 1))
        {
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
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
          goto LABEL_387;
        }

        if (v159 < v680)
        {
          v139 = *(v681 + 8 * v159);
          ++v140;
          if (v139)
          {
            v140 = v159;
            do
            {
LABEL_35:
              while (1)
              {
                v142 = __clz(__rbit64(v139));
                v139 &= v139 - 1;
                v143 = v142 | (v140 << 6);
                v144 = v686;
                v145 = *(v686 + 48);
                v146 = sub_1D1E66A7C();
                v147 = *(v146 - 8);
                (*(v147 + 16))(v141, v145 + *(v147 + 72) * v143, v146);
                v148 = *(v144 + 56);
                v149 = (type metadata accessor for StaticService(0) - 8);
                v150 = v148 + *(*v149 + 72) * v143;
                v151 = v685;
                sub_1D1C3BA30(v150, v141 + *(v685 + 48), type metadata accessor for StaticService);
                v152 = v683;
                sub_1D1741C08(v141, v683, &qword_1EC642DB0, &unk_1D1E6F360);
                v153 = *(v151 + 48);
                v154 = v684;
                v155 = v684 + v153;
                (*(v147 + 32))(v684, v152, v146);
                sub_1D1C3B520(v152 + v153, v154 + v153, type metadata accessor for StaticService);
                v688 = *(v155 + v149[34]);
                v687 = -87;
                sub_1D1CE53A4(&v687);
                v157 = v156;
                LOBYTE(v149) = v158;
                sub_1D1741A30(v154, &qword_1EC642DB0, &unk_1D1E6F360);
                sub_1D1741A30(v141, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v149 & 1) == 0)
                {
                  break;
                }

                if (!v139)
                {
                  goto LABEL_37;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v679 = sub_1D177D4E8(0, *(v679 + 2) + 1, 1, v679);
              }

              v161 = *(v679 + 2);
              v160 = *(v679 + 3);
              if (v161 >= v160 >> 1)
              {
                v679 = sub_1D177D4E8((v160 > 1), v161 + 1, 1, v679);
              }

              v162 = v679;
              *(v679 + 2) = v161 + 1;
              *&v162[8 * v161 + 32] = v157;
            }

            while (v139);
          }

          continue;
        }

        break;
      }

LABEL_340:

      v648 = v679;
LABEL_341:
      v649 = v648;
      v650 = 0;
LABEL_342:
      sub_1D1C3B588(v649, v650);
LABEL_371:

      return;
    default:
      return;
  }
}