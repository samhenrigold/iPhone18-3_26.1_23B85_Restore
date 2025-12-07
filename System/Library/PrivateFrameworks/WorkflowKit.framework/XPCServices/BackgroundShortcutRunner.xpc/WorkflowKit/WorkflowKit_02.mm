uint64_t sub_100038430()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1768) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

uint64_t sub_1000384AC()
{
  sub_100060400();
  v1 = v0[221];
  v2 = [v1 authenticationPolicy];

  if (v2)
  {
    if (v2 == 2)
    {
      (*(v0[143] + 104))(v0[144], enum case for ToolAuthenticationPolicy.requiresAuthenticationOnOriginAndRemote(_:), v0[142]);
      sub_100089B98();
      sub_10001238C();
      v3 = sub_10005E694();
      v4(v3);
      v5 = sub_10005E81C();
      v6(v5);
      v7 = sub_10005D3D8();
      sub_10008074C(v7, v8, v9, v10);
      v12 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_10008074C(v13 > 1, v14 + 1, 1, v11);
        v15 = v14 + 1;
        v12 = v25;
      }

      v16 = v0[195];
      v17 = v0[141];
      v18 = v0[131];
      v19 = v0[130];
      v12[2] = v15;
      (*(v18 + 32))(v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14, v17, v19);

      v0[53] = v12;
      goto LABEL_9;
    }

    if (v2 != 1)
    {
      return sub_10008A9C8();
    }
  }

  sub_10006125C();
  v20 = sub_10005E81C();
  v21(v20);
  v12 = _swiftEmptyArrayStorage;
LABEL_9:
  v0[222] = v12;
  v22 = v0[195];
  (*(v0[151] + 104))(v0[152], enum case for ToolTypeDefinition.appIntent(_:), v0[150]);
  v23 = v22;
  v0[223] = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10005DC28();
  v24 = sub_10005D2B8();

  return _swift_task_switch(v24);
}

uint64_t sub_100038744()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1792) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

uint64_t sub_1000387C0()
{
  sub_1000615C8();
  sub_10005EC9C();
  v2 = *(v0 + 1792);
  v3 = [v2 openAppWhenRun];

  if (v3)
  {
    sub_10005D220();
    sub_100089278();
    v5 = sub_1000124C8();
    sub_10004987C(v5, v6);
    v7 = *(v1 + 8);
    v8 = sub_10005DB50();
    v7(v8);
    v9 = sub_10005E088();
    v4 = (v7)(v9);
  }

  *(v0 + 1800) = sub_1000613BC(v4);
  sub_10005D9B8();
  sub_10008A388();
  sub_10005DC28();
  sub_10005D2B8();
  sub_1000615B4();

  return _swift_task_switch(v10);
}

uint64_t sub_10003888C()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1808) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

uint64_t sub_100038908()
{
  sub_1000615C8();
  sub_10005EC9C();
  v2 = *(v0 + 1808);
  v3 = [v2 outputFlags];

  if ((v3 & 8) != 0)
  {
    sub_10005D220();
    sub_1000892B8();
    v5 = sub_1000124C8();
    sub_10004987C(v5, v6);
    v7 = *(v1 + 8);
    v8 = sub_10005DB50();
    v7(v8);
    v9 = sub_10005E088();
    v4 = (v7)(v9);
  }

  *(v0 + 1816) = sub_1000613BC(v4);
  sub_10005D9B8();
  sub_10008A388();
  sub_10005DC28();
  sub_10005D2B8();
  sub_1000615B4();

  return _swift_task_switch(v10);
}

uint64_t sub_1000389D4()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1824) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

uint64_t sub_100038A50()
{
  sub_1000615C8();
  sub_10005EC9C();
  v2 = *(v0 + 1824);
  v3 = [v2 outputFlags];

  if (v3)
  {
    sub_10005D220();
    sub_100089298();
    v5 = sub_1000124C8();
    sub_10004987C(v5, v6);
    v7 = *(v1 + 8);
    v8 = sub_10005DB50();
    v7(v8);
    v9 = sub_10005E088();
    v4 = (v7)(v9);
  }

  *(v0 + 1832) = sub_1000613BC(v4);
  sub_10005D9B8();
  sub_10008A388();
  sub_10005DC28();
  sub_10005D2B8();
  sub_1000615B4();

  return _swift_task_switch(v10);
}

uint64_t sub_100038B1C()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1840) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

uint64_t sub_100038B98()
{
  sub_1000615C8();
  sub_10005EC9C();
  v2 = *(v0 + 1840);
  v3 = [v2 outputFlags];

  if ((v3 & 2) != 0)
  {
    sub_10005D220();
    sub_100089288();
    v5 = sub_1000124C8();
    sub_10004987C(v5, v6);
    v7 = *(v1 + 8);
    v8 = sub_10005DB50();
    v7(v8);
    v9 = sub_10005E088();
    v4 = (v7)(v9);
  }

  *(v0 + 1848) = sub_1000613BC(v4);
  sub_10005D9B8();
  sub_10008A388();
  sub_10005DC28();
  sub_10005D2B8();
  sub_1000615B4();

  return _swift_task_switch(v10);
}

uint64_t sub_100038C64()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1856) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

void sub_100038CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v16 = v12;
  v17 = v12 + 360;
  v18 = *(v12 + 1856);
  v19 = [v18 outputFlags];

  v20 = *(v12 + 1560);
  if ((v19 & 4) != 0)
  {
    v21 = *(v16 + 1168);
    sub_1000892A8();
    v22 = sub_1000124C8();
    sub_10004987C(v22, v23);

    v24 = *(v21 + 8);
    v13 = (v21 + 8);
    v18 = v24;
    v25 = sub_10005DB50();
    v24(v25);
    v26 = sub_10005E088();
    v24(v26);
  }

  else
  {
  }

  *(v16 + 1864) = *(v16 + 1776);
  v27 = *(v16 + 472);
  *v17 = 0;
  *(v17 + 8) = 0;
  if ([v27 isDiscontinued])
  {
    sub_10005D034();
    v13 = *(v16 + 472);
    sub_100089268();
    v28 = sub_1000124C8();
    sub_10004987C(v28, v29);
    v30 = sub_10005D2F8();
    (v18)(v30);
    v31 = sub_10005E088();
    (v18)(v31);
    v32 = objc_opt_self();
    v33 = sub_1000614AC(v32);
    *(v16 + 1872) = v33;
    if (v33)
    {
      sub_10005E094();
      sub_10008A3B8();
      v34 = v18;
      *(v16 + 1880) = sub_10008A3A8();
      sub_10005D9B8();
      sub_10008A388();
      sub_10005C984();
LABEL_169:
      sub_10005E47C();
      sub_100012640();

      _swift_task_switch(v324);
      return;
    }
  }

  v716 = v17;
  v717 = (v16 + 424);
  *(v16 + 1896) = 0;
  if ([*(v16 + 472) isResidentCompatible])
  {
    sub_10005D034();
    sub_1000892C8();
    v35 = sub_1000124C8();
    sub_10004987C(v35, v36);
    v37 = sub_10005D2F8();
    (v18)(v37);
    v38 = sub_10005E088();
    (v18)(v38);
  }

  v39 = *(v16 + 1688);
  sub_10005E094();
  sub_100088C18();
  v40 = [v18 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v41 = WFResource_ptr;
  sub_10005E3A4();
  v45 = sub_100011D84(v42, v43, v44);
  sub_10005C60C();
  sub_10005E3A4();
  sub_10005B4C0(v46, v47, v48);
  sub_10005E120();
  v721 = v49;
  v723 = v45;
  v50 = sub_10008A3F8();

  sub_10005C91C();
  sub_100017D30(v50, v51);
  sub_10005D9B8();

  v52 = sub_10008391C();
  v737 = v16;
  if (v52)
  {
    if (v52 < 1)
    {
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

    sub_10005FB70();
    LODWORD(v731) = enum case for RuntimeRequirement.deviceCapability(_:);
    sub_10005E3D4();
    v729 = v53;
    v14 = *(v54 + 1864);
    v734 = v40;
    v56 = v55;
    do
    {
      if (v732)
      {
        sub_10005E150();
        sub_10008A928();
      }

      else
      {
        sub_10005FE1C();
      }

      sub_100060EA4();
      sub_10006054C(v57);
      v58 = sub_100060BB0();
      v59(v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_10005C9CC();
        sub_10008074C(v64, v65, v66, v67);
        v14 = v68;
      }

      sub_10005FE54();
      if (v61)
      {
        v69 = sub_10005CD68(v60);
        sub_10008074C(v69, v70, v71, v14);
        v14 = v72;
      }

      sub_100060AE4();
      sub_100060208();

      *(v14 + 16) = WFResource_ptr;
      sub_10005CEAC();
      sub_10005CF60(v14 + v62);
      sub_100012584();
      v63();
      v40 = v734;
    }

    while (v56 != v16);

    sub_10005F5B0();
    v39 = v728;
  }

  else
  {

    v14 = *(v16 + 1864);
  }

  sub_10005E094();
  sub_100088BD8();
  v73 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v41 = sub_10005F888(v73);

  sub_10005C904();
  sub_100017D30(v41, v74);
  sub_10005E7B8();

  v75 = sub_10008391C();
  v735 = v14;
  if (!v75)
  {

    goto LABEL_36;
  }

  if (v75 < 1)
  {
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  sub_10005F544();
  sub_100060220(v76, enum case for RuntimeRequirement.featureFlag(_:));
  do
  {
    if (v729)
    {
      sub_10005E150();
      sub_10008A928();
    }

    else
    {
      sub_10005FE1C();
    }

    sub_100060EA4();
    v78 = *(v77 + 1104);
    v79 = *(v77 + 1040);
    v17 = sub_100088BB8();
    v15 = v80;
    sub_100088BC8();
    sub_100060298();
    v81 = sub_100088BA8();
    *v78 = v17;
    *(v45 + 8) = v15;
    *(v45 + 16) = v39;
    *(v45 + 24) = v14;
    *(v45 + 32) = v81 & 1;
    v82 = sub_10005E974();
    v83(v82, v728, v79);
    v84 = v735;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_10005CBF0();
      sub_10008074C(v88, v89, v90, v735);
      v84 = v91;
    }

    sub_10005FE44();
    if (v61)
    {
      v92 = sub_10005CD68(v85);
      sub_10008074C(v92, v93, v94, v84);
      v735 = v95;
    }

    else
    {
      v735 = v84;
    }

    sub_100060AE4();
    v39 = *(v86 + 1104);

    *(v735 + 16) = v78;
    sub_10005D2E8();
    sub_10005EC64();
    v87();
    v40 = v732;
  }

  while (v731 != v16);

  sub_100060B60();
LABEL_36:
  v40 = *(v16 + 472);
  v41 = WFWritingToolsAvailabilityResource_ptr;
  v96 = sub_10005F65C();
  sub_100011D84(v96, v97, v98);
  v99 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v13 = sub_10005F888(v99);

  v100 = sub_10005DEB4();
  sub_100017B14(v100, v101);
  sub_10005E434();

  v102 = sub_10008391C();
  if (!v102)
  {

    v13 = v735;
    goto LABEL_49;
  }

  if (v102 < 1)
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v725 = v39;
  sub_10005CF90();
  v731 = v103;
  LODWORD(v729) = enum case for RuntimeDeviceState.writingToolsAvailable(_:);
  LODWORD(v728) = enum case for RuntimeRequirement.deviceState(_:);
  sub_10005E3D4();
  sub_100060D14(v104);
  do
  {
    if (v731)
    {
      v17 = v13;
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005EEF0();
    }

    sub_10005ED3C();
    v105 = *(v16 + 1096);
    sub_10005F73C();
    sub_10001238C();
    (*(v106 + 104))(v105, v729);
    v107 = sub_100060B9C();
    v108(v107);
    if ((sub_10005F680() & 1) == 0)
    {
      v113 = sub_10005C874();
      sub_10008074C(v113, v114, v115, v116);
    }

    sub_100060B14();
    if (v61)
    {
      v117 = sub_10005C9E4(v109);
      sub_10008074C(v117, v118, v119, v15);
      v15 = v120;
    }

    sub_1000606D4();
    *(v15 + 16) = v105;
    v13 = v15;
    sub_10005CEAC();
    v111 = sub_10005F590(v110);
    v112(v111);
    v40 = v732;
  }

  while (v39 != v14);

  sub_10005EEC4();
LABEL_49:
  sub_10005E094();
  sub_100088CD8();
  v121 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v41 = sub_10005F888(v121);

  sub_10005C8EC();
  sub_100017D30(v41, v122);
  sub_10005E7B8();

  v123 = sub_10008391C();
  if (!v123)
  {
    v17 = v13;

    goto LABEL_63;
  }

  if (v123 < 1)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  sub_10005CAAC();
  LODWORD(v731) = enum case for RuntimeDeviceState.photosMemoriesAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  do
  {
    sub_10005FA48();
    if (v124)
    {
      v17 = v13;
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005EEF0();
    }

    sub_10005ED3C();
    v125 = *(v16 + 1088);
    sub_10005F73C();
    sub_10001238C();
    v126 = sub_10005F2A0();
    v127(v126);
    v128 = sub_10005CEE0();
    v129(v128);
    if ((sub_10005F680() & 1) == 0)
    {
      v133 = sub_10005C874();
      sub_10008074C(v133, v134, v135, v136);
    }

    sub_10005CA70();
    if (v61)
    {
      v137 = sub_10005C9E4(v130);
      sub_10008074C(v137, v138, v139, v17);
      v17 = v140;
    }

    sub_10006069C();
    *(v17 + 16) = v125;
    v13 = v17;
    v131 = sub_10005C660();
    v132(v131);
    sub_10005E5B8();
  }

  while (!v511);

  sub_10005EEC4();
  v39 = v726;
LABEL_63:
  v40 = *(v16 + 472);
  v41 = WFLLMActionAvailabilityResource_ptr;
  v141 = sub_10005F65C();
  sub_100011D84(v141, v142, v143);
  v144 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v13 = sub_10005F888(v144);

  v145 = sub_10005DEB4();
  sub_100017B14(v145, v146);
  sub_10005E434();

  v147 = sub_10008391C();
  if (!v147)
  {

    goto LABEL_77;
  }

  if (v147 < 1)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  sub_10005CAAC();
  LODWORD(v731) = enum case for RuntimeDeviceState.useModelAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  do
  {
    sub_10005FA48();
    if (v148)
    {
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005F4BC();
    }

    sub_10005ED3C();
    v13 = *(v16 + 1080);
    sub_10005F73C();
    sub_10001238C();
    v149 = sub_10005F2A0();
    v150(v149);
    v151 = sub_10005CEE0();
    v152(v151);
    if ((sub_10005F680() & 1) == 0)
    {
      v156 = sub_10005C874();
      sub_10008074C(v156, v157, v158, v159);
      v40 = v160;
    }

    sub_10005CA70();
    if (v61)
    {
      v161 = sub_10005C9E4(v153);
      sub_10008074C(v161, v162, v163, v17);
      v17 = v164;
    }

    sub_100060664();
    *(v17 + 16) = v13;
    v154 = sub_10005C660();
    v155(v154);
    sub_10005E5B8();
  }

  while (!v511);

  sub_10005D20C();
LABEL_77:
  sub_10005E094();
  sub_100088CC8();
  v165 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v41 = sub_10005F888(v165);

  sub_10005C8D4();
  sub_100017D30(v41, v166);
  sub_10005E7B8();

  v167 = sub_10008391C();
  if (!v167)
  {

    goto LABEL_90;
  }

  if (v167 < 1)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  sub_10005CAAC();
  LODWORD(v731) = enum case for RuntimeDeviceState.imagePlaygroundAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  v39 = v168;
  do
  {
    if (v732)
    {
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005F4BC();
    }

    sub_10005ED3C();
    v13 = *(v16 + 1072);
    sub_10005F73C();
    sub_10001238C();
    v169 = sub_10005F2A0();
    v170(v169);
    v171 = sub_10005CEE0();
    v172(v171);
    if ((sub_10005F680() & 1) == 0)
    {
      v176 = sub_10005C874();
      sub_10008074C(v176, v177, v178, v179);
    }

    sub_10005CA70();
    if (v61)
    {
      v180 = sub_10005C9E4(v173);
      sub_10008074C(v180, v181, v182, v17);
      v17 = v183;
    }

    sub_1000606B8();
    *(v17 + 16) = v13;
    v174 = sub_10005C660();
    v175(v174);
    v40 = v735;
  }

  while (v39 != v14);

  sub_10005D20C();
LABEL_90:
  sub_10005E094();
  sub_100088CE8();
  v184 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v41 = sub_10005F888(v184);

  sub_10005C8BC();
  sub_100017D30(v41, v185);
  sub_1000607AC();
  v186 = sub_10008391C();
  if (!v186)
  {

    goto LABEL_104;
  }

  if (v186 < 1)
  {
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  sub_10005CAAC();
  LODWORD(v731) = enum case for RuntimeDeviceState.visualIntelligenceCameraAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  do
  {
    sub_10005FA48();
    if (v187)
    {
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005F4BC();
    }

    sub_10005ED3C();
    v188 = *(v16 + 1064);
    sub_10005F73C();
    sub_10001238C();
    v189 = sub_10005F2A0();
    v190(v189);
    v191 = sub_10005CEE0();
    v192(v191);
    if ((sub_10005F680() & 1) == 0)
    {
      v196 = sub_10005C874();
      sub_10008074C(v196, v197, v198, v199);
      v40 = v200;
    }

    sub_10005CA70();
    if (v61)
    {
      v201 = sub_10005C9E4(v193);
      sub_10008074C(v201, v202, v203, v17);
      v17 = v204;
    }

    sub_100060680();
    *(v17 + 16) = v188;
    v194 = sub_10005C660();
    v195(v194);
    sub_10005E5B8();
  }

  while (!v511);

  sub_10005D20C();
LABEL_104:
  sub_1000609BC();
  if (v40)
  {
    sub_10008A3B8();
    v205 = v40;
    *(v16 + 1920) = sub_10008A3A8();
    sub_10005D9B8();
    sub_10008A388();
    sub_10005C88C();
    goto LABEL_169;
  }

  if (sub_100083934(_swiftEmptyArrayStorage))
  {
    v206 = sub_1000567E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v206 = &_swiftEmptySetSingleton;
  }

  v738 = v206;
  if (sub_100083934(_swiftEmptyArrayStorage))
  {
    v207 = sub_1000567E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v207 = &_swiftEmptySetSingleton;
  }

  v40 = *(v16 + 472);
  v739 = v207;
  sub_100088B98();
  v208 = [v40 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v13 = sub_10005F888(v208);

  sub_10005C8A4();
  sub_100017D30(v13, v209);
  v15 = v210;
  v718 = v39;

  if (sub_10008391C())
  {
    sub_100060490();
    if (v211 == v212)
    {
      sub_10005DFEC();
      v732 = v213;
      LODWORD(v731) = enum case for WFDeviceIdiomResource.Requirement.equalTo(_:);
      sub_10005EE8C();
      while (1)
      {
        if (v732)
        {
          sub_10005ECCC();
          sub_10008A928();
        }

        else
        {
          sub_1000612FC();
        }

        sub_10005FFCC();
        v214 = sub_10005ECA8();
        if (v215(v214) == v731)
        {
          v216 = sub_10005F8D8();
          v217(v216);
          sub_100060860();
          sub_10005D114(v16);
          if (v511)
          {
            v40 = *(v50 + 952);

            sub_100017954(v40, &qword_1000A6518, &qword_10008D908);
          }

          else
          {
            v39 = *(v50 + 1008);
            v221 = sub_10005EAD4();
            v222(v221);
            sub_10005EED4();
            sub_10005E770();
            v223();
            v40 = &v738;
            v224 = sub_10005E44C();
            v15 = v726;
            sub_100055410(v224, v225);

            v17 = v721;
            v226 = sub_10005FDCC();
            v738(v226);
            v227 = sub_10005DB50();
            v41 = v729;
            v738(v227);
          }
        }

        else
        {
          sub_100060994();
          if (v511)
          {
            v39 = *(v50 + 960);
            v218 = *(v50 + 944);
            v219 = sub_10005F384();
            v220(v219);
            sub_100049E84(*v40, v218);
            sub_10005D114(v218);
            if (v511)
            {
              v40 = *(v50 + 944);

              sub_100017954(v40, &qword_1000A6518, &qword_10008D908);
            }

            else
            {
              v39 = *(v50 + 1000);
              sub_10005FDBC();
              v230 = sub_10005E59C();
              v231(v230);
              sub_10005E974();
              sub_100060CFC();
              v232();
              v233 = sub_10005DB50();
              sub_100055410(v233, v234);

              v40 = *v721;
              v235 = sub_10005FB20();
              (v40)(v235);
              v236 = sub_10005E44C();
              v15 = v726;
              (v40)(v236);
            }

            v16 = v50;
            v41 = v729;
            goto LABEL_129;
          }

          v228 = sub_10005E144();
          v229(v228, v16);
        }

        v16 = v50;
LABEL_129:
        if (v41 == ++v14)
        {
          goto LABEL_130;
        }
      }
    }

    goto LABEL_256;
  }

LABEL_130:
  sub_100061344();
  v237 = [v40 disabledOnPlatforms];
  v238 = sub_100012578();
  type metadata accessor for WFExecutionPlatform(v238);
  sub_10005E028();
  v41 = sub_10008A328();

  if (sub_100083934(v41))
  {
    sub_10005F354();
    if (v211 != v212)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    sub_10005FD9C();
    do
    {
      v239 = sub_10005F71C();
      sub_100060878(v239);
      v40 = &v739;
      v240 = sub_10005D9DC();
      sub_100055410(v240, v241);

      v16 = v737;
      v242 = sub_10005E50C();
      v243(v242);
      v50 += 8;
      --v13;
    }

    while (v13);
  }

  v41 = v738;
  if (*(v738 + 2))
  {
  }

  else
  {
    v244 = sub_1000899F8();
  }

  sub_100061164(v244);
  v17 = v740.n128_u64[0];
  v39 = v718;
  sub_10004A390(v740.n128_i64[0]);
  sub_10005FC30();

  if (sub_100083934(v40))
  {
    sub_100060AD8();
    if (v211 != v212)
    {
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    sub_10005DED4();
    v728 = v245;
    sub_10005E0A0();
    sub_10006019C(v246);
    sub_10005F264(v247);
    do
    {
      v249 = sub_10005E6F8(v248);
      v250(v249);
      v14 = sub_100089EB8();
      v251 = sub_100012448();
      sub_100009158(v251, v252, v253, v14);
      sub_10005DA80();
      sub_100009158(v254, v255, v256, v14);
      sub_10005DA80();
      sub_100009158(v257, v258, v259, v14);
      sub_10005E580();
      sub_10008A0A8();
      v260 = sub_10005E150();
      v261(v260);
      v262 = sub_10005E59C();
      v263(v262, v45, v50);
      v264 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v270 = sub_10005CBF0();
        sub_10008074C(v270, v271, v272, v41);
        v264 = v273;
      }

      v50 = *(v264 + 16);
      v265 = *(v264 + 24);
      v16 = v737;
      if (v50 >= v265 >> 1)
      {
        v274 = sub_10005CA98(v265);
        sub_10008074C(v274, v275, v276, v264);
        v264 = v277;
      }

      sub_100060FC0();
      sub_10005E500();
      v266();
      v41 = v264;
      *(v264 + 16) = v50 + 1;
      sub_10005D14C();
      v268 = sub_10005EE50(v264 + v267);
      v269(v268);
      v248 = sub_100060C8C();
    }

    while (!v511);

    *v717 = v264;
    v39 = v714;
  }

  else
  {
  }

  v40 = *(v16 + 472);
  v17 = sub_10008A798();
  *(v16 + 440) = v17;
  v278 = _swiftEmptyArrayStorage;
  *(v16 + 448) = _swiftEmptyArrayStorage;
  *(v16 + 456) = &OBJC_PROTOCOL___WFLinkActionProtocol;
  v279 = sub_10005FD2C();
  if (v279)
  {
    v280 = v279;
    v278 = *(v16 + 552);
    v40 = *(v16 + 472);
    v281 = [v280 backingActionIdentifiers];
    v41 = sub_10008A328();

    sub_100017F50(v41);
    v13 = v282;

    sub_100029D74(v13, v278);
    sub_10005FD20();

    *(v16 + 448) = v278;
  }

  *(v16 + 1936) = v39;
  if (!sub_100083934(v278))
  {
    v283 = sub_100083934(v17);
    if (v283)
    {
      v41 = v283;
      sub_100060AD8();
      if (v211 != v212)
      {
        __break(1u);
        goto LABEL_261;
      }

      v292 = *(v16 + 848);
      v14 = *(v292 + 16);
      sub_10005E0A0();
      v713 = v17;
      v13 = (v17 + v293);
      v294 = *(v292 + 72);
      sub_100060A9C();
      v296 = *v295;
      sub_10005EE28(v297);
      do
      {
        v40 = *(v15 + 864);
        v298 = sub_10005E12C();
        (v14)(v298);
        v299 = sub_10005EB10();
        if (v300(v299) == v296)
        {
          sub_10005F158();
          v301 = sub_10005EAD4();
          v302(v301);
          sub_10005E144();
          sub_100060274();
          v303();
          sub_100089EE8();
          v40 = sub_100089ED8();
          sub_100089EC8();
          sub_10005E440();

          if (*(v40 + 16) && (sub_100081588(), (v304 & 1) != 0))
          {
            v305 = sub_10005E734();
            v306(v305);

            sub_100089058();
            sub_10005C82C();
            v40 = v15 + 448;
            sub_10001BFD8(v307, v308, &type metadata accessor for SampleInvocationDefinition);
            v309 = sub_10005F9B8();
            v310(v309);
            (*v728)(v726, v725);
          }

          else
          {
            sub_10006082C();
            v313 = sub_10005E07C();
            v315(v313, v314);
          }
        }

        else
        {
          v311 = sub_100060F48();
          v312(v311);
        }

        v13 += v294;
        v41 = (v41 - 1);
      }

      while (v41);
      v16 = v737;
      v278 = v737[56];
      v39 = v714;
      v17 = v713;
    }
  }

  v50 = v16 + 440;
  *(v16 + 1944) = v278;
  if (sub_100083934(v278))
  {
    v316 = sub_10005F128();
    (*(v317 + 104))(v316, enum case for SystemToolProtocol.assistantInvocable(_:));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 440) = v17;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_164:
      sub_10005EC28();
      if (v61)
      {
        v535 = sub_10005CA84(v319);
        sub_1000806CC(v535, v536, v537, v17);
        sub_10006093C(v538);
      }

      sub_10005F108();
      *(v17 + 16) = v40;
      sub_10005CA38();
      v321 = sub_10005E94C(v320);
      v322(v321);
      *(v16 + 440) = v17;
      goto LABEL_167;
    }

LABEL_259:
    v531 = sub_10005CBF0();
    sub_1000806CC(v531, v532, v533, v17);
    sub_10006093C(v534);
    goto LABEL_164;
  }

LABEL_167:
  *(v16 + 1952) = v17;
  v40 = *(v16 + 1560);
  if (v40)
  {
    sub_10008A3B8();
    v323 = v40;
    *(v16 + 1960) = sub_10008A3A8();
    sub_10005E440();
    sub_10008A388();
    sub_10005C814();
    goto LABEL_169;
  }

  v326 = sub_10005AE98(*(v16 + 472), &selRef_iconName);
  v715 = v39;
  if (v327)
  {
    sub_100060F24(v326, v327);
    v50 = sub_1000892E8();
    sub_100017A1C();
    v328 = sub_10005FFAC();
    v329(v328);
LABEL_174:
    sub_10005D968();
    goto LABEL_182;
  }

  sub_10005AE98(*(v16 + 472), &selRef_iconSymbolName);
  if (v334)
  {
    v335 = sub_10005F148();
    sub_10005AE98(v335, &selRef_iconBackgroundColorName);
    if (v336)
    {
      v337 = [sub_10005F118() definition];
      if (v337)
      {
        v17 = v337;
        v14 = [v337 objectForKey:WFActionIconSymbolColorNameKey];

        if (v14)
        {
          sub_10008A7E8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1000601D8();
        }

        sub_100060C40(v740, v741);
        if (v506)
        {
          sub_100060C28();
          if (swift_dynamicCast())
          {
            sub_1000613EC();
            goto LABEL_230;
          }

LABEL_229:
          sub_10005DA80();
          sub_100009158(v507, v508, v509, v510);
LABEL_230:
          sub_10005E570();
          v511 = v511 && v41 == 0xE400000000000000;
          if (v511 || (v512 = sub_10005DEB4(), (sub_10005D998(v512, v513) & 1) != 0))
          {
            sub_10005FE84();
            sub_10005BF68();
            sub_10005D114(&type metadata for Any);
            if (!v511)
            {
              v517 = sub_10005DD6C();
              sub_100017954(v517, &qword_1000A6500, &qword_10008D8F0);

              v518 = sub_10005EF2C();
              v41(v518);
              v519 = sub_10005D978();
              v41(v519);
LABEL_247:
              v524 = sub_10005D308();
              v525(v524);
              v526 = sub_100008DC0(&qword_1000A6590, &qword_10008D928);
              v527 = sub_10005DD20(v526);
              v528(v527);
              v40 = enum case for ToolIcon.symbol(_:);
              v50 = sub_1000892E8();
              sub_100017A1C();
              v529 = sub_10005FF8C();
              v530(v529);
              goto LABEL_174;
            }

            sub_100017954(*(v16 + 768), &qword_1000A6500, &qword_10008D8F0);
          }

          v514 = *(v16 + 760);
          v39 = *(v16 + 688);
          sub_10005DEB4();
          sub_1000891A8();
          sub_10005D0F4(v514);
          v515 = *(v16 + 760);
          sub_10005DD3C();
          if (v511)
          {
            sub_10005E940();
            v516();
            sub_10005CF70(v515);
            if (!v511)
            {
              sub_100017954(*(v16 + 760), &qword_1000A6500, &qword_10008D8F0);
            }
          }

          else
          {
            sub_10005DD5C();
            v520();
          }

          sub_10005FE74();
          sub_10005BFBC();
          sub_10005D0F4(v514);
          v41 = *(v16 + 752);
          sub_10005DD3C();
          if (v511)
          {
            sub_10005E940();
            v521();
            sub_10005CF70(v41);
            if (!v511)
            {
              sub_100017954(*(v16 + 752), &qword_1000A6500, &qword_10008D8F0);
            }
          }

          else
          {
            sub_10005DD5C();
            v522();
          }

          sub_10005E528();
          v14 = *(sub_100008DC0(&qword_1000A6588, &qword_10008D920) + 48);
          v523 = *(v17 + 32);
          v17 += 32;
          sub_10005E0AC();
          v523();
          sub_10005EC64();
          v523();
          v16 = v737;
          goto LABEL_247;
        }
      }

      else
      {
        sub_100060A68();
      }

      sub_100017954(v16 + 304, &qword_1000A5A20, &qword_10008C9F0);
      goto LABEL_229;
    }
  }

  sub_10006150C();
  v330 = sub_10005CF18();
LABEL_182:
  sub_100009158(v330, v331, v332, v333);
  v338 = sub_10005AE98(*(v16 + 472), &selRef_fillingProvider);
  sub_100060F18(v338, v339);
  if (!v340)
  {
    sub_10005DB5C();

    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v380 = xmmword_10008D640;
    swift_willThrow();

    (*(v41 + 1))(v716, v715);
    sub_100017954(v14, &qword_1000A6508, &qword_10008D8F8);

    (*(v50 + 8))(v718, v717);

    (*(v40 + 8))(v725, v723);
    v381 = sub_100060E20();
    v382(v381);

    (*(v16 + 8))(v731, v729);
    goto LABEL_211;
  }

  v341 = swift_allocBox();
  sub_100060F0C(v341, v342);
  sub_10004A4D4(_swiftEmptyArrayStorage);
  v343 = sub_100089108();
  v344 = sub_1000614F4(v343);
  *(v16 + 2016) = v344;
  if (!v344)
  {
    v348 = *(v16 + 1568);

    v727 = *(v16 + 1936);
    v383 = &WFLogCategoryToolKitIndexing;
LABEL_206:
    v384 = *v383;
    sub_10005F7CC();
    sub_10006138C();
    sub_10005E1F0();
    v385 = swift_allocObject();
    sub_100060ED0(v385);
    sub_10005D504();
    v386 = swift_allocObject();
    sub_10005EB98(v386);
    sub_10005E440();
    swift_retain_n();
    v387 = v384;
    v736 = sub_100088FF8();
    v730 = sub_10008A5C8();
    sub_10005D9D0();
    v388 = swift_allocObject();
    sub_100060EB0(v388);
    sub_10005D9D0();
    v389 = swift_allocObject();
    sub_100060DD4(v389);
    sub_10005D504();
    v390 = swift_allocObject();
    sub_10005C99C(v390);
    sub_10005D504();
    swift_allocObject();
    sub_10005CD50();
    *(v391 + 16) = v392;
    *(v391 + 24) = v390;
    sub_10005D9D0();
    v393 = swift_allocObject();
    *(v393 + 16) = 32;
    sub_10005D9D0();
    v394 = swift_allocObject();
    *(v394 + 16) = v348;
    sub_10005D504();
    v395 = swift_allocObject();
    sub_10005E8E4(v395);
    sub_10005D504();
    swift_allocObject();
    sub_10005D1BC();
    *(v396 + 16) = v397;
    *(v396 + 24) = v14;
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v399 = sub_10005C6B8(inited, xmmword_10008D630);
    v399[2].n128_u64[0] = v400;
    v399[2].n128_u64[1] = v715;
    v399[3].n128_u64[0] = sub_10005C5C8;
    v399[3].n128_u64[1] = v389;
    v399[4].n128_u64[0] = sub_10005C5D0;
    v399[4].n128_u64[1] = v41;
    v399[5].n128_u64[0] = sub_10005C5C8;
    v399[5].n128_u64[1] = v393;
    v399[6].n128_u64[0] = sub_10005C5C8;
    v399[6].n128_u64[1] = v394;
    v399[7].n128_u64[0] = sub_10005C5D0;
    v399[7].n128_u64[1] = v348;

    v401 = v715;

    v402 = v393;

    sub_10006040C();

    if (os_log_type_enabled(v736, v730))
    {
      sub_10005E894();
      v740.n128_u64[0] = sub_10005E7D0();
      sub_10005CFD8();

      v401 = 8;
      *(inited + 3) = 8;

      v403 = v348;
      v404 = [v348 identifier];
      sub_10008A268();

      v405 = sub_10005DB50();
      sub_100080D2C(v405, v406, v407);
      sub_10005EB1C();

      *(inited + 4) = v404;

      sub_10005F50C();

      *(inited + 13) = 8;

      sub_10005E4A0();
      v408 = swift_beginAccess();
      v416 = sub_10005F518(v408, v409, v410, v411, v412, v413, v414, v415, v539, v543, v547, v551, v555, v559, v563, v567, v571, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v653, v656, v659, v662, v665, v668, v671, v674, v677, v680, v683, v686, v689, v692, v695, v698, v701, v704, v707, v710);
      v417(v416);
      sub_10005C5F4();
      v420 = sub_10005AE38(v418, v419);
      sub_100060790(v420);
      v421 = sub_1000124C8();
      v422(v421);
      v423 = sub_10005EB10();
      sub_100080D2C(v423, v424, v425);
      sub_10005E440();

      sub_100060184();

      sub_1000604CC(v426, v427, v428, v429, v430, v431, v432, v433, v540, v544, v548, v552, v556, v560, v564, v568, v572, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v654, v657, v660, v663, v666, v669, v672, v675, v678, v681, v684, v687, v690, v693, v696, v699, v702, v705, v708, v711);
      v402 = v736;
      sub_10005E620(&_mh_execute_header, v434, v730, "%s: Visibility flags: %s");
      sub_10005ED04(v435, v436, v437, v438, v439, v440, v441, v442, v541, v545, v549, v553, v557, v561, v565, v569, v573, v577, v580, v583, v586, v589, v592, v595, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649, v652, v655, v658, v661, v664, v667, v670, v673, v676, v679, v682, v685, v688, v691, v694, v697, v700, v703, v706, v709, v712);
      sub_10005D4F8();

      sub_10005D4F8();

      v443 = sub_10005E600();
    }

    else
    {
      sub_10005F404();

      sub_100061374();

      v443 = sub_10005FB20();
    }

    v444(v443);
    sub_10005ECD8();
    v719 = *(v16 + 1192);
    v720 = *(v16 + 1152);
    sub_100060D9C();
    v724 = v445;
    sub_10005E5C8();
    v446 = [v402 identifier];
    v722 = sub_10008A268();

    v447 = swift_task_alloc();
    v448 = sub_10005E63C(v447);
    v448[7] = v715;
    v448[8] = v401;
    v448[9] = v716;
    v448[10] = v719;
    v449 = sub_10005F938(v448, v720);
    sub_10006006C(v449);
    sub_10005C624();
    sub_1000603A0();
    sub_1000893A8();
    sub_100060D5C();
    v450 = *(v16 + 1560);
    v733 = *(v16 + 1552);
    sub_10005F034();
    if (!v727)
    {
      sub_10005D15C();
      v574 = *(v16 + 1416);
      sub_10005CE40();
      v456 = *(v16 + 1208);
      v566 = *(v16 + 1200);
      v570 = v457;
      sub_10005CC38();
      v458 = *(v16 + 808);
      sub_10005D06C();
      sub_10005E0C4();
      v459();

      sub_100017954(v458, &qword_1000A6508, &qword_10008D8F8);

      v460 = sub_10005F288();
      v461(v460);

      v470 = sub_1000602F8(v462, v463, v464, v465, v466, v467, v468, v469, v539, v543, v547, v551, v555, v559);
      v471(v470);
      (*(v456 + 8))(v570, v566);

      v480 = sub_100060A10(v472, v473, v474, v475, v476, v477, v478, v479, v542, v546, v550, v554, v558, v562, v566, v570, v574, v575, v578);
      v481(v480);

      sub_100012420();
      goto LABEL_213;
    }

    sub_10005E250();
    v451();

    sub_100017954(v727, &qword_1000A6508, &qword_10008D8F8);

    v452 = sub_1000609A8();
    v453(v452);

    (*(v16 + 472))(v722, v720);
    (*(v401 + 8))(v16 + 400, v724);

    v454 = sub_100060E20();
    v455(v454);
LABEL_211:
    sub_10005C6D0();
    sub_10005E2B0();

    sub_10001248C();
LABEL_213:
    sub_100012640();

    v483(v482, v483, v484, v485, v486, v487, v488, v489, a9, a10, a11, a12);
    return;
  }

  sub_10005DFB0();
  sub_10005F0E8();
  v725 = v347;
  v727 = v346;
  while (1)
  {
    sub_10005E034(v345);
    if (v61)
    {
      __break(1u);
      goto LABEL_249;
    }

    v348 = *(v16 + 680);
    v39 = *(v16 + 672);
    v16 = v737[83];
    v13 = v737[79];
    v349 = v737[78];
    sub_10005CD9C();
    v350 = sub_1000609E8();
    (v15)(v350);
    (v15)(v39, v348, v349);
    sub_100089138();
    sub_10005C5F4();
    v50 = sub_10005AE38(&qword_1000A6568, v351);
    sub_10005E5A8();
    sub_10008A228();
    v352 = sub_10005EA38();
    (v14)(v352);
    v40 = *(v16 + 672);
    if (v348)
    {
      v353 = sub_10005DEA4();
      (v14)(v353);
      v354 = [v348 visibleForUse:0];
      if (v354)
      {
        sub_10005F18C(v354);
        v355 = sub_10005EB10();
        (v15)(v355);
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v356);
        sub_10005D9DC();
        v729 = v357;
        sub_10008A808();
        sub_10005E07C();
        sub_10005E3BC();
        sub_10008A228();
        sub_10005E610();
        v348 = v358;
        *v358 = v359;
        if (v360)
        {
          v376 = sub_10005F318();
          (v14)(v376);
          sub_10005E934();
          (v15)();
          v377 = sub_1000124C8();
          (v15)(v377);
          v40 = v731;
          sub_10008A818();
          v378 = sub_10005D9DC();
          (v14)(v378);
          (v14)(v732, v17);
        }

        else
        {
          v361 = sub_10005FC14();
          (v14)(v361);
          v362 = sub_10005EF0C();
          (v14)(v362);
          v363 = sub_100060A74();
          v364(v363);
        }

        sub_10005E000();
        sub_10005BFBC();
        sub_10005FCEC();
      }

      goto LABEL_201;
    }

    sub_10005D360();
    sub_100089128();
    v17 = sub_10005D0B0();
    v365 = sub_10005E07C();
    (v14)(v365);
    v40 = *(v16 + 672);
    if (v17)
    {
      v366 = sub_10005DEA4();
      (v14)(v366);
      if (([v348 visibleForUse:1] & 1) == 0)
      {
        goto LABEL_201;
      }

      sub_10005CE94();
      sub_100089128();
      goto LABEL_197;
    }

    sub_10005D360();
    sub_100089118();
    sub_10005D0B0();
    v367 = sub_10005DCA8();
    (v14)(v367);
    if ((v40 & 1) == 0)
    {
      break;
    }

    sub_100060E8C();
    sub_10005D350();
    (v14)();
    v368 = sub_10005E470();
    (v15)(v368);
    sub_100089138();
    sub_10005C5F4();
    sub_10005AE38(&unk_1000A6578, v369);
    v40 = sub_10005F848();
    v370 = sub_1000124C8();
    (v14)(v370);
    v371 = sub_10005E07C();
    (v14)(v371);
    if (v40 & 1) != 0 && ([*(v16 + 472) isApprovedForPublicShortcutsDrawer])
    {
      sub_10005CE94();
      sub_100089118();
LABEL_197:
      v372 = sub_10005F36C();
      sub_100049B80(v372, v373);
      v374 = sub_1000124C8();
      (v14)(v374);
      v375 = sub_10005E07C();
      (v14)(v375);
    }

LABEL_201:
    sub_10005D250();
    v379();
    if (v348 == v40)
    {
      sub_100061494();

      v383 = v725;
      goto LABEL_206;
    }

    sub_100060E2C();
  }

  v490 = *(v16 + 672);
  sub_10005D360();
  sub_100089148();
  sub_10005D0B0();
  v491 = sub_10005DCA8();
  (v14)(v491);
  if ((v490 & 1) == 0)
  {
    v740.n128_u64[0] = sub_10005F76C();
    v740.n128_u64[1] = v496;
    sub_10005E404("Unknown visibility flag: ");
    sub_10005C5F4();
    v499 = sub_10005AE38(v497, v498);
    v742._countAndFlagsBits = sub_100060774(v499);
    sub_10006156C(v742);

    sub_10008A2A8();
    sub_10005C9F8();
    sub_10005D3F8("Fatal error", v500, v501, v502, v503, "BackgroundShortcutRunner/ToolKitIndexer.swift", v504, v505, v539, v543);
    sub_100012640();
    return;
  }

  v492 = [*(v16 + 472) visibleForUse:0];
  if (v492)
  {
    v492 = [*(v16 + 472) isApprovedForPublicShortcutsDrawer];
  }

  sub_100060C4C(v492);
  v493 = swift_task_alloc();
  v494 = sub_100060A38(v493);
  *v494 = v495;
  sub_10005C640(v494);
  sub_10005CEF4();
  sub_100012640();

LABEL_261:
  WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v284, v285, v286, v287, v288, v289, v290, v291, a9, a10, a11, a12);
}

uint64_t sub_10003B7B0()
{
  sub_100012404();
  v1 = v0[234];
  v2 = v0[59];

  v0[236] = [v1 metadata];

  v3 = sub_10005CFA0();

  return _swift_task_switch(v3);
}

void sub_10003B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v17 = v12;
  v18 = *(v12 + 1888);
  v19 = [v18 deprecationMetadata];

  if (v19)
  {
    v20 = [v19 replacedByIntentIdentifier];
    v21 = *(v12 + 472);
    if (v20)
    {
      v22 = v20;
      v23 = sub_10008A268();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0;
    }

    *(v17 + 360) = v23;
    *(v17 + 368) = v25;
  }

  else
  {

    v25 = 0;
  }

  v706 = (v17 + 424);
  *(v17 + 1896) = v25;
  if ([*(v17 + 472) isResidentCompatible])
  {
    sub_10005D034();
    sub_1000892C8();
    v26 = sub_1000124C8();
    sub_10004987C(v26, v27);
    v28 = sub_10005D2F8();
    (v19)(v28);
    v29 = sub_10005E088();
    (v19)(v29);
  }

  v30 = *(v17 + 1688);
  sub_10005E094();
  sub_100088C18();
  v31 = [v19 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v32 = WFResource_ptr;
  sub_10005E3A4();
  v36 = sub_100011D84(v33, v34, v35);
  sub_10005C60C();
  sub_10005E3A4();
  sub_10005B4C0(v37, v38, v39);
  sub_10005E120();
  v710 = v40;
  v712 = v36;
  v41 = sub_10008A3F8();

  sub_10005C91C();
  sub_100017D30(v41, v42);
  sub_10005D9B8();

  v43 = sub_10008391C();
  v726 = v17;
  if (v43)
  {
    if (v43 < 1)
    {
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    sub_10005FB70();
    LODWORD(v720) = enum case for RuntimeRequirement.deviceCapability(_:);
    sub_10005E3D4();
    v718 = v44;
    v15 = *(v45 + 1864);
    v723 = v31;
    do
    {
      sub_10005FA48();
      if (v46)
      {
        sub_10005E150();
        sub_10008A928();
      }

      else
      {
        sub_10005FE1C();
      }

      sub_100060EA4();
      sub_10006054C(v47);
      v48 = sub_100060BB0();
      v49(v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_10005C9CC();
        sub_10008074C(v54, v55, v56, v57);
        v15 = v58;
      }

      sub_10005FE54();
      if (v51)
      {
        v59 = sub_10005CD68(v50);
        sub_10008074C(v59, v60, v61, v15);
        v15 = v62;
      }

      sub_100060AE4();
      sub_100060208();

      *(v15 + 16) = WFResource_ptr;
      sub_10005CEAC();
      sub_10005CF60(v15 + v52);
      sub_100012584();
      v53();
      v31 = v723;
    }

    while (v30 != v17);

    sub_10005F5B0();
    v30 = v717;
  }

  else
  {

    v15 = *(v17 + 1864);
  }

  sub_10005E094();
  sub_100088BD8();
  v63 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v32 = sub_10005F888(v63);

  sub_10005C904();
  sub_100017D30(v32, v64);
  sub_10005E7B8();

  v65 = sub_10008391C();
  v724 = v15;
  if (!v65)
  {

    goto LABEL_36;
  }

  if (v65 < 1)
  {
LABEL_249:
    __break(1u);
    goto LABEL_250;
  }

  sub_10005F544();
  sub_100060220(v66, enum case for RuntimeRequirement.featureFlag(_:));
  do
  {
    if (v718)
    {
      sub_10005E150();
      sub_10008A928();
    }

    else
    {
      sub_10005FE1C();
    }

    sub_100060EA4();
    v68 = *(v67 + 1104);
    v69 = *(v67 + 1040);
    v14 = sub_100088BB8();
    v16 = v70;
    sub_100088BC8();
    sub_100060298();
    v71 = sub_100088BA8();
    *v68 = v14;
    *(v36 + 8) = v16;
    *(v36 + 16) = v30;
    *(v36 + 24) = v15;
    *(v36 + 32) = v71 & 1;
    v72 = sub_10005E974();
    v73(v72, v717, v69);
    v74 = v724;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_10005CBF0();
      sub_10008074C(v78, v79, v80, v724);
      v74 = v81;
    }

    sub_10005FE44();
    if (v51)
    {
      v82 = sub_10005CD68(v75);
      sub_10008074C(v82, v83, v84, v74);
      v724 = v85;
    }

    else
    {
      v724 = v74;
    }

    sub_100060AE4();
    v30 = *(v76 + 1104);

    *(v724 + 16) = v68;
    sub_10005D2E8();
    sub_10005EC64();
    v77();
    v31 = v721;
  }

  while (v720 != v17);

  sub_100060B60();
LABEL_36:
  v31 = *(v17 + 472);
  v32 = WFWritingToolsAvailabilityResource_ptr;
  v86 = sub_10005F65C();
  sub_100011D84(v86, v87, v88);
  v89 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v13 = sub_10005F888(v89);

  v90 = sub_10005DEB4();
  sub_100017B14(v90, v91);
  sub_10005E434();

  v92 = sub_10008391C();
  if (!v92)
  {

    v13 = v724;
    goto LABEL_49;
  }

  if (v92 < 1)
  {
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  v714 = v30;
  sub_10005CF90();
  v720 = v93;
  LODWORD(v718) = enum case for RuntimeDeviceState.writingToolsAvailable(_:);
  LODWORD(v717) = enum case for RuntimeRequirement.deviceState(_:);
  sub_10005E3D4();
  sub_100060D14(v94);
  do
  {
    if (v720)
    {
      v14 = v13;
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005EEF0();
    }

    sub_10005ED3C();
    v95 = *(v17 + 1096);
    sub_10005F73C();
    sub_10001238C();
    (*(v96 + 104))(v95, v718);
    v97 = sub_100060B9C();
    v98(v97);
    if ((sub_10005F680() & 1) == 0)
    {
      v103 = sub_10005C874();
      sub_10008074C(v103, v104, v105, v106);
    }

    sub_100060B14();
    if (v51)
    {
      v107 = sub_10005C9E4(v99);
      sub_10008074C(v107, v108, v109, v16);
      v16 = v110;
    }

    sub_1000606D4();
    *(v16 + 16) = v95;
    v13 = v16;
    sub_10005CEAC();
    v101 = sub_10005F590(v100);
    v102(v101);
    v31 = v721;
  }

  while (v30 != v15);

  sub_10005EEC4();
LABEL_49:
  sub_10005E094();
  sub_100088CD8();
  v111 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v32 = sub_10005F888(v111);

  sub_10005C8EC();
  sub_100017D30(v32, v112);
  sub_10005E7B8();

  v113 = sub_10008391C();
  if (!v113)
  {
    v14 = v13;

    goto LABEL_63;
  }

  if (v113 < 1)
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  sub_10005CAAC();
  LODWORD(v720) = enum case for RuntimeDeviceState.photosMemoriesAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  do
  {
    sub_10005FA48();
    if (v114)
    {
      v14 = v13;
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005EEF0();
    }

    sub_10005ED3C();
    v115 = *(v17 + 1088);
    sub_10005F73C();
    sub_10001238C();
    v116 = sub_10005F2A0();
    v117(v116);
    v118 = sub_10005CEE0();
    v119(v118);
    if ((sub_10005F680() & 1) == 0)
    {
      v123 = sub_10005C874();
      sub_10008074C(v123, v124, v125, v126);
    }

    sub_10005CA70();
    if (v51)
    {
      v127 = sub_10005C9E4(v120);
      sub_10008074C(v127, v128, v129, v14);
      v14 = v130;
    }

    sub_10006069C();
    *(v14 + 16) = v115;
    v13 = v14;
    v121 = sub_10005C660();
    v122(v121);
    sub_10005E5B8();
  }

  while (!v500);

  sub_10005EEC4();
  v30 = v715;
LABEL_63:
  v31 = *(v17 + 472);
  v32 = WFLLMActionAvailabilityResource_ptr;
  v131 = sub_10005F65C();
  sub_100011D84(v131, v132, v133);
  v134 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v13 = sub_10005F888(v134);

  v135 = sub_10005DEB4();
  sub_100017B14(v135, v136);
  sub_10005E434();

  v137 = sub_10008391C();
  if (!v137)
  {

    goto LABEL_77;
  }

  if (v137 < 1)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  sub_10005CAAC();
  LODWORD(v720) = enum case for RuntimeDeviceState.useModelAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  do
  {
    sub_10005FA48();
    if (v138)
    {
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005F4BC();
    }

    sub_10005ED3C();
    v13 = *(v17 + 1080);
    sub_10005F73C();
    sub_10001238C();
    v139 = sub_10005F2A0();
    v140(v139);
    v141 = sub_10005CEE0();
    v142(v141);
    if ((sub_10005F680() & 1) == 0)
    {
      v146 = sub_10005C874();
      sub_10008074C(v146, v147, v148, v149);
      v31 = v150;
    }

    sub_10005CA70();
    if (v51)
    {
      v151 = sub_10005C9E4(v143);
      sub_10008074C(v151, v152, v153, v14);
      v14 = v154;
    }

    sub_100060664();
    *(v14 + 16) = v13;
    v144 = sub_10005C660();
    v145(v144);
    sub_10005E5B8();
  }

  while (!v500);

  sub_10005D20C();
LABEL_77:
  sub_10005E094();
  sub_100088CC8();
  v155 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v32 = sub_10005F888(v155);

  sub_10005C8D4();
  sub_100017D30(v32, v156);
  sub_10005E7B8();

  v157 = sub_10008391C();
  if (!v157)
  {

    goto LABEL_90;
  }

  if (v157 < 1)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  sub_10005CAAC();
  LODWORD(v720) = enum case for RuntimeDeviceState.imagePlaygroundAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  v30 = v158;
  do
  {
    if (v721)
    {
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005F4BC();
    }

    sub_10005ED3C();
    v13 = *(v17 + 1072);
    sub_10005F73C();
    sub_10001238C();
    v159 = sub_10005F2A0();
    v160(v159);
    v161 = sub_10005CEE0();
    v162(v161);
    if ((sub_10005F680() & 1) == 0)
    {
      v166 = sub_10005C874();
      sub_10008074C(v166, v167, v168, v169);
    }

    sub_10005CA70();
    if (v51)
    {
      v170 = sub_10005C9E4(v163);
      sub_10008074C(v170, v171, v172, v14);
      v14 = v173;
    }

    sub_1000606B8();
    *(v14 + 16) = v13;
    v164 = sub_10005C660();
    v165(v164);
    v31 = v724;
  }

  while (v30 != v15);

  sub_10005D20C();
LABEL_90:
  sub_10005E094();
  sub_100088CE8();
  v174 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v32 = sub_10005F888(v174);

  sub_10005C8BC();
  sub_100017D30(v32, v175);
  sub_1000607AC();
  v176 = sub_10008391C();
  if (!v176)
  {

    goto LABEL_103;
  }

  if (v176 < 1)
  {
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  sub_10005CAAC();
  LODWORD(v720) = enum case for RuntimeDeviceState.visualIntelligenceCameraAvailable(_:);
  sub_10005CAC4(enum case for RuntimeRequirement.deviceState(_:));
  v30 = v177;
  do
  {
    if (v721)
    {
      sub_10005DC1C();
      sub_10008A928();
    }

    else
    {
      sub_10005F4BC();
    }

    sub_10005ED3C();
    v178 = *(v17 + 1064);
    sub_10005F73C();
    sub_10001238C();
    v179 = sub_10005F2A0();
    v180(v179);
    v181 = sub_10005CEE0();
    v182(v181);
    if ((sub_10005F680() & 1) == 0)
    {
      v186 = sub_10005C874();
      sub_10008074C(v186, v187, v188, v189);
    }

    sub_10005CA70();
    if (v51)
    {
      v190 = sub_10005C9E4(v183);
      sub_10008074C(v190, v191, v192, v14);
      v14 = v193;
    }

    sub_100060680();
    *(v14 + 16) = v178;
    v184 = sub_10005C660();
    v185(v184);
    v31 = v724;
  }

  while (v30 != v15);

  sub_10005D20C();
LABEL_103:
  sub_1000609BC();
  if (v31)
  {
    sub_10008A3B8();
    v194 = v31;
    *(v17 + 1920) = sub_10008A3A8();
    sub_10005D9B8();
    sub_10008A388();
    sub_10005C88C();
LABEL_168:
    sub_10005E47C();
    sub_100012640();

    _swift_task_switch(v313);
    return;
  }

  if (sub_100083934(_swiftEmptyArrayStorage))
  {
    v195 = sub_1000567E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v195 = &_swiftEmptySetSingleton;
  }

  v727 = v195;
  if (sub_100083934(_swiftEmptyArrayStorage))
  {
    v196 = sub_1000567E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v196 = &_swiftEmptySetSingleton;
  }

  v31 = *(v17 + 472);
  v728 = v196;
  sub_100088B98();
  v197 = [v31 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v13 = sub_10005F888(v197);

  sub_10005C8A4();
  sub_100017D30(v13, v198);
  v16 = v199;
  v707 = v30;

  if (sub_10008391C())
  {
    sub_100060490();
    if (v200 == v201)
    {
      sub_10005DFEC();
      v721 = v202;
      LODWORD(v720) = enum case for WFDeviceIdiomResource.Requirement.equalTo(_:);
      sub_10005EE8C();
      while (1)
      {
        if (v721)
        {
          sub_10005ECCC();
          sub_10008A928();
        }

        else
        {
          sub_1000612FC();
        }

        sub_10005FFCC();
        v203 = sub_10005ECA8();
        if (v204(v203) == v720)
        {
          v205 = sub_10005F8D8();
          v206(v205);
          sub_100060860();
          sub_10005D114(v17);
          if (v500)
          {
            v31 = *(v41 + 952);

            sub_100017954(v31, &qword_1000A6518, &qword_10008D908);
          }

          else
          {
            v30 = *(v41 + 1008);
            v210 = sub_10005EAD4();
            v211(v210);
            sub_10005EED4();
            sub_10005E770();
            v212();
            v31 = &v727;
            v213 = sub_10005E44C();
            v16 = v715;
            sub_100055410(v213, v214);

            v14 = v710;
            v215 = sub_10005FDCC();
            v727(v215);
            v216 = sub_10005DB50();
            v32 = v718;
            v727(v216);
          }
        }

        else
        {
          sub_100060994();
          if (v500)
          {
            v30 = *(v41 + 960);
            v207 = *(v41 + 944);
            v208 = sub_10005F384();
            v209(v208);
            sub_100049E84(*v31, v207);
            sub_10005D114(v207);
            if (v500)
            {
              v31 = *(v41 + 944);

              sub_100017954(v31, &qword_1000A6518, &qword_10008D908);
            }

            else
            {
              v30 = *(v41 + 1000);
              sub_10005FDBC();
              v219 = sub_10005E59C();
              v220(v219);
              sub_10005E974();
              sub_100060CFC();
              v221();
              v222 = sub_10005DB50();
              sub_100055410(v222, v223);

              v31 = *v710;
              v224 = sub_10005FB20();
              (v31)(v224);
              v225 = sub_10005E44C();
              v16 = v715;
              (v31)(v225);
            }

            v17 = v41;
            v32 = v718;
            goto LABEL_128;
          }

          v217 = sub_10005E144();
          v218(v217, v17);
        }

        v17 = v41;
LABEL_128:
        if (v32 == ++v15)
        {
          goto LABEL_129;
        }
      }
    }

    goto LABEL_255;
  }

LABEL_129:
  sub_100061344();
  v226 = [v31 disabledOnPlatforms];
  v227 = sub_100012578();
  type metadata accessor for WFExecutionPlatform(v227);
  sub_10005E028();
  v32 = sub_10008A328();

  if (sub_100083934(v32))
  {
    sub_10005F354();
    if (v200 != v201)
    {
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    sub_10005FD9C();
    do
    {
      v228 = sub_10005F71C();
      sub_100060878(v228);
      v31 = &v728;
      v229 = sub_10005D9DC();
      sub_100055410(v229, v230);

      v17 = v726;
      v231 = sub_10005E50C();
      v232(v231);
      v41 += 8;
      --v13;
    }

    while (v13);
  }

  v32 = v727;
  if (*(v727 + 2))
  {
  }

  else
  {
    v233 = sub_1000899F8();
  }

  sub_100061164(v233);
  v14 = v729.n128_u64[0];
  v30 = v707;
  sub_10004A390(v729.n128_i64[0]);
  sub_10005FC30();

  v234 = sub_100083934(v31);
  if (v234)
  {
    if (v234 < 1)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    sub_10005DED4();
    v717 = v235;
    sub_10005E0A0();
    v702 = v31;
    sub_10006019C(v236);
    sub_10005F264(v237);
    do
    {
      v239 = sub_10005E6F8(v238);
      v240(v239);
      v15 = sub_100089EB8();
      v241 = sub_100012448();
      sub_100009158(v241, v242, v243, v15);
      sub_10005DA80();
      sub_100009158(v244, v245, v246, v15);
      sub_10005DA80();
      sub_100009158(v247, v248, v249, v15);
      sub_10005E580();
      sub_10008A0A8();
      v250 = sub_10005E150();
      v251(v250);
      v252 = sub_10005E59C();
      v253(v252, v36, v41);
      v254 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v260 = sub_10005CBF0();
        sub_10008074C(v260, v261, v262, v32);
        v254 = v263;
      }

      v41 = *(v254 + 16);
      v255 = *(v254 + 24);
      v17 = v726;
      if (v41 >= v255 >> 1)
      {
        v264 = sub_10005CA98(v255);
        sub_10008074C(v264, v265, v266, v254);
        v254 = v267;
      }

      sub_100060FC0();
      sub_10005E500();
      v256();
      v32 = v254;
      *(v254 + 16) = v41 + 1;
      sub_10005D14C();
      v258 = sub_10005EE50(v254 + v257);
      v259(v258);
      v238 = sub_100060C8C();
    }

    while (!v500);

    v30 = v707;
    *v706 = v32;
  }

  else
  {
  }

  v31 = *(v17 + 472);
  v14 = sub_10008A798();
  *(v17 + 440) = v14;
  v268 = _swiftEmptyArrayStorage;
  *(v17 + 448) = _swiftEmptyArrayStorage;
  *(v17 + 456) = &OBJC_PROTOCOL___WFLinkActionProtocol;
  v269 = sub_10005FD2C();
  if (v269)
  {
    v270 = v269;
    v268 = *(v17 + 552);
    v31 = *(v17 + 472);
    v271 = [v270 backingActionIdentifiers];
    v32 = sub_10008A328();

    sub_100017F50(v32);
    v13 = v272;

    sub_100029D74(v13, v268);
    sub_10005FD20();

    *(v17 + 448) = v268;
  }

  *(v17 + 1936) = v30;
  if (!sub_100083934(v268))
  {
    v273 = sub_100083934(v14);
    if (v273)
    {
      v32 = v273;
      v703 = v30;
      if (v273 < 1)
      {
        __break(1u);
        goto LABEL_260;
      }

      v281 = *(v17 + 848);
      v15 = *(v281 + 16);
      sub_10005E0A0();
      v702 = v14;
      v13 = (v14 + v282);
      v283 = *(v281 + 72);
      sub_100060A9C();
      v285 = *v284;
      sub_10005EE28(v286);
      do
      {
        v31 = *(v16 + 864);
        v287 = sub_10005E12C();
        (v15)(v287);
        v288 = sub_10005EB10();
        if (v289(v288) == v285)
        {
          sub_10005F158();
          v290 = sub_10005EAD4();
          v291(v290);
          sub_10005E144();
          sub_100060274();
          v292();
          sub_100089EE8();
          v31 = sub_100089ED8();
          sub_100089EC8();
          sub_10005E440();

          if (*(v31 + 16) && (sub_100081588(), (v293 & 1) != 0))
          {
            v294 = sub_10005E734();
            v295(v294);

            sub_100089058();
            sub_10005C82C();
            v31 = v16 + 448;
            sub_10001BFD8(v296, v297, &type metadata accessor for SampleInvocationDefinition);
            v298 = sub_10005F9B8();
            v299(v298);
            (*v717)(v715, v714);
          }

          else
          {
            sub_10006082C();
            v302 = sub_10005E07C();
            v304(v302, v303);
          }
        }

        else
        {
          v300 = sub_100060F48();
          v301(v300);
        }

        v13 += v283;
        v32 = (v32 - 1);
      }

      while (v32);
      v17 = v726;
      v268 = v726[56];
      v30 = v703;
      v14 = v702;
    }
  }

  v41 = v17 + 440;
  *(v17 + 1944) = v268;
  if (sub_100083934(v268))
  {
    v305 = sub_10005F128();
    (*(v306 + 104))(v305, enum case for SystemToolProtocol.assistantInvocable(_:));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 440) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_163:
      sub_10005EC28();
      if (v51)
      {
        v524 = sub_10005CA84(v308);
        sub_1000806CC(v524, v525, v526, v14);
        sub_10006093C(v527);
      }

      sub_10005F108();
      *(v14 + 16) = v31;
      sub_10005CA38();
      v310 = sub_10005E94C(v309);
      v311(v310);
      *(v17 + 440) = v14;
      goto LABEL_166;
    }

LABEL_258:
    v520 = sub_10005CBF0();
    sub_1000806CC(v520, v521, v522, v14);
    sub_10006093C(v523);
    goto LABEL_163;
  }

LABEL_166:
  *(v17 + 1952) = v14;
  v31 = *(v17 + 1560);
  if (v31)
  {
    sub_10008A3B8();
    v312 = v31;
    *(v17 + 1960) = sub_10008A3A8();
    sub_10005E440();
    sub_10008A388();
    sub_10005C814();
    goto LABEL_168;
  }

  v315 = sub_10005AE98(*(v17 + 472), &selRef_iconName);
  v704 = v30;
  if (v316)
  {
    sub_100060F24(v315, v316);
    v41 = sub_1000892E8();
    sub_100017A1C();
    v317 = sub_10005FFAC();
    v318(v317);
LABEL_173:
    sub_10005D968();
    goto LABEL_181;
  }

  sub_10005AE98(*(v17 + 472), &selRef_iconSymbolName);
  if (v323)
  {
    v324 = sub_10005F148();
    sub_10005AE98(v324, &selRef_iconBackgroundColorName);
    if (v325)
    {
      v326 = [sub_10005F118() definition];
      if (v326)
      {
        v14 = v326;
        v15 = [v326 objectForKey:WFActionIconSymbolColorNameKey];

        if (v15)
        {
          sub_10008A7E8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1000601D8();
        }

        sub_100060C40(v729, v730);
        if (v495)
        {
          sub_100060C28();
          if (swift_dynamicCast())
          {
            sub_1000613EC();
            goto LABEL_229;
          }

LABEL_228:
          sub_10005DA80();
          sub_100009158(v496, v497, v498, v499);
LABEL_229:
          sub_10005E570();
          v500 = v500 && v32 == 0xE400000000000000;
          if (v500 || (v501 = sub_10005DEB4(), (sub_10005D998(v501, v502) & 1) != 0))
          {
            sub_10005FE84();
            sub_10005BF68();
            sub_10005D114(&type metadata for Any);
            if (!v500)
            {
              v506 = sub_10005DD6C();
              sub_100017954(v506, &qword_1000A6500, &qword_10008D8F0);

              v507 = sub_10005EF2C();
              v32(v507);
              v508 = sub_10005D978();
              v32(v508);
LABEL_246:
              v513 = sub_10005D308();
              v514(v513);
              v515 = sub_100008DC0(&qword_1000A6590, &qword_10008D928);
              v516 = sub_10005DD20(v515);
              v517(v516);
              v31 = enum case for ToolIcon.symbol(_:);
              v41 = sub_1000892E8();
              sub_100017A1C();
              v518 = sub_10005FF8C();
              v519(v518);
              goto LABEL_173;
            }

            sub_100017954(*(v17 + 768), &qword_1000A6500, &qword_10008D8F0);
          }

          v503 = *(v17 + 760);
          v30 = *(v17 + 688);
          sub_10005DEB4();
          sub_1000891A8();
          sub_10005D0F4(v503);
          v504 = *(v17 + 760);
          sub_10005DD3C();
          if (v500)
          {
            sub_10005E940();
            v505();
            sub_10005CF70(v504);
            if (!v500)
            {
              sub_100017954(*(v17 + 760), &qword_1000A6500, &qword_10008D8F0);
            }
          }

          else
          {
            sub_10005DD5C();
            v509();
          }

          sub_10005FE74();
          sub_10005BFBC();
          sub_10005D0F4(v503);
          v32 = *(v17 + 752);
          sub_10005DD3C();
          if (v500)
          {
            sub_10005E940();
            v510();
            sub_10005CF70(v32);
            if (!v500)
            {
              sub_100017954(*(v17 + 752), &qword_1000A6500, &qword_10008D8F0);
            }
          }

          else
          {
            sub_10005DD5C();
            v511();
          }

          sub_10005E528();
          v15 = *(sub_100008DC0(&qword_1000A6588, &qword_10008D920) + 48);
          v512 = *(v14 + 32);
          v14 += 32;
          sub_10005E0AC();
          v512();
          sub_10005EC64();
          v512();
          v17 = v726;
          goto LABEL_246;
        }
      }

      else
      {
        sub_100060A68();
      }

      sub_100017954(v17 + 304, &qword_1000A5A20, &qword_10008C9F0);
      goto LABEL_228;
    }
  }

  sub_10006150C();
  v319 = sub_10005CF18();
LABEL_181:
  sub_100009158(v319, v320, v321, v322);
  v327 = sub_10005AE98(*(v17 + 472), &selRef_fillingProvider);
  sub_100060F18(v327, v328);
  if (!v329)
  {
    sub_10005DB5C();

    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v369 = xmmword_10008D640;
    swift_willThrow();

    (*(v32 + 1))(v704, v702);
    sub_100017954(v15, &qword_1000A6508, &qword_10008D8F8);

    (*(v41 + 8))(v707, v706);

    (*(v31 + 8))(v714, v712);
    v370 = sub_100060E20();
    v371(v370);

    (*(v17 + 8))(v720, v718);
    goto LABEL_210;
  }

  v330 = swift_allocBox();
  sub_100060F0C(v330, v331);
  sub_10004A4D4(_swiftEmptyArrayStorage);
  v332 = sub_100089108();
  v333 = sub_1000614F4(v332);
  *(v17 + 2016) = v333;
  if (!v333)
  {
    v337 = *(v17 + 1568);

    v716 = *(v17 + 1936);
    v372 = &WFLogCategoryToolKitIndexing;
LABEL_205:
    v713 = v17 + 360;
    v373 = *v372;
    sub_10005F7CC();
    sub_10006138C();
    sub_10005E1F0();
    v374 = swift_allocObject();
    sub_100060ED0(v374);
    sub_10005D504();
    v375 = swift_allocObject();
    sub_10005EB98(v375);
    sub_10005E440();
    swift_retain_n();
    v376 = v373;
    v725 = sub_100088FF8();
    v719 = sub_10008A5C8();
    sub_10005D9D0();
    v377 = swift_allocObject();
    sub_100060EB0(v377);
    sub_10005D9D0();
    v378 = swift_allocObject();
    sub_100060DD4(v378);
    sub_10005D504();
    v379 = swift_allocObject();
    sub_10005C99C(v379);
    sub_10005D504();
    swift_allocObject();
    sub_10005CD50();
    *(v380 + 16) = v381;
    *(v380 + 24) = v379;
    sub_10005D9D0();
    v382 = swift_allocObject();
    *(v382 + 16) = 32;
    sub_10005D9D0();
    v383 = swift_allocObject();
    *(v383 + 16) = v337;
    sub_10005D504();
    v384 = swift_allocObject();
    sub_10005E8E4(v384);
    sub_10005D504();
    swift_allocObject();
    sub_10005D1BC();
    *(v385 + 16) = v386;
    *(v385 + 24) = v15;
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v388 = sub_10005C6B8(inited, xmmword_10008D630);
    v388[2].n128_u64[0] = v389;
    v388[2].n128_u64[1] = v702;
    v388[3].n128_u64[0] = sub_10005C5C8;
    v388[3].n128_u64[1] = v378;
    v388[4].n128_u64[0] = sub_10005C5D0;
    v388[4].n128_u64[1] = v32;
    v388[5].n128_u64[0] = sub_10005C5C8;
    v388[5].n128_u64[1] = v382;
    v388[6].n128_u64[0] = sub_10005C5C8;
    v388[6].n128_u64[1] = v383;
    v388[7].n128_u64[0] = sub_10005C5D0;
    v388[7].n128_u64[1] = v337;

    v390 = v702;

    v391 = v382;

    if (os_log_type_enabled(v725, v719))
    {
      sub_10005E894();
      v729.n128_u64[0] = sub_10005E7D0();
      sub_10005CFD8();

      v390 = 8;
      *(inited + 3) = 8;

      v392 = v337;
      v393 = [v337 identifier];
      sub_10008A268();

      v394 = sub_10005DB50();
      sub_100080D2C(v394, v395, v396);
      sub_10005EB1C();

      *(inited + 4) = v393;

      sub_10005F50C();

      *(inited + 13) = 8;

      sub_10005E4A0();
      v397 = swift_beginAccess();
      v405 = sub_10005F518(v397, v398, v399, v400, v401, v402, v403, v404, v528, v532, v536, v540, v544, v548, v552, v556, v560, v564, v567, v570, v573, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v654, v657, v660, v663, v666, v669, v672, v675, v678, v681, v684, v687, v690, v693, v696, v699);
      v406(v405);
      sub_10005C5F4();
      v409 = sub_10005AE38(v407, v408);
      sub_100060790(v409);
      v410 = sub_1000124C8();
      v411(v410);
      v412 = sub_10005EB10();
      sub_100080D2C(v412, v413, v414);
      sub_10005E440();

      sub_100060184();

      sub_1000604CC(v415, v416, v417, v418, v419, v420, v421, v422, v529, v533, v537, v541, v545, v549, v553, v557, v561, v565, v568, v571, v574, v577, v580, v583, v586, v589, v592, v595, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649, v652, v655, v658, v661, v664, v667, v670, v673, v676, v679, v682, v685, v688, v691, v694, v697, v700);
      v391 = v725;
      sub_10005E620(&_mh_execute_header, v423, v719, "%s: Visibility flags: %s");
      sub_10005ED04(v424, v425, v426, v427, v428, v429, v430, v431, v530, v534, v538, v542, v546, v550, v554, v558, v562, v566, v569, v572, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v653, v656, v659, v662, v665, v668, v671, v674, v677, v680, v683, v686, v689, v692, v695, v698, v701);
      sub_10005D4F8();

      sub_10005D4F8();

      v432 = sub_10005E600();
    }

    else
    {
      sub_10005F404();

      sub_100061374();

      v432 = sub_10005FB20();
    }

    v433(v432);
    sub_10005ECD8();
    v705 = *(v17 + 1192);
    v708 = *(v17 + 1152);
    sub_100060D9C();
    v711 = v434;
    sub_10005E5C8();
    v435 = [v391 identifier];
    v709 = sub_10008A268();

    v436 = swift_task_alloc();
    v437 = sub_10005E63C(v436);
    v437[7] = v702;
    v437[8] = v390;
    v437[9] = v713;
    v437[10] = v705;
    v438 = sub_10005F938(v437, v708);
    sub_10006006C(v438);
    sub_10005C624();
    sub_1000603A0();
    sub_1000893A8();
    sub_100060D5C();
    v439 = *(v17 + 1560);
    v722 = *(v17 + 1552);
    sub_10005F034();
    if (!v716)
    {
      sub_10005D15C();
      v563 = *(v17 + 1416);
      sub_10005CE40();
      v445 = *(v17 + 1208);
      v555 = *(v17 + 1200);
      v559 = v446;
      sub_10005CC38();
      v447 = *(v17 + 808);
      sub_10005D06C();
      sub_10005E0C4();
      v448();

      sub_100017954(v447, &qword_1000A6508, &qword_10008D8F8);

      v449 = sub_10005F288();
      v450(v449);

      v459 = sub_1000602F8(v451, v452, v453, v454, v455, v456, v457, v458, v528, v532, v536, v540, v544, v548);
      v460(v459);
      (*(v445 + 8))(v559, v555);

      v469 = sub_100060A10(v461, v462, v463, v464, v465, v466, v467, v468, v531, v535, v539, v543, v547, v551, v555, v559, v563, v564, v567);
      v470(v469);

      sub_100012420();
      goto LABEL_212;
    }

    sub_10005E250();
    v440();

    sub_100017954(v716, &qword_1000A6508, &qword_10008D8F8);

    v441 = sub_1000609A8();
    v442(v441);

    (*(v17 + 472))(v711, v709);
    (*(v390 + 8))(v17 + 400, v713);

    v443 = sub_100060E20();
    v444(v443);
LABEL_210:
    sub_10005C6D0();
    sub_10005E2B0();

    sub_10001248C();
LABEL_212:
    sub_100012640();

    v472(v471, v472, v473, v474, v475, v476, v477, v478, a9, a10, a11, a12);
    return;
  }

  sub_10005DFB0();
  sub_10005F0E8();
  v714 = v336;
  v716 = v335;
  while (1)
  {
    sub_10005E034(v334);
    if (v51)
    {
      __break(1u);
      goto LABEL_248;
    }

    v337 = *(v17 + 680);
    v30 = *(v17 + 672);
    v17 = v726[83];
    v13 = v726[79];
    v338 = v726[78];
    sub_10005CD9C();
    v339 = sub_1000609E8();
    (v16)(v339);
    (v16)(v30, v337, v338);
    sub_100089138();
    sub_10005C5F4();
    v41 = sub_10005AE38(&qword_1000A6568, v340);
    sub_10005E5A8();
    sub_10008A228();
    v341 = sub_10005EA38();
    (v15)(v341);
    v31 = *(v17 + 672);
    if (v337)
    {
      v342 = sub_10005DEA4();
      (v15)(v342);
      v343 = [v337 visibleForUse:0];
      if (v343)
      {
        sub_10005F18C(v343);
        v344 = sub_10005EB10();
        (v16)(v344);
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v345);
        sub_10005D9DC();
        v718 = v346;
        sub_10008A808();
        sub_10005E07C();
        sub_10005E3BC();
        sub_10008A228();
        sub_10005E610();
        v337 = v347;
        *v347 = v348;
        if (v349)
        {
          v365 = sub_10005F318();
          (v15)(v365);
          sub_10005E934();
          (v16)();
          v366 = sub_1000124C8();
          (v16)(v366);
          v31 = v720;
          sub_10008A818();
          v367 = sub_10005D9DC();
          (v15)(v367);
          (v15)(v721, v14);
        }

        else
        {
          v350 = sub_10005FC14();
          (v15)(v350);
          v351 = sub_10005EF0C();
          (v15)(v351);
          v352 = sub_100060A74();
          v353(v352);
        }

        sub_10005E000();
        sub_10005BFBC();
        sub_10005FCEC();
      }

      goto LABEL_200;
    }

    sub_10005D360();
    sub_100089128();
    v14 = sub_10005D0B0();
    v354 = sub_10005E07C();
    (v15)(v354);
    v31 = *(v17 + 672);
    if (v14)
    {
      v355 = sub_10005DEA4();
      (v15)(v355);
      if (([v337 visibleForUse:1] & 1) == 0)
      {
        goto LABEL_200;
      }

      sub_10005CE94();
      sub_100089128();
      goto LABEL_196;
    }

    sub_10005D360();
    sub_100089118();
    sub_10005D0B0();
    v356 = sub_10005DCA8();
    (v15)(v356);
    if ((v31 & 1) == 0)
    {
      break;
    }

    sub_100060E8C();
    sub_10005D350();
    (v15)();
    v357 = sub_10005E470();
    (v16)(v357);
    sub_100089138();
    sub_10005C5F4();
    sub_10005AE38(&unk_1000A6578, v358);
    v31 = sub_10005F848();
    v359 = sub_1000124C8();
    (v15)(v359);
    v360 = sub_10005E07C();
    (v15)(v360);
    if (v31 & 1) != 0 && ([*(v17 + 472) isApprovedForPublicShortcutsDrawer])
    {
      sub_10005CE94();
      sub_100089118();
LABEL_196:
      v361 = sub_10005F36C();
      sub_100049B80(v361, v362);
      v363 = sub_1000124C8();
      (v15)(v363);
      v364 = sub_10005E07C();
      (v15)(v364);
    }

LABEL_200:
    sub_10005D250();
    v368();
    if (v337 == v31)
    {
      sub_100061494();

      v372 = v714;
      goto LABEL_205;
    }

    sub_100060E2C();
  }

  v479 = *(v17 + 672);
  sub_10005D360();
  sub_100089148();
  sub_10005D0B0();
  v480 = sub_10005DCA8();
  (v15)(v480);
  if ((v479 & 1) == 0)
  {
    v729.n128_u64[0] = sub_10005F76C();
    v729.n128_u64[1] = v485;
    sub_10005E404("Unknown visibility flag: ");
    sub_10005C5F4();
    v488 = sub_10005AE38(v486, v487);
    v731._countAndFlagsBits = sub_100060774(v488);
    sub_10006156C(v731);

    sub_10008A2A8();
    sub_10005C9F8();
    sub_10005D3F8("Fatal error", v489, v490, v491, v492, "BackgroundShortcutRunner/ToolKitIndexer.swift", v493, v494, v528, v532);
    sub_100012640();
    return;
  }

  v481 = [*(v17 + 472) visibleForUse:0];
  if (v481)
  {
    v481 = [*(v17 + 472) isApprovedForPublicShortcutsDrawer];
  }

  sub_100060C4C(v481);
  v482 = swift_task_alloc();
  v483 = sub_100060A38(v482);
  *v483 = v484;
  sub_10005C640(v483);
  sub_10005CEF4();
  sub_100012640();

LABEL_260:
  WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v273, v274, v275, v276, v277, v278, v279, v280, a9, a10, a11, a12);
}

uint64_t sub_10003E284()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1928) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

void sub_10003E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  if (sub_10005AEF4(*(v13 + 1928)))
  {
    v15 = *(v13 + 1904);
    v16 = sub_10008A098();
    if (v15)
    {
      v17 = *(v13 + 1560);
      v319 = *(v13 + 1552);
      v18 = sub_10005D330();
      v346 = *(v13 + 1448);
      v19 = *(v13 + 1416);
      v341 = *(v13 + 1408);
      v20 = *(v13 + 1208);
      v330 = *(v13 + 1200);
      v334 = *(v13 + 1216);
      v21 = *(v13 + 1168);
      v321 = *(v13 + 1160);
      v325 = *(v13 + 1192);
      v314 = *(v13 + 1152);
      v22 = *(v13 + 1144);
      v23 = *(v13 + 1136);
      (*(v24 + 8))(v18);

      (*(v22 + 8))(v314, v23);

      (*(v21 + 8))(v325, v321);
      (*(v20 + 8))(v334, v330);

      (*(v19 + 8))(v346, v341);
      goto LABEL_4;
    }

    v33 = v16;
    v34 = *(v13 + 1560);

    sub_10001B38C(v33);
    sub_1000608D8();
    sub_10001BFD8(v12, sub_10008074C, &type metadata accessor for RuntimeRequirement);
  }

  else
  {

    v15 = *(v13 + 1904);
  }

  v35 = sub_10008A798();
  v36 = _swiftEmptyArrayStorage;
  *(v13 + 440) = v35;
  *(v13 + 448) = _swiftEmptyArrayStorage;
  *(v13 + 456) = &OBJC_PROTOCOL___WFLinkActionProtocol;
  v37 = swift_dynamicCastObjCProtocolConditional();
  if (v37)
  {
    v38 = v37;
    v36 = *(v13 + 552);
    v39 = *(v13 + 472);
    v40 = [v38 backingActionIdentifiers];
    v41 = v35;
    v42 = sub_10008A328();

    sub_100017F50(v42);
    v35 = v41;

    v43 = sub_10005F2AC();
    sub_100029D74(v43, v44);
    sub_10005E434();

    *(v13 + 448) = v36;
  }

  *(v13 + 1936) = v15;
  if (!sub_100083934(v36))
  {
    v45 = sub_100083934(v35);
    if (v45)
    {
      v46 = v45;
      sub_10005E398();
      if (v55 != v56)
      {
        __break(1u);
        goto LABEL_108;
      }

      v57 = *(v13 + 848);
      v59 = *(v57 + 16);
      v57 += 16;
      v58 = v59;
      sub_10005E0A0();
      v307 = v35;
      v61 = v35 + v60;
      v14 = *(v57 + 56);
      v355 = (v57 - 8);
      v350 = (v57 + 80);
      v62 = enum case for SystemToolProtocol.assistantSchema(_:);
      v322 = v14;
      v326 = v63;
      v337 = (v64 + 8);
      do
      {
        v65 = sub_10005E12C();
        v58(v65);
        v66 = sub_10005ED94();
        if (v67(v66) == v62)
        {
          v68 = *(v13 + 872);
          v69 = *(v13 + 864);
          (*v350)(v69, *(v13 + 840));
          v70 = sub_10005E144();
          v71(v70, v69, v68);
          sub_100089EE8();
          v72 = sub_100089ED8();
          sub_100089EC8();
          sub_10005FC30();

          if (*(v72 + 16) && (v73 = sub_100081588(), (v74 & 1) != 0))
          {
            v329 = *(v13 + 872);
            v333 = *(v13 + 888);
            v75 = v58;
            v76 = *(v13 + 832);
            v77 = *(v13 + 816);
            (*(v326 + 16))(v76, *(v72 + 56) + *(v326 + 72) * v73, v77);

            sub_100089058();
            sub_10005C82C();
            sub_10001BFD8(v78, v79, &type metadata accessor for SampleInvocationDefinition);
            v80 = v76;
            v58 = v75;
            v81 = v77;
            v14 = v322;
            (*(v326 + 8))(v80, v81);
            (*v337)(v333, v329);
          }

          else
          {

            v82 = sub_10005E51C();
            v84(v82, v83);
          }
        }

        else
        {
          (*v355)(*(v13 + 864), *(v13 + 840));
        }

        v61 += v14;
        --v46;
      }

      while (v46);
      v36 = *(v13 + 448);
      v35 = v307;
      v15 = v311;
    }
  }

  v85 = (v13 + 440);
  *(v13 + 1944) = v36;
  if (sub_100083934(v36))
  {
    (*(*(v13 + 848) + 104))(*(v13 + 856), enum case for SystemToolProtocol.assistantInvocable(_:), *(v13 + 840));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v13 + 440) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_106:
      v284 = sub_10005CBF0();
      sub_1000806CC(v284, v285, v286, v35);
      v35 = v287;
      *v85 = v287;
    }

    v88 = *(v35 + 16);
    v87 = *(v35 + 24);
    if (v88 >= v87 >> 1)
    {
      v288 = sub_10005CA84(v87);
      sub_1000806CC(v288, v289, v290, v35);
      v35 = v291;
      *v85 = v291;
    }

    *(v35 + 16) = v88 + 1;
    sub_10005CA38();
    v91(v35 + v89 + *(v90 + 40) * v88);
    *(v13 + 440) = v35;
  }

  *(v13 + 1952) = v35;
  v92 = *(v13 + 1560);
  if (v92)
  {
    sub_10008A3B8();
    v93 = v92;
    *(v13 + 1960) = sub_10008A3A8();
    sub_10005D9B8();
    sub_10008A388();
    sub_10005C814();
    sub_10005D2B8();
    sub_100012640();

    _swift_task_switch(v94);
    return;
  }

  v338 = v85;
  v96 = sub_10005AE98(*(v13 + 472), &selRef_iconName);
  if (!v97)
  {
    v105 = sub_10005AE98(*(v13 + 472), &selRef_iconSymbolName);
    if (v106)
    {
      v85 = v105;
      v107 = v106;
      sub_10005AE98(*(v13 + 472), &selRef_iconBackgroundColorName);
      if (v108)
      {
        v109 = v108;
        v110 = [*(v13 + 472) definition];
        if (v110)
        {
          v111 = v110;
          v112 = [v110 objectForKey:WFActionIconSymbolColorNameKey];

          if (v112)
          {
            sub_10008A7E8();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1000601D8();
          }

          *(v13 + 304) = v358;
          *(v13 + 320) = v359;
          if (*(v13 + 328))
          {
            if (swift_dynamicCast())
            {
              sub_1000891A8();
              goto LABEL_87;
            }

LABEL_86:
            sub_10005DA80();
            sub_100009158(v248, v249, v250, v251);
LABEL_87:
            sub_10005E570();
            v252 = v252 && v109 == 0xE400000000000000;
            if (v252 || (v253 = sub_10005E0B8(), (sub_10005D998(v253, v254) & 1) != 0))
            {
              v255 = *(v13 + 768);
              v256 = *(v13 + 688);
              sub_10005BF68();
              sub_10005DC64(v255, 1, v256);
              if (!v252)
              {
                v262 = *(v13 + 768);
                v263 = *(v13 + 720);
                v264 = *(v13 + 696);
                v265 = *(v13 + 688);
                sub_100017954(*(v13 + 776), &qword_1000A6500, &qword_10008D8F0);

                v266 = *(v264 + 32);
                v266(v263, v262, v265);
                v267 = sub_10005E51C();
                (v266)(v267);
                v268 = &enum case for ToolSymbolIconStyle.tinted(_:);
LABEL_104:
                v279 = *(v13 + 808);
                v280 = *(v13 + 736);
                v35 = *(v13 + 728);
                (*(v280 + 104))(*(v13 + 744), *v268, v35);
                sub_100008DC0(&qword_1000A6590, &qword_10008D928);
                *v279 = v85;
                v279[1] = v107;
                v15 = (v280 + 32);
                sub_100012584();
                v281();
                v282 = enum case for ToolIcon.symbol(_:);
                v85 = sub_1000892E8();
                sub_100017A1C();
                (*(v283 + 104))(v279, v282, v85);
                v101 = v279;
                goto LABEL_35;
              }

              sub_100017954(*(v13 + 768), &qword_1000A6500, &qword_10008D8F0);
            }

            v257 = *(v13 + 760);
            v258 = *(v13 + 688);
            sub_10005E0B8();
            sub_1000891A8();
            sub_10005EFA4(v257, 1, v258);
            v259 = *(v13 + 760);
            if (v260 == 1)
            {
              sub_10005E940();
              v261();
              sub_10005CF70(v259);
              if (!v252)
              {
                sub_100017954(*(v13 + 760), &qword_1000A6500, &qword_10008D8F0);
              }
            }

            else
            {
              sub_10005DD4C();
              v269();
            }

            v270 = *(v13 + 752);
            v271 = *(v13 + 688);
            sub_10005BFBC();
            sub_10005EFA4(v270, 1, v271);
            sub_10005E558();
            if (v252)
            {
              sub_10005E940();
              v272();
              sub_10005CF70(v270);
              if (!v252)
              {
                sub_100017954(*(v13 + 752), &qword_1000A6500, &qword_10008D8F0);
              }
            }

            else
            {
              sub_10005DD4C();
              v273();
            }

            v274 = *(v13 + 744);
            v275 = *(v13 + 712);
            v276 = *(v13 + 696);
            v277 = *(v13 + 688);
            v278 = *(sub_100008DC0(&qword_1000A6588, &qword_10008D920) + 48);
            v14 = *(v276 + 32);
            sub_10005E7EC();
            (v14)();
            (v14)(v274 + v278, v275, v277);
            v268 = &enum case for ToolSymbolIconStyle.multicolor(_:);
            goto LABEL_104;
          }
        }

        else
        {
          *(v13 + 304) = 0u;
          *(v13 + 320) = 0u;
        }

        sub_100017954(v13 + 304, &qword_1000A5A20, &qword_10008C9F0);
        goto LABEL_86;
      }
    }

    sub_1000892E8();
    v101 = sub_10005CF18();
    goto LABEL_43;
  }

  v98 = *(v13 + 808);
  *v98 = v96;
  v98[1] = v97;
  v85 = sub_1000892E8();
  sub_100017A1C();
  v99 = sub_100012498();
  v100(v99);
  v101 = v98;
LABEL_35:
  v102 = 0;
  v103 = 1;
  v104 = v85;
LABEL_43:
  sub_100009158(v101, v102, v103, v104);
  *(v13 + 1976) = sub_10005AE98(*(v13 + 472), &selRef_fillingProvider);
  *(v13 + 1984) = v113;
  if (!v113)
  {
    v153 = *(v13 + 1560);
    v312 = *(v13 + 1520);
    v154 = *(v13 + 1512);
    v304 = *(v13 + 1552);
    v308 = *(v13 + 1504);
    v348 = *(v13 + 1448);
    v155 = *(v13 + 1416);
    v339 = *(v13 + 1216);
    v343 = *(v13 + 1408);
    v156 = *(v13 + 1208);
    v331 = *(v13 + 1192);
    v335 = *(v13 + 1200);
    v157 = *(v13 + 1168);
    v327 = *(v13 + 1160);
    v158 = *(v13 + 1144);
    v315 = *(v13 + 1136);
    v316 = *(v13 + 1152);
    v159 = *(v13 + 808);

    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v160 = xmmword_10008D640;
    swift_willThrow();

    (*(v154 + 8))(v312, v308);
    sub_100017954(v159, &qword_1000A6508, &qword_10008D8F8);

    (*(v158 + 8))(v316, v315);

    (*(v157 + 8))(v331, v327);
    (*(v156 + 8))(v339, v335);

    (*(v155 + 8))(v348, v343);
    goto LABEL_4;
  }

  *(v13 + 1992) = swift_allocBox();
  *(v13 + 2000) = v114;
  sub_10004A4D4(_swiftEmptyArrayStorage);
  v115 = sub_100089108();
  *(v13 + 2008) = v115;
  v116 = sub_100083934(v115);
  *(v13 + 2016) = v116;
  if (!v116)
  {

    v333 = *(v13 + 1936);
    v161 = &WFLogCategoryToolKitIndexing;
LABEL_67:
    v162 = *v161;
    sub_10005ED74();
    sub_1000608C0();
    sub_10005E1F0();
    *(swift_allocObject() + 16) = v85;
    sub_10005D504();
    v163 = swift_allocObject();
    v352 = sub_10005C9B4(v163);
    v164 = v85;
    sub_10005D9B8();
    swift_retain_n();
    v165 = v162;
    v166 = v15;
    v356 = sub_100088FF8();
    v344 = sub_10008A5C8();
    sub_10005D9D0();
    v309 = swift_allocObject();
    *(v309 + 16) = 32;
    sub_10005D9D0();
    v167 = swift_allocObject();
    sub_10005FF0C(v167);
    sub_10005D504();
    v168 = swift_allocObject();
    sub_10005D1A4(v168);
    sub_10005D504();
    v169 = swift_allocObject();
    *(v169 + 16) = sub_10005B70C;
    *(v169 + 24) = v168;
    sub_10005D9D0();
    v170 = swift_allocObject();
    *(v170 + 16) = 32;
    sub_10005D9D0();
    v171 = swift_allocObject();
    *(v171 + 16) = v14;
    sub_10005D504();
    swift_allocObject();
    sub_10005C844();
    *(v172 + 16) = v173;
    *(v172 + 24) = v352;
    sub_10005D504();
    v174 = swift_allocObject();
    sub_10005C85C(v174);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v176 = sub_10005C6B8(inited, xmmword_10008D630);
    v176[2].n128_u64[0] = v177;
    v176[2].n128_u64[1] = v309;
    v176[3].n128_u64[0] = sub_10005C5C8;
    v176[3].n128_u64[1] = v166;
    v176[4].n128_u64[0] = sub_10005C5D0;
    v176[4].n128_u64[1] = v169;
    v176[5].n128_u64[0] = sub_10005C5C8;
    v176[5].n128_u64[1] = v170;
    v176[6].n128_u64[0] = sub_10005C5C8;
    v176[6].n128_u64[1] = v171;
    v176[7].n128_u64[0] = sub_10005C5D0;
    v176[7].n128_u64[1] = v174;

    v178 = v170;

    v179 = &ContainerIndexer;
    if (os_log_type_enabled(v356, v344))
    {
      v305 = *(v13 + 592);
      v302 = *(v13 + 568);
      v303 = *(v13 + 560);
      v180 = *(v13 + 472);
      v181 = sub_100010370(22);
      swift_slowAlloc();
      *v181 = 514;
      *(v181 + 2) = 32;

      *(v181 + 3) = 8;

      v182 = v180;
      v183 = [v180 identifier];
      sub_10008A268();

      v184 = sub_10005F5BC();
      v187 = sub_100080D2C(v184, v185, v186);

      *(v181 + 4) = v187;

      *(v181 + 12) = 32;

      *(v181 + 13) = 8;

      sub_10005E4A0();
      swift_beginAccess();
      sub_10005E458();
      v188();
      sub_10005C5F4();
      sub_10005AE38(v189, v190);
      sub_10005FC08();
      sub_10008AA28();
      sub_10005F638();
      v191 = sub_10005E494();
      v192(v191);
      v193 = sub_100012498();
      sub_100080D2C(v193, v194, v195);
      sub_10005D9B8();
      v179 = &ContainerIndexer;

      *(v181 + 14) = v178;

      v178 = v356;
      _os_log_impl(&_mh_execute_header, v356, v344, "%s: Visibility flags: %s", v181, 0x16u);
      swift_arrayDestroy();
      sub_10005D4F8();

      sub_10005D4F8();

      (*(v302 + 8))(v305, v303);
    }

    else
    {
      v196 = *(v13 + 472);

      v197 = sub_10005DB50();
      v198(v197);
    }

    v349 = *(v13 + 1984);
    v353 = *(v13 + 2000);
    v345 = *(v13 + 1976);
    v357 = *(v13 + 1560);
    v199 = *(v13 + 1216);
    v310 = *(v13 + 1448);
    v313 = *(v13 + 1192);
    v317 = *(v13 + 1152);
    v200 = *(v13 + 808);
    v323 = *(v13 + 544);
    v201 = *(v13 + 2100);
    v202 = *(v13 + 536);
    v203 = *(v13 + 512);
    v306 = *(v13 + 488);
    sub_10005FCC4(*(v13 + 480));
    v204 = [v178 *&v179[41].flags];
    sub_10008A268();

    v205 = swift_task_alloc();
    *(v205 + 16) = v178;
    *(v205 + 24) = v199;
    *(v205 + 32) = v203;
    *(v205 + 40) = v202;
    *(v205 + 48) = v201 & 1;
    *(v205 + 56) = v310;
    *(v205 + 64) = v200;
    *(v205 + 72) = v13 + 360;
    *(v205 + 80) = v313;
    *(v205 + 88) = v13 + 424;
    *(v205 + 96) = v317;
    *(v205 + 104) = v345;
    *(v205 + 112) = v349;
    *(v205 + 120) = v353;
    *(v205 + 128) = v306;
    *(v205 + 136) = v323;
    *(v205 + 144) = v338;
    *(v205 + 152) = v13 + 400;
    *(v205 + 160) = v357;
    sub_100089378();
    sub_10005C624();
    sub_1000603A0();
    sub_1000893A8();
    sub_10005FB2C();
    v340 = *(v13 + 1560);
    v354 = *(v13 + 1552);
    v206 = sub_10005D330();
    if (!v333)
    {
      sub_10005FB14();
      sub_10005FAFC();
      sub_10005DE40();
      sub_10005F024();
      v300 = v214;
      v301 = v215;
      sub_10005FAF0();
      sub_10005FAE4();
      sub_10005FAD8();
      sub_10005FACC();
      sub_10005FAC0();
      v216 = *(v13 + 1208);
      v298 = *(v13 + 1200);
      v299 = *(v13 + 1216);
      sub_10005D428();
      sub_10006043C();
      v296 = v217;
      v297 = v218;
      v295 = *(v13 + 1152);
      sub_10005D418();
      sub_10005D9E8();
      v219 = *(v13 + 808);
      (*(v220 + 8))();

      sub_100017954(v219, &qword_1000A6508, &qword_10008D8F8);

      v221 = sub_1000125C0();
      v222(v221);

      v231 = sub_1000602F8(v223, v224, v225, v226, v227, v228, v229, v230, v292, v293, v294, v295, v296, v297);
      v232(v231);
      (*(v216 + 8))(v299, v298);

      MEMORY[8](v301, v300);

      sub_100012420();
      goto LABEL_5;
    }

    v208 = *(v13 + 1416);
    v332 = *(v13 + 1408);
    v336 = *(v13 + 1448);
    v209 = *(v13 + 1208);
    v324 = *(v13 + 1200);
    v328 = *(v13 + 1216);
    v210 = *(v13 + 1168);
    v318 = *(v13 + 1160);
    v320 = *(v13 + 1192);
    v211 = *(v13 + 808);
    (*(v207 + 8))(v206);

    sub_100017954(v211, &qword_1000A6508, &qword_10008D8F8);

    v212 = sub_10005ECA8();
    v213(v212);

    (*(v210 + 8))(v320, v318);
    (*(v209 + 8))(v328, v324);

    (*(v208 + 8))(v336, v332);
LABEL_4:
    sub_10005C6D0();
    sub_10005DF4C();

    sub_10001248C();
LABEL_5:
    sub_100012640();

    v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
    return;
  }

  sub_100060CB4();
  sub_100060954();
  while (1)
  {
    sub_10005DEE8(v117);
    if (v118)
    {
      __break(1u);
      goto LABEL_106;
    }

    v85 = *(v13 + 664);
    v119 = *(v13 + 632);
    sub_10005CD9C();
    v35 = *(v119 + 16);
    v120 = sub_100060FA8();
    (v35)(v120);
    sub_10005F620();
    (v35)();
    sub_100089138();
    sub_10005C5F4();
    v122 = sub_10005AE38(&qword_1000A6568, v121);
    LOBYTE(v14) = sub_10008A228();
    v15 = *(v119 + 8);
    *(v13 + 2040) = v15;
    sub_10005F564();
    *(v13 + 2048) = v123;
    v124 = sub_10005F0DC();
    v15(v124);
    v125 = *(v13 + 672);
    if (v14)
    {
      v126 = sub_100060DA8();
      v15(v126);
      if ([v85 visibleForUse:0])
      {
        v127 = *(v13 + 624);
        sub_100089138();
        sub_10005FCB8();
        v342 = v35;
        (v35)();
        sub_10005C5F4();
        LOBYTE(v14) = sub_10005AE38(&unk_1000A6578, v128);
        sub_10008A808();
        sub_10005E51C();
        v125 = v127;
        sub_10008A228();
        sub_10005E610();
        v122 = v129;
        *v129 = v130;
        if (v131)
        {
          v347 = *(v13 + 2000);
          v351 = *(v13 + 680);
          v35 = *(v13 + 664);
          v148 = *(v13 + 656);
          v85 = *(v13 + 624);
          (v15)(*(v13 + 648), v85);
          v149 = &v122[v125];
          v122 = v342;
          (v342)(v149, v148, v85);
          v150 = sub_10005E51C();
          (v342)(v150);
          v125 = v347;
          sub_10008A818();
          v151 = sub_10005FBB8();
          v15(v151);
          (v15)(v351, v85);
        }

        else
        {
          v132 = *(v13 + 680);
          v133 = *(v13 + 648);
          v134 = *(v13 + 632);
          v85 = *(v13 + 624);
          (v15)(*(v13 + 656), v85);
          (v15)(v132, v85);
          v135 = *(v134 + 32);
          v35 = v134 + 32;
          v135(&v122[v125], v133, v85);
        }

        sub_10005DEC0();
        sub_10005BFBC();
        sub_1000608F0();
      }

      goto LABEL_62;
    }

    v14 = v35;
    v85 = *(v13 + 664);
    v35 = *(v13 + 624);
    sub_100089128();
    sub_10005D024();
    v136 = sub_10008A228();
    v137 = sub_10005E464();
    v15(v137);
    v125 = *(v13 + 672);
    if (v136)
    {
      v122 = *(v13 + 472);
      (v15)(*(v13 + 672), *(v13 + 624));
      if (([v122 visibleForUse:1] & 1) == 0)
      {
        goto LABEL_62;
      }

      v125 = *(v13 + 2000);
      sub_10005FD7C();
      sub_100089128();
      goto LABEL_58;
    }

    v85 = *(v13 + 664);
    v35 = *(v13 + 624);
    sub_100089118();
    sub_10005D024();
    v138 = sub_10008A228();
    v139 = sub_10005E464();
    v15(v139);
    if ((v138 & 1) == 0)
    {
      break;
    }

    sub_10005FD7C();
    (v15)();
    v140 = sub_1000125C0();
    (v14)(v140);
    sub_100089138();
    sub_10005C5F4();
    sub_10005AE38(&unk_1000A6578, v141);
    sub_100060F3C();
    v125 = sub_10008A7F8();
    v142 = sub_10005E464();
    v15(v142);
    v143 = sub_10005EB28();
    v15(v143);
    if (v125 & 1) != 0 && ([*(v13 + 472) isApprovedForPublicShortcutsDrawer])
    {
      v125 = *(v13 + 2000);
      sub_10005FD7C();
      sub_100089118();
LABEL_58:
      v144 = sub_10005E088();
      sub_100049B80(v144, v145);
      v146 = sub_10005E464();
      v15(v146);
      v147 = sub_10005EB28();
      v15(v147);
    }

LABEL_62:
    sub_10005D1D4();
    v152();
    if (v122 == v125)
    {
      sub_10006159C();

      v161 = v329;
      goto LABEL_67;
    }

    sub_100060FCC();
  }

  sub_100089148();
  sub_10005F288();
  v233 = sub_10008A228();
  v234 = sub_10005EC58();
  v15(v234);
  if ((v233 & 1) == 0)
  {
    sub_10005EBFC();
    sub_10005E404("Unknown visibility flag: ");
    sub_10005C5F4();
    v241 = sub_10005AE38(v239, v240);
    v360._countAndFlagsBits = sub_10005EB60(v241);
    sub_10006156C(v360);

    sub_10008A2A8();
    sub_10005C9F8();
    sub_10005D3F8("Fatal error", v242, v243, v244, v245, "BackgroundShortcutRunner/ToolKitIndexer.swift", v246, v247, v292, v293);
    sub_100012640();
    return;
  }

  v235 = [*(v13 + 472) visibleForUse:0];
  if (v235)
  {
    v235 = [*(v13 + 472) isApprovedForPublicShortcutsDrawer];
  }

  sub_100060F00(v235);
  v236 = swift_task_alloc();
  v237 = sub_100060C6C(v236);
  *v237 = v238;
  sub_10005C640(v237);
  sub_10005CF2C();
  sub_100012640();

LABEL_108:
  WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1000403DC()
{
  sub_100012404();
  v1 = *(v0 + 1560);

  *(v0 + 1968) = [v1 metadata];

  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

void sub_10004045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v17 = *(v12 + 1968);
  v18 = [v17 descriptionMetadata];

  v418 = v12;
  if (v18)
  {
    v19 = [v18 icon];

    if (v19)
    {
      objc_opt_self();
      sub_10005E028();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 bundleURL];
        if (v22)
        {
          v13 = v22;
          v23 = *(v12 + 808);
          v14 = *(v12 + 800);
          sub_1000889A8();

          sub_100008DC0(&qword_1000A6598, &qword_10008D930);
          v24 = [v21 name];
          sub_10008A268();
          sub_100060478();

          *v23 = v13;
          v23[1] = v15;
          sub_100012584();
          v25();
          sub_1000892E8();
          sub_100017A1C();
          v26 = sub_10005FFBC();
          v27(v26);
LABEL_9:
          sub_10005DD88();
LABEL_17:
          sub_100009158(v33, v34, v35, v36);
          goto LABEL_18;
        }
      }
    }
  }

  v28 = sub_10005AE98(*(v12 + 472), &selRef_iconName);
  if (v29)
  {
    v30 = *(v12 + 808);
    *v30 = v28;
    v30[1] = v29;
    sub_1000892E8();
    sub_100017A1C();
    v31 = sub_100012498();
    v32(v31);
    goto LABEL_9;
  }

  v37 = sub_10005AE98(*(v12 + 472), &selRef_iconSymbolName);
  if (!v38)
  {
LABEL_16:
    sub_1000892E8();
    v33 = sub_10005CF18();
    goto LABEL_17;
  }

  v39 = v37;
  v40 = v38;
  v41 = sub_10005AE98(*(v12 + 472), &selRef_iconBackgroundColorName);
  if (!v42)
  {

    goto LABEL_16;
  }

  v43 = v41;
  v44 = v42;
  v45 = [*(v12 + 472) definition];
  if (!v45)
  {
    *(v12 + 304) = 0u;
    *(v12 + 320) = 0u;
LABEL_64:
    sub_100017954(v12 + 304, &qword_1000A5A20, &qword_10008C9F0);
    goto LABEL_65;
  }

  v46 = v45;
  v47 = [v45 objectForKey:WFActionIconSymbolColorNameKey];

  if (v47)
  {
    sub_10008A7E8();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000601D8();
  }

  *(v12 + 304) = v419;
  *(v12 + 320) = v420;
  if (!*(v12 + 328))
  {
    goto LABEL_64;
  }

  if (swift_dynamicCast())
  {
    sub_1000891A8();
    goto LABEL_66;
  }

LABEL_65:
  sub_10005DA80();
  sub_100009158(v223, v224, v225, v226);
LABEL_66:
  v227 = v43 == 1953392980 && v44 == 0xE400000000000000;
  if (!v227 && (sub_10005D998(v43, v44) & 1) == 0)
  {
    goto LABEL_74;
  }

  v228 = v12;
  v229 = *(v12 + 688);
  sub_10005BF68();
  v230 = sub_10005EC70();
  sub_10005DC64(v230, v231, v229);
  if (v227)
  {
    sub_100017954(*(v12 + 768), &qword_1000A6500, &qword_10008D8F0);
LABEL_74:
    v14 = *(v12 + 760);
    v232 = *(v12 + 688);
    sub_1000891A8();
    v233 = sub_10005EC70();
    v228 = v12;
    sub_10005EFA4(v233, v234, v232);
    v235 = *(v12 + 760);
    if (v236 == 1)
    {
      sub_100060C34();
      v237();
      sub_10005D438(v235);
      if (!v227)
      {
        sub_100017954(*(v12 + 760), &qword_1000A6500, &qword_10008D8F0);
      }
    }

    else
    {
      sub_10005E770();
      v243();
    }

    v244 = *(v12 + 688);
    sub_10005BFBC();
    v245 = sub_10005E2A4();
    sub_10005EFA4(v245, v246, v244);
    v247 = *(v12 + 752);
    if (v248 == 1)
    {
      sub_100060C34();
      v249();
      sub_10005D438(v247);
      if (!v227)
      {
        sub_100017954(*(v12 + 752), &qword_1000A6500, &qword_10008D8F0);
      }
    }

    else
    {
      sub_10005E770();
      v250();
    }

    v251 = *(v12 + 744);
    v252 = *(v12 + 712);
    sub_10005FE64();
    sub_100008DC0(&qword_1000A6588, &qword_10008D920);
    sub_100060BDC();
    v253 = sub_10005D978();
    v16(v253);
    (v16)(v251 + v15, v252, v232);
    goto LABEL_83;
  }

  v238 = *(v12 + 776);
  v14 = *(v12 + 744);
  v239 = *(v12 + 696);
  sub_100017954(v238, &qword_1000A6500, &qword_10008D8F0);

  v240 = *(v239 + 32);
  v241 = sub_10005EC58();
  v240(v241);
  v242 = sub_10005DC58();
  v240(v242);
LABEL_83:
  v254 = *(v228 + 808);
  v13 = *(v228 + 744);
  sub_10005E540();
  v255 = sub_100060EF4();
  v256(v255);
  sub_100008DC0(&qword_1000A6590, &qword_10008D928);
  *v254 = v39;
  v254[1] = v40;
  sub_10005E0AC();
  v257();
  v258 = enum case for ToolIcon.symbol(_:);
  v259 = sub_1000892E8();
  sub_100017A1C();
  (*(v260 + 104))(v254, v258, v259);
  sub_10005D968();
  sub_100009158(v261, v262, v263, v264);
  v12 = v228;
LABEL_18:
  *(v12 + 1976) = sub_10005AE98(*(v12 + 472), &selRef_fillingProvider);
  *(v12 + 1984) = v48;
  if (!v48)
  {
    v105 = *(v418 + 1560);
    v106 = *(v418 + 1552);
    v107 = *(v418 + 1512);
    v383 = *(v418 + 1504);
    v386 = *(v418 + 1520);
    v410 = *(v418 + 1448);
    v108 = *(v418 + 1416);
    v403 = *(v418 + 1216);
    v406 = *(v418 + 1408);
    v109 = *(v418 + 1208);
    v397 = *(v418 + 1192);
    v400 = *(v418 + 1200);
    v110 = *(v418 + 1168);
    v395 = *(v418 + 1160);
    v111 = *(v418 + 1144);
    v388 = *(v418 + 1136);
    v390 = *(v418 + 1152);
    v112 = *(v418 + 808);

    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v113 = xmmword_10008D640;
    swift_willThrow();

    (*(v107 + 8))(v386, v383);
    sub_100017954(v112, &qword_1000A6508, &qword_10008D8F8);

    (*(v111 + 8))(v390, v388);

    (*(v110 + 8))(v397, v395);
    (*(v109 + 8))(v403, v400);

    (*(v108 + 8))(v410, v406);
    goto LABEL_47;
  }

  *(v12 + 1992) = swift_allocBox();
  *(v12 + 2000) = v49;
  sub_10004A4D4(_swiftEmptyArrayStorage);
  v50 = sub_100089108();
  *(v12 + 2008) = v50;
  v51 = sub_100083934(v50);
  *(v12 + 2016) = v51;
  if (!v51)
  {

    v402 = *(v12 + 1936);
    v114 = &WFLogCategoryToolKitIndexing;
LABEL_42:
    v115 = *v114;
    sub_10005ED74();
    sub_1000608C0();
    sub_10005E1F0();
    *(swift_allocObject() + 16) = v13;
    sub_10005D504();
    v116 = swift_allocObject();
    v117 = sub_10005C9B4(v116);
    v118 = v13;
    sub_10005D9B8();
    swift_retain_n();
    v119 = v115;
    v416 = sub_100088FF8();
    v407 = sub_10008A5C8();
    sub_10005D9D0();
    *(swift_allocObject() + 16) = 32;
    sub_10005D9D0();
    v384 = swift_allocObject();
    *(v384 + 16) = 8;
    sub_10005D504();
    v120 = swift_allocObject();
    sub_10005D1A4(v120);
    sub_10005D504();
    swift_allocObject();
    sub_10005CD50();
    *(v121 + 16) = v122;
    *(v121 + 24) = v120;
    sub_10005D9D0();
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    sub_10005D9D0();
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    sub_10005D504();
    swift_allocObject();
    sub_10005C844();
    *(v125 + 16) = v126;
    *(v125 + 24) = v117;
    sub_10005D504();
    v127 = swift_allocObject();
    sub_10005C85C(v127);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v129 = sub_10005C6B8(inited, xmmword_10008D630);
    v130 = sub_10005E998(v129);
    v131 = v384;
    v130[6] = v132;
    v130[7] = v384;
    v130[8] = sub_10005C5D0;
    v130[9] = v13;
    v130[10] = sub_10005C5C8;
    v130[11] = v123;
    v130[12] = sub_10005C5C8;
    v130[13] = v124;
    v130[14] = sub_10005C5D0;
    v130[15] = v127;

    sub_10006040C();

    sub_1000614DC();

    if (os_log_type_enabled(v416, v407))
    {
      v381 = *(v12 + 592);
      v379 = *(v12 + 568);
      v380 = *(v12 + 560);
      v133 = *(v12 + 472);
      sub_100010370(22);
      sub_10005E7D0();
      sub_10005CFD8();

      *(inited + 3) = 8;

      v134 = [v133 identifier];
      sub_10008A268();
      sub_100060478();

      v135 = sub_10005F644();
      sub_100080D2C(v135, v136, v137);
      sub_10006153C();
      *(inited + 4) = v134;

      sub_10005F50C();

      *(inited + 13) = 8;

      sub_10005E4A0();
      swift_beginAccess();
      sub_10005E3A4();
      v138();
      sub_10005C5F4();
      sub_10005AE38(v139, v140);
      sub_10005FC08();
      sub_10008AA28();
      sub_10005F638();
      v141 = sub_10005DB50();
      v142(v141);
      v143 = sub_100012498();
      sub_100080D2C(v143, v144, v145);
      sub_10005D9B8();

      sub_100060184();

      sub_1000604CC(v146, v147, v148, v149, v150, v151, v152, v153, v265, v267, v269, v271, v273, v275, v277, v280, v283, v286, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377);
      v131 = v416;
      sub_10005E620(&_mh_execute_header, v154, v407, "%s: Visibility flags: %s");
      sub_10005F828(v155, v156, v157, v158, v159, v160, v161, v162, v266, v268, v270, v272, v274, v276, v278, v281, v284, v287, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378);
      sub_10005CF50();

      sub_10005D4F8();

      (*(v379 + 8))(v381, v380);
    }

    else
    {
      sub_10006127C();

      v163 = sub_10005E088();
      v164(v163);
    }

    v411 = *(v12 + 1984);
    v414 = *(v12 + 2000);
    v408 = *(v12 + 1976);
    v417 = *(v12 + 1560);
    v165 = *(v12 + 1216);
    v385 = *(v12 + 1448);
    v387 = *(v12 + 1192);
    v389 = *(v12 + 1152);
    v166 = *(v12 + 808);
    v392 = *(v12 + 544);
    v167 = *(v12 + 2100);
    v168 = *(v12 + 536);
    v169 = *(v12 + 512);
    v382 = *(v12 + 488);
    sub_10005FCC4(*(v12 + 480));
    v170 = [v131 identifier];
    sub_10008A268();

    v171 = swift_task_alloc();
    *(v171 + 16) = v131;
    *(v171 + 24) = v165;
    *(v171 + 32) = v169;
    *(v171 + 40) = v168;
    *(v171 + 48) = v167 & 1;
    *(v171 + 56) = v385;
    *(v171 + 64) = v166;
    *(v171 + 72) = v12 + 360;
    *(v171 + 80) = v387;
    *(v171 + 88) = v12 + 424;
    *(v171 + 96) = v389;
    *(v171 + 104) = v408;
    *(v171 + 112) = v411;
    *(v171 + 120) = v414;
    *(v171 + 128) = v382;
    *(v171 + 136) = v392;
    *(v171 + 144) = v12 + 440;
    *(v171 + 152) = v12 + 400;
    *(v171 + 160) = v417;
    sub_100089378();
    sub_10005C624();
    sub_1000603A0();
    v172 = v402;
    sub_1000893A8();
    sub_10005FB2C();
    v404 = *(v12 + 1560);
    v415 = *(v12 + 1552);
    sub_10005D330();
    if (!v172)
    {
      sub_10005FB14();
      sub_10005FAFC();
      sub_10005DE40();
      sub_10005F024();
      v285 = v183;
      v288 = v184;
      sub_10005FAF0();
      sub_10005FAE4();
      sub_10005FAD8();
      sub_10005FACC();
      sub_10005FAC0();
      v185 = *(v12 + 1208);
      v279 = *(v12 + 1200);
      v282 = *(v12 + 1216);
      sub_10005D428();
      sub_10005CC38();
      v186 = *(v12 + 808);
      sub_10005EFBC();
      (*(v187 + 8))();

      sub_100017954(v186, &qword_1000A6508, &qword_10008D8F8);

      v188 = sub_10005F0DC();
      v189(v188);

      v198 = sub_1000602F8(v190, v191, v192, v193, v194, v195, v196, v197, v265, v267, v269, v271, v273, v275);
      v199(v198);
      (*(v185 + 8))(v282, v279);

      MEMORY[8](v288, v285);

      sub_100012420();
      goto LABEL_49;
    }

    sub_10005E5F0();
    v398 = v173;
    v401 = v174;
    sub_10005E5E0();
    v394 = v175;
    v396 = v176;
    sub_10005FEC4();
    v391 = v177;
    v393 = v178;
    v179 = *(v418 + 808);
    (*(v180 + 8))();

    sub_100017954(v179, &qword_1000A6508, &qword_10008D8F8);

    v181 = sub_10005ECA8();
    v182(v181);

    (*(v12 + 472))(v393, v391);
    (*(v166 + 8))(v396, v394);

    (*(v165 + 8))(v401, v398);
LABEL_47:
    sub_10005C6D0();
    sub_10005DF4C();

    sub_10001248C();
LABEL_49:
    sub_100012640();

    v201(v200, v201, v202, v203, v204, v205, v206, v207, a9, a10, a11, a12);
    return;
  }

  sub_100060CB4();
  sub_100060954();
  while (1)
  {
    sub_10005DEE8(v52);
    if (v61)
    {
      __break(1u);
      goto LABEL_85;
    }

    v62 = *(v12 + 664);
    v63 = *(v12 + 632);
    sub_10005D27C();
    v64 = sub_10005FBC4();
    v14(v64);
    v65 = sub_10005E5A8();
    v14(v65);
    sub_100089138();
    sub_10005C5F4();
    v67 = sub_10005AE38(&qword_1000A6568, v66);
    sub_10005F62C();
    v68 = sub_10008A228();
    v70 = *(v63 + 8);
    v13 = v63 + 8;
    v69 = v70;
    *(v12 + 2040) = v70;
    *(v12 + 2048) = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71 = sub_10005DC1C();
    v70(v71);
    v72 = *(v12 + 672);
    if (v68)
    {
      v73 = sub_10005FD8C();
      v69(v73);
      if ([v62 visibleForUse:0])
      {
        sub_10005EDBC();
        v74 = *(v12 + 624);
        v409 = v75;
        v412 = *(v12 + 600);
        sub_100089138();
        v76 = sub_10005E150();
        v405 = v14;
        v14(v76);
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v77);
        v14 = v409;
        sub_10006058C();
        sub_10005E7F8();
        sub_10005E3BC();
        v78 = sub_10008A228();
        v79 = *(v412 + 48);
        sub_10005DFD8(v78);
        if (v80)
        {
          v72 = *(v12 + 2000);
          v413 = *(v12 + 680);
          v101 = sub_10005E4E8();
          v69(v101);
          v405(v67 + v79, v74, v68);
          v102 = sub_10005DC58();
          (v405)(v102);
          sub_10005F5BC();
          sub_10008A818();
          v103 = sub_10005F294();
          v69(v103);
          (v69)(v413, v68);
        }

        else
        {
          v81 = sub_10005DE6C();
          v69(v81);
          v82 = sub_10005E12C();
          v69(v82);
          v83 = sub_1000608FC();
          v84(v83);
        }

        sub_10005DEC0();
        sub_10005BFBC();
        sub_1000608F0();
      }

      goto LABEL_37;
    }

    v85 = v14;
    v14 = *(v12 + 664);
    sub_10005FE0C();
    sub_100089128();
    sub_10005D024();
    v86 = sub_10008A228();
    v87 = sub_10005DC58();
    v12 = v418;
    v69(v87);
    v72 = *(v418 + 672);
    if (v86)
    {
      v88 = (v69)(*(v418 + 672), *(v418 + 624));
      if ((sub_10006144C(v88, "visibleForUse:") & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10005EDAC();
      sub_10005FE0C();
      sub_100089128();
      goto LABEL_33;
    }

    v14 = *(v418 + 664);
    sub_100089118();
    sub_10005D024();
    v89 = sub_10008A228();
    v90 = sub_10005DC58();
    v91 = (v69)(v90);
    if ((v89 & 1) == 0)
    {
      break;
    }

    v92 = sub_10005F8A0();
    v69(v92);
    v93 = sub_10005E428();
    v85(v93);
    sub_100089138();
    sub_10005C5F4();
    sub_10005AE38(&unk_1000A6578, v94);
    v72 = sub_1000612BC();
    v95 = sub_10005DC58();
    v69(v95);
    v96 = sub_10005D9DC();
    v69(v96);
    if (v72 & 1) != 0 && ([*(v418 + 472) isApprovedForPublicShortcutsDrawer])
    {
      sub_10005EDAC();
      sub_10005FE0C();
      sub_100089118();
LABEL_33:
      v97 = sub_10005E494();
      sub_100049B80(v97, v98);
      v99 = sub_10005DC58();
      v69(v99);
      v100 = sub_10005D9DC();
      v12 = v418;
      v69(v100);
    }

LABEL_37:
    sub_10005D1D4();
    v104();
    if (v69 == v72)
    {
      sub_10006159C();

      v114 = v399;
      goto LABEL_42;
    }

    sub_100060FCC();
  }

  sub_10006104C(v91);
  sub_10005F288();
  sub_10005F910();
  v208 = sub_10008A228();
  v209 = sub_10005EC4C();
  v69(v209);
  if ((v208 & 1) == 0)
  {
    sub_10005EBFC();
    sub_10005E404("Unknown visibility flag: ");
    sub_10005C5F4();
    v216 = sub_10005AE38(v214, v215);
    v421._countAndFlagsBits = sub_10005EB60(v216);
    sub_10006156C(v421);

    sub_10008A2A8();
    sub_10005C9F8();
    sub_10005D3F8("Fatal error", v217, v218, v219, v220, "BackgroundShortcutRunner/ToolKitIndexer.swift", v221, v222, v265, v267);
    sub_100012640();
    return;
  }

  v210 = [*(v418 + 472) visibleForUse:0];
  if (v210)
  {
    v210 = [*(v418 + 472) isApprovedForPublicShortcutsDrawer];
  }

  sub_100060F00(v210);
  v211 = swift_task_alloc();
  v212 = sub_100060C6C(v211);
  *v212 = v213;
  sub_10005C640(v212);
  sub_10005CF2C();
  sub_100012640();

LABEL_85:
  WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
}

uint64_t sub_100041F8C()
{
  sub_100012604();
  v3 = v2;
  sub_100012474();
  v5 = v4;
  sub_1000123F8();
  *v6 = v5;
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v5 + 2064) = v0;

  if (!v0)
  {
    v9 = *(v5 + 2040);
    v10 = *(v5 + 672);
    v11 = *(v5 + 624);
    *(v5 + 2102) = v3 & 1;
    v9(v10, v11);
  }

  sub_100012554();

  return _swift_task_switch(v12);
}

void sub_1000420B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  if (*(v14 + 2101) == 1 && (*(v14 + 2102) & 1) != 0)
  {
    v16 = *(v14 + 2040);
    v13 = *(v14 + 2000);
    v12 = *(v14 + 664);
    v15 = *(v14 + 624);
    sub_100089148();
    v17 = sub_1000124C8();
    sub_100049B80(v17, v18);
    v19 = sub_10005DB50();
    v16(v19);
    v20 = sub_10005E088();
    v16(v20);
  }

  v187 = *(v14 + 2064);
  while (1)
  {
    sub_10005D1D4();
    v21();
    if (v12 == v13)
    {
      break;
    }

    sub_100060FCC();
    sub_10005DEE8(v22);
    if (v31)
    {
      __break(1u);
LABEL_39:
      WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
      return;
    }

    v32 = *(v14 + 664);
    v33 = *(v14 + 632);
    sub_10005D27C();
    v34 = sub_10005FBC4();
    v16(v34);
    v35 = sub_10005E5A8();
    v16(v35);
    sub_100089138();
    sub_10005C5F4();
    v37 = sub_10005AE38(&qword_1000A6568, v36);
    sub_10005F62C();
    v38 = sub_10008A228();
    v39 = *(v33 + 8);
    v15 = v33 + 8;
    v12 = v39;
    *(v14 + 2040) = v39;
    *(v14 + 2048) = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = sub_10005DC1C();
    v39(v40);
    v13 = *(v14 + 672);
    if (v38)
    {
      v41 = sub_10005FD8C();
      v12(v41);
      if ([v32 visibleForUse:0])
      {
        sub_10005EDBC();
        v42 = *(v14 + 624);
        v192 = v43;
        v194 = *(v14 + 600);
        sub_100089138();
        v44 = sub_10005E150();
        v197 = v16;
        v16(v44);
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v45);
        v16 = v192;
        sub_10006058C();
        sub_10005E7F8();
        sub_10005E3BC();
        v46 = sub_10008A228();
        v47 = *(v194 + 48);
        sub_10005DFD8(v46);
        if (v48)
        {
          v13 = *(v14 + 2000);
          v195 = *(v14 + 680);
          v68 = sub_10005E4E8();
          v12(v68);
          (v197)(v37 + v47, v42, v38);
          v69 = sub_10005DC58();
          v197(v69);
          sub_10005F5BC();
          sub_10008A818();
          v70 = sub_10005F294();
          v12(v70);
          (v12)(v195, v38);
        }

        else
        {
          v49 = sub_10005DE6C();
          v12(v49);
          v50 = sub_10005E12C();
          v12(v50);
          v51 = sub_1000608FC();
          v52(v51);
        }

        sub_10005DEC0();
        sub_10005BFBC();
        sub_1000608F0();
      }
    }

    else
    {
      v198 = v16;
      v16 = *(v14 + 664);
      sub_100089128();
      sub_10005D024();
      v53 = sub_10008A228();
      v54 = sub_10005DC58();
      v12(v54);
      v13 = *(v14 + 672);
      if (v53)
      {
        v55 = (v12)(*(v14 + 672), *(v14 + 624));
        if (sub_10006144C(v55, "visibleForUse:"))
        {
          sub_10005EDAC();
          sub_100089128();
          goto LABEL_18;
        }
      }

      else
      {
        v16 = *(v14 + 664);
        sub_100089118();
        sub_10005D024();
        v56 = sub_10008A228();
        v57 = sub_10005DC58();
        v58 = (v12)(v57);
        if ((v56 & 1) == 0)
        {
          sub_10006104C(v58);
          sub_10005F288();
          sub_10005F910();
          v153 = sub_10008A228();
          v154 = sub_10005EC4C();
          v12(v154);
          if ((v153 & 1) == 0)
          {
            sub_10005EBFC();
            sub_10005E980();
            v200._countAndFlagsBits = 0xD000000000000019;
            sub_10008A2C8(v200);
            sub_10005C5F4();
            v161 = sub_10005AE38(v159, v160);
            v201._countAndFlagsBits = sub_10005EB60(v161);
            sub_10008A2C8(v201);

            sub_10008A2A8();
            sub_10005C9F8();
            sub_10005D3F8("Fatal error", v162, v163, v164, v165, "BackgroundShortcutRunner/ToolKitIndexer.swift", v166, v167, v168, v169);
            sub_100012640();
            return;
          }

          v155 = [*(v14 + 472) visibleForUse:0];
          if (v155)
          {
            v155 = [*(v14 + 472) isApprovedForPublicShortcutsDrawer];
          }

          sub_100060F00(v155);
          v156 = swift_task_alloc();
          v157 = sub_100060C6C(v156);
          *v157 = v158;
          sub_10005C640(v157);
          sub_10005CF2C();
          sub_100012640();

          goto LABEL_39;
        }

        v59 = sub_10005F8A0();
        v12(v59);
        v60 = sub_10005E428();
        v198(v60);
        sub_100089138();
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v61);
        v13 = sub_1000612BC();
        v62 = sub_10005DC58();
        v12(v62);
        v63 = sub_10005D9DC();
        v12(v63);
        if (v13 & 1) != 0 && ([*(v14 + 472) isApprovedForPublicShortcutsDrawer])
        {
          sub_10005EDAC();
          sub_100089118();
LABEL_18:
          v64 = sub_10005E494();
          sub_100049B80(v64, v65);
          v66 = sub_10005DC58();
          v12(v66);
          v67 = sub_10005D9DC();
          v12(v67);
        }
      }
    }
  }

  sub_10006159C();

  v71 = *(v14 + 2024);
  sub_10005ED74();
  sub_1000608C0();
  sub_10005E1F0();
  *(swift_allocObject() + 16) = v15;
  sub_10005D504();
  v72 = swift_allocObject();
  v73 = sub_10005C9B4(v72);
  v74 = v15;
  sub_10005D9B8();
  swift_retain_n();
  v75 = v71;
  v199 = sub_100088FF8();
  v193 = sub_10008A5C8();
  sub_10005D9D0();
  *(swift_allocObject() + 16) = 32;
  sub_10005D9D0();
  v181 = swift_allocObject();
  *(v181 + 16) = 8;
  sub_10005D504();
  v76 = swift_allocObject();
  sub_10005D1A4(v76);
  sub_10005D504();
  swift_allocObject();
  sub_10005CD50();
  *(v77 + 16) = v78;
  *(v77 + 24) = v76;
  sub_10005D9D0();
  v79 = swift_allocObject();
  *(v79 + 16) = 32;
  sub_10005D9D0();
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  sub_10005D504();
  swift_allocObject();
  sub_10005C844();
  *(v81 + 16) = v82;
  *(v81 + 24) = v73;
  sub_10005D504();
  v83 = swift_allocObject();
  sub_10005C85C(v83);
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  inited = swift_initStackObject();
  v85 = sub_10005C6B8(inited, xmmword_10008D630);
  v86 = sub_10005E998(v85);
  v87 = v181;
  v86[6] = v88;
  v86[7] = v181;
  v86[8] = sub_10005C5D0;
  v86[9] = v15;
  v86[10] = sub_10005C5C8;
  v86[11] = v79;
  v86[12] = sub_10005C5C8;
  v86[13] = v80;
  v86[14] = sub_10005C5D0;
  v86[15] = v83;

  if (os_log_type_enabled(v199, v193))
  {
    v177 = *(v14 + 568);
    v178 = *(v14 + 560);
    v179 = *(v14 + 592);
    v89 = *(v14 + 472);
    sub_100010370(22);
    sub_10005E7D0();
    sub_10005CFD8();

    sub_100060430();

    v90 = v89;
    v91 = [v89 identifier];
    sub_10008A268();
    sub_100060478();

    v92 = sub_10005F644();
    sub_100080D2C(v92, v93, v94);
    sub_10006153C();
    *(inited + 4) = v91;

    sub_10005F50C();

    *(inited + 13) = 8;

    sub_10005E4A0();
    swift_beginAccess();
    sub_10005E3A4();
    v95();
    sub_10005C5F4();
    sub_10005AE38(v96, v97);
    sub_10005FC08();
    sub_10008AA28();
    sub_10005F638();
    v98 = sub_10005DB50();
    v99(v98);
    v100 = sub_100012498();
    sub_100080D2C(v100, v101, v102);
    sub_10005D9B8();
    v103 = &ContainerIndexer;

    sub_100060184();

    v87 = v199;
    sub_10005E620(&_mh_execute_header, v104, v193, "%s: Visibility flags: %s");
    swift_arrayDestroy();
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v177 + 8))(v179, v178);
  }

  else
  {
    v103 = &ContainerIndexer;
    sub_10006127C();

    v105 = sub_10005DEB4();
    v106(v105);
  }

  sub_100060DF4();
  v182 = *(v14 + 1448);
  v183 = *(v14 + 1192);
  v107 = *(v14 + 808);
  v184 = *(v14 + 1152);
  v108 = *(v14 + 536);
  v180 = *(v14 + 488);
  sub_10005FCC4(*(v14 + 480));
  v109 = [v87 *&v103[41].flags];
  sub_10008A268();
  v111 = v110;

  v112 = swift_task_alloc();
  v113 = sub_100060460(v112);
  v113[7] = v182;
  v113[8] = v107;
  v113[9] = v14 + 360;
  v113[10] = v183;
  v114 = sub_100060DB4(v113, v184);
  v114[15] = v115;
  v114[16] = v180;
  sub_10006123C(v114);
  sub_10005C624();
  sub_1000893A8();
  sub_10005FB2C();
  v116 = *(v14 + 1560);
  v196 = *(v14 + 1552);
  sub_10005D330();
  if (v187)
  {
    sub_10005E5F0();
    v190 = v117;
    v191 = v118;
    sub_10005E5E0();
    v188 = v119;
    v189 = v120;
    sub_10005FEC4();
    v185 = v121;
    v186 = v122;
    v123 = *(v14 + 808);
    (*(v124 + 8))();

    sub_100017954(v123, &qword_1000A6508, &qword_10008D8F8);

    v125 = sub_1000124C8();
    v126(v125);

    (*(v14 + 472))(v186, v185);
    (*(v108 + 8))(v189, v188);

    (*(v111 + 8))(v191, v190);
    sub_10005CADC();
    sub_10005E324(v127);

    sub_10001248C();
  }

  else
  {
    sub_10005FB14();
    sub_10005FAFC();
    sub_10005DE40();
    v174 = *(v14 + 1416);
    v175 = *(v14 + 1408);
    v176 = v128;
    sub_10005FAF0();
    sub_10005FAE4();
    sub_10005FAD8();
    sub_10005FACC();
    sub_10005FAC0();
    v129 = *(v14 + 1208);
    v172 = *(v14 + 1200);
    v173 = *(v14 + 1216);
    sub_10005D428();
    sub_10006043C();
    v170 = v130;
    v171 = v131;
    sub_10005D3C4();
    sub_10005D800();
    v132();

    sub_100017954(v108, &qword_1000A6508, &qword_10008D8F8);

    v133 = sub_10005F2AC();
    v134(v133);

    (*(v107 + 8))(v171, v170);
    (*(v129 + 8))(v173, v172);

    v143 = sub_100060CD4(v135, v136, v137, v138, v139, v140, v141, v142, v168, v169, v170, v171, v172, v173, v174, v175, v176);
    v144(v143);

    sub_100012420();
  }

  sub_100012640();

  v146(v145, v146, v147, v148, v149, v150, v151, v152, a9, a10, a11, a12);
}

void sub_1000433A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = v13;
  v826 = v13 + 45;
  v822 = v13 + 50;
  v828 = v13 + 53;
  v824 = v13 + 55;
  v15 = v13[218];
  v16 = v13[213];
  sub_100088F28();
  sub_10005E1F0();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = v17;
  sub_10005E1F0();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v868 = v19;
  v20 = v16;
  sub_100060454();
  swift_errorRetain();
  v21 = v12;
  swift_errorRetain();
  v871 = sub_100088FF8();
  sub_10008A5D8();
  sub_10005D9D0();
  v22 = swift_allocObject();
  *(v22 + 16) = 64;
  sub_10005D9D0();
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  sub_10005D504();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10005B608;
  *(v24 + 24) = v18;
  sub_10005D504();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10005B63C;
  *(v25 + 24) = v24;
  v26 = v25;
  sub_10005D9D0();
  v835 = swift_allocObject();
  v835[16] = 64;
  sub_10005D9D0();
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v28 = v27;
  sub_10005D504();
  swift_allocObject();
  sub_10005EA20();
  *(v29 + 16) = v30;
  *(v29 + 24) = v19;
  sub_10005D504();
  v31 = swift_allocObject();
  sub_10005EAB0(v31);
  sub_10005D504();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10005B63C;
  *(v32 + 24) = v31;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  inited = swift_initStackObject();
  v34 = sub_10005C6B8(inited, xmmword_10008D630);
  v34[2].n128_u64[0] = v35;
  v34[2].n128_u64[1] = v22;
  v34[3].n128_u64[0] = sub_10005C5C8;
  v34[3].n128_u64[1] = v23;
  v34[4].n128_u64[0] = sub_10005B644;
  v34[4].n128_u64[1] = v26;
  v34[5].n128_u64[0] = sub_10005C5C8;
  v34[5].n128_u64[1] = v835;
  v34[6].n128_u64[0] = sub_10005C5C8;
  v34[6].n128_u64[1] = v28;
  v34[7].n128_u64[0] = sub_10005C5CC;
  v34[7].n128_u64[1] = v32;

  v848 = v18;

  v36 = v22;
  v37 = v14;
  v38 = v36;

  sub_1000614DC();

  v39 = sub_10005FBE0();
  v40 = v14[213];
  if (v39)
  {
    v41 = sub_100010370(22);
    v14 = swift_slowAlloc();
    *v41 = 514;
    *(v41 + 2) = 64;

    v38 = 8;
    *(v41 + 3) = 8;

    *(v41 + 4) = v40;
    *v14 = v40;

    *(v41 + 12) = 64;

    *(v41 + 13) = 8;

    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v42;
    v14[1] = v42;

    sub_10005E014();
    _os_log_impl(v43, v44, v45, v46, v41, 0x16u);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    sub_100060F3C();
    swift_arrayDestroy();
    sub_10005D0A0();

    sub_10005D4F8();

    v47 = v37[213];
  }

  else
  {

    v47 = v871;
  }

  v48 = v37[70];

  v49 = sub_100012498();
  v50(v49);
  v51 = v37[214];
  v37[211] = 0;
  v877 = v37;
  v52 = &type metadata for Any;
  while (1)
  {
    v37[212] = v51;
    if (v51 == v37[199])
    {
      break;
    }

    if ((v37[198] & 0xC000000000000001) != 0)
    {
      v56 = sub_10008A928();
    }

    else
    {
      sub_10005D988();
      if (v55)
      {
        goto LABEL_256;
      }

      v56 = sub_1000604FC(v53, v54);
    }

    v48 = v56;
    v37[213] = v56;
    v37[214] = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      sub_10005AE98(v37[59], &selRef_iconSymbolName);
      if (!v478)
      {
        goto LABEL_264;
      }

      v479 = sub_10005F148();
      sub_10005AE98(v479, &selRef_iconBackgroundColorName);
      if (!v480)
      {
        goto LABEL_263;
      }

      v481 = [sub_10005F118() definition];
      if (v481)
      {
        v482 = v481;
        v52 = [v481 objectForKey:WFActionIconSymbolColorNameKey];

        if (v52)
        {
          sub_10008A7E8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_100060A5C();
        }

        sub_100060C40(v878, v879);
        if (v483)
        {
          sub_100060C28();
          if (swift_dynamicCast())
          {
            sub_1000613EC();
            goto LABEL_272;
          }

LABEL_271:
          sub_10005DA80();
          sub_100009158(v484, v485, v486, v487);
LABEL_272:
          sub_10005E570();
          v488 = v94 && v14 == 0xE400000000000000;
          if (v488 || (v489 = sub_10005DEB4(), (sub_10005D998(v489, v490) & 1) != 0))
          {
            v491 = v37[86];
            sub_10005BF68();
            v492 = sub_10005E2A4();
            sub_10005DC64(v492, v493, v491);
            if (!v94)
            {
              v38 = v37[90];
              v499 = v37[87];
              sub_100017954(v37[97], &qword_1000A6500, &qword_10008D8F0);

              v500 = *(v499 + 32);
              v501 = sub_100060BD0();
              v500(v501);
              v502 = sub_10005DC58();
              v500(v502);
LABEL_289:
              v513 = v37[101];
              v514 = sub_100060EF4();
              v515(v514);
              sub_100008DC0(&qword_1000A6590, &qword_10008D928);
              *v513 = v48;
              v513[1] = v51;
              sub_10005E0AC();
              v516();
              v51 = enum case for ToolIcon.symbol(_:);
              v48 = sub_1000892E8();
              sub_100017A1C();
              (*(v517 + 104))(v513, v51, v48);
              sub_10005D968();
              goto LABEL_290;
            }

            sub_100017954(v37[96], &qword_1000A6500, &qword_10008D8F0);
          }

          v494 = v37[86];
          sub_10005DEB4();
          sub_1000891A8();
          v495 = sub_10005E2A4();
          sub_10005EFA4(v495, v496, v494);
          v497 = v37[95];
          sub_10005DD3C();
          if (v94)
          {
            sub_10005E940();
            v498();
            sub_10005CF70(v497);
            if (!v94)
            {
              sub_100017954(v37[95], &qword_1000A6500, &qword_10008D8F0);
            }
          }

          else
          {
            sub_10005DD5C();
            v503();
          }

          v504 = v37[86];
          sub_10005BFBC();
          v505 = sub_10005E2A4();
          sub_10005EFA4(v505, v506, v504);
          v507 = v37[94];
          sub_10005DD3C();
          if (v94)
          {
            sub_10005E940();
            v508();
            sub_10005CF70(v507);
            if (!v94)
            {
              sub_100017954(v37[94], &qword_1000A6500, &qword_10008D8F0);
            }
          }

          else
          {
            sub_10005DD5C();
            v509();
          }

          v510 = v37[93];
          v511 = v37[89];
          v38 = v37[86];
          sub_100008DC0(&qword_1000A6588, &qword_10008D920);
          sub_100060BDC();
          v512 = sub_10005D978();
          (v37)(v512);
          (v37)(v52 + v510, v511, v38);
          v37 = v877;
          goto LABEL_289;
        }
      }

      else
      {
        sub_100060A68();
      }

      sub_100017954((v37 + 38), &qword_1000A5A20, &qword_10008C9F0);
      goto LABEL_271;
    }

    objc_opt_self();
    sub_10005FBFC();
    if (!swift_dynamicCastObjCClass())
    {
      v62 = [v48 resourceManager];
      sub_100011D84(0, &qword_1000A6538, WFParameterRelationResource_ptr);
      v63 = [v62 resourceObjectsOfClass:swift_getObjCClassFromMetadata()];

      if (v63)
      {
        sub_10005E770();
        sub_100011D84(v72, v73, v74);
        sub_10005C60C();
        sub_10005E770();
        sub_10005B4C0(v75, v76, v77);
        sub_10005E120();
        v78 = sub_10008A3F8();

        sub_100017B14(v78, WFParameterRelationResource_ptr);
        v38 = v79;
        v37[215] = v79;

        v848 = sub_10008391C();
        if (v848)
        {
          v51 = 0;
          v852 = (v38 & 0xC000000000000001);
          v836 = v38;
          v839 = v38 + 32;
          v856 = _swiftEmptyArrayStorage;
          while (1)
          {
            v80 = sub_10005F014();
            sub_10004F878(v80, v81, v38);
            if (v852)
            {
              sub_10005ED94();
              v82 = sub_10008A928();
            }

            else
            {
              v82 = *(v839 + 8 * v51);
            }

            sub_100060D28(v82);
            if (v84)
            {
              __break(1u);
LABEL_332:
              __break(1u);
LABEL_333:
              v691 = sub_10005D4CC(v83);
              sub_10008074C(v691, v692, v693, v51);
              v51 = v694;
LABEL_73:
              *(v51 + 16) = v48;
              sub_10005CA38();
              v170 = sub_10005E94C(v169);
              v171(v170);
              v37[53] = v51;
              goto LABEL_79;
            }

            v85 = v37[197];
            v86 = [v871 parameterKey];
            v87 = sub_10008A268();
            v89 = v88;

            if (*(v85 + 16))
            {
              sub_10008AB08();
              sub_10008A2B8();
              sub_10008AB28();
              sub_10005EB04();
              v51 = ~v90;
              do
              {
                sub_10005DDB4();
                if ((v92 & 1) == 0)
                {
                  goto LABEL_31;
                }

                sub_10005EF18(v91);
                v94 = v94 && v93 == v89;
              }

              while (!v94 && (sub_10008AA68() & 1) == 0);

              goto LABEL_59;
            }

LABEL_31:

            v95 = [v871 comparedValues];
            v51 = sub_10008A328();

            sub_100083934(v51);
            sub_10005FCAC();
            v96 = v51 + 32;
            v868 = _swiftEmptyArrayStorage;
LABEL_32:
            v97 = v96 + 32 * v38;
            while (v87 != v38)
            {
              sub_100060C10();
              if (v55)
              {
                __break(1u);
LABEL_263:

LABEL_264:
                sub_10006150C();
                v474 = sub_10005CF18();
LABEL_290:
                sub_100009158(v474, v475, v476, v477);
                v518 = sub_10005AE98(v37[59], &selRef_fillingProvider);
                sub_100060F18(v518, v519);
                if (v520)
                {
                  v521 = swift_allocBox();
                  sub_100060F0C(v521, v522);
                  sub_10004A4D4(_swiftEmptyArrayStorage);
                  v523 = sub_100089108();
                  v524 = sub_1000614F4(v523);
                  v37[252] = v524;
                  if (v524)
                  {
                    sub_10005DFB0();
                    sub_10005F0E8();
                    v848 = v527;
                    v852 = v526;
                    while (1)
                    {
                      sub_10005E034(v525);
                      if (v55)
                      {
                        goto LABEL_332;
                      }

                      v528 = v877[83];
                      v529 = v877[79];
                      v530 = v877[78];
                      sub_10005CD9C();
                      v531 = *(v529 + 16);
                      v532 = sub_100060FA8();
                      (v531)(v532);
                      v533 = sub_10005EAE0();
                      (v531)(v533);
                      sub_100089138();
                      sub_10005C5F4();
                      v48 = sub_10005AE38(&qword_1000A6568, v534);
                      sub_10005E5A8();
                      v535 = sub_10008A228();
                      v536 = *(v529 + 8);
                      v877[255] = v536;
                      sub_10005F564();
                      v877[256] = v537;
                      v538 = v528;
                      v37 = v877;
                      v536(v538, v530);
                      v51 = v877[84];
                      if (v535)
                      {
                        v539 = v877[59];
                        v536(v877[84], v877[78]);
                        if ([v539 visibleForUse:0])
                        {
                          v540 = v877[78];
                          sub_100060EBC();
                          sub_100089138();
                          v541 = sub_10005E428();
                          v860 = v531;
                          (v531)(v541);
                          sub_10005C5F4();
                          sub_10005AE38(&unk_1000A6578, v542);
                          sub_10008A808();
                          v51 = v540;
                          sub_10008A228();
                          sub_100060F90();
                          sub_10005E610();
                          v48 = v543;
                          *v543 = v544;
                          if (v545)
                          {
                            v531 = v877[250];
                            v868 = v877[85];
                            v38 = v877[82];
                            v562 = v877[78];
                            v536(v877[81], v562);
                            sub_10005E7EC();
                            v860();
                            v563 = sub_10005D9DC();
                            (v860)(v563);
                            v51 = v531;
                            sub_10008A818();
                            v564 = sub_10005E51C();
                            (v536)(v564);
                            v536(v868, v562);
                          }

                          else
                          {
                            v546 = v877[85];
                            v38 = v877[81];
                            v547 = v877[79];
                            v548 = v877[78];
                            v536(v877[82], v548);
                            v536(v546, v548);
                            v549 = *(v547 + 32);
                            v531 = (v547 + 32);
                            v549(v48 + v51, v38, v548);
                          }

                          sub_10005E000();
                          sub_10005BFBC();
                          sub_10005FCEC();
                        }
                      }

                      else
                      {
                        sub_10005FE34();
                        sub_100089128();
                        sub_10005CFC4();
                        v550 = sub_10008A228();
                        v551 = sub_10005D9DC();
                        (v536)(v551);
                        v51 = v877[84];
                        if (v550)
                        {
                          v48 = v877[59];
                          v536(v877[84], v877[78]);
                          if (([v48 visibleForUse:1] & 1) == 0)
                          {
                            goto LABEL_309;
                          }

                          v51 = v877[250];
                          sub_10005FDEC();
                          sub_100089128();
                          goto LABEL_305;
                        }

                        sub_10005FE34();
                        sub_100089118();
                        sub_10005CFC4();
                        v552 = sub_10008A228();
                        v553 = sub_10005D9DC();
                        (v536)(v553);
                        if ((v552 & 1) == 0)
                        {
                          sub_10005FE34();
                          sub_100089148();
                          sub_10005CFC4();
                          v668 = sub_10008A228();
                          v669 = sub_10005D9DC();
                          (v536)(v669);
                          if (v668)
                          {
                            v670 = [v877[59] visibleForUse:0];
                            if (v670)
                            {
                              v670 = [v877[59] isApprovedForPublicShortcutsDrawer];
                            }

                            sub_100060C4C(v670);
                            v671 = swift_task_alloc();
                            v672 = sub_100060A38(v671);
                            *v672 = v673;
                            sub_10005C640(v672);
                            sub_10005CEF4();
                            sub_100012640();

                            WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v674, v675, v676, v677, v678, v679, v680, v681, a9, a10, a11, a12);
                          }

                          else
                          {
                            sub_10008AA38();
                            sub_10005E3E0("Unknown visibility flag: ");
                            sub_10005C5F4();
                            v684 = sub_10005AE38(v682, v683);
                            v882._countAndFlagsBits = sub_10005EB60(v684);
                            sub_100061554(v882);

                            sub_10008A2A8();
                            sub_10005C9F8();
                            sub_10005D3F8("Fatal error", v685, v686, v687, v688, "BackgroundShortcutRunner/ToolKitIndexer.swift", v689, v690, v704, v706);
                            sub_100012640();
                          }

                          return;
                        }

                        sub_100060E8C();
                        sub_10005FDEC();
                        (v536)();
                        v554 = sub_1000125C0();
                        (v531)(v554);
                        sub_100089138();
                        sub_10005C5F4();
                        sub_10005AE38(&unk_1000A6578, v555);
                        v51 = sub_10008A7F8();
                        v556 = sub_10005D9DC();
                        (v536)(v556);
                        v557 = sub_10005EB28();
                        (v536)(v557);
                        if (v51 & 1) != 0 && ([v877[59] isApprovedForPublicShortcutsDrawer])
                        {
                          v51 = v877[250];
                          sub_10005FDEC();
                          sub_100089118();
LABEL_305:
                          v558 = sub_1000124C8();
                          sub_100049B80(v558, v559);
                          v560 = sub_10005D9DC();
                          (v536)(v560);
                          v561 = sub_10005EB28();
                          (v536)(v561);
                        }
                      }

LABEL_309:
                      sub_10005D250();
                      v565();
                      if (v531 == v51)
                      {
                        sub_100061494();

                        v575 = v848;
                        goto LABEL_314;
                      }

                      sub_100060E2C();
                    }
                  }

                  v852 = v37[242];
                  v575 = &WFLogCategoryToolKitIndexing;
LABEL_314:
                  v576 = *v575;
                  v577 = v37[59];

                  sub_1000608C0();
                  sub_10005E1F0();
                  v578 = swift_allocObject();
                  *(v578 + 16) = v577;
                  v579 = v578;
                  sub_10005D504();
                  v580 = swift_allocObject();
                  v870 = sub_10005C9B4(v580);
                  v581 = v577;
                  sub_10005D9B8();
                  swift_retain_n();
                  v582 = v576;
                  v876 = sub_100088FF8();
                  sub_10008A5C8();
                  sub_10005D9D0();
                  v583 = swift_allocObject();
                  *(v583 + 16) = 32;
                  v584 = v583;
                  sub_10005D9D0();
                  v832 = swift_allocObject();
                  sub_100060DD4(v832);
                  sub_10005D504();
                  v585 = swift_allocObject();
                  *(v585 + 16) = sub_10005C5E0;
                  *(v585 + 24) = v579;
                  sub_10005D504();
                  v586 = swift_allocObject();
                  sub_10005CD38(v586);
                  sub_10005D9D0();
                  v587 = swift_allocObject();
                  *(v587 + 16) = 32;
                  sub_10005D9D0();
                  v588 = swift_allocObject();
                  *(v588 + 16) = v577;
                  sub_10005D504();
                  swift_allocObject();
                  sub_10005C844();
                  *(v589 + 16) = v590;
                  *(v589 + 24) = v870;
                  sub_10005D504();
                  v591 = swift_allocObject();
                  sub_10005C85C(v591);
                  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
                  v592 = swift_initStackObject();
                  v593 = sub_10005C6B8(v592, xmmword_10008D630);
                  v593[2].n128_u64[0] = v594;
                  v593[2].n128_u64[1] = v584;
                  v595 = v584;
                  v593[3].n128_u64[0] = sub_10005C5C8;
                  v593[3].n128_u64[1] = v832;
                  v593[4].n128_u64[0] = sub_10005C5D0;
                  v593[4].n128_u64[1] = v586;
                  v593[5].n128_u64[0] = sub_10005C5C8;
                  v593[5].n128_u64[1] = v587;
                  v593[6].n128_u64[0] = sub_10005C5C8;
                  v593[6].n128_u64[1] = v588;
                  v593[7].n128_u64[0] = sub_10005C5D0;
                  v593[7].n128_u64[1] = v591;

                  if (sub_10005FBE0())
                  {
                    v820 = v37[83];
                    v596 = v37[59];
                    sub_100010370(22);
                    sub_10005E7D0();
                    sub_10005CFD8();

                    sub_100060430();

                    v597 = v596;
                    v598 = [v596 identifier];
                    sub_10008A268();
                    sub_100060478();

                    v599 = sub_10005F644();
                    v602 = sub_100080D2C(v599, v600, v601);

                    *(v592 + 4) = v602;

                    sub_10005F50C();

                    *(v592 + 13) = 8;

                    sub_10005E4A0();
                    swift_beginAccess();
                    sub_100060214();
                    v586 = v820;
                    v603 = sub_100012498();
                    v604(v603);
                    sub_10005C5F4();
                    sub_10005AE38(v605, v606);
                    sub_10008AA28();
                    sub_10005F638();
                    v607 = sub_10005DB50();
                    v608(v607);
                    v609 = sub_100012498();
                    sub_100080D2C(v609, v610, v611);
                    sub_10005D9B8();

                    sub_100060184();

                    sub_1000604CC(v612, v613, v614, v615, v616, v617, v618, v619, v704, v706, v708, v710, v713, v716, v719, v722, v725, v728, v730, v732, v734, v736, v738, v740, v742, v744, v746, v748, v750, v752, v754, v756, v758, v760, v762, v764, v766, v768, v770, v772, v774, v776, v778, v780, v782, v784, v786, v788, v790, v792, v794, v796, v798, v800, v802, v804, v806, v808, v810, v812, v814, v816, v818);
                    sub_10005E014();
                    sub_10005F754(v620, v621, v622, v623);
                    sub_10005ED04(v624, v625, v626, v627, v628, v629, v630, v631, v705, v707, v709, v711, v714, v717, v720, v723, v726, v729, v731, v733, v735, v737, v739, v741, v743, v745, v747, v749, v751, v753, v755, v757, v759, v761, v763, v765, v767, v769, v771, v773, v775, v777, v779, v781, v783, v785, v787, v789, v791, v793, v795, v797, v799, v801, v803, v805, v807, v809, v811, v813, v815, v817, v819);
                    sub_10005D4F8();

                    sub_10005D4F8();

                    v632 = sub_10005E600();
                  }

                  else
                  {
                    v595 = v37[249];
                    v592 = v37[59];

                    v632 = sub_1000124C8();
                  }

                  v633(v632);
                  sub_1000603AC();
                  v833 = v634;
                  v635 = v37[152];
                  v838 = v37[149];
                  v843 = v37[144];
                  sub_100060D9C();
                  v851 = v636;
                  v637 = *(v37 + 2100);
                  v638 = v37[67];
                  sub_10005E5C8();
                  v639 = [v586 identifier];
                  v847 = sub_10008A268();

                  v640 = swift_task_alloc();
                  *(v640 + 16) = v586;
                  *(v640 + 24) = v635;
                  *(v640 + 32) = v592;
                  *(v640 + 40) = v638;
                  *(v640 + 48) = v637 & 1;
                  *(v640 + 56) = v833;
                  *(v640 + 64) = v595;
                  *(v640 + 72) = v826;
                  *(v640 + 80) = v838;
                  v641 = sub_10005DE50(v640, v843);
                  v641[17] = v851;
                  v641[18] = v824;
                  v641[19] = v822;
                  v641[20] = v876;
                  sub_100089378();
                  sub_10005C624();
                  sub_1000893A8();
                  sub_100060D5C();
                  v862 = v37[195];
                  v642 = v37[194];
                  sub_10005F034();
                  if (v852)
                  {
                    v643 = v37[177];
                    sub_10005F2F4();
                    v644 = v37[146];
                    v834 = v37[145];
                    v645 = v877[144];
                    v646 = v877[143];
                    v647 = v877[142];
                    v648 = v877[101];
                    (*(v649 + 8))();

                    sub_100017954(v648, &qword_1000A6508, &qword_10008D8F8);
                    sub_10006141C();
                    sub_100061404();
                    (*(v646 + 8))(v645, v647);

                    (*(v644 + 8))(v838, v834);
                    (*(v595 + 8))(v847, v843);

                    (*(v643 + 8))(v852, v851);
LABEL_319:
                    sub_10005C6D0();
                    sub_10005F258();

                    sub_10001248C();
                  }

                  else
                  {
                    sub_10005D15C();
                    v650 = v37[177];
                    sub_10005CE40();
                    v651 = v37;
                    v652 = v37[151];
                    v724 = v651[150];
                    v727 = v653;
                    sub_10005D428();
                    sub_10006043C();
                    v718 = v654;
                    v721 = v655;
                    v656 = v651[143];
                    v712 = v651[142];
                    v715 = v651[144];
                    sub_10005D9E8();
                    v657 = v642;
                    v658 = v651[101];
                    sub_10005D06C();
                    (*(v659 + 8))();

                    sub_100017954(v658, &qword_1000A6508, &qword_10008D8F8);

                    (*(v656 + 8))(v715, v712);

                    (*(v592 + 8))(v721, v718);
                    (*(v652 + 8))(v727, v724);

                    (*(v650 + 8))(v730, v728);

                    sub_100012420();
                  }

                  sub_100012640();

                  v661(v660, v661, v662, v663, v664, v665, v666, v667, a9, a10, a11, a12);
                  return;
                }

                sub_1000603DC();
                v566 = v37[195];
                v567 = v37[194];
                v825 = v37[190];
                v568 = v37[189];
                v823 = v37[188];
                v569 = v37[177];
                v861 = v37[176];
                v867 = v37[181];
                v570 = v37[151];
                v850 = v37[150];
                v855 = v37[152];
                v571 = v37[146];
                v842 = v37[145];
                v846 = v37[149];
                v829 = v37[144];
                v572 = v37[143];
                v827 = v37[142];
                v573 = v877[101];

                sub_100008FE0();
                sub_10005ECC0();
                swift_allocError();
                *v574 = xmmword_10008D640;
                swift_willThrow();

                (*(v568 + 8))(v825, v823);
                sub_100017954(v573, &qword_1000A6508, &qword_10008D8F8);

                (*(v572 + 8))(v829, v827);

                (*(v571 + 8))(v846, v842);
                (*(v570 + 8))(v855, v850);

                (*(v569 + 8))(v867, v861);
                goto LABEL_319;
              }

              v98 = v37[166];
              sub_10000A650(v97, (v37 + 34));
              sub_1000610EC();
              if (v98)
              {

                sub_10005B1BC((v37 + 34));
                sub_100012640();

                return;
              }

              v99 = v37[167];
              v100 = v37[166];
              sub_10005B1BC((v37 + 34));
              sub_10005DC64(v100, 1, v99);
              if (!v94)
              {
                v101 = *(v37[168] + 32);
                v101(v37[170], v37[166], v37[167]);
                v102 = sub_10005F644();
                v830 = v101;
                (v101)(v102);
                v103 = v868;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v111 = sub_10005CBF0();
                  sub_10008080C(v111, v112, v113, v868);
                  v103 = v114;
                }

                v106 = *(v103 + 16);
                v105 = *(v103 + 24);
                if (v106 >= v105 >> 1)
                {
                  v115 = sub_10005D920(v105);
                  sub_10008080C(v115, v106 + 1, 1, v103);
                  v103 = v116;
                }

                ++v38;
                *(v103 + 16) = v106 + 1;
                sub_10005E0A0();
                v868 = v103;
                v109 = v103 + v107 + *(v108 + 72) * v106;
                v37 = v110;
                v830(v109);
                v96 = v51 + 32;
                goto LABEL_32;
              }

              sub_100017954(v37[166], &qword_1000A6520, &unk_10008D910);
              sub_10005FF9C();
            }

            v117 = sub_10001BC6C(v868);
            v118 = [v871 relation];
            sub_10005DEB4();
            v119 = sub_10008393C();

            if (v119)
            {
              goto LABEL_45;
            }

            v120 = v118;
            sub_10005DEB4();
            v121 = sub_10008393C();

            if (v121)
            {
              sub_10005EC7C();

              goto LABEL_53;
            }

            v122 = v120;
            sub_10005DEB4();
            v123 = sub_10008393C();

            if (v123)
            {
LABEL_45:
              sub_10005EC7C();
              *v97 = v117;
            }

            else
            {
              v124 = v122;
              sub_10005DEB4();
              v125 = sub_10008393C();

              if ((v125 & 1) == 0)
              {
                v126 = v124;
                sub_10005DEB4();
                v127 = sub_10008393C();

                if (v127)
                {
                  goto LABEL_52;
                }

                v139 = v126;
                sub_10005DEB4();
                v140 = sub_10008393C();

                if ((v140 & 1) == 0)
                {
                  v141 = v139;
                  sub_10005DEB4();
                  v142 = sub_10008393C();

                  if ((v142 & 1) == 0)
                  {
                    v143 = sub_10008393C();

                    v144 = v37[174];
                    v145 = v37[172];
                    if (v143)
                    {
                      *v144 = v117;
                    }

                    else
                    {
                    }

                    v129 = *(v145 + 104);
                    v128 = v144;
                    goto LABEL_54;
                  }

LABEL_52:
                  sub_10005EC7C();
                  sub_10005FEA4();
                  goto LABEL_53;
                }
              }

              sub_10005EC7C();
              *v97 = v117;
              *(v97 + 8) = 0;
            }

LABEL_53:
            v128 = sub_10005F07C();
            v37 = v877;
LABEL_54:
            v129(v128);
            v51 = v37[174];
            v868 = v37[165];
            v130 = [v871 parameterKey];
            sub_10008A268();
            sub_1000601B4();

            v131 = sub_10005F0DC();
            v132(v131);
            sub_10005E51C();
            sub_10008A0C8();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = sub_10005CBF0();
              sub_1000807CC(v146, v147, v148, v149);
              v856 = v150;
            }

            sub_10005EC28();
            v37 = v877;
            if (v55)
            {
              v151 = sub_10005CA84(v133);
              sub_1000807CC(v151, v152, v153, v856);
              v856 = v154;
            }

            v856[2] = v51;
            sub_10005CA38();
            v135 = sub_10005E94C(v134);
            v136(v135);

            v137 = sub_10005DC4C();
            v138(v137);
            v38 = v836;
LABEL_59:
            sub_10005FDFC();
            if (v94)
            {
              goto LABEL_75;
            }
          }
        }

        v856 = _swiftEmptyArrayStorage;
LABEL_75:
        v37[216] = v856;
        v172 = swift_task_alloc();
        v37[217] = v172;
        *v172 = v37;
        sub_10005D04C(v172);
        sub_10005E4A0();
        sub_100012640();

LABEL_347:
        WFParameter.toolkitTypeInstance(for:parameterKey:)(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
        return;
      }

LABEL_346:
      __break(1u);
      goto LABEL_347;
    }

    ++v51;
  }

  v57 = v37[195];

  sub_10005CD20();
  sub_10005AE38(v58, v59);
  sub_100060E80();
  sub_10008A828();
  v37[53] = _swiftEmptyArrayStorage;
  if (v57)
  {
    v60 = v37[195];
    v37[219] = sub_10008A3B8();
    v61 = v60;
    v37[220] = sub_10008A3A8();
    sub_10005D9B8();
    sub_10008A388();
    sub_10005CC20();
    goto LABEL_250;
  }

  v156 = v37[143];
  v157 = [v37[59] requiresUnlock];
  v158 = *(v156 + 104);
  v159 = v37[144];
  v160 = v37[142];
  if (v157)
  {
    v51 = v37[140];
    v48 = v37[130];
    v158(v159, enum case for ToolAuthenticationPolicy.requiresAuthenticationOnOriginAndRemote(_:), v160);
    sub_100089B98();
    sub_10001238C();
    v161 = sub_10005E694();
    v162(v161);
    v163 = sub_10005E81C();
    v164(v163);
    v165 = sub_10005D3D8();
    sub_10008074C(v165, v166, v167, v168);
    sub_10005F0C8();
    if (v55)
    {
      goto LABEL_333;
    }

    goto LABEL_73;
  }

  v158(v159, enum case for ToolAuthenticationPolicy.none(_:), v160);
  v51 = _swiftEmptyArrayStorage;
LABEL_79:
  v37[54] = &OBJC_PROTOCOL___WFLinkActionProtocol;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    (*(v37[151] + 104))(v37[152], enum case for ToolTypeDefinition.appIntent(_:), v37[150]);
  }

  else
  {
    v173 = v37[151];
    objc_opt_self();
    sub_10005FBFC();
    if (swift_dynamicCastObjCClass())
    {
      v174 = &enum case for ToolTypeDefinition.siriIntent(_:);
    }

    else
    {
      v174 = &enum case for ToolTypeDefinition.action(_:);
    }

    (*(v173 + 104))(v37[152], *v174, v37[150]);
  }

  v37[233] = v51;
  v175 = v37[59];
  *v826 = 0;
  v826[1] = 0;
  if ([v175 isDiscontinued])
  {
    sub_10005D034();
    sub_100089268();
    v176 = sub_1000124C8();
    sub_10004987C(v176, v177);
    v178 = sub_10005D2F8();
    (v51)(v178);
    v179 = sub_10005E088();
    (v51)(v179);
    v180 = objc_opt_self();
    v181 = sub_1000614AC(v180);
    v37[234] = v181;
    if (v181)
    {
      sub_10005E094();
      sub_10008A3B8();
      v182 = v51;
      v37[235] = sub_10008A3A8();
      sub_10005D9B8();
      sub_10008A388();
      sub_10005C984();
      goto LABEL_250;
    }
  }

  v37[237] = 0;
  if ([v37[59] isResidentCompatible])
  {
    sub_10005D034();
    sub_1000892C8();
    v183 = sub_1000124C8();
    sub_10004987C(v183, v184);
    v185 = sub_10005D2F8();
    (v51)(v185);
    v186 = sub_10005E088();
    (v51)(v186);
  }

  v187 = v37[211];
  sub_10005E094();
  sub_100088C18();
  v188 = [v51 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v14 = WFResource_ptr;
  sub_10005E3A4();
  sub_100011D84(v189, v190, v191);
  sub_10005C60C();
  sub_10005E3A4();
  sub_10005B4C0(v192, v193, v194);
  sub_10005E120();
  v48 = sub_10008A3F8();

  sub_10005C91C();
  sub_100017D30(v48, v195);
  sub_10005D9B8();

  if (sub_10008391C())
  {
    sub_100060AFC();
    if (v196 != v84)
    {
      __break(1u);
LABEL_335:
      __break(1u);
      goto LABEL_336;
    }

    sub_10005E138();
    sub_10005E3D4();
    v199 = *(v198 + 1864);
    v872 = v188;
    do
    {
      v200 = v197;
      if (v868)
      {
        sub_10005E150();
        sub_10008A928();
      }

      else
      {
        sub_10005FE1C();
      }

      sub_10005F33C();
      sub_10006054C(v201);
      v202 = sub_10005FC74();
      v203(v202);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v207 = sub_10005C9CC();
        sub_10008074C(v207, v208, v209, v210);
        v199 = v211;
      }

      sub_10005FE54();
      if (v55)
      {
        v212 = sub_10005CD68(v204);
        sub_10008074C(v212, v213, v214, v199);
        v199 = v215;
      }

      sub_1000601FC();
      sub_100060208();

      *(v199 + 16) = WFResource_ptr;
      sub_10005CEAC();
      sub_10005CF60(v199 + v205);
      sub_100012584();
      v206();
      v197 = v200;
      v188 = v872;
    }

    while (v200);

    *v828 = v199;
    v37 = v877;
    v187 = v852;
  }

  else
  {

    v199 = v37[233];
  }

  sub_10005E094();
  sub_100088BD8();
  v216 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v14 = sub_1000604E4(v216);

  sub_10005C904();
  sub_100017D30(v14, v217);
  sub_10005E7B8();

  v218 = sub_10008391C();
  v873 = v199;
  if (v218)
  {
    if (v218 >= 1)
    {
      v219 = v877[138];
      v857 = v188 & 0xC000000000000001;
      v853 = enum case for RuntimeRequirement.featureFlag(_:);
      v863 = v218;
      for (i = v188; ; v188 = i)
      {
        if (v857)
        {
          sub_10005E150();
          sub_10008A928();
        }

        else
        {
          sub_10005FE1C();
        }

        sub_10005F33C();
        v221 = *(v220 + 1104);
        v222 = *(v220 + 1040);
        v223 = sub_100088BB8();
        v225 = v224;
        sub_100088BC8();
        sub_100060298();
        v226 = sub_100088BA8();
        *v221 = v223;
        *(v219 + 8) = v225;
        *(v219 + 16) = v187;
        *(v219 + 24) = v199;
        *(v219 + 32) = v226 & 1;
        sub_10005E500();
        v227(v221, v853, v222);
        v228 = v873;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = sub_10005CBF0();
          sub_10008074C(v232, v233, v234, v873);
          v228 = v235;
        }

        v199 = v863;
        sub_10005FE44();
        if (v55)
        {
          v236 = sub_10005CD68(v229);
          sub_10008074C(v236, v237, v238, v228);
          v873 = v239;
        }

        else
        {
          v873 = v228;
        }

        sub_1000601FC();
        v187 = *(v230 + 1104);

        *(v873 + 16) = v221;
        sub_10005CEAC();
        sub_10005EC64();
        v231();
      }
    }

    goto LABEL_335;
  }

  v188 = v37[59];
  v14 = WFWritingToolsAvailabilityResource_ptr;
  v240 = sub_10005F65C();
  sub_100011D84(v240, v241, v242);
  v243 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  sub_1000604E4(v243);

  v244 = sub_10005DEB4();
  sub_100017B14(v244, v245);
  sub_10005E434();

  v246 = sub_10008391C();
  if (v246)
  {
    v844 = v187;
    if (v246 < 1)
    {
LABEL_336:
      __break(1u);
      goto LABEL_337;
    }

    sub_10005CF90();
    v864 = v247;
    v858 = enum case for RuntimeDeviceState.writingToolsAvailable(_:);
    LODWORD(v852) = enum case for RuntimeRequirement.deviceState(_:);
    sub_10005E3D4();
    v848 = v249;
    v250 = v199;
    v868 = v188;
    do
    {
      v251 = v248;
      if (v864)
      {
        v38 = v250;
        sub_10005DC1C();
        sub_10008A928();
      }

      else
      {
        sub_10005EEF0();
      }

      sub_100060484();
      v252 = v37[137];
      sub_10005F73C();
      sub_10001238C();
      (*(v253 + 104))(v252, v858);
      (*v48)(v252, v852, v188);
      if ((sub_10005F680() & 1) == 0)
      {
        v257 = sub_10005C874();
        sub_10008074C(v257, v258, v259, v260);
      }

      sub_10005CA70();
      if (v55)
      {
        v261 = sub_10005C9E4(v254);
        sub_10008074C(v261, v262, v263, v38);
        v38 = v264;
      }

      sub_1000606D4();
      *(v38 + 16) = v252;
      v250 = v38;
      v255 = sub_10005C660();
      v256(v255);
      v248 = v251;
      v188 = v868;
    }

    while (v251 != v199);

    *v828 = v38;
    v37 = v877;
    v187 = v844;
  }

  else
  {

    v250 = v199;
  }

  sub_10005E094();
  sub_100088CD8();
  v265 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v14 = sub_1000604E4(v265);

  sub_10005C8EC();
  sub_100017D30(v14, v266);
  sub_10005E7B8();

  if (sub_10008391C())
  {
    sub_10005E398();
    if (v196 != v84)
    {
LABEL_337:
      __break(1u);
      goto LABEL_338;
    }

    sub_10005CF90();
    v868 = v267;
    sub_10005D1F0(enum case for RuntimeRequirement.deviceState(_:));
    do
    {
      if (v868)
      {
        v38 = v250;
        sub_10005DC1C();
        sub_10008A928();
      }

      else
      {
        sub_10005EEF0();
      }

      sub_100060484();
      v268 = v37[136];
      sub_10005F73C();
      sub_10001238C();
      v269 = sub_10005FA54();
      v270(v269);
      v271 = sub_10005DF38();
      v272(v271);
      if ((sub_10005F680() & 1) == 0)
      {
        v276 = sub_10005C874();
        sub_10008074C(v276, v277, v278, v279);
      }

      sub_10005CA70();
      if (v55)
      {
        v280 = sub_10005C9E4(v273);
        sub_10008074C(v280, v281, v282, v38);
        v38 = v283;
      }

      sub_10006069C();
      *(v38 + 16) = v268;
      v250 = v38;
      v274 = sub_10005C660();
      v275(v274);
      sub_100060930();
    }

    while (!v94);

    *v828 = v38;
    v37 = v877;
    v187 = v848;
  }

  else
  {
    v38 = v250;
  }

  v188 = v37[59];
  v14 = WFLLMActionAvailabilityResource_ptr;
  v284 = sub_10005F65C();
  sub_100011D84(v284, v285, v286);
  v287 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  sub_1000604E4(v287);

  v288 = sub_10005DEB4();
  sub_100017B14(v288, v289);
  sub_10005E434();

  if (sub_10008391C())
  {
    sub_10005E398();
    if (v196 != v84)
    {
LABEL_338:
      __break(1u);
      goto LABEL_339;
    }

    sub_10005CF90();
    v868 = v290;
    sub_10005D1F0(enum case for RuntimeRequirement.deviceState(_:));
    do
    {
      if (v868)
      {
        sub_10005DC1C();
        sub_10008A928();
      }

      else
      {
        sub_10005F4BC();
      }

      sub_100060484();
      v291 = v37[135];
      sub_10005F73C();
      sub_10001238C();
      v292 = sub_10005FA54();
      v293(v292);
      v294 = sub_10005DF38();
      v295(v294);
      if ((sub_10005F680() & 1) == 0)
      {
        v299 = sub_10005C874();
        sub_10008074C(v299, v300, v301, v302);
        v188 = v303;
      }

      sub_10005CA70();
      if (v55)
      {
        v304 = sub_10005C9E4(v296);
        sub_10008074C(v304, v305, v306, v38);
        v38 = v307;
      }

      sub_100060664();
      *(v38 + 16) = v291;
      v297 = sub_10005C660();
      v298(v297);
      sub_100060930();
    }

    while (!v94);

    sub_10005DC98(v828);
  }

  else
  {
  }

  sub_10005E094();
  sub_100088CC8();
  v308 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v14 = sub_1000604E4(v308);

  sub_10005C8D4();
  sub_100017D30(v14, v309);
  sub_10005E7B8();

  if (sub_10008391C())
  {
    sub_10005E398();
    if (v196 != v84)
    {
LABEL_339:
      __break(1u);
      goto LABEL_340;
    }

    sub_10005CF90();
    v868 = v310;
    sub_10005D1F0(enum case for RuntimeRequirement.deviceState(_:));
    do
    {
      if (v868)
      {
        sub_10005DC1C();
        sub_10008A928();
      }

      else
      {
        sub_10005F4BC();
      }

      sub_100060484();
      v311 = v37[134];
      sub_10005F73C();
      sub_10001238C();
      v312 = sub_10005FA54();
      v313(v312);
      v314 = sub_10005DF38();
      v315(v314);
      if ((sub_10005F680() & 1) == 0)
      {
        v319 = sub_10005C874();
        sub_10008074C(v319, v320, v321, v322);
        v188 = v323;
      }

      sub_10005CA70();
      if (v55)
      {
        v324 = sub_10005C9E4(v316);
        sub_10008074C(v324, v325, v326, v38);
        v38 = v327;
      }

      sub_1000606B8();
      *(v38 + 16) = v311;
      v317 = sub_10005C660();
      v318(v317);
      sub_100060930();
    }

    while (!v94);

    sub_10005DC98(v828);
  }

  else
  {
  }

  sub_10005E094();
  sub_100088CE8();
  v328 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v14 = sub_1000604E4(v328);

  sub_10005C8BC();
  sub_100017D30(v14, v329);
  sub_1000607AC();
  if (sub_10008391C())
  {
    sub_10005E398();
    if (v196 != v84)
    {
LABEL_340:
      __break(1u);
      goto LABEL_341;
    }

    sub_10005CF90();
    v868 = v330;
    sub_10005D1F0(enum case for RuntimeRequirement.deviceState(_:));
    do
    {
      if (v868)
      {
        sub_10005DC1C();
        sub_10008A928();
      }

      else
      {
        sub_10005F4BC();
      }

      sub_100060484();
      v331 = v37[133];
      sub_10005F73C();
      sub_10001238C();
      v332 = sub_10005FA54();
      v333(v332);
      v334 = sub_10005DF38();
      v335(v334);
      if ((sub_10005F680() & 1) == 0)
      {
        v339 = sub_10005C874();
        sub_10008074C(v339, v340, v341, v342);
        v188 = v343;
      }

      sub_10005CA70();
      if (v55)
      {
        v344 = sub_10005C9E4(v336);
        sub_10008074C(v344, v345, v346, v38);
        v38 = v347;
      }

      sub_100060680();
      *(v38 + 16) = v331;
      v337 = sub_10005C660();
      v338(v337);
      sub_100060930();
    }

    while (!v94);

    sub_10005DC98(v828);
  }

  else
  {
  }

  sub_1000609BC();
  if (v188)
  {
    sub_10008A3B8();
    v348 = v188;
    v37[240] = sub_10008A3A8();
    sub_10005D9B8();
    sub_10008A388();
    sub_10005C88C();
    goto LABEL_250;
  }

  if (sub_100083934(_swiftEmptyArrayStorage))
  {
    v349 = sub_1000567E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v349 = &_swiftEmptySetSingleton;
  }

  v880 = v349;
  v874 = v38;
  if (sub_100083934(_swiftEmptyArrayStorage))
  {
    v350 = sub_1000567E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v350 = &_swiftEmptySetSingleton;
  }

  v188 = v37[59];
  sub_1000613A4(v350);
  v351 = [v188 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
  v352 = sub_1000604E4(v351);

  sub_10005C8A4();
  sub_100017D30(v352, v353);

  if (sub_10008391C())
  {
    sub_100060490();
    if (v196 != v84)
    {
LABEL_341:
      __break(1u);
      goto LABEL_342;
    }

    sub_10005DFEC();
    v868 = v354;
    v356 = (v355 + 88);
    v865 = enum case for WFDeviceIdiomResource.Requirement.equalTo(_:);
    v859 = enum case for WFDeviceIdiomResource.Requirement.notEqualTo(_:);
    v837 = (v357 + 8);
    v852 = v14;
    do
    {
      if (v868)
      {
        sub_10005ECCC();
        v358 = sub_10008A928();
      }

      else
      {
        v358 = sub_1000612FC();
      }

      v38 = v358;
      v359 = v37;
      v360 = v37[129];
      v48 = v359[127];
      sub_100088B88();
      v361 = (*v356)(v360, v48);
      if (v361 == v865)
      {
        v48 = v359[120];
        v362 = v359[119];
        v363 = sub_10005F9F0();
        v364(v363);
        sub_100060860();
        sub_10005D2C8(v362);
        if (v94)
        {
          v188 = v359[119];

          sub_100017954(v188, &qword_1000A6518, &qword_10008D908);
        }

        else
        {
          v48 = v359[126];
          sub_10005E590();
          v369(v48);
          sub_10005E3A4();
          v370();
          v188 = &v880;
          v371 = sub_10005E44C();
          sub_100055410(v371, v372);

          v38 = v837;
          v373 = sub_10005FDCC();
          v880(v373);
          v374 = sub_10005E088();
          v14 = v852;
          v880(v374);
        }
      }

      else
      {
        v188 = v359[129];
        v365 = v359[127];
        if (v361 == v859)
        {
          v48 = v359[120];
          v366 = v359[118];
          v367 = sub_10005F384();
          v368(v367);
          sub_100049E84(*v188, v366);
          sub_10005D2C8(v366);
          if (v94)
          {
            v188 = v359[118];

            sub_100017954(v188, &qword_1000A6518, &qword_10008D908);
          }

          else
          {
            v48 = v359[125];
            v377 = v359[123];
            sub_10005E590();
            v378(v377);
            sub_10005E974();
            sub_100060CFC();
            v379();
            v380 = sub_10005E088();
            sub_100055410(v380, v381);

            v188 = *v837;
            v382 = sub_100060FB4();
            (v188)(v382);
            v383 = sub_10005E44C();
            (v188)(v383);
          }

          v37 = v359;
          v14 = v852;
          goto LABEL_209;
        }

        v375 = sub_10005E144();
        v376(v375, v365);
      }

      v37 = v359;
LABEL_209:
      ++v199;
    }

    while (v14 != v199);
  }

  sub_100061344();
  v384 = [v188 disabledOnPlatforms];
  v385 = sub_100012578();
  type metadata accessor for WFExecutionPlatform(v385);
  sub_10005E028();
  v14 = sub_10008A328();

  v386 = sub_100083934(v14);
  if (v386)
  {
    v387 = v386;
    if (v386 < 1)
    {
LABEL_342:
      __break(1u);
      goto LABEL_343;
    }

    sub_10005FD9C();
    do
    {
      v388 = sub_10005F71C();
      sub_100060878(v388);
      v188 = &v881;
      v389 = sub_10005D9DC();
      sub_100055410(v389, v390);

      v37 = v877;
      v391 = sub_10005E50C();
      v392(v391);
      v48 += 8;
      --v387;
    }

    while (v387);
  }

  v14 = v880;
  if (*(v880 + 2))
  {
  }

  else
  {
    v393 = sub_1000899F8();
  }

  sub_10005F6FC(v393);
  v38 = v878.n128_u64[0];
  sub_10004A390(v878.n128_i64[0]);
  sub_10005FC30();

  v394 = sub_100083934(v188);
  if (v394)
  {
    if (v394 < 1)
    {
LABEL_343:
      __break(1u);
LABEL_344:
      v695 = sub_10005C9CC();
      sub_1000806CC(v695, v696, v697, v698);
      v52 = v699;
      *v824 = v699;
      goto LABEL_245;
    }

    sub_10005D3AC();
    sub_10005DEFC(v395);
    v840 = enum case for RuntimeRequirement.platform(_:);
    v831 = (v396 + 8);
    v397 = v874;
    do
    {
      v398 = v37[130];
      v868 = v37[115];
      v399 = sub_10005FA98();
      v852(v399);
      v400 = sub_100089EB8();
      v401 = sub_100012448();
      sub_100009158(v401, v402, v403, v400);
      sub_10005DA80();
      sub_100009158(v404, v405, v406, v400);
      sub_10005DA80();
      sub_100009158(v407, v408, v409, v400);
      sub_10005E580();
      sub_10008A0A8();
      sub_10005E590();
      v410 = sub_10005E150();
      v411(v410);
      v412 = sub_10005E59C();
      v413(v412, v840, v398);
      v14 = v397;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v418 = sub_10005CBF0();
        sub_10008074C(v418, v419, v420, v397);
        v14 = v421;
      }

      v415 = v14[2];
      v414 = v14[3];
      v38 = v415 + 1;
      v37 = v877;
      if (v415 >= v414 >> 1)
      {
        v422 = sub_10005CA98(v414);
        sub_10008074C(v422, v423, v424, v14);
        v14 = v425;
      }

      v416 = sub_100060FC0();
      (*v831)(v416);
      v397 = v14;
      v14[2] = v38;
      sub_10005D14C();
      sub_10005F360();
      v417();
      sub_100060A88();
    }

    while (!v94);

    *v828 = v14;
  }

  else
  {
  }

  v188 = v37[59];
  v52 = sub_10008A798();
  v37[55] = v52;
  v48 = _swiftEmptyArrayStorage;
  v37[56] = _swiftEmptyArrayStorage;
  v37[57] = &OBJC_PROTOCOL___WFLinkActionProtocol;
  v426 = sub_10005FD2C();
  if (v426)
  {
    v427 = v426;
    v188 = v37[59];
    v428 = [v427 backingActionIdentifiers];
    v14 = sub_10008A328();

    sub_100017F50(v14);
    v38 = v429;

    v430 = sub_10005EC4C();
    sub_100029D74(v430, v431);
    sub_1000608D8();

    v37[56] = _swiftEmptyArrayStorage;
  }

  v37[242] = v187;
  if (!sub_100083934(_swiftEmptyArrayStorage))
  {
    v64 = sub_100083934(v52);
    if (v64)
    {
      v14 = v64;
      v821 = v52;
      if (v64 < 1)
      {
        __break(1u);
        goto LABEL_346;
      }

      v432 = v37[106];
      v434 = *(v432 + 16);
      v38 = v432 + 16;
      v433 = v434;
      sub_10005E0A0();
      v436 = v52 + v435;
      v437 = *(v38 + 56);
      v875 = (v38 - 8);
      v868 = (v38 + 80);
      v438 = enum case for SystemToolProtocol.assistantSchema(_:);
      v841 = v439;
      v854 = (v440 + 8);
      v866 = v38;
      do
      {
        v188 = v37[108];
        v441 = sub_10005E12C();
        v433(v441);
        v442 = sub_10005E694();
        if (v443(v442) == v438)
        {
          v444 = v37[109];
          v445 = v37[108];
          (*v868)(v445, v37[105]);
          v446 = sub_10005E144();
          v447(v446, v445, v444);
          sub_100089EE8();
          sub_100089ED8();
          v188 = sub_100089EC8();

          if (*(v188 + 16) && (v448 = sub_100081588(), (v449 & 1) != 0))
          {
            v845 = v37[109];
            v849 = v37[111];
            v450 = v437;
            v451 = v37[104];
            v452 = v877[102];
            (*(v841 + 16))(v451, *(v188 + 56) + *(v841 + 72) * v448, v452);

            sub_100089058();
            sub_10005C82C();
            v188 = (v877 + 56);
            sub_10001BFD8(v453, v454, &type metadata accessor for SampleInvocationDefinition);
            v455 = v451;
            v437 = v450;
            v456 = v452;
            v37 = v877;
            (*(v841 + 8))(v455, v456);
            (*v854)(v849, v845);
          }

          else
          {

            v457 = sub_10005D9DC();
            v459(v457, v458);
          }

          v38 = v866;
        }

        else
        {
          (*v875)(v37[108], v37[105]);
        }

        v436 += v437;
        v14 = (v14 - 1);
      }

      while (v14);
      v48 = v37[56];
      v52 = v821;
    }
  }

  v37[243] = v48;
  if (!sub_100083934(v48))
  {
    goto LABEL_248;
  }

  v460 = sub_10005F128();
  (*(v461 + 104))(v460, enum case for SystemToolProtocol.assistantInvocable(_:));
  v462 = swift_isUniquelyReferenced_nonNull_native();
  v37[55] = v52;
  if ((v462 & 1) == 0)
  {
    goto LABEL_344;
  }

LABEL_245:
  sub_10005EC28();
  if (v55)
  {
    v700 = sub_10005CA84(v463);
    sub_1000806CC(v700, v701, v702, v52);
    v52 = v703;
    *v824 = v703;
  }

  sub_10005F108();
  v52[2] = v188;
  sub_10005CA38();
  v465 = sub_10005E94C(v464);
  v466(v465);
  v37[55] = v52;
LABEL_248:
  v37[244] = v52;
  v51 = v37[195];
  if (!v51)
  {
    v470 = sub_10005AE98(v37[59], &selRef_iconName);
    if (v471)
    {
      sub_100060F24(v470, v471);
      v48 = enum case for ToolIcon.workflowAsset(_:);
      sub_1000892E8();
      sub_100017A1C();
      v472 = sub_100012498();
      v473(v472);
      sub_10005DD88();
      goto LABEL_290;
    }

    goto LABEL_257;
  }

  sub_10008A3B8();
  v467 = v51;
  v37[245] = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10005C814();
LABEL_250:
  sub_10005E47C();
  sub_100012640();

  _swift_task_switch(v468);
}

void sub_1000472C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v188 = v12 + 45;
  isa = v12[59].isa;
  sub_100088F28();
  v14 = isa;
  sub_100060280();
  swift_errorRetain();
  v15 = isa;
  swift_errorRetain();
  v16 = sub_100088FF8();
  v17 = sub_10008A5D8();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v12[258].isa;
  v194 = v12[84].isa;
  v199 = v12[255].isa;
  v193 = v12[78].isa;
  v20 = v12[72].isa;
  v21 = v12[71].isa;
  v22 = v12[70].isa;
  v23 = v12[59].isa;
  if (v18)
  {
    sub_10005E91C();
    v189 = v22;
    v190 = v12;
    v24 = swift_slowAlloc();
    v25 = sub_10005FEE4();
    sub_10005DC40();
    v185 = swift_slowAlloc();
    v202[0] = v185;
    *v24 = 136315394;
    v26 = [(objc_class *)v23 identifier];
    v187 = v20;
    v27 = sub_10008A268();
    v29 = v28;

    v30 = sub_100080D2C(v27, v29, v202);

    *(v24 + 4) = v30;

    *(v24 + 12) = 2112;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v31;
    *v25 = v31;
    v199(v194, v193);

    _os_log_impl(&_mh_execute_header, v16, v17, "Failed to check availability in Spotlight for action %s: %@", v24, 0x16u);
    sub_100017954(v25, &qword_1000A6460, &qword_10008D878);
    sub_10005D4F8();

    sub_10005B1BC(v185);
    sub_10005D4F8();

    v12 = v190;
    sub_10005D4F8();

    v33 = *(v21 + 1);
    v32 = v21 + 8;
    v33(v187, v189);
  }

  else
  {

    v32 = v21 + 8;
    v34 = sub_10005F294();
    v35(v34);
    v199(v194, v193);
  }

  while (1)
  {
    sub_10005D1D4();
    v36();
    if (v19 == v32)
    {
      break;
    }

    sub_100060FCC();
    sub_10005DEE8(v37);
    if (v46)
    {
      __break(1u);
LABEL_34:
      WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
      return;
    }

    v47 = v12[85].isa;
    v48 = v12[84].isa;
    v49 = v12[83].isa;
    v50 = v12[79].isa;
    v51 = v12[78].isa;
    sub_10005D27C();
    v16 = v50[2];
    (v16)(v47, v53 + v50[9] * v52, v51);
    (v16)(v48, v47, v51);
    sub_100089138();
    sub_10005C5F4();
    v55 = sub_10005AE38(&qword_1000A6568, v54);
    sub_10005F62C();
    v56 = sub_10008A228();
    v19 = v50[1];
    v12[255].isa = v19;
    v12[256].isa = ((v50 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v57 = sub_10005DC1C();
    (v19)(v57);
    v32 = v12[84].isa;
    if (v56)
    {
      v58 = sub_10005FD8C();
      (v19)(v58);
      if (([(objc_class *)v49 visibleForUse:0]& 1) != 0)
      {
        sub_10005EDBC();
        v59 = v12[78].isa;
        v200 = v12[77].isa;
        v195 = v12[75].isa;
        sub_100089138();
        v60 = sub_10005E150();
        v191 = v16;
        (v16)(v60);
        sub_10005C5F4();
        v32 = v56;
        sub_10005AE38(&unk_1000A6578, v61);
        sub_10008A808();
        sub_10005F644();
        sub_10005F910();
        v62 = sub_10008A228();
        v63 = *(v195 + 12);
        v16 = v200;
        *v200 = (v62 & 1) == 0;
        if (v62)
        {
          v64 = sub_10005DE6C();
          (v19)(v64);
          v65 = sub_10005E12C();
          (v19)(v65);
          (*(v55 + 32))(&v200[v63], v56, v59);
        }

        else
        {
          v32 = v12[250].isa;
          v196 = v12[85].isa;
          v66 = sub_10005E4E8();
          (v19)(v66);
          v16 = v191;
          (v191)(&v200[v63], v55, v56);
          v67 = sub_10005DC58();
          (v191)(v67);
          sub_10005F5BC();
          sub_10008A818();
          v68 = sub_10005F294();
          (v19)(v68);
          (v19)(v196, v56);
        }

        sub_10005DEC0();
        sub_10005BFBC();
        sub_1000608F0();
      }
    }

    else
    {
      v69 = v16;
      v16 = v12[83].isa;
      sub_100089128();
      sub_10005F0DC();
      sub_10005F910();
      v70 = sub_10008A228();
      v71 = sub_10005DC4C();
      (v19)(v71);
      v32 = v12[84].isa;
      if (v70)
      {
        v72 = sub_100060DA8();
        (v19)(v72);
        if (([v16 visibleForUse:1]& 1) != 0)
        {
          v32 = v12[250].isa;
          sub_10005FDDC();
          sub_100089128();
          goto LABEL_19;
        }
      }

      else
      {
        v16 = v12[83].isa;
        sub_100089118();
        sub_10005F0DC();
        sub_10005F910();
        v73 = sub_10008A228();
        v74 = sub_10005DC4C();
        (v19)(v74);
        if ((v73 & 1) == 0)
        {
          sub_100089148();
          sub_10005F2AC();
          v153 = sub_10008A228();
          v154 = sub_10005DEB4();
          (v19)(v154);
          if ((v153 & 1) == 0)
          {
            v202[0] = sub_10005EBFC();
            v202[1] = v159;
            sub_10005E980();
            v203._countAndFlagsBits = 0xD000000000000019;
            sub_10008A2C8(v203);
            sub_10005C5F4();
            v162 = sub_10005AE38(v160, v161);
            v204._countAndFlagsBits = sub_10005EB60(v162);
            sub_10008A2C8(v204);

            sub_10008A2A8();
            sub_10005C9F8();
            sub_10005D3F8("Fatal error", v163, v164, v165, v166, "BackgroundShortcutRunner/ToolKitIndexer.swift", v167, v168, v169, v170);
            sub_100012640();
            return;
          }

          v155 = [(objc_class *)v12[59].isa visibleForUse:0];
          if (v155)
          {
            v155 = [(objc_class *)v12[59].isa isApprovedForPublicShortcutsDrawer];
          }

          sub_100060F00(v155);
          v156 = swift_task_alloc();
          v157 = sub_100060C6C(v156);
          *v157 = v158;
          sub_10005C640(v157);
          sub_10005CF2C();
          sub_100012640();

          goto LABEL_34;
        }

        sub_10005FDDC();
        (v19)();
        v75 = sub_10005F0DC();
        (v69)(v75);
        sub_100089138();
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v76);
        v32 = sub_10008A7F8();
        v77 = sub_10005DC58();
        (v19)(v77);
        v78 = sub_10005E464();
        (v19)(v78);
        if ((v32 & 1) != 0 && ([(objc_class *)v12[59].isa isApprovedForPublicShortcutsDrawer]& 1) != 0)
        {
          v32 = v12[250].isa;
          sub_10005FDDC();
          sub_100089118();
LABEL_19:
          v79 = sub_10005DC4C();
          sub_100049B80(v79, v80);
          v81 = sub_10005DC58();
          (v19)(v81);
          v82 = sub_10005E464();
          (v19)(v82);
        }
      }
    }
  }

  sub_10006159C();

  v83 = v12[253].isa;
  sub_10005ED74();
  sub_1000608C0();
  sub_10005E1F0();
  v84 = swift_allocObject();
  *(v84 + 16) = v16;
  v85 = v84;
  sub_10005D504();
  v86 = swift_allocObject();
  v197 = sub_10005C9B4(v86);
  v87 = v16;
  sub_10005D9B8();
  swift_retain_n();
  v88 = v83;
  v201 = sub_100088FF8();
  v192 = sub_10008A5C8();
  sub_10005D9D0();
  v89 = swift_allocObject();
  *(v89 + 16) = 32;
  v90 = v89;
  sub_10005D9D0();
  v182 = swift_allocObject();
  *(v182 + 16) = 8;
  sub_10005D504();
  v91 = swift_allocObject();
  *(v91 + 16) = sub_10005C5E0;
  *(v91 + 24) = v85;
  sub_10005D504();
  v92 = swift_allocObject();
  *(v92 + 16) = sub_10005B70C;
  *(v92 + 24) = v91;
  sub_10005D9D0();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  sub_10005D9D0();
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  sub_10005D504();
  v95 = swift_allocObject();
  *(v95 + 16) = sub_10005B704;
  *(v95 + 24) = v197;
  sub_10005D504();
  v96 = swift_allocObject();
  *(v96 + 16) = sub_10005C5D8;
  *(v96 + 24) = v95;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  inited = swift_initStackObject();
  v98 = sub_10005C6B8(inited, xmmword_10008D630);
  v98[2].n128_u64[0] = v99;
  v98[2].n128_u64[1] = v90;
  v100 = v182;
  v98[3].n128_u64[0] = sub_10005C5C8;
  v98[3].n128_u64[1] = v182;
  v98[4].n128_u64[0] = sub_10005C5D0;
  v98[4].n128_u64[1] = v92;
  v98[5].n128_u64[0] = sub_10005C5C8;
  v98[5].n128_u64[1] = v93;
  v98[6].n128_u64[0] = sub_10005C5C8;
  v98[6].n128_u64[1] = v94;
  v98[7].n128_u64[0] = sub_10005C5D0;
  v98[7].n128_u64[1] = v96;

  if (os_log_type_enabled(v201, v192))
  {
    v178 = v12[71].isa;
    v179 = v12[70].isa;
    v180 = v12[74].isa;
    v101 = v12[59].isa;
    v102 = sub_100010370(22);
    v202[0] = swift_slowAlloc();
    *v102 = 514;
    *(v102 + 2) = 32;

    *(v102 + 3) = 8;

    v103 = v101;
    v104 = [(objc_class *)v101 identifier];
    sub_10008A268();

    v105 = sub_10005D9DC();
    sub_100080D2C(v105, v106, v107);
    sub_1000608D8();
    *(v102 + 4) = v104;

    *(v102 + 12) = 32;

    *(v102 + 13) = 8;

    sub_10005E4A0();
    swift_beginAccess();
    sub_10005E3A4();
    v108();
    sub_10005C5F4();
    sub_10005AE38(v109, v110);
    sub_10005FC08();
    sub_10008AA28();
    sub_10005F638();
    v111 = sub_10005DB50();
    v112(v111);
    v113 = sub_100012498();
    sub_100080D2C(v113, v114, v115);
    sub_10005D9B8();

    *(v102 + 14) = v103;

    v100 = v201;
    _os_log_impl(&_mh_execute_header, v201, v192, "%s: Visibility flags: %s", v102, 0x16u);
    swift_arrayDestroy();
    sub_10005CF50();

    sub_10005D4F8();

    (*(v178 + 1))(v180, v179);
  }

  else
  {
    v116 = v12[59].isa;

    v117 = sub_1000124C8();
    v118(v117);
  }

  sub_100060DF4();
  v183 = v12[181].isa;
  v184 = v12[149].isa;
  v119 = v12[101].isa;
  v186 = v12[144].isa;
  v120 = v12[67].isa;
  v181 = v12[61].isa;
  sub_10005FCC4(v12[60].isa);
  v122 = [v100 *(v121 + 2952)];
  sub_10008A268();

  v123 = swift_task_alloc();
  v124 = sub_100060460(v123);
  v124[7] = v183;
  v124[8] = v119;
  v124[9] = v188;
  v124[10] = v184;
  v125 = sub_100060DB4(v124, v186);
  v125[15] = v126;
  v125[16] = v181;
  sub_10006123C(v125);
  sub_10005C624();
  sub_1000893A8();
  sub_10005FB2C();
  v127 = v12[195].isa;
  v198 = v12[194].isa;
  sub_10005D330();
  sub_10005FB14();
  sub_10005FAFC();
  sub_10005DE40();
  v175 = v12[177].isa;
  v176 = v12[176].isa;
  v177 = v128;
  sub_10005FAF0();
  sub_10005FAE4();
  sub_10005FAD8();
  sub_10005FACC();
  sub_10005FAC0();
  v129 = v12[151].isa;
  v173 = v12[150].isa;
  v174 = v12[152].isa;
  sub_10005D428();
  sub_10006043C();
  v171 = v130;
  v172 = v131;
  sub_10005D3C4();
  sub_10005D800();
  v132();

  sub_100017954(v120, &qword_1000A6508, &qword_10008D8F8);

  v133 = sub_10005F2AC();
  v134(v133);

  (*(v119 + 1))(v172, v171);
  (*(v129 + 1))(v174, v173);

  v143 = sub_100060CD4(v135, v136, v137, v138, v139, v140, v141, v142, v169, v170, v171, v172, v173, v174, v175, v176, v177);
  v144(v143);

  sub_100012420();
  sub_100012640();

  v146(v145, v146, v147, v148, v149, v150, v151, v152, a9, a10, a11, a12);
}

uint64_t sub_100048924(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_1000889E8();
  __chkstk_darwin(v3 - 8);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100089318();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100088E38();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = __chkstk_darwin(v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v36 = &v35 - v11;
  __chkstk_darwin(v10);
  v44 = &v35 - v12;
  v13 = sub_100088E58();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  result = sub_100088E48();
  v18 = 0;
  v20 = result + 64;
  v19 = *(result + 64);
  v48 = result;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v46 = v14 + 16;
  v25 = (v14 + 8);
  if ((v22 & v19) != 0)
  {
    while (1)
    {
      v26 = v18;
LABEL_8:
      (*(v14 + 16))(v16, *(v48 + 56) + *(v14 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v13);
      v27 = v49;
      sub_1000895C8();
      v49 = v27;
      if (v27)
      {
        break;
      }

      v23 &= v23 - 1;
      result = (*v25)(v16, v13);
      v18 = v26;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    (*v25)(v16, v13);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v26 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v26);
      ++v18;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    v28 = v44;
    sub_100088E88();
    sub_100089328();
    sub_10005AE38(&qword_1000A64C8, &type metadata accessor for ToolDatabase.LaunchServicesSnapshotDatabaseVersionKey);
    v29 = v49;
    sub_100089668();
    if (v29)
    {
      return (*(v42 + 8))(v28, v43);
    }

    else
    {
      v30 = v43;
      v31 = *(v42 + 8);
      v31(v28, v43);
      v32 = v36;
      sub_100088E88();
      sub_100088E28();
      v31(v32, v30);
      v33 = v37;
      sub_100088E88();
      sub_100088E18();
      v31(v33, v30);
      v34 = v39;
      sub_100089308();
      sub_1000892F8();
      sub_10005AE38(&qword_1000A64D0, &type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersionKey);
      sub_100089668();
      return (*(v40 + 8))(v34, v41);
    }
  }
}

uint64_t sub_100048E28(uint64_t a1)
{
  v18 = a1;
  v2 = sub_100088D08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100088CF8();
  v7 = 0;
  v9 = result + 64;
  v8 = *(result + 64);
  v19 = result;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v16[1] = v3 + 16;
  v17 = v3;
  v14 = (v3 + 8);
  if ((v11 & v8) != 0)
  {
    while (1)
    {
      v15 = v7;
LABEL_8:
      (*(v17 + 16))(v5, *(v19 + 56) + *(v17 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v2);
      sub_1000894B8();
      if (v1)
      {
        break;
      }

      v12 &= v12 - 1;
      result = (*v14)(v5, v2);
      v7 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v14)(v5, v2);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
      }

      v12 = *(v9 + 8 * v15);
      ++v7;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100049008()
{
  v1 = sub_100089438();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089428();
  sub_100089338();
  sub_10005AE38(&qword_1000A64B8, &type metadata accessor for ToolDatabase.VersionKey);
  sub_100089668();
  if (v0)
  {
    return (*(v2 + 8))(v4, v1);
  }

  (*(v2 + 8))(v4, v1);
  v7[0] = sub_1000896B8();
  v7[1] = v6;
  sub_1000896C8();
  sub_10005AE38(&qword_1000A64C0, &type metadata accessor for ToolDatabase.OSVersion);
  sub_100089668();
}

void sub_1000491F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000602E0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v45 = v28;
  v46 = v27;
  v30 = v29;
  v32 = v31(0);
  sub_100012368();
  v34 = v33;
  sub_1000602BC();
  __chkstk_darwin(v35);
  v37 = &v45 - v36;
  v38 = sub_100008DC0(v26, v24);
  sub_10005E3B0(v38);
  sub_1000602BC();
  __chkstk_darwin(v39);
  sub_10005E9B4();
  sub_10005BF68();
  v40 = 1;
  v41 = sub_10005F090();
  if (sub_100008E78(v41, v42, v32) == 1)
  {
    goto LABEL_5;
  }

  v43 = sub_10005E51C();
  v44(v43);
  v46(v37, &a10);
  if (!v20)
  {
    (*(v34 + 8))(v37, v32);
    v40 = 0;
LABEL_5:
    sub_100009158(v30, v40, 1, v32);
    goto LABEL_6;
  }

  (*(v34 + 8))(v37, v32);
LABEL_6:
  sub_1000601E4();
}

void *sub_100049398(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_1000501EC(a1);
    return a2;
  }

  else
  {

    return sub_100050710(a1, a2);
  }
}

void sub_1000493EC(uint64_t a1, uint64_t a2)
{
  sub_1000602E0();
  v4 = v3;
  v5(0);
  v6 = sub_10005E810();
  sub_10005AE38(v6, v7);
  sub_10005ECCC();
  sub_100088DB8();
  if (v2)
  {
    *v4 = v2;
  }

  sub_1000601E4();
}

uint64_t sub_100049478@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_100089008();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A650(a1, v42);
  if (swift_dynamicCast())
  {
    v11 = v41[0];
    v12 = v41[1];
    v13 = sub_100089768();
    v14 = swift_allocBox();
    v16 = v15;
    *v15 = v11;
    v15[1] = v12;
    v17 = &enum case for TypedValue.PrimitiveValue.string(_:);
LABEL_5:
    (*(*(v13 - 8) + 104))(v16, *v17, v13);
    *a3 = v14;
    v20 = enum case for TypedValue.primitive(_:);
    v21 = sub_1000897A8();
    (*(*(v21 - 8) + 104))(a3, v20, v21);
    v22 = a3;
    v23 = 0;
    v24 = v21;
    return sub_100009158(v22, v23, 1, v24);
  }

  sub_10000A650(a1, v42);
  if (swift_dynamicCast())
  {
    v18 = v41[0];
    v13 = sub_100089768();
    v14 = swift_allocBox();
    v16 = v19;
    *v19 = v18;
    v17 = &enum case for TypedValue.PrimitiveValue.number(_:);
    goto LABEL_5;
  }

  sub_100088F28();
  sub_10000A650(a1, v42);
  v25 = a2;
  v26 = sub_100088FF8();
  v27 = sub_10008A5D8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    HIDWORD(v37) = v27;
    v29 = v28;
    v30 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v29 = 138412546;
    *(v29 + 4) = v25;
    *v30 = v25;
    *(v29 + 12) = 2080;
    v39 = v3;
    sub_10005BE98(v42, v42[3]);
    DynamicType = swift_getDynamicType();
    v31 = v25;
    sub_100008DC0(&qword_1000A6650, &qword_10008D998);
    v32 = sub_10008A278();
    v34 = v33;
    sub_10005B1BC(v42);
    v35 = sub_100080D2C(v32, v34, v41);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, BYTE4(v37), "Unhandled compared value in parameter: %@: %s", v29, 0x16u);
    sub_100017954(v30, &qword_1000A6460, &qword_10008D878);

    sub_10005B1BC(v38);
  }

  else
  {

    sub_10005B1BC(v42);
  }

  (*(v8 + 8))(v10, v7);
  v24 = sub_1000897A8();
  v22 = a3;
  v23 = 1;
  return sub_100009158(v22, v23, 1, v24);
}

uint64_t sub_10004987C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100008DC0(&qword_1000A65A0, &qword_10008D938);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1000892D8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10005AE38(&qword_1000A6550, &type metadata accessor for ToolFlag);
  sub_10008A808();
  v16 = v26;
  sub_10005AE38(&qword_1000A65A8, &type metadata accessor for ToolFlag);
  v24 = a2;
  v17 = sub_10008A228();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    sub_10008A818();
  }

  v20 = v27;
  sub_10005BFBC();
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_100049B80(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100008DC0(&qword_1000A64F8, &qword_10008D8E8);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100089158();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10005AE38(&unk_1000A6578, &type metadata accessor for ToolVisibilityFlag);
  sub_10008A808();
  v16 = v26;
  sub_10005AE38(&qword_1000A6568, &type metadata accessor for ToolVisibilityFlag);
  v24 = a2;
  v17 = sub_10008A228();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    sub_10008A818();
  }

  v20 = v27;
  sub_10005BFBC();
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_100049E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case -1:
    case 4:
      v3 = sub_100089A08();
      v4 = a2;
      v5 = 1;
      goto LABEL_10;
    case 0:
      v6 = &enum case for RuntimePlatform.phone(_:);
      goto LABEL_9;
    case 1:
      v6 = &enum case for RuntimePlatform.pad(_:);
      goto LABEL_9;
    case 2:
      v6 = &enum case for RuntimePlatform.macintosh(_:);
      goto LABEL_9;
    case 3:
      v6 = &enum case for RuntimePlatform.watch(_:);
      goto LABEL_9;
    case 5:
      v6 = &enum case for RuntimePlatform.vision(_:);
      goto LABEL_9;
    default:
      v6 = &enum case for RuntimePlatform.unknown(_:);
LABEL_9:
      v7 = *v6;
      v8 = sub_100089A08();
      (*(*(v8 - 8) + 104))(a2, v7, v8);
      v4 = a2;
      v5 = 0;
      v3 = v8;
LABEL_10:

      return sub_100009158(v4, v5, 1, v3);
  }
}

uint64_t sub_100049F9C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10008A268();
  v5 = v4;
  if (v3 == sub_10008A268() && v5 == v6)
  {
    v9 = &enum case for RuntimePlatform.phone(_:);
    goto LABEL_8;
  }

  v8 = sub_10008AA68();

  if (v8)
  {
    v9 = &enum case for RuntimePlatform.phone(_:);
    goto LABEL_9;
  }

  v14 = sub_10008A268();
  v16 = v15;
  if (v14 == sub_10008A268() && v16 == v17)
  {
    v9 = &enum case for RuntimePlatform.pad(_:);
    goto LABEL_8;
  }

  v19 = sub_10008AA68();

  if (v19)
  {
    v9 = &enum case for RuntimePlatform.pad(_:);
    goto LABEL_9;
  }

  v20 = sub_10008A268();
  v22 = v21;
  if (v20 == sub_10008A268() && v22 == v23)
  {
    v9 = &enum case for RuntimePlatform.watch(_:);
    goto LABEL_8;
  }

  v25 = sub_10008AA68();

  if (v25)
  {
    v9 = &enum case for RuntimePlatform.watch(_:);
    goto LABEL_9;
  }

  v26 = sub_10008A268();
  v28 = v27;
  if (v26 == sub_10008A268() && v28 == v29)
  {
    v9 = &enum case for RuntimePlatform.macintosh(_:);
    goto LABEL_8;
  }

  v31 = sub_10008AA68();

  if (v31)
  {
    v9 = &enum case for RuntimePlatform.macintosh(_:);
    goto LABEL_9;
  }

  v32 = sub_10008A268();
  v34 = v33;
  if (v32 == sub_10008A268() && v34 == v35)
  {
    v9 = &enum case for RuntimePlatform.vision(_:);
    goto LABEL_8;
  }

  v37 = sub_10008AA68();

  if (v37)
  {
    v9 = &enum case for RuntimePlatform.vision(_:);
    goto LABEL_9;
  }

  v38 = sub_10008A268();
  v40 = v39;
  v9 = &enum case for RuntimePlatform.audioAccessory(_:);
  if (v38 == sub_10008A268() && v40 == v41)
  {
LABEL_8:

    goto LABEL_9;
  }

  v43 = sub_10008AA68();

  if ((v43 & 1) == 0)
  {
    v9 = &enum case for RuntimePlatform.unknown(_:);
  }

LABEL_9:
  v10 = *v9;
  v11 = sub_100089A08();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t sub_10004A2F8()
{
  v0 = sub_1000899E8();
  v2 = v1;
  if (v0 == sub_1000899E8() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_10008AA68();
  }

  return v5 & 1;
}

void *sub_10004A390(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_10004F650(*(a1 + 16), 0, &qword_1000A6608, &qword_10008D970, &type metadata accessor for RuntimePlatform);
    v6 = *(sub_100089A08() - 8);
    v7 = sub_10005BBD8(&v11, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v3, a1);
    v8 = v11;

    sub_100011E9C(v8);
    if (v7 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v12 = v5;
  sub_10005804C(&v12);
  v9 = v12;
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_10004A4D4(uint64_t a1)
{
  sub_100089158();
  sub_10005AE38(&unk_1000A6578, &type metadata accessor for ToolVisibilityFlag);
  sub_100008DC0(&qword_1000A65E8, &qword_10008D958);
  sub_10005B920();
  return sub_10008A838();
}

uint64_t sub_10004A58C(void *a1)
{
  v1 = [a1 identifier];
  sub_10008A268();

  return sub_10005E694();
}

uint64_t sub_10004A5DC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100089158();
  v4 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a2, v4, v3);
}

void *sub_10004A66C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18)
{
  v195 = a8;
  LODWORD(v191) = a6;
  v189 = a5;
  v187 = a4;
  v175 = a1;
  v193 = a13;
  v190 = a12;
  v188 = a11;
  v174 = a10;
  v186 = a9;
  v21 = sub_1000899A8();
  v151 = *(v21 - 8);
  v152 = v21;
  v22 = __chkstk_darwin(v21);
  v147 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v146 - v24;
  v150 = _s15ActionParameterVMa(0);
  __chkstk_darwin(v150);
  v155 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100008DC0(&qword_1000A65C8, &qword_10008D948);
  v27 = __chkstk_darwin(v26 - 8);
  v149 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v148 = (&v146 - v29);
  v194 = sub_100089A68();
  v185 = *(v194 - 8);
  v30 = __chkstk_darwin(v194);
  v32 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v146 - v33;
  v35 = sub_1000892D8();
  v184 = *(v35 - 8);
  v36 = __chkstk_darwin(v35);
  v38 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v146 - v39;
  v173 = a2;
  v196 = a2;
  v197 = a3;
  v198 = v187;
  v199 = v189;
  v200 = v191 & 1;
  v41 = a7;
  v201 = a7;
  v202 = v195;
  v203 = v186;
  v204 = v174;
  v205 = v188;
  v206 = v190;
  v207 = v193;
  v42 = i;
  result = sub_1000896D8();
  if (v42)
  {
    return result;
  }

  v45 = v184;
  v44 = v185;
  v169 = v40;
  v170 = v38;
  v167 = v35;
  v168 = v32;
  v192 = v34;
  v193 = 0;
  v171 = v41;
  v46 = a14;
  v47 = v208[0];
  v48 = sub_10008391C();
  v165 = v48;
  v166 = a14;
  v172 = v47;
  if (v48)
  {
    v49 = 0;
    v164 = a14 & 0xC000000000000001;
    v156 = a14 & 0xFFFFFFFFFFFFFF8;
    v161 = (v45 + 16);
    v162 = WFLocalizationUsageLanguageModel;
    v160 = (v45 + 8);
    v154 = enum case for LocalizationUsage.display(_:);
    v159 = (v44 + 104);
    v158 = (v44 + 32);
    v163 = (v44 + 8);
    v157 = enum case for LocalizationUsage.languageModel(_:);
    while (1)
    {
      if (v164)
      {
        v46 = sub_10008A928();
        v50 = v173;
        v52 = v169;
        v51 = v170;
      }

      else
      {
        v50 = v173;
        v52 = v169;
        v51 = v170;
        if (v49 >= *(v156 + 16))
        {
          goto LABEL_68;
        }

        v46 = v46[v49 + 4];
      }

      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:

        __chkstk_darwin(v141);
        v144 = v190;
        v145 = v52;
        v142 = v193;
        result = sub_1000896D8();
        if (!v142)
        {
          __chkstk_darwin(result);
          v143 = v173;
          *(&v146 - 4) = v46;
          *(&v146 - 3) = v143;
          v144 = v52;
          return sub_1000896D8();
        }

        return result;
      }

      v177 = v49 + 1;
      v53 = [v50 localizedNameWithContext:v46];
      *&v188 = sub_10008A268();
      v55 = v54;

      v56 = [v50 localizedDescriptionSummaryWithContext:v46];
      if (v56)
      {
        v57 = v56;
        v187 = sub_10008A268();
        *&v190 = v58;
      }

      else
      {
        v187 = 0;
        *&v190 = 0;
      }

      v59 = [v50 localizedDescriptionAttributionMarkdownStringWithContext:v46];
      if (v59)
      {
        v60 = v59;
        v184 = sub_10008A268();
        v189 = v61;
      }

      else
      {
        v184 = 0;
        v189 = 0;
      }

      v62 = [v50 localizedDescriptionResultWithContext:v46];
      if (v62)
      {
        v63 = v62;
        v183 = sub_10008A268();
        v65 = v64;
      }

      else
      {
        v183 = 0;
        v65 = 0;
      }

      v66 = [v50 localizedDescriptionNoteWithContext:v46];
      if (v66)
      {
        v67 = v66;
        v182 = sub_10008A268();
        v185 = v68;
      }

      else
      {
        v182 = 0;
        v185 = 0;
      }

      v69 = [v50 localizedDescriptionRequiresWithContext:v46];
      if (v69)
      {
        v70 = v69;
        v180 = sub_10008A268();
        i = v71;
      }

      else
      {
        v180 = 0;
        i = 0;
      }

      v186 = v65;
      v191 = v55;
      v72 = [v50 localizedDefaultOutputNameWithContext:v46];
      v176 = v49;
      if (v72)
      {
        v73 = v72;
        v74 = v46;
        v179 = sub_10008A268();
        v181 = v75;
      }

      else
      {
        v74 = v46;
        v179 = 0;
        v181 = 0;
      }

      v76 = v52;
      v77 = v167;
      (*v161)(v52, v174, v167);
      sub_100089268();
      sub_10005AE38(&qword_1000A6550, &type metadata accessor for ToolFlag);
      v78 = sub_10008A7F8();
      v79 = *v160;
      (*v160)(v51, v77);
      v79(v76, v77);
      if ((v78 & 1) != 0 && (v80 = [v50 localizedDiscontinuedDescriptionWithContext:v74]) != 0)
      {
        v81 = v80;
        v178 = sub_10008A268();
        v195 = v82;
      }

      else
      {
        v178 = 0;
        v195 = 0;
      }

      v83 = v159;
      v84 = [v74 localizationUsage];
      v85 = sub_10008A268();
      v87 = v86;
      if (v85 == sub_10008A268() && v87 == v88)
      {

        v91 = *v83;
      }

      else
      {
        v90 = sub_10008AA68();

        v91 = *v83;
        if ((v90 & 1) == 0)
        {
          v92 = v168;
          v93 = v194;
          v91(v168, v154, v194);
          v94 = v172;
          v95 = v181;
          goto LABEL_39;
        }
      }

      v94 = v172;
      v95 = v181;
      v92 = v168;
      v93 = v194;
      v91(v168, v157, v194);
LABEL_39:
      v96 = v192;
      v97 = (*v158)(v192, v92, v93);
      v181 = &v146;
      __chkstk_darwin(v97);
      *(&v146 - 20) = v94;
      *(&v146 - 19) = v74;
      v98 = v191;
      *(&v146 - 18) = v188;
      *(&v146 - 17) = v98;
      *(&v146 - 16) = v179;
      *(&v146 - 15) = v95;
      v99 = v186;
      v101 = v189;
      v100 = v190;
      *(&v146 - 14) = v187;
      *(&v146 - 13) = v100;
      v102 = v183;
      *(&v146 - 12) = v184;
      *(&v146 - 11) = v101;
      *(&v146 - 10) = v102;
      *(&v146 - 9) = v99;
      v103 = v185;
      *(&v146 - 8) = v182;
      *(&v146 - 7) = v103;
      v104 = i;
      *(&v146 - 6) = v180;
      *(&v146 - 5) = v104;
      v105 = v195;
      *(&v146 - 4) = v178;
      *(&v146 - 3) = v105;
      v144 = v96;
      v106 = v193;
      sub_1000896D8();
      v193 = v106;
      if (v106)
      {

        return (*v163)(v192, v194);
      }

      v48 = (*v163)(v192, v194);
      v49 = v176 + 1;
      v46 = v166;
      v107 = v171;
      if (v177 == v165)
      {
        goto LABEL_43;
      }
    }
  }

  v107 = v171;
LABEL_43:
  __chkstk_darwin(v48);
  v52 = v172;
  v144 = v108;
  v145 = v172;
  v109 = v193;
  result = sub_1000896D8();
  if (!v109)
  {
    __chkstk_darwin(result);
    v110 = sub_1000896D8();
    __chkstk_darwin(v110);
    v144 = v107;
    v145 = v52;
    sub_1000896D8();
    v193 = 0;
    *&v190 = a18;
    v111 = *a17;
    v208[11] = 0;
    v208[12] = 0;
    v208[10] = v111;
    v194 = v151 + 16;
    v191 = (v151 + 8);
    v192 = (v151 + 32);

LABEL_48:
    sub_100018280(v149);
    v112 = v148;
    sub_10005BFBC();
    v113 = sub_100008DC0(&qword_1000A65D0, &qword_10008D950);
    if (sub_100008E78(v112, 1, v113) == 1)
    {
      goto LABEL_69;
    }

    v114 = *v112;
    v115 = v155;
    v116 = sub_10005B6A8(v112 + *(v113 + 48), v155);
    __chkstk_darwin(v116);
    *(&v146 - 4) = v52;
    *(&v146 - 3) = v115;
    v144 = v114;
    v117 = v193;
    sub_1000896D8();
    if (v117)
    {

      return sub_10005B2EC(v115, _s15ActionParameterVMa);
    }

    else
    {
      v118 = sub_100089868();
      if (*(v118 + 16))
      {
        v119 = 0;
        v120 = v118 + 56;
        v121 = 1 << *(v118 + 32);
        if (v121 < 64)
        {
          v122 = ~(-1 << v121);
        }

        else
        {
          v122 = -1;
        }

        v123 = v122 & *(v118 + 56);
        v124 = (v121 + 63) >> 6;
        v125 = v147;
        v126 = v153;
        v195 = v118 + 56;
        for (i = v118; v123; v120 = v195)
        {
          v127 = v119;
          v128 = v152;
LABEL_60:
          v129 = v151;
          (*(v151 + 16))(v126, *(v118 + 48) + *(v151 + 72) * (__clz(__rbit64(v123)) | (v127 << 6)), v128);
          v130 = (*(v129 + 32))(v125, v126, v128);
          __chkstk_darwin(v130);
          v131 = v155;
          *(&v146 - 4) = v172;
          *(&v146 - 3) = v131;
          v144 = v125;
          sub_1000896D8();
          v123 &= v123 - 1;
          (*v191)(v125, v128);
          v119 = v127;
          v126 = v153;
          v118 = i;
        }

        v128 = v152;
        while (1)
        {
          v127 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            __break(1u);

            return sub_10005B2EC(v124, _s15ActionParameterVMa);
          }

          if (v127 >= v124)
          {
            break;
          }

          v123 = *(v120 + 8 * v127);
          ++v119;
          if (v123)
          {
            goto LABEL_60;
          }
        }

        v133 = 0;
        v134 = *(v155 + *(v150 + 40));
        v135 = *(v134 + 16);
        for (j = (v134 + 32); ; j += 80)
        {
          v52 = v172;
          if (v135 == v133)
          {
            __chkstk_darwin(v132);
            v140 = v155;
            v144 = v52;
            v145 = v155;
            sub_1000896D8();
            v193 = 0;
            sub_10005B2EC(v140, _s15ActionParameterVMa);
            v46 = v166;
            goto LABEL_48;
          }

          if (v133 >= *(v134 + 16))
          {
            break;
          }

          v137 = memcpy(__dst, j, 0x50uLL);
          __chkstk_darwin(v137);
          v138 = v155;
          *(&v146 - 4) = v139;
          *(&v146 - 3) = v138;
          v144 = __dst;
          sub_10005B89C(__dst, v208);
          sub_1000896D8();
          ++v133;
          v132 = sub_10005B8D4(__dst);
        }

        __break(1u);
      }

      LODWORD(v145) = 0;
      v144 = 1296;
      result = sub_10008A9C8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10004B798@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v52 = a8;
  v49 = a5;
  v50 = a7;
  v44 = a6;
  v45 = a3;
  v46 = a4;
  v47 = a1;
  v39[0] = a9;
  v42 = a15;
  v43 = a14;
  v41 = a16;
  v54 = a12;
  v55 = a13;
  v51 = a11;
  v57 = sub_100089158();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v40 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100089258();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000892D8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a2 identifier];
  v39[2] = sub_10008A268();

  v39[1] = *a10;
  v48 = v23;
  v27 = *(v23 + 16);
  v28 = v51;
  v51 = v22;
  v29 = v22;
  v30 = v21;
  v27(v25, v28, v29);
  v31 = v55;
  v54 = v19;
  v55 = v18;
  v32 = v19;
  v33 = v40;
  (v32[2])(v21, v31, v18);
  v34 = v41;
  swift_beginAccess();
  (*(v56 + 16))(v33, v34, v57);

  v35 = v53;
  v36 = sub_100089448();
  if (v35)
  {

    (*(v56 + 8))(v33, v57);
    (v54[1])(v21, v55);
    return (*(v48 + 8))(v25, v51);
  }

  else
  {
    v38 = v36;

    (*(v56 + 8))(v33, v57);
    (v54[1])(v30, v55);
    result = (*(v48 + 8))(v25, v51);
    *v39[0] = v38;
  }

  return result;
}

uint64_t sub_10004BBA0(uint64_t a1, Swift::Int64 a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, Swift::String_optional a9, Swift::String_optional a10, Swift::String_optional a11, Swift::String_optional a12, Swift::String_optional a13, uint64_t a14)
{
  v36.value._object = a7;
  v37 = a8;
  v35 = a1;
  v36.value._countAndFlagsBits = a6;
  v34 = a5;
  v32 = a10;
  v33 = a9;
  v30 = a12;
  v31 = a11;
  v29 = a13;
  v17 = sub_100088A68();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a3 locale];
  sub_100088A48();

  v22 = sub_100088A08();
  v24 = v23;
  (*(v18 + 8))(v20, v17);
  v27.value._object = sub_100089A58();
  v28._countAndFlagsBits = v25;
  v27.value._countAndFlagsBits = a14;
  v38._countAndFlagsBits = v22;
  v38._object = v24;
  v39._countAndFlagsBits = a4;
  v39._object = v34;
  sub_100089468(a2, v38, v39, v36, v37, v33, v32, v31, v30, v29, v27, v28);
}

void sub_10004BD60(uint64_t a1, uint64_t a2, Swift::Int64 a3)
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    sub_100089638(a3, v7);
    --v5;
  }

  while (!v3);
}

uint64_t sub_10004BDAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14[3] = a3;
  v5 = sub_100089048();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(v9 + 16);
  v14[1] = v6 + 16;
  v11 = (v6 + 8);

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
    }

    if (i >= *(v9 + 16))
    {
      break;
    }

    (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v5);
    sub_100089478();
    if (v3)
    {
      (*v11)(v8, v5);
    }

    result = (*v11)(v8, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a3;
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100089868();
  v9 = 0;
  v11 = result + 56;
  v10 = *(result + 56);
  v22 = result;
  v12 = 1 << *(result + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v18 = v5 + 16;
  v19 = v5;
  v16 = (v5 + 8);
  if ((v13 & v10) != 0)
  {
    while (1)
    {
      v17 = v9;
LABEL_8:
      (*(v19 + 16))(v7, *(v22 + 48) + *(v19 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v4);
      sub_100089458();
      if (v3)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v16)(v7, v4);
      v9 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v16)(v7, v4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
      }

      v14 = *(v11 + 8 * v17);
      ++v9;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}