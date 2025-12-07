uint64_t sub_1520()
{
  v0 = sub_4E7C();
  sub_4C34(v0, qword_C248);
  sub_46C0(v0, qword_C248);
  return sub_4E6C();
}

unint64_t sub_15E0()
{
  result = qword_C148;
  if (!qword_C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C148);
  }

  return result;
}

uint64_t sub_1650@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_3C90(&qword_C150, &qword_54A8) - 8;
  __chkstk_darwin(v43);
  v42 = &v36 - v1;
  v41 = sub_3C90(&qword_C158, &qword_54B0);
  v47 = *(v41 - 8);
  v2 = __chkstk_darwin(v41);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v46 = &v36 - v4;
  v5 = sub_3C90(&qword_C160, &qword_54B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v39 = sub_3C90(&qword_C168, &qword_54C0);
  v37 = *(v39 - 8);
  v9 = v37;
  v10 = __chkstk_darwin(v39);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  sub_3C90(&qword_C170, &qword_54C8);
  v14 = sub_4DDC();
  v15 = sub_4AAC(&qword_C178, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v52 = v14;
  v53 = v15;
  swift_getOpaqueTypeConformance2();
  sub_4F7C();
  v38 = &protocol conformance descriptor for SettingsPane<A>;
  v16 = sub_4D44(&qword_C180, &qword_C160, &qword_54B8, &protocol conformance descriptor for SettingsPane<A>);
  v17 = v13;
  v36 = v13;
  sub_4F1C();
  (*(v6 + 8))(v8, v5);
  swift_checkMetadataState();
  v18 = v46;
  sub_4F8C();
  v19 = *(v9 + 16);
  v20 = v45;
  v21 = v17;
  v22 = v39;
  v19(v45, v21, v39);
  v23 = *(v47 + 16);
  v24 = v40;
  v25 = v18;
  v26 = v41;
  v23(v40, v25, v41);
  v52 = v5;
  v53 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v42;
  v29 = v20;
  v30 = v22;
  v19(v42, v29, v22);
  v52 = v28;
  v31 = sub_4D44(&qword_C188, &qword_C158, &qword_54B0, v38);
  v32 = &v28[*(v43 + 56)];
  v23(v32, v24, v26);
  v53 = v32;
  v50 = v30;
  v51 = v26;
  v48 = OpaqueTypeConformance2;
  v49 = v31;
  sub_4EDC();
  v33 = *(v47 + 8);
  v33(v46, v26);
  v34 = *(v37 + 8);
  v34(v36, v30);
  v33(v24, v26);
  return (v34)(v45, v30);
}

uint64_t sub_1BA8()
{
  v0 = sub_4E1C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_4DDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4C98(0, &qword_C220, AssistantController_ptr);
  sub_4DFC();
  sub_4DCC();
  sub_4E4C();
  v5 = sub_4E3C();
  sub_4E2C();

  sub_4EAC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = sub_4EBC();
  v10 = v9;
  v12 = v11;
  sub_4AAC(&qword_C178, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_4ECC();
  sub_4CE0(v8, v10, v12 & 1);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1E7C(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_3C90(&qword_C198, &qword_54D8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_506C();
  v2[20] = swift_task_alloc();
  sub_3C90(&qword_C1A0, &qword_54E0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v3 = sub_4F0C();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v4 = sub_4E9C();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_3C90(&qword_C1A8, &qword_54E8);
  v2[37] = swift_task_alloc();
  v5 = sub_4DAC();
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v6 = sub_4DBC();
  v2[41] = v6;
  v2[42] = *(v6 - 8);
  v2[43] = swift_task_alloc();
  v7 = sub_4F4C();
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  sub_501C();
  v2[47] = sub_500C();
  v9 = sub_4FFC();

  return _swift_task_switch(sub_222C, v9, v8);
}

uint64_t sub_222C()
{
  v142 = v0;

  if (qword_C240 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v1 = v0[45];
    v2 = v0[46];
    v3 = v0[44];
    v4 = v0[17];
    v5 = sub_4E7C();
    sub_46C0(v5, qword_C248);
    (*(v1 + 16))(v2, v4, v3);
    v6 = sub_4E5C();
    v7 = sub_502C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[45];
    v10 = v0[46];
    v11 = v0[44];
    if (v8)
    {
      v135 = v0[44];
      v12 = v0[42];
      v13 = v0[43];
      v14 = v0[41];
      v15 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141 = v139;
      *v15 = 136315138;
      v137 = v7;
      sub_4F3C();
      sub_4AAC(&qword_C1D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = sub_50DC();
      v18 = v17;
      (*(v12 + 8))(v13, v14);
      (*(v9 + 8))(v10, v135);
      v19 = sub_3FE8(v16, v18, &v141);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v6, v137, "[AssistantSettings] onSettingsExperienceOpenURL url: %s", v15, 0xCu);
      sub_4A60(v139);
    }

    else
    {

      (*(v9 + 8))(v10, v11);
    }

    v21 = v0[42];
    v20 = v0[43];
    v22 = v0[41];
    v23 = v0[38];
    v24 = v0[39];
    v25 = v0[37];
    sub_4F3C();
    sub_4D8C();
    (*(v21 + 8))(v20, v22);
    if ((*(v24 + 48))(v25, 1, v23) == 1)
    {
      v26 = v0[36];
      v27 = v0[33];
      v28 = v0[34];
      sub_4AF4(v0[37], &qword_C1A8, &qword_54E8);
      sub_4F2C();
      sub_4F6C();
      (*(v28 + 8))(v26, v27);
      goto LABEL_71;
    }

    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    sub_4F2C();
    v0[12] = sub_4D9C();
    v0[13] = v29;
    v0[14] = 47;
    v0[15] = 0xE100000000000000;
    sub_46F8();
    v30 = sub_507C();

    v136 = *(v30 + 16);
    if (!v136)
    {

      goto LABEL_68;
    }

    v31 = 0;
    v32 = v0[28];
    v138 = (v32 + 56);
    v140 = (v32 + 48);
    v132 = (v32 + 32);
    v133 = (v32 + 8);
    v33 = (v30 + 40);
    v34 = 13;
    v134 = v30;
LABEL_9:
    if (v31 < *(v30 + 16))
    {
      break;
    }

    __break(1u);
LABEL_81:
    swift_once();
  }

  v35 = v34;
  v37 = *(v33 - 1);
  v36 = *v33;

  v38._rawValue = &off_8570;
  v144._countAndFlagsBits = v37;
  v144._object = v36;
  v39 = sub_50CC(v38, v144);

  v34 = 0;
  switch(v39)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v34 = 1;
      goto LABEL_26;
    case 2:
      v34 = 2;
      goto LABEL_26;
    case 3:
      v34 = 3;
      goto LABEL_26;
    case 4:
      v34 = 4;
      goto LABEL_26;
    case 5:
      sub_474C();
      if (v40)
      {
        v41 = v0[27];
        v42 = v0[24];
        sub_505C();
        sub_4EFC();
        (*v138)(v42, 0, 1, v41);
        v34 = 5;
      }

      else
      {
        v34 = 5;
LABEL_26:
        v45 = v0[19];
        sub_3D20(v34, v45);
        v46 = sub_4E1C();
        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v45, 1, v46) == 1)
        {
          v48 = v0[27];
          v49 = v0[24];
          sub_4AF4(v0[19], &qword_C198, &qword_54D8);
          (*v138)(v49, 1, 1, v48);
        }

        else
        {
          v50 = v0[19];
          sub_4DEC();
          (*(v47 + 8))(v50, v46);
        }
      }

LABEL_29:
      v51 = v0[27];
      v52 = v0[25];
      sub_49F0(v0[24], v52);
      v53 = *v140;
      if ((*v140)(v52, 1, v51) == 1)
      {
        sub_4AF4(v0[25], &qword_C1A0, &qword_54E0);
        if (v35 != 5)
        {
          if (v35 != 8)
          {
            if (v35 == 13)
            {
              (*v138)(v0[23], 1, 1, v0[27]);
LABEL_42:
              sub_4AF4(v0[23], &qword_C1A0, &qword_54E0);
              goto LABEL_46;
            }

            goto LABEL_38;
          }

          v54 = v0[27];
          v55 = v0[22];
          sub_505C();
          sub_4EEC();
LABEL_37:
          (*v138)(v55, 0, 1, v54);
          goto LABEL_41;
        }

        sub_474C();
        if (v56)
        {
          v54 = v0[27];
          v55 = v0[22];
          sub_505C();
          sub_4EFC();
          goto LABEL_37;
        }

LABEL_38:
        v57 = v0[18];
        sub_3D20(v35, v57);
        v58 = sub_4E1C();
        v59 = *(v58 - 8);
        if ((*(v59 + 48))(v57, 1, v58) == 1)
        {
          v60 = v0[27];
          v61 = v0[22];
          sub_4AF4(v0[18], &qword_C198, &qword_54D8);
          (*v138)(v61, 1, 1, v60);
        }

        else
        {
          v62 = v0[18];
          sub_4DEC();
          (*(v59 + 8))(v62, v58);
        }

LABEL_41:
        v63 = v0[27];
        v64 = v0[23];
        sub_49F0(v0[22], v64);
        if (v53(v64, 1, v63) == 1)
        {
          goto LABEL_42;
        }

        (*v132)(v0[30], v0[23], v0[27]);
        v65 = sub_4E5C();
        v66 = sub_502C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v141 = v68;
          *v67 = 136315138;
          v69 = sub_3764(v34);
          v71 = sub_3FE8(v69, v70, &v141);

          *(v67 + 4) = v71;
          _os_log_impl(&dword_0, v65, v66, "[AssistantSettings] adding destination to navigationPath: %s", v67, 0xCu);
          sub_4A60(v68);
        }

        v72 = v0[30];
        v73 = v0[27];
        sub_4AAC(&qword_C1B8, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
        sub_4E8C();
        (*v133)(v72, v73);
LABEL_46:
        v74 = sub_4E5C();
        v75 = sub_502C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v141 = v77;
          *v76 = 136315138;
          v78 = 0xE800000000000000;
          v79 = 0x65676175676E614CLL;
          switch(v34)
          {
            case 1:
              v78 = 0xE400000000000000;
              v79 = 1802264916;
              break;
            case 2:
              v78 = 0xE500000000000000;
              v79 = 0x6563696F56;
              break;
            case 3:
              v78 = 0xE900000000000073;
              v79 = 0x65736E6F70736552;
              break;
            case 4:
              v79 = 0x65636E756F6E6E41;
              v78 = 0xED0000736C6C6143;
              break;
            case 5:
              v79 = 0xD000000000000015;
              v78 = 0x8000000000005560;
              break;
            case 6:
              v79 = 0x6E6967617373654DLL;
              v78 = 0xE900000000000067;
              break;
            case 7:
              v78 = 0xE700000000000000;
              v79 = 0x79726F74736948;
              break;
            case 8:
              v79 = 0x6C616E7265747845;
              v78 = 0xEF6C65646F4D4941;
              break;
            case 9:
              v79 = 0xD000000000000014;
              v78 = 0x80000000000055A0;
              break;
            case 10:
              v78 = 0xE500000000000000;
              v79 = 0x5546436D67;
              break;
            case 11:
              v79 = 0xD000000000000010;
              v78 = 0x80000000000055C0;
              break;
            case 12:
              v79 = 0x6F6C467964647562;
              v78 = 0xEE00707574655377;
              break;
            default:
              break;
          }

          v80 = sub_3FE8(v79, v78, &v141);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_0, v74, v75, "[AssistantSettings] setting previousDestination = %s", v76, 0xCu);
          sub_4A60(v77);
        }

        v30 = v134;
LABEL_62:
        ++v31;
        v33 += 2;
        if (v136 == v31)
        {

          if (v34 != 13)
          {
            v81 = v0[26];
            v82 = v0[27];
            sub_34F4(v34, v81);
            v83 = *v140;
            if ((*v140)(v81, 1, v82) != 1)
            {
              v121 = v0[39];
              v120 = v0[40];
              v122 = v0[38];
              v124 = v0[34];
              v123 = v0[35];
              v126 = v0[32];
              v125 = v0[33];
              v127 = v0[27];
              (*v132)(v126, v0[26], v127);
              sub_4F5C();
              (*v133)(v126, v127);
              (*(v124 + 8))(v123, v125);
              (*(v121 + 8))(v120, v122);
              goto LABEL_71;
            }

            sub_4AF4(v0[26], &qword_C1A0, &qword_54E0);
            if ((v34 - 9) < 4u)
            {
              sub_3C90(&qword_C1C0, &qword_54F0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_53E0;
              *(inited + 32) = 1752457584;
              *(inited + 40) = 0xE400000000000000;
              v85 = sub_3764(v34);
              *(inited + 72) = &type metadata for String;
              *(inited + 48) = v85;
              *(inited + 56) = v86;
              v87 = sub_48E0(inited);
              swift_setDeallocating();
              sub_4AF4(inited + 32, &qword_C1C8, &qword_54F8);
              v88 = objc_opt_self();
              sub_392C(v87);

              isa = sub_4F9C().super.isa;

              [v88 setPendingURLResources:isa];

LABEL_70:
              v95 = v0[39];
              v94 = v0[40];
              v96 = v0[38];
              v98 = v0[34];
              v97 = v0[35];
              v99 = v0[33];
              sub_4F6C();
              (*(v98 + 8))(v97, v99);
              (*(v95 + 8))(v94, v96);
              goto LABEL_71;
            }

            v128 = v0[27];
            v129 = v0[21];
            sub_34F4(v34, v129);
            if (v83(v129, 1, v128) != 1)
            {
              v130 = v0[29];
              v131 = v0[27];
              (*v132)(v130, v0[21], v131);
              sub_4AAC(&qword_C1B8, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
              sub_4E8C();
              (*v133)(v130, v131);
              goto LABEL_70;
            }

LABEL_69:
            sub_4AF4(v0[21], &qword_C1A0, &qword_54E0);
            goto LABEL_70;
          }

LABEL_68:
          v90 = v0[27];
          v91 = v0[26];
          v92 = v0[21];
          v93 = *(v0[28] + 56);
          v93(v91, 1, 1, v90);
          sub_4AF4(v91, &qword_C1A0, &qword_54E0);
          v93(v92, 1, 1, v90);
          goto LABEL_69;
        }

        goto LABEL_9;
      }

      v102 = v0[31];
      v103 = v0[27];
      v104 = v0[25];

      (*v132)(v102, v104, v103);
      v105 = sub_4E5C();
      v106 = sub_502C();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v141 = v108;
        *v107 = 136315138;
        v109 = sub_3764(v34);
        v111 = sub_3FE8(v109, v110, &v141);

        *(v107 + 4) = v111;
        _os_log_impl(&dword_0, v105, v106, "[AssistantSettings] openSettingsExperience destination: %s", v107, 0xCu);
        sub_4A60(v108);
      }

      v113 = v0[39];
      v112 = v0[40];
      v114 = v0[38];
      v116 = v0[34];
      v115 = v0[35];
      v117 = v0[33];
      v118 = v0[31];
      v119 = v0[27];
      sub_4F5C();
      (*v133)(v118, v119);
      (*(v116 + 8))(v115, v117);
      (*(v113 + 8))(v112, v114);
LABEL_71:

      v100 = v0[1];

      return v100();
    case 6:
      v34 = 6;
      goto LABEL_26;
    case 7:
      v34 = 7;
      goto LABEL_26;
    case 8:
      v43 = v0[27];
      v44 = v0[24];
      sub_505C();
      sub_4EEC();
      (*v138)(v44, 0, 1, v43);
      v34 = 8;
      goto LABEL_29;
    case 9:
      v34 = 9;
      goto LABEL_26;
    case 10:
      v34 = 10;
      goto LABEL_26;
    case 11:
      v34 = 11;
      goto LABEL_26;
    case 12:
      v34 = 12;
      goto LABEL_26;
    default:
      v34 = v35;
      goto LABEL_62;
  }
}

uint64_t sub_34F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = sub_3C90(&qword_C198, &qword_54D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_506C();
  __chkstk_darwin(v7 - 8);
  if (v2 == 5)
  {
    sub_474C();
    if (v8)
    {
      sub_505C();
      sub_4EFC();
      goto LABEL_6;
    }
  }

  else if (v2 == 8)
  {
    sub_505C();
    sub_4EEC();
LABEL_6:
    v9 = sub_4F0C();
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }

  sub_3D20(v2, v6);
  v11 = sub_4E1C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_4AF4(v6, &qword_C198, &qword_54D8);
    v13 = sub_4F0C();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    sub_4DEC();
    return (*(v12 + 8))(v6, v11);
  }
}

unint64_t sub_3764(char a1)
{
  result = 0x65676175676E614CLL;
  switch(a1)
  {
    case 1:
      result = 1802264916;
      break;
    case 2:
      result = 0x6563696F56;
      break;
    case 3:
      result = 0x65736E6F70736552;
      break;
    case 4:
      result = 0x65636E756F6E6E41;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6E6967617373654DLL;
      break;
    case 7:
      result = 0x79726F74736948;
      break;
    case 8:
      result = 0x6C616E7265747845;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x5546436D67;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6F6C467964647562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_392C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3C90(&qword_C210, &qword_5510);
    v2 = sub_50BC();
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
    sub_4B54(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_4BB4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_4BB4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_4BB4(v31, v32);
    result = sub_508C(v2[5]);
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
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_4BB4(v32, (v2[7] + 32 * v10));
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

uint64_t sub_3BF4()
{
  v0 = sub_4E1C();
  __chkstk_darwin(v0 - 8);
  sub_4C98(0, &qword_C190, ASTLockScreenSuggestionsDetailListController_ptr);
  sub_4DFC();
  return sub_4DCC();
}

uint64_t sub_3C90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3CD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3D20@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_504C();
  __chkstk_darwin(v4 - 8);
  if (a1 <= 5u)
  {
    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v10 = &unk_C200;
          v11 = AssistantActivationController_ptr;
        }

        else
        {
          v10 = &unk_C1F8;
          v11 = AssistantVoiceController_ptr;
        }
      }

      else
      {
        v10 = &unk_C208;
        v11 = AssistantLanguageController_ptr;
      }

      goto LABEL_16;
    }

    if (a1 == 3)
    {
      v10 = &unk_C1F0;
      v11 = AssistantAudioFeedbackController_ptr;
      goto LABEL_16;
    }

    if (a1 != 4)
    {
      sub_474C();
      if (v14)
      {
        goto LABEL_3;
      }
    }

LABEL_21:
    sub_503C();
    sub_4E0C();
    v15 = sub_4E1C();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  if (a1 - 8 >= 5)
  {
    if (a1 != 6)
    {
      v10 = &unk_C1E8;
      v11 = AssistantHistoryViewController_ptr;
LABEL_16:
      sub_4C98(0, v10, v11);
      sub_4DFC();
      v12 = sub_4E1C();
      v6 = *(*(v12 - 8) + 56);
      v7 = v12;
      v8 = a2;
      v9 = 0;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

LABEL_3:
  v5 = sub_4E1C();
  v6 = *(*(v5 - 8) + 56);
  v7 = v5;
  v8 = a2;
  v9 = 1;
LABEL_17:

  return v6(v8, v9, 1, v7);
}

unint64_t sub_3FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_40B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_4B54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4A60(v11);
  return v7;
}

unint64_t sub_40B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_41C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_50AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_41C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_420C(a1, a2);
  sub_433C(&off_8548);
  return v3;
}

char *sub_420C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4428(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_50AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_4FEC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4428(v10, 0);
        result = sub_509C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_433C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_449C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_3C90(&qword_C1E0, &qword_5508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_449C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3C90(&qword_C1E0, &qword_5508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_4590(uint64_t a1, uint64_t a2)
{
  sub_50FC();
  sub_4FDC();
  v4 = sub_510C();

  return sub_4608(a1, a2, v4);
}

unint64_t sub_4608(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_50EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_46C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_46F8()
{
  result = qword_C1B0;
  if (!qword_C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1B0);
  }

  return result;
}

void sub_474C()
{
  v0 = sub_4FBC();
  v1 = PSBundlePathForPreferenceBundle();

  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = SFRuntimeAbsoluteFilePathForPath();

  if (!v2)
  {
    sub_4FCC();
    v2 = sub_4FBC();
  }

  v3 = [objc_allocWithZone(NSBundle) initWithPath:v2];

  if (v3)
  {
    v4 = [v3 infoDictionary];
    if (v4)
    {
      v5 = v4;
      v6 = sub_4FAC();

      if (*(v6 + 16))
      {
        v7 = sub_4590(0xD000000000000033, 0x80000000000056A0);
        if (v8)
        {
          sub_4B54(*(v6 + 56) + 32 * v7, v9);

LABEL_11:
          sub_4AF4(v9, &qword_C1D8, &qword_5500);
          return;
        }
      }
    }

    memset(v9, 0, sizeof(v9));
    goto LABEL_11;
  }
}

unint64_t sub_48E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3C90(&qword_C218, &qword_5518);
    v3 = sub_50BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_4BC4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_4590(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_4BB4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_49F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3C90(&qword_C1A0, &qword_54E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A60(void *a1)
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

uint64_t sub_4AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4AF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3C90(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4BB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_4BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3C90(&qword_C1C8, &qword_54F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_4C34(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_4C98(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_4CE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4D44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_3CD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}