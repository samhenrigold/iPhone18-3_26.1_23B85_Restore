uint64_t sub_1B085896C@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v4 = sub_1B082A818(a1);
  if (!v4)
  {
    return sub_1B0825490(a2);
  }

  sub_1B08259E4([v4 downloadedMessageData], a2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B0858A40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B0858A94(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07AF800(v1, v3 - v3[0]);
  sub_1B0874BC0(v4, v3[1]);
  return sub_1B07AF320(v5);
}

uint64_t sub_1B0858B2C()
{
  v2 = *(v0 + *(type metadata accessor for MailboxPersistenceHelper.DownloadResult(0) + 20));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0858B6C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = (v1 + *(type metadata accessor for MailboxPersistenceHelper.DownloadResult(0) + 20));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0858BFC(unsigned int a1)
{
  v2 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(0);
  result = a1;
  *(v1 + *(v2 + 24)) = a1 & 1;
  return result;
}

uint64_t sub_1B0858C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B07AF768(a1, a4);
  result = type metadata accessor for MailboxPersistenceHelper.DownloadResult(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3 & 1;
  return result;
}

uint64_t sub_1B0858C94(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v895 = v2;
  v896 = v3;
  v1129 = v4;
  v1130 = v5;
  v1126 = v6;
  v7 = v1;
  v8 = v3;
  v1127 = v7;
  v897 = sub_1B074E050;
  v898 = sub_1B07B073C;
  v899 = sub_1B0874D38;
  v900 = sub_1B0394C30;
  v901 = sub_1B0394C24;
  v902 = sub_1B074DFFC;
  v903 = sub_1B039BA88;
  v904 = sub_1B039BB94;
  v905 = sub_1B0394C24;
  v906 = sub_1B039BBA0;
  v907 = sub_1B039BC08;
  v908 = 0x786F626C69616DLL;
  v909 = sub_1B06BA324;
  v910 = sub_1B074E0E4;
  v911 = sub_1B039BCF8;
  v912 = sub_1B07AB020;
  v913 = sub_1B039BC08;
  v914 = sub_1B0874D44;
  v915 = sub_1B039BCF8;
  v916 = sub_1B0398F5C;
  v917 = sub_1B0398F5C;
  v918 = sub_1B0399178;
  v919 = sub_1B0398F5C;
  v920 = sub_1B0398F5C;
  v921 = sub_1B039BA94;
  v922 = sub_1B0398F5C;
  v923 = sub_1B0398F5C;
  v924 = sub_1B0399178;
  v925 = sub_1B0398F5C;
  v926 = sub_1B0398F5C;
  v927 = sub_1B03991EC;
  v928 = sub_1B0398F5C;
  v929 = sub_1B0398F5C;
  v930 = sub_1B03993BC;
  v931 = sub_1B0398F5C;
  v932 = sub_1B0398F5C;
  v933 = sub_1B039BCEC;
  v934 = sub_1B0398F5C;
  v935 = sub_1B0398F5C;
  v936 = sub_1B03991EC;
  v937 = sub_1B0398F5C;
  v938 = sub_1B0398F5C;
  v939 = sub_1B039BCEC;
  v940 = sub_1B074E050;
  v941 = sub_1B07B073C;
  v942 = sub_1B0874D38;
  v943 = sub_1B0394C24;
  v944 = sub_1B074DFFC;
  v945 = sub_1B039BA88;
  v946 = sub_1B0394C24;
  v947 = sub_1B039BBA0;
  v948 = sub_1B039BC08;
  v949 = sub_1B06BA324;
  v950 = sub_1B074E0E4;
  v951 = sub_1B039BCF8;
  v952 = sub_1B07AB020;
  v953 = sub_1B039BC08;
  v954 = sub_1B0874D44;
  v955 = sub_1B039BCF8;
  v956 = sub_1B0874E10;
  v957 = sub_1B03B0DF8;
  v958 = sub_1B0398F5C;
  v959 = sub_1B0398F5C;
  v960 = sub_1B0399178;
  v961 = sub_1B0398F5C;
  v962 = sub_1B0398F5C;
  v963 = sub_1B039BA94;
  v964 = sub_1B0398F5C;
  v965 = sub_1B0398F5C;
  v966 = sub_1B0399178;
  v967 = sub_1B0398F5C;
  v968 = sub_1B0398F5C;
  v969 = sub_1B03991EC;
  v970 = sub_1B0398F5C;
  v971 = sub_1B0398F5C;
  v972 = sub_1B03993BC;
  v973 = sub_1B0398F5C;
  v974 = sub_1B0398F5C;
  v975 = sub_1B039BCEC;
  v976 = sub_1B0398F5C;
  v977 = sub_1B0398F5C;
  v978 = sub_1B03991EC;
  v979 = sub_1B0398F5C;
  v980 = sub_1B0398F5C;
  v981 = sub_1B039BCEC;
  v982 = sub_1B0398F5C;
  v983 = sub_1B0398F5C;
  v984 = sub_1B0399260;
  v985 = sub_1B074E050;
  v986 = sub_1B07B073C;
  v987 = sub_1B0874F3C;
  v988 = sub_1B0874FB0;
  v989 = sub_1B0875024;
  v990 = sub_1B0875098;
  v991 = sub_1B0394C24;
  v992 = sub_1B074DFFC;
  v993 = sub_1B039BA88;
  v994 = sub_1B0394C24;
  v995 = sub_1B039BBA0;
  v996 = sub_1B039BC08;
  v997 = sub_1B06BA324;
  v998 = sub_1B074E0E4;
  v999 = sub_1B039BCF8;
  v1000 = sub_1B07AB020;
  v1001 = sub_1B039BC08;
  v1002 = sub_1B0874E74;
  v1003 = sub_1B03B0DF8;
  v1004 = sub_1B0874ED8;
  v1005 = sub_1B03B0DF8;
  v1006 = sub_1B03FB320;
  v1007 = sub_1B039BCF8;
  v1008 = sub_1B03FB320;
  v1009 = sub_1B039BCF8;
  v1010 = sub_1B03FB320;
  v1011 = sub_1B039BCF8;
  v1012 = sub_1B03FB320;
  v1013 = sub_1B039BCF8;
  v1014 = sub_1B0398F5C;
  v1015 = sub_1B0398F5C;
  v1016 = sub_1B0399178;
  v1017 = sub_1B0398F5C;
  v1018 = sub_1B0398F5C;
  v1019 = sub_1B039BA94;
  v1020 = sub_1B0398F5C;
  v1021 = sub_1B0398F5C;
  v1022 = sub_1B0399178;
  v1023 = sub_1B0398F5C;
  v1024 = sub_1B0398F5C;
  v1025 = sub_1B03991EC;
  v1026 = sub_1B0398F5C;
  v1027 = sub_1B0398F5C;
  v1028 = sub_1B03993BC;
  v1029 = sub_1B0398F5C;
  v1030 = sub_1B0398F5C;
  v1031 = sub_1B039BCEC;
  v1032 = sub_1B0398F5C;
  v1033 = sub_1B0398F5C;
  v1034 = sub_1B03991EC;
  v1035 = sub_1B0398F5C;
  v1036 = sub_1B0398F5C;
  v1037 = sub_1B0399260;
  v1038 = sub_1B0398F5C;
  v1039 = sub_1B0398F5C;
  v1040 = sub_1B0399260;
  v1041 = sub_1B0398F5C;
  v1042 = sub_1B0398F5C;
  v1043 = sub_1B039BCEC;
  v1044 = sub_1B0398F5C;
  v1045 = sub_1B0398F5C;
  v1046 = sub_1B039BCEC;
  v1047 = sub_1B0398F5C;
  v1048 = sub_1B0398F5C;
  v1049 = sub_1B039BCEC;
  v1050 = sub_1B0398F5C;
  v1051 = sub_1B0398F5C;
  v1052 = sub_1B039BCEC;
  v1053 = sub_1B074E050;
  v1054 = sub_1B07B073C;
  v1055 = sub_1B0394C24;
  v1056 = sub_1B074DFFC;
  v1057 = sub_1B039BA88;
  v1058 = sub_1B0394C24;
  v1059 = sub_1B039BBA0;
  v1060 = sub_1B039BC08;
  v1061 = sub_1B06BA324;
  v1062 = sub_1B074E0E4;
  v1063 = sub_1B039BCF8;
  v1064 = sub_1B07AB020;
  v1065 = sub_1B039BC08;
  v1066 = sub_1B0398F5C;
  v1067 = sub_1B0398F5C;
  v1068 = sub_1B0399178;
  v1069 = sub_1B0398F5C;
  v1070 = sub_1B0398F5C;
  v1071 = sub_1B039BA94;
  v1072 = sub_1B0398F5C;
  v1073 = sub_1B0398F5C;
  v1074 = sub_1B0399178;
  v1075 = sub_1B0398F5C;
  v1076 = sub_1B0398F5C;
  v1077 = sub_1B03991EC;
  v1078 = sub_1B0398F5C;
  v1079 = sub_1B0398F5C;
  v1080 = sub_1B03993BC;
  v1081 = sub_1B0398F5C;
  v1082 = sub_1B0398F5C;
  v1083 = sub_1B039BCEC;
  v1084 = sub_1B0398F5C;
  v1085 = sub_1B0398F5C;
  v1086 = sub_1B03991EC;
  v1169 = 0;
  v1168 = 0;
  v1167 = 0;
  v1166 = 0;
  v1165 = 0;
  v1164 = 0;
  v1163 = 0;
  v1162 = 0;
  v1087 = 0;
  v1156 = 0;
  v1155 = 0;
  v1115 = 0;
  v1088 = *(type metadata accessor for InProgressMessageDownload.Completed(0) - 8);
  v1089 = v1088;
  v1090 = *(v1088 + 64);
  v1091 = (v1090 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1092 = (v487 - v1091);
  v1093 = sub_1B0E439A8();
  v1094 = *(v1093 - 8);
  v1095 = v1093 - 8;
  v1096 = (*(v1094 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1093);
  v1097 = v487 - v1096;
  v1098 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v487 - v1096);
  v1099 = v487 - v1098;
  v1100 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v487 - v1098);
  v1101 = v487 - v1100;
  v1102 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v487 - v1100);
  v1103 = v487 - v1102;
  v1104 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1115);
  v1105 = v487 - v1104;
  v1106 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v1137 = v487 - v1106;
  v1136 = type metadata accessor for InProgressMessageDownload.EMLX(v14);
  v1133 = *(v1136 - 8);
  v1134 = v1136 - 8;
  v1107 = v1133;
  v1108 = *(v1133 + 64);
  v1109 = (v1108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1115);
  v1110 = v487 - v1109;
  v1169 = v487 - v1109;
  v1111 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v1112 = v487 - v1111;
  v1113 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v1114 = v487 - v1113;
  v1168 = v487 - v1113;
  v1116 = _s6LoggerVMa_1(v19);
  v1117 = (*(*(v1116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1115);
  v1118 = v487 - v1117;
  v1119 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v1120 = v487 - v1119;
  v1121 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v1122 = v487 - v1121;
  v1123 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v1124 = v487 - v1123;
  v1125 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v1131 = v487 - v1125;
  v29 = type metadata accessor for InProgressMessageDownload.Result(v28);
  v1128 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v1132 = v487 - v1128;
  v1167 = v487 - v1128;
  v1166 = v8;
  v1135 = 1;
  v1165 = v1129 & 1;
  v1164 = v30;
  v1163 = v31;
  v1162 = v32;
  sub_1B074B69C(v32 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v33);
  sub_1B0798464(v1130, v1131, v1132);
  sub_1B074B764(v1131);
  sub_1B07AEE78(v1132, v1137);
  v1138 = *(v1133 + 48);
  v1139 = v1133 + 48;
  if (v1138(v1137, v1135, v1136) == 1)
  {
    v298 = v1099;
    sub_1B07AF3D4(v1137);
    v587 = &unk_1EB737000;
    sub_1B074B69C(v1127 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1120);
    (*(v1094 + 16))(v298, v1120, v1093);
    sub_1B074B764(v1120);

    sub_1B074B69C(v1127 + v587[299], v1131);
    v299 = (v1131 + *(v1116 + 20));
    v590 = *v299;
    v591 = *(v299 + 1);
    v592 = *(v299 + 1);
    v593 = *(v299 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1131);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v589 = 36;
    v614 = 7;
    v300 = swift_allocObject();
    v301 = v591;
    v302 = v592;
    v303 = v593;
    v599 = v300;
    *(v300 + 16) = v590;
    *(v300 + 20) = v301;
    *(v300 + 24) = v302;
    *(v300 + 32) = v303;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v304 = swift_allocObject();
    v305 = v591;
    v306 = v592;
    v307 = v593;
    v588 = v304;
    *(v304 + 16) = v590;
    *(v304 + 20) = v305;
    *(v304 + 24) = v306;
    *(v304 + 32) = v307;

    v613 = 32;
    v308 = swift_allocObject();
    v309 = v588;
    v603 = v308;
    *(v308 + 16) = v897;
    *(v308 + 24) = v309;
    sub_1B0394868();
    sub_1B0394868();

    v310 = swift_allocObject();
    v311 = v591;
    v312 = v592;
    v313 = v593;
    v606 = v310;
    *(v310 + 16) = v590;
    *(v310 + 20) = v311;
    *(v310 + 24) = v312;
    *(v310 + 32) = v313;

    sub_1B07AFC78(v896, v1092);
    v594 = (*(v1089 + 80) + 16) & ~*(v1089 + 80);
    v595 = swift_allocObject();
    sub_1B07B02D8(v1092, (v595 + v594));

    v314 = swift_allocObject();
    v315 = v595;
    v609 = v314;
    *(v314 + 16) = v898;
    *(v314 + 24) = v315;

    v611 = 17;
    v596 = swift_allocObject();
    v598 = 1;
    *(v596 + 16) = v1129 & 1;

    v316 = swift_allocObject();
    v317 = v596;
    v615 = v316;
    *(v316 + 16) = v899;
    *(v316 + 24) = v317;

    v645 = sub_1B0E43988();
    v646 = sub_1B0E45908();
    v618 = swift_allocObject();
    v601 = 16;
    *(v618 + 16) = 16;
    v619 = swift_allocObject();
    v608 = 4;
    *(v619 + 16) = 4;
    v318 = swift_allocObject();
    v597 = v318;
    *(v318 + 16) = v900;
    *(v318 + 24) = 0;
    v319 = swift_allocObject();
    v320 = v597;
    v620 = v319;
    *(v319 + 16) = v901;
    *(v319 + 24) = v320;
    v621 = swift_allocObject();
    *(v621 + 16) = 0;
    v622 = swift_allocObject();
    *(v622 + 16) = v598;
    v321 = swift_allocObject();
    v322 = v599;
    v600 = v321;
    *(v321 + 16) = v902;
    *(v321 + 24) = v322;
    v323 = swift_allocObject();
    v324 = v600;
    v623 = v323;
    *(v323 + 16) = v903;
    *(v323 + 24) = v324;
    v624 = swift_allocObject();
    *(v624 + 16) = v601;
    v625 = swift_allocObject();
    *(v625 + 16) = v608;
    v325 = swift_allocObject();
    v602 = v325;
    *(v325 + 16) = v904;
    *(v325 + 24) = 0;
    v326 = swift_allocObject();
    v327 = v602;
    v626 = v326;
    *(v326 + 16) = v905;
    *(v326 + 24) = v327;
    v627 = swift_allocObject();
    *(v627 + 16) = 0;
    v628 = swift_allocObject();
    *(v628 + 16) = v608;
    v328 = swift_allocObject();
    v329 = v603;
    v604 = v328;
    *(v328 + 16) = v906;
    *(v328 + 24) = v329;
    v330 = swift_allocObject();
    v331 = v604;
    v629 = v330;
    *(v330 + 16) = v907;
    *(v330 + 24) = v331;
    v630 = swift_allocObject();
    *(v630 + 16) = 112;
    v631 = swift_allocObject();
    v612 = 8;
    *(v631 + 16) = 8;
    v617 = 24;
    v605 = swift_allocObject();
    *(v605 + 16) = v908;
    v332 = swift_allocObject();
    v333 = v605;
    v632 = v332;
    *(v332 + 16) = v909;
    *(v332 + 24) = v333;
    v633 = swift_allocObject();
    *(v633 + 16) = 37;
    v634 = swift_allocObject();
    *(v634 + 16) = v612;
    v334 = swift_allocObject();
    v335 = v606;
    v607 = v334;
    *(v334 + 16) = v910;
    *(v334 + 24) = v335;
    v336 = swift_allocObject();
    v337 = v607;
    v635 = v336;
    *(v336 + 16) = v911;
    *(v336 + 24) = v337;
    v636 = swift_allocObject();
    *(v636 + 16) = 0;
    v637 = swift_allocObject();
    *(v637 + 16) = v608;
    v338 = swift_allocObject();
    v339 = v609;
    v610 = v338;
    *(v338 + 16) = v912;
    *(v338 + 24) = v339;
    v340 = swift_allocObject();
    v341 = v610;
    v638 = v340;
    *(v340 + 16) = v913;
    *(v340 + 24) = v341;
    v639 = swift_allocObject();
    *(v639 + 16) = 34;
    v640 = swift_allocObject();
    *(v640 + 16) = v612;
    v342 = swift_allocObject();
    v343 = v615;
    v616 = v342;
    *(v342 + 16) = v914;
    *(v342 + 24) = v343;
    v344 = swift_allocObject();
    v345 = v616;
    v642 = v344;
    *(v344 + 16) = v915;
    *(v344 + 24) = v345;
    v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v641 = sub_1B0E46A48();
    v643 = v346;

    v347 = v618;
    v348 = v643;
    *v643 = v916;
    v348[1] = v347;

    v349 = v619;
    v350 = v643;
    v643[2] = v917;
    v350[3] = v349;

    v351 = v620;
    v352 = v643;
    v643[4] = v918;
    v352[5] = v351;

    v353 = v621;
    v354 = v643;
    v643[6] = v919;
    v354[7] = v353;

    v355 = v622;
    v356 = v643;
    v643[8] = v920;
    v356[9] = v355;

    v357 = v623;
    v358 = v643;
    v643[10] = v921;
    v358[11] = v357;

    v359 = v624;
    v360 = v643;
    v643[12] = v922;
    v360[13] = v359;

    v361 = v625;
    v362 = v643;
    v643[14] = v923;
    v362[15] = v361;

    v363 = v626;
    v364 = v643;
    v643[16] = v924;
    v364[17] = v363;

    v365 = v627;
    v366 = v643;
    v643[18] = v925;
    v366[19] = v365;

    v367 = v628;
    v368 = v643;
    v643[20] = v926;
    v368[21] = v367;

    v369 = v629;
    v370 = v643;
    v643[22] = v927;
    v370[23] = v369;

    v371 = v630;
    v372 = v643;
    v643[24] = v928;
    v372[25] = v371;

    v373 = v631;
    v374 = v643;
    v643[26] = v929;
    v374[27] = v373;

    v375 = v632;
    v376 = v643;
    v643[28] = v930;
    v376[29] = v375;

    v377 = v633;
    v378 = v643;
    v643[30] = v931;
    v378[31] = v377;

    v379 = v634;
    v380 = v643;
    v643[32] = v932;
    v380[33] = v379;

    v381 = v635;
    v382 = v643;
    v643[34] = v933;
    v382[35] = v381;

    v383 = v636;
    v384 = v643;
    v643[36] = v934;
    v384[37] = v383;

    v385 = v637;
    v386 = v643;
    v643[38] = v935;
    v386[39] = v385;

    v387 = v638;
    v388 = v643;
    v643[40] = v936;
    v388[41] = v387;

    v389 = v639;
    v390 = v643;
    v643[42] = v937;
    v390[43] = v389;

    v391 = v640;
    v392 = v643;
    v643[44] = v938;
    v392[45] = v391;

    v393 = v642;
    v394 = v643;
    v643[46] = v939;
    v394[47] = v393;
    sub_1B0394964();

    if (os_log_type_enabled(v645, v646))
    {
      v395 = v1087;
      v580 = sub_1B0E45D78();
      v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v581 = sub_1B03949A8(0, v579, v579);
      v582 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v583 = &v1154;
      v1154 = v580;
      v584 = &v1153;
      v1153 = v581;
      v585 = &v1152;
      v1152 = v582;
      sub_1B0394A48(3, &v1154);
      sub_1B0394A48(8, v583);
      v1150 = v916;
      v1151 = v618;
      sub_1B03949FC(&v1150, v583, v584, v585);
      v586 = v395;
      if (v395)
      {

        __break(1u);
      }

      else
      {
        v1150 = v917;
        v1151 = v619;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v577 = 0;
        v1150 = v918;
        v1151 = v620;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v576 = 0;
        v1150 = v919;
        v1151 = v621;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v575 = 0;
        v1150 = v920;
        v1151 = v622;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v574 = 0;
        v1150 = v921;
        v1151 = v623;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v573 = 0;
        v1150 = v922;
        v1151 = v624;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v572 = 0;
        v1150 = v923;
        v1151 = v625;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v571 = 0;
        v1150 = v924;
        v1151 = v626;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v570 = 0;
        v1150 = v925;
        v1151 = v627;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v569 = 0;
        v1150 = v926;
        v1151 = v628;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v568 = 0;
        v1150 = v927;
        v1151 = v629;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v567 = 0;
        v1150 = v928;
        v1151 = v630;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v566 = 0;
        v1150 = v929;
        v1151 = v631;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v565 = 0;
        v1150 = v930;
        v1151 = v632;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v564 = 0;
        v1150 = v931;
        v1151 = v633;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v563 = 0;
        v1150 = v932;
        v1151 = v634;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v562 = 0;
        v1150 = v933;
        v1151 = v635;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v561 = 0;
        v1150 = v934;
        v1151 = v636;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v560 = 0;
        v1150 = v935;
        v1151 = v637;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v559 = 0;
        v1150 = v936;
        v1151 = v638;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v558 = 0;
        v1150 = v937;
        v1151 = v639;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v557 = 0;
        v1150 = v938;
        v1151 = v640;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v556 = 0;
        v1150 = v939;
        v1151 = v642;
        sub_1B03949FC(&v1150, &v1154, &v1153, &v1152);
        v555 = 0;
        _os_log_impl(&dword_1B0389000, v645, v646, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete downloading parts for UID %u (%{public}s). No new EMLX data.", v580, 0x3Bu);
        sub_1B03998A8(v581, 0, v579);
        sub_1B03998A8(v582, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v578 = v555;
      }
    }

    else
    {
      v396 = v1087;

      v578 = v396;
    }

    v554 = v578;
    MEMORY[0x1E69E5920](v645);
    (*(v1094 + 8))(v1099, v1093);
    v648 = v554;
  }

  else
  {
    v34 = v1103;
    sub_1B07AF768(v1137, v1114);
    v828 = &unk_1EB737000;
    sub_1B074B69C(v1127 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1124);
    v826 = *(v1094 + 16);
    v827 = v1094 + 16;
    v826(v34, v1124, v1093);
    sub_1B074B764(v1124);

    sub_1B074B69C(v1127 + v828[299], v1131);
    v35 = (v1131 + *(v1116 + 20));
    v831 = *v35;
    v832 = *(v35 + 1);
    v833 = *(v35 + 1);
    v834 = *(v35 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1131);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v830 = 36;
    v860 = 7;
    v36 = swift_allocObject();
    v37 = v832;
    v38 = v833;
    v39 = v834;
    v843 = v36;
    *(v36 + 16) = v831;
    *(v36 + 20) = v37;
    *(v36 + 24) = v38;
    *(v36 + 32) = v39;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = swift_allocObject();
    v41 = v832;
    v42 = v833;
    v43 = v834;
    v829 = v40;
    *(v40 + 16) = v831;
    *(v40 + 20) = v41;
    *(v40 + 24) = v42;
    *(v40 + 32) = v43;

    v859 = 32;
    v44 = swift_allocObject();
    v45 = v829;
    v847 = v44;
    *(v44 + 16) = v940;
    *(v44 + 24) = v45;
    sub_1B0394868();
    sub_1B0394868();

    v46 = swift_allocObject();
    v47 = v832;
    v48 = v833;
    v49 = v834;
    v850 = v46;
    *(v46 + 16) = v831;
    *(v46 + 20) = v47;
    *(v46 + 24) = v48;
    *(v46 + 32) = v49;

    sub_1B07AFC78(v896, v1092);
    v835 = *(v1089 + 80);
    v836 = (v835 + 16) & ~v835;
    v837 = swift_allocObject();
    sub_1B07B02D8(v1092, (v837 + v836));

    v50 = swift_allocObject();
    v51 = v837;
    v853 = v50;
    *(v50 + 16) = v941;
    *(v50 + 24) = v51;

    v857 = 17;
    v838 = swift_allocObject();
    v842 = 1;
    *(v838 + 16) = v1129 & 1;

    v52 = swift_allocObject();
    v53 = v838;
    v855 = v52;
    *(v52 + 16) = v942;
    *(v52 + 24) = v53;

    sub_1B07AF800(v1114, v1112);
    v839 = *(v1107 + 80);
    v840 = (v839 + 16) & ~v839;
    v861 = swift_allocObject();
    sub_1B07AF768(v1112, v861 + v840);
    sub_1B07575C4();

    v893 = sub_1B0E43988();
    v894 = sub_1B0E45908();
    v863 = swift_allocObject();
    v845 = 16;
    *(v863 + 16) = 16;
    v864 = swift_allocObject();
    v852 = 4;
    *(v864 + 16) = 4;
    v54 = swift_allocObject();
    v841 = v54;
    *(v54 + 16) = v900;
    *(v54 + 24) = 0;
    v55 = swift_allocObject();
    v56 = v841;
    v865 = v55;
    *(v55 + 16) = v943;
    *(v55 + 24) = v56;
    v866 = swift_allocObject();
    *(v866 + 16) = 0;
    v867 = swift_allocObject();
    *(v867 + 16) = v842;
    v57 = swift_allocObject();
    v58 = v843;
    v844 = v57;
    *(v57 + 16) = v944;
    *(v57 + 24) = v58;
    v59 = swift_allocObject();
    v60 = v844;
    v868 = v59;
    *(v59 + 16) = v945;
    *(v59 + 24) = v60;
    v869 = swift_allocObject();
    *(v869 + 16) = v845;
    v870 = swift_allocObject();
    *(v870 + 16) = v852;
    v61 = swift_allocObject();
    v846 = v61;
    *(v61 + 16) = v904;
    *(v61 + 24) = 0;
    v62 = swift_allocObject();
    v63 = v846;
    v871 = v62;
    *(v62 + 16) = v946;
    *(v62 + 24) = v63;
    v872 = swift_allocObject();
    *(v872 + 16) = 0;
    v873 = swift_allocObject();
    *(v873 + 16) = v852;
    v64 = swift_allocObject();
    v65 = v847;
    v848 = v64;
    *(v64 + 16) = v947;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    v67 = v848;
    v874 = v66;
    *(v66 + 16) = v948;
    *(v66 + 24) = v67;
    v875 = swift_allocObject();
    *(v875 + 16) = 112;
    v876 = swift_allocObject();
    v858 = 8;
    *(v876 + 16) = 8;
    v849 = swift_allocObject();
    *(v849 + 16) = v908;
    v68 = swift_allocObject();
    v69 = v849;
    v877 = v68;
    *(v68 + 16) = v949;
    *(v68 + 24) = v69;
    v878 = swift_allocObject();
    *(v878 + 16) = 37;
    v879 = swift_allocObject();
    *(v879 + 16) = v858;
    v70 = swift_allocObject();
    v71 = v850;
    v851 = v70;
    *(v70 + 16) = v950;
    *(v70 + 24) = v71;
    v72 = swift_allocObject();
    v73 = v851;
    v880 = v72;
    *(v72 + 16) = v951;
    *(v72 + 24) = v73;
    v881 = swift_allocObject();
    *(v881 + 16) = 0;
    v882 = swift_allocObject();
    *(v882 + 16) = v852;
    v74 = swift_allocObject();
    v75 = v853;
    v854 = v74;
    *(v74 + 16) = v952;
    *(v74 + 24) = v75;
    v76 = swift_allocObject();
    v77 = v854;
    v883 = v76;
    *(v76 + 16) = v953;
    *(v76 + 24) = v77;
    v884 = swift_allocObject();
    *(v884 + 16) = 34;
    v885 = swift_allocObject();
    *(v885 + 16) = v858;
    v78 = swift_allocObject();
    v79 = v855;
    v856 = v78;
    *(v78 + 16) = v954;
    *(v78 + 24) = v79;
    v80 = swift_allocObject();
    v81 = v856;
    v886 = v80;
    *(v80 + 16) = v955;
    *(v80 + 24) = v81;
    v887 = swift_allocObject();
    *(v887 + 16) = 0;
    v888 = swift_allocObject();
    *(v888 + 16) = v858;
    v82 = swift_allocObject();
    v83 = v861;
    v862 = v82;
    *(v82 + 16) = v956;
    *(v82 + 24) = v83;
    v84 = swift_allocObject();
    v85 = v862;
    v890 = v84;
    *(v84 + 16) = v957;
    *(v84 + 24) = v85;
    v892 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v889 = sub_1B0E46A48();
    v891 = v86;

    v87 = v863;
    v88 = v891;
    *v891 = v958;
    v88[1] = v87;

    v89 = v864;
    v90 = v891;
    v891[2] = v959;
    v90[3] = v89;

    v91 = v865;
    v92 = v891;
    v891[4] = v960;
    v92[5] = v91;

    v93 = v866;
    v94 = v891;
    v891[6] = v961;
    v94[7] = v93;

    v95 = v867;
    v96 = v891;
    v891[8] = v962;
    v96[9] = v95;

    v97 = v868;
    v98 = v891;
    v891[10] = v963;
    v98[11] = v97;

    v99 = v869;
    v100 = v891;
    v891[12] = v964;
    v100[13] = v99;

    v101 = v870;
    v102 = v891;
    v891[14] = v965;
    v102[15] = v101;

    v103 = v871;
    v104 = v891;
    v891[16] = v966;
    v104[17] = v103;

    v105 = v872;
    v106 = v891;
    v891[18] = v967;
    v106[19] = v105;

    v107 = v873;
    v108 = v891;
    v891[20] = v968;
    v108[21] = v107;

    v109 = v874;
    v110 = v891;
    v891[22] = v969;
    v110[23] = v109;

    v111 = v875;
    v112 = v891;
    v891[24] = v970;
    v112[25] = v111;

    v113 = v876;
    v114 = v891;
    v891[26] = v971;
    v114[27] = v113;

    v115 = v877;
    v116 = v891;
    v891[28] = v972;
    v116[29] = v115;

    v117 = v878;
    v118 = v891;
    v891[30] = v973;
    v118[31] = v117;

    v119 = v879;
    v120 = v891;
    v891[32] = v974;
    v120[33] = v119;

    v121 = v880;
    v122 = v891;
    v891[34] = v975;
    v122[35] = v121;

    v123 = v881;
    v124 = v891;
    v891[36] = v976;
    v124[37] = v123;

    v125 = v882;
    v126 = v891;
    v891[38] = v977;
    v126[39] = v125;

    v127 = v883;
    v128 = v891;
    v891[40] = v978;
    v128[41] = v127;

    v129 = v884;
    v130 = v891;
    v891[42] = v979;
    v130[43] = v129;

    v131 = v885;
    v132 = v891;
    v891[44] = v980;
    v132[45] = v131;

    v133 = v886;
    v134 = v891;
    v891[46] = v981;
    v134[47] = v133;

    v135 = v887;
    v136 = v891;
    v891[48] = v982;
    v136[49] = v135;

    v137 = v888;
    v138 = v891;
    v891[50] = v983;
    v138[51] = v137;

    v139 = v890;
    v140 = v891;
    v891[52] = v984;
    v140[53] = v139;
    sub_1B0394964();

    if (os_log_type_enabled(v893, v894))
    {
      v141 = v1087;
      v819 = sub_1B0E45D78();
      v818 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v820 = sub_1B03949A8(0, v818, v818);
      v821 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v822 = &v1144;
      v1144 = v819;
      v823 = &v1143;
      v1143 = v820;
      v824 = &v1142;
      v1142 = v821;
      sub_1B0394A48(3, &v1144);
      sub_1B0394A48(9, v822);
      v1140 = v958;
      v1141 = v863;
      sub_1B03949FC(&v1140, v822, v823, v824);
      v825 = v141;
      if (v141)
      {

        __break(1u);
      }

      else
      {
        v1140 = v959;
        v1141 = v864;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v816 = 0;
        v1140 = v960;
        v1141 = v865;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v815 = 0;
        v1140 = v961;
        v1141 = v866;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v814 = 0;
        v1140 = v962;
        v1141 = v867;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v813 = 0;
        v1140 = v963;
        v1141 = v868;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v812 = 0;
        v1140 = v964;
        v1141 = v869;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v811 = 0;
        v1140 = v965;
        v1141 = v870;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v810 = 0;
        v1140 = v966;
        v1141 = v871;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v809 = 0;
        v1140 = v967;
        v1141 = v872;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v808 = 0;
        v1140 = v968;
        v1141 = v873;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v807 = 0;
        v1140 = v969;
        v1141 = v874;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v806 = 0;
        v1140 = v970;
        v1141 = v875;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v805 = 0;
        v1140 = v971;
        v1141 = v876;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v804 = 0;
        v1140 = v972;
        v1141 = v877;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v803 = 0;
        v1140 = v973;
        v1141 = v878;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v802 = 0;
        v1140 = v974;
        v1141 = v879;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v801 = 0;
        v1140 = v975;
        v1141 = v880;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v800 = 0;
        v1140 = v976;
        v1141 = v881;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v799 = 0;
        v1140 = v977;
        v1141 = v882;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v798 = 0;
        v1140 = v978;
        v1141 = v883;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v797 = 0;
        v1140 = v979;
        v1141 = v884;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v796 = 0;
        v1140 = v980;
        v1141 = v885;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v795 = 0;
        v1140 = v981;
        v1141 = v886;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v794 = 0;
        v1140 = v982;
        v1141 = v887;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v793 = 0;
        v1140 = v983;
        v1141 = v888;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v792 = 0;
        v1140 = v984;
        v1141 = v890;
        sub_1B03949FC(&v1140, &v1144, &v1143, &v1142);
        v791 = 0;
        _os_log_impl(&dword_1B0389000, v893, v894, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete downloading parts for UID %u (%{public}s). EMLX is %{iec-bytes}ld.", v819, 0x45u);
        sub_1B03998A8(v820, 0, v818);
        sub_1B03998A8(v821, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v817 = v791;
      }
    }

    else
    {
      v142 = v1087;

      v817 = v142;
    }

    v143 = v1101;
    v696 = v817;
    MEMORY[0x1E69E5920](v893);
    v697 = *(v1094 + 8);
    v698 = v1094 + 8;
    v697(v1103, v1093);
    v699 = &unk_1EB737000;
    sub_1B074B69C(v1127 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1122);
    v826(v143, v1122, v1093);
    sub_1B074B764(v1122);

    sub_1B074B69C(v1127 + v699[299], v1131);
    v144 = (v1131 + *(v1116 + 20));
    v702 = *v144;
    v703 = *(v144 + 1);
    v704 = *(v144 + 1);
    v705 = *(v144 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1131);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v701 = 36;
    v745 = 7;
    v145 = swift_allocObject();
    v146 = v703;
    v147 = v704;
    v148 = v705;
    v719 = v145;
    *(v145 + 16) = v702;
    *(v145 + 20) = v146;
    *(v145 + 24) = v147;
    *(v145 + 32) = v148;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v149 = swift_allocObject();
    v150 = v703;
    v151 = v704;
    v152 = v705;
    v700 = v149;
    *(v149 + 16) = v702;
    *(v149 + 20) = v150;
    *(v149 + 24) = v151;
    *(v149 + 32) = v152;

    v744 = 32;
    v153 = swift_allocObject();
    v154 = v700;
    v723 = v153;
    *(v153 + 16) = v985;
    *(v153 + 24) = v154;
    sub_1B0394868();
    sub_1B0394868();

    v155 = swift_allocObject();
    v156 = v703;
    v157 = v704;
    v158 = v705;
    v726 = v155;
    *(v155 + 16) = v702;
    *(v155 + 20) = v156;
    *(v155 + 24) = v157;
    *(v155 + 32) = v158;

    sub_1B07AFC78(v896, v1092);
    v706 = (v835 + 16) & ~v835;
    v707 = swift_allocObject();
    sub_1B07B02D8(v1092, (v707 + v706));

    v159 = swift_allocObject();
    v160 = v707;
    v729 = v159;
    *(v159 + 16) = v986;
    *(v159 + 24) = v160;

    sub_1B07AF800(v1114, v1112);
    v708 = (v839 + 16) & ~v839;
    v731 = swift_allocObject();
    sub_1B07AF768(v1112, v731 + v708);
    sub_1B07AF800(v1114, v1112);
    v709 = (v839 + 16) & ~v839;
    v733 = swift_allocObject();
    sub_1B07AF768(v1112, v733 + v709);
    sub_1B07AF800(v1114, v1112);
    v710 = (v839 + 16) & ~v839;
    v711 = swift_allocObject();
    sub_1B07AF768(v1112, v711 + v710);

    v161 = swift_allocObject();
    v162 = v711;
    v735 = v161;
    *(v161 + 16) = v987;
    *(v161 + 24) = v162;

    sub_1B07AF800(v1114, v1112);
    v712 = (v839 + 16) & ~v839;
    v713 = swift_allocObject();
    sub_1B07AF768(v1112, v713 + v712);

    v163 = swift_allocObject();
    v164 = v713;
    v737 = v163;
    *(v163 + 16) = v988;
    *(v163 + 24) = v164;

    sub_1B07AF800(v1114, v1112);
    v714 = (v839 + 16) & ~v839;
    v715 = swift_allocObject();
    sub_1B07AF768(v1112, v715 + v714);

    v165 = swift_allocObject();
    v166 = v715;
    v739 = v165;
    *(v165 + 16) = v989;
    *(v165 + 24) = v166;

    sub_1B07AF800(v1114, v1112);
    v716 = (v839 + 16) & ~v839;
    v717 = swift_allocObject();
    sub_1B07AF768(v1112, v717 + v716);

    v167 = swift_allocObject();
    v168 = v717;
    v746 = v167;
    *(v167 + 16) = v990;
    *(v167 + 24) = v168;

    v789 = sub_1B0E43988();
    v790 = sub_1B0E458D8();
    v742 = 17;
    v748 = swift_allocObject();
    v721 = 16;
    *(v748 + 16) = 16;
    v749 = swift_allocObject();
    v728 = 4;
    *(v749 + 16) = 4;
    v169 = swift_allocObject();
    v718 = v169;
    *(v169 + 16) = v900;
    *(v169 + 24) = 0;
    v170 = swift_allocObject();
    v171 = v718;
    v750 = v170;
    *(v170 + 16) = v991;
    *(v170 + 24) = v171;
    v751 = swift_allocObject();
    *(v751 + 16) = 0;
    v752 = swift_allocObject();
    *(v752 + 16) = 1;
    v172 = swift_allocObject();
    v173 = v719;
    v720 = v172;
    *(v172 + 16) = v992;
    *(v172 + 24) = v173;
    v174 = swift_allocObject();
    v175 = v720;
    v753 = v174;
    *(v174 + 16) = v993;
    *(v174 + 24) = v175;
    v754 = swift_allocObject();
    *(v754 + 16) = v721;
    v755 = swift_allocObject();
    *(v755 + 16) = v728;
    v176 = swift_allocObject();
    v722 = v176;
    *(v176 + 16) = v904;
    *(v176 + 24) = 0;
    v177 = swift_allocObject();
    v178 = v722;
    v756 = v177;
    *(v177 + 16) = v994;
    *(v177 + 24) = v178;
    v757 = swift_allocObject();
    *(v757 + 16) = 0;
    v758 = swift_allocObject();
    *(v758 + 16) = v728;
    v179 = swift_allocObject();
    v180 = v723;
    v724 = v179;
    *(v179 + 16) = v995;
    *(v179 + 24) = v180;
    v181 = swift_allocObject();
    v182 = v724;
    v759 = v181;
    *(v181 + 16) = v996;
    *(v181 + 24) = v182;
    v760 = swift_allocObject();
    *(v760 + 16) = 112;
    v761 = swift_allocObject();
    v743 = 8;
    *(v761 + 16) = 8;
    v725 = swift_allocObject();
    *(v725 + 16) = v908;
    v183 = swift_allocObject();
    v184 = v725;
    v762 = v183;
    *(v183 + 16) = v997;
    *(v183 + 24) = v184;
    v763 = swift_allocObject();
    *(v763 + 16) = 37;
    v764 = swift_allocObject();
    *(v764 + 16) = v743;
    v185 = swift_allocObject();
    v186 = v726;
    v727 = v185;
    *(v185 + 16) = v998;
    *(v185 + 24) = v186;
    v187 = swift_allocObject();
    v188 = v727;
    v765 = v187;
    *(v187 + 16) = v999;
    *(v187 + 24) = v188;
    v766 = swift_allocObject();
    *(v766 + 16) = 0;
    v767 = swift_allocObject();
    *(v767 + 16) = v728;
    v189 = swift_allocObject();
    v190 = v729;
    v730 = v189;
    *(v189 + 16) = v1000;
    *(v189 + 24) = v190;
    v191 = swift_allocObject();
    v192 = v730;
    v768 = v191;
    *(v191 + 16) = v1001;
    *(v191 + 24) = v192;
    v769 = swift_allocObject();
    *(v769 + 16) = 0;
    v770 = swift_allocObject();
    *(v770 + 16) = v743;
    v193 = swift_allocObject();
    v194 = v731;
    v732 = v193;
    *(v193 + 16) = v1002;
    *(v193 + 24) = v194;
    v195 = swift_allocObject();
    v196 = v732;
    v771 = v195;
    *(v195 + 16) = v1003;
    *(v195 + 24) = v196;
    v772 = swift_allocObject();
    *(v772 + 16) = 0;
    v773 = swift_allocObject();
    *(v773 + 16) = v743;
    v197 = swift_allocObject();
    v198 = v733;
    v734 = v197;
    *(v197 + 16) = v1004;
    *(v197 + 24) = v198;
    v199 = swift_allocObject();
    v200 = v734;
    v774 = v199;
    *(v199 + 16) = v1005;
    *(v199 + 24) = v200;
    v775 = swift_allocObject();
    v741 = 32;
    *(v775 + 16) = 32;
    v776 = swift_allocObject();
    *(v776 + 16) = v743;
    v201 = swift_allocObject();
    v202 = v735;
    v736 = v201;
    *(v201 + 16) = v1006;
    *(v201 + 24) = v202;
    v203 = swift_allocObject();
    v204 = v736;
    v777 = v203;
    *(v203 + 16) = v1007;
    *(v203 + 24) = v204;
    v778 = swift_allocObject();
    *(v778 + 16) = v741;
    v779 = swift_allocObject();
    *(v779 + 16) = v743;
    v205 = swift_allocObject();
    v206 = v737;
    v738 = v205;
    *(v205 + 16) = v1008;
    *(v205 + 24) = v206;
    v207 = swift_allocObject();
    v208 = v738;
    v780 = v207;
    *(v207 + 16) = v1009;
    *(v207 + 24) = v208;
    v781 = swift_allocObject();
    *(v781 + 16) = v741;
    v782 = swift_allocObject();
    *(v782 + 16) = v743;
    v209 = swift_allocObject();
    v210 = v739;
    v740 = v209;
    *(v209 + 16) = v1010;
    *(v209 + 24) = v210;
    v211 = swift_allocObject();
    v212 = v740;
    v783 = v211;
    *(v211 + 16) = v1011;
    *(v211 + 24) = v212;
    v784 = swift_allocObject();
    *(v784 + 16) = v741;
    v785 = swift_allocObject();
    *(v785 + 16) = v743;
    v213 = swift_allocObject();
    v214 = v746;
    v747 = v213;
    *(v213 + 16) = v1012;
    *(v213 + 24) = v214;
    v215 = swift_allocObject();
    v216 = v747;
    v787 = v215;
    *(v215 + 16) = v1013;
    *(v215 + 24) = v216;
    v786 = sub_1B0E46A48();
    v788 = v217;

    v218 = v748;
    v219 = v788;
    *v788 = v1014;
    v219[1] = v218;

    v220 = v749;
    v221 = v788;
    v788[2] = v1015;
    v221[3] = v220;

    v222 = v750;
    v223 = v788;
    v788[4] = v1016;
    v223[5] = v222;

    v224 = v751;
    v225 = v788;
    v788[6] = v1017;
    v225[7] = v224;

    v226 = v752;
    v227 = v788;
    v788[8] = v1018;
    v227[9] = v226;

    v228 = v753;
    v229 = v788;
    v788[10] = v1019;
    v229[11] = v228;

    v230 = v754;
    v231 = v788;
    v788[12] = v1020;
    v231[13] = v230;

    v232 = v755;
    v233 = v788;
    v788[14] = v1021;
    v233[15] = v232;

    v234 = v756;
    v235 = v788;
    v788[16] = v1022;
    v235[17] = v234;

    v236 = v757;
    v237 = v788;
    v788[18] = v1023;
    v237[19] = v236;

    v238 = v758;
    v239 = v788;
    v788[20] = v1024;
    v239[21] = v238;

    v240 = v759;
    v241 = v788;
    v788[22] = v1025;
    v241[23] = v240;

    v242 = v760;
    v243 = v788;
    v788[24] = v1026;
    v243[25] = v242;

    v244 = v761;
    v245 = v788;
    v788[26] = v1027;
    v245[27] = v244;

    v246 = v762;
    v247 = v788;
    v788[28] = v1028;
    v247[29] = v246;

    v248 = v763;
    v249 = v788;
    v788[30] = v1029;
    v249[31] = v248;

    v250 = v764;
    v251 = v788;
    v788[32] = v1030;
    v251[33] = v250;

    v252 = v765;
    v253 = v788;
    v788[34] = v1031;
    v253[35] = v252;

    v254 = v766;
    v255 = v788;
    v788[36] = v1032;
    v255[37] = v254;

    v256 = v767;
    v257 = v788;
    v788[38] = v1033;
    v257[39] = v256;

    v258 = v768;
    v259 = v788;
    v788[40] = v1034;
    v259[41] = v258;

    v260 = v769;
    v261 = v788;
    v788[42] = v1035;
    v261[43] = v260;

    v262 = v770;
    v263 = v788;
    v788[44] = v1036;
    v263[45] = v262;

    v264 = v771;
    v265 = v788;
    v788[46] = v1037;
    v265[47] = v264;

    v266 = v772;
    v267 = v788;
    v788[48] = v1038;
    v267[49] = v266;

    v268 = v773;
    v269 = v788;
    v788[50] = v1039;
    v269[51] = v268;

    v270 = v774;
    v271 = v788;
    v788[52] = v1040;
    v271[53] = v270;

    v272 = v775;
    v273 = v788;
    v788[54] = v1041;
    v273[55] = v272;

    v274 = v776;
    v275 = v788;
    v788[56] = v1042;
    v275[57] = v274;

    v276 = v777;
    v277 = v788;
    v788[58] = v1043;
    v277[59] = v276;

    v278 = v778;
    v279 = v788;
    v788[60] = v1044;
    v279[61] = v278;

    v280 = v779;
    v281 = v788;
    v788[62] = v1045;
    v281[63] = v280;

    v282 = v780;
    v283 = v788;
    v788[64] = v1046;
    v283[65] = v282;

    v284 = v781;
    v285 = v788;
    v788[66] = v1047;
    v285[67] = v284;

    v286 = v782;
    v287 = v788;
    v788[68] = v1048;
    v287[69] = v286;

    v288 = v783;
    v289 = v788;
    v788[70] = v1049;
    v289[71] = v288;

    v290 = v784;
    v291 = v788;
    v788[72] = v1050;
    v291[73] = v290;

    v292 = v785;
    v293 = v788;
    v788[74] = v1051;
    v293[75] = v292;

    v294 = v787;
    v295 = v788;
    v788[76] = v1052;
    v295[77] = v294;
    sub_1B0394964();

    if (os_log_type_enabled(v789, v790))
    {
      v296 = v696;
      v689 = sub_1B0E45D78();
      v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v690 = sub_1B03949A8(0, v688, v688);
      v691 = sub_1B03949A8(5, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v692 = &v1149;
      v1149 = v689;
      v693 = &v1148;
      v1148 = v690;
      v694 = &v1147;
      v1147 = v691;
      sub_1B0394A48(3, &v1149);
      sub_1B0394A48(13, v692);
      v1145 = v1014;
      v1146 = v748;
      sub_1B03949FC(&v1145, v692, v693, v694);
      v695 = v296;
      if (v296)
      {

        __break(1u);
      }

      else
      {
        v1145 = v1015;
        v1146 = v749;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v686 = 0;
        v1145 = v1016;
        v1146 = v750;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v685 = 0;
        v1145 = v1017;
        v1146 = v751;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v684 = 0;
        v1145 = v1018;
        v1146 = v752;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v683 = 0;
        v1145 = v1019;
        v1146 = v753;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v682 = 0;
        v1145 = v1020;
        v1146 = v754;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v681 = 0;
        v1145 = v1021;
        v1146 = v755;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v680 = 0;
        v1145 = v1022;
        v1146 = v756;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v679 = 0;
        v1145 = v1023;
        v1146 = v757;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v678 = 0;
        v1145 = v1024;
        v1146 = v758;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v677 = 0;
        v1145 = v1025;
        v1146 = v759;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v676 = 0;
        v1145 = v1026;
        v1146 = v760;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v675 = 0;
        v1145 = v1027;
        v1146 = v761;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v674 = 0;
        v1145 = v1028;
        v1146 = v762;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v673 = 0;
        v1145 = v1029;
        v1146 = v763;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v672 = 0;
        v1145 = v1030;
        v1146 = v764;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v671 = 0;
        v1145 = v1031;
        v1146 = v765;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v670 = 0;
        v1145 = v1032;
        v1146 = v766;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v669 = 0;
        v1145 = v1033;
        v1146 = v767;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v668 = 0;
        v1145 = v1034;
        v1146 = v768;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v667 = 0;
        v1145 = v1035;
        v1146 = v769;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v666 = 0;
        v1145 = v1036;
        v1146 = v770;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v665 = 0;
        v1145 = v1037;
        v1146 = v771;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v664 = 0;
        v1145 = v1038;
        v1146 = v772;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v663 = 0;
        v1145 = v1039;
        v1146 = v773;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v662 = 0;
        v1145 = v1040;
        v1146 = v774;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v661 = 0;
        v1145 = v1041;
        v1146 = v775;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v660 = 0;
        v1145 = v1042;
        v1146 = v776;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v659 = 0;
        v1145 = v1043;
        v1146 = v777;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v658 = 0;
        v1145 = v1044;
        v1146 = v778;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v657 = 0;
        v1145 = v1045;
        v1146 = v779;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v656 = 0;
        v1145 = v1046;
        v1146 = v780;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v655 = 0;
        v1145 = v1047;
        v1146 = v781;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v654 = 0;
        v1145 = v1048;
        v1146 = v782;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v653 = 0;
        v1145 = v1049;
        v1146 = v783;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v652 = 0;
        v1145 = v1050;
        v1146 = v784;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v651 = 0;
        v1145 = v1051;
        v1146 = v785;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v650 = 0;
        v1145 = v1052;
        v1146 = v787;
        sub_1B03949FC(&v1145, &v1149, &v1148, &v1147);
        v649 = 0;
        _os_log_impl(&dword_1B0389000, v789, v790, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u has downloaded parts (%ld of %ld): {%s}, missing parts: {%s}, downloaded attachments: {%s}, missing attachments: {%s}", v689, 0x6Du);
        sub_1B03998A8(v690, 0, v688);
        sub_1B03998A8(v691, 5, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v687 = v649;
      }
    }

    else
    {
      v297 = v696;

      v687 = v297;
    }

    v647 = v687;
    MEMORY[0x1E69E5920](v789);
    v697(v1101, v1093);
    sub_1B07AF320(v1114);
    v648 = v647;
  }

  v553 = v648;
  sub_1B07AEE78(v1132, v1105);
  if (v1138(v1105, 1, v1136) == 1)
  {
    sub_1B07AF3D4(v1105);
  }

  else
  {
    sub_1B07AF768(v1105, v1110);
    v552 = sub_1B082A818(*v896);
    if (v552)
    {
      v551 = v552;
      v548 = v552;
      v1156 = v552;
      v549 = sub_1B0863C14(v552, *v896);
      v550 = 1;
      v1155 = v549 & 1;
      sub_1B07AF800(v1110, v1112);
      sub_1B0858C38(v1112, v548, v549 & 1, v895);
      v397 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(0);
      (*(*(v397 - 8) + 56))(v895, 0, v550);
      sub_1B07AF320(v1110);
      return sub_1B07AF3D4(v1132);
    }

    sub_1B07AF320(v1110);
  }

  v399 = v1097;
  v496 = &unk_1EB737000;
  sub_1B074B69C(v1127 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1118);
  (*(v1094 + 16))(v399, v1118, v1093);
  sub_1B074B764(v1118);

  sub_1B074B69C(v1127 + v496[299], v1131);
  v400 = (v1131 + *(v1116 + 20));
  v499 = *v400;
  v500 = *(v400 + 1);
  v501 = *(v400 + 1);
  v502 = *(v400 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v1131);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v498 = 36;
  v519 = 7;
  v401 = swift_allocObject();
  v402 = v500;
  v403 = v501;
  v404 = v502;
  v506 = v401;
  *(v401 + 16) = v499;
  *(v401 + 20) = v402;
  *(v401 + 24) = v403;
  *(v401 + 32) = v404;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v405 = swift_allocObject();
  v406 = v500;
  v407 = v501;
  v408 = v502;
  v497 = v405;
  *(v405 + 16) = v499;
  *(v405 + 20) = v406;
  *(v405 + 24) = v407;
  *(v405 + 32) = v408;

  v518 = 32;
  v409 = swift_allocObject();
  v410 = v497;
  v510 = v409;
  *(v409 + 16) = v1053;
  *(v409 + 24) = v410;
  sub_1B0394868();
  sub_1B0394868();

  v411 = swift_allocObject();
  v412 = v500;
  v413 = v501;
  v414 = v502;
  v514 = v411;
  *(v411 + 16) = v499;
  *(v411 + 20) = v412;
  *(v411 + 24) = v413;
  *(v411 + 32) = v414;

  sub_1B07AFC78(v896, v1092);
  v503 = (*(v1089 + 80) + 16) & ~*(v1089 + 80);
  v504 = swift_allocObject();
  sub_1B07B02D8(v1092, (v504 + v503));

  v415 = swift_allocObject();
  v416 = v504;
  v520 = v415;
  *(v415 + 16) = v1054;
  *(v415 + 24) = v416;

  v546 = sub_1B0E43988();
  v547 = sub_1B0E45908();
  v516 = 17;
  v522 = swift_allocObject();
  v508 = 16;
  *(v522 + 16) = 16;
  v523 = swift_allocObject();
  v517 = 4;
  *(v523 + 16) = 4;
  v417 = swift_allocObject();
  v505 = v417;
  *(v417 + 16) = v900;
  *(v417 + 24) = 0;
  v418 = swift_allocObject();
  v419 = v505;
  v524 = v418;
  *(v418 + 16) = v1055;
  *(v418 + 24) = v419;
  v525 = swift_allocObject();
  *(v525 + 16) = 0;
  v526 = swift_allocObject();
  *(v526 + 16) = 1;
  v420 = swift_allocObject();
  v421 = v506;
  v507 = v420;
  *(v420 + 16) = v1056;
  *(v420 + 24) = v421;
  v422 = swift_allocObject();
  v423 = v507;
  v527 = v422;
  *(v422 + 16) = v1057;
  *(v422 + 24) = v423;
  v528 = swift_allocObject();
  *(v528 + 16) = v508;
  v529 = swift_allocObject();
  *(v529 + 16) = v517;
  v424 = swift_allocObject();
  v509 = v424;
  *(v424 + 16) = v904;
  *(v424 + 24) = 0;
  v425 = swift_allocObject();
  v426 = v509;
  v530 = v425;
  *(v425 + 16) = v1058;
  *(v425 + 24) = v426;
  v531 = swift_allocObject();
  *(v531 + 16) = 0;
  v532 = swift_allocObject();
  *(v532 + 16) = v517;
  v427 = swift_allocObject();
  v428 = v510;
  v511 = v427;
  *(v427 + 16) = v1059;
  *(v427 + 24) = v428;
  v429 = swift_allocObject();
  v430 = v511;
  v533 = v429;
  *(v429 + 16) = v1060;
  *(v429 + 24) = v430;
  v534 = swift_allocObject();
  *(v534 + 16) = 112;
  v535 = swift_allocObject();
  v513 = 8;
  *(v535 + 16) = 8;
  v512 = swift_allocObject();
  *(v512 + 16) = v908;
  v431 = swift_allocObject();
  v432 = v512;
  v536 = v431;
  *(v431 + 16) = v1061;
  *(v431 + 24) = v432;
  v537 = swift_allocObject();
  *(v537 + 16) = 37;
  v538 = swift_allocObject();
  *(v538 + 16) = v513;
  v433 = swift_allocObject();
  v434 = v514;
  v515 = v433;
  *(v433 + 16) = v1062;
  *(v433 + 24) = v434;
  v435 = swift_allocObject();
  v436 = v515;
  v539 = v435;
  *(v435 + 16) = v1063;
  *(v435 + 24) = v436;
  v540 = swift_allocObject();
  *(v540 + 16) = 0;
  v541 = swift_allocObject();
  *(v541 + 16) = v517;
  v437 = swift_allocObject();
  v438 = v520;
  v521 = v437;
  *(v437 + 16) = v1064;
  *(v437 + 24) = v438;
  v439 = swift_allocObject();
  v440 = v521;
  v543 = v439;
  *(v439 + 16) = v1065;
  *(v439 + 24) = v440;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v542 = sub_1B0E46A48();
  v544 = v441;

  v442 = v522;
  v443 = v544;
  *v544 = v1066;
  v443[1] = v442;

  v444 = v523;
  v445 = v544;
  v544[2] = v1067;
  v445[3] = v444;

  v446 = v524;
  v447 = v544;
  v544[4] = v1068;
  v447[5] = v446;

  v448 = v525;
  v449 = v544;
  v544[6] = v1069;
  v449[7] = v448;

  v450 = v526;
  v451 = v544;
  v544[8] = v1070;
  v451[9] = v450;

  v452 = v527;
  v453 = v544;
  v544[10] = v1071;
  v453[11] = v452;

  v454 = v528;
  v455 = v544;
  v544[12] = v1072;
  v455[13] = v454;

  v456 = v529;
  v457 = v544;
  v544[14] = v1073;
  v457[15] = v456;

  v458 = v530;
  v459 = v544;
  v544[16] = v1074;
  v459[17] = v458;

  v460 = v531;
  v461 = v544;
  v544[18] = v1075;
  v461[19] = v460;

  v462 = v532;
  v463 = v544;
  v544[20] = v1076;
  v463[21] = v462;

  v464 = v533;
  v465 = v544;
  v544[22] = v1077;
  v465[23] = v464;

  v466 = v534;
  v467 = v544;
  v544[24] = v1078;
  v467[25] = v466;

  v468 = v535;
  v469 = v544;
  v544[26] = v1079;
  v469[27] = v468;

  v470 = v536;
  v471 = v544;
  v544[28] = v1080;
  v471[29] = v470;

  v472 = v537;
  v473 = v544;
  v544[30] = v1081;
  v473[31] = v472;

  v474 = v538;
  v475 = v544;
  v544[32] = v1082;
  v475[33] = v474;

  v476 = v539;
  v477 = v544;
  v544[34] = v1083;
  v477[35] = v476;

  v478 = v540;
  v479 = v544;
  v544[36] = v1084;
  v479[37] = v478;

  v480 = v541;
  v481 = v544;
  v544[38] = v1085;
  v481[39] = v480;

  v482 = v543;
  v483 = v544;
  v544[40] = v1086;
  v483[41] = v482;
  sub_1B0394964();

  if (os_log_type_enabled(v546, v547))
  {
    v484 = v553;
    v489 = sub_1B0E45D78();
    v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v490 = sub_1B03949A8(0, v488, v488);
    v491 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v492 = &v1161;
    v1161 = v489;
    v493 = &v1160;
    v1160 = v490;
    v494 = &v1159;
    v1159 = v491;
    sub_1B0394A48(3, &v1161);
    sub_1B0394A48(7, v492);
    v1157 = v1066;
    v1158 = v522;
    sub_1B03949FC(&v1157, v492, v493, v494);
    v495 = v484;
    if (v484)
    {

      __break(1u);
    }

    else
    {
      v1157 = v1067;
      v1158 = v523;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[19] = 0;
      v1157 = v1068;
      v1158 = v524;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[18] = 0;
      v1157 = v1069;
      v1158 = v525;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[17] = 0;
      v1157 = v1070;
      v1158 = v526;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[16] = 0;
      v1157 = v1071;
      v1158 = v527;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[15] = 0;
      v1157 = v1072;
      v1158 = v528;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[14] = 0;
      v1157 = v1073;
      v1158 = v529;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[13] = 0;
      v1157 = v1074;
      v1158 = v530;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[12] = 0;
      v1157 = v1075;
      v1158 = v531;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[11] = 0;
      v1157 = v1076;
      v1158 = v532;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[10] = 0;
      v1157 = v1077;
      v1158 = v533;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[9] = 0;
      v1157 = v1078;
      v1158 = v534;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[8] = 0;
      v1157 = v1079;
      v1158 = v535;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[7] = 0;
      v1157 = v1080;
      v1158 = v536;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[6] = 0;
      v1157 = v1081;
      v1158 = v537;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[5] = 0;
      v1157 = v1082;
      v1158 = v538;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[4] = 0;
      v1157 = v1083;
      v1158 = v539;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[3] = 0;
      v1157 = v1084;
      v1158 = v540;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[2] = 0;
      v1157 = v1085;
      v1158 = v541;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      v487[1] = 0;
      v1157 = v1086;
      v1158 = v543;
      sub_1B03949FC(&v1157, &v1161, &v1160, &v1159);
      _os_log_impl(&dword_1B0389000, v546, v547, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download completed without missing part info for UID %u.", v489, 0x31u);
      sub_1B03998A8(v490, 0, v488);
      sub_1B03998A8(v491, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v546);
  (*(v1094 + 8))(v1097, v1093);
  v485 = *v896;
  v487[0] = 0;
  sub_1B0814D38(v485, 0, 0, 1);
  v486 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(v487[0]);
  (*(*(v486 - 8) + 56))(v895, 1);
  return sub_1B07AF3D4(v1132);
}

uint64_t sub_1B0863908(uint64_t a1)
{
  v3[1] = a1;
  v7 = sub_1B0E443C8();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v7);
  v8 = v3 - v4;
  (*(v5 + 16))(v3 - v4, v1);
  v9 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t sub_1B0863A00(uint64_t a1)
{
  v1 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  memcpy(__dst, (a1 + *(v1 + 20)), sizeof(__dst));
  sub_1B074E4B4(__dst, v5);
  v4 = sub_1B07A5884();
  sub_1B074E868();
  return v4;
}

uint64_t sub_1B0863A7C(uint64_t a1)
{
  v1 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  memcpy(__dst, (a1 + *(v1 + 20)), sizeof(__dst));
  sub_1B074E4B4(__dst, v5);
  v4 = sub_1B07A5938();
  sub_1B074E868();
  return v4;
}

uint64_t sub_1B0863C14(void *a1, int a2)
{
  v12[2] = 0;
  v14 = a1;
  v13 = a2;
  v11 = [a1 summary];
  if (v11)
  {
    v6 = sub_1B0E44AD8();
    v7 = v2;
    MEMORY[0x1E69E5920](v11);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v12[0] = v8;
  v12[1] = v9;
  sub_1B03B1198(v12);
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    swift_beginAccess();
    v4 = sub_1B0A22140(a2);
    swift_endAccess();
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t sub_1B0863D8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v265 = a1;
  v260 = a2;
  v256 = a3;
  v257 = a4;
  v258 = a5;
  v259 = a6;
  v204 = sub_1B074E050;
  v205 = sub_1B07B073C;
  v206 = sub_1B0394C30;
  v207 = sub_1B0394C24;
  v208 = sub_1B074DFFC;
  v209 = sub_1B039BA88;
  v210 = sub_1B039BB94;
  v211 = sub_1B0394C24;
  v212 = sub_1B039BBA0;
  v213 = sub_1B039BC08;
  v214 = sub_1B06BA324;
  v215 = sub_1B074E0E4;
  v216 = sub_1B039BCF8;
  v217 = sub_1B07AB020;
  v218 = sub_1B039BC08;
  v219 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0399178;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B039BA94;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0399178;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B03991EC;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v233 = sub_1B03993BC;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B039BCEC;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B03991EC;
  v282 = 0;
  v280 = 0;
  v281 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v240 = 0;
  v270 = 0;
  v261 = 0;
  v241 = *(type metadata accessor for InProgressMessageDownload.Completed(0) - 8);
  v242 = v241;
  v243 = *(v241 + 64);
  v244 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v245 = (&v110 - v244);
  v246 = sub_1B0E439A8();
  v247 = *(v246 - 8);
  v248 = v246 - 8;
  v249 = (*(v247 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v261);
  v250 = &v110 - v249;
  v251 = _s6LoggerVMa_1(v7);
  v252 = (*(*(v251 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v261);
  v253 = &v110 - v252;
  v254 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v255 = &v110 - v254;
  v262 = type metadata accessor for InProgressMessageDownload.EMLX(v10);
  v263 = (*(*(v262 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v261);
  v264 = &v110 - v263;
  v282 = v11;
  v280 = v12;
  v281 = v13;
  v279 = v14;
  v278 = v15;
  v277 = v16;
  v276 = v6;
  v266 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(v17);
  if (sub_1B06E5FB4(*(v265 + *(v266 + 24)) & 1, 0))
  {
    v267 = v260;
    v268 = v256;
    v202 = v256 == 0;
    if (!v256)
    {
      sub_1B0866074(*v257);
    }
  }

  sub_1B07AF800(v265, v264);
  v198 = *(v265 + *(v266 + 20));
  MEMORY[0x1E69E5928](v198);
  sub_1B08660E4(v264, v198, v260, v256);
  MEMORY[0x1E69E5920](v198);
  sub_1B07AF320(v264);
  v199 = *(v265 + *(v266 + 20));
  MEMORY[0x1E69E5928](v199);
  v200 = [v199 globalMessageID];
  MEMORY[0x1E69E5920](v199);
  v201 = sub_1B0825730(v200);
  if (v18)
  {
    v23 = v250;
    v139 = &unk_1EB737000;
    sub_1B074B69C(v203 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v255);
    (*(v247 + 16))(v23, v255, v246);
    sub_1B074B764(v255);

    sub_1B074B69C(v203 + v139[299], v253);
    v24 = (v253 + *(v251 + 20));
    v142 = *v24;
    v143 = *(v24 + 1);
    v144 = *(v24 + 1);
    v145 = *(v24 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v253);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v141 = 36;
    v162 = 7;
    v25 = swift_allocObject();
    v26 = v143;
    v27 = v144;
    v28 = v145;
    v149 = v25;
    *(v25 + 16) = v142;
    *(v25 + 20) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v28;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = swift_allocObject();
    v30 = v143;
    v31 = v144;
    v32 = v145;
    v140 = v29;
    *(v29 + 16) = v142;
    *(v29 + 20) = v30;
    *(v29 + 24) = v31;
    *(v29 + 32) = v32;

    v161 = 32;
    v33 = swift_allocObject();
    v34 = v140;
    v153 = v33;
    *(v33 + 16) = v204;
    *(v33 + 24) = v34;
    sub_1B0394868();
    sub_1B0394868();

    v35 = swift_allocObject();
    v36 = v143;
    v37 = v144;
    v38 = v145;
    v157 = v35;
    *(v35 + 16) = v142;
    *(v35 + 20) = v36;
    *(v35 + 24) = v37;
    *(v35 + 32) = v38;

    sub_1B07AFC78(v257, v245);
    v146 = (*(v242 + 80) + 16) & ~*(v242 + 80);
    v147 = swift_allocObject();
    sub_1B07B02D8(v245, (v147 + v146));

    v39 = swift_allocObject();
    v40 = v147;
    v163 = v39;
    *(v39 + 16) = v205;
    *(v39 + 24) = v40;

    v189 = sub_1B0E43988();
    v190 = sub_1B0E458E8();
    v159 = 17;
    v165 = swift_allocObject();
    v151 = 16;
    *(v165 + 16) = 16;
    v166 = swift_allocObject();
    v160 = 4;
    *(v166 + 16) = 4;
    v41 = swift_allocObject();
    v148 = v41;
    *(v41 + 16) = v206;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v148;
    v167 = v42;
    *(v42 + 16) = v207;
    *(v42 + 24) = v43;
    v168 = swift_allocObject();
    *(v168 + 16) = 0;
    v169 = swift_allocObject();
    *(v169 + 16) = 1;
    v44 = swift_allocObject();
    v45 = v149;
    v150 = v44;
    *(v44 + 16) = v208;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v150;
    v170 = v46;
    *(v46 + 16) = v209;
    *(v46 + 24) = v47;
    v171 = swift_allocObject();
    *(v171 + 16) = v151;
    v172 = swift_allocObject();
    *(v172 + 16) = v160;
    v48 = swift_allocObject();
    v152 = v48;
    *(v48 + 16) = v210;
    *(v48 + 24) = 0;
    v49 = swift_allocObject();
    v50 = v152;
    v173 = v49;
    *(v49 + 16) = v211;
    *(v49 + 24) = v50;
    v174 = swift_allocObject();
    *(v174 + 16) = 0;
    v175 = swift_allocObject();
    *(v175 + 16) = v160;
    v51 = swift_allocObject();
    v52 = v153;
    v154 = v51;
    *(v51 + 16) = v212;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v154;
    v176 = v53;
    *(v53 + 16) = v213;
    *(v53 + 24) = v54;
    v177 = swift_allocObject();
    *(v177 + 16) = 112;
    v178 = swift_allocObject();
    v156 = 8;
    *(v178 + 16) = 8;
    v155 = swift_allocObject();
    *(v155 + 16) = 0x786F626C69616DLL;
    v55 = swift_allocObject();
    v56 = v155;
    v179 = v55;
    *(v55 + 16) = v214;
    *(v55 + 24) = v56;
    v180 = swift_allocObject();
    *(v180 + 16) = 37;
    v181 = swift_allocObject();
    *(v181 + 16) = v156;
    v57 = swift_allocObject();
    v58 = v157;
    v158 = v57;
    *(v57 + 16) = v215;
    *(v57 + 24) = v58;
    v59 = swift_allocObject();
    v60 = v158;
    v182 = v59;
    *(v59 + 16) = v216;
    *(v59 + 24) = v60;
    v183 = swift_allocObject();
    *(v183 + 16) = 0;
    v184 = swift_allocObject();
    *(v184 + 16) = v160;
    v61 = swift_allocObject();
    v62 = v163;
    v164 = v61;
    *(v61 + 16) = v217;
    *(v61 + 24) = v62;
    v63 = swift_allocObject();
    v64 = v164;
    v186 = v63;
    *(v63 + 16) = v218;
    *(v63 + 24) = v64;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v185 = sub_1B0E46A48();
    v187 = v65;

    v66 = v165;
    v67 = v187;
    *v187 = v219;
    v67[1] = v66;

    v68 = v166;
    v69 = v187;
    v187[2] = v220;
    v69[3] = v68;

    v70 = v167;
    v71 = v187;
    v187[4] = v221;
    v71[5] = v70;

    v72 = v168;
    v73 = v187;
    v187[6] = v222;
    v73[7] = v72;

    v74 = v169;
    v75 = v187;
    v187[8] = v223;
    v75[9] = v74;

    v76 = v170;
    v77 = v187;
    v187[10] = v224;
    v77[11] = v76;

    v78 = v171;
    v79 = v187;
    v187[12] = v225;
    v79[13] = v78;

    v80 = v172;
    v81 = v187;
    v187[14] = v226;
    v81[15] = v80;

    v82 = v173;
    v83 = v187;
    v187[16] = v227;
    v83[17] = v82;

    v84 = v174;
    v85 = v187;
    v187[18] = v228;
    v85[19] = v84;

    v86 = v175;
    v87 = v187;
    v187[20] = v229;
    v87[21] = v86;

    v88 = v176;
    v89 = v187;
    v187[22] = v230;
    v89[23] = v88;

    v90 = v177;
    v91 = v187;
    v187[24] = v231;
    v91[25] = v90;

    v92 = v178;
    v93 = v187;
    v187[26] = v232;
    v93[27] = v92;

    v94 = v179;
    v95 = v187;
    v187[28] = v233;
    v95[29] = v94;

    v96 = v180;
    v97 = v187;
    v187[30] = v234;
    v97[31] = v96;

    v98 = v181;
    v99 = v187;
    v187[32] = v235;
    v99[33] = v98;

    v100 = v182;
    v101 = v187;
    v187[34] = v236;
    v101[35] = v100;

    v102 = v183;
    v103 = v187;
    v187[36] = v237;
    v103[37] = v102;

    v104 = v184;
    v105 = v187;
    v187[38] = v238;
    v105[39] = v104;

    v106 = v186;
    v107 = v187;
    v187[40] = v239;
    v107[41] = v106;
    sub_1B0394964();

    if (os_log_type_enabled(v189, v190))
    {
      v108 = v240;
      v132 = sub_1B0E45D78();
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v133 = sub_1B03949A8(0, v131, v131);
      v134 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v135 = &v275;
      v275 = v132;
      v136 = &v274;
      v274 = v133;
      v137 = &v273;
      v273 = v134;
      sub_1B0394A48(3, &v275);
      sub_1B0394A48(7, v135);
      v271 = v219;
      v272 = v165;
      sub_1B03949FC(&v271, v135, v136, v137);
      v138 = v108;
      if (v108)
      {

        __break(1u);
      }

      else
      {
        v271 = v220;
        v272 = v166;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v130 = 0;
        v271 = v221;
        v272 = v167;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v129 = 0;
        v271 = v222;
        v272 = v168;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v128 = 0;
        v271 = v223;
        v272 = v169;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v127 = 0;
        v271 = v224;
        v272 = v170;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v126 = 0;
        v271 = v225;
        v272 = v171;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v125 = 0;
        v271 = v226;
        v272 = v172;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v124 = 0;
        v271 = v227;
        v272 = v173;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v123 = 0;
        v271 = v228;
        v272 = v174;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v122 = 0;
        v271 = v229;
        v272 = v175;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v121 = 0;
        v271 = v230;
        v272 = v176;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v120 = 0;
        v271 = v231;
        v272 = v177;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v119 = 0;
        v271 = v232;
        v272 = v178;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v118 = 0;
        v271 = v233;
        v272 = v179;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v117 = 0;
        v271 = v234;
        v272 = v180;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v116 = 0;
        v271 = v235;
        v272 = v181;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v115 = 0;
        v271 = v236;
        v272 = v182;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v114 = 0;
        v271 = v237;
        v272 = v183;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v113 = 0;
        v271 = v238;
        v272 = v184;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v112 = 0;
        v271 = v239;
        v272 = v186;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        _os_log_impl(&dword_1B0389000, v189, v190, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download completed for UID %u but we can’t get a global message ID for it.", v132, 0x31u);
        sub_1B03998A8(v133, 0, v131);
        sub_1B03998A8(v134, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v189);
    (*(v247 + 8))(v250, v246);
    sub_1B0814D38(*v257, 0, 0, 1);
    v111 = sub_1B0829EAC();
    sub_1B07143A4(v111, v109, *v257, 1);
  }

  else
  {
    v197 = v201;
    v192 = v201;
    v270 = v201;
    v193 = *v257;
    sub_1B07AF800(v265, v264);
    v19 = (v264 + *(v262 + 20));
    v191 = __dst;
    memcpy(__dst, v19, sizeof(__dst));
    sub_1B074E4B4(__dst, &v269);
    sub_1B07AF320(v264);
    v194 = sub_1B07F5E48(v192, v191);
    v195 = v20;
    v196 = v21;
    sub_1B0814D38(v193, v194, v20, v21);
    return sub_1B087510C(v194, v195, v196);
  }
}

uint64_t sub_1B0866074(int a1)
{
  swift_beginAccess();
  sub_1B0A223E8(a1);
  return swift_endAccess();
}

uint64_t sub_1B08660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v30 = a2;
  v33 = a3;
  v34 = a4;
  v36 = sub_1B0875150;
  v37 = sub_1B04020AC;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v22 = *(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8);
  v26 = v22;
  v27 = *(v22 + 64);
  v23 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v22 - v23;
  v56 = v5;
  v55 = v6;
  v53 = v7;
  v54 = v8;
  v52 = v4;
  v39 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v39);
  v42 = 1;
  sub_1B0E44838();
  v24 = v9;
  v40 = sub_1B0E44AC8();

  sub_1B07AF800(v25, v29);
  MEMORY[0x1E69E5928](v30);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v35 = 7;
  v31 = (v28 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = v28;
  v12 = v10;
  v13 = v29;
  v38 = v12;
  *(v12 + 16) = v4;
  sub_1B07AF768(v13, v12 + v11);
  v14 = v32;
  v15 = v33;
  v16 = v34;
  v17 = v38;
  *(v38 + v31) = v30;
  v18 = (v17 + v14);
  *v18 = v15;
  v18[1] = v16;

  v19 = swift_allocObject();
  v20 = v38;
  v43 = v19;
  *(v19 + 16) = v36;
  *(v19 + 24) = v20;

  v50 = v37;
  v51 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = 0;
  v48 = sub_1B0402058;
  v49 = &block_descriptor_2868;
  v41 = _Block_copy(&aBlock);

  [v39 groupInsideWriteTransactionWithDescription:v40 block:v41];
  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v40);
    MEMORY[0x1E69E5920](v39);
  }

  return result;
}

char *sub_1B08664FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v266 = a1;
  v268 = a2;
  v267 = a3;
  v275 = a4;
  v217 = sub_1B074E050;
  v218 = sub_1B0394C30;
  v219 = sub_1B0394C24;
  v220 = sub_1B074DFFC;
  v221 = sub_1B039BA88;
  v222 = sub_1B039BB94;
  v223 = sub_1B0394C24;
  v224 = sub_1B039BBA0;
  v225 = sub_1B039BC08;
  v226 = sub_1B06BA324;
  v227 = sub_1B074E0E4;
  v228 = sub_1B039BCF8;
  v229 = sub_1B0875270;
  v230 = sub_1B03B0DF8;
  v231 = sub_1B087527C;
  v232 = sub_1B039BC08;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0399178;
  v236 = sub_1B0398F5C;
  v237 = sub_1B0398F5C;
  v238 = sub_1B039BA94;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0399178;
  v242 = sub_1B0398F5C;
  v243 = sub_1B0398F5C;
  v244 = sub_1B03991EC;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0398F5C;
  v247 = sub_1B03993BC;
  v248 = sub_1B0398F5C;
  v249 = sub_1B0398F5C;
  v250 = sub_1B039BCEC;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0398F5C;
  v253 = sub_1B0399260;
  v254 = sub_1B0398F5C;
  v255 = sub_1B0398F5C;
  v256 = sub_1B03991EC;
  v289 = 0;
  v288 = 0;
  v286 = 0;
  v287 = 0;
  v285 = 0;
  v284 = 0;
  v281 = 0;
  v282 = 0;
  v257 = 0;
  v260 = 0;
  v258 = (*(*(_s21AttachmentPersistenceVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v259 = &v113 - v258;
  v261 = sub_1B0E439A8();
  v262 = *(v261 - 8);
  v263 = v261 - 8;
  v264 = (*(v262 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v260);
  v265 = &v113 - v264;
  v269 = _s6LoggerVMa_1(v5);
  v271 = *(*(v269 - 8) + 64);
  v270 = (v271 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v275);
  v272 = &v113 - v270;
  v273 = (v271 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v274 = &v113 - v273;
  v289 = v7;
  v288 = v8;
  v286 = v9;
  v287 = v10;
  v285 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v275)
  {
    v214 = v267;
    v215 = v275;
    v11 = v265;
    v164 = v275;
    v163 = v267;
    v281 = v267;
    v282 = v275;
    v156 = &unk_1EB737000;
    sub_1B074B69C(v216 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v274);
    (*(v262 + 16))(v11, v274, v261);
    sub_1B074B764(v274);

    sub_1B074B69C(v216 + v156[299], v272);
    v12 = (v272 + *(v269 + 20));
    v159 = *v12;
    v160 = *(v12 + 1);
    v161 = *(v12 + 1);
    v162 = *(v12 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v272);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v158 = 36;
    v181 = 7;
    v13 = swift_allocObject();
    v14 = v160;
    v15 = v161;
    v16 = v162;
    v166 = v13;
    *(v13 + 16) = v159;
    *(v13 + 20) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_allocObject();
    v18 = v160;
    v19 = v161;
    v20 = v162;
    v157 = v17;
    *(v17 + 16) = v159;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;

    v180 = 32;
    v21 = swift_allocObject();
    v22 = v157;
    v170 = v21;
    *(v21 + 16) = v217;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    v23 = swift_allocObject();
    v24 = v160;
    v25 = v161;
    v26 = v162;
    v173 = v23;
    *(v23 + 16) = v159;
    *(v23 + 20) = v24;
    *(v23 + 24) = v25;
    *(v23 + 32) = v26;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = swift_allocObject();
    v28 = v164;
    v29 = v27;
    v30 = v268;
    v176 = v29;
    *(v29 + 16) = v163;
    *(v29 + 24) = v28;
    MEMORY[0x1E69E5928](v30);
    v184 = 24;
    v182 = swift_allocObject();
    *(v182 + 16) = v268;
    v212 = sub_1B0E43988();
    v213 = sub_1B0E45908();
    v178 = 17;
    v185 = swift_allocObject();
    v168 = 16;
    *(v185 + 16) = 16;
    v186 = swift_allocObject();
    v179 = 4;
    *(v186 + 16) = 4;
    v31 = swift_allocObject();
    v165 = v31;
    *(v31 + 16) = v218;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v165;
    v187 = v32;
    *(v32 + 16) = v219;
    *(v32 + 24) = v33;
    v188 = swift_allocObject();
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v166;
    v167 = v34;
    *(v34 + 16) = v220;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v167;
    v190 = v36;
    *(v36 + 16) = v221;
    *(v36 + 24) = v37;
    v191 = swift_allocObject();
    *(v191 + 16) = v168;
    v192 = swift_allocObject();
    *(v192 + 16) = v179;
    v38 = swift_allocObject();
    v169 = v38;
    *(v38 + 16) = v222;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v169;
    v193 = v39;
    *(v39 + 16) = v223;
    *(v39 + 24) = v40;
    v194 = swift_allocObject();
    *(v194 + 16) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = v179;
    v41 = swift_allocObject();
    v42 = v170;
    v171 = v41;
    *(v41 + 16) = v224;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v171;
    v196 = v43;
    *(v43 + 16) = v225;
    *(v43 + 24) = v44;
    v197 = swift_allocObject();
    *(v197 + 16) = 112;
    v198 = swift_allocObject();
    v175 = 8;
    *(v198 + 16) = 8;
    v172 = swift_allocObject();
    *(v172 + 16) = 0x786F626C69616DLL;
    v45 = swift_allocObject();
    v46 = v172;
    v199 = v45;
    *(v45 + 16) = v226;
    *(v45 + 24) = v46;
    v200 = swift_allocObject();
    *(v200 + 16) = 37;
    v201 = swift_allocObject();
    *(v201 + 16) = v175;
    v47 = swift_allocObject();
    v48 = v173;
    v174 = v47;
    *(v47 + 16) = v227;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v174;
    v202 = v49;
    *(v49 + 16) = v228;
    *(v49 + 24) = v50;
    v203 = swift_allocObject();
    *(v203 + 16) = 0;
    v204 = swift_allocObject();
    *(v204 + 16) = v175;
    v51 = swift_allocObject();
    v52 = v176;
    v177 = v51;
    *(v51 + 16) = v229;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v177;
    v205 = v53;
    *(v53 + 16) = v230;
    *(v53 + 24) = v54;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v179;
    v55 = swift_allocObject();
    v56 = v182;
    v183 = v55;
    *(v55 + 16) = v231;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v183;
    v209 = v57;
    *(v57 + 16) = v232;
    *(v57 + 24) = v58;
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v208 = sub_1B0E46A48();
    v210 = v59;

    v60 = v185;
    v61 = v210;
    *v210 = v233;
    v61[1] = v60;

    v62 = v186;
    v63 = v210;
    v210[2] = v234;
    v63[3] = v62;

    v64 = v187;
    v65 = v210;
    v210[4] = v235;
    v65[5] = v64;

    v66 = v188;
    v67 = v210;
    v210[6] = v236;
    v67[7] = v66;

    v68 = v189;
    v69 = v210;
    v210[8] = v237;
    v69[9] = v68;

    v70 = v190;
    v71 = v210;
    v210[10] = v238;
    v71[11] = v70;

    v72 = v191;
    v73 = v210;
    v210[12] = v239;
    v73[13] = v72;

    v74 = v192;
    v75 = v210;
    v210[14] = v240;
    v75[15] = v74;

    v76 = v193;
    v77 = v210;
    v210[16] = v241;
    v77[17] = v76;

    v78 = v194;
    v79 = v210;
    v210[18] = v242;
    v79[19] = v78;

    v80 = v195;
    v81 = v210;
    v210[20] = v243;
    v81[21] = v80;

    v82 = v196;
    v83 = v210;
    v210[22] = v244;
    v83[23] = v82;

    v84 = v197;
    v85 = v210;
    v210[24] = v245;
    v85[25] = v84;

    v86 = v198;
    v87 = v210;
    v210[26] = v246;
    v87[27] = v86;

    v88 = v199;
    v89 = v210;
    v210[28] = v247;
    v89[29] = v88;

    v90 = v200;
    v91 = v210;
    v210[30] = v248;
    v91[31] = v90;

    v92 = v201;
    v93 = v210;
    v210[32] = v249;
    v93[33] = v92;

    v94 = v202;
    v95 = v210;
    v210[34] = v250;
    v95[35] = v94;

    v96 = v203;
    v97 = v210;
    v210[36] = v251;
    v97[37] = v96;

    v98 = v204;
    v99 = v210;
    v210[38] = v252;
    v99[39] = v98;

    v100 = v205;
    v101 = v210;
    v210[40] = v253;
    v101[41] = v100;

    v102 = v206;
    v103 = v210;
    v210[42] = v254;
    v103[43] = v102;

    v104 = v207;
    v105 = v210;
    v210[44] = v255;
    v105[45] = v104;

    v106 = v209;
    v107 = v210;
    v210[46] = v256;
    v107[47] = v106;
    sub_1B0394964();

    if (os_log_type_enabled(v212, v213))
    {
      v108 = v257;
      v149 = sub_1B0E45D78();
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v150 = sub_1B03949A8(0, v148, v148);
      v151 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v152 = &v280;
      v280 = v149;
      v153 = &v279;
      v279 = v150;
      v154 = &v278;
      v278 = v151;
      sub_1B0394A48(3, &v280);
      sub_1B0394A48(8, v152);
      v276 = v233;
      v277 = v185;
      sub_1B03949FC(&v276, v152, v153, v154);
      v155 = v108;
      if (v108)
      {

        __break(1u);
      }

      else
      {
        v276 = v234;
        v277 = v186;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v147 = 0;
        v276 = v235;
        v277 = v187;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v146 = 0;
        v276 = v236;
        v277 = v188;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v145 = 0;
        v276 = v237;
        v277 = v189;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v144 = 0;
        v276 = v238;
        v277 = v190;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v143 = 0;
        v276 = v239;
        v277 = v191;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v142 = 0;
        v276 = v240;
        v277 = v192;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v141 = 0;
        v276 = v241;
        v277 = v193;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v140 = 0;
        v276 = v242;
        v277 = v194;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v139 = 0;
        v276 = v243;
        v277 = v195;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v138 = 0;
        v276 = v244;
        v277 = v196;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v137 = 0;
        v276 = v245;
        v277 = v197;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v136 = 0;
        v276 = v246;
        v277 = v198;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v135 = 0;
        v276 = v247;
        v277 = v199;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v134 = 0;
        v276 = v248;
        v277 = v200;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v133 = 0;
        v276 = v249;
        v277 = v201;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v132 = 0;
        v276 = v250;
        v277 = v202;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v131 = 0;
        v276 = v251;
        v277 = v203;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v130 = 0;
        v276 = v252;
        v277 = v204;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v129 = 0;
        v276 = v253;
        v277 = v205;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v128 = 0;
        v276 = v254;
        v277 = v206;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v127 = 0;
        v276 = v255;
        v277 = v207;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        v126 = 0;
        v276 = v256;
        v277 = v209;
        sub_1B03949FC(&v276, &v280, &v279, &v278);
        _os_log_impl(&dword_1B0389000, v212, v213, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Setting %ld character summary for message UID %u.", v149, 0x3Bu);
        sub_1B03998A8(v150, 0, v148);
        sub_1B03998A8(v151, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v212);
    (*(v262 + 8))(v265, v261);
  }

  v124 = sub_1B07982B0();
  v109 = sub_1B0798040();
  v125 = sub_1B06E5FB4(v109, 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v275)
  {
    v122 = v267;
    v123 = v275;
    v119 = v275;
    v120 = sub_1B0E44AC8();

    v121 = v120;
  }

  else
  {
    v121 = 0;
  }

  v117 = v121;
  [v268 setMessageData:v124 isPartial:v125 summary:?];
  MEMORY[0x1E69E5920](v117);
  MEMORY[0x1E69E5920](v124);
  result = sub_1B0825730([v268 globalMessageID]);
  v118 = result;
  if ((v111 & 1) == 0)
  {
    v116 = v118;
    v114 = v118;
    v284 = v118;
    sub_1B07C93A8(v259);
    v112 = (v266 + *(type metadata accessor for InProgressMessageDownload.EMLX(0) + 20));
    v113 = __dst;
    memcpy(__dst, v112, sizeof(__dst));
    sub_1B074E4B4(__dst, &v283);
    v115 = sub_1B07A5A98();
    sub_1B074E868();
    sub_1B07CD084(v114);

    return sub_1B07CDB7C(v259);
  }

  return result;
}

uint64_t sub_1B08689A0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1B0868AB0(a1, a2, v12);
  v11 = v12[0];
  v7 = v12[1];
  v8 = v12[2];
  v9 = v12[3];
  v10 = v12[4];
  v6 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v6);
  sub_1B07B639C(v7, v8, v9, v10, a1);
  MEMORY[0x1E69E5920](v6);

  return v11;
}

uint64_t sub_1B0868AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = 0;
  v34 = a1;
  v33 = a2;
  v10 = swift_allocObject();
  v31 = v10 + 2;
  v10[2] = sub_1B07B681C();
  v10[3] = v3;
  v10[4] = v4;
  v10[5] = v5;
  v28[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v6 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v28, v9, v6);
  v27 = v28[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  sub_1B074AEA4();
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(&v27);
  v20 = v28[2];
  v21 = v28[3];
  v22 = v28[4];
  v23 = v28[5];
  v24 = v28[6];
  v25 = v28[7];
  v26 = v28[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
  sub_1B074AF90();
  sub_1B071CD70();
  sub_1B0E46748();

  sub_1B0875294();
  memcpy(__dst, v29, sizeof(__dst));
  memcpy(v19, __dst, sizeof(v19));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F8, &qword_1B0E9DE28);
  sub_1B08752E4();
  sub_1B0E45738();
  memcpy(v36, v30, sizeof(v36));
  sub_1B087570C(v36, v18);
  memcpy(v17, v36, sizeof(v17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2730, &unk_1B0E9DE50);
  sub_1B0875818();
  v11 = sub_1B0E45378();
  swift_beginAccess();
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v16 = v10[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B08758A0();

  result = v11;
  *a3 = v11;
  a3[1] = v12;
  a3[2] = v13;
  a3[3] = v14;
  a3[4] = v16;
  return result;
}

id sub_1B0868E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a3;
  v8 = a1;
  v6[1] = a2;
  v16 = 0;
  v15 = 0;
  v11 = sub_1B0E42E68();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v11);
  v12 = v6 - v7;
  v16 = *v8;
  v15 = v4;
  (*(v9 + 16))(v3);
  v14 = sub_1B0868F80(v12);
  (*(v9 + 8))(v12, v11);
  result = v14;
  *v13 = v14;
  return result;
}

id sub_1B0868F80(uint64_t a1)
{
  v45 = a1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v10 - v34;
  v36 = sub_1B0E42E68();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (v37[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v10 - v39;
  v41 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v39);
  v42 = &v10 - v41;
  v43 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v41);
  v44 = &v10 - v43;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v48 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v10 - v48;
  v50 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v10 - v50;
  v56 = v8;
  v55 = v1;
  v52 = sub_1B0721E7C(v8);
  if (!v52)
  {
    return 0;
  }

  v32 = v52;
  v27 = v52;
  v54 = v52;
  v30 = [v52 itemsToCopy];
  sub_1B071C094();
  v29 = sub_1B0E451B8();
  v53 = v29;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  v31 = sub_1B0E45748();

  MEMORY[0x1E69E5920](v30);
  if (v31)
  {
LABEL_19:
    MEMORY[0x1E69E5920](v27);
    return 0;
  }

  MEMORY[0x1E69E5928](v27);
  v21 = [v27 mailboxURL];
  sub_1B0E42DE8();
  v22 = v37[4];
  v23 = v37 + 4;
  v22(v51, v44, v36);
  MEMORY[0x1E69E5920](v27);
  v24 = v37[7];
  v25 = v37 + 7;
  v24(v51, 0, 1, v36);
  v26 = [v27 destinationMailboxURL];
  if (v26)
  {
    v20 = v26;
    v19 = v26;
    sub_1B0E42DE8();
    v22(v49, v42, v36);
    v24(v49, 0, 1, v36);
    MEMORY[0x1E69E5920](v19);
  }

  else
  {
    v24(v49, 1, 1, v36);
  }

  v16 = &v35[*(v33 + 48)];
  sub_1B071C180(v51, v35);
  sub_1B071C180(v49, v16);
  v17 = v37[6];
  v18 = v37 + 6;
  if (v17(v35, 1, v36) == 1)
  {
    if (v17(v16, 1, v36) == 1)
    {
      sub_1B06E3800(v35);
      v15 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_1B071C180(v35, v47);
    if (v17(v16, 1, v36) != 1)
    {
      v22(v42, v47, v36);
      v22(v40, v16, v36);
      sub_1B071C3D4();
      v14 = sub_1B0E44A28();
      v13 = v37[1];
      v12 = v37 + 1;
      v13(v40, v36);
      v13(v42, v36);
      sub_1B06E3800(v35);
      v15 = v14;
      goto LABEL_14;
    }

    (v37[1])(v47, v36);
  }

  sub_1B071C2A8(v35);
  v15 = 0;
LABEL_14:
  v11 = v15;
  sub_1B06E3800(v49);
  sub_1B06E3800(v51);
  MEMORY[0x1E69E5920](v21);
  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

  return v27;
}

void sub_1B0869730(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v17 = *a1;
  v11 = v17;
  v16 = a2 + 16;
  v15 = sub_1B0E46A48();
  v12 = [v17 itemsToCopy];
  sub_1B071C094();
  sub_1B0E451B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  sub_1B0E45798();
  MEMORY[0x1E69E5920](v12);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
    sub_1B0E46518();
    if (!v13)
    {
      break;
    }

    MEMORY[0x1E69E5928](v17);
    (MEMORY[0x1E69E5928])();
    sub_1B0824FC8(v17, v13);
    if (!v3)
    {
      MEMORY[0x1E69E5928](v17);
      [v17 persistentID];
      MEMORY[0x1E69E5920](v17);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();
      swift_endAccess();
      (MEMORY[0x1E69E5920])();
      (MEMORY[0x1E69E5920])();
      break;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    sub_1B0E452E8();

    (MEMORY[0x1E69E5920])();
  }

  sub_1B039E440(v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
  sub_1B0875684();
  v9 = sub_1B0E45748();

  if (v9)
  {
    MEMORY[0x1E69E5928](v11);
    [v11 persistentID];
    MEMORY[0x1E69E5920](v11);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
    sub_1B0E454D8();
    swift_endAccess();
    (MEMORY[0x1E69E5920])();
    *a3 = sub_1B0E46A48();
    sub_1B039E440(&v15);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B0E452A8();

    v6 = [v11 itemsToCopy];
    sub_1B0E451B8();
    v7 = sub_1B0E452A8();

    MEMORY[0x1E69E5920](v6);
    if (v8 == v7)
    {
      v4 = v15;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = v4;
    }

    else
    {
      v5 = sub_1B0E46A48();
    }

    *a3 = v5;
    sub_1B039E440(&v15);
  }
}

uint64_t sub_1B0869C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v286 = a2;
  v365 = a1;
  v288 = sub_1B074E050;
  v289 = sub_1B0394C30;
  v290 = sub_1B0394C24;
  v291 = sub_1B074DFFC;
  v292 = sub_1B039BA88;
  v293 = sub_1B039BB94;
  v294 = sub_1B0394C24;
  v295 = sub_1B039BBA0;
  v296 = sub_1B039BC08;
  v297 = 0x786F626C69616DLL;
  v298 = sub_1B06BA324;
  v299 = sub_1B074E0E4;
  v300 = sub_1B039BCF8;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0399178;
  v304 = sub_1B0398F5C;
  v305 = sub_1B0398F5C;
  v306 = sub_1B039BA94;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0399178;
  v310 = sub_1B0398F5C;
  v311 = sub_1B0398F5C;
  v312 = sub_1B03991EC;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B03993BC;
  v316 = sub_1B0398F5C;
  v317 = sub_1B0398F5C;
  v318 = sub_1B039BCEC;
  v319 = sub_1B074E050;
  v320 = sub_1B0394C24;
  v321 = sub_1B074DFFC;
  v322 = sub_1B039BA88;
  v323 = sub_1B0394C24;
  v324 = sub_1B039BBA0;
  v325 = sub_1B039BC08;
  v326 = sub_1B06BA324;
  v327 = sub_1B074E0E4;
  v328 = sub_1B039BCF8;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0399178;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B039BA94;
  v335 = sub_1B0398F5C;
  v336 = sub_1B0398F5C;
  v337 = sub_1B0399178;
  v338 = sub_1B0398F5C;
  v339 = sub_1B0398F5C;
  v340 = sub_1B03991EC;
  v341 = sub_1B0398F5C;
  v342 = sub_1B0398F5C;
  v343 = sub_1B03993BC;
  v344 = sub_1B0398F5C;
  v345 = sub_1B0398F5C;
  v346 = sub_1B039BCEC;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v347 = 0;
  v377 = 0;
  v362 = 0;
  v348 = sub_1B0E439A8();
  v349 = *(v348 - 8);
  v350 = v348 - 8;
  v351 = (*(v349 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v352 = v161 - v351;
  v353 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v354 = v161 - v353;
  v355 = _s6LoggerVMa_1(v5);
  v356 = (*(*(v355 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v355);
  v357 = v161 - v356;
  v358 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v161 - v356);
  v359 = v161 - v358;
  v360 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v361 = v161 - v360;
  v363 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2740, &qword_1B0EA1FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v362);
  v364 = v161 - v363;
  v366 = _s6UploadVMa(v9);
  v367 = *(v366 - 8);
  v368 = v366 - 8;
  v369 = (*(v367 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v365);
  v370 = v161 - v369;
  v385 = v161 - v369;
  v384 = v11;
  v383 = v2;
  v371 = [v11 destinationMessage];
  if (v371)
  {
    v285 = v371;
    v284 = v371;
    v377 = v371;
    sub_1B086D1C0(v371, v364);
    if ((*(v367 + 48))(v364, 1, v366) == 1)
    {
      v13 = v354;
      sub_1B08758FC(v364);
      v239 = &unk_1EB737000;
      sub_1B074B69C(v287 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v361);
      (*(v349 + 16))(v13, v361, v348);
      sub_1B074B764(v361);

      sub_1B074B69C(v287 + v239[299], v359);
      v14 = (v359 + *(v355 + 20));
      v242 = *v14;
      v243 = *(v14 + 1);
      v244 = *(v14 + 1);
      v245 = *(v14 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v359);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v241 = 36;
      v258 = 7;
      v15 = swift_allocObject();
      v16 = v243;
      v17 = v244;
      v18 = v245;
      v247 = v15;
      *(v15 + 16) = v242;
      *(v15 + 20) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v18;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = swift_allocObject();
      v20 = v243;
      v21 = v244;
      v22 = v245;
      v240 = v19;
      *(v19 + 16) = v242;
      *(v19 + 20) = v20;
      *(v19 + 24) = v21;
      *(v19 + 32) = v22;

      v257 = 32;
      v23 = swift_allocObject();
      v24 = v240;
      v252 = v23;
      *(v23 + 16) = v288;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      v25 = swift_allocObject();
      v26 = v243;
      v27 = v244;
      v28 = v245;
      v259 = v25;
      *(v25 + 16) = v242;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v282 = sub_1B0E43988();
      v283 = sub_1B0E458E8();
      v255 = 17;
      v261 = swift_allocObject();
      v249 = 16;
      *(v261 + 16) = 16;
      v262 = swift_allocObject();
      v251 = 4;
      *(v262 + 16) = 4;
      v29 = swift_allocObject();
      v246 = v29;
      *(v29 + 16) = v289;
      *(v29 + 24) = 0;
      v30 = swift_allocObject();
      v31 = v246;
      v263 = v30;
      *(v30 + 16) = v290;
      *(v30 + 24) = v31;
      v264 = swift_allocObject();
      *(v264 + 16) = 0;
      v265 = swift_allocObject();
      *(v265 + 16) = 1;
      v32 = swift_allocObject();
      v33 = v247;
      v248 = v32;
      *(v32 + 16) = v291;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v248;
      v266 = v34;
      *(v34 + 16) = v292;
      *(v34 + 24) = v35;
      v267 = swift_allocObject();
      *(v267 + 16) = v249;
      v268 = swift_allocObject();
      *(v268 + 16) = v251;
      v36 = swift_allocObject();
      v250 = v36;
      *(v36 + 16) = v293;
      *(v36 + 24) = 0;
      v37 = swift_allocObject();
      v38 = v250;
      v269 = v37;
      *(v37 + 16) = v294;
      *(v37 + 24) = v38;
      v270 = swift_allocObject();
      *(v270 + 16) = 0;
      v271 = swift_allocObject();
      *(v271 + 16) = v251;
      v39 = swift_allocObject();
      v40 = v252;
      v253 = v39;
      *(v39 + 16) = v295;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v253;
      v272 = v41;
      *(v41 + 16) = v296;
      *(v41 + 24) = v42;
      v273 = swift_allocObject();
      *(v273 + 16) = 112;
      v274 = swift_allocObject();
      v256 = 8;
      *(v274 + 16) = 8;
      v254 = swift_allocObject();
      *(v254 + 16) = v297;
      v43 = swift_allocObject();
      v44 = v254;
      v275 = v43;
      *(v43 + 16) = v298;
      *(v43 + 24) = v44;
      v276 = swift_allocObject();
      *(v276 + 16) = 37;
      v277 = swift_allocObject();
      *(v277 + 16) = v256;
      v45 = swift_allocObject();
      v46 = v259;
      v260 = v45;
      *(v45 + 16) = v299;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v260;
      v279 = v47;
      *(v47 + 16) = v300;
      *(v47 + 24) = v48;
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v278 = sub_1B0E46A48();
      v280 = v49;

      v50 = v261;
      v51 = v280;
      *v280 = v301;
      v51[1] = v50;

      v52 = v262;
      v53 = v280;
      v280[2] = v302;
      v53[3] = v52;

      v54 = v263;
      v55 = v280;
      v280[4] = v303;
      v55[5] = v54;

      v56 = v264;
      v57 = v280;
      v280[6] = v304;
      v57[7] = v56;

      v58 = v265;
      v59 = v280;
      v280[8] = v305;
      v59[9] = v58;

      v60 = v266;
      v61 = v280;
      v280[10] = v306;
      v61[11] = v60;

      v62 = v267;
      v63 = v280;
      v280[12] = v307;
      v63[13] = v62;

      v64 = v268;
      v65 = v280;
      v280[14] = v308;
      v65[15] = v64;

      v66 = v269;
      v67 = v280;
      v280[16] = v309;
      v67[17] = v66;

      v68 = v270;
      v69 = v280;
      v280[18] = v310;
      v69[19] = v68;

      v70 = v271;
      v71 = v280;
      v280[20] = v311;
      v71[21] = v70;

      v72 = v272;
      v73 = v280;
      v280[22] = v312;
      v73[23] = v72;

      v74 = v273;
      v75 = v280;
      v280[24] = v313;
      v75[25] = v74;

      v76 = v274;
      v77 = v280;
      v280[26] = v314;
      v77[27] = v76;

      v78 = v275;
      v79 = v280;
      v280[28] = v315;
      v79[29] = v78;

      v80 = v276;
      v81 = v280;
      v280[30] = v316;
      v81[31] = v80;

      v82 = v277;
      v83 = v280;
      v280[32] = v317;
      v83[33] = v82;

      v84 = v279;
      v85 = v280;
      v280[34] = v318;
      v85[35] = v84;
      sub_1B0394964();

      if (os_log_type_enabled(v282, v283))
      {
        v86 = v347;
        v232 = sub_1B0E45D78();
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v233 = sub_1B03949A8(0, v231, v231);
        v234 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v235 = &v376;
        v376 = v232;
        v236 = &v375;
        v375 = v233;
        v237 = &v374;
        v374 = v234;
        sub_1B0394A48(3, &v376);
        sub_1B0394A48(6, v235);
        v372 = v301;
        v373 = v261;
        sub_1B03949FC(&v372, v235, v236, v237);
        v238 = v86;
        if (v86)
        {

          __break(1u);
        }

        else
        {
          v372 = v302;
          v373 = v262;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v230 = 0;
          v372 = v303;
          v373 = v263;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v229 = 0;
          v372 = v304;
          v373 = v264;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v228 = 0;
          v372 = v305;
          v373 = v265;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v227 = 0;
          v372 = v306;
          v373 = v266;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v226 = 0;
          v372 = v307;
          v373 = v267;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v225 = 0;
          v372 = v308;
          v373 = v268;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v224 = 0;
          v372 = v309;
          v373 = v269;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v223 = 0;
          v372 = v310;
          v373 = v270;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v222 = 0;
          v372 = v311;
          v373 = v271;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v221 = 0;
          v372 = v312;
          v373 = v272;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v220 = 0;
          v372 = v313;
          v373 = v273;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v219 = 0;
          v372 = v314;
          v373 = v274;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v218 = 0;
          v372 = v315;
          v373 = v275;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v217 = 0;
          v372 = v316;
          v373 = v276;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v216 = 0;
          v372 = v317;
          v373 = v277;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          v215 = 0;
          v372 = v318;
          v373 = v279;
          sub_1B03949FC(&v372, &v376, &v375, &v374);
          _os_log_impl(&dword_1B0389000, v282, v283, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to encode message as upload data. Ignoring.", v232, 0x2Bu);
          sub_1B03998A8(v233, 0, v231);
          sub_1B03998A8(v234, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v282);
      (*(v349 + 8))(v354, v348);
      (*(v367 + 56))(v286, 1, 1, v366);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1B0875A20(v364, v370);
      sub_1B0828B38(v370, v286);
      (*(v367 + 56))(v286, 0, 1, v366);
      sub_1B0828D04(v370);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v87 = v352;
    v170 = &unk_1EB737000;
    sub_1B074B69C(v287 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v357);
    (*(v349 + 16))(v87, v357, v348);
    sub_1B074B764(v357);

    sub_1B074B69C(v287 + v170[299], v359);
    v88 = (v359 + *(v355 + 20));
    v173 = *v88;
    v174 = *(v88 + 1);
    v175 = *(v88 + 1);
    v176 = *(v88 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v359);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v172 = 36;
    v189 = 7;
    v89 = swift_allocObject();
    v90 = v174;
    v91 = v175;
    v92 = v176;
    v178 = v89;
    *(v89 + 16) = v173;
    *(v89 + 20) = v90;
    *(v89 + 24) = v91;
    *(v89 + 32) = v92;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v93 = swift_allocObject();
    v94 = v174;
    v95 = v175;
    v96 = v176;
    v171 = v93;
    *(v93 + 16) = v173;
    *(v93 + 20) = v94;
    *(v93 + 24) = v95;
    *(v93 + 32) = v96;

    v188 = 32;
    v97 = swift_allocObject();
    v98 = v171;
    v183 = v97;
    *(v97 + 16) = v319;
    *(v97 + 24) = v98;
    sub_1B0394868();
    sub_1B0394868();

    v99 = swift_allocObject();
    v100 = v174;
    v101 = v175;
    v102 = v176;
    v190 = v99;
    *(v99 + 16) = v173;
    *(v99 + 20) = v100;
    *(v99 + 24) = v101;
    *(v99 + 32) = v102;

    v213 = sub_1B0E43988();
    v214 = sub_1B0E458E8();
    v186 = 17;
    v192 = swift_allocObject();
    v180 = 16;
    *(v192 + 16) = 16;
    v193 = swift_allocObject();
    v182 = 4;
    *(v193 + 16) = 4;
    v103 = swift_allocObject();
    v177 = v103;
    *(v103 + 16) = v289;
    *(v103 + 24) = 0;
    v104 = swift_allocObject();
    v105 = v177;
    v194 = v104;
    *(v104 + 16) = v320;
    *(v104 + 24) = v105;
    v195 = swift_allocObject();
    *(v195 + 16) = 0;
    v196 = swift_allocObject();
    *(v196 + 16) = 1;
    v106 = swift_allocObject();
    v107 = v178;
    v179 = v106;
    *(v106 + 16) = v321;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v179;
    v197 = v108;
    *(v108 + 16) = v322;
    *(v108 + 24) = v109;
    v198 = swift_allocObject();
    *(v198 + 16) = v180;
    v199 = swift_allocObject();
    *(v199 + 16) = v182;
    v110 = swift_allocObject();
    v181 = v110;
    *(v110 + 16) = v293;
    *(v110 + 24) = 0;
    v111 = swift_allocObject();
    v112 = v181;
    v200 = v111;
    *(v111 + 16) = v323;
    *(v111 + 24) = v112;
    v201 = swift_allocObject();
    *(v201 + 16) = 0;
    v202 = swift_allocObject();
    *(v202 + 16) = v182;
    v113 = swift_allocObject();
    v114 = v183;
    v184 = v113;
    *(v113 + 16) = v324;
    *(v113 + 24) = v114;
    v115 = swift_allocObject();
    v116 = v184;
    v203 = v115;
    *(v115 + 16) = v325;
    *(v115 + 24) = v116;
    v204 = swift_allocObject();
    *(v204 + 16) = 112;
    v205 = swift_allocObject();
    v187 = 8;
    *(v205 + 16) = 8;
    v185 = swift_allocObject();
    *(v185 + 16) = v297;
    v117 = swift_allocObject();
    v118 = v185;
    v206 = v117;
    *(v117 + 16) = v326;
    *(v117 + 24) = v118;
    v207 = swift_allocObject();
    *(v207 + 16) = 37;
    v208 = swift_allocObject();
    *(v208 + 16) = v187;
    v119 = swift_allocObject();
    v120 = v190;
    v191 = v119;
    *(v119 + 16) = v327;
    *(v119 + 24) = v120;
    v121 = swift_allocObject();
    v122 = v191;
    v210 = v121;
    *(v121 + 16) = v328;
    *(v121 + 24) = v122;
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v209 = sub_1B0E46A48();
    v211 = v123;

    v124 = v192;
    v125 = v211;
    *v211 = v329;
    v125[1] = v124;

    v126 = v193;
    v127 = v211;
    v211[2] = v330;
    v127[3] = v126;

    v128 = v194;
    v129 = v211;
    v211[4] = v331;
    v129[5] = v128;

    v130 = v195;
    v131 = v211;
    v211[6] = v332;
    v131[7] = v130;

    v132 = v196;
    v133 = v211;
    v211[8] = v333;
    v133[9] = v132;

    v134 = v197;
    v135 = v211;
    v211[10] = v334;
    v135[11] = v134;

    v136 = v198;
    v137 = v211;
    v211[12] = v335;
    v137[13] = v136;

    v138 = v199;
    v139 = v211;
    v211[14] = v336;
    v139[15] = v138;

    v140 = v200;
    v141 = v211;
    v211[16] = v337;
    v141[17] = v140;

    v142 = v201;
    v143 = v211;
    v211[18] = v338;
    v143[19] = v142;

    v144 = v202;
    v145 = v211;
    v211[20] = v339;
    v145[21] = v144;

    v146 = v203;
    v147 = v211;
    v211[22] = v340;
    v147[23] = v146;

    v148 = v204;
    v149 = v211;
    v211[24] = v341;
    v149[25] = v148;

    v150 = v205;
    v151 = v211;
    v211[26] = v342;
    v151[27] = v150;

    v152 = v206;
    v153 = v211;
    v211[28] = v343;
    v153[29] = v152;

    v154 = v207;
    v155 = v211;
    v211[30] = v344;
    v155[31] = v154;

    v156 = v208;
    v157 = v211;
    v211[32] = v345;
    v157[33] = v156;

    v158 = v210;
    v159 = v211;
    v211[34] = v346;
    v159[35] = v158;
    sub_1B0394964();

    if (os_log_type_enabled(v213, v214))
    {
      v160 = v347;
      v163 = sub_1B0E45D78();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v164 = sub_1B03949A8(0, v162, v162);
      v165 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v166 = &v382;
      v382 = v163;
      v167 = &v381;
      v381 = v164;
      v168 = &v380;
      v380 = v165;
      sub_1B0394A48(3, &v382);
      sub_1B0394A48(6, v166);
      v378 = v329;
      v379 = v192;
      sub_1B03949FC(&v378, v166, v167, v168);
      v169 = v160;
      if (v160)
      {

        __break(1u);
      }

      else
      {
        v378 = v330;
        v379 = v193;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[16] = 0;
        v378 = v331;
        v379 = v194;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[15] = 0;
        v378 = v332;
        v379 = v195;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[14] = 0;
        v378 = v333;
        v379 = v196;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[13] = 0;
        v378 = v334;
        v379 = v197;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[12] = 0;
        v378 = v335;
        v379 = v198;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[11] = 0;
        v378 = v336;
        v379 = v199;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[10] = 0;
        v378 = v337;
        v379 = v200;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[9] = 0;
        v378 = v338;
        v379 = v201;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[8] = 0;
        v378 = v339;
        v379 = v202;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[7] = 0;
        v378 = v340;
        v379 = v203;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[6] = 0;
        v378 = v341;
        v379 = v204;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[5] = 0;
        v378 = v342;
        v379 = v205;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[4] = 0;
        v378 = v343;
        v379 = v206;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[3] = 0;
        v378 = v344;
        v379 = v207;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[2] = 0;
        v378 = v345;
        v379 = v208;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        v161[1] = 0;
        v378 = v346;
        v379 = v210;
        sub_1B03949FC(&v378, &v382, &v381, &v380);
        _os_log_impl(&dword_1B0389000, v213, v214, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No destination message for local action. Ignoring.", v163, 0x2Bu);
        sub_1B03998A8(v164, 0, v162);
        sub_1B03998A8(v165, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v213);
    (*(v349 + 8))(v352, v348);
    return (*(v367 + 56))(v286, 1, 1, v366);
  }
}

uint64_t sub_1B086D1C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v193 = a1;
  v151 = sub_1B074E050;
  v152 = sub_1B0394C30;
  v153 = sub_1B0394C24;
  v154 = sub_1B074DFFC;
  v155 = sub_1B039BA88;
  v156 = sub_1B039BB94;
  v157 = sub_1B0394C24;
  v158 = sub_1B039BBA0;
  v159 = sub_1B039BC08;
  v160 = sub_1B06BA324;
  v161 = sub_1B074E0E4;
  v162 = sub_1B039BCF8;
  v163 = sub_1B0398F5C;
  v164 = sub_1B0398F5C;
  v165 = sub_1B0399178;
  v166 = sub_1B0398F5C;
  v167 = sub_1B0398F5C;
  v168 = sub_1B039BA94;
  v169 = sub_1B0398F5C;
  v170 = sub_1B0398F5C;
  v171 = sub_1B0399178;
  v172 = sub_1B0398F5C;
  v173 = sub_1B0398F5C;
  v174 = sub_1B03991EC;
  v175 = sub_1B0398F5C;
  v176 = sub_1B0398F5C;
  v177 = sub_1B03993BC;
  v178 = sub_1B0398F5C;
  v179 = sub_1B0398F5C;
  v180 = sub_1B039BCEC;
  v204 = 0;
  v203 = 0;
  v181 = 0;
  v197 = 0;
  v195 = 0;
  v196 = 0;
  v182 = 0;
  v183 = sub_1B0E439A8();
  v184 = *(v183 - 8);
  v185 = v183 - 8;
  v186 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v187 = v85 - v186;
  v188 = _s6LoggerVMa_1(v3);
  v189 = (*(*(v188 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v193);
  v190 = v85 - v189;
  v191 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v192 = v85 - v191;
  v204 = v6;
  v203 = v2;
  swift_unknownObjectRetain();
  objc_opt_self();
  v194 = swift_dynamicCastObjCClass();
  if (v194)
  {
    v148 = v194;
  }

  else
  {
    swift_unknownObjectRelease();
    v148 = 0;
  }

  v147 = v148;
  if (v148)
  {
    v146 = v147;
    v143 = v147;
    v197 = v147;
    v7 = sub_1B086F758(v147);
    v144 = v7;
    v145 = v8;
    if ((v8 & 0xF000000000000000) != 0xF000000000000000)
    {
      v141 = v144;
      v142 = v145;
      v140 = v145;
      v139 = v144;
      v195 = v144;
      v196 = v145;
      swift_unknownObjectRetain();
      sub_1B074B69C(v150 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v192);
      sub_1B0828780(v193, v139, v140, v192, v149);
      return MEMORY[0x1E69E5920](v143);
    }

    MEMORY[0x1E69E5920](v143);
  }

  v10 = v187;
  v94 = &unk_1EB737000;
  sub_1B074B69C(v150 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v190);
  (*(v184 + 16))(v10, v190, v183);
  sub_1B074B764(v190);

  sub_1B074B69C(v150 + v94[299], v192);
  v11 = (v192 + *(v188 + 20));
  v97 = *v11;
  v98 = *(v11 + 1);
  v99 = *(v11 + 1);
  v100 = *(v11 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v192);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v96 = 36;
  v113 = 7;
  v12 = swift_allocObject();
  v13 = v98;
  v14 = v99;
  v15 = v100;
  v102 = v12;
  *(v12 + 16) = v97;
  *(v12 + 20) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v15;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = swift_allocObject();
  v17 = v98;
  v18 = v99;
  v19 = v100;
  v95 = v16;
  *(v16 + 16) = v97;
  *(v16 + 20) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v19;

  v112 = 32;
  v20 = swift_allocObject();
  v21 = v95;
  v107 = v20;
  *(v20 + 16) = v151;
  *(v20 + 24) = v21;
  sub_1B0394868();
  sub_1B0394868();

  v22 = swift_allocObject();
  v23 = v98;
  v24 = v99;
  v25 = v100;
  v114 = v22;
  *(v22 + 16) = v97;
  *(v22 + 20) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = v25;

  v137 = sub_1B0E43988();
  v138 = sub_1B0E458E8();
  v110 = 17;
  v116 = swift_allocObject();
  v104 = 16;
  *(v116 + 16) = 16;
  v117 = swift_allocObject();
  v106 = 4;
  *(v117 + 16) = 4;
  v26 = swift_allocObject();
  v101 = v26;
  *(v26 + 16) = v152;
  *(v26 + 24) = 0;
  v27 = swift_allocObject();
  v28 = v101;
  v118 = v27;
  *(v27 + 16) = v153;
  *(v27 + 24) = v28;
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = 1;
  v29 = swift_allocObject();
  v30 = v102;
  v103 = v29;
  *(v29 + 16) = v154;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  v32 = v103;
  v121 = v31;
  *(v31 + 16) = v155;
  *(v31 + 24) = v32;
  v122 = swift_allocObject();
  *(v122 + 16) = v104;
  v123 = swift_allocObject();
  *(v123 + 16) = v106;
  v33 = swift_allocObject();
  v105 = v33;
  *(v33 + 16) = v156;
  *(v33 + 24) = 0;
  v34 = swift_allocObject();
  v35 = v105;
  v124 = v34;
  *(v34 + 16) = v157;
  *(v34 + 24) = v35;
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v126 = swift_allocObject();
  *(v126 + 16) = v106;
  v36 = swift_allocObject();
  v37 = v107;
  v108 = v36;
  *(v36 + 16) = v158;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v108;
  v127 = v38;
  *(v38 + 16) = v159;
  *(v38 + 24) = v39;
  v128 = swift_allocObject();
  *(v128 + 16) = 112;
  v129 = swift_allocObject();
  v111 = 8;
  *(v129 + 16) = 8;
  v109 = swift_allocObject();
  *(v109 + 16) = 0x786F626C69616DLL;
  v40 = swift_allocObject();
  v41 = v109;
  v130 = v40;
  *(v40 + 16) = v160;
  *(v40 + 24) = v41;
  v131 = swift_allocObject();
  *(v131 + 16) = 37;
  v132 = swift_allocObject();
  *(v132 + 16) = v111;
  v42 = swift_allocObject();
  v43 = v114;
  v115 = v42;
  *(v42 + 16) = v161;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v115;
  v134 = v44;
  *(v44 + 16) = v162;
  *(v44 + 24) = v45;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v133 = sub_1B0E46A48();
  v135 = v46;

  v47 = v116;
  v48 = v135;
  *v135 = v163;
  v48[1] = v47;

  v49 = v117;
  v50 = v135;
  v135[2] = v164;
  v50[3] = v49;

  v51 = v118;
  v52 = v135;
  v135[4] = v165;
  v52[5] = v51;

  v53 = v119;
  v54 = v135;
  v135[6] = v166;
  v54[7] = v53;

  v55 = v120;
  v56 = v135;
  v135[8] = v167;
  v56[9] = v55;

  v57 = v121;
  v58 = v135;
  v135[10] = v168;
  v58[11] = v57;

  v59 = v122;
  v60 = v135;
  v135[12] = v169;
  v60[13] = v59;

  v61 = v123;
  v62 = v135;
  v135[14] = v170;
  v62[15] = v61;

  v63 = v124;
  v64 = v135;
  v135[16] = v171;
  v64[17] = v63;

  v65 = v125;
  v66 = v135;
  v135[18] = v172;
  v66[19] = v65;

  v67 = v126;
  v68 = v135;
  v135[20] = v173;
  v68[21] = v67;

  v69 = v127;
  v70 = v135;
  v135[22] = v174;
  v70[23] = v69;

  v71 = v128;
  v72 = v135;
  v135[24] = v175;
  v72[25] = v71;

  v73 = v129;
  v74 = v135;
  v135[26] = v176;
  v74[27] = v73;

  v75 = v130;
  v76 = v135;
  v135[28] = v177;
  v76[29] = v75;

  v77 = v131;
  v78 = v135;
  v135[30] = v178;
  v78[31] = v77;

  v79 = v132;
  v80 = v135;
  v135[32] = v179;
  v80[33] = v79;

  v81 = v134;
  v82 = v135;
  v135[34] = v180;
  v82[35] = v81;
  sub_1B0394964();

  if (os_log_type_enabled(v137, v138))
  {
    v83 = v181;
    v87 = sub_1B0E45D78();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v88 = sub_1B03949A8(0, v86, v86);
    v89 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v90 = &v202;
    v202 = v87;
    v91 = &v201;
    v201 = v88;
    v92 = &v200;
    v200 = v89;
    sub_1B0394A48(3, &v202);
    sub_1B0394A48(6, v90);
    v198 = v163;
    v199 = v116;
    sub_1B03949FC(&v198, v90, v91, v92);
    v93 = v83;
    if (v83)
    {

      __break(1u);
    }

    else
    {
      v198 = v164;
      v199 = v117;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[16] = 0;
      v198 = v165;
      v199 = v118;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[15] = 0;
      v198 = v166;
      v199 = v119;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[14] = 0;
      v198 = v167;
      v199 = v120;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[13] = 0;
      v198 = v168;
      v199 = v121;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[12] = 0;
      v198 = v169;
      v199 = v122;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[11] = 0;
      v198 = v170;
      v199 = v123;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[10] = 0;
      v198 = v171;
      v199 = v124;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[9] = 0;
      v198 = v172;
      v199 = v125;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[8] = 0;
      v198 = v173;
      v199 = v126;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[7] = 0;
      v198 = v174;
      v199 = v127;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[6] = 0;
      v198 = v175;
      v199 = v128;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[5] = 0;
      v198 = v176;
      v199 = v129;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[4] = 0;
      v198 = v177;
      v199 = v130;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[3] = 0;
      v198 = v178;
      v199 = v131;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[2] = 0;
      v198 = v179;
      v199 = v132;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      v85[1] = 0;
      v198 = v180;
      v199 = v134;
      sub_1B03949FC(&v198, &v202, &v201, &v200);
      _os_log_impl(&dword_1B0389000, v137, v138, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to get message data for message upload. Ignoring.", v87, 0x2Bu);
      sub_1B03998A8(v88, 0, v86);
      sub_1B03998A8(v89, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v137);
  (*(v184 + 8))(v187, v183);
  v84 = _s6UploadVMa(0);
  return (*(*(v84 - 8) + 56))(v149, 1);
}

uint64_t sub_1B086ED20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = a1;
  v20 = a2;
  v19 = a3;
  v25 = a4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v21 = 0;
  v22 = (*(*(_s6LoggerVMa_1(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v11 - v22;
  v34 = v5;
  v33 = v6;
  v31 = v7;
  v32 = v8 & 1;
  v30 = v4;
  v24 = sub_1B0875BBC();
  v26 = sub_1B0829EAC();
  v27 = v9;
  if (v25)
  {
    v15 = 0x100000000;
  }

  else
  {
    v16 = HIDWORD(v19);
    v15 = HIDWORD(v19);
  }

  v12 = v15;
  sub_1B074B69C(v17 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v23);
  LODWORD(v29) = v12;
  BYTE4(v29) = BYTE4(v12) & 1;
  v14 = sub_1B086EF30(v18, v20, v26, v27, v29, v23);
  sub_1B074B764(v23);

  v28 = v14;
  v13 = *(v17 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v13);
  [v13 persistResults:v14 forAction:v18];
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

unint64_t sub_1B086EF30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v25 = a5;
  v7 = a5;
  v8 = BYTE4(a5);
  v24 = a1;
  v23 = a2;
  v21 = a3;
  v22 = a4;
  v19 = a5;
  v20 = BYTE4(a5) & 1;
  v18 = a6;
  sub_1B074EFAC();
  MEMORY[0x1E69E5928](a2);
  v13 = a2;
  v14 = v7;
  v15 = v8 & 1;
  v16 = a6;
  v11 = sub_1B0740A78(sub_1B0875C20, v12);
  MEMORY[0x1E69E5920](a2);
  return v11;
}

uint64_t sub_1B086F044(uint64_t a1, uint64_t a2)
{
  sub_1B0875BBC();
  v7 = sub_1B086F108(a1, a2);
  v6 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v6);
  [v6 persistResults:v7 forAction:a1];
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v7);
}

unint64_t sub_1B086F108(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v9 = a1;
  v8 = a2;
  sub_1B074EFAC();
  MEMORY[0x1E69E5928](a2);
  v6 = a2;
  v4 = sub_1B0740A78(sub_1B0875C50, v5);
  MEMORY[0x1E69E5920](a2);
  return v4;
}

uint64_t sub_1B086F1A8(uint64_t a1, int *a2)
{
  v6 = 0;
  v7 = a1;
  v6 = *a2;
  v5 = v6;
  v4 = sub_1B03948EC();
  v2 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(&v5, MEMORY[0x1E69E6530], &type metadata for UID, v4, v2);
  return sub_1B0E432B8();
}

unint64_t sub_1B086F238()
{
  v2 = qword_1EB6DAB80;
  if (!qword_1EB6DAB80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B086F29C()
{
  v2 = qword_1EB6DAFC8;
  if (!qword_1EB6DAFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B086F324(int a1)
{
  v11 = a1;
  v10 = v1;
  sub_1B0E46A48();
  *v2 = a1;
  sub_1B0394964();
  v9 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  v4 = sub_1B07F193C();
  sub_1B0829BE8(&v9, v7, v4);
  sub_1B039E440(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  sub_1B0875C58();
  sub_1B0E45728();

  return v8;
}

uint64_t sub_1B086F420(int a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v21 = a1;
  v20 = v1;
  v17 = sub_1B082A818(a1);
  if (!v17)
  {
    return 0;
  }

  v19 = v17;
  v24[0] = 0;
  v14 = *(v16 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v14);
  MEMORY[0x1E69E5928](v17);
  v18 = 0;
  v15 = [v14 fullBodyDataForMessage:v17 andHeaderDataIfReadilyAvailable:&v18 isComplete:0 downloadIfNecessary:0 didDownload:?];
  v13 = v18;
  MEMORY[0x1E69E5928](v18);
  MEMORY[0x1E69E5928](v13);
  v2 = v24[0];
  v24[0] = v13;
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v14);
  if (v15)
  {
    v9 = sub_1B0E42F38();
    v10 = v3;
    MEMORY[0x1E69E5920](v15);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  sub_1B070E144(v11, v12);
  v22 = v13;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2750, &unk_1B0E9DE60);
  sub_1B03F1A20(sub_1B086F6EC, 0, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v8, &v23);
  sub_1B06D4E94(&v22);
  v6 = v23;
  sub_1B06D4E94(v24);
  MEMORY[0x1E69E5920](v17);
  return v6;
}

uint64_t sub_1B086F6EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1B0E42F38();
  a2[1] = v2;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B086F758(void *a1)
{
  v18[1] = 0;
  v18[2] = a1;
  v18[0] = 0;
  v15 = [a1 messageDataIsComplete:0 downloadIfNecessary:0];
  if (v15)
  {
    v11 = sub_1B0E42F38();
    v12 = v1;
    MEMORY[0x1E69E5920](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  v16[0] = v13;
  v16[1] = v14;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
  v2 = sub_1B071952C();
  sub_1B03F1A20(sub_1B07529EC, 0, v9, MEMORY[0x1E69E73E0], v2, v10, &v17);
  sub_1B043C03C(v16);
  v8 = v17;
  if (v17)
  {
    v7 = [v17 mf_dataByConvertingUnixNewlinesToNetwork];
    MEMORY[0x1E69E5920](v8);
    if (v7)
    {
      v5 = sub_1B0E42F38();
      MEMORY[0x1E69E5920](v7);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1B06D4E94(v18);
  return v4;
}

uint64_t sub_1B086F9B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v301 = a1;
  v294 = a2;
  v286 = a4;
  v300 = 0;
  v237 = sub_1B074E050;
  v238 = sub_1B03F7AE0;
  v239 = sub_1B0394C30;
  v240 = sub_1B0394C24;
  v241 = sub_1B074DFFC;
  v242 = sub_1B039BA88;
  v243 = sub_1B039BB94;
  v244 = sub_1B0394C24;
  v245 = sub_1B039BBA0;
  v246 = sub_1B039BC08;
  v247 = sub_1B06BA324;
  v248 = sub_1B074E0E4;
  v249 = sub_1B039BCF8;
  v250 = sub_1B07AB020;
  v251 = sub_1B039BC08;
  v252 = sub_1B070B550;
  v253 = sub_1B039BCF8;
  v254 = sub_1B0398F5C;
  v255 = sub_1B0398F5C;
  v256 = sub_1B0399178;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B039BA94;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B0399178;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B03991EC;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B03993BC;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B039BCEC;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B03991EC;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B039BCEC;
  v317 = 0;
  v316 = 0;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  v312 = 0;
  v310 = 0;
  v311 = 0;
  v309 = 0;
  v308 = 0;
  v278 = 0;
  v318 = a3;
  v291 = a3;
  v302 = BYTE4(a3);
  v293 = 0;
  v279 = _s6LoggerVMa_1(0);
  v280 = (*(*(v279 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v281 = v119 - v280;
  v282 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v283 = v119 - v282;
  v284 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v285 = v119 - v284;
  v287 = sub_1B0E439A8();
  v288 = *(v287 - 8);
  v289 = v287 - 8;
  v290 = (*(v288 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v301);
  v292 = v119 - v290;
  v317 = v8;
  v316 = v9;
  v314 = v291;
  v315 = v10 & 1;
  v313 = v11;
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v297 = sub_1B071C094();
  v296 = sub_1B0E46A48();
  v295 = v12;
  MEMORY[0x1E69E5928](v294);
  *v295 = v294;
  sub_1B0394964();
  v298 = v13;
  v299 = sub_1B0E451A8();

  [v301 setCompletedItems_];
  MEMORY[0x1E69E5920](v299);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setFailedItems_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setCreatedServerMessages_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setDownloadedDataByCopyItems_];
  swift_unknownObjectRelease();
  if ((v302 & 1) != 0 || (v236 = v291, v234 = v291, v312 = v291, v14 = [v294 destinationMessage], (v235 = v14) == 0 ? (v231 = 0, v232 = 0) : (v233 = v235, v229 = v235, swift_getObjectType(), v15 = objc_msgSend(v229, sel_persistentID), (v230 = v15) == 0 ? (v226 = 0, v227 = 0) : (v228 = v230, v223 = v230, v224 = sub_1B0E44AD8(), v225 = v16, MEMORY[0x1E69E5920](v223), v226 = v224, v227 = v225), v222 = v227, v221 = v226, swift_unknownObjectRelease(), v231 = v221, v232 = v222), v219 = v232, v220 = v231, !v232))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v119[1] = 0;
    v119[2] = sub_1B086F238();
    v119[3] = sub_1B0E46A48();
    v120 = sub_1B0E451A8();

    [v301 setCreatedServerMessages_];
    MEMORY[0x1E69E5920](v120);
    return swift_unknownObjectRelease();
  }

  else
  {
    v217 = v220;
    v218 = v219;
    v167 = v219;
    v166 = v220;
    v310 = v220;
    v311 = v219;
    (*(v288 + 16))(v292, v286, v287);
    sub_1B074B69C(v286, v285);
    sub_1B074B69C(v285, v283);
    sub_1B074E41C(v285, v281);
    v17 = (v283 + *(v279 + 20));
    v161 = *v17;
    v162 = *(v17 + 1);
    v163 = *(v17 + 1);
    v164 = *(v17 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v283);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v160 = 36;
    v184 = 7;
    v18 = swift_allocObject();
    v19 = v162;
    v20 = v163;
    v21 = v164;
    v169 = v18;
    *(v18 + 16) = v161;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = swift_allocObject();
    v23 = v162;
    v24 = v163;
    v25 = v164;
    v159 = v22;
    *(v22 + 16) = v161;
    *(v22 + 20) = v23;
    *(v22 + 24) = v24;
    *(v22 + 32) = v25;

    v183 = 32;
    v26 = swift_allocObject();
    v27 = v159;
    v173 = v26;
    *(v26 + 16) = v237;
    *(v26 + 24) = v27;
    sub_1B0394868();
    sub_1B0394868();

    v28 = swift_allocObject();
    v29 = v162;
    v30 = v163;
    v31 = v164;
    v32 = v28;
    v33 = v281;
    v176 = v32;
    *(v32 + 16) = v161;
    *(v32 + 20) = v29;
    *(v32 + 24) = v30;
    *(v32 + 32) = v31;
    sub_1B074B764(v33);
    v165 = swift_allocObject();
    *(v165 + 16) = v234;

    v34 = swift_allocObject();
    v35 = v165;
    v179 = v34;
    *(v34 + 16) = v238;
    *(v34 + 24) = v35;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = swift_allocObject();
    v37 = v167;
    v185 = v36;
    *(v36 + 16) = v166;
    *(v36 + 24) = v37;
    v215 = sub_1B0E43988();
    v216 = sub_1B0E45908();
    v181 = 17;
    v188 = swift_allocObject();
    v171 = 16;
    *(v188 + 16) = 16;
    v189 = swift_allocObject();
    v178 = 4;
    *(v189 + 16) = 4;
    v38 = swift_allocObject();
    v168 = v38;
    *(v38 + 16) = v239;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v168;
    v190 = v39;
    *(v39 + 16) = v240;
    *(v39 + 24) = v40;
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = 1;
    v41 = swift_allocObject();
    v42 = v169;
    v170 = v41;
    *(v41 + 16) = v241;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v170;
    v193 = v43;
    *(v43 + 16) = v242;
    *(v43 + 24) = v44;
    v194 = swift_allocObject();
    *(v194 + 16) = v171;
    v195 = swift_allocObject();
    *(v195 + 16) = v178;
    v45 = swift_allocObject();
    v172 = v45;
    *(v45 + 16) = v243;
    *(v45 + 24) = 0;
    v46 = swift_allocObject();
    v47 = v172;
    v196 = v46;
    *(v46 + 16) = v244;
    *(v46 + 24) = v47;
    v197 = swift_allocObject();
    *(v197 + 16) = 0;
    v198 = swift_allocObject();
    *(v198 + 16) = v178;
    v48 = swift_allocObject();
    v49 = v173;
    v174 = v48;
    *(v48 + 16) = v245;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v174;
    v199 = v50;
    *(v50 + 16) = v246;
    *(v50 + 24) = v51;
    v200 = swift_allocObject();
    *(v200 + 16) = 112;
    v201 = swift_allocObject();
    v182 = 8;
    *(v201 + 16) = 8;
    v187 = 24;
    v175 = swift_allocObject();
    *(v175 + 16) = 0x786F626C69616DLL;
    v52 = swift_allocObject();
    v53 = v175;
    v202 = v52;
    *(v52 + 16) = v247;
    *(v52 + 24) = v53;
    v203 = swift_allocObject();
    *(v203 + 16) = 37;
    v204 = swift_allocObject();
    *(v204 + 16) = v182;
    v54 = swift_allocObject();
    v55 = v176;
    v177 = v54;
    *(v54 + 16) = v248;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v177;
    v205 = v56;
    *(v56 + 16) = v249;
    *(v56 + 24) = v57;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v178;
    v58 = swift_allocObject();
    v59 = v179;
    v180 = v58;
    *(v58 + 16) = v250;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v180;
    v208 = v60;
    *(v60 + 16) = v251;
    *(v60 + 24) = v61;
    v209 = swift_allocObject();
    *(v209 + 16) = 32;
    v210 = swift_allocObject();
    *(v210 + 16) = v182;
    v62 = swift_allocObject();
    v63 = v185;
    v186 = v62;
    *(v62 + 16) = v252;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v186;
    v212 = v64;
    *(v64 + 16) = v253;
    *(v64 + 24) = v65;
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v211 = sub_1B0E46A48();
    v213 = v66;

    v67 = v188;
    v68 = v213;
    *v213 = v254;
    v68[1] = v67;

    v69 = v189;
    v70 = v213;
    v213[2] = v255;
    v70[3] = v69;

    v71 = v190;
    v72 = v213;
    v213[4] = v256;
    v72[5] = v71;

    v73 = v191;
    v74 = v213;
    v213[6] = v257;
    v74[7] = v73;

    v75 = v192;
    v76 = v213;
    v213[8] = v258;
    v76[9] = v75;

    v77 = v193;
    v78 = v213;
    v213[10] = v259;
    v78[11] = v77;

    v79 = v194;
    v80 = v213;
    v213[12] = v260;
    v80[13] = v79;

    v81 = v195;
    v82 = v213;
    v213[14] = v261;
    v82[15] = v81;

    v83 = v196;
    v84 = v213;
    v213[16] = v262;
    v84[17] = v83;

    v85 = v197;
    v86 = v213;
    v213[18] = v263;
    v86[19] = v85;

    v87 = v198;
    v88 = v213;
    v213[20] = v264;
    v88[21] = v87;

    v89 = v199;
    v90 = v213;
    v213[22] = v265;
    v90[23] = v89;

    v91 = v200;
    v92 = v213;
    v213[24] = v266;
    v92[25] = v91;

    v93 = v201;
    v94 = v213;
    v213[26] = v267;
    v94[27] = v93;

    v95 = v202;
    v96 = v213;
    v213[28] = v268;
    v96[29] = v95;

    v97 = v203;
    v98 = v213;
    v213[30] = v269;
    v98[31] = v97;

    v99 = v204;
    v100 = v213;
    v213[32] = v270;
    v100[33] = v99;

    v101 = v205;
    v102 = v213;
    v213[34] = v271;
    v102[35] = v101;

    v103 = v206;
    v104 = v213;
    v213[36] = v272;
    v104[37] = v103;

    v105 = v207;
    v106 = v213;
    v213[38] = v273;
    v106[39] = v105;

    v107 = v208;
    v108 = v213;
    v213[40] = v274;
    v108[41] = v107;

    v109 = v209;
    v110 = v213;
    v213[42] = v275;
    v110[43] = v109;

    v111 = v210;
    v112 = v213;
    v213[44] = v276;
    v112[45] = v111;

    v113 = v212;
    v114 = v213;
    v213[46] = v277;
    v114[47] = v113;
    sub_1B0394964();

    if (os_log_type_enabled(v215, v216))
    {
      v115 = v278;
      v152 = sub_1B0E45D78();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v153 = sub_1B03949A8(0, v151, v151);
      v154 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v155 = &v307;
      v307 = v152;
      v156 = &v306;
      v306 = v153;
      v157 = &v305;
      v305 = v154;
      sub_1B0394A48(3, &v307);
      sub_1B0394A48(8, v155);
      v303 = v254;
      v304 = v188;
      sub_1B03949FC(&v303, v155, v156, v157);
      v158 = v115;
      if (v115)
      {

        __break(1u);
      }

      else
      {
        v303 = v255;
        v304 = v189;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v150 = 0;
        v303 = v256;
        v304 = v190;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v149 = 0;
        v303 = v257;
        v304 = v191;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v148 = 0;
        v303 = v258;
        v304 = v192;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v147 = 0;
        v303 = v259;
        v304 = v193;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v146 = 0;
        v303 = v260;
        v304 = v194;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v145 = 0;
        v303 = v261;
        v304 = v195;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v144 = 0;
        v303 = v262;
        v304 = v196;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v143 = 0;
        v303 = v263;
        v304 = v197;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v142 = 0;
        v303 = v264;
        v304 = v198;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v141 = 0;
        v303 = v265;
        v304 = v199;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v140 = 0;
        v303 = v266;
        v304 = v200;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v139 = 0;
        v303 = v267;
        v304 = v201;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v138 = 0;
        v303 = v268;
        v304 = v202;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v137 = 0;
        v303 = v269;
        v304 = v203;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v136 = 0;
        v303 = v270;
        v304 = v204;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v135 = 0;
        v303 = v271;
        v304 = v205;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v134 = 0;
        v303 = v272;
        v304 = v206;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v133 = 0;
        v303 = v273;
        v304 = v207;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v132 = 0;
        v303 = v274;
        v304 = v208;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v131 = 0;
        v303 = v275;
        v304 = v209;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v130 = 0;
        v303 = v276;
        v304 = v210;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v129 = 0;
        v303 = v277;
        v304 = v212;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Setting UID %u on APPEND destination '%s'", v152, 0x3Bu);
        sub_1B03998A8(v153, 0, v151);
        sub_1B03998A8(v154, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v215);
    (*(v288 + 8))(v292, v287);
    v121 = 0;
    sub_1B071FB18();
    v128 = sub_1B08C0C38();
    v309 = v128;
    v124 = sub_1B086F238();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](v128);
    v127 = sub_1B0917E74(v234, v166, v167, v128);
    v308 = v127;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v123 = sub_1B0E46A48();
    v122 = v116;
    MEMORY[0x1E69E5928](v127);
    *v122 = v127;
    sub_1B0394964();
    v125 = v117;
    v126 = sub_1B0E451A8();

    [v301 setCreatedServerMessages_];
    MEMORY[0x1E69E5920](v126);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v127);
    MEMORY[0x1E69E5920](v128);
  }
}

uint64_t sub_1B0872154(void *a1, uint64_t a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setCompletedItems_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B071C094();
  sub_1B0E46A48();
  v5 = v2;
  MEMORY[0x1E69E5928](a2);
  *v5 = a2;
  sub_1B0394964();
  v6 = sub_1B0E451A8();

  [a1 setFailedItems_];
  MEMORY[0x1E69E5920](v6);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setCreatedServerMessages_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setDownloadedDataByCopyItems_];
  return swift_unknownObjectRelease();
}

void *sub_1B08722E8(uint64_t a1, uint64_t *a2)
{
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v14 = 0;
  v22 = a1;
  v7 = *a2;
  v21 = v7;
  v18 = 0;
  v20 = 0;
  MEMORY[0x1E69E5928](v7);
  v11 = v7;
  v2 = type metadata accessor for MFMailMessageLibraryUIDMessageSize(0);
  sub_1B03B0BBC(&v18, sub_1B0876288, v10, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v9, v9);
  if (v8)
  {
    result = MEMORY[0x1E69E5920](v7);
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v7);
    v15 = v19;
    v6 = sub_1B041C1E8();
    v3 = sub_1B07467B8();
    result = MessageIdentifier.init<A>(exactly:)(&v15, &type metadata for UID, MEMORY[0x1E69E7668], v6, v3, &v16);
    if ((v17 & 1) == 0)
    {
      v14 = v16;
      v12 = v16;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      return MessageIdentifierSet.insert(_:)(v13, &v12, v5);
    }
  }

  return result;
}

id sub_1B08724B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B0E45E58();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return [a3 getValue:v4 size:sub_1B0E450E8()];
}

uint64_t sub_1B08725B0(void *a1)
{
  v13 = [a1 URLString];
  if (v13)
  {
    sub_1B0E44AD8();
    v10 = v1;
    MEMORY[0x1E69E5920](v13);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v8 = sub_1B0E44AC8();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v12 newestUIDsForMailbox_limit_];
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    sub_1B07F1764();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return sub_1B0E46A48();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
  sub_1B07F1654();
  v4 = sub_1B0E44F58();

  return v4;
}

void *sub_1B0872854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = *a1;
  v16 = v5;
  v13 = 0;
  v15 = 0;
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  v2 = type metadata accessor for MFMailMessageLibraryUIDMessageSize(0);
  sub_1B03B0BBC(&v13, sub_1B087625C, v8, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, v7);
  if (v6)
  {
    result = MEMORY[0x1E69E5920](v5);
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v5);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    sub_1B0872AB4(v13, v14, v15, v17);
    return memcpy(a2, v17, 0x21uLL);
  }

  return result;
}

id sub_1B08729B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B0E45E58();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return [a3 getValue:v4 size:sub_1B0E450E8()];
}

void sub_1B0872AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v9 = HIDWORD(a2);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  DWORD2(v18) = 0;
  BYTE12(v18) = 1;
  *&v18 = a1;
  v12 = a2;
  v8 = sub_1B041C1E8();
  v4 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(&v12, &type metadata for UID, MEMORY[0x1E69E7668], v8, v4, &v13);
  v10 = v13;
  v11 = v14;
  DWORD2(v18) = v13;
  BYTE12(v18) = v14 & 1;
  LODWORD(v19) = v9;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *a4 = a1;
  *(a4 + 8) = v10 | ((v11 & 1) << 32);
  *(a4 + 16) = v9;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
}

uint64_t sub_1B0872CAC()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2760, &qword_1B0E9DE70);
  v0 = sub_1B0875CE0();
  sub_1B039CA88(sub_1B0872E10, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E451A8();

  v3 = [v5 serverMessagesForMessageIDHeaders_];
  MEMORY[0x1E69E5920](v2);
  sub_1B0875D68();
  v4 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1B0872E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B08AB3C4(v4, v5);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B0872E74()
{
  v6 = [v0 remoteID];
  if (v6)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v6);
    v2 = sub_1B08252D8(v4, v5);
  }

  else
  {
    v2 = sub_1B08252D8(0, 0);
  }

  LODWORD(v7) = v2;
  BYTE4(v7) = BYTE4(v2) & 1;
  return v7;
}

uint64_t sub_1B0872F68(uint64_t (*a1)(void))
{
  v5 = a1();
  if ((v5 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    v1 = sub_1B07467B8();
    BinaryInteger.init(_:)(v5, MEMORY[0x1E69E7668], v1);
    return v4;
  }
}

uint64_t sub_1B0873044(void (*a1)(void))
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  return MessageIdentifierRange.debugDescription.getter();
}

uint64_t sub_1B08730A4(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1B0873164()
{
  v2 = qword_1EB6DA468;
  if (!qword_1EB6DA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2650, &unk_1B0E9DDA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0873234()
{
  v2 = qword_1EB6DB3B0;
  if (!qword_1EB6DB3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2658, &unk_1B0EA2DE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08732C4()
{
  v2 = qword_1EB6DA520;
  if (!qword_1EB6DA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2668, &qword_1B0E9DDB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B087334C()
{
  v2 = qword_1EB6DB3A0;
  if (!qword_1EB6DB3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2658, &unk_1B0EA2DE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08733F8()
{
  v2 = qword_1EB6DA930;
  if (!qword_1EB6DA930)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA930);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0873464(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  v6 = type metadata accessor for MessageMetadata(0);
  v7 = v6[8];
  v9 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1 + v7, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    memcpy((a2 + v7), (a1 + v7), *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))();
    (*(v10 + 56))(a2 + v7, 0, 1, v9);
  }

  result = a2;
  *(a2 + v6[9]) = *(a1 + v6[9]);
  *(a2 + v6[10]) = *(a1 + v6[10]) & 1;
  return result;
}

uint64_t sub_1B087363C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 32) = v6;
  v7 = type metadata accessor for MessageMetadata(0);
  v8 = v7[8];
  v10 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    memcpy((a2 + v8), (a1 + v8), *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  result = a2;
  *(a2 + v7[9]) = *(a1 + v7[9]);
  *(a2 + v7[10]) = *(a1 + v7[10]);
  return result;
}

uint64_t sub_1B0873824()
{
  v1 = *(type metadata accessor for MessageMetadata(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B079F1FC(v2);
}

uint64_t sub_1B0873888()
{
  v1 = *(type metadata accessor for MessageMetadata(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B083D964(v2);
}

uint64_t sub_1B08738EC()
{
  v1 = *(type metadata accessor for MessageMetadata(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B083D99C(v2);
}

uint64_t sub_1B0873950(uint64_t a1)
{

  v4 = *(type metadata accessor for MessageMetadata(0) + 32);
  v1 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v1 - 8) + 48))(a1 + v4, 1))
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 8))(a1 + v4);
  }

  return a1;
}

unint64_t sub_1B0873A24()
{
  v2 = qword_1EB6DAFB0;
  if (!qword_1EB6DAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E26A8, &qword_1B0E9DDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0873AAC()
{
  v2 = qword_1EB6DAFB8;
  if (!qword_1EB6DAFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E26A8, &qword_1B0E9DDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for MailboxPersistenceHelper.SectionsToDownloadResult(uint64_t a1)
{
  v2 = qword_1EB6DBBA8;
  if (!qword_1EB6DBBA8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0873BFC(uint64_t a1)
{
  v30 = a1;
  v31 = _s18SectionsToDownloadVMa(0);
  if (!(*(*(v31 - 8) + 48))(v30, 2))
  {

    v28 = v30 + *(v31 + 20);
    _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v1 = sub_1B0E443C8();
      (*(*(v1 - 8) + 8))(v28);
    }

    _s31PreviouslyDownloadedMessageDataVMa(0);

    v27 = v30 + *(v31 + 24);
    if (*(v27 + 176) != 255)
    {
      v2 = *v27;
      v3 = *(v27 + 8);
      v4 = *(v27 + 16);
      v5 = *(v27 + 24);
      v6 = *(v27 + 32);
      v7 = *(v27 + 40);
      v8 = *(v27 + 48);
      v9 = *(v27 + 56);
      v10 = *(v27 + 64);
      v11 = *(v27 + 72);
      v12 = *(v27 + 80);
      v13 = *(v27 + 88);
      v14 = *(v27 + 96);
      v15 = *(v27 + 104);
      v16 = *(v27 + 112);
      v17 = *(v27 + 120);
      v18 = *(v27 + 128);
      v19 = *(v27 + 136);
      v20 = *(v27 + 144);
      v21 = *(v27 + 152);
      v22 = *(v27 + 160);
      v23 = *(v27 + 168);
      v24 = *(v27 + 176);
      v26[16] = v26;
      sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return v30;
}

void *sub_1B0873E34(uint64_t *a1, void *a2)
{
  v66 = a1;
  v65 = a2;
  v67 = _s18SectionsToDownloadVMa(0);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  if ((*(v68 + 48))(v66, 2))
  {
    v36 = type metadata accessor for MailboxPersistenceHelper.SectionsToDownloadResult(0);
    memcpy(v65, v66, *(*(v36 - 8) + 64));
  }

  else
  {
    v60 = *v66;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = v65;
    v3 = v67;
    v4 = v66;
    *v65 = v60;
    v61 = v2 + *(v3 + 20);
    v62 = v4 + *(v3 + 20);
    v63 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v5 = sub_1B0E443C8();
      (*(*(v5 - 8) + 16))(v61, v62);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v61, v62, *(*(v63 - 8) + 64));
    }

    v6 = _s31PreviouslyDownloadedMessageDataVMa(0);
    v56 = *(v6 + 20);
    v57 = *&v62[*(v6 + 20)];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = v65;
    v8 = v67;
    v9 = v66;
    *&v61[v56] = v57;
    v58 = (v7 + *(v8 + 24));
    v59 = (v9 + *(v8 + 24));
    if (*(v59 + 176) == 255)
    {
      memcpy(v58, v59, 0xB1uLL);
    }

    else
    {
      v10 = *v59;
      v11 = v59[1];
      v12 = v59[2];
      v13 = v59[3];
      v14 = v59[4];
      v15 = v59[5];
      v39 = v59[6];
      v40 = v59[7];
      v41 = v59[8];
      v42 = v59[9];
      v43 = v59[10];
      v44 = v59[11];
      v45 = v59[12];
      v46 = v59[13];
      v47 = v59[14];
      v48 = v59[15];
      v49 = v59[16];
      v50 = v59[17];
      v51 = v59[18];
      v52 = v59[19];
      v53 = v59[20];
      v54 = v59[21];
      v55 = *(v59 + 176);
      v38[16] = v38;
      v16.n128_f64[0] = sub_1B0716BB8(v10, v11, v12, v13, v14, v15, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      v17 = v39;
      v18 = v40;
      v19 = v41;
      v20 = v42;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      v24 = v46;
      v25 = v47;
      v26 = v48;
      v27 = v49;
      v28 = v50;
      v29 = v51;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      v33 = v55;
      v34 = v58;
      *v58 = v10;
      v34[1] = v11;
      v34[2] = v12;
      v34[3] = v13;
      v34[4] = v14;
      v34[5] = v15;
      v34[6] = v17;
      v34[7] = v18;
      v34[8] = v19;
      v34[9] = v20;
      v34[10] = v21;
      v34[11] = v22;
      v34[12] = v23;
      v34[13] = v24;
      v34[14] = v25;
      v34[15] = v26;
      v34[16] = v27;
      v34[17] = v28;
      v34[18] = v29;
      v34[19] = v30;
      v34[20] = v31;
      v34[21] = v32;
      *(v34 + 176) = v33 & 1;
    }

    v35 = v68;
    *(v65 + *(v67 + 28)) = *(v66 + *(v67 + 28));
    (*(v35 + 56))(v16);
  }

  return v65;
}

uint64_t sub_1B08742CC(uint64_t a1)
{
  v31 = a1;

  v28 = 0;
  v29 = _s18SectionsToDownloadVMa(0);
  v30 = *(v29 + 20);
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(v31 + v30);
  }

  _s31PreviouslyDownloadedMessageDataVMa(0);

  v27 = v31 + *(v29 + 24);
  if (*(v27 + 176) != 255)
  {
    v2 = *v27;
    v3 = *(v27 + 8);
    v4 = *(v27 + 16);
    v5 = *(v27 + 24);
    v6 = *(v27 + 32);
    v7 = *(v27 + 40);
    v8 = *(v27 + 48);
    v9 = *(v27 + 56);
    v10 = *(v27 + 64);
    v11 = *(v27 + 72);
    v12 = *(v27 + 80);
    v13 = *(v27 + 88);
    v14 = *(v27 + 96);
    v15 = *(v27 + 104);
    v16 = *(v27 + 112);
    v17 = *(v27 + 120);
    v18 = *(v27 + 128);
    v19 = *(v27 + 136);
    v20 = *(v27 + 144);
    v21 = *(v27 + 152);
    v22 = *(v27 + 160);
    v23 = *(v27 + 168);
    v24 = *(v27 + 176);
    v26[15] = v26;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return v31;
}

void *sub_1B08744DC(void *a1, void *a2)
{
  *a2 = *a1;
  v6 = _s18SectionsToDownloadVMa(0);
  v7 = v6[5];
  v9 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v7, a1 + v7, *(*(v9 - 8) + 64));
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa(0);
  *(a2 + v7 + *(v3 + 20)) = *(a1 + v7 + *(v3 + 20));
  memcpy(a2 + v6[6], a1 + v6[6], 0xB1uLL);
  result = a2;
  *(a2 + v6[7]) = *(a1 + v6[7]);
  return result;
}

void *sub_1B08746EC(void *a1, void *a2)
{
  v64 = a1;
  v58 = a2;
  v59 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v58 = v59;
  v60 = 0;
  v61 = _s18SectionsToDownloadVMa(0);
  v62 = *(v61 + 20);
  v63 = *(v61 + 20);
  v65 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *(*(sub_1B0E443C8() - 8) + 16);
      v56 = v58 + v62;
      v3();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v58 + v62, v64 + v63, *(*(v65 - 8) + 64));
    }
  }

  else
  {
    v2 = *(*(sub_1B0E443C8() - 8) + 16);
    v57 = v58 + v62;
    v2();
    swift_storeEnumTagMultiPayload();
  }

  v4 = _s31PreviouslyDownloadedMessageDataVMa(0);
  v51 = *(v4 + 20);
  v52 = v58 + v62;
  v53 = *(v64 + v63 + *(v4 + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v58;
  v6 = v61;
  v7 = v64;
  *&v52[v51] = v53;
  v54 = (v5 + *(v6 + 24));
  v55 = (v7 + *(v6 + 24));
  if (*(v55 + 176) == 255)
  {
    memcpy(v54, v55, 0xB1uLL);
  }

  else
  {
    v8 = *v55;
    v9 = v55[1];
    v10 = v55[2];
    v11 = v55[3];
    v12 = v55[4];
    v13 = v55[5];
    v34 = v55[6];
    v35 = v55[7];
    v36 = v55[8];
    v37 = v55[9];
    v38 = v55[10];
    v39 = v55[11];
    v40 = v55[12];
    v41 = v55[13];
    v42 = v55[14];
    v43 = v55[15];
    v44 = v55[16];
    v45 = v55[17];
    v46 = v55[18];
    v47 = v55[19];
    v48 = v55[20];
    v49 = v55[21];
    v50 = *(v55 + 176);
    v33[16] = v33;
    sub_1B0716BB8(v8, v9, v10, v11, v12, v13, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v31 = v54;
    *v54 = v8;
    v31[1] = v9;
    v31[2] = v10;
    v31[3] = v11;
    v31[4] = v12;
    v31[5] = v13;
    v31[6] = v14;
    v31[7] = v15;
    v31[8] = v16;
    v31[9] = v17;
    v31[10] = v18;
    v31[11] = v19;
    v31[12] = v20;
    v31[13] = v21;
    v31[14] = v22;
    v31[15] = v23;
    v31[16] = v24;
    v31[17] = v25;
    v31[18] = v26;
    v31[19] = v27;
    v31[20] = v28;
    v31[21] = v29;
    *(v31 + 176) = v30 & 1;
  }

  result = v58;
  *(v58 + *(v61 + 28)) = *(v64 + *(v61 + 28));
  return result;
}

unint64_t sub_1B0874B30()
{
  v2 = qword_1EB6DADA0;
  if (!qword_1EB6DADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0874BC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 40))(a2, a1);
  v3 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v6 = (a1 + *(v3 + 20));
  v7 = (a2 + *(v3 + 20));
  *v7 = *v6;

  v7[1] = v6[1];

  v7[2] = v6[2];

  v7[3] = v6[3];

  v7[4] = v6[4];

  return a2;
}

uint64_t type metadata accessor for MailboxPersistenceHelper.DownloadResult(uint64_t a1)
{
  v2 = qword_1EB6DBC00;
  if (!qword_1EB6DBC00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0874D44()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B0874D98();

  return sub_1B03F7B1C(v4, v3, &unk_1F26F1C68, v1);
}

unint64_t sub_1B0874D98()
{
  v2 = qword_1EB6DBDB0;
  if (!qword_1EB6DBDB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBDB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0874E10()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0863908(v2);
}

uint64_t sub_1B0874E74()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0863A00(v2);
}

uint64_t sub_1B0874ED8()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0863A7C(v2);
}

void *sub_1B0874F3C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863AF8(v3, a1);
}

void *sub_1B0874FB0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863B3C(v3, a1);
}

void *sub_1B0875024@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863B84(v3, a1);
}

void *sub_1B0875098@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863BCC(v3, a1);
}

uint64_t sub_1B087510C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1B07F2124(a2);
  }

  return result;
}

char *sub_1B0875150()
{
  v9 = *(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8);
  v1 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v2 = (v1 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = (v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1B086648C(v3, v0 + v1, v4, v6, v7);
}

uint64_t block_copy_helper_2866(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1B0875294()
{
}

unint64_t sub_1B08752E4()
{
  v2 = qword_1EB6DA4E0;
  if (!qword_1EB6DA4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E26F8, &qword_1B0E9DE28);
    sub_1B087537C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B087537C()
{
  v2 = qword_1EB6DA4C8;
  if (!qword_1EB6DA4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2700, &qword_1B0E9DE30);
    sub_1B0875424();
    sub_1B0875684();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875424()
{
  v2 = qword_1EB6DA4A8;
  if (!qword_1EB6DA4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2710, &qword_1B0E9DE38);
    sub_1B08754BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08754BC()
{
  v2 = qword_1EB6DA448;
  if (!qword_1EB6DA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
    sub_1B0875554();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875554()
{
  v2 = qword_1EB6DA3B0;
  if (!qword_1EB6DA3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2718, &qword_1B0E9DE40);
    sub_1B08755EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08755EC()
{
  v2 = qword_1EB6DA490;
  if (!qword_1EB6DA490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2728, &qword_1B0E9DE48);
    sub_1B074B86C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875684()
{
  v2 = qword_1EB6DB138;
  if (!qword_1EB6DB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B087570C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);

  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);

  result = a2;
  *(a2 + 104) = v12;
  *(a2 + 112) = v13;
  return result;
}

unint64_t sub_1B0875818()
{
  v2 = qword_1EB6DA378;
  if (!qword_1EB6DA378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2730, &unk_1B0E9DE50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA378);
    return WitnessTable;
  }

  return v2;
}

void sub_1B08758A0()
{
}

uint64_t sub_1B08758FC(uint64_t a1)
{
  v6 = _s6UploadVMa(0);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v2 = a1 + *(v6 + 20);
    v3 = sub_1B0E43108();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }

    sub_1B0391D50(*(a1 + *(v6 + 24)), *(a1 + *(v6 + 24) + 8));
  }

  return a1;
}

__n128 sub_1B0875A20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v5 = _s6UploadVMa(0);
  v6 = *(v5 + 20);
  v8 = sub_1B0E43108();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1 + v6, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v6), (a1 + v6), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(a2 + v6, 0, 1, v8);
  }

  result = *(a1 + *(v5 + 24));
  *(a2 + *(v5 + 24)) = result;
  return result;
}

unint64_t sub_1B0875BBC()
{
  v2 = qword_1EB6DA7F0;
  if (!qword_1EB6DA7F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA7F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0875C20(void *a1)
{
  LODWORD(v3) = *(v1 + 24);
  BYTE4(v3) = *(v1 + 28) & 1;
  return sub_1B086F9B8(a1, *(v1 + 16), v3, *(v1 + 32));
}

unint64_t sub_1B0875C58()
{
  v2 = qword_1EB6E2748;
  if (!qword_1EB6E2748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875CE0()
{
  v2 = qword_1EB6E2768;
  if (!qword_1EB6E2768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2760, &qword_1B0E9DE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875D68()
{
  v2 = qword_1EB6E2770;
  if (!qword_1EB6E2770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2770);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MailboxPersistenceHelper(uint64_t a1)
{
  v2 = qword_1EB6DBAC0;
  if (!qword_1EB6DBAC0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0875E5C(uint64_t a1)
{
  updated = sub_1B0E42E68();
  if (v1 <= 0x3F)
  {
    updated = _s18MailboxPersistenceVMa(319);
    if (v2 <= 0x3F)
    {
      updated = _s6LoggerVMa_1(319);
      if (v3 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_1B08760B4(uint64_t a1)
{
  v3 = _s18SectionsToDownloadVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B0876180(uint64_t a1)
{
  v4 = type metadata accessor for InProgressMessageDownload.EMLX(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B07F1AFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

char *sub_1B08762BC(char *a1, char *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult(0);
  v5 = *(FragmentedMessagesResult + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  result = a2;
  *&a2[*(FragmentedMessagesResult + 24)] = *&a1[*(FragmentedMessagesResult + 24)];
  return result;
}

char *sub_1B0876388(char *a1, char *a2)
{
  *a2 = *a1;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult(0);
  v4 = *(FragmentedMessagesResult + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[*(FragmentedMessagesResult + 24)] = *&a1[*(FragmentedMessagesResult + 24)];
  return result;
}

uint64_t sub_1B0876444()
{
  v1 = *(type metadata accessor for FindFragmentedMessagesResult(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B0847BCC(v2);
}

uint64_t sub_1B08764A8@<X0>(uint64_t a1@<X8>)
{
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult(0);
  v3 = v1 + ((*(*(FragmentedMessagesResult - 8) + 80) + 16) & ~*(*(FragmentedMessagesResult - 8) + 80));

  return sub_1B0847C18(v3, a1);
}

char *sub_1B087651C(char *a1, char *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v7 = type metadata accessor for MessagesMissingAllBodyData(0);
  v4 = v7[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(*(v5 - 8) + 16);
  v6(&a2[v4], &a1[v4]);
  (v6)(&a2[v7[6]], &a1[v7[6]], v5);
  result = a2;
  *&a2[v7[7]] = *&a1[v7[7]];
  return result;
}

char *sub_1B0876628(char *a1, char *a2)
{
  *a2 = *a1;
  v6 = type metadata accessor for MessagesMissingAllBodyData(0);
  v3 = v6[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(*(v4 - 8) + 32);
  v5(&a2[v3], &a1[v3]);
  (v5)(&a2[v6[6]], &a1[v6[6]], v4);
  result = a2;
  *&a2[v6[7]] = *&a1[v6[7]];
  return result;
}

uint64_t sub_1B0876724()
{
  v1 = *(type metadata accessor for MessagesMissingAllBodyData(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B08438C0(v2);
}

uint64_t sub_1B0876788@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessagesMissingAllBodyData(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B084390C(v3, a1);
}

unint64_t sub_1B0876828()
{
  v2 = qword_1EB6E2798;
  if (!qword_1EB6E2798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2798);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08768B8(const void *a1, void *a2)
{
  v7 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B08769E8(uint64_t a1)
{
  v1 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_1B0876AB8()
{
  v2 = qword_1EB6DB158;
  if (!qword_1EB6DB158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27A0, &qword_1B0E9E018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB158);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0876B40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v29 = a1;
  v30 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v25 = a6 & 1;
  if (a6)
  {
    v13 = 1;
  }

  else
  {
    sub_1B07BA724(a3);
    v19 = a3;
    v20 = a4;
    v21 = a5;
    if (a3)
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
    }

    else
    {
      v11 = sub_1B0E46A48();
      v12 = sub_1B0E44838();
      v22 = Namespace.init(prefix:separator:)(v11, v12, v6);
      v23 = v7;
      v24 = v8;
    }

    v10 = Namespace.isNotes(_:)(a1, a2, v22, v23, v24);

    v13 = v10 ^ 1;
  }

  return v13 & 1;
}

void *sub_1B0876CCC(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_1B0876D18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v44 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = a1;
  v36 = a2;
  sub_1B0451F2C();
  sub_1B0E44778();
  sub_1B039E440(&v35);
  v16 = v37;
  v17 = v38;

  v33 = v16;
  v34 = v17 & 1;
  if ((v17 & 1) == 0)
  {
    return 2;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = a1;
  v29 = a2;
  sub_1B0E44778();
  sub_1B039E440(&v28);
  v10 = v30;
  v11 = v31;
  v12 = v32;

  v27[0] = v10;
  v27[1] = v11;
  v27[2] = v12;
  sub_1B03B1198(v27);
  if (v11)
  {
    return 1;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = a1;
  v24 = a2;
  sub_1B0E44778();
  sub_1B039E440(&v23);
  v8 = v25;
  v9 = v26;

  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = a1;
  v19 = a2;
  sub_1B0E44778();
  sub_1B039E440(&v18);
  v7 = v20;
  if (v20)
  {

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1B0877124()
{
  v11 = 0;
  v3 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v2 - v3;
  v4 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v9 = &v2 - v4;
  v5 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v2 - v5;
  sub_1B06CCC58();
  v6 = sub_1B0E44838();
  v7 = v0;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v10);
  result = sub_1B0E45A08();
  qword_1EB6DBFD8 = result;
  return result;
}

uint64_t *sub_1B08772C0()
{
  if (qword_1EB6DBFD0 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBFD8;
}

uint64_t sub_1B0877320(uint64_t a1)
{
  v5[9] = 0;
  v5[10] = a1;
  v5[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v1 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v5, v3, v1);
  v4 = v5[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27A8, &qword_1B0E9E020);
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B0, &qword_1B0E9E028);
  sub_1B0451F2C();
  sub_1B0877A34();
  return sub_1B0E44718();
}

uint64_t sub_1B0877530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v23 = a1;
  v22 = a2;
  v42 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v20 = 0;
  v31 = sub_1B0E42E68();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v19 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v12 - v19;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v32 = &v12 - v21;
  v24 = (*(*(_s18MailboxPersistenceVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v12 - v24;
  v35 = &v12 - v24;
  v27 = *v5;
  v42 = v27;
  v41 = v6;
  v25 = v6 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v26 = &v40;
  swift_beginAccess();
  sub_1B03F4D78(v25, v4);
  swift_endAccess();
  v34 = [v27 mailboxURL];
  sub_1B0E42DE8();
  (*(v29 + 32))(v32, v28, v31);
  (*(v29 + 56))(v32, 0, 1, v31);
  v36 = sub_1B07BF5C8(v32);
  v33 = v7;
  sub_1B06E3800(v32);
  MEMORY[0x1E69E5920](v34);
  sub_1B03F4F08(v35);
  result = v36;
  if (v36)
  {
    v16 = v36;
    v17 = v33;
    v14 = v33;
    v13 = v36;
    v38 = v36;
    v39 = v33;
    v15 = sub_1B07B7350([v27 persistentID]);
    v37 = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = v18;
    v11 = v14 | (v15 << 32);
    *v18 = v13;
    v10[1] = v11;
  }

  else
  {
    v9 = v18;
    *v18 = 0;
    v9[1] = 0;
  }

  return result;
}

void *sub_1B0877868()
{
  sub_1B08778BC();

  return sub_1B0E46B68();
}

unint64_t sub_1B08778BC()
{
  v2 = qword_1EB6DC980;
  if (!qword_1EB6DC980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC980);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0877934(int a1, int a2, void (*a3)(uint64_t *__return_ptr, int *, char *))
{
  v5 = a1;
  HIDWORD(v4) = a2;
  a3(&v4, &v5, &v4 + 4);
  return v4;
}

uint64_t sub_1B0877990@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, _DWORD *a4@<X8>)
{
  result = a3(*a1, *a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1B0877A34()
{
  v2 = qword_1EB6DA450;
  if (!qword_1EB6DA450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27B0, &qword_1B0E9E028);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0877ABC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v168 = a1;
  v169 = a2;
  v170 = a3;
  v171 = a4;
  v172 = a5;
  v173 = a6;
  v174 = a7;
  v175 = a8;
  v164 = 0;
  v128 = sub_1B039BBE8;
  v129 = sub_1B0394C30;
  v130 = sub_1B0394C24;
  v131 = sub_1B039BA2C;
  v132 = sub_1B039BA88;
  v133 = sub_1B039BB94;
  v134 = sub_1B0394C24;
  v135 = sub_1B039BBA0;
  v136 = sub_1B039BC08;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0399178;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0398F5C;
  v142 = sub_1B039BA94;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0399178;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B03991EC;
  v192 = 0;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v149 = 0;
  v157 = 0;
  v150 = _s6LoggerVMa(0);
  v151 = (*(*(v150 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v152 = &v71 - v151;
  v153 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v71 - v153;
  v155 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v156 = &v71 - v155;
  v158 = sub_1B0E439A8();
  v159 = *(v158 - 8);
  v160 = v158 - 8;
  v161 = (*(v159 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v157);
  v162 = &v71 - v161;
  v165 = (*(*(_s18MailboxPersistenceVMa(v12) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v168);
  v13 = &v71 - v165;
  v176 = &v71 - v165;
  v192 = v14 & 1;
  v191 = v15;
  *&v189 = v16;
  *(&v189 + 1) = v171;
  *&v190 = v17;
  *(&v190 + 1) = v18;
  v188 = v19;
  v187 = v20;
  v186 = v21;
  v166 = v21 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v167 = v185;
  swift_beginAccess();
  sub_1B03F4D78(v166, v13);
  swift_endAccess();
  v177 = sub_1B07C1E08(v168 & 1, v169, v170, v171, v172, v173, v174, v175);
  sub_1B03F4F08(v176);
  v184 = v177;
  if (sub_1B0879044(v177))
  {
    return v177;
  }

  (*(v159 + 16))(v162, v175, v158);
  sub_1B0394784(v175, v156);
  sub_1B0394784(v156, v154);
  sub_1B03F4FD0(v156, v152);
  v22 = (v154 + *(v150 + 20));
  v96 = *v22;
  v97 = *(v22 + 1);
  sub_1B039480C(v154);
  v95 = 24;
  v107 = 7;
  v23 = swift_allocObject();
  v24 = v97;
  v100 = v23;
  *(v23 + 16) = v96;
  *(v23 + 20) = v24;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v25 = swift_allocObject();
  v26 = v97;
  v98 = v25;
  *(v25 + 16) = v96;
  *(v25 + 20) = v26;

  v106 = 32;
  v27 = swift_allocObject();
  v28 = v98;
  v108 = v27;
  *(v27 + 16) = v128;
  *(v27 + 24) = v28;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v152);
  v125 = sub_1B0E43988();
  v126 = sub_1B0E458E8();
  v104 = 17;
  v110 = swift_allocObject();
  v102 = 16;
  *(v110 + 16) = 16;
  v111 = swift_allocObject();
  v105 = 4;
  *(v111 + 16) = 4;
  v29 = swift_allocObject();
  v99 = v29;
  *(v29 + 16) = v129;
  *(v29 + 24) = 0;
  v30 = swift_allocObject();
  v31 = v99;
  v112 = v30;
  *(v30 + 16) = v130;
  *(v30 + 24) = v31;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = 1;
  v32 = swift_allocObject();
  v33 = v100;
  v101 = v32;
  *(v32 + 16) = v131;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v101;
  v115 = v34;
  *(v34 + 16) = v132;
  *(v34 + 24) = v35;
  v116 = swift_allocObject();
  *(v116 + 16) = v102;
  v117 = swift_allocObject();
  *(v117 + 16) = v105;
  v36 = swift_allocObject();
  v103 = v36;
  *(v36 + 16) = v133;
  *(v36 + 24) = 0;
  v37 = swift_allocObject();
  v38 = v103;
  v118 = v37;
  *(v37 + 16) = v134;
  *(v37 + 24) = v38;
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v105;
  v39 = swift_allocObject();
  v40 = v108;
  v109 = v39;
  *(v39 + 16) = v135;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v109;
  v122 = v41;
  *(v41 + 16) = v136;
  *(v41 + 24) = v42;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v121 = sub_1B0E46A48();
  v123 = v43;

  v44 = v110;
  v45 = v123;
  *v123 = v137;
  v45[1] = v44;

  v46 = v111;
  v47 = v123;
  v123[2] = v138;
  v47[3] = v46;

  v48 = v112;
  v49 = v123;
  v123[4] = v139;
  v49[5] = v48;

  v50 = v113;
  v51 = v123;
  v123[6] = v140;
  v51[7] = v50;

  v52 = v114;
  v53 = v123;
  v123[8] = v141;
  v53[9] = v52;

  v54 = v115;
  v55 = v123;
  v123[10] = v142;
  v55[11] = v54;

  v56 = v116;
  v57 = v123;
  v123[12] = v143;
  v57[13] = v56;

  v58 = v117;
  v59 = v123;
  v123[14] = v144;
  v59[15] = v58;

  v60 = v118;
  v61 = v123;
  v123[16] = v145;
  v61[17] = v60;

  v62 = v119;
  v63 = v123;
  v123[18] = v146;
  v63[19] = v62;

  v64 = v120;
  v65 = v123;
  v123[20] = v147;
  v65[21] = v64;

  v66 = v122;
  v67 = v123;
  v123[22] = v148;
  v67[23] = v66;
  sub_1B0394964();

  if (os_log_type_enabled(v125, v126))
  {
    v68 = v149;
    v88 = sub_1B0E45D78();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v87 = 0;
    v89 = sub_1B03949A8(0, v86, v86);
    v90 = sub_1B03949A8(v87, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v91 = &v182;
    v182 = v88;
    v92 = &v181;
    v181 = v89;
    v93 = &v180;
    v180 = v90;
    sub_1B0394A48(0, &v182);
    sub_1B0394A48(4, v91);
    v178 = v137;
    v179 = v110;
    sub_1B03949FC(&v178, v91, v92, v93);
    v94 = v68;
    if (v68)
    {

      __break(1u);
    }

    else
    {
      v178 = v138;
      v179 = v111;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v85 = 0;
      v178 = v139;
      v179 = v112;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v84 = 0;
      v178 = v140;
      v179 = v113;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v83 = 0;
      v178 = v141;
      v179 = v114;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v82 = 0;
      v178 = v142;
      v179 = v115;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v81 = 0;
      v178 = v143;
      v179 = v116;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v80 = 0;
      v178 = v144;
      v179 = v117;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v79 = 0;
      v178 = v145;
      v179 = v118;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v78 = 0;
      v178 = v146;
      v179 = v119;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v77 = 0;
      v178 = v147;
      v179 = v120;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v76 = 0;
      v178 = v148;
      v179 = v122;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      _os_log_impl(&dword_1B0389000, v125, v126, "[%.*hhx-%.*X] Mailboxes are not unique. Retrying", v88, 0x17u);
      v75 = 0;
      sub_1B03998A8(v89, 0, v86);
      sub_1B03998A8(v90, v75, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v69 = v176;
  MEMORY[0x1E69E5920](v125);
  (*(v159 + 8))(v162, v158);
  v72 = v163 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v73 = v183;
  swift_beginAccess();
  sub_1B03F4D78(v72, v69);
  swift_endAccess();
  v74 = sub_1B07C1E08(v168 & 1, v169, v170, v171, v172, v173, v174, v175);
  sub_1B03F4F08(v176);

  return v74;
}

BOOL sub_1B0879044(uint64_t a1)
{
  sub_1B0E46A48();
  sub_1B0451F2C();
  sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36E0, &qword_1B0E9C120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B07C869C();
  sub_1B0E44FD8();
  sub_1B0E46A48();
  sub_1B03B8BD8();
  sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
  sub_1B0E44FD8();
  v4 = sub_1B0E454A8();
  v5 = sub_1B0E452A8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v4 == v5)
  {
    v2 = sub_1B0E454A8();
    v3 = v2 == sub_1B0E452A8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B08792E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v112 = a1;
  v111 = a2;
  v106 = a3;
  v107 = a4;
  v108 = a5;
  v109 = a6;
  v110 = a7;
  v86 = a8;
  v73 = a9;
  v75 = sub_1B08A2968;
  v140 = 0;
  v139 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v127 = 0u;
  v128 = 0u;
  v141 = a8;
  v98 = 0;
  v76 = sub_1B0E44238();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v80 = v55 - v79;
  v81 = sub_1B0E44288();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v85 = v55 - v84;
  v87 = *(_s6LoggerVMa(v10) - 8);
  v88 = v87;
  v89 = *(v87 + 64);
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v91 = v55 - v90;
  v93 = *(v11 - 8);
  v92 = v11 - 8;
  v94 = v93;
  v95 = *(v93 + 64);
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v97 = v55 - v96;
  v99 = *(_s18MailboxPersistenceVMa(v13) - 8);
  v100 = v99;
  v101 = *(v99 + 64);
  v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v103 = v55 - v102;
  v104 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v105 = v55 - v104;
  v140 = v55 - v104;
  v117 = sub_1B0E44468();
  v115 = *(v117 - 8);
  v116 = v117 - 8;
  v113 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112);
  v118 = (v55 - v113);
  v139 = v16;
  v136 = v17;
  v137 = v18;
  v138 = v19;
  v135 = v20;
  v133 = v21;
  v134 = v22;
  v132 = v9;
  v114 = *(v9 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v114);
  v131 = v114;
  MEMORY[0x1E69E5928](v114);
  MEMORY[0x1E69E5928](v114);
  v23 = v115;
  *v118 = v114;
  (*(v23 + 104))();
  v119 = sub_1B0E44488();
  (*(v115 + 8))(v118, v117);
  result = v119;
  if (v119)
  {
    v25 = v74;
    MEMORY[0x1E69E5920](v114);
    v72 = *(v25 + 112);
    MEMORY[0x1E69E5928](v72);
    v130 = v72;
    v55[0] = v25 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
    v55[1] = v129;
    swift_beginAccess();
    sub_1B03F4D78(v55[0], v105);
    swift_endAccess();
    v68 = sub_1B0879EF0();
    v69 = v26;
    v70 = v27;
    v71 = v28;
    *&v127 = v68;
    *(&v127 + 1) = v26;
    *&v128 = v27;
    *(&v128 + 1) = v28;
    v67 = *sub_1B08772C0();
    MEMORY[0x1E69E5928](v67);
    MEMORY[0x1E69E5928](v72);
    v56 = v94;
    (*(v93 + 16))(v97, v112, v86);
    sub_1B03F4D78(v105, v103);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07BA724(v111);
    sub_1B0394784(v108, v91);
    MEMORY[0x1E69E5928](v114);

    v57 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v58 = (v57 + v95 + *(v100 + 80)) & ~*(v100 + 80);
    v59 = (v58 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 39) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 24 + *(v88 + 80)) & ~*(v88 + 80);
    v62 = (v61 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v73;
    v31 = v57;
    v32 = v93;
    v33 = v97;
    v34 = v72;
    v65 = v29;
    v29[2] = v86;
    v29[3] = v30;
    v29[4] = v34;
    (*(v32 + 32))(v29 + v31, v33);
    sub_1B04158DC(v103, v65 + v58);
    v35 = v60;
    v36 = v111;
    v37 = v106;
    v38 = v107;
    v39 = v61;
    v40 = v65;
    v41 = v69;
    v42 = v70;
    v43 = v71;
    v44 = v91;
    v45 = (v65 + v59);
    *v45 = v68;
    v45[1] = v41;
    v45[2] = v42;
    v45[3] = v43;
    v46 = (v40 + v35);
    *v46 = v36;
    v46[1] = v37;
    v46[2] = v38;
    sub_1B03F4FD0(v44, v40 + v39);
    v47 = v74;
    v48 = v63;
    v49 = v64;
    v50 = v109;
    v51 = v110;
    v52 = v75;
    v53 = v65;
    *(v65 + v62) = v114;
    *(v53 + v48) = v47;
    v54 = (v53 + v49);
    *v54 = v50;
    v54[1] = v51;
    v125 = v52;
    v126 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = 0;
    v123 = sub_1B038C908;
    v124 = &block_descriptor_7;
    v66 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v85, v80, v66);
    (*(v77 + 8))(v80, v76);
    (*(v82 + 8))(v85, v81);
    _Block_release(v66);

    MEMORY[0x1E69E5920](v67);

    sub_1B03F4F08(v105);
    MEMORY[0x1E69E5920](v72);
    return MEMORY[0x1E69E5920](v114);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0879EF0()
{
  v9 = 0;
  v1 = _s18MailboxPersistenceVMa(0);
  v3[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = v3 - v3[0];
  v9 = v0;
  v6 = sub_1B09B0434();
  v4 = v3[1] + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v5 = &v8;
  swift_beginAccess();
  sub_1B03F4D78(v4, v7);
  swift_endAccess();
  return sub_1B0884248(v6, v7);
}

void sub_1B0879FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v70 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v66 = a4;
  v65 = a3;
  v76 = a2;
  v75 = a1;
  v52 = a17;
  v53 = a16;
  v74 = a15;
  v54 = a15;
  v82 = a14;
  v55 = a14;
  v81 = a13;
  v56 = a13;
  v80 = a12;
  v57 = a12;
  v73 = a11;
  v58 = a11;
  v72 = a10;
  v59 = a10;
  v71 = a9;
  v60 = a9;
  v86 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0u;
  v105 = 0u;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v94 = 0;
  v61 = sub_1B0E44238();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](0);
  v64 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1B0E44288();
  v78 = *(v77 - 8);
  v79 = v78;
  MEMORY[0x1EEE9AC00](v75);
  v83 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v19;
  v108 = v20;
  v107 = v21;
  *&v105 = v22;
  *(&v105 + 1) = v23;
  *&v106 = v24;
  *(&v106 + 1) = v25;
  v102 = v26;
  v103 = v27;
  v104 = v28;
  v101 = v29;
  v100 = v80;
  v99 = v81;
  v97 = v82;
  v98 = v30;
  v84 = [objc_opt_self() defaultCenter];
  v85 = @"AccountMailboxListingWillLoad";
  v31 = @"AccountMailboxListingWillLoad";
  v95[0] = v86;
  v95[1] = v86;
  v95[2] = v86;
  v96 = v86;
  if (v86)
  {
    v46 = v96;
    v49 = v95;
    __swift_project_boxed_opaque_existential_0(v95, v96);
    v44 = *(v46 - 8);
    v45 = v44;
    v48 = v39;
    v32 = MEMORY[0x1EEE9AC00](v39);
    v47 = v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v32);
    v50 = sub_1B0E46A58();
    (*(v45 + 8))(v47, v46);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v39[1] = v51;
  [v84 postNotificationName:v85 object:?];
  swift_unknownObjectRelease();

  v42 = 0;
  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v39[2] = v34;
  v40 = sub_1B087A900(v76, v65, v66, v67, v68, v69, v70, v60, v59, v34, v58, v53, v52);

  v41 = v40 & 1;
  v94 = v40 & 1;

  v35 = swift_allocObject();
  v36 = v56;
  v37 = v55;
  v38 = v54;
  *(v35 + 16) = v41;
  *(v35 + 24) = v36;
  *(v35 + 32) = v37;
  *(v35 + 40) = v38;
  v92 = sub_1B08A6B0C;
  v93 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = 0;
  v90 = sub_1B038C908;
  v91 = &block_descriptor_1784;
  v43 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v42, v83, v64, v43);
  (*(v63 + 8))(v64, v61);
  (*(v79 + 8))(v83, v77);
  _Block_release(v43);

  sub_1B087A750();
}

void sub_1B087A750()
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = @"AccountMailboxListingDidLoad";
  v0 = @"AccountMailboxListingDidLoad";
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v2 = 0;
  v1 = 0;
  [v3 postNotificationName:@"AccountMailboxListingDidLoad" object:?];
  swift_unknownObjectRelease();
}

uint64_t sub_1B087A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a1;
  v47 = a2;
  *&v44 = a3;
  *(&v44 + 1) = a4;
  *&v45 = a5;
  *(&v45 + 1) = a6;
  v40 = a7;
  v36 = a8;
  v41 = a9;
  v42 = a10;
  v46 = a11;
  v37 = a12;
  v38 = a13;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v64 = a12;
  _s18MailboxPersistenceVMa(0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v29[-v14];
  v63 = v15;
  v62 = v16;
  v58 = v17;
  v59 = v18;
  v60 = v19;
  v61 = v20;
  v55 = v40;
  v56 = v21;
  v57 = a9;
  v54 = a10;
  v53 = v22;
  v52 = v13;
  v48 = sub_1B0885194(v15, v17, v18, v19, v20, v23, v24);
  v51 = v48 & 1;
  sub_1B0885834(v47, v44, *(&v44 + 1), v45, *(&v45 + 1), v46);
  if (v48)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = v44;
    v50 = v45;
    v34 = v44;
    v35 = v45;
  }

  else
  {
    v31 = sub_1B0885A84(v48);
    sub_1B03F4D78(v47, v43);
    *&v32 = sub_1B0884248(v31, v43);
    *(&v32 + 1) = v25;
    *&v33 = v26;
    *(&v33 + 1) = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = v32;
    v50 = v33;
    v34 = v32;
    v35 = v33;
  }

  v30 = v35;
  *&v29[8] = v34;
  sub_1B0885C8C(v39, v47, v34, *(&v34 + 1), v35, *(&v35 + 1), v40, v36, v41, v42, v46, v37, v38);

  sub_1B071F9F0();
  return v48 & 1;
}

uint64_t sub_1B087AD48(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (sub_1B06E5FB4(a1 & 1, 0))
  {
    sub_1B087AE2C();
    v6 = (a2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
    swift_beginAccess();
    *v6 = 0;

    swift_endAccess();
  }

  a3(v4);
}

uint64_t sub_1B087AE2C()
{
  v118 = 0;
  v136 = 0;
  v135 = 0;
  v113 = 0;
  v131 = 0;
  v114 = sub_1B0E439A8();
  v115 = *(v114 - 8);
  v116 = v115;
  MEMORY[0x1EEE9AC00](0);
  v117 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6LoggerVMa(v2);
  MEMORY[0x1EEE9AC00](v118);
  v119 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1B0E44468();
  v120 = *(v123 - 8);
  v122 = v120;
  MEMORY[0x1EEE9AC00](v123 - 8);
  v124 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = v0;

  v121 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  v5 = v121;
  v6 = v122;
  *v124 = v121;
  (*(v6 + 104))();
  v125 = sub_1B0E44488();
  (*(v122 + 8))(v124, v123);
  result = v125;
  if ((v125 & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v113;

  v100 = swift_allocObject();
  v97 = v100;
  v105 = v100 + 16;
  v135 = v100 + 16;
  v101 = 0;
  v98 = sub_1B0E42E68();
  v99 = sub_1B0E46A48();
  sub_1B07BAD2C();
  *(v100 + 16) = sub_1B0E45438();
  v133 = sub_1B09B0668();
  v103 = sub_1B0E45C48();
  v102 = v103;
  v104 = sub_1B0E46A48();
  sub_1B074E39C();
  v132 = sub_1B0E45438();

  v106 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v108 = &v34;
  v36 = v112;
  v37 = v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
  v107 = v110;
  sub_1B071CEA8();
  sub_1B0E44FD8();
  v111 = v8;
  if (v8)
  {

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = v117;

  sub_1B039E440(&v133);
  v69 = v134;
  v68 = v134;
  v131 = v134;
  sub_1B0394784(v112 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v119);
  (*(v116 + 16))(v10, v119, v114);
  sub_1B039480C(v119);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82 = 7;
  v83 = swift_allocObject();
  *(v83 + 16) = v69;
  v96 = sub_1B0E43988();
  v70 = v96;
  v95 = sub_1B0E45908();
  v71 = v95;
  v77 = 17;
  v86 = swift_allocObject();
  v72 = v86;
  v76 = 0;
  *(v86 + 16) = 0;
  v87 = swift_allocObject();
  v73 = v87;
  v79 = 8;
  *(v87 + 16) = 8;
  v81 = 32;
  v11 = swift_allocObject();
  v12 = v97;
  v74 = v11;
  *(v11 + 16) = sub_1B08A2BD8;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v74;
  v88 = v13;
  v75 = v13;
  *(v13 + 16) = sub_1B03B0DF8;
  *(v13 + 24) = v14;
  v89 = swift_allocObject();
  v78 = v89;
  *(v89 + 16) = v76;
  v90 = swift_allocObject();
  v80 = v90;
  *(v90 + 16) = v79;
  v15 = swift_allocObject();
  v16 = v83;
  v84 = v15;
  *(v15 + 16) = sub_1B08A2BE0;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v84;
  v93 = v17;
  v85 = v17;
  *(v17 + 16) = sub_1B03B0DF8;
  *(v17 + 24) = v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v91 = sub_1B0E46A48();
  v92 = v19;

  v20 = v86;
  v21 = v92;
  *v92 = sub_1B0398F5C;
  v21[1] = v20;

  v22 = v87;
  v23 = v92;
  v92[2] = sub_1B0398F5C;
  v23[3] = v22;

  v24 = v88;
  v25 = v92;
  v92[4] = sub_1B0399260;
  v25[5] = v24;

  v26 = v89;
  v27 = v92;
  v92[6] = sub_1B0398F5C;
  v27[7] = v26;

  v28 = v90;
  v29 = v92;
  v92[8] = sub_1B0398F5C;
  v29[9] = v28;

  v30 = v92;
  v31 = v93;
  v92[10] = sub_1B0399260;
  v30[11] = v31;
  sub_1B0394964();

  if (os_log_type_enabled(v96, v95))
  {
    v32 = v111;
    v62 = sub_1B0E45D78();
    v58 = v62;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v60 = 0;
    v63 = sub_1B03949A8(0, v59, v59);
    v61 = v63;
    v64 = sub_1B03949A8(v60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v130[0] = v62;
    v129 = v63;
    v128 = v64;
    v65 = v130;
    sub_1B0394A48(0, v130);
    sub_1B0394A48(2, v65);
    v126 = sub_1B0398F5C;
    v127 = v72;
    sub_1B03949FC(&v126, v65, &v129, &v128);
    v66 = v32;
    v67 = v32;
    if (v32)
    {
      v56 = 0;

      __break(1u);
    }

    else
    {
      v126 = sub_1B0398F5C;
      v127 = v73;
      sub_1B03949FC(&v126, v130, &v129, &v128);
      v54 = 0;
      v55 = 0;
      v126 = sub_1B0399260;
      v127 = v75;
      sub_1B03949FC(&v126, v130, &v129, &v128);
      v52 = 0;
      v53 = 0;
      v126 = sub_1B0398F5C;
      v127 = v78;
      sub_1B03949FC(&v126, v130, &v129, &v128);
      v50 = 0;
      v51 = 0;
      v126 = sub_1B0398F5C;
      v127 = v80;
      sub_1B03949FC(&v126, v130, &v129, &v128);
      v48 = 0;
      v49 = 0;
      v126 = sub_1B0399260;
      v127 = v85;
      sub_1B03949FC(&v126, v130, &v129, &v128);
      v46 = 0;
      v47 = 0;
      _os_log_impl(&dword_1B0389000, v70, v71, "%ld removed mailbox(es) and %ld stale message action for removed mailboxes.", v58, 0x16u);
      v45 = 0;
      sub_1B03998A8(v61, 0, v59);
      sub_1B03998A8(v64, v45, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v57 = v46;
    }
  }

  else
  {
    v33 = v111;

    v57 = v33;
  }

  (*(v116 + 8))(v117, v114);
  v42 = sub_1B03F1544();
  v44 = [v42 persistence];
  v43 = v44;

  if (v44)
  {
    v41 = v43;
  }

  else
  {
    LODWORD(v36) = 0;
    v35 = 190;
    LOBYTE(v34) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v40 = [v41 messageChangeManager];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v130[1] = v68;
  sub_1B07B61A0();
  v38[1] = sub_1B0E45378();
  v39 = sub_1B0E451A8();

  [v40 deleteLocalMessageActionsWithIDs_];
}

uint64_t sub_1B087BE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v83 = a2;
  v82 = a3;
  v56 = sub_1B08A2BE8;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v106 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v100 = 0;
  v74 = 0;
  v57 = sub_1B0E44238();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = v39 - v60;
  v62 = sub_1B0E44288();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v66 = v39 - v65;
  v67 = *(_s6LoggerVMa(v4) - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v71 = v39 - v70;
  v72 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v73 = v39 - v72;
  v112 = v39 - v72;
  v75 = *(_s18MailboxPersistenceVMa(v7) - 8);
  v76 = v75;
  v77 = *(v75 + 64);
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v79 = v39 - v78;
  v80 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v81 = v39 - v80;
  v111 = v39 - v80;
  v90 = sub_1B0E44468();
  v88 = *(v90 - 8);
  v89 = v90 - 8;
  v85 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v91 = (v39 - v85);
  v86 = *v10;
  v110 = v86;
  v108 = v11;
  v109 = v12;
  v107 = v3;
  v87 = *(v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v87);
  v106 = v87;
  MEMORY[0x1E69E5928](v87);
  MEMORY[0x1E69E5928](v87);
  v13 = v88;
  *v91 = v87;
  (*(v13 + 104))();
  v92 = sub_1B0E44488();
  (*(v88 + 8))(v91, v90);
  result = v92;
  if (v92)
  {
    v15 = v55;
    MEMORY[0x1E69E5920](v87);
    v39[0] = v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
    v39[1] = v105;
    swift_beginAccess();
    sub_1B03F4D78(v39[0], v81);
    swift_endAccess();
    v52 = sub_1B09B03B8();
    v53 = v16;
    v54 = v17;
    v102 = v52;
    v103 = v16;
    v104 = v17;
    v51 = *(v55 + 112);
    MEMORY[0x1E69E5928](v51);
    v101 = v51;
    v50 = sub_1B09B0434();
    v100 = v50;
    sub_1B0394784(v55 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v73);
    v49 = *sub_1B08772C0();
    MEMORY[0x1E69E5928](v49);
    MEMORY[0x1E69E5928](v51);
    sub_1B03F4D78(v81, v79);
    sub_1B07BA724(v52);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394784(v73, v71);
    MEMORY[0x1E69E5928](v87);

    v40 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v41 = (v40 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 31) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 8 + *(v68 + 80)) & ~*(v68 + 80);
    v44 = (v43 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    v19 = v86;
    v20 = v40;
    v21 = v18;
    v22 = v79;
    v47 = v21;
    *(v21 + 16) = v51;
    *(v21 + 24) = v19;
    sub_1B04158DC(v22, v21 + v20);
    v23 = v42;
    v24 = v43;
    v25 = v47;
    v26 = v50;
    v27 = v53;
    v28 = v54;
    v29 = v71;
    v30 = (v47 + v41);
    *v30 = v52;
    v30[1] = v27;
    v30[2] = v28;
    *(v25 + v23) = v26;
    sub_1B03F4FD0(v29, v25 + v24);
    v31 = v55;
    v32 = v45;
    v33 = v46;
    v34 = v83;
    v35 = v82;
    v36 = v56;
    v37 = v47;
    *(v47 + v44) = v87;
    *(v37 + v32) = v31;
    v38 = (v37 + v33);
    *v38 = v34;
    v38[1] = v35;
    v98 = v36;
    v99 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = 0;
    v96 = sub_1B038C908;
    v97 = &block_descriptor_111;
    v48 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v66, v61, v48);
    (*(v58 + 8))(v61, v57);
    (*(v63 + 8))(v66, v62);
    _Block_release(v48);

    MEMORY[0x1E69E5920](v49);
    sub_1B039480C(v73);

    MEMORY[0x1E69E5920](v51);
    sub_1B07BA794(v52);
    sub_1B03F4F08(v81);
    return MEMORY[0x1E69E5920](v87);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B087C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27[1] = a2;
  v27[7] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v27[8] = a9;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = sub_1B08A69EC;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v32 = 0;
  v36 = sub_1B0E44238();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v27[0] = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = v27 - v27[0];
  v40 = sub_1B0E44288();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  MEMORY[0x1EEE9AC00](v40);
  v39 = v27 - v13;
  v61 = a1;
  v60 = v14;
  v59 = v15;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  v55 = v19;
  v54 = v20;
  v53 = v21;
  v52 = v28;
  v50 = v29;
  v51 = v30;
  v49 = v14;
  sub_1B087CBE0(&v49, v15, v16, v17, v18, v19, v20);

  v22 = swift_allocObject();
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v22[2] = v28;
  v22[3] = v23;
  v22[4] = v24;
  v47 = v25;
  v48 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = 0;
  v45 = sub_1B038C908;
  v46 = &block_descriptor_1778;
  v41 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v32, v39, v35, v41);
  (*(v33 + 8))(v35, v36);
  (*(v37 + 8))(v39, v40);
  _Block_release(v41);
}

uint64_t sub_1B087CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v381 = a7;
  v380 = a6;
  v379 = a5;
  v378 = a4;
  v377 = a3;
  v357 = a2;
  v382 = a1;
  v372 = 0;
  v418 = 0;
  v417 = 0;
  v416 = 0;
  v415 = 0;
  v414 = 0;
  v413 = 0;
  v412 = 0;
  v411 = 0;
  v410 = 0;
  v358 = 0;
  v403 = 0;
  v402 = 0;
  v399 = 0;
  v393 = 0;
  v359 = _s6LoggerVMa(0);
  v361 = *(*(v359 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v363 = (v361 + 15) & 0xFFFFFFFFFFFFFFF0;
  v360 = &v148 - v363;
  MEMORY[0x1EEE9AC00](v8);
  v362 = &v148 - v363;
  MEMORY[0x1EEE9AC00](v9);
  v364 = &v148 - v363;
  v365 = sub_1B0E439A8();
  v366 = *(v365 - 8);
  v367 = v366;
  v368 = *(v366 + 64);
  MEMORY[0x1EEE9AC00](v365 - 8);
  v370 = (v368 + 15) & 0xFFFFFFFFFFFFFFF0;
  v369 = &v148 - v370;
  MEMORY[0x1EEE9AC00](&v148 - v370);
  v371 = &v148 - v370;
  v373 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  MEMORY[0x1EEE9AC00](v372);
  v375 = (v373 + 15) & 0xFFFFFFFFFFFFFFF0;
  v374 = &v148 - v375;
  MEMORY[0x1EEE9AC00](v10);
  v391 = &v148 - v375;
  v376 = &v148 - v375;
  v392 = sub_1B0E42E68();
  v383 = v392;
  v384 = *(v392 - 8);
  v390 = v384;
  v385 = v384;
  v386 = *(v384 + 64);
  MEMORY[0x1EEE9AC00](v382);
  v388 = &v148 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = v388;
  v389 = *v11;
  v417 = v389;
  v416 = a2;
  v413 = v12;
  v414 = v13;
  v415 = v14;
  v412 = v15;
  v411 = v16;
  v410 = v387;
  v409 = v389;
  sub_1B07C04F4(&v409, v17);
  if ((*(v390 + 48))(v391, 1, v392) == 1)
  {
    v85 = v369;
    sub_1B06E3800(v376);
    (*(v367 + 16))(v85, v381, v365);
    sub_1B0394784(v381, v364);
    sub_1B0394784(v364, v362);
    sub_1B03F4FD0(v364, v360);
    v86 = (v362 + *(v359 + 20));
    v188 = *v86;
    v189 = *(v86 + 1);
    sub_1B039480C(v362);
    v191 = 24;
    v222 = 7;
    v87 = swift_allocObject();
    v88 = v189;
    v201 = v87;
    *(v87 + 16) = v188;
    *(v87 + 20) = v88;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v89 = swift_allocObject();
    v90 = v189;
    v190 = v89;
    *(v89 + 16) = v188;
    *(v89 + 20) = v90;

    v217 = 32;
    v221 = 32;
    v91 = swift_allocObject();
    v92 = v190;
    v214 = v91;
    *(v91 + 16) = sub_1B039BBE8;
    *(v91 + 24) = v92;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v360);
    v192 = swift_allocObject();
    *(v192 + 16) = v389;

    v93 = swift_allocObject();
    v94 = v192;
    v223 = v93;
    *(v93 + 16) = sub_1B06BA324;
    *(v93 + 24) = v94;

    v245 = sub_1B0E43988();
    v193 = v245;
    v244 = sub_1B0E458E8();
    v194 = v244;
    v218 = 17;
    v226 = swift_allocObject();
    v195 = v226;
    v204 = 16;
    *(v226 + 16) = 16;
    v227 = swift_allocObject();
    v196 = v227;
    v212 = 4;
    *(v227 + 16) = 4;
    v95 = swift_allocObject();
    v197 = v95;
    *(v95 + 16) = sub_1B0394C30;
    v207 = 0;
    *(v95 + 24) = 0;
    v96 = swift_allocObject();
    v97 = v197;
    v228 = v96;
    v198 = v96;
    *(v96 + 16) = sub_1B0394C24;
    *(v96 + 24) = v97;
    v229 = swift_allocObject();
    v199 = v229;
    v210 = 0;
    *(v229 + 16) = 0;
    v230 = swift_allocObject();
    v200 = v230;
    *(v230 + 16) = 1;
    v98 = swift_allocObject();
    v99 = v201;
    v202 = v98;
    *(v98 + 16) = sub_1B039BA2C;
    *(v98 + 24) = v99;
    v100 = swift_allocObject();
    v101 = v202;
    v231 = v100;
    v203 = v100;
    *(v100 + 16) = sub_1B039BA88;
    *(v100 + 24) = v101;
    v232 = swift_allocObject();
    v205 = v232;
    *(v232 + 16) = v204;
    v233 = swift_allocObject();
    v206 = v233;
    *(v233 + 16) = v212;
    v102 = swift_allocObject();
    v103 = v207;
    v208 = v102;
    *(v102 + 16) = sub_1B039BB94;
    *(v102 + 24) = v103;
    v104 = swift_allocObject();
    v105 = v208;
    v234 = v104;
    v209 = v104;
    *(v104 + 16) = sub_1B0394C24;
    *(v104 + 24) = v105;
    v235 = swift_allocObject();
    v211 = v235;
    *(v235 + 16) = v210;
    v236 = swift_allocObject();
    v213 = v236;
    *(v236 + 16) = v212;
    v106 = swift_allocObject();
    v107 = v214;
    v215 = v106;
    *(v106 + 16) = sub_1B039BBA0;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v215;
    v237 = v108;
    v216 = v108;
    *(v108 + 16) = sub_1B039BC08;
    *(v108 + 24) = v109;
    v238 = swift_allocObject();
    v219 = v238;
    *(v238 + 16) = v217;
    v239 = swift_allocObject();
    v220 = v239;
    *(v239 + 16) = 8;
    v110 = swift_allocObject();
    v111 = v223;
    v224 = v110;
    *(v110 + 16) = sub_1B03FB1CC;
    *(v110 + 24) = v111;
    v112 = swift_allocObject();
    v113 = v224;
    v242 = v112;
    v225 = v112;
    *(v112 + 16) = sub_1B039BCF8;
    *(v112 + 24) = v113;
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v240 = sub_1B0E46A48();
    v241 = v114;

    v115 = v226;
    v116 = v241;
    *v241 = sub_1B0398F5C;
    v116[1] = v115;

    v117 = v227;
    v118 = v241;
    v241[2] = sub_1B0398F5C;
    v118[3] = v117;

    v119 = v228;
    v120 = v241;
    v241[4] = sub_1B0399178;
    v120[5] = v119;

    v121 = v229;
    v122 = v241;
    v241[6] = sub_1B0398F5C;
    v122[7] = v121;

    v123 = v230;
    v124 = v241;
    v241[8] = sub_1B0398F5C;
    v124[9] = v123;

    v125 = v231;
    v126 = v241;
    v241[10] = sub_1B039BA94;
    v126[11] = v125;

    v127 = v232;
    v128 = v241;
    v241[12] = sub_1B0398F5C;
    v128[13] = v127;

    v129 = v233;
    v130 = v241;
    v241[14] = sub_1B0398F5C;
    v130[15] = v129;

    v131 = v234;
    v132 = v241;
    v241[16] = sub_1B0399178;
    v132[17] = v131;

    v133 = v235;
    v134 = v241;
    v241[18] = sub_1B0398F5C;
    v134[19] = v133;

    v135 = v236;
    v136 = v241;
    v241[20] = sub_1B0398F5C;
    v136[21] = v135;

    v137 = v237;
    v138 = v241;
    v241[22] = sub_1B03991EC;
    v138[23] = v137;

    v139 = v238;
    v140 = v241;
    v241[24] = sub_1B0398F5C;
    v140[25] = v139;

    v141 = v239;
    v142 = v241;
    v241[26] = sub_1B0398F5C;
    v142[27] = v141;

    v143 = v241;
    v144 = v242;
    v241[28] = sub_1B039BCEC;
    v143[29] = v144;
    sub_1B0394964();

    if (os_log_type_enabled(v245, v244))
    {
      v145 = v358;
      v182 = sub_1B0E45D78();
      v179 = v182;
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v183 = sub_1B03949A8(0, v180, v180);
      v181 = v183;
      v184 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v408 = v182;
      v407 = v183;
      v406 = v184;
      v185 = &v408;
      sub_1B0394A48(2, &v408);
      sub_1B0394A48(5, v185);
      v404 = sub_1B0398F5C;
      v405 = v195;
      sub_1B03949FC(&v404, v185, &v407, &v406);
      v186 = v145;
      v187 = v145;
      if (v145)
      {
        v177 = 0;

        __break(1u);
      }

      else
      {
        v404 = sub_1B0398F5C;
        v405 = v196;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v175 = 0;
        v176 = 0;
        v404 = sub_1B0399178;
        v405 = v198;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v173 = 0;
        v174 = 0;
        v404 = sub_1B0398F5C;
        v405 = v199;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v171 = 0;
        v172 = 0;
        v404 = sub_1B0398F5C;
        v405 = v200;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v169 = 0;
        v170 = 0;
        v404 = sub_1B039BA94;
        v405 = v203;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v167 = 0;
        v168 = 0;
        v404 = sub_1B0398F5C;
        v405 = v205;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v165 = 0;
        v166 = 0;
        v404 = sub_1B0398F5C;
        v405 = v206;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v163 = 0;
        v164 = 0;
        v404 = sub_1B0399178;
        v405 = v209;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v161 = 0;
        v162 = 0;
        v404 = sub_1B0398F5C;
        v405 = v211;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v159 = 0;
        v160 = 0;
        v404 = sub_1B0398F5C;
        v405 = v213;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v157 = 0;
        v158 = 0;
        v404 = sub_1B03991EC;
        v405 = v216;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v155 = 0;
        v156 = 0;
        v404 = sub_1B0398F5C;
        v405 = v219;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v153 = 0;
        v154 = 0;
        v404 = sub_1B0398F5C;
        v405 = v220;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v151 = 0;
        v152 = 0;
        v404 = sub_1B039BCEC;
        v405 = v225;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v149 = 0;
        v150 = 0;
        _os_log_impl(&dword_1B0389000, v193, v194, "[%.*hhx-%.*X] Could not find mailbox URL for mailbox %s", v179, 0x21u);
        sub_1B03998A8(v181, 0, v180);
        sub_1B03998A8(v184, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v178 = v149;
      }
    }

    else
    {
      v146 = v358;

      v178 = v146;
    }

    v148 = v178;

    (*(v367 + 8))(v369, v365);
    return v148;
  }

  v18 = v358;
  (*(v385 + 32))(v388, v376, v383);
  (*(v385 + 16))(v374, v388, v383);
  (*(v385 + 56))(v374, 0, 1, v383);
  v351 = sub_1B07BF5C8(v374);
  v352 = v19;
  v350 = v351;
  sub_1B06E3800(v374);
  v402 = v351;
  v403 = v352;
  v400 = v380;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v353 = &v148;
  MEMORY[0x1EEE9AC00](v351);
  v354 = &v148 - 4;
  *(&v148 - 2) = v20;
  *(&v148 - 2) = v21;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B8, &qword_1B0EA2020);
  sub_1B08A2E10();
  sub_1B0E44FB8();
  v356 = v18;
  if (!v18)
  {

    v349 = v401;
    v348 = v401;
    v399 = v401;
    v22 = v401;
    if (v349)
    {
      v347 = v348;
      v345 = v348;
      v393 = v348;
      v344 = sub_1B0888AF4();
      v23 = [v345 actionID];
      [v344 deleteMailboxAction_];

      (*(v385 + 8))(v388, v383);
      return v356;
    }

    else
    {
      (*(v367 + 16))(v371, v381, v365);
      sub_1B0394784(v381, v364);
      sub_1B0394784(v364, v362);
      sub_1B03F4FD0(v364, v360);
      v24 = (v362 + *(v359 + 20));
      v286 = *v24;
      v287 = *(v24 + 1);
      sub_1B039480C(v362);
      v289 = 24;
      v320 = 7;
      v25 = swift_allocObject();
      v26 = v287;
      v299 = v25;
      *(v25 + 16) = v286;
      *(v25 + 20) = v26;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v27 = swift_allocObject();
      v28 = v287;
      v288 = v27;
      *(v27 + 16) = v286;
      *(v27 + 20) = v28;

      v315 = 32;
      v319 = 32;
      v29 = swift_allocObject();
      v30 = v288;
      v312 = v29;
      *(v29 + 16) = sub_1B039BBE8;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v360);
      v290 = swift_allocObject();
      *(v290 + 16) = v389;

      v31 = swift_allocObject();
      v32 = v290;
      v321 = v31;
      *(v31 + 16) = sub_1B06BA324;
      *(v31 + 24) = v32;

      v343 = sub_1B0E43988();
      v291 = v343;
      v342 = sub_1B0E458E8();
      v292 = v342;
      v316 = 17;
      v324 = swift_allocObject();
      v293 = v324;
      v302 = 16;
      *(v324 + 16) = 16;
      v325 = swift_allocObject();
      v294 = v325;
      v310 = 4;
      *(v325 + 16) = 4;
      v33 = swift_allocObject();
      v295 = v33;
      *(v33 + 16) = sub_1B0394C30;
      v305 = 0;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v295;
      v326 = v34;
      v296 = v34;
      *(v34 + 16) = sub_1B0394C24;
      *(v34 + 24) = v35;
      v327 = swift_allocObject();
      v297 = v327;
      v308 = 0;
      *(v327 + 16) = 0;
      v328 = swift_allocObject();
      v298 = v328;
      *(v328 + 16) = 1;
      v36 = swift_allocObject();
      v37 = v299;
      v300 = v36;
      *(v36 + 16) = sub_1B039BA2C;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v300;
      v329 = v38;
      v301 = v38;
      *(v38 + 16) = sub_1B039BA88;
      *(v38 + 24) = v39;
      v330 = swift_allocObject();
      v303 = v330;
      *(v330 + 16) = v302;
      v331 = swift_allocObject();
      v304 = v331;
      *(v331 + 16) = v310;
      v40 = swift_allocObject();
      v41 = v305;
      v306 = v40;
      *(v40 + 16) = sub_1B039BB94;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v306;
      v332 = v42;
      v307 = v42;
      *(v42 + 16) = sub_1B0394C24;
      *(v42 + 24) = v43;
      v333 = swift_allocObject();
      v309 = v333;
      *(v333 + 16) = v308;
      v334 = swift_allocObject();
      v311 = v334;
      *(v334 + 16) = v310;
      v44 = swift_allocObject();
      v45 = v312;
      v313 = v44;
      *(v44 + 16) = sub_1B039BBA0;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v313;
      v335 = v46;
      v314 = v46;
      *(v46 + 16) = sub_1B039BC08;
      *(v46 + 24) = v47;
      v336 = swift_allocObject();
      v317 = v336;
      *(v336 + 16) = v315;
      v337 = swift_allocObject();
      v318 = v337;
      *(v337 + 16) = 8;
      v48 = swift_allocObject();
      v49 = v321;
      v322 = v48;
      *(v48 + 16) = sub_1B03FB1CC;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v322;
      v340 = v50;
      v323 = v50;
      *(v50 + 16) = sub_1B039BCF8;
      *(v50 + 24) = v51;
      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v338 = sub_1B0E46A48();
      v339 = v52;

      v53 = v324;
      v54 = v339;
      *v339 = sub_1B0398F5C;
      v54[1] = v53;

      v55 = v325;
      v56 = v339;
      v339[2] = sub_1B0398F5C;
      v56[3] = v55;

      v57 = v326;
      v58 = v339;
      v339[4] = sub_1B0399178;
      v58[5] = v57;

      v59 = v327;
      v60 = v339;
      v339[6] = sub_1B0398F5C;
      v60[7] = v59;

      v61 = v328;
      v62 = v339;
      v339[8] = sub_1B0398F5C;
      v62[9] = v61;

      v63 = v329;
      v64 = v339;
      v339[10] = sub_1B039BA94;
      v64[11] = v63;

      v65 = v330;
      v66 = v339;
      v339[12] = sub_1B0398F5C;
      v66[13] = v65;

      v67 = v331;
      v68 = v339;
      v339[14] = sub_1B0398F5C;
      v68[15] = v67;

      v69 = v332;
      v70 = v339;
      v339[16] = sub_1B0399178;
      v70[17] = v69;

      v71 = v333;
      v72 = v339;
      v339[18] = sub_1B0398F5C;
      v72[19] = v71;

      v73 = v334;
      v74 = v339;
      v339[20] = sub_1B0398F5C;
      v74[21] = v73;

      v75 = v335;
      v76 = v339;
      v339[22] = sub_1B03991EC;
      v76[23] = v75;

      v77 = v336;
      v78 = v339;
      v339[24] = sub_1B0398F5C;
      v78[25] = v77;

      v79 = v337;
      v80 = v339;
      v339[26] = sub_1B0398F5C;
      v80[27] = v79;

      v81 = v339;
      v82 = v340;
      v339[28] = sub_1B039BCEC;
      v81[29] = v82;
      sub_1B0394964();

      if (os_log_type_enabled(v343, v342))
      {
        v83 = v356;
        v280 = sub_1B0E45D78();
        v277 = v280;
        v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v281 = sub_1B03949A8(0, v278, v278);
        v279 = v281;
        v282 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v398 = v280;
        v397 = v281;
        v396 = v282;
        v283 = &v398;
        sub_1B0394A48(2, &v398);
        sub_1B0394A48(5, v283);
        v394 = sub_1B0398F5C;
        v395 = v293;
        sub_1B03949FC(&v394, v283, &v397, &v396);
        v284 = v83;
        v285 = v83;
        if (v83)
        {
          v275 = 0;

          __break(1u);
        }

        else
        {
          v394 = sub_1B0398F5C;
          v395 = v294;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v273 = 0;
          v274 = 0;
          v394 = sub_1B0399178;
          v395 = v296;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v271 = 0;
          v272 = 0;
          v394 = sub_1B0398F5C;
          v395 = v297;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v269 = 0;
          v270 = 0;
          v394 = sub_1B0398F5C;
          v395 = v298;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v267 = 0;
          v268 = 0;
          v394 = sub_1B039BA94;
          v395 = v301;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v265 = 0;
          v266 = 0;
          v394 = sub_1B0398F5C;
          v395 = v303;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v263 = 0;
          v264 = 0;
          v394 = sub_1B0398F5C;
          v395 = v304;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v261 = 0;
          v262 = 0;
          v394 = sub_1B0399178;
          v395 = v307;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v259 = 0;
          v260 = 0;
          v394 = sub_1B0398F5C;
          v395 = v309;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v257 = 0;
          v258 = 0;
          v394 = sub_1B0398F5C;
          v395 = v311;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v255 = 0;
          v256 = 0;
          v394 = sub_1B03991EC;
          v395 = v314;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v253 = 0;
          v254 = 0;
          v394 = sub_1B0398F5C;
          v395 = v317;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v251 = 0;
          v252 = 0;
          v394 = sub_1B0398F5C;
          v395 = v318;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v249 = 0;
          v250 = 0;
          v394 = sub_1B039BCEC;
          v395 = v323;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v247 = 0;
          v248 = 0;
          _os_log_impl(&dword_1B0389000, v291, v292, "[%.*hhx-%.*X] Could not find failed create action for mailbox %s", v277, 0x21u);
          sub_1B03998A8(v279, 0, v278);
          sub_1B03998A8(v282, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v276 = v247;
        }
      }

      else
      {
        v84 = v356;

        v276 = v84;
      }

      v246 = v276;

      (*(v367 + 8))(v371, v365);

      (*(v385 + 8))(v388, v383);
      return v246;
    }
  }

  __break(1u);
  return result;
}