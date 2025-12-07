id sub_1CA4BEF3C()
{
  sub_1CA4BEFF0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC445BE0 = result;
  return result;
}

id static NSBundle.workflowKit.getter()
{
  if (qword_1EC442D88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC445BE0;

  return v1;
}

unint64_t sub_1CA4BEFF0()
{
  result = qword_1EC4441F0;
  if (!qword_1EC4441F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4441F0);
  }

  return result;
}

uint64_t sub_1CA4BF068()
{
  v1020 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v1013 = xmmword_1CA981380;
  *(inited + 16) = xmmword_1CA981380;
  v991 = 0xD000000000000011;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = MEMORY[0x1E69E6158];
  v2 = sub_1CA94C1E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v2;
  v1004 = v3;
  *(inited + 72) = v3;
  strcpy((inited + 80), "DocumentTypes");
  *(inited + 94) = -4864;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 96) = &unk_1F4A00CE8;
  *(inited + 120) = v4;
  strcpy((inited + 128), "ExportedTypes");
  *(inited + 142) = -4864;
  *(inited + 144) = &unk_1F4A00D58;
  v986 = v4;
  *(inited + 168) = v4;
  *(inited + 176) = 0xD000000000000010;
  v1011 = 0xD000000000000010;
  *(inited + 184) = 0x80000001CA9A8AF0;
  *(inited + 192) = 0x3436363336313031;
  *(inited + 200) = 0xEA00000000003734;
  *(inited + 216) = v1;
  *(inited + 224) = 1701667150;
  *(inited + 232) = 0xE400000000000000;
  v5 = sub_1CA94C438("Bear (App Name)", 15);
  v7 = v6;
  v8 = sub_1CA94C438("Bear", 4);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v1026 = v12;
  v1023 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v948 - v1023;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v1025 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v1024 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v948 - v1024;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v1021 = v20;
  *(inited + 240) = v19;
  *(inited + 264) = v20;
  *(inited + 272) = 0x6D656863534C5255;
  v970 = 0xEA00000000007365;
  *(inited + 280) = 0xEA00000000007365;
  v1003 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v973 = swift_allocObject();
  v1000 = xmmword_1CA981310;
  *(v973 + 16) = xmmword_1CA981310;
  v21 = swift_initStackObject();
  v972 = v21;
  v1006 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = 0x736E6F69746341;
  *(v21 + 40) = 0xE700000000000000;
  v1005 = swift_allocObject();
  *(v1005 + 16) = v1013;
  v22 = swift_allocObject();
  v967 = xmmword_1CA9813F0;
  *(v22 + 16) = xmmword_1CA9813F0;
  strcpy((v22 + 32), "ActionKeywords");
  *(v22 + 47) = -18;
  v23 = sub_1CA94C438("make|document", 13);
  v25 = v24;
  v26 = sub_1CA94C438("make|document", 13);
  v28 = v27;
  v1022 = &v948;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v948 - v1023;
  sub_1CA948D98();
  v30 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v971 = inited;
  v31 = &v948 - v1024;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 48) = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v31);
  *(v22 + 72) = v1021;
  *(v22 + 80) = 0x79726F6765746143;
  *(v22 + 88) = 0xE800000000000000;
  v33 = *MEMORY[0x1E6996FC8];
  type metadata accessor for WFContentCategory(0);
  v999 = v34;
  *(v22 + 96) = v33;
  *(v22 + 120) = v34;
  strcpy((v22 + 128), "CreationDate");
  *(v22 + 141) = 0;
  *(v22 + 142) = -5120;
  v998 = sub_1CA948CB8();
  *(v22 + 168) = v998;
  __swift_allocate_boxed_opaque_existential_1((v22 + 144));
  v977 = v33;
  sub_1CA948C28();
  *(v22 + 176) = 0x7470697263736544;
  *(v22 + 184) = 0xEB000000006E6F69;
  v1001 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v997 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v35 = swift_initStackObject();
  *(v35 + 16) = v1006;
  *(v35 + 32) = @"DescriptionInput";
  v966 = @"DescriptionInput";
  v1019 = sub_1CA94C438("The contents to insert into the new note.", 41);
  v1018 = v36;
  v37 = sub_1CA94C438("The contents to insert into the new note.", 41);
  v1017 = v38;
  v1022 = &v948;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v1023;
  sub_1CA948D98();
  v40 = [qword_1EDB9F690 bundleURL];
  v1016 = &v948;
  MEMORY[0x1EEE9AC00](v40);
  v41 = v1024;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v35 + 40) = sub_1CA2F9F14(v1019, v1018, v37, v1017, 0, 0, &v948 - v39, &v948 - v41);
  *(v35 + 64) = v1021;
  *(v35 + 72) = @"DescriptionResult";
  v975 = @"DescriptionResult";
  v1019 = sub_1CA94C438("The identifier of the new note (if Return to Shortcuts is selected)", 67);
  v1018 = v43;
  v1017 = sub_1CA94C438("The identifier of the new note (if Return to Shortcuts is selected)", 67);
  v45 = v44;
  v1022 = &v948;
  MEMORY[0x1EEE9AC00](v1017);
  sub_1CA948D98();
  v46 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v35 + 80) = sub_1CA2F9F14(v1019, v1018, v1017, v45, 0, 0, &v948 - v39, &v948 - v41);
  v48 = v1021;
  *(v35 + 104) = v1021;
  *(v35 + 112) = @"DescriptionSummary";
  v965 = @"DescriptionSummary";
  v1019 = sub_1CA94C438("Creates a new note in Bear.", 27);
  v1018 = v49;
  v1017 = sub_1CA94C438("Creates a new note in Bear.", 27);
  v51 = v50;
  v1022 = &v948;
  MEMORY[0x1EEE9AC00](v1017);
  v52 = &v948 - v1023;
  sub_1CA948D98();
  v53 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v948 - v1024;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v1019, v1018, v1017, v51, 0, 0, v52, v54);
  *(v35 + 144) = v48;
  *(v35 + 120) = v56;
  type metadata accessor for DescriptionKey(0);
  v996 = v57;
  v995 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v58 = sub_1CA94C1E8();
  v59 = v1001;
  v60 = sub_1CA6B3784(v58);
  v978 = v22;
  *(v22 + 192) = v60;
  *(v22 + 216) = v59;
  *(v22 + 224) = 0x74616D726F46;
  *(v22 + 232) = 0xE600000000000000;
  *(v22 + 240) = 0xD000000000000028;
  *(v22 + 248) = 0x80000001CA9C0C00;
  v61 = MEMORY[0x1E69E6158];
  *(v22 + 264) = MEMORY[0x1E69E6158];
  *(v22 + 272) = 0x696669746E656449;
  v994 = 0xEA00000000007265;
  *(v22 + 280) = 0xEA00000000007265;
  *(v22 + 288) = 0x657461657263;
  *(v22 + 296) = 0xE600000000000000;
  *(v22 + 312) = v61;
  strcpy((v22 + 320), "InputMapping");
  *(v22 + 333) = 0;
  *(v22 + 334) = -5120;
  v62 = swift_allocObject();
  v1007 = xmmword_1CA981370;
  *(v62 + 16) = xmmword_1CA981370;
  v63 = v62;
  *&v992 = v62;
  v64 = swift_initStackObject();
  *(v64 + 16) = v1013;
  v985 = 0x80000001CA9ACAF0;
  *(v64 + 32) = 0xD000000000000013;
  *(v64 + 40) = 0x80000001CA9ACAF0;
  v960 = 0x80000001CA9C0C30;
  v1014 = 0xD000000000000014;
  *(v64 + 48) = 0xD000000000000014;
  *(v64 + 56) = 0x80000001CA9C0C30;
  *(v64 + 72) = v61;
  strcpy((v64 + 80), "DestinationKey");
  *(v64 + 95) = -18;
  *(v64 + 96) = 0x746E65746E6F63;
  *(v64 + 104) = 0xE700000000000000;
  *(v64 + 120) = v61;
  *(v64 + 128) = 0x74616E6974736544;
  *(v64 + 136) = 0xEF657079546E6F69;
  *(v64 + 144) = 0x74736275534C5255;
  *(v64 + 152) = 0xEF6E6F6974757469;
  *(v64 + 168) = v61;
  strcpy((v64 + 176), "MultipleItems");
  *(v64 + 190) = -4864;
  v65 = MEMORY[0x1E69E6370];
  *(v64 + 192) = 1;
  *(v64 + 216) = v65;
  *(v64 + 224) = 0x654B656372756F53;
  v66 = v65;
  *(v64 + 232) = 0xE900000000000079;
  strcpy((v64 + 240), "BearNoteInput");
  *(v64 + 254) = -4864;
  *(v64 + 264) = v61;
  *(v64 + 272) = 0x7954656372756F53;
  *(v64 + 312) = v61;
  *(v64 + 280) = 0xEA00000000006570;
  *(v64 + 288) = 0x7475706E49;
  *(v64 + 296) = 0xE500000000000000;
  *(v63 + 32) = sub_1CA94C1E8();
  v67 = swift_allocObject();
  v1008 = xmmword_1CA981350;
  *(v67 + 16) = xmmword_1CA981350;
  strcpy((v67 + 32), "MultipleItems");
  *(v67 + 46) = -4864;
  *(v67 + 48) = 1;
  *(v67 + 72) = v66;
  *(v67 + 80) = 0x6574656D61726150;
  *(v67 + 88) = 0xEB00000000495572;
  v1018 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  v987 = xmmword_1CA97EDF0;
  *(v68 + 16) = xmmword_1CA97EDF0;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000019;
  *(v68 + 48) = 0x80000001CA99B030;
  *(v68 + 64) = v61;
  *(v68 + 72) = @"Label";
  v1002 = @"Class";
  v1022 = @"Label";
  v69 = sub_1CA94C438("Content (Parameter Label)", 25);
  v1016 = v70;
  v71 = sub_1CA94C438("Content", 7);
  v73 = v72;
  v1019 = &v948;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v948 - v1023;
  sub_1CA948D98();
  v75 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v948 - v1024;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v69, v1016, v71, v73, 0, 0, v74, v76);
  *(v68 + 104) = v1021;
  *(v68 + 80) = v78;
  _s3__C3KeyVMa_0(0);
  v1016 = v79;
  v1015 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v80 = sub_1CA94C1E8();
  v81 = v1018;
  *(v67 + 96) = sub_1CA2F864C(v80);
  *(v67 + 120) = v81;
  *(v67 + 128) = 0x654B656372756F53;
  *(v67 + 136) = 0xE900000000000079;
  strcpy((v67 + 144), "BearNoteInput");
  *(v67 + 158) = -4864;
  v82 = MEMORY[0x1E69E6158];
  *(v67 + 168) = MEMORY[0x1E69E6158];
  *(v67 + 176) = 0x7954656372756F53;
  *(v67 + 216) = v82;
  *(v67 + 184) = 0xEA00000000006570;
  *(v67 + 192) = 0x6574656D61726150;
  v1019 = 0xE900000000000072;
  *(v67 + 200) = 0xE900000000000072;
  *(v992 + 40) = sub_1CA94C1E8();
  v83 = swift_allocObject();
  *(v83 + 16) = v1013;
  strcpy((v83 + 32), "DestinationKey");
  *(v83 + 47) = -18;
  *(v83 + 48) = 0x656C746974;
  *(v83 + 56) = 0xE500000000000000;
  *(v83 + 72) = v82;
  *(v83 + 80) = 0x74616E6974736544;
  *(v83 + 88) = 0xEF657079546E6F69;
  strcpy((v83 + 96), "URLQueryValue");
  *(v83 + 110) = -4864;
  *(v83 + 120) = v82;
  *(v83 + 128) = 0x73616C436D657449;
  v1012 = 0xE900000000000073;
  v1009 = 0x80000001CA993390;
  *(v83 + 136) = 0xE900000000000073;
  *(v83 + 144) = 0xD000000000000013;
  *(v83 + 152) = 0x80000001CA993390;
  *(v83 + 168) = v82;
  *(v83 + 176) = 0x6574656D61726150;
  *(v83 + 184) = 0xEB00000000495572;
  v84 = swift_allocObject();
  *(v84 + 16) = v1008;
  v1010 = 0x80000001CA99B500;
  v85 = v1002;
  v86 = v1014;
  *(v84 + 32) = v1002;
  *(v84 + 40) = v86;
  *(v84 + 48) = 0x80000001CA99B500;
  *(v84 + 64) = v82;
  *(v84 + 72) = @"Description";
  v1002 = v85;
  v990 = @"Description";
  v989 = sub_1CA94C438("The title of the created note", 29);
  *&v988 = v87;
  v88 = sub_1CA94C438("The title of the created note", 29);
  v984 = v89;
  v993 = &v948;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v1023;
  sub_1CA948D98();
  v91 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v1024;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 80) = sub_1CA2F9F14(v989, v988, v88, v984, 0, 0, &v948 - v90, &v948 - v92);
  v94 = v1021;
  v95 = v1022;
  *(v84 + 104) = v1021;
  *(v84 + 112) = v95;
  *&v988 = v95;
  v989 = sub_1CA94C438("Note Title (Parameter Label)", 28);
  v984 = v96;
  v97 = sub_1CA94C438("Note Title", 10);
  v983 = v98;
  v993 = &v948;
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948D98();
  v1022 = qword_1EDB9F690;
  v99 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v989, v984, v97, v983, 0, 0, &v948 - v90, &v948 - v92);
  *(v84 + 144) = v94;
  *(v84 + 152) = @"TextAlignment";
  v101 = MEMORY[0x1E69E6158];
  *(v84 + 184) = MEMORY[0x1E69E6158];
  *(v84 + 160) = 0x7468676952;
  *(v84 + 168) = 0xE500000000000000;
  v993 = @"TextAlignment";
  v102 = sub_1CA94C1E8();
  v103 = v1018;
  *(v83 + 192) = sub_1CA2F864C(v102);
  *(v83 + 216) = v103;
  *(v83 + 224) = 0x654B656372756F53;
  *(v83 + 232) = 0xE900000000000079;
  *(v83 + 240) = 0x6C74695472616542;
  v982 = 0xE900000000000065;
  *(v83 + 248) = 0xE900000000000065;
  *(v83 + 264) = v101;
  *(v83 + 272) = 0x7954656372756F53;
  *(v83 + 312) = v101;
  *(v83 + 280) = 0xEA00000000006570;
  *(v83 + 288) = 0x6574656D61726150;
  *(v83 + 296) = v1019;
  *(v992 + 48) = sub_1CA94C1E8();
  v104 = swift_allocObject();
  *(v104 + 16) = v1013;
  strcpy((v104 + 32), "DestinationKey");
  *(v104 + 47) = -18;
  *(v104 + 48) = 1936154996;
  *(v104 + 56) = 0xE400000000000000;
  *(v104 + 72) = v101;
  *(v104 + 80) = 0x74616E6974736544;
  *(v104 + 88) = 0xEF657079546E6F69;
  strcpy((v104 + 96), "URLQueryValue");
  *(v104 + 110) = -4864;
  *(v104 + 120) = v101;
  *(v104 + 128) = 0x73616C436D657449;
  *(v104 + 136) = v1012;
  *(v104 + 144) = 0xD000000000000013;
  *(v104 + 152) = v1009;
  *(v104 + 168) = v101;
  *(v104 + 176) = 0x6574656D61726150;
  *(v104 + 184) = 0xEB00000000495572;
  v105 = swift_allocObject();
  *(v105 + 16) = v1013;
  *(v105 + 64) = v101;
  v106 = v1002;
  v107 = v1014;
  *(v105 + 32) = v1002;
  *(v105 + 40) = v107;
  *(v105 + 48) = v1010;
  v1002 = v106;
  *(v105 + 72) = sub_1CA94C368();
  *(v105 + 80) = 0xD000000000000025;
  v968 = 0x80000001CA9ADCE0;
  v969 = 0xD000000000000025;
  *(v105 + 88) = 0x80000001CA9ADCE0;
  v108 = v990;
  *(v105 + 104) = v101;
  *(v105 + 112) = v108;
  v989 = v108;
  v109 = sub_1CA94C438("The tags to attach to the created note", 38);
  v983 = v110;
  v984 = v109;
  v111 = sub_1CA94C438("The tags to attach to the created note", 38);
  v113 = v112;
  v990 = &v948;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v948 - v1023;
  sub_1CA948D98();
  v115 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v948 - v1024;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 120) = sub_1CA2F9F14(v984, v983, v111, v113, 0, 0, v114, v116);
  v118 = v988;
  *(v105 + 144) = v1021;
  *(v105 + 152) = v118;
  v990 = v118;
  v119 = sub_1CA94C438("Tags (Parameter Label)", 22);
  v983 = v120;
  v984 = v119;
  v121 = sub_1CA94C438("Tags", 4);
  v981 = v122;
  *&v988 = &v948;
  MEMORY[0x1EEE9AC00](v121);
  v123 = v1023;
  sub_1CA948D98();
  v124 = v1022;
  v125 = [(__CFString *)v1022 bundleURL];
  v980 = &v948;
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v948 - v1024;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 160) = sub_1CA2F9F14(v984, v983, v121, v981, 0, 0, &v948 - v123, v126);
  *(v105 + 184) = v1021;
  *(v105 + 192) = @"Placeholder";
  v976 = @"Placeholder";
  v128 = sub_1CA94C438("cats, dogs (Parameter Placeholder)", 34);
  v983 = v129;
  v984 = v128;
  v130 = sub_1CA94C438("cats, dogs", 10);
  v981 = v131;
  *&v988 = &v948;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948D98();
  v132 = [(__CFString *)v124 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v948 - v1024;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 200) = sub_1CA2F9F14(v984, v983, v130, v981, 0, 0, &v948 - v123, v133);
  v135 = v993;
  *(v105 + 224) = v1021;
  *(v105 + 232) = v135;
  v136 = MEMORY[0x1E69E6158];
  *(v105 + 264) = MEMORY[0x1E69E6158];
  *(v105 + 240) = 0x7468676952;
  *(v105 + 248) = 0xE500000000000000;
  v961 = v135;
  v137 = sub_1CA94C1E8();
  v138 = v1018;
  *(v104 + 192) = sub_1CA2F864C(v137);
  *(v104 + 216) = v138;
  *(v104 + 224) = 0x654B656372756F53;
  *(v104 + 232) = 0xE900000000000079;
  *(v104 + 240) = 0x7367615472616542;
  *(v104 + 248) = 0xE800000000000000;
  *(v104 + 264) = v136;
  *(v104 + 272) = 0x7954656372756F53;
  *(v104 + 312) = v136;
  *(v104 + 280) = 0xEA00000000006570;
  *(v104 + 288) = 0x6574656D61726150;
  *(v104 + 296) = v1019;
  *(v992 + 56) = sub_1CA94C1E8();
  v139 = swift_allocObject();
  v988 = xmmword_1CA981400;
  *(v139 + 16) = xmmword_1CA981400;
  *(v139 + 32) = 0x74616E6974736544;
  *(v139 + 40) = 0xEF657079546E6F69;
  *(v139 + 48) = 0x43656C6261736944;
  *(v139 + 56) = 0xEF6B6361626C6C61;
  *(v139 + 72) = v136;
  *(v139 + 80) = 0x73616C436D657449;
  v984 = 0x80000001CA993A60;
  v140 = v1014;
  *(v139 + 88) = v1012;
  *(v139 + 96) = v140;
  *(v139 + 104) = 0x80000001CA993A60;
  v993 = 0x80000001CA9A8C50;
  v141 = v1011;
  *(v139 + 120) = v136;
  *(v139 + 128) = v141;
  *(v139 + 136) = 0x80000001CA9A8C50;
  *(v139 + 144) = 1;
  *(v139 + 168) = MEMORY[0x1E69E6370];
  *(v139 + 176) = 0x6574656D61726150;
  *(v139 + 184) = 0xEB00000000495572;
  v142 = swift_allocObject();
  *(v142 + 16) = v1006;
  v983 = 0x80000001CA99E620;
  v143 = v1002;
  v144 = v991;
  *(v142 + 32) = v1002;
  *(v142 + 40) = v144;
  *(v142 + 48) = 0x80000001CA99E620;
  v145 = v989;
  *(v142 + 64) = v136;
  *(v142 + 72) = v145;
  v957 = v143;
  v959 = v145;
  v989 = sub_1CA94C438("If enabled, Bear will re-open Shortcuts after creating the new note.", 68);
  v981 = v146;
  v980 = sub_1CA94C438("If enabled, Bear will re-open Shortcuts after creating the new note.", 68);
  v148 = v147;
  v1002 = &v948;
  MEMORY[0x1EEE9AC00](v980);
  v149 = &v948 - v1023;
  sub_1CA948D98();
  v150 = [(__CFString *)v124 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v1024;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 80) = sub_1CA2F9F14(v989, v981, v980, v148, 0, 0, v149, &v948 - v151);
  v153 = v1021;
  v154 = v990;
  *(v142 + 104) = v1021;
  *(v142 + 112) = v154;
  v958 = v154;
  v155 = sub_1CA94C438("Return to Shortcuts (Parameter Label)", 37);
  v989 = v156;
  v990 = v155;
  v157 = sub_1CA94C438("Return to Shortcuts", 19);
  v981 = v158;
  v1002 = &v948;
  MEMORY[0x1EEE9AC00](v157);
  v159 = &v948 - v1023;
  sub_1CA948D98();
  v160 = [(__CFString *)v1022 bundleURL];
  v980 = &v948;
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v990, v989, v157, v981, 0, 0, v159, &v948 - v151);
  *(v142 + 144) = v153;
  *(v142 + 120) = v162;
  v163 = sub_1CA94C1E8();
  v164 = v1018;
  *(v139 + 192) = sub_1CA2F864C(v163);
  *(v139 + 216) = v164;
  *(v139 + 224) = 0x654B656372756F53;
  *(v139 + 232) = 0xE900000000000079;
  *(v139 + 240) = 0x7574655272616542;
  v979 = 0xEA00000000006E72;
  *(v139 + 248) = 0xEA00000000006E72;
  v165 = MEMORY[0x1E69E6158];
  *(v139 + 264) = MEMORY[0x1E69E6158];
  *(v139 + 272) = 0x7954656372756F53;
  *(v139 + 280) = 0xEA00000000006570;
  *(v139 + 288) = 0x6574656D61726150;
  *(v139 + 296) = v1019;
  *(v139 + 312) = v165;
  strcpy((v139 + 320), "ValueMapping");
  *(v139 + 333) = 0;
  *(v139 + 334) = -5120;
  v166 = sub_1CA94C1E8();
  *(v139 + 360) = v1004;
  *(v139 + 336) = v166;
  v167 = sub_1CA94C1E8();
  v168 = v992;
  *(v992 + 64) = v167;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v1002 = v169;
  v170 = v978;
  *(v978 + 42) = v168;
  *(v170 + 45) = v169;
  *(v170 + 46) = 1701667150;
  *(v170 + 47) = 0xE400000000000000;
  v171 = sub_1CA94C438("Create Bear Note (Action Name)", 30);
  v990 = v172;
  v173 = sub_1CA94C438("Create Bear Note", 16);
  v175 = v174;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v173);
  v176 = &v948 - v1023;
  sub_1CA948D98();
  v177 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v948 - v1024;
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 48) = sub_1CA2F9F14(v171, v990, v173, v175, 0, 0, v176, v178);
  *(v170 + 51) = v1021;
  strcpy(v170 + 416, "OutputMapping");
  *(v170 + 215) = -4864;
  v981 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v180 = swift_allocObject();
  *(v180 + 16) = v1000;
  *(v180 + 32) = sub_1CA94C1E8();
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v980 = v181;
  *(v170 + 54) = v180;
  v990 = 0x80000001CA9A8F60;
  v182 = v1011;
  *(v170 + 57) = v181;
  *(v170 + 58) = v182;
  *(v170 + 59) = 0x80000001CA9A8F60;
  v183 = sub_1CA94C438("Create ${BearTitle} with ${BearNoteInput} (Parameter Summary)", 61);
  v989 = v184;
  v185 = sub_1CA94C438("Create ${BearTitle} with ${BearNoteInput}", 41);
  v187 = v186;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v185);
  v188 = &v948 - v1023;
  sub_1CA948D98();
  v189 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v948 - v1024;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v192 = sub_1CA2F9F14(v183, v989, v185, v187, 0, 0, v188, v190);
  v193 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v194 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v989 = v194;
  *(v170 + 60) = v193;
  v974 = 0xD00000000000001ELL;
  *(v170 + 63) = v194;
  *(v170 + 64) = 0xD00000000000001ELL;
  v964 = 0x80000001CA9BA930;
  *(v170 + 65) = 0x80000001CA9BA930;
  *(v170 + 69) = MEMORY[0x1E69E6370];
  v170[528] = 1;
  *(v1005 + 32) = sub_1CA94C1E8();
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1CA9813E0;
  strcpy((v195 + 32), "ActionKeywords");
  *(v195 + 47) = -18;
  v196 = sub_1CA94C438("note|attach|prepend|append", 26);
  v198 = v197;
  v199 = sub_1CA94C438("note|attach|prepend|append", 26);
  v201 = v200;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v199);
  v202 = &v948 - v1023;
  sub_1CA948D98();
  v203 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v948 - v1024;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v195 + 48) = sub_1CA2F9F14(v196, v198, v199, v201, 0, 0, v202, v204);
  *(v195 + 72) = v1021;
  *(v195 + 80) = 0x79726F6765746143;
  v206 = v977;
  *(v195 + 88) = 0xE800000000000000;
  *(v195 + 96) = v206;
  *(v195 + 120) = v999;
  strcpy((v195 + 128), "CreationDate");
  *(v195 + 141) = 0;
  *(v195 + 142) = -5120;
  *(v195 + 168) = v998;
  __swift_allocate_boxed_opaque_existential_1((v195 + 144));
  v962 = v206;
  sub_1CA948C28();
  *(v195 + 176) = 0x7470697263736544;
  *(v195 + 184) = 0xEB000000006E6F69;
  v207 = swift_allocObject();
  *(v207 + 16) = v987;
  v208 = v966;
  *(v207 + 32) = v966;
  v966 = v208;
  v977 = sub_1CA94C438("The text or file to be included in the note.", 44);
  v963 = v209;
  v210 = sub_1CA94C438("The text or file to be included in the note.", 44);
  v212 = v211;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v210);
  v213 = v1023;
  sub_1CA948D98();
  v214 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  v215 = &v948 - v1024;
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v207 + 40) = sub_1CA2F9F14(v977, v963, v210, v212, 0, 0, &v948 - v213, v215);
  v217 = v1021;
  v218 = v965;
  *(v207 + 64) = v1021;
  *(v207 + 72) = v218;
  v963 = v218;
  v977 = sub_1CA94C438("Adds text or a file to a note in Bear. You can specify either the note title or the note identifier.", 100);
  v965 = v219;
  v220 = sub_1CA94C438("Adds text or a file to a note in Bear. You can specify either the note title or the note identifier.", 100);
  v956 = v221;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948D98();
  v222 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v222);
  v223 = &v948 - v1024;
  sub_1CA948B68();

  v224 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v225 = sub_1CA2F9F14(v977, v965, v220, v956, 0, 0, &v948 - v213, v223);
  *(v207 + 104) = v217;
  *(v207 + 80) = v225;
  v226 = sub_1CA94C1E8();
  v227 = v1001;
  v228 = sub_1CA6B3784(v226);
  v978 = v195;
  *(v195 + 192) = v228;
  *(v195 + 216) = v227;
  *(v195 + 224) = 0x74616D726F46;
  *(v195 + 232) = 0xE600000000000000;
  *(v195 + 240) = 0xD00000000000002ELL;
  *(v195 + 248) = 0x80000001CA9C0EB0;
  v229 = MEMORY[0x1E69E6158];
  *(v195 + 264) = MEMORY[0x1E69E6158];
  *(v195 + 272) = 0x696669746E656449;
  *(v195 + 280) = v994;
  *(v195 + 288) = 6579297;
  *(v195 + 296) = 0xE300000000000000;
  *(v195 + 312) = v229;
  strcpy((v195 + 320), "InputMapping");
  *(v195 + 333) = 0;
  *(v195 + 334) = -5120;
  v230 = swift_allocObject();
  *(v230 + 16) = v1013;
  v231 = v230;
  *&v992 = v230;
  v232 = swift_allocObject();
  *(v232 + 16) = v1008;
  v233 = v985;
  *(v232 + 32) = 0xD000000000000013;
  *(v232 + 40) = v233;
  v234 = v960;
  *(v232 + 48) = v1014;
  *(v232 + 56) = v234;
  *(v232 + 72) = v229;
  strcpy((v232 + 80), "DestinationKey");
  *(v232 + 95) = -18;
  *(v232 + 96) = 0x746E65746E6F63;
  *(v232 + 104) = 0xE700000000000000;
  *(v232 + 120) = v229;
  *(v232 + 128) = 0x74616E6974736544;
  *(v232 + 136) = 0xEF657079546E6F69;
  *(v232 + 144) = 0x74736275534C5255;
  *(v232 + 152) = 0xEF6E6F6974757469;
  *(v232 + 168) = v229;
  *(v232 + 176) = 0x7954656372756F53;
  *(v232 + 216) = v229;
  *(v232 + 184) = 0xEA00000000006570;
  *(v232 + 192) = 0x7475706E49;
  *(v232 + 200) = 0xE500000000000000;
  *(v231 + 32) = sub_1CA94C1E8();
  v235 = swift_allocObject();
  *(v235 + 16) = v988;
  strcpy((v235 + 32), "DestinationKey");
  *(v235 + 47) = -18;
  *(v235 + 48) = 1701869940;
  *(v235 + 56) = 0xE400000000000000;
  *(v235 + 72) = v229;
  *(v235 + 80) = 0x74616E6974736544;
  *(v235 + 88) = 0xEF657079546E6F69;
  *(v235 + 96) = 0x74736275534C5255;
  *(v235 + 104) = 0xEF6E6F6974757469;
  v236 = v1011;
  *(v235 + 120) = v229;
  *(v235 + 128) = v236;
  *(v235 + 136) = v993;
  *(v235 + 144) = 1954047316;
  *(v235 + 152) = 0xE400000000000000;
  *(v235 + 168) = v229;
  *(v235 + 176) = 0x6574656D61726150;
  *(v235 + 184) = 0xEB00000000495572;
  v237 = swift_allocObject();
  *(v237 + 16) = v1008;
  v956 = 0x80000001CA99C4A0;
  v960 = 0xD000000000000016;
  v238 = v957;
  *(v237 + 32) = v957;
  *(v237 + 40) = 0xD000000000000016;
  *(v237 + 48) = 0x80000001CA99C4A0;
  *(v237 + 64) = v229;
  *(v237 + 72) = @"DisallowedVariableTypes";
  *(v237 + 80) = &unk_1F4A00E98;
  *(v237 + 104) = v986;
  *(v237 + 112) = @"Items";
  v955 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v977 = swift_allocObject();
  v954 = xmmword_1CA981360;
  *&v977->data = xmmword_1CA981360;
  v953 = v238;
  v952 = @"DisallowedVariableTypes";
  v951 = @"Items";
  v957 = sub_1CA94C438("Text (BearAttachmentType)", 25);
  v950 = v239;
  v240 = sub_1CA94C438("Text", 4);
  v949 = v241;
  v965 = &v948;
  MEMORY[0x1EEE9AC00](v240);
  v242 = v1023;
  sub_1CA948D98();
  v243 = [(__CFString *)v1022 bundleURL];
  v948 = &v948;
  MEMORY[0x1EEE9AC00](v243);
  v244 = v1024;
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v246 = sub_1CA2F9F14(v957, v950, v240, v949, 0, 0, &v948 - v242, &v948 - v244);
  v977[1].isa = v246;
  v957 = sub_1CA94C438("File (BearAttachmentType)", 25);
  v950 = v247;
  v949 = sub_1CA94C438("File", 4);
  v249 = v248;
  v965 = &v948;
  MEMORY[0x1EEE9AC00](v949);
  sub_1CA948D98();
  v250 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v252 = sub_1CA2F9F14(v957, v950, v949, v249, 0, 0, &v948 - v242, &v948 - v244);
  v253 = v977;
  v977[1].info = v252;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v957 = v254;
  *(v237 + 120) = v253;
  v255 = v958;
  *(v237 + 144) = v254;
  *(v237 + 152) = v255;
  v958 = v255;
  v965 = sub_1CA94C438("Attach (Parameter Label)", 24);
  v950 = v256;
  v257 = sub_1CA94C438("Attach", 6);
  v259 = v258;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v257);
  v260 = &v948 - v1023;
  sub_1CA948D98();
  v261 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  v262 = &v948 - v1024;
  sub_1CA948B68();

  v263 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v264 = sub_1CA2F9F14(v965, v950, v257, v259, 0, 0, v260, v262);
  *(v237 + 184) = v1021;
  *(v237 + 160) = v264;
  v265 = sub_1CA94C1E8();
  v266 = v1018;
  *(v235 + 192) = sub_1CA2F864C(v265);
  *(v235 + 216) = v266;
  *(v235 + 224) = 0x654B656372756F53;
  v965 = 0xD000000000000012;
  *(v235 + 232) = 0xE900000000000079;
  *(v235 + 240) = 0xD000000000000012;
  *(v235 + 248) = 0x80000001CA9C0F20;
  v267 = MEMORY[0x1E69E6158];
  *(v235 + 264) = MEMORY[0x1E69E6158];
  *(v235 + 272) = 0x7954656372756F53;
  *(v235 + 280) = 0xEA00000000006570;
  *(v235 + 288) = 0x6574656D61726150;
  *(v235 + 296) = v1019;
  *(v235 + 312) = v267;
  strcpy((v235 + 320), "ValueMapping");
  *(v235 + 333) = 0;
  *(v235 + 334) = -5120;
  v268 = v267;
  v269 = sub_1CA94C1E8();
  *(v235 + 360) = v1004;
  *(v235 + 336) = v269;
  *(v992 + 40) = sub_1CA94C1E8();
  v270 = swift_allocObject();
  *(v270 + 16) = v988;
  strcpy((v270 + 32), "DestinationKey");
  *(v270 + 47) = -18;
  *(v270 + 48) = 1701080941;
  *(v270 + 56) = 0xE400000000000000;
  *(v270 + 72) = v268;
  *(v270 + 80) = 0x74616E6974736544;
  *(v270 + 88) = 0xEF657079546E6F69;
  strcpy((v270 + 96), "URLQueryValue");
  *(v270 + 110) = -4864;
  v271 = v1011;
  *(v270 + 120) = v268;
  *(v270 + 128) = v271;
  *(v270 + 136) = v993;
  *(v270 + 144) = 0x646E65707041;
  *(v270 + 152) = 0xE600000000000000;
  *(v270 + 168) = v268;
  *(v270 + 176) = 0x6574656D61726150;
  v272 = v268;
  *(v270 + 184) = 0xEB00000000495572;
  v273 = swift_allocObject();
  *(v273 + 16) = v1008;
  v275 = v952;
  v274 = v953;
  v276 = v960;
  *(v273 + 32) = v953;
  *(v273 + 40) = v276;
  *(v273 + 48) = v956;
  *(v273 + 64) = v272;
  *(v273 + 72) = v275;
  *(v273 + 80) = &unk_1F4A00F38;
  v277 = v951;
  *(v273 + 104) = v986;
  *(v273 + 112) = v277;
  v977 = swift_allocObject();
  *&v977->data = v954;
  v960 = v274;
  v278 = v275;
  v279 = v277;
  v955 = sub_1CA94C438("Append (BearMode)", 17);
  *&v954 = v280;
  v281 = sub_1CA94C438("Append", 6);
  v952 = v282;
  v953 = v281;
  v956 = &v948;
  MEMORY[0x1EEE9AC00](v281);
  v283 = v1023;
  sub_1CA948D98();
  v284 = v1022;
  v285 = [(__CFString *)v1022 bundleURL];
  v951 = &v948;
  MEMORY[0x1EEE9AC00](v285);
  v286 = v1024;
  sub_1CA948B68();

  v287 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v288 = sub_1CA2F9F14(v955, v954, v953, v952, 0, 0, &v948 - v283, &v948 - v286);
  v977[1].isa = v288;
  v955 = sub_1CA94C438("Prepend (BearMode)", 18);
  *&v954 = v289;
  v290 = sub_1CA94C438("Prepend", 7);
  v952 = v291;
  v953 = v290;
  v956 = &v948;
  MEMORY[0x1EEE9AC00](v290);
  sub_1CA948D98();
  v292 = [(__CFString *)v284 bundleURL];
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948B68();

  v293 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v294 = sub_1CA2F9F14(v955, v954, v953, v952, 0, 0, &v948 - v283, &v948 - v286);
  v295 = v977;
  v977[1].info = v294;
  *(v273 + 120) = v295;
  v296 = v958;
  *(v273 + 144) = v957;
  *(v273 + 152) = v296;
  v977 = v296;
  v297 = sub_1CA94C438("Mode (Parameter Label)", 22);
  v957 = v298;
  v299 = sub_1CA94C438("Mode", 4);
  v301 = v300;
  v958 = &v948;
  MEMORY[0x1EEE9AC00](v299);
  v302 = &v948 - v1023;
  sub_1CA948D98();
  v303 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v303);
  v304 = &v948 - v1024;
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v306 = sub_1CA2F9F14(v297, v957, v299, v301, 0, 0, v302, v304);
  *(v273 + 184) = v1021;
  *(v273 + 160) = v306;
  v307 = sub_1CA94C1E8();
  v308 = v1018;
  *(v270 + 192) = sub_1CA2F864C(v307);
  *(v270 + 216) = v308;
  *(v270 + 224) = 0x654B656372756F53;
  *(v270 + 232) = 0xE900000000000079;
  *(v270 + 240) = 0x65646F4D72616542;
  *(v270 + 248) = 0xE800000000000000;
  v309 = MEMORY[0x1E69E6158];
  *(v270 + 264) = MEMORY[0x1E69E6158];
  *(v270 + 272) = 0x7954656372756F53;
  *(v270 + 280) = 0xEA00000000006570;
  *(v270 + 288) = 0x6574656D61726150;
  *(v270 + 296) = v1019;
  *(v270 + 312) = v309;
  strcpy((v270 + 320), "ValueMapping");
  *(v270 + 333) = 0;
  *(v270 + 334) = -5120;
  v310 = v309;
  v311 = sub_1CA94C1E8();
  *(v270 + 360) = v1004;
  *(v270 + 336) = v311;
  *(v992 + 48) = sub_1CA94C1E8();
  v312 = swift_allocObject();
  *(v312 + 16) = v1013;
  strcpy((v312 + 32), "DestinationKey");
  *(v312 + 47) = -18;
  *(v312 + 48) = 0x656C746974;
  *(v312 + 56) = 0xE500000000000000;
  *(v312 + 72) = v310;
  *(v312 + 80) = 0x74616E6974736544;
  *(v312 + 88) = 0xEF657079546E6F69;
  strcpy((v312 + 96), "URLQueryValue");
  *(v312 + 110) = -4864;
  *(v312 + 120) = v310;
  *(v312 + 128) = 0x73616C436D657449;
  *(v312 + 136) = v1012;
  *(v312 + 144) = 0xD000000000000013;
  *(v312 + 152) = v1009;
  *(v312 + 168) = v310;
  *(v312 + 176) = 0x6574656D61726150;
  v313 = v310;
  *(v312 + 184) = 0xEB00000000495572;
  v314 = swift_allocObject();
  *(v314 + 16) = v1007;
  v315 = v960;
  v316 = v1014;
  *(v314 + 32) = v960;
  *(v314 + 40) = v316;
  *(v314 + 48) = v1010;
  *(v314 + 64) = v313;
  v317 = v959;
  *(v314 + 72) = v959;
  v958 = v315;
  v959 = v317;
  v318 = sub_1CA94C438("The title of the note to add to in Bear.", 40);
  v956 = v319;
  v957 = v318;
  v320 = sub_1CA94C438("The title of the note to add to in Bear.", 40);
  v955 = v321;
  v960 = &v948;
  MEMORY[0x1EEE9AC00](v320);
  v322 = &v948 - v1023;
  sub_1CA948D98();
  v323 = v1022;
  v324 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v324);
  v325 = &v948 - v1024;
  sub_1CA948B68();

  v326 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v314 + 80) = sub_1CA2F9F14(v957, v956, v320, v955, 0, 0, v322, v325);
  v327 = v977;
  *(v314 + 104) = v1021;
  *(v314 + 112) = v327;
  v977 = v327;
  v328 = sub_1CA94C438("Title (Parameter Label)", 23);
  v956 = v329;
  v957 = v328;
  v330 = sub_1CA94C438("Title", 5);
  v955 = v331;
  v960 = &v948;
  MEMORY[0x1EEE9AC00](v330);
  v332 = v1023;
  sub_1CA948D98();
  v333 = [(__CFString *)v323 bundleURL];
  MEMORY[0x1EEE9AC00](v333);
  v334 = &v948 - v1024;
  sub_1CA948B68();

  v335 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v314 + 120) = sub_1CA2F9F14(v957, v956, v330, v955, 0, 0, &v948 - v332, v334);
  v336 = v1021;
  v337 = v976;
  *(v314 + 144) = v1021;
  *(v314 + 152) = v337;
  v960 = v337;
  v338 = sub_1CA94C438("optional (Parameter Placeholder)", 32);
  v956 = v339;
  v957 = v338;
  v340 = sub_1CA94C438("optional", 8);
  v955 = v341;
  v976 = &v948;
  MEMORY[0x1EEE9AC00](v340);
  sub_1CA948D98();
  v342 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v342);
  v343 = &v948 - v1024;
  sub_1CA948B68();

  v344 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v314 + 160) = sub_1CA2F9F14(v957, v956, v340, v955, 0, 0, &v948 - v332, v343);
  v345 = v961;
  *(v314 + 184) = v336;
  *(v314 + 192) = v345;
  v346 = MEMORY[0x1E69E6158];
  *(v314 + 224) = MEMORY[0x1E69E6158];
  *(v314 + 200) = 0x7468676952;
  *(v314 + 208) = 0xE500000000000000;
  v961 = v345;
  v347 = sub_1CA94C1E8();
  v348 = v1018;
  *(v312 + 192) = sub_1CA2F864C(v347);
  *(v312 + 216) = v348;
  *(v312 + 224) = 0x654B656372756F53;
  *(v312 + 232) = 0xE900000000000079;
  *(v312 + 240) = 0x6C74695472616542;
  *(v312 + 248) = v982;
  *(v312 + 264) = v346;
  *(v312 + 272) = 0x7954656372756F53;
  *(v312 + 312) = v346;
  *(v312 + 280) = 0xEA00000000006570;
  *(v312 + 288) = 0x6574656D61726150;
  *(v312 + 296) = v1019;
  *(v992 + 56) = sub_1CA94C1E8();
  v349 = swift_allocObject();
  *(v349 + 16) = v1013;
  strcpy((v349 + 32), "DestinationKey");
  *(v349 + 47) = -18;
  *(v349 + 48) = 25705;
  *(v349 + 56) = 0xE200000000000000;
  *(v349 + 72) = v346;
  *(v349 + 80) = 0x74616E6974736544;
  *(v349 + 88) = 0xEF657079546E6F69;
  strcpy((v349 + 96), "URLQueryValue");
  *(v349 + 110) = -4864;
  *(v349 + 120) = v346;
  *(v349 + 128) = 0x73616C436D657449;
  *(v349 + 136) = v1012;
  *(v349 + 144) = 0xD000000000000013;
  *(v349 + 152) = v1009;
  *(v349 + 168) = v346;
  *(v349 + 176) = 0x6574656D61726150;
  *(v349 + 184) = 0xEB00000000495572;
  v350 = swift_allocObject();
  *(v350 + 16) = v1007;
  v351 = v958;
  v352 = v959;
  v353 = v1014;
  *(v350 + 32) = v958;
  *(v350 + 40) = v353;
  *(v350 + 48) = v1010;
  *(v350 + 64) = v346;
  *(v350 + 72) = v352;
  v958 = v351;
  v957 = v352;
  v959 = sub_1CA94C438("The identifier of the note to add to in Bear. You can find a note’s identifier by swiping left on the note in the list, choosing “More”, and choosing “Copy note identifier.”", 183);
  v956 = v354;
  v355 = sub_1CA94C438("The identifier of the note to add to in Bear. You can find a note’s identifier by swiping left on the note in the list, choosing “More”, and choosing “Copy note identifier.”", 183);
  v955 = v356;
  v976 = &v948;
  MEMORY[0x1EEE9AC00](v355);
  v357 = &v948 - v1023;
  sub_1CA948D98();
  v358 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v358);
  v359 = v1024;
  sub_1CA948B68();

  v360 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v350 + 80) = sub_1CA2F9F14(v959, v956, v355, v955, 0, 0, v357, &v948 - v359);
  v361 = v1021;
  v362 = v977;
  *(v350 + 104) = v1021;
  *(v350 + 112) = v362;
  v959 = v362;
  v976 = sub_1CA94C438("Note Identifier (Parameter Label)", 33);
  v956 = v363;
  v364 = sub_1CA94C438("Note Identifier", 15);
  v955 = v365;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v364);
  v366 = &v948 - v1023;
  sub_1CA948D98();
  v367 = [(__CFString *)v1022 bundleURL];
  *&v954 = &v948;
  MEMORY[0x1EEE9AC00](v367);
  sub_1CA948B68();

  v368 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v350 + 120) = sub_1CA2F9F14(v976, v956, v364, v955, 0, 0, v366, &v948 - v359);
  v369 = v960;
  v370 = v961;
  *(v350 + 144) = v361;
  *(v350 + 152) = v369;
  v976 = 0xD00000000000003ALL;
  v977 = 0x80000001CA9C10B0;
  *(v350 + 160) = 0xD00000000000003ALL;
  *(v350 + 168) = 0x80000001CA9C10B0;
  v371 = MEMORY[0x1E69E6158];
  *(v350 + 184) = MEMORY[0x1E69E6158];
  *(v350 + 192) = v370;
  *(v350 + 224) = v371;
  v372 = v371;
  *(v350 + 200) = 0x7468676952;
  *(v350 + 208) = 0xE500000000000000;
  v373 = v369;
  v374 = v370;
  v375 = v373;
  v960 = v374;
  v961 = v375;
  v376 = sub_1CA94C1E8();
  v377 = v1018;
  *(v349 + 192) = sub_1CA2F864C(v376);
  *(v349 + 216) = v377;
  *(v349 + 224) = 0x654B656372756F53;
  *(v349 + 232) = 0xE900000000000079;
  strcpy((v349 + 240), "BearIdentifier");
  *(v349 + 255) = -18;
  *(v349 + 264) = v372;
  *(v349 + 272) = 0x7954656372756F53;
  *(v349 + 312) = v372;
  *(v349 + 280) = 0xEA00000000006570;
  *(v349 + 288) = 0x6574656D61726150;
  *(v349 + 296) = v1019;
  *(v992 + 64) = sub_1CA94C1E8();
  v378 = swift_allocObject();
  *(v378 + 16) = v988;
  *(v378 + 32) = 0x74616E6974736544;
  *(v378 + 40) = 0xEF657079546E6F69;
  *(v378 + 48) = 0x43656C6261736944;
  *(v378 + 56) = 0xEF6B6361626C6C61;
  *(v378 + 72) = v372;
  *(v378 + 80) = 0x73616C436D657449;
  v379 = v1014;
  *(v378 + 88) = v1012;
  *(v378 + 96) = v379;
  *(v378 + 104) = v984;
  v380 = v1011;
  *(v378 + 120) = v372;
  *(v378 + 128) = v380;
  *(v378 + 136) = v993;
  *(v378 + 144) = 1;
  *(v378 + 168) = MEMORY[0x1E69E6370];
  *(v378 + 176) = 0x6574656D61726150;
  *(v378 + 184) = 0xEB00000000495572;
  v381 = swift_allocObject();
  *(v381 + 16) = v1006;
  v383 = v957;
  v382 = v958;
  v384 = v991;
  *(v381 + 32) = v958;
  *(v381 + 40) = v384;
  *(v381 + 48) = v983;
  *(v381 + 64) = v372;
  *(v381 + 72) = v383;
  v385 = v382;
  v386 = v383;
  v387 = v385;
  v388 = v386;
  v958 = v387;
  v957 = v388;
  v955 = sub_1CA94C438("If enabled, Bear will re-open Shortcuts after creating the new note.", 68);
  *&v954 = v389;
  v390 = sub_1CA94C438("If enabled, Bear will re-open Shortcuts after creating the new note.", 68);
  v953 = v391;
  v956 = &v948;
  MEMORY[0x1EEE9AC00](v390);
  v392 = &v948 - v1023;
  sub_1CA948D98();
  v393 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v393);
  sub_1CA948B68();

  v394 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v381 + 80) = sub_1CA2F9F14(v955, v954, v390, v953, 0, 0, v392, &v948 - v359);
  v395 = v959;
  *(v381 + 104) = v1021;
  *(v381 + 112) = v395;
  v956 = v395;
  v955 = sub_1CA94C438("Return to Shortcuts (Parameter Label)", 37);
  *&v954 = v396;
  v397 = sub_1CA94C438("Return to Shortcuts", 19);
  v953 = v398;
  v959 = &v948;
  MEMORY[0x1EEE9AC00](v397);
  v399 = &v948 - v1023;
  sub_1CA948D98();
  v400 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v400);
  sub_1CA948B68();

  v401 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v402 = sub_1CA2F9F14(v955, v954, v397, v953, 0, 0, v399, &v948 - v359);
  *(v381 + 144) = v1021;
  *(v381 + 120) = v402;
  v403 = sub_1CA94C1E8();
  v404 = v1018;
  *(v378 + 192) = sub_1CA2F864C(v403);
  *(v378 + 216) = v404;
  *(v378 + 224) = 0x654B656372756F53;
  *(v378 + 232) = 0xE900000000000079;
  *(v378 + 240) = 0x7574655272616542;
  *(v378 + 248) = v979;
  v405 = MEMORY[0x1E69E6158];
  *(v378 + 264) = MEMORY[0x1E69E6158];
  *(v378 + 272) = 0x7954656372756F53;
  *(v378 + 280) = 0xEA00000000006570;
  *(v378 + 288) = 0x6574656D61726150;
  *(v378 + 296) = v1019;
  *(v378 + 312) = v405;
  strcpy((v378 + 320), "ValueMapping");
  *(v378 + 333) = 0;
  *(v378 + 334) = -5120;
  v406 = sub_1CA94C1E8();
  *(v378 + 360) = v1004;
  *(v378 + 336) = v406;
  v407 = sub_1CA94C1E8();
  v408 = v992;
  *(v992 + 72) = v407;
  v409 = v978;
  *(v978 + 42) = v408;
  *(v409 + 45) = v1002;
  *(v409 + 46) = 1701667150;
  *(v409 + 47) = 0xE400000000000000;
  v959 = sub_1CA94C438("Add to Bear Note (Action Name)", 30);
  v955 = v410;
  v411 = sub_1CA94C438("Add to Bear Note", 16);
  *&v954 = v412;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v411);
  v413 = v1023;
  sub_1CA948D98();
  v414 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v414);
  v415 = v1024;
  sub_1CA948B68();

  v416 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v417 = sub_1CA2F9F14(v959, v955, v411, v954, 0, 0, &v948 - v413, &v948 - v415);
  v418 = v978;
  *(v978 + 48) = v417;
  v419 = v974;
  *(v418 + 51) = v1021;
  *(v418 + 52) = v419;
  *(v418 + 53) = v964;
  *(v418 + 57) = MEMORY[0x1E69E6370];
  v418[432] = 1;
  *(v1005 + 40) = sub_1CA94C1E8();
  v420 = swift_allocObject();
  v992 = xmmword_1CA981420;
  *(v420 + 16) = xmmword_1CA981420;
  strcpy((v420 + 32), "ActionKeywords");
  *(v420 + 47) = -18;
  v974 = sub_1CA94C438("document", 8);
  v964 = v421;
  v422 = sub_1CA94C438("document", 8);
  v959 = v423;
  v978 = &v948;
  MEMORY[0x1EEE9AC00](v422);
  v424 = &v948 - v413;
  sub_1CA948D98();
  v425 = v1022;
  v426 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v426);
  sub_1CA948B68();

  v427 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v420 + 48) = sub_1CA2F9F14(v974, v964, v422, v959, 0, 0, v424, &v948 - v415);
  *(v420 + 72) = v1021;
  *(v420 + 80) = 0x79726F6765746143;
  v428 = v962;
  *(v420 + 88) = 0xE800000000000000;
  *(v420 + 96) = v428;
  *(v420 + 120) = v999;
  strcpy((v420 + 128), "CreationDate");
  *(v420 + 141) = 0;
  *(v420 + 142) = -5120;
  *(v420 + 168) = v998;
  __swift_allocate_boxed_opaque_existential_1((v420 + 144));
  v974 = v428;
  sub_1CA948C28();
  *(v420 + 176) = 0x7470697263736544;
  *(v420 + 184) = 0xEB000000006E6F69;
  v429 = swift_allocObject();
  *(v429 + 16) = v987;
  v430 = v975;
  *(v429 + 32) = v975;
  v964 = v430;
  v975 = sub_1CA94C438("The contents of the note.", 25);
  v962 = v431;
  v432 = sub_1CA94C438("The contents of the note.", 25);
  v434 = v433;
  v978 = &v948;
  MEMORY[0x1EEE9AC00](v432);
  v435 = &v948 - v1023;
  sub_1CA948D98();
  v436 = [(__CFString *)v425 bundleURL];
  MEMORY[0x1EEE9AC00](v436);
  v437 = v1024;
  sub_1CA948B68();

  v438 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v429 + 40) = sub_1CA2F9F14(v975, v962, v432, v434, 0, 0, v435, &v948 - v437);
  v439 = v1021;
  v440 = v963;
  *(v429 + 64) = v1021;
  *(v429 + 72) = v440;
  v959 = v440;
  v975 = sub_1CA94C438("Gets the contents of a note from Bear. You can specify either the note title or the note identifier.", 100);
  v963 = v441;
  v962 = sub_1CA94C438("Gets the contents of a note from Bear. You can specify either the note title or the note identifier.", 100);
  v443 = v442;
  v978 = &v948;
  MEMORY[0x1EEE9AC00](v962);
  v444 = &v948 - v1023;
  sub_1CA948D98();
  v445 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v445);
  sub_1CA948B68();

  v446 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v447 = sub_1CA2F9F14(v975, v963, v962, v443, 0, 0, v444, &v948 - v437);
  *(v429 + 104) = v439;
  *(v429 + 80) = v447;
  v448 = sub_1CA94C1E8();
  v449 = v1001;
  *(v420 + 192) = sub_1CA6B3784(v448);
  *(v420 + 216) = v449;
  *(v420 + 224) = 0x74616D726F46;
  v962 = 0xD00000000000001FLL;
  v963 = 0x80000001CA9C11C0;
  *(v420 + 232) = 0xE600000000000000;
  *(v420 + 240) = 0xD00000000000001FLL;
  *(v420 + 248) = 0x80000001CA9C11C0;
  v450 = MEMORY[0x1E69E6158];
  *(v420 + 264) = MEMORY[0x1E69E6158];
  *(v420 + 272) = 0x696669746E656449;
  *(v420 + 280) = v994;
  *(v420 + 288) = 0x73746E65746E6F63;
  *(v420 + 296) = 0xE800000000000000;
  *(v420 + 312) = v450;
  strcpy((v420 + 320), "InputMapping");
  *(v420 + 333) = 0;
  *(v420 + 334) = -5120;
  v978 = swift_allocObject();
  *(v978 + 1) = v987;
  v451 = swift_allocObject();
  *(v451 + 16) = v1013;
  strcpy((v451 + 32), "DestinationKey");
  *(v451 + 47) = -18;
  *(v451 + 48) = 0x656C746974;
  *(v451 + 56) = 0xE500000000000000;
  *(v451 + 72) = v450;
  *(v451 + 80) = 0x74616E6974736544;
  *(v451 + 88) = 0xEF657079546E6F69;
  strcpy((v451 + 96), "URLQueryValue");
  *(v451 + 110) = -4864;
  *(v451 + 120) = v450;
  *(v451 + 128) = 0x73616C436D657449;
  *(v451 + 136) = v1012;
  *(v451 + 144) = 0xD000000000000013;
  *(v451 + 152) = v1009;
  *(v451 + 168) = v450;
  *(v451 + 176) = 0x6574656D61726150;
  *(v451 + 184) = 0xEB00000000495572;
  v452 = swift_allocObject();
  *(v452 + 16) = v1008;
  v454 = v957;
  v453 = v958;
  v455 = v1014;
  *(v452 + 32) = v958;
  *(v452 + 40) = v455;
  *(v452 + 48) = v1010;
  *(v452 + 64) = v450;
  *(v452 + 72) = v454;
  v955 = v453;
  v957 = v454;
  v958 = sub_1CA94C438("The title of the note to add to in Bear.", 40);
  *&v954 = v456;
  v457 = sub_1CA94C438("The title of the note to add to in Bear.", 40);
  v952 = v458;
  v953 = v457;
  v975 = &v948;
  MEMORY[0x1EEE9AC00](v457);
  v459 = v1023;
  sub_1CA948D98();
  v460 = v1022;
  v461 = [(__CFString *)v1022 bundleURL];
  v951 = &v948;
  MEMORY[0x1EEE9AC00](v461);
  v462 = &v948 - v1024;
  sub_1CA948B68();

  v463 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v452 + 80) = sub_1CA2F9F14(v958, v954, v953, v952, 0, 0, &v948 - v459, v462);
  v464 = v1021;
  v465 = v956;
  *(v452 + 104) = v1021;
  *(v452 + 112) = v465;
  v958 = v465;
  v956 = sub_1CA94C438("Note Title (Parameter Label)", 28);
  *&v954 = v466;
  v467 = sub_1CA94C438("Note Title", 10);
  v952 = v468;
  v953 = v467;
  v975 = &v948;
  MEMORY[0x1EEE9AC00](v467);
  v469 = &v948 - v459;
  sub_1CA948D98();
  v470 = [(__CFString *)v460 bundleURL];
  MEMORY[0x1EEE9AC00](v470);
  v471 = &v948 - v1024;
  sub_1CA948B68();

  v472 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v452 + 120) = sub_1CA2F9F14(v956, v954, v953, v952, 0, 0, v469, v471);
  v473 = v960;
  *(v452 + 144) = v464;
  *(v452 + 152) = v473;
  v474 = MEMORY[0x1E69E6158];
  *(v452 + 184) = MEMORY[0x1E69E6158];
  *(v452 + 160) = 0x7468676952;
  *(v452 + 168) = 0xE500000000000000;
  v975 = v473;
  v475 = sub_1CA94C1E8();
  v476 = v1018;
  *(v451 + 192) = sub_1CA2F864C(v475);
  *(v451 + 216) = v476;
  *(v451 + 224) = 0x654B656372756F53;
  *(v451 + 232) = 0xE900000000000079;
  *(v451 + 240) = 0x6C74695472616542;
  *(v451 + 248) = v982;
  *(v451 + 264) = v474;
  *(v451 + 272) = 0x7954656372756F53;
  *(v451 + 312) = v474;
  *(v451 + 280) = 0xEA00000000006570;
  *(v451 + 288) = 0x6574656D61726150;
  *(v451 + 296) = v1019;
  *(v978 + 4) = sub_1CA94C1E8();
  v477 = swift_allocObject();
  *(v477 + 16) = v1013;
  strcpy((v477 + 32), "DestinationKey");
  *(v477 + 47) = -18;
  *(v477 + 48) = 25705;
  *(v477 + 56) = 0xE200000000000000;
  *(v477 + 72) = v474;
  *(v477 + 80) = 0x74616E6974736544;
  *(v477 + 88) = 0xEF657079546E6F69;
  strcpy((v477 + 96), "URLQueryValue");
  *(v477 + 110) = -4864;
  *(v477 + 120) = v474;
  *(v477 + 128) = 0x73616C436D657449;
  *(v477 + 136) = v1012;
  *(v477 + 144) = 0xD000000000000013;
  *(v477 + 152) = v1009;
  *(v477 + 168) = v474;
  *(v477 + 176) = 0x6574656D61726150;
  *(v477 + 184) = 0xEB00000000495572;
  v478 = swift_allocObject();
  *(v478 + 16) = v1007;
  v479 = v955;
  v480 = v1014;
  *(v478 + 32) = v955;
  *(v478 + 40) = v480;
  *(v478 + 48) = v1010;
  v481 = v957;
  *(v478 + 64) = v474;
  *(v478 + 72) = v481;
  v956 = v479;
  v955 = v481;
  v957 = sub_1CA94C438("The identifier of the note to add to in Bear. You can find a note’s identifier by swiping left on the note in the list, choosing “More”, and choosing “Copy note identifier.”", 183);
  *&v954 = v482;
  v483 = sub_1CA94C438("The identifier of the note to add to in Bear. You can find a note’s identifier by swiping left on the note in the list, choosing “More”, and choosing “Copy note identifier.”", 183);
  v952 = v484;
  v953 = v483;
  v960 = &v948;
  MEMORY[0x1EEE9AC00](v483);
  v485 = &v948 - v1023;
  sub_1CA948D98();
  v486 = v1022;
  v487 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v487);
  v488 = &v948 - v1024;
  sub_1CA948B68();

  v489 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v478 + 80) = sub_1CA2F9F14(v957, v954, v953, v952, 0, 0, v485, v488);
  v490 = v1021;
  v491 = v958;
  *(v478 + 104) = v1021;
  *(v478 + 112) = v491;
  v958 = v491;
  v957 = sub_1CA94C438("Note Identifier (Parameter Label)", 33);
  *&v954 = v492;
  v493 = sub_1CA94C438("Note Identifier", 15);
  v952 = v494;
  v953 = v493;
  v960 = &v948;
  MEMORY[0x1EEE9AC00](v493);
  v495 = &v948 - v1023;
  sub_1CA948D98();
  v496 = [(__CFString *)v486 bundleURL];
  MEMORY[0x1EEE9AC00](v496);
  v497 = &v948 - v1024;
  sub_1CA948B68();

  v498 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v499 = sub_1CA2F9F14(v957, v954, v953, v952, 0, 0, v495, v497);
  v500 = v961;
  *(v478 + 120) = v499;
  *(v478 + 144) = v490;
  *(v478 + 152) = v500;
  v501 = v977;
  *(v478 + 160) = v976;
  *(v478 + 168) = v501;
  v502 = MEMORY[0x1E69E6158];
  v503 = v975;
  *(v478 + 184) = MEMORY[0x1E69E6158];
  *(v478 + 192) = v503;
  *(v478 + 224) = v502;
  v504 = v502;
  *(v478 + 200) = 0x7468676952;
  *(v478 + 208) = 0xE500000000000000;
  v957 = v503;
  v960 = v500;
  v505 = sub_1CA94C1E8();
  v506 = v1018;
  *(v477 + 192) = sub_1CA2F864C(v505);
  *(v477 + 216) = v506;
  *(v477 + 224) = 0x654B656372756F53;
  *(v477 + 232) = 0xE900000000000079;
  strcpy((v477 + 240), "BearIdentifier");
  *(v477 + 255) = -18;
  *(v477 + 264) = v504;
  *(v477 + 272) = 0x7954656372756F53;
  *(v477 + 312) = v504;
  *(v477 + 280) = 0xEA00000000006570;
  *(v477 + 288) = 0x6574656D61726150;
  *(v477 + 296) = v1019;
  v507 = sub_1CA94C1E8();
  v508 = v978;
  *(v978 + 5) = v507;
  *(v420 + 336) = v508;
  *(v420 + 360) = v1002;
  *(v420 + 368) = 1701667150;
  *(v420 + 376) = 0xE400000000000000;
  v975 = sub_1CA94C438("Get Contents of Bear Note (Action Name)", 39);
  v961 = v509;
  v510 = sub_1CA94C438("Get Contents of Bear Note", 25);
  *&v954 = v511;
  v978 = &v948;
  MEMORY[0x1EEE9AC00](v510);
  v512 = v1023;
  sub_1CA948D98();
  v513 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v513);
  v514 = v1024;
  sub_1CA948B68();

  v515 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v420 + 384) = sub_1CA2F9F14(v975, v961, v510, v954, 0, 0, &v948 - v512, &v948 - v514);
  *(v420 + 408) = v1021;
  strcpy((v420 + 416), "OutputMapping");
  *(v420 + 430) = -4864;
  v516 = swift_allocObject();
  *(v516 + 16) = v1000;
  *(v516 + 32) = sub_1CA94C1E8();
  *(v420 + 432) = v516;
  v517 = v1011;
  *(v420 + 456) = v980;
  *(v420 + 464) = v517;
  *(v420 + 472) = v990;
  v975 = sub_1CA94C438("Get contents of ${BearTitle} (Parameter Summary)", 48);
  v961 = v518;
  v519 = sub_1CA94C438("Get contents of ${BearTitle}", 28);
  *&v954 = v520;
  v978 = &v948;
  MEMORY[0x1EEE9AC00](v519);
  sub_1CA948D98();
  v521 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v521);
  sub_1CA948B68();

  v522 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v523 = sub_1CA2F9F14(v975, v961, v519, v954, 0, 0, &v948 - v512, &v948 - v514);
  v524 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v420 + 504) = v989;
  *(v420 + 480) = v524;
  *(v1005 + 48) = sub_1CA94C1E8();
  v525 = swift_allocObject();
  *(v525 + 16) = v992;
  strcpy((v525 + 32), "ActionKeywords");
  *(v525 + 47) = -18;
  v526 = sub_1CA94C438("document", 8);
  v528 = v527;
  v529 = sub_1CA94C438("document", 8);
  v531 = v530;
  v978 = &v948;
  MEMORY[0x1EEE9AC00](v529);
  v532 = &v948 - v1023;
  sub_1CA948D98();
  v533 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v533);
  v534 = &v948 - v1024;
  sub_1CA948B68();

  v535 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v525 + 48) = sub_1CA2F9F14(v526, v528, v529, v531, 0, 0, v532, v534);
  v961 = 0x80000001CA9BA6E0;
  *(v525 + 72) = v1021;
  *(v525 + 80) = 0xD000000000000013;
  *(v525 + 88) = 0x80000001CA9BA6E0;
  *(v525 + 96) = 1;
  *(v525 + 120) = MEMORY[0x1E69E6370];
  *(v525 + 128) = 0x79726F6765746143;
  v536 = v974;
  *(v525 + 136) = 0xE800000000000000;
  *(v525 + 144) = v536;
  *(v525 + 168) = v999;
  strcpy((v525 + 176), "CreationDate");
  *(v525 + 189) = 0;
  *(v525 + 190) = -5120;
  *(v525 + 216) = v998;
  __swift_allocate_boxed_opaque_existential_1((v525 + 192));
  v975 = v536;
  sub_1CA948C28();
  *(v525 + 224) = 0x7470697263736544;
  *(v525 + 232) = 0xEB000000006E6F69;
  v537 = swift_allocObject();
  *(v537 + 16) = v1000;
  v538 = v959;
  *(v537 + 32) = v959;
  v978 = v538;
  v539 = sub_1CA94C438("Opens a note in Bear. You can specify either the note title or the note identifier.", 83);
  v959 = v540;
  v541 = sub_1CA94C438("Opens a note in Bear. You can specify either the note title or the note identifier.", 83);
  v543 = v542;
  v974 = &v948;
  MEMORY[0x1EEE9AC00](v541);
  v544 = &v948 - v1023;
  sub_1CA948D98();
  v545 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v545);
  v546 = &v948 - v1024;
  sub_1CA948B68();

  v547 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v548 = sub_1CA2F9F14(v539, v959, v541, v543, 0, 0, v544, v546);
  *(v537 + 64) = v1021;
  *(v537 + 40) = v548;
  v549 = sub_1CA94C1E8();
  v550 = v1001;
  *(v525 + 240) = sub_1CA6B3784(v549);
  *(v525 + 264) = v550;
  *(v525 + 272) = 0x74616D726F46;
  v552 = v962;
  v551 = v963;
  *(v525 + 280) = 0xE600000000000000;
  *(v525 + 288) = v552;
  *(v525 + 296) = v551;
  v553 = MEMORY[0x1E69E6158];
  *(v525 + 312) = MEMORY[0x1E69E6158];
  *(v525 + 320) = 0x696669746E656449;
  *(v525 + 328) = v994;
  *(v525 + 336) = 1852141679;
  *(v525 + 344) = 0xE400000000000000;
  *(v525 + 360) = v553;
  strcpy((v525 + 368), "InputMapping");
  *(v525 + 381) = 0;
  *(v525 + 382) = -5120;
  v974 = swift_allocObject();
  *(v974 + 1) = v987;
  v554 = swift_allocObject();
  *(v554 + 16) = v1013;
  strcpy((v554 + 32), "DestinationKey");
  *(v554 + 47) = -18;
  *(v554 + 48) = 0x656C746974;
  *(v554 + 56) = 0xE500000000000000;
  *(v554 + 72) = v553;
  *(v554 + 80) = 0x74616E6974736544;
  *(v554 + 88) = 0xEF657079546E6F69;
  strcpy((v554 + 96), "URLQueryValue");
  *(v554 + 110) = -4864;
  *(v554 + 120) = v553;
  *(v554 + 128) = 0x73616C436D657449;
  *(v554 + 136) = v1012;
  *(v554 + 144) = 0xD000000000000013;
  *(v554 + 152) = v1009;
  *(v554 + 168) = v553;
  *(v554 + 176) = 0x6574656D61726150;
  *(v554 + 184) = 0xEB00000000495572;
  v555 = swift_allocObject();
  *(v555 + 16) = v1008;
  v556 = v956;
  v557 = v1014;
  *(v555 + 32) = v956;
  *(v555 + 40) = v557;
  *(v555 + 48) = v1010;
  *(v555 + 64) = v553;
  v558 = v955;
  *(v555 + 72) = v955;
  v963 = v556;
  v962 = v558;
  v959 = sub_1CA94C438("The title of the note to get the contents of from Bear.", 55);
  v956 = v559;
  v955 = sub_1CA94C438("The title of the note to get the contents of from Bear.", 55);
  *&v954 = v560;
  *&v987 = &v948;
  MEMORY[0x1EEE9AC00](v955);
  v561 = v1023;
  sub_1CA948D98();
  v562 = v1022;
  v563 = [(__CFString *)v1022 bundleURL];
  v953 = &v948;
  MEMORY[0x1EEE9AC00](v563);
  v564 = v1024;
  sub_1CA948B68();

  v565 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v555 + 80) = sub_1CA2F9F14(v959, v956, v955, v954, 0, 0, &v948 - v561, &v948 - v564);
  v566 = v1021;
  v567 = v958;
  *(v555 + 104) = v1021;
  *(v555 + 112) = v567;
  *&v987 = v567;
  v958 = sub_1CA94C438("Note Title (Parameter Label)", 28);
  v956 = v568;
  v955 = sub_1CA94C438("Note Title", 10);
  *&v954 = v569;
  v959 = &v948;
  MEMORY[0x1EEE9AC00](v955);
  v570 = &v948 - v561;
  sub_1CA948D98();
  v571 = [(__CFString *)v562 bundleURL];
  MEMORY[0x1EEE9AC00](v571);
  sub_1CA948B68();

  v572 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v555 + 120) = sub_1CA2F9F14(v958, v956, v955, v954, 0, 0, v570, &v948 - v564);
  v573 = v957;
  *(v555 + 144) = v566;
  *(v555 + 152) = v573;
  v574 = MEMORY[0x1E69E6158];
  *(v555 + 184) = MEMORY[0x1E69E6158];
  *(v555 + 160) = 0x7468676952;
  *(v555 + 168) = 0xE500000000000000;
  v959 = v573;
  v575 = sub_1CA94C1E8();
  v576 = v1018;
  *(v554 + 192) = sub_1CA2F864C(v575);
  *(v554 + 216) = v576;
  *(v554 + 224) = 0x654B656372756F53;
  *(v554 + 232) = 0xE900000000000079;
  *(v554 + 240) = 0x6C74695472616542;
  *(v554 + 248) = v982;
  *(v554 + 264) = v574;
  *(v554 + 272) = 0x7954656372756F53;
  *(v554 + 312) = v574;
  *(v554 + 280) = 0xEA00000000006570;
  *(v554 + 288) = 0x6574656D61726150;
  *(v554 + 296) = v1019;
  v974[4] = sub_1CA94C1E8();
  v577 = swift_allocObject();
  *(v577 + 16) = v1013;
  strcpy((v577 + 32), "DestinationKey");
  *(v577 + 47) = -18;
  *(v577 + 48) = 25705;
  *(v577 + 56) = 0xE200000000000000;
  *(v577 + 72) = v574;
  *(v577 + 80) = 0x74616E6974736544;
  *(v577 + 88) = 0xEF657079546E6F69;
  strcpy((v577 + 96), "URLQueryValue");
  *(v577 + 110) = -4864;
  *(v577 + 120) = v574;
  *(v577 + 128) = 0x73616C436D657449;
  *(v577 + 136) = v1012;
  *(v577 + 144) = 0xD000000000000013;
  *(v577 + 152) = v1009;
  *(v577 + 168) = v574;
  *(v577 + 176) = 0x6574656D61726150;
  *(v577 + 184) = 0xEB00000000495572;
  v578 = swift_allocObject();
  *(v578 + 16) = v1007;
  v580 = v962;
  v579 = v963;
  v581 = v1014;
  *(v578 + 32) = v963;
  *(v578 + 40) = v581;
  *(v578 + 48) = v1010;
  *(v578 + 64) = v574;
  *(v578 + 72) = v580;
  v963 = v579;
  v962 = v580;
  v582 = sub_1CA94C438("The identifier of the note to get the contents of from Bear. You can find a note’s identifier by swiping left on the note in the list, choosing “More”, and choosing “Copy note identifier.”", 198);
  v957 = v583;
  v958 = v582;
  v584 = sub_1CA94C438("The identifier of the note to get the contents of from Bear. You can find a note’s identifier by swiping left on the note in the list, choosing “More”, and choosing “Copy note identifier.”", 198);
  v955 = v585;
  v956 = v584;
  v982 = &v948;
  MEMORY[0x1EEE9AC00](v584);
  v586 = &v948 - v1023;
  sub_1CA948D98();
  v587 = v1022;
  v588 = [(__CFString *)v1022 bundleURL];
  *&v954 = &v948;
  MEMORY[0x1EEE9AC00](v588);
  v589 = &v948 - v1024;
  sub_1CA948B68();

  v590 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v578 + 80) = sub_1CA2F9F14(v958, v957, v956, v955, 0, 0, v586, v589);
  v591 = v1021;
  v592 = v987;
  *(v578 + 104) = v1021;
  *(v578 + 112) = v592;
  *&v987 = v592;
  v593 = sub_1CA94C438("Note Identifier (Parameter Label)", 33);
  v957 = v594;
  v958 = v593;
  v595 = sub_1CA94C438("Note Identifier", 15);
  v955 = v596;
  v956 = v595;
  v982 = &v948;
  MEMORY[0x1EEE9AC00](v595);
  v597 = &v948 - v1023;
  sub_1CA948D98();
  v598 = [(__CFString *)v587 bundleURL];
  MEMORY[0x1EEE9AC00](v598);
  v599 = &v948 - v1024;
  sub_1CA948B68();

  v600 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v578 + 120) = sub_1CA2F9F14(v958, v957, v956, v955, 0, 0, v597, v599);
  v601 = v959;
  v602 = v960;
  *(v578 + 144) = v591;
  *(v578 + 152) = v602;
  v603 = v977;
  *(v578 + 160) = v976;
  *(v578 + 168) = v603;
  v604 = MEMORY[0x1E69E6158];
  *(v578 + 184) = MEMORY[0x1E69E6158];
  *(v578 + 192) = v601;
  *(v578 + 224) = v604;
  v605 = v604;
  *(v578 + 200) = 0x7468676952;
  *(v578 + 208) = 0xE500000000000000;
  v982 = v601;
  v976 = v602;
  v606 = sub_1CA94C1E8();
  v607 = v1018;
  *(v577 + 192) = sub_1CA2F864C(v606);
  *(v577 + 216) = v607;
  *(v577 + 224) = 0x654B656372756F53;
  *(v577 + 232) = 0xE900000000000079;
  strcpy((v577 + 240), "BearIdentifier");
  *(v577 + 255) = -18;
  *(v577 + 264) = v605;
  *(v577 + 272) = 0x7954656372756F53;
  *(v577 + 312) = v605;
  *(v577 + 280) = 0xEA00000000006570;
  *(v577 + 288) = 0x6574656D61726150;
  *(v577 + 296) = v1019;
  v608 = sub_1CA94C1E8();
  v609 = v974;
  v974[5] = v608;
  *(v525 + 384) = v609;
  *(v525 + 408) = v1002;
  *(v525 + 416) = 1701667150;
  *(v525 + 424) = 0xE400000000000000;
  v974 = sub_1CA94C438("Open Bear Note (Action Name)", 28);
  v960 = v610;
  v611 = sub_1CA94C438("Open Bear Note", 14);
  v959 = v612;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v611);
  v613 = v1023;
  sub_1CA948D98();
  v614 = [(__CFString *)v1022 bundleURL];
  v958 = &v948;
  MEMORY[0x1EEE9AC00](v614);
  v615 = v1024;
  sub_1CA948B68();

  v616 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v525 + 432) = sub_1CA2F9F14(v974, v960, v611, v959, 0, 0, &v948 - v613, &v948 - v615);
  v617 = v1011;
  *(v525 + 456) = v1021;
  *(v525 + 464) = v617;
  *(v525 + 472) = v990;
  v974 = sub_1CA94C438("Open ${BearTitle} (Parameter Summary)", 37);
  v960 = v618;
  v619 = sub_1CA94C438("Open ${BearTitle}", 17);
  v959 = v620;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v619);
  sub_1CA948D98();
  v621 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v621);
  sub_1CA948B68();

  v622 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v623 = sub_1CA2F9F14(v974, v960, v619, v959, 0, 0, &v948 - v613, &v948 - v615);
  v624 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v525 + 504) = v989;
  *(v525 + 480) = v624;
  v625 = MEMORY[0x1E69E6158];
  *(v1005 + 56) = sub_1CA94C1E8();
  v626 = swift_allocObject();
  *(v626 + 16) = v967;
  *(v626 + 32) = 0x6C436E6F69746341;
  *(v626 + 40) = 0xEB00000000737361;
  *(v626 + 48) = v965;
  *(v626 + 56) = 0x80000001CA9C1480;
  *(v626 + 72) = v625;
  strcpy((v626 + 80), "ActionKeywords");
  *(v626 + 95) = -18;
  v974 = sub_1CA94C438("document|query|find", 19);
  v628 = v627;
  v629 = sub_1CA94C438("document|query|find", 19);
  v631 = v630;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v629);
  v632 = &v948 - v1023;
  sub_1CA948D98();
  v633 = v1022;
  v634 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v634);
  v635 = &v948 - v1024;
  sub_1CA948B68();

  v636 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v626 + 96) = sub_1CA2F9F14(v974, v628, v629, v631, 0, 0, v632, v635);
  v637 = v1021;
  *(v626 + 120) = v1021;
  *(v626 + 128) = 0xD000000000000013;
  *(v626 + 136) = v961;
  *(v626 + 144) = 1;
  *(v626 + 168) = MEMORY[0x1E69E6370];
  *(v626 + 176) = 0x79726F6765746143;
  v638 = v975;
  *(v626 + 184) = 0xE800000000000000;
  *(v626 + 192) = v638;
  *(v626 + 216) = v999;
  strcpy((v626 + 224), "CreationDate");
  *(v626 + 237) = 0;
  *(v626 + 238) = -5120;
  *(v626 + 264) = v998;
  __swift_allocate_boxed_opaque_existential_1((v626 + 240));
  sub_1CA948C28();
  *(v626 + 272) = 0x7470697263736544;
  *(v626 + 280) = 0xEB000000006E6F69;
  v639 = swift_allocObject();
  *(v639 + 16) = v1000;
  *(v639 + 32) = v978;
  v974 = sub_1CA94C438("Opens the Bear app and searches for the specified text.", 55);
  *&v967 = v640;
  v641 = sub_1CA94C438("Opens the Bear app and searches for the specified text.", 55);
  v643 = v642;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v641);
  v644 = &v948 - v1023;
  sub_1CA948D98();
  v645 = [(__CFString *)v633 bundleURL];
  MEMORY[0x1EEE9AC00](v645);
  v646 = &v948 - v1024;
  sub_1CA948B68();

  v647 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v648 = sub_1CA2F9F14(v974, v967, v641, v643, 0, 0, v644, v646);
  *(v639 + 64) = v637;
  *(v639 + 40) = v648;
  v649 = sub_1CA94C1E8();
  v650 = v1001;
  *(v626 + 288) = sub_1CA6B3784(v649);
  *(v626 + 312) = v650;
  *(v626 + 320) = 0x74616D726F46;
  *(v626 + 328) = 0xE600000000000000;
  *(v626 + 336) = 0xD000000000000020;
  *(v626 + 344) = 0x80000001CA9C1500;
  v651 = MEMORY[0x1E69E6158];
  *(v626 + 360) = MEMORY[0x1E69E6158];
  *(v626 + 368) = 0x696669746E656449;
  *(v626 + 376) = v994;
  *(v626 + 384) = 0x686372616573;
  *(v626 + 392) = 0xE600000000000000;
  *(v626 + 408) = v651;
  strcpy((v626 + 416), "InputMapping");
  *(v626 + 429) = 0;
  *(v626 + 430) = -5120;
  v652 = swift_allocObject();
  *(v652 + 16) = v1008;
  v653 = v652;
  v977 = v652;
  v654 = swift_allocObject();
  *(v654 + 16) = v1008;
  strcpy((v654 + 32), "DestinationKey");
  *(v654 + 47) = -18;
  *(v654 + 48) = 0x6E6F69746361;
  *(v654 + 56) = 0xE600000000000000;
  *(v654 + 72) = v651;
  *(v654 + 80) = 0x74616E6974736544;
  *(v654 + 88) = 0xEF657079546E6F69;
  *(v654 + 96) = 0x74736275534C5255;
  *(v654 + 104) = 0xEF6E6F6974757469;
  *(v654 + 120) = v651;
  *(v654 + 128) = 0x654B656372756F53;
  *(v654 + 136) = 0xE900000000000079;
  *(v654 + 144) = 0x6974634172616542;
  *(v654 + 152) = 0xEA00000000006E6FLL;
  *(v654 + 168) = v651;
  *(v654 + 176) = 0x7954656372756F53;
  *(v654 + 216) = v651;
  *(v654 + 184) = 0xEA00000000006570;
  *(v654 + 192) = 0x6574656D61726150;
  *(v654 + 200) = v1019;
  *(v653 + 32) = sub_1CA94C1E8();
  v655 = swift_allocObject();
  *(v655 + 16) = v1013;
  strcpy((v655 + 32), "DestinationKey");
  *(v655 + 47) = -18;
  *(v655 + 48) = 1836213620;
  *(v655 + 56) = 0xE400000000000000;
  *(v655 + 72) = v651;
  *(v655 + 80) = 0x74616E6974736544;
  *(v655 + 88) = 0xEF657079546E6F69;
  strcpy((v655 + 96), "URLQueryValue");
  *(v655 + 110) = -4864;
  *(v655 + 120) = v651;
  *(v655 + 128) = 0x73616C436D657449;
  *(v655 + 136) = v1012;
  *(v655 + 144) = 0xD000000000000013;
  *(v655 + 152) = v1009;
  *(v655 + 168) = v651;
  *(v655 + 176) = 0x6574656D61726150;
  *(v655 + 184) = 0xEB00000000495572;
  v656 = swift_allocObject();
  *(v656 + 16) = v1007;
  v658 = v962;
  v657 = v963;
  v659 = v1014;
  *(v656 + 32) = v963;
  *(v656 + 40) = v659;
  *(v656 + 48) = v1010;
  *(v656 + 64) = v651;
  *(v656 + 72) = v658;
  *&v967 = v657;
  v965 = v658;
  v660 = sub_1CA94C438("The string to search inside of Bear", 35);
  v962 = v661;
  v963 = v660;
  v662 = sub_1CA94C438("The string to search inside of Bear", 35);
  v960 = v663;
  v961 = v662;
  v974 = &v948;
  MEMORY[0x1EEE9AC00](v662);
  v664 = v1023;
  sub_1CA948D98();
  v665 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v665);
  v666 = &v948 - v1024;
  sub_1CA948B68();

  v667 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v656 + 80) = sub_1CA2F9F14(v963, v962, v961, v960, 0, 0, &v948 - v664, v666);
  v668 = v987;
  *(v656 + 104) = v1021;
  *(v656 + 112) = v668;
  v974 = v668;
  v669 = sub_1CA94C438("Search (Parameter Label)", 24);
  v962 = v670;
  v963 = v669;
  v671 = sub_1CA94C438("Search", 6);
  v960 = v672;
  v961 = v671;
  *&v987 = &v948;
  MEMORY[0x1EEE9AC00](v671);
  v673 = &v948 - v664;
  sub_1CA948D98();
  v674 = v1022;
  v675 = [(__CFString *)v1022 bundleURL];
  v959 = &v948;
  MEMORY[0x1EEE9AC00](v675);
  v676 = v1024;
  sub_1CA948B68();

  v677 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v656 + 120) = sub_1CA2F9F14(v963, v962, v961, v960, 0, 0, v673, &v948 - v676);
  v678 = v1021;
  v679 = v976;
  *(v656 + 144) = v1021;
  *(v656 + 152) = v679;
  *&v987 = v679;
  v680 = sub_1CA94C438("grape (Parameter Placeholder)", 29);
  v962 = v681;
  v963 = v680;
  v682 = sub_1CA94C438("grape", 5);
  v960 = v683;
  v961 = v682;
  v976 = &v948;
  MEMORY[0x1EEE9AC00](v682);
  v684 = &v948 - v1023;
  sub_1CA948D98();
  v685 = [(__CFString *)v674 bundleURL];
  MEMORY[0x1EEE9AC00](v685);
  sub_1CA948B68();

  v686 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v656 + 160) = sub_1CA2F9F14(v963, v962, v961, v960, 0, 0, v684, &v948 - v676);
  v687 = v982;
  *(v656 + 184) = v678;
  *(v656 + 192) = v687;
  v688 = MEMORY[0x1E69E6158];
  *(v656 + 224) = MEMORY[0x1E69E6158];
  *(v656 + 200) = 0x7468676952;
  *(v656 + 208) = 0xE500000000000000;
  v982 = v687;
  v689 = sub_1CA94C1E8();
  v690 = v1018;
  *(v655 + 192) = sub_1CA2F864C(v689);
  *(v655 + 216) = v690;
  *(v655 + 224) = 0x654B656372756F53;
  *(v655 + 232) = 0xE900000000000079;
  *(v655 + 240) = 0x6D72655472616542;
  *(v655 + 248) = 0xE800000000000000;
  *(v655 + 264) = v688;
  *(v655 + 312) = v688;
  *(v655 + 272) = 0x7954656372756F53;
  *(v655 + 280) = 0xEA00000000006570;
  v691 = v1019;
  *(v655 + 288) = 0x6574656D61726150;
  *(v655 + 296) = v691;
  v692 = sub_1CA94C1E8();
  v693 = v977;
  v977[1].info = v692;
  v694 = swift_allocObject();
  *(v694 + 16) = v1007;
  strcpy((v694 + 32), "DestinationKey");
  *(v694 + 47) = -18;
  *(v694 + 48) = 1701667182;
  *(v694 + 56) = 0xE400000000000000;
  *(v694 + 72) = v688;
  *(v694 + 80) = 0x74616E6974736544;
  *(v694 + 88) = 0xEF657079546E6F69;
  strcpy((v694 + 96), "URLQueryValue");
  *(v694 + 110) = -4864;
  *(v694 + 120) = v688;
  *(v694 + 128) = 0x73616C436D657449;
  v695 = v1012;
  *(v694 + 136) = v1012;
  *(v694 + 144) = 0xD000000000000013;
  v696 = v1009;
  *(v694 + 152) = v1009;
  *(v694 + 168) = v688;
  *(v694 + 176) = 0x654B656372756F53;
  *(v694 + 184) = 0xE900000000000079;
  *(v694 + 192) = 0x656D614E72616542;
  *(v694 + 200) = 0xE800000000000000;
  *(v694 + 216) = v688;
  *(v694 + 224) = 0x7954656372756F53;
  *(v694 + 264) = v688;
  *(v694 + 232) = 0xEA00000000006570;
  *(v694 + 240) = 0x6574656D61726150;
  *(v694 + 248) = v691;
  *(v693 + 48) = sub_1CA94C1E8();
  v697 = swift_allocObject();
  *(v697 + 16) = v1013;
  strcpy((v697 + 32), "DestinationKey");
  *(v697 + 47) = -18;
  *(v697 + 48) = 6775156;
  *(v697 + 56) = 0xE300000000000000;
  *(v697 + 72) = v688;
  *(v697 + 80) = 0x74616E6974736544;
  *(v697 + 88) = 0xEF657079546E6F69;
  strcpy((v697 + 96), "URLQueryValue");
  *(v697 + 110) = -4864;
  *(v697 + 120) = v688;
  *(v697 + 128) = 0x73616C436D657449;
  *(v697 + 136) = v695;
  *(v697 + 144) = 0xD000000000000013;
  *(v697 + 152) = v696;
  *(v697 + 168) = v688;
  *(v697 + 176) = 0x6574656D61726150;
  *(v697 + 184) = 0xEB00000000495572;
  v698 = swift_allocObject();
  *(v698 + 16) = v1007;
  v699 = v967;
  v700 = v1014;
  *(v698 + 32) = v967;
  *(v698 + 40) = v700;
  *(v698 + 48) = v1010;
  v701 = v965;
  *(v698 + 64) = v688;
  *(v698 + 72) = v701;
  *&v967 = v699;
  v976 = v701;
  v702 = sub_1CA94C438("The tag to filter the results by", 32);
  v962 = v703;
  v963 = v702;
  v704 = sub_1CA94C438("The tag to filter the results by", 32);
  v960 = v705;
  v961 = v704;
  v965 = &v948;
  MEMORY[0x1EEE9AC00](v704);
  v706 = v1023;
  sub_1CA948D98();
  v707 = [(__CFString *)v1022 bundleURL];
  v959 = &v948;
  MEMORY[0x1EEE9AC00](v707);
  v708 = &v948 - v1024;
  sub_1CA948B68();

  v709 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v698 + 80) = sub_1CA2F9F14(v963, v962, v961, v960, 0, 0, &v948 - v706, v708);
  v710 = v974;
  *(v698 + 104) = v1021;
  *(v698 + 112) = v710;
  v974 = v710;
  v711 = sub_1CA94C438("Tag (Parameter Label)", 21);
  v962 = v712;
  v963 = v711;
  v713 = sub_1CA94C438("Tag", 3);
  v960 = v714;
  v961 = v713;
  v965 = &v948;
  MEMORY[0x1EEE9AC00](v713);
  v715 = &v948 - v706;
  sub_1CA948D98();
  v716 = v1022;
  v717 = [(__CFString *)v1022 bundleURL];
  v959 = &v948;
  MEMORY[0x1EEE9AC00](v717);
  v718 = v1024;
  sub_1CA948B68();

  v719 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v698 + 120) = sub_1CA2F9F14(v963, v962, v961, v960, 0, 0, v715, &v948 - v718);
  v720 = v1021;
  v721 = v987;
  *(v698 + 144) = v1021;
  *(v698 + 152) = v721;
  v722 = sub_1CA94C438("optional (Parameter Placeholder)", 32);
  v962 = v723;
  v963 = v722;
  v724 = sub_1CA94C438("optional", 8);
  v960 = v725;
  v961 = v724;
  v965 = &v948;
  MEMORY[0x1EEE9AC00](v724);
  v726 = &v948 - v1023;
  sub_1CA948D98();
  v727 = [(__CFString *)v716 bundleURL];
  MEMORY[0x1EEE9AC00](v727);
  sub_1CA948B68();

  v728 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v698 + 160) = sub_1CA2F9F14(v963, v962, v961, v960, 0, 0, v726, &v948 - v718);
  v729 = v982;
  *(v698 + 184) = v720;
  *(v698 + 192) = v729;
  v730 = MEMORY[0x1E69E6158];
  *(v698 + 224) = MEMORY[0x1E69E6158];
  *(v698 + 200) = 0x7468676952;
  *(v698 + 208) = 0xE500000000000000;
  v731 = sub_1CA94C1E8();
  v732 = v1018;
  *(v697 + 192) = sub_1CA2F864C(v731);
  *(v697 + 216) = v732;
  *(v697 + 224) = 0x654B656372756F53;
  *(v697 + 232) = 0xE900000000000079;
  *(v697 + 240) = 0x67615472616542;
  *(v697 + 248) = 0xE700000000000000;
  *(v697 + 264) = v730;
  *(v697 + 272) = 0x7954656372756F53;
  *(v697 + 312) = v730;
  *(v697 + 280) = 0xEA00000000006570;
  *(v697 + 288) = 0x6574656D61726150;
  *(v697 + 296) = v1019;
  v733 = sub_1CA94C1E8();
  v734 = v977;
  v977[1].length = v733;
  *(v626 + 432) = v734;
  *(v626 + 456) = v1002;
  *(v626 + 464) = 1701667150;
  *(v626 + 472) = 0xE400000000000000;
  v965 = sub_1CA94C438("Search in Bear (Action Name)", 28);
  v963 = v735;
  v736 = sub_1CA94C438("Search in Bear", 14);
  v962 = v737;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v736);
  v738 = v1023;
  sub_1CA948D98();
  v739 = v1022;
  v740 = [(__CFString *)v1022 bundleURL];
  v961 = &v948;
  MEMORY[0x1EEE9AC00](v740);
  v741 = v1024;
  sub_1CA948B68();

  v742 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v626 + 480) = sub_1CA2F9F14(v965, v963, v736, v962, 0, 0, &v948 - v738, &v948 - v741);
  v743 = v1011;
  *(v626 + 504) = v1021;
  *(v626 + 512) = v743;
  *(v626 + 520) = v990;
  v965 = sub_1CA94C438("Search for ${BearTerm} (Parameter Summary)", 42);
  v963 = v744;
  v745 = sub_1CA94C438("Search for ${BearTerm}", 22);
  v962 = v746;
  v977 = &v948;
  MEMORY[0x1EEE9AC00](v745);
  sub_1CA948D98();
  v747 = [(__CFString *)v739 bundleURL];
  MEMORY[0x1EEE9AC00](v747);
  sub_1CA948B68();

  v748 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v749 = sub_1CA2F9F14(v965, v963, v745, v962, 0, 0, &v948 - v738, &v948 - v741);
  v750 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v626 + 552) = v989;
  *(v626 + 528) = v750;
  *(v1005 + 64) = sub_1CA94C1E8();
  v751 = swift_allocObject();
  *(v751 + 16) = v992;
  strcpy((v751 + 32), "ActionKeywords");
  *(v751 + 47) = -18;
  v965 = sub_1CA94C438("document|query|find", 19);
  v753 = v752;
  v754 = sub_1CA94C438("document|query|find", 19);
  v756 = v755;
  *&v992 = &v948;
  MEMORY[0x1EEE9AC00](v754);
  v757 = &v948 - v1023;
  sub_1CA948D98();
  v758 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v758);
  v759 = &v948 - v1024;
  sub_1CA948B68();

  v760 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v751 + 48) = sub_1CA2F9F14(v965, v753, v754, v756, 0, 0, v757, v759);
  *(v751 + 72) = v1021;
  *(v751 + 80) = 0x79726F6765746143;
  v761 = v975;
  *(v751 + 88) = 0xE800000000000000;
  *(v751 + 96) = v761;
  *(v751 + 120) = v999;
  strcpy((v751 + 128), "CreationDate");
  *(v751 + 141) = 0;
  *(v751 + 142) = -5120;
  *(v751 + 168) = v998;
  __swift_allocate_boxed_opaque_existential_1((v751 + 144));
  sub_1CA948C28();
  *(v751 + 176) = 0x7470697263736544;
  *(v751 + 184) = 0xEB000000006E6F69;
  v762 = swift_allocObject();
  *(v762 + 16) = v1006;
  *(v762 + 32) = v966;
  v763 = sub_1CA94C438("The URL of the web page", 23);
  v997 = v764;
  v998 = v763;
  *&v992 = sub_1CA94C438("The URL of the web page", 23);
  v766 = v765;
  v999 = &v948;
  MEMORY[0x1EEE9AC00](v992);
  v767 = v1023;
  sub_1CA948D98();
  v768 = v1022;
  v769 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v769);
  v770 = &v948 - v1024;
  sub_1CA948B68();

  v771 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v762 + 40) = sub_1CA2F9F14(v998, v997, v992, v766, 0, 0, &v948 - v767, v770);
  v772 = v964;
  *(v762 + 64) = v1021;
  *(v762 + 72) = v772;
  v773 = sub_1CA94C438("The identifier of the new note (if Return to Shortcuts is selected)", 67);
  v997 = v774;
  v998 = v773;
  v775 = sub_1CA94C438("The identifier of the new note (if Return to Shortcuts is selected)", 67);
  v777 = v776;
  v999 = &v948;
  MEMORY[0x1EEE9AC00](v775);
  sub_1CA948D98();
  v778 = [(__CFString *)v768 bundleURL];
  MEMORY[0x1EEE9AC00](v778);
  v779 = v1024;
  sub_1CA948B68();

  v780 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v762 + 80) = sub_1CA2F9F14(v998, v997, v775, v777, 0, 0, &v948 - v767, &v948 - v779);
  v781 = v1021;
  v782 = v978;
  *(v762 + 104) = v1021;
  *(v762 + 112) = v782;
  v783 = sub_1CA94C438("Creates a new Bear note with the contents of a web page.", 56);
  v997 = v784;
  v998 = v783;
  *&v992 = sub_1CA94C438("Creates a new Bear note with the contents of a web page.", 56);
  v786 = v785;
  v999 = &v948;
  MEMORY[0x1EEE9AC00](v992);
  v787 = &v948 - v1023;
  sub_1CA948D98();
  v788 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v788);
  sub_1CA948B68();

  v789 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v790 = sub_1CA2F9F14(v998, v997, v992, v786, 0, 0, v787, &v948 - v779);
  *(v762 + 144) = v781;
  *(v762 + 120) = v790;
  v791 = sub_1CA94C1E8();
  v792 = v1001;
  v793 = sub_1CA6B3784(v791);
  v977 = v751;
  *(v751 + 192) = v793;
  *(v751 + 216) = v792;
  *(v751 + 224) = 0x74616D726F46;
  *(v751 + 232) = 0xE600000000000000;
  *(v751 + 240) = 0xD00000000000002ALL;
  *(v751 + 248) = 0x80000001CA9C16C0;
  v794 = MEMORY[0x1E69E6158];
  *(v751 + 264) = MEMORY[0x1E69E6158];
  *(v751 + 272) = 0x696669746E656449;
  *(v751 + 280) = v994;
  *(v751 + 288) = 1650553447;
  *(v751 + 296) = 0xE400000000000000;
  *(v751 + 312) = v794;
  strcpy((v751 + 320), "InputMapping");
  *(v751 + 333) = 0;
  *(v751 + 334) = -5120;
  v795 = swift_allocObject();
  *(v795 + 16) = v1007;
  v796 = v795;
  v1003 = v795;
  v797 = swift_allocObject();
  *(v797 + 16) = v1007;
  strcpy((v797 + 32), "DestinationKey");
  *(v797 + 47) = -18;
  *(v797 + 48) = 7107189;
  *(v797 + 56) = 0xE300000000000000;
  *(v797 + 72) = v794;
  *(v797 + 80) = 0x74616E6974736544;
  *(v797 + 88) = 0xEF657079546E6F69;
  *(v797 + 96) = 0x74736275534C5255;
  *(v797 + 104) = 0xEF6E6F6974757469;
  *(v797 + 120) = v794;
  v798 = v1012;
  *(v797 + 128) = 0x73616C436D657449;
  *(v797 + 136) = v798;
  *(v797 + 144) = v1011;
  *(v797 + 152) = 0x80000001CA9934F0;
  *(v797 + 168) = v794;
  *(v797 + 176) = 0x654B656372756F53;
  *(v797 + 184) = 0xE900000000000079;
  *(v797 + 192) = 0x4C525572616542;
  *(v797 + 200) = 0xE700000000000000;
  *(v797 + 216) = v794;
  *(v797 + 224) = 0x7954656372756F53;
  *(v797 + 264) = v794;
  *(v797 + 232) = 0xEA00000000006570;
  *(v797 + 240) = 0x7475706E49;
  *(v797 + 248) = 0xE500000000000000;
  *(v796 + 32) = sub_1CA94C1E8();
  v799 = swift_allocObject();
  *(v799 + 16) = v1013;
  strcpy((v799 + 32), "DestinationKey");
  *(v799 + 47) = -18;
  *(v799 + 48) = 1936154996;
  *(v799 + 56) = 0xE400000000000000;
  *(v799 + 72) = v794;
  *(v799 + 80) = 0x74616E6974736544;
  *(v799 + 88) = 0xEF657079546E6F69;
  strcpy((v799 + 96), "URLQueryValue");
  *(v799 + 110) = -4864;
  *(v799 + 120) = v794;
  *(v799 + 128) = 0x73616C436D657449;
  *(v799 + 136) = v798;
  *(v799 + 144) = 0xD000000000000013;
  *(v799 + 152) = v1009;
  *(v799 + 168) = v794;
  *(v799 + 176) = 0x6574656D61726150;
  *(v799 + 184) = 0xEB00000000495572;
  v800 = swift_allocObject();
  *(v800 + 16) = v1013;
  *(v800 + 64) = v794;
  v801 = v967;
  v802 = v1014;
  *(v800 + 32) = v967;
  *(v800 + 40) = v802;
  *(v800 + 48) = v1010;
  v1009 = v801;
  v803 = sub_1CA94C368();
  v804 = v968;
  v805 = v969;
  *(v800 + 72) = v803;
  *(v800 + 80) = v805;
  *(v800 + 88) = v804;
  v806 = v976;
  *(v800 + 104) = v794;
  *(v800 + 112) = v806;
  *&v1013 = v806;
  v1001 = sub_1CA94C438("The tags to attach to the created note", 38);
  v999 = v807;
  v808 = sub_1CA94C438("The tags to attach to the created note", 38);
  v997 = v809;
  v998 = v808;
  *&v1007 = &v948;
  MEMORY[0x1EEE9AC00](v808);
  v810 = v1023;
  sub_1CA948D98();
  v811 = v1022;
  v812 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v812);
  v813 = &v948 - v1024;
  sub_1CA948B68();

  v814 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v800 + 120) = sub_1CA2F9F14(v1001, v999, v998, v997, 0, 0, &v948 - v810, v813);
  v815 = v974;
  *(v800 + 144) = v1021;
  *(v800 + 152) = v815;
  *&v1007 = v815;
  v816 = sub_1CA94C438("Tags (Parameter Label)", 22);
  v998 = v817;
  v999 = v816;
  v818 = sub_1CA94C438("Tags", 4);
  v996 = v819;
  v997 = v818;
  v1001 = &v948;
  MEMORY[0x1EEE9AC00](v818);
  v820 = v810;
  v821 = &v948 - v810;
  sub_1CA948D98();
  v822 = [(__CFString *)v811 bundleURL];
  MEMORY[0x1EEE9AC00](v822);
  v823 = v1024;
  sub_1CA948B68();

  v824 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v800 + 160) = sub_1CA2F9F14(v999, v998, v997, v996, 0, 0, v821, &v948 - v823);
  v825 = v1021;
  v826 = v987;
  *(v800 + 184) = v1021;
  *(v800 + 192) = v826;
  v827 = sub_1CA94C438("cats, dogs (Parameter Placeholder)", 34);
  v998 = v828;
  v999 = v827;
  v829 = sub_1CA94C438("cats, dogs", 10);
  v996 = v830;
  v997 = v829;
  v1001 = &v948;
  MEMORY[0x1EEE9AC00](v829);
  sub_1CA948D98();
  v831 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v831);
  sub_1CA948B68();

  v832 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v800 + 200) = sub_1CA2F9F14(v999, v998, v997, v996, 0, 0, &v948 - v820, &v948 - v823);
  v833 = v982;
  *(v800 + 224) = v825;
  *(v800 + 232) = v833;
  v834 = MEMORY[0x1E69E6158];
  *(v800 + 264) = MEMORY[0x1E69E6158];
  *(v800 + 240) = 0x7468676952;
  *(v800 + 248) = 0xE500000000000000;
  v835 = sub_1CA94C1E8();
  v836 = v1018;
  *(v799 + 192) = sub_1CA2F864C(v835);
  *(v799 + 216) = v836;
  *(v799 + 224) = 0x654B656372756F53;
  *(v799 + 232) = 0xE900000000000079;
  *(v799 + 240) = 0x7367615472616542;
  *(v799 + 248) = 0xE800000000000000;
  *(v799 + 264) = v834;
  *(v799 + 272) = 0x7954656372756F53;
  *(v799 + 312) = v834;
  *(v799 + 280) = 0xEA00000000006570;
  *(v799 + 288) = 0x6574656D61726150;
  *(v799 + 296) = v1019;
  *(v1003 + 5) = sub_1CA94C1E8();
  v837 = swift_allocObject();
  *(v837 + 16) = xmmword_1CA981300;
  strcpy((v837 + 32), "DestinationKey");
  *(v837 + 47) = -18;
  *(v837 + 48) = 0x736567616D696F6ELL;
  *(v837 + 56) = 0xE800000000000000;
  *(v837 + 72) = v834;
  *(v837 + 80) = 0x74616E6974736544;
  *(v837 + 88) = 0xEF657079546E6F69;
  strcpy((v837 + 96), "URLQueryValue");
  *(v837 + 110) = -4864;
  *(v837 + 120) = v834;
  *(v837 + 128) = 0x73616C436D657449;
  v838 = v1014;
  *(v837 + 136) = v1012;
  *(v837 + 144) = v838;
  *(v837 + 152) = v984;
  v839 = v1011;
  *(v837 + 168) = v834;
  *(v837 + 176) = v839;
  *(v837 + 184) = v993;
  *(v837 + 192) = 1;
  *(v837 + 216) = MEMORY[0x1E69E6370];
  *(v837 + 224) = 0x6574656D61726150;
  *(v837 + 232) = 0xEB00000000495572;
  v840 = swift_allocObject();
  *(v840 + 16) = v1006;
  v841 = v1009;
  v842 = v991;
  *(v840 + 32) = v1009;
  *(v840 + 40) = v842;
  *(v840 + 48) = v983;
  v843 = v1013;
  *(v840 + 64) = v834;
  *(v840 + 72) = v843;
  v1009 = v841;
  v844 = sub_1CA94C438("If enabled, Bear will grab the images from the page.", 52);
  v998 = v845;
  v999 = v844;
  v846 = sub_1CA94C438("If enabled, Bear will grab the images from the page.", 52);
  v996 = v847;
  v997 = v846;
  v1001 = &v948;
  MEMORY[0x1EEE9AC00](v846);
  v848 = v1023;
  sub_1CA948D98();
  v849 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v849);
  v850 = &v948 - v1024;
  sub_1CA948B68();

  v851 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v840 + 80) = sub_1CA2F9F14(v999, v998, v997, v996, 0, 0, &v948 - v848, v850);
  v852 = v1021;
  v853 = v1007;
  *(v840 + 104) = v1021;
  *(v840 + 112) = v853;
  *&v1007 = v853;
  v854 = sub_1CA94C438("Include Images (Parameter Label)", 32);
  v998 = v855;
  v999 = v854;
  v856 = sub_1CA94C438("Include Images", 14);
  v996 = v857;
  v997 = v856;
  v1001 = &v948;
  MEMORY[0x1EEE9AC00](v856);
  sub_1CA948D98();
  v858 = v1022;
  v859 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v859);
  v860 = &v948 - v1024;
  sub_1CA948B68();

  v861 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v862 = sub_1CA2F9F14(v999, v998, v997, v996, 0, 0, &v948 - v848, v860);
  *(v840 + 144) = v852;
  *(v840 + 120) = v862;
  v863 = sub_1CA94C1E8();
  v864 = v1018;
  *(v837 + 240) = sub_1CA2F864C(v863);
  *(v837 + 264) = v864;
  *(v837 + 272) = 0x654B656372756F53;
  *(v837 + 280) = 0xE900000000000079;
  *(v837 + 288) = 0x67616D4972616542;
  *(v837 + 296) = v970;
  v865 = MEMORY[0x1E69E6158];
  *(v837 + 312) = MEMORY[0x1E69E6158];
  *(v837 + 320) = 0x7954656372756F53;
  *(v837 + 328) = 0xEA00000000006570;
  *(v837 + 336) = 0x6574656D61726150;
  *(v837 + 344) = v1019;
  *(v837 + 360) = v865;
  strcpy((v837 + 368), "ValueMapping");
  *(v837 + 381) = 0;
  *(v837 + 382) = -5120;
  v866 = v865;
  v867 = sub_1CA94C1E8();
  *(v837 + 408) = v1004;
  *(v837 + 384) = v867;
  *(v1003 + 6) = sub_1CA94C1E8();
  v868 = swift_allocObject();
  *(v868 + 16) = v988;
  *(v868 + 32) = 0x74616E6974736544;
  *(v868 + 40) = 0xEF657079546E6F69;
  *(v868 + 48) = 0x43656C6261736944;
  *(v868 + 56) = 0xEF6B6361626C6C61;
  *(v868 + 72) = v866;
  *(v868 + 80) = 0x73616C436D657449;
  v869 = v1014;
  *(v868 + 88) = v1012;
  *(v868 + 96) = v869;
  *(v868 + 104) = v984;
  v870 = v1011;
  *(v868 + 120) = v866;
  *(v868 + 128) = v870;
  *(v868 + 136) = v993;
  *(v868 + 144) = 1;
  *(v868 + 168) = MEMORY[0x1E69E6370];
  *(v868 + 176) = 0x6574656D61726150;
  *(v868 + 184) = 0xEB00000000495572;
  v871 = swift_allocObject();
  *(v871 + 16) = v1006;
  v872 = v991;
  *(v871 + 32) = v1009;
  *(v871 + 40) = v872;
  *(v871 + 48) = v983;
  v873 = v1013;
  *(v871 + 64) = v866;
  *(v871 + 72) = v873;
  v1012 = sub_1CA94C438("If enabled, Bear will re-open Shortcuts after creating the new note.", 68);
  v1001 = v874;
  v875 = sub_1CA94C438("If enabled, Bear will re-open Shortcuts after creating the new note.", 68);
  v998 = v876;
  v999 = v875;
  *&v1013 = &v948;
  MEMORY[0x1EEE9AC00](v875);
  v877 = v1023;
  sub_1CA948D98();
  v878 = v858;
  v879 = [(__CFString *)v858 bundleURL];
  MEMORY[0x1EEE9AC00](v879);
  v880 = &v948 - v1024;
  sub_1CA948B68();

  v881 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v871 + 80) = sub_1CA2F9F14(v1012, v1001, v999, v998, 0, 0, &v948 - v877, v880);
  v882 = v1021;
  v883 = v1007;
  *(v871 + 104) = v1021;
  *(v871 + 112) = v883;
  v1012 = sub_1CA94C438("Return to Shortcuts (Parameter Label)", 37);
  v1001 = v884;
  v885 = sub_1CA94C438("Return to Shortcuts", 19);
  v998 = v886;
  v999 = v885;
  *&v1013 = &v948;
  MEMORY[0x1EEE9AC00](v885);
  sub_1CA948D98();
  v887 = [(__CFString *)v878 bundleURL];
  MEMORY[0x1EEE9AC00](v887);
  v888 = &v948 - v1024;
  sub_1CA948B68();

  v889 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v890 = sub_1CA2F9F14(v1012, v1001, v999, v998, 0, 0, &v948 - v877, v888);
  *(v871 + 144) = v882;
  *(v871 + 120) = v890;
  v891 = sub_1CA94C1E8();
  v892 = v1018;
  *(v868 + 192) = sub_1CA2F864C(v891);
  *(v868 + 216) = v892;
  *(v868 + 224) = 0x654B656372756F53;
  *(v868 + 232) = 0xE900000000000079;
  *(v868 + 240) = 0x7574655272616542;
  *(v868 + 248) = v979;
  v893 = MEMORY[0x1E69E6158];
  *(v868 + 264) = MEMORY[0x1E69E6158];
  *(v868 + 272) = 0x7954656372756F53;
  *(v868 + 280) = 0xEA00000000006570;
  *(v868 + 288) = 0x6574656D61726150;
  *(v868 + 296) = v1019;
  *(v868 + 312) = v893;
  strcpy((v868 + 320), "ValueMapping");
  *(v868 + 333) = 0;
  *(v868 + 334) = -5120;
  v894 = v893;
  v895 = sub_1CA94C1E8();
  *(v868 + 360) = v1004;
  *(v868 + 336) = v895;
  *(v1003 + 7) = sub_1CA94C1E8();
  v896 = swift_allocObject();
  *(v896 + 16) = v1006;
  *(v896 + 32) = 0x6574656D61726150;
  *(v896 + 40) = 0xEB00000000495572;
  v897 = swift_allocObject();
  *(v897 + 16) = v1008;
  v898 = v1014;
  *(v897 + 32) = v1009;
  *(v897 + 40) = v898;
  *(v897 + 48) = v1010;
  *(v897 + 64) = v894;
  *(v897 + 72) = @"KeyboardType";
  *(v897 + 80) = 5001813;
  *(v897 + 88) = 0xE300000000000000;
  v899 = v1007;
  *(v897 + 104) = v894;
  *(v897 + 112) = v899;
  v900 = @"KeyboardType";
  v1017 = sub_1CA94C438("URL (Parameter Label)", 21);
  v1014 = v901;
  v902 = sub_1CA94C438("URL", 3);
  v904 = v903;
  v1020 = &v948;
  MEMORY[0x1EEE9AC00](v902);
  v905 = &v948 - v1023;
  sub_1CA948D98();
  v906 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v906);
  v907 = &v948 - v1024;
  sub_1CA948B68();

  v908 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v897 + 120) = sub_1CA2F9F14(v1017, v1014, v902, v904, 0, 0, v905, v907);
  *(v897 + 144) = v1021;
  *(v897 + 152) = @"TextContentType";
  *(v897 + 184) = v894;
  *(v897 + 160) = 5001813;
  *(v897 + 168) = 0xE300000000000000;
  v909 = @"TextContentType";
  v910 = sub_1CA94C1E8();
  v911 = v1018;
  *(v896 + 48) = sub_1CA2F864C(v910);
  *(v896 + 72) = v911;
  *(v896 + 80) = 0x654B656372756F53;
  *(v896 + 88) = 0xE900000000000079;
  *(v896 + 96) = 0x4C525572616542;
  *(v896 + 104) = 0xE700000000000000;
  *(v896 + 120) = v894;
  *(v896 + 128) = 0x7954656372756F53;
  *(v896 + 168) = v894;
  *(v896 + 136) = 0xEA00000000006570;
  *(v896 + 144) = 0x6574656D61726150;
  *(v896 + 152) = v1019;
  v912 = sub_1CA94C1E8();
  v913 = v1003;
  *(v1003 + 8) = v912;
  v914 = v977;
  v977[10].data = v913;
  *(v914 + 360) = v1002;
  *(v914 + 368) = 1701667150;
  *(v914 + 376) = 0xE400000000000000;
  v915 = sub_1CA94C438("Create Bear Note from URL (Action Name)", 39);
  v917 = v916;
  v918 = sub_1CA94C438("Create Bear Note from URL", 25);
  v920 = v919;
  v1020 = &v948;
  MEMORY[0x1EEE9AC00](v918);
  v921 = &v948 - v1023;
  sub_1CA948D98();
  v922 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v922);
  v923 = &v948 - v1024;
  sub_1CA948B68();

  v924 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v914 + 384) = sub_1CA2F9F14(v915, v917, v918, v920, 0, 0, v921, v923);
  *(v914 + 408) = v1021;
  strcpy((v914 + 416), "OutputMapping");
  *(v914 + 430) = -4864;
  v925 = swift_allocObject();
  *(v925 + 16) = v1000;
  *(v925 + 32) = sub_1CA94C1E8();
  *(v914 + 432) = v925;
  v926 = v1011;
  *(v914 + 456) = v980;
  *(v914 + 464) = v926;
  *(v914 + 472) = v990;
  v927 = sub_1CA94C438("Create note from ${BearURL} (Parameter Summary)", 47);
  v929 = v928;
  v930 = sub_1CA94C438("Create note from ${BearURL}", 27);
  v932 = v931;
  v1021 = &v948;
  MEMORY[0x1EEE9AC00](v930);
  v933 = &v948 - v1023;
  sub_1CA948D98();
  v934 = [(__CFString *)v1022 bundleURL];
  MEMORY[0x1EEE9AC00](v934);
  v935 = &v948 - v1024;
  sub_1CA948B68();

  v936 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v937 = sub_1CA2F9F14(v927, v929, v930, v932, 0, 0, v933, v935);
  v938 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v914 + 504) = v989;
  *(v914 + 480) = v938;
  v939 = MEMORY[0x1E69E6158];
  v940 = sub_1CA94C1E8();
  v941 = v1005;
  *(v1005 + 72) = v940;
  v942 = v972;
  *(v972 + 48) = v941;
  v943 = v1002;
  *(v942 + 72) = v1002;
  strcpy((v942 + 80), "Capabilities");
  *(v942 + 93) = 0;
  *(v942 + 94) = -5120;
  *(v942 + 96) = &unk_1F4A01238;
  *(v942 + 120) = v986;
  *(v942 + 128) = 0x656D65686353;
  *(v942 + 168) = v939;
  *(v942 + 136) = 0xE600000000000000;
  *(v942 + 144) = 1918985570;
  *(v942 + 152) = 0xE400000000000000;
  v944 = sub_1CA94C1E8();
  v945 = v973;
  *(v973 + 32) = v944;
  v946 = v971;
  *(v971 + 312) = v943;
  *(v946 + 288) = v945;
  return sub_1CA94C1E8();
}

void Library.folderWithName(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = [v4 folders];
  OUTLINED_FUNCTION_36_0();
  sub_1CA27E37C();
  v8 = sub_1CA94C658();

  v9 = sub_1CA25B410(v8);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      goto LABEL_16;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA22D0](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = [v11 name];
    v14 = sub_1CA94C3A8();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {

LABEL_16:

      return;
    }

    OUTLINED_FUNCTION_204();
    v18 = sub_1CA94D7F8();

    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t Library.insertFolder(name:icon:identifier:)()
{
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_10_17(v0, v1, v2, v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_36_0();
  v8 = sub_1CA27E37C();
  OUTLINED_FUNCTION_6_27(v8, v9, v10, v8, v11, v12, v13, v14, v16);
  swift_endAccess();
  return v17;
}

uint64_t Library.insertFolder(name:icon:identifier:insertAt:)()
{
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_10_17(v0, v1, v2, v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_36_0();
  v8 = sub_1CA27E37C();
  OUTLINED_FUNCTION_6_27(v8, v9, v10, v8, v11, v12, v13, v14, v16);
  swift_endAccess();
  return v17;
}

Swift::Void __swiftcall Library.delete(folderWithIdentifier:)(Swift::String folderWithIdentifier)
{
  OUTLINED_FUNCTION_37_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  v26[0] = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_8_17();
  swift_beginAccess();
  (*(v6 + 16))(v3, v1 + v15, v4);
  sub_1CA2C9BB4();
  (*(v6 + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v16 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v16, v17, v18);
  if (v23)
  {
    v19 = &qword_1EC443BE8;
    v20 = &qword_1CA982098;
LABEL_7:
    sub_1CA27080C(v2, v19, v20);
    goto LABEL_8;
  }

  v21 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v21, v22, v10);
  if (v23)
  {
    v19 = &qword_1EC443BF0;
    v20 = &qword_1CA9820A0;
    goto LABEL_7;
  }

  v24 = v26[0];
  v25 = (*(v26[0] + 32))(v14, v2, v10);
  MEMORY[0x1EEE9AC00](v25);
  v26[-2] = v14;
  swift_beginAccess();
  sub_1CA94BFF8();
  swift_endAccess();
  (*(v24 + 8))(v14, v10);
LABEL_8:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA4C8710(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA94BFA8();
  type metadata accessor for LibraryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  sub_1CA94BDA8();
  return v2(&v4, 0);
}

uint64_t Library.update(folderWithIdentifier:newName:newIcon:)()
{
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_10_17(v1, v2, v3, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_36_0();
  v9 = sub_1CA27E37C();
  OUTLINED_FUNCTION_6_27(v9, v10, v11, v9, v12, v13, v14, v15, v17);
  result = swift_endAccess();
  if (!v0)
  {
    return v18;
  }

  return result;
}

void sub_1CA4C88AC(void *a1@<X8>)
{
  sub_1CA2D2D54();
  if (!v1)
  {
    *a1 = v3;
  }
}

void Library.folder(containing:)()
{
  OUTLINED_FUNCTION_37_0();
  v111 = v1;
  v112 = v2;
  sub_1CA94C168();
  OUTLINED_FUNCTION_1_0();
  v97 = v4;
  v98 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v96 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_1();
  v101 = v9;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v90 - v11;
  v12 = type metadata accessor for LibraryModel.FolderCollection(0);
  v13 = OUTLINED_FUNCTION_18_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_1();
  v99 = v14;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v90 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0();
  v106 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_43();
  v107 = v19;
  v110 = type metadata accessor for LibraryModel(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v104 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v90 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  v30 = OUTLINED_FUNCTION_18_0(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_1();
  v105 = v31;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v90 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  v113 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3_1();
  v102 = v38;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v90 - v40;
  v42 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  v43 = *(v25 + 16);
  v109 = v0;
  v43(v28, v0 + v42, v23);
  sub_1CA2C99D8();
  v44 = v23;
  v47 = *(v25 + 8);
  v46 = v25 + 8;
  v45 = v47;
  v47(v28, v44);
  v48 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v48, v49, v35);
  if (v59)
  {
    v50 = &qword_1EC443BB8;
    v51 = &unk_1CA983A70;
LABEL_4:
    v52 = v34;
LABEL_11:
    sub_1CA27080C(v52, v50, v51);
    goto LABEL_12;
  }

  v111 = *(v113 + 32);
  v112 = v113 + 32;
  v111(v41, v34, v35);
  v53 = v109;
  v93 = v42;
  v91 = v43;
  v43(v28, v109 + v42, v44);
  v54 = v104;
  sub_1CA94BFD8();
  v94 = v44;
  v95 = v46;
  v92 = v45;
  v45(v28, v44);
  v56 = v106;
  v55 = v107;
  v57 = v108;
  (*(v106 + 16))(v107, v54 + *(v110 + 20), v108);
  sub_1CA4C9F7C(v54, type metadata accessor for LibraryModel);
  v58 = v105;
  OUTLINED_FUNCTION_18_2();
  sub_1CA94BD98();
  (*(v56 + 8))(v55, v57);
  OUTLINED_FUNCTION_49(v58, 1, v35);
  if (v59)
  {
    (*(v113 + 8))(v41, v35);
    v50 = &qword_1EC443BB8;
    v51 = &unk_1CA983A70;
    v52 = v58;
    goto LABEL_11;
  }

  v108 = v41;
  v111(v102, v58, v35);
  v60 = v103;
  sub_1CA94BE38();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  OUTLINED_FUNCTION_49(v60, 1, v61);
  if (v62)
  {
    v63 = *(v113 + 8);
    v64 = OUTLINED_FUNCTION_18_2();
    v63(v64);
    v65 = OUTLINED_FUNCTION_24_14();
    v63(v65);
    v50 = &off_1EC443BD0;
    v51 = &unk_1CA983B10;
    v52 = v60;
    goto LABEL_11;
  }

  v66 = v94;
  v91(v28, v53 + v93, v94);
  sub_1CA34137C();
  v67 = v99;
  sub_1CA94BEC8();
  v92(v28, v66);
  OUTLINED_FUNCTION_39();
  v69 = *(v68 + 8);
  v69(v60, v61);
  v70 = v100;
  sub_1CA3413D4(v67, v100);
  v34 = v101;
  sub_1CA94BE38();
  v71 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_49(v71, v72, v61);
  if (v73)
  {
    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v70, v74);
    v75 = *(v113 + 8);
    v76 = OUTLINED_FUNCTION_18_2();
    v75(v76);
    v77 = OUTLINED_FUNCTION_24_14();
    v75(v77);
    v50 = &off_1EC443BD0;
    v51 = &unk_1CA983B10;
    goto LABEL_4;
  }

  v78 = v96;
  sub_1CA94BE88();
  CRKeyPath.recoveredStringIdentifier.getter();
  v80 = v79;
  (*(v97 + 8))(v78, v98);
  v69(v34, v61);
  v81 = v113;
  if (v80)
  {
    LibraryModel.FolderCollection.workflowCollection(id:)();

    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v70, v82);
    v83 = *(v81 + 8);
    v84 = OUTLINED_FUNCTION_18_2();
    v83(v84);
    v85 = OUTLINED_FUNCTION_24_14();
    v83(v85);
  }

  else
  {
    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v70, v86);
    v87 = *(v81 + 8);
    v88 = OUTLINED_FUNCTION_18_2();
    v87(v88);
    v89 = OUTLINED_FUNCTION_24_14();
    v87(v89);
  }

LABEL_12:
  OUTLINED_FUNCTION_36();
}

id sub_1CA4C91FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

void *Library.folderCollection(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LibraryModel.FolderCollection(0);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43();
  v62 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  v63 = v21;
  v64 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  if (sub_1CA94C3A8() == a1 && v25 == a2)
  {
  }

  else
  {
    v61 = v10;
    v27 = a1;
    v28 = sub_1CA94D7F8();

    if ((v28 & 1) == 0)
    {
      v58 = v24;
      v29 = OBJC_IVAR___WFLibrary_capsule;
      v30 = v65;
      OUTLINED_FUNCTION_8_17();
      swift_beginAccess();
      v31 = *(v16 + 16);
      v57 = v29;
      v32 = v30 + v29;
      v33 = v31;
      v31(v3, v32, v14);
      v59 = a2;
      v60 = v27;
      sub_1CA2C9BB4();
      v34 = *(v16 + 8);
      v34(v3, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
      v35 = OUTLINED_FUNCTION_83();
      if (__swift_getEnumTagSinglePayload(v35, v36, v37) == 1)
      {
        v38 = &qword_1EC443BE8;
        v39 = &qword_1CA982098;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_83();
        v42 = v64;
        if (__swift_getEnumTagSinglePayload(v41, v43, v64) != 1)
        {
          v56 = v34;
          (*(v63 + 32))(v58, v2, v42);
          v49 = v62;
          sub_1CA94BE38();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
          if (__swift_getEnumTagSinglePayload(v49, 1, v50) != 1)
          {
            v33(v3, v65 + v57, v14);
            type metadata accessor for LibraryModel(0);
            sub_1CA34137C();
            v51 = v42;
            v52 = v61;
            sub_1CA94BEC8();
            v56(v3, v14);
            OUTLINED_FUNCTION_39();
            (*(v53 + 8))(v49, v50);
            v45 = v59;
            v40 = LibraryModel.FolderCollection.workflowCollection(id:)();
            OUTLINED_FUNCTION_0_42();
            sub_1CA4C9F7C(v52, v54);
            (*(v63 + 8))(v58, v51);
            if (v40)
            {
              return v40;
            }

            goto LABEL_17;
          }

          (*(v63 + 8))(v58, v42);
          v38 = &off_1EC443BD0;
          v39 = &unk_1CA983B10;
          v44 = v49;
LABEL_16:
          sub_1CA27080C(v44, v38, v39);
          v45 = v59;
LABEL_17:
          v66 = 0;
          v67 = 0xE000000000000000;
          sub_1CA94D408();

          v66 = 0xD000000000000023;
          v67 = 0x80000001CA9AD570;
          MEMORY[0x1CCAA1300](v60, v45);
          v46 = v66;
          v40 = v67;
          sub_1CA2D9AF4();
          swift_allocError();
          *v47 = v46;
          *(v47 + 8) = v40;
          *(v47 + 16) = 1;
          swift_willThrow();
          return v40;
        }

        v38 = &qword_1EC443BF0;
        v39 = &qword_1CA9820A0;
      }

      v44 = v2;
      goto LABEL_16;
    }
  }

  if (qword_1EC442C58 != -1)
  {
    swift_once();
  }

  return qword_1EC442C60;
}

Swift::Bool __swiftcall Library.hasFolder(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_37_0();
  v54 = v4;
  v55 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v51 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C08, &qword_1CA9820B0);
  OUTLINED_FUNCTION_18_0(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43();
  v52 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  v53 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  v23 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_8_17();
  swift_beginAccess();
  v24 = *(v14 + 16);
  v50 = v1;
  v24(v2, v1 + v23, v12);
  sub_1CA2C9BB4();
  v25 = *(v14 + 8);
  v25(v2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v26 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_49(v26, v27, v28);
  if (v33)
  {
    v29 = &qword_1EC443BE8;
    v30 = &qword_1CA982098;
LABEL_7:
    v34 = v19;
    goto LABEL_8;
  }

  v31 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_49(v31, v32, v20);
  if (v33)
  {
    v29 = &qword_1EC443BF0;
    v30 = &qword_1CA9820A0;
    goto LABEL_7;
  }

  v55 = v25;
  (*(v53 + 32))(v3, v19, v20);
  v36 = v51;
  sub_1CA94BE38();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  OUTLINED_FUNCTION_49(v37, 1, v38);
  if (!v39)
  {
    v24(v2, v50 + v23, v12);
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    v44 = v52;
    sub_1CA94BEC8();
    v55(v2, v12);
    v45 = OUTLINED_FUNCTION_204();
    v46(v45);
    OUTLINED_FUNCTION_39();
    (*(v47 + 8))(v37, v38);
    v48 = type metadata accessor for LibraryModel.FolderCollection(0);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v48);
    sub_1CA27080C(v44, &qword_1EC443C08, &qword_1CA9820B0);
    goto LABEL_9;
  }

  v40 = OUTLINED_FUNCTION_204();
  v41(v40);
  sub_1CA27080C(v37, &off_1EC443BD0, &unk_1CA983B10);
  v42 = type metadata accessor for LibraryModel.FolderCollection(0);
  v43 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v42);
  v29 = &qword_1EC443C08;
  v30 = &qword_1CA9820B0;
  v34 = v43;
LABEL_8:
  sub_1CA27080C(v34, v29, v30);
LABEL_9:
  OUTLINED_FUNCTION_36();
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Library.moveFolders(_:toIndex:)(Swift::OpaquePointer _, Swift::Int toIndex)
{
  OUTLINED_FUNCTION_22_14();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  swift_endAccess();
}

void sub_1CA4C9EC0()
{
  OUTLINED_FUNCTION_20_16();
  sub_1CA2D0DF0();
  *v0 = v1;
}

void sub_1CA4C9EFC()
{
  OUTLINED_FUNCTION_20_16();
  sub_1CA2D1078();
  *v0 = v1;
}

uint64_t sub_1CA4C9F7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_1CA4CA034()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("find|search|detect|scan|e-mail|emails", 37);
  v6 = v5;
  v7 = sub_1CA94C438("find|search|detect|scan|e-mail|emails", 37);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v122 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v11;
  v12 = &v109 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v120 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v121 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v109 - v121;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v118;
  *(inited + 80) = v18;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000013;
  *(inited + 128) = 0x80000001CA993390;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Get Text from Input (Description Summary)", 41);
  v114 = v23;
  v24 = sub_1CA94C438("Returns text from the previous action's output.\n\nFor example, this action can get the name of a photo or song, or the text of a web page.", 137);
  v26 = v25;
  v115 = &v109;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v109 - v122;
  sub_1CA948D98();
  v28 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v109 - v121;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v114, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v118;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v117;
  *(inited + 160) = sub_1CA6B3784(v32);
  *(inited + 184) = v33;
  *(inited + 192) = @"IconName";
  *(inited + 200) = 1954047316;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"Input";
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v35 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v35 + 16) = xmmword_1CA981350;
  *(v35 + 32) = 0x656C7069746C754DLL;
  *(v35 + 40) = 0xE800000000000000;
  v36 = MEMORY[0x1E69E6370];
  *(v35 + 48) = 1;
  *(v35 + 72) = v36;
  strcpy((v35 + 80), "ParameterKey");
  *(v35 + 93) = 0;
  *(v35 + 94) = -5120;
  *(v35 + 96) = 0x7475706E494657;
  *(v35 + 104) = 0xE700000000000000;
  *(v35 + 120) = v34;
  *(v35 + 128) = 0x6465726975716552;
  *(v35 + 136) = 0xE800000000000000;
  *(v35 + 144) = 1;
  *(v35 + 168) = v36;
  *(v35 + 176) = 0x7365707954;
  *(v35 + 184) = 0xE500000000000000;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v35 + 216) = v115;
  *(v35 + 192) = &unk_1F4A01268;
  v37 = @"IconName";
  v38 = @"Input";
  v39 = sub_1CA94C1E8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v40;
  *(inited + 240) = v39;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v41 = @"Name";
  v42 = sub_1CA94C438("Get Text from Input (Action Name)", 33);
  v110 = v43;
  v111 = v42;
  v44 = sub_1CA94C438("Get Text from Input", 19);
  v46 = v45;
  v112 = &v109;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v109 - v122;
  sub_1CA948D98();
  v48 = v119;
  v49 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v109 - v121;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v111, v110, v44, v46, 0, 0, v47, v50);
  v52 = v118;
  *(inited + 304) = v118;
  *(inited + 312) = @"Output";
  v53 = swift_initStackObject();
  *(v53 + 16) = v117;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  *(v53 + 96) = 1;
  *(v53 + 120) = MEMORY[0x1E69E6370];
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v54 = @"Output";
  v55 = sub_1CA94C438("Text (Default Output Name)", 26);
  v111 = v56;
  v112 = v55;
  v110 = sub_1CA94C438("Text", 4);
  v58 = v57;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v110);
  v59 = &v109 - v122;
  sub_1CA948D98();
  v60 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v109 - v121;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v112, v111, v110, v58, 0, 0, v59, v61);
  *(v53 + 168) = v52;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 216) = v115;
  *(v53 + 184) = 0xE500000000000000;
  *(v53 + 192) = &unk_1F4A01298;
  v63 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v114;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = v117;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000019;
  *(v64 + 48) = 0x80000001CA99B030;
  *(v64 + 64) = v63;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7475706E494657;
  *(v64 + 88) = 0xE700000000000000;
  *(v64 + 104) = v63;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438("Input (WFInput)", 15);
  v111 = v70;
  v112 = v69;
  v71 = sub_1CA94C438("Input", 5);
  v110 = v72;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v71);
  v73 = v122;
  sub_1CA948D98();
  v74 = v119;
  v75 = [v119 bundleURL];
  v109 = &v109;
  MEMORY[0x1EEE9AC00](v75);
  *&v117 = inited;
  v76 = v121;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v112, v111, v71, v110, 0, 0, &v109 - v73, &v109 - v76);
  v78 = v118;
  *(v64 + 144) = v118;
  *(v64 + 152) = @"Placeholder";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438("Input (WFInput)", 15);
  v111 = v81;
  v112 = v80;
  v110 = sub_1CA94C438("Input", 5);
  v83 = v82;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v110);
  v84 = &v109 - v73;
  sub_1CA948D98();
  v85 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v112, v111, v110, v83, 0, 0, v84, &v109 - v76);
  *(v64 + 184) = v78;
  *(v64 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  v90 = v115;
  v115[4] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v92 = v117;
  *(v117 + 360) = v90;
  *(v92 + 384) = v91;
  *(v92 + 392) = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438("Get text from ${WFInput} (Parameter Summary)", 44);
  v96 = v95;
  v97 = sub_1CA94C438("Get text from ${WFInput}", 24);
  v99 = v98;
  v118 = &v109;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v109 - v122;
  sub_1CA948D98();
  v101 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v109 - v121;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v92 + 400) = v105;
  *(v92 + 424) = v106;
  *(v92 + 432) = @"ResidentCompatible";
  *(v92 + 464) = MEMORY[0x1E69E6370];
  *(v92 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v107 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CAF54()
{
  v31[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1953392980;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA9C1A40;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbolColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"IconSymbolColor";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 200) = v7;
  *(inited + 224) = v8;
  *(inited + 232) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v9;
  *(inited + 272) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438("Get Details of Files (Action Name)", 34);
  v14 = v13;
  v15 = sub_1CA94C438("Get Details of Files", 20);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 280) = v26;
  *(inited + 304) = v27;
  *(inited + 312) = @"ResidentCompatible";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v28 = @"ResidentCompatible";
  v29 = sub_1CA94C368();
  *(inited + 384) = MEMORY[0x1E69E6158];
  *(inited + 352) = v29;
  *(inited + 360) = 0xD000000000000018;
  *(inited + 368) = 0x80000001CA9933D0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CB3B0()
{
  v183 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C1AC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("save|photo|photos|picture|image|camera|roll", 43);
  v6 = v5;
  v7 = sub_1CA94C438("save|photo|photos|picture|image|camera|roll", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v193 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v194 = v11;
  v12 = &v173 - v193;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v190 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v191 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v192 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v173 - v192;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v189 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v186 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v187 = xmmword_1CA981350;
  *(v23 + 16) = xmmword_1CA981350;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v184 = sub_1CA94C438("Photos, videos, or audio to save", 32);
  v182 = v26;
  v27 = sub_1CA94C438("Photos, videos, or audio to save", 32);
  v29 = v28;
  v185 = &v173;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v173 - v193;
  sub_1CA948D98();
  v31 = v190;
  v32 = [v190 bundleURL];
  v188 = inited;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v192;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v184, v182, v27, v29, 0, 0, v30, &v173 - v33);
  *(v23 + 64) = v189;
  *(v23 + 72) = @"DescriptionNote";
  v35 = @"DescriptionNote";
  v184 = sub_1CA94C438("If a photo passed as input is already in the specified album, the photo will be duplicated.", 91);
  v182 = v36;
  v181 = sub_1CA94C438("If a photo passed as input is already in the specified album, the photo will be duplicated.", 91);
  v38 = v37;
  v185 = &v173;
  MEMORY[0x1EEE9AC00](v181);
  v39 = &v173 - v193;
  sub_1CA948D98();
  v40 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v184, v182, v181, v38, 0, 0, v39, &v173 - v33);
  *(v23 + 104) = v189;
  *(v23 + 112) = @"DescriptionResult";
  v42 = @"DescriptionResult";
  v184 = sub_1CA94C438("The saved items", 15);
  v182 = v43;
  v44 = sub_1CA94C438("The saved items", 15);
  v46 = v45;
  v185 = &v173;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v193;
  sub_1CA948D98();
  v48 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v192;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 120) = sub_1CA2F9F14(v184, v182, v44, v46, 0, 0, &v173 - v47, &v173 - v49);
  v51 = v189;
  *(v23 + 144) = v189;
  *(v23 + 152) = @"DescriptionSummary";
  v52 = @"DescriptionSummary";
  v184 = sub_1CA94C438("Adds the photos and videos passed as input to the specified photo album.", 72);
  v182 = v53;
  v54 = sub_1CA94C438("Adds the photos and videos passed as input to the specified photo album.", 72);
  v56 = v55;
  v185 = &v173;
  MEMORY[0x1EEE9AC00](v54);
  sub_1CA948D98();
  v57 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v184, v182, v54, v56, 0, 0, &v173 - v47, &v173 - v49);
  *(v23 + 184) = v51;
  *(v23 + 160) = v59;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v60 = sub_1CA94C1E8();
  v61 = v186;
  v62 = sub_1CA6B3784(v60);
  v63 = v188;
  v188[20] = v62;
  v63[23] = v61;
  v63[24] = @"DisabledOnPlatforms";
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v63[25] = &unk_1F4A01370;
  v63[28] = v64;
  v63[29] = @"Input";
  v65 = v64;
  v186 = v64;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  *(v66 + 16) = v187;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  v67 = MEMORY[0x1E69E6370];
  *(v66 + 48) = 1;
  *(v66 + 72) = v67;
  strcpy((v66 + 80), "ParameterKey");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 96) = 0x7475706E494657;
  *(v66 + 104) = 0xE700000000000000;
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 128) = 0x6465726975716552;
  *(v66 + 136) = 0xE800000000000000;
  *(v66 + 144) = 1;
  *(v66 + 168) = v67;
  *(v66 + 176) = 0x7365707954;
  v68 = v67;
  *(v66 + 216) = v65;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F4A013A0;
  v69 = @"DisabledOnPlatforms";
  v70 = @"Input";
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v185 = v72;
  v63[30] = v71;
  v63[33] = v72;
  v63[34] = @"InputPassthrough";
  *(v63 + 280) = 0;
  v63[38] = v68;
  v63[39] = @"Name";
  v73 = @"InputPassthrough";
  v74 = @"Name";
  v75 = sub_1CA94C438("Save to Photos (Action Name)", 28);
  v180 = v76;
  v181 = v75;
  v77 = sub_1CA94C438("Save to Photos", 14);
  v79 = v78;
  v182 = &v173;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v173 - v193;
  sub_1CA948D98();
  v81 = v190;
  v82 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v173 - v192;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v181, v180, v77, v79, 0, 0, v80, v83);
  v86 = v188;
  v87 = v189;
  v188[40] = v85;
  v86[43] = v87;
  v86[44] = @"Output";
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1CA9813C0;
  *(v88 + 32) = 0x656C7069746C754DLL;
  *(v88 + 40) = 0xE800000000000000;
  *(v88 + 48) = 1;
  *(v88 + 72) = MEMORY[0x1E69E6370];
  *(v88 + 80) = 0x614E74757074754FLL;
  *(v88 + 88) = 0xEA0000000000656DLL;
  v89 = @"Output";
  v90 = sub_1CA94C438("Saved Photo Media (Default Output Name)", 39);
  v181 = v91;
  v182 = v90;
  v180 = sub_1CA94C438("Saved Photo Media", 17);
  v93 = v92;
  v184 = &v173;
  MEMORY[0x1EEE9AC00](v180);
  v94 = &v173 - v193;
  sub_1CA948D98();
  v95 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v173 - v192;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 96) = sub_1CA2F9F14(v182, v181, v180, v93, 0, 0, v94, v96);
  *(v88 + 120) = v87;
  *(v88 + 128) = 0x7365707954;
  *(v88 + 168) = v186;
  *(v88 + 136) = 0xE500000000000000;
  *(v88 + 144) = &unk_1F4A013F0;
  v98 = MEMORY[0x1E69E6158];
  v99 = sub_1CA94C1E8();
  v100 = v188;
  v188[45] = v99;
  v100[48] = v185;
  v100[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 1) = xmmword_1CA981360;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1CA981370;
  *(v101 + 32) = @"AlwaysShowsButton";
  *(v101 + 40) = 1;
  *(v101 + 64) = MEMORY[0x1E69E6370];
  *(v101 + 72) = @"Class";
  *(v101 + 80) = 0xD00000000000001BLL;
  *(v101 + 88) = 0x80000001CA9C1C80;
  *(v101 + 104) = v98;
  *(v101 + 112) = @"Key";
  *(v101 + 120) = 0xD000000000000019;
  *(v101 + 128) = 0x80000001CA9C1CA0;
  *(v101 + 144) = v98;
  *(v101 + 152) = @"Label";
  v102 = @"Class";
  v103 = @"Key";
  v104 = @"Label";
  v181 = v102;
  v180 = v103;
  v179 = v104;
  v105 = @"Parameters";
  v106 = @"AlwaysShowsButton";
  v107 = sub_1CA94C438("Album (WFCameraRollSelectedGroup)", 33);
  v176 = v108;
  v177 = v107;
  v109 = sub_1CA94C438("Album", 5);
  v111 = v110;
  v178 = &v173;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v193;
  sub_1CA948D98();
  v113 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v173 - v192;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 160) = sub_1CA2F9F14(v177, v176, v109, v111, 0, 0, &v173 - v112, v114);
  v116 = v189;
  *(v101 + 184) = v189;
  *(v101 + 192) = @"Placeholder";
  v178 = @"Placeholder";
  v117 = sub_1CA94C438("Photo Album (WFCameraRollSelectedGroup)", 39);
  v175 = v118;
  v176 = v117;
  v174 = sub_1CA94C438("Photo Album", 11);
  v120 = v119;
  v177 = &v173;
  MEMORY[0x1EEE9AC00](v174);
  v121 = &v173 - v112;
  sub_1CA948D98();
  v122 = v190;
  v123 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v173 - v192;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v176, v175, v174, v120, 0, 0, v121, v124);
  *(v101 + 224) = v116;
  *(v101 + 200) = v126;
  _s3__C3KeyVMa_0(0);
  v177 = v127;
  v176 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v128 = sub_1CA94C1E8();
  v129 = sub_1CA2F864C(v128);
  v185[4] = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = v187;
  *(v130 + 32) = v181;
  *(v130 + 40) = 0xD000000000000019;
  *(v130 + 48) = 0x80000001CA99B030;
  v131 = MEMORY[0x1E69E6158];
  v132 = v180;
  *(v130 + 64) = MEMORY[0x1E69E6158];
  *(v130 + 72) = v132;
  *(v130 + 80) = 0x7475706E494657;
  *(v130 + 88) = 0xE700000000000000;
  v133 = v179;
  *(v130 + 104) = v131;
  *(v130 + 112) = v133;
  v134 = sub_1CA94C438("Input (WFInput)", 15);
  v181 = v135;
  v182 = v134;
  v180 = sub_1CA94C438("Input", 5);
  v137 = v136;
  *&v187 = &v173;
  MEMORY[0x1EEE9AC00](v180);
  v138 = v193;
  sub_1CA948D98();
  v139 = v122;
  v140 = [v122 bundleURL];
  v179 = &v173;
  MEMORY[0x1EEE9AC00](v140);
  v141 = v192;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v130 + 120) = sub_1CA2F9F14(v182, v181, v180, v137, 0, 0, &v173 - v138, &v173 - v141);
  v143 = v178;
  *(v130 + 144) = v189;
  *(v130 + 152) = v143;
  v144 = sub_1CA94C438("Input (WFInput)", 15);
  v181 = v145;
  v182 = v144;
  v146 = sub_1CA94C438("Input", 5);
  v180 = v147;
  *&v187 = &v173;
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948D98();
  v148 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v182, v181, v146, v180, 0, 0, &v173 - v138, &v173 - v141);
  *(v130 + 184) = v189;
  *(v130 + 160) = v150;
  v151 = sub_1CA94C1E8();
  v152 = sub_1CA2F864C(v151);
  v153 = v185;
  v185[5] = v152;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v155 = v188;
  v188[50] = v153;
  v155[53] = v154;
  v155[54] = @"ParameterSummary";
  v156 = @"ParameterSummary";
  v157 = sub_1CA94C438("Save ${WFInput} to ${WFCameraRollSelectedGroup} (Parameter Summary)", 67);
  v159 = v158;
  v160 = sub_1CA94C438("Save ${WFInput} to ${WFCameraRollSelectedGroup}", 47);
  v162 = v161;
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v173 - v193;
  sub_1CA948D98();
  v164 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v173 - v192;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v157, v159, v160, v162, 0, 0, v163, v165);
  v168 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v169 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v170 = v188;
  v188[55] = v168;
  v170[58] = v169;
  v170[59] = @"RequiredResources";
  v170[63] = v186;
  v170[60] = &unk_1F4A01420;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v171 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CC8FC()
{
  v290 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9C1DC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  *&v303 = sub_1CA94C438("add|subtract|math|time|get|start|of|this|minute|hour|day|week|month|year", 72);
  v5 = v4;
  v6 = sub_1CA94C438("add|subtract|math|time|get|start|of|this|minute|hour|day|week|month|year", 72);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v307 = v10;
  v309 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v282 - v309;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v306 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v305 = v14;
  v308 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v282 - v308;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v303, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *&v303 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v302 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  v289 = xmmword_1CA97EDF0;
  *(v19 + 16) = xmmword_1CA97EDF0;
  *(v19 + 32) = @"DescriptionNote";
  v20 = @"Description";
  v21 = @"DescriptionNote";
  v22 = sub_1CA94C438("This action supports decimal numbers when adding or subtracting seconds, minutes, hours, or days. Otherwise only integers are supported.", 136);
  v299 = v23;
  v300 = v22;
  v24 = sub_1CA94C438("This action supports decimal numbers when adding or subtracting seconds, minutes, hours, or days. Otherwise only integers are supported.", 136);
  v26 = v25;
  v301 = &v282;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v282 - v309;
  sub_1CA948D98();
  v28 = v306;
  v29 = [v306 bundleURL];
  v304 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v308;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 40) = sub_1CA2F9F14(v300, v299, v24, v26, 0, 0, v27, &v282 - v31);
  v33 = v303;
  *(v19 + 64) = v303;
  *(v19 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438("Adds or subtracts an amount of time from the date passed into the action.", 73);
  v299 = v36;
  v300 = v35;
  v37 = sub_1CA94C438("Adds or subtracts an amount of time from the date passed into the action.", 73);
  v39 = v38;
  v301 = &v282;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v282 - v309;
  sub_1CA948D98();
  v41 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v300, v299, v37, v39, 0, 0, v40, &v282 - v31);
  *(v19 + 104) = v33;
  *(v19 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v44 = sub_1CA94C1E8();
  v45 = v302;
  v46 = sub_1CA6B3784(v44);
  v47 = v304;
  v304[15] = v46;
  v47[18] = v45;
  v47[19] = @"IconColor";
  v47[20] = 1953392980;
  v47[21] = 0xE400000000000000;
  v48 = MEMORY[0x1E69E6158];
  v47[23] = MEMORY[0x1E69E6158];
  v47[24] = @"IconSymbol";
  v296 = 0xD000000000000014;
  v47[25] = 0xD000000000000014;
  v47[26] = 0x80000001CA9C1F10;
  v47[28] = v48;
  v47[29] = @"IconSymbolColor";
  v47[30] = 6579538;
  v47[31] = 0xE300000000000000;
  v47[33] = v48;
  v47[34] = @"Input";
  v49 = v47;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v297 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x657461444657;
  *(v50 + 104) = 0xE600000000000000;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  v52 = v51;
  *(v50 + 184) = 0xE500000000000000;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v301;
  *(v50 + 192) = &unk_1F4A01450;
  v53 = @"IconColor";
  v54 = @"IconSymbol";
  v55 = @"IconSymbolColor";
  v56 = @"Input";
  v57 = sub_1CA94C1E8();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v300 = v58;
  v49[35] = v57;
  v49[38] = v58;
  v49[39] = @"InputPassthrough";
  *(v49 + 320) = 0;
  v49[43] = v52;
  v49[44] = @"Name";
  v59 = @"InputPassthrough";
  v60 = @"Name";
  v298 = sub_1CA94C438("Adjust Date (Action Name)", 25);
  *&v295 = v61;
  v62 = sub_1CA94C438("Adjust Date", 11);
  v64 = v63;
  v299 = &v282;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v309;
  sub_1CA948D98();
  v66 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v282 - v308;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v298, v295, v62, v64, 0, 0, &v282 - v65, v67);
  v70 = v304;
  v304[45] = v69;
  v71 = v303;
  v70[48] = v303;
  v70[49] = @"Output";
  v72 = swift_allocObject();
  *(v72 + 16) = v297;
  *(v72 + 32) = 0x75736F6C63736944;
  *(v72 + 40) = 0xEF6C6576654C6572;
  *(v72 + 48) = 0x63696C627550;
  *(v72 + 56) = 0xE600000000000000;
  *(v72 + 72) = MEMORY[0x1E69E6158];
  *(v72 + 80) = 0x656C7069746C754DLL;
  *(v72 + 88) = 0xE800000000000000;
  *(v72 + 96) = 1;
  *(v72 + 120) = MEMORY[0x1E69E6370];
  *(v72 + 128) = 0x614E74757074754FLL;
  *(v72 + 136) = 0xEA0000000000656DLL;
  v73 = @"Output";
  v298 = sub_1CA94C438("Adjusted Date (Default Output Name)", 35);
  *&v295 = v74;
  v75 = sub_1CA94C438("Adjusted Date", 13);
  v294 = v76;
  v299 = &v282;
  MEMORY[0x1EEE9AC00](v75);
  sub_1CA948D98();
  v77 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v282 - v308;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 144) = sub_1CA2F9F14(v298, v295, v75, v294, 0, 0, &v282 - v65, v78);
  *(v72 + 168) = v71;
  *(v72 + 176) = 0x7365707954;
  *(v72 + 216) = v301;
  *(v72 + 184) = 0xE500000000000000;
  *(v72 + 192) = &unk_1F4A014A0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v304;
  v304[50] = v81;
  v82[53] = v300;
  v82[54] = @"Parameters";
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v300 = swift_allocObject();
  v288 = xmmword_1CA981470;
  *(v300 + 16) = xmmword_1CA981470;
  v299 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  *(v83 + 16) = v297;
  v84 = v296;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = v84;
  *(v83 + 48) = 0x80000001CA9AB710;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  *(v83 + 80) = 0x657461444657;
  *(v83 + 88) = 0xE600000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v85;
  v89 = v86;
  v90 = v87;
  v292 = v88;
  v293 = v89;
  v294 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438("Date (WFDate)", 13);
  v94 = v93;
  v95 = sub_1CA94C438("Date", 4);
  v97 = v96;
  *&v297 = &v282;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v282 - v309;
  sub_1CA948D98();
  v99 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v282 - v308;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  *(v83 + 144) = v303;
  *(v83 + 152) = @"TextAlignment";
  v102 = MEMORY[0x1E69E6158];
  *(v83 + 184) = MEMORY[0x1E69E6158];
  *(v83 + 160) = 0x7468676952;
  *(v83 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  *&v297 = v103;
  v296 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = @"TextAlignment";
  v105 = sub_1CA94C1E8();
  v106 = sub_1CA2F864C(v105);
  *(v300 + 32) = v106;
  v107 = swift_allocObject();
  v287 = v107;
  *(v107 + 16) = xmmword_1CA981380;
  *(v107 + 32) = v292;
  *(v107 + 40) = 0xD000000000000016;
  *(v107 + 48) = 0x80000001CA99C4A0;
  *(v107 + 64) = v102;
  *(v107 + 72) = @"DefaultValue";
  *(v107 + 80) = 6579265;
  *(v107 + 88) = 0xE300000000000000;
  *(v107 + 104) = v102;
  *(v107 + 112) = @"DisallowedVariableTypes";
  *(v107 + 120) = &unk_1F4A014D0;
  *(v107 + 144) = v301;
  *(v107 + 152) = @"Items";
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA985370;
  v109 = @"DefaultValue";
  v110 = @"DisallowedVariableTypes";
  v111 = @"Items";
  v112 = sub_1CA94C438("Add (WFAdjustOperation)", 23);
  v284 = v113;
  v285 = v112;
  v114 = sub_1CA94C438("Add", 3);
  v283 = v115;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v309;
  sub_1CA948D98();
  v117 = v306;
  v118 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v282 - v308;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 32) = sub_1CA2F9F14(v285, v284, v114, v283, 0, 0, &v282 - v116, v119);
  v121 = sub_1CA94C438("Subtract (WFAdjustOperation)", 28);
  v284 = v122;
  v285 = v121;
  v123 = sub_1CA94C438("Subtract", 8);
  v283 = v124;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948D98();
  v125 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = v308;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v285, v284, v123, v283, 0, 0, &v282 - v116, &v282 - v126);
  v291 = v108;
  *(v108 + 40) = v128;
  v129 = sub_1CA94C438("Get Start of Minute (WFAdjustOperation)", 39);
  v284 = v130;
  v285 = v129;
  v131 = sub_1CA94C438("Get Start of Minute", 19);
  v283 = v132;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v309;
  sub_1CA948D98();
  v134 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 48) = sub_1CA2F9F14(v285, v284, v131, v283, 0, 0, &v282 - v133, &v282 - v126);
  v136 = sub_1CA94C438("Get Start of Hour (WFAdjustOperation)", 37);
  v284 = v137;
  v285 = v136;
  v138 = sub_1CA94C438("Get Start of Hour", 17);
  v283 = v139;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948D98();
  v140 = v306;
  v141 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v282 - v308;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v285, v284, v138, v283, 0, 0, &v282 - v133, v142);
  v145 = v291;
  v291[7] = v144;
  v146 = sub_1CA94C438("Get Start of Day (WFAdjustOperation)", 36);
  v284 = v147;
  v285 = v146;
  v148 = sub_1CA94C438("Get Start of Day", 16);
  v283 = v149;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v309;
  sub_1CA948D98();
  v151 = [v140 bundleURL];
  v282 = &v282;
  MEMORY[0x1EEE9AC00](v151);
  v152 = v308;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145[8] = sub_1CA2F9F14(v285, v284, v148, v283, 0, 0, &v282 - v150, &v282 - v152);
  v154 = sub_1CA94C438("Get Start of Week (WFAdjustOperation)", 37);
  v284 = v155;
  v285 = v154;
  v156 = sub_1CA94C438("Get Start of Week", 17);
  v283 = v157;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v282 - v150;
  sub_1CA948D98();
  v159 = v140;
  v160 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v285, v284, v156, v283, 0, 0, v158, &v282 - v152);
  v163 = v291;
  v291[9] = v162;
  v164 = sub_1CA94C438("Get Start of Month (WFAdjustOperation)", 38);
  v284 = v165;
  v285 = v164;
  v166 = sub_1CA94C438("Get Start of Month", 18);
  v283 = v167;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v166);
  v168 = v309;
  sub_1CA948D98();
  v169 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = v308;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163[10] = sub_1CA2F9F14(v285, v284, v166, v283, 0, 0, &v282 - v168, &v282 - v170);
  v172 = sub_1CA94C438("Get Start of Year (WFAdjustOperation)", 37);
  v284 = v173;
  v285 = v172;
  v174 = sub_1CA94C438("Get Start of Year", 17);
  v283 = v175;
  v286 = &v282;
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948D98();
  v176 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v285, v284, v174, v283, 0, 0, &v282 - v168, &v282 - v170);
  v179 = v163;
  v163[11] = v178;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v181 = v287;
  v287[20] = v179;
  v182 = v293;
  v181[23] = v180;
  v181[24] = v182;
  v286 = 0x80000001CA9C21E0;
  v181[25] = 0xD000000000000011;
  v181[26] = 0x80000001CA9C21E0;
  v183 = v294;
  v181[28] = MEMORY[0x1E69E6158];
  v181[29] = v183;
  v184 = sub_1CA94C438("Operation (WFAdjustOperation)", 29);
  v285 = v185;
  v186 = sub_1CA94C438("Operation", 9);
  v188 = v187;
  v291 = &v282;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v282 - v309;
  sub_1CA948D98();
  v190 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v282 - v308;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v193 = sub_1CA2F9F14(v184, v285, v186, v188, 0, 0, v189, v191);
  v181[33] = v303;
  v181[30] = v193;
  v194 = sub_1CA94C1E8();
  v195 = sub_1CA2F864C(v194);
  *(v300 + 40) = v195;
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_1CA981400;
  *(v196 + 32) = v292;
  *(v196 + 40) = 0xD000000000000020;
  *(v196 + 48) = 0x80000001CA9A44A0;
  v197 = MEMORY[0x1E69E6158];
  *(v196 + 64) = MEMORY[0x1E69E6158];
  *(v196 + 72) = @"DefaultUnit";
  *(v196 + 80) = 6514035;
  *(v196 + 88) = 0xE300000000000000;
  v198 = v293;
  *(v196 + 104) = v197;
  *(v196 + 112) = v198;
  *(v196 + 120) = 0x6974617275444657;
  *(v196 + 128) = 0xEA00000000006E6FLL;
  v199 = v294;
  *(v196 + 144) = v197;
  *(v196 + 152) = v199;
  v200 = @"DefaultUnit";
  v201 = sub_1CA94C438("Duration (WFDuration)", 21);
  v293 = v202;
  v294 = v201;
  v203 = sub_1CA94C438("Duration", 8);
  v292 = v204;
  *&v295 = &v282;
  MEMORY[0x1EEE9AC00](v203);
  v205 = v309;
  sub_1CA948D98();
  v206 = v306;
  v207 = [v306 bundleURL];
  v291 = &v282;
  MEMORY[0x1EEE9AC00](v207);
  v208 = v308;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v196 + 160) = sub_1CA2F9F14(v294, v293, v203, v292, 0, 0, &v282 - v205, &v282 - v208);
  *(v196 + 184) = v303;
  *(v196 + 192) = @"Placeholder";
  v210 = @"Placeholder";
  v211 = sub_1CA94C438("0 (WFDuration)", 14);
  v293 = v212;
  v294 = v211;
  v213 = sub_1CA94C438("0", 1);
  v292 = v214;
  *&v295 = &v282;
  MEMORY[0x1EEE9AC00](v213);
  sub_1CA948D98();
  v215 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v215);
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v196 + 200) = sub_1CA2F9F14(v294, v293, v213, v292, 0, 0, &v282 - v205, &v282 - v208);
  *(v196 + 224) = v303;
  *(v196 + 232) = @"PossibleUnits";
  *(v196 + 240) = &unk_1F4A01510;
  v217 = v301;
  *(v196 + 264) = v301;
  *(v196 + 272) = @"RequiredResources";
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v218 = swift_allocObject();
  v303 = xmmword_1CA981310;
  *(v218 + 16) = xmmword_1CA981310;
  v219 = swift_allocObject();
  v295 = xmmword_1CA9813C0;
  *(v219 + 16) = xmmword_1CA9813C0;
  strcpy((v219 + 32), "WFParameterKey");
  *(v219 + 47) = -18;
  v220 = v286;
  *(v219 + 48) = 0xD000000000000011;
  *(v219 + 56) = v220;
  v221 = MEMORY[0x1E69E6158];
  *(v219 + 72) = MEMORY[0x1E69E6158];
  *(v219 + 80) = 0xD000000000000011;
  *(v219 + 88) = 0x80000001CA9A2F30;
  *(v219 + 96) = &unk_1F4A015A0;
  *(v219 + 120) = v217;
  *(v219 + 128) = 0x72756F7365524657;
  *(v219 + 168) = v221;
  v293 = 0xD00000000000001BLL;
  v294 = 0x80000001CA993590;
  *(v219 + 136) = 0xEF7373616C436563;
  *(v219 + 144) = 0xD00000000000001BLL;
  *(v219 + 152) = 0x80000001CA993590;
  v222 = @"PossibleUnits";
  v223 = @"RequiredResources";
  *(v218 + 32) = sub_1CA94C1E8();
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v196 + 304) = v292;
  *(v196 + 280) = v218;
  v224 = sub_1CA94C1E8();
  v225 = sub_1CA2F864C(v224);
  v226 = v300;
  *(v300 + 48) = v225;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v228 = v304;
  v304[55] = v226;
  v228[58] = v227;
  v228[59] = @"ParameterSummary";
  v300 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v301 = swift_allocObject();
  *(v301 + 1) = v288;
  v299 = "ustOperation)";
  v229 = @"ParameterSummary";
  v230 = sub_1CA94C438("${WFAdjustOperation} from ${WFDate}", 35);
  v296 = v231;
  *&v297 = v230;
  v232 = sub_1CA94C438("${WFAdjustOperation} from ${WFDate}", 35);
  v234 = v233;
  v298 = &v282;
  MEMORY[0x1EEE9AC00](v232);
  v235 = &v282 - v309;
  sub_1CA948D98();
  v236 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  v237 = v308;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v239 = sub_1CA2F9F14(v297, v296, v232, v234, 0, 0, v235, &v282 - v237);
  v240 = objc_allocWithZone(WFActionParameterSummaryValue);
  v241 = sub_1CA65DD78(0xD000000000000018, v299 | 0x8000000000000000, v239);
  v301[4] = v241;
  v299 = "ion} from ${WFDate}";
  v242 = sub_1CA94C438("${WFAdjustOperation} ${WFDuration} to ${WFDate}", 47);
  v296 = v243;
  *&v297 = v242;
  v244 = sub_1CA94C438("${WFAdjustOperation} ${WFDuration} to ${WFDate}", 47);
  v246 = v245;
  v298 = &v282;
  MEMORY[0x1EEE9AC00](v244);
  v247 = &v282 - v309;
  sub_1CA948D98();
  v248 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v248);
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v250 = sub_1CA2F9F14(v297, v296, v244, v246, 0, 0, v247, &v282 - v237);
  v251 = objc_allocWithZone(WFActionParameterSummaryValue);
  v252 = sub_1CA65DD78(0xD000000000000023, v299 | 0x8000000000000000, v250);
  v253 = v301;
  v301[5] = v252;
  v299 = "ion} ${WFDuration} to ${WFDate}";
  v254 = sub_1CA94C438("${WFAdjustOperation} ${WFDuration} from ${WFDate}", 49);
  v256 = v255;
  v257 = sub_1CA94C438("${WFAdjustOperation} ${WFDuration} from ${WFDate}", 49);
  v259 = v258;
  v298 = &v282;
  MEMORY[0x1EEE9AC00](v257);
  v260 = &v282 - v309;
  sub_1CA948D98();
  v261 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  v262 = &v282 - v308;
  sub_1CA948B68();

  v263 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v264 = sub_1CA2F9F14(v254, v256, v257, v259, 0, 0, v260, v262);
  v265 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v253 + 48) = sub_1CA65DD78(0xD00000000000002DLL, v299 | 0x8000000000000000, v264);
  v266 = v300;
  v267 = sub_1CA65AF90(v253);
  v268 = v304;
  v304[60] = v267;
  v268[63] = v266;
  v268[64] = @"RequiredResources";
  v269 = swift_allocObject();
  *(v269 + 16) = v303;
  v270 = swift_allocObject();
  *(v270 + 16) = v289;
  *(v270 + 32) = 0xD000000000000011;
  *(v270 + 40) = 0x80000001CA99B240;
  v271 = swift_allocObject();
  *(v271 + 16) = v303;
  v272 = swift_allocObject();
  *(v272 + 16) = v295;
  strcpy((v272 + 32), "WFParameterKey");
  *(v272 + 47) = -18;
  *(v272 + 48) = 0xD000000000000013;
  *(v272 + 56) = 0x80000001CA9C2350;
  v273 = MEMORY[0x1E69E6158];
  *(v272 + 72) = MEMORY[0x1E69E6158];
  *(v272 + 80) = 0xD000000000000010;
  *(v272 + 88) = 0x80000001CA993570;
  *(v272 + 96) = 1;
  v274 = MEMORY[0x1E69E6370];
  *(v272 + 120) = MEMORY[0x1E69E6370];
  *(v272 + 128) = 0x72756F7365524657;
  *(v272 + 168) = v273;
  v276 = v293;
  v275 = v294;
  *(v272 + 136) = 0xEF7373616C436563;
  *(v272 + 144) = v276;
  *(v272 + 152) = v275;
  v277 = @"RequiredResources";
  *(v271 + 32) = sub_1CA94C1E8();
  *(v270 + 48) = v271;
  v278 = v292;
  *(v270 + 72) = v292;
  *(v270 + 80) = 0x72756F7365524657;
  *(v270 + 120) = v273;
  *(v270 + 88) = 0xEF7373616C436563;
  *(v270 + 96) = 0xD000000000000019;
  *(v270 + 104) = 0x80000001CA9932D0;
  *(v269 + 32) = sub_1CA94C1E8();
  v279 = v304;
  v304[68] = v278;
  v279[65] = v269;
  v279[69] = @"ResidentCompatible";
  v279[73] = v274;
  *(v279 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v280 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CEC00()
{
  v151 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9C2380;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("directory", 9);
  v6 = v5;
  v7 = sub_1CA94C438("directory", 9);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v159 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = v11;
  v12 = &v144 - v159;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v157 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v155 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v156 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v144 - v156;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v158 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v154 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Makes a new folder.", 19);
  v152 = v27;
  v28 = sub_1CA94C438("Makes a new folder.", 19);
  v30 = v29;
  v153 = &v144;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v144 - v159;
  sub_1CA948D98();
  v32 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v144 - v156;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v152, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v158;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v154;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000016;
  *(inited + 248) = 0x80000001CA9C23C0;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Name";
  v43 = sub_1CA94C438("Create Folder (Action Name)", 27);
  v45 = v44;
  v46 = sub_1CA94C438("Create Folder", 13);
  v48 = v47;
  v154 = &v144;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v144 - v159;
  sub_1CA948D98();
  v50 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v144 - v156;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 344) = v158;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 96) = 0;
  *(v53 + 120) = v54;
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Created Folder (Default Output Name)", 36);
  v153 = v57;
  v58 = sub_1CA94C438("Created Folder", 14);
  v60 = v59;
  v154 = &v144;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v144 - v159;
  sub_1CA948D98();
  v62 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v144 - v156;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v56, v153, v58, v60, 0, 0, v61, v63);
  *(v53 + 168) = v158;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v154;
  *(v53 + 192) = &unk_1F4A01620;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v153 = swift_allocObject();
  *(v153 + 1) = xmmword_1CA981360;
  v152 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981300;
  *(v68 + 32) = @"AutocapitalizationType";
  *(v68 + 40) = 1701736270;
  *(v68 + 48) = 0xE400000000000000;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD000000000000014;
  *(v68 + 88) = 0x80000001CA99B500;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Description";
  v149 = @"Class";
  v69 = @"Parameters";
  v70 = @"AutocapitalizationType";
  v71 = @"Description";
  v72 = sub_1CA94C438("The path of the new folder. For example, if you want to create “Adventure” in an existing folder titled “Photos”, put “/Photos/Adventure/” (WFFilePath)", 163);
  v147 = v73;
  v74 = sub_1CA94C438("The path of the new folder. For example, if you want to create “Adventure” in an existing folder titled “Photos”, put “/Photos/Adventure/”", 150);
  v76 = v75;
  v148 = &v144;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v144 - v159;
  sub_1CA948D98();
  v78 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v144 - v156;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 120) = sub_1CA2F9F14(v72, v147, v74, v76, 0, 0, v77, v79);
  *(v68 + 144) = v158;
  *(v68 + 152) = @"DisableAutocorrection";
  *(v68 + 160) = 1;
  *(v68 + 184) = MEMORY[0x1E69E6370];
  *(v68 + 192) = @"Key";
  *(v68 + 200) = 0x6150656C69464657;
  *(v68 + 208) = 0xEA00000000006874;
  v81 = MEMORY[0x1E69E6158];
  *(v68 + 224) = MEMORY[0x1E69E6158];
  *(v68 + 232) = @"KeyboardType";
  *(v68 + 240) = 0x6372616553626557;
  *(v68 + 248) = 0xE900000000000068;
  *(v68 + 264) = v81;
  *(v68 + 272) = @"Label";
  v82 = @"Key";
  v83 = @"Label";
  v145 = v82;
  v146 = v83;
  v84 = @"DisableAutocorrection";
  v85 = @"KeyboardType";
  v86 = sub_1CA94C438("Path (WFFilePath)", 17);
  v147 = v87;
  v88 = sub_1CA94C438("Path", 4);
  v90 = v89;
  v148 = &v144;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v144 - v159;
  sub_1CA948D98();
  v92 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v144 - v156;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 280) = sub_1CA2F9F14(v86, v147, v88, v90, 0, 0, v91, v93);
  *(v68 + 304) = v158;
  *(v68 + 312) = @"TextAlignment";
  v95 = MEMORY[0x1E69E6158];
  *(v68 + 344) = MEMORY[0x1E69E6158];
  *(v68 + 320) = 1952867660;
  *(v68 + 328) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v148 = v96;
  v147 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v97 = @"TextAlignment";
  v98 = sub_1CA94C1E8();
  v99 = sub_1CA2F864C(v98);
  v153[4] = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1CA981400;
  *(v100 + 32) = v149;
  *(v100 + 40) = 0xD000000000000015;
  *(v100 + 48) = 0x80000001CA99B1E0;
  *(v100 + 64) = v95;
  *(v100 + 72) = @"DefaultsToShortcutsFolder";
  *(v100 + 80) = 1;
  v101 = MEMORY[0x1E69E6370];
  *(v100 + 104) = MEMORY[0x1E69E6370];
  *(v100 + 112) = @"Optional";
  *(v100 + 120) = 0;
  *(v100 + 144) = v101;
  *(v100 + 152) = @"FilePickerSupportedTypes";
  *(v100 + 160) = &unk_1F4A01650;
  v102 = v145;
  *(v100 + 184) = v154;
  *(v100 + 192) = v102;
  *(v100 + 200) = 0x7265646C6F464657;
  *(v100 + 208) = 0xE800000000000000;
  v103 = v146;
  *(v100 + 224) = v95;
  *(v100 + 232) = v103;
  v104 = @"DefaultsToShortcutsFolder";
  v105 = @"Optional";
  v106 = @"FilePickerSupportedTypes";
  v149 = sub_1CA94C438("Folder (WFFolder)", 17);
  v146 = v107;
  v145 = sub_1CA94C438("Folder", 6);
  v109 = v108;
  v150 = &v144;
  MEMORY[0x1EEE9AC00](v145);
  v110 = &v144 - v159;
  sub_1CA948D98();
  v111 = v157;
  v112 = [v157 bundleURL];
  v144 = &v144;
  MEMORY[0x1EEE9AC00](v112);
  v113 = v156;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 240) = sub_1CA2F9F14(v149, v146, v145, v109, 0, 0, v110, &v144 - v113);
  *(v100 + 264) = v158;
  *(v100 + 272) = @"Placeholder";
  v115 = @"Placeholder";
  v149 = sub_1CA94C438("Folder (WFFolder)", 17);
  v146 = v116;
  v117 = sub_1CA94C438("Folder", 6);
  v145 = v118;
  v150 = &v144;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v144 - v159;
  sub_1CA948D98();
  v120 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v149, v146, v117, v145, 0, 0, v119, &v144 - v113);
  *(v100 + 304) = v158;
  *(v100 + 280) = v122;
  v123 = sub_1CA94C1E8();
  v124 = sub_1CA2F864C(v123);
  v125 = v153;
  v153[5] = v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v125;
  *(inited + 424) = v126;
  *(inited + 432) = @"ParameterSummary";
  v127 = @"ParameterSummary";
  v128 = sub_1CA94C438("Create folder in ${WFFolder} at ${WFFilePath} (Parameter Summary)", 65);
  v130 = v129;
  v131 = sub_1CA94C438("Create folder in ${WFFolder} at ${WFFilePath}", 45);
  v133 = v132;
  v158 = &v144;
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v144 - v159;
  sub_1CA948D98();
  v135 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v144 - v156;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v128, v130, v131, v133, 0, 0, v134, v136);
  v139 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v140 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v139;
  *(inited + 464) = v140;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F4A01680;
  *(inited + 504) = v154;
  *(inited + 512) = @"SuggestedAsInitialAction";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v141 = @"RemoteExecuteOnPlatforms";
  v142 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4CFE9C()
{
  v117 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9C2650;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("url|share", 9);
  v6 = v5;
  v7 = sub_1CA94C438("url|share", 9);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = v11;
  v125 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v111 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v123 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v122 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v111 - v122;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v119 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets a public iCloud link to the file passed into the action. The specified file must already be uploaded to iCloud.", 116);
  v116 = v24;
  v25 = sub_1CA94C438("Gets a public iCloud link to the file passed into the action. The specified file must already be uploaded to iCloud.", 116);
  v27 = v26;
  *&v118 = v111;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v111 - v125;
  sub_1CA948D98();
  v29 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v111 - v122;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v116, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v120;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v119;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x80000001CA9C26F0;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v118 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x656C69464657;
  *(v37 + 104) = 0xE600000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v119;
  *(v37 + 192) = &unk_1F4A016B0;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v116 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Get Link to File (Action Name)", 30);
  v112 = v47;
  v113 = v46;
  v48 = sub_1CA94C438("Get Link to File", 16);
  v50 = v49;
  v114 = v111;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v111 - v125;
  sub_1CA948D98();
  v52 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v122;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v113, v112, v48, v50, 0, 0, v51, v111 - v53);
  v55 = v120;
  *(inited + 344) = v120;
  *(inited + 352) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = v118;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("Link to File (Default Output Name)", 34);
  v113 = v59;
  v114 = v58;
  v112 = sub_1CA94C438("Link to File", 12);
  v61 = v60;
  v115 = v111;
  MEMORY[0x1EEE9AC00](v112);
  v62 = v111 - v125;
  sub_1CA948D98();
  v63 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v114, v113, v112, v61, 0, 0, v62, v111 - v53);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 216) = v119;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F4A016E0;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v116;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1CA9813B0;
  v115 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v118;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x656C69464657;
  *(v66 + 88) = 0xE600000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438("File (WFFile)", 13);
  v113 = v72;
  v114 = v71;
  v73 = sub_1CA94C438("File", 4);
  v112 = v74;
  *&v118 = v111;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v111 - v125;
  sub_1CA948D98();
  v76 = v124;
  v77 = [v124 bundleURL];
  v111[1] = v111;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v111 - v122;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v114, v113, v73, v112, 0, 0, v75, v78);
  v80 = v120;
  *(v66 + 144) = v120;
  *(v66 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438("File (WFFile)", 13);
  v113 = v83;
  v114 = v82;
  v84 = sub_1CA94C438("File", 4);
  v112 = v85;
  *&v118 = v111;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v111 - v125;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v111 - v122;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v114, v113, v84, v112, 0, 0, v86, v88);
  *(v66 + 184) = v80;
  *(v66 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v116;
  *(v116 + 32) = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v93;
  *(inited + 424) = v94;
  *(inited + 432) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("Get link to ${WFFile} (Parameter Summary)", 41);
  v98 = v97;
  v99 = sub_1CA94C438("Get link to ${WFFile}", 21);
  v101 = v100;
  v120 = v111;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v111 - v125;
  sub_1CA948D98();
  v103 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v111 - v122;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v107;
  *(inited + 464) = v108;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 504) = v119;
  *(inited + 480) = &unk_1F4A01710;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v109 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D0DC8()
{
  v87 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9C27F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("carplay|parking|find", 20);
  v6 = v5;
  v7 = sub_1CA94C438("carplay|parking|find", 20);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v11;
  v12 = &v81 - v92;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v91 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v81 - v88;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v90 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v86 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("The location of the car and its associated details. If no location is known, this action returns nothing.", 105);
  v83 = v27;
  v84 = v26;
  v28 = sub_1CA94C438("The location of the car and its associated details. If no location is known, this action returns nothing.", 105);
  v82 = v29;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v81 - v92;
  sub_1CA948D98();
  v31 = v89;
  v32 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v88;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v84, v83, v28, v82, 0, 0, v30, &v81 - v33);
  *(v23 + 64) = v90;
  *(v23 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438("Fetches the details of your Parked Car, as stored in the Maps app.", 66);
  v83 = v37;
  v84 = v36;
  v38 = sub_1CA94C438("Fetches the details of your Parked Car, as stored in the Maps app.", 66);
  v40 = v39;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v81 - v92;
  sub_1CA948D98();
  v42 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v84, v83, v38, v40, 0, 0, v41, &v81 - v33);
  *(v23 + 104) = v90;
  *(v23 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v86;
  *(inited + 160) = sub_1CA6B3784(v45);
  *(inited + 184) = v46;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v47 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C6C69662E726163;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v47;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 0x6E65657247;
  *(inited + 288) = 0xE500000000000000;
  *(inited + 304) = v47;
  *(inited + 312) = @"Name";
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"IconSymbolColor";
  v51 = @"Name";
  v52 = sub_1CA94C438("Get Parked Car Location (Action Name)", 37);
  v54 = v53;
  v55 = sub_1CA94C438("Get Parked Car Location", 23);
  v57 = v56;
  v86 = &v81;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v81 - v92;
  sub_1CA948D98();
  v59 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v81 - v88;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v52, v54, v55, v57, 0, 0, v58, v60);
  *(inited + 344) = v90;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1CA9813C0;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 48) = 0;
  *(v62 + 72) = v63;
  *(v62 + 80) = 0x614E74757074754FLL;
  *(v62 + 88) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Car Location (Default Output Name)", 34);
  v85 = v66;
  v67 = sub_1CA94C438("Car Location", 12);
  v69 = v68;
  v86 = &v81;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v81 - v92;
  sub_1CA948D98();
  v71 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v81 - v88;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 96) = sub_1CA2F9F14(v65, v85, v67, v69, 0, 0, v70, v72);
  *(v62 + 120) = v90;
  *(v62 + 128) = 0x7365707954;
  *(v62 + 136) = 0xE500000000000000;
  *(v62 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 144) = &unk_1F4A01780;
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v74;
  *(inited + 384) = v75;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1CA9813B0;
  v94 = 0;
  v95 = 0;
  v77 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v78 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v94);
  *(v76 + 32) = v79;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v76;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D184C()
{
  v133 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9C2980;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("homekit|accessories|accessory|automation|smart|house|my|home|control", 68);
  v6 = v5;
  v7 = sub_1CA94C438("homekit|accessories|accessory|automation|smart|house|my|home|control", 68);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v141 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v11;
  v12 = v122 - v141;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v140 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v138 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v122 - v139;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v137 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v136 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Set the state of your home.", 27);
  v134 = v27;
  v28 = sub_1CA94C438("Set the state of your home.", 27);
  v30 = v29;
  v135 = v122;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v122 - v141;
  sub_1CA948D98();
  v32 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v122 - v139;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v134, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v137;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v136;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Control Home", 12);
  v43 = v42;
  v44 = sub_1CA94C438("Control Home", 12);
  v46 = v45;
  v136 = v122;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v122 - v141;
  sub_1CA948D98();
  v48 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v122 - v139;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v137;
  *(inited + 272) = @"Parameters";
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v135 = swift_allocObject();
  v131 = xmmword_1CA981360;
  *(v135 + 1) = xmmword_1CA981360;
  v134 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v129 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD000000000000015;
  *(v51 + 48) = 0x80000001CA99D5E0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"Key";
  *(v51 + 80) = 0x656D6F484657;
  *(v51 + 88) = 0xE600000000000000;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"DisallowedVariableTypes";
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v136 = v53;
  *(v51 + 120) = &unk_1F4A017F0;
  *(v51 + 144) = v53;
  *(v51 + 152) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"DisallowedVariableTypes";
  v57 = @"Label";
  v125 = v54;
  v127 = v55;
  v124 = v56;
  v126 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C438("Home (WFHome)", 13);
  v123 = v60;
  v61 = sub_1CA94C438("Home", 4);
  v63 = v62;
  v128 = v122;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v122 - v141;
  sub_1CA948D98();
  v65 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v122 - v139;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v59, v123, v61, v63, 0, 0, v64, v66);
  *(v51 + 184) = v137;
  *(v51 + 160) = v68;
  _s3__C3KeyVMa_0(0);
  v123 = v69;
  v122[1] = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v70 = sub_1CA94C1E8();
  v71 = sub_1CA2F864C(v70);
  v135[4] = v71;
  v72 = swift_initStackObject();
  *(v72 + 16) = v129;
  v128 = 0xD00000000000001ELL;
  *(v72 + 32) = v125;
  *(v72 + 40) = 0xD00000000000001ELL;
  *(v72 + 48) = 0x80000001CA9C2A20;
  v73 = MEMORY[0x1E69E6158];
  v74 = v124;
  *(v72 + 64) = MEMORY[0x1E69E6158];
  *(v72 + 72) = v74;
  *(v72 + 80) = &unk_1F4A01830;
  v75 = v127;
  *(v72 + 104) = v136;
  *(v72 + 112) = v75;
  v130 = 0x80000001CA9C2A40;
  *&v129 = 0xD000000000000017;
  *(v72 + 120) = 0xD000000000000017;
  *(v72 + 128) = 0x80000001CA9C2A40;
  v76 = v126;
  *(v72 + 144) = v73;
  *(v72 + 152) = v76;
  v77 = sub_1CA94C438("Scenes and Accessories (WFHomeTriggerActionSets)", 48);
  v126 = v78;
  v79 = sub_1CA94C438("Scenes and Accessories", 22);
  v81 = v80;
  v127 = v122;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v122 - v141;
  sub_1CA948D98();
  v83 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v122 - v139;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v77, v126, v79, v81, 0, 0, v82, v84);
  *(v72 + 184) = v137;
  *(v72 + 160) = v86;
  v87 = sub_1CA94C1E8();
  v88 = sub_1CA2F864C(v87);
  v89 = v135;
  v135[5] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v89;
  *(inited + 304) = v90;
  *(inited + 312) = @"ParameterSummary";
  v137 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v91 = swift_allocObject();
  *(v91 + 16) = v131;
  v134 = "Scenes and Accessories";
  v135 = v91;
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438("Set ${WFHomeTriggerActionSets} in ${WFHome}", 43);
  v95 = v94;
  v96 = sub_1CA94C438("Set ${WFHomeTriggerActionSets} in ${WFHome}", 43);
  v98 = v97;
  v132 = v122;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v122 - v141;
  sub_1CA948D98();
  v100 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v122 - v139;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = objc_allocWithZone(WFActionParameterSummaryValue);
  v105 = sub_1CA65DD78(v128, v134 | 0x8000000000000000, v103);
  v106 = v135;
  v135[4] = v105;
  v107 = sub_1CA94C438("Set ${WFHomeTriggerActionSets}", 30);
  v132 = v108;
  v109 = sub_1CA94C438("Set ${WFHomeTriggerActionSets}", 30);
  v111 = v110;
  v134 = v122;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v122 - v141;
  sub_1CA948D98();
  v113 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v122 - v139;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v107, v132, v109, v111, 0, 0, v112, v114);
  v117 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v106 + 40) = sub_1CA65DD78(v129, v130, v116);
  v118 = v137;
  *(inited + 320) = sub_1CA65AF90(v106);
  *(inited + 344) = v118;
  *(inited + 352) = @"RequiredResources";
  *(inited + 360) = &unk_1F4A01860;
  *(inited + 384) = v136;
  *(inited + 392) = @"ResidentCompatible";
  *(inited + 424) = MEMORY[0x1E69E6370];
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v119 = @"RequiredResources";
  v120 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void WFDeviceIdiomResource.requirement.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement);
  *(a1 + 8) = v2;
}

void WFDeviceIdiomResource.init(requirement:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement];
  *v3 = *a1;
  v3[8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443DB8, &unk_1CA983950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v16 = sub_1CA94C3A8();
  v17 = v5;
  v6 = MEMORY[0x1E69E6158];
  sub_1CA94D3A8();
  v7 = type metadata accessor for WFDeviceIdiomResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  v10 = sub_1CA94C3A8();
  v12 = v11;

  *(inited + 96) = v6;
  *(inited + 72) = v10;
  *(inited + 80) = v12;
  sub_1CA94C1E8();
  v13 = sub_1CA94C1A8();

  v15.receiver = v1;
  v15.super_class = v7;
  v14 = objc_msgSendSuper2(&v15, sel_initWithDefinition_, v13);

  if (!v14)
  {
    __break(1u);
  }
}

void sub_1CA4D28F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement];
  v2 = v0[OBJC_IVAR____TtC11WorkflowKit21WFDeviceIdiomResource_requirement + 8];
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 idiom];

  if (v2)
  {
    if (v4 == v1)
    {
      v5 = [objc_opt_self() wf:@"NotAvailableOnSpecifiedPlatform" unsupportedActionErrorWithType:v1 platformIdiom:?];
LABEL_9:
      v6 = v5;
      v7 = sub_1CA948AC8();

      [v0 updateAvailability:0 withError:v7];

      return;
    }
  }

  else if (v4 != v1)
  {
    v5 = [objc_opt_self() wf:@"OnlyAvailableOnSpecifiedPlatform" unsupportedActionErrorWithType:v1 platformIdiom:?];
    goto LABEL_9;
  }

  [v0 updateAvailability:1 withError:0];
}

id WFDeviceIdiomResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFDeviceIdiomResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFDeviceIdiomResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDeviceIdiomResource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WFDeviceIdiomResource.Requirement(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WFDeviceIdiomResource.Requirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1CA4D2DA4()
{
  v263 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B16F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v280 = sub_1CA94C438("venmo|money|send|pay|request|cash|currency|dollars", 50);
  v5 = v4;
  v6 = sub_1CA94C438("venmo|money|send|pay|request|cash|currency|dollars", 50);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v282 = v10;
  *&v285 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v257 - v285;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v281 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v284 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v283 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v257 - v283;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v280, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v280 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v279 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v272 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Requests a payment from the specified people using a payment app on your device.", 80);
  v277 = v24;
  v25 = sub_1CA94C438("Requests a payment from the specified people using a payment app on your device.", 80);
  v27 = v26;
  v278 = &v257;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v257 - v285;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  v30 = inited;
  v31 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v257 - v283;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v277, v25, v27, 0, 0, v28, v32);
  *(v20 + 64) = v280;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v279;
  *(v30 + 120) = sub_1CA6B3784(v35);
  *(v30 + 144) = v36;
  *(v30 + 152) = @"InputPassthrough";
  *(v30 + 184) = MEMORY[0x1E69E6370];
  *(v30 + 160) = 1;
  v37 = @"InputPassthrough";
  v271 = 0xD000000000000010;
  v38 = sub_1CA94C368();
  v274 = v30;
  *(v30 + 192) = v38;
  *(v30 + 200) = 0xD00000000000002CLL;
  *(v30 + 208) = 0x80000001CA9C2C30;
  *(v30 + 224) = MEMORY[0x1E69E6158];
  *(v30 + 232) = @"Name";
  v39 = @"Name";
  v40 = sub_1CA94C438("Request Payment (Action Name)", 29);
  v42 = v41;
  v43 = sub_1CA94C438("Request Payment", 15);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v257 - v285;
  sub_1CA948D98();
  v47 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v257 - v283;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v40, v42, v43, v45, 0, 0, v46, v48);
  v51 = v274;
  v274[30] = v50;
  v51[33] = v280;
  v51[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v279 = swift_allocObject();
  *(v279 + 16) = xmmword_1CA981410;
  v278 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v52 = swift_initStackObject();
  v273 = xmmword_1CA981400;
  *(v52 + 16) = xmmword_1CA981400;
  *(v52 + 32) = @"Class";
  *(v52 + 40) = 0xD00000000000001ALL;
  *(v52 + 48) = 0x80000001CA99B690;
  v53 = MEMORY[0x1E69E6158];
  *(v52 + 64) = MEMORY[0x1E69E6158];
  *(v52 + 72) = @"DefaultValue";
  v54 = @"Class";
  v55 = @"DefaultValue";
  v56 = v54;
  v57 = v55;
  v267 = v56;
  v269 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C1E8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v52 + 80) = v59;
  *(v52 + 104) = v60;
  *(v52 + 112) = @"DisallowedVariableTypes";
  *(v52 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 120) = &unk_1F4A018D0;
  v61 = @"DisallowedVariableTypes";
  v62 = sub_1CA94C368();
  v270 = 0xD000000000000016;
  *(v52 + 152) = v62;
  *(v52 + 160) = 0xD000000000000016;
  *(v52 + 168) = 0x80000001CA9C2C90;
  *(v52 + 184) = v53;
  *(v52 + 192) = @"Key";
  v266 = 0xD000000000000013;
  *(v52 + 200) = 0xD000000000000013;
  *(v52 + 208) = 0x80000001CA99B6D0;
  *(v52 + 224) = v53;
  *(v52 + 232) = @"Label";
  v63 = @"Key";
  v64 = @"Label";
  v65 = v63;
  v66 = v64;
  v264 = v65;
  v265 = v66;
  v275 = sub_1CA94C438("App (IntentAppDefinition)", 25);
  v268 = v67;
  v68 = sub_1CA94C438("App", 3);
  v70 = v69;
  v276 = &v257;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v257 - v285;
  sub_1CA948D98();
  v72 = v281;
  v73 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v257 - v283;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 240) = sub_1CA2F9F14(v275, v268, v68, v70, 0, 0, v71, v74);
  v76 = v280;
  *(v52 + 264) = v280;
  *(v52 + 272) = @"Prompt";
  v268 = @"Prompt";
  v275 = sub_1CA94C438("Which app? (IntentAppDefinition)", 32);
  v262 = v77;
  *&v261 = sub_1CA94C438("Which app?", 10);
  v79 = v78;
  v276 = &v257;
  MEMORY[0x1EEE9AC00](v261);
  v80 = &v257 - v285;
  sub_1CA948D98();
  v81 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v257 - v283;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v275, v262, v261, v79, 0, 0, v80, v82);
  *(v52 + 304) = v76;
  *(v52 + 280) = v84;
  _s3__C3KeyVMa_0(0);
  v276 = v85;
  v275 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v86 = sub_1CA94C1E8();
  v87 = sub_1CA2F864C(v86);
  *(v279 + 32) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = v273;
  *(v88 + 32) = @"AllowsMultipleValues";
  *(v88 + 40) = 1;
  v89 = v267;
  *(v88 + 64) = MEMORY[0x1E69E6370];
  *(v88 + 72) = v89;
  *(v88 + 80) = 0xD00000000000001DLL;
  *(v88 + 88) = 0x80000001CA99EEC0;
  v90 = MEMORY[0x1E69E6158];
  *(v88 + 104) = MEMORY[0x1E69E6158];
  *(v88 + 112) = @"IntentSlotName";
  *(v88 + 120) = 0x7265796170;
  *(v88 + 128) = 0xE500000000000000;
  v91 = v264;
  v92 = v265;
  *(v88 + 144) = v90;
  *(v88 + 152) = v91;
  *(v88 + 160) = 0xD000000000000017;
  *(v88 + 168) = 0x80000001CA9B1820;
  *(v88 + 184) = v90;
  *(v88 + 192) = v92;
  v93 = @"IntentSlotName";
  *&v261 = v89;
  v264 = v91;
  v265 = v92;
  v267 = v93;
  v94 = @"AllowsMultipleValues";
  v95 = sub_1CA94C438("Recipients (WFVenmoActionRecipients)", 36);
  v259 = v96;
  v260 = v95;
  v97 = sub_1CA94C438("Recipients", 10);
  v258 = v98;
  v262 = &v257;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v285;
  sub_1CA948D98();
  v100 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v283;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 200) = sub_1CA2F9F14(v260, v259, v97, v258, 0, 0, &v257 - v99, &v257 - v101);
  *(v88 + 224) = v280;
  *(v88 + 232) = @"Placeholder";
  v262 = @"Placeholder";
  v103 = sub_1CA94C438("Contact (WFVenmoActionRecipients)", 33);
  v258 = v104;
  v259 = v103;
  v105 = sub_1CA94C438("Contact", 7);
  v257 = v106;
  v260 = &v257;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948D98();
  v107 = v281;
  v108 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 240) = sub_1CA2F9F14(v259, v258, v105, v257, 0, 0, &v257 - v99, &v257 - v101);
  v110 = v280;
  v111 = v268;
  *(v88 + 264) = v280;
  *(v88 + 272) = v111;
  v268 = v111;
  v112 = sub_1CA94C438("Who are you requesting money from? (WFVenmoActionRecipients)", 60);
  v258 = v113;
  v259 = v112;
  v114 = sub_1CA94C438("Who are you requesting money from?", 34);
  v257 = v115;
  v260 = &v257;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v257 - v285;
  sub_1CA948D98();
  v117 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v257 - v283;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v259, v258, v114, v257, 0, 0, v116, v118);
  *(v88 + 304) = v110;
  *(v88 + 280) = v120;
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  *(v279 + 40) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = v273;
  *(v123 + 32) = @"AllowsDecimalNumbers";
  *(v123 + 40) = 1;
  v124 = v261;
  *(v123 + 64) = MEMORY[0x1E69E6370];
  *(v123 + 72) = v124;
  *(v123 + 80) = 0xD000000000000020;
  *(v123 + 88) = 0x80000001CA9B1920;
  v125 = MEMORY[0x1E69E6158];
  v126 = v267;
  *(v123 + 104) = MEMORY[0x1E69E6158];
  *(v123 + 112) = v126;
  strcpy((v123 + 120), "currencyAmount");
  *(v123 + 135) = -18;
  v127 = v264;
  v128 = v265;
  *(v123 + 144) = v125;
  *(v123 + 152) = v127;
  *(v123 + 160) = v266;
  *(v123 + 168) = 0x80000001CA9B1950;
  *(v123 + 184) = v125;
  *(v123 + 192) = v128;
  v259 = v124;
  *&v261 = v127;
  v266 = v128;
  v129 = @"AllowsDecimalNumbers";
  v264 = sub_1CA94C438("Amount (WFVenmoActionAmount)", 28);
  v260 = v130;
  v131 = sub_1CA94C438("Amount", 6);
  v258 = v132;
  v265 = &v257;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v285;
  sub_1CA948D98();
  v134 = v281;
  v135 = [v281 bundleURL];
  v257 = &v257;
  MEMORY[0x1EEE9AC00](v135);
  v136 = v283;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 200) = sub_1CA2F9F14(v264, v260, v131, v258, 0, 0, &v257 - v133, &v257 - v136);
  v138 = v280;
  v139 = v268;
  *(v123 + 224) = v280;
  *(v123 + 232) = v139;
  v264 = sub_1CA94C438("How much? (WFVenmoActionAmount)", 31);
  v260 = v140;
  v258 = sub_1CA94C438("How much?", 9);
  v142 = v141;
  v265 = &v257;
  MEMORY[0x1EEE9AC00](v258);
  v143 = &v257 - v133;
  sub_1CA948D98();
  v144 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 240) = sub_1CA2F9F14(v264, v260, v258, v142, 0, 0, v143, &v257 - v136);
  *(v123 + 264) = v138;
  *(v123 + 272) = @"TextAlignment";
  v146 = MEMORY[0x1E69E6158];
  *(v123 + 304) = MEMORY[0x1E69E6158];
  *(v123 + 280) = 0x7468676952;
  *(v123 + 288) = 0xE500000000000000;
  v147 = @"TextAlignment";
  v148 = sub_1CA94C1E8();
  v149 = sub_1CA2F864C(v148);
  *(v279 + 48) = v149;
  v150 = swift_initStackObject();
  *(v150 + 16) = xmmword_1CA981350;
  v258 = 0x80000001CA99E620;
  v151 = v259;
  *(v150 + 32) = v259;
  *(v150 + 40) = 0xD000000000000011;
  *(v150 + 48) = 0x80000001CA99E620;
  v152 = v269;
  *(v150 + 64) = v146;
  *(v150 + 72) = v152;
  *(v150 + 80) = 0;
  v153 = v261;
  *(v150 + 104) = MEMORY[0x1E69E6370];
  *(v150 + 112) = v153;
  v260 = 0x80000001CA9B19F0;
  *(v150 + 120) = v270;
  *(v150 + 128) = 0x80000001CA9B19F0;
  *(v150 + 144) = v146;
  v154 = v266;
  *(v150 + 152) = v266;
  v264 = v151;
  v265 = v153;
  v266 = v154;
  v155 = sub_1CA94C438("Open in App (WFVenmoActionAppSwitch)", 36);
  v157 = v156;
  v158 = sub_1CA94C438("Open in App", 11);
  v160 = v159;
  *&v261 = &v257;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v257 - v285;
  sub_1CA948D98();
  v162 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v257 - v283;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v166 = v280;
  *(v150 + 184) = v280;
  *(v150 + 160) = v165;
  v167 = sub_1CA94C1E8();
  v168 = sub_1CA2F864C(v167);
  *(v279 + 56) = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1CA981370;
  *(v169 + 32) = v264;
  *(v169 + 40) = 0xD000000000000011;
  *(v169 + 48) = v258;
  v170 = MEMORY[0x1E69E6158];
  v171 = v269;
  *(v169 + 64) = MEMORY[0x1E69E6158];
  *(v169 + 72) = v171;
  *(v169 + 80) = 1;
  v172 = v265;
  *(v169 + 104) = MEMORY[0x1E69E6370];
  *(v169 + 112) = v172;
  *(v169 + 120) = 0x6E656857776F6853;
  *(v169 + 128) = 0xEB000000006E7552;
  v173 = v266;
  *(v169 + 144) = v170;
  *(v169 + 152) = v173;
  v174 = sub_1CA94C438("Show When Run (ShowWhenRun)", 27);
  *&v261 = v175;
  v176 = sub_1CA94C438("Show When Run", 13);
  v178 = v177;
  v269 = &v257;
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v257 - v285;
  sub_1CA948D98();
  v180 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v257 - v283;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 160) = sub_1CA2F9F14(v174, v261, v176, v178, 0, 0, v179, v181);
  *(v169 + 184) = v166;
  *(v169 + 192) = @"RequiredResources";
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v183 = swift_allocObject();
  *(v183 + 16) = v272;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v184 = swift_allocObject();
  v261 = xmmword_1CA9813C0;
  *(v184 + 16) = xmmword_1CA9813C0;
  strcpy((v184 + 32), "WFParameterKey");
  *(v184 + 47) = -18;
  v185 = v260;
  *(v184 + 48) = v270;
  *(v184 + 56) = v185;
  v270 = 0x80000001CA993570;
  v186 = MEMORY[0x1E69E6158];
  v187 = v271;
  *(v184 + 72) = MEMORY[0x1E69E6158];
  *(v184 + 80) = v187;
  *(v184 + 88) = 0x80000001CA993570;
  *(v184 + 96) = 0;
  *(v184 + 120) = MEMORY[0x1E69E6370];
  *(v184 + 128) = 0x72756F7365524657;
  *(v184 + 168) = v186;
  v259 = 0xD00000000000001BLL;
  v260 = 0x80000001CA993590;
  *(v184 + 136) = 0xEF7373616C436563;
  *(v184 + 144) = 0xD00000000000001BLL;
  *(v184 + 152) = 0x80000001CA993590;
  v188 = @"RequiredResources";
  *(v183 + 32) = sub_1CA94C1E8();
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v169 + 224) = v258;
  *(v169 + 200) = v183;
  v189 = sub_1CA94C1E8();
  v190 = sub_1CA2F864C(v189);
  *(v279 + 64) = v190;
  v191 = swift_allocObject();
  *(v191 + 16) = v273;
  *(v191 + 32) = v264;
  *(v191 + 40) = 0xD000000000000014;
  *(v191 + 48) = 0x80000001CA99B500;
  v192 = v267;
  *(v191 + 64) = v186;
  *(v191 + 72) = v192;
  *(v191 + 80) = 1702129518;
  *(v191 + 88) = 0xE400000000000000;
  v193 = v265;
  *(v191 + 104) = v186;
  *(v191 + 112) = v193;
  *(v191 + 120) = 0xD000000000000011;
  *(v191 + 128) = 0x80000001CA9B1A50;
  v194 = v266;
  *(v191 + 144) = v186;
  *(v191 + 152) = v194;
  *&v273 = sub_1CA94C438("Note (WFVenmoActionNote)", 24);
  v267 = v195;
  v196 = sub_1CA94C438("Note", 4);
  v198 = v197;
  v277 = &v257;
  MEMORY[0x1EEE9AC00](v196);
  v199 = &v257 - v285;
  sub_1CA948D98();
  v200 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v257 - v283;
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v191 + 160) = sub_1CA2F9F14(v273, v267, v196, v198, 0, 0, v199, v201);
  v203 = v280;
  *(v191 + 184) = v280;
  *(v191 + 192) = @"Multiline";
  *(v191 + 200) = 1;
  v204 = v262;
  *(v191 + 224) = MEMORY[0x1E69E6370];
  *(v191 + 232) = v204;
  v205 = @"Multiline";
  *&v273 = sub_1CA94C438("Note (WFVenmoActionNote)", 24);
  v267 = v206;
  v207 = sub_1CA94C438("Note", 4);
  v266 = v208;
  v277 = &v257;
  MEMORY[0x1EEE9AC00](v207);
  v209 = v285;
  sub_1CA948D98();
  v210 = v281;
  v211 = [v281 bundleURL];
  v265 = &v257;
  MEMORY[0x1EEE9AC00](v211);
  v212 = v283;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v191 + 240) = sub_1CA2F9F14(v273, v267, v207, v266, 0, 0, &v257 - v209, &v257 - v212);
  v214 = v268;
  *(v191 + 264) = v203;
  *(v191 + 272) = v214;
  *&v273 = sub_1CA94C438("Do you want to add a note? (WFVenmoActionNote)", 46);
  v268 = v215;
  v216 = sub_1CA94C438("Do you want to add a note?", 26);
  v218 = v217;
  v277 = &v257;
  MEMORY[0x1EEE9AC00](v216);
  sub_1CA948D98();
  v219 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v221 = sub_1CA2F9F14(v273, v268, v216, v218, 0, 0, &v257 - v209, &v257 - v212);
  *(v191 + 304) = v280;
  *(v191 + 280) = v221;
  v222 = sub_1CA94C1E8();
  v223 = sub_1CA2F864C(v222);
  v224 = v279;
  *(v279 + 72) = v223;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v226 = v274;
  v274[35] = v224;
  v226[38] = v225;
  v226[39] = @"ParameterSummary";
  v227 = @"ParameterSummary";
  v228 = sub_1CA94C438("Request ${WFVenmoActionAmount} from ${WFVenmoActionRecipients} (Parameter Summary)", 82);
  v230 = v229;
  v231 = sub_1CA94C438("Request ${WFVenmoActionAmount} from ${WFVenmoActionRecipients}", 62);
  v233 = v232;
  MEMORY[0x1EEE9AC00](v231);
  v234 = &v257 - v285;
  sub_1CA948D98();
  v235 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v235);
  v236 = &v257 - v283;
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v238 = sub_1CA2F9F14(v228, v230, v231, v233, 0, 0, v234, v236);
  v239 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v240 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v241 = v274;
  v274[40] = v239;
  v241[43] = v240;
  v241[44] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v242 = swift_allocObject();
  v285 = xmmword_1CA97EDF0;
  *(v242 + 16) = xmmword_1CA97EDF0;
  v243 = swift_allocObject();
  *(v243 + 16) = v285;
  *(v243 + 32) = 0xD000000000000011;
  *(v243 + 40) = 0x80000001CA99B240;
  v244 = swift_allocObject();
  *(v244 + 16) = v272;
  v245 = swift_allocObject();
  *(v245 + 16) = v261;
  strcpy((v245 + 32), "WFParameterKey");
  *(v245 + 47) = -18;
  *(v245 + 48) = 0x6E656857776F6853;
  *(v245 + 56) = 0xEB000000006E7552;
  v246 = MEMORY[0x1E69E6158];
  v247 = v270;
  v248 = v271;
  *(v245 + 72) = MEMORY[0x1E69E6158];
  *(v245 + 80) = v248;
  *(v245 + 88) = v247;
  *(v245 + 96) = 0;
  *(v245 + 120) = MEMORY[0x1E69E6370];
  *(v245 + 128) = 0x72756F7365524657;
  *(v245 + 168) = v246;
  v250 = v259;
  v249 = v260;
  *(v245 + 136) = 0xEF7373616C436563;
  *(v245 + 144) = v250;
  *(v245 + 152) = v249;
  v251 = @"RequiredResources";
  *(v244 + 32) = sub_1CA94C1E8();
  *(v243 + 48) = v244;
  *(v243 + 72) = v258;
  *(v243 + 80) = 0x72756F7365524657;
  *(v243 + 120) = v246;
  *(v243 + 88) = 0xEF7373616C436563;
  *(v243 + 96) = 0xD00000000000001ELL;
  *(v243 + 104) = 0x80000001CA9C2E20;
  v252 = sub_1CA94C1E8();
  *(v242 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v242 + 32) = v252;
  v286 = 2;
  v287 = 1;
  v253 = type metadata accessor for WFDeviceIdiomResource();
  v254 = objc_allocWithZone(v253);
  WFDeviceIdiomResource.init(requirement:)(&v286);
  *(v242 + 88) = v253;
  *(v242 + 64) = v255;
  v241[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v241[45] = v242;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D4D28()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("address|street|detect|scan|map", 30);
  v6 = v5;
  v7 = sub_1CA94C438("address|street|detect|scan|map", 30);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = v11;
  v12 = &v111 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v125 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v111 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000015;
  *(inited + 168) = 0x80000001CA993430;
  *(inited + 184) = v21;
  *(inited + 192) = @"Description";
  *&v119 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Returns any street addresses found in the output from the previous action.", 74);
  v116 = v27;
  v28 = sub_1CA94C438("Returns any street addresses found in the output from the previous action.", 74);
  v30 = v29;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v111 - v121;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v111 - v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v116, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v120;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v119;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1953392980;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x6E697070616DLL;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"IconSymbolColor";
  *(inited + 320) = 0x6E65657247;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 344) = v38;
  *(inited + 352) = @"Input";
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v119 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v117;
  *(v39 + 192) = &unk_1F4A01950;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v116 = v47;
  *(inited + 360) = v46;
  *(inited + 384) = v47;
  *(inited + 392) = @"LocallyProcessesData";
  *(inited + 400) = 1;
  *(inited + 424) = v41;
  *(inited + 432) = @"Name";
  v48 = @"LocallyProcessesData";
  v49 = @"Name";
  v50 = sub_1CA94C438("Get Addresses from Input (Action Name)", 38);
  v112 = v51;
  v113 = v50;
  v52 = sub_1CA94C438("Get Addresses from Input", 24);
  v111 = v53;
  v114 = &v111;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v121;
  sub_1CA948D98();
  v55 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v123;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 440) = sub_1CA2F9F14(v113, v112, v52, v111, 0, 0, &v111 - v54, &v111 - v56);
  v58 = v120;
  *(inited + 464) = v120;
  *(inited + 472) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v119;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("Addresses (Default Output Name)", 31);
  v113 = v62;
  v114 = v61;
  v112 = sub_1CA94C438("Addresses", 9);
  v64 = v63;
  v115 = &v111;
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948D98();
  v65 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v114, v113, v112, v64, 0, 0, &v111 - v54, &v111 - v56);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v117;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A01980;
  v67 = MEMORY[0x1E69E6158];
  *(inited + 480) = sub_1CA94C1E8();
  *(inited + 504) = v116;
  *(inited + 512) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = v119;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000019;
  *(v68 + 48) = 0x80000001CA99B030;
  *(v68 + 64) = v67;
  *(v68 + 72) = @"Key";
  *(v68 + 80) = 0x7475706E494657;
  *(v68 + 88) = 0xE700000000000000;
  *(v68 + 104) = v67;
  *(v68 + 112) = @"Label";
  v69 = @"Parameters";
  v70 = @"Class";
  v71 = @"Key";
  v72 = @"Label";
  v73 = sub_1CA94C438("Input (WFInput)", 15);
  v114 = v74;
  v115 = v73;
  v75 = sub_1CA94C438("Input", 5);
  v113 = v76;
  *&v119 = &v111;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v121;
  sub_1CA948D98();
  v78 = v124;
  v79 = [v124 bundleURL];
  v112 = &v111;
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v111 - v123;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 120) = sub_1CA2F9F14(v115, v114, v75, v113, 0, 0, &v111 - v77, v80);
  v82 = v120;
  *(v68 + 144) = v120;
  *(v68 + 152) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438("Input (WFInput)", 15);
  v114 = v85;
  v115 = v84;
  v113 = sub_1CA94C438("Input", 5);
  v87 = v86;
  *&v119 = &v111;
  MEMORY[0x1EEE9AC00](v113);
  v88 = &v111 - v77;
  sub_1CA948D98();
  v89 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v111 - v123;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v115, v114, v113, v87, 0, 0, v88, v90);
  *(v68 + 184) = v82;
  *(v68 + 160) = v92;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v93 = sub_1CA94C1E8();
  v94 = sub_1CA2F864C(v93);
  v95 = v117;
  v117[4] = v94;
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 520) = v95;
  *(inited + 552) = @"ParameterSummary";
  v96 = @"ParameterSummary";
  v97 = sub_1CA94C438("Get addresses from ${WFInput} (Parameter Summary)", 49);
  v99 = v98;
  v100 = sub_1CA94C438("Get addresses from ${WFInput}", 29);
  v102 = v101;
  v120 = &v111;
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v111 - v121;
  sub_1CA948D98();
  v104 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v111 - v123;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v97, v99, v100, v102, 0, 0, v103, v105);
  v108 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 584) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 560) = v108;
  *(inited + 592) = @"ResidentCompatible";
  *(inited + 624) = MEMORY[0x1E69E6370];
  *(inited + 600) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v109 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D5D08()
{
  v77 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFExitAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("quit|return|workflow", 20);
  v6 = v5;
  v7 = sub_1CA94C438("quit|return|workflow", 20);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v11;
  v12 = &v73 - v82;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v79 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v73 - v80;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v78 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v76 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Stops execution of the current shortcut and dismisses the shortcut on screen. No more actions will be run after this action.", 124);
  v74 = v24;
  v25 = sub_1CA94C438("Stops execution of the current shortcut and dismisses the shortcut on screen. No more actions will be run after this action.", 124);
  v27 = v26;
  v75 = &v73;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v73 - v82;
  sub_1CA948D98();
  v29 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v73 - v80;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v74, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v78;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v76;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6C69662E706F7473;
  *(inited + 208) = 0xE90000000000006CLL;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x746C757365524657;
  *(v36 + 104) = 0xE800000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 0;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v76;
  *(v36 + 192) = &unk_1F4A019B0;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v41;
  *(inited + 264) = v42;
  *(inited + 272) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Stop This Shortcut (Action Name)", 32);
  v46 = v45;
  v47 = sub_1CA94C438("Stop This Shortcut", 18);
  v49 = v48;
  v75 = &v73;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v73 - v82;
  sub_1CA948D98();
  v51 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v73 - v80;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 304) = v78;
  *(inited + 312) = @"Parameters";
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 320) = MEMORY[0x1E69E7CC0];
  *(inited + 344) = v54;
  *(inited + 352) = @"ParameterSummary";
  v55 = @"Parameters";
  v56 = @"ParameterSummary";
  v57 = sub_1CA94C438("Stop this shortcut (Parameter Summary)", 38);
  v59 = v58;
  v60 = sub_1CA94C438("Stop this shortcut", 18);
  v62 = v61;
  v78 = &v73;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v73 - v82;
  sub_1CA948D98();
  v64 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v73 - v80;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v59, v60, v62, 0, 0, v63, v65);
  v68 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v69 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v68;
  *(inited + 384) = v69;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F4A019E0;
  *(inited + 424) = v76;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v70 = @"RequiredResources";
  v71 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D66A0()
{
  v26[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438("Get Details of Contacts (Action Name)", 37);
  v9 = v8;
  v10 = sub_1CA94C438("Get Details of Contacts", 23);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"ResidentCompatible";
  *(inited + 184) = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v23 = @"ResidentCompatible";
  v24 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v24;
  *(inited + 200) = 0xD000000000000014;
  *(inited + 208) = 0x80000001CA993920;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D6A18()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_116();
  v1 = sub_1CA94C368();

  v2 = [v0 initWithSymbolName_];

  return v2;
}

uint64_t WFAskLLMModelParameter.localizedTitleForButton(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_41(v0);
  if (v7)
  {
    sub_1CA4D7558(v0);
    return 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_8_18();
    v10(v9);
    v11 = OUTLINED_FUNCTION_4_35();
    v12(v11);
    v13 = OUTLINED_FUNCTION_106();
    if (v14(v13) == *MEMORY[0x1E6996C20])
    {
      v15 = sub_1CA9486E8();
      if (v16)
      {
        v8 = v15;
        v17 = OUTLINED_FUNCTION_116();
        v18(v17);
LABEL_10:
        sub_1CA94C218();

        return v8;
      }

      v8 = sub_1CA9486D8();
      v23 = v22;
      v24 = OUTLINED_FUNCTION_116();
      v25(v24);
      if (v23)
      {
        sub_1CA94C218();
        goto LABEL_10;
      }
    }

    else
    {
      v8 = sub_1CA948658();
      v19 = *(v4 + 8);
      v20 = OUTLINED_FUNCTION_116();
      v19(v20);
      v21 = OUTLINED_FUNCTION_106();
      v19(v21);
    }
  }

  return v8;
}

id WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  sub_1CA9486C8();
  OUTLINED_FUNCTION_5_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  sub_1CA4D7250(a2, v7);
  OUTLINED_FUNCTION_41(v7);
  if (v14)
  {
    sub_1CA4D7558(v7);
    return 0;
  }

  (*(v9 + 32))(v13, v7, v2);
  sub_1CA948668();
  if (!v15)
  {
    v19 = OUTLINED_FUNCTION_116();
    v20(v19);
    return 0;
  }

  sub_1CA4D75C0();
  v16 = sub_1CA4D6A18();
  v17 = OUTLINED_FUNCTION_116();
  v18(v17);
  return v16;
}

uint64_t WFAskLLMModelParameter.isPresentingOnboarding.getter()
{
  v1 = OBJC_IVAR___WFAskLLMModelParameter_isPresentingOnboarding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WFAskLLMModelParameter.isPresentingOnboarding.setter(char a1)
{
  v3 = OBJC_IVAR___WFAskLLMModelParameter_isPresentingOnboarding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1CA4D6F18(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___WFAskLLMModelParameter_enablementHelper;
  *&v1[v4] = [objc_allocWithZone(sub_1CA948708()) init];
  v1[OBJC_IVAR___WFAskLLMModelParameter_isPresentingOnboarding] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithDefinition_, a1);
  [v5 setDataSource_];

  return v5;
}

uint64_t WFAskLLMModelParameter.enumeration(_:localizedLabelForPossibleState:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_41(v0);
  if (v7)
  {
    sub_1CA4D7558(v0);
    return 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_8_18();
    v10(v9);
    v11 = OUTLINED_FUNCTION_4_35();
    v12(v11);
    v13 = OUTLINED_FUNCTION_106();
    if (v14(v13) == *MEMORY[0x1E6996C20])
    {
      sub_1CA94C438("Extension", 9);
      if (qword_1EDB9F5F0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDB9F690;
      v16 = sub_1CA94C368();
      v17 = sub_1CA94C368();

      v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

      v8 = sub_1CA94C3A8();
      v19 = OUTLINED_FUNCTION_116();
      v20(v19);
    }

    else
    {
      v8 = sub_1CA948658();
      v21 = *(v4 + 8);
      v22 = OUTLINED_FUNCTION_116();
      v21(v22);
      v23 = OUTLINED_FUNCTION_106();
      v21(v23);
    }
  }

  return v8;
}

uint64_t sub_1CA4D7250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA949F78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-1] - v9;
  v11 = [a1 value];
  if (v11)
  {
    v24[2] = v11;
    if (swift_dynamicCast())
    {
      sub_1CA9486A8();
      v12 = sub_1CA9486C8();
      if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
      {
        (*(*(v12 - 8) + 32))(a2, v10, v12);
        v20 = a2;
        v21 = 0;
        v19 = v12;
        return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
      }

      sub_1CA4D7558(v10);
    }
  }

  sub_1CA949C58();
  v13 = a1;
  v14 = sub_1CA949F68();
  v15 = sub_1CA94CC18();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136315138;
    v18 = [v13 value];
    swift_unknownObjectRelease();
    *(v16 + 4) = sub_1CA26B54C(0xD000000000000013, 0x80000001CA9C3180, v24);
    _os_log_impl(&dword_1CA256000, v14, v15, "WFAskLLMModelParameter could not create a WFGenerativeModelName from WFVariableSubstitutableParameterState with value type %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1CCAA4BF0](v17, -1, -1);
    MEMORY[0x1CCAA4BF0](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v19 = sub_1CA9486C8();
  v20 = a2;
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
}

uint64_t sub_1CA4D7558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CA4D75C0()
{
  result = qword_1EC444870;
  if (!qword_1EC444870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC444870);
  }

  return result;
}

uint64_t WFAskLLMModelParameter.enumeration(_:localizedSubtitleLabelForPossibleState:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BF0, &unk_1CA989120);
  OUTLINED_FUNCTION_18_0(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  sub_1CA9486C8();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  sub_1CA4D7250(a2, v6);
  OUTLINED_FUNCTION_41(v6);
  if (v8)
  {
    sub_1CA4D7558(v6);
    return 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_35();
    v10(v9);
    v11 = sub_1CA948688();
    v12 = OUTLINED_FUNCTION_106();
    v13(v12);
  }

  return v11;
}

id sub_1CA4D7788(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5();
  v12 = v11;

  if (v12)
  {
    v13 = sub_1CA94C368();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void WFAskLLMModelParameter.loadPossibleStates(forEnumeration:)()
{
  sub_1CA9486C8();
  OUTLINED_FUNCTION_5_4();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v54 - v9);
  v11 = sub_1CA948698();
  v12 = 0;
  v13 = *(v11 + 16);
  v58 = OBJC_IVAR___WFAskLLMModelParameter_enablementHelper;
  v62 = v13;
  v63 = v2 + 16;
  v60 = *MEMORY[0x1E6996C20];
  v59 = v2 + 104;
  v64 = v2 + 8;
  v55 = (v2 + 32);
  v57 = MEMORY[0x1E69E7CC0];
  v61 = v11;
  while (v62 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = *(v2 + 72);
    (*(v2 + 16))(v10, v11 + v14 + v15 * v12, v0);
    (*(v2 + 104))(v8, v60, v0);
    sub_1CA4D7EE0();
    v16 = sub_1CA94C358();
    v17 = *(v2 + 8);
    v18 = OUTLINED_FUNCTION_116();
    v17(v18);
    if ((v16 & 1) == 0 || (sub_1CA9486F8()) && (v19 = [objc_opt_self() shared], v20 = WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(v10), v19, (v20))
    {
      v21 = *v55;
      (*v55)(v56, v10, v0);
      v22 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v22;
      v54 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA2B8F14();
        v22 = v65;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_1CA2B8F14();
        v22 = v65;
      }

      ++v12;
      *(v22 + 16) = v24 + 1;
      v57 = v22;
      v54(v22 + v14 + v24 * v15, v56, v0);
      v11 = v61;
    }

    else
    {
      (v17)(v10, v0);
      ++v12;
      v11 = v61;
    }
  }

  v29 = *(v57 + 16);
  if (v29)
  {
    v30 = v57;
    v65 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v29, 0, v25, v26, v27, v28);
    v31 = v65;
    v32 = v30 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v33 = *(v2 + 72);
    v61 = *(v2 + 16);
    v62 = v33;
    do
    {
      v61(v8, v32, v0);
      v34 = sub_1CA9486B8();
      v36 = v35;
      v37 = OUTLINED_FUNCTION_116();
      v38(v37);
      v65 = v31;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1CA271524(v43 > 1, v44 + 1, 1, v39, v40, v41, v42);
        v31 = v65;
      }

      *(v31 + 16) = v44 + 1;
      v45 = v31 + 16 * v44;
      *(v45 + 32) = v34;
      *(v45 + 40) = v36;
      v32 += v62;
      --v29;
    }

    while (v29);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v65 = v31;
  sub_1CA94C218();
  sub_1CA334EF0(&v65);

  v46 = v65;
  v47 = *(v65 + 16);
  if (v47)
  {
    v65 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v48 = v46 + 40;
    do
    {
      sub_1CA94C218();
      v49 = sub_1CA94C368();
      v50 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

      v51 = WFVariableSubstitutableParameterStateUpcast(v50);

      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v48 += 16;
      --v47;
    }

    while (v47);
  }

  v52 = objc_allocWithZone(MEMORY[0x1E696E918]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
  v53 = sub_1CA94C648();

  [v52 initWithItems_];
}

unint64_t sub_1CA4D7EE0()
{
  result = qword_1EC445C10;
  if (!qword_1EC445C10)
  {
    sub_1CA9486C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445C10);
  }

  return result;
}

uint64_t WFAskLLMModelParameter.defaultSerializedRepresentation(forEnumeration:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA9486C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  (*(v3 + 104))(v5 - v4, *MEMORY[0x1E6996C18], v2);
  v7 = sub_1CA9486B8();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v7;
  a1[1] = v9;
  return result;
}

id WFAskLLMModelParameter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static WFActionDefinitionRegistry.register(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1CA94C368();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CA4D8338;
  v9[3] = &block_descriptor_14;
  v8 = _Block_copy(v9);

  [ObjCClassFromMetadata registerDefinitionForKey:v7 definition:v8];
  _Block_release(v8);
}

id sub_1CA4D8338(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA4D83D4()
{
  v136 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFSocialAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("share|text|post|facebook|fb", 27);
  v7 = v6;
  v8 = sub_1CA94C438("share|text|post|facebook|fb", 27);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v145 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = v12;
  v13 = &v125 - v145;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v144 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v141 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v143 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v125 - v143;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v142 = v20;
  *(v2 + 80) = v19;
  *(v2 + 104) = v20;
  *(v2 + 112) = @"AppDefinition";
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v21 = swift_initStackObject();
  v137 = xmmword_1CA981350;
  *(v21 + 16) = xmmword_1CA981350;
  *(v21 + 32) = 0xD00000000000001DLL;
  *(v21 + 40) = 0x80000001CA99DA80;
  v22 = MEMORY[0x1E69E6370];
  *(v21 + 48) = 1;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  v23 = v22;
  v134 = 0x80000001CA993290;
  v135 = 0xD000000000000015;
  *(v21 + 88) = 0x80000001CA993290;
  *(v21 + 96) = 0xD000000000000015;
  *(v21 + 104) = 0x80000001CA9C31F0;
  v24 = MEMORY[0x1E69E6158];
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 128) = 1701667150;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = 0x6B6F6F6265636146;
  *(v21 + 152) = 0xE800000000000000;
  *(v21 + 168) = v24;
  strcpy((v21 + 176), "TeamIdentifier");
  *(v21 + 216) = v24;
  *(v21 + 191) = -18;
  *(v21 + 192) = 0x4642505454573956;
  *(v21 + 200) = 0xEA0000000000394BLL;
  v25 = @"AppDefinition";
  v26 = sub_1CA94C1E8();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v2 + 144) = v138;
  *(v2 + 120) = v26;
  v27 = sub_1CA94C368();
  v140 = v2;
  *(v2 + 152) = v27;
  *(v2 + 160) = 1;
  *(v2 + 184) = v23;
  *(v2 + 192) = @"Description";
  v132 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v28 = swift_initStackObject();
  v133 = xmmword_1CA97EDF0;
  *(v28 + 16) = xmmword_1CA97EDF0;
  *(v28 + 32) = @"DescriptionInput";
  v29 = @"Description";
  v30 = @"DescriptionInput";
  v31 = sub_1CA94C438("Content to share.", 17);
  v129 = v32;
  v130 = v31;
  v128 = sub_1CA94C438("Content to share.", 17);
  v34 = v33;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v128);
  v35 = &v125 - v145;
  sub_1CA948D98();
  v36 = v144;
  v37 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  v38 = v143;
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v28 + 40) = sub_1CA2F9F14(v130, v129, v128, v34, 0, 0, v35, &v125 - v38);
  v40 = v142;
  *(v28 + 64) = v142;
  *(v28 + 72) = @"DescriptionSummary";
  v41 = @"DescriptionSummary";
  v42 = sub_1CA94C438("Shares the input on Facebook.", 29);
  v129 = v43;
  v130 = v42;
  v44 = sub_1CA94C438("Shares the input on Facebook.", 29);
  v128 = v45;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v125 - v145;
  sub_1CA948D98();
  v47 = [v36 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v130, v129, v44, v128, 0, 0, v46, &v125 - v38);
  *(v28 + 104) = v40;
  *(v28 + 80) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v50 = sub_1CA94C1E8();
  v51 = v132;
  v52 = sub_1CA6B3784(v50);
  v53 = v140;
  v140[25] = v52;
  v53[28] = v51;
  v53[29] = @"Input";
  v54 = swift_allocObject();
  *(v54 + 16) = v137;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 72) = MEMORY[0x1E69E6370];
  strcpy((v54 + 80), "ParameterKey");
  *(v54 + 93) = 0;
  *(v54 + 94) = -5120;
  *(v54 + 96) = 0x6B6F6F6265636146;
  *(v54 + 104) = 0xEF746E65746E6F43;
  *(v54 + 120) = MEMORY[0x1E69E6158];
  *(v54 + 128) = 0x6465726975716552;
  *(v54 + 136) = 0xE800000000000000;
  *(v54 + 144) = 1;
  *(v54 + 168) = v55;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v132;
  *(v54 + 192) = &unk_1F4A01A50;
  v56 = @"Input";
  v53[30] = sub_1CA94C1E8();
  v53[33] = v138;
  v53[34] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438("Post on Facebook (Action Name)", 30);
  v60 = v59;
  v61 = sub_1CA94C438("Post on Facebook", 16);
  v63 = v62;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v125 - v145;
  sub_1CA948D98();
  v65 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v125 - v143;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v60, v61, v63, 0, 0, v64, v66);
  v69 = v140;
  v140[35] = v68;
  v69[38] = v142;
  v69[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v131 = swift_allocObject();
  *(v131 + 1) = xmmword_1CA9813B0;
  v130 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = v137;
  *&v137 = 0xD000000000000019;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000019;
  *(v70 + 48) = 0x80000001CA99B030;
  v71 = MEMORY[0x1E69E6158];
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = @"Key";
  *(v70 + 80) = 0x6B6F6F6265636146;
  *(v70 + 88) = 0xEF746E65746E6F43;
  *(v70 + 104) = v71;
  *(v70 + 112) = @"Label";
  v72 = @"Parameters";
  v73 = @"Class";
  v74 = @"Key";
  v75 = @"Label";
  v76 = sub_1CA94C438("Content (FacebookContent)", 25);
  v127 = v77;
  v128 = v76;
  v78 = sub_1CA94C438("Content", 7);
  v126 = v79;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v145;
  sub_1CA948D98();
  v81 = v144;
  v82 = [v144 bundleURL];
  v125 = &v125;
  MEMORY[0x1EEE9AC00](v82);
  v83 = v143;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 120) = sub_1CA2F9F14(v128, v127, v78, v126, 0, 0, &v125 - v80, &v125 - v83);
  *(v70 + 144) = v142;
  *(v70 + 152) = @"Placeholder";
  v85 = @"Placeholder";
  v86 = sub_1CA94C438("Content (FacebookContent)", 25);
  v127 = v87;
  v128 = v86;
  v88 = sub_1CA94C438("Content", 7);
  v126 = v89;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v90 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v128, v127, v88, v126, 0, 0, &v125 - v80, &v125 - v83);
  *(v70 + 184) = v142;
  *(v70 + 160) = v92;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v93 = sub_1CA94C1E8();
  v94 = sub_1CA2F864C(v93);
  v95 = v131;
  v131[4] = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v97 = v140;
  v140[40] = v95;
  v97[43] = v96;
  v97[44] = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438("Post ${FacebookContent} (Parameter Summary)", 43);
  v101 = v100;
  v102 = sub_1CA94C438("Post ${FacebookContent}", 23);
  v104 = v103;
  v142 = &v125;
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948D98();
  v105 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v125 - v143;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, &v125 - v80, v106);
  v109 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v110 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v97[45] = v109;
  v97[48] = v110;
  v97[49] = @"RequiredResources";
  v111 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v112 = swift_allocObject();
  *(v112 + 16) = v133;
  v147 = 2;
  v148 = 1;
  v113 = type metadata accessor for WFDeviceIdiomResource();
  v114 = objc_allocWithZone(v113);
  v115 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v147);
  *(v112 + 32) = v116;
  v117 = MEMORY[0x1E69E6158];
  *(v112 + 88) = MEMORY[0x1E69E6158];
  v118 = v137;
  *(v112 + 56) = v113;
  *(v112 + 64) = v118;
  *(v112 + 72) = 0x80000001CA9932D0;
  v111[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v111[50] = v112;
  v111[54] = sub_1CA94C368();
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1CA981370;
  v120 = v134;
  *(v119 + 32) = 0xD000000000000010;
  *(v119 + 40) = v120;
  *(v119 + 48) = 0xD000000000000024;
  *(v119 + 56) = 0x80000001CA9C3320;
  *(v119 + 72) = v117;
  *(v119 + 80) = 0xD000000000000012;
  *(v119 + 88) = 0x80000001CA99DDA0;
  *(v119 + 96) = &unk_1F4A01AB0;
  *(v119 + 120) = v132;
  *(v119 + 128) = 0x7079547475706E49;
  *(v119 + 136) = 0xE900000000000065;
  strcpy((v119 + 144), "ContentItems");
  *(v119 + 157) = 0;
  *(v119 + 158) = -5120;
  *(v119 + 168) = v117;
  *(v119 + 176) = 0x5465636976726553;
  *(v119 + 184) = 0xEB00000000657079;
  *(v119 + 192) = v118;
  *(v119 + 200) = 0x80000001CA9C3350;
  *(v119 + 216) = v117;
  *(v119 + 224) = 0xD000000000000010;
  *(v119 + 264) = v117;
  v121 = v135;
  *(v119 + 232) = 0x80000001CA99DDE0;
  *(v119 + 240) = v121;
  *(v119 + 248) = 0x80000001CA9C3370;
  v111[55] = sub_1CA94C1E8();
  v111[58] = v138;
  v111[59] = @"UserInterfaceClasses";
  v122 = @"UserInterfaceClasses";
  v123 = sub_1CA94C1E8();
  v111[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v111[60] = v123;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4D9560()
{
  v283 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  v282 = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9C33A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("animate|make|generate|gif", 25);
  v6 = v5;
  v7 = sub_1CA94C438("animate|make|generate|gif", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v302 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v303 = v11;
  v12 = &v273 - v302;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v301 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v300 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v299 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v273 - v299;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v298 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v297 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v291 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v23 = sub_1CA94C438("An existing animated GIF, if desired.", 37);
  v294 = v24;
  v25 = sub_1CA94C438("An existing animated GIF, if desired.", 37);
  v27 = v26;
  v296 = &v273;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v273 - v302;
  sub_1CA948D98();
  v29 = [v301 bundleURL];
  v295 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v273 - v299;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v23, v294, v25, v27, 0, 0, v28, v31);
  *(v20 + 64) = v298;
  *(v20 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("An animated GIF", 15);
  v293 = v35;
  v294 = v34;
  v292 = sub_1CA94C438("An animated GIF", 15);
  v37 = v36;
  v296 = &v273;
  MEMORY[0x1EEE9AC00](v292);
  v38 = v302;
  sub_1CA948D98();
  v39 = v301;
  v40 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v273 - v299;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v294, v293, v292, v37, 0, 0, &v273 - v38, v41);
  *(v20 + 104) = v298;
  *(v20 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438("Adds an image to the existing animated GIF passed as input. If no GIF is passed as input, a new animated GIF is created.", 120);
  v293 = v45;
  v294 = v44;
  v46 = sub_1CA94C438("Adds an image to the existing animated GIF passed as input. If no GIF is passed as input, a new animated GIF is created.", 120);
  v48 = v47;
  v296 = &v273;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = [v39 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v273 - v299;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v294, v293, v46, v48, 0, 0, &v273 - v38, v50);
  *(v20 + 144) = v298;
  *(v20 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v53 = sub_1CA94C1E8();
  v54 = v297;
  v55 = sub_1CA6B3784(v53);
  v56 = v295;
  v295[15] = v55;
  v56[18] = v54;
  v56[19] = @"IconColor";
  v56[20] = 0x656C70727550;
  v56[21] = 0xE600000000000000;
  v57 = MEMORY[0x1E69E6158];
  v56[23] = MEMORY[0x1E69E6158];
  v56[24] = @"IconSymbol";
  v56[25] = 0xD000000000000027;
  v56[26] = 0x80000001CA99BB90;
  v56[28] = v57;
  v56[29] = @"Input";
  v58 = v56;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v289 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 0;
  *(v59 + 72) = v60;
  strcpy((v59 + 80), "ParameterKey");
  *(v59 + 93) = 0;
  *(v59 + 94) = -5120;
  *(v59 + 96) = 0x477475706E494657;
  *(v59 + 104) = 0xEA00000000004649;
  *(v59 + 120) = v57;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = v60;
  *(v59 + 176) = 0x7365707954;
  v61 = v60;
  *(v59 + 184) = 0xE500000000000000;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v297;
  *(v59 + 192) = &unk_1F4A01B50;
  v62 = @"IconColor";
  v63 = @"IconSymbol";
  v64 = @"Input";
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v296 = v66;
  v58[30] = v65;
  v58[33] = v66;
  v58[34] = @"InputPassthrough";
  *(v58 + 280) = 0;
  v58[38] = v61;
  v58[39] = @"Name";
  v67 = @"InputPassthrough";
  v68 = @"Name";
  v69 = sub_1CA94C438("Add Frame to GIF (Action Name)", 30);
  v292 = v70;
  v293 = v69;
  v71 = sub_1CA94C438("Add Frame to GIF", 16);
  v73 = v72;
  v294 = &v273;
  MEMORY[0x1EEE9AC00](v71);
  v74 = v302;
  sub_1CA948D98();
  v75 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = v299;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v293, v292, v71, v73, 0, 0, &v273 - v74, &v273 - v76);
  v79 = v295;
  v295[40] = v78;
  v80 = v298;
  v79[43] = v298;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v291;
  *(v81 + 32) = 0x656C7069746C754DLL;
  *(v81 + 40) = 0xE800000000000000;
  *(v81 + 48) = 0;
  *(v81 + 72) = MEMORY[0x1E69E6370];
  *(v81 + 80) = 0x614E74757074754FLL;
  *(v81 + 88) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438("GIF (Default Output Name)", 25);
  v292 = v84;
  v293 = v83;
  v288 = sub_1CA94C438("GIF", 3);
  v86 = v85;
  v294 = &v273;
  MEMORY[0x1EEE9AC00](v288);
  sub_1CA948D98();
  v87 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 96) = sub_1CA2F9F14(v293, v292, v288, v86, 0, 0, &v273 - v74, &v273 - v76);
  *(v81 + 120) = v80;
  *(v81 + 128) = 0x7365707954;
  *(v81 + 168) = v297;
  *(v81 + 136) = 0xE500000000000000;
  *(v81 + 144) = &unk_1F4A01B80;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v295;
  v295[45] = v90;
  v91[48] = v296;
  v91[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_1CA981410;
  v296 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = v289;
  v287 = 0xD000000000000019;
  v288 = 0x80000001CA99B030;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000019;
  *(v92 + 48) = 0x80000001CA99B030;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  *(v92 + 80) = 0x6567616D494657;
  *(v92 + 88) = 0xE700000000000000;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v285 = v96;
  v284 = v97;
  v286 = v98;
  v99 = @"Parameters";
  v292 = sub_1CA94C438("Image (WFImage)", 15);
  *&v281 = v100;
  v101 = sub_1CA94C438("Image", 5);
  v280 = v102;
  v293 = &v273;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v273 - v302;
  sub_1CA948D98();
  v104 = v301;
  v105 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v299;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v292, v281, v101, v280, 0, 0, v103, &v273 - v106);
  v108 = v298;
  *(v92 + 144) = v298;
  *(v92 + 152) = @"Placeholder";
  *&v281 = @"Placeholder";
  v292 = sub_1CA94C438("Image (WFImage)", 15);
  v280 = v109;
  v110 = sub_1CA94C438("Image", 5);
  *&v279 = v111;
  v293 = &v273;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v273 - v302;
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v292, v280, v110, v279, 0, 0, v112, &v273 - v106);
  *(v92 + 184) = v108;
  *(v92 + 160) = v115;
  _s3__C3KeyVMa_0(0);
  v293 = v116;
  v292 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  *(v297 + 32) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = v289;
  v121 = v284;
  v120 = v285;
  v123 = v287;
  v122 = v288;
  *(v119 + 32) = v285;
  *(v119 + 40) = v123;
  *(v119 + 48) = v122;
  v124 = MEMORY[0x1E69E6158];
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = v121;
  *(v119 + 80) = 0x477475706E494657;
  *(v119 + 88) = 0xEA00000000004649;
  v125 = v286;
  *(v119 + 104) = v124;
  *(v119 + 112) = v125;
  v285 = v120;
  v284 = v121;
  v286 = v125;
  v287 = sub_1CA94C438("GIF (WFInputGIF)", 16);
  v280 = v126;
  *&v279 = sub_1CA94C438("GIF", 3);
  v128 = v127;
  v288 = &v273;
  MEMORY[0x1EEE9AC00](v279);
  v129 = v302;
  sub_1CA948D98();
  v130 = [v301 bundleURL];
  v278 = &v273;
  MEMORY[0x1EEE9AC00](v130);
  v131 = v106;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 120) = sub_1CA2F9F14(v287, v280, v279, v128, 0, 0, &v273 - v129, &v273 - v106);
  v133 = v298;
  v134 = v281;
  *(v119 + 144) = v298;
  *(v119 + 152) = v134;
  v287 = v134;
  v135 = sub_1CA94C438("GIF (WFInputGIF)", 16);
  v280 = v136;
  *&v281 = v135;
  v137 = sub_1CA94C438("GIF", 3);
  v139 = v138;
  v288 = &v273;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948D98();
  v140 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v281, v280, v137, v139, 0, 0, &v273 - v129, &v273 - v131);
  *(v119 + 184) = v133;
  *(v119 + 160) = v142;
  v143 = sub_1CA94C1E8();
  v144 = sub_1CA2F864C(v143);
  *(v297 + 40) = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1CA981400;
  *(v145 + 32) = @"AllowsDecimalNumbers";
  *(v145 + 40) = 1;
  v146 = v285;
  *(v145 + 64) = MEMORY[0x1E69E6370];
  *(v145 + 72) = v146;
  v288 = 0x80000001CA99C180;
  *(v145 + 80) = 0xD000000000000016;
  *(v145 + 88) = 0x80000001CA99C180;
  v147 = MEMORY[0x1E69E6158];
  *(v145 + 104) = MEMORY[0x1E69E6158];
  *(v145 + 112) = @"DefaultValue";
  v148 = MEMORY[0x1E69E63B0];
  *(v145 + 120) = 0x3FD0000000000000;
  v149 = v284;
  *(v145 + 144) = v148;
  *(v145 + 152) = v149;
  strcpy((v145 + 160), "WFGIFDelayTime");
  *(v145 + 175) = -18;
  v150 = v286;
  *(v145 + 184) = v147;
  *(v145 + 192) = v150;
  v151 = @"DefaultValue";
  v285 = v146;
  v284 = v149;
  *&v281 = v150;
  v280 = v151;
  v152 = @"AllowsDecimalNumbers";
  v153 = sub_1CA94C438("Delay Time (WFGIFDelayTime)", 27);
  v278 = v154;
  *&v279 = v153;
  v155 = sub_1CA94C438("Delay Time", 10);
  v277 = v156;
  v286 = &v273;
  MEMORY[0x1EEE9AC00](v155);
  v157 = v302;
  sub_1CA948D98();
  v158 = v301;
  v159 = [v301 bundleURL];
  v276 = &v273;
  MEMORY[0x1EEE9AC00](v159);
  v160 = v299;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v145 + 200) = sub_1CA2F9F14(v279, v278, v155, v277, 0, 0, &v273 - v157, &v273 - v160);
  v162 = v298;
  v163 = v287;
  *(v145 + 224) = v298;
  *(v145 + 232) = v163;
  v286 = v163;
  v164 = sub_1CA94C438("0.25 (WFGIFDelayTime)", 21);
  v278 = v165;
  *&v279 = v164;
  v166 = sub_1CA94C438("0.25", 4);
  v168 = v167;
  v287 = &v273;
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948D98();
  v169 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v145 + 240) = sub_1CA2F9F14(v279, v278, v166, v168, 0, 0, &v273 - v157, &v273 - v160);
  *(v145 + 264) = v162;
  *(v145 + 272) = @"TextAlignment";
  v171 = MEMORY[0x1E69E6158];
  *(v145 + 304) = MEMORY[0x1E69E6158];
  *(v145 + 280) = 0x7468676952;
  *(v145 + 288) = 0xE500000000000000;
  v287 = @"TextAlignment";
  v172 = sub_1CA94C1E8();
  v173 = sub_1CA2F864C(v172);
  *(v297 + 48) = v173;
  v174 = swift_allocObject();
  *(v174 + 16) = v289;
  v176 = v284;
  v175 = v285;
  *(v174 + 32) = v285;
  *(v174 + 40) = 0xD000000000000011;
  *(v174 + 48) = 0x80000001CA99E620;
  v177 = v280;
  *(v174 + 64) = v171;
  *(v174 + 72) = v177;
  *(v174 + 80) = 1;
  *(v174 + 104) = MEMORY[0x1E69E6370];
  *(v174 + 112) = v176;
  strcpy((v174 + 120), "WFGIFAutoSize");
  *(v174 + 134) = -4864;
  *(v174 + 144) = v171;
  v178 = v281;
  *(v174 + 152) = v281;
  v285 = v175;
  v284 = v176;
  *&v289 = v178;
  v179 = sub_1CA94C438("Auto Size (WFGIFAutoSize)", 25);
  v181 = v180;
  v182 = sub_1CA94C438("Auto Size", 9);
  v184 = v183;
  *&v281 = &v273;
  MEMORY[0x1EEE9AC00](v182);
  v185 = &v273 - v302;
  sub_1CA948D98();
  v186 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v273 - v299;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v179, v181, v182, v184, 0, 0, v185, v187);
  *(v174 + 184) = v298;
  *(v174 + 160) = v189;
  v190 = sub_1CA94C1E8();
  v191 = sub_1CA2F864C(v190);
  *(v297 + 56) = v191;
  v192 = swift_allocObject();
  v281 = xmmword_1CA981380;
  *(v192 + 16) = xmmword_1CA981380;
  *(v192 + 32) = v285;
  *(v192 + 40) = 0xD000000000000016;
  *(v192 + 48) = v288;
  v193 = MEMORY[0x1E69E6158];
  v194 = v284;
  *(v192 + 64) = MEMORY[0x1E69E6158];
  *(v192 + 72) = v194;
  *(v192 + 80) = 0xD000000000000014;
  *(v192 + 88) = 0x80000001CA9C3590;
  v195 = v289;
  *(v192 + 104) = v193;
  *(v192 + 112) = v195;
  v196 = sub_1CA94C438("Width (WFGIFManualSizeWidth)", 28);
  v278 = v197;
  *&v279 = v196;
  v198 = sub_1CA94C438("Width", 5);
  v277 = v199;
  v280 = &v273;
  MEMORY[0x1EEE9AC00](v198);
  v200 = &v273 - v302;
  sub_1CA948D98();
  v201 = v301;
  v202 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = v299;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 120) = sub_1CA2F9F14(v279, v278, v198, v277, 0, 0, v200, &v273 - v203);
  v205 = v298;
  v206 = v286;
  *(v192 + 144) = v298;
  *(v192 + 152) = v206;
  v207 = sub_1CA94C438("500 (WFGIFManualSizeWidth)", 26);
  v278 = v208;
  *&v279 = v207;
  v209 = sub_1CA94C438("500", 3);
  v277 = v210;
  v280 = &v273;
  MEMORY[0x1EEE9AC00](v209);
  v211 = &v273 - v302;
  sub_1CA948D98();
  v212 = [v201 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 160) = sub_1CA2F9F14(v279, v278, v209, v277, 0, 0, v211, &v273 - v203);
  *(v192 + 184) = v205;
  *(v192 + 192) = @"RequiredResources";
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v214 = swift_allocObject();
  v279 = xmmword_1CA981310;
  *(v214 + 16) = xmmword_1CA981310;
  v215 = swift_allocObject();
  *(v215 + 16) = v291;
  strcpy((v215 + 32), "WFParameterKey");
  *(v215 + 47) = -18;
  strcpy((v215 + 48), "WFGIFAutoSize");
  *(v215 + 62) = -4864;
  v277 = 0xD000000000000010;
  v278 = 0x80000001CA993570;
  v216 = MEMORY[0x1E69E6158];
  *(v215 + 72) = MEMORY[0x1E69E6158];
  *(v215 + 80) = 0xD000000000000010;
  *(v215 + 88) = 0x80000001CA993570;
  *(v215 + 96) = 0;
  *(v215 + 120) = MEMORY[0x1E69E6370];
  *(v215 + 128) = 0x72756F7365524657;
  *(v215 + 168) = v216;
  v275 = 0xD00000000000001BLL;
  v276 = 0x80000001CA993590;
  *(v215 + 136) = 0xEF7373616C436563;
  *(v215 + 144) = 0xD00000000000001BLL;
  *(v215 + 152) = 0x80000001CA993590;
  v273 = @"RequiredResources";
  *(v214 + 32) = sub_1CA94C1E8();
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v274 = v217;
  *(v192 + 200) = v214;
  v218 = v287;
  *(v192 + 224) = v217;
  *(v192 + 232) = v218;
  *(v192 + 264) = v216;
  *(v192 + 240) = 0x7468676952;
  *(v192 + 248) = 0xE500000000000000;
  v219 = sub_1CA94C1E8();
  v220 = sub_1CA2F864C(v219);
  *(v297 + 64) = v220;
  v221 = swift_allocObject();
  *(v221 + 16) = v281;
  *(v221 + 32) = v285;
  *(v221 + 40) = 0xD000000000000016;
  *(v221 + 48) = v288;
  v222 = v284;
  *(v221 + 64) = v216;
  *(v221 + 72) = v222;
  *(v221 + 80) = v282;
  *(v221 + 88) = 0x80000001CA9C35F0;
  v223 = v289;
  *(v221 + 104) = v216;
  *(v221 + 112) = v223;
  v224 = sub_1CA94C438("Height (WFGIFManualSizeHeight)", 30);
  v288 = v225;
  *&v289 = v224;
  v226 = sub_1CA94C438("Height", 6);
  v285 = v227;
  v294 = &v273;
  MEMORY[0x1EEE9AC00](v226);
  v228 = v302;
  sub_1CA948D98();
  v229 = v301;
  v230 = [v301 bundleURL];
  v284 = &v273;
  MEMORY[0x1EEE9AC00](v230);
  v231 = &v273 - v299;
  sub_1CA948B68();

  v232 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v221 + 120) = sub_1CA2F9F14(v289, v288, v226, v285, 0, 0, &v273 - v228, v231);
  v233 = v298;
  v234 = v286;
  *(v221 + 144) = v298;
  *(v221 + 152) = v234;
  v235 = sub_1CA94C438("500 (WFGIFManualSizeHeight)", 27);
  v288 = v236;
  *&v289 = v235;
  v237 = sub_1CA94C438("500", 3);
  v286 = v238;
  v294 = &v273;
  MEMORY[0x1EEE9AC00](v237);
  sub_1CA948D98();
  v239 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v273 - v299;
  sub_1CA948B68();

  v241 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v221 + 160) = sub_1CA2F9F14(v289, v288, v237, v286, 0, 0, &v273 - v228, v240);
  v242 = v273;
  *(v221 + 184) = v233;
  *(v221 + 192) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v279;
  v244 = swift_allocObject();
  *(v244 + 16) = v291;
  strcpy((v244 + 32), "WFParameterKey");
  *(v244 + 47) = -18;
  strcpy((v244 + 48), "WFGIFAutoSize");
  *(v244 + 62) = -4864;
  v245 = MEMORY[0x1E69E6158];
  v247 = v277;
  v246 = v278;
  *(v244 + 72) = MEMORY[0x1E69E6158];
  *(v244 + 80) = v247;
  *(v244 + 88) = v246;
  *(v244 + 96) = 0;
  *(v244 + 120) = MEMORY[0x1E69E6370];
  *(v244 + 128) = 0x72756F7365524657;
  *(v244 + 168) = v245;
  *(v244 + 136) = 0xEF7373616C436563;
  v248 = v276;
  *(v244 + 144) = v275;
  *(v244 + 152) = v248;
  v249 = v245;
  *(v243 + 32) = sub_1CA94C1E8();
  *(v221 + 200) = v243;
  v250 = v287;
  *(v221 + 224) = v274;
  *(v221 + 232) = v250;
  *(v221 + 264) = v249;
  *(v221 + 240) = 0x7468676952;
  *(v221 + 248) = 0xE500000000000000;
  v251 = sub_1CA94C1E8();
  v252 = sub_1CA2F864C(v251);
  v253 = v297;
  *(v297 + 72) = v252;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v255 = v295;
  v295[50] = v253;
  v255[53] = v254;
  v255[54] = @"ParameterSummary";
  v256 = @"ParameterSummary";
  v257 = sub_1CA94C438("Add ${WFImage} to ${WFInputGIF} (Parameter Summary)", 51);
  v259 = v258;
  v260 = sub_1CA94C438("Add ${WFImage} to ${WFInputGIF}", 31);
  v262 = v261;
  MEMORY[0x1EEE9AC00](v260);
  v263 = &v273 - v302;
  sub_1CA948D98();
  v264 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v264);
  v265 = &v273 - v299;
  sub_1CA948B68();

  v266 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v267 = sub_1CA2F9F14(v257, v259, v260, v262, 0, 0, v263, v265);
  v268 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v269 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v270 = v295;
  v295[55] = v268;
  v270[58] = v269;
  v270[59] = @"ResidentCompatible";
  v270[63] = MEMORY[0x1E69E6370];
  *(v270 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v271 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

char *WFParameter.arraySizeRange(for:)(uint64_t a1)
{
  v2 = [v1 arraySizeRangeForWidgetFamily_];
  v4 = v3;
  result = sub_1CA948778();
  if (v2 == result || v4 < 1)
  {
    return 0;
  }

  if (__OFSUB__(&v2[v4], 1))
  {
    __break(1u);
  }

  else if (&v2[v4 - 1] >= v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t WFParameterValuePickable<>.loadStates(withSearchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA4DB718, 0, 0);
}

uint64_t sub_1CA4DB718()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445C18, &qword_1CA989160);
  *v4 = v0;
  v4[1] = sub_1CA4DB828;

  return MEMORY[0x1EEE6DE38](v0 + 16);
}

uint64_t sub_1CA4DB828()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1CA4DB964;
  }

  else
  {

    v2 = sub_1CA4DB944;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CA4DB964()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CA4DB9C8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (a4)
  {
    a4 = sub_1CA94C368();
  }

  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  aBlock[4] = sub_1CA4DBCB4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA4DBD58;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);

  [a2 wf:a4 loadStatesWithSearchTerm:v13 completionHandler:?];
  _Block_release(v13);
}

uint64_t sub_1CA4DBBA8(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  if (a4)
  {
    v4 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
    return sub_1CA94C7D8();
  }

  else
  {
    if (!a1)
    {
      v7 = objc_allocWithZone(MEMORY[0x1E696E918]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
      v8 = sub_1CA94C648();
      [v7 initWithItems_];
    }

    sub_1CA94C218();
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA4DBCB4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);

  return sub_1CA4DBBA8(a1, a2, a3, a4);
}

uint64_t sub_1CA4DBD58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1CA94C3A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a2;
  v11 = a4;
  v6(a2, v7, v9, a4);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA4DBE24()
{
  result = [v0 isLocked];
  if (result)
  {
    return ([v0 isHidden] ^ 1);
  }

  return result;
}

char *sub_1CA4DBE60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
  {
    sub_1CA2E8B78(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR___WFAppProtectionAccessResource_observers] = v6;
  *&v2[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription] = 0;
  v7 = &v2[OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = objc_opt_self();
  sub_1CA94C218();
  v9 = sub_1CA94C368();

  v10 = [v8 applicationWithBundleIdentifier_];

  *&v2[OBJC_IVAR___WFAppProtectionAccessResource_apApp] = v10;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v17, sel_initWithDefinition_enableDistributedNotifications_, 0, 0);
  v12 = qword_1EC442A78;
  v13 = v11;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_0_43(&qword_1EC442A78);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D48, &qword_1CA9891C0);
  sub_1CA25C3BC(&qword_1EC441D70, &qword_1EC445D48, &qword_1CA9891C0, MEMORY[0x1E695BFB0]);
  sub_1CA94A108();

  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v14 = [objc_opt_self() sharedContext];
  [v14 addApplicationStateObserver:v13 forEvent:3];

  v15 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
  swift_unknownObjectRelease();

  *&v13[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription] = v15;
  swift_unknownObjectRelease();
  return v13;
}

void sub_1CA4DC140(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1CA4DC19C(v2);
  }
}

void sub_1CA4DC19C(char a1)
{
  v2 = v1;
  if ([*&v2[OBJC_IVAR___WFAppProtectionAccessResource_apApp] isLocked])
  {
    if (a1 == 2)
    {
      if (qword_1EC442A78 != -1)
      {
        swift_once();
      }

      sub_1CA94A018();

      a1 = v9[0];
    }
  }

  else
  {
    a1 = 1;
  }

  v4 = [v2 isAvailable];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1 & 1;
  *(v5 + 17) = v6;
  *(v5 + 24) = v2;
  v9[4] = sub_1CA4DDC10;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CA4DCA30;
  v9[3] = &block_descriptor_16;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v8 updateAvailability:v6 withError:0 completionHandler:v7];
  _Block_release(v7);
}

void sub_1CA4DC358(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v3 = sub_1CA25B410(a1);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1CCAA1490]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v2 = v19;
      ++v4;
    }

    else
    {

      ++v4;
    }
  }

  v7 = sub_1CA25B410(v2);
  v8 = 0;
  v9 = (v18 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier);
  while (v7 != v8)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCAA22D0](v8, v2);
    }

    else
    {
      if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v10 = *(v2 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_35;
    }

    v12 = [v10 bundleIdentifier];
    v13 = sub_1CA94C3A8();
    v15 = v14;

    if (v13 == *v9 && v15 == v9[1])
    {

LABEL_30:

      sub_1CA4DC19C(2);
      return;
    }

    v17 = sub_1CA94D7F8();

    ++v8;
    if (v17)
    {
      goto LABEL_30;
    }
  }
}

uint64_t sub_1CA4DC6B4(char a1, char a2, void *a3)
{
  v4 = a2 & 1;
  v5 = a1 & 1;
  v6 = sub_1CA94B7A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA94B7D8();
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != v4)
  {
    v20 = result;
    sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
    v19 = sub_1CA94CD48();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    aBlock[4] = sub_1CA4DDC38;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA4DCA30;
    aBlock[3] = &block_descriptor_14;
    v16 = _Block_copy(aBlock);
    v17 = a3;

    sub_1CA94B7C8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA4DDC40(&qword_1EC441CD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445D38, &qword_1CA9891B8);
    sub_1CA25C3BC(&qword_1EC441B30, &unk_1EC445D38, &qword_1CA9891B8, MEMORY[0x1E69E6328]);
    sub_1CA94D2A8();
    v18 = v19;
    MEMORY[0x1CCAA1BC0](0, v14, v9, v16);
    _Block_release(v16);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v20);
  }

  return result;
}

void sub_1CA4DC9B4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:@"WFResourceAvailabilityChangedNotification" object:a1];
}

double sub_1CA4DCA30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1CA4DCACC()
{
  v1 = *(v0 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier);
  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA4DCB3C()
{
  if ((sub_1CA4DBE24() & 1) == 0)
  {
    return 4;
  }

  if ([v0 isAvailable])
  {
    return 4;
  }

  return 1;
}

uint64_t sub_1CA4DCB94(uint64_t a1)
{
  v2 = 0;
  if (a1 == 1)
  {
    sub_1CA94C438("%1$@ requires %2$@.", 19);
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    v3 = qword_1EDB9F690;
    v4 = sub_1CA94C368();
    v5 = sub_1CA94C368();

    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_1CA94C3A8();
    sub_1CA25B3D0(0, &qword_1EC445D20, 0x1E6963620);
    v7 = *(v1 + OBJC_IVAR___WFAppProtectionAccessResource_associatedAppBundleIdentifier);
    sub_1CA94C218();
    v8 = sub_1CA4DCE68(v7);
    v9 = [v8 localizedName];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CA97EDF0;
    v11 = sub_1CA94C368();

    *(v10 + 56) = sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    *(v10 + 64) = sub_1CA4DDBA8();
    *(v10 + 32) = v11;
    v12 = WFAppProtectionLocalizedAuthMechanismString();
    v13 = sub_1CA94C3A8();
    v15 = v14;

    *(v10 + 96) = MEMORY[0x1E69E6158];
    *(v10 + 104) = sub_1CA282DB4();
    *(v10 + 72) = v13;
    *(v10 + 80) = v15;
    v2 = sub_1CA94C378();
  }

  return v2;
}

id sub_1CA4DCE68(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CA94C368();

  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1CA4DCFC0(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  sub_1CA94C438("Unlock Action", 13);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v2 = qword_1EDB9F690;
  v3 = sub_1CA94C368();
  v4 = sub_1CA94C368();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_1CA94C3A8();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  return v1;
}

uint64_t sub_1CA4DD154(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CA4DD174, 0, 0);
}

uint64_t sub_1CA4DD174()
{
  v1 = *(v0[3] + OBJC_IVAR___WFAppProtectionAccessResource_apApp);
  if (sub_1CA4DBE24())
  {
    if (qword_1EC442A78 != -1)
    {
      OUTLINED_FUNCTION_0_43(&qword_1EC442A78);
    }

    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1CA4DD294;

    return sub_1CA610B34(v1, v2);
  }

  else
  {
    v5 = v0[1];

    return v5(1);
  }
}

uint64_t sub_1CA4DD294(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 & 1;
  }

  return v6(v7);
}

uint64_t sub_1CA4DD420(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1CA4DD4E4;

  return sub_1CA4DD154(a1);
}

uint64_t sub_1CA4DD4E4(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v8 = *(v5 + 24);
  v9 = *v2;
  *v7 = *v2;

  swift_unknownObjectRelease();

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_1CA948AC8();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

void sub_1CA4DD690()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___WFAppProtectionAccessResource_observers;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1CA94C218();
    sub_1CA94D2F8();
    sub_1CA949FB8();
    sub_1CA4DDC40(&unk_1EC4448B0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1CA94C948();
    v3 = v21;
    v4 = v22;
    v6 = v23;
    v5 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
    sub_1CA94C218();
    v5 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v7;
    v13 = v5;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_1CA28A224(v3);
      v16 = *&v1[OBJC_IVAR___WFAppProtectionAccessResource_subjectSubscription];
      if (v16)
      {
        [v16 invalidate];
      }

      v17 = [objc_opt_self() sharedContext];
      [v17 removeApplicationStateObserver:v1 forEvent:3];

      v20.receiver = v1;
      v20.super_class = ObjectType;
      objc_msgSendSuper2(&v20, sel_dealloc);
      return;
    }

    while (1)
    {
      sub_1CA949FA8();

      v5 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1CA94D358())
      {
        sub_1CA949FB8();
        swift_dynamicCast();
        v13 = v5;
        v14 = v7;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}