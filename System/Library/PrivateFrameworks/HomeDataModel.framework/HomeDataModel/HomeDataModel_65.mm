id StateSnapshot.UpdateType.relevantHome(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v2, v16, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v28 = *v16;
      v29 = *(v16 + 1);
      v30 = v16[16];
      v39[1] = v28;
      v39[2] = v29;
      v40 = v30;
      v31 = sub_1D1C9EE9C();
      sub_1D1AC373C(v28, v29, v30);
      result = v31;
      if (v31)
      {
        v27 = v31;
        goto LABEL_16;
      }

      return result;
    case 2:
      v24 = sub_1D1778968();

      if (!v24)
      {
        return 0;
      }

      v25 = [v24 home];

      if (!v25)
      {
        return 0;
      }

      sub_1D174A5B8(&qword_1EE079C10, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
      return v25;
    case 3:
    case 10:
    case 11:
      sub_1D1CB2248(v16, type metadata accessor for StateSnapshot.UpdateType);
      return 0;
    case 4:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      goto LABEL_11;
    case 5:
LABEL_11:
      (*(v5 + 8))(v16, v4);
      return 0;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

      (*(v5 + 32))(v13, v16, v4);
      if (*(a1 + 16))
      {
        v36 = sub_1D1742188();
        if (v37)
        {
          v21 = *(*(a1 + 56) + 16 * v36);
          v38 = *(v5 + 8);
          swift_unknownObjectRetain();
          v38(v13, v4);
          return v21;
        }
      }

      (*(v5 + 8))(v13, v4);
      return 0;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);

      (*(v5 + 32))(v11, v16, v4);
      if (*(a1 + 16))
      {
        v19 = sub_1D1742188();
        if (v20)
        {
          v21 = *(*(a1 + 56) + 16 * v19);
          v22 = *(v5 + 8);
          swift_unknownObjectRetain();
          v22(v11, v4);
          return v21;
        }
      }

      (*(v5 + 8))(v11, v4);
      return 0;
    case 8:
    case 13:
      return result;
    case 9:

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2248(&v16[*(v23 + 48)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return 0;
    case 12:

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v5 + 32))(v8, &v16[*(v32 + 48)], v4);
      if (*(a1 + 16) && (v33 = sub_1D1742188(), (v34 & 1) != 0))
      {
        v21 = *(*(a1 + 56) + 16 * v33);
        v35 = *(v5 + 8);
        swift_unknownObjectRetain();
        v35(v8, v4);
        return v21;
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        return 0;
      }

    default:
      v27 = *v16;
      if (!*v16)
      {
        return 0;
      }

LABEL_16:
      sub_1D174A5B8(&qword_1EE079C10, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
      return v27;
  }
}

unint64_t StateSnapshot.UpdateType.signpostDescription.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v109 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v109 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v109 - v15;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v19 = v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v0, v19, type metadata accessor for StateSnapshot.UpdateType);
  v20 = 0x6E776F6E6B6E752ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = *v19;
      v48 = *(v19 + 1);
      v49 = v19[16];
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v116[0] = 0xD000000000000011;
      v116[1] = 0x80000001D1EC7FC0;
      v114 = &type metadata for StateSnapshot.CharacteristicUpdateType;
      v115 = sub_1D1CC3F8C();
      v111 = v47;
      v112 = v48;
      LOBYTE(v113) = v49;
      goto LABEL_15;
    case 2u:
      v33 = *v19;
      strcpy(v116, ".actionSets(");
      BYTE5(v116[1]) = 0;
      HIWORD(v116[1]) = -5120;
      v34 = &qword_1EC64CEB8;
      v35 = &qword_1D1EA2700;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CEB8, &qword_1D1EA2700);
      v36 = &unk_1EC64CEC0;
      v37 = MEMORY[0x1E69E5E68];
      goto LABEL_14;
    case 3u:
      v33 = *v19;
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v116[0] = 0xD000000000000017;
      v116[1] = 0x80000001D1EC7FA0;
      v34 = &qword_1EC64FE40;
      v35 = &qword_1D1EB0F40;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
      v36 = &unk_1EE079E28;
      v37 = MEMORY[0x1E69E6358];
LABEL_14:
      v115 = sub_1D17D8EA8(v36, v34, v35, v37);
      v111 = v33;
LABEL_15:
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v50 = sub_1D1E68FAC();
          v52 = v51;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v50 = 7104878;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v52 = 0xE300000000000000;
        }
      }

      else
      {
        v52 = 0xE100000000000000;
        v50 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v50, v52);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      return v116[0];
    case 4u:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v59 = *&v19[v58[12]];
      v60 = *&v19[v58[16]];
      v61 = *&v19[v58[20]];
      (*(v5 + 32))(v11, v19, v4);
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v116[0] = 0xD000000000000010;
      v116[1] = 0x80000001D1EC7F60;
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v62);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v59)
      {
        v63 = sub_1D1741B10(0, &qword_1EC64CEA8, 0x1E696CC70);
        v64 = sub_1D174A5B8(&qword_1EC64CEB0, &qword_1EC64CEA8, 0x1E696CC70, MEMORY[0x1E6969F88]);
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v112 = 0;
        v113 = 0;
      }

      v111 = v59;
      v114 = v63;
      v115 = v64;
      v80 = qword_1EE07B280;
      v81 = v59;
      v82 = v61;
      if (v80 != -1)
      {
        swift_once();
      }

      v83 = byte_1EE07B288;
      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v84 = sub_1D1E68FAC();
          v86 = v85;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v84 = 7104878;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v86 = 0xE300000000000000;
        }
      }

      else
      {
        v86 = 0xE100000000000000;
        v84 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v84, v86);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v60)
      {
        v87 = sub_1D1741B10(0, &qword_1EC64CE98, 0x1E696CC68);
        v88 = sub_1D174A5B8(&qword_1EC64CEA0, &qword_1EC64CE98, 0x1E696CC68, MEMORY[0x1E6969F88]);
        v89 = v60;
      }

      else
      {
        v89 = 0;
        v87 = 0;
        v88 = 0;
        v112 = 0;
        v113 = 0;
      }

      v111 = v89;
      v114 = v87;
      v115 = v88;
      if (v83)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v90 = v60;
          v91 = sub_1D1E68FAC();
          v93 = v92;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v91 = 7104878;
          v95 = v60;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v93 = 0xE300000000000000;
        }
      }

      else
      {
        v94 = v60;
        v93 = 0xE100000000000000;
        v91 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v91, v93);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v82)
      {
        v96 = sub_1D1741B10(0, &qword_1EC64CE88, 0x1E696CC60);
        v97 = sub_1D174A5B8(&qword_1EC64CE90, &qword_1EC64CE88, 0x1E696CC60, MEMORY[0x1E6969F88]);
        v98 = v82;
      }

      else
      {
        v98 = 0;
        v96 = 0;
        v97 = 0;
        v112 = 0;
        v113 = 0;
      }

      v111 = v98;
      v114 = v96;
      v115 = v97;
      if (v83)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v99 = v82;
          v100 = sub_1D1E68FAC();
          v102 = v101;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v100 = 7104878;
          v99 = v82;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v102 = 0xE300000000000000;
        }
      }

      else
      {
        v99 = v82;
        v102 = 0xE100000000000000;
        v100 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v100, v102);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);

      v20 = v116[0];
      (*(v5 + 8))(v11, v4);
      return v20;
    case 5u:
      v69 = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48)];
      (*(v5 + 32))(v14, v19, v4);
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v116[0] = 0xD000000000000018;
      v116[1] = 0x80000001D1EC7F80;
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v70 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v70);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v69 > 4)
      {
        switch(v69)
        {
          case 5:
            v72 = 0x64616F6C6E776F64;
            v71 = 0xEA00000000006465;
            goto LABEL_80;
          case 6:
            v72 = 0x6574736575716572;
            break;
          case 7:
            v72 = 0x656C6C6174736E69;
            break;
          default:
LABEL_76:
            v71 = 0xEA0000000000676ELL;
            v72 = 0x696C6C6174736E69;
            goto LABEL_80;
        }

        v71 = 0xE900000000000064;
      }

      else
      {
        if (v69 == 2)
        {
          v71 = 0xE400000000000000;
          v72 = 1701736302;
          goto LABEL_80;
        }

        if (v69 != 3)
        {
          if (v69 == 4)
          {
            v71 = 0xEB00000000676E69;
            v72 = 0x64616F6C6E776F64;
            goto LABEL_80;
          }

          goto LABEL_76;
        }

        v71 = 0xE900000000000065;
        v72 = 0x6C62616C69617661;
      }

LABEL_80:
      v114 = MEMORY[0x1E69E6158];
      v115 = MEMORY[0x1E69E61C8];
      v111 = v72;
      v112 = v71;
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v103 = sub_1D1E68FAC();
          v105 = v104;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v103 = 7104878;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v105 = 0xE300000000000000;
        }
      }

      else
      {
        v105 = 0xE100000000000000;
        v103 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v103, v105);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v20 = v116[0];
      (*(v5 + 8))(v14, v4);
      return v20;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
      (*(v5 + 32))(v16, v19, v4);
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v111 = 0x656C69666F72702ELL;
      v112 = 0xEA00000000002873;
      v53 = MEMORY[0x1E69695A8];
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v54 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v54);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      sub_1D1CB21E0(qword_1EE07DD78, v53, MEMORY[0x1E69695B8]);
      v55 = sub_1D1E6817C();
      v57 = v56;

      MEMORY[0x1D3890F70](v55, v57);
      goto LABEL_25;
    case 7u:
      v75 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
      (*(v5 + 32))(v8, v19, v4);
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v116[0] = 0xD00000000000001BLL;
      v116[1] = 0x80000001D1EC7F40;
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v76 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v76);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C0, &qword_1D1E974E0);
      v115 = sub_1D17D8EA8(&qword_1EC64CE80, &qword_1EC64A9C0, &qword_1D1E974E0, MEMORY[0x1E69E5E68]);
      v111 = v75;
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v77 = sub_1D1E68FAC();
          v79 = v78;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v77 = 7104878;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v79 = 0xE300000000000000;
        }
      }

      else
      {
        v79 = 0xE100000000000000;
        v77 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v77, v79);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v20 = v116[0];
      (*(v5 + 8))(v8, v4);
      return v20;
    case 8u:
      return 0x6F687370616E732ELL;
    case 9u:

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2178(&v19[*(v73 + 48)], v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v111 = 0xD00000000000001CLL;
      v112 = 0x80000001D1EC7F20;
      v74 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter();
      MEMORY[0x1D3890F70](v74);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v20 = v111;
      sub_1D1CB2248(v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return v20;
    case 0xAu:
      v29 = *(v19 + 1);

      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v111 = 0xD000000000000022;
      v112 = 0x80000001D1EC7EF0;
      v109[0] = v29;
      v30 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
      v32 = v31;

      MEMORY[0x1D3890F70](v30, v32);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      return v111;
    case 0xBu:
      v38 = v19[8];
      v39 = v19[9];
      v41 = *(v19 + 2);
      v40 = *(v19 + 3);
      v42 = *(v19 + 4);
      v43 = v19[40];

      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v109[0] = 0xD000000000000014;
      v109[1] = 0x80000001D1EC7ED0;
      LOBYTE(v111) = v38;
      BYTE1(v111) = v39;
      v112 = v41;
      v113 = v40;
      v114 = v42;
      LOBYTE(v115) = v43;
      v44 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
      v46 = v45;

      MEMORY[0x1D3890F70](v44, v46);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      return v109[0];
    case 0xCu:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v5 + 32))(v16, &v19[*(v65 + 48)], v4);
      v111 = 0;
      v112 = 0xE000000000000000;
      sub_1D1E6884C();

      v111 = 0x4472657474616D2ELL;
      v112 = 0xEF28736563697665;
      type metadata accessor for StaticMatterDevice(0);
      v66 = MEMORY[0x1E69695A8];
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v67 = sub_1D1E6762C();
      MEMORY[0x1D3890F70](v67);

      MEMORY[0x1D3890F70](0x4449656D6F68202CLL, 0xEA0000000000203ALL);
      sub_1D1CB21E0(&qword_1EE07B250, v66, MEMORY[0x1E69695E0]);
      v68 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v68);
LABEL_25:

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v20 = v111;
      (*(v5 + 8))(v16, v4);
      return v20;
    case 0xDu:
      return v20;
    default:
      v21 = *v19;
      if (!*v19)
      {
        return 0x6C696E286C6C612ELL;
      }

      v116[0] = 0x286C6C612ELL;
      v116[1] = 0xE500000000000000;
      v22 = [v21 name];
      v23 = sub_1D1E6781C();
      v25 = v24;

      v114 = MEMORY[0x1E69E6158];
      v115 = MEMORY[0x1E69E61C8];
      v111 = v23;
      v112 = v25;
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v111, v109, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v110)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          v26 = sub_1D1E68FAC();
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          v26 = 7104878;
          sub_1D1741A30(v109, &qword_1EC64AD00, &unk_1D1EA26F0);
          v28 = 0xE300000000000000;
        }
      }

      else
      {
        v28 = 0xE100000000000000;
        v26 = 95;
      }

      sub_1D1741A30(&v111, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v26, v28);

      MEMORY[0x1D3890F70](47, 0xE100000000000000);
      v107 = [v21 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v108 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v108);

      (*(v5 + 8))(v16, v4);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);

      return v116[0];
  }
}

void StateSnapshot.UpdateType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v2, v18, type metadata accessor for StateSnapshot.UpdateType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = *v18;
      v48 = *(v18 + 1);
      v50 = v18[16];
      v51 = v61;
      MEMORY[0x1D3892850](1);
      if (v50 <= 1)
      {
        if (v50)
        {
          MEMORY[0x1D3892850](1);
          sub_1D185FD68(v51, v49);
          sub_1D1AC373C(v49, v48, 1u);
        }

        else
        {
          MEMORY[0x1D3892850](0);
          sub_1D176EF68(v51, v49);
          sub_1D1AC373C(v49, v48, 0);
        }
      }

      else if (v50 == 2)
      {
        MEMORY[0x1D3892850](2);
        sub_1D185FB54(v51, v49);
        sub_1D1AC373C(v49, v48, 2u);
      }

      else if (v50 == 3)
      {
        MEMORY[0x1D3892850](3);
        sub_1D185FB54(v51, v49);
        sub_1D1AC373C(v49, v48, 3u);
      }

      else
      {
        MEMORY[0x1D3892850](4);
        sub_1D185FB54(v51, v49);
        sub_1D185F6BC(v51, v48);
        sub_1D1AC373C(v49, v48, 4u);
      }

      return;
    case 2u:
      v39 = *v18;
      v40 = v61;
      MEMORY[0x1D3892850](2);
      sub_1D1860410(v40, v39);
      goto LABEL_16;
    case 3u:
      v41 = *v18;
      v42 = v61;
      MEMORY[0x1D3892850](3);
      sub_1D1770A8C(v42, v41);
LABEL_16:

      return;
    case 4u:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v26 = *&v18[v25[12]];
      v27 = *&v18[v25[16]];
      v28 = *&v18[v25[20]];
      (*(v7 + 32))(v15, v18, v6);
      MEMORY[0x1D3892850](4);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      if (v26)
      {
        sub_1D1E6922C();
        v29 = v26;
        sub_1D1E6850C();

        if (v27)
        {
          goto LABEL_9;
        }

LABEL_36:
        sub_1D1E6922C();
        if (v28)
        {
          goto LABEL_10;
        }

        goto LABEL_37;
      }

      sub_1D1E6922C();
      if (!v27)
      {
        goto LABEL_36;
      }

LABEL_9:
      sub_1D1E6922C();
      v30 = v27;
      sub_1D1E6850C();

      if (v28)
      {
LABEL_10:
        sub_1D1E6922C();
        v31 = v28;
        sub_1D1E6850C();

        (*(v7 + 8))(v15, v6);
        return;
      }

LABEL_37:
      sub_1D1E6922C();

      (*(v7 + 8))(v15, v6);
      return;
    case 5u:
      v52 = v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48)];
      (*(v7 + 32))(v13, v18, v6);
      MEMORY[0x1D3892850](5);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      if ((v52 - 2) >= 6u)
      {
        MEMORY[0x1D3892850](5);
        v53 = v52 & 1;
      }

      else
      {
        v53 = qword_1D1EA2FB8[(v52 - 2)];
      }

      MEMORY[0x1D3892850](v53);
      (*(v7 + 8))(v13, v6);
      return;
    case 6u:
      v54 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];
      v44 = v7;
      v55 = *(v7 + 32);
      v46 = v6;
      v55(v10, v18, v6);
      v56 = v61;
      MEMORY[0x1D3892850](6);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D176D4E8(v56, v54);
      goto LABEL_26;
    case 7u:
      v43 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
      v44 = v7;
      v45 = *(v7 + 32);
      v46 = v6;
      v45(v10, v18, v6);
      v47 = v61;
      MEMORY[0x1D3892850](7);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D185FF70(v47, v43);
LABEL_26:

      (*(v44 + 8))(v10, v46);
      return;
    case 8u:
      MEMORY[0x1D3892850](9);
      sub_1D1E6922C();
      return;
    case 9u:
      v35 = *v18;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2178(&v18[*(v36 + 48)], v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v37 = v61;
      MEMORY[0x1D3892850](10);
      sub_1D1E6850C();
      MEMORY[0x1D3892850](*v5);
      v38 = v5[1];
      sub_1D1E6922C();
      if (v38)
      {
        sub_1D176FF94(v37, v38);
      }

      sub_1D1E66C5C();
      sub_1D1CB21E0(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
      sub_1D1E676EC();
      sub_1D1E6922C();

      sub_1D1CB2248(v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return;
    case 0xAu:
      v21 = *v18;
      v57 = *(v18 + 1);
      v58 = v61;
      MEMORY[0x1D3892850](11);
      sub_1D1E6850C();
      sub_1D176FDE8(v58, v57);
      goto LABEL_44;
    case 0xBu:
      v21 = *v18;
      v22 = *(v18 + 3);
      v23 = *(v18 + 4);
      v24 = v18[40];
      MEMORY[0x1D3892850](12);
      sub_1D1E6850C();
      sub_1D1E6922C();
      sub_1D1E6922C();
      if (v22 && (sub_1D1E6922C(), sub_1D1E678EC(), (v24 & 1) == 0))
      {
        sub_1D1E6922C();
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v59 = v23;
        }

        else
        {
          v59 = 0;
        }

        MEMORY[0x1D3892890](v59);
      }

      else
      {
        sub_1D1E6922C();
      }

LABEL_44:

      return;
    case 0xCu:
      v32 = *v18;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v7 + 32))(v10, &v18[*(v33 + 48)], v6);
      v34 = v61;
      MEMORY[0x1D3892850](13);
      sub_1D1858EFC(v34, v32);

      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*(v7 + 8))(v10, v6);
      return;
    case 0xDu:
      MEMORY[0x1D3892850](8);
      return;
    default:
      v19 = *v18;
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
      if (v19)
      {
        v20 = v19;
        sub_1D1E6850C();
      }

      return;
  }
}

uint64_t sub_1D1CA2B8C(uint64_t (*a1)(void *))
{
  sub_1D1E6920C();
  a1(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CA2BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D1E6920C();
  a3(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CA2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CA2C9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v191 = a3;
  v203 = a2;
  v183 = a4;
  v224 = sub_1D1E66A7C();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for StaticZone(0);
  v207 = *(v215 - 8);
  v6 = MEMORY[0x1EEE9AC00](v215);
  v214 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v206 = &v173 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v213 = &v173 - v10;
  v198 = type metadata accessor for StaticRoom(0);
  v200 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v179 = &v173 - v12;
  v185 = type metadata accessor for StaticHome(0);
  v13 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v173 - v19;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v21 = &v173 - v20;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v24 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(a1, v24, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v234 = 0;
    v233 = 0u;
    v232 = 0u;
    sub_1D1CB2248(v24, type metadata accessor for StateSnapshot.UpdateType);
    goto LABEL_10;
  }

  v26 = *v24;
  v25 = *(v24 + 1);
  v27 = v24[16];
  if (v27 > 1)
  {
    v28 = &qword_1EC64AE60;
    v29 = &unk_1D1EA2F70;
    *(&v233 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE60, &unk_1D1EA2F70);
    v30 = &unk_1EC64CF30;
LABEL_8:
    v31 = MEMORY[0x1E69E5D98];
    goto LABEL_9;
  }

  if (v27)
  {
    v28 = &qword_1EC64AE70;
    v29 = &qword_1D1E98EE0;
    *(&v233 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE70, &qword_1D1E98EE0);
    v30 = &unk_1EC64CF38;
    goto LABEL_8;
  }

  v28 = &qword_1EC64AE80;
  v29 = &unk_1D1EA2F80;
  *(&v233 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE80, &unk_1D1EA2F80);
  v30 = &unk_1EC64CF40;
  v31 = MEMORY[0x1E69E6518];
LABEL_9:
  v234 = sub_1D17D8EA8(v30, v28, v29, v31);
  *&v232 = v26;

  sub_1D16EEE20(&v232, &v235);
  sub_1D1AC373C(v26, v25, v27);
  v32 = *(&v236 + 1);
  v33 = v237;
  v34 = __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
  *(&v233 + 1) = v32;
  v234 = v33[1];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v232);
  (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v34, v32);
  __swift_destroy_boxed_opaque_existential_1(&v235);
LABEL_10:
  v235 = v232;
  v236 = v233;
  v237 = v234;
  if (*(&v233 + 1))
  {
    sub_1D17419CC(&v235, &v229);
    if (*(&v230 + 1))
    {
      v175 = v18;
      v176 = v13;
      sub_1D16EEE20(&v229, &v232);
      v36 = v191;
      v37 = *v191;

      v38 = a1;
      v39 = sub_1D18C211C(&unk_1F4D5FBC8, v37);
      sub_1D1CC704C(&unk_1F4D5FBE8);
      v40 = type metadata accessor for StateSnapshot(0);
      v41 = *(v36 + v40[8]);
      v228 = *(v36 + v40[15]);
      *&v229 = v41;
      v220 = v234;
      v42 = __swift_project_boxed_opaque_existential_1(&v232, *(&v233 + 1));
      v219 = &v173;
      MEMORY[0x1EEE9AC00](v42);
      *(&v173 - 6) = v36;
      *(&v173 - 5) = v38;
      v218 = v38;
      *(&v173 - 4) = v203;
      *(&v173 - 3) = v39;
      *(&v173 - 2) = &v229;
      *(&v173 - 1) = &v228;

      v43 = 0;
      sub_1D1E67ADC();
      v44 = *(v36 + v40[9]);
      v45 = v228;
      v182 = v40;
      v46 = v39;
      v47 = *(v36 + v40[12]);
      v48 = sub_1D1CC8FBC(v39);
      v210 = v45;
      v174 = v39;
      v197 = v47;
      if (v48)
      {
        v49 = v203;
        v50 = [v203 actionSets];
        sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
        v51 = sub_1D1E67C1C();

        MEMORY[0x1EEE9AC00](v52);
        v53 = v218;
        *(&v173 - 6) = v46;
        *(&v173 - 5) = v53;
        *(&v173 - 4) = v44;
        *(&v173 - 3) = v45;
        *(&v173 - 2) = v47;
        *(&v173 - 1) = v49;
        v54 = sub_1D178701C(sub_1D1CC7720, (&v173 - 8), v51);

        v55 = v45;
        v56 = v54[2];
        if (v56)
        {
          v220 = 0;
          v227 = MEMORY[0x1E69E7CC0];
          sub_1D178D0D4(0, v56, 0);
          v57 = v227;
          v58 = *(type metadata accessor for StaticActionSet(0) - 8);
          v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v219 = v54;
          v60 = v54 + v59;
          v61 = *(v58 + 72);
          v62 = (v223 + 16);
          do
          {
            v63 = *(v222 + 48);
            sub_1D1CB2110(v60, &v21[v63], type metadata accessor for StaticActionSet);
            (*v62)(v21, &v21[v63], v224);
            v227 = v57;
            v65 = *(v57 + 16);
            v64 = *(v57 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_1D178D0D4((v64 > 1), v65 + 1, 1);
              v57 = v227;
            }

            *(v57 + 16) = v65 + 1;
            sub_1D1741A90(v21, v57 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v65, &qword_1EC643710, &unk_1D1EA2630);
            v60 += v61;
            --v56;
          }

          while (v56);

          v45 = v210;
          v43 = v220;
        }

        else
        {

          v57 = MEMORY[0x1E69E7CC0];
          v45 = v55;
        }

        v68 = v185;
        if (*(v57 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
          v69 = sub_1D1E68BCC();
        }

        else
        {
          v69 = MEMORY[0x1E69E7CC8];
        }

        v227 = v69;
        sub_1D1CB961C(v57, 1, &v227);
        if (v43)
        {
          goto LABEL_106;
        }

        v196 = v227;
      }

      else
      {
        v196 = sub_1D18D50D4(MEMORY[0x1E69E7CC0]);
        v68 = v185;
      }

      v70 = v182;
      v71 = v191;
      v72 = v191 + v182[5];
      v73 = *(v68 + 44);
      LOBYTE(v227) = *(v72 + v73);
      v74 = v203;
      v194 = v229;
      v193 = sub_1D1B7DCCC(v203, &v227, v229);
      v173 = v72;
      LOBYTE(v227) = *(v72 + v73);
      v192 = sub_1D1C4CFD8(v74, &v227, v45);
      v195 = *(v71 + v70[11]);
      v75 = &selRef_addZoneWithName_completionHandler_;
      v76 = [v74 rooms];
      v209 = sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v77 = sub_1D1E67C1C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73FA0;
      *(inited + 32) = [v74 roomForEntireHome];
      v227 = v77;
      sub_1D17A3D24(inited);
      v79 = v227;
      if (v227 >> 62)
      {
LABEL_87:
        v80 = sub_1D1E6873C();
        if (v80)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v80 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
LABEL_33:
          v227 = MEMORY[0x1E69E7CC0];
          sub_1D178D1D4(0, v80 & ~(v80 >> 63), 0);
          if (v80 < 0)
          {
            __break(1u);
            goto LABEL_106;
          }

          v189 = v80;
          v202 = v227;
          v188 = sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
          v81 = 0;
          v187 = "showPredictedScenesOnDashboard";
          v186 = "erStrings_roomActionSets";
          v190 = v79 & 0xC000000000000001;
          v178 = v79 & 0xFFFFFFFFFFFFFF8;
          v184 = v79;
          v177 = (v79 + 32);
          v222 = v223 + 32;
          v79 = v203;
          do
          {
            if (__OFADD__(v81, 1))
            {
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v201 = v81 + 1;
            if (v190)
            {
              v82 = MEMORY[0x1D3891EF0]();
            }

            else
            {
              if (v81 >= *(v178 + 16))
              {
                goto LABEL_86;
              }

              v82 = v177[v81];
            }

            v219 = v82;
            v83 = [v79 zones];
            sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
            v84 = sub_1D1E67C1C();

            if (v84 >> 62)
            {
              v85 = sub_1D1E6873C();
              if (v85)
              {
LABEL_42:
                v86 = 0;
                v218 = v84 & 0xC000000000000001;
                v217 = v84 & 0xFFFFFFFFFFFFFF8;
                v216 = (v84 + 32);
                v220 = MEMORY[0x1E69E7CC0];
                v208 = v85;
                while (1)
                {
                  if (v218)
                  {
                    v87 = MEMORY[0x1D3891EF0](v86, v84);
                    v88 = __OFADD__(v86, 1);
                    v89 = v86 + 1;
                    if (v88)
                    {
                      goto LABEL_83;
                    }
                  }

                  else
                  {
                    if (v86 >= *(v217 + 16))
                    {
                      goto LABEL_84;
                    }

                    v87 = v216[v86];
                    v88 = __OFADD__(v86, 1);
                    v89 = v86 + 1;
                    if (v88)
                    {
LABEL_83:
                      __break(1u);
LABEL_84:
                      __break(1u);
                      goto LABEL_85;
                    }
                  }

                  v221 = v89;
                  v90 = v87;
                  v91 = [v87 v75[6]];
                  v92 = sub_1D1E67C1C();

                  v79 = &v173;
                  v226 = v219;
                  MEMORY[0x1EEE9AC00](v93);
                  *(&v173 - 2) = &v226;
                  LOBYTE(v91) = sub_1D18B8754(sub_1D1CC7778, (&v173 - 4), v92);

                  if (v91)
                  {
                    v94 = [v90 uniqueIdentifier];
                    v95 = v214;
                    sub_1D1E66A5C();

                    v96 = [v90 name];
                    v97 = sub_1D1E6781C();
                    v99 = v98;

                    v100 = &v95[*(v215 + 20)];
                    *v100 = v97;
                    v100[1] = v99;
                    v101 = v75[6];
                    v211 = v90;
                    v102 = [v90 v101];
                    v103 = sub_1D1E67C1C();

                    v212 = v43;
                    if (v103 >> 62)
                    {
                      v104 = sub_1D1E6873C();
                      v43 = v84;
                      if (v104)
                      {
LABEL_51:
                        v105 = 0;
                        v106 = MEMORY[0x1E69E7CC0];
                        while (1)
                        {
                          if ((v103 & 0xC000000000000001) != 0)
                          {
                            v107 = MEMORY[0x1D3891EF0](v105, v103);
                          }

                          else
                          {
                            if (v105 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_80;
                            }

                            v107 = *(v103 + 8 * v105 + 32);
                          }

                          v108 = v107;
                          v109 = v105 + 1;
                          if (__OFADD__(v105, 1))
                          {
                            break;
                          }

                          v110 = [v107 uniqueIdentifier];
                          sub_1D1E66A5C();

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v106 = sub_1D177D0AC(0, v106[2] + 1, 1, v106);
                          }

                          v112 = v106[2];
                          v111 = v106[3];
                          if (v112 >= v111 >> 1)
                          {
                            v106 = sub_1D177D0AC((v111 > 1), v112 + 1, 1, v106);
                          }

                          v106[2] = v112 + 1;
                          (*(v223 + 32))(v106 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v112, v225, v224);
                          ++v105;
                          if (v109 == v104)
                          {
                            goto LABEL_68;
                          }
                        }

                        __break(1u);
LABEL_80:
                        __break(1u);
                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v43 = v84;
                      if (v104)
                      {
                        goto LABEL_51;
                      }
                    }

                    v106 = MEMORY[0x1E69E7CC0];
LABEL_68:

                    v113 = v214;
                    *&v214[*(v215 + 24)] = v106;
                    v114 = v206;
                    sub_1D1CB2178(v113, v206, type metadata accessor for StaticZone);
                    sub_1D1CB2178(v114, v213, type metadata accessor for StaticZone);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v45 = v210;
                    v84 = v43;
                    v85 = v208;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v220 = sub_1D177D7A4(0, v220[2] + 1, 1, v220);
                    }

                    v75 = &selRef_addZoneWithName_completionHandler_;
                    v43 = v212;
                    v86 = v221;
                    v79 = v220[2];
                    v116 = v220[3];
                    if (v79 >= v116 >> 1)
                    {
                      v220 = sub_1D177D7A4((v116 > 1), v79 + 1, 1, v220);
                    }

                    v117 = v220;
                    v220[2] = v79 + 1;
                    sub_1D1CB2178(v213, v117 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v79, type metadata accessor for StaticZone);
                  }

                  else
                  {

                    v86 = v221;
                  }

                  if (v86 == v85)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v85)
              {
                goto LABEL_42;
              }
            }

            v220 = MEMORY[0x1E69E7CC0];
LABEL_75:

            v221 = sub_1D17843EC(v220);

            v118 = v219;
            v220 = sub_1D1CBAA28(v194, v118, sub_1D1CB9E24, sub_1D1CB9E24);

            v119 = v118;
            v219 = sub_1D1CBAA28(v196, v119, sub_1D1CBA338, sub_1D1CBA338);

            v120 = v119;
            v218 = sub_1D1CBAA28(v193, v120, sub_1D1CBABEC, sub_1D1CBABEC);

            v121 = v120;
            v217 = sub_1D1CBAA28(v195, v121, sub_1D1CBB2DC, sub_1D1CBB2DC);

            v122 = v121;
            v216 = sub_1D1CBAA28(v197, v122, sub_1D1CBB7F0, sub_1D1CBB7F0);

            v123 = v122;
            v212 = sub_1D1CBAA28(v192, v123, sub_1D1CBBD04, sub_1D1CBBD04);

            v124 = v123;
            v211 = sub_1D1CBAA28(v45, v124, sub_1D1CBC3F4, sub_1D1CBC3F4);

            v125 = [v124 uniqueIdentifier];
            v126 = v199;
            sub_1D1E66A5C();

            v127 = [v124 name];
            v128 = sub_1D1E6781C();
            v208 = v129;

            v130 = v198;
            sub_1D18B1B7C(&v126[*(v198 + 24)]);
            v131 = v203;
            v132 = [v203 roomForEntireHome];
            v133 = sub_1D1E684FC();

            v134 = [v131 uniqueIdentifier];
            sub_1D1E66A5C();

            v135 = sub_1D18AF4CC();
            v136 = sub_1D18AF4CC();
            v137 = sub_1D18B13F4();

            v138 = v126;
            v139 = &v126[v130[5]];
            v140 = v208;
            *v139 = v128;
            v139[1] = v140;
            v126[v130[7]] = v133 & 1;
            *&v126[v130[8]] = v221;
            *&v126[v130[10]] = v220;
            *&v126[v130[11]] = v219;
            *&v126[v130[12]] = v218;
            *&v126[v130[13]] = v217;
            *&v126[v130[14]] = v216;
            *&v126[v130[15]] = v212;
            *&v126[v130[16]] = v211;
            *&v126[v130[17]] = v135;
            *&v126[v130[18]] = v136;
            *&v126[v130[19]] = v137;
            v141 = v202;
            v227 = v202;
            v143 = *(v202 + 16);
            v142 = *(v202 + 24);
            if (v143 >= v142 >> 1)
            {
              sub_1D178D1D4((v142 > 1), v143 + 1, 1);
              v138 = v199;
              v141 = v227;
            }

            *(v141 + 16) = v143 + 1;
            v144 = (*(v200 + 80) + 32) & ~*(v200 + 80);
            v202 = v141;
            sub_1D1CB2178(v138, v141 + v144 + *(v200 + 72) * v143, type metadata accessor for StaticRoom);
            v81 = v201;
            v79 = v203;
            v45 = v210;
            v75 = &selRef_addZoneWithName_completionHandler_;
          }

          while (v201 != v189);
LABEL_81:

          v145 = v202;
          v146 = *(v202 + 16);
          if (v146)
          {
            goto LABEL_89;
          }

          goto LABEL_82;
        }
      }

      v145 = MEMORY[0x1E69E7CC0];
      v146 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v146)
      {
LABEL_89:
        v227 = MEMORY[0x1E69E7CC0];
        sub_1D178D194(0, v146, 0);
        v147 = v227;
        v148 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v202 = v145;
        v149 = v145 + v148;
        v150 = *(v200 + 72);
        v151 = (v223 + 16);
        v152 = v179;
        do
        {
          v153 = *(v205 + 48);
          sub_1D1CB2110(v149, v152 + v153, type metadata accessor for StaticRoom);
          (*v151)(v152, v152 + v153, v224);
          v227 = v147;
          v155 = *(v147 + 16);
          v154 = *(v147 + 24);
          if (v155 >= v154 >> 1)
          {
            sub_1D178D194((v154 > 1), v155 + 1, 1);
            v152 = v179;
            v147 = v227;
          }

          *(v147 + 16) = v155 + 1;
          sub_1D1741A90(v152, v147 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v155, &qword_1EC643740, &qword_1D1E71E98);
          v149 += v150;
          --v146;
        }

        while (v146);

LABEL_94:
        v156 = v185;
        if (*(v147 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
          v157 = sub_1D1E68BCC();
        }

        else
        {
          v157 = MEMORY[0x1E69E7CC8];
        }

        v158 = v181;
        v227 = v157;
        sub_1D1CB9A20(v147, 1, &v227);
        if (!v43)
        {

          if (*(&v236 + 1))
          {
            __swift_destroy_boxed_opaque_existential_1(&v235);
          }

          v225 = v227;
          v159 = v176;
          v160 = v180;
          (*(v176 + 56))(v180, 1, 1, v156);
          v161 = v175;
          sub_1D1741A90(v160, v175, &qword_1EC64CCB0, &qword_1D1EA2640);
          v162 = *(v159 + 48);
          if (v162(v161, 1, v156) == 1)
          {
            sub_1D1CB2110(v173, v158, type metadata accessor for StaticHome);
            v163 = v162(v161, 1, v156) == 1;
            v164 = v158;
            if (!v163)
            {
              sub_1D1741A30(v161, &qword_1EC64CCB0, &qword_1D1EA2640);
              v164 = v158;
            }
          }

          else
          {
            sub_1D1CB2178(v161, v158, type metadata accessor for StaticHome);
            v164 = v158;
          }

          v165 = v182;
          v166 = *(v191 + v182[6]);
          v167 = *(v191 + v182[7]);
          v168 = *(v191 + v182[16]);
          v169 = *(v191 + v182[17]);
          v170 = *(v191 + v182[18]);
          v171 = *(v191 + v182[19]);
          v172 = v183;
          *v183 = v174;
          sub_1D1CB2178(v164, v172 + v165[5], type metadata accessor for StaticHome);
          *(v172 + v165[6]) = v166;
          *(v172 + v165[7]) = v167;
          *(v172 + v165[8]) = v194;
          *(v172 + v165[9]) = v196;
          *(v172 + v165[10]) = v193;
          *(v172 + v165[11]) = v195;
          *(v172 + v165[12]) = v197;
          *(v172 + v165[13]) = v225;
          *(v172 + v165[14]) = v192;
          *(v172 + v165[15]) = v210;
          *(v172 + v165[16]) = v168;
          *(v172 + v165[17]) = v169;
          *(v172 + v165[18]) = v170;
          *(v172 + v165[19]) = v171;
          (*(*(v165 - 1) + 56))(v172, 0, 1, v165);

          return __swift_destroy_boxed_opaque_existential_1(&v232);
        }

LABEL_106:

        __break(1u);
        return result;
      }

LABEL_82:

      v147 = MEMORY[0x1E69E7CC0];
      goto LABEL_94;
    }
  }

  else
  {
    v229 = v235;
    v230 = v236;
    v231 = v237;
  }

  if (*(&v236 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v235);
    if (*(&v230 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v229);
    }
  }

  v66 = type metadata accessor for StateSnapshot(0);
  return (*(*(v66 - 8) + 56))(v183, 1, 1, v66);
}

void sub_1D1CA49F8(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v70 = a1;
  v76 = a4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v6 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = v66 - v7;
  v9 = type metadata accessor for StaticHome(0);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v66 - v15;
  v16 = type metadata accessor for StateSnapshot(0);
  v17 = *(a3 + v16[9]);
  v18 = *(a3 + v16[15]);
  v19 = *(a3 + v16[12]);
  v20 = *a3;
  v21 = sub_1D1CC8FBC(*a3);
  v74 = v19;
  v75 = v18;
  v73 = v20;
  if (v21)
  {
    v67 = v11;
    v68 = a3;
    v22 = v19;
    v23 = [a2 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v24 = v18;
    v25 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v26);
    v27 = v70;
    v66[-6] = v20;
    v66[-5] = v27;
    v66[-4] = v17;
    v66[-3] = v24;
    v66[-2] = v22;
    v66[-1] = a2;
    v28 = 0;
    v29 = sub_1D178701C(sub_1D1CC7720, &v66[-8], v25);

    v30 = v29[2];
    if (v30)
    {
      v70 = 0;
      v79 = MEMORY[0x1E69E7CC0];
      sub_1D178D0D4(0, v30, 0);
      v31 = v79;
      v32 = *(type metadata accessor for StaticActionSet(0) - 8);
      v33 = *(v32 + 80);
      v66[1] = v29;
      v34 = v29 + ((v33 + 32) & ~v33);
      v35 = *(v32 + 72);
      v36 = v69;
      do
      {
        v37 = *(v36 + 48);
        sub_1D1CB2110(v34, &v8[v37], type metadata accessor for StaticActionSet);
        v38 = sub_1D1E66A7C();
        (*(*(v38 - 8) + 16))(v8, &v8[v37], v38);
        v79 = v31;
        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D178D0D4((v39 > 1), v40 + 1, 1);
          v36 = v69;
          v31 = v79;
        }

        *(v31 + 16) = v40 + 1;
        sub_1D1741A90(v8, v31 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v40, &qword_1EC643710, &unk_1D1EA2630);
        v34 += v35;
        --v30;
      }

      while (v30);

      v28 = v70;
    }

    else
    {

      v31 = MEMORY[0x1E69E7CC0];
    }

    v11 = v67;
    v41 = v77;
    v42 = v72;
    if (*(v31 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
      v43 = sub_1D1E68BCC();
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC8];
    }

    v79 = v43;
    sub_1D1CB961C(v31, 1, &v79);
    if (v28)
    {

      __break(1u);
      return;
    }

    v70 = v79;
    a3 = v68;
  }

  else
  {
    v70 = sub_1D18D50D4(MEMORY[0x1E69E7CC0]);
    v41 = v77;
    v42 = v72;
  }

  v44 = v71;
  v45 = v78;
  (*(v41 + 56))(v71, 1, 1, v78);
  sub_1D1741A90(v44, v42, &qword_1EC64CCB0, &qword_1D1EA2640);
  v46 = *(v41 + 48);
  v47 = v46(v42, 1, v45);
  v48 = v73;
  if (v47 == 1)
  {
    sub_1D1CB2110(a3 + v16[5], v11, type metadata accessor for StaticHome);
    v49 = v46(v42, 1, v45);

    v50 = v48;
    v51 = v11;
    if (v49 != 1)
    {
      sub_1D1741A30(v42, &qword_1EC64CCB0, &qword_1D1EA2640);
      v50 = v48;
      v51 = v11;
    }
  }

  else
  {
    sub_1D1CB2178(v42, v11, type metadata accessor for StaticHome);

    v50 = v48;
    v51 = v11;
  }

  v52 = v16[7];
  v69 = *(a3 + v16[6]);
  v53 = v69;
  v55 = *(a3 + v16[8]);
  v71 = *(a3 + v52);
  v54 = v71;
  v72 = v55;
  v56 = *(a3 + v16[10]);
  v57 = *(a3 + v16[11]);
  v58 = *(a3 + v16[13]);
  v59 = *(a3 + v16[16]);
  v60 = *(a3 + v16[17]);
  v77 = *(a3 + v16[14]);
  v78 = v60;
  v61 = v16[19];
  v68 = *(a3 + v16[18]);
  v62 = *(a3 + v61);
  v63 = v76;
  *v76 = v50;
  sub_1D1CB2178(v51, v63 + v16[5], type metadata accessor for StaticHome);
  *(v63 + v16[6]) = v53;
  *(v63 + v16[7]) = v54;
  *(v63 + v16[8]) = v55;
  *(v63 + v16[9]) = v70;
  *(v63 + v16[10]) = v56;
  *(v63 + v16[11]) = v57;
  v64 = v75;
  *(v63 + v16[12]) = v74;
  *(v63 + v16[13]) = v58;
  v65 = v78;
  *(v63 + v16[14]) = v77;
  *(v63 + v16[15]) = v64;
  *(v63 + v16[16]) = v59;
  *(v63 + v16[17]) = v65;
  *(v63 + v16[18]) = v68;
  *(v63 + v16[19]) = v62;
  (*(*(v16 - 1) + 56))(v63, 0, 1, v16);
}

double sub_1D1CA519C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v75 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - v6;
  v8 = type metadata accessor for StaticUserActionPrediction(0);
  v79 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - v12;
  v14 = type metadata accessor for StaticHome(0);
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v72 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v66 - v20;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1CB2110(a1, v23, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v24 = *v23;
    if (*v23 >> 62)
    {
      goto LABEL_25;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = a3;
    for (i = v16; v25; i = v16)
    {
      v26 = 0;
      v77 = v24 & 0xFFFFFFFFFFFFFF8;
      v78 = v24 & 0xC000000000000001;
      v16 = MEMORY[0x1E69E7CC0];
      v76 = v25;
      while (1)
      {
        if (v78)
        {
          v27 = v24;
          v24 = MEMORY[0x1D3891EF0](v26);
        }

        else
        {
          if (v26 >= *(v77 + 16))
          {
            goto LABEL_24;
          }

          v27 = v24;
          v24 = *(v24 + 8 * v26 + 32);
        }

        v28 = v24;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v30 = [v24 predictionTargetUUID];
        sub_1D1E66A5C();

        [v28 predictionScore];
        *&v11[v8[5]] = v31;
        v32 = [v28 targetServiceUUID];
        if (v32)
        {
          v33 = v32;
          sub_1D1E66A5C();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = sub_1D1E66A7C();
        (*(*(v35 - 8) + 56))(v7, v34, 1, v35);
        sub_1D1741A90(v7, &v11[v8[6]], &qword_1EC642590, qword_1D1E71260);
        v36 = [v28 predictionType];

        if (v36 >= 5)
        {
          v37 = 0;
        }

        else
        {
          v37 = v36;
        }

        v11[v8[7]] = v37;
        sub_1D1CB2178(v11, v13, type metadata accessor for StaticUserActionPrediction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D7CC(0, v16[2] + 1, 1, v16);
        }

        a3 = v16[2];
        v38 = v16[3];
        if (a3 >= v38 >> 1)
        {
          v16 = sub_1D177D7CC((v38 > 1), a3 + 1, 1, v16);
        }

        v16[2] = a3 + 1;
        sub_1D1CB2178(v13, v16 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * a3, type metadata accessor for StaticUserActionPrediction);
        ++v26;
        v24 = v27;
        if (v29 == v76)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v41 = v24;
      v25 = sub_1D1E6873C();
      v24 = v41;
      v69 = a3;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v43 = v73;
    v42 = v74;
    v44 = v71;
    (*(v73 + 56))(v71, 1, 1, v74);
    v45 = v75;
    v46 = *v75;
    v47 = v72;
    sub_1D1741A90(v44, v72, &qword_1EC64CCB0, &qword_1D1EA2640);
    v48 = *(v43 + 48);
    v49 = v48(v47, 1, v42);
    v77 = v46;
    if (v49 == 1)
    {
      v50 = type metadata accessor for StateSnapshot(0);
      sub_1D1CB2110(v45 + *(v50 + 20), i, type metadata accessor for StaticHome);
      v51 = v48(v47, 1, v42);

      if (v51 != 1)
      {
        sub_1D1741A30(v47, &qword_1EC64CCB0, &qword_1D1EA2640);
      }
    }

    else
    {
      sub_1D1CB2178(v47, i, type metadata accessor for StaticHome);
    }

    v52 = type metadata accessor for StateSnapshot(0);
    v53 = *(v45 + v52[6]);
    v54 = *(v45 + v52[7]);
    v55 = v52[9];
    v72 = *(v45 + v52[8]);
    v73 = v54;
    v74 = *(v45 + v55);
    v56 = v74;
    v57 = v52[11];
    v71 = *(v45 + v52[10]);
    v58 = *(v45 + v57);
    v59 = *(v45 + v52[12]);
    v78 = *(v45 + v52[13]);
    v60 = v78;
    v79 = v53;
    v61 = v52[15];
    v67 = *(v45 + v52[14]);
    v68 = v59;
    v62 = *(v45 + v61);
    v63 = *(v45 + v52[16]);
    v64 = *(v45 + v52[18]);
    v75 = *(v45 + v52[19]);
    v76 = v58;
    v65 = v69;
    *v69 = v77;
    sub_1D1CB2178(i, v65 + v52[5], type metadata accessor for StaticHome);
    *(v65 + v52[6]) = v79;
    *(v65 + v52[7]) = v54;
    *(v65 + v52[8]) = v72;
    *(v65 + v52[9]) = v56;
    *(v65 + v52[10]) = v71;
    *(v65 + v52[11]) = v58;
    *(v65 + v52[12]) = v68;
    *(v65 + v52[13]) = v60;
    *(v65 + v52[14]) = v67;
    *(v65 + v52[15]) = v62;
    *(v65 + v52[16]) = v63;
    *(v65 + v52[17]) = v16;
    *(v65 + v52[18]) = v64;
    *(v65 + v52[19]) = v75;
    (*(*(v52 - 1) + 56))(v65, 0, 1, v52);
  }

  else
  {
    sub_1D1CB2248(v23, type metadata accessor for StateSnapshot.UpdateType);
    v39 = type metadata accessor for StateSnapshot(0);
    (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
  }

  return result;
}

uint64_t sub_1D1CA5A08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v58 = a2;
  v52 = type metadata accessor for StaticSoftwareUpdate(0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticHH2Update(0);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C5F8, &qword_1D1E9FA00);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v46 - v14;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D1E66A7C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(a1, v17, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v50 = v8;
    v51 = a4;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
    v23 = *&v17[v22[12]];
    v24 = *&v17[v22[16]];
    v55 = *&v17[v22[20]];
    (*(v19 + 32))(v21, v17, v18);
    v49 = a3;
    v25 = [a3 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v26 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v27);
    *(&v46 - 2) = v21;
    v28 = sub_1D174A6C4(sub_1D1CC7754, (&v46 - 4), v26);

    if (v28)
    {
      v47 = type metadata accessor for StateSnapshot(0);
      v48 = v18;
      v29 = *(v58 + *(v47 + 72));
      v30 = v55;
      if (*(v29 + 16) && (v31 = sub_1D1742188(), (v32 & 1) != 0))
      {
        v33 = *(v29 + 56);
        v34 = v56;
        v35 = v57;
        sub_1D1CB2110(v33 + *(v56 + 72) * v31, v57, type metadata accessor for StaticHH2Update);
        v36 = 0;
      }

      else
      {
        v36 = 1;
        v34 = v56;
        v35 = v57;
      }

      v39 = v50;
      (*(v34 + 56))(v35, v36, 1, v50);
      v40 = v30;
      v41 = v24;
      sub_1D1CABEEC(v35, v23, v40, v28, v24, v13);
      if ((*(v34 + 48))(v13, 1, v39) == 1)
      {
        sub_1D1741A30(v35, &qword_1EC64C5F8, &qword_1D1E9FA00);

        sub_1D1741A30(v13, &qword_1EC64C5F8, &qword_1D1E9FA00);
        (*(*(v47 - 8) + 56))(v51, 1, 1);
        return (*(v19 + 8))(v21, v48);
      }

      else
      {
        v43 = v53;
        sub_1D1CB2178(v13, v53, type metadata accessor for StaticHH2Update);
        v44 = v54;
        v45 = v48;
        (*(v19 + 16))(v54, v21, v48);
        sub_1D1CB2110(v43, v44 + *(v52 + 20), type metadata accessor for StaticHH2Update);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        swift_storeEnumTagMultiPayload();
        sub_1D1CAC7EC(v44, v58, v51);

        sub_1D1CB2248(v44, type metadata accessor for StaticSoftwareUpdate);
        sub_1D1CB2248(v43, type metadata accessor for StaticHH2Update);
        sub_1D1741A30(v35, &qword_1EC64C5F8, &qword_1D1E9FA00);
        return (*(v19 + 8))(v21, v45);
      }
    }

    else
    {

      v42 = type metadata accessor for StateSnapshot(0);
      (*(*(v42 - 8) + 56))(v51, 1, 1, v42);
      return (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    sub_1D1CB2248(v17, type metadata accessor for StateSnapshot.UpdateType);
    v37 = type metadata accessor for StateSnapshot(0);
    return (*(*(v37 - 8) + 56))(a4, 1, 1, v37);
  }
}

uint64_t sub_1D1CA60CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v194 = *(v6 - 8);
  v195 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v205 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1D1E66A7C();
  v208 = *(v207 - 8);
  v8 = MEMORY[0x1EEE9AC00](v207);
  v10 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v203 = &v158 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v186 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v187 = &v158 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v200 = &v158 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v185 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v204 = &v158 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v197 = &v158 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v183 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v202 = &v158 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v158 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v189 = &v158 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v201 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v181 = &v158 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v198 = &v158 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v192 = &v158 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v188 = &v158 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v184 = &v158 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v199 = &v158 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v182 = &v158 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v158 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v193 = &v158 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v190 = &v158 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v158 - v59;
  v196 = type metadata accessor for StaticMatterDevice(0);
  v206 = *(v196 - 8);
  v61 = MEMORY[0x1EEE9AC00](v196);
  v63 = &v158 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v158 - v64;
  if (!*(a2 + 16))
  {
    return sub_1D1CB2110(a1, a3, type metadata accessor for StaticAccessory);
  }

  v66 = sub_1D1742188();
  if ((v67 & 1) == 0)
  {
    return sub_1D1CB2110(a1, a3, type metadata accessor for StaticAccessory);
  }

  v172 = a1;
  v164 = a3;
  v175 = v33;
  v180 = v10;
  sub_1D1CB2110(*(a2 + 56) + *(v206 + 72) * v66, v63, type metadata accessor for StaticMatterDevice);
  v179 = type metadata accessor for StaticMatterDevice;
  sub_1D1CB2178(v63, v65, type metadata accessor for StaticMatterDevice);
  v69 = v208 + 56;
  v68 = *(v208 + 56);
  v70 = v207;
  v68(v60, 1, 1, v207);
  v71 = sub_1D1E669FC();
  v171 = *(v71 - 8);
  v73 = v171 + 56;
  v72 = *(v171 + 56);
  v72(v188, 1, 1, v71);
  (*(v194 + 56))(v189, 1, 1, v195);
  v74 = type metadata accessor for StaticDeviceMetadata(0);
  v173 = *(v74 - 8);
  v75 = *(v173 + 56);
  v174 = v74;
  v167 = v173 + 56;
  v161 = v75;
  (v75)(v191, 1, 1);
  v177 = v71;
  v160 = v73;
  v159 = v72;
  v72(v192, 1, 1, v71);
  v76 = v208;
  v68(v190, 1, 1, v70);
  v169 = v69;
  v168 = v68;
  v68(v193, 1, 1, v70);
  v77 = type metadata accessor for StaticSoftwareUpdate(0);
  v176 = *(v77 - 8);
  v78 = *(v176 + 56);
  v178 = v77;
  v166 = v176 + 56;
  v165 = v78;
  (v78)(v197, 1, 1);
  v79 = v65;
  v80 = v200;
  sub_1D1CB2178(v79, v200, v179);
  v81 = *(v206 + 56);
  v163 = v206 + 56;
  v162 = v81;
  v81(v80, 0, 1, v196);
  sub_1D1741A90(v60, v54, &qword_1EC642590, qword_1D1E71260);
  v83 = v76 + 48;
  v82 = *(v76 + 48);
  v84 = (v82)(v54, 1, v70);
  v179 = v82;
  if (v84 == 1)
  {
    v85 = *(v76 + 16);
    v86 = v172;
    v85(v203, v172, v70);
    if ((v82)(v54, 1, v70) != 1)
    {
      sub_1D1741A30(v54, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v76 + 32))(v203, v54, v70);
    v86 = v172;
  }

  v88 = v181;
  sub_1D1741A90(v188, v181, &qword_1EC642570, &qword_1D1E6C6A0);
  v89 = v171;
  v90 = *(v171 + 48);
  v91 = v177;
  v92 = v90(v88, 1, v177);
  v93 = v195;
  v94 = v164;
  if (v92 == 1)
  {
    v95 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v86 + *(v95 + 20), v198, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v90(v88, 1, v91) != 1)
    {
      sub_1D1741A30(v88, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v96 = v198;
    (*(v89 + 32))(v198, v88, v91);
    v159(v96, 0, 1, v91);
  }

  v97 = type metadata accessor for StaticAccessory(0);
  v98 = v97[7];
  LODWORD(v177) = *(v86 + v97[6]);
  v99 = *(v86 + v98 + 8);
  v188 = *(v86 + v98);
  v100 = v175;
  sub_1D1741A90(v189, v175, &qword_1EC643C58, &unk_1D1E995D0);
  v101 = *(v194 + 48);
  v102 = v101(v100, 1, v93);
  v181 = v99;
  if (v102 == 1)
  {
    sub_1D1CB2110(v86 + v97[8], v205, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v103 = v101(v100, 1, v93);

    if (v103 != 1)
    {
      sub_1D1741A30(v100, &qword_1EC643C58, &unk_1D1E995D0);
    }
  }

  else
  {
    sub_1D1CB2178(v100, v205, type metadata accessor for StaticAccessory.DeviceIdentifier);
  }

  v104 = v183;
  sub_1D1741A90(v191, v183, &qword_1EC644620, &unk_1D1E75A00);
  v105 = *(v173 + 48);
  v106 = v174;
  v107 = v105(v104, 1, v174);
  v108 = v182;
  if (v107 == 1)
  {
    sub_1D1741C08(v86 + v97[9], v202, &qword_1EC644620, &unk_1D1E75A00);
    v109 = v105(v104, 1, v106);
    v110 = v179;
    if (v109 != 1)
    {
      sub_1D1741A30(v104, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v111 = v202;
    sub_1D1CB2178(v104, v202, type metadata accessor for StaticDeviceMetadata);
    v161(v111, 0, 1, v106);
    v110 = v179;
  }

  sub_1D1741A90(v192, v201, &qword_1EC642570, &qword_1D1E6C6A0);
  LODWORD(v189) = *(v86 + v97[11]);
  sub_1D1741A90(v190, v108, &qword_1EC642590, qword_1D1E71260);
  v112 = v207;
  v113 = (v110)(v108, 1, v207);
  v114 = v184;
  v170 = v83;
  if (v113 == 1)
  {
    (*(v208 + 16))(v180, v86 + v97[12], v112);
    if ((v110)(v108, 1, v112) != 1)
    {
      sub_1D1741A30(v108, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v208 + 32))(v180, v108, v112);
  }

  v115 = v97[14];
  v195 = *(v86 + v97[13]);
  v116 = v97[16];
  LODWORD(v183) = *(v86 + v97[15]);
  LODWORD(v190) = *(v86 + v116);
  v117 = v97[18];
  LODWORD(v175) = *(v86 + v97[17]);
  LODWORD(v182) = *(v86 + v117);
  v118 = v97[20];
  LODWORD(v174) = *(v86 + v97[19]);
  v119 = *(v86 + v115 + 8);
  v172 = *(v86 + v115);
  v120 = *(v86 + v118);
  v194 = *(v86 + v97[21]);
  sub_1D1741A90(v193, v114, &qword_1EC642590, qword_1D1E71260);
  v121 = v114;
  v122 = v179;
  v123 = (v179)(v114, 1, v112);
  v173 = v120;
  v171 = v119;
  if (v123 == 1)
  {
    sub_1D1741C08(v86 + v97[22], v199, &qword_1EC642590, qword_1D1E71260);
    v124 = (v122)(v114, 1, v112);

    if (v124 != 1)
    {
      sub_1D1741A30(v114, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v125 = v199;
    (*(v208 + 32))(v199, v121, v112);
    v168(v125, 0, 1, v112);
  }

  v126 = v97[24];
  v127 = v86 + v97[23];
  v128 = *v127;
  LODWORD(v193) = *(v127 + 8);
  v129 = v97[26];
  v192 = *(v86 + v97[25]);
  LODWORD(v179) = *(v86 + v129);
  v130 = v97[28];
  LODWORD(v170) = *(v86 + v97[27]);
  v131 = *(v86 + v126 + 8);
  v167 = *(v86 + v126);
  v191 = v131;
  LODWORD(v169) = *(v86 + v130);
  LODWORD(v168) = *(v86 + v97[29]);
  v132 = v185;
  sub_1D1741A90(v197, v185, &qword_1EC644760, &unk_1D1E9E530);
  v133 = *(v176 + 48);
  v134 = v178;
  v135 = v133(v132, 1, v178);
  v136 = v206;
  v184 = v128;
  if (v135 == 1)
  {
    sub_1D1741C08(v86 + v97[30], v204, &qword_1EC644760, &unk_1D1E9E530);
    v137 = v133(v132, 1, v134);
    sub_1D18EB144(v128, v193);

    v138 = v186;
    if (v137 != 1)
    {
      sub_1D1741A30(v132, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v139 = v204;
    sub_1D1CB2178(v132, v204, type metadata accessor for StaticSoftwareUpdate);
    v165(v139, 0, 1, v134);
    sub_1D18EB144(v128, v193);

    v138 = v186;
  }

  v140 = v97[32];
  LODWORD(v186) = *(v86 + v97[31]);
  LODWORD(v197) = *(v86 + v140);
  v141 = *(v86 + v97[33]);
  LODWORD(v185) = *(v86 + v97[34]);
  v142 = v97[36];
  LODWORD(v165) = *(v86 + v97[35]);
  v178 = *(v86 + v142);
  LODWORD(v176) = *(v86 + v142 + 8);
  LODWORD(v166) = *(v86 + v97[37]);
  sub_1D1741A90(v200, v138, &qword_1EC643650, &qword_1D1E71D40);
  v143 = *(v136 + 48);
  v144 = v196;
  if (v143(v138, 1, v196) == 1)
  {
    v145 = v187;
    sub_1D1741C08(v86 + v97[38], v187, &qword_1EC643650, &qword_1D1E71D40);
    v146 = v143(v138, 1, v144);

    if (v146 != 1)
    {
      sub_1D1741A30(v138, &qword_1EC643650, &qword_1D1E71D40);
    }
  }

  else
  {
    v145 = v187;
    sub_1D1CB2178(v138, v187, type metadata accessor for StaticMatterDevice);
    v162(v145, 0, 1, v144);
  }

  v147 = *(v208 + 32);
  v148 = v207;
  v147(v94, v203, v207);
  sub_1D1741A90(v198, v94 + v97[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v94 + v97[6]) = v177;
  v149 = (v94 + v97[7]);
  v150 = v181;
  *v149 = v188;
  v149[1] = v150;
  sub_1D1CB2178(v205, v94 + v97[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v202, v94 + v97[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v201, v94 + v97[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v94 + v97[11]) = v189;
  v147(v94 + v97[12], v180, v148);
  *(v94 + v97[13]) = v195;
  v151 = (v94 + v97[14]);
  v152 = v171;
  *v151 = v172;
  v151[1] = v152;
  *(v94 + v97[15]) = v183;
  *(v94 + v97[16]) = v190;
  *(v94 + v97[17]) = v175;
  *(v94 + v97[18]) = v182;
  *(v94 + v97[19]) = v174;
  *(v94 + v97[20]) = v173;
  *(v94 + v97[21]) = v194;
  sub_1D1741A90(v199, v94 + v97[22], &qword_1EC642590, qword_1D1E71260);
  v153 = v94 + v97[23];
  *v153 = v184;
  *(v153 + 8) = v193;
  v154 = (v94 + v97[24]);
  v156 = v191;
  v155 = v192;
  *v154 = v167;
  v154[1] = v156;
  *(v94 + v97[25]) = v155;
  *(v94 + v97[26]) = v179;
  *(v94 + v97[27]) = v170;
  *(v94 + v97[28]) = v169;
  *(v94 + v97[29]) = v168;
  sub_1D1741A90(v204, v94 + v97[30], &qword_1EC644760, &unk_1D1E9E530);
  *(v94 + v97[31]) = v186;
  *(v94 + v97[32]) = v197;
  *(v94 + v97[33]) = v141;
  *(v94 + v97[34]) = v185;
  *(v94 + v97[35]) = v165;
  v157 = v94 + v97[36];
  *v157 = v178;
  *(v157 + 8) = v176;
  *(v94 + v97[37]) = v166;
  return sub_1D1741A90(v145, v94 + v97[38], &qword_1EC643650, &qword_1D1E71D40);
}

void sub_1D1CA772C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v81 = sub_1D1E66A7C();
  v85 = *(v81 - 8);
  v8 = MEMORY[0x1EEE9AC00](v81);
  v84 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v79 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v67 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v67 - v26;
  v28 = type metadata accessor for StaticRoom(0);
  v29 = *(a1 + v28[10]);

  v30 = sub_1D1785BE4();
  v31 = *(sub_1D1CB5974(a2, v30) + 16);

  if (v31)
  {
    v74 = a4;
    v32 = v77;

    v75 = sub_1D1CBCEEC(v29, v32);
    v76 = v4;

    v33 = v85;
    v34 = *(v85 + 56);
    v35 = v81;
    v34(v27, 1, 1, v81);
    v36 = sub_1D1E669FC();
    v70 = *(v36 - 8);
    v71 = v36;
    v68 = *(v70 + 56);
    v69 = v70 + 56;
    v68(v80, 1, 1);
    v77 = v25;
    v34(v25, 1, 1, v35);
    sub_1D1741A90(v27, v22, &qword_1EC642590, qword_1D1E71260);
    v37 = *(v33 + 48);
    v38 = v37(v22, 1, v35);
    v72 = v37;
    if (v38 == 1)
    {
      (*(v33 + 16))(v83, a1, v35);
      if (v37(v22, 1, v35) != 1)
      {
        sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v33 + 32))(v83, v22, v35);
    }

    v39 = (a1 + v28[5]);
    v40 = v39[1];
    v73 = *v39;
    v41 = v78;
    sub_1D1741A90(v80, v78, &qword_1EC642570, &qword_1D1E6C6A0);
    v43 = v70;
    v42 = v71;
    v44 = *(v70 + 48);
    if (v44(v41, 1, v71) == 1)
    {
      sub_1D1741C08(a1 + v28[6], v82, &qword_1EC642570, &qword_1D1E6C6A0);
      v45 = v44(v41, 1, v42);

      v46 = v84;
      if (v45 != 1)
      {
        sub_1D1741A30(v41, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v47 = v82;
      (*(v43 + 32))(v82, v41, v42);
      (v68)(v47, 0, 1, v42);

      v46 = v84;
    }

    v80 = v40;
    v48 = v28[8];
    LODWORD(v78) = *(a1 + v28[7]);
    v49 = *(a1 + v48);
    v50 = v79;
    sub_1D1741A90(v77, v79, &qword_1EC642590, qword_1D1E71260);
    v51 = v81;
    v52 = v72;
    v53 = v72(v50, 1, v81);
    v54 = v85;
    v71 = v49;
    if (v53 == 1)
    {
      (*(v85 + 16))(v46, a1 + v28[9], v51);
      v55 = v52(v50, 1, v51);

      v56 = v51;
      v57 = v54;
      if (v55 != 1)
      {
        sub_1D1741A30(v50, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v85 + 32))(v46, v50, v51);

      v56 = v51;
      v57 = v54;
    }

    v58 = *(a1 + v28[11]);
    v85 = *(a1 + v28[12]);
    v59 = *(a1 + v28[13]);
    v60 = *(a1 + v28[14]);
    v61 = *(a1 + v28[15]);
    v79 = *(a1 + v28[16]);
    v62 = v28[18];
    v70 = *(a1 + v28[17]);
    v72 = *(a1 + v62);
    v77 = *(a1 + v28[19]);
    v63 = *(v57 + 32);
    v64 = v74;
    v63(v74, v83, v56);
    v65 = (v64 + v28[5]);
    v66 = v80;
    *v65 = v73;
    v65[1] = v66;
    sub_1D1741A90(v82, v64 + v28[6], &qword_1EC642570, &qword_1D1E6C6A0);
    *(v64 + v28[7]) = v78;
    *(v64 + v28[8]) = v71;
    v63(v64 + v28[9], v84, v56);
    *(v64 + v28[10]) = v75;
    *(v64 + v28[11]) = v58;
    *(v64 + v28[12]) = v85;
    *(v64 + v28[13]) = v59;
    *(v64 + v28[14]) = v60;
    *(v64 + v28[15]) = v61;
    *(v64 + v28[16]) = v79;
    *(v64 + v28[17]) = v70;
    *(v64 + v28[18]) = v72;
    *(v64 + v28[19]) = v77;
  }

  else
  {
    sub_1D1CB2110(a1, a4, type metadata accessor for StaticRoom);
  }
}

double StateSnapshot.copyReplacing(coverages:staticHome:staticHomesInOrder:staticZonesDictionary:staticAccessoriesDictionary:staticActionSetsDictionary:staticCameraProfilesDictionary:staticMediaSystemsDictionary:staticMediaProfilesDictionary:staticRoomsDictionary:staticServiceGroupsDictionary:staticServicesDictionary:staticUsersDictionary:staticUserActionPredictions:staticHH2UpdatesDictionary:staticResidentDictionary:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v47 - v25;
  v27 = type metadata accessor for StaticHome(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v66 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v62 = a1;
  }

  else
  {
    v62 = *v17;
  }

  sub_1D1741C08(a2, v26, &qword_1EC64CCB0, &qword_1D1EA2640);
  v30 = *(v28 + 48);
  if (v30(v26, 1, v27) == 1)
  {
    v31 = type metadata accessor for StateSnapshot(0);
    sub_1D1CB2110(v17 + *(v31 + 20), v66, type metadata accessor for StaticHome);
    v32 = v30(v26, 1, v27);

    if (v32 != 1)
    {
      sub_1D1741A30(v26, &qword_1EC64CCB0, &qword_1D1EA2640);
    }
  }

  else
  {
    sub_1D1CB2178(v26, v66, type metadata accessor for StaticHome);
  }

  v33 = v69;
  if (v67)
  {
    v61 = v67;
    v34 = v68;
    if (v68)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v61 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 24));

    v34 = v68;
    if (v68)
    {
LABEL_10:
      v60 = v34;
      if (v33)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  v60 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 28));

  if (v33)
  {
LABEL_11:
    v59 = v33;
    if (a6)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v59 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 32));

  if (a6)
  {
LABEL_12:
    v56 = a6;
    if (a7)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v56 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 36));

  if (a7)
  {
LABEL_13:
    v54 = a7;
    v35 = a10;
    if (a8)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v54 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 40));

  v35 = a10;
  if (a8)
  {
LABEL_14:
    v52 = a8;
    v36 = a11;
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_23:
    v51 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 48));

    v37 = a12;
    if (v36)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_22:
  v52 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 44));

  v36 = a11;
  if (!v35)
  {
    goto LABEL_23;
  }

LABEL_15:
  v51 = v35;
  v37 = a12;
  if (v36)
  {
LABEL_16:
    v50 = v36;
    goto LABEL_25;
  }

LABEL_24:
  v50 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 52));

LABEL_25:
  v57 = v36;
  if (v37)
  {
    v49 = v37;
  }

  else
  {
    v49 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 56));
  }

  v64 = a7;
  if (a13)
  {
    v48 = a13;
  }

  else
  {
    v48 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 60));
  }

  v58 = v35;
  v65 = a8;
  if (a14)
  {
    v38 = a14;
  }

  else
  {
    v38 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 64));
  }

  v63 = a6;
  if (a15)
  {
    v39 = a15;
  }

  else
  {
    v39 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 68));
  }

  v55 = v37;
  if (!a16)
  {
    v40 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 72));

    v53 = a13;
    if (a17)
    {
      goto LABEL_39;
    }

LABEL_41:
    v41 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 76));

    goto LABEL_42;
  }

  v40 = a16;
  v53 = a13;
  if (!a17)
  {
    goto LABEL_41;
  }

LABEL_39:
  v41 = a17;
LABEL_42:
  *a9 = v62;
  v42 = type metadata accessor for StateSnapshot(0);
  sub_1D1CB2178(v66, a9 + v42[5], type metadata accessor for StaticHome);
  v43 = v60;
  *(a9 + v42[6]) = v61;
  *(a9 + v42[7]) = v43;
  *(a9 + v42[8]) = v59;
  *(a9 + v42[9]) = v56;
  *(a9 + v42[10]) = v54;
  v44 = v51;
  *(a9 + v42[11]) = v52;
  *(a9 + v42[12]) = v44;
  v45 = v49;
  *(a9 + v42[13]) = v50;
  *(a9 + v42[14]) = v45;
  *(a9 + v42[15]) = v48;
  *(a9 + v42[16]) = v38;
  *(a9 + v42[17]) = v39;
  *(a9 + v42[18]) = v40;
  *(a9 + v42[19]) = v41;

  return result;
}

void sub_1D1CA84B8(id *a1, char *a2, void *a3, char **a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v409 = a6;
  v410 = a5;
  v462 = a4;
  v413 = a3;
  v433 = a2;
  v10 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v456 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v431 = &v349 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v403 = &v349 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v430 = &v349 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v429 = &v349 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v402 = &v349 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v428 = &v349 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v427 = &v349 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v401 = &v349 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v426 = &v349 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v425 = &v349 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v406 = &v349 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v424 = &v349 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v423 = &v349 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v422 = &v349 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v400 = &v349 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v421 = &v349 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v399 = &v349 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v398 = &v349 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v420 = &v349 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v419 = &v349 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v418 = &v349 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v446 = &v349 - v53;
  v447 = type metadata accessor for StaticService(0);
  v455 = *(v447 - 8);
  v54 = MEMORY[0x1EEE9AC00](v447);
  v457 = &v349 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v441 = &v349 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v454 = &v349 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v449 = &v349 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v62 = MEMORY[0x1EEE9AC00](v61 - 8);
  v405 = &v349 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v417 = &v349 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v416 = &v349 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v459 = &v349 - v68;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v461 = *(v407 - 8);
  v69 = MEMORY[0x1EEE9AC00](v407);
  v393 = &v349 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v404 = &v349 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v349 - v73;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v453 = &v349 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v77 = MEMORY[0x1EEE9AC00](v76 - 8);
  v432 = &v349 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v408 = &v349 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v460 = &v349 - v81;
  v463 = sub_1D1E66A7C();
  v452 = *(v463 - 8);
  v82 = MEMORY[0x1EEE9AC00](v463);
  v415 = &v349 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v86 = &v349 - v85;
  v87 = MEMORY[0x1EEE9AC00](v84);
  v414 = &v349 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v435 = &v349 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v445 = &v349 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v443 = &v349 - v94;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v349 - v95;
  v434 = type metadata accessor for StaticAccessory(0);
  v97 = *(v434 - 1);
  v98 = MEMORY[0x1EEE9AC00](v434);
  v397 = &v349 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x1EEE9AC00](v98);
  v412 = &v349 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v438 = &v349 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v395 = &v349 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v108 = &v349 - v107;
  MEMORY[0x1EEE9AC00](v106);
  v394 = &v349 - v109;
  v110 = [*a1 service];
  if (v110)
  {
    v396 = v10;
    v111 = v110;
    v112 = [v110 accessory];

    if (v112)
    {
      v113 = v112;
      v440 = type metadata accessor for StateSnapshot(0);
      v114 = *&v433[v440[8]];
      v442 = v113;
      v115 = [v113 uniqueIdentifier];
      sub_1D1E66A5C();

      if (!*(v114 + 16) || (v437 = v114, v116 = sub_1D1742188(), (v117 & 1) == 0))
      {
        (*(v452 + 8))(v96, v463);

        return;
      }

      v458 = v86;
      v350 = a7;
      v118 = *(v437 + 56);
      v384 = *(v97 + 72);
      sub_1D1CB2110(v118 + v384 * v116, v108, type metadata accessor for StaticAccessory);
      v119 = v452;
      v120 = *(v452 + 8);
      v450 = v452 + 8;
      v451 = v120;
      v120(v96, v463);
      v121 = v394;
      sub_1D1CB2178(v108, v394, type metadata accessor for StaticAccessory);
      v122 = &v433[v440[5]];
      v123 = *(type metadata accessor for StaticHome(0) + 44);
      v356 = v122;
      v355 = v123;
      LOBYTE(v122) = v122[v123];
      v124 = v460;
      sub_1D1CB2110(v121, v460, type metadata accessor for StaticAccessory);
      v125 = *(v97 + 56);
      v388 = v97 + 56;
      v387 = v125;
      v125(v124, 0, 1, v434);
      v126 = v442;
      v127 = [v442 services];
      v354 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v128 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v129);
      *(&v349 - 64) = 1;
      v130 = v413;
      *(&v349 - 7) = v126;
      *(&v349 - 6) = v130;
      *(&v349 - 5) = v462;
      *(&v349 - 32) = v122;
      v131 = v410;
      *(&v349 - 3) = v124;
      *(&v349 - 2) = v131;
      v132 = sub_1D17893E4(sub_1D1CC712C, (&v349 - 10), v128);
      v133 = v7;

      v134 = v132[2];
      if (v134)
      {
        v444 = v7;
        v465 = MEMORY[0x1E69E7CC0];
        sub_1D178D2D8(0, v134, 0);
        v135 = v465;
        v136 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v439 = v132;
        v137 = v132 + v136;
        v138 = *(v455 + 72);
        v139 = (v119 + 16);
        v140 = v407;
        do
        {
          v141 = *(v140 + 48);
          sub_1D1CB2110(v137, &v74[v141], type metadata accessor for StaticService);
          (*v139)(v74, &v74[v141], v463);
          v465 = v135;
          v143 = *(v135 + 16);
          v142 = *(v135 + 24);
          if (v143 >= v142 >> 1)
          {
            sub_1D178D2D8((v142 > 1), v143 + 1, 1);
            v140 = v407;
            v135 = v465;
          }

          *(v135 + 16) = v143 + 1;
          sub_1D1741A90(v74, v135 + ((*(v461 + 80) + 32) & ~*(v461 + 80)) + *(v461 + 72) * v143, &qword_1EC6436E8, &unk_1D1E71E40);
          v137 += v138;
          --v134;
        }

        while (v134);

        v133 = v444;
      }

      else
      {

        v135 = MEMORY[0x1E69E7CC0];
      }

      v144 = MEMORY[0x1E69E7CC8];
      v145 = v451;
      if (*(v135 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
        v144 = sub_1D1E68BCC();
      }

      v146 = v413;
      v465 = v144;
      sub_1D1CBFC40(v135, 1, &v465);
      if (v133)
      {
LABEL_119:

        __break(1u);
        goto LABEL_120;
      }

      v147 = v465;
      sub_1D1741A30(v460, &qword_1EC6436C8, &unk_1D1E97C40);
      v465 = v147;
      v148 = v146;
      v149 = v453;
      sub_1D1CB2110(v148, v453, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v436 = v147;
      v444 = 0;
      if (EnumCaseMultiPayload == 1)
      {
        v152 = *v149;
        v151 = *(v149 + 8);
        v153 = *(v149 + 16);
        if (v153 == 4)
        {

          v154 = [v442 uniqueIdentifier];
          v155 = v443;
          sub_1D1E66A5C();

          if (*(v151 + 16))
          {
            v156 = sub_1D1742188();
            if (v157)
            {
              LODWORD(v460) = *(*(v151 + 56) + v156);
              v145(v155, v463);

              if (qword_1EE07A098 != -1)
              {
LABEL_117:
                swift_once();
              }

              v158 = sub_1D1E6709C();
              __swift_project_value_buffer(v158, qword_1EE0813C8);
              v159 = sub_1D1E6707C();
              v160 = sub_1D1E6835C();
              if (os_log_type_enabled(v159, v160))
              {
                v161 = swift_slowAlloc();
                v162 = swift_slowAlloc();
                v464 = v162;
                *v161 = 136315394;
                *(v161 + 4) = sub_1D1B1312C(0xD00000000000004DLL, 0x80000001D1EC81F0, &v464);
                *(v161 + 12) = 1024;
                *(v161 + 14) = v460;
                _os_log_impl(&dword_1D16EC000, v159, v160, "%s Applying reachability flag: %{BOOL}d", v161, 0x12u);
                __swift_destroy_boxed_opaque_existential_1(v162);
                MEMORY[0x1D3893640](v162, -1, -1);
                v163 = v161;
                v147 = v436;
                MEMORY[0x1D3893640](v163, -1, -1);
              }

              goto LABEL_28;
            }
          }

          v145(v155, v463);
        }

        else
        {

          sub_1D1AC373C(v152, v151, v153);
        }
      }

      else
      {

        sub_1D1CB2248(v149, type metadata accessor for StateSnapshot.UpdateType);
      }

      LODWORD(v460) = 2;
LABEL_28:
      v164 = v442;
      v165 = [v442 room];
      v166 = v164;
      if (!v165)
      {
        v165 = [v462 roomForEntireHome];
      }

      LOBYTE(v464) = v356[v355];
      v167 = *&v433[v440[18]];
      v168 = type metadata accessor for StaticMatterDevice(0);
      v169 = *(v168 - 8);
      v170 = *(v169 + 56);
      v171 = v169 + 56;
      v172 = v459;
      v386 = v168;
      v359 = v170;
      (v170)(v459, 1, 1);

      v173 = v166;
      v174 = v462;
      v175 = v147;
      v176 = v395;
      v392 = v174;
      sub_1D1BBA530(v173, v174, v165, v460, &v464, v175, v167, v172, v395);
      v349 = v173;
      v177 = [v173 uniqueIdentifier];
      v178 = v445;
      sub_1D1E66A5C();

      v179 = v408;
      sub_1D1AA5ABC(v408);
      v180 = v463;
      v451(v178, v463);
      sub_1D1741A30(v179, &qword_1EC6436C8, &unk_1D1E97C40);
      v181 = v452 + 16;
      v459 = *(v452 + 16);
      (v459)(v178, v176, v180);
      sub_1D1CB2110(v176, v179, type metadata accessor for StaticAccessory);
      v387(v179, 0, 1, v434);
      sub_1D1B0CF04(v179, v178);
      v133 = 0;
      v184 = *(v175 + 64);
      v183 = (v175 + 64);
      v182 = v184;
      v185 = 1 << *(v183 - 32);
      v186 = -1;
      if (v185 < 64)
      {
        v186 = ~(-1 << v185);
      }

      v187 = v186 & v182;
      v188 = (v185 + 63) >> 6;
      v462 = (v181 + 16);
      updated = (v181 + 32);
      v460 = v181;
      v357 = (v181 + 40);
      v353 = (v456 + 56);
      v352 = (v456 + 48);
      v358 = v171;
      v351 = (v171 - 8);
      v147 = v446;
      v189 = v454;
      v190 = v449;
      v440 = v183;
      v439 = v188;
      while (v187)
      {
        v192 = v133;
LABEL_45:
        v453 = (v187 - 1) & v187;
        v195 = __clz(__rbit64(v187)) | (v192 << 6);
        v196 = v436;
        v197 = v452;
        v198 = v445;
        v199 = v463;
        (v459)(v445, *(v436 + 48) + *(v452 + 72) * v195, v463);
        v200 = v441;
        sub_1D1CB2110(*(v196 + 56) + *(v455 + 72) * v195, v441, type metadata accessor for StaticService);
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        v202 = *(v201 + 48);
        v203 = v454;
        (*(v197 + 32))(v454, v198, v199);
        v204 = &v203[v202];
        v189 = v203;
        sub_1D1CB2178(v200, v204, type metadata accessor for StaticService);
        (*(*(v201 - 8) + 56))(v203, 0, 1, v201);
        v190 = v449;
        v147 = v446;
LABEL_46:
        sub_1D1741A90(v189, v190, &qword_1EC643C68, &unk_1D1E764C0);
        v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        if ((*(*(v205 - 8) + 48))(v190, 1, v205) == 1)
        {

          v341 = v394;

          v343 = v350;
          v344 = v444;
          sub_1D1C920FC(v342, v350);

          v345 = *v343;
          v346 = v465;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v464 = v345;
          sub_1D1CC7144(v346, sub_1D1CB5348, 0, isUniquelyReferenced_nonNull_native, &v464);
          if (!v344)
          {

            v348 = v464;
            sub_1D1CB2248(v395, type metadata accessor for StaticAccessory);
            sub_1D1CB2248(v341, type metadata accessor for StaticAccessory);
            *v343 = v348;

            return;
          }

LABEL_120:

          __break(1u);
          return;
        }

        v206 = v190 + *(v205 + 48);
        sub_1D1741C08(v206 + *(v447 + 148), v147, &qword_1EC642590, qword_1D1E71260);
        sub_1D1CB2248(v206, type metadata accessor for StaticService);
        v207 = *updated;
        v208 = v463;
        if ((*updated)(v147, 1, v463) == 1)
        {
          sub_1D1741A30(v147, &qword_1EC642590, qword_1D1E71260);
          v191 = v451;
        }

        else
        {
          v209 = v435;
          v456 = *v462;
          (v456)(v435, v147, v208);
          if (*(v437 + 16) && (v210 = sub_1D1742188(), v190 = v449, (v211 & 1) != 0))
          {
            v411 = v207;
            v212 = v412;
            sub_1D1CB2110(*(v437 + 56) + v210 * v384, v412, type metadata accessor for StaticAccessory);
            v213 = v438;
            sub_1D1CB2178(v212, v438, type metadata accessor for StaticAccessory);
            v214 = [v392 accessories];
            sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
            v215 = sub_1D1E67C1C();

            MEMORY[0x1EEE9AC00](v216);
            *(&v349 - 2) = v209;
            v217 = v444;
            v218 = sub_1D174A6C4(sub_1D1CC7564, (&v349 - 4), v215);
            v444 = v217;

            if (v218)
            {
              v219 = v356[v355];
              v220 = v432;
              sub_1D1CB2110(v213, v432, type metadata accessor for StaticAccessory);
              v387(v220, 0, 1, v434);
              v221 = v218;
              v222 = [v218 services];
              v223 = sub_1D1E67C1C();

              MEMORY[0x1EEE9AC00](v224);
              *(&v349 - 64) = 1;
              v385 = v221;
              v225 = v413;
              *(&v349 - 7) = v221;
              *(&v349 - 6) = v225;
              *(&v349 - 5) = v392;
              *(&v349 - 32) = v219;
              v226 = v410;
              *(&v349 - 3) = v220;
              *(&v349 - 2) = v226;
              v227 = v444;
              v228 = sub_1D17893E4(sub_1D1CC7738, (&v349 - 10), v223);
              v391 = v227;

              v229 = *(v228 + 2);
              if (v229)
              {
                v464 = MEMORY[0x1E69E7CC0];
                sub_1D178D2D8(0, v229, 0);
                v230 = v464;
                v231 = *(v455 + 80);
                v444 = v228;
                v232 = &v228[(v231 + 32) & ~v231];
                v233 = *(v455 + 72);
                v234 = v407;
                v235 = v393;
                do
                {
                  v236 = *(v234 + 48);
                  sub_1D1CB2110(v232, v235 + v236, type metadata accessor for StaticService);
                  (v459)(v235, v235 + v236, v463);
                  v464 = v230;
                  v238 = *(v230 + 16);
                  v237 = *(v230 + 24);
                  if (v238 >= v237 >> 1)
                  {
                    sub_1D178D2D8((v237 > 1), v238 + 1, 1);
                    v234 = v407;
                    v230 = v464;
                  }

                  *(v230 + 16) = v238 + 1;
                  sub_1D1741A90(v235, v230 + ((*(v461 + 80) + 32) & ~*(v461 + 80)) + *(v461 + 72) * v238, &qword_1EC6436E8, &unk_1D1E71E40);
                  v232 += v233;
                  --v229;
                }

                while (v229);
              }

              else
              {

                v230 = MEMORY[0x1E69E7CC0];
              }

              v242 = v404;
              if (*(v230 + 16))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
                v243 = sub_1D1E68BCC();
                v244 = *(v230 + 16);
                v464 = v243;
                v444 = v244;
                if (v244)
                {
                  v245 = 0;
                  v443 = *(v407 + 48);
                  v147 = v230 + ((*(v461 + 80) + 32) & ~*(v461 + 80));
                  v442 = *(v461 + 72);
                  v246 = v463;
                  while (1)
                  {
                    sub_1D1741C08(v147, v242, &qword_1EC6436E8, &unk_1D1E71E40);
                    v247 = (v245 + 1);
                    if (__OFADD__(v245, 1))
                    {
                      break;
                    }

                    (v456)(v458, v242, v246);
                    sub_1D1CB2178(v242 + v443, v457, type metadata accessor for StaticService);
                    v249 = sub_1D1742188();
                    v250 = v243[2];
                    v251 = (v248 & 1) == 0;
                    v252 = v250 + v251;
                    if (__OFADD__(v250, v251))
                    {
                      goto LABEL_115;
                    }

                    v253 = v248;
                    if (v243[3] < v252)
                    {
                      sub_1D1723194(v252, 1);
                      v254 = sub_1D1742188();
                      if ((v253 & 1) != (v255 & 1))
                      {
                        sub_1D1E690FC();
                        __break(1u);
                        goto LABEL_119;
                      }

                      v249 = v254;
                    }

                    v243 = v464;
                    if (v253)
                    {
                      v451(v458, v463);
                      sub_1D1CC76B8(v457, v243[7] + *(v455 + 72) * v249, type metadata accessor for StaticService);
                    }

                    else
                    {
                      v464[(v249 >> 6) + 8] |= 1 << v249;
                      (v456)(v243[6] + *(v452 + 72) * v249, v458, v463);
                      sub_1D1CB2178(v457, v243[7] + *(v455 + 72) * v249, type metadata accessor for StaticService);
                      v256 = v243[2];
                      v257 = __OFADD__(v256, 1);
                      v258 = v256 + 1;
                      if (v257)
                      {
                        goto LABEL_116;
                      }

                      v243[2] = v258;
                    }

                    v147 += v442;
                    ++v245;
                    v246 = v463;
                    if (v247 == v444)
                    {

                      v259 = v391;
                      goto LABEL_77;
                    }
                  }

LABEL_114:
                  __break(1u);
LABEL_115:
                  __break(1u);
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }
              }

              else
              {
                v243 = MEMORY[0x1E69E7CC8];
                v464 = MEMORY[0x1E69E7CC8];
              }

              v259 = v391;

LABEL_77:
              v260 = sub_1D1741A30(v432, &qword_1EC6436C8, &unk_1D1E97C40);
              MEMORY[0x1EEE9AC00](v260);
              *(&v349 - 2) = v433;
              *(&v349 - 1) = &v465;
              sub_1D1D3936C(sub_1D1CC7584, (&v349 - 4), v243);
              v444 = v259;
              v261 = *v357;
              v262 = v463;
              (*v357)(v418, 1, 1, v463);
              v263 = sub_1D1E669FC();
              v391 = *(v263 - 8);
              v264 = *(v391 + 7);
              v264(v422, 1, 1, v263);
              (*v353)(v426, 1, 1, v396);
              v265 = type metadata accessor for StaticDeviceMetadata(0);
              v442 = *(v265 - 8);
              v266 = *(v442 + 56);
              v443 = v265;
              v379 = (v442 + 56);
              v378 = v266;
              (v266)(v427, 1, 1);
              v383 = v264;
              v264(v423, 1, 1, v263);
              v261(v419, 1, 1, v262);
              v390 = v261;
              v261(v420, 1, 1, v262);
              v267 = type metadata accessor for StaticSoftwareUpdate(0);
              v380 = *(v267 - 8);
              v268 = *(v380 + 56);
              v389 = v267;
              v365 = v380 + 56;
              v364 = v268;
              (v268)(v429, 1, 1);
              v359(v416, 1, 1, v386);
              v269 = v398;
              sub_1D1741A90(v418, v398, &qword_1EC642590, qword_1D1E71260);
              v270 = v411;
              if (v411(v269, 1, v262) == 1)
              {
                (v459)(v414, v438, v262);
                if (v270(v269, 1, v262) != 1)
                {
                  sub_1D1741A30(v269, &qword_1EC642590, qword_1D1E71260);
                }
              }

              else
              {
                (v456)(v414, v269, v262);
              }

              v271 = v406;
              sub_1D1741A90(v422, v406, &qword_1EC642570, &qword_1D1E6C6A0);
              v272 = v391;
              v273 = *(v391 + 6);
              if (v273(v271, 1, v263) == 1)
              {
                sub_1D1741C08(v438 + v434[5], v424, &qword_1EC642570, &qword_1D1E6C6A0);
                if (v273(v271, 1, v263) != 1)
                {
                  sub_1D1741A30(v406, &qword_1EC642570, &qword_1D1E6C6A0);
                }
              }

              else
              {
                v274 = v424;
                (*(v272 + 4))(v424, v271, v263);
                v383(v274, 0, 1, v263);
              }

              v275 = v434;
              v276 = v434[7];
              v277 = v438;
              v381 = *(v438 + v434[6]);
              v278 = *(v438 + v276 + 8);
              v383 = *(v438 + v276);
              v279 = v401;
              sub_1D1741A90(v426, v401, &qword_1EC643C58, &unk_1D1E995D0);
              v280 = *v352;
              v281 = v396;
              v282 = (*v352)(v279, 1, v396);
              v382 = v278;
              if (v282 == 1)
              {
                sub_1D1CB2110(v277 + v275[8], v431, type metadata accessor for StaticAccessory.DeviceIdentifier);
                v283 = v280(v279, 1, v281);

                if (v283 != 1)
                {
                  sub_1D1741A30(v279, &qword_1EC643C58, &unk_1D1E995D0);
                }
              }

              else
              {
                sub_1D1CB2178(v279, v431, type metadata accessor for StaticAccessory.DeviceIdentifier);
              }

              v284 = v402;
              sub_1D1741A90(v427, v402, &qword_1EC644620, &unk_1D1E75A00);
              v285 = *(v442 + 48);
              v286 = v443;
              if (v285(v284, 1, v443) == 1)
              {
                v287 = v286;
                v288 = v438;
                sub_1D1741C08(v438 + v275[9], v428, &qword_1EC644620, &unk_1D1E75A00);
                if (v285(v284, 1, v287) != 1)
                {
                  sub_1D1741A30(v284, &qword_1EC644620, &unk_1D1E75A00);
                }
              }

              else
              {
                v289 = v284;
                v290 = v428;
                sub_1D1CB2178(v289, v428, type metadata accessor for StaticDeviceMetadata);
                v378(v290, 0, 1, v286);
                v288 = v438;
              }

              sub_1D1741A90(v423, v425, &qword_1EC642570, &qword_1D1E6C6A0);
              LODWORD(v379) = *(v288 + v275[11]);
              v291 = v399;
              sub_1D1741A90(v419, v399, &qword_1EC642590, qword_1D1E71260);
              v292 = v288;
              v293 = v463;
              v294 = v411;
              v295 = v411(v291, 1, v463);
              v296 = v400;
              if (v295 == 1)
              {
                (v459)(v415, v292 + v275[12], v293);
                if (v294(v291, 1, v293) != 1)
                {
                  sub_1D1741A30(v291, &qword_1EC642590, qword_1D1E71260);
                }
              }

              else
              {
                (v456)(v415, v291, v293);
              }

              v297 = v275[14];
              v298 = v438;
              v443 = *(v438 + v275[13]);
              v299 = *(v438 + v297 + 8);
              v378 = *(v438 + v297);
              v300 = v275[16];
              v374 = *(v438 + v275[15]);
              v375 = *(v438 + v300);
              v301 = v275[18];
              v371 = *(v438 + v275[17]);
              v373 = *(v438 + v301);
              v372 = *(v438 + v275[19]);
              v302 = *(v438 + v275[21]);
              sub_1D1741A90(v420, v296, &qword_1EC642590, qword_1D1E71260);
              v303 = v411;
              v304 = v411(v296, 1, v293);
              v377 = v299;
              v376 = v302;
              if (v304 == 1)
              {
                sub_1D1741C08(v298 + v275[22], v421, &qword_1EC642590, qword_1D1E71260);
                v305 = v303(v296, 1, v293);

                if (v305 != 1)
                {
                  sub_1D1741A30(v296, &qword_1EC642590, qword_1D1E71260);
                }
              }

              else
              {
                v306 = v421;
                (v456)(v421, v296, v293);
                v390(v306, 0, 1, v293);
              }

              v307 = v275[24];
              v308 = v438;
              v309 = v438 + v275[23];
              v442 = *v309;
              LODWORD(v411) = *(v309 + 8);
              v310 = v275[26];
              v391 = *(v438 + v275[25]);
              v370 = *(v438 + v310);
              v311 = v275[28];
              v369 = *(v438 + v275[27]);
              v312 = *(v438 + v307 + 8);
              v366 = *(v438 + v307);
              v390 = v312;
              v368 = *(v438 + v311);
              v367 = *(v438 + v275[29]);
              v313 = v403;
              sub_1D1741A90(v429, v403, &qword_1EC644760, &unk_1D1E9E530);
              v314 = *(v380 + 48);
              v315 = v389;
              if (v314(v313, 1, v389) == 1)
              {
                sub_1D1741C08(v308 + v275[30], v430, &qword_1EC644760, &unk_1D1E9E530);
                v316 = v314(v313, 1, v315);
                sub_1D18EB144(v442, v411);

                if (v316 != 1)
                {
                  sub_1D1741A30(v313, &qword_1EC644760, &unk_1D1E9E530);
                }
              }

              else
              {
                v317 = v430;
                sub_1D1CB2178(v313, v430, type metadata accessor for StaticSoftwareUpdate);
                v364(v317, 0, 1, v315);
                sub_1D18EB144(v442, v411);
              }

              v318 = v275[32];
              LODWORD(v365) = *(v308 + v275[31]);
              LODWORD(v380) = *(v308 + v318);
              v319 = v275[34];
              v389 = *(v308 + v275[33]);
              LODWORD(v364) = *(v308 + v319);
              v320 = v275[36];
              v360 = *(v308 + v275[35]);
              v363 = *(v308 + v320);
              v362 = *(v308 + v320 + 8);
              v361 = *(v308 + v275[37]);
              v321 = v405;
              sub_1D1741A90(v416, v405, &qword_1EC643650, &qword_1D1E71D40);
              v322 = *v351;
              v323 = v386;
              if ((*v351)(v321, 1, v386) == 1)
              {
                sub_1D1741C08(v308 + v275[38], v417, &qword_1EC643650, &qword_1D1E71D40);
                v324 = v322(v321, 1, v323);

                if (v324 != 1)
                {
                  sub_1D1741A30(v405, &qword_1EC643650, &qword_1D1E71D40);
                }
              }

              else
              {
                v325 = v417;
                sub_1D1CB2178(v321, v417, type metadata accessor for StaticMatterDevice);
                v359(v325, 0, 1, v323);
              }

              v326 = v397;
              v327 = v456;
              (v456)(v397, v414, v463);
              v328 = v434;
              sub_1D1741A90(v424, v326 + v434[5], &qword_1EC642570, &qword_1D1E6C6A0);
              *(v326 + v328[6]) = v381;
              v329 = (v326 + v328[7]);
              v330 = v382;
              *v329 = v383;
              v329[1] = v330;
              sub_1D1CB2178(v431, v326 + v328[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
              sub_1D1741A90(v428, v326 + v328[9], &qword_1EC644620, &unk_1D1E75A00);
              sub_1D1741A90(v425, v326 + v328[10], &qword_1EC642570, &qword_1D1E6C6A0);
              *(v326 + v328[11]) = v379;
              v331 = v463;
              v327(v326 + v328[12], v415, v463);
              *(v326 + v328[13]) = v443;
              v332 = (v326 + v328[14]);
              v333 = v377;
              *v332 = v378;
              v332[1] = v333;
              *(v326 + v328[15]) = v374;
              *(v326 + v328[16]) = v375;
              *(v326 + v328[17]) = v371;
              *(v326 + v328[18]) = v373;
              *(v326 + v328[19]) = v372;
              *(v326 + v328[20]) = v243;
              *(v326 + v328[21]) = v376;
              sub_1D1741A90(v421, v326 + v328[22], &qword_1EC642590, qword_1D1E71260);
              v334 = v326 + v328[23];
              *v334 = v442;
              *(v334 + 8) = v411;
              v335 = (v326 + v328[24]);
              v336 = v390;
              *v335 = v366;
              v335[1] = v336;
              *(v326 + v328[25]) = v391;
              *(v326 + v328[26]) = v370;
              *(v326 + v328[27]) = v369;
              *(v326 + v328[28]) = v368;
              *(v326 + v328[29]) = v367;
              sub_1D1741A90(v430, v326 + v328[30], &qword_1EC644760, &unk_1D1E9E530);
              *(v326 + v328[31]) = v365;
              *(v326 + v328[32]) = v380;
              *(v326 + v328[33]) = v389;
              *(v326 + v328[34]) = v364;
              *(v326 + v328[35]) = v360;
              v337 = v326 + v328[36];
              *v337 = v363;
              *(v337 + 8) = v362;
              *(v326 + v328[37]) = v361;
              sub_1D1741A90(v417, v326 + v328[38], &qword_1EC643650, &qword_1D1E71D40);
              v338 = v445;
              v339 = v331;
              (v459)(v445, v326, v331);
              v340 = v408;
              sub_1D1CB2110(v326, v408, type metadata accessor for StaticAccessory);
              v387(v340, 0, 1, v328);
              sub_1D1B0CF04(v340, v338);

              sub_1D1CB2248(v326, type metadata accessor for StaticAccessory);
              v208 = v339;
              sub_1D1CB2248(v438, type metadata accessor for StaticAccessory);
              v191 = v451;
              v451(v435, v339);
              v147 = v446;
              v190 = v449;
            }

            else
            {
              sub_1D1CB2248(v213, type metadata accessor for StaticAccessory);
              v241 = v209;
              v208 = v463;
              v191 = v451;
              v451(v241, v463);
              v190 = v449;
            }
          }

          else
          {
            v239 = v209;
            v191 = v451;
            v451(v239, v208);
          }
        }

        v191(v190, v208);
        v183 = v440;
        v188 = v439;
        v187 = v453;
        v189 = v454;
      }

      if (v188 <= (v133 + 1))
      {
        v193 = v133 + 1;
      }

      else
      {
        v193 = v188;
      }

      v194 = v193 - 1;
      while (1)
      {
        v192 = (v133 + 1);
        if (__OFADD__(v133, 1))
        {
          break;
        }

        if (v192 >= v188)
        {
          v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v240 - 8) + 56))(v189, 1, 1, v240);
          v453 = 0;
          v133 = v194;
          goto LABEL_46;
        }

        v187 = *&v183[2 * v192];
        ++v133;
        if (v187)
        {
          v133 = v192;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_114;
    }
  }
}

uint64_t sub_1D1CAB6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v71 = type metadata accessor for StaticService(0);
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF48, &unk_1D1EA2F90);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v59 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v58 = &v56 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v56 - v25;
  sub_1D1741C08(a1, v16, &qword_1EC642DB0, &unk_1D1E6F360);
  v68 = v7;
  v27 = *(v7 + 48);
  v66 = v16;
  sub_1D1CB2178(&v16[v27], v26, type metadata accessor for StaticService);
  v28 = v4;
  v29 = v4 + 56;
  v30 = *(v4 + 56);
  v31 = 1;
  v32 = v71;
  v69 = v30;
  v70 = v29;
  (v30)(v26, 0, 1);
  v33 = *(v64 + *(type metadata accessor for StateSnapshot(0) + 60));
  v64 = a1;
  sub_1D1741C08(a1, v14, &qword_1EC642DB0, &unk_1D1E6F360);
  v34 = *(v33 + 16);
  v67 = v14;
  if (v34)
  {
    v35 = sub_1D1742188();
    if (v36)
    {
      sub_1D1CB2110(*(v33 + 56) + *(v28 + 72) * v35, v24, type metadata accessor for StaticService);
      v31 = 0;
    }
  }

  v37 = v63;
  v69(v24, v31, 1, v32);
  v38 = *(v65 + 48);
  sub_1D1741C08(v26, v37, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1741C08(v24, v37 + v38, &qword_1EC6436F0, &qword_1D1E99BC0);
  v39 = *(v28 + 48);
  if (v39(v37, 1, v32) == 1)
  {
    sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v26, &qword_1EC6436F0, &qword_1D1E99BC0);
    v40 = v39(v37 + v38, 1, v32);
    v41 = v67;
    if (v40 == 1)
    {
      sub_1D1741A30(v37, &qword_1EC6436F0, &qword_1D1E99BC0);
      v42 = 1;
      v43 = v68;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v44 = v58;
  sub_1D1741C08(v37, v58, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v39(v37 + v38, 1, v32) == 1)
  {
    sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v26, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1CB2248(v44, type metadata accessor for StaticService);
    v41 = v67;
LABEL_9:
    sub_1D1741A30(v37, &qword_1EC64CF48, &unk_1D1EA2F90);
    v42 = 0;
    v43 = v68;
    goto LABEL_11;
  }

  v45 = v57;
  sub_1D1CB2178(v37 + v38, v57, type metadata accessor for StaticService);
  v46 = v44;
  v42 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v44, v45);
  sub_1D1CB2248(v45, type metadata accessor for StaticService);
  sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1741A30(v26, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1CB2248(v46, type metadata accessor for StaticService);
  sub_1D1741A30(v37, &qword_1EC6436F0, &qword_1D1E99BC0);
  v41 = v67;
  v43 = v68;
LABEL_11:
  sub_1D1CB2248(&v41[*(v43 + 48)], type metadata accessor for StaticService);
  v47 = sub_1D1E66A7C();
  v48 = *(*(v47 - 8) + 8);
  v48(v41, v47);
  result = (v48)(v66, v47);
  if (!v42)
  {
    v50 = v64;
    v51 = v61;
    sub_1D1741C08(v64, v61, &qword_1EC642DB0, &unk_1D1E6F360);
    v52 = *(v43 + 48);
    v53 = v50;
    v54 = v60;
    sub_1D1741C08(v53, v60, &qword_1EC642DB0, &unk_1D1E6F360);
    v55 = v59;
    sub_1D1CB2178(v54 + *(v43 + 48), v59, type metadata accessor for StaticService);
    v69(v55, 0, 1, v71);
    sub_1D1B0D124(v55, v51);
    v48(v54, v47);
    return sub_1D1CB2248(v51 + v52, type metadata accessor for StaticService);
  }

  return result;
}

uint64_t sub_1D1CABDE0(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D1CABEEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v94 = a4;
  v87 = a3;
  v96 = a2;
  v97 = a6;
  v7 = sub_1D1E66A7C();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v86 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C5F8, &qword_1D1E9FA00);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v85 - v24;
  v26 = type metadata accessor for StaticHH2Update(0);
  v27 = *(v26 - 1);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v85 - v31;
  sub_1D1741C08(a1, v25, &qword_1EC64C5F8, &qword_1D1E9FA00);
  v95 = v27;
  v33 = *(v27 + 48);
  if (v33(v25, 1, v26) != 1)
  {
    sub_1D1CB2178(v25, v32, type metadata accessor for StaticHH2Update);
    v34 = v96;
    if (!v96)
    {
      sub_1D1CB2248(v32, type metadata accessor for StaticHH2Update);
      goto LABEL_9;
    }

    v35 = v32;
    if (v87)
    {
      v36 = v87;
      v37 = v34;
      v38 = [v36 licenseAgreement];
      v40 = v92;
      v39 = v93;
      v41 = v90;
      if (v38)
      {

        v42 = v36;
        v43 = [v42 releaseNotes];
        if (v43 || (v43 = [v42 releaseNotesSummary]) != 0)
        {
          v67 = v43;
          v68 = [v43 stringValue];
          v91 = sub_1D1E6781C();
          v66 = v69;

          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v55 = v96;
      v40 = v92;
      v39 = v93;
      v41 = v90;
    }

    v65 = (v35 + v26[6]);
    v66 = v65[1];
    if (v66 >= 2)
    {
      v91 = *v65;

      goto LABEL_27;
    }

LABEL_23:
    v91 = 0;
    v66 = 0;
LABEL_27:
    v70 = v34;
    sub_1D1D2EF78(v70, [v94 softwareVersion], &v98);
    v71 = v98;
    v72 = v98;
    v73 = v88;
    (*(v40 + 56))(v88, 1, 1, v39);
    v74 = *(v35 + v26[5]);
    if ((((v74 - 8) < 0xFAu) & v74 & (v72 == 5)) != 0)
    {
      v71 = *(v35 + v26[5]);
    }

    if (!v66)
    {
      v75 = (v35 + v26[6]);
      v66 = v75[1];
      v91 = *v75;
      sub_1D18614CC(v91, v66);
    }

    v76 = v73;
    v77 = v89;
    sub_1D1741A90(v76, v89, &qword_1EC642590, qword_1D1E71260);
    v78 = *(v40 + 48);
    if (v78(v77, 1, v39) == 1)
    {
      (*(v40 + 16))(v41, v35, v39);
      if (v78(v77, 1, v39) != 1)
      {
        sub_1D1741A30(v77, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v40 + 32))(v41, v77, v39);
    }

    v79 = v35 + v26[7];
    v80 = *v79;
    v81 = *(v79 + 8);
    sub_1D1CB2248(v35, type metadata accessor for StaticHH2Update);
    v82 = v97;
    (*(v40 + 32))(v97, v41, v39);
    *(v82 + v26[5]) = v71;
    v83 = (v82 + v26[6]);
    *v83 = v91;
    v83[1] = v66;
    v84 = v82 + v26[7];
    *v84 = v80;
    *(v84 + 8) = v81;
    v63 = *(v95 + 56);
    v64 = v82;
    return v63(v64, 0, 1, v26);
  }

  sub_1D1741A30(v25, &qword_1EC64C5F8, &qword_1D1E9FA00);
  v34 = v96;
LABEL_9:
  sub_1D1741C08(a1, v23, &qword_1EC64C5F8, &qword_1D1E9FA00);
  if (v33(v23, 1, v26) == 1)
  {
    sub_1D1741A30(v23, &qword_1EC64C5F8, &qword_1D1E9FA00);
    if (v34)
    {
LABEL_11:
      v44 = v34;
      v45 = v94;
      return sub_1D1D269CC(v44, v45, v97);
    }

    return (*(v95 + 56))(v97, 1, 1, v26);
  }

  sub_1D1CB2178(v23, v30, type metadata accessor for StaticHH2Update);
  v47 = v91;
  if (!v91)
  {
    sub_1D1CB2248(v30, type metadata accessor for StaticHH2Update);
    if (v34)
    {
      goto LABEL_11;
    }

    return (*(v95 + 56))(v97, 1, 1, v26);
  }

  v49 = v92;
  v48 = v93;
  (*(v92 + 56))(v16, 1, 1, v93);
  [v47 percentageComplete];
  v51 = v50;
  v52 = v85;
  sub_1D1741A90(v16, v85, &qword_1EC642590, qword_1D1E71260);
  v53 = *(v49 + 48);
  if (v53(v52, 1, v48) == 1)
  {
    v54 = v86;
    (*(v49 + 16))(v86, v30, v48);
    if (v53(v52, 1, v48) != 1)
    {
      sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v54 = v86;
    (*(v49 + 32))(v86, v52, v48);
  }

  v56 = v26[6];
  v57 = v30[v26[5]];
  v58 = *&v30[v56];
  v59 = *&v30[v56 + 8];
  sub_1D18614CC(v58, v59);
  sub_1D1CB2248(v30, type metadata accessor for StaticHH2Update);
  v60 = v97;
  (*(v49 + 32))(v97, v54, v48);
  *(v60 + v26[5]) = v57;
  v61 = (v60 + v26[6]);
  *v61 = v58;
  v61[1] = v59;
  v62 = v60 + v26[7];
  *v62 = v51;
  *(v62 + 8) = 0;
  v63 = *(v95 + 56);
  v64 = v60;
  return v63(v64, 0, 1, v26);
}

uint64_t sub_1D1CAC7EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v744 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v653 = &v626 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v654 = &v626 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v703 = &v626 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v741 = &v626 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v742 = &v626 - v14;
  v758 = type metadata accessor for StaticService(0);
  v740 = *(v758 - 1);
  v15 = MEMORY[0x1EEE9AC00](v758);
  v655 = &v626 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v656 = &v626 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v704 = &v626 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643770, &qword_1D1E71EC8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v736 = &v626 - v21;
  v757 = type metadata accessor for StaticMediaSystem(0);
  v735 = *(v757 - 1);
  v22 = MEMORY[0x1EEE9AC00](v757);
  v685 = &v626 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v686 = &v626 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v746 = &v626 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v727 = &v626 - v28;
  v754 = type metadata accessor for StaticMediaProfile(0);
  v726 = *(v754 - 1);
  v29 = MEMORY[0x1EEE9AC00](v754);
  v680 = &v626 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v681 = &v626 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v745 = &v626 - v33;
  v34 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v751 = *(v34 - 8);
  v752 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v721 = &v626 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v668 = &v626 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v755 = &v626 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v719 = &v626 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v652 = &v626 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v702 = &v626 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v697 = &v626 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v683 = &v626 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v739 = &v626 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v738 = &v626 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v676 = &v626 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v677 = &v626 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v730 = &v626 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v667 = &v626 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v720 = &v626 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v716 = (&v626 - v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v67 = MEMORY[0x1EEE9AC00](v66 - 8);
  v647 = &v626 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v701 = &v626 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v689 = &v626 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v665 = &v626 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v718 = &v626 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v712 = (&v626 - v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v79 = MEMORY[0x1EEE9AC00](v78 - 8);
  v673 = &v626 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v731 = &v626 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v728 = (&v626 - v84);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v664 = &v626 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v709 = (&v626 - v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v89 = MEMORY[0x1EEE9AC00](v88 - 8);
  v649 = &v626 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v700 = &v626 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v646 = &v626 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v699 = &v626 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v690 = &v626 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v687 = &v626 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v679 = &v626 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v737 = &v626 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v678 = &v626 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v672 = &v626 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v729 = (&v626 - v110);
  v111 = MEMORY[0x1EEE9AC00](v109);
  v723 = &v626 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v717 = &v626 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v660 = &v626 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v715 = (&v626 - v118);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v710 = &v626 - v120;
  MEMORY[0x1EEE9AC00](v119);
  v706 = &v626 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v123 = MEMORY[0x1EEE9AC00](v122 - 8);
  v651 = &v626 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x1EEE9AC00](v123);
  v698 = &v626 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v650 = &v626 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v696 = &v626 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v648 = &v626 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v695 = &v626 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v645 = &v626 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v644 = &v626 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v692 = &v626 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v691 = &v626 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v688 = &v626 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v684 = &v626 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v643 = &v626 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v682 = &v626 - v150;
  v151 = MEMORY[0x1EEE9AC00](v149);
  v675 = &v626 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v734 = &v626 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v674 = &v626 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v671 = &v626 - v158;
  v159 = MEMORY[0x1EEE9AC00](v157);
  v670 = &v626 - v160;
  v161 = MEMORY[0x1EEE9AC00](v159);
  v722 = &v626 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v669 = &v626 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v662 = &v626 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v714 = &v626 - v168;
  v169 = MEMORY[0x1EEE9AC00](v167);
  v661 = &v626 - v170;
  v171 = MEMORY[0x1EEE9AC00](v169);
  v659 = &v626 - v172;
  v173 = MEMORY[0x1EEE9AC00](v171);
  v708 = &v626 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v707 = (&v626 - v176);
  MEMORY[0x1EEE9AC00](v175);
  v705 = &v626 - v177;
  v178 = type metadata accessor for StaticAccessory(0);
  v658 = *(v178 - 1);
  v179 = MEMORY[0x1EEE9AC00](v178);
  v666 = &v626 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = MEMORY[0x1EEE9AC00](v179);
  v183 = &v626 - v182;
  v184 = MEMORY[0x1EEE9AC00](v181);
  v657 = &v626 - v185;
  MEMORY[0x1EEE9AC00](v184);
  v663 = &v626 - v186;
  v187 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v187);
  v189 = &v626 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for StaticHH2Update(0);
  v191 = MEMORY[0x1EEE9AC00](v190 - 8);
  v193 = &v626 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v191);
  v195 = &v626 - v194;
  v196 = sub_1D1E66A7C();
  v197 = MEMORY[0x1EEE9AC00](v196);
  v694 = &v626 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = MEMORY[0x1EEE9AC00](v197);
  v693 = &v626 - v200;
  v201 = MEMORY[0x1EEE9AC00](v199);
  v733 = &v626 - v202;
  v203 = MEMORY[0x1EEE9AC00](v201);
  v732 = &v626 - v204;
  v205 = MEMORY[0x1EEE9AC00](v203);
  v725 = &v626 - v206;
  v207 = MEMORY[0x1EEE9AC00](v205);
  v724 = &v626 - v208;
  v209 = MEMORY[0x1EEE9AC00](v207);
  v713 = &v626 - v210;
  v211 = MEMORY[0x1EEE9AC00](v209);
  v711 = &v626 - v212;
  MEMORY[0x1EEE9AC00](v211);
  v214 = &v626 - v213;
  v761 = v215;
  v762 = v216;
  v747 = *(v216 + 16);
  v748 = v216 + 16;
  v747(&v626 - v213, a1);
  v760 = type metadata accessor for StateSnapshot(0);
  v217 = a2;
  v218 = *(a2 + v760[18]);
  v759 = type metadata accessor for StaticSoftwareUpdate(0);
  v219 = *(v759 + 20);
  v749 = a1;
  sub_1D1CB2110(a1 + v219, v189, type metadata accessor for StaticSoftwareUpdate.Kind);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1D1CB2248(v189, type metadata accessor for StaticSoftwareUpdate.Kind);
  }

  else
  {
    sub_1D1CB2178(v189, v195, type metadata accessor for StaticHH2Update);
    sub_1D1CB2110(v195, v193, type metadata accessor for StaticHH2Update);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v763 = v218;
    sub_1D175346C(v193, v214, isUniquelyReferenced_nonNull_native);
    sub_1D1CB2248(v195, type metadata accessor for StaticHH2Update);
    v218 = v763;
  }

  v743 = v218;
  v221 = v217;
  v222 = *(v217 + v760[8]);
  v223 = *(v222 + 16);

  v750 = v217;
  v756 = v214;
  if (v223)
  {
    v224 = sub_1D1742188();
    v225 = v754;
    if ((v226 & 1) == 0)
    {
      goto LABEL_40;
    }

    v753 = v222;
    v227 = v657;
    sub_1D1CB2110(*(v222 + 56) + *(v658 + 9) * v224, v657, type metadata accessor for StaticAccessory);
    v228 = v663;
    sub_1D1CB2178(v227, v663, type metadata accessor for StaticAccessory);
    v230 = v761;
    v229 = v762;
    v232 = v762 + 56;
    v231 = *(v762 + 56);
    v231(v705, 1, 1, v761);
    v233 = sub_1D1E669FC();
    v638 = *(v233 - 8);
    v235 = v638 + 56;
    v234 = *(v638 + 56);
    v234(v706, 1, 1, v233);
    (*(v751 + 7))(v709, 1, 1, v752);
    v236 = type metadata accessor for StaticDeviceMetadata(0);
    v639 = *(v236 - 8);
    v237 = *(v639 + 56);
    v640 = v236;
    v637 = v639 + 56;
    v634 = v237;
    (v237)(v712, 1, 1);
    v633 = v234;
    v630 = v235;
    v234(v710, 1, 1, v233);
    v231(v707, 1, 1, v230);
    v636 = v232;
    v635 = v231;
    v231(v708, 1, 1, v230);
    v238 = v716;
    sub_1D1CB2110(v749, v716, type metadata accessor for StaticSoftwareUpdate);
    v641 = *(v759 - 8);
    v239 = *(v641 + 56);
    v632 = v641 + 56;
    v631 = v239;
    (v239)(v238, 0, 1);
    v240 = type metadata accessor for StaticMatterDevice(0);
    v642 = *(v240 - 8);
    v241 = *(v642 + 56);
    v657 = v240;
    v628 = v642 + 56;
    v627 = v241;
    (v241)(v719, 1, 1);
    v242 = v659;
    sub_1D1741A90(v705, v659, &qword_1EC642590, qword_1D1E71260);
    v243 = *(v229 + 48);
    v244 = v243(v242, 1, v230);
    v658 = v243;
    v705 = v229 + 48;
    if (v244 == 1)
    {
      (v747)(v711, v228, v230);
      if (v243(v242, 1, v230) != 1)
      {
        sub_1D1741A30(v242, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v229 + 32))(v711, v242, v230);
    }

    v245 = v660;
    sub_1D1741A90(v706, v660, &qword_1EC642570, &qword_1D1E6C6A0);
    v246 = v638;
    v247 = *(v638 + 48);
    if (v247(v245, 1, v233) == 1)
    {
      sub_1D1741C08(v228 + v178[5], v715, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v247(v245, 1, v233) != 1)
      {
        sub_1D1741A30(v245, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v248 = v715;
      (*(v246 + 32))(v715, v245, v233);
      v633(v248, 0, 1, v233);
    }

    v249 = v178[7];
    LODWORD(v660) = *(v228 + v178[6]);
    v250 = *(v228 + v249 + 8);
    v706 = *(v228 + v249);
    v251 = v664;
    sub_1D1741A90(v709, v664, &qword_1EC643C58, &unk_1D1E995D0);
    v252 = v752;
    v253 = *(v751 + 6);
    v254 = v253(v251, 1, v752);
    v255 = v761;
    if (v254 == 1)
    {
      sub_1D1CB2110(v228 + v178[8], v721, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v256 = v253(v251, 1, v252);

      if (v256 != 1)
      {
        sub_1D1741A30(v251, &qword_1EC643C58, &unk_1D1E995D0);
      }
    }

    else
    {
      sub_1D1CB2178(v251, v721, type metadata accessor for StaticAccessory.DeviceIdentifier);
    }

    v257 = v665;
    sub_1D1741A90(v712, v665, &qword_1EC644620, &unk_1D1E75A00);
    v258 = *(v639 + 48);
    v259 = v640;
    if (v258(v257, 1, v640) == 1)
    {
      sub_1D1741C08(v228 + v178[9], v718, &qword_1EC644620, &unk_1D1E75A00);
      if (v258(v257, 1, v259) != 1)
      {
        sub_1D1741A30(v257, &qword_1EC644620, &unk_1D1E75A00);
      }
    }

    else
    {
      v260 = v718;
      sub_1D1CB2178(v257, v718, type metadata accessor for StaticDeviceMetadata);
      v634(v260, 0, 1, v259);
    }

    sub_1D1741A90(v710, v717, &qword_1EC642570, &qword_1D1E6C6A0);
    LODWORD(v665) = *(v228 + v178[11]);
    v261 = v661;
    sub_1D1741A90(v707, v661, &qword_1EC642590, qword_1D1E71260);
    v262 = v658;
    if (v658(v261, 1, v255) == 1)
    {
      (v747)(v713, v228 + v178[12], v255);
      v263 = v262(v261, 1, v255);
      v264 = v662;
      v265 = v255;
      if (v263 != 1)
      {
        sub_1D1741A30(v261, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v762 + 32))(v713, v261, v255);
      v264 = v662;
      v265 = v255;
    }

    v709 = v250;
    v266 = v178[14];
    v712 = *(v228 + v178[13]);
    v267 = v178[16];
    LODWORD(v664) = *(v228 + v178[15]);
    LODWORD(v707) = *(v228 + v267);
    v268 = v178[18];
    LODWORD(v661) = *(v228 + v178[17]);
    LODWORD(v662) = *(v228 + v268);
    v269 = v178[20];
    LODWORD(v659) = *(v228 + v178[19]);
    v270 = *(v228 + v266 + 8);
    v639 = *(v228 + v266);
    v271 = *(v228 + v269);
    v272 = *(v228 + v178[21]);
    sub_1D1741A90(v708, v264, &qword_1EC642590, qword_1D1E71260);
    v273 = v658;
    v274 = v658(v264, 1, v265);
    v640 = v271;
    v638 = v270;
    v637 = v272;
    if (v274 == 1)
    {
      sub_1D1741C08(v228 + v178[22], v714, &qword_1EC642590, qword_1D1E71260);
      v275 = v273(v264, 1, v265);

      if (v275 != 1)
      {
        sub_1D1741A30(v264, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v276 = v714;
      (*(v762 + 32))(v714, v264, v265);
      v635(v276, 0, 1, v265);
    }

    v277 = v178[24];
    v278 = v228 + v178[23];
    v279 = *v278;
    v280 = *(v278 + 8);
    v281 = v178[26];
    v710 = *(v228 + v178[25]);
    LODWORD(v705) = *(v228 + v281);
    v282 = v178[28];
    LODWORD(v658) = *(v228 + v178[27]);
    v283 = *(v228 + v277 + 8);
    v634 = *(v228 + v277);
    LODWORD(v636) = *(v228 + v282);
    LODWORD(v635) = *(v228 + v178[29]);
    v284 = v667;
    sub_1D1741A90(v716, v667, &qword_1EC644760, &unk_1D1E9E530);
    v285 = *(v641 + 48);
    v286 = v759;
    v287 = v285(v284, 1, v759);
    v708 = v279;
    v629 = v280;
    if (v287 == 1)
    {
      sub_1D1741C08(v228 + v178[30], v720, &qword_1EC644760, &unk_1D1E9E530);
      v288 = v285(v284, 1, v286);
      sub_1D18EB144(v279, v280);

      v289 = v288 == 1;
      v290 = v657;
      v291 = v284;
      v292 = v283;
      if (!v289)
      {
        sub_1D1741A30(v291, &qword_1EC644760, &unk_1D1E9E530);
      }
    }

    else
    {
      v293 = v720;
      sub_1D1CB2178(v284, v720, type metadata accessor for StaticSoftwareUpdate);
      v631(v293, 0, 1, v286);
      sub_1D18EB144(v279, v280);

      v290 = v657;
      v292 = v283;
    }

    v294 = v178[32];
    LODWORD(v667) = *(v228 + v178[31]);
    LODWORD(v716) = *(v228 + v294);
    v295 = *(v228 + v178[33]);
    LODWORD(v657) = *(v228 + v178[34]);
    v296 = v178[36];
    LODWORD(v630) = *(v228 + v178[35]);
    v641 = *(v228 + v296);
    LODWORD(v632) = *(v228 + v296 + 8);
    LODWORD(v631) = *(v228 + v178[37]);
    v297 = v668;
    sub_1D1741A90(v719, v668, &qword_1EC643650, &qword_1D1E71D40);
    v298 = *(v642 + 48);
    v299 = v298(v297, 1, v290);
    v633 = v292;
    if (v299 == 1)
    {
      v300 = v629;
      sub_1D1741C08(v228 + v178[38], v755, &qword_1EC643650, &qword_1D1E71D40);
      v301 = v298(v297, 1, v290);

      v302 = v297;
      v303 = v295;
      if (v301 != 1)
      {
        sub_1D1741A30(v302, &qword_1EC643650, &qword_1D1E71D40);
      }
    }

    else
    {
      v300 = v629;
      v304 = v755;
      sub_1D1CB2178(v297, v755, type metadata accessor for StaticMatterDevice);
      v627(v304, 0, 1, v290);

      v303 = v295;
    }

    v305 = v761;
    v306 = *(v762 + 32);
    v306(v183, v711, v761);
    sub_1D1741A90(v715, &v183[v178[5]], &qword_1EC642570, &qword_1D1E6C6A0);
    v183[v178[6]] = v660;
    v307 = &v183[v178[7]];
    v308 = v709;
    *v307 = v706;
    *(v307 + 1) = v308;
    sub_1D1CB2178(v721, &v183[v178[8]], type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1741A90(v718, &v183[v178[9]], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1741A90(v717, &v183[v178[10]], &qword_1EC642570, &qword_1D1E6C6A0);
    v183[v178[11]] = v665;
    v306(&v183[v178[12]], v713, v305);
    *&v183[v178[13]] = v712;
    v309 = &v183[v178[14]];
    v310 = v638;
    *v309 = v639;
    *(v309 + 1) = v310;
    v183[v178[15]] = v664;
    v183[v178[16]] = v707;
    v183[v178[17]] = v661;
    v183[v178[18]] = v662;
    v183[v178[19]] = v659;
    *&v183[v178[20]] = v640;
    *&v183[v178[21]] = v637;
    sub_1D1741A90(v714, &v183[v178[22]], &qword_1EC642590, qword_1D1E71260);
    v311 = &v183[v178[23]];
    *v311 = v708;
    v311[8] = v300;
    v312 = &v183[v178[24]];
    v313 = v633;
    *v312 = v634;
    *(v312 + 1) = v313;
    *&v183[v178[25]] = v710;
    v183[v178[26]] = v705;
    v183[v178[27]] = v658;
    v183[v178[28]] = v636;
    v183[v178[29]] = v635;
    sub_1D1741A90(v720, &v183[v178[30]], &qword_1EC644760, &unk_1D1E9E530);
    v183[v178[31]] = v667;
    v183[v178[32]] = v716;
    *&v183[v178[33]] = v303;
    v183[v178[34]] = v657;
    v183[v178[35]] = v630;
    v314 = &v183[v178[36]];
    *v314 = v641;
    v314[8] = v632;
    v183[v178[37]] = v631;
    sub_1D1741A90(v755, &v183[v178[38]], &qword_1EC643650, &qword_1D1E71D40);
    v315 = v666;
    sub_1D1CB2110(v183, v666, type metadata accessor for StaticAccessory);
    v316 = v753;
    v317 = swift_isUniquelyReferenced_nonNull_native();
    v763 = v316;
    v214 = v756;
    sub_1D1753298(v315, v756, v317);
    sub_1D1CB2248(v183, type metadata accessor for StaticAccessory);
    sub_1D1CB2248(v228, type metadata accessor for StaticAccessory);
    v222 = v763;
    v221 = v750;
  }

  v225 = v754;
LABEL_40:
  v318 = *(v221 + v760[12]);
  swift_bridgeObjectRetain_n();
  v755 = v318;
  v319 = sub_1D178166C(v318);
  MEMORY[0x1EEE9AC00](v319);
  *(&v626 - 2) = v214;
  v320 = v727;
  v321 = 0;
  sub_1D1747080(sub_1D1CC75C4, v319, v727);

  v322 = (*(v726 + 48))(v320, 1, v225);
  v753 = v222;
  if (v322 == 1)
  {
    sub_1D1741A30(v320, &qword_1EC643758, &qword_1D1E71EB0);
  }

  else
  {
    v726 = 0;
    v323 = v745;
    sub_1D1CB2178(v320, v745, type metadata accessor for StaticMediaProfile);
    v325 = v761;
    v324 = v762;
    v326 = *(v762 + 56);
    v327 = v669;
    v326(v669, 1, 1, v761);
    v328 = sub_1D1E669FC();
    v329 = *(v328 - 8);
    v330 = *(v329 + 56);
    v716 = (v329 + 56);
    v715 = v330;
    (v330)(v723, 1, 1, v328);
    v326(v722, 1, 1, v325);
    v331 = *(v751 + 7);
    v710 = v751 + 56;
    v709 = v331;
    (v331)(v728, 1, 1, v752);
    v332 = v730;
    sub_1D1CB2110(v749, v730, type metadata accessor for StaticSoftwareUpdate);
    v717 = *(v759 - 8);
    v333 = *(v717 + 56);
    v708 = v717 + 56;
    v707 = v333;
    (v333)(v332, 0, 1);
    v334 = v670;
    sub_1D1741A90(v327, v670, &qword_1EC642590, qword_1D1E71260);
    v335 = *(v324 + 48);
    v336 = v335(v334, 1, v325);
    v712 = v335;
    v711 = (v324 + 48);
    v337 = v329;
    if (v336 == 1)
    {
      (v747)(v724, v323, v325);
      v338 = v335(v334, 1, v325);
      v339 = v672;
      if (v338 != 1)
      {
        sub_1D1741A30(v334, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v324 + 32))(v724, v334, v325);
      v339 = v672;
    }

    v340 = v225[6];
    v341 = v745;
    v342 = (v745 + v225[5]);
    v343 = v342[1];
    v719 = *v342;
    v344 = *(v745 + v340);
    v345 = (v745 + v225[7]);
    v346 = v345[1];
    v721 = *v345;
    sub_1D1741A90(v723, v339, &qword_1EC642570, &qword_1D1E6C6A0);
    v347 = *(v337 + 48);
    v348 = v347(v339, 1, v328);
    v727 = v344;
    v720 = v346;
    v718 = v343;
    if (v348 == 1)
    {
      sub_1D1741C08(v341 + v225[8], v729, &qword_1EC642570, &qword_1D1E6C6A0);
      v349 = v347(v339, 1, v328);

      v350 = v762;
      v351 = v341;
      if (v349 != 1)
      {
        sub_1D1741A30(v339, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v352 = v729;
      (*(v337 + 32))(v729, v339, v328);
      (v715)(v352, 0, 1, v328);

      v350 = v762;
      v351 = v341;
    }

    v353 = v754;
    v354 = v754[10];
    v355 = (v351 + v754[9]);
    v356 = v355[1];
    v714 = *v355;
    LODWORD(v716) = *(v351 + v354);
    LODWORD(v715) = *(v351 + v754[11]);
    LODWORD(v723) = *(v351 + v754[13]);
    v357 = v671;
    sub_1D1741A90(v722, v671, &qword_1EC642590, qword_1D1E71260);
    v358 = v761;
    v359 = v712;
    v360 = v712(v357, 1, v761);
    v362 = v751;
    v361 = v752;
    v713 = v356;
    if (v360 == 1)
    {
      (v747)(v725, v351 + v353[14], v358);
      v363 = v359(v357, 1, v358);

      v364 = v676;
      if (v363 != 1)
      {
        sub_1D1741A30(v357, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v350 + 32))(v725, v357, v358);

      v364 = v676;
    }

    v365 = v353[16];
    LODWORD(v712) = *(v351 + v353[15]);
    LODWORD(v722) = *(v351 + v365);
    v366 = *(v351 + v353[17]);
    v367 = v673;
    sub_1D1741A90(v728, v673, &qword_1EC643C58, &unk_1D1E995D0);
    v368 = *(v362 + 6);
    v369 = v368(v367, 1, v361);
    v370 = v759;
    if (v369 == 1)
    {
      sub_1D1741C08(v351 + v353[18], v731, &qword_1EC643C58, &unk_1D1E995D0);
      v371 = v368(v367, 1, v361);

      v372 = v717;
      if (v371 != 1)
      {
        sub_1D1741A30(v367, &qword_1EC643C58, &unk_1D1E995D0);
      }
    }

    else
    {
      v373 = v731;
      sub_1D1CB2178(v367, v731, type metadata accessor for StaticAccessory.DeviceIdentifier);
      (v709)(v373, 0, 1, v361);

      v372 = v717;
    }

    v728 = v366;
    v374 = v353[20];
    LODWORD(v711) = *(v351 + v353[19]);
    LODWORD(v717) = *(v351 + v374);
    v375 = v353[22];
    v376 = (v351 + v353[21]);
    v378 = *v376;
    v377 = v376[1];
    v709 = v378;
    v751 = v377;
    v379 = *(v351 + v375 + 8);
    v710 = *(v351 + v375);
    v752 = v379;
    v380 = v351 + v353[23];
    v381 = *v380;
    v382 = *(v380 + 8);
    v383 = *(v351 + v353[24]);
    sub_1D1741A90(v730, v364, &qword_1EC644760, &unk_1D1E9E530);
    v384 = *(v372 + 48);
    if (v384(v364, 1, v370) == 1)
    {
      v385 = v677;
      sub_1D1741C08(v351 + v353[25], v677, &qword_1EC644760, &unk_1D1E9E530);
      v386 = v384(v364, 1, v370);

      sub_1D18EB144(v381, v382);

      if (v386 != 1)
      {
        sub_1D1741A30(v364, &qword_1EC644760, &unk_1D1E9E530);
      }
    }

    else
    {
      v385 = v677;
      sub_1D1CB2178(v364, v677, type metadata accessor for StaticSoftwareUpdate);
      (v707)(v385, 0, 1, v370);

      sub_1D18EB144(v381, v382);
    }

    v387 = *(v351 + v353[26]);
    v388 = v761;
    v389 = *(v762 + 32);
    v390 = v681;
    v389(v681, v724, v761);
    v391 = (v390 + v353[5]);
    v392 = v718;
    *v391 = v719;
    v391[1] = v392;
    *(v390 + v353[6]) = v727;
    v393 = (v390 + v353[7]);
    v394 = v720;
    *v393 = v721;
    v393[1] = v394;
    sub_1D1741A90(v729, v390 + v353[8], &qword_1EC642570, &qword_1D1E6C6A0);
    v395 = (v390 + v353[9]);
    v396 = v713;
    *v395 = v714;
    v395[1] = v396;
    *(v390 + v353[10]) = v716;
    *(v390 + v353[11]) = v715;
    *(v390 + v353[12]) = 1;
    *(v390 + v353[13]) = v723;
    v389((v390 + v353[14]), v725, v388);
    *(v390 + v353[15]) = v712;
    *(v390 + v353[16]) = v722;
    *(v390 + v353[17]) = v728;
    sub_1D1741A90(v731, v390 + v353[18], &qword_1EC643C58, &unk_1D1E995D0);
    *(v390 + v353[19]) = v711;
    *(v390 + v353[20]) = v717;
    v397 = (v390 + v353[21]);
    v398 = v751;
    *v397 = v709;
    v397[1] = v398;
    v399 = (v390 + v353[22]);
    v400 = v752;
    *v399 = v710;
    v399[1] = v400;
    v401 = v390 + v353[23];
    *v401 = v381;
    *(v401 + 8) = v382;
    *(v390 + v353[24]) = v383;
    sub_1D1741A90(v385, v390 + v353[25], &qword_1EC644760, &unk_1D1E9E530);
    *(v390 + v353[26]) = v387;
    v402 = v680;
    sub_1D1CB2110(v390, v680, type metadata accessor for StaticMediaProfile);
    v403 = v755;
    v404 = swift_isUniquelyReferenced_nonNull_native();
    v763 = v403;
    sub_1D17530C4(v402, v390, v404);
    sub_1D1CB2248(v390, type metadata accessor for StaticMediaProfile);
    sub_1D1CB2248(v745, type metadata accessor for StaticMediaProfile);
    v755 = v763;
    v221 = v750;
    v214 = v756;
    v321 = v726;
  }

  v405 = *(v221 + v760[11]);
  swift_bridgeObjectRetain_n();
  v754 = v405;
  v406 = sub_1D17818B0(v405);
  MEMORY[0x1EEE9AC00](v406);
  *(&v626 - 2) = v214;
  v407 = v736;
  sub_1D17470D4(sub_1D1CC7614, v406, v736);

  v408 = (*(v735 + 48))(v407, 1, v757);
  v409 = v746;
  if (v408 == 1)
  {
    v410 = sub_1D1741A30(v407, &qword_1EC643770, &qword_1D1E71EC8);
  }

  else
  {
    v752 = v321;
    sub_1D1CB2178(v407, v746, type metadata accessor for StaticMediaSystem);
    v411 = v761;
    v412 = v762;
    v413 = *(v762 + 56);
    v414 = v674;
    v413(v674, 1, 1, v761);
    v415 = sub_1D1E669FC();
    v416 = *(v415 - 8);
    v417 = v678;
    v729 = *(v416 + 56);
    v728 = (v416 + 56);
    (v729)(v678, 1, 1, v415);
    v418 = v738;
    sub_1D1CB2110(v749, v738, type metadata accessor for StaticSoftwareUpdate);
    v730 = *(v759 - 8);
    v419 = *(v730 + 56);
    v717 = v730 + 56;
    v716 = v419;
    (v419)(v418, 0, 1);
    v413(v734, 1, 1, v411);
    v420 = v675;
    sub_1D1741A90(v414, v675, &qword_1EC642590, qword_1D1E71260);
    v421 = *(v412 + 48);
    v422 = v421(v420, 1, v411);
    v751 = v421;
    v736 = v412 + 48;
    if (v422 == 1)
    {
      (v747)(v732, v409, v411);
      if (v421(v420, 1, v411) != 1)
      {
        sub_1D1741A30(v420, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v412 + 32))(v732, v420, v411);
    }

    v423 = v757;
    v424 = v757[6];
    v425 = v746;
    v426 = &v746[v757[5]];
    v427 = *(v426 + 1);
    v735 = *v426;
    v428 = *&v746[v424];
    v429 = v746[v424 + 8];
    v430 = v417;
    v431 = v679;
    sub_1D1741A90(v430, v679, &qword_1EC642570, &qword_1D1E6C6A0);
    v432 = *(v416 + 48);
    v433 = v432(v431, 1, v415);
    LODWORD(v745) = v429;
    v731 = v427;
    if (v433 == 1)
    {
      sub_1D1741C08(v425 + v423[7], v737, &qword_1EC642570, &qword_1D1E6C6A0);
      v434 = v432(v431, 1, v415);

      sub_1D18EB144(v428, v429);
      v435 = v761;
      v436 = v425;
      if (v434 != 1)
      {
        sub_1D1741A30(v431, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v437 = v737;
      (*(v416 + 32))(v737, v431, v415);
      (v729)(v437, 0, 1, v415);

      sub_1D18EB144(v428, v429);
      v435 = v761;
      v436 = v425;
    }

    v746 = v428;
    v438 = v757;
    v439 = v757[9];
    v440 = v436 + v757[8];
    v441 = *(v440 + 8);
    v728 = *v440;
    LODWORD(v729) = *(v436 + v439);
    v442 = v757[11];
    LODWORD(v725) = *(v436 + v757[10]);
    LODWORD(v726) = *(v436 + v442);
    v443 = v757[13];
    LODWORD(v723) = *(v436 + v757[12]);
    LODWORD(v724) = *(v436 + v443);
    v444 = v757[15];
    LODWORD(v721) = *(v436 + v757[14]);
    LODWORD(v722) = *(v436 + v444);
    v445 = v757[17];
    v446 = (v436 + v757[16]);
    v447 = v446[1];
    v719 = *v446;
    v448 = *(v436 + v445);
    v449 = v683;
    sub_1D1741A90(v738, v683, &qword_1EC644760, &unk_1D1E9E530);
    v450 = *(v730 + 48);
    v451 = v759;
    v452 = v450(v449, 1, v759);
    v727 = v441;
    if (v452 == 1)
    {
      sub_1D1741C08(v436 + v438[18], v739, &qword_1EC644760, &unk_1D1E9E530);
      v453 = v450(v449, 1, v451);

      v454 = v733;
      if (v453 != 1)
      {
        sub_1D1741A30(v449, &qword_1EC644760, &unk_1D1E9E530);
      }
    }

    else
    {
      v455 = v739;
      sub_1D1CB2178(v449, v739, type metadata accessor for StaticSoftwareUpdate);
      (v716)(v455, 0, 1, v451);

      v454 = v733;
    }

    v456 = v757;
    LODWORD(v738) = *(v436 + v757[19]);
    v457 = v682;
    sub_1D1741A90(v734, v682, &qword_1EC642590, qword_1D1E71260);
    v458 = v751;
    v459 = (v751)(v457, 1, v435);
    v720 = v448;
    v718 = v447;
    if (v459 == 1)
    {
      (v747)(v454, v436 + v456[20], v435);
      if (v458(v457, 1, v435) != 1)
      {
        sub_1D1741A30(v457, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v762 + 32))(v454, v457, v435);
    }

    v460 = v456[22];
    v736 = *(v436 + v456[21]);
    v461 = *(v436 + v460 + 8);
    v751 = *(v436 + v460);
    v462 = *(v436 + v456[23]);
    v463 = *(v436 + v456[24]);
    v464 = *(v436 + v456[25]);
    v465 = *(v762 + 32);
    v466 = v686;
    v465(v686, v732, v435);
    v467 = (v466 + v456[5]);
    v468 = v731;
    *v467 = v735;
    v467[1] = v468;
    v469 = v466 + v456[6];
    *v469 = v746;
    *(v469 + 8) = v745;
    sub_1D1741A90(v737, v466 + v456[7], &qword_1EC642570, &qword_1D1E6C6A0);
    v470 = (v466 + v456[8]);
    v471 = v727;
    *v470 = v728;
    v470[1] = v471;
    *(v466 + v456[9]) = v729;
    *(v466 + v456[10]) = v725;
    *(v466 + v456[11]) = v726;
    *(v466 + v456[12]) = v723;
    *(v466 + v456[13]) = v724;
    *(v466 + v456[14]) = v721;
    *(v466 + v456[15]) = v722;
    v472 = (v466 + v456[16]);
    v473 = v718;
    *v472 = v719;
    v472[1] = v473;
    *(v466 + v456[17]) = v720;
    sub_1D1741A90(v739, v466 + v456[18], &qword_1EC644760, &unk_1D1E9E530);
    *(v466 + v456[19]) = v738;
    v465((v466 + v456[20]), v733, v435);
    *(v466 + v456[21]) = v736;
    v474 = (v466 + v456[22]);
    *v474 = v751;
    v474[1] = v461;
    *(v466 + v456[23]) = v462;
    *(v466 + v456[24]) = v463;
    *(v466 + v456[25]) = v464;
    v475 = v685;
    sub_1D1CB2110(v466, v685, type metadata accessor for StaticMediaSystem);

    v476 = v754;
    v477 = swift_isUniquelyReferenced_nonNull_native();
    v763 = v476;
    sub_1D1752EF0(v475, v466, v477);
    v754 = v763;
    sub_1D1CB2248(v466, type metadata accessor for StaticMediaSystem);
    v410 = sub_1D1CB2248(v436, type metadata accessor for StaticMediaSystem);
    v221 = v750;
    v214 = v756;
  }

  v478 = *(v221 + v760[15]);
  MEMORY[0x1EEE9AC00](v410);
  *(&v626 - 2) = v214;

  v479 = v741;
  v757 = v478;
  sub_1D174736C(sub_1D1CC7664, (&v626 - 4), v478, v741);
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  if ((*(*(v480 - 8) + 48))(v479, 1, v480) == 1)
  {
    sub_1D1741A30(v479, &qword_1EC643C68, &unk_1D1E764C0);
    v481 = v742;
    (*(v740 + 56))(v742, 1, 1, v758);
LABEL_85:
    sub_1D1741A30(v481, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_127;
  }

  v481 = v742;
  sub_1D1CB2178(v479 + *(v480 + 48), v742, type metadata accessor for StaticService);
  v482 = v740;
  v483 = v758;
  (*(v740 + 56))(v481, 0, 1, v758);
  (*(v762 + 8))(v479, v761);
  if ((*(v482 + 48))(v481, 1, v483) == 1)
  {
    goto LABEL_85;
  }

  v484 = v481;
  v485 = v704;
  sub_1D1CB2178(v484, v704, type metadata accessor for StaticService);
  v486 = v761;
  v487 = v762;
  v489 = v762 + 56;
  v488 = *(v762 + 56);
  v490 = v643;
  v488(v643, 1, 1, v761);
  v488(v684, 1, 1, v486);
  v491 = type metadata accessor for StaticDeviceMetadata(0);
  v730 = *(v491 - 8);
  v492 = *(v730 + 56);
  v731 = v491;
  v729 = (v730 + 56);
  v728 = v492;
  (v492)(v689, 1, 1);
  v493 = sub_1D1E669FC();
  v751 = *(v493 - 8);
  v494 = v751 + 56;
  v495 = *(v751 + 7);
  v495(v687, 1, 1, v493);
  v733 = v494;
  v732 = v495;
  v495(v690, 1, 1, v493);
  v488(v688, 1, 1, v486);
  v488(v691, 1, 1, v486);
  v496 = v697;
  sub_1D1CB2110(v749, v697, type metadata accessor for StaticSoftwareUpdate);
  v734 = *(v759 - 8);
  v497 = *(v734 + 56);
  v712 = (v734 + 56);
  v711 = v497;
  (v497)(v496, 0, 1);
  v749 = v489;
  v746 = v488;
  v488(v692, 1, 1, v486);
  v498 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v499 = *(v498 - 8);
  v500 = *(v499 + 56);
  v737 = v498;
  v714 = v499 + 56;
  v713 = v500;
  (v500)(v703, 1, 1);
  v501 = v490;
  v502 = v644;
  sub_1D1741A90(v501, v644, &qword_1EC642590, qword_1D1E71260);
  v504 = (v487 + 48);
  v503 = *(v487 + 48);
  if (v503(v502, 1, v486) == 1)
  {
    (v747)(v693, v485, v486);
    v505 = v503;
    if (v503(v502, 1, v486) != 1)
    {
      sub_1D1741A30(v502, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v487 + 32))(v693, v502, v486);
    v505 = v503;
  }

  v506 = v483[6];
  v507 = (v485 + v483[5]);
  v508 = v507[1];
  v742 = *v507;
  LODWORD(v745) = *(v485 + v506);
  v509 = v483[8];
  LODWORD(v740) = *(v485 + v483[7]);
  v510 = v483[9];
  LODWORD(v741) = *(v485 + v483[10]);
  LODWORD(v738) = *(v485 + v509);
  LODWORD(v739) = *(v485 + v510);
  v511 = v645;
  sub_1D1741A90(v684, v645, &qword_1EC642590, qword_1D1E71260);
  v512 = v505(v511, 1, v486);
  v513 = v730;
  if (v512 == 1)
  {
    (v747)(v694, v485 + v483[11], v486);
    v514 = v505(v511, 1, v486);

    v289 = v514 == 1;
    v483 = v758;
    if (!v289)
    {
      sub_1D1741A30(v511, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v762 + 32))(v694, v511, v486);
  }

  v515 = v485 + v483[12];
  v747 = *v515;
  v748 = v508;
  LODWORD(v735) = *(v515 + 8);
  v516 = v647;
  sub_1D1741A90(v689, v647, &qword_1EC644620, &unk_1D1E75A00);
  v517 = v485;
  v518 = v483;
  v519 = *(v513 + 48);
  v520 = v731;
  v521 = v519(v516, 1, v731);
  v736 = v499;
  if (v521 == 1)
  {
    sub_1D1741C08(v517 + v518[13], v701, &qword_1EC644620, &unk_1D1E75A00);
    v522 = v517;
    if (v519(v516, 1, v520) != 1)
    {
      sub_1D1741A30(v516, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v523 = v701;
    sub_1D1CB2178(v516, v701, type metadata accessor for StaticDeviceMetadata);
    (v728)(v523, 0, 1, v520);
    v522 = v517;
  }

  v524 = v646;
  sub_1D1741A90(v687, v646, &qword_1EC642570, &qword_1D1E6C6A0);
  v525 = v751;
  v526 = *(v751 + 6);
  if (v526(v524, 1, v493) == 1)
  {
    sub_1D1741C08(v522 + v758[14], v699, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v526(v524, 1, v493) != 1)
    {
      sub_1D1741A30(v524, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v527 = *(v525 + 4);
    v528 = v699;
    v527(v699, v524, v493);
    (v732)(v528, 0, 1, v493);
  }

  v529 = v649;
  sub_1D1741A90(v690, v649, &qword_1EC642570, &qword_1D1E6C6A0);
  v530 = v526(v529, 1, v493);
  v752 = v505;
  v531 = v504;
  if (v530 == 1)
  {
    sub_1D1741C08(v522 + v758[15], v700, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v526(v529, 1, v493) != 1)
    {
      sub_1D1741A30(v529, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v532 = v700;
    (*(v751 + 4))(v700, v529, v493);
    (v732)(v532, 0, 1, v493);
  }

  v533 = v758;
  v534 = v758[17];
  LODWORD(v732) = *(v522 + v758[16]);
  LODWORD(v733) = *(v522 + v534);
  v535 = v758[19];
  LODWORD(v730) = *(v522 + v758[18]);
  v536 = *(v522 + v535);
  v537 = v758[21];
  v538 = (v522 + v758[20]);
  v539 = v538[1];
  v728 = *v538;
  LODWORD(v729) = *(v522 + v537);
  v540 = v758[23];
  LODWORD(v725) = *(v522 + v758[22]);
  LODWORD(v726) = *(v522 + v540);
  v541 = v758[25];
  LODWORD(v724) = *(v522 + v758[24]);
  v542 = v758[27];
  LODWORD(v723) = *(v522 + v758[26]);
  v543 = *(v522 + v541 + 8);
  v720 = *(v522 + v541);
  LODWORD(v722) = *(v522 + v542);
  LODWORD(v721) = *(v522 + v758[28]);
  v544 = v648;
  sub_1D1741A90(v688, v648, &qword_1EC642590, qword_1D1E71260);
  v545 = v761;
  v546 = v752;
  v547 = v752(v544, 1, v761);
  v727 = v539;
  v719 = v543;
  if (v547 == 1)
  {
    sub_1D1741C08(v522 + v533[29], v695, &qword_1EC642590, qword_1D1E71260);
    v548 = v546(v544, 1, v545);

    v549 = v531;
    if (v548 != 1)
    {
      sub_1D1741A30(v544, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v550 = v695;
    (*(v762 + 32))(v695, v544, v545);
    (v746)(v550, 0, 1, v545);

    v549 = v531;
  }

  v551 = v650;
  sub_1D1741A90(v691, v650, &qword_1EC642590, qword_1D1E71260);
  v552 = v752;
  v553 = v752(v551, 1, v545);
  v731 = v536;
  v715 = v549;
  if (v553 == 1)
  {
    v554 = v758;
    sub_1D1741C08(v522 + v758[30], v696, &qword_1EC642590, qword_1D1E71260);
    v555 = v552(v551, 1, v545);
    v221 = v750;
    if (v555 != 1)
    {
      sub_1D1741A30(v551, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v556 = v696;
    (*(v762 + 32))(v696, v551, v545);
    (v746)(v556, 0, 1, v545);
    v554 = v758;
    v221 = v750;
  }

  v557 = *(v522 + v554[31]);
  v558 = *(v522 + v554[32]);
  v559 = (v522 + v554[33]);
  v560 = v559[1];
  v751 = *v559;
  v561 = v652;
  sub_1D1741A90(v697, v652, &qword_1EC644760, &unk_1D1E9E530);
  v562 = v522;
  v563 = v554;
  v564 = *(v734 + 48);
  v565 = v759;
  v566 = v564(v561, 1, v759);
  v718 = v558;
  v717 = v560;
  v716 = v557;
  if (v566 == 1)
  {
    v567 = v563[34];
    v568 = v562;
    sub_1D1741C08(v562 + v567, v702, &qword_1EC644760, &unk_1D1E9E530);
    v569 = v564(v561, 1, v565);

    if (v569 != 1)
    {
      sub_1D1741A30(v561, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v570 = v702;
    sub_1D1CB2178(v561, v702, type metadata accessor for StaticSoftwareUpdate);
    (v711)(v570, 0, 1, v565);

    v568 = v562;
  }

  v571 = v758;
  v572 = v758[36];
  LODWORD(v759) = *(v568 + v758[35]);
  v573 = *(v568 + v572);
  v574 = v651;
  sub_1D1741A90(v692, v651, &qword_1EC642590, qword_1D1E71260);
  v575 = v761;
  v576 = v752;
  if (v752(v574, 1, v761) == 1)
  {
    sub_1D1741C08(v568 + v571[37], v698, &qword_1EC642590, qword_1D1E71260);
    v577 = v576(v574, 1, v575);

    v289 = v577 == 1;
    v571 = v758;
    v578 = v737;
    v579 = v573;
    if (!v289)
    {
      sub_1D1741A30(v574, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v580 = v698;
    (*(v762 + 32))(v698, v574, v575);
    (v746)(v580, 0, 1, v575);

    v578 = v737;
    v579 = v573;
  }

  v581 = (v568 + v571[38]);
  v582 = *v581;
  v583 = *(v581 + 2);
  v584 = v653;
  sub_1D1741A90(v703, v653, &qword_1EC64C9B0, &qword_1D1EA1190);
  v585 = v568;
  v586 = v571;
  v587 = *(v736 + 48);
  if (v587(v584, 1, v578) == 1)
  {
    v588 = v585 + v586[40];
    v589 = v654;
    sub_1D1741C08(v588, v654, &qword_1EC64C9B0, &qword_1D1EA1190);
    v590 = v587(v584, 1, v578);
    v591 = v589;
    if (v590 != 1)
    {
      sub_1D1741A30(v584, &qword_1EC64C9B0, &qword_1D1EA1190);
    }
  }

  else
  {
    v592 = v654;
    sub_1D1CB2178(v584, v654, type metadata accessor for StaticService.AutoClimateControlConfig);
    (v713)(v592, 0, 1, v578);
    v591 = v592;
  }

  v593 = v758;
  v594 = v656;
  sub_1D1741A90(v701, &v656[v758[13]], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v699, v594 + v593[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v700, v594 + v593[15], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v695, v594 + v593[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v696, v594 + v593[30], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v702, v594 + v593[34], &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741A90(v698, v594 + v593[37], &qword_1EC642590, qword_1D1E71260);
  v595 = v704;
  sub_1D1741C08(v704 + v593[39], v594 + v593[39], &qword_1EC644870, &unk_1D1EABA00);
  sub_1D1741A90(v591, v594 + v593[40], &qword_1EC64C9B0, &qword_1D1EA1190);
  v596 = v761;
  v597 = *(v762 + 32);
  v597(v594, v693, v761);
  v598 = (v594 + v593[5]);
  v599 = v748;
  *v598 = v742;
  v598[1] = v599;
  *(v594 + v593[6]) = v745;
  *(v594 + v593[7]) = v740;
  *(v594 + v593[8]) = v738;
  *(v594 + v593[9]) = v739;
  *(v594 + v593[10]) = v741;
  v597(v594 + v593[11], v694, v596);
  v600 = v594 + v593[12];
  *v600 = v747;
  *(v600 + 8) = v735;
  *(v594 + v593[16]) = v732;
  *(v594 + v593[17]) = v733;
  *(v594 + v593[18]) = v730;
  *(v594 + v593[19]) = v731;
  v601 = (v594 + v593[20]);
  v602 = v727;
  *v601 = v728;
  v601[1] = v602;
  *(v594 + v593[21]) = v729;
  *(v594 + v593[22]) = v725;
  *(v594 + v593[23]) = v726;
  *(v594 + v593[24]) = v724;
  v603 = (v594 + v593[25]);
  v604 = v719;
  *v603 = v720;
  v603[1] = v604;
  *(v594 + v593[26]) = v723;
  *(v594 + v593[27]) = v722;
  *(v594 + v593[28]) = v721;
  *(v594 + v593[31]) = v716;
  *(v594 + v593[32]) = v718;
  v605 = (v594 + v593[33]);
  v606 = v717;
  *v605 = v751;
  v605[1] = v606;
  *(v594 + v593[35]) = v759;
  *(v594 + v593[36]) = v579;
  v607 = v594 + v593[38];
  *v607 = v582;
  *(v607 + 2) = v583;
  v608 = v655;
  sub_1D1CB2110(v594, v655, type metadata accessor for StaticService);
  v609 = v757;
  v610 = swift_isUniquelyReferenced_nonNull_native();
  v763 = v609;
  sub_1D1752D1C(v608, v594, v610);
  v757 = v763;
  sub_1D1CB2248(v594, type metadata accessor for StaticService);
  sub_1D1CB2248(v595, type metadata accessor for StaticService);
LABEL_127:
  v611 = *v221;
  v612 = v760;
  v613 = v744;
  sub_1D1CB2110(v221 + v760[5], v744 + v760[5], type metadata accessor for StaticHome);
  v614 = v221;
  v615 = *(v221 + v612[6]);
  v616 = *(v614 + v612[7]);
  v617 = *(v614 + v612[9]);
  v618 = *(v614 + v612[10]);
  v619 = *(v614 + v612[13]);
  v620 = *(v614 + v612[14]);
  v621 = *(v614 + v612[16]);
  v622 = *(v614 + v612[17]);
  v623 = *(v614 + v612[19]);
  v758 = v622;
  v759 = v623;
  *v613 = v611;
  *(v613 + v612[6]) = v615;
  *(v613 + v612[7]) = v616;
  *(v613 + v612[8]) = v753;
  *(v613 + v612[9]) = v617;
  *(v613 + v612[10]) = v618;
  *(v613 + v612[11]) = v754;
  *(v613 + v612[12]) = v755;
  *(v613 + v612[13]) = v619;
  *(v613 + v612[14]) = v620;
  *(v613 + v612[15]) = v757;
  *(v613 + v612[16]) = v621;
  *(v613 + v612[17]) = v622;
  *(v613 + v612[18]) = v743;
  *(v613 + v612[19]) = v623;
  (*(*(v612 - 1) + 56))(v613, 0, 1, v612);
  v624 = *(v762 + 8);

  return v624(v756, v761);
}

uint64_t sub_1D1CB1BB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  sub_1D1741C08(a1, &v16 - v9, &qword_1EC642DB0, &unk_1D1E6F360);
  v11 = &v10[*(v8 + 56)];
  v12 = type metadata accessor for StaticService(0);
  (*(v4 + 16))(v6, v11 + *(v12 + 44), v3);
  sub_1D1CB2248(v11, type metadata accessor for StaticService);
  v13 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v14(v10, v3);
  return v13 & 1;
}

uint64_t sub_1D1CB1D74()
{
  v0 = type metadata accessor for StaticHome(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StateSnapshot(0);
  __swift_allocate_value_buffer(v3, qword_1EE07D9E8);
  v4 = __swift_project_value_buffer(v3, qword_1EE07D9E8);
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE07DD68;
  v25 = qword_1EE07CD98;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EE081500);
  sub_1D1CB2110(v6, v2, type metadata accessor for StaticHome);
  v7 = MEMORY[0x1E69E7CC0];
  v24 = sub_1D18D7F00(MEMORY[0x1E69E7CC0]);
  v23 = sub_1D18D5304(v7);
  v22 = sub_1D18D50D4(v7);
  v21 = sub_1D18D5520(v7);
  v20 = sub_1D18D573C(v7);
  v8 = sub_1D18D5958(v7);
  v9 = sub_1D18D811C(v7);
  v10 = sub_1D18D5B74(v7);
  v11 = sub_1D18D5D90(v7);
  v12 = sub_1D18D8338(v7);
  v13 = sub_1D18D61C8(v7);
  v14 = sub_1D18D8554(v7);
  v15 = v2;
  v16 = v14;
  *v4 = v25;
  result = sub_1D1CB2178(v15, v4 + v3[5], type metadata accessor for StaticHome);
  *(v4 + v3[6]) = v7;
  v18 = v23;
  *(v4 + v3[7]) = v24;
  *(v4 + v3[8]) = v18;
  v19 = v21;
  *(v4 + v3[9]) = v22;
  *(v4 + v3[10]) = v19;
  *(v4 + v3[11]) = v20;
  *(v4 + v3[12]) = v8;
  *(v4 + v3[13]) = v9;
  *(v4 + v3[14]) = v10;
  *(v4 + v3[15]) = v11;
  *(v4 + v3[16]) = v12;
  *(v4 + v3[17]) = v7;
  *(v4 + v3[18]) = v13;
  *(v4 + v3[19]) = v16;
  return result;
}

uint64_t static StateSnapshot.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07D9E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StateSnapshot(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE07D9E8);
  return sub_1D1CB2110(v3, a1, type metadata accessor for StateSnapshot);
}

uint64_t StateSnapshot.hasValidResident.getter()
{
  type metadata accessor for StateSnapshot(0);

  v1 = *(sub_1D1782540(v0) + 16);

  if (v1)
  {
    return 1;
  }

  if (qword_1EC6422D0 != -1)
  {
    swift_once();
  }

  return byte_1EC64919C;
}

uint64_t sub_1D1CB2110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CB2178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CB21E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1CB2248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CB22A8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for RoomType(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0C134(v5);
  }

  result = sub_1D1CB248C(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1D1CB2368(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticResident(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0C184(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CC6E9C(v8, a2, type metadata accessor for StaticResident, sub_1D1CC536C, sub_1D1CC6C30);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CB248C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1D1E68F9C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RoomType(0);
        v9 = sub_1D1E67C8C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for RoomType(0) - 8);
      v11[0] = (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));
      v11[1] = v8;
      sub_1D1CB2840(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1D1CB25C8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1D1CB25C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for RoomType(0);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_1D1CB2110(v22, v17, type metadata accessor for RoomType);
      sub_1D1CB2110(v23, v13, type metadata accessor for RoomType);
      v24 = v37(v17, v13);
      sub_1D1CB2248(v13, type metadata accessor for RoomType);
      result = sub_1D1CB2248(v17, type metadata accessor for RoomType);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_1D1CB2178(v22, v35, type metadata accessor for RoomType);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1CB2178(v25, v23, type metadata accessor for RoomType);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1CB2840(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for RoomType(0);
  v140 = *(v135 - 8);
  v10 = MEMORY[0x1EEE9AC00](v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v119 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v119 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  result = MEMORY[0x1EEE9AC00](v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_1D1CB2110(v34, v125, type metadata accessor for RoomType);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_1D1CB2110(v36, v126, type metadata accessor for RoomType);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_1D1CB2248(v37, type metadata accessor for RoomType);
        v118 = v35;
        goto LABEL_112;
      }

      sub_1D1CB2248(v37, type metadata accessor for RoomType);
      result = sub_1D1CB2248(v35, type metadata accessor for RoomType);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_1D1CB2110(v38, v21, type metadata accessor for RoomType);
        v40 = v21;
        v41 = v136;
        sub_1D1CB2110(v34, v136, type metadata accessor for RoomType);
        v42 = v142(v40, v41);
        sub_1D1CB2248(v41, type metadata accessor for RoomType);
        result = sub_1D1CB2248(v40, type metadata accessor for RoomType);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_1D1CB2178(v50 + v49, v132, type metadata accessor for RoomType);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1D1CB2178(v132, v50 + v45, type metadata accessor for RoomType);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_1D1CB2110(v105, v17, type metadata accessor for RoomType);
        v106 = v17;
        v107 = v133;
        sub_1D1CB2110(v103, v133, type metadata accessor for RoomType);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_1D1CB2248(v107, type metadata accessor for RoomType);
          v118 = v106;
LABEL_112:
          sub_1D1CB2248(v118, type metadata accessor for RoomType);
        }

        v109 = v108;
        v110 = v43;
        sub_1D1CB2248(v107, type metadata accessor for RoomType);
        result = sub_1D1CB2248(v106, type metadata accessor for RoomType);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_1D1CB2178(v105, v134, type metadata accessor for RoomType);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D1CB2178(v111, v103, type metadata accessor for RoomType);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1D177D070((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_1D1CB4604(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1D1E0BE44(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_1D1E0BDB8(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  result = sub_1D1E0BE44(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_1D1CB4604(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1D1E0BE44(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_1D1E0BDB8(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1D1CB3338(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticCameraProfile(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D1CB2110(v39 + v38, v40, type metadata accessor for StaticCameraProfile);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1CB2110(v42, v59, type metadata accessor for StaticCameraProfile);
          v49 = sub_1D1D0C624(v47, v48, v62);
          if (v46)
          {
            sub_1D1CB2248(v48, type metadata accessor for StaticCameraProfile);
            sub_1D1CB2248(v47, type metadata accessor for StaticCameraProfile);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D1CB2248(v48, type metadata accessor for StaticCameraProfile);
          sub_1D1CB2248(v47, type metadata accessor for StaticCameraProfile);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1CB2110(a2, v21, type metadata accessor for StaticCameraProfile);
        sub_1D1CB2110(a4, v17, type metadata accessor for StaticCameraProfile);
        v31 = sub_1D1D0C624(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1CB2248(v33, type metadata accessor for StaticCameraProfile);
        sub_1D1CB2248(v21, type metadata accessor for StaticCameraProfile);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v17, type metadata accessor for StaticCameraProfile);
      sub_1D1CB2248(v21, type metadata accessor for StaticCameraProfile);
    }
  }

LABEL_62:
  sub_1D1DC70FC(&v66, &v65, &v64);

  return 1;
}

uint64_t sub_1D1CB397C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticActionSet(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D1CB2110(v39 + v38, v40, type metadata accessor for StaticActionSet);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1CB2110(v42, v59, type metadata accessor for StaticActionSet);
          v49 = sub_1D1D0DF40(v47, v48, v62);
          if (v46)
          {
            sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
            sub_1D1CB2248(v47, type metadata accessor for StaticActionSet);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D1CB2248(v48, type metadata accessor for StaticActionSet);
          sub_1D1CB2248(v47, type metadata accessor for StaticActionSet);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1CB2110(a2, v21, type metadata accessor for StaticActionSet);
        sub_1D1CB2110(a4, v17, type metadata accessor for StaticActionSet);
        v31 = sub_1D1D0DF40(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1CB2248(v33, type metadata accessor for StaticActionSet);
        sub_1D1CB2248(v21, type metadata accessor for StaticActionSet);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v17, type metadata accessor for StaticActionSet);
      sub_1D1CB2248(v21, type metadata accessor for StaticActionSet);
    }
  }

LABEL_62:
  sub_1D1DC7114(&v66, &v65, &v64);

  return 1;
}

uint64_t sub_1D1CB3FC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticRoom(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D1CB2110(v39 + v38, v40, type metadata accessor for StaticRoom);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1CB2110(v42, v59, type metadata accessor for StaticRoom);
          v49 = sub_1D1D0E670(v47, v48, v62);
          if (v46)
          {
            sub_1D1CB2248(v48, type metadata accessor for StaticRoom);
            sub_1D1CB2248(v47, type metadata accessor for StaticRoom);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D1CB2248(v48, type metadata accessor for StaticRoom);
          sub_1D1CB2248(v47, type metadata accessor for StaticRoom);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1CB2110(a2, v21, type metadata accessor for StaticRoom);
        sub_1D1CB2110(a4, v17, type metadata accessor for StaticRoom);
        v31 = sub_1D1D0E670(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1CB2248(v33, type metadata accessor for StaticRoom);
        sub_1D1CB2248(v21, type metadata accessor for StaticRoom);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v17, type metadata accessor for StaticRoom);
      sub_1D1CB2248(v21, type metadata accessor for StaticRoom);
    }
  }

LABEL_62:
  sub_1D1DC7174(&v66, &v65, &v64);

  return 1;
}

unint64_t sub_1D1CB4604(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for RoomType(0);
  v11 = MEMORY[0x1EEE9AC00](v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_1D1CB2110(a2, v22, type metadata accessor for RoomType);
          sub_1D1CB2110(a4, v19, type metadata accessor for RoomType);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_1D1CB2248(v19, type metadata accessor for RoomType);
          sub_1D1CB2248(v22, type metadata accessor for RoomType);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_1D1CB2248(v19, type metadata accessor for RoomType);
        sub_1D1CB2248(v22, type metadata accessor for RoomType);
      }

LABEL_64:
      sub_1D1DC721C(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_1D1CB2110(v38 + v37, v16, type metadata accessor for RoomType);
              sub_1D1CB2110(v50, v13, type metadata accessor for RoomType);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_1D1CB2248(v13, type metadata accessor for RoomType);
                sub_1D1CB2248(v16, type metadata accessor for RoomType);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_1D1CB2248(v13, type metadata accessor for RoomType);
              sub_1D1CB2248(v16, type metadata accessor for RoomType);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1D1CB4C4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticResident(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D1CB2110(v39 + v38, v40, type metadata accessor for StaticResident);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1CB2110(v42, v59, type metadata accessor for StaticResident);
          v49 = sub_1D1D0EC40(v47, v48, v62);
          if (v46)
          {
            sub_1D1CB2248(v48, type metadata accessor for StaticResident);
            sub_1D1CB2248(v47, type metadata accessor for StaticResident);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D1CB2248(v48, type metadata accessor for StaticResident);
          sub_1D1CB2248(v47, type metadata accessor for StaticResident);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1CB2110(a2, v21, type metadata accessor for StaticResident);
        sub_1D1CB2110(a4, v17, type metadata accessor for StaticResident);
        v31 = sub_1D1D0EC40(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1CB2248(v33, type metadata accessor for StaticResident);
        sub_1D1CB2248(v21, type metadata accessor for StaticResident);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CB2248(v17, type metadata accessor for StaticResident);
      sub_1D1CB2248(v21, type metadata accessor for StaticResident);
    }
  }

LABEL_62:
  sub_1D1DC7264(&v66, &v65, &v64);

  return 1;
}

uint64_t sub_1D1CB5290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720) + 48);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D1CB2110(a1 + v4, a2 + v5, type metadata accessor for StaticMatterDevice);
}

uint64_t sub_1D1CB5348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40) + 48);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D1CB2110(a1 + v4, a2 + v5, type metadata accessor for StaticService);
}

uint64_t sub_1D1CB5400(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D1E6873C();
LABEL_9:
  result = sub_1D1E688CC();
  *v2 = result;
  return result;
}

void *sub_1D1CB54A0(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = a5(v9, a2, a3, v10);

    return v11;
  }

  return result;
}

void *sub_1D1CB5540(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D19FB3F0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1D1CB55D0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_1D1C92010(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1D1864AE0(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CB5974(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1D1CB5B14(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D1CC7684(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1D3893640](v15, -1, -1);
  }

  return v11;
}

void sub_1D1CB5B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = sub_1D1E66A7C();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v37 - v12;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v53 = v11 + 16;
  v54 = a4;
  v45 = v11 + 32;
  v50 = a4 + 56;
  v47 = v11;
  v55 = (v11 + 8);

  v39 = 0;
  v18 = 0;
  v43 = v17;
  v44 = a3 + 64;
  v41 = a3;
  while (v16)
  {
LABEL_12:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v46;
    v22 = v47;
    v24 = *(v47 + 72);
    v25 = *(a3 + 48) + v24 * (v21 | (v18 << 6));
    v51 = *(v47 + 16);
    v52 = v24;
    v51(v46, v25, v6);
    (*(v22 + 32))(v56, v23, v6);
    v26 = v54;
    sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v27 = sub_1D1E676DC();
    v28 = -1 << *(v26 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v50 + 8 * (v29 >> 6))) != 0)
    {
      v42 = v55 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v49 = ~v28;
      while (1)
      {
        v32 = v48;
        v51(v48, *(v54 + 48) + v29 * v52, v6);
        sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v33 = sub_1D1E6775C();
        v19 = *v55;
        (*v55)(v32, v6);
        if (v33)
        {
          break;
        }

        v29 = (v29 + 1) & v49;
        v30 = v29 >> 6;
        v31 = 1 << v29;
        if (((1 << v29) & *(v50 + 8 * (v29 >> 6))) == 0)
        {
          a3 = v41;
          goto LABEL_6;
        }
      }

      v19(v56, v6);
      a3 = v41;
      v34 = v40[v30];
      v40[v30] = v34 | v31;
      v17 = v43;
      v13 = v44;
      if ((v34 & v31) == 0 && __OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_21:

        v36 = v54;

        sub_1D19E13B0(v40, v38, v39, v36);
        return;
      }
    }

    else
    {
      v19 = *v55;
LABEL_6:
      v17 = v43;
      v19(v56, v6);
      v13 = v44;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_21;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
}

BOOL _s13HomeDataModel13StateSnapshotV19ActionSetUpdateTypeO2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v3 & 0xC000) == 0x4000)
      {
        return (v3 ^ v2) == 0;
      }
    }

    else if (v3 == 0x8000)
    {
      return 1;
    }
  }

  else if (v3 < 0x4000)
  {
    return ((v3 ^ v2) < 0x100) & (v3 ^ v2 ^ 1);
  }

  return 0;
}

uint64_t _s13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO05ValueH0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {

        goto LABEL_29;
      }

      v8 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        LOBYTE(v7) = sub_1D1E6904C();
        sub_1D1741830(v5, v6, 3);
        sub_1D1741830(v2, v3, 3);
        sub_1D1778940(v2, v3, 3);
        sub_1D1778940(v5, v6, 3);
        return v7 & 1;
      }

      sub_1D1741830(*&v8, v3, 3);
      sub_1D1741830(v2, v3, 3);
      sub_1D1778940(v2, v3, 3);
      v11 = v2;
      v12 = v3;
      v13 = 3;
    }

    else
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          sub_1D1741830(*a2, *(a2 + 8), 4);
          sub_1D1741830(v2, v3, 4);
          LOBYTE(v7) = sub_1D199F344(v2, v3, v5, v6);
          sub_1D1778940(v2, v3, 4);
          sub_1D1778940(v5, v6, 4);
          return v7 & 1;
        }

        sub_1D1741854(*a1, v3);
LABEL_29:
        sub_1D1741830(v5, v6, v7);
        sub_1D1778940(v2, v3, v4);
        sub_1D1778940(v5, v6, v7);
LABEL_30:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      if (v7 != 5 || (v6 | v5) != 0)
      {
        goto LABEL_29;
      }

      sub_1D1778940(*a1, v3, 5);
      v11 = 0;
      v12 = 0;
      v13 = 5;
    }

    sub_1D1778940(v11, v12, v13);
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1D1778940(*a1, v3, 0);
      sub_1D1778940(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1D1778940(*a1, v3, 2);
      sub_1D1778940(v5, v6, 2);
      LOBYTE(v7) = v2 == v5;
      return v7 & 1;
    }

    goto LABEL_29;
  }

  if (v7 != 1)
  {
    goto LABEL_29;
  }

  sub_1D1778940(*a1, v3, 1);
  sub_1D1778940(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_30;
  }

  return v7 & 1;
}

uint64_t _s13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        LOBYTE(v4) = 1;
        sub_1D1CC5310(*a2, a2[1], 1u);
        sub_1D1CC5310(v2, v3, 1u);
        v12 = sub_1D184DF04(v2, v5, v13, v14);
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (*(a2 + 16))
    {
      goto LABEL_18;
    }

    sub_1D1CC5310(*a2, a2[1], 0);
    sub_1D1CC5310(v2, v3, 0);
    sub_1D17AB954(v2, v5);
    v12 = v11;
    LOBYTE(v4) = 0;
  }

  else
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        LOBYTE(v4) = 2;
        sub_1D1CC5310(*a2, a2[1], 2u);
        v8 = v2;
        v9 = v3;
        v10 = 2;
        goto LABEL_11;
      }

LABEL_18:
      sub_1D1CC5310(*a2, a2[1], v7);
      sub_1D1CC5310(v2, v3, v4);
      v12 = 0;
      goto LABEL_19;
    }

    if (v4 == 3)
    {
      if (v7 == 3)
      {
        LOBYTE(v4) = 3;
        sub_1D1CC5310(*a2, a2[1], 3u);
        v8 = v2;
        v9 = v3;
        v10 = 3;
LABEL_11:
        sub_1D1CC5310(v8, v9, v10);
        v12 = sub_1D184E2A0(v2, v5);
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v7 != 4)
    {
      goto LABEL_18;
    }

    LOBYTE(v4) = 4;
    sub_1D1CC5310(*a2, a2[1], 4u);
    sub_1D1CC5310(v2, v3, 4u);
    if (sub_1D184E2A0(v2, v5))
    {
      v12 = sub_1D184EAA0(v3, v6);
    }

    else
    {
      v12 = 0;
    }

    LOBYTE(v7) = 4;
  }

LABEL_19:
  sub_1D1AC373C(v2, v3, v4);
  sub_1D1AC373C(v5, v6, v7);
  return v12 & 1;
}

uint64_t _s13HomeDataModel13StateSnapshotV10UpdateTypeO2eeoiySbAE_AEtFZ_0(char *a1, uint64_t *a2)
{
  v202 = a1;
  v203 = a2;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v190 = (&v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v191 = (&v185 - v5);
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v200 = v6;
  v201 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v188 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v189 = &v185 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v187 = &v185 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v186 = &v185 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v185 = &v185 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v192 = &v185 - v18;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v20 = MEMORY[0x1EEE9AC00](updated);
  v199 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v185 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v185 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v197 = (&v185 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v193 = &v185 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v198 = &v185 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v196 = &v185 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v194 = &v185 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v195 = &v185 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (&v185 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = (&v185 - v44);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v185 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = (&v185 - v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF28, &qword_1D1EA2F68);
  v52 = MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = &v185 - v53;
  v55 = (&v185 + *(v52 + 56) - v53);
  sub_1D1CB2110(v202, &v185 - v53, type metadata accessor for StateSnapshot.UpdateType);
  v56 = v203;
  v203 = v55;
  sub_1D1CB2110(v56, v55, type metadata accessor for StateSnapshot.UpdateType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D1CB2110(v54, v48, type metadata accessor for StateSnapshot.UpdateType);
      v141 = *v48;
      v140 = *(v48 + 1);
      v142 = v48[16];
      v143 = v203;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v144 = *v143;
        v145 = v143[1];
        v146 = *(v143 + 16);
        v209 = v141;
        v210 = v140;
        LOBYTE(v211) = v142;
        v204 = v144;
        v205 = v145;
        LOBYTE(v206) = v146;
        v71 = _s13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO2eeoiySbAE_AEtFZ_0(&v209, &v204);
        sub_1D1AC373C(v144, v145, v146);
        sub_1D1AC373C(v141, v140, v142);
        goto LABEL_46;
      }

      sub_1D1AC373C(v141, v140, v142);
      goto LABEL_62;
    case 2u:
      sub_1D1CB2110(v54, v45, type metadata accessor for StateSnapshot.UpdateType);
      v124 = *v45;
      v125 = v203;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_61;
      }

      sub_1D184EF00(v124, *v125);
      goto LABEL_24;
    case 3u:
      sub_1D1CB2110(v54, v42, type metadata accessor for StateSnapshot.UpdateType);
      v127 = *v42;
      v128 = v203;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_61;
      }

      v126 = sub_1D177B17C(v127, *v128);
LABEL_24:
      v71 = v126;

      goto LABEL_25;
    case 4u:
      v72 = v195;
      sub_1D1CB2110(v54, v195, type metadata accessor for StateSnapshot.UpdateType);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v74 = v73[12];
      v75 = *(v72 + v74);
      v76 = v73[16];
      v77 = *(v72 + v76);
      v78 = v73[20];
      v79 = *(v72 + v78);
      v80 = v203;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        (*(v201 + 8))(v72, v200);
        goto LABEL_62;
      }

      v198 = v75;
      v199 = v79;
      v202 = v54;
      v81 = *(v80 + v74);
      v82 = *(v80 + v76);
      v83 = *(v80 + v78);
      v84 = v201;
      v85 = v192;
      v86 = v80;
      v87 = v200;
      (*(v201 + 32))(v192, v86, v200);
      v88 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v91 = *(v84 + 8);
      v89 = v84 + 8;
      v90 = v91;
      v91(v72, v87);
      if ((v88 & 1) == 0)
      {
        v90(v85, v87);

        goto LABEL_105;
      }

      v201 = v89;
      v92 = v198;
      if (v198)
      {
        v93 = v82;
        if (!v81)
        {
LABEL_13:
          v99 = v199;
LABEL_81:

LABEL_104:
          v90(v192, v200);
          goto LABEL_105;
        }

        v94 = v81;
        v95 = v83;
        sub_1D1741B10(0, &qword_1EC64CEA8, 0x1E696CC70);
        v96 = v92;
        v97 = v81;
        v98 = sub_1D1E684FC();

        if ((v98 & 1) == 0)
        {

          v92 = v97;
          v83 = v95;
          goto LABEL_13;
        }
      }

      else
      {
        v95 = v83;
        v93 = v82;
        v94 = v81;
        if (v81)
        {
          v92 = v83;
          v83 = v199;
          v99 = v93;
          v93 = v77;
          v77 = v81;
          goto LABEL_81;
        }
      }

      if (v77)
      {
        if (!v93)
        {
LABEL_89:
          v180 = v199;
LABEL_103:

          goto LABEL_104;
        }

        sub_1D1741B10(0, &qword_1EC64CE98, 0x1E696CC68);
        v177 = v77;
        v178 = v93;
        v179 = sub_1D1E684FC();

        if ((v179 & 1) == 0)
        {

          v77 = v178;
          goto LABEL_89;
        }
      }

      else if (v93)
      {
        v77 = v95;
        v95 = v199;
        v180 = v94;
        v94 = v92;
        v92 = v93;
        goto LABEL_103;
      }

      if (!v199)
      {

        v90(v192, v200);
        if (!v95)
        {
          goto LABEL_114;
        }

        goto LABEL_116;
      }

      v182 = v192;
      if (!v95)
      {

        v90(v182, v200);
        v95 = v199;
LABEL_116:

        goto LABEL_105;
      }

      sub_1D1741B10(0, &qword_1EC64CE88, 0x1E696CC60);
      v183 = v199;
      v184 = sub_1D1E684FC();

      v90(v182, v200);
      if ((v184 & 1) == 0)
      {
LABEL_105:
        v176 = v202;
        goto LABEL_106;
      }

LABEL_114:
      v156 = v202;
LABEL_41:
      sub_1D1CB2248(v156, type metadata accessor for StateSnapshot.UpdateType);
      v71 = 1;
      return v71 & 1;
    case 5u:
      v129 = v194;
      sub_1D1CB2110(v54, v194, type metadata accessor for StateSnapshot.UpdateType);
      v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48);
      v148 = v129[v147];
      v149 = v203;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_48;
      }

      v150 = *(v149 + v147);
      v152 = v200;
      v151 = v201;
      v153 = v185;
      (*(v201 + 32))(v185, v149, v200);
      v154 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v155 = *(v151 + 8);
      v155(v153, v152);
      v155(v129, v152);
      if ((v154 & 1) == 0)
      {
        goto LABEL_84;
      }

      if (v148 > 4)
      {
        switch(v148)
        {
          case 5:
            if (v150 == 5)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 6:
            if (v150 == 6)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 7:
            if (v150 == 7)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
        }
      }

      else
      {
        switch(v148)
        {
          case 2:
            if (v150 == 2)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 3:
            if (v150 == 3)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
          case 4:
            if (v150 == 4)
            {
              goto LABEL_40;
            }

            goto LABEL_84;
        }
      }

      if ((v150 - 2) >= 6 && ((v150 ^ v148) & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_84;
    case 6u:
      v129 = v196;
      sub_1D1CB2110(v54, v196, type metadata accessor for StateSnapshot.UpdateType);
      v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
      v158 = *&v129[v157];
      v159 = v203;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_47;
      }

      v160 = *(v159 + v157);
      v135 = v200;
      v161 = v201;
      v136 = v186;
      (*(v201 + 32))(v186, v159, v200);
      v162 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v138 = *(v161 + 8);
      v138(v129, v135);
      if ((v162 & 1) == 0)
      {
        goto LABEL_59;
      }

      v139 = sub_1D17A6E98(v158, v160);
      goto LABEL_45;
    case 7u:
      v129 = v198;
      sub_1D1CB2110(v54, v198, type metadata accessor for StateSnapshot.UpdateType);
      v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
      v131 = *&v129[v130];
      v132 = v203;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_47:

LABEL_48:
        (*(v201 + 8))(v129, v200);
        goto LABEL_62;
      }

      v133 = *(v132 + v130);
      v135 = v200;
      v134 = v201;
      v136 = v187;
      (*(v201 + 32))(v187, v132, v200);
      v137 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v138 = *(v134 + 8);
      v138(v129, v135);
      if ((v137 & 1) == 0)
      {
LABEL_59:
        v138(v136, v135);

        goto LABEL_84;
      }

      v139 = sub_1D184F090(v131, v133);
LABEL_45:
      v71 = v139;

      v138(v136, v135);
      goto LABEL_46;
    case 8u:
      v169 = v193;
      sub_1D1CB2110(v54, v193, type metadata accessor for StateSnapshot.UpdateType);
      v170 = v203;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_62;
      }

      v171 = *v169 ^ *v170;
      sub_1D1CB2248(v54, type metadata accessor for StateSnapshot.UpdateType);
      v71 = v171 ^ 1;
      return v71 & 1;
    case 9u:
      v114 = v197;
      sub_1D1CB2110(v54, v197, type metadata accessor for StateSnapshot.UpdateType);
      v115 = *v114;
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810) + 48);
      v117 = v203;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1D1CB2248(v114 + v116, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

        goto LABEL_62;
      }

      v118 = *v117;
      v119 = v114 + v116;
      v120 = v191;
      sub_1D1CB2178(v119, v191, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v121 = v117 + v116;
      v122 = v190;
      sub_1D1CB2178(v121, v190, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v123 = sub_1D1E684FC();

      if (v123)
      {
        v71 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV7SettingV2eeoiySbAI_AItFZ_0(v120, v122);
        sub_1D1CB2248(v122, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        sub_1D1CB2248(v120, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        goto LABEL_46;
      }

      sub_1D1CB2248(v122, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1CB2248(v120, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      goto LABEL_84;
    case 0xAu:
      sub_1D1CB2110(v54, v27, type metadata accessor for StateSnapshot.UpdateType);
      v164 = *v27;
      v163 = v27[1];
      v165 = v203;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        goto LABEL_61;
      }

      v167 = *v165;
      v166 = v165[1];
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v168 = sub_1D1E684FC();

      if ((v168 & 1) == 0)
      {

        goto LABEL_84;
      }

      v71 = sub_1D177AE98(v163, v166);

LABEL_25:

      goto LABEL_46;
    case 0xBu:
      v202 = v54;
      sub_1D1CB2110(v54, v24, type metadata accessor for StateSnapshot.UpdateType);
      v59 = *v24;
      v60 = v24[8];
      v61 = v24[9];
      v63 = *(v24 + 2);
      v62 = *(v24 + 3);
      v64 = *(v24 + 4);
      v65 = v24[40];
      v66 = v203;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v54 = v202;
        goto LABEL_62;
      }

      v67 = *v66;
      LODWORD(v201) = *(v66 + 8);
      LODWORD(v200) = *(v66 + 9);
      v68 = v66[2];
      v69 = v66[3];
      v198 = v66[4];
      v199 = v68;
      LODWORD(v203) = *(v66 + 40);
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v70 = sub_1D1E684FC();

      if (v70)
      {
        LOBYTE(v209) = v60;
        BYTE1(v209) = v61;
        v210 = v63;
        v211 = v62;
        v212 = v64;
        v213 = v65;
        LOBYTE(v204) = v201;
        BYTE1(v204) = v200;
        v205 = v199;
        v206 = v69;
        v207 = v198;
        v208 = v203;
        v71 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(&v209, &v204);

        sub_1D1CB2248(v202, type metadata accessor for StateSnapshot.UpdateType);
        return v71 & 1;
      }

      goto LABEL_105;
    case 0xCu:
      v100 = v199;
      sub_1D1CB2110(v54, v199, type metadata accessor for StateSnapshot.UpdateType);
      v101 = *v100;
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
      v103 = v203;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        (*(v201 + 8))(v100 + v102, v200);
LABEL_61:

        goto LABEL_62;
      }

      v104 = *v103;
      v105 = v201;
      v106 = *(v201 + 32);
      v107 = v100 + v102;
      v108 = v189;
      v109 = v200;
      v106(v189, v107, v200);
      v110 = v103 + v102;
      v111 = v188;
      v106(v188, v110, v109);
      v112 = sub_1D1849C5C(v101, v104);

      if ((v112 & 1) == 0)
      {
        v175 = *(v105 + 8);
        v175(v111, v109);
        v175(v108, v109);
        goto LABEL_84;
      }

      v71 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v113 = *(v105 + 8);
      v113(v111, v109);
      v113(v108, v109);
LABEL_46:
      sub_1D1CB2248(v54, type metadata accessor for StateSnapshot.UpdateType);
      return v71 & 1;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_40;
      }

      goto LABEL_62;
    default:
      sub_1D1CB2110(v54, v50, type metadata accessor for StateSnapshot.UpdateType);
      v57 = *v50;
      v58 = v203;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_62:
        sub_1D1741A30(v54, &qword_1EC64CF28, &qword_1D1EA2F68);
LABEL_107:
        v71 = 0;
        return v71 & 1;
      }

      v172 = *v58;
      if (v57)
      {
        if (v172)
        {
          sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
          v173 = v57;
          v174 = sub_1D1E684FC();

          if ((v174 & 1) == 0)
          {
LABEL_84:
            v176 = v54;
LABEL_106:
            sub_1D1CB2248(v176, type metadata accessor for StateSnapshot.UpdateType);
            goto LABEL_107;
          }

LABEL_40:
          v156 = v54;
          goto LABEL_41;
        }

        v172 = v57;
      }

      else if (!v172)
      {
        goto LABEL_40;
      }

      goto LABEL_84;
  }
}