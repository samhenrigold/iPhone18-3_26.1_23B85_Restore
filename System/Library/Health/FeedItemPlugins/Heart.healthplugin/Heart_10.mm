unint64_t sub_29D7A2650()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29D7A26FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D7A5344(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D7A2730(uint64_t a1)
{
  v2 = sub_29D7A5B78();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A276C(uint64_t a1)
{
  v2 = sub_29D7A5B78();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A27A8(uint64_t a1)
{
  v2 = sub_29D7A59D4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A27E4(uint64_t a1)
{
  v2 = sub_29D7A59D4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2820(uint64_t a1)
{
  v2 = sub_29D7A5980();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A285C(uint64_t a1)
{
  v2 = sub_29D7A5980();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2898(uint64_t a1)
{
  v2 = sub_29D7A5AD0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A28D4(uint64_t a1)
{
  v2 = sub_29D7A5AD0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2910(uint64_t a1)
{
  v2 = sub_29D7A5A7C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A294C(uint64_t a1)
{
  v2 = sub_29D7A5A7C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2988(uint64_t a1)
{
  v2 = sub_29D7A5B24();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A29C4(uint64_t a1)
{
  v2 = sub_29D7A5B24();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2A00(uint64_t a1)
{
  v2 = sub_29D7A5A28();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A2A3C(uint64_t a1)
{
  v2 = sub_29D7A5A28();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2AAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v23 = &v20 - v5;
  sub_29D7A5BCC(0, &qword_2A17B49B8, sub_29D7A4914, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_29D693E2C(a1, a1[3]);
  sub_29D7A4914();
  v16 = v24;
  sub_29D93AEC8();
  if (!v16)
  {
    v17 = v22;
    sub_29D7A48AC(&qword_2A17B49C8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction, &unk_29D948620);
    v18 = v23;
    sub_29D93AC48();
    (*(v17 + 8))(v10, v7);
    sub_29D7A4988(v18, v14);
    sub_29D7A5C34(v14, v21, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  }

  sub_29D69417C(a1);
  return sub_29D7A5D80(v14, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
}

uint64_t sub_29D7A2DC0(uint64_t a1)
{
  v2 = sub_29D7A4914();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A2DFC(uint64_t a1)
{
  v2 = sub_29D7A4914();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2E50(void *a1)
{
  sub_29D7A5BCC(0, &qword_2A17B49D0, sub_29D7A4914, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D7A4914();
  sub_29D93AED8();
  type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  sub_29D7A48AC(&qword_2A17B49D8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction, &unk_29D9485F8);
  sub_29D93ACD8();
  return (*(v4 + 8))(v7, v3);
}

void sub_29D7A3000()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D9346B8();
  v126 = *(v1 - 8);
  v127 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v125 = v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A4A08(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v129 = v123 - v6;
  v7 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v128 = v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v124 = v123 - v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v131 = v123 - v15;
  v16 = sub_29D934C58();
  v137 = *(v16 - 8);
  v138 = v16;
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v130 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v136 = v123 - v21;
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  v133 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v134 = v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v132 = v123 - v27;
  v28 = sub_29D936638();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A4A08(0, &qword_2A17B49E0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  MEMORY[0x2A1C7C4A8](v33 - 8, v34);
  v36 = v123 - v35;
  v37 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v38 = *(v37 - 8);
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v42 = v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40, v43);
  v45 = v123 - v44;
  v135 = v0;
  sub_29D936B88();
  sub_29D7A48AC(&qword_2A17B49E8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData, &unk_29D9483BC);
  sub_29D7A48AC(&qword_2A17B49F0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData, &unk_29D948394);
  sub_29D936628();
  v139 = *(v29 + 8);
  v140 = v28;
  v139(v32, v28);
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    sub_29D7A4ADC(v36, v45, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
    v54 = v45;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v55 = sub_29D937898();
    v56 = sub_29D69C6C0(v55, qword_2A1A2C008);
    sub_29D7A5C34(v45, v42, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
    v123[1] = v56;
    v57 = sub_29D937878();
    v58 = sub_29D93A2A8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v142[0] = v60;
      *v59 = 136315394;
      v61 = sub_29D93AF08();
      v123[0] = v45;
      v63 = sub_29D6C2364(v61, v62, v142);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      sub_29D7A4A5C(v42, v132);
      v64 = sub_29D939DA8();
      v66 = v65;
      sub_29D7A5D80(v42, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
      v67 = sub_29D6C2364(v64, v66, v142);
      v54 = v123[0];

      *(v59 + 14) = v67;
      _os_log_impl(&dword_29D677000, v57, v58, "[%s] Did select cell with tap action %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v60, -1, -1);
      MEMORY[0x29ED6BE30](v59, -1, -1);
    }

    else
    {

      sub_29D7A5D80(v42, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
    }

    v68 = v136;
    sub_29D936B88();
    v136 = sub_29D936618();
    v70 = v139;
    v69 = v140;
    v139(v32, v140);
    sub_29D936B88();
    sub_29D936608();
    v70(v32, v69);
    sub_29D693E2C(v142, v143);
    v71 = sub_29D936588();
    sub_29D69417C(v142);
    sub_29D936B88();
    sub_29D9347B8();
    v70(v32, v69);
    v72 = v134;
    sub_29D7A4A5C(v54, v134);
    v73 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
    {
      v74 = v71;
      v75 = sub_29D937878();
      v76 = sub_29D93A288();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v142[0] = v78;
        *v77 = 136315138;
        v79 = sub_29D93AF08();
        v81 = sub_29D6C2364(v79, v80, v142);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_29D677000, v75, v76, "[%s] No tap action given (likely due to error on generation side, doing nothing", v77, 0xCu);
        sub_29D69417C(v78);
        MEMORY[0x29ED6BE30](v78, -1, -1);
        MEMORY[0x29ED6BE30](v77, -1, -1);
      }
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v97 = v131;
          sub_29D7A4ADC(v72, v131, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v98 = v124;
          sub_29D7A5C34(v97, v124, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v99 = v137;
          v100 = v138;
          v101 = v130;
          (*(v137 + 16))(v130, v68, v138);
          v102 = objc_allocWithZone(type metadata accessor for CardioFitnessHealthChecklistSettingsViewController(0));
          v103 = v71;
          v104 = sub_29D7790B4(v103, v98, v101, 1);

          sub_29D9365C8();
          v105 = sub_29D93A028();
          v106 = v129;
          (*(*(v105 - 8) + 56))(v129, 1, 1, v105);
          sub_29D939FF8();
          v107 = v103;
          v108 = sub_29D939FE8();
          v109 = swift_allocObject();
          v110 = MEMORY[0x29EDCA390];
          v109[2] = v108;
          v109[3] = v110;
          v111 = ObjectType;
          v109[4] = v107;
          v109[5] = v111;
          sub_29D6BEBA4(0, 0, v106, &unk_29D9484A0, v109);

          v112 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
          v113 = v136;
          [v136 presentViewController:v112 animated:1 completion:0];

          sub_29D7A5D80(v97, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          (*(v99 + 8))(v68, v100);
          goto LABEL_18;
        }

        v83 = v71;
        if (EnumCaseMultiPayload == 1)
        {
          v84 = v128;
          sub_29D7A4ADC(v72, v128, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v85 = v131;
          sub_29D7A5C34(v84, v131, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v86 = v130;
          (*(v137 + 16))(v130, v68, v138);
          v87 = objc_allocWithZone(type metadata accessor for CardioFitnessHealthChecklistSettingsViewController(0));
          v88 = v83;
          v89 = sub_29D7790B4(v88, v85, v86, 0);

          v90 = v136;
          v91 = [v136 navigationController];
          if (v91)
          {
            v92 = v91;
            [v91 pushViewController:v89 animated:1];
          }

          else
          {
          }

          sub_29D7A5D80(v84, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        }

        else
        {
          sub_29D936B88();
          sub_29D936608();
          v139(v32, v140);
          sub_29D693E2C(v142, v143);
          v119 = sub_29D936588();
          v120 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
          v121 = sub_29D827BF4(v119, 0);
          sub_29D69417C(v142);
          v122 = v136;
          [v136 presentViewController:v121 animated:1 completion:0];
        }

LABEL_17:
        (*(v137 + 8))(v68, v138);
LABEL_18:
        sub_29D7A5D80(v54, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
        return;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v114 = v71;
        sub_29D936B88();
        v115 = sub_29D936618();
        v139(v32, v140);
        sub_29D93A388();

        v116 = objc_allocWithZone(type metadata accessor for HealthDetailsModalViewController());
        v117 = sub_29D7A5540(v114, v142);

        v118 = v136;
        [v136 presentViewController:v117 animated:1 completion:0];

        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v93 = v71;
        v95 = v126;
        v94 = v127;
        v96 = v125;
        (*(v126 + 104))(v125, *MEMORY[0x29EDC1720], v127);
        sub_29D9346A8();

        (*(v95 + 8))(v96, v94);
        goto LABEL_17;
      }

      sub_29D8AA9B4();
      sub_29D939DF8();
    }

    goto LABEL_17;
  }

  sub_29D7A5DE0(v36, &qword_2A17B49E0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v46 = sub_29D937898();
  sub_29D69C6C0(v46, qword_2A1A2C008);
  v47 = sub_29D937878();
  v48 = sub_29D93A298();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v142[0] = v50;
    *v49 = 136315138;
    v51 = sub_29D93AF08();
    v53 = sub_29D6C2364(v51, v52, v142);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_29D677000, v47, v48, "[%s] Could not access action handler user data!", v49, 0xCu);
    sub_29D69417C(v50);
    MEMORY[0x29ED6BE30](v50, -1, -1);
    MEMORY[0x29ED6BE30](v49, -1, -1);
  }
}

uint64_t sub_29D7A3F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_29D939FF8();
  v5[20] = sub_29D939FE8();
  v7 = sub_29D939FD8();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2A1C73D48](sub_29D7A4014, v7, v6);
}

uint64_t sub_29D7A4014()
{
  v1 = [*(v0 + 144) featureAvailabilityProvidingForFeatureIdentifier_];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v3 = sub_29D93A6D8();
    v4 = *MEMORY[0x29EDBA788];
    *(v0 + 192) = v3;
    *(v0 + 200) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 216;
    *(v0 + 24) = sub_29D7A41D8;
    v5 = swift_continuation_init();
    sub_29D6ACB00(0);
    *(v0 + 136) = v6;
    *(v0 + 80) = MEMORY[0x29EDCA5F8];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_29D8D0FE0;
    *(v0 + 104) = &unk_2A2445650;
    *(v0 + 112) = v5;
    [v2 setFeatureSettingNumber:v3 forKey:v4 completion:v0 + 80];

    return MEMORY[0x2A1C73CC0](v0 + 16);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_29D7A41D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_29D7A4388;
  }

  else
  {
    v5 = sub_29D7A4308;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D7A4308()
{
  v2 = v0[24];
  v1 = v0[25];

  sub_29D936978();

  v3 = v0[1];

  return v3();
}

uint64_t sub_29D7A4388()
{
  v21 = v0;
  v1 = v0[25];
  v2 = v0[24];

  swift_willThrow();
  sub_29D936978();

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = v0[26];
  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Error when setting initial enablement: %@", v10, 0x16u);
    sub_29D7A5D80(v11, sub_29D6ACA98);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_29D7A45C4(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D7A4800(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D7A48AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D7A4914()
{
  result = qword_2A17B49C0;
  if (!qword_2A17B49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B49C0);
  }

  return result;
}

uint64_t sub_29D7A4988(uint64_t a1, uint64_t a2)
{
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D7A4A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7A4A5C(uint64_t a1, uint64_t a2)
{
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7A4ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7A4B44(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  v5 = MEMORY[0x2A1C7C4A8](v44, v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v43 - v17;
  sub_29D7A5C9C(0);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 56);
  sub_29D7A5C34(a1, v23, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  sub_29D7A5C34(a2, &v23[v24], type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v33 = swift_getEnumCaseMultiPayload();
      v32 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
      if (v33 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v31 = swift_getEnumCaseMultiPayload();
      v32 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
      if (v31 != 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v36 = swift_getEnumCaseMultiPayload();
      v32 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
      if (v36 != 5)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_29D7A5C34(v23, v18, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_29D7A4ADC(&v23[v24], v10, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        if (*v18 == *v10 && (sub_29D9346D8() & 1) != 0 && (sub_29D696F08(*&v18[*(v44 + 24)], *&v10[*(v44 + 24)]) & 1) != 0)
        {
          v38 = &v18[*(v44 + 28)];
          v39 = *(v38 + 2);
          v46 = *(v38 + 1);
          v47 = v39;
          v45 = *v38;
          v40 = &v10[*(v44 + 28)];
          v41 = *(v40 + 2);
          v49 = *(v40 + 1);
          v50 = v41;
          v48 = *v40;
          if (sub_29D8B38EC(&v45, &v48))
          {
            sub_29D7A5D80(v10, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
            v30 = v18;
            goto LABEL_29;
          }
        }

        sub_29D7A5D80(v10, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v37 = v18;
LABEL_31:
        sub_29D7A5D80(v37, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v34 = 0;
        goto LABEL_32;
      }

      v15 = v18;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_29D7A5C34(v23, v15, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_29D7A4ADC(&v23[v24], v7, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        if (*v15 == *v7 && (sub_29D9346D8() & 1) != 0 && (sub_29D696F08(*&v15[*(v44 + 24)], *&v7[*(v44 + 24)]) & 1) != 0)
        {
          v26 = &v15[*(v44 + 28)];
          v27 = *(v26 + 2);
          v46 = *(v26 + 1);
          v47 = v27;
          v45 = *v26;
          v28 = &v7[*(v44 + 28)];
          v29 = *(v28 + 2);
          v49 = *(v28 + 1);
          v50 = v29;
          v48 = *v28;
          if (sub_29D8B38EC(&v45, &v48))
          {
            sub_29D7A5D80(v7, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
            v30 = v15;
LABEL_29:
            sub_29D7A5D80(v30, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
            v34 = 1;
LABEL_32:
            v32 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
            goto LABEL_33;
          }
        }

        sub_29D7A5D80(v7, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v37 = v15;
        goto LABEL_31;
      }

LABEL_16:
      sub_29D7A5D80(v15, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
LABEL_22:
      v34 = 0;
      v32 = sub_29D7A5C9C;
      goto LABEL_33;
    }

    v35 = swift_getEnumCaseMultiPayload();
    v32 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
    if (v35 != 2)
    {
      goto LABEL_22;
    }
  }

  v34 = 1;
LABEL_33:
  sub_29D7A5D80(v23, v32);
  return v34;
}

BOOL sub_29D7A5070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v22 - v11;
  sub_29D7A5D00(0);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_29D7A4A5C(a1, v17);
  sub_29D7A4A5C(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_29D7A4A5C(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_29D7A4ADC(&v17[v18], v8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      v21 = sub_29D7A4B44(v12, v8);
      sub_29D7A5D80(v8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      sub_29D7A5D80(v12, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      sub_29D7A5DE0(v17, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      return (v21 & 1) != 0;
    }

    sub_29D7A5D80(v12, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
LABEL_6:
    sub_29D7A5D80(v17, sub_29D7A5D00);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_29D7A5DE0(v17, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  return 1;
}

uint64_t sub_29D7A5344(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029D9597F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029D961DD0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029D959810 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029D961DF0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000029D961E10 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029D961E30 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_29D7A5540(void *a1, void *a2)
{
  v3 = v2;
  sub_29D6945AC(a2, v15);
  v6 = objc_allocWithZone(sub_29D936F58());
  v7 = a1;
  v8 = sub_29D936F48();
  [v8 setAccessType_];
  v14.receiver = v3;
  v14.super_class = type metadata accessor for HealthDetailsModalViewController();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v14, sel_initWithRootViewController_, v9);
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v10 action:sel_dismissPresentedViewController];
  v12 = [v9 navigationItem];

  [v12 setLeftBarButtonItem_];
  sub_29D69417C(a2);
  return v10;
}

uint64_t sub_29D7A566C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D7A3F7C(a1, v4, v5, v7, v6);
}

uint64_t sub_29D7A5768(uint64_t a1)
{
  result = type metadata accessor for CardioFitnessHealthChecklistSettingsState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D7A57F0(uint64_t a1)
{
  sub_29D7A4A08(319, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29D7A587C()
{
  result = qword_2A17B4A08;
  if (!qword_2A17B4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A08);
  }

  return result;
}

unint64_t sub_29D7A58D4()
{
  result = qword_2A17B4A10;
  if (!qword_2A17B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A10);
  }

  return result;
}

unint64_t sub_29D7A592C()
{
  result = qword_2A17B4A18;
  if (!qword_2A17B4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A18);
  }

  return result;
}

unint64_t sub_29D7A5980()
{
  result = qword_2A17B4A28;
  if (!qword_2A17B4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A28);
  }

  return result;
}

unint64_t sub_29D7A59D4()
{
  result = qword_2A17B4A38;
  if (!qword_2A17B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A38);
  }

  return result;
}

unint64_t sub_29D7A5A28()
{
  result = qword_2A17B4A48;
  if (!qword_2A17B4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A48);
  }

  return result;
}

unint64_t sub_29D7A5A7C()
{
  result = qword_2A17B4A58;
  if (!qword_2A17B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A58);
  }

  return result;
}

unint64_t sub_29D7A5AD0()
{
  result = qword_2A17B4A68;
  if (!qword_2A17B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A68);
  }

  return result;
}

unint64_t sub_29D7A5B24()
{
  result = qword_2A17B4A78;
  if (!qword_2A17B4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A78);
  }

  return result;
}

unint64_t sub_29D7A5B78()
{
  result = qword_2A17B4A88;
  if (!qword_2A17B4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A88);
  }

  return result;
}

void sub_29D7A5BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D7A5C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D7A5C9C(uint64_t a1)
{
  if (!qword_2A17B4AD8)
  {
    type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B4AD8);
    }
  }
}

void sub_29D7A5D00(uint64_t a1)
{
  if (!qword_2A17B4AE0)
  {
    sub_29D7A4A08(255, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B4AE0);
    }
  }
}

uint64_t sub_29D7A5D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7A5DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7A4A08(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D7A5EB0()
{
  result = qword_2A17B4AE8;
  if (!qword_2A17B4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4AE8);
  }

  return result;
}

unint64_t sub_29D7A5F08()
{
  result = qword_2A17B4AF0;
  if (!qword_2A17B4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4AF0);
  }

  return result;
}

unint64_t sub_29D7A5F60()
{
  result = qword_2A17B4AF8;
  if (!qword_2A17B4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4AF8);
  }

  return result;
}

unint64_t sub_29D7A5FB8()
{
  result = qword_2A17B4B00;
  if (!qword_2A17B4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B00);
  }

  return result;
}

unint64_t sub_29D7A6010()
{
  result = qword_2A17B4B08;
  if (!qword_2A17B4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B08);
  }

  return result;
}

unint64_t sub_29D7A6068()
{
  result = qword_2A17B4B10;
  if (!qword_2A17B4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B10);
  }

  return result;
}

unint64_t sub_29D7A60C0()
{
  result = qword_2A17B4B18;
  if (!qword_2A17B4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B18);
  }

  return result;
}

unint64_t sub_29D7A6118()
{
  result = qword_2A17B4B20;
  if (!qword_2A17B4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B20);
  }

  return result;
}

unint64_t sub_29D7A6170()
{
  result = qword_2A17B4B28;
  if (!qword_2A17B4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B28);
  }

  return result;
}

unint64_t sub_29D7A61C8()
{
  result = qword_2A17B4B30;
  if (!qword_2A17B4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B30);
  }

  return result;
}

unint64_t sub_29D7A6220()
{
  result = qword_2A17B4B38;
  if (!qword_2A17B4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B38);
  }

  return result;
}

unint64_t sub_29D7A6278()
{
  result = qword_2A17B4B40;
  if (!qword_2A17B4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B40);
  }

  return result;
}

unint64_t sub_29D7A62D0()
{
  result = qword_2A17B4B48;
  if (!qword_2A17B4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B48);
  }

  return result;
}

unint64_t sub_29D7A6328()
{
  result = qword_2A17B4B50;
  if (!qword_2A17B4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B50);
  }

  return result;
}

unint64_t sub_29D7A6380()
{
  result = qword_2A17B4B58;
  if (!qword_2A17B4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B58);
  }

  return result;
}

unint64_t sub_29D7A63D8()
{
  result = qword_2A17B4B60;
  if (!qword_2A17B4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B60);
  }

  return result;
}

unint64_t sub_29D7A6430()
{
  result = qword_2A17B4B68;
  if (!qword_2A17B4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B68);
  }

  return result;
}

void sub_29D7A6488(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_29D935E88();
      sub_29D7ABF08(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_29D7A658C(unint64_t a1)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  if (a1 > 1)
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v13 = qword_2A1A2BE98;
    (*(v5 + 16))(v9, v12, v4);
    sub_29D935E88();
    v14 = v13;
    sub_29D933A98();
    v15 = sub_29D939D98();
    (*(v5 + 8))(v12, v4);
    return v15;
  }

  return result;
}

uint64_t sub_29D7A67FC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_29D9340F8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_29D6C36D8(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_29D7B072C(0, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = sub_29D937898();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7A6A74, 0, 0);
}

uint64_t sub_29D7A6A74()
{
  v48 = v0;
  swift_getObjectType();
  sub_29D7B08FC(&unk_2A1A23AB0, v1, type metadata accessor for BloodPressureJournalSummaryExecutor, &unk_29D948E48);
  sub_29D933F28();
  sub_29D937838();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[29];
  v6 = v0[23];
  v7 = v0[24];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47[0] = v9;
    *v8 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, v47);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v47);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: Running workplan", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v0[30] = v13;
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  sub_29D7AB8A8(0);
  sub_29D937448();
  v17 = sub_29D939AE8();
  v0[31] = v17;
  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    sub_29D937838();
    v18 = v17;
    v19 = sub_29D937878();
    v20 = sub_29D93A2A8();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[28];
    v23 = v0[23];
    if (v21)
    {
      v24 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47[0] = v46;
      *v24 = 136446722;
      v25 = sub_29D93AF08();
      v27 = sub_29D6C2364(v25, v26, v47);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v47);
      *(v24 + 22) = 2080;
      v28 = v18;
      v29 = [v28 description];
      v44 = v22;
      v45 = v23;
      v30 = sub_29D939D68();
      v31 = v18;
      v33 = v32;

      v34 = sub_29D6C2364(v30, v33, v47);
      v18 = v31;

      *(v24 + 24) = v34;
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s]: Making feed item with %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);

      v35 = v44;
      v36 = v45;
    }

    else
    {

      v35 = v22;
      v36 = v23;
    }

    v13(v35, v36);
    v41 = swift_task_alloc();
    v0[32] = v41;
    *v41 = v0;
    v41[1] = sub_29D7A704C;
    v42 = v0[19];

    return sub_29D7A8094(v42, v18);
  }

  else
  {
    v38 = v0[5];
    v37 = v0[6];
    sub_29D693E2C(v0 + 2, v38);
    v39 = swift_task_alloc();
    v0[36] = v39;
    *v39 = v0;
    v39[1] = sub_29D7A7AD8;
    v40 = MEMORY[0x29EDCA190];

    return MEMORY[0x2A1C64D80](v40, v38, v37);
  }
}

uint64_t sub_29D7A704C()
{

  return MEMORY[0x2A1C73D48](sub_29D7A7148, 0, 0);
}

uint64_t sub_29D7A7148(uint64_t a1)
{
  v52 = v1;
  v2 = v1[31];
  v4 = v1[18];
  v3 = v1[19];
  sub_29D937838();
  sub_29D7AF2F0(v3, v4, sub_29D6C36D8);
  v5 = v2;
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[31];
    v48 = v1[27];
    v49 = v1[30];
    v47 = v1[23];
    v9 = v1[17];
    v46 = v1[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51 = v11;
    *v10 = 136446978;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v51);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, &v51);
    *(v10 + 22) = 2080;
    v15 = [v8 conciseDescription];
    v16 = sub_29D939D68();
    v18 = v17;

    v19 = sub_29D6C2364(v16, v18, &v51);

    *(v10 + 24) = v19;
    *(v10 + 32) = 2080;
    sub_29D7AF2F0(v46, v9, sub_29D6C36D8);
    v20 = sub_29D939DA8();
    v22 = v21;
    sub_29D7B079C(v46, sub_29D6C36D8);
    v23 = sub_29D6C2364(v20, v22, &v51);

    *(v10 + 34) = v23;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Journal %s new feed item: %s ", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);

    v49(v48, v47);
  }

  else
  {
    v24 = v1[30];
    v25 = v1[27];
    v26 = v1[23];
    v27 = v1[18];

    sub_29D7B079C(v27, sub_29D6C36D8);
    v24(v25, v26);
  }

  v28 = v1[19];
  v29 = v1[15];
  v30 = v1[16];
  v31 = v1[14];
  v33 = v1[10];
  v32 = v1[11];
  v34 = v1[5];
  v50 = v1[6];
  sub_29D693E2C(v1 + 2, v34);
  sub_29D7ABC94(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = swift_allocObject();
  sub_29D7AF2F0(v28, v36 + v35, sub_29D6C36D8);
  sub_29D7AF2F0(v36 + v35, v30, sub_29D6C36D8);
  sub_29D6C37D4(v30, v29);
  if ((*(v32 + 48))(v29, 1, v33) == 1)
  {
    sub_29D7B079C(v1[15], sub_29D6C36D8);
    v37 = MEMORY[0x29EDCA190];
  }

  else
  {
    v38 = *(v1[11] + 32);
    v38(v1[12], v1[15], v1[10]);
    v37 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_29D68F864(0, *(v37 + 2) + 1, 1, v37);
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_29D68F864((v39 > 1), v40 + 1, 1, v37);
    }

    v42 = v1[11];
    v41 = v1[12];
    v43 = v1[10];
    *(v37 + 2) = v40 + 1;
    v38(&v37[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40], v41, v43);
  }

  v1[33] = v37;
  swift_setDeallocating();
  sub_29D7B079C(v36 + v35, sub_29D6C36D8);
  swift_deallocClassInstance();
  v44 = swift_task_alloc();
  v1[34] = v44;
  *v44 = v1;
  v44[1] = sub_29D7A768C;

  return MEMORY[0x2A1C64D80](v37, v34, v50);
}

uint64_t sub_29D7A768C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_29D7A7F60;
  }

  else
  {
    v2 = sub_29D7A77C0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7A77C0(uint64_t a1)
{
  v29 = v1;
  v2 = v1[31];
  sub_29D937838();
  v3 = v2;
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[30];
  v8 = v1[31];
  v9 = v1[26];
  v10 = v1[23];
  v11 = v1[19];
  if (v6)
  {
    v27 = v1[23];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446722;
    v14 = sub_29D93AF08();
    v26 = v11;
    v16 = sub_29D6C2364(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, &v28);
    *(v12 + 22) = 2080;
    v17 = [v8 conciseDescription];
    v18 = sub_29D939D68();
    v25 = v7;
    v20 = v19;

    v21 = sub_29D6C2364(v18, v20, &v28);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s.%{public}s]:Journal %s replacement complete", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    v25(v9, v27);
    v22 = v26;
  }

  else
  {

    v7(v9, v10);
    v22 = v11;
  }

  sub_29D7B079C(v22, sub_29D6C36D8);
  sub_29D69417C(v1 + 2);

  v23 = v1[1];

  return v23();
}

uint64_t sub_29D7A7AD8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_29D7A7E54;
  }

  else
  {
    v2 = sub_29D7A7BEC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7A7BEC(uint64_t a1)
{
  v17 = v1;
  sub_29D937838();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[30];
  v6 = v1[25];
  v7 = v1[23];
  if (v4)
  {
    v15 = v1[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, &v16);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: No active journal found. Removing item.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);

    v15(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  sub_29D69417C(v1 + 2);

  v13 = v1[1];

  return v13();
}

uint64_t sub_29D7A7E54()
{
  sub_29D69417C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D7A7F60()
{
  v1 = *(v0 + 152);

  sub_29D7B079C(v1, sub_29D6C36D8);
  sub_29D69417C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D7A8094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_29D937898();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7A818C, 0, 0);
}

uint64_t sub_29D7A818C(uint64_t a1)
{
  v60 = v1;
  v2 = *(v1 + 24);
  sub_29D937838();
  v3 = v2;
  v4 = sub_29D937878();
  v5 = sub_29D93A268();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 72);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  if (v6)
  {
    v10 = *(v1 + 24);
    v57 = *(v1 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v59 = v12;
    *v11 = 136446722;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v59);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D961EE0, &v59);
    *(v11 + 22) = 2080;
    v16 = [v10 conciseDescription];
    v17 = sub_29D939D68();
    v19 = v18;

    v20 = sub_29D6C2364(v17, v19, &v59);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s.%{public}s]:Journal %s Making Feed item", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);

    v21 = *(v8 + 8);
    v21(v57, v9);
  }

  else
  {

    v21 = *(v8 + 8);
    v21(v7, v9);
  }

  v22 = [objc_allocWithZone(MEMORY[0x29EDC5210]) initWithJournal:*(v1 + 24) healthStore:*(*(v1 + 32) + 48)];
  v23 = [v22 buildSummary];

  if (v23)
  {
    if ([swift_unknownObjectRetain() isComplete])
    {
      v24 = *(v1 + 24);
      sub_29D937838();
      v25 = v24;
      v26 = sub_29D937878();
      v27 = sub_29D93A2A8();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v1 + 64);
      v30 = *(v1 + 48);
      if (v28)
      {
        v31 = *(v1 + 24);
        v58 = *(v1 + 48);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v59 = v33;
        *v32 = 136446722;
        v34 = sub_29D93AF08();
        v56 = v29;
        v36 = sub_29D6C2364(v34, v35, &v59);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D961EE0, &v59);
        *(v32 + 22) = 2080;
        v37 = [v31 conciseDescription];
        v38 = sub_29D939D68();
        v40 = v39;

        v41 = sub_29D6C2364(v38, v40, &v59);

        *(v32 + 24) = v41;
        _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s.%{public}s]:Journal %s Summary is complete. Providing complete feedItem", v32, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v33, -1, -1);
        MEMORY[0x29ED6BE30](v32, -1, -1);

        v42 = v56;
        v43 = v58;
      }

      else
      {

        v42 = v29;
        v43 = v30;
      }

      v21(v42, v43);
      sub_29D7A8748(v23, *(v1 + 16));
    }

    else
    {
      v46 = [*(v1 + 24) journalType];
      if (v46 == 1)
      {
        v49 = *(v1 + 24);
        v50 = *(v1 + 16);
        objc_opt_self();
        v51 = swift_dynamicCastObjCClassUnconditional();
        swift_unknownObjectRetain();
        sub_29D7AA374(v49, v51, v50);
      }

      else if (v46)
      {
        v52 = *(v1 + 16);
        v53 = sub_29D9340F8();
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
      }

      else
      {
        v47 = *(v1 + 16);
        objc_opt_self();
        v48 = swift_dynamicCastObjCClassUnconditional();
        swift_unknownObjectRetain();
        sub_29D7A96E4(v48, v47);
      }
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v44 = *(v1 + 16);
    v45 = sub_29D9340F8();
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
  }

  v54 = *(v1 + 8);

  return v54();
}

id sub_29D7A8748@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v3 = v2;
  v87 = a2;
  v5 = *v3;
  v106 = v3;
  v81 = v5;
  v86 = sub_29D937898();
  v85 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86, v6);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934058();
  v109 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v107 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29D933F58();
  v108 = *(v115 - 1);
  MEMORY[0x2A1C7C4A8](v115, v11);
  v114 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D934C08();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v101 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ABC94(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v100 = &v81 - v18;
  v19 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v99 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29D939D18();
  v22 = *(v98 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v98, v23);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v81 - v28;
  v105 = sub_29D934C18();
  v103 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105, v30);
  v102 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  MEMORY[0x2A1C7C4A8](v32 - 8, v33);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D9340F8();
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *MEMORY[0x29EDBA420];
  v83 = a1;
  v42 = [a1 averageClassificationCategory];
  if (v42)
  {
    v43 = v42;

    v41 = v43;
  }

  v112 = v41;
  v104 = v35;
  v82 = v40;
  v110 = v8;
  v111 = v37;
  v113 = v36;
  v95 = sub_29D92B4E0(v41);
  v44 = v29;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v45 = qword_2A1A2BE98;
  v88 = unk_2A1A2BEA0;
  v90 = *(v22 + 16);
  v46 = v29;
  v47 = v98;
  v90(v26, v46, v98);
  sub_29D935E88();
  v89 = v45;
  sub_29D933A98();
  v97 = sub_29D939D98();
  v96 = v48;
  v49 = *(v22 + 8);
  v49(v44, v47);
  v94 = sub_29D92B6BC(v112);
  v93 = v50;
  v92 = sub_29D92B940(v95 & 1);
  v91 = v51;
  sub_29D939D08();
  v90(v26, v44, v47);
  sub_29D935E88();
  v52 = v89;
  sub_29D933A98();
  sub_29D939D98();
  v49(v44, v47);
  v53 = v115;
  v54 = v108;
  v55 = v114;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v56 = qword_2A1A2C038;
  v57 = v100;
  sub_29D934788();
  v108 = type metadata accessor for CompletedBloodPressureJournalTileContentConfigurationProvider();
  v58 = sub_29D934798();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_29D934BF8();
  v59 = v102;
  sub_29D934BE8();
  type metadata accessor for CompletedBloodPressureJournalTileActionHandler(0);
  v101 = "reminderNotification";
  (*(v54 + 104))(v55, *MEMORY[0x29EDC3740], v53);
  v60 = sub_29D933FE8();
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_29D93AA18();
  v62 = v106[2];
  v61 = v106[3];
  sub_29D935E88();

  v116 = v62;
  v117 = v61;
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D961F60);
  v63 = v109;
  v64 = v107;
  v65 = v110;
  (*(v109 + 104))(v107, *MEMORY[0x29EDC1B28], v110);
  sub_29D7B08FC(&qword_2A17B4BB0, 255, type metadata accessor for CompletedBloodPressureJournalTileContentConfigurationProvider, &unk_29D94AAB0);
  sub_29D7B08FC(&qword_2A17B4BB8, 255, type metadata accessor for CompletedBloodPressureJournalTileActionHandler, &unk_29D94F0F8);
  v66 = v64;
  v67 = v114;
  v68 = v104;
  sub_29D934028();

  (*(v63 + 8))(v66, v65);
  (*(v54 + 8))(v67, v115);
  (*(v103 + 8))(v59, v105);
  v69 = v111;
  v70 = v113;
  v115 = *(v111 + 56);
  (v115)(v68, 0, 1, v113);
  v71 = *(v69 + 32);
  v72 = v82;
  v71(v82, v68, v70);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  *(inited + 32) = sub_29D934258();
  *(inited + 40) = v74;
  *(inited + 48) = sub_29D934288();
  *(inited + 56) = v75;
  v76 = sub_29D9340C8();
  sub_29D7AF194(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v76(&v116, 0);
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    *(v77 + 32) = result;
    sub_29D7AF564(v77, &qword_2A1A24940, 0x29EDBACB8, &qword_2A1A24938, &qword_2A1A248B0);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934078();

    v79 = v87;
    v80 = v113;
    v71(v87, v72, v113);
    return (v115)(v79, 0, 1, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D7A96E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v80 = *v2;
  v89 = sub_29D934058();
  v88 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89, v4);
  v86 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v87 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9340F8();
  v15 = *(v14 - 8);
  v96 = v14;
  v97 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D937898();
  v95 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19, v20);
  v79 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v74 - v24;
  v94 = sub_29D7A658C([a1 nextMeasurement]);
  v27 = v26;
  v93 = [a1 wakeUpCount];
  v92 = [a1 bedTimeCount];
  v91 = [a1 isComplete];
  sub_29D937838();
  sub_29D935E88();
  v28 = a1;
  v29 = sub_29D937878();
  v30 = sub_29D93A268();

  LODWORD(v83) = v30;
  v31 = os_log_type_enabled(v29, v30);
  v90 = v19;
  v76 = v18;
  v78 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v98 = v33;
    *v32 = 136446978;
    v34 = sub_29D93AF08();
    v36 = sub_29D6C2364(v34, v35, &v98);
    v74 = v10;
    v37 = v36;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D961FF0, &v98);
    v75 = v7;
    v38 = v6;
    *(v32 + 22) = 2080;
    v100 = v94;
    v101 = v27;
    v102 = v93;
    v103 = v92;
    v104 = v91;
    sub_29D935E88();
    v39 = sub_29D939DA8();
    v41 = sub_29D6C2364(v39, v40, &v98);

    *(v32 + 24) = v41;
    *(v32 + 32) = 2080;
    v42 = v28;
    v43 = [v42 description];
    v44 = sub_29D939D68();
    v46 = v45;

    v10 = v74;
    v47 = v44;
    v6 = v38;
    v7 = v75;
    v48 = sub_29D6C2364(v47, v46, &v98);

    *(v32 + 34) = v48;
    _os_log_impl(&dword_29D677000, v29, v83, "[%{public}s.%{public}s]: created viewModel %s from %s", v32, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v33, -1, -1);
    MEMORY[0x29ED6BE30](v32, -1, -1);

    v49 = *(v95 + 8);
    v50 = v25;
    v51 = v90;
  }

  else
  {

    v49 = *(v95 + 8);
    v50 = v25;
    v51 = v19;
  }

  v77 = v49;
  v49(v50, v51);
  v84 = v6;
  v81 = v27;
  v83 = type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider(0);
  v100 = v94;
  v101 = v27;
  v102 = v93;
  v103 = v92;
  v104 = v91;
  type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler(0);
  v94 = "reminderNotification";
  (*(v7 + 104))(v10, *MEMORY[0x29EDC3740], v6);
  v93 = sub_29D933FE8();
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_29D93AA18();
  v52 = v7;
  v54 = *(v85 + 16);
  v53 = *(v85 + 24);
  sub_29D935E88();

  v98 = v54;
  v99 = v53;
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D961FD0);
  v55 = v88;
  v56 = v10;
  v57 = v86;
  v58 = v89;
  (*(v88 + 104))(v86, *MEMORY[0x29EDC1B28], v89);
  sub_29D7B08FC(&qword_2A17B4BD0, 255, type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider, &unk_29D94F4B8);
  sub_29D7B08FC(&qword_2A17B1648, 255, type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler, &unk_29D949CA0);
  v59 = v93;
  v60 = v87;
  sub_29D934028();

  (*(v55 + 8))(v57, v58);
  (*(v52 + 8))(v56, v84);
  v61 = v96;
  v62 = v97;
  v63 = *(v97 + 56);
  v63(v60, 0, 1, v96);
  v64 = v60;
  v65 = *(v62 + 32);
  v66 = v76;
  v65(v76, v64, v61);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934258();
  *(inited + 40) = v68;
  v69 = sub_29D9340C8();
  sub_29D7AF194(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v69(&v100, 0);
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    v72 = result;

    *(v70 + 32) = v72;
    sub_29D7AF564(v70, &qword_2A1A24940, 0x29EDBACB8, &qword_2A1A24938, &qword_2A1A248B0);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934078();
    v73 = v82;
    v65(v82, v66, v61);
    return (v63)(v73, 0, 1, v61);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D7AA374@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v96 = a3;
  v95 = *v3;
  v106 = sub_29D934058();
  v105 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v6);
  v102 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29D933F58();
  v103 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111, v8);
  v101 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v104 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29D9340F8();
  v110 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107, v13);
  v92 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29D937898();
  v108 = *(v109 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v109, v15);
  v94 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v99 = &v91 - v19;
  v20 = sub_29D9339F8();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v91 - v27;
  v29 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  v31 = MEMORY[0x2A1C7C4A8](v29, v30);
  v93 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v97 = &v91 - v35;
  MEMORY[0x2A1C7C4A8](v34, v36);
  v112 = &v91 - v37;
  v38 = [a1 startDate];
  sub_29D933998();

  v39 = *(v21 + 16);
  v39(v25, v28, v20);
  v98 = a2;
  v40 = [a2 datesWithSamples];
  sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  v41 = sub_29D93A0D8();

  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = sub_29D702AC8(*(v41 + 16), 0);
    v44 = sub_29D7AEA0C(&v113, &v43[(*(v21 + 80) + 32) & ~*(v21 + 80)], v42, v41);
    sub_29D7AF2E8(v113);
    if (v44 == v42)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v43 = MEMORY[0x29EDCA190];
LABEL_5:
  v45 = v112;
  v39((v112 + *(v29 + 24)), v25, v20);
  *(v45 + *(v29 + 20)) = v43;
  sub_29D6966E8();
  v46 = *(v21 + 8);
  v46(v25, v20);
  v46(v28, v20);
  v47 = v99;
  sub_29D937838();
  v48 = v97;
  sub_29D7AF2F0(v45, v97, type metadata accessor for MonitorHypertensionSummaryViewModel);
  v49 = v98;
  v50 = sub_29D937878();
  v51 = sub_29D93A268();

  v52 = os_log_type_enabled(v50, v51);
  v98 = v49;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v113 = v91;
    *v53 = 136446978;
    v54 = sub_29D93AF08();
    v56 = sub_29D6C2364(v54, v55, &v113);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2082;
    *(v53 + 14) = sub_29D6C2364(0xD000000000000034, 0x800000029D962100, &v113);
    *(v53 + 22) = 2080;
    sub_29D7AF2F0(v48, v93, type metadata accessor for MonitorHypertensionSummaryViewModel);
    v57 = sub_29D939DA8();
    v59 = v58;
    sub_29D7B079C(v48, type metadata accessor for MonitorHypertensionSummaryViewModel);
    v60 = sub_29D6C2364(v57, v59, &v113);

    *(v53 + 24) = v60;
    *(v53 + 32) = 2080;
    v61 = v49;
    v62 = [v61 description];
    v63 = sub_29D939D68();
    v65 = v64;

    v66 = sub_29D6C2364(v63, v65, &v113);

    *(v53 + 34) = v66;
    _os_log_impl(&dword_29D677000, v50, v51, "[%{public}s.%{public}s]: created viewModel %s from %s", v53, 0x2Au);
    v67 = v91;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v67, -1, -1);
    MEMORY[0x29ED6BE30](v53, -1, -1);
  }

  else
  {

    sub_29D7B079C(v48, type metadata accessor for MonitorHypertensionSummaryViewModel);
  }

  v99 = *(v108 + 8);
  (v99)(v47, v109);
  v68 = v105;
  v69 = v111;
  v70 = v103;
  type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider(0);
  type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler(0);
  v105 = "reminderNotification";
  v71 = v101;
  (*(v70 + 104))(v101, *MEMORY[0x29EDC3740], v69);
  v103 = sub_29D933FE8();
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_29D93AA18();
  v73 = *(v100 + 16);
  v72 = *(v100 + 24);
  sub_29D935E88();

  v113 = v73;
  v114 = v72;
  MEMORY[0x29ED6A240](0xD00000000000001BLL, 0x800000029D9620E0);
  v74 = v102;
  v75 = v106;
  (*(v68 + 13))(v102, *MEMORY[0x29EDC1B28], v106);
  sub_29D7B08FC(&qword_2A17B4BD8, 255, type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider, &unk_29D93F8C8);
  sub_29D7B08FC(&qword_2A17B1648, 255, type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler, &unk_29D949CA0);
  v76 = v74;
  v77 = v103;
  v78 = v104;
  sub_29D934028();

  (*(v68 + 1))(v76, v75);
  (*(v70 + 8))(v71, v111);
  v79 = v110;
  v80 = *(v110 + 56);
  v81 = v107;
  v80(v78, 0, 1, v107);
  v82 = v78;
  v83 = *(v79 + 32);
  v84 = v92;
  v83(v92, v82, v81);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934258();
  *(inited + 40) = v86;
  v87 = sub_29D9340C8();
  sub_29D7AF194(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v87(&v113, 0);
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v88 = swift_initStackObject();
  *(v88 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    *(v88 + 32) = result;
    sub_29D7AF564(v88, &qword_2A1A24940, 0x29EDBACB8, &qword_2A1A24938, &qword_2A1A248B0);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934078();
    sub_29D7B079C(v112, type metadata accessor for MonitorHypertensionSummaryViewModel);
    v90 = v96;
    v83(v96, v84, v81);
    return (v80)(v90, 0, 1, v81);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7AB280()
{
  sub_29D936978();
  v1 = OBJC_IVAR____TtCC5Heart35BloodPressureJournalSummaryExecutor7Planner_signals;
  v2 = sub_29D937358();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7AB36C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29D7AB3C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5Heart35BloodPressureJournalSummaryExecutor7Planner_signals;
  v4 = sub_29D937358();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D7AB438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D7AF6D0();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29D9374E8();
  sub_29D936978();

  return sub_29D69417C(v8);
}

uint64_t sub_29D7AB564(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29D7B08FC(&qword_2A1A23B98, 255, type metadata accessor for BloodPressureJournalSummaryExecutor.Planner, &unk_29D948E08);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29D7AB640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29D7B08FC(&qword_2A1A23B98, 255, type metadata accessor for BloodPressureJournalSummaryExecutor.Planner, &unk_29D948E08);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29D7AB700()
{

  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalSummaryExecutor.Planner(uint64_t a1)
{
  result = qword_2A1A23B78;
  if (!qword_2A1A23B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7AB7C0(uint64_t a1)
{
  result = sub_29D937358();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29D7AB8A8(uint64_t a1)
{
  if (!qword_2A17B4B80)
  {
    sub_29D7B072C(255, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
    sub_29D7AB974(&qword_2A17B4B98, MEMORY[0x29EDBA228]);
    sub_29D7AB974(&unk_2A17B4BA0, MEMORY[0x29EDBA220]);
    v1 = sub_29D937458();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4B80);
    }
  }
}

uint64_t sub_29D7AB974(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D7B072C(255, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D7AB9D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D7A67FC(a1);
}

uint64_t sub_29D7ABA68(uint64_t a1)
{
  v3 = sub_29D937358();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v11 = *(v1 + 32);
  v8(v7, a1, v3);
  type metadata accessor for BloodPressureJournalSummaryExecutor.Planner(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtCC5Heart35BloodPressureJournalSummaryExecutor7Planner_signals, v7, v3);
  swift_unknownObjectRetain();
  return v9;
}

uint64_t sub_29D7ABB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29D7B08FC(qword_2A1A23AC0, a2, type metadata accessor for BloodPressureJournalSummaryExecutor, &unk_29D948E98);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

void sub_29D7ABC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D7ABCF8()
{
  result = qword_2A17B4BC0;
  if (!qword_2A17B4BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B4BC0);
  }

  return result;
}

uint64_t sub_29D7ABD5C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v7 = sub_29D93AE98();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_29D939D68();
      v13 = v12;
      if (v11 == sub_29D939D68() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_29D93AD78();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_29D7AD2B0(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_29D7ABF08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29D93AE58();
  sub_29D939E18();
  v8 = sub_29D93AE98();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29D93AD78() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = (*(v7 + 48) + 16 * v10);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;
    sub_29D935E88();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_29D935E88();
    sub_29D7AD498(a2, a3, v10, isUniquelyReferenced_nonNull_native, v15);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D7AC07C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;
    sub_29D935E88();
    v17 = sub_29D93A938();

    if (v17)
    {

      sub_29D69567C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_29D93A928();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_29D7AC5E0(v15, result + 1, a5, a3, a4, a6);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_29D7ACCBC(v29 + 1, a5, a3, a4, a6);
        }

        v30 = v16;
        sub_29D7AD22C(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_29D69567C(0, a3, a4);
    v19 = sub_29D93A6F8();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_29D93A708();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v26 = a2;
      sub_29D7AD8C4(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6, v27);
      *v11 = v38;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D7AC2F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  v34 = a2;
  v12 = sub_29D939C88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_29D7B08FC(&qword_2A17B4C90, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
      v22 = sub_29D939CF8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_29D7AD618(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_29D7AC5E0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29D6E5AE4(0, a3, a4, a5, a6);
    v10 = sub_29D93A9D8();
    v23 = v10;
    sub_29D93A8D8();
    if (sub_29D93A958())
    {
      sub_29D69567C(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_29D7ACCBC(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_29D93A6F8();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_29D93A958());
    }
  }

  else
  {
    sub_29D936978();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

void sub_29D7AC7F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D7B0864(0);
  v4 = sub_29D93A9C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_29D939D68();
      sub_29D93AE58();
      sub_29D939E18();
      v18 = sub_29D93AE98();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_29D7ACA68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D6E5ED0();
  result = sub_29D93A9C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_29D7ACCBC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D6E5AE4(0, a2, a3, a4, a5);
  result = sub_29D93A9C8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_29D93A6F8();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_29D7ACED8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29D9339F8();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29D7B0944(0);
  result = sub_29D93A9C8();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
      result = sub_29D939C88();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_29D7AD22C(uint64_t a1, uint64_t a2)
{
  sub_29D93A6F8();
  result = sub_29D93A8B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_29D7AD2B0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_29D7AC7F8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_29D7ADA6C();
      goto LABEL_16;
    }

    sub_29D7AE07C(v7 + 1);
  }

  v9 = *v3;
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v10 = sub_29D93AE98();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    do
    {
      v13 = sub_29D939D68();
      v15 = v14;
      if (v13 == sub_29D939D68() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_29D93AD78();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_29D93ADB8();
  __break(1u);
}

uint64_t sub_29D7AD498(uint64_t result, uint64_t a2, unint64_t a3, char a4, __n128 a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D7ACA68(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_29D7ADBB0();
      goto LABEL_16;
    }

    sub_29D7AE2C4(v9 + 1);
  }

  v11 = *v5;
  sub_29D93AE58();
  sub_29D939E18();
  result = sub_29D93AE98();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v11 + 48) + 16 * a3);
      if (*v14 == v8 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29D93AD78();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v8;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29D93ADB8();
  __break(1u);
  return result;
}

uint64_t sub_29D7AD618(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D7ACED8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29D7ADE54();
      goto LABEL_12;
    }

    sub_29D7AE6F8(v11 + 1);
  }

  v13 = *v3;
  sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  v14 = sub_29D939C88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29D7B08FC(&qword_2A17B4C90, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
      v22 = sub_29D939CF8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D93ADB8();
  __break(1u);
  return result;
}

void sub_29D7AD8C4(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7, __n128 a8)
{
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v13 = a5;
    v14 = a6;
    sub_29D7ACCBC(v11 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29D7ADD00(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v13 = a5;
    v14 = a6;
    sub_29D7AE4F0(v11 + 1, a4, a5, a6, a7);
  }

  v15 = *v8;
  v16 = sub_29D93A6F8();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_29D69567C(0, v13, v14);
    do
    {
      v19 = *(*(v15 + 48) + 8 * a2);
      v20 = sub_29D93A708();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29D93ADB8();
  __break(1u);
}

id sub_29D7ADA6C()
{
  v1 = v0;
  sub_29D7B0864(0);
  v2 = *v0;
  v3 = sub_29D93A9B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_29D7ADBB0()
{
  v1 = v0;
  sub_29D6E5ED0();
  v2 = *v0;
  v3 = sub_29D93A9B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_29D935E88();
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_29D7ADD00(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29D6E5AE4(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29D93A9B8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_29D7ADE54()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B0944(0);
  v7 = *v0;
  v8 = sub_29D93A9B8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void sub_29D7AE07C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D7B0864(0);
  v4 = sub_29D93A9C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_29D939D68();
      sub_29D93AE58();
      v18 = v17;
      sub_29D939E18();
      v19 = sub_29D93AE98();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_29D7AE2C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D6E5ED0();
  result = sub_29D93A9C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      result = sub_29D93AE98();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_29D7AE4F0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D6E5AE4(0, a2, a3, a4, a5);
  result = sub_29D93A9C8();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_29D93A6F8();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_29D7AE6F8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_29D9339F8();
  v3 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D7B0944(0);
  v8 = sub_29D93A9C8();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
      result = sub_29D939C88();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_29D7AEA0C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = sub_29D9339F8();
  v44 = *(v42 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v42, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v9, v11);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_29D7AECB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = sub_29D9339F8();
  v44 = *(v42 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v42, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v9, v11);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_29D7AEF54(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_29D93A8D8();
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  sub_29D6E5B70(&qword_2A1A24920, &qword_2A1A24930, 0x29EDBAD78);
  result = sub_29D93A118();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29D93A958())
      {
        goto LABEL_30;
      }

      sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

void sub_29D7AF194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_29D935E88();
      sub_29D7ABF08(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_29D7AF204(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v4 = v3;
  v5 = sub_29D7B08FC(&qword_2A17B13E8, 255, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_29D93F4F8);
  result = MEMORY[0x29ED6A4E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29D7ABD5C(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29D7AF2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7AF3A0(uint64_t a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  result = MEMORY[0x29ED6A4E0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_29D7AC2F8(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_29D7AF564(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D93A928())
  {
    v11 = sub_29D69567C(0, a2, a3);
    v12 = sub_29D6E5B70(a4, a2, a3);
    result = MEMORY[0x29ED6A4E0](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x29ED6AE30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29D7AC07C(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_29D93A928();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_29D7AF6D0()
{
  v0 = sub_29D9374B8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D937308();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D940030;
  sub_29D9372F8();
  sub_29D7B07FC(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93F680;
  *(v5 + 56) = sub_29D937498();
  *(v5 + 64) = sub_29D7B08FC(&qword_2A1A246B8, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  sub_29D693F78((v5 + 32));
  sub_29D9374A8();
  sub_29D937488();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D6E3724(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v5 + 96) = sub_29D934488();
    *(v5 + 104) = sub_29D7B08FC(&unk_2A17B4C30, 255, MEMORY[0x29EDC3C08], MEMORY[0x29EDC3C00]);
    sub_29D693F78((v5 + 72));
    sub_29D934478();
    sub_29D937328();
    swift_allocObject();
    *(v4 + 32) = sub_29D937318();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7AF988()
{
  v84 = *v0;
  sub_29D7B072C(0, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
  v81 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v80 = &v73 - v3;
  v4 = sub_29D937368();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v76 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9373B8();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9373E8();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = sub_29D937898();
  v13 = *(v85 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v85, v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v75 = &v73 - v19;
  v20 = MEMORY[0x29EDC9C68];
  sub_29D7ABC94(0, &qword_2A17B4BE0, type metadata accessor for BloodPressureJournalAnchor, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v24 = &v73 - v23;
  v25 = sub_29D9374B8();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ABC94(0, &qword_2A17B4BE8, sub_29D7B05AC, v20);
  MEMORY[0x2A1C7C4A8](v30 - 8, v31);
  v33 = &v73 - v32;
  sub_29D7B05AC(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v37);
  v82 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D937468();
  sub_29D9374A8();
  if (*(v39 + 16) && (v40 = sub_29D69093C(v29), (v41 & 1) != 0))
  {
    sub_29D6945AC(*(v39 + 56) + 40 * v40, v87);
    (*(v26 + 8))(v29, v25);

    sub_29D6B7370(0, &qword_2A17B4C10, MEMORY[0x29EDC3520]);
    v42 = swift_dynamicCast();
    (*(v36 + 56))(v33, v42 ^ 1u, 1, v35);
    if ((*(v36 + 48))(v33, 1, v35) != 1)
    {
      (*(v36 + 32))(v82, v33, v35);
      sub_29D937418();
      v43 = type metadata accessor for BloodPressureJournalAnchor(0);
      if ((*(*(v43 - 8) + 48))(v24, 1, v43) == 1)
      {
        sub_29D7B06BC(v24, &qword_2A17B4BE0, type metadata accessor for BloodPressureJournalAnchor);
        v44 = 0;
      }

      else
      {
        v44 = sub_29D939AE8();
        sub_29D7B079C(v24, type metadata accessor for BloodPressureJournalAnchor);
      }

      v53 = v75;
      v75 = v44;
      sub_29D937838();
      v54 = v44;
      v55 = sub_29D937878();
      v56 = sub_29D93A268();
      v74 = v54;

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v87[0] = v58;
        *v57 = 136315394;
        v59 = sub_29D93AF08();
        v61 = sub_29D6C2364(v59, v60, v87);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        v86 = v75;
        sub_29D7B072C(0, &unk_2A1A221C0, MEMORY[0x29EDC9C68]);
        v62 = v74;
        v63 = sub_29D939DA8();
        v65 = sub_29D6C2364(v63, v64, v87);

        *(v57 + 14) = v65;
        _os_log_impl(&dword_29D677000, v55, v56, "[%s] Creating work plan with journal: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v58, -1, -1);
        MEMORY[0x29ED6BE30](v57, -1, -1);
      }

      (*(v13 + 8))(v53, v85);
      v66 = MEMORY[0x29EDC9E90];
      sub_29D7ABC94(0, &qword_2A17B4C18, sub_29D7AB8A8, MEMORY[0x29EDC9E90]);
      sub_29D7AB8A8(0);
      v84 = (*(*(v67 - 8) + 80) + 32) & ~*(*(v67 - 8) + 80);
      v68 = swift_allocObject();
      v85 = xmmword_29D93DDB0;
      *(v68 + 16) = xmmword_29D93DDB0;
      sub_29D9373D8();
      sub_29D7ABC94(0, &qword_2A17B4C20, MEMORY[0x29EDC3518], v66);
      sub_29D937388();
      *(swift_allocObject() + 16) = v85;
      sub_29D7ABC94(0, &qword_2A17B4C28, MEMORY[0x29EDC3618], v66);
      sub_29D9374D8();
      *(swift_allocObject() + 16) = v85;
      sub_29D9374C8();
      v69 = v76;
      v70 = *(v77 + 104);
      v71 = v78;
      v70(v76, *MEMORY[0x29EDC3508], v78);
      sub_29D937378();
      v70(v69, *MEMORY[0x29EDC34F8], v71);
      sub_29D937378();
      sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
      v72 = v74;
      sub_29D939B18();
      sub_29D7AB974(&qword_2A17B4B98, MEMORY[0x29EDBA228]);
      sub_29D7AB974(&unk_2A17B4BA0, MEMORY[0x29EDBA220]);
      sub_29D937438();

      (*(v36 + 8))(v82, v35);
      return v68;
    }
  }

  else
  {

    (*(v26 + 8))(v29, v25);
    (*(v36 + 56))(v33, 1, 1, v35);
  }

  sub_29D7B06BC(v33, &qword_2A17B4BE8, sub_29D7B05AC);
  sub_29D937838();
  v45 = sub_29D937878();
  v46 = sub_29D93A288();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v87[0] = v48;
    *v47 = 136315138;
    v49 = sub_29D93AF08();
    v51 = sub_29D6C2364(v49, v50, v87);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_29D677000, v45, v46, "[%s] Can't create a work plan, missing anchor for bloodPressureJournal.", v47, 0xCu);
    sub_29D69417C(v48);
    MEMORY[0x29ED6BE30](v48, -1, -1);
    MEMORY[0x29ED6BE30](v47, -1, -1);
  }

  (*(v13 + 8))(v17, v85);
  return MEMORY[0x29EDCA190];
}

void sub_29D7B05AC(uint64_t a1)
{
  if (!qword_2A17B4BF0)
  {
    type metadata accessor for BloodPressureJournalAnchor(255);
    sub_29D7B08FC(&unk_2A17B6250, 255, type metadata accessor for BloodPressureJournalAnchor, &unk_29D94D37C);
    sub_29D7B08FC(&unk_2A17B4C00, 255, type metadata accessor for BloodPressureJournalAnchor, &unk_29D94D354);
    sub_29D7B08FC(&qword_2A17B6260, 255, type metadata accessor for BloodPressureJournalAnchor, &unk_29D94D32C);
    v1 = sub_29D937428();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4BF0);
    }
  }
}

uint64_t sub_29D7B06BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7ABC94(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D7B072C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &qword_2A1A221D0, 0x29EDC51F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D7B079C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D7B07FC(uint64_t a1)
{
  if (!qword_2A1A21F38)
  {
    sub_29D6B7370(255, &qword_2A1A246B0, MEMORY[0x29EDC3608]);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21F38);
    }
  }
}

void sub_29D7B0864(uint64_t a1)
{
  if (!qword_2A17B4C70)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_29D7B08FC(&qword_2A17B13E8, 255, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_29D93F4F8);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4C70);
    }
  }
}

uint64_t sub_29D7B08FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D7B0944(uint64_t a1)
{
  if (!qword_2A17B4C98)
  {
    sub_29D9339F8();
    sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4C98);
    }
  }
}

void *sub_29D7B09F4()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_29D7B0A9C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v10);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
    sub_29D933E08();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_29D7B2810();
  v5 = v4;
  v6 = a1;
  v7 = sub_29D93A708();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void *sub_29D7B0C1C()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_29D7B0CC4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v10);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
    sub_29D933E08();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_29D7B2810();
  v5 = v4;
  v6 = a1;
  v7 = sub_29D93A708();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

uint64_t sub_29D7B0E44@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v3 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v4 = sub_29D9339F8();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_29D7B0F3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_29D7B2AFC(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v16[0] = a1;
  LOBYTE(a1) = sub_29D939CF8();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
    sub_29D933E08();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_29D7B11DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v5 = sub_29D9339F8();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_29D7B1278()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  return *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
}

uint64_t sub_29D7B1320(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v4);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
    sub_29D933E08();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis) = result;
  return result;
}

void *sub_29D7B145C()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v1 = *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
  v2 = v1;
  return v1;
}

void sub_29D7B150C(void *a1)
{
  v3 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory;
  if (*(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory))
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v4 = sub_29D939D68();
    v6 = v5;
    if (v4 != sub_29D939D68() || v6 != v7)
    {
      v9 = sub_29D93AD78();

      if (v9)
      {
        goto LABEL_12;
      }

LABEL_10:
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath, v11);
      sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
      sub_29D933E08();

      return;
    }
  }

  else if (a1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v12 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_29D7B16B8()
{
  v1 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities;
  if (*(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities);
  }

  else
  {
    v3 = *(v0 + 16);
    type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v3;
    type metadata accessor for BloodPressureJournalAnalyticsUtilities();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v2[5] = v4;
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

uint64_t sub_29D7B17B0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  return *(v2 + *a2);
}

uint64_t sub_29D7B1850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didTapLearnMore);
  return result;
}

uint64_t sub_29D7B1928(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v6);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
    sub_29D933E08();
  }

  return result;
}

uint64_t sub_29D7B1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D7B1BA8();
  v12 = v11;
  v13 = 0;
  v14 = *(a2 + 40);
  if ((v11 & 1) == 0)
  {
    v13 = sub_29D93A138();
  }

  v15 = [v14 hypertensiveEscalationForClassificationGuidelines:a1 systolic:a3 diastolic:a4 age:{v13, a5}];

  sub_29D7B1320(v15);
  if (a1 == 2)
  {
    if (v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_29D93A138();
    }

    v17 = sub_29D93A618();

    sub_29D7B150C(v17);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 24) = a6;

  sub_29D7B1EA8(sub_29D7B2894, v18);
}

id sub_29D7B1BA8()
{
  v1 = v0;
  v26[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v26[0] = 0;
  v8 = [v7 dateOfBirthComponentsWithError_];
  if (v8)
  {
    v9 = v26[0];
    sub_29D9339E8();
    v10 = sub_29D933958();
    (*(v3 + 8))(v6, v2);
    v11 = [v8 hk:v10 ageWithCurrentDate:?];
  }

  else
  {
    v12 = v26[0];
    v13 = sub_29D933598();

    swift_willThrow();
    v14 = sub_29D933588();
    v15 = [v14 hk_isDatabaseAccessibilityError];

    if (v15)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v16 = sub_29D937898();
      sub_29D69C6C0(v16, qword_2A1A2C008);
      v17 = sub_29D937878();
      v18 = sub_29D93A288();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26[0] = v20;
        *v19 = 136315138;
        v21 = sub_29D93AF08();
        v23 = sub_29D6C2364(v21, v22, v26);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_29D677000, v17, v18, "[%s] database is inaccessible; unable to determine user age", v19, 0xCu);
        sub_29D69417C(v20);
        MEMORY[0x29ED6BE30](v20, -1, -1);
        MEMORY[0x29ED6BE30](v19, -1, -1);
      }
    }

    else
    {
    }

    return 0;
  }

  return v11;
}

void sub_29D7B1EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26[0] = v2;
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v10 = *(v2 + 48);
  if (v10)
  {
    v24 = a2;
    swift_getKeyPath();
    v26[0] = v3;
    v11 = v10;
    sub_29D933E18();

    v12 = *(v3 + 56);
    if (v12)
    {
      v23 = *(v3 + 32);
      swift_getKeyPath();
      v26[0] = v3;
      v13 = v12;
      sub_29D933E18();

      v14 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
      swift_beginAccess();
      (*(v6 + 16))(v9, v3 + v14, v5);
      sub_29D7C6DCC(v11, v13, v9, v25, v24);

      (*(v6 + 8))(v9, v5);
      return;
    }
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = sub_29D937878();
  v17 = sub_29D93A288();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315138;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_29D677000, v16, v17, "[%s] Cannot save blood pressure sample because no value was found", v18, 0xCu);
    sub_29D69417C(v19);
    MEMORY[0x29ED6BE30](v19, -1, -1);
    MEMORY[0x29ED6BE30](v18, -1, -1);
  }
}

uint64_t sub_29D7B2224(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v15 = a2;
  v4 = a1;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B16B8();
  v9 = *(v2 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel_provenance);
  swift_getKeyPath();
  v17 = v2;
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v10 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, v3 + v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  swift_getKeyPath();
  v16 = v3;
  sub_29D933E18();

  LODWORD(v10) = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate);
  swift_getKeyPath();
  v16 = v3;
  sub_29D933E18();

  sub_29D8D1130(v4, v15, v9, v8, v10, *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didTapLearnMore));

  return sub_29D6A0D34(v8);
}

id *sub_29D7B2470()
{

  v1 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  v2 = sub_29D9339F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel___observationRegistrar;
  v4 = sub_29D933E38();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_29D7B2570()
{
  sub_29D7B2470();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalLoggingModel(uint64_t a1)
{
  result = qword_2A17B4CE0;
  if (!qword_2A17B4CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7B261C(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    result = sub_29D933E38();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_29D7B2764()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
  *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory) = v2;
  v4 = v2;
}

void sub_29D7B27D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

unint64_t sub_29D7B2810()
{
  result = qword_2A17B4700;
  if (!qword_2A17B4700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B4700);
  }

  return result;
}

void sub_29D7B285C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_29D7B2894(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return (*(v1 + 16))(v2);
}

uint64_t sub_29D7B28C8(void *a1, uint64_t a2, char a3)
{
  v7 = sub_29D9339F8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis) = 2;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___eventSubmissionManager) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities) = 0;
  sub_29D933E28();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel_provenance) = a3;
  type metadata accessor for BloodPressureSampleManager();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v3 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v14 = a1;

  *(v3 + 40) = [v13 initWithHealthStore_];

  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  sub_29D9339A8();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate, v11, v7);
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didTapLearnMore) = 0;
  return v3;
}

uint64_t sub_29D7B2AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7B2B44()
{
  if (!qword_2A17B4CF8)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4CF8);
    }
  }
}

unint64_t sub_29D7B2B98()
{
  result = qword_2A17B4D00;
  if (!qword_2A17B4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D00);
  }

  return result;
}

unint64_t sub_29D7B2BF0()
{
  result = qword_2A17B4D08;
  if (!qword_2A17B4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D08);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenChartSection(uint64_t a1)
{
  result = qword_2A17B4D18;
  if (!qword_2A17B4D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7B2CDC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_29D936BE8();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D935C78();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B4084(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = sub_29D937B88();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9379F8();
  sub_29D935E88();
  sub_29D937B48();
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  v17 = sub_29D937A98();
  sub_29D937A58();
  v17(v32, 0);
  v18 = [objc_opt_self() labelColor];
  v19 = sub_29D937A98();
  sub_29D937A68();
  v19(v32, 0);
  v32[3] = v11;
  v32[4] = MEMORY[0x29EDC7800];
  v20 = sub_29D693F78(v32);
  (*(v12 + 16))(v20, v15, v11);
  sub_29D9379C8();
  v21 = sub_29D9379E8();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_29D93AA18();

  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v30 = qword_2A17B1B70;
  v31 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D9594E0);
  (*(v23 + 104))(v25, *MEMORY[0x29EDC22C8], v24);
  (*(v27 + 104))(v26, *MEMORY[0x29EDC2A38], v28);
  sub_29D935D98();
  return (*(v12 + 8))(v15, v11);
}

id sub_29D7B31F0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29D933A58();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9359D8();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v47 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v41 - v17;
  v45 = v3;
  *(v3 + qword_2A17B4D10) = 0;
  sub_29D7B4084(0, &qword_2A17B1138, sub_29D6FC5F4, MEMORY[0x29EDC9E90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D93F680;
  v20 = objc_opt_self();
  v46 = a1;
  result = [v20 _quantityTypeWithCode_];
  if (result)
  {
    v22 = result;
    *(v19 + 56) = &type metadata for AFibBurdenChartItem;
    *(v19 + 64) = sub_29D7B3EC8();
    *(v19 + 32) = v22;
    *(v19 + 40) = a1;
    *(v19 + 48) = 0;
    type metadata accessor for AFibBurdenChartSection(0);
    *(v19 + 96) = sub_29D935DA8();
    *(v19 + 104) = sub_29D7B403C(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
    v23 = sub_29D693F78((v19 + 72));
    sub_29D7B2CDC(v23);
    sub_29D9359C8();
    ObjectType = swift_getObjectType();
    v25 = *(a3 + 8);
    v41[1] = a2;
    v26 = v25(ObjectType, a3);
    v41[0] = v18;
    if (v26)
    {
      sub_29D7B4084(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_29D93DDB0;
      (*(v12 + 16))(v28 + v27, v18, v11);
    }

    v29 = v11;
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_29D93AA18();

    strcpy(v48, "MutableArray<");
    HIWORD(v48[1]) = -4864;
    sub_29D933A48();
    v30 = sub_29D933A18();
    v32 = v31;
    (*(v42 + 8))(v10, v43);
    MEMORY[0x29ED6A240](v30, v32);

    MEMORY[0x29ED6A240](62, 0xE100000000000000);
    v33 = sub_29D935B28();
    v34 = *(a3 + 16);

    v48[0] = v34(ObjectType, a3);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = v47;
    v37 = v41[0];
    (*(v12 + 16))(v47, v41[0], v29);
    v38 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    (*(v12 + 32))(v39 + v38, v36, v29);
    sub_29D6AD548();
    sub_29D7B403C(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v40 = sub_29D938588();

    sub_29D936978();

    (*(v12 + 8))(v37, v29);
    *(v33 + qword_2A17B4D10) = v40;

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_29D7B37A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v4)
    {
      sub_29D7B4084(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v6 = sub_29D9359D8();
      v7 = *(v6 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_29D93DDB0;
      (*(v7 + 16))(v9 + v8, a3, v6);
    }

    sub_29D935B38();
  }

  return result;
}

uint64_t sub_29D7B3918()
{
  if (*(v0 + qword_2A17B4D10))
  {

    sub_29D938268();
  }

  sub_29D935BA8();

  return swift_deallocClassInstance();
}

uint64_t sub_29D7B39D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D9356A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935678();
  v7 = sub_29D935608();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void *sub_29D7B3B0C()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_29D7B3B34()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_29D7B3B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[0] = a2;
  v9 = sub_29D933CE8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_29D933C08();

  sub_29D933B08();
  v15 = objc_allocWithZone(MEMORY[0x29EDC4668]);
  v16 = sub_29D933BB8();
  v17 = sub_29D939D28();
  v18 = [v15 initWithCalendar:v16 queryIdentifier:v17];

  [a1 setSleepDataSourceProvider_];
  v19 = [a1 healthStore];
  v20 = [objc_allocWithZone(MEMORY[0x29EDC6C20]) initWithHealthStore_];

  [a1 setSleepChartFormatter_];
  v21 = [a1 healthStore];
  sub_29D936528();
  swift_allocObject();
  [a1 setAddDataViewControllerProvider_];

  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  sub_29D7B40E8();
  v22 = sub_29D935FC8();
  (*(v10 + 8))(v13, v9);
  return v22;
}

uint64_t sub_29D7B3E40(uint64_t a1)
{
  v2 = sub_29D7B3F64();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D7B3EC8()
{
  result = qword_2A17B4D28;
  if (!qword_2A17B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D28);
  }

  return result;
}

unint64_t sub_29D7B3F64()
{
  result = qword_2A17B4D38;
  if (!qword_2A17B4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D38);
  }

  return result;
}

double sub_29D7B3FC8(unsigned __int8 *a1)
{
  v3 = *(sub_29D9359D8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29D7B37A4(a1, v4, v5);
}

uint64_t sub_29D7B403C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7B4084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D7B40E8()
{
  result = qword_2A17B4D40;
  if (!qword_2A17B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D40);
  }

  return result;
}

id sub_29D7B413C()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = [v2 bundleForClass_];
  sub_29D9334A8();

  v6 = sub_29D939D28();

  v9.receiver = v0;
  v9.super_class = type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v4, v6, 0, 2, 0xE000000000000000);

  return v7;
}

void sub_29D7B42E0(uint64_t a1)
{
  v66.receiver = v1;
  v66.super_class = type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController();
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  sub_29D6A0C58();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D943A10;
  v3 = v2;
  v60 = v2;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_29D9334A8();
  v9 = v8;

  v10 = [v5 bundleForClass_];
  v11 = sub_29D9334A8();
  v13 = v12;

  v61 = type metadata accessor for TitleDetailsView();
  v14 = objc_allocWithZone(v61);
  *&v14[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v14[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v15 = &v14[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v15 = v7;
  v15[1] = v9;
  v16 = &v14[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v16 = v11;
  v16[1] = v13;
  v65.receiver = v14;
  v65.super_class = v61;
  v17 = objc_msgSendSuper2(&v65, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  *(v3 + 32) = v17;
  v18 = [v5 bundleForClass_];
  v19 = sub_29D9334A8();
  v21 = v20;

  v22 = [v5 bundleForClass_];
  v23 = sub_29D9334A8();
  v25 = v24;

  v26 = objc_allocWithZone(v61);
  *&v26[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v26[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v27 = &v26[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v27 = v19;
  v27[1] = v21;
  v28 = &v26[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v28 = v23;
  v28[1] = v25;
  v64.receiver = v26;
  v64.super_class = v61;
  v29 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  v60[5] = v29;
  v30 = [v5 bundleForClass_];
  v31 = sub_29D9334A8();
  v33 = v32;

  v34 = [v5 bundleForClass_];
  v35 = sub_29D9334A8();
  v37 = v36;

  v38 = objc_allocWithZone(v61);
  *&v38[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v38[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v39 = &v38[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v39 = v31;
  v39[1] = v33;
  v40 = &v38[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v40 = v35;
  v40[1] = v37;
  v63.receiver = v38;
  v63.super_class = v61;
  v41 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  v60[6] = v41;
  v42 = [v5 bundleForClass_];
  v43 = sub_29D9334A8();
  v45 = v44;

  v46 = [v5 bundleForClass_];
  v47 = sub_29D9334A8();
  v49 = v48;

  v50 = objc_allocWithZone(v61);
  *&v50[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v50[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v51 = &v50[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v51 = v43;
  v51[1] = v45;
  v52 = &v50[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v52 = v47;
  v52[1] = v49;
  v62.receiver = v50;
  v62.super_class = v61;
  v53 = objc_msgSendSuper2(&v62, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  v60[7] = v53;
  v54 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  sub_29D7B4B44();
  v55 = sub_29D939F18();

  v56 = [v54 initWithArrangedSubviews_];

  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  [v56 setAxis_];
  [v56 setAlignment_];
  [v56 setDistribution_];
  [v56 setSpacing_];
  v57 = [v59 contentView];
  [v57 addSubview_];

  v58 = [v59 contentView];
  [v56 hk:v58 alignConstraintsWithView:?];
}

id sub_29D7B4AEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D7B4B44()
{
  result = qword_2A17B2978;
  if (!qword_2A17B2978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B2978);
  }

  return result;
}

unint64_t sub_29D7B4C44(void *a1)
{
  v2 = v1;
  v3 = [a1 healthDataSource];
  if (!v3)
  {
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v4 = v3;
  v5 = sub_29D73F010(MEMORY[0x29EDCA190]);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (*(v2 + 24))
  {
    if (v7 == 1)
    {
      v8 = 0xE600000000000000;
      v9 = 0x6E6F69676572;
    }

    else if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v8 = 0xEC00000066664F65;
          v9 = 0x7461527472616568;
        }

        else
        {
          v8 = 0x800000029D9626D0;
          v9 = 0xD000000000000011;
        }
      }

      else
      {
        v8 = 0xE300000000000000;
        v9 = 6645601;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        v9 = 0xD000000000000013;
        v8 = 0x800000029D962690;
      }

      else
      {
        v8 = 0xEE0066664F746365;
        v9 = 0x7465447473697277;
      }
    }

    else if (v6 == 3)
    {
      v8 = 0xEF7369736F6E6761;
      v9 = 0x6944626946416F6ELL;
    }

    else
    {
      v8 = 0x800000029D9626B0;
      v9 = 0xD000000000000014;
    }
  }

  else
  {
    v8 = 0xEB00000000656C62;
    v9 = 0x616C696176616E75;
  }

  v10 = MEMORY[0x29EDC99B0];
  v65 = MEMORY[0x29EDC99B0];
  *&v64 = v9;
  *(&v64 + 1) = v8;
  sub_29D6940E0(&v64, v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v5;
  sub_29D69242C(v63, 0x616552726F727265, 0xEB000000006E6F73, isUniquelyReferenced_nonNull_native);
  v12 = v66;
  v13 = *(v2 + 25);
  if (v13 <= 2)
  {
    if (*(v2 + 25))
    {
      if (v13 == 1)
      {
        v15 = 0x7472617453746567;
        v14 = 0xEA00000000006465;
      }

      else
      {
        v14 = 0xEA0000000000736BLL;
        v15 = 0x726F577449776F68;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      v15 = 0x7472617473;
    }
  }

  else if (*(v2 + 25) > 4u)
  {
    if (v13 == 5)
    {
      v15 = 0xD000000000000013;
      v14 = 0x800000029D95A400;
    }

    else
    {
      v14 = 0xEA00000000006E6FLL;
      v15 = 0x6974656C706D6F63;
    }
  }

  else if (v13 == 3)
  {
    v14 = 0x800000029D95A420;
    v15 = 0xD000000000000010;
  }

  else
  {
    v14 = 0xEB0000000073726FLL;
    v15 = 0x746361466566696CLL;
  }

  v65 = v10;
  *&v64 = v15;
  *(&v64 + 1) = v14;
  sub_29D6940E0(&v64, v63);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v63, 1885697139, 0xE400000000000000, v16);
  v66 = v12;
  v17 = *(v2 + 32);
  if (!v17)
  {
    sub_29D8C42F8(0x437972746E756F63, 0xEB0000000065646FLL, &v64);
    sub_29D6FE6B0(&v64);
    if (v7 <= 1)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_29D8C42F8(0x746544726F727265, 0xEB000000006C6961, &v64);
    sub_29D6FE6B0(&v64);
    goto LABEL_28;
  }

  v18 = [v17 ISOCode];
  v19 = sub_29D939D68();
  v21 = v20;

  v10 = MEMORY[0x29EDC99B0];
  v65 = MEMORY[0x29EDC99B0];
  *&v64 = v19;
  *(&v64 + 1) = v21;
  sub_29D6940E0(&v64, v63);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v63, 0x437972746E756F63, 0xEB0000000065646FLL, v22);
  v66 = v12;
  if (v7 > 1)
  {
    goto LABEL_27;
  }

LABEL_25:
  v23 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingIneligibilityReasons();
  v24 = sub_29D939D68();
  v26 = v25;

  v65 = v10;
  *&v64 = v24;
  *(&v64 + 1) = v26;
  sub_29D6940E0(&v64, v63);
  v27 = v66;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v63, 0x746544726F727265, 0xEB000000006C6961, v28);
  v66 = v27;
LABEL_28:
  v29 = sub_29D939D68();
  v31 = v30;
  v32 = [a1 environmentDataSource];
  v33 = [v32 activePairedDeviceProductType];

  if (v33)
  {
    v34 = sub_29D939D68();
    v36 = v35;

    v65 = MEMORY[0x29EDC99B0];
    *&v64 = v34;
    *(&v64 + 1) = v36;
    sub_29D6940E0(&v64, v63);
    v37 = v66;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v63, v29, v31, v38);

    v66 = v37;
  }

  else
  {
    sub_29D8C42F8(v29, v31, &v64);

    sub_29D6FE6B0(&v64);
  }

  v39 = sub_29D939D68();
  v41 = v40;
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v42 = sub_29D937898();
  v43 = sub_29D69C6C0(v42, qword_2A1A2BF28);
  type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent();
  v44 = sub_29D93A308();
  v45 = v4;
  v46 = MEMORY[0x29EDC99B0];
  v65 = MEMORY[0x29EDC99B0];
  *&v64 = v44;
  *(&v64 + 1) = v47;
  sub_29D6940E0(&v64, v63);
  v48 = v66;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v63, v39, v41, v49);

  v66 = v48;
  v50 = sub_29D939D68();
  v52 = v51;
  v53 = [a1 environmentDataSource];
  v54 = sub_29D8A3520(v45, v53, v43);

  v65 = sub_29D6B73CC();
  *&v64 = v54;
  sub_29D6940E0(&v64, v63);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v63, v50, v52, v55);

  v56 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
  v57 = sub_29D939D68();
  v59 = v58;

  v65 = v46;
  *&v64 = v57;
  *(&v64 + 1) = v59;
  sub_29D6940E0(&v64, v63);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v63, 0x5665727574616566, 0xEE006E6F69737265, v60);
  sub_29D936978();
  return v48;
}

uint64_t sub_29D7B54C8()
{
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LowHeartRateNotificationsFeatureStatusActionHandler(uint64_t a1)
{
  result = qword_2A1A244C0;
  if (!qword_2A1A244C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7B55B0()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9346E8();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934C58();
  v61 = *(v8 - 8);
  v62 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v58 = &v54 - v13;
  v14 = sub_29D936638();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D9369E8();
  v19 = MEMORY[0x29EDC2970];
  sub_29D7B5F98(&qword_2A17B1E40, MEMORY[0x29EDC2970], MEMORY[0x29EDC2980]);
  sub_29D7B5F98(&qword_2A17B3920, v19, MEMORY[0x29EDC2978]);
  sub_29D936628();
  v20 = *(v15 + 8);
  v20(v18, v14);
  if (!v63[0])
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v33 = sub_29D937878();
    v38 = sub_29D93A298();
    if (os_log_type_enabled(v33, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v63[0] = v40;
      *v39 = 136315138;
      v41 = sub_29D93AF08();
      v43 = sub_29D6C2364(v41, v42, v63);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29D677000, v33, v38, "[%s] Could not access action handler user data!", v39, 0xCu);
      sub_29D69417C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

LABEL_16:

    return;
  }

  v55 = v3;
  sub_29D936B88();
  sub_29D936608();
  v20(v18, v14);
  sub_29D693E2C(v63, v63[3]);
  v21 = sub_29D936588();
  sub_29D69417C(v63);
  sub_29D936B88();
  v22 = sub_29D936618();
  v20(v18, v14);
  sub_29D936B88();
  v23 = v58;
  sub_29D9347B8();
  v20(v18, v14);
  sub_29D9369B8();
  v25 = v59;
  v24 = v60;
  v26 = (*(v59 + 88))(v7, v60);
  v27 = v23;
  if (v26 == *MEMORY[0x29EDC1760])
  {
    v29 = v61;
    v28 = v62;
    v30 = v21;
    v31 = v57;
    (*(v61 + 16))(v57, v27, v62);
    v32 = objc_allocWithZone(type metadata accessor for BradycardiaSettingsViewController(0));
    v33 = v30;
    v34 = sub_29D87FB10(v33, v31, 0);

    v35 = [v22 navigationController];
    if (v35)
    {
      v36 = v35;
      [v35 pushViewController:v34 animated:1];

LABEL_11:
      (*(v29 + 8))(v27, v28);
      return;
    }

    (*(v29 + 8))(v27, v28);

    goto LABEL_16;
  }

  v44 = v21;
  v29 = v61;
  v28 = v62;
  if (v26 == *MEMORY[0x29EDC1768])
  {
    v45 = v57;
    (*(v61 + 16))(v57, v27, v62);
    v46 = objc_allocWithZone(type metadata accessor for BradycardiaSettingsViewController(0));
    v47 = v44;
    v48 = sub_29D87FB10(v47, v45, 1);

    sub_29D6CC038();
    v49 = v48;
    sub_29D9365C8();

    v50 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v22 presentViewController:v50 animated:1 completion:0];

    goto LABEL_11;
  }

  if (v26 == *MEMORY[0x29EDC1758] || v26 == *MEMORY[0x29EDC1750])
  {
    v51 = v55;
    sub_29D9369D8();
    v52 = sub_29D9336F8();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      (*(v29 + 8))(v27, v28);

      sub_29D6D96C0(v51);
    }

    else
    {
      sub_29D9336A8();

      (*(v29 + 8))(v27, v28);
      (*(v53 + 8))(v51, v52);
    }
  }

  else
  {
    (*(v61 + 8))(v27, v62);

    (*(v25 + 8))(v7, v24);
  }
}

uint64_t sub_29D7B5DC4(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D7B5EC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LowHeartRateNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7B5F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D7B6010(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v33 = a3;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D7B7CD8(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v30 - v7;
  sub_29D7B7CD8(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v4);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v30 - v11;
  v32 = sub_29D933318();
  v13 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D933CE8();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B7CD8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v4);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = &v30 - v24;
  v26 = sub_29D9339F8();
  sub_29D6FD494(v26, a2);
  v31 = sub_29D69C6C0(v26, a2);
  sub_29D933C88();
  (*(v18 + 56))(v12, 1, 1, v17);
  v27 = sub_29D933D38();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  sub_29D933308();
  sub_29D933C18();
  (*(v13 + 8))(v16, v32);
  (*(v18 + 8))(v21, v17);
  v28 = *(v26 - 8);
  result = (*(v28 + 48))(v25, 1, v26);
  if (result != 1)
  {
    return (*(v28 + 32))(v31, v25, v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7B6450()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v1;
}

void *sub_29D7B64C8()
{
  v1 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities;
  if (*(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore);
    type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v3;
    type metadata accessor for BloodPressureJournalAnalyticsUtilities();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v2[5] = v4;
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

uint64_t sub_29D7B6568(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29D939968();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D939998();
  v12 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v16 = sub_29D93A468();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  aBlock[4] = sub_29D7B7F00;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2445CA0;
  v18 = _Block_copy(aBlock);

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D7B7F38(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D7B7F38(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v21);
}

uint64_t sub_29D7B6860(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29D933A58();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v104 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v109 = v10;
  v110 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v108 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_29D933318();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v100 = &v82[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v82[-v20];
  v22 = sub_29D933CE8();
  v107 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v111 = &v82[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  if (v113)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2BF10);
    v26 = sub_29D937878();
    v27 = sub_29D93A288();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136315138;
      v30 = sub_29D93AF08();
      v32 = sub_29D6C2364(v30, v31, &aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29D677000, v26, v27, "[%s] Journal type must be selected to save a journal", v28, 0xCu);
      sub_29D69417C(v29);
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    return a1(0, 0);
  }

  else
  {
    v95 = v22;
    v101 = v15;
    v102 = v14;
    v96 = v6;
    v97 = a1;
    v98 = a2;
    v103 = aBlock;
    v34 = [objc_opt_self() hk_gregorianCalendar];
    sub_29D933C08();

    sub_29D7B7CD8(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
    v36 = v35;
    v37 = sub_29D933CC8();
    v38 = *(v37 - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v91 = v36;
    v88 = v40 + 2 * v39;
    v41 = swift_allocObject();
    v84 = xmmword_29D93F680;
    *(v41 + 16) = xmmword_29D93F680;
    v89 = v40;
    v42 = v41 + v40;
    v43 = *(v38 + 104);
    v85 = *MEMORY[0x29EDB9CC8];
    v43(v42);
    v44 = *MEMORY[0x29EDB9CE0];
    v90 = v39;
    v83 = v44;
    v87 = v43;
    v43(v42 + v39);
    sub_29D6E3748(v41);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v45 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
    swift_beginAccess();
    v46 = v110;
    v47 = *(v110 + 16);
    v93 = v3;
    v48 = v108;
    v49 = v109;
    v86 = v47;
    v47(v108, v3 + v45, v109);
    sub_29D933B48();

    v99 = *(v46 + 8);
    v110 = v46 + 8;
    v99(v48, v49);
    v50 = objc_allocWithZone(MEMORY[0x29EDC5208]);
    v94 = v21;
    v51 = sub_29D933288();
    v52 = [v50 initWithDayWindowType:0 scheduledTime:v51];

    sub_29D7B8020(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_29D940030;
    *(v53 + 32) = v52;
    v118 = v53;
    v92 = v52;
    if (v103)
    {
      v54 = v52;
      v55 = v93;
      v56 = v108;
      v57 = v109;
    }

    else
    {
      v58 = swift_allocObject();
      *(v58 + 16) = v84;
      v59 = v58 + v89;
      v60 = v87;
      (v87)(v58 + v89, v85, v37);
      (v60)(v59 + v90, v83, v37);
      v61 = v52;
      sub_29D6E3748(v58);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v62 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime;
      v63 = v93;
      swift_beginAccess();
      v56 = v108;
      v64 = v109;
      v86(v108, &v63[v62], v109);
      v65 = v100;
      sub_29D933B48();

      v99(v56, v64);
      v66 = objc_allocWithZone(MEMORY[0x29EDC5208]);
      v67 = sub_29D933288();
      v68 = [v66 initWithDayWindowType:1 scheduledTime:v67];

      v69 = v68;
      MEMORY[0x29ED6A300]();
      v55 = v63;
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();

      (*(v101 + 8))(v65, v102);
      v57 = v64;
    }

    v70 = v104;
    sub_29D933A48();
    sub_29D9339A8();
    v71 = objc_allocWithZone(MEMORY[0x29EDC51F0]);
    v72 = sub_29D933A28();
    v73 = v56;
    v74 = sub_29D933958();
    sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
    v75 = sub_29D939F18();

    v76 = [v71 initWithUUID:v72 startDate:v74 journalType:v103 scheduleType:0 journalState:0 timeIntervals:v75];

    v99(v73, v57);
    (*(v105 + 8))(v70, v106);
    v77 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v78 = swift_allocObject();
    v78[2] = v55;
    v78[3] = v76;
    v79 = v98;
    v78[4] = v97;
    v78[5] = v79;
    v78[6] = v96;
    v116 = sub_29D7B7D3C;
    v117 = v78;
    aBlock = MEMORY[0x29EDCA5F8];
    v113 = 1107296256;
    v114 = sub_29D6C1F54;
    v115 = &unk_2A2445B88;
    v80 = _Block_copy(&aBlock);

    v81 = v76;

    [v77 fetchActiveJournalWithCompletion_];
    _Block_release(v80);

    (*(v101 + 8))(v94, v102);
    return (*(v107 + 8))(v111, v95);
  }
}

uint64_t sub_29D7B73D8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
  swift_beginAccess();
  sub_29D7B7D64(a3 + v13, v31);
  if (!v32)
  {
    return sub_29D7B7E5C(v31);
  }

  sub_29D6945AC(v31, v30);
  sub_29D7B7E5C(v31);
  sub_29D693E2C(v30, v30[3]);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;

  if (a1)
  {
    v15 = a1;
    v16 = sub_29D73C368();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = sub_29D7B7EE8;
    v18[3] = v14;
    v18[4] = v17;
    v18[5] = a4;
    v28 = sub_29D7B7EF4;
    v29 = v18;
    aBlock = MEMORY[0x29EDCA5F8];
    v25 = 1107296256;
    v26 = sub_29D8E44F0;
    v27 = &unk_2A2445C50;
    v19 = _Block_copy(&aBlock);

    v20 = a4;

    [v16 closeJournal:v15 completion:v19];
    _Block_release(v19);
  }

  else
  {
    v22 = sub_29D73C368();
    v28 = sub_29D7B7EE8;
    v29 = v14;
    aBlock = MEMORY[0x29EDCA5F8];
    v25 = 1107296256;
    v26 = sub_29D8E44F0;
    v27 = &unk_2A2445BD8;
    v23 = _Block_copy(&aBlock);

    [v22 saveJournal:a4 completion:v23];
    _Block_release(v23);
  }

  return sub_29D69417C(v30);
}

uint64_t sub_29D7B7684(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2BF10);
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (a1)
    {
      v16 = 0x6673736563637573;
    }

    else
    {
      v16 = 0x7365636375736E75;
    }

    if (a1)
    {
      v17 = 0xEA00000000006C75;
    }

    else
    {
      v17 = 0xEC0000006C756673;
    }

    v18 = sub_29D6C2364(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_29D677000, v9, v10, "[%s] Closing existing journal and saving a new journal was %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_29D7B7874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(v3 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = *(v3 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_flowType);
  v9 = *(v3 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_provenance);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v6;
  sub_29D9383C8();

  sub_29D8B530C(v5, v4, v9, v8, v13 & 1 | (v12 != 0));
}

uint64_t sub_29D7B7984()
{
  v1 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel__journalType;
  sub_29D7B7CD8(0, &qword_2A17B4DB0, sub_29D7B7CA4, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
  v4 = sub_29D9339F8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime, v4);
  sub_29D7B7E5C(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalCreationModel(uint64_t a1)
{
  result = qword_2A17B4DA0;
  if (!qword_2A17B4DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7B7B64(uint64_t a1)
{
  sub_29D7B7CD8(319, &qword_2A17B4DB0, sub_29D7B7CA4, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    sub_29D9339F8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D7B7CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7B7D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7B7D64(uint64_t a1, uint64_t a2)
{
  sub_29D7B7CD8(0, &qword_2A17B4DC0, sub_29D7B7DF8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D7B7DF8()
{
  result = qword_2A17B73B0;
  if (!qword_2A17B73B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B73B0);
  }

  return result;
}

uint64_t sub_29D7B7E5C(uint64_t a1)
{
  sub_29D7B7CD8(0, &qword_2A17B4DC0, sub_29D7B7DF8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D7B7F00()
{
  if (*(v0 + 16))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return (*(v0 + 24))(v1);
}

uint64_t sub_29D7B7F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D7B7FA4()
{
  result = qword_2A17B4DC8;
  if (!qword_2A17B4DC8)
  {
    sub_29D7B8020(255, &qword_2A17B4DD0, &type metadata for BloodPressureJournalCreationStage, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4DC8);
  }

  return result;
}

void sub_29D7B8020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D7B8074()
{
  result = qword_2A17B4DD8;
  if (!qword_2A17B4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4DD8);
  }

  return result;
}

unint64_t sub_29D7B80CC()
{
  result = qword_2A17B4DE0;
  if (!qword_2A17B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4DE0);
  }

  return result;
}

id sub_29D7B8138(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v10 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolColor;
  *&v4[v10] = [objc_opt_self() systemPinkColor];
  v11 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig;
  v12 = objc_opt_self();
  v13 = [v12 configurationWithPointSize_];
  v14 = [v12 configurationPreferringMulticolor];
  v15 = [v13 configurationByApplyingConfiguration_];

  v16 = [v12 configurationWithColorRenderingMode_];
  v17 = [v15 configurationByApplyingConfiguration_];

  *&v4[v11] = v17;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29D7B84CC();

  return v18;
}

id sub_29D7B8310(void *a1)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v4 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolColor;
  *&v1[v4] = [objc_opt_self() systemPinkColor];
  v5 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig;
  v6 = objc_opt_self();
  v7 = [v6 configurationWithPointSize_];
  v8 = [v6 configurationPreferringMulticolor];
  v9 = [v7 configurationByApplyingConfiguration_];

  v10 = [v6 configurationWithColorRenderingMode_];
  v11 = [v9 configurationByApplyingConfiguration_];

  *&v1[v5] = v11;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_29D7B84CC();
  }

  return v13;
}

void sub_29D7B84CC()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView];
  v2 = *&v0[OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig];
  v3 = sub_29D939D28();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v1 setImage_];
  [v1 setContentMode_];
  [v1 setTintColor_];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  sub_29D6A0C58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D943A10;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  sub_29D6D37A4();
  v19 = sub_29D939F18();

  [v5 activateConstraints_];
}

void sub_29D7B87DC()
{
  v1 = sub_29D939958();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939938();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig);
  v12 = sub_29D939D28();
  v13 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v13)
  {
    sub_29D939928();
    sub_29D939948();
    sub_29D7B8ABC();
    sub_29D93A1D8();

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

id sub_29D7B8A08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D7B8ABC()
{
  result = qword_2A17B4E00;
  if (!qword_2A17B4E00)
  {
    sub_29D939938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4E00);
  }

  return result;
}

id sub_29D7B8B34(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D935E88();
  v2 = sub_29D939D28();

  [v1 setText_];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setNumberOfLines_];
  v4 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v1 setFont_];

  [v1 setAdjustsFontForContentSizeCategory_];
  return v1;
}

id sub_29D7B8CAC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D7B8D10(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = a1 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details;
  if (*(a1 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details + 8))
  {
    sub_29D935E88();
    v4 = sub_29D939D28();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText_];

  [v2 setHidden_];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

uint64_t sub_29D7B8E94()
{
  v1 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints;
  if (*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints];
  }

  else
  {
    sub_29D6A0C58();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29D940030;
    v3 = sub_29D7B8B14();
    v4 = [v3 bottomAnchor];

    v5 = [v0 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    *&v0[v1] = v2;
    sub_29D935E88();
  }

  sub_29D935E88();
  return v2;
}

uint64_t sub_29D7B8F84()
{
  v1 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints;
  if (*(v0 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints);
  }

  else
  {
    sub_29D6A0C58();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29D940030;
    v3 = sub_29D7B8C8C();
    v4 = [v3 topAnchor];

    v5 = sub_29D7B8B14();
    v6 = [v5 bottomAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:0.0];
    *(v2 + 32) = v7;
    *(v0 + v1) = v2;
    sub_29D935E88();
  }

  sub_29D935E88();
  return v2;
}

id sub_29D7B9084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints] = 0;
  v6 = &v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title];
  *v6 = a1;
  *(v6 + 1) = a2;
  *v5 = a3;
  *(v5 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for TitleOptionalDetailsView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D7B91D8();

  return v7;
}

void sub_29D7B91D8()
{
  v1 = sub_29D7B8B14();
  [v0 addSubview_];

  v2 = sub_29D7B8C8C();
  [v0 addSubview_];

  if (*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details + 8])
  {
    v3 = sub_29D7B8F84();
  }

  else
  {
    v3 = sub_29D7B8E94();
  }

  v26 = v3;
  v25 = objc_opt_self();
  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D940A00;
  v5 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___titleLabel;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___titleLabel] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v0[v5] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

  *(v4 + 40) = v11;
  v12 = [*&v0[v5] trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-0.0];

  *(v4 + 48) = v14;
  v15 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel;
  v16 = [*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel] leadingAnchor];
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v4 + 56) = v18;
  v19 = [*&v0[v15] trailingAnchor];
  v20 = [*&v0[v5] trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v4 + 64) = v21;
  v22 = [*&v0[v15] bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v4 + 72) = v24;
  sub_29D88BCBC(v26);
  sub_29D6D37A4();
  v27 = sub_29D939F18();

  [v25 activateConstraints_];
}

void sub_29D7B954C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29D7B8B14();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x656C7469542ELL, 0xE600000000000000);
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_29D7B8C8C();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x6C69617465442ELL, 0xE700000000000000);
    v5 = sub_29D939D28();

    [v4 setAccessibilityIdentifier_];
  }
}

void sub_29D7B9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title);
  *v7 = a1;
  v7[1] = a2;
  sub_29D935E88();

  v8 = (v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details);
  v9 = *(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details + 8);
  *v8 = a3;
  v8[1] = a4;
  sub_29D935E88();

  v10 = sub_29D7B8B14();
  v11 = sub_29D939D28();
  [v10 setText_];

  v12 = sub_29D7B8C8C();
  v13 = v12;
  if (a4)
  {
    v14 = sub_29D939D28();
    [v13 setText_];

    [*(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel) setHidden_];
    if (v9)
    {
      return;
    }

    v15 = objc_opt_self();
    sub_29D7B8E94();
    sub_29D6D37A4();
    v16 = sub_29D939F18();

    [v15 deactivateConstraints_];

    sub_29D7B8F84();
  }

  else
  {
    [v12 setText_];

    [*(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel) setHidden_];
    if (!v9)
    {
      return;
    }

    v15 = objc_opt_self();
    sub_29D7B8F84();
    sub_29D6D37A4();
    v17 = sub_29D939F18();

    [v15 deactivateConstraints_];

    sub_29D7B8E94();
  }

  v18 = sub_29D939F18();

  [v15 activateConstraints_];
}

id sub_29D7B9918(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TitleOptionalDetailsView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D7B9A28(uint64_t a1)
{
  sub_29D7BAF88(0, &qword_2A17B4E38, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v13[-v4];
  v6 = sub_29D937068();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v8 = sub_29D937048();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_29D937058();
  v14 = a1;
  v15[3] = sub_29D937088();
  v15[4] = MEMORY[0x29EDC2C50];
  sub_29D693F78(v15);
  sub_29D937078();
  v9 = sub_29D935808();
  sub_29D69417C(v15);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  *(v10 + 32) = v9;
  v11 = MEMORY[0x29ED65BE0]();

  return v11;
}

uint64_t sub_29D7B9C10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 33);
  if (([*a1 isClassificationAgeGated] & 1) != 0 || (v1 & 1) == 0)
  {
    v7 = sub_29D9357F8();
    if ((v2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_29D7BA048(1, &v20);
    MEMORY[0x2A1C7C4A8](v9, v10);
    v16[3] = sub_29D9370F8();
    v16[4] = MEMORY[0x29EDC2C70];
    sub_29D693F78(v16);
    sub_29D9370E8();
    v27 = v20;
    sub_29D6AA360(&v27);
    v26 = v21;
    sub_29D6AA360(&v26);
    v25 = v22;
    sub_29D7BAFEC(&v25, &qword_2A17B4E40, type metadata accessor for HKBloodPressureClassificationCategory, MEMORY[0x29EDC9A40]);
    v24 = v23;
    sub_29D7BA7A8(&v24);
    v11 = sub_29D935808();
    sub_29D69417C(v16);
    sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93DDB0;
    *(v12 + 32) = v11;
    MEMORY[0x29ED65BE0]();

    v8 = sub_29D9357F8();

    goto LABEL_7;
  }

  sub_29D7BA048(0, v17);
  MEMORY[0x2A1C7C4A8](v3, v4);
  *(&v21 + 1) = sub_29D9370F8();
  v22 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v20);
  sub_29D9370E8();
  v31 = v17[0];
  sub_29D6AA360(&v31);
  v30 = v17[1];
  sub_29D6AA360(&v30);
  v29 = v18;
  sub_29D7BAFEC(&v29, &qword_2A17B4E40, type metadata accessor for HKBloodPressureClassificationCategory, MEMORY[0x29EDC9A40]);
  v28 = v19;
  sub_29D7BA7A8(&v28);
  v5 = sub_29D935808();
  sub_29D69417C(&v20);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  *(v6 + 32) = v5;
  MEMORY[0x29ED65BE0]();

  v7 = sub_29D9357F8();

  if (v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = sub_29D9357F8();
LABEL_7:
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D93F680;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  v14 = MEMORY[0x29ED65BE0]();

  return v14;
}

void sub_29D7B9FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_29D7BA048@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = 4271950;
  sub_29D7BAF88(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v42 - v12;
  if (a1)
  {
    if (qword_2A17B0D98 != -1)
    {
      swift_once();
    }

    v14 = sub_29D9334A8();
    v42 = v15;
    v43 = v14;
    v16 = sub_29D933AA8();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    sub_29D7B9FE0(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93DDB0;
    v18 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:2 abbreviated:1];
    if (v18)
    {
      v19 = v18;
      v5 = sub_29D939D68();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    *(v17 + 56) = MEMORY[0x29EDC99B0];
    *(v17 + 64) = sub_29D69AD24();
    *(v17 + 32) = v5;
    *(v17 + 40) = v21;
    v31 = sub_29D9334A8();
    v33 = v32;
    if (*(v17 + 16))
    {
      v31 = sub_29D939D78();
      v35 = v34;

      v33 = v35;
    }

    else
    {
    }

    sub_29D7BAFEC(v10, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
    v39 = *(v2 + 40);
  }

  else
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v22 = sub_29D9334A8();
    v42 = v23;
    v43 = v22;
    v24 = sub_29D933AA8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    sub_29D7B9FE0(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_29D93DDB0;
    v26 = *(v2 + 8);
    v44 = *(v2 + 16);
    v27 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:v26 abbreviated:1];
    if (v27)
    {
      v28 = v27;
      v5 = sub_29D939D68();
      v30 = v29;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    *(v25 + 56) = MEMORY[0x29EDC99B0];
    *(v25 + 64) = sub_29D69AD24();
    *(v25 + 32) = v5;
    *(v25 + 40) = v30;
    v31 = sub_29D9334A8();
    v33 = v36;
    if (*(v25 + 16))
    {
      v31 = sub_29D939D78();
      v38 = v37;

      v33 = v38;
    }

    else
    {
    }

    sub_29D7BAFEC(v13, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
    v39 = v44;
  }

  v44 = v39;
  sub_29D935E88();
  sub_29D935E88();
  v40 = v42;
  *a2 = v43;
  *(a2 + 8) = v40;
  *(a2 + 16) = v31;
  *(a2 + 24) = v33;
  result = *&v44;
  *(a2 + 32) = v44;
  return result;
}

uint64_t sub_29D7BA618(uint64_t a1)
{
  v12 = sub_29D9370F8();
  v13 = MEMORY[0x29EDC2C70];
  sub_29D693F78(v11);
  sub_29D9370E8();
  v2 = sub_29D935808();
  sub_29D69417C(v11);
  sub_29D7BAABC(*(a1 + 32), *(a1 + 40));
  v4 = v3;
  v5 = type metadata accessor for BloodPressurePDFClassificationsTable();
  swift_allocObject();
  v6 = sub_29D906EC4(v4, &unk_2A243DEC8, 30.0, 10.0, 10.0);

  v12 = v5;
  v13 = sub_29D7BAE7C(&qword_2A17B4E50, type metadata accessor for BloodPressurePDFClassificationsTable, &unk_29D9555B8);
  v11[0] = v6;
  v7 = sub_29D935808();
  sub_29D69417C(v11);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93F680;
  *(v8 + 32) = v2;
  *(v8 + 40) = v7;
  v9 = MEMORY[0x29ED65BE0]();

  return v9;
}

uint64_t sub_29D7BA7A8(uint64_t a1)
{
  sub_29D7BA804(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7BA804(uint64_t a1)
{
  if (!qword_2A17B4E48)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    sub_29D7BAE7C(&qword_2A17B10B0, type metadata accessor for HKBloodPressureClassificationCategory, &unk_29D93E34C);
    v1 = sub_29D939C78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4E48);
    }
  }
}

uint64_t sub_29D7BA8A0(uint64_t *a1)
{
  v2 = sub_29D935378();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  sub_29D935E88();
  v9 = sub_29D934FC8();
  v10 = *MEMORY[0x29EDC1F60];
  v11 = *(v3 + 104);
  v11(v6, v10, v2);
  v12 = sub_29D936FD8();
  v23 = v12;
  v24 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v22);
  MEMORY[0x29ED673E0](v7, v8, v6, v9);
  v13 = sub_29D935808();
  sub_29D69417C(v22);
  v15 = a1[2];
  v14 = a1[3];
  sub_29D935E88();
  v16 = sub_29D934F68();
  v11(v6, v10, v2);
  v23 = v12;
  v24 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v22);
  MEMORY[0x29ED673E0](v15, v14, v6, v16);
  v17 = sub_29D935808();
  sub_29D69417C(v22);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D93F680;
  *(v18 + 32) = v13;
  *(v18 + 40) = v17;
  v19 = MEMORY[0x29ED65BE0]();

  return v19;
}

void sub_29D7BAABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = &off_29D93D000;
  if (v2)
  {
    v5 = (a1 + 32);
    v30 = objc_opt_self();
    v6 = MEMORY[0x29EDCA190];
    v31 = a2;
    while (*(a2 + 16))
    {
      v7 = *v5;
      v8 = sub_29D6959E0();
      if ((v9 & 1) == 0)
      {
        goto LABEL_22;
      }

      v10 = *(*(a2 + 56) + 8 * v8);
      v11 = [v30 localizedStringForBloodPressureClassificationCategoryTitle_];
      if (v11)
      {
        v12 = v11;
        v32 = sub_29D939D68();
        v33 = v13;
      }

      else
      {
        v32 = 4271950;
        v33 = 0xE300000000000000;
      }

      v34[0] = v10;
      v14 = sub_29D93AD38();
      v16 = v15;
      if (qword_2A1A242C0 != -1)
      {
        swift_once();
      }

      v17 = sub_29D9334A8();
      v19 = v18;
      if (v10 <= 0)
      {
        v20 = v17;
      }

      else
      {

        v20 = sub_29D9334A8();
        v19 = v21;
      }

      v22 = sub_29D7DB1E4(v32, v33, v14, v16, v20, v19);
      v34[3] = &type metadata for BloodPressurePDFClassificationsTableRow;
      v34[4] = sub_29D7BAEC4();
      v34[0] = v22;
      v23 = sub_29D936418();
      sub_29D69417C(v34);
      sub_29D7BAF18(0, &qword_2A17B1390, &qword_2A17B1398, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_29D93DDB0;
      *(v24 + 32) = v23;
      v25 = MEMORY[0x29ED66800](v24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_29D68FDF4(0, v6[2] + 1, 1, v6);
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_29D68FDF4((v26 > 1), v27 + 1, 1, v6);
      }

      v6[2] = v27 + 1;
      v6[v27 + 4] = v25;
      ++v5;
      --v2;
      v3 = &off_29D93D000;
      a2 = v31;
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
LABEL_20:
    v28 = MEMORY[0x29ED667F0](v6);

    sub_29D7BAF18(0, &qword_2A17B1390, &qword_2A17B1398, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
    v29 = swift_allocObject();
    *(v29 + 16) = *(v3 + 219);
    *(v29 + 32) = v28;
    MEMORY[0x29ED66800](v29);
  }
}

uint64_t sub_29D7BAE7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D7BAEC4()
{
  result = qword_2A17B4E58;
  if (!qword_2A17B4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4E58);
  }

  return result;
}

void sub_29D7BAF18(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D7B9FE0(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D7BAF88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7BAFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_29D7BAF88(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata accessor for BloodPressureDayCoordinate(uint64_t a1)
{
  result = qword_2A17B4E60;
  if (!qword_2A17B4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29D7BB0BC(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    result = sub_29D7B2810();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D7BB168(uint64_t a1)
{
  sub_29D7BE708(319, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  if (v1 <= 0x3F)
  {
    sub_29D7BE708(319, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    if (v2 <= 0x3F)
    {
      sub_29D9346E8();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_29D7BB2F4@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v1 + v16, v10, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_29D7BEECC(v10, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return (*(v12 + 16))(v18, v1 + qword_2A17B4EA8, v11);
  }

  else
  {
    sub_29D7BEE3C(v10, v6);
    sub_29D7BEECC(v10, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    (*(v12 + 16))(v15, v6, v11);
    sub_29D7BEFFC(v6, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return (*(v12 + 32))(v18, v15, v11);
  }
}

char *sub_29D7BB5B4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D7BE708(0, &unk_2A1A248F0, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v54 = &v50 - v9;
  sub_29D710880(0);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v50 - v15;
  v17 = sub_29D934C58();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = qword_2A17B4E88;
  v23 = sub_29D9371A8();
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = qword_2A17B4E98;
  v25 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  *(v3 + qword_2A17D0AA0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17D0AA8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17B4EA0) = 0;
  v26 = qword_2A17B4EA8;
  v27 = sub_29D9346E8();
  v52 = *(v27 - 8);
  v53 = v27;
  v28 = *(v52 + 16);
  v58 = a1;
  v28(v3 + v26, a1);
  *(v3 + qword_2A17B4E70) = a3;
  v29 = *MEMORY[0x29EDBA6F0];
  v30 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v31 = a3;
  v32 = v17;
  v33 = v31;
  v34 = [v30 initWithFeatureIdentifier:v29 healthStore:v31];
  *(v3 + qword_2A17B4E80) = v34;
  v35 = (v3 + qword_2A17B4E90);
  *v35 = sub_29D67BF28;
  v35[1] = 0;
  v36 = HKLogHeartRateCategory();
  v37 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
  v59 = v33;
  v38 = [v37 initWithLoggingCategory:v36 healthDataSource:v33];

  *(v3 + qword_2A17B4EB0) = v38;
  v39 = *(v18 + 16);
  v39(v21, a2, v32);
  v40 = (*(v18 + 88))(v21, v32);
  if (v40 == *MEMORY[0x29EDC1C00])
  {
    v41 = 3;
  }

  else
  {
    if (v40 == *MEMORY[0x29EDC1BF8])
    {
      v41 = 4;
      goto LABEL_10;
    }

    if (v40 == *MEMORY[0x29EDC1C08])
    {
      v41 = 0;
      goto LABEL_10;
    }

    if (v40 == *MEMORY[0x29EDC1BF0])
    {
      v41 = 5;
      goto LABEL_10;
    }

    v41 = 6;
  }

  (*(v18 + 8))(v21, v32);
LABEL_10:
  *(v3 + qword_2A17B4E78) = v41;
  v50 = a2;
  v39(v16, a2, v32);
  (*(v18 + 56))(v16, 0, 1, v32);
  v42 = sub_29D934C48();
  v61 = sub_29D73BA9C(0, 0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v43 = sub_29D93A468();
  v60 = v43;
  v44 = sub_29D93A448();
  v45 = v54;
  (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
  sub_29D7BECC0(0, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  sub_29D7BEA90();
  v51 = v32;
  sub_29D706380();
  v46 = v55;
  sub_29D938538();
  sub_29D7BEECC(v45, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D7BEB20();
  v47 = v57;
  v48 = sub_29D938588();

  (*(v18 + 8))(v50, v51);
  (*(v52 + 8))(v58, v53);
  (*(v56 + 8))(v46, v47);
  *&v42[qword_2A17B4EA0] = v48;

  return v42;
}

char *sub_29D7BBCEC(void *a1, uint64_t a2)
{
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v20[-v5];
  sub_29D7BE708(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v20[-v9];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_29D9371A8();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v10, a1, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v15 = qword_2A17B4E88;
    swift_beginAccess();
    sub_29D70DA30(v10, &v12[v15]);
    swift_endAccess();
    v16 = *&v12[qword_2A17B4E90];
    v17 = *&v12[qword_2A17B4E90 + 8];

    sub_29D8C1254(a1, v16, v17, v6);

    v18 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
    (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
    v19 = qword_2A17B4E98;
    swift_beginAccess();
    sub_29D7BEB78(v6, &v12[v19]);
    swift_endAccess();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_29D9367C8();

      sub_29D936978();
    }

    else
    {
    }

    return sub_29D7BEECC(v6, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  }

  return result;
}

uint64_t sub_29D7BBFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v1 + v12, v11, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_29D7BEECC(v11, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  }

  else
  {
    sub_29D7BEE3C(v11, v7);
    sub_29D7BEECC(v11, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    v14 = &v7[*(v3 + 32)];
    v15 = *v14;
    sub_29D7BF05C(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3));
    sub_29D7BEFFC(v7, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    if (v15)
    {
      sub_29D9368E8();
      v13 = 0;
      goto LABEL_6;
    }
  }

  v13 = 1;
LABEL_6:
  v16 = sub_29D9368F8();
  return (*(*(v16 - 8) + 56))(a1, v13, 1, v16);
}

uint64_t sub_29D7BC24C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v53 - v8;
  sub_29D7BE708(0, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x29EDCA190];
  v18 = objc_opt_self();
  v19 = sub_29D939D28();
  v20 = [v18 groupSpecifierWithID_];

  if (!v20)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v20 = sub_29D937878();
    v23 = sub_29D93A288();
    if (os_log_type_enabled(v20, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v57[0] = v25;
      *v24 = 136315138;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, v57);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29D677000, v20, v23, "[%s] Could not get specifier footer content.", v24, 0xCu);
      sub_29D69417C(v25);
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    goto LABEL_14;
  }

  v21 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v0 + v21, v9, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_29D7BEECC(v9, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_9:
    sub_29D7BEECC(v13, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v29 = sub_29D937898();
    sub_29D69C6C0(v29, qword_2A1A2C008);
    v30 = sub_29D937878();
    v31 = sub_29D93A2A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136315138;
      v34 = sub_29D93AF08();
      v36 = sub_29D6C2364(v34, v35, &v56);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_29D677000, v30, v31, "[%s] Could not get footer content.", v32, 0xCu);
      sub_29D69417C(v33);
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

LABEL_14:
    return MEMORY[0x29EDCA190];
  }

  sub_29D7BEE3C(v9, v5);
  sub_29D7BEECC(v9, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  sub_29D7BEF28(&v5[*(v1 + 36)], v13, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  sub_29D7BEFFC(v5, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_9;
  }

  sub_29D7BEF94(v13, v54, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  v38 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  sub_29D935E88();
  v39 = sub_29D939D28();
  v40 = [v38 initWithString_];

  v41 = sub_29D939D28();

  v42 = [v40 localizedStandardRangeOfString_];
  v44 = v43;

  sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v46)
  {
    sub_29D939D68();
    v46 = sub_29D939D28();
  }

  [v20 setProperty:v46 forKey:*MEMORY[0x29EDC62D0]];

  v47 = sub_29D939D28();
  [v20 setProperty:v47 forKey:*MEMORY[0x29EDC62F0]];

  v59.location = v42;
  v59.length = v44;
  v48 = NSStringFromRange(v59);
  if (!v48)
  {
    sub_29D939D68();
    v48 = sub_29D939D28();
  }

  [v20 setProperty:v48 forKey:*MEMORY[0x29EDC62E0]];

  v49 = [objc_opt_self() valueWithNonretainedObject_];
  [v20 setProperty:v49 forKey:*MEMORY[0x29EDC62E8]];
  sub_29D933DC8();
  v50 = sub_29D939D28();

  [v20 setProperty:v50 forKey:*MEMORY[0x29EDC62D8]];

  v51 = v20;
  MEMORY[0x29ED6A300]();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D939F78();
  }

  sub_29D939FA8();

  v52 = v58;
  sub_29D7BEFFC(v54, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  return v52;
}

uint64_t sub_29D7BCB00()
{
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v20[-v3];
  v5 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x29EDCA190];
  v10 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v0 + v10, v4, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29D7BEECC(v4, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return MEMORY[0x29EDCA190];
  }

  sub_29D7BEF94(v4, v9, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if (v9[*(v5 + 24)] != 1 || (v11 = objc_opt_self(), v12 = sub_29D939D28(), v13 = [v11 preferenceSpecifierNamed:v12 target:v0 set:sel_setFeatureEnabledWithValue_ get:sel_isFeatureEnabled detail:0 cell:6 edit:0], v12, !v13))
  {
    sub_29D7BEFFC(v9, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return MEMORY[0x29EDCA190];
  }

  v14 = sub_29D939D28();
  [v13 setIdentifier_];

  v15 = sub_29D939FC8();
  [v13 setProperty:v15 forKey:*MEMORY[0x29EDC62C8]];

  v16 = sub_29D939FC8();
  [v13 setProperty:v16 forKey:*MEMORY[0x29EDC62A0]];

  v17 = v13;
  MEMORY[0x29ED6A300]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D939F78();
  }

  sub_29D939FA8();

  v18 = v21;
  sub_29D7BEFFC(v9, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  return v18;
}

id sub_29D7BCE78()
{
  v1 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v37 = &v35 - v6;
  sub_29D69C75C();
  v8 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC2D78];
  sub_29D7BE708(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v35 - v15;
  v17 = sub_29D937158();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = qword_2A17B4E88;
  swift_beginAccess();
  sub_29D7BEF28(v0 + v22, v16, &unk_2A1A24700, v12);
  v23 = sub_29D9371A8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) != 1)
  {
    if ((*(v24 + 88))(v16, v23) != *MEMORY[0x29EDC2D70])
    {
      (*(v24 + 8))(v16, v23);
      return [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    }

    v35 = v0;
    (*(v24 + 96))(v16, v23);
    v25 = v18;
    (*(v18 + 32))(v21, v16, v17);
    v26 = sub_29D937148();
    sub_29D93A408();
    sub_29D93A428();

    (*(v40 + 8))(v11, v8);
    if (v41 != 2 && (v41 & 1) != 0)
    {
      v27 = qword_2A17B4E98;
      v28 = v35;
      swift_beginAccess();
      v29 = v37;
      sub_29D7BEF28(v28 + v27, v37, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
      v30 = v39;
      if (!(*(v38 + 48))(v29, 1, v39))
      {
        v34 = v36;
        sub_29D7BEE3C(v29, v36);
        sub_29D7BEECC(v29, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
        v31 = *(v34 + *(v30 + 20));
        sub_29D7BEFFC(v34, type metadata accessor for HypertensionNotificationsSettingsViewModel);
        goto LABEL_9;
      }

      sub_29D7BEECC(v29, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    }

    v31 = 0;
LABEL_9:
    v32 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    (*(v25 + 8))(v21, v17);
    return v32;
  }

  sub_29D7BEECC(v16, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  return [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
}

id sub_29D7BD3CC(void *a1)
{
  v1 = a1;
  v2 = sub_29D7BCE78();

  return v2;
}

void sub_29D7BD410(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v2[qword_2A17B4E80];
  v6 = *MEMORY[0x29EDBA788];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = ObjectType;
  v12[4] = sub_29D7BEEA0;
  v12[5] = v7;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D8E44F0;
  v12[3] = &unk_2A2445EB8;
  v8 = _Block_copy(v12);
  v9 = v6;
  v10 = v2;
  v11 = a1;

  [v5 setFeatureSettingNumber:v11 forKey:v9 completion:v8];
  _Block_release(v8);
}

void sub_29D7BD538(char a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  if (a1)
  {
    v6 = *(a3 + qword_2A17B4E78);
    v8 = [a4 BOOLValue];
    type metadata accessor for HypertensionNotificationRoomInteractionEvent();
    v9 = swift_allocObject();
    v9[16] = 6;
    v9[17] = v6;
    v9[18] = v8;
    v10 = *(a3 + qword_2A17B4EB0);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    aBlock[4] = sub_29D7BEEC4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A2445F08;
    v12 = _Block_copy(aBlock);

    [v10 submitEvent:v9 completion:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = a2;
    oslog = sub_29D937878();
    v16 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446466;
      v19 = sub_29D93AF08();
      v21 = sub_29D6C2364(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      aBlock[6] = a2;
      v22 = a2;
      sub_29D7BE708(0, &qword_2A17B7AF0, sub_29D6A0CD0);
      v23 = sub_29D939DB8();
      v25 = sub_29D6C2364(v23, v24, aBlock);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_29D677000, oslog, v16, "[%{public}s]: Unable to change hypertension notifications setting: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v18, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D7BD850(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a2;
    oslog = sub_29D937878();
    v6 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v7 = 136446466;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v17);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      if (a2)
      {
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v7 + 14) = v14;
      *v8 = v15;
      _os_log_impl(&dword_29D677000, oslog, v6, "[%{public}s]: Error submitting analytics event: %@", v7, 0x16u);
      sub_29D7BEFFC(v8, sub_29D6ACA98);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      sub_29D69417C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D7BDA5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D7BD410(v4);
}

uint64_t sub_29D7BDAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  sub_29D7BE708(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7BDB74, 0, 0);
}

uint64_t sub_29D7BDB74()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D7BDCB4;
  v2 = swift_continuation_init();
  sub_29D7BECC0(0, &qword_2A17B4EE0, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D7BDEF0;
  v0[13] = &unk_2A2445E40;
  v0[14] = v2;
  [v1 currentClassificationGuidelinesWithCompletionHandler_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D7BDCB4()
{

  return MEMORY[0x2A1C73D48](sub_29D7BDD94, 0, 0);
}

uint64_t sub_29D7BDD94()
{
  v1 = v0[18];
  if (v1 >= 3)
  {
    v2 = 11;
  }

  else
  {
    v2 = v1 + 5;
  }

  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = sub_29D93A028();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = *&v5[qword_2A17B4E70];
  sub_29D939FF8();
  v8 = v7;
  v9 = v5;
  v10 = sub_29D939FE8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA390];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v1;
  *(v11 + 64) = v4;
  sub_29D6BEBA4(0, 0, v3, &unk_29D9499D8, v11);

  v13 = v0[1];

  return v13();
}