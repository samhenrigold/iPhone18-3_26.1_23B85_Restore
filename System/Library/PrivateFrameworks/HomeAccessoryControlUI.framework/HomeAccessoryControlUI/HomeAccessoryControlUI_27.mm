uint64_t static Device.Control.Source.== infix(_:_:)(char *a1, uint64_t a2)
{
  v147 = a1;
  v3 = sub_25268E530();
  v145 = *(v3 - 8);
  v146 = v3;
  MEMORY[0x28223BE20](v3);
  v139 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = &v125 - v6;
  v7 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268F4D0();
  v143 = *(v9 - 8);
  v144 = v9;
  MEMORY[0x28223BE20](v9);
  v125 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control.Source(0);
  MEMORY[0x28223BE20](v11);
  v135 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v125 - v14;
  MEMORY[0x28223BE20](v15);
  v137 = &v125 - v16;
  MEMORY[0x28223BE20](v17);
  v138 = &v125 - v18;
  MEMORY[0x28223BE20](v19);
  v141 = &v125 - v20;
  MEMORY[0x28223BE20](v21);
  v130 = &v125 - v22;
  MEMORY[0x28223BE20](v23);
  v131 = &v125 - v24;
  MEMORY[0x28223BE20](v25);
  v132 = &v125 - v26;
  MEMORY[0x28223BE20](v27);
  v133 = &v125 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v125 - v30;
  MEMORY[0x28223BE20](v32);
  v126 = &v125 - v33;
  MEMORY[0x28223BE20](v34);
  v127 = &v125 - v35;
  MEMORY[0x28223BE20](v36);
  v128 = &v125 - v37;
  MEMORY[0x28223BE20](v38);
  v129 = &v125 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v125 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = (&v125 - v44);
  MEMORY[0x28223BE20](v46);
  v48 = (&v125 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = &v125 - v50;
  MEMORY[0x28223BE20](v52);
  v142 = &v125 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E37B0, &qword_2526A9B90);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v125 - v55;
  v58 = (&v125 + *(v57 + 56) - v55);
  sub_25260D07C(v147, &v125 - v55, type metadata accessor for Device.Control.Source);
  v59 = a2;
  v60 = v58;
  sub_25260D07C(v59, v58, type metadata accessor for Device.Control.Source);
  v147 = v56;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v62 = v147;
      if (!EnumCaseMultiPayload)
      {
        v63 = v142;
        sub_25260D07C(v147, v142, type metadata accessor for Device.Control.Source);
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088, &unk_2526A85B0) + 48);
        v65 = *(v63 + v64);
        if (swift_getEnumCaseMultiPayload())
        {

          (*(v143 + 8))(v63, v144);
LABEL_38:
          sub_252372288(v62, &qword_27F4E37B0, &qword_2526A9B90);
LABEL_39:
          v82 = 0;
          return v82 & 1;
        }

        v115 = *(v58 + v64);
        v116 = v143;
        v117 = v125;
        v118 = v144;
        (*(v143 + 32))(v125, v58, v144);
        sub_252613298(&qword_27F4E37B8, MEMORY[0x277D16348], MEMORY[0x277D16370]);
        sub_252692D40();
        sub_252692D40();
        if (v150 == v148 && v151 == v149)
        {
          v119 = 1;
        }

        else
        {
          v119 = sub_2526933B0();
        }

        v121 = *(v116 + 8);
        v121(v63, v118);
        if (v119)
        {
          sub_252439154(v65, v115);
          v82 = v122;

          v121(v117, v118);
          goto LABEL_50;
        }

        v121(v117, v118);

LABEL_53:
        sub_25260CE88(v62, type metadata accessor for Device.Control.Source);
        goto LABEL_39;
      }

      sub_25260D07C(v147, v51, type metadata accessor for Device.Control.Source);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_25260CE88(v51, type metadata accessor for MatterControlSolver.Source);
        goto LABEL_38;
      }

      v94 = v134;
      sub_25260CAD4(v58, v134, type metadata accessor for MatterControlSolver.Source);
      v82 = static MatterControlSolver.Source.== infix(_:_:)(v51, v94);
      sub_25260CE88(v94, type metadata accessor for MatterControlSolver.Source);
      sub_25260CE88(v51, type metadata accessor for MatterControlSolver.Source);
LABEL_50:
      sub_25260CE88(v62, type metadata accessor for Device.Control.Source);
      return v82 & 1;
    }

    v62 = v147;
    if (EnumCaseMultiPayload == 2)
    {
      sub_25260D07C(v147, v48, type metadata accessor for Device.Control.Source);
      v83 = *v48;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_252439154(v83, *v58);
        v82 = v84;

        goto LABEL_50;
      }

LABEL_37:

      goto LABEL_38;
    }

    sub_25260D07C(v147, v45, type metadata accessor for Device.Control.Source);
    v99 = *v45;
    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090, &unk_2526A9160) + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v145 + 8))(v45 + v100, v146);
      goto LABEL_37;
    }

    v101 = *v58;
    v102 = v60;
    v104 = v145;
    v103 = v146;
    v105 = *(v145 + 32);
    v106 = v45 + v100;
    v107 = v140;
    v105(v140, v106, v146);
    v108 = v102 + v100;
    v109 = v139;
    v105(v139, v108, v103);
    sub_252439154(v99, v101);
    v111 = v110;

    if ((v111 & 1) == 0)
    {
      v120 = *(v104 + 8);
      v120(v109, v103);
      v120(v107, v103);
      goto LABEL_53;
    }

    sub_252613298(&qword_27F4DADD8, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
    sub_252692D40();
    sub_252692D40();
    if (v150 == v148 && v151 == v149)
    {
      v112 = *(v104 + 8);
      v112(v109, v103);
      v112(v107, v103);
    }

    else
    {
      v123 = sub_2526933B0();
      v124 = *(v104 + 8);
      v124(v109, v103);
      v124(v107, v103);

      if ((v123 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v113 = swift_getEnumCaseMultiPayload();
      v62 = v147;
      if (v113 != 7)
      {
        goto LABEL_38;
      }

LABEL_30:
      sub_25260CE88(v62, type metadata accessor for Device.Control.Source);
      v82 = 1;
      return v82 & 1;
    }

    v62 = v147;
    sub_25260D07C(v147, v141, type metadata accessor for Device.Control.Source);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3580, &unk_2526A9130);
      v86 = swift_projectBox();
      v87 = *(v85 + 48);
      v88 = swift_projectBox();
      v89 = v138;
      sub_25260D07C(v86, v138, type metadata accessor for Device.Control.Source);
      v90 = v137;
      sub_25260D07C(v88, v137, type metadata accessor for Device.Control.Source);
      v91 = v136;
      sub_25260D07C(v86 + v87, v136, type metadata accessor for Device.Control.Source);
      v92 = v88 + v87;
      v93 = v135;
LABEL_22:
      sub_25260D07C(v92, v93, type metadata accessor for Device.Control.Source);
      if (static Device.Control.Source.== infix(_:_:)(v89, v90))
      {
        v82 = static Device.Control.Source.== infix(_:_:)(v91, v93);
        sub_25260CE88(v93, type metadata accessor for Device.Control.Source);
        sub_25260CE88(v91, type metadata accessor for Device.Control.Source);
        sub_25260CE88(v90, type metadata accessor for Device.Control.Source);
        sub_25260CE88(v89, type metadata accessor for Device.Control.Source);

        sub_25260CE88(v62, type metadata accessor for Device.Control.Source);
        return v82 & 1;
      }

      sub_25260CE88(v93, type metadata accessor for Device.Control.Source);
      sub_25260CE88(v91, type metadata accessor for Device.Control.Source);
      sub_25260CE88(v90, type metadata accessor for Device.Control.Source);
      sub_25260CE88(v89, type metadata accessor for Device.Control.Source);

      v81 = v62;
LABEL_45:
      sub_25260CE88(v81, type metadata accessor for Device.Control.Source);
      goto LABEL_39;
    }

LABEL_31:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v62 = v147;
    sub_25260D07C(v147, v31, type metadata accessor for Device.Control.Source);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3568, &qword_2526A9150);
      v96 = swift_projectBox();
      v97 = *(v95 + 48);
      v98 = swift_projectBox();
      v89 = v133;
      sub_25260D07C(v96, v133, type metadata accessor for Device.Control.Source);
      v90 = v132;
      sub_25260D07C(v98, v132, type metadata accessor for Device.Control.Source);
      v91 = v131;
      sub_25260D07C(v96 + v97, v131, type metadata accessor for Device.Control.Source);
      v92 = v98 + v97;
      v93 = v130;
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  sub_25260D07C(v147, v42, type metadata accessor for Device.Control.Source);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3528, &qword_2526A9038);
  v67 = swift_projectBox();
  v68 = *(v66 + 64);
  v69 = *(v67 + v68);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    v62 = v147;
    goto LABEL_38;
  }

  v70 = *(v66 + 48);
  v71 = swift_projectBox();
  v72 = *(v71 + v68);
  v73 = v129;
  sub_25260D07C(v67, v129, type metadata accessor for Device.Control.Source);
  v74 = v128;
  sub_25260D07C(v71, v128, type metadata accessor for Device.Control.Source);
  v75 = v67 + v70;
  v76 = v127;
  sub_25260D07C(v75, v127, type metadata accessor for Device.Control.Source);
  v77 = v71 + v70;
  v78 = v126;
  sub_25260D07C(v77, v126, type metadata accessor for Device.Control.Source);
  if ((static Device.Control.Source.== infix(_:_:)(v73, v74) & 1) == 0)
  {
    sub_25260CE88(v78, type metadata accessor for Device.Control.Source);
    sub_25260CE88(v76, type metadata accessor for Device.Control.Source);
    sub_25260CE88(v74, type metadata accessor for Device.Control.Source);
    sub_25260CE88(v73, type metadata accessor for Device.Control.Source);

    v81 = v147;
    goto LABEL_45;
  }

  v79 = v76;
  v80 = static Device.Control.Source.== infix(_:_:)(v76, v78);
  sub_25260CE88(v78, type metadata accessor for Device.Control.Source);
  sub_25260CE88(v79, type metadata accessor for Device.Control.Source);
  sub_25260CE88(v74, type metadata accessor for Device.Control.Source);
  sub_25260CE88(v73, type metadata accessor for Device.Control.Source);

  v81 = v147;
  if ((v80 & 1) == 0)
  {
    goto LABEL_45;
  }

  v82 = v69 == v72;
  sub_25260CE88(v147, type metadata accessor for Device.Control.Source);
  return v82 & 1;
}

uint64_t Device.Control.hash(into:)(__int128 *a1)
{
  sub_25268DA10();
  sub_252613298(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252692B30();
  v3 = type metadata accessor for Device.Control(0);
  Device.Control.Kind.hash(into:)(a1);
  Device.Control.Source.hash(into:)(a1);
  MEMORY[0x2530A4FE0](*(v1 + v3[7]));
  if (*(v1 + v3[8] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v4 = (v1 + v3[9]);
  v5 = *v4;
  v6 = v4[1];
  if (v5 == 4)
  {
    sub_252693480();
    if (v6 != 4)
    {
LABEL_6:
      sub_252693480();
      MEMORY[0x2530A4FE0](v6);
      goto LABEL_9;
    }
  }

  else
  {
    sub_252693480();
    MEMORY[0x2530A4FE0](v5);
    if (v6 != 4)
    {
      goto LABEL_6;
    }
  }

  sub_252693480();
LABEL_9:
  v7 = *(v1 + v3[10]);
  sub_252693480();
  if (v7 != 16)
  {
    MEMORY[0x2530A4FE0](v7);
  }

  return sub_252693480();
}

uint64_t sub_252610958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268DA10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void Device.Control.Kind.hash(into:)(uint64_t a1)
{
  v108 = a1;
  v106 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v95 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  MEMORY[0x28223BE20](v2 - 8);
  v104 = &v95 - v3;
  v4 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v96 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v95 - v12;
  v14 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v95 - v26;
  v28 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v95 - v35;
  sub_25260D07C(v107, &v95 - v35, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v85 = v101;
        sub_25260CAD4(v36, v101, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
        MEMORY[0x2530A4FE0](6);
        sub_25268DA10();
        sub_252613298(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_252692B30();
        v86 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
        v87 = v85;
        goto LABEL_50;
      }

      v55 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0) + 48)];
      v56 = *(v55 + 5);
      v120 = *(v55 + 4);
      v121 = v56;
      v122 = *(v55 + 48);
      v57 = *(v55 + 1);
      v116 = *v55;
      v117 = v57;
      v58 = *(v55 + 3);
      v118 = *(v55 + 2);
      v119 = v58;
      v59 = v103;
      sub_2523714D4(v36, v103, &qword_27F4DB258, &unk_252696090);
      v60 = v108;
      MEMORY[0x2530A4FE0](5);
      v61 = v99;
      sub_25237153C(v59, v99, &qword_27F4DB258, &unk_252696090);
      if ((*(v100 + 48))(v61, 1, v102) == 1)
      {
        sub_252693480();
      }

      else
      {
        v88 = v96;
        sub_25260CAD4(v61, v96, type metadata accessor for AccessoryControl.ThermostatState);
        sub_252693480();
        AccessoryControl.ThermostatState.hash(into:)(v60);
        sub_25260CE88(v88, type metadata accessor for AccessoryControl.ThermostatState);
      }

      v113 = v120;
      v114 = v121;
      v115 = v122;
      v109 = v116;
      v110 = v117;
      v112 = v119;
      v111 = v118;
      AccessoryControl.ThermostatConfig.hash(into:)(v60);
      sub_252372288(v59, &qword_27F4DB258, &unk_252696090);
      sub_252385F08(&v116);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v66 = *v36;
      v67 = *(v36 + 1);
      v68 = *(v36 + 2);
      v107 = *(v36 + 3);
      v69 = *(v36 + 4);
      v70 = v36[40];
      v71 = *(v36 + 6);
      v72 = *(v36 + 8);
      v73 = v108;
      MEMORY[0x2530A4FE0](7);
      if (v67)
      {
        LODWORD(v104) = v70;
        v105 = v71;
        v106 = v69;
        sub_252693480();
        sub_252692C80();
        MEMORY[0x2530A4FE0](*(v68 + 16));
        v74 = *(v68 + 16);
        if (v74)
        {
          v75 = v68 + 40;
          do
          {

            sub_252692C80();

            v75 += 16;
            --v74;
          }

          while (v74);
        }

        v76 = v107;
        sub_2523DCD6C(v73, v107);
        sub_2523E2E24(v66, v67, v68, v76);
        v69 = v106;
      }

      else
      {
        sub_252693480();
      }

      sub_2523D8FD0(v73, v69);
      sub_252693480();
      sub_252692C80();
      sub_2523D8AB4(v73, v72);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v40 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0) + 48)];
      v41 = *(v40 + 3);
      v42 = *(v40 + 4);
      v43 = v104;
      sub_2523714D4(v36, v104, &qword_27F4DB440, &qword_2526A1150);
      v44 = v108;
      MEMORY[0x2530A4FE0](8);
      sub_2523D6884(v44);
      sub_252693480();
      sub_252692C80();
      sub_2523D8AB4(v44, v41);
      MEMORY[0x2530A4FE0](*(v42 + 16));
      v45 = *(v42 + 16);
      if (v45)
      {
        v46 = (v42 + 32);
        do
        {
          v47 = *v46++;
          MEMORY[0x2530A4FE0](v47);
          --v45;
        }

        while (v45);
      }

      sub_252372288(v43, &qword_27F4DB440, &qword_2526A1150);
    }

    else
    {
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
      v78 = swift_projectBox();
      v79 = *(v77 + 48);
      sub_25260D07C(v78, v33, type metadata accessor for Device.Control.Kind);
      v80 = v105;
      sub_25260D07C(v78 + v79, v105, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v81 = v108;
      MEMORY[0x2530A4FE0](9);
      Device.Control.Kind.hash(into:)(v81);
      sub_25268F0E0();
      sub_252613298(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
      sub_252692B30();
      v82 = v106;
      MEMORY[0x2530A4FE0](*(v80 + *(v106 + 20)));
      MEMORY[0x2530A4FE0](*(v80 + *(v82 + 24)));
      sub_25260CE88(v80, type metadata accessor for AccessoryControl.DecorationControlConfig);
      sub_25260CE88(v33, type metadata accessor for Device.Control.Kind);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v38 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0) + 48)];
          v116 = *v38;
          *&v117 = *(v38 + 2);
          sub_2523714D4(v36, v13, &qword_27F4DB2A0, &qword_25269E4A0);
          v39 = v108;
          MEMORY[0x2530A4FE0](3);
          sub_2523D6C14(v39);
          v109 = v116;
          *&v110 = v117;
          AccessoryControl.ColorPickerConfig.hash(into:)(v39);
          sub_252372288(v13, &qword_27F4DB2A0, &qword_25269E4A0);
          sub_252394280(&v116);
        }

        else
        {
          MEMORY[0x2530A4FE0](4);
          sub_252692C80();
          sub_252693480();
        }

        return;
      }

      v62 = *v36;
      v63 = v36[8];
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      sub_25260CAD4(&v36[*(v64 + 48)], v16, type metadata accessor for AccessoryControl.PickerViewConfig);
      v65 = v108;
      MEMORY[0x2530A4FE0](2);
      sub_252693480();
      if (v63 != 1)
      {
        MEMORY[0x2530A4FE0](v62);
      }

      AccessoryControl.PickerViewConfig.hash(into:)(v65);
      v86 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v87 = v16;
LABEL_50:
      sub_25260CE88(v87, v86);
      return;
    }

    if (!EnumCaseMultiPayload)
    {
      v49 = *v36;
      v48 = *(v36 + 1);
      v51 = *(v36 + 2);
      v50 = *(v36 + 3);
      v52 = *(v36 + 4);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      sub_25260CAD4(&v36[*(v53 + 48)], v30, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v54 = v108;
      MEMORY[0x2530A4FE0](0);
      if (v52 == 1)
      {
        sub_252693480();
      }

      else
      {
        sub_252693480();
        sub_252693480();
        if (v51)
        {
          sub_252693480();
        }

        else
        {
          sub_252693480();
          if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v89 = v48;
          }

          else
          {
            v89 = 0;
          }

          MEMORY[0x2530A5020](v89);
        }

        sub_252693480();
        if (v52)
        {
          sub_252692C80();
          v90 = v49;
          v91 = v48;
          v92 = v51;
          v93 = v50;
          v94 = v52;
        }

        else
        {
          v90 = v49;
          v91 = v48;
          v92 = v51;
          v93 = v50;
          v94 = 0;
        }

        sub_252393F68(v90, v91, v92, v93, v94);
      }

      AccessoryControl.BinaryViewConfig.hash(into:)(v54);
      v86 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      v87 = v30;
      goto LABEL_50;
    }

    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
    sub_2523714D4(v36, v27, &qword_27F4DB218, &unk_252696080);
    sub_25260CAD4(&v36[v83], v21, type metadata accessor for AccessoryControl.IncrementalConfig);
    v84 = v108;
    MEMORY[0x2530A4FE0](1);
    sub_25237153C(v27, v24, &qword_27F4DB218, &unk_252696080);
    if ((*(v97 + 48))(v24, 1, v98) == 1)
    {
      sub_252693480();
    }

    else
    {
      sub_25260CAD4(v24, v18, type metadata accessor for AccessoryControl.IncrementalState);
      sub_252693480();
      sub_25268ED70();
      sub_252613298(&qword_27F4DB790, MEMORY[0x277D15BC0], MEMORY[0x277D15BC8]);
      sub_252692B30();
      sub_252693480();
      sub_25260CE88(v18, type metadata accessor for AccessoryControl.IncrementalState);
    }

    AccessoryControl.IncrementalConfig.hash(into:)(v84);
    sub_25260CE88(v21, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_252372288(v27, &qword_27F4DB218, &unk_252696080);
  }
}

void Device.Control.Source.hash(into:)(__int128 *a1)
{
  v46 = a1;
  v2 = sub_25268E530();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25268F4D0();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control.Source(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v43 - v18);
  sub_25260D07C(v1, &v43 - v18, type metadata accessor for Device.Control.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        MEMORY[0x2530A4FE0](0);
        return;
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3580, &unk_2526A9130);
      v32 = swift_projectBox();
      v33 = *(v31 + 48);
      sub_25260D07C(v32, v16, type metadata accessor for Device.Control.Source);
      sub_25260D07C(v32 + v33, v13, type metadata accessor for Device.Control.Source);
      v34 = 7;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3528, &qword_2526A9038);
        v25 = swift_projectBox();
        v26 = *(v24 + 48);
        v27 = *(v25 + *(v24 + 64));
        sub_25260D07C(v25, v16, type metadata accessor for Device.Control.Source);
        sub_25260D07C(v25 + v26, v13, type metadata accessor for Device.Control.Source);
        v28 = v46;
        MEMORY[0x2530A4FE0](5);
        Device.Control.Source.hash(into:)(v28);
        Device.Control.Source.hash(into:)(v28);
        MEMORY[0x2530A4FE0](v27);
LABEL_15:
        sub_25260CE88(v13, type metadata accessor for Device.Control.Source);
        sub_25260CE88(v16, type metadata accessor for Device.Control.Source);

        return;
      }

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3568, &qword_2526A9150);
      v37 = swift_projectBox();
      v38 = *(v36 + 48);
      sub_25260D07C(v37, v16, type metadata accessor for Device.Control.Source);
      sub_25260D07C(v37 + v38, v13, type metadata accessor for Device.Control.Source);
      v34 = 6;
    }

    v39 = v46;
    MEMORY[0x2530A4FE0](v34);
    Device.Control.Source.hash(into:)(v39);
    Device.Control.Source.hash(into:)(v39);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v29 = *v19;
    if (EnumCaseMultiPayload == 2)
    {
      v30 = v46;
      MEMORY[0x2530A4FE0](3);
      sub_2523D74EC(v30, v29);
    }

    else
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090, &unk_2526A9160);
      v41 = v45;
      (*(v45 + 32))(v4, v19 + *(v40 + 48), v2);
      v42 = v46;
      MEMORY[0x2530A4FE0](4);
      sub_2523D74EC(v42, v29);

      sub_252613298(&qword_27F4DB068, MEMORY[0x277D158E0], MEMORY[0x277D158E8]);
      sub_252692B30();
      (*(v41 + 8))(v4, v2);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_25260CAD4(v19, v7, type metadata accessor for MatterControlSolver.Source);
    v35 = v46;
    MEMORY[0x2530A4FE0](2);
    MatterControlSolver.Source.hash(into:)(v35);
    sub_25260CE88(v7, type metadata accessor for MatterControlSolver.Source);
  }

  else
  {
    v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088, &unk_2526A85B0) + 48));
    v22 = v44;
    (*(v44 + 32))(v10, v19, v8);
    v23 = v46;
    MEMORY[0x2530A4FE0](1);
    sub_252613298(&qword_27F4DAF28, MEMORY[0x277D16348], MEMORY[0x277D16350]);
    sub_252692B30();
    sub_2523D74EC(v23, v21);

    (*(v22 + 8))(v10, v8);
  }
}

uint64_t sub_252611FF4(uint64_t (*a1)(void *))
{
  sub_252693460();
  a1(v3);
  return sub_2526934C0();
}

uint64_t sub_252612058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_2526120BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_252612104()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x754272656B636970;
    v7 = 0x7542737574617473;
    if (v1 != 8)
    {
      v7 = 0x79616C7265766FLL;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x74736F6D72656874;
    if (v1 != 5)
    {
      v8 = 0x6E41736D72616C61;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7972616E6962;
    v3 = 0x72656B636970;
    v4 = 0x726F6C6F63;
    if (v1 != 3)
    {
      v4 = 0x616C50616964656DLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E656D6572636E69;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

void Device.Control.Kind.Primitive.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_2526932D0();

  v5 = 10;
  if (v4 < 0xA)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2526122D0@<X0>(uint64_t *a1@<X8>)
{
  result = Device.Control.Kind.Primitive.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252612304()
{
  v1 = *v0;
  sub_252693460();
  sub_2523E37F4(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_252612354(uint64_t a1)
{
  v2 = *v1;
  sub_252693460();
  sub_2523E37F4(v4, v2);
  return sub_2526934C0();
}

void sub_25261239C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v29 - v17);
  sub_25260D07C(v2, &v29 - v17, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      sub_25260CAD4(v18 + *(v28 + 48), v6, type metadata accessor for AccessoryControl.PickerViewConfig);
      sub_25237153C(&v6[*(v4 + 24)], a1, &qword_27F4DADB8, &qword_2526A6E60);
      v24 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v25 = v6;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v22 = swift_projectBox();
      sub_25260D07C(v22, v15, type metadata accessor for Device.Control.Kind);
      sub_25261239C(a1);
      sub_25260CE88(v15, type metadata accessor for Device.Control.Kind);

      return;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_252393F68(*v18, v18[1], v18[2], v18[3], v18[4]);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      sub_25260CAD4(v18 + *(v26 + 48), v12, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25237153C(v12, a1, &qword_27F4DAD88, &unk_2526956E0);
      sub_25260CE88(v12, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
      (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020);
      sub_25260CAD4(v18 + *(v20 + 48), v9, type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_25237153C(v9, a1, &qword_27F4DAD88, &unk_2526956E0);
      sub_25260CE88(v9, type metadata accessor for AccessoryControl.IncrementalConfig);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
      (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
      sub_252372288(v18, &qword_27F4DB218, &unk_252696080);
      return;
    }
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  v24 = type metadata accessor for Device.Control.Kind;
  v25 = v18;
LABEL_11:
  sub_25260CE88(v25, v24);
}

void sub_252612854(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v2 - 8);
  *&v71 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v68);
  *&v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v64 - v8;
  v9 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v11);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - v24;
  sub_25237153C(a1, v21, &qword_27F4DADB8, &qword_2526A6E60);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_252372288(a1, &qword_27F4DADB8, &qword_2526A6E60);
    sub_252372288(v21, &qword_27F4DADB8, &qword_2526A6E60);
    return;
  }

  sub_2523714D4(v21, v25, &qword_27F4DAD88, &unk_2526956E0);
  v26 = v72;
  sub_25260D07C(v72, v15, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v11;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_25260CE88(v26, type metadata accessor for Device.Control.Kind);
      sub_252372288(a1, &qword_27F4DADB8, &qword_2526A6E60);
      v58 = v26;
      v59 = *v15;
      v69 = v28;
      v60 = v15[8];
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      v33 = v70;
      sub_25260CAD4(&v15[*(v61 + 48)], v70, type metadata accessor for AccessoryControl.PickerViewConfig);
      v62 = *(v68 + 6);
      sub_252372288(v33 + v62, &qword_27F4DADB8, &qword_2526A6E60);
      sub_2523714D4(v25, v33 + v62, &qword_27F4DAD88, &unk_2526956E0);
      (*(v23 + 56))(v33 + v62, 0, 1, v22);
      v63 = *(v61 + 48);
      *v58 = v59;
      *(v58 + 8) = v60;
      sub_25260D07C(v33, v58 + v63, type metadata accessor for AccessoryControl.PickerViewConfig);
      swift_storeEnumTagMultiPayload();
      v35 = type metadata accessor for AccessoryControl.PickerViewConfig;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 9)
    {
      sub_25260CE88(v26, type metadata accessor for Device.Control.Kind);
      *&v70 = *v15;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
      v37 = swift_projectBox();
      v68 = v25;
      v69 = v11;
      v38 = v37;
      v39 = *(v36 + 48);
      v40 = v67;
      sub_25260D07C(v37, v67, type metadata accessor for Device.Control.Kind);
      v41 = v38 + v39;
      v42 = v71;
      sub_25260D07C(v41, v71, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v43 = v68;
      sub_25237153C(v68, v18, &qword_27F4DAD88, &unk_2526956E0);
      (*(v23 + 56))(v18, 0, 1, v22);
      sub_252612854(v18);
      sub_252372288(a1, &qword_27F4DADB8, &qword_2526A6E60);
      sub_252372288(v43, &qword_27F4DAD88, &unk_2526956E0);
      v44 = swift_allocBox();
      v46 = v45;
      v47 = *(v36 + 48);
      sub_25260CAD4(v40, v45, type metadata accessor for Device.Control.Kind);
      sub_25260CAD4(v42, v46 + v47, type metadata accessor for AccessoryControl.DecorationControlConfig);
      *v26 = v44;
      swift_storeEnumTagMultiPayload();

      return;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25260CE88(v26, type metadata accessor for Device.Control.Kind);
      sub_252372288(a1, &qword_27F4DADB8, &qword_2526A6E60);
      v50 = v25;
      v51 = *(v15 + 4);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      v53 = *(v52 + 48);
      v54 = *v15;
      v70 = *(v15 + 1);
      v71 = v54;
      v55 = v65;
      sub_25260CAD4(&v15[v53], v65, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_252370174(v50, v55);
      v56 = *(v52 + 48);
      v57 = v70;
      *v26 = v71;
      *(v26 + 16) = v57;
      *(v26 + 32) = v51;
      sub_25260D07C(v55, v26 + v56, type metadata accessor for AccessoryControl.BinaryViewConfig);
      swift_storeEnumTagMultiPayload();
      v48 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      v49 = v55;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25260CE88(v26, type metadata accessor for Device.Control.Kind);
      sub_252372288(a1, &qword_27F4DADB8, &qword_2526A6E60);
      v29 = v25;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020);
      v31 = *(v30 + 48);
      v32 = v66;
      sub_2523714D4(v15, v66, &qword_27F4DB218, &unk_252696080);
      v33 = v69;
      sub_25260CAD4(&v15[v31], v69, type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_252370174(v29, v33);
      v34 = *(v30 + 48);
      sub_2523714D4(v32, v26, &qword_27F4DB218, &unk_252696080);
      sub_25260D07C(v33, v26 + v34, type metadata accessor for AccessoryControl.IncrementalConfig);
      swift_storeEnumTagMultiPayload();
      v35 = type metadata accessor for AccessoryControl.IncrementalConfig;
LABEL_13:
      v48 = v35;
      v49 = v33;
      goto LABEL_14;
    }
  }

  sub_252372288(a1, &qword_27F4DADB8, &qword_2526A6E60);
  sub_252372288(v25, &qword_27F4DAD88, &unk_2526956E0);
  v48 = type metadata accessor for Device.Control.Kind;
  v49 = v15;
LABEL_14:
  sub_25260CE88(v49, v48);
}

uint64_t _s22HomeAccessoryControlUI6DeviceV0C0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for Device.Control(0);
  if ((static Device.Control.Kind.== infix(_:_:)((a1 + v4[5]), (a2 + v4[5])) & 1) == 0 || (static Device.Control.Source.== infix(_:_:)((a1 + v4[6]), a2 + v4[6]) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    goto LABEL_5;
  }

  v7 = v4[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_2526933B0() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v11)
  {
    goto LABEL_5;
  }

  v13 = v4[9];
  v18 = *(a1 + v13);
  v17 = *(a2 + v13);
  if (_s22HomeAccessoryControlUI0bC0V18ViewSizeConstraintV2eeoiySbAE_AEtFZ_0(&v18, &v17))
  {
    v14 = v4[10];
    v15 = *(a1 + v14);
    v16 = *(a2 + v14);
    if (v15 == 16)
    {
      if (v16 == 16)
      {
        goto LABEL_21;
      }
    }

    else if (v15 == v16)
    {
LABEL_21:
      v5 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
      return v5 & 1;
    }
  }

LABEL_5:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_252613298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_252613404()
{
  result = qword_27F4E37D8;
  if (!qword_27F4E37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E37D8);
  }

  return result;
}

void sub_252613480(uint64_t a1)
{
  sub_25268DA10();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Device.Control.Kind(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Device.Control.Source(319);
      if (v3 <= 0x3F)
      {
        sub_2523E19E4(319, &qword_27F4DB5E0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_2523E19E4(319, &qword_27F4DB5E8, &type metadata for ControlViewType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252613584(uint64_t a1)
{
  sub_252613788(319, &qword_27F4E3800, &qword_27F4DB4E0, &qword_2526A6760, type metadata accessor for AccessoryControl.BinaryViewConfig);
  if (v1 <= 0x3F)
  {
    sub_252613788(319, &qword_27F4E3808, &qword_27F4DB218, &unk_252696080, type metadata accessor for AccessoryControl.IncrementalConfig);
    if (v2 <= 0x3F)
    {
      sub_252613788(319, &qword_27F4E3810, &qword_27F4DB3C8, &unk_252695A60, type metadata accessor for AccessoryControl.PickerViewConfig);
      if (v3 <= 0x3F)
      {
        sub_252613804(319, &qword_27F4E3818, &qword_27F4DB2A0, &qword_25269E4A0, &type metadata for AccessoryControl.ColorPickerConfig);
        if (v4 <= 0x3F)
        {
          sub_252613804(319, &qword_27F4E3820, &qword_27F4DB258, &unk_252696090, &type metadata for AccessoryControl.ThermostatConfig);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AccessoryControl.AlarmAndTimerConfig(319);
            if (v6 <= 0x3F)
            {
              sub_252613804(319, &qword_27F4E3828, &qword_27F4DB4B8, &qword_252695A50, &type metadata for AccessoryControl.PickerButtonViewConfig);
              if (v7 <= 0x3F)
              {
                sub_252613804(319, &qword_27F4E3830, &qword_27F4DB440, &qword_2526A1150, &type metadata for AccessoryControl.StatusButtonViewConfig);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_252613788(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_252613804(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_252613870(uint64_t a1)
{
  sub_252613954(319);
  if (v1 <= 0x3F)
  {
    sub_2526139D4(319, &qword_27F4E3850, type metadata accessor for MatterControlSolver.Source);
    if (v2 <= 0x3F)
    {
      sub_2526139D4(319, &qword_27F4E3858, sub_2523FECCC);
      if (v3 <= 0x3F)
      {
        sub_252613A20(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_252613954(uint64_t a1)
{
  if (!qword_27F4E3848)
  {
    sub_25268F4D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB978, &qword_252696540);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4E3848);
    }
  }
}

void sub_2526139D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252613A20(uint64_t a1)
{
  if (!qword_27F4E3860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB978, &qword_252696540);
    sub_25268E530();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4E3860);
    }
  }
}

uint64_t _s7ControlV4KindO9PrimitiveOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7ControlV4KindO9PrimitiveOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_252613C3C@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(a3(0) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_25261B6E8(v17, a5, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_252613D7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v67 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV2eeoiySbAE_AEtFZ_0(v2, a1))
  {
    if (!sub_2525C76E0(v2, a1))
    {
      goto LABEL_14;
    }

    v11 = v5[5];
    v12 = *(v2 + v11);
    if ((sub_25248DD00(*(a1 + v11), v12) & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = v5[6];
    if ((_s22HomeAccessoryControlUI0C12TextModifierV6ConfigO2eeoiySbAE_AEtFZ_0(v2 + v13, a1 + v13) & 1) == 0)
    {
      goto LABEL_14;
    }

    v14 = v5[7];
    v15 = v2 + v14;
    v17 = *(v2 + v14);
    v16 = *(v2 + v14 + 8);
    v19 = *(v2 + v14 + 16);
    v18 = *(v2 + v14 + 24);
    v20 = *(v2 + v14 + 32);
    v21 = a1 + v14;
    v22 = *v21;
    v62 = *(v21 + 1);
    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    v65 = v17;
    v66 = v24;
    v64 = v23;
    v25 = v21[32];
    LODWORD(v63) = v25;
    if (v20 == 255)
    {
      v60 = v19;
      v61 = v16;
      v59 = v18;
      sub_252450A1C(v17, v16, v19, v18, 255);
      if (v63 == 255)
      {
        sub_252450A1C(v22, v62, v66, v64, 255);
        sub_252376DA8(v65, v61, v60, v59, 255);
LABEL_19:
        sub_25237153C(v2, v7, &qword_27F4DAD88, &unk_2526956E0);
        sub_25261B680(v2 + v13, &v7[v5[6]], type metadata accessor for ControlTextModifier.Config);
        v44 = *v15;
        v65 = *(v15 + 1);
        v43 = v65;
        v66 = v44;
        v45 = *(v15 + 2);
        v63 = *(v15 + 3);
        v64 = v45;
        v46 = v5[11];
        v47 = v15[32];

        v48 = v44;
        v49 = v43;
        v51 = v63;
        v50 = v64;
        sub_252450A1C(v48, v49, v64, v63, v47);
        sub_252411688(a1 + v46, &v7[v46]);
        v52 = &v7[v5[7]];
        *v52 = 0u;
        *(v52 + 1) = 0u;
        v52[32] = -1;
        v53 = &v7[v5[8]];
        *v53 = 0u;
        *(v53 + 1) = 0u;
        v53[32] = -1;
        v54 = v5[12];
        *&v7[v5[5]] = v12;
        v55 = &v7[v5[10]];
        *v55 = 0;
        *(v55 + 1) = 0xE000000000000000;
        sub_252376DA8(*v52, *(v52 + 1), *(v52 + 2), *(v52 + 3), v52[32]);
        v56 = v65;
        *v52 = v66;
        *(v52 + 1) = v56;
        *(v52 + 2) = v50;
        *(v52 + 3) = v51;
        v52[32] = v47;
        sub_252376DA8(*v53, *(v53 + 1), *(v53 + 2), *(v53 + 3), v53[32]);
        *v53 = 0u;
        *(v53 + 1) = 0u;
        v53[32] = -1;
        *&v7[v54] = 0;
        v7[v5[9]] = 0;
        sub_25261B6E8(v7, a2, type metadata accessor for AccessoryControl.BinaryViewConfig);
        return (*(v67 + 56))(a2, 0, 1, v5);
      }

      v31 = v22;
      v32 = v22;
      v33 = v62;
      v34 = v64;
      v35 = v63;
      sub_252450A1C(v32, v62, v66, v64, v63);
      v36 = v59;
      v37 = v60;
      v38 = v61;
    }

    else
    {
      v73 = v17;
      v74 = v16;
      v75 = v19;
      v76 = v18;
      v77 = v20;
      if (v25 != 255)
      {
        v57 = v22;
        v26 = v20;
        v58 = v20;
        v27 = v62;
        v68 = v22;
        v69 = v62;
        v28 = v64;
        v70 = v66;
        v71 = v64;
        v72 = v25;
        v60 = v19;
        v61 = v16;
        v59 = v18;
        sub_252450A1C(v17, v16, v19, v18, v26);
        sub_252450A1C(v57, v27, v66, v28, v63);
        v29 = v60;
        v30 = v59;
        sub_252450A1C(v65, v61, v60, v59, v58);
        LODWORD(v66) = _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV05TitleG0O2eeoiySbAG_AGtFZ_0(&v73, &v68);
        sub_252376DBC(v68, v69, v70, v71, v72);
        sub_252376DBC(v73, v74, v75, v76, v77);
        sub_252376DA8(v65, v61, v29, v30, v58);
        if (v66)
        {
          goto LABEL_19;
        }

LABEL_14:
        v8 = *(v67 + 56);
        v9 = a2;
        v10 = 1;
        goto LABEL_15;
      }

      v39 = v17;
      v38 = v16;
      v37 = v19;
      v36 = v18;
      sub_252450A1C(v17, v16, v19, v18, v20);
      v31 = v22;
      v40 = v22;
      v33 = v62;
      v34 = v64;
      sub_252450A1C(v40, v62, v66, v64, 255);
      sub_252450A1C(v39, v38, v37, v36, v20);
      v41 = v39;
      v35 = v63;
      sub_252376DBC(v41, v38, v37, v36, v20);
    }

    sub_252376DA8(v65, v38, v37, v36, v20);
    sub_252376DA8(v31, v33, v66, v34, v35);
    goto LABEL_14;
  }

  sub_25261B680(v2, a2, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v8 = *(v67 + 56);
  v9 = a2;
  v10 = 0;
LABEL_15:

  return v8(v9, v10, 1, v5);
}

uint64_t sub_2526142C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (_s22HomeAccessoryControlUI0bC0V17IncrementalConfigV2eeoiySbAE_AEtFZ_0(v2, a1))
  {
    sub_25261B680(v2, a2, type metadata accessor for AccessoryControl.IncrementalConfig);
    v6 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 0;
  }

  else
  {
    v11 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
    if ((sub_25268EE80() & 1) != 0 && *(v3 + v11[8]) == *(a1 + v11[8]) && *(v3 + v11[9]) == *(a1 + v11[9]) && *(v3 + v11[10]) == *(a1 + v11[10]))
    {
      v12 = sub_25248DD00(*(a1 + v11[6]), *(v3 + v11[6]));
      sub_25261B680(v3, a2, type metadata accessor for AccessoryControl.IncrementalConfig);
      if ((v12 & 1) == 0)
      {
        v13 = v11[6];
        v14 = *(a2 + v11[5]);

        *(a2 + v13) = v14;
      }

      v7 = *(*(v11 - 1) + 56);
      v9 = a2;
      v10 = 0;
    }

    else
    {
      v7 = *(*(v11 - 1) + 56);
      v9 = a2;
      v10 = 1;
    }

    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

uint64_t sub_252614484@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 2);
  v9 = a1[6];
  v10 = a1[7];
  v11 = *(a1 + 4);
  v12 = a1[10];
  v31 = *v2;
  v32 = *(v2 + 2);
  v29 = *v2;
  v30 = *(v2 + 2);
  v28[0] = v4;
  v28[1] = v5;
  v28[2] = v6;
  v28[3] = v7;
  *&v28[4] = v8;
  v28[6] = v9;
  v28[7] = v10;
  *&v28[8] = v11;
  v28[10] = v12;
  *&v28[11] = *(a1 + 11);
  *&v28[16] = *(a1 + 2);
  if (_s22HomeAccessoryControlUI0bC0V17ColorPickerConfigV2eeoiySbAE_AEtFZ_0(&v29, v28))
  {
    v13 = v32;
    *a2 = v31;
    *(a2 + 16) = v13;
    return sub_252394224(&v31, &v29);
  }

  else
  {
    v15 = v31 & v4 & 1;
    v16 = BYTE2(v31) & v6 & 1;
    v17 = BYTE1(v31) & v5 & 1;
    v18 = v32;
    v19 = WORD2(v31);
    if (v8 <= WORD2(v31))
    {
      v20 = WORD2(v31);
    }

    else
    {
      v20 = v8;
    }

    if ((v9 & 1) == 0)
    {
      v19 = v20;
    }

    v21 = BYTE6(v31) & v9;
    if (BYTE6(v31))
    {
      v22 = v8;
    }

    else
    {
      v22 = v19;
    }

    v27[30] = BYTE6(v31) & v9;
    v23 = WORD4(v31);
    if (v11 >= WORD4(v31))
    {
      v24 = WORD4(v31);
    }

    else
    {
      v24 = v11;
    }

    if ((v12 & 1) == 0)
    {
      v23 = v24;
    }

    v25 = BYTE10(v31) & v12;
    v27[28] = BYTE10(v31) & v12;
    if (BYTE10(v31))
    {
      v26 = v11;
    }

    else
    {
      v26 = v23;
    }

    v28[0] = v31 & v4 & 1;
    v28[1] = BYTE1(v31) & v5 & 1;
    v28[2] = BYTE2(v31) & v6 & 1;
    *&v28[4] = v22;
    v28[6] = BYTE6(v31) & v9;
    *&v28[8] = v26;
    v28[10] = BYTE10(v31) & v12;
    *&v28[16] = v32;
    *a2 = *v28;
    *(a2 + 16) = v18;
    LOBYTE(v29) = v15;
    BYTE1(v29) = v17;
    BYTE2(v29) = v16;
    WORD2(v29) = v22;
    BYTE6(v29) = v21;
    WORD4(v29) = v26;
    BYTE10(v29) = v25;
    v30 = v18;
    sub_252394224(&v31, v27);
    sub_252394224(v28, v27);
    return sub_252394280(&v29);
  }
}

uint64_t sub_252614658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a3;
  v73 = sub_25268ED70();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v69 = (&v67 - v6);
  MEMORY[0x28223BE20](v7);
  v68 = (&v67 - v8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3870, &qword_2526A9EB8);
  MEMORY[0x28223BE20](v72);
  v71 = (&v67 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v74 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v25 = a1;
  sub_25237153C(a1, v18, &qword_27F4DB218, &unk_252696080);
  v76 = v20;
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    v27 = v77;
    v15 = v18;
    v28 = v19;
    goto LABEL_5;
  }

  sub_25261B6E8(v18, v24, type metadata accessor for AccessoryControl.IncrementalState);
  v27 = v77;
  sub_25237153C(v77, v15, &qword_27F4DB218, &unk_252696080);
  v28 = v19;
  if (v26(v15, 1, v19) != 1)
  {
    v77 = v19;
    v31 = v74;
    sub_25261B6E8(v15, v74, type metadata accessor for AccessoryControl.IncrementalState);
    v32 = (v71 + *(v72 + 48));
    v33 = v75;
    v34 = v24;
    v35 = v71;
    v36 = *(v75 + 16);
    v37 = v34;
    v38 = v73;
    v36(v71);
    (v36)(v32, v31, v38);
    v39 = *(v33 + 88);
    v40 = v39(v35, v38);
    v41 = v40;
    v42 = *MEMORY[0x277D15BB8];
    if (v40 == v42)
    {
      v43 = *(v33 + 96);
      v43(v35, v38);
      v44 = *v35;
      v45 = v39(v32, v38);
      if (v45 == v41)
      {
        v43(v32, v38);
        v46 = *v32;
        if (v44 > *v32)
        {
          v46 = v44;
        }

        v47 = v68;
        *v68 = v46;
        v48 = v75;
        (*(v75 + 104))(v47, v41, v38);
        v49 = v77;
        v50 = *(v37 + *(v77 + 20));
        sub_25261B5D8(v37, type metadata accessor for AccessoryControl.IncrementalState);
        if (v50)
        {
LABEL_14:
          v51 = 1;
          v52 = v74;
LABEL_32:
          sub_25261B5D8(v52, type metadata accessor for AccessoryControl.IncrementalState);
          v66 = v78;
          (*(v48 + 32))(v78, v47, v38);
LABEL_35:
          *(v66 + *(v49 + 20)) = v51;
          return (*(v76 + 56))(v66, 0, 1, v49);
        }

LABEL_31:
        v52 = v74;
        v51 = *(v74 + *(v49 + 20));
        goto LABEL_32;
      }

      if (v45 == *MEMORY[0x277D15BB0])
      {
        v58 = v37;
        v43(v32, v38);
        v54 = v32[1];
        v57 = v70;
        goto LABEL_20;
      }
    }

    else if (v40 == *MEMORY[0x277D15BB0])
    {
      v53 = *(v33 + 96);
      v38 = v73;
      v53(v35, v73);
      v55 = *v35;
      v54 = v35[1];
      v56 = v39(v32, v38);
      if (v56 == v42)
      {
        v53(v32, v38);
        v44 = *v32;
        v57 = v70;
        v58 = v37;
LABEL_20:
        if (v44 > v54)
        {
          v59 = v44;
        }

        else
        {
          v59 = v54;
        }

        *v57 = v59;
        v60 = v75;
        (*(v75 + 104))(v57, v42, v38);
        v49 = v77;
        v61 = *(v58 + *(v77 + 20));
        sub_25261B5D8(v58, type metadata accessor for AccessoryControl.IncrementalState);
        if (v61)
        {
          v51 = 1;
          v62 = v74;
        }

        else
        {
          v62 = v74;
          v51 = *(v74 + *(v49 + 20));
        }

        sub_25261B5D8(v62, type metadata accessor for AccessoryControl.IncrementalState);
        v66 = v78;
        (*(v60 + 32))(v78, v57, v38);
        goto LABEL_35;
      }

      if (v56 == v41)
      {
        v53(v32, v38);
        v63 = *v32;
        v64 = v32[1];
        if (v55 > *v32)
        {
          v63 = v55;
        }

        if (v54 > v64)
        {
          v64 = v54;
        }

        v47 = v69;
        *v69 = v63;
        v47[1] = v64;
        v48 = v75;
        (*(v75 + 104))(v47, v41, v38);
        v49 = v77;
        v65 = *(v37 + *(v77 + 20));
        sub_25261B5D8(v37, type metadata accessor for AccessoryControl.IncrementalState);
        if (v65)
        {
          goto LABEL_14;
        }

        goto LABEL_31;
      }
    }

    result = sub_2526933A0();
    __break(1u);
    return result;
  }

  sub_25261B5D8(v24, type metadata accessor for AccessoryControl.IncrementalState);
LABEL_5:
  sub_252372288(v15, &qword_27F4DB218, &unk_252696080);
  sub_25237153C(v25, v12, &qword_27F4DB218, &unk_252696080);
  if (v26(v12, 1, v28) == 1)
  {
    sub_25237153C(v27, v78, &qword_27F4DB218, &unk_252696080);
    result = (v26)(v12, 1, v28);
    if (result != 1)
    {
      return sub_252372288(v12, &qword_27F4DB218, &unk_252696080);
    }
  }

  else
  {
    v30 = v78;
    sub_25261B6E8(v12, v78, type metadata accessor for AccessoryControl.IncrementalState);
    return (*(v76 + 56))(v30, 0, 1, v28);
  }

  return result;
}

uint64_t sub_252614E78@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, char *a3@<X8>)
{
  v169 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v5 - 8);
  v154 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v156 = &v149 - v8;
  MEMORY[0x28223BE20](v9);
  v155 = &v149 - v10;
  v11 = type metadata accessor for AccessoryControl.ColorState(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v161 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v160);
  v151 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v149 - v16;
  MEMORY[0x28223BE20](v17);
  v153 = &v149 - v18;
  MEMORY[0x28223BE20](v19);
  v158 = &v149 - v20;
  MEMORY[0x28223BE20](v21);
  v166 = &v149 - v22;
  MEMORY[0x28223BE20](v23);
  v164 = &v149 - v24;
  MEMORY[0x28223BE20](v25);
  v162 = &v149 - v26;
  MEMORY[0x28223BE20](v27);
  v152 = &v149 - v28;
  MEMORY[0x28223BE20](v29);
  v159 = &v149 - v30;
  MEMORY[0x28223BE20](v31);
  v157 = &v149 - v32;
  MEMORY[0x28223BE20](v33);
  v165 = &v149 - v34;
  MEMORY[0x28223BE20](v35);
  v163 = &v149 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v149 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v149 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B8, &qword_2526960F0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v149 - v44;
  v47 = *(v46 + 56);
  sub_25237153C(a1, &v149 - v44, &qword_27F4DB2A0, &qword_25269E4A0);
  v168 = a2;
  sub_25237153C(a2, &v45[v47], &qword_27F4DB2A0, &qword_25269E4A0);
  v167 = v12;
  v48 = *(v12 + 48);
  v170 = v12 + 48;
  if (v48(v45, 1, v11) == 1)
  {
    if (v48(&v45[v47], 1, v11) == 1)
    {
      sub_252372288(v45, &qword_27F4DB2A0, &qword_25269E4A0);
      v49 = a1;
      return sub_25237153C(v49, v169, &qword_27F4DB2A0, &qword_25269E4A0);
    }

    goto LABEL_6;
  }

  sub_25237153C(v45, v42, &qword_27F4DB2A0, &qword_25269E4A0);
  if (v48(&v45[v47], 1, v11) == 1)
  {
    sub_25261B5D8(v42, type metadata accessor for AccessoryControl.ColorState);
LABEL_6:
    sub_252372288(v45, &qword_27F4DB7B8, &qword_2526960F0);
    v49 = a1;
    goto LABEL_7;
  }

  v56 = &v45[v47];
  v57 = v161;
  sub_25261B6E8(v56, v161, type metadata accessor for AccessoryControl.ColorState);
  v58 = _s22HomeAccessoryControlUI0bC0V10ColorStateV2eeoiySbAE_AEtFZ_0(v42, v57);
  sub_25261B5D8(v57, type metadata accessor for AccessoryControl.ColorState);
  sub_25261B5D8(v42, type metadata accessor for AccessoryControl.ColorState);
  sub_252372288(v45, &qword_27F4DB2A0, &qword_25269E4A0);
  v49 = a1;
  if (v58)
  {
    return sub_25237153C(v49, v169, &qword_27F4DB2A0, &qword_25269E4A0);
  }

LABEL_7:
  v50 = v168;
  if (!sub_25261B1CC(v168, v49))
  {
    v53 = v162;
    sub_25237153C(v49, v162, &qword_27F4DB2A0, &qword_25269E4A0);
    if (v48(v53, 1, v11) == 1)
    {
      sub_252372288(v53, &qword_27F4DB2A0, &qword_25269E4A0);
      v54 = 1;
      v55 = 0.0;
    }

    else
    {
      v63 = v53 + *(v11 + 20);
      v55 = *v63;
      v54 = *(v63 + 8);
      sub_25261B5D8(v53, type metadata accessor for AccessoryControl.ColorState);
    }

    v64 = v166;
    v65 = v164;
    sub_25237153C(v50, v164, &qword_27F4DB2A0, &qword_25269E4A0);
    if (v48(v65, 1, v11) == 1)
    {
      sub_252372288(v65, &qword_27F4DB2A0, &qword_25269E4A0);
      if (v54)
      {
LABEL_21:
        if (qword_27F4DABD0 != -1)
        {
          swift_once();
        }

        v66 = sub_2526905A0();
        __swift_project_value_buffer(v66, qword_27F4E4B18);
        sub_25237153C(v49, v64, &qword_27F4DB2A0, &qword_25269E4A0);
        v67 = v158;
        sub_25237153C(v50, v158, &qword_27F4DB2A0, &qword_25269E4A0);
        v68 = sub_252690580();
        v69 = sub_252692F10();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          LODWORD(v165) = v69;
          v71 = v70;
          v166 = swift_slowAlloc();
          v171[0] = v166;
          *v71 = 136446466;
          v72 = v159;
          sub_25237153C(v64, v159, &qword_27F4DB2A0, &qword_25269E4A0);
          v168 = v48;
          v73 = sub_252692C20();
          v74 = v64;
          v75 = v73;
          v77 = v76;
          sub_252372288(v74, &qword_27F4DB2A0, &qword_25269E4A0);
          v78 = sub_2525BDA90(v75, v77, v171);

          *(v71 + 4) = v78;
          *(v71 + 12) = 2082;
          v79 = v158;
          sub_25237153C(v158, v72, &qword_27F4DB2A0, &qword_25269E4A0);
          v48 = v168;
          v80 = sub_252692C20();
          v82 = v81;
          sub_252372288(v79, &qword_27F4DB2A0, &qword_25269E4A0);
          v83 = sub_2525BDA90(v80, v82, v171);

          *(v71 + 14) = v83;
          _os_log_impl(&dword_252309000, v68, v165, "ColorState.merge: Colors differ, but brightness is the same. state1:%{public}s state2:%{public}s", v71, 0x16u);
          v84 = v166;
          swift_arrayDestroy();
          MEMORY[0x2530A5A40](v84, -1, -1);
          MEMORY[0x2530A5A40](v71, -1, -1);
        }

        else
        {

          sub_252372288(v67, &qword_27F4DB2A0, &qword_25269E4A0);
          sub_252372288(v64, &qword_27F4DB2A0, &qword_25269E4A0);
        }

        v91 = v156;
        v92 = v153;
        v93 = sub_25268ED20();
        v94 = *(*(v93 - 8) + 56);
        v94(v91, 1, 1, v93);
        sub_25237153C(v49, v92, &qword_27F4DB2A0, &qword_25269E4A0);
        if (v48(v92, 1, v11) == 1)
        {
          sub_252372288(v92, &qword_27F4DB2A0, &qword_25269E4A0);
          v95 = 0;
          v96 = 1;
        }

        else
        {
          v135 = v92 + *(v11 + 20);
          v95 = *v135;
          v96 = *(v135 + 8);
          sub_25261B5D8(v92, type metadata accessor for AccessoryControl.ColorState);
        }

        v136 = v169;
        v94(v169, 1, 1, v93);
        v137 = v136 + *(v11 + 20);
        sub_2523F62D8(v91, v136);
        *v137 = v95;
        *(v137 + 8) = v96;
        return (*(v167 + 56))(v136, 0, 1, v11);
      }
    }

    else
    {
      v88 = v65 + *(v11 + 20);
      v89 = *v88;
      v90 = *(v88 + 8);
      sub_25261B5D8(v65, type metadata accessor for AccessoryControl.ColorState);
      if (v54)
      {
        if (v90)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v55 == v89)
        {
          v117 = v90;
        }

        else
        {
          v117 = 1;
        }

        if ((v117 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v118 = sub_2526905A0();
    __swift_project_value_buffer(v118, qword_27F4E4B18);
    v119 = v150;
    sub_25237153C(v49, v150, &qword_27F4DB2A0, &qword_25269E4A0);
    v120 = v151;
    sub_25237153C(v50, v151, &qword_27F4DB2A0, &qword_25269E4A0);
    v121 = sub_252690580();
    v122 = sub_252692F10();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      LODWORD(v168) = v122;
      v124 = v123;
      v170 = swift_slowAlloc();
      v171[0] = v170;
      *v124 = 136446466;
      v125 = v159;
      sub_25237153C(v119, v159, &qword_27F4DB2A0, &qword_25269E4A0);
      v126 = sub_252692C20();
      v128 = v127;
      sub_252372288(v119, &qword_27F4DB2A0, &qword_25269E4A0);
      v129 = sub_2525BDA90(v126, v128, v171);

      *(v124 + 4) = v129;
      *(v124 + 12) = 2082;
      sub_25237153C(v120, v125, &qword_27F4DB2A0, &qword_25269E4A0);
      v130 = sub_252692C20();
      v132 = v131;
      sub_252372288(v120, &qword_27F4DB2A0, &qword_25269E4A0);
      v133 = sub_2525BDA90(v130, v132, v171);

      *(v124 + 14) = v133;
      _os_log_impl(&dword_252309000, v121, v168, "ColorState.merge: States are not equivalent. state1:%{public}s state2:%{public}s", v124, 0x16u);
      v134 = v170;
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v134, -1, -1);
      MEMORY[0x2530A5A40](v124, -1, -1);
    }

    else
    {

      sub_252372288(v120, &qword_27F4DB2A0, &qword_25269E4A0);
      sub_252372288(v119, &qword_27F4DB2A0, &qword_25269E4A0);
    }

    v141 = sub_25268ED20();
    v142 = *(*(v141 - 8) + 56);
    v143 = v154;
    v142(v154, 1, 1, v141);
    v144 = v169;
    v142(v169, 1, 1, v141);
    v145 = v144 + *(v11 + 20);
    sub_2523F62D8(v143, v144);
    *v145 = 0;
    *(v145 + 8) = 1;
    return (*(v167 + 56))(v144, 0, 1, v11);
  }

  sub_25237153C(v49, v39, &qword_27F4DB2A0, &qword_25269E4A0);
  if (v48(v39, 1, v11) == 1)
  {
    sub_252372288(v39, &qword_27F4DB2A0, &qword_25269E4A0);
    v51 = 1;
    v52 = 0.0;
  }

  else
  {
    v59 = &v39[*(v11 + 20)];
    v52 = *v59;
    v51 = v59[8];
    sub_25261B5D8(v39, type metadata accessor for AccessoryControl.ColorState);
  }

  v60 = v165;
  v61 = v163;
  sub_25237153C(v50, v163, &qword_27F4DB2A0, &qword_25269E4A0);
  if (v48(v61, 1, v11) == 1)
  {
    sub_252372288(v61, &qword_27F4DB2A0, &qword_25269E4A0);
    if (v51)
    {
      return sub_25237153C(v49, v169, &qword_27F4DB2A0, &qword_25269E4A0);
    }
  }

  else
  {
    v85 = v61 + *(v11 + 20);
    v86 = *v85;
    v87 = *(v85 + 8);
    sub_25261B5D8(v61, type metadata accessor for AccessoryControl.ColorState);
    if (v51)
    {
      if (v87)
      {
        return sub_25237153C(v49, v169, &qword_27F4DB2A0, &qword_25269E4A0);
      }
    }

    else
    {
      if (v52 == v86)
      {
        v97 = v87;
      }

      else
      {
        v97 = 1;
      }

      if ((v97 & 1) == 0)
      {
        return sub_25237153C(v49, v169, &qword_27F4DB2A0, &qword_25269E4A0);
      }
    }
  }

  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v98 = sub_2526905A0();
  __swift_project_value_buffer(v98, qword_27F4E4B18);
  sub_25237153C(v49, v60, &qword_27F4DB2A0, &qword_25269E4A0);
  v99 = v157;
  sub_25237153C(v50, v157, &qword_27F4DB2A0, &qword_25269E4A0);
  v100 = sub_252690580();
  v101 = sub_252692F10();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    LODWORD(v165) = v101;
    v103 = v102;
    v166 = swift_slowAlloc();
    v171[0] = v166;
    *v103 = 136446466;
    v104 = v159;
    sub_25237153C(v60, v159, &qword_27F4DB2A0, &qword_25269E4A0);
    v168 = v48;
    v105 = sub_252692C20();
    v106 = v60;
    v107 = v105;
    v109 = v108;
    sub_252372288(v106, &qword_27F4DB2A0, &qword_25269E4A0);
    v110 = sub_2525BDA90(v107, v109, v171);

    *(v103 + 4) = v110;
    *(v103 + 12) = 2082;
    v111 = v157;
    sub_25237153C(v157, v104, &qword_27F4DB2A0, &qword_25269E4A0);
    v48 = v168;
    v112 = sub_252692C20();
    v114 = v113;
    sub_252372288(v111, &qword_27F4DB2A0, &qword_25269E4A0);
    v115 = sub_2525BDA90(v112, v114, v171);

    *(v103 + 14) = v115;
    _os_log_impl(&dword_252309000, v100, v165, "ColorState.merge: Colors match, but brightness differ. state1:%{public}s state2:%{public}s", v103, 0x16u);
    v116 = v166;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v116, -1, -1);
    MEMORY[0x2530A5A40](v103, -1, -1);
  }

  else
  {

    sub_252372288(v99, &qword_27F4DB2A0, &qword_25269E4A0);
    sub_252372288(v60, &qword_27F4DB2A0, &qword_25269E4A0);
  }

  v138 = v152;
  sub_25237153C(v49, v152, &qword_27F4DB2A0, &qword_25269E4A0);
  if (v48(v138, 1, v11) == 1)
  {
    sub_252372288(v138, &qword_27F4DB2A0, &qword_25269E4A0);
    v139 = sub_25268ED20();
    v140 = v155;
    (*(*(v139 - 8) + 56))(v155, 1, 1, v139);
  }

  else
  {
    v140 = v155;
    sub_25237153C(v138, v155, &qword_27F4DB2A8, &unk_2526960B0);
    sub_25261B5D8(v138, type metadata accessor for AccessoryControl.ColorState);
  }

  v146 = sub_25268ED20();
  v147 = v169;
  (*(*(v146 - 8) + 56))(v169, 1, 1, v146);
  v148 = v147 + *(v11 + 20);
  sub_2523F62D8(v140, v147);
  *v148 = 0;
  *(v148 + 8) = 1;
  return (*(v167 + 56))(v147, 0, 1, v11);
}

uint64_t sub_25261615C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + ((v11 << 9) | (8 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_25261624C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_2524130A8(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_252616468(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB840, &qword_2526A8910);
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v77 = type metadata accessor for Device.Control(0);
  v10 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v73 - v13;
  MEMORY[0x28223BE20](v14);
  v75 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v19);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v73 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = (&v73 - v25);
  sub_25261B680(a1, &v73 - v25, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25261B6E8(v26, v18, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
    v28 = *(v10 + 80);
    v81 = v19;
    v29 = v18;
    v30 = a1;
    v31 = a2;
    v32 = v7;
    v33 = v9;
    v34 = v10;
    v35 = (v28 + 32) & ~v28;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_252694E90;
    v36 = v27 + v35;
    v10 = v34;
    v9 = v33;
    v7 = v32;
    a2 = v31;
    a1 = v30;
    v18 = v29;
    sub_25261B6E8(v29, v36, type metadata accessor for Device.Control);
  }

  else
  {
    v27 = *v26;
  }

  sub_25261B680(a2, v23, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v79 = v10;
  if (EnumCaseMultiPayload > 1)
  {
    sub_25261B6E8(v23, v18, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
    v39 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_252694E90;
    sub_25261B6E8(v18, v38 + v39, type metadata accessor for Device.Control);
  }

  else
  {
    v38 = *v23;
  }

  v40 = sub_252616D58(v27, v38);

  v41 = v40[2];
  v42 = type metadata accessor for Device.ControlGroup(0);
  v43 = v42;
  if (!v41)
  {
    (*(*(v42 - 8) + 56))(v82, 1, 1, v42);

    return;
  }

  v44 = *(v42 + 20);
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (!v46)
  {
    goto LABEL_13;
  }

  v49 = *v45;
  v50 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v50 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {

    v74 = v49;
    v81 = v51;
  }

  else
  {
LABEL_13:
    v74 = *v47;
    v81 = v48;
  }

  v52 = *(v7 + 48);
  sub_25261B680(a1, v9, type metadata accessor for Device.ControlGroup.LayoutType);
  sub_25261B680(a2, &v9[v52], type metadata accessor for Device.ControlGroup.LayoutType);
  v53 = swift_getEnumCaseMultiPayload();
  if (v53)
  {
    if (v53 == 1)
    {
      v54 = swift_getEnumCaseMultiPayload();
      if (v41 != 1 && v54 == 1)
      {
        v55 = v82;
        *v82 = v40;
LABEL_31:
        swift_storeEnumTagMultiPayload();
        v62 = (v55 + *(v43 + 20));
        v63 = (v55 + *(v43 + 24));
        v64 = v81;
        *v62 = v74;
        v62[1] = v64;
        *v63 = 0;
        v63[1] = 0;
        (*(*(v43 - 8) + 56))(v55, 0, 1, v43);
        sub_25261B5D8(&v9[v52], type metadata accessor for Device.ControlGroup.LayoutType);
        v65 = v9;
LABEL_32:
        sub_25261B5D8(v65, type metadata accessor for Device.ControlGroup.LayoutType);
        return;
      }
    }

    else
    {
      v57 = v80;
      sub_25261B680(v9, v80, type metadata accessor for Device.ControlGroup.LayoutType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {

        v58 = v75;
        sub_25261B6E8(v57, v75, type metadata accessor for Device.Control);
        v59 = v76;
        sub_25261B6E8(&v9[v52], v76, type metadata accessor for Device.Control);
        v60 = v78;
        sub_2526171D4(v58, v59, v78);
        sub_25261B5D8(v59, type metadata accessor for Device.Control);
        sub_25261B5D8(v58, type metadata accessor for Device.Control);
        if ((*(v79 + 48))(v60, 1, v77) == 1)
        {

          sub_252372288(v60, &qword_27F4E2B78, &qword_2526A9000);
          (*(*(v43 - 8) + 56))(v82, 1, 1, v43);
        }

        else
        {
          v66 = v60;
          v67 = v73;
          sub_25261B6E8(v66, v73, type metadata accessor for Device.Control);
          v68 = v67;
          v69 = v82;
          sub_25261B6E8(v68, v82, type metadata accessor for Device.Control);
          swift_storeEnumTagMultiPayload();
          v70 = (v69 + *(v43 + 20));
          v71 = (v69 + *(v43 + 24));
          v72 = v81;
          *v70 = v74;
          v70[1] = v72;
          *v71 = 0;
          v71[1] = 0;
          (*(*(v43 - 8) + 56))(v69, 0, 1, v43);
        }

        v65 = v9;
        goto LABEL_32;
      }

      sub_25261B5D8(v57, type metadata accessor for Device.Control);
    }
  }

  else
  {
    v56 = swift_getEnumCaseMultiPayload();
    if (v41 != 1 && !v56)
    {
      goto LABEL_30;
    }
  }

  v61 = v40[2];
  if (v61)
  {
    if (v61 == 1)
    {
      sub_25261B680(v40 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v18, type metadata accessor for Device.Control);

      v55 = v82;
      sub_25261B6E8(v18, v82, type metadata accessor for Device.Control);
      goto LABEL_31;
    }

LABEL_30:
    v55 = v82;
    *v82 = v40;
    goto LABEL_31;
  }

  (*(*(v43 - 8) + 56))(v82, 1, 1, v43);
  sub_252372288(v9, &qword_27F4DB840, &qword_2526A8910);
}

void *sub_252616D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - v10;
  MEMORY[0x28223BE20](v11);
  v36 = &v34 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v43 = a2;
  v41 = *(a1 + 16);
  if (v41)
  {
    v39 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v40 = a1 + v39;
    v20 = *(v17 + 72);
    v21 = (v17 + 48);

    v22 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      result = sub_25261B680(v40 + v20 * v22, v19, type metadata accessor for Device.Control);
      v25 = v43;
      v26 = *(v43 + 16);
      if (v26)
      {
        break;
      }

LABEL_5:
      ++v22;
      sub_25261B5D8(v19, type metadata accessor for Device.Control);
      if (v22 == v41)
      {
        v33 = v38;
        goto LABEL_18;
      }
    }

    v42 = v22;
    v27 = 0;
    v28 = v43 + v39;
    while (v27 < *(v25 + 16))
    {
      sub_25261B680(v28, v15, type metadata accessor for Device.Control);
      sub_2526171D4(v19, v15, v6);
      if ((*v21)(v6, 1, v7) != 1)
      {
        v29 = v36;
        sub_25261B6E8(v6, v36, type metadata accessor for Device.Control);
        sub_25261B680(v29, v37, type metadata accessor for Device.Control);
        v30 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_252369B34(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        if (v32 >= v31 >> 1)
        {
          v30 = sub_252369B34((v31 > 1), v32 + 1, 1, v30);
        }

        v30[2] = v32 + 1;
        v38 = v30;
        sub_25261B6E8(v37, v30 + v39 + v32 * v20, type metadata accessor for Device.Control);
        v23 = v35;
        sub_252613C3C(v27, sub_25261EF9C, type metadata accessor for Device.Control, type metadata accessor for Device.Control, v35);
        sub_25261B5D8(v23, type metadata accessor for Device.Control);
        sub_25261B5D8(v36, type metadata accessor for Device.Control);
        sub_25261B5D8(v15, type metadata accessor for Device.Control);
LABEL_4:
        v22 = v42;
        goto LABEL_5;
      }

      ++v27;
      sub_25261B5D8(v15, type metadata accessor for Device.Control);
      result = sub_252372288(v6, &qword_27F4E2B78, &qword_2526A9000);
      v28 += v20;
      if (v26 == v27)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
LABEL_18:

    return v33;
  }

  return result;
}

uint64_t sub_2526171D4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v86 = a3;
  v4 = type metadata accessor for Device.Control(0);
  v87 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v85 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268DA10();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3868, &qword_2526A9EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = &v75 - v9;
  v10 = type metadata accessor for Device.Control.Kind(0);
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3568, &qword_2526A9150);
  MEMORY[0x28223BE20](v76);
  v77 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v75 - v14);
  v16 = type metadata accessor for Device.Control.Source(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  v26 = *(v4 + 24);
  v27 = a1;
  sub_252617A88(&a1[v26], &v88[v26], v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_252372288(v15, &qword_27F4E3070, &qword_2526A8520);
    return (*(v87 + 56))(v86, 1, 1, v4);
  }

  v75 = v4;
  sub_25261B6E8(v15, v25, type metadata accessor for Device.Control.Source);
  sub_25261B680(&a1[v26], v22, type metadata accessor for Device.Control.Source);
  v29 = a1;
  if (swift_getEnumCaseMultiPayload() == 5 || (sub_25261B5D8(v22, type metadata accessor for Device.Control.Source), sub_25261B680(&v88[v26], v19, type metadata accessor for Device.Control.Source), swift_getEnumCaseMultiPayload() == 5))
  {
    v30 = swift_projectBox();
    v31 = v77;
    sub_25237153C(v30, v77, &qword_27F4E3568, &qword_2526A9150);
    sub_25261B5D8(v31 + *(v76 + 48), type metadata accessor for Device.Control.Source);
    sub_25261B5D8(v31, type metadata accessor for Device.Control.Source);

    v32 = 1;
  }

  else
  {
    sub_25261B5D8(v19, type metadata accessor for Device.Control.Source);
    v32 = 0;
  }

  v33 = v85;
  v34 = v80;
  v35 = v75;
  v36 = v88;
  sub_252618FBC(&v27[v75[5]], &v88[v75[5]], v32, v80);
  if ((*(v78 + 48))(v34, 1, v79) == 1)
  {
    sub_25261B5D8(v25, type metadata accessor for Device.Control.Source);
    sub_252372288(v34, &qword_27F4E3868, &qword_2526A9EB0);
    return (*(v87 + 56))(v86, 1, 1, v35);
  }

  v37 = v81;
  sub_25261B6E8(v34, v81, type metadata accessor for Device.Control.Kind);
  v38 = sub_25268D9F0();
  v39 = sub_25268D9F0();
  v40 = v82;
  v41 = *(v83 + 16);
  if (v38 >= v39)
  {
    v42 = v36;
  }

  else
  {
    v42 = v29;
  }

  v43 = v84;
  v41(v82, v42, v84);
  v41(v33, v40, v43);
  sub_25261B680(v37, v33 + v35[5], type metadata accessor for Device.Control.Kind);
  v44 = v33 + v35[6];
  v80 = v25;
  sub_25261B680(v25, v44, type metadata accessor for Device.Control.Source);
  v45 = v35[10];
  *(v33 + v45) = 16;
  v46 = v35[7];
  *(v33 + v46) = 0;
  v47 = v33 + v35[9];
  *v47 = 1028;
  *(v33 + v45) = 16;
  v48 = v35[8];
  v85 = v29;
  v49 = *&v29[v48 + 8];
  if (v49)
  {
    v50 = *&v29[v48];
    v51 = *&v36[v48 + 8];
    if (v51)
    {
      v52 = *&v36[v48];
      v89 = v50;
      v90 = v49;

      MEMORY[0x2530A4800](43, 0xE100000000000000);
      MEMORY[0x2530A4800](v52, v51);
      v50 = v89;
      v49 = v90;
      v53 = v75;
      v48 = v75[8];
      v36 = v88;
      goto LABEL_18;
    }

    v36 = v88;
  }

  else
  {
    v50 = *&v36[v48];
    v49 = *&v36[v48 + 8];
  }

  v53 = v75;
LABEL_18:
  v54 = (v33 + v48);
  (*(v83 + 8))(v82, v84);
  sub_25261B5D8(v81, type metadata accessor for Device.Control.Kind);
  sub_25261B5D8(v80, type metadata accessor for Device.Control.Source);
  *v54 = v50;
  v54[1] = v49;
  v55 = v53[9];
  v56 = v85;
  v57 = v85[v55];
  v58 = v85[v55 + 1];
  v59 = &v36[v55];
  v60 = *v59;
  v61 = v59[1];
  if (v57 <= v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v57;
  }

  if (v60 == 4)
  {
    v62 = v57;
  }

  if (v57 == 4)
  {
    v63 = v60;
  }

  else
  {
    v63 = v62;
  }

  if (v58 >= v61)
  {
    v64 = v61;
  }

  else
  {
    v64 = v58;
  }

  if (v61 == 4)
  {
    v64 = v58;
  }

  if (v58 != 4)
  {
    LOBYTE(v61) = v64;
  }

  *v47 = v63;
  *(v47 + 1) = v61;
  v65 = v53[7];
  v66 = v53;
  if (v56[v65] == 1)
  {
    v67 = v36[v65];
  }

  else
  {
    v67 = 0;
  }

  v69 = v86;
  v68 = v87;
  *(v33 + v46) = v67;
  v70 = v66[10];
  v71 = v56[v70];
  v72 = v36[v70];
  if (v71 != 16)
  {
    if (v71 == v72)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v72 != 16)
  {
LABEL_38:
    LOBYTE(v71) = 16;
  }

LABEL_39:
  *(v33 + v45) = v71;
  v73 = v66[11];
  if (v56[v73])
  {
    v74 = 1;
  }

  else
  {
    v74 = v36[v73];
  }

  *(v33 + v73) = v74;
  sub_25261B680(v33, v69, type metadata accessor for Device.Control);
  (*(v68 + 56))(v69, 0, 1, v66);
  return sub_25261B5D8(v33, type metadata accessor for Device.Control);
}

uint64_t sub_252617A88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v203 = a3;
  v204 = a2;
  v202 = a1;
  v3 = sub_25268E530();
  v198 = *(v3 - 8);
  v199 = v3;
  MEMORY[0x28223BE20](v3);
  v192 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v193 = &v175 - v6;
  v7 = sub_25268F4D0();
  v194 = *(v7 - 8);
  v195 = v7;
  MEMORY[0x28223BE20](v7);
  v190 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v191 = &v175 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3070, &qword_2526A8520);
  MEMORY[0x28223BE20](v11 - 8);
  v177 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v184 = (&v175 - v14);
  MEMORY[0x28223BE20](v15);
  v180 = (&v175 - v16);
  MEMORY[0x28223BE20](v17);
  v187 = (&v175 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E37B0, &qword_2526A9B90);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = (&v175 - v21);
  v23 = type metadata accessor for Device.Control.Source(0);
  v201 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v175 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v178 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v181 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v200 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v182 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v183 = &v175 - v34;
  MEMORY[0x28223BE20](v35);
  v188 = (&v175 - v36);
  MEMORY[0x28223BE20](v37);
  v189 = &v175 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = (&v175 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = &v175 - v43;
  MEMORY[0x28223BE20](v45);
  v176 = &v175 - v46;
  MEMORY[0x28223BE20](v47);
  v179 = &v175 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v175 - v50;
  MEMORY[0x28223BE20](v52);
  v185 = &v175 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v175 - v55;
  MEMORY[0x28223BE20](v57);
  v186 = &v175 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = (&v175 - v60);
  MEMORY[0x28223BE20](v62);
  v64 = (&v175 - v63);
  MEMORY[0x28223BE20](v65);
  v197 = &v175 - v66;
  MEMORY[0x28223BE20](v67);
  v196 = &v175 - v68;
  v69 = v22 + *(v20 + 56);
  sub_25261B680(v202, v22, type metadata accessor for Device.Control.Source);
  v70 = v204;
  v204 = v69;
  v71 = v22;
  sub_25261B680(v70, v69, type metadata accessor for Device.Control.Source);
  v205 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v202 = v22;
      sub_25261B680(v22, v41, type metadata accessor for Device.Control.Source);
      v94 = *v41;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090, &unk_2526A9160);
      v96 = *(v95 + 48);
      v73 = v204;
      v74 = v205;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v198 + 8))(v41 + v96, v199);

        v71 = v202;
LABEL_20:
        v102 = swift_getEnumCaseMultiPayload();
        v103 = v200;
        if (v102 != 4)
        {
          if (v102 != 7)
          {
            if (v102 == 5)
            {
              sub_25261B680(v73, v189, type metadata accessor for Device.Control.Source);
              v101 = swift_projectBox();
              v100 = v71;
              goto LABEL_24;
            }

LABEL_34:
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              v131 = v203;
            }

            else
            {
              v132 = swift_getEnumCaseMultiPayload();
              v131 = v203;
              if (v132 != 7)
              {
                sub_252372288(v71, &qword_27F4E37B0, &qword_2526A9B90);
                return (*(v201 + 56))(v131, 1, 1, v74);
              }

              v73 = v71;
            }

            sub_25261B5D8(v73, type metadata accessor for Device.Control.Source);
            return (*(v201 + 56))(v131, 1, 1, v74);
          }

          if (swift_getEnumCaseMultiPayload() != 7)
          {
            goto LABEL_34;
          }

          v106 = v203;
          swift_storeEnumTagMultiPayload();
          (*(v201 + 56))(v106, 0, 1, v74);
LABEL_57:
          v78 = v73;
          return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
        }

        v107 = v188;
        sub_25261B680(v73, v188, type metadata accessor for Device.Control.Source);
        v108 = *v107;
        if (swift_getEnumCaseMultiPayload() != 4)
        {

          goto LABEL_34;
        }

        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3528, &qword_2526A9038);
        v110 = swift_projectBox();
        v111 = v71;
        v112 = v110;
        v202 = *v111;
        v113 = swift_projectBox();
        v114 = *(v109 + 48);
        v115 = *(v109 + 64);
        v199 = *(v113 + v115);
        v116 = *(v112 + v115);
        v197 = v109;
        v198 = v116;
        v117 = v183;
        sub_25261B680(v113, v183, type metadata accessor for Device.Control.Source);
        v118 = v182;
        sub_25261B680(v112, v182, type metadata accessor for Device.Control.Source);
        sub_25261B680(v113 + v114, v103, type metadata accessor for Device.Control.Source);
        v119 = v112 + v114;
        v120 = v205;
        v121 = v181;
        sub_25261B680(v119, v181, type metadata accessor for Device.Control.Source);
        v122 = v184;
        sub_252617A88(v117, v118, v184);
        v123 = *(v201 + 48);
        if (v123(v122, 1, v120) == 1)
        {
          sub_25261B5D8(v121, type metadata accessor for Device.Control.Source);
          sub_25261B5D8(v103, type metadata accessor for Device.Control.Source);
          sub_25261B5D8(v118, type metadata accessor for Device.Control.Source);
          v124 = v120;
        }

        else
        {
          v196 = v108;
          v154 = v178;
          sub_25261B6E8(v122, v178, type metadata accessor for Device.Control.Source);
          v122 = v177;
          sub_252617A88(v103, v121, v177);
          sub_25261B5D8(v121, type metadata accessor for Device.Control.Source);
          sub_25261B5D8(v103, type metadata accessor for Device.Control.Source);
          sub_25261B5D8(v118, type metadata accessor for Device.Control.Source);
          sub_25261B5D8(v117, type metadata accessor for Device.Control.Source);
          v124 = v120;
          if (v123(v122, 1, v120) != 1)
          {
            v165 = v122;
            v166 = v175;
            sub_25261B6E8(v165, v175, type metadata accessor for Device.Control.Source);
            v167 = v199;
            if (v199 != v198)
            {
              v168 = v197;
              v169 = swift_allocBox();
              v171 = v170;
              v172 = *(v168 + 48);
              v173 = *(v168 + 64);
              sub_25261B6E8(v178, v170, type metadata accessor for Device.Control.Source);
              sub_25261B6E8(v166, v171 + v172, type metadata accessor for Device.Control.Source);
              *(v171 + v173) = v167;
              v174 = v203;
              *v203 = v169;
              swift_storeEnumTagMultiPayload();
              (*(v201 + 56))(v174, 0, 1, v124);

              v78 = v204;
              return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
            }

            sub_25261B5D8(v166, type metadata accessor for Device.Control.Source);
            sub_25261B5D8(v178, type metadata accessor for Device.Control.Source);
            (*(v201 + 56))(v203, 1, 1, v120);
            goto LABEL_51;
          }

          v117 = v154;
        }

        sub_25261B5D8(v117, type metadata accessor for Device.Control.Source);
        sub_252372288(v122, &qword_27F4E3070, &qword_2526A8520);
        (*(v201 + 56))(v203, 1, 1, v124);
LABEL_51:

        v78 = v204;
        return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
      }

      v200 = *v73;
      v97 = v199;
      v98 = v73;
      v99 = *(v198 + 32);
      v99(v193, v41 + v96, v199);
      v99(v192, v98 + v96, v97);
      sub_25261B638(&qword_27F4DADD8, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
      sub_252692D40();
      sub_252692D40();
      if (v208 == v206 && v209 == v207)
      {
      }

      else
      {
        v134 = sub_2526933B0();

        if ((v134 & 1) == 0)
        {

          v155 = v199;
          v156 = *(v198 + 8);
          v156(v192, v199);
          v156(v193, v155);
          (*(v201 + 56))(v203, 1, 1, v74);
          goto LABEL_53;
        }
      }

      v135 = *(v95 + 48);
      sub_25261624C(v200, v94);
      v137 = v136;
      v138 = v199;
      (*(v198 + 8))(v192, v199);
      v139 = v203;
      *v203 = v137;
      v99(v139 + v135, v193, v138);
      swift_storeEnumTagMultiPayload();
      (*(v201 + 56))(v139, 0, 1, v74);
    }

    else
    {
      v73 = v204;
      v74 = v205;
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_20;
      }

      sub_25261B680(v22, v61, type metadata accessor for Device.Control.Source);
      v79 = *v61;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3568, &qword_2526A9150);
      v81 = swift_projectBox();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v100 = v73;
        v73 = v71;
        v101 = v81;
LABEL_24:
        v104 = v196;
        sub_25261B680(v101, v196, type metadata accessor for Device.Control.Source);
        v105 = v197;
        sub_25261B6E8(v100, v197, type metadata accessor for Device.Control.Source);

        sub_25261B5D8(v73, type metadata accessor for Device.Control.Source);
        sub_252617A88(v104, v105, v203);
        sub_25261B5D8(v105, type metadata accessor for Device.Control.Source);
        v78 = v104;
        return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
      }

      v200 = v79;
      v202 = v22;
      v82 = *(v80 + 48);
      v204 = *v73;
      v83 = swift_projectBox();
      v84 = v74;
      v85 = v186;
      sub_25261B680(v81, v186, type metadata accessor for Device.Control.Source);
      sub_25261B680(v83, v56, type metadata accessor for Device.Control.Source);
      v86 = v81 + v82;
      v87 = v185;
      sub_25261B680(v86, v185, type metadata accessor for Device.Control.Source);
      sub_25261B680(v83 + v82, v51, type metadata accessor for Device.Control.Source);
      v88 = v187;
      sub_252617A88(v85, v56, v187);
      v89 = *(v201 + 48);
      if (v89(v88, 1, v84) == 1)
      {
        sub_25261B5D8(v51, type metadata accessor for Device.Control.Source);
        sub_25261B5D8(v87, type metadata accessor for Device.Control.Source);
        sub_25261B5D8(v56, type metadata accessor for Device.Control.Source);
LABEL_45:
        v144 = v203;
        sub_25261B5D8(v85, type metadata accessor for Device.Control.Source);
        sub_252372288(v88, &qword_27F4E3070, &qword_2526A8520);
        (*(v201 + 56))(v144, 1, 1, v205);

        v78 = v202;
        return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
      }

      v199 = v80;
      v140 = v88;
      v141 = v179;
      sub_25261B6E8(v140, v179, type metadata accessor for Device.Control.Source);
      v142 = v180;
      sub_252617A88(v87, v51, v180);
      sub_25261B5D8(v51, type metadata accessor for Device.Control.Source);
      sub_25261B5D8(v87, type metadata accessor for Device.Control.Source);
      sub_25261B5D8(v56, type metadata accessor for Device.Control.Source);
      sub_25261B5D8(v85, type metadata accessor for Device.Control.Source);
      v143 = v205;
      if (v89(v142, 1, v205) == 1)
      {
        v85 = v141;
        v88 = v142;
        goto LABEL_45;
      }

      v157 = v176;
      sub_25261B6E8(v142, v176, type metadata accessor for Device.Control.Source);
      v158 = v199;
      v159 = swift_allocBox();
      v161 = v160;
      v162 = *(v158 + 48);
      sub_25261B6E8(v141, v160, type metadata accessor for Device.Control.Source);
      sub_25261B6E8(v157, v161 + v162, type metadata accessor for Device.Control.Source);
      v163 = v203;
      *v203 = v159;
      swift_storeEnumTagMultiPayload();
      (*(v201 + 56))(v163, 0, 1, v143);
    }

LABEL_53:
    v78 = v202;
    return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
  }

  if (!EnumCaseMultiPayload)
  {
    v73 = v22;
    sub_25261B680(v22, v44, type metadata accessor for Device.Control.Source);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088, &unk_2526A85B0);
    v91 = *(v90 + 48);
    v92 = *&v44[v91];
    v93 = v204;
    if (swift_getEnumCaseMultiPayload())
    {

      (*(v194 + 8))(v44, v195);
      v74 = v205;
      v71 = v73;
      v73 = v93;
      goto LABEL_20;
    }

    v202 = *(v93 + v91);
    v125 = v194;
    v126 = *(v194 + 32);
    v127 = v44;
    v128 = v195;
    v126(v191, v127, v195);
    v126(v190, v93, v128);
    sub_25261B638(&qword_27F4E37B8, MEMORY[0x277D16348], MEMORY[0x277D16370]);
    sub_252692D40();
    sub_252692D40();
    if (v208 == v206 && v209 == v207)
    {

      v129 = v203;
      v130 = v205;
    }

    else
    {
      v145 = sub_2526933B0();

      v129 = v203;
      v130 = v205;
      if ((v145 & 1) == 0)
      {

        v164 = *(v125 + 8);
        v164(v190, v128);
        v164(v191, v128);
        v151 = *(v201 + 56);
        v152 = v129;
        v153 = 1;
        goto LABEL_56;
      }
    }

    v146 = *(v90 + 48);
    v147 = v191;
    (*(v125 + 16))(v129, v191, v128);
    sub_25261624C(v202, v92);
    v149 = v148;
    v150 = *(v125 + 8);
    v150(v190, v128);
    v150(v147, v128);
    *(v129 + v146) = v149;
    swift_storeEnumTagMultiPayload();
    v151 = *(v201 + 56);
    v152 = v129;
    v153 = 0;
LABEL_56:
    v151(v152, v153, 1, v130);
    goto LABEL_57;
  }

  v73 = v204;
  v74 = v205;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_20;
  }

  sub_25261B680(v22, v64, type metadata accessor for Device.Control.Source);
  v75 = *v64;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_20;
  }

  sub_25261624C(*v73, v75);
  v76 = v203;
  *v203 = v77;
  swift_storeEnumTagMultiPayload();
  (*(v201 + 56))(v76, 0, 1, v74);
  v78 = v71;
  return sub_25261B5D8(v78, type metadata accessor for Device.Control.Source);
}

uint64_t sub_252618FBC@<X0>(char *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  LODWORD(v298) = a3;
  v310 = a2;
  v307 = a1;
  v308 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  MEMORY[0x28223BE20](v4 - 8);
  v275 = &v273 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v299 = &v273 - v7;
  MEMORY[0x28223BE20](v8);
  v306 = (&v273 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v10 - 8);
  v276 = &v273 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v300 = &v273 - v13;
  MEMORY[0x28223BE20](v14);
  v295 = &v273 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v16 - 8);
  v293 = (&v273 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v294 = &v273 - v19;
  v20 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v20 - 8);
  v291 = &v273 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v292 = &v273 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB890, &qword_2526963D0);
  MEMORY[0x28223BE20](v24 - 8);
  v289 = &v273 - v25;
  v26 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v285 = *(v26 - 8);
  v286 = v26;
  MEMORY[0x28223BE20](v26);
  v274 = &v273 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v287 = (&v273 - v29);
  MEMORY[0x28223BE20](v30);
  v288 = &v273 - v31;
  v32 = type metadata accessor for Device.Control.Kind(0);
  v309 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v304 = &v273 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v273 - v35;
  MEMORY[0x28223BE20](v37);
  v305 = &v273 - v38;
  MEMORY[0x28223BE20](v39);
  v302 = &v273 - v40;
  MEMORY[0x28223BE20](v41);
  v301 = (&v273 - v42);
  MEMORY[0x28223BE20](v43);
  v284 = (&v273 - v44);
  MEMORY[0x28223BE20](v45);
  v282 = &v273 - v46;
  MEMORY[0x28223BE20](v47);
  v303 = &v273 - v48;
  MEMORY[0x28223BE20](v49);
  v277 = &v273 - v50;
  MEMORY[0x28223BE20](v51);
  v278 = (&v273 - v52);
  MEMORY[0x28223BE20](v53);
  v55 = (&v273 - v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E37A8, &qword_2526A9B88);
  v57 = v56 - 8;
  MEMORY[0x28223BE20](v56);
  v59 = &v273 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v60 - 8);
  v280 = &v273 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v281 = &v273 - v63;
  MEMORY[0x28223BE20](v64);
  v283 = &v273 - v65;
  MEMORY[0x28223BE20](v66);
  v68 = &v273 - v67;
  MEMORY[0x28223BE20](v69);
  v297 = &v273 - v70;
  v71 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v71 - 8);
  v73 = &v273 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v76 = &v273 - v75;
  MEMORY[0x28223BE20](v77);
  v290 = (&v273 - v78);
  MEMORY[0x28223BE20](v79);
  v279 = (&v273 - v80);
  MEMORY[0x28223BE20](v81);
  v296 = &v273 - v82;
  v83 = &v59[*(v57 + 56)];
  sub_25261B680(v307, v59, type metadata accessor for Device.Control.Kind);
  v84 = v310;
  v310 = v83;
  v85 = v32;
  sub_25261B680(v84, v83, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v307 = v59;
        sub_25261B680(v59, v36, type metadata accessor for Device.Control.Kind);
        v203 = *v36;
        v204 = *(v36 + 1);
        v205 = *(v36 + 2);
        v206 = *(v36 + 3);
        v207 = *(v36 + 4);
        v208 = *(v36 + 7);
        v305 = *(v36 + 6);
        v306 = v207;
        v209 = *(v36 + 8);
        v210 = v310;
        if (swift_getEnumCaseMultiPayload() != 7)
        {

          sub_2523E2E24(v203, v204, v205, v206);
          goto LABEL_68;
        }

        v304 = v204;
        v297 = v203;
        v298 = v206;
        v273 = v85;
        v211 = v36[40];
        v212 = *(v210 + 8);
        v302 = *v210;
        v303 = v212;
        v213 = *(v210 + 24);
        v301 = *(v210 + 16);
        v299 = v205;
        v300 = v213;
        v214 = *(v210 + 32);
        LOBYTE(v213) = *(v210 + 40);
        v215 = *(v210 + 48);
        v216 = *(v210 + 56);
        v217 = *(v210 + 64);
        v219 = v305;
        v218 = v306;
        *&v334 = v306;
        BYTE8(v334) = v211;
        *&v335 = v305;
        *(&v335 + 1) = v208;
        *&v336 = v209;
        *&v327 = v214;
        BYTE8(v327) = v213;
        *&v328 = v215;
        *(&v328 + 1) = v216;
        *&v329 = v217;
        v220 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v334, &v327);

        if (v220)
        {
          v221 = v273;
          v222 = v304;
          if (v304)
          {
            sub_2523E2E24(v302, v303, v301, v300);
            v224 = v298;
            v223 = v299;
            v225 = v297;
          }

          else
          {
            v225 = v302;
            v222 = v303;
            v223 = v301;
            v224 = v300;
          }

          v262 = v308;
          *v308 = v225;
          *(v262 + 1) = v222;
          *(v262 + 2) = v223;
          *(v262 + 3) = v224;
          *(v262 + 4) = v218;
          v262[40] = v211;
          *(v262 + 6) = v219;
          *(v262 + 7) = v208;
          *(v262 + 8) = v209;
          swift_storeEnumTagMultiPayload();
          (*(v309 + 56))(v262, 0, 1, v221);
          goto LABEL_81;
        }

        sub_2523E2E24(v297, v304, v299, v298);
        sub_2523E2E24(v302, v303, v301, v300);
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_69;
        }

        v307 = v59;
        v137 = v304;
        sub_25261B680(v59, v304, type metadata accessor for Device.Control.Kind);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);
        v139 = *(v138 + 48);
        v141 = *(v137 + v139 + 8);
        v140 = *(v137 + v139 + 16);
        v142 = *(v137 + v139 + 24);
        v143 = *(v137 + v139 + 32);
        v144 = v310;
        if (swift_getEnumCaseMultiPayload() != 8)
        {

          sub_252372288(v137, &qword_27F4DB440, &qword_2526A1150);
          goto LABEL_68;
        }

        v300 = v138;
        v273 = v85;
        v145 = *(v137 + v139);
        v146 = (v144 + v139);
        v147 = v143;
        LODWORD(v303) = *v146;
        v148 = v146[1];
        v301 = v146[2];
        v302 = v148;
        v149 = v141;
        v150 = v146[3];
        v151 = v146[4];
        v305 = v140;
        sub_2523714D4(v137, v306, &qword_27F4DB440, &qword_2526A1150);
        v152 = v299;
        v153 = v305;
        sub_2523714D4(v144, v299, &qword_27F4DB440, &qword_2526A1150);
        LODWORD(v304) = v145;
        LOBYTE(v334) = v145;
        v310 = v149;
        *(&v334 + 1) = v149;
        *&v335 = v153;
        *(&v335 + 1) = v142;
        *&v336 = v147;
        LOBYTE(v327) = v303;
        *(&v327 + 1) = v302;
        *&v328 = v301;
        *(&v328 + 1) = v150;
        *&v329 = v151;
        v154 = _s22HomeAccessoryControlUI0bC0V22StatusButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v334, &v327);

        if (v154)
        {
          v303 = v147;
          v155 = v142;
          v156 = v275;
          sub_2523714D4(v306, v275, &qword_27F4DB440, &qword_2526A1150);
          v157 = type metadata accessor for AccessoryControl.StatusButtonState(0);
          v158 = *(v157 - 8);
          v159 = *(v158 + 48);
          v160 = v159(v156, 1, v157);
          v161 = v273;
          if (v160 == 1)
          {
            v162 = v308;
            sub_2523714D4(v299, v308, &qword_27F4DB440, &qword_2526A1150);
            if (v159(v156, 1, v157) != 1)
            {
              sub_252372288(v156, &qword_27F4DB440, &qword_2526A1150);
            }
          }

          else
          {
            sub_252372288(v299, &qword_27F4DB440, &qword_2526A1150);
            v162 = v308;
            sub_25261B6E8(v156, v308, type metadata accessor for AccessoryControl.StatusButtonState);
            (*(v158 + 56))(v162, 0, 1, v157);
          }

          v259 = &v162[*(v300 + 48)];
          *v259 = v304;
          v260 = v305;
          *(v259 + 1) = v310;
          *(v259 + 2) = v260;
          v261 = v303;
          *(v259 + 3) = v155;
          *(v259 + 4) = v261;
          swift_storeEnumTagMultiPayload();
          (*(v309 + 56))(v162, 0, 1, v161);
          goto LABEL_81;
        }

        sub_252372288(v152, &qword_27F4DB440, &qword_2526A1150);
        sub_252372288(v306, &qword_27F4DB440, &qword_2526A1150);
      }

      (*(v309 + 56))(v308, 1, 1, v273);
LABEL_81:
      v186 = v307;
      return sub_25261B5D8(v186, type metadata accessor for Device.Control.Kind);
    }

    if (EnumCaseMultiPayload == 4)
    {
      (*(v309 + 56))(v308, 1, 1, v32);
      sub_25261B5D8(v310, type metadata accessor for Device.Control.Kind);
      v186 = v59;
      return sub_25261B5D8(v186, type metadata accessor for Device.Control.Kind);
    }

    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_69;
    }

    v87 = v305;
    sub_25261B680(v59, v305, type metadata accessor for Device.Control.Kind);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);
    v106 = *(v105 + 48);
    v107 = *(v87 + v106 + 80);
    v338 = *(v87 + v106 + 64);
    v339 = v107;
    v340 = *(v87 + v106 + 96);
    v108 = *(v87 + v106 + 16);
    v334 = *(v87 + v106);
    v335 = v108;
    v109 = *(v87 + v106 + 48);
    v336 = *(v87 + v106 + 32);
    v337 = v109;
    v110 = v310;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v111 = *(v110 + v106 + 80);
      v331 = *(v110 + v106 + 64);
      v332 = v111;
      v333 = *(v110 + v106 + 96);
      v112 = *(v110 + v106 + 16);
      v327 = *(v110 + v106);
      v328 = v112;
      v113 = *(v110 + v106 + 48);
      v329 = *(v110 + v106 + 32);
      v330 = v113;
      v114 = v87;
      v115 = v295;
      sub_2523714D4(v114, v295, &qword_27F4DB258, &unk_252696090);
      v116 = v110;
      v117 = v300;
      sub_2523714D4(v116, v300, &qword_27F4DB258, &unk_252696090);
      v324 = v338;
      v325 = v339;
      v326 = v340;
      v320 = v334;
      v321 = v335;
      v322 = v336;
      v323 = v337;
      v317 = v331;
      v318 = v332;
      v319 = v333;
      v313 = v327;
      v314 = v328;
      v315 = v329;
      v316 = v330;
      v118 = _s22HomeAccessoryControlUI0bC0V16ThermostatConfigV2eeoiySbAE_AEtFZ_0(&v320, &v313);
      sub_252385F08(&v327);
      if (v118)
      {
        v119 = v59;
        v120 = v276;
        sub_2523714D4(v115, v276, &qword_27F4DB258, &unk_252696090);
        v121 = type metadata accessor for AccessoryControl.ThermostatState(0);
        v122 = *(v121 - 8);
        v123 = *(v122 + 48);
        v124 = v123(v120, 1, v121);
        v125 = v308;
        if (v124 == 1)
        {
          sub_2523714D4(v300, v308, &qword_27F4DB258, &unk_252696090);
          if (v123(v120, 1, v121) != 1)
          {
            sub_252372288(v120, &qword_27F4DB258, &unk_252696090);
          }
        }

        else
        {
          sub_252372288(v300, &qword_27F4DB258, &unk_252696090);
          sub_25261B6E8(v120, v125, type metadata accessor for AccessoryControl.ThermostatState);
          (*(v122 + 56))(v125, 0, 1, v121);
        }

        v255 = &v125[*(v105 + 48)];
        v256 = v339;
        *(v255 + 4) = v338;
        *(v255 + 5) = v256;
        *(v255 + 48) = v340;
        v257 = v335;
        *v255 = v334;
        *(v255 + 1) = v257;
        v258 = v337;
        *(v255 + 2) = v336;
        *(v255 + 3) = v258;
        swift_storeEnumTagMultiPayload();
        (*(v309 + 56))(v125, 0, 1, v85);
        v186 = v119;
        return sub_25261B5D8(v186, type metadata accessor for Device.Control.Kind);
      }

      sub_252385F08(&v334);
      v246 = &qword_27F4DB258;
      v247 = &unk_252696090;
LABEL_64:
      sub_252372288(v117, v246, v247);
      sub_252372288(v115, v246, v247);
      (*(v309 + 56))(v308, 1, 1, v85);
      v186 = v59;
      return sub_25261B5D8(v186, type metadata accessor for Device.Control.Kind);
    }

    sub_252385F08(&v334);
    v226 = &qword_27F4DB258;
    v227 = &unk_252696090;
LABEL_56:
    sub_252372288(v87, v226, v227);
    goto LABEL_69;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v187 = v59;
      v188 = v301;
      sub_25261B680(v59, v301, type metadata accessor for Device.Control.Kind);
      v189 = *v188;
      v190 = *(v188 + 8);
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      v192 = *(v191 + 48);
      v193 = v310;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v307 = *v193;
        LODWORD(v306) = *(v193 + 8);
        v194 = v188 + v192;
        v195 = v292;
        sub_25261B6E8(v194, v292, type metadata accessor for AccessoryControl.PickerViewConfig);
        v196 = v193 + v192;
        v197 = v195;
        v198 = v291;
        sub_25261B6E8(v196, v291, type metadata accessor for AccessoryControl.PickerViewConfig);
        v199 = _s22HomeAccessoryControlUI0bC0V16PickerViewConfigV2eeoiySbAE_AEtFZ_0(v197, v198);
        sub_25261B5D8(v198, type metadata accessor for AccessoryControl.PickerViewConfig);
        if (v199)
        {
          v200 = v307;
          v201 = v308;
          if (!v190)
          {
            v200 = v189;
          }

          v202 = v190 & v306;
          *v308 = v200;
          v201[8] = v202;
          sub_25261B6E8(v197, &v201[*(v191 + 48)], type metadata accessor for AccessoryControl.PickerViewConfig);
          swift_storeEnumTagMultiPayload();
          (*(v309 + 56))(v201, 0, 1, v85);
        }

        else
        {
          sub_25261B5D8(v197, type metadata accessor for AccessoryControl.PickerViewConfig);
          (*(v309 + 56))(v308, 1, 1, v85);
        }

        v186 = v187;
        return sub_25261B5D8(v186, type metadata accessor for Device.Control.Kind);
      }

      sub_25261B5D8(v188 + v192, type metadata accessor for AccessoryControl.PickerViewConfig);
      v59 = v187;
LABEL_69:
      sub_252372288(v59, &qword_27F4E37A8, &qword_2526A9B88);
      return (*(v309 + 56))(v308, 1, 1, v85);
    }

    v87 = v302;
    sub_25261B680(v59, v302, type metadata accessor for Device.Control.Kind);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);
    v127 = *(v126 + 48);
    v334 = *(v87 + v127);
    *&v335 = *(v87 + v127 + 16);
    v128 = v310;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v327 = *(v128 + v127);
      *&v328 = *(v128 + v127 + 16);
      v129 = v87;
      v115 = v294;
      sub_2523714D4(v129, v294, &qword_27F4DB2A0, &qword_25269E4A0);
      v130 = v128;
      v117 = v293;
      sub_2523714D4(v130, v293, &qword_27F4DB2A0, &qword_25269E4A0);
      v313 = v334;
      *&v314 = v335;
      v311 = v327;
      v312 = v328;
      sub_252614484(&v311, &v320);
      sub_252394280(&v327);
      sub_252394280(&v334);
      v131 = v321;
      if (v321)
      {
        v132 = WORD4(v320);
        v310 = DWORD1(v320);
        LODWORD(v306) = v320 & 1;
        LODWORD(v305) = (v320 >> 8) & 1;
        LODWORD(v304) = WORD1(v320) & 1;
        LOBYTE(v313) = BYTE6(v320) & 1;
        LOBYTE(v311) = BYTE10(v320) & 1;
        v133 = *(v126 + 48);
        v307 = v59;
        v134 = v308;
        v135 = v85;
        v136 = &v308[v133];
        sub_252614E78(v115, v117, v308);
        sub_252372288(v117, &qword_27F4DB2A0, &qword_25269E4A0);
        sub_252372288(v115, &qword_27F4DB2A0, &qword_25269E4A0);
        *v136 = v306;
        v136[1] = v305;
        v136[2] = v304;
        *(v136 + 2) = v310;
        v136[6] = v313;
        *(v136 + 4) = v132;
        v136[10] = v311;
        *(v136 + 2) = v131;
        swift_storeEnumTagMultiPayload();
        (*(v309 + 56))(v134, 0, 1, v135);
        goto LABEL_81;
      }

      v246 = &qword_27F4DB2A0;
      v247 = &qword_25269E4A0;
      goto LABEL_64;
    }

    sub_252394280(&v334);
    v226 = &qword_27F4DB2A0;
    v227 = &qword_25269E4A0;
    goto LABEL_56;
  }

  if (!EnumCaseMultiPayload)
  {
    v307 = v59;
    sub_25261B680(v59, v55, type metadata accessor for Device.Control.Kind);
    v163 = *v55;
    v303 = v55[1];
    v164 = v55[3];
    v304 = v55[2];
    v305 = v163;
    v306 = v55[4];
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
    v166 = v32;
    v167 = *(v165 + 48);
    v168 = v310;
    v273 = v166;
    v169 = swift_getEnumCaseMultiPayload();
    if (v169 == 1)
    {
      v228 = v168;
      v229 = v277;
      sub_25261B680(v228, v277, type metadata accessor for Device.Control.Kind);
      v230 = v229 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
      sub_2523714D4(v229, v68, &qword_27F4DB218, &unk_252696080);
      sub_25261B6E8(v55 + v167, v76, type metadata accessor for AccessoryControl.BinaryViewConfig);
      if (v298)
      {
        v302 = v164;
        v73 = v76;
        v85 = v273;
        v59 = v307;
        goto LABEL_52;
      }

      sub_252393F68(v305, v303, v304, v164, v306);
      sub_25261B5D8(v76, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_252372288(v68, &qword_27F4DB218, &unk_252696080);
      sub_25261B5D8(v230, type metadata accessor for AccessoryControl.IncrementalConfig);
    }

    else
    {
      if (!v169)
      {
        v302 = v164;
        v170 = v278;
        sub_25261B680(v168, v278, type metadata accessor for Device.Control.Kind);
        v171 = v170[1];
        v300 = *v170;
        v301 = v171;
        v172 = v170[3];
        v299 = v170[2];
        v173 = v170[4];
        v174 = *(v165 + 48);
        v175 = v55 + v167;
        v176 = v279;
        sub_25261B6E8(v175, v279, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v177 = v290;
        sub_25261B6E8(v170 + v174, v290, type metadata accessor for AccessoryControl.BinaryViewConfig);
        if (!_s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV2eeoiySbAE_AEtFZ_0(v176, v177))
        {
          sub_252393F68(v300, v301, v299, v172, v173);
          sub_252393F68(v305, v303, v304, v302, v306);
          sub_25261B5D8(v177, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_25261B5D8(v176, type metadata accessor for AccessoryControl.BinaryViewConfig);
          (*(v309 + 56))(v308, 1, 1, v273);
          v248 = v168;
LABEL_94:
          sub_25261B5D8(v248, type metadata accessor for Device.Control.Kind);
          v186 = v307;
          return sub_25261B5D8(v186, type metadata accessor for Device.Control.Kind);
        }

        v178 = v299;
        v179 = v300;
        v180 = v172;
        v181 = v308;
        v182 = v302;
        if (v306 == 1)
        {
          v183 = v300;
          *v308 = v300;
          v184 = v301;
          *(v181 + 1) = v301;
          *(v181 + 2) = v178;
          *(v181 + 3) = v180;
          *(v181 + 4) = v173;
          sub_25239F750(v183, v184, v178, v180, v173);
          v185 = v304;
        }

        else
        {
          v185 = v304;
          if (v173 == 1)
          {
            v263 = v303;
            *v308 = v305;
            *(v181 + 1) = v263;
            *(v181 + 2) = v185;
            *(v181 + 3) = v182;
            *(v181 + 4) = v306;

            v183 = v179;
          }

          else
          {
            v183 = v300;
            v270 = v300 & 1;
            if (v305)
            {
              v270 = 1;
            }

            *v308 = v270;
            *(v181 + 8) = xmmword_2526952D0;
            *(v181 + 3) = 0;
            *(v181 + 4) = 0;
          }

          v184 = v301;
        }

        v271 = *(v165 + 48);
        sub_25261B5D8(v290, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_252393F68(v183, v184, v178, v180, v173);
        sub_252393F68(v305, v303, v185, v302, v306);
        sub_25261B6E8(v176, &v181[v271], type metadata accessor for AccessoryControl.BinaryViewConfig);
        v272 = v273;
        swift_storeEnumTagMultiPayload();
        v102 = *(v309 + 56);
        v103 = v181;
        v104 = 0;
        v254 = v272;
LABEL_93:
        v102(v103, v104, 1, v254);
        v248 = v310;
        goto LABEL_94;
      }

      sub_25261B5D8(v55 + v167, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_252393F68(v305, v303, v304, v164, v306);
    }

    v85 = v273;
LABEL_68:
    v59 = v307;
    goto LABEL_69;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_69;
  }

  v87 = v303;
  sub_25261B680(v59, v303, type metadata accessor for Device.Control.Kind);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020);
  v89 = v87 + *(v88 + 48);
  v90 = swift_getEnumCaseMultiPayload();
  if (v90)
  {
    if (v90 == 1)
    {
      v307 = v59;
      v91 = v89;
      v92 = v282;
      sub_25261B680(v310, v282, type metadata accessor for Device.Control.Kind);
      v93 = *(v88 + 48);
      v94 = v87;
      v95 = v283;
      sub_2523714D4(v94, v283, &qword_27F4DB218, &unk_252696080);
      v96 = v281;
      sub_2523714D4(v92, v281, &qword_27F4DB218, &unk_252696080);
      v97 = v288;
      sub_25261B6E8(v91, v288, type metadata accessor for AccessoryControl.IncrementalConfig);
      v98 = v287;
      sub_25261B6E8(v92 + v93, v287, type metadata accessor for AccessoryControl.IncrementalConfig);
      v99 = v289;
      sub_2526142C4(v98, v289);
      v100 = (*(v285 + 48))(v99, 1, v286);
      v101 = v308;
      if (v100 == 1)
      {
        sub_25261B5D8(v98, type metadata accessor for AccessoryControl.IncrementalConfig);
        sub_25261B5D8(v97, type metadata accessor for AccessoryControl.IncrementalConfig);
        sub_252372288(v96, &qword_27F4DB218, &unk_252696080);
        sub_252372288(v95, &qword_27F4DB218, &unk_252696080);
        sub_252372288(v99, &qword_27F4DB890, &qword_2526963D0);
        v102 = *(v309 + 56);
        v103 = v101;
        v104 = 1;
      }

      else
      {
        v306 = type metadata accessor for AccessoryControl.IncrementalConfig;
        v251 = v274;
        sub_25261B6E8(v99, v274, type metadata accessor for AccessoryControl.IncrementalConfig);
        v252 = v97;
        v253 = *(v88 + 48);
        sub_252614658(v95, v96, v101);
        sub_25261B5D8(v98, type metadata accessor for AccessoryControl.IncrementalConfig);
        sub_25261B5D8(v252, type metadata accessor for AccessoryControl.IncrementalConfig);
        sub_252372288(v96, &qword_27F4DB218, &unk_252696080);
        sub_252372288(v95, &qword_27F4DB218, &unk_252696080);
        sub_25261B6E8(v251, &v101[v253], v306);
        swift_storeEnumTagMultiPayload();
        v102 = *(v309 + 56);
        v103 = v101;
        v104 = 0;
      }

      v254 = v85;
      goto LABEL_93;
    }

    sub_25261B5D8(v89, type metadata accessor for AccessoryControl.IncrementalConfig);
    v226 = &qword_27F4DB218;
    v227 = &unk_252696080;
    goto LABEL_56;
  }

  v307 = v89;
  v231 = v284;
  sub_25261B680(v310, v284, type metadata accessor for Device.Control.Kind);
  v232 = v231[1];
  v233 = v231[2];
  v234 = v231[3];
  v235 = v231[4];
  v305 = *v231;
  v306 = v235;
  v236 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
  v237 = v87;
  v68 = v280;
  sub_2523714D4(v237, v280, &qword_27F4DB218, &unk_252696080);
  sub_25261B6E8(v231 + v236, v73, type metadata accessor for AccessoryControl.BinaryViewConfig);
  if ((v298 & 1) == 0)
  {
    sub_252393F68(v305, v232, v233, v234, v306);
    sub_25261B5D8(v73, type metadata accessor for AccessoryControl.BinaryViewConfig);
    sub_252372288(v68, &qword_27F4DB218, &unk_252696080);
    sub_25261B5D8(v307, type metadata accessor for AccessoryControl.IncrementalConfig);
    goto LABEL_69;
  }

  v303 = v232;
  v304 = v233;
  v302 = v234;
  v230 = v307;
LABEL_52:
  v238 = v306;
  sub_25261B6E8(v73, v296, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v239 = v297;
  sub_2523714D4(v68, v297, &qword_27F4DB218, &unk_252696080);
  sub_25261B5D8(v230, type metadata accessor for AccessoryControl.IncrementalConfig);
  sub_25261B5D8(v310, type metadata accessor for Device.Control.Kind);
  sub_25261B5D8(v59, type metadata accessor for Device.Control.Kind);
  sub_25261AF14(v239, &v334);
  v240 = v334;
  v241 = v335;
  v242 = v336;
  v273 = v85;
  if (v238 == 1)
  {
    v243 = v303;
    sub_25239F750(v334, *(&v334 + 1), v335, *(&v335 + 1), v336);
    v306 = v240;
    v307 = *(&v241 + 1);
    v310 = *(&v240 + 1);
    v244 = v241;
    v301 = v242;
    v245 = v305;
  }

  else
  {
    v250 = v303;
    if (v336 == 1)
    {

      v245 = v305;
      v243 = v250;
      v310 = v250;
      v244 = v304;
      v306 = v305;
      v307 = v302;
      v301 = v238;
    }

    else
    {
      v243 = v303;
      v310 = 0;
      v301 = 0;
      v264 = v334 & 1;
      v245 = v305;
      if (v305)
      {
        v264 = 1;
      }

      v306 = v264;
      v307 = 0;
      v244 = 1;
    }
  }

  sub_252372288(v297, &qword_27F4DB218, &unk_252696080);
  sub_252393F68(v240, *(&v240 + 1), v241, *(&v241 + 1), v242);
  sub_252393F68(v245, v243, v304, v302, v238);
  v265 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
  v266 = v308;
  v267 = v310;
  *v308 = v306;
  *(v266 + 1) = v267;
  v268 = v307;
  *(v266 + 2) = v244;
  *(v266 + 3) = v268;
  *(v266 + 4) = v301;
  sub_25261B6E8(v296, &v266[v265], type metadata accessor for AccessoryControl.BinaryViewConfig);
  v269 = v273;
  swift_storeEnumTagMultiPayload();
  return (*(v309 + 56))(v266, 0, 1, v269);
}

double sub_25261AF14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v3 = sub_25268ED70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(v16, v9, &qword_27F4DB218, &unk_252696080);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DB218, &unk_252696080);
  }

  else
  {
    sub_25261B6E8(v9, v13, type metadata accessor for AccessoryControl.IncrementalState);
    (*(v4 + 32))(v6, v13, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D15BB8])
    {
      (*(v4 + 96))(v6, v3);
      *a2 = *v6 > 0.0;
      result = 0.0;
      *(a2 + 8) = xmmword_2526952D0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      return result;
    }

    (*(v4 + 8))(v6, v3);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1;
  return result;
}

BOOL sub_25261B1CC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = sub_25268ED20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v8, &qword_27F4DB2A0, &qword_25269E4A0);
  v19 = type metadata accessor for AccessoryControl.ColorState(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v8, 1, v19) == 1)
  {
    sub_252372288(v8, &qword_27F4DB2A0, &qword_25269E4A0);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    v28 = v11;
    sub_25237153C(v8, v14, &qword_27F4DB2A8, &unk_2526960B0);
    sub_25261B5D8(v8, type metadata accessor for AccessoryControl.ColorState);
    v21 = *(v16 + 48);
    if (v21(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v14, v15);
      sub_25237153C(v29, v5, &qword_27F4DB2A0, &qword_25269E4A0);
      if (v20(v5, 1, v19) == 1)
      {
        (*(v16 + 8))(v18, v15);
        v22 = &qword_27F4DB2A0;
        v23 = &qword_25269E4A0;
        v24 = v5;
        goto LABEL_5;
      }

      v14 = v28;
      sub_25237153C(v5, v28, &qword_27F4DB2A8, &unk_2526960B0);
      sub_25261B5D8(v5, type metadata accessor for AccessoryControl.ColorState);
      if (v21(v14, 1, v15) != 1)
      {
        v25 = sub_25248B14C(v18);
        v27 = *(v16 + 8);
        v27(v18, v15);
        v27(v14, v15);
        return v25;
      }

      (*(v16 + 8))(v18, v15);
    }
  }

  v22 = &qword_27F4DB2A8;
  v23 = &unk_2526960B0;
  v24 = v14;
LABEL_5:
  sub_252372288(v24, v22, v23);
  return 0;
}

uint64_t sub_25261B5D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25261B638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25261B680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25261B6E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Device.ControlGroup.controls.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Device.Control(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25261BB2C(v1, v8, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return *v8;
  }

  sub_25261BC48(v8, v5, type metadata accessor for Device.Control);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252694E90;
  sub_25261BC48(v5, v11 + v10, type metadata accessor for Device.Control);
  return v11;
}

uint64_t static Device.ControlModule.simple(control:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
  v4 = (type metadata accessor for Device.ControlGroup(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252694E90;
  v7 = v6 + v5;
  sub_25261BB2C(a1, v7, type metadata accessor for Device.Control);
  type metadata accessor for Device.ControlGroup.LayoutType(0);
  swift_storeEnumTagMultiPayload();
  v8 = (v7 + v4[7]);
  v9 = (v7 + v4[8]);
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for Device.ControlModule(0);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v11 = *(v10 + 28);
  v12 = type metadata accessor for AccessoryControlModule.Layout(0);
  result = (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  *(a2 + 1) = 0;
  *(a2 + 2) = v6;
  *a2 = 0;
  return result;
}

uint64_t Device.ControlGroup.init(type:label:accesibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Device.ControlGroup(0);
  v13 = (a6 + *(v12 + 20));
  v14 = (a6 + *(v12 + 24));
  result = sub_25261BC48(a1, a6, type metadata accessor for Device.ControlGroup.LayoutType);
  *v13 = a2;
  v13[1] = a3;
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_25261BB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Device.ControlModule.init(groups:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for Device.ControlModule(0);
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  v9 = *(v8 + 28);
  v10 = type metadata accessor for AccessoryControlModule.Layout(0);
  result = (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *(a4 + 1) = a3;
  *(a4 + 2) = a1;
  *a4 = a2;
  return result;
}

uint64_t sub_25261BC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25261BCB4(void *a1, char a2)
{
  v39 = type metadata accessor for Device.Control(0);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25261BB2C(a1, v15, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = *v15;
    v27 = *(*v15 + 16);
    if (v27)
    {
      v36 = v13;
      v37 = a1;
      v40 = MEMORY[0x277D84F90];
      sub_25237060C(0, v27, 0);
      v19 = v40;
      v28 = *(v4 + 80);
      v35 = v26;
      v38 = (v28 + 32) & ~v28;
      v29 = v26 + v38;
      v30 = *(v4 + 72);
      v31 = a2 & 1;
      do
      {
        sub_25261BB2C(v29, v12, type metadata accessor for Device.Control);
        sub_25261BB2C(v12, v6, type metadata accessor for Device.Control);
        v6[*(v39 + 44)] = v31;
        sub_25261FCC4(v12, type metadata accessor for Device.Control);
        v40 = v19;
        v33 = *(v19 + 16);
        v32 = *(v19 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_25237060C((v32 > 1), v33 + 1, 1);
          v19 = v40;
        }

        *(v19 + 16) = v33 + 1;
        sub_25261BC48(v6, v19 + v38 + v33 * v30, type metadata accessor for Device.Control);
        v29 += v30;
        --v27;
      }

      while (v27);
      goto LABEL_14;
    }

LABEL_16:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v17 = *v15;
    v18 = *(*v15 + 16);
    if (v18)
    {
      v36 = v13;
      v37 = a1;
      v40 = MEMORY[0x277D84F90];
      sub_25237060C(0, v18, 0);
      v19 = v40;
      v20 = *(v4 + 80);
      v35 = v17;
      v38 = (v20 + 32) & ~v20;
      v21 = v17 + v38;
      v22 = *(v4 + 72);
      v23 = a2 & 1;
      do
      {
        sub_25261BB2C(v21, v12, type metadata accessor for Device.Control);
        sub_25261BB2C(v12, v9, type metadata accessor for Device.Control);
        v9[*(v39 + 44)] = v23;
        sub_25261FCC4(v12, type metadata accessor for Device.Control);
        v40 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_25237060C((v24 > 1), v25 + 1, 1);
          v19 = v40;
        }

        *(v19 + 16) = v25 + 1;
        sub_25261BC48(v9, v19 + v38 + v25 * v22, type metadata accessor for Device.Control);
        v21 += v22;
        --v18;
      }

      while (v18);
LABEL_14:

      a1 = v37;
LABEL_17:
      sub_25261FCC4(a1, type metadata accessor for Device.ControlGroup.LayoutType);
      *a1 = v19;
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_16;
  }

  sub_25261BC48(v15, v12, type metadata accessor for Device.Control);
  v12[*(v39 + 44)] = a2 & 1;
  sub_25261FCC4(a1, type metadata accessor for Device.ControlGroup.LayoutType);
  sub_25261BC48(v12, a1, type metadata accessor for Device.Control);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Device.ControlGroup.transformControls(transform:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v38 = a1;
  v4 = type metadata accessor for Device.Control(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25261BB2C(v3, v16, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = *v16;
    v27 = *(*v16 + 16);
    if (v27)
    {
      v35 = v14;
      v36 = v3;
      v39 = MEMORY[0x277D84F90];
      sub_25237060C(0, v27, 0);
      v20 = v39;
      v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v34 = v26;
      v29 = v26 + v28;
      v30 = *(v5 + 72);
      do
      {
        sub_25261BB2C(v29, v13, type metadata accessor for Device.Control);
        sub_25261BB2C(v13, v7, type metadata accessor for Device.Control);
        v38(v7);
        sub_25261FCC4(v13, type metadata accessor for Device.Control);
        v39 = v20;
        v32 = *(v20 + 16);
        v31 = *(v20 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_25237060C((v31 > 1), v32 + 1, 1);
          v20 = v39;
        }

        *(v20 + 16) = v32 + 1;
        sub_25261BC48(v7, v20 + v28 + v32 * v30, type metadata accessor for Device.Control);
        v29 += v30;
        --v27;
      }

      while (v27);
      goto LABEL_14;
    }

LABEL_16:

    v20 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = *v16;
    v19 = *(*v16 + 16);
    if (v19)
    {
      v35 = v14;
      v36 = v3;
      v39 = MEMORY[0x277D84F90];
      sub_25237060C(0, v19, 0);
      v20 = v39;
      v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v34 = v18;
      v22 = v18 + v21;
      v23 = *(v5 + 72);
      do
      {
        sub_25261BB2C(v22, v13, type metadata accessor for Device.Control);
        sub_25261BB2C(v13, v10, type metadata accessor for Device.Control);
        v38(v10);
        sub_25261FCC4(v13, type metadata accessor for Device.Control);
        v39 = v20;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_25237060C((v24 > 1), v25 + 1, 1);
          v20 = v39;
        }

        *(v20 + 16) = v25 + 1;
        sub_25261BC48(v10, v20 + v21 + v25 * v23, type metadata accessor for Device.Control);
        v22 += v23;
        --v19;
      }

      while (v19);
LABEL_14:

      v3 = v36;
LABEL_17:
      sub_25261FCC4(v3, type metadata accessor for Device.ControlGroup.LayoutType);
      *v3 = v20;
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_16;
  }

  sub_25261BC48(v16, v13, type metadata accessor for Device.Control);
  v38(v13);
  sub_25261FCC4(v3, type metadata accessor for Device.ControlGroup.LayoutType);
  sub_25261BC48(v13, v3, type metadata accessor for Device.Control);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Device.ControlGroup.controls.setter(uint64_t a1)
{
  v3 = type metadata accessor for Device.Control(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25261BB2C(v1, v12, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    if (*(a1 + 16))
    {
      sub_25261BB2C(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6, type metadata accessor for Device.Control);

      sub_25261BC48(v6, v9, type metadata accessor for Device.Control);
      sub_25261FCC4(v1, type metadata accessor for Device.ControlGroup.LayoutType);
      sub_25261BC48(v9, v1, type metadata accessor for Device.Control);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
    }

    return sub_25261FCC4(v12, type metadata accessor for Device.ControlGroup.LayoutType);
  }

  else
  {
    sub_25261FCC4(v12, type metadata accessor for Device.ControlGroup.LayoutType);
    sub_25261FCC4(v1, type metadata accessor for Device.ControlGroup.LayoutType);
    *v1 = a1;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_25261C8F8@<X0>(uint64_t *a1@<X8>)
{
  result = Device.ControlGroup.controls.getter();
  *a1 = result;
  return result;
}

void Device.ControlGroup.LayoutType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25261BB2C(v2, v9, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *v9;
    v12 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = 1;
LABEL_5:
    MEMORY[0x2530A4FE0](v12);
    sub_2523D87F4(a1, v11);

    return;
  }

  sub_25261BC48(v9, v6, type metadata accessor for Device.Control);
  MEMORY[0x2530A4FE0](2);
  Device.Control.hash(into:)(a1);
  sub_25261FCC4(v6, type metadata accessor for Device.Control);
}

uint64_t Device.ControlGroup.id.getter()
{
  v1 = sub_25268DA10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25261BB2C(v0, v11, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v12 = *v11;
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_9:

    return MEMORY[0x277D84F90];
  }

  sub_25261BC48(v11, v8, type metadata accessor for Device.Control);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252694E90;
  sub_25261BC48(v8, v12 + v22, type metadata accessor for Device.Control);
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  sub_252370204(0, v13, 0);
  v14 = v26;
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v24[0] = v12;
  v16 = v12 + v15;
  v17 = *(v6 + 72);
  v24[1] = v2 + 32;
  v25 = v17;
  v18 = v4;
  do
  {
    sub_25261BB2C(v16, v8, type metadata accessor for Device.Control);
    (*(v2 + 16))(v18, v8, v1);
    sub_25261FCC4(v8, type metadata accessor for Device.Control);
    v26 = v14;
    v19 = v1;
    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_252370204((v20 > 1), v21 + 1, 1);
      v14 = v26;
    }

    *(v14 + 16) = v21 + 1;
    (*(v2 + 32))(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v18, v19);
    v16 += v25;
    --v13;
    v1 = v19;
  }

  while (v13);

  return v14;
}

void (*Device.ControlGroup.controls.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  a1[1] = v1;
  v4 = *(type metadata accessor for Device.Control(0) - 8);
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  v7 = v6;
  a1[2] = v6;
  v8 = *(*(type metadata accessor for Device.ControlGroup.LayoutType(0) - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  a1[3] = v9;
  sub_25261BB2C(v2, v9, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25261BC48(v10, v7, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_252694E90;
    sub_25261BC48(v7, v11 + v12, type metadata accessor for Device.Control);
  }

  else
  {
    v11 = *v10;
  }

  *a1 = v11;
  return sub_25261D064;
}

void sub_25261D064(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  if (a2)
  {

    Device.ControlGroup.controls.setter(v4);
  }

  else
  {
    Device.ControlGroup.controls.setter(*a1);
  }

  free(v3);

  free(v2);
}

uint64_t Device.ControlGroup.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device.ControlGroup(0) + 20));

  return v1;
}

void Device.ControlGroup.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device.ControlGroup(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Device.ControlGroup.accesibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device.ControlGroup(0) + 24));

  return v1;
}

void Device.ControlGroup.accesibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device.ControlGroup(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Device.ControlGroup.hash(into:)(__int128 *a1)
{
  Device.ControlGroup.LayoutType.hash(into:)(a1);
  v2 = type metadata accessor for Device.ControlGroup(0);
  if (*(v1 + *(v2 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (!*(v1 + *(v2 + 24) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t Device.ControlGroup.hashValue.getter()
{
  sub_252693460();
  Device.ControlGroup.LayoutType.hash(into:)(v3);
  v1 = type metadata accessor for Device.ControlGroup(0);
  if (*(v0 + *(v1 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t sub_25261D4BC(__int128 *a1, uint64_t a2)
{
  Device.ControlGroup.LayoutType.hash(into:)(a1);
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t sub_25261D594(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  Device.ControlGroup.LayoutType.hash(into:)(v5);
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  return sub_2526934C0();
}

uint64_t sub_25261D66C@<X0>(uint64_t *a1@<X8>)
{
  result = Device.ControlGroup.id.getter();
  *a1 = result;
  return result;
}

uint64_t Device.ControlModule.id.getter()
{
  v1 = type metadata accessor for Device.ControlGroup(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_25237071C(0, v6, 0);
    v7 = v15;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_25261BB2C(v8, v4, type metadata accessor for Device.ControlGroup);
      v10 = Device.ControlGroup.id.getter();
      sub_25261FCC4(v4, type metadata accessor for Device.ControlGroup);
      v15 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25237071C((v11 > 1), v12 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t Device.ControlModule.label.getter()
{
  v1 = *v0;

  return v1;
}

void Device.ControlModule.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Device.ControlModule.accesibilityIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void Device.ControlModule.accesibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t Device.ControlModule.customModuleLayout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Device.ControlModule(0) + 28);

  return sub_252620168(v3, a1);
}

uint64_t Device.ControlModule.customModuleLayout.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Device.ControlModule(0) + 28);

  return sub_2526201D8(a1, v3);
}

uint64_t Device.ControlModule.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControlModule.Layout(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0, &unk_2526A8D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  if (v2[1])
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  sub_2523D7E88(a1, v2[2]);
  if (v2[4])
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v11 = type metadata accessor for Device.ControlModule(0);
  sub_252620168(v2 + *(v11 + 28), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_252693480();
  }

  sub_25261BC48(v10, v7, type metadata accessor for AccessoryControlModule.Layout);
  sub_252693480();
  AccessoryControlModule.Layout.hash(into:)(a1);
  return sub_25261FCC4(v7, type metadata accessor for AccessoryControlModule.Layout);
}

uint64_t sub_25261DC80(uint64_t (*a1)(void *))
{
  sub_252693460();
  a1(v3);
  return sub_2526934C0();
}

uint64_t sub_25261DCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_25261DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_25261DD8C@<X0>(uint64_t *a1@<X8>)
{
  result = Device.ControlModule.id.getter();
  *a1 = result;
  return result;
}

void static Device.ControlModule.set(control:for:in:)(uint64_t *a1, uint64_t a2, char **a3)
{
  v49 = a1;
  v62 = a2;
  v48 = type metadata accessor for Device.Control(0);
  v65 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v40 - v9;
  v63 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v63);
  v45 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v40 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Device.ControlGroup(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v64 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a3;
  v20 = *a3;
  v47 = *(v20 + 2);
  if (v47)
  {
    v21 = type metadata accessor for Device.ControlModule(0);
    v22 = 0;
    v23 = *(v21 - 8);
    v40 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v24 = &v20[v40 + 16];
    v59 = xmmword_252694E90;
    v61 = v7;
    v57 = v20;
    v50 = v18;
    v51 = v16;
    v43 = v23;
    v42 = v24;
    while (1)
    {
      if (v22 >= *(v20 + 2))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        v7 = sub_25261EFC4(v7);
        goto LABEL_24;
      }

      v46 = *(v23 + 72) * v22;
      v25 = *(v24 + v46);
      v55 = *(v25 + 16);
      if (v55)
      {
        break;
      }

LABEL_20:
      ++v22;
      v23 = v43;
      v24 = v42;
      if (v22 == v47)
      {
        return;
      }
    }

    v26 = 0;
    v41 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v56 = v25 + v41;
    v52 = v25;
    v53 = v22;
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v27 = *(v18 + 72) * v26;
      v7 = v64;
      sub_25261BB2C(v56 + v27, v64, type metadata accessor for Device.ControlGroup);
      sub_25261BB2C(v7, v16, type metadata accessor for Device.ControlGroup.LayoutType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v54 = v27;
      v58 = v26;
      if (EnumCaseMultiPayload > 1)
      {
        v7 = v60;
        sub_25261BC48(v16, v60, type metadata accessor for Device.Control);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
        v30 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v16 = swift_allocObject();
        *(v16 + 1) = v59;
        sub_25261BC48(v7, &v16[v30], type metadata accessor for Device.Control);
        v29 = v16;
      }

      else
      {
        v29 = *v16;
      }

      v20 = *(v29 + 2);

      if (v20)
      {
        break;
      }

LABEL_6:
      v26 = v58 + 1;
      sub_25261FCC4(v64, type metadata accessor for Device.ControlGroup);
      v20 = v57;
      v18 = v50;
      v16 = v51;
      v25 = v52;
      v22 = v53;
      if (v26 == v55)
      {
        goto LABEL_20;
      }
    }

    v4 = 0;
    while (1)
    {
      sub_25261BB2C(v64, v13, type metadata accessor for Device.ControlGroup.LayoutType);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v16 = type metadata accessor for Device.Control;
        v31 = v60;
        sub_25261BC48(v13, v60, type metadata accessor for Device.Control);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
        v32 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v7 = swift_allocObject();
        *(v7 + 16) = v59;
        sub_25261BC48(v31, v7 + v32, type metadata accessor for Device.Control);
      }

      else
      {
        v7 = *v13;
      }

      if (v4 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v16 = ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v3 = *(v65 + 9) * v4;
      v33 = v61;
      sub_25261BB2C(&v16[v7 + v3], v61, type metadata accessor for Device.Control);

      if (_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0())
      {
        break;
      }

      ++v4;
      sub_25261FCC4(v33, type metadata accessor for Device.Control);
      if (v20 == v4)
      {
        goto LABEL_6;
      }
    }

    v34 = v48;
    Device.Control.Kind.primitive.getter(&v67);
    v35 = *(v34 + 20);
    LOBYTE(v34) = v67;
    v13 = v49;
    v20 = v49 + v35;
    Device.Control.Kind.primitive.getter(&v66);
    if ((sub_2523E2EAC(v34, v66) & 1) == 0)
    {
      sub_252620248();
      swift_allocError();
      swift_willThrow();
      sub_25261FCC4(v33, type metadata accessor for Device.Control);
      sub_25261FCC4(v64, type metadata accessor for Device.ControlGroup);
      return;
    }

    v7 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_24:
    if (v53 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v57 = v7;
      v20 = (v7 + v40 + v46);
      v7 = *(v20 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 2) = v7;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }
    }

    v7 = sub_25261EF88(v7);
    *(v20 + 2) = v7;
LABEL_26:
    if (v58 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v37 = v7 + v41 + v54;
      v38 = v45;
      sub_25261BB2C(v37, v45, type metadata accessor for Device.ControlGroup.LayoutType);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v65 = type metadata accessor for Device.Control;
        v39 = v60;
        sub_25261BC48(v38, v60, type metadata accessor for Device.Control);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
        v7 = swift_allocObject();
        *(v7 + 16) = v59;
        sub_25261BC48(v39, &v16[v7], v65);
      }

      else
      {
        v7 = *v38;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_32;
      }
    }

    v7 = sub_25261EF9C(v7);
LABEL_32:
    if (v4 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_25262029C(v13, &v16[v7 + v3]);
      Device.ControlGroup.controls.setter(v7);
      sub_25261FCC4(v61, type metadata accessor for Device.Control);
      sub_25261FCC4(v64, type metadata accessor for Device.ControlGroup);
      *v44 = v57;
    }
  }
}

uint64_t Device.ControlModule.Errors.hashValue.getter()
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

Swift::Void __swiftcall Device.ControlModule.setControls(enabled:)(Swift::Bool enabled)
{
  v67 = type metadata accessor for Device.Control(0);
  v56 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - v9;
  v10 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Device.ControlGroup(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = (&v49 - v18);
  v19 = *(v1 + 16);
  v20 = *(v19 + 16);
  if (v20)
  {
    v50 = v1;
    v69 = MEMORY[0x277D84F90];
    v61 = v20;
    sub_252370650(0, v20, 0);
    v66 = v69;
    v60 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v59 = v19 + v60;
    v21 = enabled;
    v22 = 0;
    v54 = v12;
    v55 = v10;
    v53 = v14;
    v57 = v16;
    v62 = v19;
    v23 = v63;
    while (1)
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
        return;
      }

      v64 = *(v14 + 72);
      v65 = v22;
      sub_25261BB2C(v59 + v64 * v22, v16, type metadata accessor for Device.ControlGroup);
      sub_25261BB2C(v16, v23, type metadata accessor for Device.ControlGroup);
      sub_25261BB2C(v23, v12, type metadata accessor for Device.ControlGroup.LayoutType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v25 = *v12;
        v26 = *(*v12 + 16);
        if (v26)
        {
          v58 = 1;
          v68 = MEMORY[0x277D84F90];
          sub_25237060C(0, v26, 0);
          v27 = v68;
          v28 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v52 = v25;
          v29 = v25 + v28;
          v30 = *(v56 + 72);
          do
          {
            sub_25261BB2C(v29, v7, type metadata accessor for Device.Control);
            v7[*(v67 + 44)] = v21;
            v68 = v27;
            v32 = *(v27 + 16);
            v31 = *(v27 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_25237060C((v31 > 1), v32 + 1, 1);
              v27 = v68;
            }

            *(v27 + 16) = v32 + 1;
            sub_25261BC48(v7, v27 + v28 + v32 * v30, type metadata accessor for Device.Control);
            v29 += v30;
            --v26;
          }

          while (v26);
          goto LABEL_17;
        }

LABEL_19:

        v16 = v57;
        sub_25261FCC4(v57, type metadata accessor for Device.ControlGroup);
        v27 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      sub_25261FCC4(v16, type metadata accessor for Device.ControlGroup);
      v40 = v51;
      sub_25261BC48(v12, v51, type metadata accessor for Device.Control);
      *(v40 + *(v67 + 44)) = v21;
      sub_25261FCC4(v63, type metadata accessor for Device.ControlGroup.LayoutType);
      v41 = v40;
      v23 = v63;
      sub_25261BC48(v41, v63, type metadata accessor for Device.Control);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v43 = v66;
      v69 = v66;
      v45 = *(v66 + 16);
      v44 = *(v66 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_252370650((v44 > 1), v45 + 1, 1);
        v23 = v63;
        v43 = v69;
      }

      v46 = v65 + 1;
      *(v43 + 16) = v45 + 1;
      v66 = v43;
      v47 = v43 + v60 + v45 * v64;
      v22 = v46;
      sub_25261BC48(v23, v47, type metadata accessor for Device.ControlGroup);
      v19 = v62;
      if (v22 == v61)
      {

        v1 = v50;
        v48 = v66;
        goto LABEL_26;
      }
    }

    v33 = *v12;
    v34 = *(*v12 + 16);
    if (!v34)
    {
      goto LABEL_19;
    }

    v58 = 0;
    v68 = MEMORY[0x277D84F90];
    sub_25237060C(0, v34, 0);
    v27 = v68;
    v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v52 = v33;
    v36 = v33 + v35;
    v37 = *(v56 + 72);
    do
    {
      sub_25261BB2C(v36, v4, type metadata accessor for Device.Control);
      v4[*(v67 + 44)] = v21;
      v68 = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_25237060C((v38 > 1), v39 + 1, 1);
        v27 = v68;
      }

      *(v27 + 16) = v39 + 1;
      sub_25261BC48(v4, v27 + v35 + v39 * v37, type metadata accessor for Device.Control);
      v36 += v37;
      --v34;
    }

    while (v34);
LABEL_17:
    v16 = v57;
    sub_25261FCC4(v57, type metadata accessor for Device.ControlGroup);

    v12 = v54;
    v14 = v53;
LABEL_20:
    v42 = v63;
    sub_25261FCC4(v63, type metadata accessor for Device.ControlGroup.LayoutType);
    *v42 = v27;
    v23 = v42;
    goto LABEL_21;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_26:
  *(v1 + 16) = v48;
}

void Device.ControlModule.transformControls(transform:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v3 = type metadata accessor for Device.ControlGroup(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = *(v2 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v21 = v2;
    v24 = MEMORY[0x277D84F90];
    sub_252370650(0, v11, 0);
    v12 = v24;
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v20[1] = v10;
    v14 = v10 + v13;
    v15 = *(v4 + 72);
    do
    {
      sub_25261BB2C(v14, v6, type metadata accessor for Device.ControlGroup);
      v16 = sub_25261BB2C(v6, v9, type metadata accessor for Device.ControlGroup);
      MEMORY[0x28223BE20](v16);
      v17 = v23;
      v20[-4] = v22;
      v20[-3] = v17;
      v20[-2] = v6;
      Device.ControlGroup.transformControls(transform:)(sub_252620300, &v20[-6]);
      sub_25261FCC4(v6, type metadata accessor for Device.ControlGroup);
      v24 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_252370650((v18 > 1), v19 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v19 + 1;
      sub_25261BC48(v9, v12 + v13 + v19 * v15, type metadata accessor for Device.ControlGroup);
      v14 += v15;
      --v11;
    }

    while (v11);

    v2 = v21;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v12;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV0C6ModuleV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccessoryControlModule.Layout(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0, &unk_2526A8D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3190, &qword_2526A8908);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (sub_2523E4D04(a1[2], a2[2]))
  {
    v16 = a1[4];
    v17 = a2[4];
    if (v16)
    {
      if (!v17 || (a1[3] != a2[3] || v16 != v17) && (sub_2526933B0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    v18 = *(type metadata accessor for Device.ControlModule(0) + 28);
    v19 = *(v11 + 48);
    sub_252620168(a1 + v18, v13);
    sub_252620168(a2 + v18, &v13[v19]);
    v20 = *(v5 + 48);
    if (v20(v13, 1, v4) == 1)
    {
      if (v20(&v13[v19], 1, v4) == 1)
      {
        sub_252372288(v13, &qword_27F4E2DC0, &unk_2526A8D70);
        return 1;
      }

      goto LABEL_21;
    }

    sub_252620168(v13, v10);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_25261FCC4(v10, type metadata accessor for AccessoryControlModule.Layout);
LABEL_21:
      sub_252372288(v13, &qword_27F4E3190, &qword_2526A8908);
      return 0;
    }

    sub_25261BC48(&v13[v19], v7, type metadata accessor for AccessoryControlModule.Layout);
    v22 = static AccessoryControlModule.Layout.== infix(_:_:)();
    sub_25261FCC4(v7, type metadata accessor for AccessoryControlModule.Layout);
    sub_25261FCC4(v10, type metadata accessor for AccessoryControlModule.Layout);
    sub_252372288(v13, &qword_27F4E2DC0, &unk_2526A8D70);
    if (v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV0C5GroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s22HomeAccessoryControlUI6DeviceV0C5GroupV10LayoutTypeO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Device.ControlGroup(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2526933B0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_2526933B0() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV0C5GroupV10LayoutTypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v25 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB840, &qword_2526A8910);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v20 = *(v19 + 56);
  sub_25261BB2C(a1, &v25 - v17, type metadata accessor for Device.ControlGroup.LayoutType);
  sub_25261BB2C(a2, &v18[v20], type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25261BB2C(v18, v15, type metadata accessor for Device.ControlGroup.LayoutType);
    v22 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25261BB2C(v18, v9, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_25261BC48(&v18[v20], v6, type metadata accessor for Device.Control);
      v23 = static Device.Control.== infix(_:_:)(v9, v6);
      sub_25261FCC4(v6, type metadata accessor for Device.Control);
      sub_25261FCC4(v9, type metadata accessor for Device.Control);
      goto LABEL_9;
    }

    sub_25261FCC4(v9, type metadata accessor for Device.Control);
LABEL_11:
    sub_252372288(v18, &qword_27F4DB840, &qword_2526A8910);
    v23 = 0;
    return v23 & 1;
  }

  sub_25261BB2C(v18, v12, type metadata accessor for Device.ControlGroup.LayoutType);
  v22 = *v12;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_11;
  }

LABEL_4:
  v23 = sub_2523E7CA4(v22, *&v18[v20]);

LABEL_9:
  sub_25261FCC4(v18, type metadata accessor for Device.ControlGroup.LayoutType);
  return v23 & 1;
}

void _s22HomeAccessoryControlUI6DeviceV0C6ModuleV8controls2inSayAC0C0VGSayAEG_tFZ_0(uint64_t a1)
{
  v40 = type metadata accessor for Device.Control(0);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v44);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Device.ControlGroup(0);
  v6 = *(v5 - 8);
  v41 = v5;
  *&v42 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.ControlModule(0) - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_19:
    v25 = v15[2];
    if (!v25)
    {
LABEL_39:

      return;
    }

    v26 = v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v45 = *(v42 + 72);
    v27 = MEMORY[0x277D84F90];
    v42 = xmmword_252694E90;
    while (1)
    {
      sub_25261BB2C(v26, v8, type metadata accessor for Device.ControlGroup);
      sub_25261BB2C(v8, v4, type metadata accessor for Device.ControlGroup.LayoutType);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v29 = v39;
        sub_25261BC48(v4, v39, type metadata accessor for Device.Control);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
        v30 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = v42;
        sub_25261BC48(v29, v28 + v30, type metadata accessor for Device.Control);
      }

      else
      {
        v28 = *v4;
      }

      sub_25261FCC4(v8, type metadata accessor for Device.ControlGroup);
      v31 = *(v28 + 16);
      v32 = v27[2];
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v33 <= v27[3] >> 1)
      {
        if (!*(v28 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v27 = sub_252369B34(isUniquelyReferenced_nonNull_native, v35, 1, v27);
        if (!*(v28 + 16))
        {
LABEL_21:

          if (v31)
          {
            goto LABEL_43;
          }

          goto LABEL_22;
        }
      }

      if ((v27[3] >> 1) - v27[2] < v31)
      {
        goto LABEL_45;
      }

      swift_arrayInitWithCopy();

      if (v31)
      {
        v36 = v27[2];
        v23 = __OFADD__(v36, v31);
        v37 = v36 + v31;
        if (v23)
        {
          goto LABEL_47;
        }

        v27[2] = v37;
      }

LABEL_22:
      v26 += v45;
      if (!--v25)
      {
        goto LABEL_39;
      }
    }
  }

  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v45 = *(v10 + 72);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25261BB2C(v14, v12, type metadata accessor for Device.ControlModule);
    v16 = *(v12 + 2);

    sub_25261FCC4(v12, type metadata accessor for Device.ControlModule);
    v17 = *(v16 + 16);
    v18 = v15[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    v20 = swift_isUniquelyReferenced_nonNull_native();
    if (v20 && v19 <= v15[3] >> 1)
    {
      if (!*(v16 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v15 = sub_252369B0C(v20, v21, 1, v15);
      if (!*(v16 + 16))
      {
LABEL_3:

        if (v17)
        {
          goto LABEL_41;
        }

        goto LABEL_4;
      }
    }

    if ((v15[3] >> 1) - v15[2] < v17)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithCopy();

    if (v17)
    {
      v22 = v15[2];
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (v23)
      {
        goto LABEL_46;
      }

      v15[2] = v24;
    }

LABEL_4:
    v14 += v45;
    if (!--v13)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_25261FCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *_s22HomeAccessoryControlUI6DeviceV0C6ModuleV18controlsDictionary4withSDy10Foundation4UUIDVAC0C0VGSayAEG_tFZ_0(uint64_t a1)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Device.Control(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  _s22HomeAccessoryControlUI6DeviceV0C6ModuleV8controls2inSayAC0C0VGSayAEG_tFZ_0(a1);
  v46 = *(v13 + 16);
  if (!v46)
  {

    return MEMORY[0x277D84F98];
  }

  v14 = 0;
  v45 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v47 = (v3 + 16);
  v40 = v3;
  v42 = (v3 + 8);
  v15 = MEMORY[0x277D84F98];
  v39 = v7;
  v43 = v12;
  v44 = v2;
  v41 = v13;
  while (v14 < *(v13 + 16))
  {
    v16 = *(v7 + 72);
    sub_25261BB2C(v45 + v16 * v14, v12, type metadata accessor for Device.Control);
    v17 = *v47;
    (*v47)(v5, v12, v2);
    v18 = v12;
    v19 = v9;
    sub_25261BB2C(v18, v9, type metadata accessor for Device.Control);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v15;
    v21 = sub_252367880(v5);
    v23 = v15[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_20;
    }

    v27 = v22;
    if (v15[3] < v26)
    {
      sub_25236BE1C(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_252367880(v5);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      v29 = v48;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v37 = v21;
    sub_25236D81C();
    v21 = v37;
    v29 = v48;
    if (v27)
    {
LABEL_3:
      v9 = v19;
      sub_2526208D4(v19, v29[7] + v21 * v16, type metadata accessor for Device.Control);

      v2 = v44;
      (*v42)(v5, v44);
      v12 = v43;
      sub_25261FCC4(v43, type metadata accessor for Device.Control);
      goto LABEL_4;
    }

LABEL_12:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v30 = v5;
    v31 = v40;
    v32 = v21;
    v2 = v44;
    v17((v29[6] + *(v40 + 72) * v21), v30, v44);
    v33 = v29[7] + v32 * v16;
    v9 = v19;
    sub_25261BC48(v19, v33, type metadata accessor for Device.Control);

    v34 = *(v31 + 8);
    v5 = v30;
    v34(v30, v2);
    v12 = v43;
    sub_25261FCC4(v43, type metadata accessor for Device.Control);
    v35 = v29[2];
    v25 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v29[2] = v36;
    v7 = v39;
LABEL_4:
    ++v14;
    v15 = v29;
    v13 = v41;
    if (v46 == v14)
    {

      return v29;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2526933E0();
  __break(1u);
  return result;
}

uint64_t sub_252620168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0, &unk_2526A8D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2526201D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DC0, &unk_2526A8D70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_252620248()
{
  result = qword_27F4E3878;
  if (!qword_27F4E3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3878);
  }

  return result;
}

uint64_t sub_25262029C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2526203C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25262040C()
{
  result = qword_27F4E3890;
  if (!qword_27F4E3890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAEF8, &qword_252694F58);
    sub_2526203C0(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3890);
  }

  return result;
}

unint64_t sub_25262050C()
{
  result = qword_27F4E38A0;
  if (!qword_27F4E38A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3138, &qword_2526A88E8);
    sub_25262040C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E38A0);
  }

  return result;
}

unint64_t sub_252620594()
{
  result = qword_27F4E38A8;
  if (!qword_27F4E38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E38A8);
  }

  return result;
}

void sub_252620610(uint64_t a1)
{
  type metadata accessor for Device.ControlGroup.LayoutType(319);
  if (v1 <= 0x3F)
  {
    sub_252404218();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252620694(uint64_t a1)
{
  sub_252620860(319, &qword_27F4E38D0, type metadata accessor for Device.Control, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Device.Control(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_252620760(uint64_t a1)
{
  sub_252404218();
  if (v1 <= 0x3F)
  {
    sub_252620860(319, &qword_27F4E38E8, type metadata accessor for Device.ControlGroup, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_252620860(319, &qword_27F4E38F0, type metadata accessor for AccessoryControlModule.Layout, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252620860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2526208D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Device.Control.viewType(with:)@<X0>(unsigned __int8 *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E38F8, &qword_2526AA180);
  MEMORY[0x28223BE20](v5);
  v7 = (&v21 - v6);
  v8 = *a1;
  result = type metadata accessor for Device.Control(0);
  v10 = *(v2 + *(result + 40));
  if (v10 != 16)
  {
    *a2 = v10;
    return result;
  }

  v11 = *(v5 + 48);
  sub_252621348(v2 + *(result + 20), v7, type metadata accessor for Device.Control.Kind);
  *(v7 + v11) = v8;
  type metadata accessor for Device.Control.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          result = sub_2526213B0(v7, type metadata accessor for Device.Control.Kind);
          *a2 = 7;
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);

        if (v8 == 3)
        {
          v13 = 6;
        }

        else
        {
          v13 = 5;
        }

        *a2 = v13;
        v14 = &qword_27F4DB2A0;
        v15 = &qword_25269E4A0;
        return sub_252372288(v7, v14, v15);
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400) + 48);
      *a2 = 13;
      v17 = type metadata accessor for AccessoryControl.PickerViewConfig;
      goto LABEL_33;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_252393F68(*v7, v7[1], v7[2], v7[3], v7[4]);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
      if (v8 > 1)
      {
        *a2 = v8 == 2;
      }

      else if (v8)
      {
        *a2 = 2;
      }

      else
      {
        *a2 = 3;
      }

      v17 = type metadata accessor for AccessoryControl.BinaryViewConfig;
LABEL_33:
      v19 = v17;
      v20 = v7 + v16;
      return sub_2526213B0(v20, v19);
    }

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
    *a2 = 4;
    sub_2526213B0(v7 + v18, type metadata accessor for AccessoryControl.IncrementalConfig);
    v14 = &qword_27F4DB218;
    v15 = &unk_252696080;
    return sub_252372288(v7, v14, v15);
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      result = sub_2526213B0(v7, type metadata accessor for Device.Control.Kind);
      *a2 = 10;
      return result;
    }

    if (EnumCaseMultiPayload != 8)
    {
      result = sub_2526213B0(v7, type metadata accessor for Device.Control.Kind);
      *a2 = 1;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

    *a2 = 11;
    v14 = &qword_27F4DB440;
    v15 = &qword_2526A1150;
    return sub_252372288(v7, v14, v15);
  }

  if (EnumCaseMultiPayload == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);

    *a2 = 8;
    v14 = &qword_27F4DB258;
    v15 = &unk_252696090;
    return sub_252372288(v7, v14, v15);
  }

  *a2 = 9;
  v19 = type metadata accessor for Device.Control.Kind;
  v20 = v7;
  return sub_2526213B0(v20, v19);
}

uint64_t ControlViewType.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.viewType(with:)@<X0>(unsigned __int8 *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3900, &unk_2526AA188);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = *a1;
  result = type metadata accessor for AccessoryControl(0);
  v19 = *(v2 + *(result + 36));
  if (v19 != 16)
  {
    *a2 = v19;
    return result;
  }

  v20 = *(v14 + 48);
  sub_252621348(v2 + *(result + 20), v16, type metadata accessor for AccessoryControl.State);
  v16[v20] = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_252621348(v16, v10, type metadata accessor for AccessoryControl.State);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0, &unk_2526A7360) + 48);
        *a2 = 13;
        sub_252372288(&v10[v32], &qword_27F4DAD68, &qword_2526A4D70);
        v22 = type metadata accessor for AccessoryControl.PickerViewConfig;
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 5)
      {
        sub_252621348(v16, v7, type metadata accessor for AccessoryControl.State);

        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0, &unk_2526A6A00) + 48);
        if (v17 == 3)
        {
          v27 = 6;
        }

        else
        {
          v27 = 5;
        }

        *a2 = v27;
        sub_252372288(&v7[v26], &qword_27F4DB298, &unk_2526A6320);
        return sub_2526213B0(v16, type metadata accessor for AccessoryControl.State);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_252621348(v16, v13, type metadata accessor for AccessoryControl.State);
        v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20) + 48);
        if (v17 > 1)
        {
          *a2 = v17 == 2;
        }

        else if (v17)
        {
          *a2 = 2;
        }

        else
        {
          *a2 = 3;
        }

        sub_252372288(&v13[v31], &qword_27F4DAD80, &unk_2526951A0);
        v33 = type metadata accessor for AccessoryControl.BinaryViewConfig;
        v34 = v13;
        goto LABEL_36;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_252621348(v16, v10, type metadata accessor for AccessoryControl.State);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0, &unk_252695A10);
        v24 = *(v23 + 48);
        v25 = *(v23 + 64);
        *a2 = 4;
        sub_252372288(&v10[v25], &qword_27F4DAD70, &unk_2526959C0);
        sub_252372288(&v10[v24], &qword_27F4DAD78, &unk_252695190);
        v22 = type metadata accessor for AccessoryControl.IncrementalConfig;
        goto LABEL_23;
      }
    }

LABEL_28:
    *a2 = 16;
    return sub_252372288(v16, &qword_27F4E3900, &unk_2526AA188);
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_252621348(v16, v10, type metadata accessor for AccessoryControl.State);

      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270, &unk_2526959F0) + 48);
      *a2 = 8;
      v29 = &qword_27F4DB278;
      v30 = &unk_2526959A0;
    }

    else
    {
      sub_252621348(v16, v10, type metadata accessor for AccessoryControl.State);

      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0, &unk_2526A6A10) + 48);
      *a2 = 10;
      v29 = &qword_27F4DB498;
      v30 = &unk_2526A6330;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_252621348(v16, v10, type metadata accessor for AccessoryControl.State);

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470, &unk_2526959E0) + 48);
    *a2 = 11;
    v29 = &qword_27F4DB450;
    v30 = &unk_252695990;
LABEL_26:
    sub_252372288(&v10[v28], v29, v30);
    return sub_2526213B0(v16, type metadata accessor for AccessoryControl.State);
  }

  if (EnumCaseMultiPayload != 10)
  {
    if (EnumCaseMultiPayload == 11)
    {
      sub_252621348(v16, v10, type metadata accessor for AccessoryControl.State);
      *a2 = 9;
      v22 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
LABEL_23:
      v33 = v22;
      v34 = v10;
LABEL_36:
      sub_2526213B0(v34, v33);
      return sub_2526213B0(v16, type metadata accessor for AccessoryControl.State);
    }

    goto LABEL_28;
  }

  *a2 = 7;
  return sub_2526213B0(v16, type metadata accessor for AccessoryControl.State);
}

uint64_t sub_252621348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2526213B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ControlViewType.description.getter()
{
  result = 0x697753656772614CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x696C53656772614CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6D6552616964654DLL;
      break;
    case 8:
      result = 0x74736F6D72656854;
      break;
    case 9:
      result = 0x6E41736D72616C41;
      break;
    case 0xA:
      v2 = 0x72656B636950;
      goto LABEL_17;
    case 0xB:
      v2 = 0x737574617453;
LABEL_17:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
      break;
    case 0xC:
      result = 0x7453726564696C53;
      break;
    case 0xD:
      result = 0x6C61636974726556;
      break;
    case 0xE:
      result = 0x6369506C65656857;
      break;
    case 0xF:
      result = 0x6B636950756E654DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252621608()
{
  result = qword_27F4E3908;
  if (!qword_27F4E3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for Device(uint64_t a1)
{
  result = qword_27F4E3930;
  if (!qword_27F4E3930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Device.init(id:name:icon:iconString:roomName:roomIds:isFavorite:showInDashboard:isTopLevelDevice:isActivated:foregroundColor:isReachable:tileStatusString:accessoryControlStatusString:tileStatusStringIconSymbolSuffix:hasDetailAttentionMessages:supportsToggle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24)
{
  v27 = type metadata accessor for Device(0);
  v28 = (a9 + v27[7]);
  v29 = (a9 + v27[8]);
  v30 = v27[12];
  v31 = sub_25268DA10();
  (*(*(v31 - 8) + 32))(a9, a1, v31);
  v32 = (a9 + v27[5]);
  *v32 = a2;
  v32[1] = a3;
  result = sub_252621A00(a4, a9 + v27[6]);
  *v28 = a5;
  v28[1] = a6;
  *(a9 + v27[10]) = a11;
  *(a9 + v27[11]) = a12;
  *(a9 + v30) = a13;
  *(a9 + v27[13]) = a14;
  *(a9 + v27[14]) = a15;
  *(a9 + v27[15]) = a16;
  v34 = (a9 + v27[16]);
  *v34 = a17;
  v34[1] = a18;
  v35 = (a9 + v27[17]);
  *v35 = a19;
  v35[1] = a20;
  v36 = (a9 + v27[18]);
  *v36 = a21;
  v36[1] = a22;
  *v29 = a7;
  v29[1] = a8;
  *(a9 + v27[9]) = a10;
  *(a9 + v27[19]) = a23;
  *(a9 + v27[20]) = a24;
  return result;
}

uint64_t sub_252621A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Device.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268DA10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Device.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 20));

  return v1;
}

void Device.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Device.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Device(0) + 24);

  return sub_252621C2C(a1, v3);
}

uint64_t sub_252621C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconDescriptor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Device.iconString.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 28));

  return v1;
}

void Device.iconString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Device.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 32));

  return v1;
}

void Device.roomName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

double Device.roomIds.getter()
{
  type metadata accessor for Device(0);

  return result;
}

void Device.roomIds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Device(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t Device.isFavorite.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Device.showInDashboard.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t Device.isTopLevelDevice.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Device.isActivated.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

double Device.foregroundColor.getter()
{
  type metadata accessor for Device(0);

  return result;
}

uint64_t Device.tileStatusString.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 64));

  return v1;
}

uint64_t Device.accessoryControlStatusString.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 68));

  return v1;
}

uint64_t Device.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 72));

  return v1;
}

uint64_t Device.hasDetailAttentionMessages.setter(char a1)
{
  result = type metadata accessor for Device(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t Device.hash(into:)(__int128 *a1)
{
  sub_25268DA10();
  sub_252622F78(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252692B30();
  v3 = type metadata accessor for Device(0);
  sub_252692C80();
  sub_252692C80();
  type metadata accessor for IconDescriptor(0);
  sub_25268F910();
  sub_252622F78(&qword_27F4DB560, MEMORY[0x277D165A0], MEMORY[0x277D165A8]);
  sub_252692B30();
  sub_252693480();
  if (*(v1 + v3[7] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v1 + v3[8] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  sub_2523D74EC(a1, *(v1 + v3[9]));
  sub_252693480();
  sub_252693480();
  if (*(v1 + v3[12]) != 2)
  {
    sub_252693480();
  }

  sub_252693480();
  sub_252693480();
  sub_2526922E0();
  sub_252693480();
  if (*(v1 + v3[16] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v1 + v3[17] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v1 + v3[18] + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  sub_252693480();
  return sub_252693480();
}

uint64_t Device.hashValue.getter()
{
  sub_252693460();
  Device.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_2526226D8()
{
  sub_252693460();
  Device.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25262271C(uint64_t a1)
{
  sub_252693460();
  Device.hash(into:)(v2);
  return sub_2526934C0();
}

uint64_t sub_252622758()
{
  v0 = type metadata accessor for IconDescriptor(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Device(0);
  __swift_allocate_value_buffer(v8, qword_27F4E3910);
  v9 = __swift_project_value_buffer(v8, qword_27F4E3910);
  sub_25268DA00();
  v10 = *(v1 + 28);
  v11 = *MEMORY[0x277D16578];
  v12 = sub_25268F910();
  (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
  strcpy(v3, "questionmark");
  v3[13] = 0;
  *(v3 + 7) = -5120;
  v3[*(v1 + 32)] = 0;
  v13 = sub_2526922F0();
  v14 = (v9 + v8[7]);
  v15 = (v9 + v8[8]);
  v16 = v8[12];
  (*(v5 + 32))(v9, v7, v4);
  v17 = v9 + v8[5];
  strcpy(v17, "Empty Device");
  *(v17 + 13) = 0;
  *(v17 + 14) = -5120;
  result = sub_252621A00(v3, v9 + v8[6]);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + v8[10]) = 0;
  *(v9 + v8[11]) = 0;
  *(v9 + v16) = 2;
  *(v9 + v8[13]) = 0;
  *(v9 + v8[14]) = v13;
  *(v9 + v8[15]) = 0;
  v19 = (v9 + v8[16]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v9 + v8[17]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v9 + v8[18]);
  *v21 = 0;
  v21[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *(v9 + v8[9]) = MEMORY[0x277D84FA0];
  *(v9 + v8[19]) = 0;
  *(v9 + v8[20]) = 0;
  return result;
}

uint64_t static Device.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4DAB50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Device(0);
  v3 = __swift_project_value_buffer(v2, qword_27F4E3910);
  return sub_252622EC8(v3, a1, type metadata accessor for Device);
}

uint64_t sub_252622A80(uint64_t (*a1)(uint64_t))
{
  v2 = sub_25268F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Device(0);

  v6 = sub_25268F4F0();
  v7 = a1(v6);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t _s22HomeAccessoryControlUI6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = type metadata accessor for Device(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2526933B0() & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = v4[6];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a1 + v10) == *(a2 + v10) && *(a1 + v10 + 8) == *(a2 + v10 + 8);
  if (!v13 && (sub_2526933B0() & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = type metadata accessor for IconDescriptor(0);
  if ((sub_25268F900() & 1) == 0 || *(v11 + *(v14 + 24)) != *(v12 + *(v14 + 24)))
  {
    goto LABEL_14;
  }

  v17 = v4[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_14;
    }

    v22 = *v18 == *v20 && v19 == v21;
    if (!v22 && (sub_2526933B0() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v21)
  {
    goto LABEL_14;
  }

  v23 = v4[8];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_2526933B0() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v27)
  {
    goto LABEL_14;
  }

  sub_252439154(*(a1 + v4[9]), *(a2 + v4[9]));
  if ((v28 & 1) == 0 || *(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]))
  {
    goto LABEL_14;
  }

  v29 = v4[12];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

  v15 = 0;
  if (v31 != 2 && ((v31 ^ v30) & 1) == 0)
  {
LABEL_40:
    if (*(a1 + v4[13]) != *(a2 + v4[13]) || (sub_252692280() & 1) == 0 || *(a1 + v4[15]) != *(a2 + v4[15]))
    {
      goto LABEL_14;
    }

    v32 = v4[16];
    v33 = (a1 + v32);
    v34 = *(a1 + v32 + 8);
    v35 = (a2 + v32);
    v36 = v35[1];
    if (v34)
    {
      if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v36)
    {
      goto LABEL_14;
    }

    v37 = v4[17];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 8);
    v40 = (a2 + v37);
    v41 = v40[1];
    if (v39)
    {
      if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_2526933B0() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v41)
    {
      goto LABEL_14;
    }

    v42 = v4[18];
    v43 = (a1 + v42);
    v44 = *(a1 + v42 + 8);
    v45 = (a2 + v42);
    v46 = v45[1];
    if (v44)
    {
      if (v46 && (*v43 == *v45 && v44 == v46 || (sub_2526933B0() & 1) != 0))
      {
LABEL_64:
        if (*(a1 + v4[19]) == *(a2 + v4[19]))
        {
          v15 = *(a1 + v4[20]) ^ *(a2 + v4[20]) ^ 1;
          return v15 & 1;
        }
      }
    }

    else if (!v46)
    {
      goto LABEL_64;
    }

LABEL_14:
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_252622EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252622F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_252623030(uint64_t a1)
{
  sub_25268DA10();
  if (v1 <= 0x3F)
  {
    type metadata accessor for IconDescriptor(319);
    if (v2 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DB5E0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2523FECCC(319);
        if (v4 <= 0x3F)
        {
          sub_2523E19E4(319, &qword_27F4DBBB8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *AccessoryControl.ViewSizeConstraint.init(minSize:maxSize:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

void sub_252623198()
{
  v0 = &unk_286484178;
  sub_252623868(&v0);
  off_27F4E3940 = v0;
}

double static AccessoryControl.ViewSize.largestToSmallest.getter()
{
  if (qword_27F4DAB58 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t AccessoryControl.ViewSize.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.ViewSizeConstraint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 4)
  {
    sub_252693480();
    if (v2 != 4)
    {
LABEL_3:
      sub_252693480();
      return MEMORY[0x2530A4FE0](v2);
    }
  }

  else
  {
    sub_252693480();
    MEMORY[0x2530A4FE0](v1);
    if (v2 != 4)
    {
      goto LABEL_3;
    }
  }

  return sub_252693480();
}

uint64_t AccessoryControl.ViewSizeConstraint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252693460();
  sub_252693480();
  if (v1 != 4)
  {
    MEMORY[0x2530A4FE0](v1);
  }

  sub_252693480();
  if (v2 != 4)
  {
    MEMORY[0x2530A4FE0](v2);
  }

  return sub_2526934C0();
}

uint64_t sub_252623460()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 4)
  {
    sub_252693480();
    if (v2 != 4)
    {
LABEL_3:
      sub_252693480();
      return MEMORY[0x2530A4FE0](v2);
    }
  }

  else
  {
    sub_252693480();
    MEMORY[0x2530A4FE0](v1);
    if (v2 != 4)
    {
      goto LABEL_3;
    }
  }

  return sub_252693480();
}

uint64_t sub_2526234E0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_252693460();
  sub_252693480();
  if (v2 != 4)
  {
    MEMORY[0x2530A4FE0](v2);
  }

  sub_252693480();
  if (v3 != 4)
  {
    MEMORY[0x2530A4FE0](v3);
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.ViewSizeConstraint.allowedViewSizes.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = MEMORY[0x277D84F90];
  if ((v1 | 4) == 4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_25237075C(0, 1, 1);
    v3 = v15;
    v5 = *(v15 + 16);
    v4 = *(v15 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_25237075C((v4 > 1), v5 + 1, 1);
      v3 = v15;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + v5 + 32) = 0;
  }

  if (v2)
  {
    if (v1 <= 4 && ((1 << v1) & 0x13) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25237075C(0, *(v3 + 16) + 1, 1);
      }

      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25237075C((v7 > 1), v8 + 1, 1);
      }

      *(v3 + 16) = v8 + 1;
      *(v3 + v8 + 32) = 1;
    }

    if (v2 != 1)
    {
      if (v1 <= 4 && v1 != 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25237075C(0, *(v3 + 16) + 1, 1);
        }

        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_25237075C((v9 > 1), v10 + 1, 1);
        }

        *(v3 + 16) = v10 + 1;
        *(v3 + v10 + 32) = 2;
      }

      if (v1 <= 4 && v2 >= 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25237075C(0, *(v3 + 16) + 1, 1);
        }

        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_25237075C((v11 > 1), v12 + 1, 1);
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + v12 + 32) = 3;
      }
    }
  }

  v13 = sub_2526247DC(v3, sub_252624AF0, &type metadata for AccessoryControl.ViewSize, sub_2524137A8);

  return v13;
}

BOOL AccessoryControl.ViewSizeConstraint.allows(size:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[1];
  if (v3 != 4 && v3 < v2)
  {
    return 0;
  }

  v5 = *v1;
  return v5 == 4 || v2 >= v5;
}

unsigned __int8 *AccessoryControl.ViewSizeConstraint.closestAllowedSize(to:)@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *result;
  v4 = *result;
  v5 = *v2;
  v6 = v2[1];
  if (v4 <= v5)
  {
    v7 = *v2;
  }

  else
  {
    v7 = *result;
  }

  if (v5 != 4)
  {
    v3 = v7;
  }

  if (v6 < v4 && v6 != 4)
  {
    v3 = v2[1];
  }

  *a2 = v3;
  return result;
}

void sub_252623868(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25262435C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_252693360();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v14 >= v11)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252692DC0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2526239A0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_2526239A0(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_252624154(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_252623EDC((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v12 < v11) ^ (v14 >= v15);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v12 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v12 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_252368690(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_252368690((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_252623EDC((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_252624154(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_2526240C8(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v28 >= v25)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_252623EDC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v19 < v18)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (*v4 >= v11)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_2526240C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_252624154(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_252624168(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAED8, &qword_252694F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL _s22HomeAccessoryControlUI0bC0V18ViewSizeConstraintV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v4)
  {
    return 0;
  }

  if (v3 != 4)
  {
    return v5 != 4 && v3 == v5;
  }

  return v5 == 4;
}

uint64_t sub_2526243FC(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_252624B98(&qword_27F4E3968, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier, &protocol conformance descriptor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  result = MEMORY[0x2530A4A00](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_25240D380(v12, v5);
      sub_252412450(v8, v5);
      sub_25240D3E4(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_252624564(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A4A00](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252412AD0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2526245D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HMCharacteristicValueTargetHumidifierDehumidifierState(0);
  v4 = v3;
  v5 = sub_252624B98(&qword_27F4E3988, type metadata accessor for HMCharacteristicValueTargetHumidifierDehumidifierState, &unk_2526947E4);
  result = MEMORY[0x2530A4A00](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_252412BB8(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_252624684(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HMCharacteristicValueTargetAirPurifierState(0);
  v4 = v3;
  v5 = sub_252624B98(&qword_27F4E3990, type metadata accessor for HMCharacteristicValueTargetAirPurifierState, &unk_252694C94);
  result = MEMORY[0x2530A4A00](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_252412BE0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_252624730(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HMCharacteristicValueTargetSecuritySystemState(0);
  v4 = v3;
  v5 = sub_252624B98(&qword_27F4E3980, type metadata accessor for HMCharacteristicValueTargetSecuritySystemState, &unk_252694B54);
  result = MEMORY[0x2530A4A00](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_252412C08(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2526247DC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530A4A00](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_25262485C()
{
  result = qword_27F4E3948;
  if (!qword_27F4E3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3948);
  }

  return result;
}

unint64_t sub_2526248B4()
{
  result = qword_27F4E3950;
  if (!qword_27F4E3950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3958, &qword_2526AA480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3950);
  }

  return result;
}

unint64_t sub_25262491C()
{
  result = qword_27F4E3960;
  if (!qword_27F4E3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3960);
  }

  return result;
}

uint64_t _s18ViewSizeConstraintVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *_s18ViewSizeConstraintVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252624AF0()
{
  result = qword_27F4E3970;
  if (!qword_27F4E3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3970);
  }

  return result;
}

unint64_t sub_252624B44()
{
  result = qword_27F4E3978;
  if (!qword_27F4E3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3978);
  }

  return result;
}

uint64_t sub_252624B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ControlModuleView(uint64_t a1)
{
  result = qword_27F4E3998;
  if (!qword_27F4E3998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252624C58(uint64_t a1)
{
  type metadata accessor for Device(319);
  if (v1 <= 0x3F)
  {
    sub_252624D24(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_252420F5C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252624D24(uint64_t a1)
{
  if (!qword_27F4E39A8)
  {
    type metadata accessor for Device.ControlModule(255);
    v1 = sub_252692750();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E39A8);
    }
  }
}

double *sub_252624D98(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = a1;
  v63 = a2 & 1;
  v64 = a2;
  v46 = sub_252692A70();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_252692F80();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40D8, &qword_2526AAC58);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40E0, &qword_2526AAC60);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v50 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40E8, &qword_2526AAC68);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40F0, &qword_2526AAC70);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19D0, &unk_2526A59D0);
  MEMORY[0x28223BE20](v59);
  v58 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v39 - v15;
  v16 = sub_252692FA0();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252692F60();
  MEMORY[0x28223BE20](v19);
  v20 = sub_252692AB0();
  MEMORY[0x28223BE20](v20 - 8);
  v3[4] = 0.0;
  v65 = sub_25242D500();
  v54 = "lowerRange upperRange ";
  sub_252692AA0();
  v66 = MEMORY[0x277D84F90];
  sub_252666040(&qword_27F4DED10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18, &qword_2526A0280);
  v21 = v11;
  sub_252400FC8(&qword_27F4DED20, &qword_27F4DED18, &qword_2526A0280, MEMORY[0x277D83970]);
  v22 = v3;
  sub_252693190();
  (*(v55 + 104))(v18, *MEMORY[0x277D85260], v56);
  v23 = *&v62;
  *(v3 + 5) = sub_252692FD0();
  v24 = *(*v3 + 120);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19D8, &unk_2526A59E0);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  sub_25237153C(v26, v58, &qword_27F4E19D0, &unk_2526A59D0);
  v27 = v60;
  sub_252690660();
  sub_252372288(v26, &qword_27F4E19D0, &unk_2526A59D0);
  (*(v61 + 32))(v22 + v24, v27, v21);
  v22[2] = v23;
  v28 = v64;
  *(v22 + 24) = v63;
  if (v28)
  {
    return v22;
  }

  swift_beginAccess();
  v29 = v51;
  sub_252690670();
  swift_endAccess();
  sub_252400FC8(&qword_27F4E40F8, &qword_27F4E40D8, &qword_2526AAC58, MEMORY[0x277CBCEC8]);
  v30 = v50;
  v31 = v53;
  sub_2526906C0();
  result = (*(v52 + 8))(v29, v31);
  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < 9.22337204e18)
  {
    v33 = v42;
    *v42 = v23;
    (*(v44 + 104))(v33, *MEMORY[0x277D85178], v46);
    v34 = v47;
    sub_252692F90();
    v66 = *(v22 + 5);
    sub_252400FC8(&qword_27F4E4100, &qword_27F4E40E0, &qword_2526AAC60, MEMORY[0x277CBCB10]);
    sub_252666040(&qword_27F4DED08, sub_25242D500, MEMORY[0x277D85228]);
    v35 = v39;
    v36 = v41;
    sub_2526906D0();
    (*(v48 + 8))(v34, v49);
    (*(v40 + 8))(v30, v36);
    sub_252400FC8(&qword_27F4E4108, &qword_27F4E40E8, &qword_2526AAC68, MEMORY[0x277CBCD20]);
    v37 = v45;
    v38 = sub_2526906E0();
    (*(v43 + 8))(v35, v37);
    *(v22 + 4) = v38;

    return v22;
  }

LABEL_9:
  __break(1u);
  return result;
}