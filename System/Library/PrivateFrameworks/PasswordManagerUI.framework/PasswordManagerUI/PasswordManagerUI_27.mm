uint64_t sub_21CA170FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA17220(uint64_t a1, unsigned int *a2)
{
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  (*(v4 + 104))(v6, *a2, v3);
  sub_21C85FFDC(v6);
}

uint64_t sub_21CA17328@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBA8, &qword_21CBACD70);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = v78 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50D0, &unk_21CBBD058);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v83 = v78 - v8;
  v9 = type metadata accessor for PMWiFiList(0);
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = v78 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50D8, &qword_21CBBD068);
  MEMORY[0x28223BE20](v86);
  v87 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = v78 - v15;
  v16 = sub_21CB85114();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v78 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50E0, &unk_21CBBD070);
  MEMORY[0x28223BE20](v23 - 8);
  v89 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v78 - v26;
  v85 = v7;
  sub_21CB85084();
  v28 = v104;
  swift_getKeyPath(byte_21CBBCFB8);
  v104 = v28;
  v78[1] = sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v29 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v17 + 16))(v22, v28 + v29, v16);

  (*(v17 + 104))(v19, *MEMORY[0x277CDF0D0], v16);
  LOBYTE(v29) = sub_21CB850F4();
  v30 = *(v17 + 8);
  v30(v19, v16);
  v30(v22, v16);
  v31 = 1;
  v97 = v27;
  if (v29)
  {
    v32 = v79;
    sub_21CB81ED4();
    v33 = sub_21CB81F14();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = v81;
    sub_21CA1AEE4(a1, v81, type metadata accessor for PMWiFiList);
    v35 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v36 = swift_allocObject();
    sub_21CA1B0EC(v34, v36 + v35, type metadata accessor for PMWiFiList);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v37 = v82;
    sub_21CB84D94();
    v38 = v85;
    sub_21CB85084();
    v39 = v104;
    swift_getKeyPath(byte_21CBBD008);
    v104 = v39;
    sub_21CB810D4();

    v40 = *(v39 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

    v41 = *(v40 + 16);

    LOBYTE(v32) = v41 == 0;
    KeyPath = swift_getKeyPath(byte_21CBBD090);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    v44 = v37;
    v45 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80) + 36)];
    *v45 = KeyPath;
    v45[1] = sub_21C735744;
    v45[2] = v43;
    v46 = v83;
    v81 = a1;
    sub_21CB85094();
    swift_getKeyPath(byte_21CBBD0C8);
    sub_21CB850B4();

    v47 = (*(v84 + 8))(v46, v38);
    v48 = v112;
    v49 = v113;
    v50 = v114;
    *&v51 = MEMORY[0x28223BE20](v47).n128_u64[0];
    swift_getKeyPath(byte_21CBBD0F0, v51);
    v109 = v48;
    v110 = v49;
    v111 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50F0, &qword_21CBBD138);
    sub_21CB84F44();

    v52 = v104;
    v53 = v105;
    v54 = v106;
    v55 = v107;
    v56 = v108;

    v57 = swift_getKeyPath(asc_21CBBD140);
    v98 = v52;
    v99 = v53;
    v100 = v54;
    v101 = v55;
    v102 = v56;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
    MEMORY[0x21CF14A20](v103, v58);
    v59 = v103[0];
    if (v103[0])
    {
      v60 = v103[1];
      v61 = v103[2];

      sub_21C968AF4(v62, v60, v61);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v27 = v97;
    v63 = (v44 + *(v86 + 36));
    *v63 = v57;
    v63[1] = v52;
    v63[2] = v53;
    v63[3] = v54;
    v63[4] = v55;
    v63[5] = v56;
    v63[6] = v59;
    v64 = v87;
    sub_21C6EDBAC(v44, v87, &qword_27CDF50D8, &qword_21CBBD068);
    v65 = v88;
    sub_21C6EDBAC(v64, v88, &qword_27CDF50D8, &qword_21CBBD068);
    v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50F8, &qword_21CBBD168) + 48);
    *v66 = 0;
    *(v66 + 8) = 1;
    sub_21C6EA794(v44, &qword_27CDF50D8, &qword_21CBBD068);
    sub_21C6EA794(v64, &qword_27CDF50D8, &qword_21CBBD068);
    sub_21C716934(v65, v27, &qword_27CDF50D0, &unk_21CBBD058);
    v31 = 0;
  }

  (*(v90 + 56))(v27, v31, 1, v91);
  v67 = sub_21CB85184();
  MEMORY[0x28223BE20](v67);
  sub_21CB831C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBB0, &qword_21CBACD78);
  sub_21CA1BBDC(&qword_27CDEC048, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
  sub_21CA1AD6C();
  v68 = v92;
  sub_21CB85194();
  v69 = v89;
  sub_21C6EDBAC(v27, v89, &qword_27CDF50E0, &unk_21CBBD070);
  v70 = v95;
  v71 = *(v95 + 16);
  v72 = v93;
  v73 = v96;
  v71(v93, v68, v96);
  v74 = v94;
  sub_21C6EDBAC(v69, v94, &qword_27CDF50E0, &unk_21CBBD070);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50E8, &unk_21CBBD080);
  v71((v74 + *(v75 + 48)), v72, v73);
  v76 = *(v70 + 8);
  v76(v68, v73);
  sub_21C6EA794(v97, &qword_27CDF50E0, &unk_21CBBD070);
  v76(v72, v73);
  return sub_21C6EA794(v69, &qword_27CDF50E0, &unk_21CBBD070);
}

uint64_t sub_21CA17FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  sub_21CB85084();
  swift_getKeyPath(byte_21CBBD008);
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v0 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  sub_21C861B98(v0, 1);
}

uint64_t sub_21CA180D4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CA1825C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  swift_getKeyPath(a8_29);
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v2 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

  v3 = *(v2 + 16);

  if (v3)
  {
    result = sub_21CA14460();
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21CA1836C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  MEMORY[0x28223BE20](v30);
  v31 = &v23 - v3;
  v4 = type metadata accessor for PMWiFiList(0);
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v5;
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v11 = v33;
  swift_getKeyPath(byte_21CBBD008);
  v33 = v11;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  sub_21CB85084();
  v12 = v33;
  swift_getKeyPath(byte_21CBBCFE0);
  v33 = v12;
  sub_21CB810D4();

  v13 = (v23 + 8);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*v13)(v8, v24);
  v33 = v14;
  v34 = v16;
  v17 = v28;
  sub_21CA1AEE4(a1, v28, type metadata accessor for PMWiFiList);
  v18 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v19 = swift_allocObject();
  sub_21CA1B0EC(v17, v19 + v18, type metadata accessor for PMWiFiList);
  sub_21C71F3FC();
  v20 = v27;
  sub_21CB84DE4();
  v21 = v29;
  (*(v29 + 16))(v31, v20, v9);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB83494();
  return (*(v21 + 8))(v20, v9);
}

uint64_t sub_21CA18964()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBBD008);
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  swift_getKeyPath(byte_21CBBD008);
  sub_21CB810F4();

  v0 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs) = MEMORY[0x277D84FA0];
  sub_21C862188(v0);

  swift_getKeyPath(byte_21CBBD008);
  sub_21CB810E4();
}

uint64_t sub_21CA18ABC()
{
  v0 = type metadata accessor for PMWiFiNetwork(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v4 = v19;
  sub_21CB85084();
  v5 = v19;
  swift_getKeyPath(byte_21CBBCFE0);
  v19 = v5;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = v4;
    v19 = MEMORY[0x277D84F90];
    sub_21C7B1328(0, v7, 0);
    v8 = v19;
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    do
    {
      sub_21CA1AEE4(v9, v3, type metadata accessor for PMWiFiNetwork);
      v12 = *v3;
      v11 = v3[1];

      sub_21CA1B3F8(v3, type metadata accessor for PMWiFiNetwork);
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21C7B1328((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_21CB00FD8(v8);

  sub_21C86234C(v16);
}

uint64_t sub_21CA18D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PMWiFiList(0);
  v10 = v2 + *(v9 + 24);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v11, 0);
    v9 = (*(v6 + 8))(v8, v5);
    if (v16[15] != 1)
    {
LABEL_7:
      v13 = 1;
      goto LABEL_8;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](v9);
  *&v16[-16] = a1;
  *&v16[-8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB85054();
  v13 = 0;
LABEL_8:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t sub_21CA18FCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5190, &qword_21CBBD2A8);
  MEMORY[0x28223BE20](v53);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v45 - v7;
  v8 = type metadata accessor for PMWiFiNetwork(0);
  v9 = v8 - 8;
  v45 = *(v8 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for PMWiFiList(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  MEMORY[0x28223BE20](v46);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v22);
  v50 = &v45 - v23;
  v52 = a1;
  sub_21CA1AEE4(a1, v14, type metadata accessor for PMWiFiList);
  sub_21CA1AEE4(a2, &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiNetwork);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = (v13 + *(v45 + 80) + v24) & ~*(v45 + 80);
  v26 = swift_allocObject();
  sub_21CA1B0EC(v14, v26 + v24, type metadata accessor for PMWiFiList);
  sub_21CA1B0EC(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PMWiFiNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
  v27 = *(a2 + *(v9 + 44));
  if ((v27 & 1) != 0 || (sub_21C807A74(a2), !v28))
  {
    v29 = 1;
  }

  else
  {

    v29 = 0;
  }

  KeyPath = swift_getKeyPath(byte_21CBBD090);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  (*(v48 + 32))(v21, v17, v49);
  v32 = &v21[*(v46 + 36)];
  *v32 = KeyPath;
  v32[1] = sub_21C87E800;
  v32[2] = v31;
  v33 = v50;
  sub_21C716934(v21, v50, &qword_27CDEEBA0, &qword_21CBABC80);
  v34 = v47;
  sub_21CA1AEE4(a2, v47, type metadata accessor for PMWiFiNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  LOBYTE(v31) = sub_21C861558(a2);

  v35 = type metadata accessor for PMShareWiFiNetworkButton(0);
  *(v34 + *(v35 + 20)) = v31 & 1;
  v36 = *(v35 + 24);
  *(v34 + v36) = swift_getKeyPath(byte_21CBBD2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v37 = swift_getKeyPath(byte_21CBBD090);
  v38 = swift_allocObject();
  *(v38 + 16) = v27;
  v39 = (v34 + *(v53 + 36));
  *v39 = v37;
  v39[1] = sub_21C87E800;
  v39[2] = v38;
  v40 = v51;
  sub_21C6EDBAC(v33, v51, &qword_27CDEEBA0, &qword_21CBABC80);
  v41 = v54;
  sub_21C6EDBAC(v34, v54, &qword_27CDF5190, &qword_21CBBD2A8);
  v42 = v55;
  sub_21C6EDBAC(v40, v55, &qword_27CDEEBA0, &qword_21CBABC80);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5198, &unk_21CBBD2E8);
  sub_21C6EDBAC(v41, v42 + *(v43 + 48), &qword_27CDF5190, &qword_21CBBD2A8);
  sub_21C6EA794(v34, &qword_27CDF5190, &qword_21CBBD2A8);
  sub_21C6EA794(v33, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21C6EA794(v41, &qword_27CDF5190, &qword_21CBBD2A8);
  return sub_21C6EA794(v40, &qword_27CDEEBA0, &qword_21CBABC80);
}

uint64_t sub_21CA19660(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  sub_21CA1AEE4(a2, v5, type metadata accessor for PMWiFiNetwork);
  v6 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_21C861308(v5);
}

uint64_t sub_21CA19770()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CA198A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v27 = a1;
  v3 = type metadata accessor for PMWiFiList(0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_21CB81014();
  sub_21CB81014();
  v17 = sub_21CB80FF4();
  v19 = v18;
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  sub_21CB81ED4();
  v21 = sub_21CB81F14();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  sub_21CA1AEE4(v30, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_21CA1B0EC(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PMWiFiList);
  v24 = v28;
  *(v23 + ((v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v35[0] = v17;
  v35[1] = v19;
  sub_21C6EDBAC(v9, v24, &qword_27CDEBE38, &unk_21CBA3770);
  v32 = v35;
  v33 = 0x6873617274;
  v34 = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84D94();
  sub_21C6EA794(v9, &qword_27CDEBE38, &unk_21CBA3770);
}

uint64_t sub_21CA19CF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  sub_21C861B98(a2, 0);
}

uint64_t sub_21CA19D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CA1AEE4(a2, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMWiFiList);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_21CA1B0EC(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PMWiFiList);
  v11 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

uint64_t sub_21CA19EFC(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v30 = sub_21CB82F84();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - v5;
  v7 = sub_21CB82A34();
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = (v3 + 8);
  v17 = a1;
  v26 = (v8 + 32);
  v27 = v16;
  v31 = (v8 + 8);

  v19 = 0;
  v32 = v6;
  v28 = a1;
  while (v14)
  {
LABEL_11:
    v23 = (*(v17 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
    v24 = v23[1];
    v35 = *v23;
    v25 = type metadata accessor for PMWiFiList(0);
    sub_21C6EDBAC(v34 + *(v25 + 20), v6, &qword_27CDEC0D0, &qword_21CBA3BF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v26)(v10, v6, v7);
    }

    else
    {

      sub_21CB85B04();
      v20 = sub_21CB83C94();
      sub_21CB81C14();

      v21 = v29;
      sub_21CB82F74();
      swift_getAtKeyPath();
      v17 = v28;

      (*v27)(v21, v30);
    }

    v14 &= v14 - 1;
    v36 = v35;
    v37 = v24;
    sub_21CA1B274();
    sub_21CA1B2C8();
    sub_21CA1A9CC();
    sub_21CB82A14();
    (*v31)(v10, v7);

    v6 = v32;
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v15)
    {
    }

    v14 = *(v11 + 8 * v22);
    ++v19;
    if (v14)
    {
      v19 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA1A2C0(uint64_t a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

unint64_t sub_21CA1A428()
{
  result = qword_27CDF4FE0;
  if (!qword_27CDF4FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FB8, &qword_21CBBCE98);
    sub_21CA1A4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4FE0);
  }

  return result;
}

unint64_t sub_21CA1A4AC()
{
  result = qword_27CDF4FE8;
  if (!qword_27CDF4FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FF0, &qword_21CBBCEC0);
    sub_21CA1BBDC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21CA1A568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4FE8);
  }

  return result;
}

unint64_t sub_21CA1A568()
{
  result = qword_27CDF4FF8;
  if (!qword_27CDF4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5000, &qword_21CBBCEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    type metadata accessor for PMWiFiNetwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    sub_21CA1A768();
    swift_getOpaqueTypeConformance2();
    sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork, &protocol conformance descriptor for PMWiFiNetwork);
    type metadata accessor for PMWiFiQRCodeView(255);
    sub_21CB83994();
    sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4FF8);
  }

  return result;
}

unint64_t sub_21CA1A768()
{
  result = qword_27CDF5020;
  if (!qword_27CDF5020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    sub_21CA1A820();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5020);
  }

  return result;
}

unint64_t sub_21CA1A820()
{
  result = qword_27CDF5028;
  if (!qword_27CDF5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5030, &qword_21CBBCEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5038, &qword_21CBBCEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5040, &qword_21CBBCEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5048, &unk_21CBBCF00);
    sub_21C6EADEC(&qword_27CDF5050, &qword_27CDF5040, &qword_21CBBCEF8, MEMORY[0x277CDE5A0]);
    sub_21CA1A9CC();
    sub_21C6EADEC(&qword_27CDF5060, &qword_27CDF5048, &unk_21CBBCF00, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5028);
  }

  return result;
}

unint64_t sub_21CA1A9CC()
{
  result = qword_27CDF5058;
  if (!qword_27CDF5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5058);
  }

  return result;
}

unint64_t sub_21CA1AA20()
{
  result = qword_27CDF5068;
  if (!qword_27CDF5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5068);
  }

  return result;
}

unint64_t sub_21CA1AA74()
{
  result = qword_27CDF5080;
  if (!qword_27CDF5080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5088, &unk_21CBBCF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    type metadata accessor for PMWiFiNetwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    sub_21CA1A768();
    swift_getOpaqueTypeConformance2();
    sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork, &protocol conformance descriptor for PMWiFiNetwork);
    type metadata accessor for PMWiFiQRCodeView(255);
    sub_21CB83994();
    sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5080);
  }

  return result;
}

uint64_t sub_21CA1ACF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CA1AD6C()
{
  result = qword_27CDEFBB8;
  if (!qword_27CDEFBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFBB0, &qword_21CBACD78);
    sub_21C8C52D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFBB8);
  }

  return result;
}

uint64_t sub_21CA1AEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA1AF54()
{
  result = qword_27CDF5130;
  if (!qword_27CDF5130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5128, &qword_21CBBD1C8);
    sub_21C6EADEC(&qword_27CDF5138, &qword_27CDF5140, &qword_21CBBD1D0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5130);
  }

  return result;
}

unint64_t sub_21CA1B090()
{
  result = qword_27CDF5148;
  if (!qword_27CDF5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5148);
  }

  return result;
}

uint64_t sub_21CA1B0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA1B174()
{
  v1 = *(type metadata accessor for PMWiFiList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21CA19CF0(v0 + v2, v3);
}

uint64_t sub_21CA1B208()
{
  v1 = *(type metadata accessor for PMWiFiList(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21CA19EFC(v2, v3);
}

unint64_t sub_21CA1B274()
{
  result = qword_27CDF51A0;
  if (!qword_27CDF51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51A0);
  }

  return result;
}

unint64_t sub_21CA1B2C8()
{
  result = qword_27CDF51A8;
  if (!qword_27CDF51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51A8);
  }

  return result;
}

uint64_t sub_21CA1B334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMWiFiList(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21CA1B3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_87Tm()
{
  v1 = type metadata accessor for PMWiFiList(0);
  v24 = *(*(v1 - 1) + 80);
  v2 = (v24 + 16) & ~v24;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for PMWiFiNetwork(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v23 = *(*(v4 - 1) + 64);
  v7 = v0 + v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82A34();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  v11 = v6 & ~v5;
  sub_21C7025C4(*(v7 + v1[6]), *(v7 + v1[6] + 8));
  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB83834();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  v15 = v0;
  v16 = v0 + v11;

  v17 = v4[7];
  v18 = sub_21CB80DD4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v16 + v17, 1, v18))
  {
    (*(v19 + 8))(v16 + v17, v18);
  }

  v21 = v4[8];
  if (!v20(v16 + v21, 1, v18))
  {
    (*(v19 + 8))(v16 + v21, v18);
  }

  return MEMORY[0x2821FE8E8](v15, v11 + v23, v24 | v5 | 7);
}

uint64_t sub_21CA1B808(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiList(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PMWiFiNetwork(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_21CA1B94C()
{
  result = qword_27CDF51D0;
  if (!qword_27CDF51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF50A8, &qword_21CBBCF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FC8, &qword_21CBBCEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF50A0, &qword_21CBBCF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FC0, &qword_21CBBCEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FB8, &qword_21CBBCE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FD8, &qword_21CBBCEB8);
    sub_21CA1A428();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5090, &qword_21CBBCF20);
    sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CA1BBDC(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable, &unk_21CBCB2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51D0);
  }

  return result;
}

uint64_t sub_21CA1BBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CA1BC28()
{
  result = qword_27CDF51D8;
  if (!qword_27CDF51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51D8);
  }

  return result;
}

uint64_t sub_21CA1BCA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51E0, &qword_21CBBD4B0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  *a2 = sub_21CA1BDE0;
  a2[1] = v10;
  return result;
}

uint64_t sub_21CA1BDE0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51E0, &qword_21CBBD4B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_21CA1BE60()
{
  result = qword_27CDF51E8;
  if (!qword_27CDF51E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF51F0, &qword_21CBBD4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51E8);
  }

  return result;
}

uint64_t sub_21CA1BF08@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_21CB83124();
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CB83114();
  sub_21CB83104();
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v5 = sub_21CB84034();
  v7 = v6;
  v9 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84774();
  sub_21C74A72C(v5, v7, v9);

  v10 = sub_21CB83D34();
  sub_21CB81F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  v20 = a2 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_21CA1C114@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_21CB83124();
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CB83114();
  sub_21CB83104();
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v5 = sub_21CB84034();
  v7 = v6;
  v9 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5228, &qword_21CBBD540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5230, &qword_21CBBD548);
  sub_21C6EADEC(&qword_27CDF5238, &qword_27CDF5230, &qword_21CBBD548, MEMORY[0x277CDEFF0]);
  sub_21C830EB0();
  swift_getOpaqueTypeConformance2();
  sub_21CB84774();
  sub_21C74A72C(v5, v7, v9);

  v10 = sub_21CB83D34();
  sub_21CB81F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5218, &unk_21CBBD530);
  v20 = a2 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_21CA1C370()
{
  v1 = sub_21CB83274();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5210, &unk_21CBBD520);
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  sub_21CB85184();
  v13 = v0;
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5218, &unk_21CBBD530);
  sub_21C9CF5E0();
  sub_21CA1CF54();
  sub_21CB85194();
  KeyPath = swift_getKeyPath(byte_21CBBD550);
  v9 = &v7[*(v5 + 36)];
  *v9 = KeyPath;
  v9[8] = 0;
  sub_21CB83254();
  sub_21CA1D0A8();
  sub_21CB84594();
  (*(v2 + 8))(v4, v1);
  return sub_21C776F1C(v7);
}

uint64_t sub_21CA1C58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = (a1 + *(type metadata accessor for PMSharingGroup(0) + 20));
  v9 = v8[1];
  v11[0] = *v8;
  v11[1] = v9;
  sub_21C71F3FC();

  sub_21CB84CB4();
  sub_21CA1CE4C();
  sub_21CA1BF08(a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21CA1C708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_21CB82F84();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5230, &qword_21CBBD548);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5228, &qword_21CBBD540);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v23 = v2;
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5268, &unk_21CBBD588);
  sub_21CA1D260();
  sub_21CB84C84();
  KeyPath = swift_getKeyPath(byte_21CBBD550);
  v25 = 0;
  sub_21C6EADEC(&qword_27CDF5238, &qword_27CDF5230, &qword_21CBBD548, MEMORY[0x277CDEFF0]);
  sub_21C830EB0();
  sub_21CB840E4();

  (*(v7 + 8))(v9, v6);
  sub_21CA1CE4C();
  v14 = v2 + *(type metadata accessor for PMGroupRow(0) + 28);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v15, 0);
    (*(v19 + 8))(v5, v20);
  }

  sub_21CA1C114(v21);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21CA1CAB8@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMSharingGroup(0);
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

double sub_21CA1CB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_21CB82F84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for PMGroupRow(0) + 24);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_21CB85B04();
    v15 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v12, 0);
    (*(v8 + 8))(v10, v7);
    if ((v29 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = sub_21CB84BB4();
    v17 = sub_21CB83DC4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = sub_21CB83E14();
    sub_21C9E1150(v6);
    KeyPath = swift_getKeyPath(byte_21CBBD5E8);
    v24 = v16;
    v25 = KeyPath;
    v27 = 0;
    v26 = v18;
    v28 = 1;
    goto LABEL_6;
  }

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_21CB84BB4();
  v14 = sub_21CB84A74();
  v24 = v13;
  v25 = v14;
  v26 = vdupq_n_s64(0x4040000000000000uLL);
  v27 = 0x4018000000000000;
  v28 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4E8, &unk_21CBA6BB0);
  sub_21C830D18();
  sub_21C74DDEC();
  sub_21CB83494();
  result = *&v29;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  *a2 = v29;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  return result;
}

uint64_t sub_21CA1CE4C()
{
  type metadata accessor for PMGroupRow(0);
  swift_getKeyPath(aP_76);
  swift_getKeyPath(a0_42);
  sub_21CB81DB4();

  if (*(v6 + 16) && (v1 = sub_21CB10A54(v0), (v2 & 1) != 0))
  {
    v3 = *(*(v6 + 56) + 8 * v1);

    v4 = *(v3 + 16);

    return v4;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_21CA1CF54()
{
  result = qword_27CDF5220;
  if (!qword_27CDF5220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5218, &unk_21CBBD530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5228, &qword_21CBBD540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5230, &qword_21CBBD548);
    sub_21C6EADEC(&qword_27CDF5238, &qword_27CDF5230, &qword_21CBBD548, MEMORY[0x277CDEFF0]);
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5220);
  }

  return result;
}

unint64_t sub_21CA1D0A8()
{
  result = qword_27CDF5240;
  if (!qword_27CDF5240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5210, &unk_21CBBD520);
    sub_21CA1D134();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5240);
  }

  return result;
}

unint64_t sub_21CA1D134()
{
  result = qword_27CDF5248;
  if (!qword_27CDF5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5250, &qword_21CBBD578);
    sub_21CA1D1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5248);
  }

  return result;
}

unint64_t sub_21CA1D1B8()
{
  result = qword_27CDF5258;
  if (!qword_27CDF5258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5260, &qword_21CBBD580);
    sub_21C9CF5E0();
    sub_21CA1CF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5258);
  }

  return result;
}

unint64_t sub_21CA1D260()
{
  result = qword_27CDF5270;
  if (!qword_27CDF5270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5268, &unk_21CBBD588);
    sub_21C830D18();
    sub_21C74DDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5270);
  }

  return result;
}

unint64_t sub_21CA1D2EC()
{
  result = qword_27CDF5278;
  if (!qword_27CDF5278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5280, &qword_21CBBD618);
    sub_21CA1D0A8();
    sub_21C706060(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5278);
  }

  return result;
}

uint64_t sub_21CA1D3D0()
{
  swift_getKeyPath(byte_21CBBD808);
  swift_getKeyPath(byte_21CBBD830);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA1D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v14[-v6];
  swift_getKeyPath(byte_21CBBD710, v5);
  swift_getKeyPath(asc_21CBBD738);
  sub_21CB81DB4();

  v15 = a1;
  sub_21C968E80(sub_21CA1EA74, v16, v7);

  v8 = type metadata accessor for PMSharingGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    swift_getKeyPath(byte_21CBBD6C0);
    swift_getKeyPath(byte_21CBBD6E8);
    sub_21CB81DB4();

    v12 = v16;
    MEMORY[0x28223BE20](v11);
    *&v14[-16] = a1;
    sub_21C968E80(sub_21CA1ECA4, v12, a2);

    result = v10(v7, 1, v8);
    if (result != 1)
    {
      return sub_21C6EA794(v7, &qword_27CDF7670, &unk_21CBAA8F0);
    }
  }

  else
  {
    sub_21C9C9820(v7, a2);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  return result;
}

uint64_t sub_21CA1D6BC()
{
  swift_getKeyPath(aH_87);
  swift_getKeyPath(asc_21CBBD780);
  sub_21CB81DB4();
}

uint64_t PMGroupsStore.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle))
  {

    sub_21CB85944();
  }

  v1 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__invitations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__groups, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__hasLoadedGroups;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__newlyCreatedGroup;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_provider));

  return v0;
}

uint64_t PMGroupsStore.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle))
  {

    sub_21CB85944();
  }

  v1 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__invitations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__groups, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__hasLoadedGroups;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__newlyCreatedGroup;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_provider));

  return swift_deallocClassInstance();
}

uint64_t sub_21CA1DB18(uint64_t a1)
{
  v20 = v1;
  v2 = sub_21CB86314();
  if (!v2)
  {
    v2 = swift_allocError();
  }

  v3 = v2;
  (*(*(v1 + 256) + 8))(*(v1 + 264), *(v1 + 248));
  *(v1 + 72) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {

    v6 = *(v1 + 80);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Groups stream failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v1 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_21CA1DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = *(type metadata accessor for PMSharingGroup(0) - 8);
  v4[20] = swift_task_alloc();
  v5 = sub_21CB85C44();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E0, &unk_21CBBD7E0);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90C0, &qword_21CBCADE0);
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E8, &qword_21CBBD7F0);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = sub_21CB858B4();
  v4[35] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v4[36] = v9;
  v4[37] = v8;

  return MEMORY[0x2822009F8](sub_21CA1E074, v9, v8);
}

uint64_t sub_21CA1E074()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52F0, &unk_21CBBD7F8);
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_21CB85924();
  sub_21C6EADEC(&qword_27CDED3E0, &qword_27CDF90C0, &qword_21CBCADE0, MEMORY[0x277D857C0]);
  sub_21CB85964();
  swift_beginAccess();
  v4 = sub_21CB858A4();
  v0[38] = v4;
  sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0, MEMORY[0x277D857B0]);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_21CA1E254;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 5, v4, v6);
}

uint64_t sub_21CA1E254()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_21CA1DB18;
  }

  else
  {
    v5 = sub_21CA1E3A8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CA1E3A8()
{
  v1 = v0 + 40;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath(byte_21CBBD6C0);
      swift_getKeyPath(byte_21CBBD6E8);
      *(v0 + 88) = v2;

      sub_21CB81DC4();
      swift_getKeyPath(byte_21CBBD710);
      swift_getKeyPath(asc_21CBBD738);
      *(v0 + 96) = v3;

      sub_21CB81DC4();
      v6 = [objc_opt_self() sharedProvider];
      v7 = [v6 hasLoadedGroups];

      swift_getKeyPath(byte_21CBBD808);
      swift_getKeyPath(byte_21CBBD830);
      *(v0 + 320) = v7;

      sub_21CB81DC4();
      *(v0 + 56) = v2;
      *(v0 + 64) = v3;

      sub_21CB81D24();

      swift_getKeyPath(byte_21CBBD6C0);
      swift_getKeyPath(byte_21CBBD6E8);
      sub_21CB81DB4();

      swift_getKeyPath(byte_21CBBD710);
      swift_getKeyPath(asc_21CBBD738);
      sub_21CB81DB4();

      v8 = *(v0 + 112);
      v9 = *(v8 + 16);
      v43 = v5;
      if (v9)
      {
        v10 = *(v0 + 152);
        *(v0 + 120) = MEMORY[0x277D84F90];
        sub_21C7B0BC8(0, v9, 0);
        v11 = *(v0 + 120);
        v12 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v13 = *(v10 + 72);
        do
        {
          v14 = *(v0 + 192);
          v16 = *(v0 + 168);
          v15 = *(v0 + 176);
          v17 = *(v0 + 160);
          sub_21C94B4A8(v12, v17);
          (*(v15 + 16))(v14, v17, v16);
          sub_21C979EE8(v17);
          *(v0 + 120) = v11;
          v19 = *(v11 + 16);
          v18 = *(v11 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_21C7B0BC8((v18 > 1), v19 + 1, 1);
            v11 = *(v0 + 120);
          }

          v20 = *(v0 + 192);
          v21 = *(v0 + 168);
          v22 = *(v0 + 176);
          *(v11 + 16) = v19 + 1;
          (*(v22 + 32))(v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v20, v21);
          v12 += v13;
          --v9;
        }

        while (v9);

        v5 = v43;
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }

      v25 = *(v0 + 168);
      v26 = *(v11 + 16);
      v27 = sub_21C703FA8();
      *(v0 + 128) = MEMORY[0x21CF154F0](v26, v25, v27);
      v28 = *(v11 + 16);
      if (v28)
      {
        v29 = *(v0 + 176);
        v30 = v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v44 = *(v29 + 16);
        v45 = *(v29 + 72);
        do
        {
          v31 = *(v0 + 200);
          v32 = *(v0 + 176);
          v33 = *(v0 + 184);
          v34 = *(v0 + 168);
          v44(v31, v30, v34);
          sub_21CA93D98(v33, v31);
          (*(v32 + 8))(v33, v34);
          v30 += v45;
          --v28;
        }

        while (v28);

        v1 = v0 + 40;
        v5 = v43;
      }

      else
      {
      }

      v35 = *(v5 + 16);
      v36 = qword_27CDEA4C0;

      if (v36 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v37 = sub_21C704000(v35, *(v0 + 136));

      v38 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
      v39 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
      __swift_project_boxed_opaque_existential_0((v37 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v38);
      (*(v39 + 40))(v38, v39);

      v40 = sub_21CB858A4();
      *(v0 + 304) = v40;
      sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0, MEMORY[0x277D857B0]);
      v41 = swift_task_alloc();
      *(v0 + 312) = v41;
      *v41 = v0;
      v41[1] = sub_21CA1E254;
      v42 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v1, v40, v42);
    }

    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  else
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  v23 = *(v0 + 8);

  return v23();
}

unint64_t sub_21CA1EAD0()
{
  result = qword_27CDF52D8;
  if (!qword_27CDF52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF52D8);
  }

  return result;
}

uint64_t sub_21CA1EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21C6F35D0;

  return sub_21CA1DE00(a1, a2, a3, a5);
}

uint64_t sub_21CA1EBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21CA1EB24(a1, v4, v5, sub_21CA1EB24, v6);
}

uint64_t sub_21CA1ECC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA1ED08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI34PMInvalidAccountAlertConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CA1ED68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA1EDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21CA1EE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v43 = *v2;
  v44 = v6;
  v8 = *v2;
  v7 = *(v2 + 16);
  v45 = *(v2 + 32);
  v46 = *(v2 + 48);
  v34 = v8;
  v9 = *(v2 + 32);
  v35 = v7;
  v36 = v9;
  v37 = *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  MEMORY[0x21CF14A20](&v40);
  v33 = a1;
  v32 = a2;
  if (!v41)
  {
    v15 = 0xE100000000000000;
    v13 = 63;
    goto LABEL_5;
  }

  result = [objc_opt_self() alertTitleForFailedAccountCreationWithErrorCode_];
  if (result)
  {
    v12 = result;
    v13 = sub_21CB855C4();
    v15 = v14;

LABEL_5:
    v27[1] = v15;
    v38 = v13;
    v39 = v15;
    sub_21CB858B4();
    sub_21CA1F678(v2, &v34);
    v16 = sub_21CB858A4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    v19 = *(v2 + 48);
    *(v17 + 64) = *(v2 + 32);
    *(v17 + 80) = v19;
    *(v17 + 96) = *(v2 + 64);
    v20 = *(v2 + 16);
    *(v17 + 32) = *v2;
    *(v17 + 48) = v20;
    sub_21CA1F678(v2, &v34);
    v21 = sub_21CB858A4();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    v23 = *(v3 + 48);
    *(v22 + 64) = *(v3 + 32);
    *(v22 + 80) = v23;
    *(v22 + 96) = *(v3 + 64);
    v24 = *(v3 + 16);
    *(v22 + 32) = *v3;
    *(v22 + 48) = v24;
    sub_21CB84F64();
    v29 = *(&v34 + 1);
    v30 = v34;
    v31 = v35;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v25 = MEMORY[0x21CF14A20](&v40, v10);
    v27[2] = v27;
    v26 = v40;
    v27[3] = *(&v41 + 1);
    v28 = v41;
    v34 = v40;
    v35 = v41;
    *&v36 = v42;
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5310, &unk_21CBBD9B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDF5318, &qword_27CDF5310, &unk_21CBBD9B0, MEMORY[0x277CE04B0]);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB84714();

    sub_21CA1F6D0(v26, *(&v26 + 1), v28);
  }

  __break(1u);
  return result;
}

id sub_21CA1F280(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() alertDismissActionTitleForFailedAccountCreation];
  if (result)
  {
    v5 = result;
    v6 = sub_21CB855C4();
    v8 = v7;

    v15 = v6;
    v16 = v8;
    v9 = *(a1 + 24);
    v17 = *(a1 + 8);
    v18 = v9;
    v10 = swift_allocObject();
    v11 = *(a2 + 48);
    *(v10 + 48) = *(a2 + 32);
    *(v10 + 64) = v11;
    v12 = *(a2 + 16);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v12;
    v13 = *(a1 + 16);
    *(v10 + 88) = *a1;
    *(v10 + 80) = *(a2 + 64);
    *(v10 + 104) = v13;
    *(v10 + 120) = *(a1 + 32);
    sub_21CA1F678(a2, v14);
    sub_21C805950(&v17, v14);
    sub_21C805950(&v18, v14);
    sub_21C71F3FC();
    return sub_21CB84DE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21CA1F3A8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = sub_21CB85584();
  v6 = sub_21CB85584();
  v7 = sub_21CB85584();
  v8 = [v7 safari_highLevelDomainFromHost];

  v9 = [v4 alertSubtitleForFailedAccountCreationWithErrorCode:v3 forUserTypedSite:v5 userTypedUsername:v6 highLevelDomain:v8];
  if (v9)
  {
    sub_21CB855C4();

    sub_21C71F3FC();
    *a2 = sub_21CB84054();
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v12;
  }

  else
  {
    __break(1u);
  }
}

void *sub_21CA1F4D0@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v11 = a1[2];
  v12 = *(a1 + 6);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  result = MEMORY[0x21CF14A20](v7, v4);
  v6 = v8;
  if (v8)
  {
    result = sub_21CA1F6D0(v7[0], v7[1], v8);
  }

  *a2 = v6 != 0;
  return result;
}

uint64_t sub_21CA1F554(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a4[1];
  v18[0] = *a4;
  v18[1] = v4;
  v6 = *a4;
  v5 = a4[1];
  v18[2] = a4[2];
  v19 = *(a4 + 6);
  v14 = v6;
  v15 = v5;
  v16 = a4[2];
  v17 = *(a4 + 6);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_21CA1F744(v18, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  sub_21CB84F34();
  v7 = v15;
  v8 = v16;

  return sub_21CA1F6D0(v7, *(&v7 + 1), v8);
}

uint64_t sub_21CA1F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21CA1F744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA1F7B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-1] - v7;
  v9 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_21CA21D54(a1, v20);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_21CA2259C(a1, &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMInboundOTPAuthURLContext);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  sub_21CA22534(&v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMInboundOTPAuthURLContext);
  v15 = (v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  v16 = type metadata accessor for PMAccount(0);
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  type metadata accessor for PMAccountPickerModel(0);
  swift_allocObject();

  v17 = sub_21C7A4DA0(v20, 0, sub_21C737480, v14, nullsub_1, 0, v8, nullsub_1, 0);
  swift_getKeyPath(asc_21CBBDAF0);
  swift_getKeyPath(asc_21CBBDB18);
  v19 = v17;

  return sub_21CB81DC4();
}

uint64_t sub_21CA1FA78()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_21CB86484();
  sub_21C737438(&qword_27CDF48D0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CB85494();
  v8 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  sub_21C6EDBAC(v0 + *(v8 + 20), v7, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_21CB864A4();
    sub_21CB85494();
    (*(v2 + 8))(v4, v1);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CA1FC8C()
{
  swift_getKeyPath(asc_21CBBDAF0);
  swift_getKeyPath(asc_21CBBDB18);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA1FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21C737438(&qword_27CDF48D0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CB85494();
  sub_21C6EDBAC(v2 + *(a2 + 20), v10, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_21CB864A4();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_21CB864A4();
  sub_21CB85494();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21CA1FF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21CB86484();
  sub_21C737438(&qword_27CDF48D0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CB85494();
  sub_21C6EDBAC(v2 + *(a2 + 20), v10, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_21CB864A4();
    sub_21CB85494();
    (*(v5 + 8))(v7, v4);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CA2015C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v34 - v7;
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for PMAccount(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1, v16, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  else
  {
    sub_21CA22534(v16, v20, type metadata accessor for PMAccount);
    sub_21CA2259C(&v20[*(v17 + 24)], v10, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719600(v10, type metadata accessor for PMAccount.Storage);
      sub_21C719600(v20, type metadata accessor for PMAccount);
    }

    else
    {
      v21 = *v10;
      v22 = objc_allocWithZone(MEMORY[0x277D49B78]);
      v23 = sub_21CB80B74();
      v24 = [v22 initWithOTPAuthURL_];

      if (v24)
      {
        v25 = sub_21CB858E4();
        v26 = v35;
        (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
        sub_21CB858B4();
        v27 = v21;
        v28 = v38;

        v29 = v24;
        v30 = sub_21CB858A4();
        v31 = swift_allocObject();
        v32 = MEMORY[0x277D85700];
        v31[2] = v30;
        v31[3] = v32;
        v31[4] = v29;
        v31[5] = v27;
        v31[6] = v37;
        v31[7] = v28;
        sub_21C98B308(0, 0, v26, &unk_21CBBDB48, v31);

        sub_21C719600(v20, type metadata accessor for PMAccount);
        goto LABEL_9;
      }

      sub_21C719600(v20, type metadata accessor for PMAccount);
    }
  }

  (*(v18 + 56))(v13, 1, 1, v17);
  v37(v13);
  sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(asc_21CBBDAF0);
    swift_getKeyPath(asc_21CBBDB18);
    v40 = 0;
    return sub_21CB81DC4();
  }

  return result;
}

uint64_t sub_21CA2062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v7[22] = swift_task_alloc();
  type metadata accessor for PMAccount.SIWAUniqueID(0);
  v7[23] = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  v7[24] = swift_task_alloc();
  v7[25] = type metadata accessor for PMAccount.UniqueID(0);
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for PMAccount.Storage(0);
  v7[28] = swift_task_alloc();
  v8 = type metadata accessor for PMAccount(0);
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();
  sub_21CB858B4();
  v7[32] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v7[33] = v10;
  v7[34] = v9;

  return MEMORY[0x2822009F8](sub_21CA20814, v10, v9);
}

uint64_t sub_21CA20814()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedStore];
  v0[35] = v3;
  v0[2] = v0;
  v0[3] = sub_21CA20960;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_27;
  v0[14] = v4;
  [v3 saveTOTPGenerator:v2 forSavedAccount:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CA20960()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_21CA20A68, v2, v1);
}

uint64_t sub_21CA20A68()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[19];

  *v3 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = (v2 + v4[7]);
  *v7 = 0u;
  v7[1] = 0u;
  sub_21CA2259C(v3, v2 + v4[6], type metadata accessor for PMAccount.Storage);
  v8 = v4[5];
  v9 = v6;
  sub_21C7C8A3C((v2 + v8));
  sub_21CA2259C(v2 + v8, v5, type metadata accessor for PMAccount.UniqueID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[23];
    sub_21CA22534(v11, v12, type metadata accessor for PMAccount.SIWAUniqueID);
    v13 = sub_21C7CE99C();
    v15 = v14;
    v16 = type metadata accessor for PMAccount.SIWAUniqueID;
  }

  else
  {
    v12 = v0[24];
    sub_21CA22534(v11, v12, type metadata accessor for PMAccount.CombinedUniqueID);
    v13 = sub_21C7CE408();
    v15 = v17;
    v16 = type metadata accessor for PMAccount.CombinedUniqueID;
  }

  sub_21C719600(v12, v16);
  v18 = v0[30];
  v19 = v0[31];
  v20 = v0[29];
  v21 = v0[22];
  v22 = v0[20];
  sub_21C719600(v0[28], type metadata accessor for PMAccount.Storage);
  *v19 = v13;
  v19[1] = v15;
  sub_21CA2259C(v19, v21, type metadata accessor for PMAccount);
  (*(v18 + 56))(v21, 0, 1, v20);
  v22(v21);
  sub_21C6EA794(v21, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C719600(v19, type metadata accessor for PMAccount);

  v23 = v0[1];

  return v23();
}

uint64_t sub_21CA20D14()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMInboundOTPAuthURLModel__pickerModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5378, &unk_21CBBDAE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21CA20E54(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBBDAF0);
  swift_getKeyPath(asc_21CBBDB18);

  return sub_21CB81DC4();
}

uint64_t sub_21CA20ED0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMAccountPickerModel(0);
  sub_21C737438(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);

  v3 = sub_21CB82674();
  v5 = v4;
  result = swift_getKeyPath(byte_21CBBDC08);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_21CA20F74()
{
  type metadata accessor for PMInboundOTPAuthURLModel(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABE0, &qword_21CB9FE10);
  sub_21CB81D74();
  return v0;
}

uint64_t sub_21CA20FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  MEMORY[0x21CF14A20](v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21C6EA794(v5, &qword_27CDF30D0, &qword_21CBBDC70);
  }

  sub_21CA22534(v5, v9, type metadata accessor for PMInboundOTPAuthURLContext);
  sub_21CA2259C(v9, v2, type metadata accessor for PMInboundOTPAuthURLContext);
  (*(v7 + 56))(v2, 0, 1, v6);
  sub_21CA211FC(v2);
  sub_21C6EA794(v2, &qword_27CDF30D0, &qword_21CBBDC70);
  return sub_21C719600(v9, type metadata accessor for PMInboundOTPAuthURLContext);
}

uint64_t sub_21CA211FC(uint64_t a1)
{
  v2 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1, v7, &qword_27CDF30D0, &qword_21CBBDC70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDF30D0, &qword_21CBBDC70);
    type metadata accessor for PMInboundOTPAuthURLModel(0);
    sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel, &unk_21CBBDA9C);
    sub_21CB82134();
    swift_getKeyPath(asc_21CBBDAF0);
    swift_getKeyPath(asc_21CBBDB18);
    v19 = 0;
    return sub_21CB81DC4();
  }

  else
  {
    sub_21CA22534(v7, v11, type metadata accessor for PMInboundOTPAuthURLContext);
    v13 = v18;
    type metadata accessor for PMInboundOTPAuthURLModel(0);
    sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel, &unk_21CBBDA9C);
    sub_21CB82134();
    sub_21CA2259C(v13, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
    v14 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v15 = swift_allocObject();
    sub_21CA22534(v4, v15 + v14, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
    sub_21CA1F7B4(v11, sub_21CA22ACC, v15);

    return sub_21C719600(v11, type metadata accessor for PMInboundOTPAuthURLContext);
  }
}

uint64_t sub_21CA215CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21C6EDBAC(v9, v6, &qword_27CDF30D0, &qword_21CBBDC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  sub_21CB84F34();
  sub_21C6EA794(v9, &qword_27CDF30D0, &qword_21CBBDC70);
  v11 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  return (*(a2 + *(v11 + 20)))(a1);
}

uint64_t sub_21CA21720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *(a2 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](a1);
  type metadata accessor for PMInboundOTPAuthURLModel(0);
  sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel, &unk_21CBBDA9C);
  sub_21CB82134();
  v7 = sub_21CB82674();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53B8, &qword_21CBBDCC8);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53C0, &qword_21CBBDCD0) + 36));
  *v11 = v7;
  v11[1] = v9;
  sub_21CA2259C(v3, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  v12 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v13 = swift_allocObject();
  sub_21CA22534(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53C8, &qword_21CBBDCD8) + 36));
  *v14 = sub_21CA22804;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53D0, &qword_21CBBDCE0) + 36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  MEMORY[0x21CF14A20](v16);
  sub_21CA2259C(v3, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  v17 = swift_allocObject();
  sub_21CA22534(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v12, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53D8, &qword_21CBBDCE8);
  v19 = (v15 + *(result + 36));
  *v19 = sub_21CA22A68;
  v19[1] = v17;
  return result;
}

BOOL sub_21CA21A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5368, &qword_21CBBDAD8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_21CB80B84() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for PMInboundOTPAuthURLContext(0) + 20);
  v15 = *(v11 + 48);
  sub_21C6EDBAC(a1 + v14, v13, &qword_27CDEC300, &qword_21CBA3ED0);
  sub_21C6EDBAC(a2 + v14, &v13[v15], &qword_27CDEC300, &qword_21CBA3ED0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21C6EA794(v13, &qword_27CDEC300, &qword_21CBA3ED0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21C6EDBAC(v13, v10, &qword_27CDEC300, &qword_21CBA3ED0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21C6EA794(v13, &qword_27CDF5368, &qword_21CBBDAD8);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_21C737438(&qword_27CDF5370, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v19 = sub_21CB85574();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_21C6EA794(v13, &qword_27CDEC300, &qword_21CBA3ED0);
  return (v19 & 1) != 0;
}

void *sub_21CA21D54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = *(type metadata accessor for PMInboundOTPAuthURLContext(0) + 20);
  v56 = a1;
  sub_21C6EDBAC(a1 + v13, v12, &qword_27CDEC300, &qword_21CBA3ED0);
  v14 = sub_21CB80BE4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_11:
    v23 = &v105;
    v105 = 0;
    v106 = 0;
    goto LABEL_12;
  }

  sub_21CB80BB4();
  v17 = v16;
  (*(v15 + 8))(v12, v14);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = sub_21CB85584();

  v19 = [v18 safari_highLevelDomainFromHost];

  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = sub_21CB855C4();
  v22 = v21;

  v23 = &v105;
  v105 = v20;
  v106 = v22;
  if (!v22)
  {
LABEL_12:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  *(&v55 + 1) = &v105;

  v24 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_21CA4F2EC(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_21CA4F2EC((v25 > 1), v26 + 1, 1, v24);
  }

  v23 = *(&v55 + 1);
  *(v24 + 2) = v26 + 1;
  v27 = &v24[16 * v26];
  *(v27 + 4) = v20;
  *(v27 + 5) = v22;
LABEL_13:
  sub_21C6EA794(v23, &unk_27CDED260, &qword_21CBA1C60);
  *(&v55 + 1) = sub_21CB009AC(v24);

  *&v55 = sub_21CB5E3D8();
  v62 = 1;
  v56 = [objc_opt_self() defaultContext];
  sub_21CB81014();
  sub_21CB81014();
  v28 = sub_21CB80FF4();
  v53 = v29;
  v54 = v28;
  v30 = *(v4 + 8);
  v30(v6, v3);
  v30(v9, v3);
  sub_21CB81014();
  sub_21CB81014();
  v31 = sub_21CB80FF4();
  v51 = v32;
  v52 = v31;
  v30(v6, v3);
  v30(v9, v3);
  sub_21CB81014();
  v33 = sub_21CB81004();
  v49 = v34;
  v50 = v33;
  v30(v9, v3);
  sub_21CB81014();
  v35 = sub_21CB81004();
  v47 = v36;
  v48 = v35;
  v30(v9, v3);
  sub_21CB81014();
  v37 = sub_21CB81004();
  v46 = v38;
  v30(v9, v3);
  sub_21CB81014();
  v39 = sub_21CB81004();
  v41 = v40;
  v30(v9, v3);
  sub_21CB81014();
  v42 = sub_21CB81004();
  v44 = v43;
  v30(v9, v3);
  LOBYTE(v65[0]) = 2;
  *(v65 + 1) = *v64;
  DWORD1(v65[0]) = *&v64[3];
  *(&v65[0] + 1) = 0;
  *&v65[1] = 0;
  *(&v65[1] + 1) = v54;
  *&v65[2] = v53;
  *(&v65[2] + 1) = v52;
  *&v65[3] = v51;
  *(&v65[3] + 1) = v50;
  v65[4] = v49;
  *&v65[5] = 0xE000000000000000;
  *(&v65[5] + 1) = v48;
  *&v65[6] = v47;
  *(&v65[6] + 1) = v37;
  *&v65[7] = v46;
  *(&v65[7] + 1) = v39;
  *&v65[8] = v41;
  *(&v65[8] + 1) = v42;
  *&v65[9] = v44;
  *(&v65[9] + 1) = 7;
  v65[10] = v55;
  memset(&v65[11], 0, 49);
  *(&v65[14] + 1) = *v63;
  DWORD1(v65[14]) = *&v63[3];
  *(&v65[14] + 8) = 0u;
  *(&v65[15] + 8) = 0u;
  *(&v65[16] + 1) = 0;
  LOWORD(v65[17]) = v62;
  *(&v65[17] + 2) = v60;
  WORD3(v65[17]) = v61;
  v65[18] = 0uLL;
  *(&v65[17] + 1) = 0;
  LOBYTE(v65[19]) = 1;
  *(&v65[19] + 1) = *v59;
  DWORD1(v65[19]) = *&v59[3];
  *(&v65[19] + 1) = v56;
  v66 = 2;
  *&v67[3] = *&v64[3];
  *v67 = *v64;
  v68 = 0;
  v69 = 0;
  v70 = v54;
  v71 = v53;
  v72 = v52;
  v73 = v51;
  v74 = v50;
  v75 = v49;
  v76 = 0;
  v77 = 0xE000000000000000;
  v78 = v48;
  v79 = v47;
  v80 = v37;
  v81 = v46;
  v82 = v39;
  v83 = v41;
  v84 = v42;
  v85 = v44;
  v86 = 7;
  v87 = v55;
  v91 = 0;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  *v92 = *v63;
  *&v92[3] = *&v63[3];
  v93 = 0u;
  v94 = 0u;
  v95 = 0;
  v96 = v62;
  v97 = v60;
  v98 = v61;
  v100 = 0;
  v99 = 0;
  v101 = 0;
  v102 = 1;
  *v103 = *v59;
  *&v103[3] = *&v59[3];
  v104 = v56;
  sub_21C7AE6B0(v65, &v58);
  sub_21C7ADFB8(&v66);
  return memcpy(v57, v65, 0x140uLL);
}

uint64_t sub_21CA22534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA2259C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA22604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21CA2062C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_21CA22720(uint64_t a1)
{
  sub_21C71A1D4(319, &qword_27CDF53A8, &qword_27CDF30D0, &qword_21CBBDC70, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C71F9F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CA22804()
{
  type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);

  return sub_21CA20FE4();
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30) + 32);
  v6 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_21CB80BE4();
    v13 = v4;
    v8 = *(v7 - 8);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v9 = *(v6 + 20);
    v10 = (*(v8 + 48))(v5 + v9, 1, v7);
    v4 = v13;
    if (!v10)
    {
      v12(v5 + v9, v7);
    }
  }

  sub_21C70AC30(*(v0 + v3 + *(v1 + 24)), *(v0 + v3 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CA22ACC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA215CC(a1, v4);
}

unint64_t sub_21CA22B3C()
{
  result = qword_27CDF53E0;
  if (!qword_27CDF53E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF53D0, &qword_21CBBDCE0);
    sub_21CA22BF4();
    sub_21C6EADEC(&qword_27CDF5400, &qword_27CDF53D8, &qword_21CBBDCE8, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF53E0);
  }

  return result;
}

unint64_t sub_21CA22BF4()
{
  result = qword_27CDF53E8;
  if (!qword_27CDF53E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF53C8, &qword_21CBBDCD8);
    sub_21CA22C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF53E8);
  }

  return result;
}

unint64_t sub_21CA22C80()
{
  result = qword_27CDF53F0;
  if (!qword_27CDF53F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF53C0, &qword_21CBBDCD0);
    sub_21C6EADEC(&qword_27CDF53F8, &qword_27CDF53B8, &qword_21CBBDCC8, MEMORY[0x277CE04B0]);
    sub_21C725B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF53F0);
  }

  return result;
}

uint64_t sub_21CA22D40()
{
  sub_21CB86484();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CA22DA8(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

unint64_t sub_21CA22E40()
{
  result = qword_27CDF5408;
  if (!qword_27CDF5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5408);
  }

  return result;
}

uint64_t sub_21CA22EA0(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() mainBundle];
  [v6 safari_isSafariFamilyApplicationBundle];

  v7 = [a1 passkeyCredential];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21CB80C84();
    v11 = v10;

    sub_21C7A34C0(v9, v11);
  }

  sub_21CB81014();
  v12 = sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t sub_21CA23068(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21CBA15B0;
  v7 = [a1 username];
  v8 = sub_21CB855C4();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v12 = sub_21C7C0050();
  *(v6 + 64) = v12;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v13 = [a1 highLevelDomain];
  v14 = sub_21CB855C4();
  v16 = v15;

  *(v6 + 96) = v11;
  *(v6 + 104) = v12;
  *(v6 + 72) = v14;
  *(v6 + 80) = v16;
  v17 = sub_21CB85594();

  return v17;
}

uint64_t sub_21CA23248(void **a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5 - 8];
  v7 = *a1;
  v8 = sub_21CB858E4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_21CB858B4();
  v9 = v7;
  sub_21C7380DC(a2, v17);
  v10 = sub_21CB858A4();
  v11 = swift_allocObject();
  v12 = *a2;
  *(v11 + 56) = a2[1];
  v13 = a2[3];
  *(v11 + 72) = a2[2];
  *(v11 + 88) = v13;
  v14 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v14;
  *(v11 + 32) = v7;
  *(v11 + 104) = *(a2 + 8);
  *(v11 + 40) = v12;
  sub_21C98B308(0, 0, v6, &unk_21CBBDFA8, v11);
}

uint64_t sub_21CA233A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_21CB858B4();
  v5[12] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_21CA23438, v7, v6);
}

uint64_t sub_21CA23438()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_21CA23518;

    return sub_21CA23744(v2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21CA23518()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21CA23638, v3, v2);
}

uint64_t sub_21CA23638()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v0[5] = *v1;
  v0[6] = v5;
  v0[2] = v3;
  v0[3] = v4;
  v0[4] = v5;
  v0[7] = 0;
  sub_21C74C770((v0 + 5), (v0 + 8));

  sub_21C7504F0((v0 + 6), (v0 + 9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5420, &qword_21CBBDF40);
  sub_21CB84F34();

  sub_21C7509C4((v0 + 5));

  sub_21C6EA794((v0 + 6), &qword_27CDF5470, &qword_21CBBDF88);
  v6 = v0[1];

  return v6();
}

uint64_t sub_21CA23744(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_21CB858B4();
  v2[11] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_21CA237DC, v4, v3);
}

uint64_t sub_21CA237DC()
{
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_21CB81C84();
  v0[14] = __swift_project_value_buffer(v2, qword_27CE186E0);
  v3 = v1;
  v4 = sub_21CB81C64();
  v5 = sub_21CB85AD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_21C6E5000, v4, v5, "Received sharable account: %@", v7, 0xCu);
    sub_21C6EA794(v8, &unk_27CDF76B0, &qword_21CBA2BE0);
    MEMORY[0x21CF16D90](v8, -1, -1);
    MEMORY[0x21CF16D90](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_21CA23998;
  v11 = v0[9];

  return sub_21CA24C60(v11);
}

uint64_t sub_21CA23998()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_21CA23AD4;
  }

  else
  {
    v5 = sub_21C8EC168;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CA23AD4()
{
  v27 = v0;
  v1 = *(v0 + 128);

  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 128);
  if (v3)
  {
    v5 = *(v0 + 72);

    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    if (*(v0 + 136))
    {
      *(v0 + 16) = *(v7 + 56);
      *(v0 + 56) = v5;
      v8 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
    }

    else
    {
      *(v0 + 32) = *(v7 + 40);
      *(v0 + 64) = v5;
      v22 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
    }

    sub_21CB84D64();
    v23 = *(v0 + 48);
  }

  else
  {

    v9 = v4;
    v10 = sub_21CB81C64();
    v11 = sub_21CB85AF4();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 128);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      v16 = sub_21CB80B04();
      v17 = [v16 safari_privacyPreservingDescription];

      v18 = sub_21CB855C4();
      v20 = v19;

      v21 = sub_21C98E004(v18, v20, &v26);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_21C6E5000, v10, v11, "Failed to save sharable account: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x21CF16D90](v15, -1, -1);
      MEMORY[0x21CF16D90](v14, -1, -1);

      goto LABEL_10;
    }

    v23 = v13;
  }

LABEL_10:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21CA23D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21CA23E9C, v4, v3);
}

uint64_t sub_21CA23E9C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];

  v0[5] = v4;
  v0[6] = v2;
  v0[7] = v3;
  v0[13] = 0;
  sub_21CB84F34();

  sub_21C7509C4((v0 + 8));

  sub_21C6EA794((v0 + 9), &qword_27CDF5470, &qword_21CBBDF88);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21CA23F60@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49 = a2;
  v52 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v45 - v15;
  MEMORY[0x28223BE20](v16);
  v48 = &v45 - v17;
  MEMORY[0x28223BE20](v18);
  v19 = *a1;
  v46 = &v45 - v20;
  v47 = v19;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v24 = *(v8 + 8);
  v45 = v8 + 8;
  v24(v10, v7);
  v53[0] = v21;
  v53[1] = v23;
  sub_21CB81EF4();
  v25 = sub_21CB81F14();
  (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v26 = sub_21CB81004();
  v28 = v27;
  v24(v10, v7);
  v53[9] = v26;
  v53[10] = v28;
  v29 = swift_allocObject();
  v30 = v49;
  v31 = *(v49 + 48);
  *(v29 + 48) = *(v49 + 32);
  *(v29 + 64) = v31;
  v32 = *(v30 + 64);
  v33 = *(v30 + 16);
  *(v29 + 16) = *v30;
  *(v29 + 32) = v33;
  v34 = v47;
  *(v29 + 80) = v32;
  *(v29 + 88) = v34;
  sub_21C7380DC(v30, v53);
  v35 = v34;
  v36 = v48;
  sub_21CB84DE4();
  v37 = *(v12 + 16);
  v38 = v50;
  v39 = v46;
  v37(v50, v46, v11);
  v40 = v51;
  v37(v51, v36, v11);
  v41 = v52;
  v37(v52, v38, v11);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v37(&v41[*(v42 + 48)], v40, v11);
  v43 = *(v12 + 8);
  v43(v36, v11);
  v43(v39, v11);
  v43(v40, v11);
  return (v43)(v38, v11);
}

void sub_21CA243E8(void *a1)
{
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v70);
  v8 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v71);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = objc_opt_self();
  v11 = [v74 sharedStore];
  v12 = [v11 savedAccounts];

  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v13 = sub_21CB85824();

  v76 = v8;
  v77 = v10;
  if (v13 >> 62)
  {
LABEL_41:
    v14 = sub_21CB85FA4();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_42:

    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v61 = sub_21CB81C84();
    __swift_project_value_buffer(v61, qword_27CE186E0);
    v62 = a1;
    v81 = sub_21CB81C64();
    v63 = sub_21CB85AF4();

    if (os_log_type_enabled(v81, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v62;
      *v65 = v62;
      v66 = v62;
      _os_log_impl(&dword_21C6E5000, v81, v63, "Failed to find matching saved account while attempting to save sharable account with password conflicts: %@", v64, 0xCu);
      sub_21C6EA794(v65, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v65, -1, -1);
      MEMORY[0x21CF16D90](v64, -1, -1);
    }

LABEL_46:
    v67 = v81;

    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_42;
  }

LABEL_3:
  v15 = 0;
  v80 = v13 & 0xFFFFFFFFFFFFFF8;
  v81 = (v13 & 0xC000000000000001);
  v16 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
  v78 = v14;
  v79 = v13;
  while (1)
  {
    if (v81)
    {
      v17 = MEMORY[0x21CF15BD0](v15, v13);
    }

    else
    {
      if (v15 >= *(v80 + 16))
      {
        goto LABEL_40;
      }

      v17 = *(v13 + 8 * v15 + 32);
    }

    v13 = v17;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = [v17 v16[239]];
    if (v19)
    {
      v20 = v19;
      v21 = sub_21CB855C4();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = v16;
    v25 = a1;
    v26 = [a1 v16[239]];
    v27 = sub_21CB855C4();
    v29 = v28;

    if (v23)
    {
      if (v21 == v27 && v23 == v29)
      {
      }

      else
      {
        v30 = sub_21CB86344();

        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v31 = [v13 user];
      if (v31)
      {
        v32 = v31;
        v33 = sub_21CB855C4();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v36 = [v25 username];
      v37 = sub_21CB855C4();
      v39 = v38;

      if (v35)
      {
        break;
      }
    }

LABEL_5:
    a1 = v25;
    ++v15;
    v13 = v79;
    v16 = v24;
    if (v18 == v78)
    {
      goto LABEL_42;
    }
  }

  if (v33 != v37 || v35 != v39)
  {
    v40 = sub_21CB86344();

    if (v40)
    {
      goto LABEL_29;
    }

LABEL_25:

    goto LABEL_5;
  }

LABEL_29:
  v41 = v74;

  v42 = v13;
  v43 = [v41 sharedStore];
  v81 = v42;
  v44 = [v25 username];
  v46 = v76;
  v45 = v77;
  if (!v44)
  {
    sub_21CB855C4();
    v44 = sub_21CB85584();
  }

  v47 = [v25 password];
  if (!v47)
  {
    sub_21CB855C4();
    v47 = sub_21CB85584();
  }

  [v43 changeSavedAccount:v81 toUser:v44 password:v47];

  [v25 savePasskeyAccountAndMergeIntoSavedPasswordAccountIfNeeded_];
  v48 = *(v75 + 24);
  if (!v48)
  {

    goto LABEL_46;
  }

  v49 = *(v75 + 32);
  *v46 = v81;
  swift_storeEnumTagMultiPayload();
  v50 = v71;
  v51 = &v45[*(v71 + 28)];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  sub_21CA25B14(v46, &v45[*(v50 + 24)], type metadata accessor for PMAccount.Storage);
  v52 = *(v50 + 20);
  v53 = v81;
  sub_21C71DD5C(v48, v49);
  sub_21C7C8A3C(&v45[v52]);
  v54 = v73;
  sub_21CA25B14(&v45[v52], v73, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v69;
    sub_21CA25B7C(v54, v69, type metadata accessor for PMAccount.SIWAUniqueID);
    v56 = sub_21C7CE99C();
    v58 = v57;
    v59 = type metadata accessor for PMAccount.SIWAUniqueID;
  }

  else
  {
    v55 = v68;
    sub_21CA25B7C(v54, v68, type metadata accessor for PMAccount.CombinedUniqueID);
    v56 = sub_21C7CE408();
    v58 = v60;
    v59 = type metadata accessor for PMAccount.CombinedUniqueID;
  }

  sub_21CA25BE4(v55, v59);
  sub_21CA25BE4(v46, type metadata accessor for PMAccount.Storage);
  *v45 = v56;
  *(v45 + 1) = v58;
  v48(v45);
  sub_21C71B710(v48, v49);

  sub_21CA25BE4(v45, type metadata accessor for PMAccount);
}

uint64_t sub_21CA24C60(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  type metadata accessor for PMAccount.SIWAUniqueID(0);
  v2[21] = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for PMAccount.UniqueID(0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for PMAccount.Storage(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for PMAccount(0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_21CB858B4();
  v2[32] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[33] = v4;
  v2[34] = v3;

  return MEMORY[0x2822009F8](sub_21CA24E04, v4, v3);
}

uint64_t sub_21CA24E04()
{
  v38 = v0;
  if (![*(v0 + 152) hasAnyCredentialData])
  {

    v10 = 0;
    goto LABEL_29;
  }

  if ([*(v0 + 152) hasPasswordWithConflicts])
  {

    v1 = [objc_opt_self() sharedStore];
    v2 = [v1 savedAccounts];

    sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    v3 = sub_21CB85824();

    if (v3 >> 62)
    {
LABEL_27:
      v4 = sub_21CB85FA4();
      if (v4)
      {
LABEL_5:
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x21CF15BD0](v5, v3);
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v9 = *(v0 + 152);
          v37[0] = v6;
          if (sub_21CA257B8(v37, v9))
          {
            break;
          }

          ++v5;
          if (v8 == v4)
          {
            goto LABEL_28;
          }
        }

        v13 = *(v0 + 152);
        v14 = *(v0 + 160);

        v15 = v7;
        [v13 savePasskeyAccountAndMergeIntoSavedPasswordAccountIfNeeded_];
        v16 = *(v14 + 24);
        if (v16)
        {
          v17 = *(v14 + 32);
          v18 = *(v0 + 248);
          v20 = *(v0 + 224);
          v19 = *(v0 + 232);
          v21 = *(v0 + 200);
          *v20 = v15;
          swift_storeEnumTagMultiPayload();
          v22 = (v18 + v19[7]);
          *v22 = 0u;
          v22[1] = 0u;
          sub_21CA25B14(v20, v18 + v19[6], type metadata accessor for PMAccount.Storage);
          v23 = v19[5];
          v24 = v15;
          sub_21C71DD5C(v16, v17);
          sub_21C7C8A3C((v18 + v23));
          sub_21CA25B14(v18 + v23, v21, type metadata accessor for PMAccount.UniqueID);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v26 = *(v0 + 200);
          if (EnumCaseMultiPayload == 1)
          {
            v27 = *(v0 + 168);
            sub_21CA25B7C(v26, v27, type metadata accessor for PMAccount.SIWAUniqueID);
            v28 = sub_21C7CE99C();
            v30 = v29;
            v31 = type metadata accessor for PMAccount.SIWAUniqueID;
          }

          else
          {
            v27 = *(v0 + 176);
            sub_21CA25B7C(v26, v27, type metadata accessor for PMAccount.CombinedUniqueID);
            v28 = sub_21C7CE408();
            v30 = v32;
            v31 = type metadata accessor for PMAccount.CombinedUniqueID;
          }

          sub_21CA25BE4(v27, v31);
          v33 = *(v0 + 248);
          sub_21CA25BE4(*(v0 + 224), type metadata accessor for PMAccount.Storage);
          *v33 = v28;
          v33[1] = v30;
          v16(v33);
          sub_21C71B710(v16, v17);

          sub_21CA25BE4(v33, type metadata accessor for PMAccount);
        }

        else
        {
        }

        v34 = *(v0 + 8);
        goto LABEL_30;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

LABEL_28:

    v10 = 1;
LABEL_29:
    sub_21CA25C44();
    swift_allocError();
    *v35 = v10;
    swift_willThrow();

    v34 = *(v0 + 8);
LABEL_30:

    return v34();
  }

  v11 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_21CA25394;
  v12 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5480, &qword_21CBC5B40);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21C82D1CC;
  *(v0 + 104) = &block_descriptor_28;
  *(v0 + 112) = v12;
  [v11 saveToKeychainWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21CA25394()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_21CA2549C, v2, v1);
}

uint64_t sub_21CA2549C()
{

  v1 = v0[18];
  if (v1)
  {
    v2 = v0[20];
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v2 + 32);
      v6 = v0[29];
      v5 = v0[30];
      v7 = v0[27];
      v8 = v0[24];
      *v7 = v1;
      swift_storeEnumTagMultiPayload();
      v9 = (v5 + v6[7]);
      *v9 = 0u;
      v9[1] = 0u;
      sub_21CA25B14(v7, v5 + v6[6], type metadata accessor for PMAccount.Storage);
      v10 = v6[5];
      sub_21C71DD5C(v3, v4);
      v11 = v1;
      sub_21C7C8A3C((v5 + v10));
      sub_21CA25B14(v5 + v10, v8, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = v0[24];
      if (EnumCaseMultiPayload == 1)
      {
        v14 = v0[21];
        sub_21CA25B7C(v13, v14, type metadata accessor for PMAccount.SIWAUniqueID);
        v15 = sub_21C7CE99C();
        v17 = v16;
        v18 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v14 = v0[22];
        sub_21CA25B7C(v13, v14, type metadata accessor for PMAccount.CombinedUniqueID);
        v15 = sub_21C7CE408();
        v17 = v21;
        v18 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21CA25BE4(v14, v18);
      v22 = v0[30];
      sub_21CA25BE4(v0[27], type metadata accessor for PMAccount.Storage);
      *v22 = v15;
      v22[1] = v17;
      v3(v22);
      sub_21C71B710(v3, v4);

      sub_21CA25BE4(v22, type metadata accessor for PMAccount);
    }

    else
    {
    }

    v20 = v0[1];
  }

  else
  {
    sub_21CA25C44();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_21CA257B8(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 highLevelDomain];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CB855C4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 highLevelDomain];
  v10 = sub_21CB855C4();
  v12 = v11;

  if (!v8)
  {
    goto LABEL_28;
  }

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_21CB86344();

    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v15 = [v3 user];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21CB855C4();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a2 username];
  v21 = sub_21CB855C4();
  v23 = v22;

  if (!v19)
  {
    goto LABEL_28;
  }

  if (v17 == v21 && v19 == v23)
  {

    goto LABEL_20;
  }

  v24 = sub_21CB86344();

  if (v24)
  {
LABEL_20:
    v25 = [v3 password];
    if (v25)
    {
      v26 = v25;
      v27 = sub_21CB855C4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v31 = [a2 password];
    v32 = sub_21CB855C4();
    v34 = v33;

    if (v29)
    {
      if (v27 == v32 && v29 == v34)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_21CB86344();
      }

      goto LABEL_29;
    }

LABEL_28:
    v30 = 0;
LABEL_29:

    return v30 & 1;
  }

LABEL_22:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_21CA25B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA25B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA25BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA25C44()
{
  result = qword_27CDF5478;
  if (!qword_27CDF5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5478);
  }

  return result;
}

uint64_t sub_21CA25C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21CA233A0(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for PMWiFiDetailsView(uint64_t a1)
{
  result = qword_27CDF5498;
  if (!qword_27CDF5498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA25DD0(uint64_t a1)
{
  sub_21CA25F14(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21CA25F14(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21CA25F14(319, &qword_27CDF54A8, type metadata accessor for PMWiFiDetailsModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CA25F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21CA25FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v6[0] = a1;
  v6[1] = a2;
  v5 = a3;
  return a4(v6, &v5);
}

double sub_21CA26010@<D0>(_OWORD *a1@<X8>)
{
  sub_21C7D7AC0();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21CA26060(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21CA2BC2C;
    *(v4 + 24) = v3;
  }

  sub_21C71DD5C(v1, v2);
  sub_21C7D7AC0();
  return sub_21CB82FA4();
}

uint64_t sub_21CA26148(uint64_t a1)
{
  v2 = sub_21CB82054();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82C04();
}

uint64_t sub_21CA26224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{

  sub_21CB84F74();
  sub_21CB81F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
  sub_21CB81F74();

  *(a8 + 88) = v19;
  *(a8 + 96) = v20;
  *(a8 + 104) = v21;
  *(a8 + 105) = 1;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) + 80);
  *(a8 + v13) = swift_getKeyPath(aX_57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = v22;
  *(a8 + 40) = v23;
  *(a8 + 48) = v24;
  *(a8 + 56) = v25;
  *(a8 + 64) = a3;
  *(a8 + 72) = a4;
  *(a8 + 80) = 0;

  a5(v14);
}

uint64_t sub_21CA263B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a0_43);
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v6 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21C968B34(v4, v5, v6);
}

uint64_t sub_21CA26478(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_21C968B34(*a1, v2, v3);
  return sub_21C9685CC(v1, v2, v3);
}

uint64_t sub_21CA264C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBE200);
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode);
  return result;
}

uint64_t sub_21CA265A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for PMWiFiDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54B0, &qword_21CBBE108);
  v6 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v8 = v20 - v7;
  sub_21CA2B6EC(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiDetailsView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_21CA2B54C(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v21 = sub_21CA2B5B0;
  v22 = v10;
  v20[4] = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54B8, &qword_21CBBE110);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54C0, &qword_21CBBE118);
  v13 = sub_21C6EADEC(&qword_27CDF54C8, &qword_27CDF54B8, &qword_21CBBE110, &unk_21CBA2240);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54D0, &qword_21CBBE120);
  v15 = sub_21CA2B5D0();
  v25 = v14;
  v26 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21CB84894();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v17 = v21;
  type metadata accessor for PMWiFiDetailsModel(0);
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB81124();
  v24 = OpaqueTypeConformance2;
  v25 = v17;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  swift_getOpaqueTypeConformance2();
  v18 = v20[0];
  sub_21CB84394();

  (*(v6 + 8))(v8, v18);
}

uint64_t sub_21CA26914@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5500, &qword_21CBBE1A0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v69 = v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5508, &qword_21CBBE1A8);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = v66 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5510, &qword_21CBBE1B0);
  MEMORY[0x28223BE20](v68);
  v70 = v66 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5518, &qword_21CBBE1B8);
  v9 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = v66 - v10;
  v11 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v66 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5520, &qword_21CBBE1C0);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5528, &qword_21CBBE1C8);
  v73 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v74 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v66 - v24;
  v84 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5530, &qword_21CBBE1D0);
  sub_21C6EADEC(&qword_27CDF5538, &qword_27CDF5530, &qword_21CBBE1D0, MEMORY[0x277CE14C0]);
  v82 = v25;
  sub_21CB85054();
  v26 = *(type metadata accessor for PMWiFiDetailsView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v81 = a1;
  v71 = v26;
  sub_21CB85084();
  v27 = v85;
  swift_getKeyPath(a0_44);
  v85 = v27;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v28 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v27 + v28, v16, type metadata accessor for PMWiFiNetwork);

  if (*(v16 + *(v11 + 36)) == 1)
  {
    sub_21CA2BCB4(v16, type metadata accessor for PMWiFiNetwork);
  }

  else
  {
    sub_21C807A74(v16);
    v30 = v29;
    sub_21CA2BCB4(v16, type metadata accessor for PMWiFiNetwork);
    if (v30)
    {

      v66[4] = v66;
      MEMORY[0x28223BE20](v31);
      v66[3] = &v66[-4];
      v66[-2] = v81;
      v32 = sub_21CB84AB4();
      sub_21CB85214();
      sub_21CB82374();
      v85 = v32;
      v86 = v91;
      LOBYTE(v87) = v92;
      v88 = v93;
      v89 = v94;
      v90 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5560, &qword_21CBBE1F0);
      sub_21CA2B89C();
      sub_21CB84494();

      v66[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5570, &qword_21CBBE1F8);
      v66[1] = sub_21CA2B920();
      v66[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC310, &unk_21CBA3F10);
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
      v35 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
      v85 = v34;
      v86 = MEMORY[0x277D837D0];
      v87 = v35;
      v88 = MEMORY[0x277D837E0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v37 = type metadata accessor for PMWiFiQRCodeView(255);
      v38 = sub_21CB83994();
      v39 = sub_21CA2BC6C(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
      v85 = v37;
      v86 = v38;
      v87 = v39;
      v88 = MEMORY[0x277CDE2B8];
      v40 = swift_getOpaqueTypeConformance2();
      v85 = v66[0];
      v86 = v33;
      v87 = OpaqueTypeConformance2;
      v88 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = v67;
      sub_21CB85034();
      v42 = v41;
      v43 = v72;
      (*(v9 + 32))(v83, v42, v72);
      v44 = v43;
      v45 = 0;
      v46 = v78;
      goto LABEL_6;
    }
  }

  v45 = 1;
  v46 = v78;
  v44 = v72;
LABEL_6:
  v47 = 1;
  (*(v9 + 56))(v83, v45, 1, v44);
  v48 = v81;
  sub_21CB85084();
  v49 = v85;
  swift_getKeyPath(a0_44);
  v85 = v49;
  sub_21CB810D4();

  v50 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v49 + v50, v13, type metadata accessor for PMWiFiNetwork);

  LOBYTE(v50) = v13[*(v11 + 36)];
  v51 = sub_21CA2BCB4(v13, type metadata accessor for PMWiFiNetwork);
  v52 = v77;
  v53 = v76;
  if ((v50 & 1) == 0)
  {
    MEMORY[0x28223BE20](v51);
    v66[-2] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5540, &unk_21CBBE1D8);
    sub_21CA2B76C();
    sub_21CA2B7C0();
    v54 = v69;
    sub_21CB85034();
    (*(v53 + 32))(v46, v54, v52);
    v47 = 0;
  }

  (*(v53 + 56))(v46, v47, 1, v52);
  v55 = v73;
  v56 = *(v73 + 16);
  v57 = v74;
  v56(v74, v82, v21);
  v58 = v21;
  v59 = v83;
  v60 = v75;
  sub_21C777948(v83, v75);
  v61 = v79;
  sub_21C6EDBAC(v46, v79, &qword_27CDF5508, &qword_21CBBE1A8);
  v62 = v80;
  v56(v80, v57, v58);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5558, &qword_21CBBE1E8);
  sub_21C777948(v60, &v62[*(v63 + 48)]);
  sub_21C6EDBAC(v61, &v62[*(v63 + 64)], &qword_27CDF5508, &qword_21CBBE1A8);
  sub_21C6EA794(v46, &qword_27CDF5508, &qword_21CBBE1A8);
  sub_21C6EA794(v59, &qword_27CDF5520, &qword_21CBBE1C0);
  v64 = *(v55 + 8);
  v64(v82, v58);
  sub_21C6EA794(v61, &qword_27CDF5508, &qword_21CBBE1A8);
  sub_21C6EA794(v60, &qword_27CDF5520, &qword_21CBBE1C0);
  return (v64)(v57, v58);
}

uint64_t sub_21CA27500@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - v5;
  v6 = type metadata accessor for PMWiFiDetailsView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = v9;
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v32 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC310, &unk_21CBA3F10);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x28223BE20](v13);
  v33 = type metadata accessor for PMWiFiDetailsView;
  v34 = &v31 - v15;
  sub_21CA2B6EC(v2, v10, type metadata accessor for PMWiFiDetailsView);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_21CA2B54C(v10, v17 + v16);
  sub_21CB84DA4();
  v18 = (v2 + *(v7 + 40));
  v19 = v18[1];
  v42 = *v18;
  v43 = v19;

  sub_21CB852C4();
  v20 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v21 = v41;
  sub_21CB845E4();

  (*(v32 + 8))(v12, v21);
  v23 = v35;
  v22 = v36;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBBE200);
  sub_21CB850B4();

  (*(v37 + 8))(v23, v22);
  sub_21CA2B6EC(v2, v10, v33);
  v24 = swift_allocObject();
  sub_21CA2B54C(v10, v24 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5010, &qword_21CBBCED8);
  v42 = v41;
  v43 = MEMORY[0x277D837D0];
  v44 = v20;
  v45 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  v25 = type metadata accessor for PMWiFiQRCodeView(255);
  v26 = sub_21CB83994();
  v27 = sub_21CA2BC6C(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v34;
  sub_21CB847B4();

  return (*(v39 + 8))(v29, v28);
}

uint64_t sub_21CA27A84@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v33 = &v33 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54F0, &qword_21CBBE138);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - v4;
  v5 = sub_21CB83604();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54E0, &unk_21CBBE128);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for PMWiFiNetwork(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54D0, &qword_21CBBE120);
  MEMORY[0x28223BE20](v38);
  v14 = &v33 - v13;
  type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v15 = a1;
  sub_21CB85084();
  v16 = v44;
  swift_getKeyPath(a0_44);
  v44 = v16;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v17 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v16 + v17, v12, type metadata accessor for PMWiFiNetwork);

  LOBYTE(v16) = v12[*(v10 + 44)];
  v18 = sub_21CA2BCB4(v12, type metadata accessor for PMWiFiNetwork);
  if (v16)
  {
    v19 = sub_21C8F0690();
    v20 = v33;
    MEMORY[0x21CF131E0](v19, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v19);
    v21 = sub_21C6EADEC(&qword_27CDF54E8, &qword_27CDF54E0, &unk_21CBBE128, MEMORY[0x277CDD7A8]);
    v42 = v6;
    v43 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v43 = v19;
    v23 = swift_getOpaqueTypeConformance2();
    v24 = v40;
    MEMORY[0x21CF13200](v20, v39, v40, OpaqueTypeConformance2, v23);
    (*(v35 + 8))(v20, v24);
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    *(&v33 - 2) = v15;
    sub_21CB835E4();
    type metadata accessor for PMShareWiFiNetworkButton(0);
    sub_21CA2BC6C(&qword_27CDF54F8, type metadata accessor for PMShareWiFiNetworkButton, &unk_21CBB9F0C);
    sub_21CB82194();
    v25 = sub_21C6EADEC(&qword_27CDF54E8, &qword_27CDF54E0, &unk_21CBBE128, MEMORY[0x277CDD7A8]);
    v26 = v36;
    MEMORY[0x21CF131E0](v8, v6, v25);
    v42 = v6;
    v43 = v25;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_21C8F0690();
    v42 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v43 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = v39;
    MEMORY[0x21CF131F0](v26, v39, v40, v27, v29);
    (*(v37 + 8))(v26, v30);
    (*(v34 + 8))(v8, v6);
  }

  v31 = sub_21CA2B5D0();
  MEMORY[0x21CF131E0](v14, v38, v31);
  return sub_21C6EA794(v14, &qword_27CDF54D0, &qword_21CBBE120);
}

uint64_t sub_21CA280C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  swift_getKeyPath(a0_44);
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v2 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v7 + v2, a1, type metadata accessor for PMWiFiNetwork);

  sub_21CB85084();
  v3 = sub_21C967FB4();

  v4 = type metadata accessor for PMShareWiFiNetworkButton(0);
  *(a1 + *(v4 + 20)) = v3 & 1;
  v5 = *(v4 + 24);
  *(a1 + v5) = swift_getKeyPath(byte_21CBBE168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CA2825C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C90, &qword_21CBB26F0);
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v170 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v185 = &v148 - v5;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BB8, &qword_21CBBE2B0);
  MEMORY[0x28223BE20](v168);
  v153 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v154 = &v148 - v8;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5580, &unk_21CBBE2B8);
  MEMORY[0x28223BE20](v166);
  v167 = &v148 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v10 - 8);
  v151 = &v148 - v11;
  v152 = sub_21CB83ED4();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5588, &qword_21CBBE2C8);
  MEMORY[0x28223BE20](v13 - 8);
  v169 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v184 = &v148 - v16;
  v188 = sub_21CB81024();
  v190 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v148 - v20;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v180);
  v23 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v187 = &v148 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v148 - v27;
  v174 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v174);
  v159 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v148 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5590, &qword_21CBBE2D8);
  MEMORY[0x28223BE20](v33 - 8);
  v182 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v148 - v36;
  v186 = *(type metadata accessor for PMWiFiDetailsView(0) + 24);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v38 = v200;
  swift_getKeyPath(a0_44);
  v200 = v38;
  v177 = sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v39 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  v179 = type metadata accessor for PMWiFiNetwork;
  sub_21CA2B6EC(v38 + v39, v32, type metadata accessor for PMWiFiNetwork);

  v40 = *(v32 + 2);
  v41 = *(v32 + 3);

  v178 = type metadata accessor for PMWiFiNetwork;
  sub_21CA2BCB4(v32, type metadata accessor for PMWiFiNetwork);
  v42 = sub_21CA29FEC();
  v191 = a1;
  v181 = v37;
  sub_21CA26224(v40, v41, v42, v43, sub_21CA2BB74, &qword_27CDF5590, &qword_21CBBE2D8, v37);
  sub_21CB81014();
  v183 = sub_21CB81004();
  *&v164 = v44;
  v46 = v190 + 8;
  v45 = *(v190 + 8);
  v47 = v188;
  v45(v21, v188);
  sub_21CB81014();
  sub_21CB81014();
  v157 = sub_21CB80FF4();
  v156 = v48;
  v165 = v18;
  v45(v18, v47);
  v158 = v21;
  v49 = a1;
  v176 = v45;
  v190 = v46;
  v45(v21, v47);
  sub_21CB85084();
  v50 = v199;
  swift_getKeyPath(a0_44);
  v199 = v50;
  sub_21CB810D4();

  v51 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v50 + v51, v32, v179);

  v52 = *(v32 + 3);
  v155 = *(v32 + 2);

  sub_21CA2BCB4(v32, v178);
  LOBYTE(v195) = 0;
  sub_21CB84D44();
  v53 = v198;
  v28[88] = v197;
  *(v28 + 12) = v53;
  LOBYTE(v195) = 0;
  sub_21CB84D44();
  v54 = v198;
  v28[104] = v197;
  *(v28 + 14) = v54;
  LOBYTE(v195) = 0;
  sub_21CB84D44();
  v55 = v198;
  v28[120] = v197;
  *(v28 + 16) = v55;
  LOBYTE(v195) = 0;
  sub_21CB84D44();
  v56 = v198;
  v28[136] = v197;
  *(v28 + 18) = v56;
  *(v28 + 19) = swift_getKeyPath(byte_21CBBE2E0);
  *(v28 + 20) = 0;
  v28[168] = 0;
  *(v28 + 22) = swift_getKeyPath(byte_21CBBE308);
  v28[184] = 0;
  v57 = v180;
  v58 = *(v180 + 116);
  *&v28[v58] = swift_getKeyPath(aX_57);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v59 = &v28[v57[30]];
  v60 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  v61 = sub_21CA2BC6C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  v162 = v60;
  v160 = v61;
  *v59 = sub_21CB823C4();
  v59[1] = v62;
  v161 = type metadata accessor for PMWiFiDetailsModel(0);
  sub_21CB821F4();
  *&v28[v57[32]] = 0;
  v63 = &v28[v57[33]];
  *v63 = 0x707954656772616CLL;
  *(v63 + 1) = 0xE900000000000065;
  v64 = v164;
  *v28 = v183;
  *(v28 + 1) = v64;
  v65 = v156;
  *(v28 + 2) = v157;
  *(v28 + 3) = v65;
  *(v28 + 4) = v155;
  *(v28 + 5) = v52;
  *(v28 + 6) = 0;
  v28[56] = 1;
  *(v28 + 57) = 0;
  *(v28 + 8) = 0;
  *(v28 + 9) = 0;
  *&v66 = 257;
  v164 = v66;
  *(v28 + 20) = 257;
  *(v28 + 42) = 256;
  v183 = v28;
  v28[86] = 0;
  sub_21CB85084();
  v67 = v197;
  swift_getKeyPath(a0_44);
  v197 = v67;
  sub_21CB810D4();

  v68 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  v69 = v67 + v68;
  v70 = v159;
  sub_21CA2B6EC(v69, v159, v179);

  v71 = *(v70 + 32);
  v72 = *(v70 + 40);

  sub_21CA2BCB4(v70, v178);
  v175 = v49;
  if (v72)
  {
    sub_21CB85084();
    v73 = v195;
    swift_getKeyPath(a0_44);
    v195 = v73;
    sub_21CB810D4();

    v74 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
    swift_beginAccess();
    sub_21CA2B6EC(v73 + v74, v32, type metadata accessor for PMWiFiNetwork);

    LOBYTE(v73) = v32[*(v174 + 36)];
    sub_21CA2BCB4(v32, type metadata accessor for PMWiFiNetwork);
    if ((v73 & 1) == 0)
    {
      v189 = v71;
      v107 = v158;
      sub_21CB81014();
      v108 = v165;
      sub_21CB81014();
      v186 = sub_21CB80FF4();
      v179 = v109;
      v110 = v188;
      v111 = v176;
      v176(v108, v188);
      v111(v107, v110);
      sub_21CB81014();
      sub_21CB81014();
      v178 = sub_21CB80FF4();
      v113 = v112;
      v111(v108, v110);
      v111(v107, v110);
      v114 = v150;
      v115 = v149;
      v116 = v152;
      (*(v150 + 104))(v149, *MEMORY[0x277CE0A68], v152);
      v117 = *MEMORY[0x277CE0980];
      v118 = sub_21CB83DC4();
      v119 = *(v118 - 8);
      v120 = v151;
      (*(v119 + 104))(v151, v117, v118);
      (*(v119 + 56))(v120, 0, 1, v118);
      v121 = sub_21CB83E24();
      sub_21C6EA794(v120, &qword_27CDEBB58, &qword_21CBAF8A0);
      (*(v114 + 8))(v115, v116);
      LOBYTE(v193) = 0;
      sub_21CB84D44();
      v122 = v196;
      v123 = v187;
      *(v187 + 88) = v195;
      *(v123 + 96) = v122;
      LOBYTE(v193) = 0;
      sub_21CB84D44();
      v124 = v196;
      *(v123 + 104) = v195;
      *(v123 + 112) = v124;
      LOBYTE(v193) = 0;
      sub_21CB84D44();
      v125 = v196;
      *(v123 + 120) = v195;
      *(v123 + 128) = v125;
      LOBYTE(v193) = 0;
      sub_21CB84D44();
      v126 = v196;
      *(v123 + 136) = v195;
      *(v123 + 144) = v126;
      *(v123 + 152) = swift_getKeyPath(byte_21CBBE2E0);
      *(v123 + 160) = 0;
      *(v123 + 168) = 0;
      *(v123 + 176) = swift_getKeyPath(byte_21CBBE308);
      *(v123 + 184) = 0;
      v127 = v180;
      v128 = *(v180 + 116);
      *(v123 + v128) = swift_getKeyPath(aX_57);
      swift_storeEnumTagMultiPayload();
      v129 = (v123 + v127[30]);
      *v129 = sub_21CB823C4();
      v129[1] = v130;
      sub_21CB821F4();
      *(v123 + v127[32]) = 0;
      v131 = (v123 + v127[33]);
      *v131 = 0x707954656772616CLL;
      v131[1] = 0xE900000000000065;
      v132 = v179;
      *v123 = v186;
      *(v123 + 8) = v132;
      *(v123 + 16) = v178;
      *(v123 + 24) = v113;
      *(v123 + 32) = v189;
      *(v123 + 40) = v72;
      *(v123 + 48) = v121;
      *(v123 + 56) = 1;
      *(v123 + 57) = 1;
      *(v123 + 64) = 0;
      *(v123 + 72) = 0;
      *(v123 + 80) = v164;
      *(v123 + 84) = 256;
      *(v123 + 86) = 0;
      v102 = &qword_27CDF1B78;
      v103 = &qword_21CBBE2D0;
      sub_21C6EDBAC(v123, v167, &qword_27CDF1B78, &qword_21CBBE2D0);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
      sub_21C943548();
      v105 = v184;
      sub_21CB83494();
      v106 = v123;
      goto LABEL_6;
    }
  }

  v75 = v158;
  sub_21CB81014();
  v76 = v165;
  sub_21CB81014();
  v179 = sub_21CB80FF4();
  v178 = v77;
  v78 = v188;
  v79 = v176;
  v176(v76, v188);
  v79(v75, v78);
  sub_21CB81014();
  sub_21CB81014();
  v159 = sub_21CB80FF4();
  v157 = v80;
  v79(v76, v78);
  v79(v75, v78);
  sub_21CB85084();
  v81 = v195;
  swift_getKeyPath(a0_44);
  v195 = v81;
  sub_21CB810D4();

  v82 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v81 + v82, v32, type metadata accessor for PMWiFiNetwork);

  sub_21CA2BCB4(v32, type metadata accessor for PMWiFiNetwork);
  sub_21CB81014();
  v83 = sub_21CB81004();
  v85 = v84;
  v176(v75, v188);
  v192 = 0;
  sub_21CB84D44();
  v86 = v194;
  v23[88] = v193;
  *(v23 + 12) = v86;
  v192 = 0;
  sub_21CB84D44();
  v87 = v194;
  v23[104] = v193;
  *(v23 + 14) = v87;
  v192 = 0;
  sub_21CB84D44();
  v88 = v194;
  v23[120] = v193;
  *(v23 + 16) = v88;
  v192 = 0;
  sub_21CB84D44();
  v89 = v194;
  v23[136] = v193;
  *(v23 + 18) = v89;
  *(v23 + 19) = swift_getKeyPath(byte_21CBBE2E0);
  *(v23 + 20) = 0;
  v23[168] = 0;
  *(v23 + 22) = swift_getKeyPath(byte_21CBBE308);
  v23[184] = 0;
  v90 = v180;
  v91 = *(v180 + 116);
  *&v23[v91] = swift_getKeyPath(aX_57);
  swift_storeEnumTagMultiPayload();
  v92 = &v23[v90[30]];
  *v92 = sub_21CB823C4();
  v92[1] = v93;
  sub_21CB821F4();
  *&v23[v90[32]] = 0;
  v94 = &v23[v90[33]];
  *v94 = 0x707954656772616CLL;
  *(v94 + 1) = 0xE900000000000065;
  v95 = v178;
  *v23 = v179;
  *(v23 + 1) = v95;
  v96 = v157;
  *(v23 + 2) = v159;
  *(v23 + 3) = v96;
  *(v23 + 4) = v83;
  *(v23 + 5) = v85;
  *(v23 + 6) = 0;
  v23[56] = 1;
  *(v23 + 57) = 0;
  *(v23 + 8) = 0;
  *(v23 + 9) = 0;
  *(v23 + 20) = v164;
  *(v23 + 42) = 256;
  v23[86] = 0;
  KeyPath = swift_getKeyPath(aP_77);
  v98 = swift_allocObject();
  *(v98 + 16) = 1;
  v99 = v23;
  v100 = v153;
  sub_21C716934(v99, v153, &qword_27CDF1B78, &qword_21CBBE2D0);
  v101 = (v100 + *(v168 + 36));
  *v101 = KeyPath;
  v101[1] = sub_21C73574C;
  v101[2] = v98;
  v102 = &qword_27CDF1BB8;
  v103 = &qword_21CBBE2B0;
  v104 = v154;
  sub_21C716934(v100, v154, &qword_27CDF1BB8, &qword_21CBBE2B0);
  sub_21C6EDBAC(v104, v167, &qword_27CDF1BB8, &qword_21CBBE2B0);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
  sub_21C943548();
  v105 = v184;
  sub_21CB83494();
  v106 = v104;
LABEL_6:
  sub_21C6EA794(v106, v102, v103);
  v133 = v175;
  v134 = sub_21CB85184();
  MEMORY[0x28223BE20](v134);
  *(&v148 - 2) = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  sub_21C831C64();
  v135 = v185;
  sub_21CB851A4();
  v136 = v182;
  sub_21C6EDBAC(v181, v182, &qword_27CDF5590, &qword_21CBBE2D8);
  v137 = v187;
  sub_21C6EDBAC(v183, v187, &qword_27CDF1B78, &qword_21CBBE2D0);
  v138 = v169;
  sub_21C6EDBAC(v105, v169, &qword_27CDF5588, &qword_21CBBE2C8);
  v139 = v172;
  v140 = *(v172 + 16);
  v141 = v170;
  v142 = v173;
  v140(v170, v135, v173);
  v143 = v136;
  v144 = v171;
  sub_21C6EDBAC(v143, v171, &qword_27CDF5590, &qword_21CBBE2D8);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5598, &qword_21CBBE3A8);
  sub_21C6EDBAC(v137, v144 + v145[12], &qword_27CDF1B78, &qword_21CBBE2D0);
  sub_21C6EDBAC(v138, v144 + v145[16], &qword_27CDF5588, &qword_21CBBE2C8);
  v140((v144 + v145[20]), v141, v142);
  v146 = *(v139 + 8);
  v146(v185, v142);
  sub_21C6EA794(v184, &qword_27CDF5588, &qword_21CBBE2C8);
  sub_21C6EA794(v183, &qword_27CDF1B78, &qword_21CBBE2D0);
  sub_21C6EA794(v181, &qword_27CDF5590, &qword_21CBBE2D8);
  v146(v141, v142);
  sub_21C6EA794(v138, &qword_27CDF5588, &qword_21CBBE2C8);
  sub_21C6EA794(v187, &qword_27CDF1B78, &qword_21CBBE2D0);
  return sub_21C6EA794(v182, &qword_27CDF5590, &qword_21CBBE2D8);
}

uint64_t sub_21CA29BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v9 = v20;
  swift_getKeyPath(a0_44);
  v20 = v9;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v9 + v10, v8, type metadata accessor for PMWiFiNetwork);

  if (v8[*(v6 + 36)] & 1) != 0 || (v8[*(v6 + 52)])
  {
    sub_21CB81014();
    v11 = sub_21CB81004();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = PMWiFiNetwork.localizedSecurityType.getter();
    v13 = v14;
  }

  sub_21CA2BCB4(v8, type metadata accessor for PMWiFiNetwork);
  v19[1] = v11;
  v19[2] = v13;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_21CA29ECC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA29FEC()
{
  v0 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB85174();
  result = 0;
  if ((v3 & 1) == 0)
  {
    type metadata accessor for PMWiFiDetailsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
    sub_21CB85084();
    v5 = v10;
    swift_getKeyPath(a0_44);
    v10 = v5;
    sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB810D4();

    v6 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
    swift_beginAccess();
    sub_21CA2B6EC(v5 + v6, v2, type metadata accessor for PMWiFiNetwork);

    sub_21CB85084();
    v7 = sub_21C967FB4();

    countAndFlagsBits = PMWiFiNetwork.userVisibleType(isActive:)(v7 & 1)._countAndFlagsBits;
    sub_21CA2BCB4(v2, type metadata accessor for PMWiFiNetwork);
    return countAndFlagsBits;
  }

  return result;
}

uint64_t sub_21CA2A1C4()
{
  v0 = type metadata accessor for PMWiFiIcon(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21CB85174())
  {
    v3 = 8.18181818;
  }

  else
  {
    v3 = 7.63636364;
  }

  if (sub_21CB85174())
  {
    v4 = 60.0;
  }

  else
  {
    v4 = 56.0;
  }

  if (sub_21CB85174())
  {
    v5 = 34.2857143;
  }

  else
  {
    v5 = 32.0;
  }

  v6 = v0[5];
  type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v7 = v14;
  swift_getKeyPath(a0_44);
  v14 = v7;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v8 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v7 + v8, v2 + v6, type metadata accessor for PMWiFiNetwork);

  v9 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v9 - 8) + 56))(v2 + v6, 0, 1, v9);
  sub_21CB85084();
  v10 = sub_21C967FB4();

  *v2 = v3;
  v2[1] = v4;
  v2[2] = v4;
  v2[3] = v5;
  *(v2 + v0[6]) = v10 & 1;
  v11 = v0[7];
  *(v2 + v11) = swift_getKeyPath(byte_21CBBE168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21CA2BC6C(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon, &unk_21CBBA264);
  sub_21CB84494();
  return sub_21CA2BCB4(v2, type metadata accessor for PMWiFiIcon);
}

uint64_t sub_21CA2A4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - v6;
  v8 = type metadata accessor for PMWiFiDetailsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - v12;
  sub_21CB81ED4();
  v14 = sub_21CB81F14();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_21CA2B6EC(a1, v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiDetailsView);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_21CA2B54C(v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_21CB84D94();
  sub_21CB85094();
  swift_getKeyPath(a0_43);
  sub_21CB850B4();

  (*(v5 + 8))(v7, v4);
  v17 = v31[3];
  v18 = v31[4];
  v19 = v31[5];
  v20 = v31[6];
  v21 = v31[7];
  KeyPath = swift_getKeyPath(byte_21CBBE288);
  v30[1] = v17;
  v30[2] = v18;
  v30[3] = v19;
  v30[4] = v20;
  v30[5] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
  MEMORY[0x21CF14A20](v31, v23);
  v24 = v31[0];
  if (v31[0])
  {
    v25 = v31[1];
    v26 = v31[2];

    sub_21C968AF4(v27, v25, v26);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5540, &unk_21CBBE1D8);
  v29 = (a2 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  v29[4] = v20;
  v29[5] = v21;
  v29[6] = v24;
  return result;
}

uint64_t sub_21CA2A824(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiDetailsView(0);
  v22[0] = *(v2 - 8);
  v3 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v8 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7730, &unk_21CBA0E60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  sub_21CB85084();
  v10 = v23;
  swift_getKeyPath(a0_44);
  v23 = v10;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v11 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v10 + v11, v7, type metadata accessor for PMWiFiNetwork);

  v13 = *v7;
  v12 = v7[1];

  sub_21CA2BCB4(v7, type metadata accessor for PMWiFiNetwork);
  *(v9 + 32) = v13;
  *(v9 + 40) = v12;
  sub_21CA2B6EC(a1, v4, type metadata accessor for PMWiFiDetailsView);
  v14 = (*(v22[0] + 80) + 16) & ~*(v22[0] + 80);
  v15 = swift_allocObject();
  sub_21CA2B54C(v4, v15 + v14);
  v16 = (v8 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v17 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  if (v17 && (v18 = v16[1], v19 = v16[2], (sub_21C9675F0(*(v8 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration), v9) & 1) != 0))
  {
    *v16 = v9;
    v16[1] = sub_21CA2BAC8;
    v16[2] = v15;
    sub_21C968AF4(v17, v18, v19);
  }

  else
  {
    KeyPath = swift_getKeyPath(a0_43, v22[0]);
    MEMORY[0x28223BE20](KeyPath);
    v22[-4] = v8;
    v22[-3] = v9;
    v22[-2] = sub_21CA2BAC8;
    v22[-1] = v15;
    v22[2] = v8;
    sub_21CB810C4();
  }
}

uint64_t sub_21CA2ABD8()
{
  v0 = sub_21CB823B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v7 = v13;
  v8 = *(v13 + 16);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v8, v13);

  swift_getKeyPath(a0_44);
  v13 = v7;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v7 + v10, v6, type metadata accessor for PMWiFiNetwork);
  sub_21CB634FC(v6);

  sub_21CA2BCB4(v6, type metadata accessor for PMWiFiNetwork);

  sub_21C95B2C8(v3);
  sub_21CB823A4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21CA2AE90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA2AFBC()
{
  type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) == 1)
  {
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBBE200);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB810C4();
  }
}

uint64_t sub_21CA2B118@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA2B244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMWiFiQRCodeView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMWiFiDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v11 = v17;
  swift_getKeyPath(a0_44, v16[0]);
  v17 = v11;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v12 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v11 + v12, v9, type metadata accessor for PMWiFiNetwork);

  *&v9[*(v7 + 20)] = swift_getKeyPath(asc_21CBBE228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v13 = (a1 + *(v10 + 32));
  v14 = v13[1];
  v16[1] = *v13;
  v16[2] = v14;

  sub_21CB852C4();
  sub_21CB834F4();

  sub_21CA2BC6C(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
  sub_21CB84524();
  (*(v4 + 8))(v6, v3);
  return sub_21CA2BCB4(v9, type metadata accessor for PMWiFiQRCodeView);
}

uint64_t sub_21CA2B54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA2B5D0()
{
  result = qword_27CDF54D8;
  if (!qword_27CDF54D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54D0, &qword_21CBBE120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54E0, &unk_21CBBE128);
    sub_21C6EADEC(&qword_27CDF54E8, &qword_27CDF54E0, &unk_21CBBE128, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF54D8);
  }

  return result;
}

uint64_t sub_21CA2B6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA2B76C()
{
  result = qword_27CDF5548;
  if (!qword_27CDF5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5548);
  }

  return result;
}

unint64_t sub_21CA2B7C0()
{
  result = qword_27CDF5550;
  if (!qword_27CDF5550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5540, &unk_21CBBE1D8);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CA1AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5550);
  }

  return result;
}

unint64_t sub_21CA2B89C()
{
  result = qword_27CDF5568;
  if (!qword_27CDF5568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5560, &qword_21CBBE1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5568);
  }

  return result;
}

unint64_t sub_21CA2B920()
{
  result = qword_27CDF5578;
  if (!qword_27CDF5578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5510, &qword_21CBBE1B0);
    sub_21CA2B89C();
    sub_21CA2BC6C(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5578);
  }

  return result;
}

uint64_t sub_21CA2BA0C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CA2BAE0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CA2BC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

uint64_t sub_21CA2BC6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA2BCB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI24PMSecurityRecommendationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CA2BD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v32 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[3];
  *&v39[16] = v2[2];
  *&v39[32] = v7;
  v40 = *(v2 + 8);
  v8 = v2[1];
  v38 = *v2;
  *v39 = v8;
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v34 = v9;
  v35 = v11;
  sub_21C71F3FC();
  v31 = sub_21CB84054();
  v13 = v12;
  v15 = v14;
  v27[1] = v16;
  v29 = *(&v38 + 1);
  v30 = v38;
  v28 = v39[0];
  v41[0] = *&v39[8];
  v41[1] = *&v39[24];
  v36 = *&v39[8];
  v37 = *&v39[24];
  v17 = swift_allocObject();
  v18 = *&v39[32];
  *(v17 + 48) = *&v39[16];
  *(v17 + 64) = v18;
  *(v17 + 80) = v40;
  v19 = *v39;
  *(v17 + 16) = v38;
  *(v17 + 32) = v19;
  v20 = swift_allocObject();
  v21 = *&v39[32];
  *(v20 + 48) = *&v39[16];
  *(v20 + 64) = v21;
  *(v20 + 80) = v40;
  v22 = *v39;
  *(v20 + 16) = v38;
  *(v20 + 32) = v22;
  sub_21CA2C61C(&v38, &v34);
  sub_21CA2C61C(&v38, &v34);
  sub_21CA2C654(v41, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55B0, &qword_21CBBE4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  sub_21C6EADEC(&qword_27CDF55B8, &qword_27CDF55B0, &qword_21CBBE4B8, MEMORY[0x277CE04B0]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  v24 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v34 = v23;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_21CB843F4();
  sub_21C74A72C(v25, v13, v15 & 1);

  sub_21C7D33F0(v36, *(&v36 + 1), v37, *(&v37 + 1));
}

uint64_t sub_21CA2C148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v22 = sub_21CB82A04();
  v21[0] = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = a1[3];
  v15 = swift_allocObject();
  v16 = *(a2 + 48);
  *(v15 + 48) = *(a2 + 32);
  *(v15 + 64) = v16;
  v17 = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v18;
  *(v15 + 80) = v17;
  *(v15 + 88) = v11;
  *(v15 + 96) = v12;
  *(v15 + 104) = v13;
  *(v15 + 112) = v14;
  sub_21CA2C61C(a2, v23);

  v19 = v14;
  sub_21CB84DA4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB84334();
  (*(v21[0] + 8))(v6, v22);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21CA2C3BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA2C4E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CA2C654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A8, &qword_21CBBE4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA2C6C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v6[0] = *(v0 + 88);
  v6[1] = v1;
  v7 = v2;
  v8 = v3;
  return v4(v6);
}

uint64_t sub_21CA2C73C(__n128 a1)
{
  v2 = sub_21CB809E4();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55C0, &qword_21CBBE558);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55C8, &qword_21CBBE560);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = v1[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v1[2] & 0xFFFFFFFFFFFFLL;
  }

  v13 = v1[1];
  if (v12)
  {
    sub_21CA2CA14(*v1, v13, v11, v1[4], v4);
    v14 = sub_21CB84044();
    v16 = v15;
    v27 = v14;
    v28 = v15;
    v18 = v17 & 1;
    v29 = v17 & 1;
    v30 = v19;
    sub_21CB845C4();
    sub_21C74A72C(v14, v16, v18);
  }

  else
  {
    v27 = *v1;
    v28 = v13;
    sub_21C71F3FC();

    v20 = sub_21CB84054();
    v22 = v21;
    v27 = v20;
    v28 = v21;
    v24 = v23 & 1;
    v29 = v23 & 1;
    v30 = v25;
    sub_21CB845C4();
    sub_21C74A72C(v20, v22, v24);
  }

  sub_21C6EDBAC(v10, v7, &qword_27CDF55C8, &qword_21CBBE560);
  swift_storeEnumTagMultiPayload();
  sub_21C74A7F4();
  sub_21CB83494();
  return sub_21C6EA794(v10, &qword_27CDF55C8, &qword_21CBBE560);
}

void sub_21CA2CA14(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v97 = a3;
  v98 = a4;
  v70 = a5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55D8, &qword_21CBBE568);
  MEMORY[0x28223BE20](v86);
  v85 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v69 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55E0, &qword_21CBBE570);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55E8, &qword_21CBBE578);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v17 = sub_21CB809B4();
  v91 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v93 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v94 = &v69 - v20;
  v21 = sub_21CB80A44();
  MEMORY[0x28223BE20](v21 - 8);
  v95 = sub_21CB809E4();
  v71 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;

  sub_21CB80A34();
  sub_21CB809F4();
  v100 = sub_21CB84B34();
  v81 = sub_21CA2D49C();
  sub_21CB80A04();
  v26 = *MEMORY[0x277CBECE8];
  v27 = CFLocaleCopyCurrent();
  v101.location = 0;
  v101.length = 0;
  v28 = CFStringTokenizerCreate(v26, 0, v101, 0, v27);

  if (v28)
  {
    v29 = objc_opt_self();
    v30 = sub_21CB85584();
    v31 = sub_21CB85584();
    v32 = [v29 searchMatchWithTokenizer:v28 string:v30 searchPattern:v31 matchingType:v98];

    if (v32)
    {
      v88 = v28;
      v89 = v25;
      v79 = v16;
      v69 = v32;
      v33 = sub_21CB81044();
      v34 = *(v33 + 16);
      v96 = a1;
      v78 = v13;
      v98 = v33;
      if (v34)
      {
        v35 = (v33 + 40);
        v36 = MEMORY[0x277D84F90];
        v37 = v88;
        do
        {
          v41 = *(v35 - 1);
          v42 = *v35;
          if (sub_21CB85694() >= v42)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v100 = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B1360(0, *(v36 + 16) + 1, 1);
              v36 = v100;
            }

            v39 = *(v36 + 16);
            v38 = *(v36 + 24);
            if (v39 >= v38 >> 1)
            {
              sub_21C7B1360((v38 > 1), v39 + 1, 1);
              v36 = v100;
            }

            *(v36 + 16) = v39 + 1;
            v40 = v36 + 16 * v39;
            *(v40 + 32) = v41;
            *(v40 + 40) = v42;
          }

          v35 += 2;
          --v34;
        }

        while (v34);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
        v37 = v88;
      }

      v80 = a2;

      v25 = v89;
      v76 = *(v36 + 16);
      if (v76)
      {
        v44 = 0;
        v45 = (v71 + 16);
        v92 = (v91 + 48);
        v75 = (v91 + 32);
        v72 = (v91 + 16);
        v74 = (v91 + 8);
        v46 = v36 + 40;
        v77 = v36;
        v73 = (v71 + 16);
        while (v44 < *(v36 + 16))
        {
          v98 = v44;
          v90 = v46;
          sub_21CB856C4();
          v91 = sub_21CB856C4();
          v47 = *v45;
          v48 = v87;
          (*v45)(v87, v25, v95);
          sub_21C7441E4(&qword_27CDF55F8, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
          v49 = v17;
          v50 = v25;
          v51 = v79;
          sub_21CB809C4();
          v52 = *v92;
          if ((*v92)(v51, 1, v49) == 1)
          {

LABEL_25:
            sub_21C6EA794(v51, &qword_27CDF55E8, &qword_21CBBE578);
            (*(v71 + 32))(v70, v89, v95);
            return;
          }

          v53 = v94;
          v97 = *v75;
          v97(v94, v51, v49);
          v47(v48, v50, v95);
          v54 = v78;
          sub_21CB809C4();
          if (v52(v54, 1, v49) == 1)
          {
            (*v74)(v53, v49);

            v51 = v54;
            goto LABEL_25;
          }

          v55 = v93;
          v97(v93, v54, v49);
          sub_21C7441E4(&qword_27CDF5600, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
          if ((sub_21CB85524() & 1) == 0)
          {
            goto LABEL_27;
          }

          v56 = v53;
          ++v98;
          v57 = *v72;
          v58 = v55;
          v59 = v84;
          (*v72)(v84, v56, v49);
          v60 = v86;
          v57((v59 + *(v86 + 48)), v58, v49);
          v61 = v85;
          sub_21C6EDBAC(v59, v85, &qword_27CDF55D8, &qword_21CBBE568);
          v62 = *(v60 + 48);
          v17 = v49;
          v63 = v82;
          v64 = v97;
          v97(v82, v61, v17);
          v65 = *v74;
          (*v74)((v61 + v62), v17);
          v66 = v59;
          v25 = v89;
          sub_21CA2D4F0(v66, v61);
          v64((v63 + *(v83 + 36)), v61 + *(v60 + 48), v17);
          v65(v61, v17);
          v67 = sub_21CB84B14();
          sub_21CA2D560();
          v68 = sub_21CB80A14();
          v99 = v67;
          v44 = v98;
          sub_21CB80A54();
          v68(&v100, 0);
          sub_21C6EA794(v63, &qword_27CDF55E0, &qword_21CBBE570);
          v65(v93, v17);
          v65(v94, v17);
          v46 = v90 + 16;
          v37 = v88;
          v36 = v77;
          v45 = v73;
          if (v76 == v44)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
    }

    else
    {
    }

    (*(v71 + 32))(v70, v25, v95);
    return;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_21CA2D49C()
{
  result = qword_27CDF55F0;
  if (!qword_27CDF55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF55F0);
  }

  return result;
}

uint64_t sub_21CA2D4F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55D8, &qword_21CBBE568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA2D560()
{
  result = qword_27CDF5608;
  if (!qword_27CDF5608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55E0, &qword_21CBBE570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5608);
  }

  return result;
}

unint64_t sub_21CA2D5C4()
{
  result = qword_27CDF5610;
  if (!qword_27CDF5610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5618, &unk_21CBBE580);
    sub_21C74A7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5610);
  }

  return result;
}

uint64_t sub_21CA2D648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CA2D6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21CA2D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  v8 = v2[24];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5620, &qword_21CBBE678);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5628, &unk_21CBBE680) + 36));
  *v11 = sub_21CA2D8A8;
  v11[1] = v9;

  sub_21CA2D904(v6, v8);
  v12 = sub_21CB85214();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v15 = v18 != 1 || (sub_21C7316D8(v6, v8) & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5630, &unk_21CBBE690);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v12;
  *(v17 + 16) = v14;
  return result;
}

uint64_t sub_21CA2D904(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21CA2D910@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB82A84();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5660, &qword_21CBBE710);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5668, &qword_21CBBE718);
  MEMORY[0x28223BE20](v9);
  v11 = v44 - v10;
  v12 = [objc_opt_self() isPasswordsAppInstalled];
  v13 = *(v3 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_21CB831A4();
  (*(*(v15 - 8) + 104))(&v5[v13], v14, v15);
  __asm { FMOV            V0.2D, #5.0 }

  *v5 = _Q0;
  if (v12)
  {
    v44[1] = sub_21CB837C4();
  }

  else
  {
    sub_21CB84A84();
    v22 = sub_21CB84B04();

    v45 = v22;
  }

  v21 = sub_21CB82384();
  sub_21C9D03AC(v5, v8);
  *&v8[*(v6 + 52)] = v21;
  *&v8[*(v6 + 56)] = 256;
  v23 = sub_21CB83D44();
  sub_21CB81F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_21C716934(v8, v11, &qword_27CDF5660, &qword_21CBBE710);
  v32 = &v11[*(v9 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_21CB83CD4();
  sub_21CB81F24();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_21C716934(v11, a1, &qword_27CDF5668, &qword_21CBBE718);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5670, &unk_21CBBE720);
  v43 = a1 + *(result + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

unint64_t sub_21CA2DC3C()
{
  result = qword_27CDF5638;
  if (!qword_27CDF5638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5630, &unk_21CBBE690);
    sub_21CA2DCF4();
    sub_21C6EADEC(&qword_27CDF5650, &qword_27CDF5658, qword_21CBBE6B8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5638);
  }

  return result;
}

unint64_t sub_21CA2DCF4()
{
  result = qword_27CDF5640;
  if (!qword_27CDF5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5628, &unk_21CBBE680);
    sub_21C6EADEC(&qword_27CDF5648, &qword_27CDF5620, &qword_21CBBE678, MEMORY[0x277CE04B0]);
    sub_21C7E3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5640);
  }

  return result;
}

unint64_t sub_21CA2DDC8()
{
  result = qword_27CDF5678;
  if (!qword_27CDF5678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5670, &unk_21CBBE720);
    sub_21CA2DE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5678);
  }

  return result;
}

unint64_t sub_21CA2DE54()
{
  result = qword_27CDF5680;
  if (!qword_27CDF5680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5668, &qword_21CBBE718);
    sub_21C6EADEC(qword_27CDF5688, &qword_27CDF5660, &qword_21CBBE710, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5680);
  }

  return result;
}

uint64_t sub_21CA2DF24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21CA2DF18(a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PMUpdateLockWindowVisibilitiesPayload(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PMUpdateLockWindowVisibilitiesPayload(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CA2E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5790, &unk_21CBBE960);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_21CA2E160()
{
  result = qword_27CDF5798;
  if (!qword_27CDF5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5790, &unk_21CBBE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5798);
  }

  return result;
}

uint64_t sub_21CA2E1C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CA2E220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_21CA2E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57A0, &qword_21CBBEAA8);
  MEMORY[0x28223BE20](v29);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57A8, &unk_21CBBEAB0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_21CB82F84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v40 = *(v3 + 16);
  v13 = *(v3 + 8);
  v39 = v13;
  if (v40 == 1)
  {
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v39, &qword_27CDF4CA0, &qword_21CBBEB00);
    (*(v10 + 8))(v12, v9);
    if (v36)
    {
      goto LABEL_10;
    }
  }

  v38 = *(v3 + 32);
  v15 = *(v3 + 24);
  v37 = v15;
  if (v38 == 1)
  {
    if ((v15 & 1) == 0)
    {
LABEL_8:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57B0, &qword_21CBBEAF0);
      (*(*(v16 - 8) + 16))(v5, v28, v16);
      swift_storeEnumTagMultiPayload();
      sub_21CA2EC14();
      sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0, MEMORY[0x277CE04B0]);
      return sub_21CB83494();
    }
  }

  else
  {

    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v37, &qword_27CDF4CA0, &qword_21CBBEB00);
    (*(v10 + 8))(v12, v9);
    if (v36 != 1)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v36 = *(v3 + 40);
  v31 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v19 = v34;
  KeyPath = swift_getKeyPath(byte_21CBBEAC0);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57B0, &qword_21CBBEAF0);
  (*(*(v22 - 8) + 16))(v8, v28, v22);
  v23 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57B8, &qword_21CBBEAF8) + 36)];
  *v23 = KeyPath;
  v23[1] = sub_21C735744;
  v23[2] = v21;
  v34 = *(v3 + 8);
  v35 = *(v3 + 16);
  v32 = *(v3 + 24);
  v33 = *(v3 + 32);
  v24 = swift_allocObject();
  v25 = *(v3 + 16);
  *(v24 + 16) = *v3;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v3 + 32);
  *(v24 + 64) = *(v3 + 48);
  v26 = &v8[*(v6 + 36)];
  *v26 = sub_21CA2EC0C;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  sub_21C6EDBAC(v8, v5, &qword_27CDF57A8, &unk_21CBBEAB0);
  swift_storeEnumTagMultiPayload();
  sub_21C6EDBAC(&v34, &v31, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v32, &v31, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v36, &v31, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21CA2EC14();
  sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0, MEMORY[0x277CE04B0]);
  sub_21CB83494();
  return sub_21C6EA794(v8, &qword_27CDF57A8, &unk_21CBBEAB0);
}

uint64_t sub_21CA2E88C(uint64_t a1)
{
  v2 = sub_21CB853D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB85404();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8582C0();
  v14 = sub_21CB85CF4();
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v18 = *(a1 + 40);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  aBlock[4] = sub_21CA2EDD4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_29;
  v11 = _Block_copy(aBlock);
  sub_21C6EDBAC(&v21, v16, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v19, v16, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v18, v16, &unk_27CDF40F0, &qword_21CBA2500);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  v12 = v14;
  MEMORY[0x21CF15800](0, v8, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v15);
}

unint64_t sub_21CA2EC14()
{
  result = qword_27CDF57C0;
  if (!qword_27CDF57C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57A8, &unk_21CBBEAB0);
    sub_21CA2ECA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57C0);
  }

  return result;
}

unint64_t sub_21CA2ECA0()
{
  result = qword_27CDF57C8;
  if (!qword_27CDF57C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57B8, &qword_21CBBEAF8);
    sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57C8);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  sub_21C7025C4(*(v0 + 24), *(v0 + 32));
  sub_21C7025C4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_21CA2EE28()
{
  result = qword_27CDF57D8;
  if (!qword_27CDF57D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57E0, &qword_21CBBEB08);
    sub_21CA2EC14();
    sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57D8);
  }

  return result;
}

id sub_21CA2EEF0()
{
  v0 = sub_21CB80E34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_21CB86094();

    v13 = 0xD000000000000023;
    v14 = 0x800000021CB98340;
    sub_21CB80E24();
    v6 = sub_21CB80DF4();
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    MEMORY[0x21CF151F0](v6, v8);

    v9 = sub_21CB85584();
    [v5 addListenerID:v9 forService:1];

    v10 = sub_21CB85584();
    v11 = [v5 availabilityForListenerID:v10 forService:1];

    v12 = sub_21CB85584();

    [v5 removeListenerID:v12 forService:1];

    return (v11 == 1);
  }

  return result;
}

PasswordManagerUI::PMWindowGroupIdentifier_optional __swiftcall PMWindowGroupIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CB86244();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21CA2F148(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00736C69617465;
  v3 = 0x44746E756F636361;
  v4 = *a1;
  v5 = 0x6174654469666977;
  v6 = 0xEB00000000736C69;
  if (v4 == 1)
  {
    v5 = 0x44746E756F636361;
    v6 = 0xEE00736C69617465;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000021CB89FD0;
  }

  if (*a2 != 1)
  {
    v3 = 0x6174654469666977;
    v2 = 0xEB00000000736C69;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000021CB89FD0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CB86344();
  }

  return v11 & 1;
}

unint64_t sub_21CA2F260()
{
  result = qword_27CDF57E8;
  if (!qword_27CDF57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57E8);
  }

  return result;
}

uint64_t sub_21CA2F2B4()
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21CA2F370(uint64_t a1)
{
  sub_21CB854C4();
}

uint64_t sub_21CA2F418(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

void sub_21CA2F4DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736C69617465;
  v4 = 0x44746E756F636361;
  if (v2 != 1)
  {
    v4 = 0x6174654469666977;
    v3 = 0xEB00000000736C69;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x800000021CB89FD0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_21CA2F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57F0, &qword_21CBBECD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - v11;
  sub_21CA2F7F8(a1, v16 - v11);
  swift_getKeyPath(byte_21CBBECE0);
  v16[1] = a1;
  sub_21CA2FD2C(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
  sub_21CB810D4();

  v13 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  sub_21CA2FD74(a1 + v13, v6, type metadata accessor for PMAppAccountDetailsModel.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D4AC0(v6, v9);
  }

  else
  {
    swift_getKeyPath(byte_21CBBED10);
    swift_getKeyPath(byte_21CBBED38);
    sub_21CB81DB4();
  }

  sub_21CA2FCBC(v12, a2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57F8, &qword_21CBBED08);
  return sub_21C7D4AC0(v9, a2 + *(v14 + 52));
}

uint64_t sub_21CA2F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  MEMORY[0x28223BE20](v28);
  v25 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5800, &qword_21CBBED58);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v26 = type metadata accessor for PMCombinedAccountDetailsView(0);
  MEMORY[0x28223BE20](v26);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBBECE0, v16);
  v29 = a1;
  sub_21CA2FD2C(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
  sub_21CB810D4();

  v19 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  sub_21CA2FD74(a1 + v19, v18, type metadata accessor for PMAppAccountDetailsModel.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D4AC0(v18, v9);
    sub_21CA2FD74(v9, v6, type metadata accessor for PMAccount);
    v20 = v25;
    sub_21CB2E2C8(v6, v25);
    sub_21CA2FD74(v20, v12, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21CA2FD2C(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView, &unk_21CBB1528);
    sub_21CA2FD2C(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView, &unk_21CBCB524);
    sub_21CB83494();
    sub_21CA2FDDC(v20, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    v21 = type metadata accessor for PMAccount;
    v22 = v9;
  }

  else
  {

    sub_21C91D3E0(v14);
    sub_21CA2FD74(v14, v12, type metadata accessor for PMCombinedAccountDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21CA2FD2C(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView, &unk_21CBB1528);
    sub_21CA2FD2C(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView, &unk_21CBCB524);
    sub_21CB83494();

    v21 = type metadata accessor for PMCombinedAccountDetailsView;
    v22 = v14;
  }

  return sub_21CA2FDDC(v22, v21);
}

uint64_t sub_21CA2FCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57F0, &qword_21CBBECD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA2FD2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA2FD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA2FDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA2FE3C()
{
  result = qword_27CDF5808[0];
  if (!qword_27CDF5808[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57F8, &qword_21CBBED08);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF5808);
  }

  return result;
}

uint64_t sub_21CA2FEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CA2FEDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA2FF24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA2FFDC(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5890, &qword_21CBBEE50);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v4 = sub_21CB84E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  sub_21CB83054();
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_21C72BE10(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_21CA3020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5890, &qword_21CBBEE50);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = (&v34 - v9);
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83B74();
  v14 = sub_21CB828F4();
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = sub_21CB828F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v34 = &v34 - v23;
  v38 = a1;
  (*(a1 + 96))(v22);
  v35 = a3;
  v36 = a2;
  sub_21CB84494();
  (*(v10 + 8))(v13, a2);
  sub_21CB83CF4();
  v24 = sub_21C735F84();
  v46[4] = a3;
  v46[5] = v24;
  WitnessTable = swift_getWitnessTable();
  sub_21CB84884();
  (*(v37 + 8))(v16, v14);
  v46[2] = WitnessTable;
  v46[3] = MEMORY[0x277CDF918];
  v26 = swift_getWitnessTable();
  v27 = v34;
  sub_21C72BE10(v20, v17, v26);
  v28 = *(v18 + 8);
  v28(v20, v17);
  v29 = sub_21CB832E4();
  v30 = v39;
  *v39 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5898, &qword_21CBBEE58);
  sub_21CA306A8(v38, v36, v35, v30 + *(v31 + 44));
  (*(v18 + 16))(v20, v27, v17);
  v46[0] = v20;
  v32 = v40;
  sub_21C6EDBAC(v30, v40, &qword_27CDF5890, &qword_21CBBEE50);
  v46[1] = v32;
  v45[0] = v17;
  v45[1] = v41;
  v43 = v26;
  v44 = sub_21C6EADEC(&qword_27CDF58A0, &qword_27CDF5890, &qword_21CBBEE50, MEMORY[0x277CE1198]);
  sub_21C74A55C(v46, 2uLL, v45);
  sub_21C6EA794(v30, &qword_27CDF5890, &qword_21CBBEE50);
  v28(v27, v17);
  sub_21C6EA794(v32, &qword_27CDF5890, &qword_21CBBEE50);
  return (v28)(v20, v17);
}

uint64_t sub_21CA306A8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58A8, &qword_21CBBEE60);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v39 = sub_21CB84FB4();
  v36 = *(v39 - 8);
  v12 = v36;
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58B0, &qword_21CBBEE68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  *v22 = sub_21CB83054();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58B8, &qword_21CBBEE70);
  sub_21CA30A64(a1, a2, a3, &v22[*(v23 + 44)]);
  v35 = v16;
  sub_21CB84FA4();
  *v11 = sub_21CB83074();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58C0, &qword_21CBBEE78) + 44)];
  v34 = v11;
  sub_21CA310DC(a1, a2, a3, v24);
  v38 = v19;
  sub_21C6EDBAC(v22, v19, &qword_27CDF58B0, &qword_21CBBEE68);
  v25 = *(v12 + 16);
  v26 = v37;
  v27 = v16;
  v28 = v39;
  v25(v37, v27, v39);
  v29 = v40;
  sub_21C6EDBAC(v11, v40, &qword_27CDF58A8, &qword_21CBBEE60);
  v30 = v41;
  sub_21C6EDBAC(v19, v41, &qword_27CDF58B0, &qword_21CBBEE68);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58C8, &qword_21CBBEE80);
  v25((v30 + *(v31 + 48)), v26, v28);
  sub_21C6EDBAC(v29, v30 + *(v31 + 64), &qword_27CDF58A8, &qword_21CBBEE60);
  sub_21C6EA794(v34, &qword_27CDF58A8, &qword_21CBBEE60);
  v32 = *(v36 + 8);
  v32(v35, v28);
  sub_21C6EA794(v22, &qword_27CDF58B0, &qword_21CBBEE68);
  sub_21C6EA794(v29, &qword_27CDF58A8, &qword_21CBBEE60);
  v32(v26, v28);
  return sub_21C6EA794(v38, &qword_27CDF58B0, &qword_21CBBEE68);
}

uint64_t sub_21CA30A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v53 = a2;
  v54 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58D8, &qword_21CBBEE98);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58E0, &unk_21CBBEEA0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  *v8 = sub_21CB832F4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0);
  v23 = a2;
  v24 = v52;
  sub_21CA30EA8(a1, v23, v52);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v8, v12, &qword_27CDF39C0, &qword_21CBBEE90);
  v25 = &v12[*(v10 + 44)];
  v26 = v61;
  *(v25 + 4) = v60;
  *(v25 + 5) = v26;
  *(v25 + 6) = v62;
  v27 = v57;
  *v25 = v56;
  *(v25 + 1) = v27;
  v28 = v59;
  *(v25 + 2) = v58;
  *(v25 + 3) = v28;
  LOBYTE(v8) = sub_21CB83D44();
  sub_21CB81F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_21C716934(v12, v19, &qword_27CDF58D8, &qword_21CBBEE98);
  v37 = &v19[*(v14 + 44)];
  *v37 = v8;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_21C716934(v19, v22, &qword_27CDF58E0, &unk_21CBBEEA0);
  v38 = *(a1 + 56);
  v51 = *(a1 + 48);
  v39 = swift_allocObject();
  v40 = v53;
  *(v39 + 16) = v53;
  *(v39 + 24) = v24;
  v41 = v24;
  v42 = *(a1 + 80);
  *(v39 + 96) = *(a1 + 64);
  *(v39 + 112) = v42;
  *(v39 + 128) = *(a1 + 96);
  v43 = *(a1 + 16);
  *(v39 + 32) = *a1;
  *(v39 + 48) = v43;
  v44 = *(a1 + 48);
  *(v39 + 64) = *(a1 + 32);
  *(v39 + 80) = v44;
  sub_21C6EDBAC(v22, v16, &qword_27CDF58E0, &unk_21CBBEEA0);
  v45 = v54;
  sub_21C6EDBAC(v16, v54, &qword_27CDF58E0, &unk_21CBBEEA0);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58E8, &unk_21CBBEEB0) + 48));
  *v46 = v51;
  v46[1] = v38;
  v46[2] = sub_21CA3145C;
  v46[3] = v39;

  v48 = type metadata accessor for PMBreadcrumbTip(0, v40, v41, v47);
  (*(*(v48 - 8) + 16))(v55, a1, v48);

  sub_21C6EA794(v22, &qword_27CDF58E0, &unk_21CBBEEA0);

  return sub_21C6EA794(v16, &qword_27CDF58E0, &unk_21CBBEEA0);
}

uint64_t sub_21CA30EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0, MEMORY[0x277CE14C0]);
  return sub_21CB81FC4();
}

uint64_t sub_21CA30F50@<X0>(uint64_t a2@<X8>)
{
  sub_21C71F3FC();

  v3 = sub_21CB84054();
  v5 = v4;
  v7 = v6;
  sub_21CB83E04();
  v8 = sub_21CB83FA4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21C74A72C(v3, v5, v7 & 1);

  v15 = sub_21CB84054();
  v17 = v16;
  v18 = v12 & 1;
  v23 = v12 & 1;
  v20 = v19 & 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v18;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19 & 1;
  *(a2 + 56) = v21;
  sub_21C79B058(v8, v10, v18);

  sub_21C79B058(v15, v17, v20);

  sub_21C74A72C(v15, v17, v20);

  sub_21C74A72C(v8, v10, v23);
}

uint64_t sub_21CA310DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v26[-v16];
  v27 = a1[2];
  v28 = v27;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a1[5];
  *(v18 + 96) = a1[4];
  *(v18 + 112) = v19;
  *(v18 + 128) = a1[6];
  v20 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v20;
  v21 = a1[3];
  *(v18 + 64) = a1[2];
  *(v18 + 80) = v21;
  sub_21C805950(&v28, v26);
  v23 = type metadata accessor for PMBreadcrumbTip(0, a2, a3, v22);
  (*(*(v23 - 8) + 16))(v26, a1, v23);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB845C4();
  (*(v9 + 8))(v11, v8);
  sub_21C6EDBAC(v17, v14, &qword_27CDEC948, &qword_21CBA4E30);
  *a4 = 0;
  *(a4 + 8) = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58D0, &qword_21CBBEE88);
  sub_21C6EDBAC(v14, a4 + *(v24 + 48), &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v17, &qword_27CDEC948, &qword_21CBA4E30);
  return sub_21C6EA794(v14, &qword_27CDEC948, &qword_21CBA4E30);
}

uint64_t type metadata accessor for PMISIconView(uint64_t a1)
{
  result = qword_27CDF58F8;
  if (!qword_27CDF58F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA31504(uint64_t a1)
{
  sub_21C6E8F4C(319, &qword_27CDF5908, 0x277D1B1A8);
  if (v1 <= 0x3F)
  {
    sub_21C6E8F4C(319, &qword_27CDF5910, 0x277D1B1C8);
    if (v2 <= 0x3F)
    {
      sub_21CA315C8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CA315C8(uint64_t a1)
{
  if (!qword_27CDF5918)
  {
    sub_21CB82854();
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF5918);
    }
  }
}

id sub_21CA3163C()
{
  result = [*v0 prepareImageForDescriptor_];
  if (result)
  {
    v2 = result;
    v3 = [result CGImage];
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 16);
      if (v5 <= 0.0)
      {
LABEL_9:
        v10 = v4;
        [v2 scale];
        [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v10 scale:0 orientation:v11];

        v12 = sub_21CB84BA4();
        return v12;
      }

      result = [v2 scale];
      v7 = v5 * v6;
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
          v8 = sub_21CA3178C(v4, v7);
          if (v8)
          {
            v9 = v8;

            v4 = v9;
          }

          goto LABEL_9;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    return 0;
  }

  return result;
}

CGColorSpaceRef sub_21CA3178C(CGImage *a1, uint64_t a2)
{
  v4 = sub_21CB82854();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  result = CGImageGetColorSpace(a1);
  if (result)
  {
    v12 = result;
    result = CGImageGetWidth(a1);
    v13 = result + a2;
    if (__OFADD__(result, a2))
    {
      __break(1u);
    }

    else
    {
      v21[1] = a2;
      Height = CGImageGetHeight(a1);
      BitsPerComponent = CGImageGetBitsPerComponent(a1);
      BitmapInfo = CGImageGetBitmapInfo(a1);
      v17 = __CGBitmapContextCreate(v13, Height, BitsPerComponent, v12, BitmapInfo);
      if (v17)
      {
        v18 = v17;
        type metadata accessor for PMISIconView(0);
        sub_21C95BCFC(v10);
        (*(v5 + 104))(v7, *MEMORY[0x277CDFA90], v4);
        sub_21CB82844();
        v19 = *(v5 + 8);
        v19(v7, v4);
        v19(v10, v4);
        CGImageGetWidth(a1);
        CGImageGetHeight(a1);
        sub_21CB85AB4();
        Image = CGBitmapContextCreateImage(v18);

        return Image;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id sub_21CA319CC@<X0>(void *a1@<X8>)
{
  result = sub_21CA3163C();
  *a1 = result;
  return result;
}

id sub_21CA31A14(char a1)
{
  v2 = [objc_opt_self() imageDescriptorNamed_];
  [v2 setDrawBorder_];
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setAppearance_];
  return v2;
}

uint64_t type metadata accessor for PMKeyboardShortcutActionViewModifier(uint64_t a1)
{
  result = qword_27CDF5920;
  if (!qword_27CDF5920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CA31B48(uint64_t a1)
{
  result = sub_21CB82A04();
  if (v2 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CA31BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v43[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5938, &qword_21CBBEFB0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = v43 - v5;
  v6 = sub_21CB83634();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMKeyboardShortcutActionViewModifier(0);
  v43[0] = *(v10 - 8);
  v11 = *(v43[0] + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5940, &qword_21CBBEFB8);
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5948, &qword_21CBBEFC0);
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v43 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5950, &qword_21CBBEFC8);
  MEMORY[0x28223BE20](v48);
  v20 = v43 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5958, &qword_21CBBEFD0);
  v56 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v55 = v43 - v23;
  sub_21CA322F0(a1, v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v43[0] + 80) + 16) & ~*(v43[0] + 80);
  v25 = swift_allocObject();
  sub_21CA32354(v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_21CB84DA4();
  sub_21CB83624();
  v26 = sub_21C6EADEC(&qword_27CDF5960, &qword_27CDF5940, &qword_21CBBEFB8, MEMORY[0x277CDF028]);
  v27 = sub_21CA3262C(&qword_27CDF2658, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_21CB84124();
  (*(v7 + 8))(v9, v6);
  (*(v45 + 8))(v14, v12);
  *&v57 = v12;
  *(&v57 + 1) = v6;
  *&v58 = v26;
  *(&v58 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v46;
  sub_21CB84494();
  (*(v47 + 8))(v18, v28);
  sub_21CB85214();
  sub_21CB82374();
  v29 = &v20[*(v48 + 36)];
  v30 = v58;
  *v29 = v57;
  *(v29 + 1) = v30;
  *(v29 + 2) = v59;
  sub_21CA32424();
  v31 = v55;
  sub_21CB84334();
  sub_21C7783A4(v20);
  v32 = *(v56 + 16);
  v33 = v44;
  v34 = v49;
  v32(v44, v31, v49);
  v35 = v50;
  v36 = v51;
  v37 = *(v51 + 16);
  v38 = v52;
  v37(v50, v53, v52);
  v39 = v54;
  v32(v54, v33, v34);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5980, &qword_21CBBEFE0);
  v37(&v39[*(v40 + 48)], v35, v38);
  v41 = *(v56 + 8);
  v41(v55, v34);
  (*(v36 + 8))(v35, v38);
  return (v41)(v33, v34);
}

uint64_t sub_21CA32294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_21CB85214();
  *(a2 + 1) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5930, &qword_21CBBEFA8);
  return sub_21CA31BE8(v2, a1, &a2[*(v6 + 44)]);
}

uint64_t sub_21CA322F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMKeyboardShortcutActionViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA32354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMKeyboardShortcutActionViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA32424()
{
  result = qword_27CDF5968;
  if (!qword_27CDF5968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5950, &qword_21CBBEFC8);
    sub_21CA324B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5968);
  }

  return result;
}

unint64_t sub_21CA324B0()
{
  result = qword_27CDF5970;
  if (!qword_27CDF5970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5978, &qword_21CBBEFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5940, &qword_21CBBEFB8);
    sub_21CB83634();
    sub_21C6EADEC(&qword_27CDF5960, &qword_27CDF5940, &qword_21CBBEFB8, MEMORY[0x277CDF028]);
    sub_21CA3262C(&qword_27CDF2658, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_21CA3262C(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5970);
  }

  return result;
}

uint64_t sub_21CA3262C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21CA32694(uint64_t a1)
{
  sub_21CA32708();
  if (v1 <= 0x3F)
  {
    sub_21CA32750(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CA32708()
{
  if (!qword_27CDF59A8)
  {
    v0 = type metadata accessor for PMAccount(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF59A8);
    }
  }
}

void sub_21CA32750(uint64_t a1)
{
  if (!qword_27CDF59B0)
  {
    type metadata accessor for PMWiFiNetwork(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF59B0);
    }
  }
}

void sub_21CA32804(uint64_t a1)
{
  sub_21CA32974(319, &qword_27CDF59C8, type metadata accessor for PMLargeTypeView.Icon, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CA32974(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C7086F8(319);
      if (v3 <= 0x3F)
      {
        sub_21CA32974(319, &qword_27CDEC498, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CA32974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21CA329F4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_21CB85134();
      v5 = sub_21CB85844();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_21CB85134();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

double sub_21CA32B50@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_21CB83F94();
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v16.origin.x = a3;
      v16.origin.y = a4;
      v16.size.width = a5;
      v16.size.height = a6;
      CGRectGetMinX(v16);
      v17.origin.x = a3;
      v17.origin.y = a4;
      v17.size.width = a5;
      v17.size.height = a6;
      CGRectGetMaxY(v17);
      sub_21CB83F74();
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
      v19.origin.x = a3;
      v19.origin.y = a4;
      v19.size.width = a5;
      v19.size.height = a6;
      CGRectGetMinY(v19);
      sub_21CB83F84();
    }

    v20.origin.x = a3;
    v20.origin.y = a4;
    v20.size.width = a5;
    v20.size.height = a6;
    CGRectGetMaxX(v20);
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxY(v21);
    sub_21CB83F74();
    v22.origin.x = a3;
    v22.origin.y = a4;
    v22.size.width = a5;
    v22.size.height = a6;
    CGRectGetMaxX(v22);
    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    CGRectGetMinX(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMaxY(v24);
    sub_21CB83F74();
    v25.origin.x = a3;
    v25.origin.y = a4;
    v25.size.width = a5;
    v25.size.height = a6;
    CGRectGetMinX(v25);
LABEL_7:
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    CGRectGetMinY(v26);
    sub_21CB83F84();
  }

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  return result;
}

double sub_21CA32D18@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_21CA32B50(*v5, v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t (*sub_21CA32D80(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CB81E44();
  return sub_21CA32E08;
}

void sub_21CA32E08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21CA32E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA3907C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_21CA32EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA3907C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_21CA32F1C(uint64_t a1)
{
  v2 = sub_21CA3907C();

  return MEMORY[0x282133738](a1, v2);
}

double sub_21CA32F68()
{
  v0 = sub_21CB83834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for PMLargeTypeView(0);
  sub_21C728D50(v15);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21C6EDBAC(v15, v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v12, &v6[v16], &qword_27CDEC390, &qword_21CBA40E0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
      return 44.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v6, v9, &qword_27CDEC390, &qword_21CBA40E0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_21C6EA794(v6, &qword_27CDEE530, &unk_21CBA9D80);
    return 70.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_21CB85574();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
  v22(v9, v0);
  sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
  result = 70.0;
  if (v21)
  {
    return 44.0;
  }

  return result;
}

double sub_21CA333E4()
{
  v0 = sub_21CB83834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for PMLargeTypeView(0);
  sub_21C728D50(v15);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21C6EDBAC(v15, v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v12, &v6[v16], &qword_27CDEC390, &qword_21CBA40E0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
      return 72.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v6, v9, &qword_27CDEC390, &qword_21CBA40E0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_21C6EA794(v6, &qword_27CDEE530, &unk_21CBA9D80);
    return 100.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_21CB85574();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
  v22(v9, v0);
  sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
  result = 100.0;
  if (v21)
  {
    return 72.0;
  }

  return result;
}

double sub_21CA33858()
{
  v0 = sub_21CB83834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for PMLargeTypeView(0);
  sub_21C728D50(v15);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21C6EDBAC(v15, v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v12, &v6[v16], &qword_27CDEC390, &qword_21CBA40E0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v6, v9, &qword_27CDEC390, &qword_21CBA40E0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_21C6EA794(v6, &qword_27CDEE530, &unk_21CBA9D80);
    return 10.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_21CB85574();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
  v22(v9, v0);
  sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
  result = 10.0;
  if (v21)
  {
    return 8.0;
  }

  return result;
}

double sub_21CA33CBC()
{
  v0 = sub_21CB83834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for PMLargeTypeView(0);
  sub_21C728D50(v15);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21C6EDBAC(v15, v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v12, &v6[v16], &qword_27CDEC390, &qword_21CBA40E0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
      return 42.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v6, v9, &qword_27CDEC390, &qword_21CBA40E0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_21C6EA794(v6, &qword_27CDEE530, &unk_21CBA9D80);
    return 58.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v21 = sub_21CB85574();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v15, &qword_27CDEC390, &qword_21CBA40E0);
  v22(v9, v0);
  sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
  result = 58.0;
  if (v21)
  {
    return 42.0;
  }

  return result;
}

uint64_t sub_21CA34130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59D8, &qword_21CBBF078);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  v13 = a1;
  sub_21CB83CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59F0, &qword_21CBBF088);
  sub_21CA37B50();
  sub_21CB81FF4();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59E0, &qword_21CBBF080);
  sub_21C6EADEC(&qword_27CDF59E8, &qword_27CDF59D8, &qword_21CBBF078, MEMORY[0x277CDD6E0]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v8 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  v14 = v7;
  v15 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v6;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB84894();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CA3438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_21CB83604();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_21CB835C4();
  v15[4] = a1;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21CA38E78(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB82194();
  v12 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

double sub_21CA34644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PMLargeTypeView(0) + 52));
  *a2 = sub_21CB832E4();
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A20, &qword_21CBBF0A8);
  sub_21CA34724(a2 + *(v4 + 44));
  v5 = sub_21CB83CF4();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A08, &qword_21CBBF090) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  v7 = sub_21CB83D04();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59F0, &qword_21CBBF088) + 36);
  *v8 = v7;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_21CA34724@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A28, &qword_21CBBF0B0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A30, &qword_21CBBF0B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_21CA34944(&v24 - v14);
  sub_21CA3580C(v9);
  v16 = sub_21CB83CD4();
  type metadata accessor for PMLargeTypeView(0);
  sub_21CB81F24();
  v17 = &v9[*(v4 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_21C6EDBAC(v15, v12, &qword_27CDF5A30, &qword_21CBBF0B8);
  sub_21C77881C(v9, v6);
  sub_21C6EDBAC(v12, a2, &qword_27CDF5A30, &qword_21CBBF0B8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A38, &qword_21CBBF0C0);
  sub_21C77881C(v6, a2 + *(v22 + 48));
  sub_21C6EA794(v9, &qword_27CDF5A28, &qword_21CBBF0B0);
  sub_21C6EA794(v15, &qword_27CDF5A30, &qword_21CBBF0B8);
  sub_21C6EA794(v6, &qword_27CDF5A28, &qword_21CBBF0B0);
  return sub_21C6EA794(v12, &qword_27CDF5A30, &qword_21CBBF0B8);
}

uint64_t sub_21CA34944@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v101 = type metadata accessor for PMWiFiIcon(0);
  MEMORY[0x28223BE20](v101);
  v3 = (v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v88 = v83 - v5;
  v86 = type metadata accessor for PMWiFiNetwork(0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BD8, &qword_21CBBF230);
  MEMORY[0x28223BE20](v7);
  v9 = v83 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BE0, &qword_21CBBF238);
  MEMORY[0x28223BE20](v98);
  v99 = v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BE8, &unk_21CBBF240);
  MEMORY[0x28223BE20](v11);
  v100 = v83 - v12;
  v13 = sub_21CB80E34();
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x28223BE20](v13);
  v90 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v19 - 8);
  v84 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v83 - v22;
  v97 = type metadata accessor for PMAccountIcon(0);
  MEMORY[0x28223BE20](v97);
  v25 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = v83 - v27;
  v28 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v28 - 8);
  v94 = v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v96 = v83 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v83 - v33;
  v35 = type metadata accessor for PMLargeTypeView(0);
  sub_21C6EDBAC(v1 + *(v35 + 20), v34, &qword_27CDEB9A0, &qword_21CBA2788);
  v36 = type metadata accessor for PMLargeTypeView.Icon(0);
  if ((*(*(v36 - 8) + 48))(v34, 1, v36) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_21CA38CBC();
    return sub_21CB83494();
  }

  else
  {
    v83[1] = v7;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A8, &qword_21CBA2830) + 48)];
      v39 = v87;
      sub_21CA38DA8(v34, v87, type metadata accessor for PMWiFiNetwork);
      if (sub_21CB85174())
      {
        v40 = 8.18181818;
      }

      else
      {
        v40 = 7.63636364;
      }

      if (sub_21CB85174())
      {
        v41 = 60.0;
      }

      else
      {
        v41 = 56.0;
      }

      if (sub_21CB85174())
      {
        v42 = 34.2857143;
      }

      else
      {
        v42 = 32.0;
      }

      v43 = v101;
      v44 = *(v101 + 20);
      sub_21CA38E10(v39, v3 + v44, type metadata accessor for PMWiFiNetwork);
      (*(v85 + 56))(v3 + v44, 0, 1, v86);
      *v3 = v40;
      v3[1] = v41;
      v3[2] = v41;
      v3[3] = v42;
      *(v3 + *(v43 + 24)) = v38;
      v45 = *(v43 + 28);
      *(v3 + v45) = swift_getKeyPath(byte_21CBBF250);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      v46 = v88;
      sub_21CA38DA8(v3, v88, type metadata accessor for PMWiFiIcon);
      sub_21CA38E10(v46, v99, type metadata accessor for PMWiFiIcon);
      swift_storeEnumTagMultiPayload();
      sub_21CA38E78(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
      sub_21CA38E78(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon, &unk_21CBBA264);
      v47 = v100;
      sub_21CB83494();
      sub_21C6EDBAC(v47, v9, &qword_27CDF5BE8, &unk_21CBBF240);
      swift_storeEnumTagMultiPayload();
      sub_21CA38CBC();
      sub_21CB83494();
      sub_21C6EA794(v47, &qword_27CDF5BE8, &unk_21CBBF240);
      sub_21CA38EC0(v46, type metadata accessor for PMWiFiIcon);
      v48 = type metadata accessor for PMWiFiNetwork;
      v49 = v39;
    }

    else
    {
      v50 = v96;
      sub_21CA38DA8(v34, v96, type metadata accessor for PMAccount);
      sub_21CA38E10(v50, v94, type metadata accessor for PMAccount);
      PMAccount.signInWithAppleAccount.getter(v23);
      v51 = type metadata accessor for PMSignInWithAppleAccount(0);
      v52 = *(*(v51 - 8) + 48);
      v53 = v52(v23, 1, v51);
      v88 = v11;
      if (v53 == 1)
      {
        sub_21C6EA794(v23, &qword_27CDEB2A8, &qword_21CBA1670);
        v87 = PMAccount.titleForSorting.getter();
        v86 = v54;
      }

      else
      {
        v55 = &v23[*(v51 + 24)];
        v56 = v55[1];
        v87 = *v55;
        v86 = v56;

        sub_21CA38EC0(v23, type metadata accessor for PMSignInWithAppleAccount);
      }

      v85 = PMAccount.userVisibleDomain.getter();
      v83[0] = v57;
      v58 = v84;
      PMAccount.signInWithAppleAccount.getter(v84);
      if (v52(v58, 1, v51) == 1)
      {
        sub_21C6EA794(v58, &qword_27CDEB2A8, &qword_21CBA1670);
        v59 = sub_21CB85B74();
        (*(*(v59 - 8) + 56))(v95, 1, 1, v59);
      }

      else
      {
        v60 = *(v51 + 20);
        v61 = sub_21CB85B74();
        v62 = *(v61 - 8);
        v63 = v58 + v60;
        v64 = v95;
        (*(v62 + 16))(v95, v63, v61);
        sub_21CA38EC0(v58, type metadata accessor for PMSignInWithAppleAccount);
        (*(v62 + 56))(v64, 0, 1, v61);
      }

      KeyPath = swift_getKeyPath(byte_21CBBF280);
      v84 = v9;
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(KeyPath, v104[0]);

      type metadata accessor for PMAccountsState(0);
      sub_21CA38E78(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
      v66 = sub_21CB82674();
      v68 = v67;

      *v25 = v66;
      *(v25 + 1) = v68;
      *(v25 + 2) = swift_getKeyPath(aP_78);
      *(v25 + 3) = swift_getKeyPath(aP_79);
      *(v25 + 4) = swift_getKeyPath(a0_45);
      v103 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
      sub_21CB84D44();
      *(v25 + 40) = *v104;
      v69 = v97;
      v70 = *(v97 + 44);
      v71 = sub_21CB85B74();
      (*(*(v71 - 8) + 56))(&v25[v70], 1, 1, v71);
      v72 = &v25[v69[16]];
      v73 = &v25[v69[17]];
      *v73 = sub_21C7E79A0;
      *(v73 + 1) = 0;
      v73[16] = 0;
      v74 = v89;
      sub_21CB80E24();
      v75 = v91;
      v76 = v92;
      (*(v91 + 16))(v90, v74, v92);
      sub_21CB84D44();
      (*(v75 + 8))(v74, v76);
      sub_21CA38EC0(v94, type metadata accessor for PMAccount);
      v77 = v86;
      *(v25 + 7) = v87;
      *(v25 + 8) = v77;
      v78 = v83[0];
      *(v25 + 9) = v85;
      *(v25 + 10) = v78;
      sub_21C805878(v95, &v25[v70]);
      v25[v69[12]] = 1;
      v25[v69[13]] = 1;
      v25[v69[14]] = 1;
      v79 = &v25[v69[15]];
      *v79 = xmmword_21CBA4340;
      v79[16] = 0;
      *v72 = 0u;
      *(v72 + 1) = 0u;
      *(v72 + 2) = 0u;
      *(v72 + 6) = 1;
      v80 = v25;
      v81 = v93;
      sub_21CA38DA8(v80, v93, type metadata accessor for PMAccountIcon);
      sub_21CA38E10(v81, v99, type metadata accessor for PMAccountIcon);
      swift_storeEnumTagMultiPayload();
      sub_21CA38E78(&qword_27CDEC618, type metadata accessor for PMAccountIcon, &unk_21CBA2ABC);
      sub_21CA38E78(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon, &unk_21CBBA264);
      v82 = v100;
      sub_21CB83494();
      sub_21C6EDBAC(v82, v84, &qword_27CDF5BE8, &unk_21CBBF240);
      swift_storeEnumTagMultiPayload();
      sub_21CA38CBC();
      sub_21CB83494();
      sub_21C6EA794(v82, &qword_27CDF5BE8, &unk_21CBBF240);
      sub_21CA38EC0(v81, type metadata accessor for PMAccountIcon);
      v49 = v96;
      v48 = type metadata accessor for PMAccount;
    }

    return sub_21CA38EC0(v49, v48);
  }
}

uint64_t sub_21CA3580C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_21CB83274();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83A34();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMLargeTypeView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A40, &qword_21CBBF0C8);
  MEMORY[0x28223BE20](v36);
  v12 = v33 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A48, &qword_21CBBF0D0);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = v33 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A50, &qword_21CBBF0D8);
  MEMORY[0x28223BE20](v40);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = v33 - v18;
  v19 = *(v2 + *(v8 + 44));
  v20 = *v2;
  v34 = v2[1];
  v35 = v20;
  v21 = sub_21CB85694();
  if (v21 >= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  *v12 = sub_21CB83CA4();
  v33[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A58, &unk_21CBBF0E0) + 44);
  sub_21CA37D04(v22, 0, -1);
  v48 = v23;
  v33[0] = swift_getKeyPath(byte_21CBBF0F0);
  sub_21CA38E10(v2, v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMLargeTypeView);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  sub_21CA38DA8(v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMLargeTypeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A60, &qword_21CBBF108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A68, &qword_21CBBF110);
  sub_21C6EADEC(&qword_27CDF5A70, &qword_27CDF5A60, &qword_21CBBF108, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF5A78, &qword_27CDF5A68, &qword_21CBBF110, MEMORY[0x277CDF170]);
  sub_21CB84FD4();
  v26 = v39;
  sub_21CB83A24();
  v27 = sub_21CA3800C();
  v28 = v36;
  sub_21CB844F4();
  (*(v42 + 8))(v26, v43);
  sub_21C6EA794(v12, &qword_27CDF5A40, &qword_21CBBF0C8);
  v29 = v44;
  sub_21CB83214();
  v48 = v28;
  v49 = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  sub_21CB84594();
  (*(v45 + 8))(v29, v46);
  (*(v41 + 8))(v14, v30);
  v48 = v35;
  v49 = v34;
  sub_21C71F3FC();
  v31 = v37;
  sub_21CB82894();
  sub_21C6EA794(v16, &qword_27CDF5A50, &qword_21CBBF0D8);
  sub_21CA380BC();
  sub_21CB84634();
  return sub_21C6EA794(v31, &qword_27CDF5A50, &qword_21CBBF0D8);
}

uint64_t sub_21CA35E00(uint64_t a1)
{
  v3 = sub_21CB836C4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21CB85124();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21CB85134();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_21CA32F68();
  (*(v5 + 104))(v7, *MEMORY[0x277CDF0F0], v4);
  type metadata accessor for PMLargeTypeView(0);
  sub_21CB85144();
  sub_21CA329F4(v10, a1);
  v13 = v1;
  v14 = a1;
  sub_21CB832E4();
  v15 = 0;
  sub_21CA38E78(&qword_27CDF5AA0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_21CB86524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AA8, &qword_21CBBF120);
  sub_21CA381BC();
  return sub_21CB852A4();
}

uint64_t sub_21CA36080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMLargeTypeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EE4();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21CA38E10(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMLargeTypeView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21CA38DA8(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMLargeTypeView);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21CA37CA4;
  v17[1] = v15;
  return result;
}

uint64_t sub_21CA36288(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMLargeTypeView(0);
  sub_21C6EDBAC(a1 + *(v12 + 24), v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

BOOL sub_21CA36510()
{

  do
  {
    sub_21CB85714();
    v1 = v0;
    if (!v0)
    {
      break;
    }

    v2 = sub_21CB854E4();
  }

  while ((v2 & 1) != 0);

  return v1 == 0;
}

uint64_t sub_21CA36590(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_21;
  }

  result = sub_21CB85694();
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_19;
  }

  if (__OFSUB__(a2, 1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v5 = v3 % a2;
  if (v4 == v3 || v5 == a2 - 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v4 == v3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_21CA36628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v76 = a1;
  v77 = a4;
  v6 = sub_21CB82054();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v63 - v9;
  v10 = sub_21CB83D74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v63 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AF0, &qword_21CBBF140) - 8;
  MEMORY[0x28223BE20](v75);
  v18 = &v63 - v17;
  v85 = a1;
  v86 = a2;
  v74 = a2;
  sub_21C71F3FC();

  v19 = sub_21CB84054();
  v66 = v20;
  v67 = v19;
  v22 = v21;
  v63 = v23;
  sub_21CA33CBC();
  v24 = *MEMORY[0x277CE0980];
  v25 = sub_21CB83DC4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v16, v24, v25);
  (*(v26 + 56))(v16, 0, 1, v25);
  sub_21CB83E14();
  sub_21C6EA794(v16, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v11 + 104))(v13, *MEMORY[0x277CE0948], v10);
  sub_21CB83D84();

  (*(v11 + 8))(v13, v10);
  sub_21CB83DA4();

  v28 = v66;
  v27 = v67;
  v29 = sub_21CB84024();
  v71 = v30;
  v72 = v29;
  LOBYTE(v25) = v31;
  v70 = v32;

  sub_21C74A72C(v27, v28, v22 & 1);

  sub_21CA32F68();
  sub_21CA333E4();
  sub_21CB85214();
  sub_21CB82374();
  LODWORD(v66) = v25 & 1;
  LOBYTE(v85) = v25 & 1;
  LODWORD(v67) = sub_21CB83CE4();
  v63 = sub_21CB84A94();
  type metadata accessor for PMLargeTypeView(0);
  v33 = v64;
  sub_21C74F0F8(v64);
  v35 = v68;
  v34 = v69;
  v36 = v65;
  (*(v68 + 104))(v65, *MEMORY[0x277CDF3D0], v69);
  sub_21CB82044();
  v37 = *(v35 + 8);
  v37(v36, v34);
  v37(v33, v34);
  v38 = sub_21CB84B04();

  sub_21CB82164();
  v39 = v104;
  LODWORD(v37) = v105;
  LODWORD(v35) = v106;
  v40 = v107;
  v41 = v108;
  v42 = v109;
  v43 = sub_21CB85214();
  v45 = v44;
  v46 = sub_21CB85214();
  LOBYTE(v79) = v73;
  *(&v79 + 1) = v102[0];
  DWORD1(v79) = *(v102 + 3);
  *(&v79 + 1) = v39;
  *&v80 = __PAIR64__(v35, v37);
  *(&v80 + 1) = v40;
  *&v81 = v41;
  *(&v81 + 1) = v42;
  *&v82 = v38;
  WORD4(v82) = 256;
  *(&v82 + 10) = v100;
  HIWORD(v82) = v101;
  *&v83 = v43;
  *(&v83 + 1) = v45;
  *&v84 = v46;
  *(&v84 + 1) = v47;
  *&v103[23] = v80;
  *&v103[7] = v79;
  *&v103[87] = v84;
  *&v103[71] = v83;
  *&v103[55] = v82;
  *&v103[39] = v81;
  LOBYTE(v85) = v73;
  HIDWORD(v85) = *(v102 + 3);
  *(&v85 + 1) = v102[0];
  v86 = v39;
  v87 = v37;
  v88 = v35;
  v89 = v40;
  v90 = v41;
  v91 = v42;
  v92 = v38;
  v93 = 256;
  v95 = v101;
  v94 = v100;
  v96 = v43;
  v97 = v45;
  v98 = v46;
  v99 = v47;
  sub_21C6EDBAC(&v79, &v78, &qword_27CDF5B60, &unk_21CBBF178);
  sub_21C6EA794(&v85, &qword_27CDF5B60, &unk_21CBBF178);
  sub_21CB855C4();
  v48 = [objc_opt_self() pm_defaults];
  v49 = sub_21CB81E74();
  v50 = sub_21CB85254();
  v51 = &v18[*(v75 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940);
  v52 = v74;

  sub_21CB82B04();
  *v51 = swift_getKeyPath(byte_21CBBF1F0);
  v53 = v110[1];
  *(v18 + 2) = v110[0];
  *(v18 + 3) = v53;
  *(v18 + 4) = v110[2];
  v54 = *&v103[32];
  *(v18 + 137) = *&v103[48];
  v55 = *&v103[80];
  *(v18 + 153) = *&v103[64];
  *(v18 + 169) = v55;
  v56 = *&v103[16];
  *(v18 + 89) = *v103;
  *(v18 + 105) = v56;
  v57 = v71;
  *v18 = v72;
  *(v18 + 1) = v57;
  v18[16] = v66;
  *(v18 + 3) = v70;
  *(v18 + 10) = 3;
  v18[88] = v67;
  v58 = *&v103[95];
  *(v18 + 121) = v54;
  *(v18 + 23) = v58;
  *(v18 + 24) = v49;
  v18[200] = 1;
  *(v18 + 26) = v50;
  *(v18 + 27) = v76;
  *(v18 + 28) = v52;
  if ((sub_21CB854D4() & 1) == 0)
  {
    if ((sub_21CB854E4() & 1) == 0)
    {
      v59 = sub_21CB84A74();
      goto LABEL_9;
    }

    if (!sub_21CA36510())
    {
      v59 = sub_21CB84AE4();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ((sub_21CB854B4() & 1) == 0)
  {
LABEL_6:
    v59 = sub_21CB84B14();
    goto LABEL_9;
  }

  v59 = sub_21CB84AA4();
LABEL_9:
  v60 = v59;
  v61 = v77;
  sub_21C716934(v18, v77, &qword_27CDF5AF0, &qword_21CBBF140);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AE0, &qword_21CBBF138);
  *(v61 + *(result + 36)) = v60;
  return result;
}

uint64_t sub_21CA36E00(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMLargeTypeView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v11[1] = sub_21CA389FC();
  swift_getKeyPath(aH_88);
  sub_21CA38E10(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMLargeTypeView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CA38DA8(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMLargeTypeView);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21CA38BC4;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BA8, &qword_21CBBF1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AC0, &qword_21CBBF128);
  sub_21C6EADEC(&qword_27CDF5BB0, &qword_27CDF5BA8, &qword_21CBBF1D0, MEMORY[0x277D83980]);
  sub_21CA38240();
  return sub_21CB84FD4();
}

uint64_t sub_21CA37014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v64 = a4;
  v65 = a2;
  v66 = a3;
  v63 = a1;
  v72 = a5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BA0, &unk_21CBBF1A0);
  MEMORY[0x28223BE20](v61);
  v58 = &v58 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BB8, &qword_21CBBF1D8);
  MEMORY[0x28223BE20](v59);
  v60 = &v58 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B90, &qword_21CBBF198);
  MEMORY[0x28223BE20](v71);
  v62 = &v58 - v7;
  v8 = sub_21CB831A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B70, &qword_21CBBF188);
  MEMORY[0x28223BE20](v67);
  v13 = &v58 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BC0, &qword_21CBBF1E0);
  MEMORY[0x28223BE20](v68);
  v70 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BC8, &qword_21CBBF1E8);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AD0, &qword_21CBBF130);
  MEMORY[0x28223BE20](v69);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AE0, &qword_21CBBF138);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = sub_21CA36590(v63, v64);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      sub_21CA36628(v65, v66, 2, v13);
      sub_21CA33858();
      sub_21CA33858();
      (*(v9 + 104))(v11, *MEMORY[0x277CE0118], v8);
      v27 = &v13[*(v67 + 36)];
      v28 = sub_21CB83824();
      (*(v9 + 16))(&v27[*(v28 + 20)], v11, v8);
      sub_21CB83504();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      (*(v9 + 8))(v11, v8);
      *v27 = v30;
      *(v27 + 1) = v32;
      *(v27 + 2) = v34;
      *(v27 + 3) = v36;
      *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B80, &qword_21CBBF190) + 36)] = 256;
      v37 = &qword_27CDF5B70;
      v38 = &qword_21CBBF188;
      sub_21C6EDBAC(v13, v60, &qword_27CDF5B70, &qword_21CBBF188);
      swift_storeEnumTagMultiPayload();
      sub_21CA38800();
      sub_21CA38944();
      v39 = v62;
      sub_21CB83494();
      sub_21C6EDBAC(v39, v70, &qword_27CDF5B90, &qword_21CBBF198);
      swift_storeEnumTagMultiPayload();
      sub_21CA382CC();
      sub_21CA388B8();
      sub_21CB83494();
      sub_21C6EA794(v39, &qword_27CDF5B90, &qword_21CBBF198);
      v24 = v13;
    }

    else
    {
      v52 = v58;
      sub_21CA36628(v65, v66, 3, v58);
      v53 = sub_21CA33858();
      v54 = (v52 + *(v61 + 36));
      v55 = sub_21CB82A84();
      (*(v9 + 104))(v54 + *(v55 + 20), *MEMORY[0x277CE0118], v8);
      *v54 = v53;
      v54[1] = v53;
      *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
      v37 = &qword_27CDF5BA0;
      v38 = &unk_21CBBF1A0;
      sub_21C6EDBAC(v52, v60, &qword_27CDF5BA0, &unk_21CBBF1A0);
      swift_storeEnumTagMultiPayload();
      sub_21CA38800();
      sub_21CA38944();
      v56 = v62;
      sub_21CB83494();
      sub_21C6EDBAC(v56, v70, &qword_27CDF5B90, &qword_21CBBF198);
      swift_storeEnumTagMultiPayload();
      sub_21CA382CC();
      sub_21CA388B8();
      sub_21CB83494();
      sub_21C6EA794(v56, &qword_27CDF5B90, &qword_21CBBF198);
      v24 = v52;
    }

    v25 = v37;
    v26 = v38;
  }

  else if (v23)
  {
    v40 = v8;
    v41 = v13;
    sub_21CA36628(v65, v66, 1, v13);
    sub_21CA33858();
    sub_21CA33858();
    (*(v9 + 104))(v11, *MEMORY[0x277CE0118], v40);
    v42 = &v13[*(v67 + 36)];
    v43 = sub_21CB83824();
    (*(v9 + 16))(&v42[*(v43 + 20)], v11, v40);
    sub_21CB83504();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    (*(v9 + 8))(v11, v40);
    *v42 = v45;
    *(v42 + 1) = v47;
    *(v42 + 2) = v49;
    *(v42 + 3) = v51;
    *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B80, &qword_21CBBF190) + 36)] = 256;
    sub_21C6EDBAC(v41, v17, &qword_27CDF5B70, &qword_21CBBF188);
    swift_storeEnumTagMultiPayload();
    sub_21CA38358();
    sub_21CA38800();
    sub_21CB83494();
    sub_21C6EDBAC(v19, v70, &qword_27CDF5AD0, &qword_21CBBF130);
    swift_storeEnumTagMultiPayload();
    sub_21CA382CC();
    sub_21CA388B8();
    sub_21CB83494();
    sub_21C6EA794(v19, &qword_27CDF5AD0, &qword_21CBBF130);
    v24 = v41;
    v25 = &qword_27CDF5B70;
    v26 = &qword_21CBBF188;
  }

  else
  {
    sub_21CA36628(v65, v66, 0, v22);
    sub_21C6EDBAC(v22, v17, &qword_27CDF5AE0, &qword_21CBBF138);
    swift_storeEnumTagMultiPayload();
    sub_21CA38358();
    sub_21CA38800();
    sub_21CB83494();
    sub_21C6EDBAC(v19, v70, &qword_27CDF5AD0, &qword_21CBBF130);
    swift_storeEnumTagMultiPayload();
    sub_21CA382CC();
    sub_21CA388B8();
    sub_21CB83494();
    sub_21C6EA794(v19, &qword_27CDF5AD0, &qword_21CBBF130);
    v24 = v22;
    v25 = &qword_27CDF5AE0;
    v26 = &qword_21CBBF138;
  }

  return sub_21C6EA794(v24, v25, v26);
}

uint64_t sub_21CA3798C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59D0, &qword_21CBBF070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59D8, &qword_21CBBF078);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59E0, &qword_21CBBF080);
  sub_21C6EADEC(&qword_27CDF59E8, &qword_27CDF59D8, &qword_21CBBF078, MEMORY[0x277CDD6E0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21CA37B50()
{
  result = qword_27CDF59F8;
  if (!qword_27CDF59F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59F0, &qword_21CBBF088);
    sub_21CA37BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF59F8);
  }

  return result;
}