uint64_t ImportExport.MessagePart.dataDetectorsInfo.getter()
{
  type metadata accessor for ImportExport.MessagePart(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v1;
}

uint64_t ImportExport.MessagePart.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.MessagePart.parentMessageID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImportExport.MessagePart.reply.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 72);
  *(a1 + 24) = *(v1 + 88);
}

__n128 ImportExport.MessagePart.reply.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  *(v1 + 96) = v3;
  return result;
}

uint64_t ImportExport.MessagePart.reaction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v9 = *(v1 + 136);
  v10 = v3;
  v11 = *(v1 + 168);
  v4 = v11;
  v8[0] = *(v1 + 104);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_1A8243D74(v8, &v7, &qword_1EB2E6F58, &qword_1A8501388);
}

__n128 ImportExport.MessagePart.reaction.setter(__int128 *a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v8[2] = *(v1 + 136);
  v8[3] = v4;
  v8[4] = *(v1 + 168);
  v8[0] = *(v1 + 104);
  v8[1] = v3;
  sub_1A824B2D4(v8, &qword_1EB2E6F58, &qword_1A8501388);
  v5 = *a1;
  *(v1 + 120) = a1[1];
  v6 = a1[3];
  *(v1 + 136) = a1[2];
  *(v1 + 152) = v6;
  result = a1[4];
  *(v1 + 168) = result;
  *(v1 + 104) = v5;
  return result;
}

BOOL ImportExport.MessagePart.hasAttachment.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ImportExport.MessagePart(0);
  sub_1A8243D74(v0 + *(v4 + 44), v3, &qword_1EB2E6F50, &unk_1A8502920);
  v5 = type metadata accessor for ImportExport.Attachment(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1A824B2D4(v3, &qword_1EB2E6F50, &unk_1A8502920);
  return v6;
}

uint64_t ImportExport.MessagePart.balloonBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessagePart(0) + 48));

  return v1;
}

uint64_t ImportExport.MessagePart.payloadData.getter()
{
  v1 = v0 + *(type metadata accessor for ImportExport.MessagePart(0) + 52);
  v2 = *v1;
  sub_1A83F5918(*v1, *(v1 + 8));
  return v2;
}

uint64_t ImportExport.MessagePart.expressiveSendStyleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessagePart(0) + 56));

  return v1;
}

uint64_t ImportExport.MessagePart.expressiveSendPlayedTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessagePart(0) + 60));

  return v1;
}

uint64_t ImportExport.MessagePart.timeExpressiveSendPlayed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + *(type metadata accessor for ImportExport.MessagePart(0) + 60) + 8))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v7 = sub_1A84E5D8C();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1A84E569C();

      v9 = sub_1A84E56DC();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1A84E56DC();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1A8412580(v5, a1, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  else
  {
    v10 = sub_1A84E56DC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t ImportExport.MessagePart.expireState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ImportExport.MessagePart(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t ImportExport.MessagePart.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessagePart(0) + 76));

  return v1;
}

uint64_t ImportExport.MessagePart.links.getter()
{
  type metadata accessor for ImportExport.MessagePart(0);
}

void *sub_1A84324E8@<X0>(void *a1@<X8>)
{
  type metadata accessor for ImportExport.MessagePart(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A8432550(uint64_t *a1)
{
  type metadata accessor for ImportExport.MessagePart(0);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.MessagePart.$dataDetectorsInfo.getter()
{
  type metadata accessor for ImportExport.MessagePart(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

unint64_t sub_1A8432614(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x546567617373656DLL;
      break;
    case 2:
      result = 0x654D746E65726170;
      break;
    case 3:
      result = 0x506E4965676E6172;
      break;
    case 4:
      result = 0x65636E6575716573;
      break;
    case 5:
      result = 0x796C706572;
      break;
    case 6:
      result = 0x6E6F697463616572;
      break;
    case 7:
      result = 0x656D686361747461;
      break;
    case 8:
      result = 0x426E6F6F6C6C6162;
      break;
    case 9:
      result = 0x4464616F6C796170;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x6172697078457369;
      break;
    case 13:
      result = 0x7453657269707865;
      break;
    case 14:
      result = 0x6E6F746544736177;
      break;
    case 15:
      result = 2036625250;
      break;
    case 16:
      result = 0x736B6E696CLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8432844@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8435A8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A843286C(uint64_t a1)
{
  v2 = sub_1A8432FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84328A8(uint64_t a1)
{
  v2 = sub_1A8432FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessagePart.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7928, &qword_1A8504618);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8432FD8();
  sub_1A84E68AC();
  LOBYTE(v29[0]) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    LOBYTE(v29[0]) = *(v3 + 16);
    LOBYTE(v24) = 1;
    sub_1A843302C();
    sub_1A84E672C();
    LOBYTE(v29[0]) = 2;
    sub_1A84E66CC();
    v29[0] = *(v3 + 40);
    LOBYTE(v24) = 3;
    type metadata accessor for _NSRange(0);
    sub_1A8435344(&qword_1EB2E78F8, type metadata accessor for _NSRange, MEMORY[0x1E6969F98]);
    sub_1A84E672C();
    LOBYTE(v29[0]) = 4;
    sub_1A84E670C();
    v31 = *(v3 + 64);
    v9 = *(v3 + 88);
    v32 = *(v3 + 72);
    v33 = v9;
    v30 = 5;
    sub_1A8433080();

    sub_1A84E66BC();

    v10 = *(v3 + 120);
    v11 = *(v3 + 152);
    v29[2] = *(v3 + 136);
    v29[3] = v11;
    v29[4] = *(v3 + 168);
    v29[0] = *(v3 + 104);
    v29[1] = v10;
    v12 = *(v3 + 136);
    v25 = *(v3 + 120);
    v26 = v12;
    v13 = *(v3 + 168);
    v27 = *(v3 + 152);
    v28 = v13;
    v24 = *(v3 + 104);
    v23 = 6;
    sub_1A8243D74(v29, v22, &qword_1EB2E6F58, &qword_1A8501388);
    sub_1A84330D4();
    sub_1A84E66BC();
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[0] = v24;
    v22[1] = v25;
    sub_1A824B2D4(v22, &qword_1EB2E6F58, &qword_1A8501388);
    v14 = type metadata accessor for ImportExport.MessagePart(0);
    LOBYTE(v20) = 7;
    type metadata accessor for ImportExport.Attachment(0);
    sub_1A8435344(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
    sub_1A84E66BC();
    LOBYTE(v20) = 8;
    sub_1A84E66AC();
    v15 = (v3 + v14[13]);
    v16 = v15[1];
    v20 = *v15;
    v21 = v16;
    v19 = 9;
    sub_1A83F5918(v20, v16);
    sub_1A8433128();
    sub_1A84E66BC();
    sub_1A83F5980(v20, v21);
    LOBYTE(v20) = 10;
    sub_1A84E66AC();
    LOBYTE(v20) = 11;
    sub_1A84E66AC();
    LOBYTE(v20) = 12;
    sub_1A84E66DC();
    LOBYTE(v20) = *(v3 + v14[17]);
    v19 = 13;
    sub_1A843317C();
    sub_1A84E66BC();
    LOBYTE(v20) = 14;
    sub_1A84E66DC();
    LOBYTE(v20) = 15;
    sub_1A84E66CC();
    v20 = *(v3 + v14[20]);
    v19 = 16;
    sub_1A83EA2FC(&qword_1EB2E7960, &qword_1A8504620);
    sub_1A8433FD0(&qword_1EB2E7968, &qword_1EB2E7200, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
    sub_1A84E66BC();
    LOBYTE(v20) = 17;
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A843406C(&qword_1EB2E7378, MEMORY[0x1E69A66B0]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A8432FD8()
{
  result = qword_1EB2E7930;
  if (!qword_1EB2E7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7930);
  }

  return result;
}

unint64_t sub_1A843302C()
{
  result = qword_1EB2E7938;
  if (!qword_1EB2E7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7938);
  }

  return result;
}

unint64_t sub_1A8433080()
{
  result = qword_1EB2E7940;
  if (!qword_1EB2E7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7940);
  }

  return result;
}

unint64_t sub_1A84330D4()
{
  result = qword_1EB2E7948;
  if (!qword_1EB2E7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7948);
  }

  return result;
}

unint64_t sub_1A8433128()
{
  result = qword_1EB2E7950;
  if (!qword_1EB2E7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7950);
  }

  return result;
}

unint64_t sub_1A843317C()
{
  result = qword_1EB2E7958;
  if (!qword_1EB2E7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7958);
  }

  return result;
}

uint64_t ImportExport.MessagePart.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v80 - v4;
  v6 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v80 - v7;
  v9 = sub_1A83EA2FC(&qword_1EB2E7970, &qword_1A8504628);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for ImportExport.MessagePart(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 22) = 0;
  *(v16 + 9) = 0u;
  *(v16 + 10) = 0u;
  *(v16 + 7) = 0u;
  *(v16 + 8) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 6) = 0u;
  *(v16 + 4) = 0u;
  v104 = v14;
  v17 = *(v14 + 84);
  *&v99 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v86 = v17;
  sub_1A84E594C();
  v18 = a1[3];
  v85 = a1;
  sub_1A82471E0(a1, v18);
  sub_1A8432FD8();
  v19 = v89;
  sub_1A84E689C();
  if (v19)
  {
    v89 = v19;
    sub_1A8244788(v85);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_4;
  }

  v20 = v5;
  v21 = v83;
  v22 = v84;
  LOBYTE(v99) = 0;
  v23 = sub_1A84E660C();
  v89 = 0;
  *v16 = v23;
  *(v16 + 1) = v24;
  LOBYTE(v97[0]) = 1;
  sub_1A8433E2C();
  v36 = v89;
  sub_1A84E666C();
  if (v36)
  {
    v89 = v36;
    (*(v21 + 8))(v11, v22);
    LODWORD(v84) = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_23;
  }

  v16[16] = v99;
  LOBYTE(v99) = 2;
  v37 = sub_1A84E660C();
  v89 = 0;
  *(v16 + 3) = v37;
  *(v16 + 4) = v38;
  type metadata accessor for _NSRange(0);
  LOBYTE(v97[0]) = 3;
  sub_1A8435344(&qword_1EB2E7908, type metadata accessor for _NSRange, MEMORY[0x1E6969FA8]);
  v42 = v89;
  sub_1A84E666C();
  if (v42)
  {
    v89 = v42;
LABEL_30:
    (*(v21 + 8))(v11, v22);
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
    LODWORD(v84) = 1;
    goto LABEL_23;
  }

  *(v16 + 40) = v99;
  LOBYTE(v99) = 4;
  v43 = sub_1A84E664C();
  v89 = 0;
  *(v16 + 7) = v43;
  LOBYTE(v97[0]) = 5;
  sub_1A8433E80();
  v44 = v89;
  sub_1A84E65FC();
  v89 = v44;
  if (v44)
  {
    goto LABEL_30;
  }

  v45 = v101;
  v80 = v100;
  v81 = v99;

  v46 = v80;
  *(v16 + 4) = v81;
  *(v16 + 5) = v46;
  *(v16 + 12) = v45;
  v98 = 6;
  sub_1A8433ED4();
  v47 = v89;
  sub_1A84E65FC();
  v89 = v47;
  if (v47)
  {
    goto LABEL_30;
  }

  v94 = v101;
  v95 = v102;
  v92 = v99;
  v93 = v100;
  v48 = *(v16 + 120);
  v49 = *(v16 + 152);
  v97[2] = *(v16 + 136);
  v97[3] = v49;
  v97[4] = *(v16 + 168);
  v50 = *(v16 + 104);
  v97[1] = v48;
  v96 = v103;
  v97[0] = v50;
  sub_1A824B2D4(v97, &qword_1EB2E6F58, &qword_1A8501388);
  v51 = v92;
  *(v16 + 120) = v93;
  v52 = v95;
  *(v16 + 136) = v94;
  *(v16 + 152) = v52;
  *(v16 + 168) = v96;
  *(v16 + 104) = v51;
  type metadata accessor for ImportExport.Attachment(0);
  LOBYTE(v91) = 7;
  sub_1A8435344(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
  v53 = v89;
  sub_1A84E65FC();
  v89 = v53;
  if (v53)
  {
    goto LABEL_30;
  }

  sub_1A8412580(v8, &v16[v104[11]], &qword_1EB2E6F50, &unk_1A8502920);
  LOBYTE(v91) = 8;
  v54 = v89;
  v55 = sub_1A84E65DC();
  v89 = v54;
  if (v54)
  {
    (*(v21 + 8))(v11, v22);
    v30 = 0;
    v29 = 0;
    v28 = 0;
    LODWORD(v84) = 1;
    v31 = 1;
    goto LABEL_23;
  }

  v57 = &v16[v104[12]];
  *v57 = v55;
  v57[1] = v56;
  v90 = 9;
  sub_1A8433F28();
  v58 = v89;
  sub_1A84E65FC();
  v89 = v58;
  if (v58)
  {
    (*(v21 + 8))(v11, v84);
    v29 = 0;
    v28 = 0;
    LODWORD(v84) = 1;
    v31 = 1;
    v30 = 1;
    goto LABEL_23;
  }

  *&v16[v104[13]] = v91;
  LOBYTE(v91) = 10;
  v59 = v89;
  v60 = sub_1A84E65DC();
  v89 = v59;
  if (v59)
  {
    (*(v21 + 8))(v11, v84);
    v28 = 0;
    LODWORD(v84) = 1;
    v31 = 1;
    v30 = 1;
    v29 = 1;
    goto LABEL_23;
  }

  v62 = &v16[v104[14]];
  *v62 = v60;
  v62[1] = v61;
  LOBYTE(v91) = 11;
  v63 = v89;
  v64 = sub_1A84E65DC();
  v89 = v63;
  if (v63)
  {
    (*(v21 + 8))(v11, v84);
    LODWORD(v84) = 1;
    v31 = 1;
    v30 = 1;
    v29 = 1;
    v28 = 1;
LABEL_23:
    sub_1A8244788(v85);

    v39 = 0;
    v40 = 0;
    v41 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (!v84)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v66 = &v16[v104[15]];
  *v66 = v64;
  v66[1] = v65;
  LOBYTE(v91) = 12;
  v67 = v89;
  v68 = sub_1A84E661C();
  v89 = v67;
  if (v67 || (v16[v104[16]] = v68 & 1, v90 = 13, sub_1A8433F7C(), v69 = v89, sub_1A84E65FC(), (v89 = v69) != 0) || (v16[v104[17]] = v91, LOBYTE(v91) = 14, v70 = v89, v71 = sub_1A84E661C(), (v89 = v70) != 0) || (v16[v104[18]] = v71 & 1, LOBYTE(v91) = 15, v72 = v89, v73 = sub_1A84E660C(), (v89 = v72) != 0))
  {
    (*(v21 + 8))(v11, v84);
    sub_1A8244788(v85);
    v75 = 0;
    v76 = 0;
LABEL_44:

    v41 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
    v40 = v75;
    v39 = v76;
LABEL_24:
    v26 = v40;
    v25 = v39;
    v27 = v41;

LABEL_4:

    v32 = *(v16 + 120);
    v33 = *(v16 + 152);
    v101 = *(v16 + 136);
    v102 = v33;
    v103 = *(v16 + 168);
    v99 = *(v16 + 104);
    v100 = v32;
    sub_1A824B2D4(&v99, &qword_1EB2E6F58, &qword_1A8501388);
    if (v31)
    {
      sub_1A824B2D4(&v16[v104[11]], &qword_1EB2E6F50, &unk_1A8502920);
      v34 = v104;
      if (!v30)
      {
LABEL_6:
        if (!v29)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v34 = v104;
      if (!v30)
      {
        goto LABEL_6;
      }
    }

    if (!v29)
    {
LABEL_7:
      if (!v28)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    sub_1A83F5980(*&v16[v34[13]], *&v16[v34[13] + 8]);
    if (!v28)
    {
LABEL_8:
      if (!v27)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:

    if (!v27)
    {
LABEL_9:
      if (!v26)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:

    if (!v26)
    {
LABEL_10:
      if (!v25)
      {
        return (*(v87 + 8))(&v16[v86], v88);
      }

LABEL_11:

      return (*(v87 + 8))(&v16[v86], v88);
    }

LABEL_18:

    if (!v25)
    {
      return (*(v87 + 8))(&v16[v86], v88);
    }

    goto LABEL_11;
  }

  v77 = &v16[v104[19]];
  *v77 = v73;
  v77[1] = v74;
  sub_1A83EA2FC(&qword_1EB2E7960, &qword_1A8504620);
  v90 = 16;
  sub_1A8433FD0(&qword_1EB2E79A0, &qword_1EB2E7218, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
  v78 = v89;
  sub_1A84E65FC();
  v89 = v78;
  if (v78)
  {
    (*(v21 + 8))(v11, v84);
    sub_1A8244788(v85);
    v76 = 0;
    v75 = 1;
    goto LABEL_44;
  }

  *&v16[v104[20]] = v91;
  LOBYTE(v91) = 17;
  sub_1A843406C(&qword_1EB2E7390, MEMORY[0x1E69A66B8]);
  v79 = v89;
  sub_1A84E666C();
  v89 = v79;
  if (v79)
  {
    (*(v21 + 8))(v11, v84);
    sub_1A8244788(v85);
    v75 = 1;
    v76 = 1;
    goto LABEL_44;
  }

  (*(v21 + 8))(v11, v84);
  (*(v87 + 40))(&v16[v86], v20, v88);
  sub_1A84340BC(v16, v82, type metadata accessor for ImportExport.MessagePart);
  sub_1A8244788(v85);
  return sub_1A8434124(v16);
}

unint64_t sub_1A8433E2C()
{
  result = qword_1EB2E7978;
  if (!qword_1EB2E7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7978);
  }

  return result;
}

unint64_t sub_1A8433E80()
{
  result = qword_1EB2E7980;
  if (!qword_1EB2E7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7980);
  }

  return result;
}

unint64_t sub_1A8433ED4()
{
  result = qword_1EB2E7988;
  if (!qword_1EB2E7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7988);
  }

  return result;
}

unint64_t sub_1A8433F28()
{
  result = qword_1EB2E7990;
  if (!qword_1EB2E7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7990);
  }

  return result;
}

unint64_t sub_1A8433F7C()
{
  result = qword_1EB2E7998;
  if (!qword_1EB2E7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7998);
  }

  return result;
}

uint64_t sub_1A8433FD0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7960, &qword_1A8504620);
    sub_1A8435344(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A843406C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E6F60, &qword_1A8501F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84340BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8434124(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.MessagePart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImportExport.MessagePart.description.getter()
{
  v1 = v0;
  v37 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - v4;
  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  sub_1A84E646C();
  v40 = v41[0];
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x506567617373654DLL, 0xEB00000000747261);
  MEMORY[0x1AC56A990](0x203A6469203ALL, 0xE600000000000000);
  MEMORY[0x1AC56A990](*v1, v1[1]);
  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A8530E50);
  MEMORY[0x1AC56A990](v1[3], v1[4]);
  MEMORY[0x1AC56A990](0x6E6575716573202CLL, 0xEE00203A44496563);
  *&v41[0] = *(v0 + 56);
  v5 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530E70);
  v6 = sub_1A84E632C();
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A8530E90);
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);
  v41[2] = *(v0 + 136);
  v41[3] = v8;
  v41[4] = *(v0 + 168);
  v41[0] = *(v0 + 104);
  v41[1] = v7;
  v9 = *(v0 + 120);
  v10 = *(v0 + 152);
  v39[2] = *(v0 + 136);
  v39[3] = v10;
  v39[4] = *(v0 + 168);
  v39[0] = *(v0 + 104);
  v39[1] = v9;
  sub_1A8243D74(v41, &v38, &qword_1EB2E6F58, &qword_1A8501388);
  sub_1A83EA2FC(&qword_1EB2E6F58, &qword_1A8501388);
  v11 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v11);

  MEMORY[0x1AC56A990](0x3A796C706572202CLL, 0xE900000000000020);
  *&v39[0] = *(v0 + 64);
  *(v39 + 8) = *(v0 + 72);
  *(&v39[1] + 8) = *(v0 + 88);

  sub_1A83EA2FC(&qword_1EB2E79A8, &qword_1A8504630);
  v12 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v12);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A8530EB0);
  v13 = type metadata accessor for ImportExport.MessagePart(0);
  v14 = (v0 + v13[12]);
  v15 = v14[1];
  *&v39[0] = *v14;
  *(&v39[0] + 1) = v15;

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v16 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v16);

  MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A8530ED0);
  v17 = (v0 + v13[14]);
  v18 = v17[1];
  *&v39[0] = *v17;
  *(&v39[0] + 1) = v18;

  v19 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v19);

  MEMORY[0x1AC56A990](0x697078457369202CLL, 0xEF203A656C626172);
  if (*(v0 + v13[16]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v0 + v13[16]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v20, v21);

  MEMORY[0x1AC56A990](0x657269707865202CLL, 0xEF203A6574617453);
  LOBYTE(v39[0]) = *(v0 + v13[17]);
  sub_1A83EA2FC(&qword_1EB2E79B0, &qword_1A8504638);
  v22 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v22);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8530EF0);
  if (*(v0 + v13[18]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + v13[18]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v23, v24);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530F10);
  v25 = v13[11];
  v26 = v35;
  sub_1A8243D74(v1 + v25, v35, &qword_1EB2E6F50, &unk_1A8502920);
  v27 = type metadata accessor for ImportExport.Attachment(0);
  v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
  sub_1A824B2D4(v26, &qword_1EB2E6F50, &unk_1A8502920);
  if (v28 == 1)
  {
    v29 = 0x65736C6166;
  }

  else
  {
    v29 = 1702195828;
  }

  if (v28 == 1)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v29, v30);

  MEMORY[0x1AC56A990](0x3A736B6E696C202CLL, 0xE900000000000020);
  *&v39[0] = *(v1 + v13[20]);

  sub_1A83EA2FC(&qword_1EB2E79B8, &qword_1A8504640);
  v31 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v31);

  MEMORY[0x1AC56A990](0x686361747461202CLL, 0xEE00203A746E656DLL);
  sub_1A8243D74(v1 + v25, v36, &qword_1EB2E6F50, &unk_1A8502920);
  v32 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v32);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return v40;
}

uint64_t static ImportExport.MessagePart.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t ImportExport.MessagePart.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t ImportExport.MessagePart.MessageType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A8434950(uint64_t a1)
{
  sub_1A84E5E5C();
}

void sub_1A8434B14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6567617373656DLL;
  v5 = 0xE600000000000000;
  v6 = 0x6E6967756C70;
  v7 = 0xEA00000000006576;
  v8 = 0x6973736572707865;
  if (v2 != 4)
  {
    v8 = 0x73654D6F69647561;
    v7 = 0xEC00000065676173;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x796C706572;
  if (v2 != 1)
  {
    v10 = 0x6E6F697463616572;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t ImportExport.MessagePart.ExpireState.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A8434C34()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8434CFC(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A8434DB0(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void sub_1A8434F3C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7269707845746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (*v1 != 2)
  {
    v5 = 0x6465766173;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ImportExport.MessagePart.MessageType.description.getter()
{
  v1 = *v0;
  v2 = 0xE700000000000000;
  v3 = 0x6567617373656DLL;
  strcpy(v12, "MessageType: ");
  HIWORD(v12[1]) = -4864;
  v4 = 0x6E6967756C70;
  v5 = 0xEA00000000006576;
  v6 = 0x6973736572707865;
  if (v1 != 4)
  {
    v6 = 0x73654D6F69647561;
    v5 = 0xEC00000065676173;
  }

  if (v1 == 3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE500000000000000;
  v8 = 0x796C706572;
  if (v1 != 1)
  {
    v8 = 0x6E6F697463616572;
    v7 = 0xE800000000000000;
  }

  if (v1)
  {
    v3 = v8;
    v2 = v7;
  }

  if (v1 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (v1 <= 2)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x1AC56A990](v9, v10);

  return v12[0];
}

uint64_t ImportExport.MessagePart.MessageType.name.getter()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 0x6E6967756C70;
  v4 = 0x6973736572707865;
  if (v1 != 4)
  {
    v4 = 0x73654D6F69647561;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x796C706572;
  if (v1 != 1)
  {
    v5 = 0x6E6F697463616572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ImportExport.MessagePart.ExpireState.description.getter()
{
  v1 = *v0;
  v2 = 0xEB00000000676E69;
  strcpy(v9, "ExpireState: ");
  HIWORD(v9[1]) = -4864;
  v3 = 0x7269707845746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (v1 != 2)
  {
    v5 = 0x6465766173;
    v4 = 0xE500000000000000;
  }

  if (v1)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1AC56A990](v6, v7);

  return v9[0];
}

uint64_t ImportExport.MessagePart.ExpireState.name.getter()
{
  v1 = 0x7269707845746F6ELL;
  v2 = 0x64657269707865;
  if (*v0 != 2)
  {
    v2 = 0x6465766173;
  }

  if (*v0)
  {
    v1 = 0x676E697269707865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A8435344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A8435390()
{
  result = qword_1EB2E79C8;
  if (!qword_1EB2E79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E79C8);
  }

  return result;
}

unint64_t sub_1A84353E8()
{
  result = qword_1EB2E79D0;
  if (!qword_1EB2E79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E79D0);
  }

  return result;
}

uint64_t sub_1A843543C()
{
  v1 = *v0;
  v2 = 0xEB00000000676E69;
  strcpy(v9, "ExpireState: ");
  HIWORD(v9[1]) = -4864;
  v3 = 0x7269707845746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (v1 != 2)
  {
    v5 = 0x6465766173;
    v4 = 0xE500000000000000;
  }

  if (v1)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1AC56A990](v6, v7);

  return v9[0];
}

void sub_1A8435540(uint64_t a1)
{
  type metadata accessor for _NSRange(319);
  if (v1 <= 0x3F)
  {
    sub_1A8435764(319, &qword_1EB2E79E8, &type metadata for ImportExport.Message.Reply);
    if (v2 <= 0x3F)
    {
      sub_1A8435764(319, &qword_1EB2E79F0, &type metadata for ImportExport.Message.Reaction);
      if (v3 <= 0x3F)
      {
        sub_1A841F208(319);
        if (v4 <= 0x3F)
        {
          sub_1A8435764(319, &qword_1EB2E73E8, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1A8435764(319, &qword_1EB2E79F8, MEMORY[0x1E6969080]);
            if (v6 <= 0x3F)
            {
              sub_1A8435764(319, &qword_1EB2E7A00, &type metadata for ImportExport.MessagePart.ExpireState);
              if (v7 <= 0x3F)
              {
                sub_1A84357B0(319, &qword_1EB2E7A08, &qword_1EB2E7960, &qword_1A8504620, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1A84357B0(319, &qword_1EB2E7400, &unk_1EB2E8780, &qword_1A8502930, MEMORY[0x1E69A66A8]);
                  if (v9 <= 0x3F)
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

void sub_1A8435764(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1A84E633C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A84357B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A83EC9D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _s23AttachmentDownloadErrorV9ErrorKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s23AttachmentDownloadErrorV9ErrorKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A8435988()
{
  result = qword_1EB2E7A10;
  if (!qword_1EB2E7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A10);
  }

  return result;
}

unint64_t sub_1A84359E0()
{
  result = qword_1EB2E7A18;
  if (!qword_1EB2E7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A18);
  }

  return result;
}

unint64_t sub_1A8435A38()
{
  result = qword_1EB2E7A20;
  if (!qword_1EB2E7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A20);
  }

  return result;
}

uint64_t sub_1A8435A8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D746E65726170 && a2 == 0xEF44496567617373 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x506E4965676E6172 && a2 == 0xED0000746E657261 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C706572 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697463616572 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x426E6F6F6C6C6162 && a2 == 0xEF4449656C646E75 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4464616F6C796170 && a2 == 0xEB00000000617461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8530F30 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8530F50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6172697078457369 && a2 == 0xEB00000000656C62 || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7453657269707865 && a2 == 0xEB00000000657461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F746544736177 && a2 == 0xEC00000064657461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8530F70 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1A8436044()
{
  result = qword_1EB2E7A28;
  if (!qword_1EB2E7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A28);
  }

  return result;
}

unint64_t sub_1A8436098()
{
  result = qword_1EB2E7A30;
  if (!qword_1EB2E7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A30);
  }

  return result;
}

uint64_t sub_1A84360F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x616E614D74616863;
    }

    if (v2)
    {
      v4 = 0x80000001A852EAC0;
    }

    else
    {
      v4 = 0xEF656E6F5A656574;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001A852EAE0;
    v3 = 0xD000000000000015;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001A852EB00;
    }

    else
    {
      v4 = 0x80000001A852EB20;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0x616E614D74616863;
    }

    if (a2)
    {
      v6 = 0x80000001A852EAC0;
    }

    else
    {
      v6 = 0xEF656E6F5A656574;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x80000001A852EAE0;
    if (v3 != 0xD000000000000015)
    {
LABEL_37:
      v8 = sub_1A84E67AC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001A852EB00;
    }

    else
    {
      v6 = 0x80000001A852EB20;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_1A8436288(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "updateT2NeedingSync";
  v4 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v11 = 0xD000000000000019;
      }

      else
      {
        v11 = 0xD00000000000001ELL;
      }

      if (v4 == 5)
      {
        v12 = "writable_attachment_counts";
      }

      else
      {
        v12 = "written_attachment_counts";
      }
    }

    else
    {
      v13 = "written_message_update_counts";
      v14 = 0xD000000000000023;
      if (a1 != 8)
      {
        v14 = 0xD000000000000022;
        v13 = "able_message_counts";
      }

      if (a1 == 7)
      {
        v11 = 0xD00000000000001DLL;
      }

      else
      {
        v11 = v14;
      }

      if (v4 == 7)
      {
        v12 = "writable_message_update_counts";
      }

      else
      {
        v12 = v13;
      }
    }
  }

  else
  {
    v5 = "written_chat_counts";
    v6 = 0xD000000000000017;
    v7 = "writable_message_counts";
    v8 = 0xD000000000000016;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001ALL;
      v7 = "written_message_counts";
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = "writable_chat_counts";
    if (a1)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = 0xD000000000000014;
    }

    if (!a1)
    {
      v9 = "updateT2NeedingSync";
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v3 = "writable_attachment_counts";
        v2 = 0xD000000000000019;
      }

      else
      {
        v3 = "written_attachment_counts";
        v2 = 0xD00000000000001ELL;
      }
    }

    else if (a2 == 7)
    {
      v3 = "writable_message_update_counts";
      v2 = 0xD00000000000001DLL;
    }

    else if (a2 == 8)
    {
      v3 = "written_message_update_counts";
      v2 = 0xD000000000000023;
    }

    else
    {
      v3 = "able_message_counts";
      v2 = 0xD000000000000022;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "writable_chat_counts";
    }

    else
    {
      v2 = 0xD000000000000014;
    }
  }

  else if (a2 == 2)
  {
    v3 = "written_chat_counts";
    v2 = 0xD000000000000017;
  }

  else if (a2 == 3)
  {
    v3 = "writable_message_counts";
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "written_message_counts";
    v2 = 0xD00000000000001ALL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1A84E67AC();
  }

  return v15 & 1;
}

uint64_t sub_1A8436500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736567617373656DLL;
    }

    else
    {
      v5 = 0x7374616863;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0x556567617373656DLL;
    v4 = 0xEE00736574616470;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001A852EE20;
    }

    if (a1 == 2)
    {
      v5 = 0x656D686361747461;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x736567617373656DLL;
    }

    else
    {
      v11 = 0x7374616863;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x556567617373656DLL;
    v8 = 0x80000001A852EE20;
    if (a2 == 3)
    {
      v8 = 0xEE00736574616470;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x656D686361747461;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEB0000000073746ELL;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1A84E67AC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1A84366B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x74754F64656D6974;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x46676E697373696DLL;
    v5 = 0xEB00000000656C69;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x80000001A852EE70;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x74754F64656D6974;
    }

    else
    {
      v11 = 0x46676E697373696DLL;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEB00000000656C69;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x80000001A852EE70;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1A84E67AC();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1A8436808(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5456722;
  if (a1 != 6)
  {
    v5 = 0x74696C6C65746153;
    v4 = 0xEC000000534D5365;
  }

  v6 = 5459283;
  v7 = 0xE300000000000000;
  if (a1 != 4)
  {
    v6 = 0x656D695465636146;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6567617373654D69;
  if (a1 != 2)
  {
    v9 = 0x6567617373654D69;
    v8 = 0xEC0000006574694CLL;
  }

  v10 = 7958113;
  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v13 = 0xE300000000000000;
        if (v11 != 5459283)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x656D695465636146)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 6)
    {
      v13 = 0xE300000000000000;
      if (v11 != 5456722)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x74696C6C65746153;
    v15 = 1397576549;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE300000000000000;
        if (v11 != 7958113)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6567617373654D69)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x6567617373654D69;
    v15 = 1702127948;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v14)
  {
LABEL_45:
    v16 = sub_1A84E67AC();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_1A8436A6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x536E776F6E6B6E75;
    }

    else
    {
      v5 = 1701736302;
    }

    if (v2)
    {
      v6 = 0xED00007265646E65;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x6F6D6F7250736D73;
    v4 = 0xEE006C616E6F6974;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001A852EB90;
    }

    if (a1 == 2)
    {
      v5 = 1802401130;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x536E776F6E6B6E75;
    }

    else
    {
      v11 = 1701736302;
    }

    if (a2)
    {
      v10 = 0xED00007265646E65;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6F6D6F7250736D73;
    v8 = 0x80000001A852EB90;
    if (a2 == 3)
    {
      v8 = 0xEE006C616E6F6974;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 1802401130;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1A84E67AC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1A8436C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7269707845746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64657269707865;
    }

    else
    {
      v5 = 0x6465766173;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x676E697269707865;
    }

    else
    {
      v5 = 0x7269707845746F6ELL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000676E69;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (a2 != 2)
  {
    v8 = 0x6465766173;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A84E67AC();
  }

  return v11 & 1;
}

uint64_t sub_1A8436D4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6967756C70;
  v6 = 0x6973736572707865;
  v7 = 0xEA00000000006576;
  if (a1 != 4)
  {
    v6 = 0x73654D6F69647561;
    v7 = 0xEC00000065676173;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x796C706572;
  if (a1 != 1)
  {
    v9 = 0x6E6F697463616572;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6567617373656DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6967756C70)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x6973736572707865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000065676173;
      if (v10 != 0x73654D6F69647561)
      {
LABEL_34:
        v13 = sub_1A84E67AC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x796C706572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6F697463616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6567617373656DLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v60 = *a8;
  v59 = *(a8 + 8);
  v14 = sub_1A84E5D8C();
  v15 = [v14 _stripFZIDPrefix];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = sub_1A84E5DBC();
  v18 = v17;

  if (v16 == a4 && v18 == a5)
  {
  }

  else
  {
    v20 = sub_1A84E67AC();

    if ((v20 & 1) == 0)
    {
LABEL_7:

      sub_1A84E646C();

      MEMORY[0x1AC56A990](a4, a5);

      MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8530FB0);
LABEL_36:
      sub_1A84023CC();
      swift_allocError();
      *v48 = 0xD000000000000011;
      *(v48 + 8) = 0x80000001A8530F90;
LABEL_37:
      *(v48 + 16) = 0;
      return swift_willThrow();
    }
  }

  v56 = a2;
  v57 = a7;
  v21 = *(a3 + 16);
  if (!v21)
  {
LABEL_35:

    sub_1A84E646C();

    MEMORY[0x1AC56A990](a4, a5);

    MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A8530FD0);
    v45 = MEMORY[0x1AC56AB00](a3, &type metadata for ImportExport.ParticipantAddress);
    v47 = v46;

    MEMORY[0x1AC56A990](v45, v47);

    goto LABEL_36;
  }

  v22 = 0;
  v23 = 0;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    if (v24)
    {
      v25 = *(a3 + v22 + 40);
      v26 = *(a3 + v22 + 48);
      v27 = *(a3 + v22 + 56);
      v28 = *(a3 + v22 + 64);
      v29 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v29 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = v25 == a4 && v26 == a5;
        if (v30 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }

      v31 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v31 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = v27 == a4 && v28 == a5;
        if (v32 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v23;
    v22 += 128;
    if (v21 == v23)
    {
      goto LABEL_35;
    }
  }

  v33 = *(a3 + 16);
  if (!v33)
  {
    v50 = "Invalid selected address index";
    v51 = 0xD00000000000002CLL;
LABEL_40:

    sub_1A84023CC();
    swift_allocError();
    *v48 = v51;
    *(v48 + 8) = v50 | 0x8000000000000000;
    goto LABEL_37;
  }

  v34 = v56;
  if (v23 >= v33)
  {
    v50 = " not found in addresses: ";
    v51 = 0xD00000000000001ELL;
    goto LABEL_40;
  }

  v35 = *(a3 + 72);
  v36 = *(a3 + v22 + 32);
  v37 = *(a3 + v22 + 40);
  v38 = *(a3 + v22 + 48);
  v39 = *(a3 + v22 + 56);
  v40 = *(a3 + v22 + 64);
  v41 = *(a3 + v22 + 72);
  v43 = *(a3 + v22 + 80);
  v42 = *(a3 + v22 + 88);
  if (v56)
  {
    v44 = a1;
  }

  else
  {
    v52 = *(a3 + v22 + 32);
    v53 = v39;

    v39 = v53;
    v36 = v52;
    v44 = v37;
    v34 = v38;
  }

  if (v35 > 3)
  {
    if (v35 > 5)
    {
      if (v35 == 6)
      {
        v54 = 0xE300000000000000;
        v55 = 5456722;
      }

      else
      {
        v54 = 0xEC000000534D5365;
        v55 = 0x74696C6C65746153;
      }
    }

    else if (v35 == 4)
    {
      v55 = 5459283;
      v54 = 0xE300000000000000;
    }

    else
    {
      v54 = 0xE800000000000000;
      v55 = 0x656D695465636146;
    }
  }

  else if (v35 > 1)
  {
    if (v35 == 2)
    {
      v54 = 0xE800000000000000;
    }

    else
    {
      v54 = 0xEC0000006574694CLL;
    }

    v55 = 0x6567617373654D69;
  }

  else if (v35)
  {
    v54 = 0xE300000000000000;
    v55 = 7958113;
  }

  else
  {
    v54 = 0xE700000000000000;
    v55 = 0x6E776F6E6B6E75;
  }

  *a9 = v44;
  *(a9 + 8) = v34;
  *(a9 + 16) = a3;
  *(a9 + 24) = v23;
  *(a9 + 32) = v36;
  *(a9 + 40) = v37;
  *(a9 + 48) = v38;
  *(a9 + 56) = v39;
  *(a9 + 64) = v40;
  *(a9 + 72) = v41;
  *(a9 + 80) = v43;
  *(a9 + 88) = v42;
  *(a9 + 96) = a6;
  *(a9 + 104) = v57;
  *(a9 + 112) = v60;
  *(a9 + 120) = v59;
  *(a9 + 128) = v55;
  *(a9 + 136) = v54;
}

Swift::Bool __swiftcall ImportExport.Participant.contains(_:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = sub_1A84E5D8C();
  v4 = [v3 _stripFZIDPrefix];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1A84E5DBC();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v9 = *(v2 + 16)) != 0)
  {
    v10 = (v2 + 64);
    while (1)
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v15 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v15 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v16 = v11 == v5 && v12 == v7;
        if (v16 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }

      v17 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v17 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = v13 == v5 && v14 == v7;
        if (v18 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }

      v10 += 16;
      if (!--v9)
      {
        goto LABEL_27;
      }
    }

    v19 = 1;
  }

  else
  {
LABEL_27:
    v19 = 0;
  }

  return v19;
}

uint64_t ImportExport.Participant.update(selectedAddress:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 96);
  v11 = *(v3 + 104);
  v12 = *(v3 + 120);
  v14 = *(v3 + 112);
  v15 = v12;

  return ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)(v7, v8, v9, a1, a2, v10, v11, &v14, a3);
}

uint64_t ImportExport.Participant.init(id:withParticipantAddresses:selectedAddressIndex:conversationID:conversationStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a3 + 16);
  v11 = 0xD00000000000001ELL;
  if (!v10)
  {
    v33 = "Invalid selected address index";
    v11 = 0xD00000000000002CLL;
LABEL_11:

    sub_1A84023CC();
    swift_allocError();
    *v34 = v11;
    *(v34 + 8) = v33 | 0x8000000000000000;
    *(v34 + 16) = 0;
    return swift_willThrow();
  }

  if (v10 <= a4)
  {
    v33 = " not found in addresses: ";
    goto LABEL_11;
  }

  v13 = *a7;
  v14 = *(a7 + 8);
  v15 = a3 + (a4 << 7);
  v16 = *(a3 + 72);
  v17 = *(v15 + 32);
  v18 = *(v15 + 40);
  v19 = *(v15 + 48);
  v20 = *(v15 + 56);
  v21 = *(v15 + 64);
  v22 = *(v15 + 72);
  v23 = *(v15 + 80);
  v24 = *(v15 + 88);
  if (!a2)
  {
    v36 = *a7;
    v37 = a3;
    v25 = a8;
    v26 = a5;
    v27 = a4;
    v39 = *(v15 + 88);
    v40 = *(v15 + 64);
    v28 = *(v15 + 32);
    v38 = *(v15 + 40);
    v29 = *(v15 + 56);
    v41 = *(v15 + 72);
    v30 = *(v15 + 80);

    v23 = v30;
    v22 = v41;
    v20 = v29;
    v18 = v38;
    v24 = v39;
    v17 = v28;
    v13 = v36;
    a3 = v37;
    v21 = v40;
    a4 = v27;
    a5 = v26;
    a8 = v25;
    a1 = v38;
    a2 = v19;
  }

  if (v16 > 3)
  {
    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v31 = 0xE300000000000000;
        v32 = 5456722;
      }

      else
      {
        v31 = 0xEC000000534D5365;
        v32 = 0x74696C6C65746153;
      }
    }

    else if (v16 == 4)
    {
      v32 = 5459283;
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE800000000000000;
      v32 = 0x656D695465636146;
    }
  }

  else if (v16 > 1)
  {
    if (v16 == 2)
    {
      v31 = 0xE800000000000000;
    }

    else
    {
      v31 = 0xEC0000006574694CLL;
    }

    v32 = 0x6567617373654D69;
  }

  else if (v16)
  {
    v31 = 0xE300000000000000;
    v32 = 7958113;
  }

  else
  {
    v31 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E75;
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v17;
  *(a8 + 40) = v18;
  *(a8 + 48) = v19;
  *(a8 + 56) = v20;
  *(a8 + 64) = v21;
  *(a8 + 72) = v22;
  *(a8 + 80) = v23;
  *(a8 + 88) = v24;
  *(a8 + 96) = a5;
  *(a8 + 104) = a6;
  *(a8 + 112) = v13;
  *(a8 + 120) = v14;
  *(a8 + 128) = v32;
  *(a8 + 136) = v31;
}

Swift::Bool __swiftcall ImportExport.Participant.contains(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 32);
    v3 = v1 - 1;
    while (1)
    {
      v4 = v3;
      v5 = v2[1];
      v16 = *v2;
      v17 = v5;
      v6 = v2[5];
      v20 = v2[4];
      v21 = v6;
      v7 = v2[7];
      v22 = v2[6];
      v23 = v7;
      v8 = v2[3];
      v18 = v2[2];
      v19 = v8;
      v10 = *(&v16 + 1);
      v9 = v5;
      sub_1A840243C(&v16, &v15);
      v11.value._countAndFlagsBits = v10;
      v11.value._object = v9;
      if (ImportExport.Participant.contains(_:)(v11))
      {
        break;
      }

      v12.value._countAndFlagsBits = *(&v17 + 1);
      v12.value._object = v18;
      v13 = ImportExport.Participant.contains(_:)(v12);
      sub_1A841E128(&v16);
      if (!v13)
      {
        v3 = v4 - 1;
        v2 += 8;
        if (v4)
        {
          continue;
        }
      }

      return v13;
    }

    sub_1A841E128(&v16);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ImportExport.Participant.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x7069636974726150, 0xEB00000000746E61);
  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8531040);
  sub_1A83EA2FC(&qword_1EB2E7A38, &unk_1A8504B70);
  v3 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8531060);

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v4 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v4);

  result = MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8531080);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(v1 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v1 + 32;
  v7 = ImportExport.ParticipantAddress.description.getter();
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](0x3A7865646E692820, 0xE900000000000020);
  v8 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0x6572646461202C29, 0xEE00203A73657373);
  v9 = *(v1 + 16);
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v9, 0);
    v10 = v21;
    do
    {
      v11 = ImportExport.ParticipantAddress.description.getter();
      v22 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v11;
        v17 = v12;
        sub_1A83EF534((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v16;
        v10 = v22;
      }

      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v6 += 128;
      --v9;
    }

    while (v9);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v18 = sub_1A84E5D6C();
  v20 = v19;

  MEMORY[0x1AC56A990](v18, v20);

  MEMORY[0x1AC56A990](44, 0xE100000000000000);
  return 0;
}

uint64_t static ImportExport.Participant.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

BOOL ImportExport.Participant.contains(_:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (ImportExport.Participant.contains(_:)(*(a1 + 8)))
  {
    return 1;
  }

  v4 = v1;
  v5 = v2;

  return ImportExport.Participant.contains(_:)(*&v4);
}

uint64_t ImportExport.Participant.selectedAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    if (v2 < *(v3 + 16))
    {
      v4 = (v3 + (v2 << 7));
      v5 = v4[2];
      v6 = v4[3];
      v7 = v4[5];
      v19[2] = v4[4];
      v19[3] = v7;
      v19[0] = v5;
      v19[1] = v6;
      v8 = v4[6];
      v9 = v4[7];
      v10 = v4[9];
      v19[6] = v4[8];
      v19[7] = v10;
      v19[4] = v8;
      v19[5] = v9;
      v11 = v4[2];
      v12 = v4[3];
      v13 = v4[5];
      a1[2] = v4[4];
      a1[3] = v13;
      *a1 = v11;
      a1[1] = v12;
      v14 = v4[6];
      v15 = v4[7];
      v16 = v4[9];
      a1[6] = v4[8];
      a1[7] = v16;
      a1[4] = v14;
      a1[5] = v15;
      return sub_1A840243C(v19, &v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.Participant.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ImportExport.Participant.canonicalizedURI.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ImportExport.Participant.canonicalizedURI.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ImportExport.Participant.uncanonicalizedURI.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ImportExport.Participant.countryCode.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ImportExport.Participant.phoneNumber.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 96);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.emailAddress.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 112);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.fullName.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 128);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.contactID.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 144);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.conversationID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void ImportExport.Participant.conversationStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

void ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:conversationID:conversationStatus:sequenceID:)(unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v13 = *a5;
  v27 = *a11;
  v31 = *(a11 + 8);
  v14 = sub_1A84E5D8C();
  v15 = [v14 _stripFZIDPrefix];

  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = sub_1A84E5DBC();
  v18 = v17;

  v19 = sub_1A84E5D8C();
  v20 = [v19 _stripFZIDPrefix];

  if (!v20)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v21 = sub_1A84E5DBC();
  v23 = v22;

  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A85013E0;
  *(v24 + 32) = a12;
  *(v24 + 40) = v16;
  *(v24 + 48) = v18;
  *(v24 + 56) = v21;
  *(v24 + 64) = v23;
  *(v24 + 72) = v13;
  *(v24 + 80) = a6;
  *(v24 + 88) = a7;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v25 = 0xE300000000000000;
        v26 = 5456722;
      }

      else
      {
        v25 = 0xEC000000534D5365;
        v26 = 0x74696C6C65746153;
      }
    }

    else if (v13 == 4)
    {
      v26 = 5459283;
      v25 = 0xE300000000000000;
    }

    else
    {
      v25 = 0xE800000000000000;
      v26 = 0x656D695465636146;
    }
  }

  else if (v13 > 1)
  {
    if (v13 == 2)
    {
      v25 = 0xE800000000000000;
    }

    else
    {
      v25 = 0xEC0000006574694CLL;
    }

    v26 = 0x6567617373654D69;
  }

  else if (v13)
  {
    v25 = 0xE300000000000000;
    v26 = 7958113;
  }

  else
  {
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
  }

  *a9 = v16;
  *(a9 + 8) = v18;
  *(a9 + 16) = v24;
  *(a9 + 24) = 0;
  *(a9 + 32) = a12;
  *(a9 + 40) = v16;
  *(a9 + 48) = v18;
  *(a9 + 56) = v21;
  *(a9 + 64) = v23;
  *(a9 + 72) = v13;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10;
  *(a9 + 112) = v27;
  *(a9 + 120) = v31;
  *(a9 + 128) = v26;
  *(a9 + 136) = v25;
  swift_bridgeObjectRetain_n();
}

uint64_t ImportExport.Participant.update(conversationStatusTo:forConversationID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v7 = 0xD00000000000001ELL;
  v8 = *a1;
  v10 = *v4;
  v9 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  v13 = v4[13];
  if (v13)
  {
    v14 = v4[12];
    if (v14 != a2 || v13 != a3)
    {
      v41 = v4[3];
      v16 = a4;
      v18 = v9;
      v19 = v8;
      v20 = v14;
      v21 = v10;
      v22 = sub_1A84E67AC();
      v11 = v41;
      v10 = v21;
      v23 = v20;
      v8 = v19;
      v7 = 0xD00000000000001ELL;
      v9 = v18;
      v5 = a3;
      a4 = v16;
      if ((v22 & 1) == 0)
      {
        sub_1A84E646C();

        MEMORY[0x1AC56A990](v23, v13);

        MEMORY[0x1AC56A990](544175136, 0xE400000000000000);
        MEMORY[0x1AC56A990](a2, a3);
        sub_1A84023CC();
        swift_allocError();
        *v39 = 0xD00000000000002ALL;
        *(v39 + 8) = 0x80000001A85310A0;
        *(v39 + 16) = 3;
        return swift_willThrow();
      }
    }
  }

  v24 = *(v12 + 16);
  if (!v24)
  {
    v36 = "Invalid selected address index";
    v7 = 0xD00000000000002CLL;
LABEL_15:
    v37 = v36 | 0x8000000000000000;
    sub_1A84023CC();
    swift_allocError();
    *v38 = v7;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0;
    return swift_willThrow();
  }

  if (v11 >= v24)
  {
    v36 = " not found in addresses: ";
    goto LABEL_15;
  }

  v25 = *(v12 + 72);
  v26 = v12 + (v11 << 7);
  v27 = *(v26 + 32);
  v29 = *(v26 + 48);
  v28 = *(v26 + 56);
  v30 = *(v26 + 64);
  v31 = *(v26 + 72);
  v32 = *(v26 + 80);
  v33 = *(v26 + 88);
  if (v25 > 3)
  {
    if (*(v12 + 72) > 5u)
    {
      if (v25 == 6)
      {
        v34 = 0xE300000000000000;
        v35 = 5456722;
      }

      else
      {
        v34 = 0xEC000000534D5365;
        v35 = 0x74696C6C65746153;
      }
    }

    else if (v25 == 4)
    {
      v35 = 5459283;
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE800000000000000;
      v35 = 0x656D695465636146;
    }
  }

  else if (*(v12 + 72) > 1u)
  {
    if (v25 == 2)
    {
      v34 = 0xE800000000000000;
    }

    else
    {
      v34 = 0xEC0000006574694CLL;
    }

    v35 = 0x6567617373654D69;
  }

  else if (*(v12 + 72))
  {
    v34 = 0xE300000000000000;
    v35 = 7958113;
  }

  else
  {
    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E75;
  }

  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  *(a4 + 32) = v27;
  *(a4 + 48) = v29;
  *(a4 + 56) = v28;
  *(a4 + 64) = v30;
  *(a4 + 72) = v31;
  *(a4 + 80) = v32;
  *(a4 + 88) = v33;
  *(a4 + 96) = a2;
  *(a4 + 104) = v5;
  *(a4 + 112) = v8;
  *(a4 + 120) = 0;
  *(a4 + 128) = v35;
  *(a4 + 136) = v34;
}

uint64_t ImportExport.Participant.update(selectedAddressIndex:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD00000000000001ELL;
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v20 = "Invalid selected address index";
    v3 = 0xD00000000000002CLL;
LABEL_9:
    v21 = v20 | 0x8000000000000000;
    sub_1A84023CC();
    swift_allocError();
    *v22 = v3;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    return swift_willThrow();
  }

  if (v5 <= a1)
  {
    v20 = " not found in addresses: ";
    goto LABEL_9;
  }

  v6 = *(v2 + 8);
  v7 = *(v2 + 96);
  v8 = *(v2 + 104);
  v9 = v4 + (a1 << 7);
  v10 = *(v4 + 72);
  v11 = *(v9 + 32);
  v13 = *(v9 + 48);
  v12 = *(v9 + 56);
  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  v17 = *(v9 + 88);
  v24 = *(v2 + 120);
  if (v10 > 3)
  {
    if (*(v4 + 72) > 5u)
    {
      if (v10 == 6)
      {
        v18 = 0xE300000000000000;
        v19 = 5456722;
      }

      else
      {
        v18 = 0xEC000000534D5365;
        v19 = 0x74696C6C65746153;
      }
    }

    else if (v10 == 4)
    {
      v19 = 5459283;
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xE800000000000000;
      v19 = 0x656D695465636146;
    }
  }

  else if (*(v4 + 72) > 1u)
  {
    if (v10 == 2)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xEC0000006574694CLL;
    }

    v19 = 0x6567617373654D69;
  }

  else if (*(v4 + 72))
  {
    v18 = 0xE300000000000000;
    v19 = 7958113;
  }

  else
  {
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
  }

  *a2 = *v2;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = a1;
  *(a2 + 32) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = v7;
  *(a2 + 104) = v8;
  *(a2 + 120) = v24;
  *(a2 + 128) = v19;
  *(a2 + 136) = v18;
}

Swift::Int_optional __swiftcall ImportExport.Participant.index(of:)(Swift::String of)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = v3 == 0;
  if (v3)
  {
    object = of._object;
    countAndFlagsBits = of._countAndFlagsBits;
    v7 = 0;
    v8 = (v2 + 48);
    while (1)
    {
      v9 = *(v8 - 1) == countAndFlagsBits && *v8 == object;
      if (v9 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 16;
      v4 = v3 == v7;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v10 = v4;
  v11 = v7;
  result.value = v11;
  result.is_nil = v10;
  return result;
}

uint64_t ImportExport.Participant.index(of:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 40);
    v40 = *(a1 + 48);
    v41 = *(a1 + 32);
    v38 = *(a1 + 56);
    v39 = v2;
    v37 = *(a1 + 72);
    v35 = *(a1 + 64);
    v36 = *(a1 + 88);
    v9 = (v2 + 32);
    v10 = v3 - 1;
    v32 = *(a1 + 96);
    v33 = *(a1 + 80);
    v34 = *(a1 + 104);
    while (1)
    {
      v11 = v9[2];
      v12 = v9[3];
      v13 = v9[1];
      *v43 = *v9;
      *&v43[16] = v13;
      *&v43[32] = v11;
      v44 = v12;
      v14 = v9[4];
      v15 = v9[5];
      v16 = v9[7];
      v47 = v9[6];
      v48 = v16;
      v45 = v14;
      v46 = v15;
      if (*&v43[8] != __PAIR128__(v6, v5))
      {
        result = sub_1A84E67AC();
        if ((result & 1) == 0)
        {
          goto LABEL_82;
        }

        result = sub_1A84E67AC();
        if ((result & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if (*&v43[24] != __PAIR128__(v41, v7))
      {
        result = sub_1A84E67AC();
        if ((result & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if (v43[40] > 3u)
      {
        if (v43[40] > 5u)
        {
          if (v43[40] == 6)
          {
            v22 = 0xE300000000000000;
            v21 = 5456722;
            if (v8 > 3)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v21 = 0x74696C6C65746153;
            v22 = 0xEC000000534D5365;
            if (v8 > 3)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (v43[40] == 4)
          {
            v21 = 5459283;
          }

          else
          {
            v21 = 0x656D695465636146;
          }

          if (v43[40] == 4)
          {
            v22 = 0xE300000000000000;
          }

          else
          {
            v22 = 0xE800000000000000;
          }

          if (v8 > 3)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v18 = 0xEC0000006574694CLL;
        if (v43[40] == 2)
        {
          v18 = 0xE800000000000000;
        }

        v19 = 0x6E776F6E6B6E75;
        if (v43[40])
        {
          v19 = 7958113;
        }

        v20 = 0xE700000000000000;
        if (v43[40])
        {
          v20 = 0xE300000000000000;
        }

        if (v43[40] <= 1u)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0x6567617373654D69;
        }

        if (v43[40] <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v8 > 3)
        {
LABEL_35:
          v23 = 0x74696C6C65746153;
          if (v8 == 6)
          {
            v23 = 5456722;
          }

          v24 = 0xEC000000534D5365;
          if (v8 == 6)
          {
            v24 = 0xE300000000000000;
          }

          v25 = 5459283;
          if (v8 != 4)
          {
            v25 = 0x656D695465636146;
          }

          v26 = 0xE800000000000000;
          if (v8 == 4)
          {
            v26 = 0xE300000000000000;
          }

          if (v8 <= 5)
          {
            v27 = v25;
          }

          else
          {
            v27 = v23;
          }

          if (v8 <= 5)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          goto LABEL_58;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v28 = 0xE800000000000000;
        }

        else
        {
          v28 = 0xEC0000006574694CLL;
        }

        v27 = 0x6567617373654D69;
      }

      else if (v8)
      {
        v28 = 0xE300000000000000;
        v27 = 7958113;
      }

      else
      {
        v28 = 0xE700000000000000;
        v27 = 0x6E776F6E6B6E75;
      }

LABEL_58:
      v29 = v7;
      if (v21 == v27 && v22 == v28)
      {
        sub_1A840243C(v43, v42);
      }

      else
      {
        v30 = sub_1A84E67AC();
        sub_1A840243C(v43, v42);

        if ((v30 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      if (v44 != __PAIR128__(v38, v40) && (sub_1A84E67AC() & 1) == 0)
      {
        goto LABEL_81;
      }

      if (*(&v45 + 1))
      {
        if (!v37 || v45 != __PAIR128__(v37, v35) && (sub_1A84E67AC() & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v37)
      {
        goto LABEL_81;
      }

      if (*(&v46 + 1))
      {
        if (!v36 || v46 != __PAIR128__(v36, v33) && (sub_1A84E67AC() & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v36)
      {
        goto LABEL_81;
      }

      if (!*(&v47 + 1))
      {
        result = sub_1A841E128(v43);
        v7 = v29;
        v2 = v39;
        if (!v34)
        {
          return v4;
        }

        goto LABEL_82;
      }

      if (!v34)
      {
LABEL_81:
        result = sub_1A841E128(v43);
        v7 = v29;
        v2 = v39;
        goto LABEL_82;
      }

      if (v47 == __PAIR128__(v34, v32))
      {
        sub_1A841E128(v43);
        return v4;
      }

      v31 = sub_1A84E67AC();
      result = sub_1A841E128(v43);
      v7 = v29;
      v2 = v39;
      if (v31)
      {
        return v4;
      }

LABEL_82:
      if (v10 == v4)
      {
        return 0;
      }

      ++v4;
      v9 += 8;
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

uint64_t ImportExport.Participant.serviceTypeString.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

unint64_t sub_1A8438F44(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0xD000000000000010;
    if (a1 == 3)
    {
      v7 = 0x65636E6575716573;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000014;
    }

    if (a1)
    {
      v6 = 0x6573736572646461;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x61737265766E6F63;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0x5465636976726573;
    if (a1 != 6)
    {
      v4 = 0x437972746E756F63;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A84390D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A843C2A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8439108(uint64_t a1)
{
  v2 = sub_1A843B310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8439144(uint64_t a1)
{
  v2 = sub_1A843B310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Participant.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7A40, &qword_1A8504B80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *(v1 + 16);
  v29 = *(v1 + 24);
  v30 = v7;
  v8 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = v8;
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v25 = *(v1 + 64);
  v26 = v9;
  v34 = *(v1 + 72);
  v11 = *(v1 + 80);
  v23 = *(v1 + 88);
  v24 = v10;
  v12 = *(v1 + 104);
  v20 = *(v1 + 96);
  v21 = v12;
  v22 = v11;
  v13 = *(v1 + 112);
  v19 = *(v1 + 120);
  v14 = *(v1 + 136);
  v17[0] = *(v1 + 128);
  v17[1] = v14;
  v18 = v13;
  sub_1A82471E0(a1, a1[3]);
  sub_1A843B310();
  sub_1A84E68AC();
  LOBYTE(v32) = 0;
  v15 = v31;
  sub_1A84E66CC();
  if (!v15)
  {
    v32 = v30;
    v35 = 1;
    sub_1A83EA2FC(&qword_1EB2E7A50, &qword_1A8504B88);
    sub_1A843B40C(&qword_1EB2E7A58, sub_1A843B364, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    LOBYTE(v32) = 2;
    sub_1A84E670C();
    LOBYTE(v32) = 3;
    sub_1A84E673C();
    LOBYTE(v32) = 4;
    sub_1A84E66CC();
    LOBYTE(v32) = 5;
    sub_1A84E66CC();
    LOBYTE(v32) = v34;
    v35 = 6;
    sub_1A841E278();
    sub_1A84E672C();
    LOBYTE(v32) = 7;
    sub_1A84E66CC();
    LOBYTE(v32) = 8;
    sub_1A84E66AC();
    v32 = v18;
    v33 = v19;
    v35 = 9;
    sub_1A843B3B8();
    sub_1A84E66BC();
    LOBYTE(v32) = 10;
    sub_1A84E66CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImportExport.Participant.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = sub_1A83EA2FC(&qword_1EB2E7A70, &qword_1A8504B90);
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v27 - v6;
  sub_1A82471E0(a1, a1[3]);
  sub_1A843B310();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v8 = v5;
  LOBYTE(v52) = 0;
  *&v41 = sub_1A84E660C();
  *(&v41 + 1) = v9;
  sub_1A83EA2FC(&qword_1EB2E7A50, &qword_1A8504B88);
  LOBYTE(v43) = 1;
  sub_1A843B40C(&qword_1EB2E7A78, sub_1A843B484, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  v39 = v52;
  LOBYTE(v52) = 2;
  v37 = sub_1A84E664C();
  LOBYTE(v52) = 3;
  v36 = sub_1A84E667C();
  LOBYTE(v52) = 4;
  v35 = sub_1A84E660C();
  v38 = v10;
  LOBYTE(v52) = 5;
  v34 = sub_1A84E660C();
  v40 = v11;
  LOBYTE(v43) = 6;
  sub_1A841E440();
  sub_1A84E666C();
  v32 = v52;
  LOBYTE(v52) = 7;
  v12 = sub_1A84E660C();
  v33 = v13;
  v30 = v12;
  LOBYTE(v52) = 8;
  v29 = sub_1A84E65DC();
  v31 = v14;
  LOBYTE(v43) = 9;
  sub_1A843B4D8();
  sub_1A84E65FC();
  v28 = v52;
  v70 = v53;
  v71 = 10;
  v15 = sub_1A84E660C();
  v17 = v16;
  (*(v8 + 8))(v7, v42);
  v18 = *(&v41 + 1);
  v43 = v41;
  v19 = v38;
  *&v44 = v39;
  *(&v44 + 1) = v37;
  *&v45 = v36;
  *(&v45 + 1) = v35;
  *&v46 = v38;
  *(&v46 + 1) = v34;
  v20 = v40;
  *&v47 = v40;
  BYTE8(v47) = v32;
  *&v48 = v30;
  *(&v48 + 1) = v33;
  *&v49 = v29;
  *(&v49 + 1) = v31;
  *&v50 = v28;
  LODWORD(v42) = v70;
  BYTE8(v50) = v70;
  *&v51 = v15;
  *(&v51 + 1) = v17;
  v21 = v44;
  *a2 = v41;
  a2[1] = v21;
  v22 = v51;
  v23 = v48;
  a2[4] = v47;
  a2[5] = v23;
  v24 = v46;
  a2[2] = v45;
  a2[3] = v24;
  v25 = v50;
  a2[6] = v49;
  a2[7] = v25;
  a2[8] = v22;
  sub_1A8400E7C(&v43, &v52);
  sub_1A8244788(a1);
  v52 = v41;
  v53 = v18;
  v54 = v39;
  v55 = v37;
  v56 = v36;
  v57 = v35;
  v58 = v19;
  v59 = v34;
  v60 = v20;
  v61 = v32;
  v62 = v30;
  v63 = v33;
  v64 = v29;
  v65 = v31;
  v66 = v28;
  v67 = v42;
  v68 = v15;
  v69 = v17;
  return sub_1A8400ED8(&v52);
}

uint64_t sub_1A8439BB0()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1A8439BE0()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1A8439C1C()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1A8439C4C()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 96);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8439CA0()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 112);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8439CF4()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 128);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8439D48()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = *(v2 + (v1 << 7) + 144);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A8439E24()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A8439E70(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t static ImportExport.Participant.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A8439EE8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A8439F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A8439F60(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A8439FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

unint64_t sub_1A8439FD8()
{
  v1 = 0x4164696C61766E69;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A843A06C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A843C640(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A843A094(uint64_t a1)
{
  v2 = sub_1A843B52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A0D0(uint64_t a1)
{
  v2 = sub_1A843B52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A10C(uint64_t a1)
{
  v2 = sub_1A843B5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A148(uint64_t a1)
{
  v2 = sub_1A843B5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A184(uint64_t a1)
{
  v2 = sub_1A843B580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A1C0(uint64_t a1)
{
  v2 = sub_1A843B580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A1FC(uint64_t a1)
{
  v2 = sub_1A843B67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A238(uint64_t a1)
{
  v2 = sub_1A843B67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A274(uint64_t a1)
{
  v2 = sub_1A843B628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A2B0(uint64_t a1)
{
  v2 = sub_1A843B628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ParticipantError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7A90, &qword_1A8504B98);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E7A98, &qword_1A8504BA0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - v6;
  v7 = sub_1A83EA2FC(&qword_1EB2E7AA0, &qword_1A8504BA8);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1A83EA2FC(&qword_1EB2E7AA8, &qword_1A8504BB0);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v39 = sub_1A83EA2FC(&qword_1EB2E7AB0, &qword_1A8504BB8);
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v27 - v14;
  v16 = v1[1];
  v37 = *v1;
  v38 = v16;
  v17 = *(v1 + 16);
  sub_1A82471E0(a1, a1[3]);
  sub_1A843B52C();
  sub_1A84E68AC();
  v18 = (v13 + 8);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v42 = 2;
      sub_1A843B5D4();
      v21 = v31;
      v19 = v39;
      sub_1A84E669C();
      v22 = v33;
      sub_1A84E66CC();
      v23 = v32;
    }

    else
    {
      v43 = 3;
      sub_1A843B580();
      v21 = v34;
      v19 = v39;
      sub_1A84E669C();
      v22 = v36;
      sub_1A84E66CC();
      v23 = v35;
    }

    (*(v23 + 8))(v21, v22);
  }

  else
  {
    if (v17)
    {
      v41 = 1;
      sub_1A843B628();
      v24 = v39;
      sub_1A84E669C();
      v25 = v30;
      sub_1A84E66CC();
      (*(v29 + 8))(v9, v25);
      return (*v18)(v15, v24);
    }

    v40 = 0;
    sub_1A843B67C();
    v19 = v39;
    sub_1A84E669C();
    v20 = v28;
    sub_1A84E66CC();
    (*(v27 + 8))(v12, v20);
  }

  return (*v18)(v15, v19);
}

uint64_t ImportExport.ParticipantError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = sub_1A83EA2FC(&qword_1EB2E7AE0, &qword_1A8504BC0);
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - v3;
  v50 = sub_1A83EA2FC(&qword_1EB2E7AE8, &qword_1A8504BC8);
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v48 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E7AF0, &qword_1A8504BD0);
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = sub_1A83EA2FC(&qword_1EB2E7AF8, &qword_1A8504BD8);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = sub_1A83EA2FC(&qword_1EB2E7B00, &unk_1A8504BE0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = a1[3];
  v61 = a1;
  sub_1A82471E0(a1, v16);
  sub_1A843B52C();
  v17 = v60;
  sub_1A84E689C();
  if (!v17)
  {
    v18 = v11;
    v48 = v9;
    v49 = 0;
    v19 = v8;
    v21 = v56;
    v20 = v57;
    v60 = v13;
    v23 = v58;
    v22 = v59;
    v24 = sub_1A84E668C();
    v25 = (2 * *(v24 + 16)) | 1;
    v62 = v24;
    v63 = v24 + 32;
    v64 = 0;
    v65 = v25;
    v26 = sub_1A8400954();
    if (v26 == 4 || v64 != v65 >> 1)
    {
      v33 = sub_1A84E64BC();
      swift_allocError();
      v35 = v34;
      sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20);
      *v35 = &type metadata for ImportExport.ParticipantError;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_1A8244788(v61);
    }

    v66 = v26;
    if (v26 <= 1u)
    {
      if (!v26)
      {
        v67 = 0;
        sub_1A843B67C();
        v27 = v49;
        sub_1A84E65BC();
        if (!v27)
        {
          v28 = v48;
          v29 = sub_1A84E660C();
          v31 = v30;
          (*(v51 + 8))(v18, v28);
          (*(v60 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v32 = v29;
LABEL_22:
          *v22 = v32;
          *(v22 + 8) = v31;
          *(v22 + 16) = v66;
          return sub_1A8244788(v61);
        }

        goto LABEL_14;
      }

      v67 = 1;
      sub_1A843B628();
      v41 = v49;
      sub_1A84E65BC();
      if (!v41)
      {
        v42 = v52;
        v32 = sub_1A84E660C();
        v31 = v46;
        (*(v53 + 8))(v19, v42);
        v38 = v60;
        goto LABEL_21;
      }

LABEL_14:
      (*(v60 + 8))(v15, v12);
      goto LABEL_9;
    }

    if (v26 == 2)
    {
      v67 = 2;
      sub_1A843B5D4();
      v37 = v49;
      sub_1A84E65BC();
      v38 = v60;
      if (v37)
      {
        goto LABEL_14;
      }

      v39 = v50;
      v40 = sub_1A84E660C();
      v31 = v45;
      v58 = v40;
      (*(v54 + 8))(v21, v39);
      v32 = v58;
    }

    else
    {
      v67 = 3;
      sub_1A843B580();
      v43 = v20;
      v44 = v49;
      sub_1A84E65BC();
      v38 = v60;
      if (v44)
      {
        (*(v60 + 8))(v15, v12);
        swift_unknownObjectRelease();
        return sub_1A8244788(v61);
      }

      v32 = sub_1A84E660C();
      v31 = v47;
      (*(v55 + 8))(v43, v23);
    }

LABEL_21:
    (*(v38 + 8))(v15, v12);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  return sub_1A8244788(v61);
}

void ImportExport.Participant.ConversationStatus.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F1B70860 + 24 * v1 + 32);
  while (v1 != 9)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A83EF594(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF594((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  sub_1A84E5D6C();
}

unint64_t sub_1A843B310()
{
  result = qword_1EB2E7A48;
  if (!qword_1EB2E7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A48);
  }

  return result;
}

unint64_t sub_1A843B364()
{
  result = qword_1EB2E7A60;
  if (!qword_1EB2E7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A60);
  }

  return result;
}

unint64_t sub_1A843B3B8()
{
  result = qword_1EB2E7A68;
  if (!qword_1EB2E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A68);
  }

  return result;
}

uint64_t sub_1A843B40C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7A50, &qword_1A8504B88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A843B484()
{
  result = qword_1EB2E7A80;
  if (!qword_1EB2E7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A80);
  }

  return result;
}

unint64_t sub_1A843B4D8()
{
  result = qword_1EB2E7A88;
  if (!qword_1EB2E7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A88);
  }

  return result;
}

unint64_t sub_1A843B52C()
{
  result = qword_1EB2E7AB8;
  if (!qword_1EB2E7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AB8);
  }

  return result;
}

unint64_t sub_1A843B580()
{
  result = qword_1EB2E7AC0;
  if (!qword_1EB2E7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AC0);
  }

  return result;
}

unint64_t sub_1A843B5D4()
{
  result = qword_1EB2E7AC8;
  if (!qword_1EB2E7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AC8);
  }

  return result;
}

unint64_t sub_1A843B628()
{
  result = qword_1EB2E7AD0;
  if (!qword_1EB2E7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AD0);
  }

  return result;
}

unint64_t sub_1A843B67C()
{
  result = qword_1EB2E7AD8;
  if (!qword_1EB2E7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AD8);
  }

  return result;
}

unint64_t sub_1A843B6D0(void *a1)
{
  a1[1] = sub_1A841E374();
  a1[2] = sub_1A841E224();
  result = sub_1A843B708();
  a1[3] = result;
  return result;
}

unint64_t sub_1A843B708()
{
  result = qword_1EB2E7B08;
  if (!qword_1EB2E7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B08);
  }

  return result;
}

unint64_t sub_1A843B75C(uint64_t a1)
{
  result = sub_1A843B708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A843B784()
{
  result = qword_1EB2E7B10;
  if (!qword_1EB2E7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B10);
  }

  return result;
}

unint64_t sub_1A843B7DC()
{
  result = qword_1EB2E7B18;
  if (!qword_1EB2E7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B18);
  }

  return result;
}

unint64_t sub_1A843B834()
{
  result = qword_1EB2E7B20;
  if (!qword_1EB2E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B20);
  }

  return result;
}

unint64_t sub_1A843B88C()
{
  result = qword_1EB2E7B28;
  if (!qword_1EB2E7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B28);
  }

  return result;
}

unint64_t sub_1A843B8E4()
{
  result = qword_1EB2E7B30;
  if (!qword_1EB2E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B30);
  }

  return result;
}

__n128 sub_1A843B938(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1A843B964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A843B9AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A843BA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A843BA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s11ParticipantV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ParticipantV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A843BC7C()
{
  result = qword_1EB2E7B38;
  if (!qword_1EB2E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B38);
  }

  return result;
}

unint64_t sub_1A843BCD4()
{
  result = qword_1EB2E7B40;
  if (!qword_1EB2E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B40);
  }

  return result;
}

unint64_t sub_1A843BD2C()
{
  result = qword_1EB2E7B48;
  if (!qword_1EB2E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B48);
  }

  return result;
}

unint64_t sub_1A843BD84()
{
  result = qword_1EB2E7B50;
  if (!qword_1EB2E7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B50);
  }

  return result;
}

unint64_t sub_1A843BDDC()
{
  result = qword_1EB2E7B58;
  if (!qword_1EB2E7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B58);
  }

  return result;
}

unint64_t sub_1A843BE34()
{
  result = qword_1EB2E7B60;
  if (!qword_1EB2E7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B60);
  }

  return result;
}

unint64_t sub_1A843BE8C()
{
  result = qword_1EB2E7B68;
  if (!qword_1EB2E7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B68);
  }

  return result;
}

unint64_t sub_1A843BEE4()
{
  result = qword_1EB2E7B70;
  if (!qword_1EB2E7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B70);
  }

  return result;
}

unint64_t sub_1A843BF3C()
{
  result = qword_1EB2E7B78;
  if (!qword_1EB2E7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B78);
  }

  return result;
}

unint64_t sub_1A843BF94()
{
  result = qword_1EB2E7B80;
  if (!qword_1EB2E7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B80);
  }

  return result;
}

unint64_t sub_1A843BFEC()
{
  result = qword_1EB2E7B88;
  if (!qword_1EB2E7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B88);
  }

  return result;
}

unint64_t sub_1A843C044()
{
  result = qword_1EB2E7B90;
  if (!qword_1EB2E7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B90);
  }

  return result;
}

unint64_t sub_1A843C09C()
{
  result = qword_1EB2E7B98;
  if (!qword_1EB2E7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B98);
  }

  return result;
}

unint64_t sub_1A843C0F4()
{
  result = qword_1EB2E7BA0;
  if (!qword_1EB2E7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BA0);
  }

  return result;
}

unint64_t sub_1A843C14C()
{
  result = qword_1EB2E7BA8;
  if (!qword_1EB2E7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BA8);
  }

  return result;
}

unint64_t sub_1A843C1A4()
{
  result = qword_1EB2E7BB0;
  if (!qword_1EB2E7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BB0);
  }

  return result;
}

unint64_t sub_1A843C1FC()
{
  result = qword_1EB2E7BB8;
  if (!qword_1EB2E7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BB8);
  }

  return result;
}

unint64_t sub_1A843C254()
{
  result = qword_1EB2E7BC0;
  if (!qword_1EB2E7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BC0);
  }

  return result;
}

uint64_t sub_1A843C2A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A85310D0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85310F0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531110 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531130 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85306C0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1A843C640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001A8531150 == a2;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531170 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEE00737365726464 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8531190 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ImportExport.Message.Reaction.reactingToMessageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImportExport.Message.Reaction.reactionEmoji.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double ImportExport.Message.Reaction.layoutDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 52);
  *a1 = *(v1 + 48);
  *(a1 + 4) = v2;
  *(a1 + 8) = *(v1 + 56);
  result = *(v1 + 72);
  *(a1 + 24) = result;
  return result;
}

double ImportExport.Message.Reaction.init(reactionType:reactingToMessageID:reactingToMessageLength:reactionEmoji:layoutDescriptor:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  v9 = *(a7 + 1);
  *a8 = *a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  *(a8 + 52) = v9;
  *(a8 + 56) = *(a7 + 4);
  result = *(a7 + 3);
  *(a8 + 72) = result;
  return result;
}

unint64_t sub_1A843C898()
{
  v1 = 0x6E6F697463616572;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 == 3)
  {
    v4 = 0x6E6F697463616572;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A843C944@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A843E504(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A843C96C(uint64_t a1)
{
  v2 = sub_1A843E0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843C9A8(uint64_t a1)
{
  v2 = sub_1A843E0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.Reaction.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7BC8, &qword_1A8505888);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v22 = *(v1 + 16);
  v23 = v9;
  v10 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = v10;
  v19 = *(v1 + 40);
  v30 = *(v1 + 48);
  HIDWORD(v18) = *(v1 + 49);
  v11 = *(v1 + 52);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = *(v1 + 72);
  sub_1A82471E0(a1, a1[3]);
  sub_1A843E0B0();
  sub_1A84E68AC();
  v24 = v8;
  v31 = 0;
  sub_1A843E104();
  sub_1A84E672C();
  if (!v2)
  {
    v15 = BYTE4(v18);
    v16 = v30;
    v24 = 1;
    sub_1A84E66CC();
    v24 = 2;
    sub_1A84E670C();
    v24 = 3;
    sub_1A84E66AC();
    v24 = v16;
    v25 = v15;
    v26 = v11;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v31 = 4;
    sub_1A843E158();
    sub_1A84E672C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ImportExport.Message.Reaction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7BE8, &qword_1A8505890);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A843E0B0();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  LOBYTE(v35) = 0;
  sub_1A843E1AC();
  sub_1A84E666C();
  v9 = v40[0];
  v40[0] = 1;
  v10 = sub_1A84E660C();
  v12 = v11;
  v34 = v10;
  v40[0] = 2;
  v33 = sub_1A84E664C();
  v40[0] = 3;
  v13 = sub_1A84E65DC();
  *(&v32 + 1) = v14;
  *&v32 = v13;
  v51 = 4;
  sub_1A843E200();
  sub_1A84E666C();
  (*(v6 + 8))(v8, v5);
  v31 = v52;
  v30 = HIBYTE(v52);
  v15 = v53;
  v16 = v54;
  v19 = v55;
  v18 = v19 >> 64;
  v17 = v19;
  LOBYTE(v35) = v9;
  v20 = v34;
  *(&v35 + 1) = v34;
  *&v36 = v12;
  v21 = v33;
  *(&v36 + 1) = v33;
  v22 = v32;
  v37 = v32;
  v23 = *(&v32 + 1);
  LOWORD(v38) = v52;
  DWORD1(v38) = v53;
  *(&v38 + 1) = v54;
  v39 = v55;
  v24 = v35;
  v25 = v36;
  v26 = v55;
  v27 = v32;
  a2[3] = v38;
  a2[4] = v26;
  a2[1] = v25;
  a2[2] = v27;
  *a2 = v24;
  sub_1A843E254(&v35, v40);
  sub_1A8244788(a1);
  v40[0] = v9;
  v41 = v20;
  v42 = v12;
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v46 = v31;
  v47 = v30;
  v48 = v15;
  v49 = v16;
  v50 = __PAIR128__(v18, v17);
  return sub_1A843E28C(v40);
}

BOOL sub_1A843D0E4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x72656B63697473;
    switch(*v4)
    {
      case 1:
        v9 = 0x697453696A6F6D65;
        v10 = 1919249251;
        goto LABEL_24;
      case 2:
        v11 = 0x547472616568;
        goto LABEL_23;
      case 3:
        v9 = 0x705573626D756874;
        v8 = 0xEF6B636162706154;
        break;
      case 4:
        v9 = 0xD000000000000011;
        v8 = 0x80000001A852EC90;
        break;
      case 5:
        v9 = 0x6270615461486168;
        v8 = 0xEB000000006B6361;
        break;
      case 6:
        v9 = 0xD000000000000012;
        v8 = 0x80000001A852ECB0;
        break;
      case 7:
        v9 = 0xD000000000000013;
        v8 = 0x80000001A852ECD0;
        break;
      case 8:
        v11 = 0x54696A6F6D65;
LABEL_23:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
        v10 = 1801675106;
LABEL_24:
        v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 9:
        v9 = 0x5472656B63697473;
        v8 = 0xEE006B6361627061;
        break;
      case 0xA:
        v9 = 0xD000000000000013;
        v8 = 0x80000001A852ED00;
        break;
      case 0xB:
        v9 = 0xD000000000000016;
        v8 = 0x80000001A852ED20;
        break;
      case 0xC:
        v9 = 0xD000000000000018;
        v8 = 0x80000001A852ED40;
        break;
      case 0xD:
        v9 = 0xD000000000000012;
        v8 = 0x80000001A852ED60;
        break;
      case 0xE:
        v9 = 0xD000000000000019;
        v8 = 0x80000001A852ED80;
        break;
      case 0xF:
        v9 = 0xD00000000000001ALL;
        v8 = 0x80000001A852EDA0;
        break;
      case 0x10:
        v9 = 0xD000000000000013;
        v8 = 0x80000001A852EDC0;
        break;
      case 0x11:
        v9 = 0xD000000000000015;
        v8 = 0x80000001A852EDE0;
        break;
      default:
        break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x72656B63697473;
    switch(a1)
    {
      case 1:
        v14 = 0x697453696A6F6D65;
        v15 = 1919249251;
        goto LABEL_60;
      case 2:
        v16 = 0x547472616568;
        goto LABEL_59;
      case 3:
        v12 = 0xEF6B636162706154;
        if (v9 != 0x705573626D756874)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 4:
        v12 = 0x80000001A852EC90;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 5:
        v12 = 0xEB000000006B6361;
        if (v9 != 0x6270615461486168)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 6:
        v12 = 0x80000001A852ECB0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 7:
        v12 = 0x80000001A852ECD0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 8:
        v16 = 0x54696A6F6D65;
LABEL_59:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
        v15 = 1801675106;
LABEL_60:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v14)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 9:
        v12 = 0xEE006B6361627061;
        if (v9 != 0x5472656B63697473)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x80000001A852ED00;
        goto LABEL_55;
      case 11:
        v12 = 0x80000001A852ED20;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 12:
        v12 = 0x80000001A852ED40;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 13:
        v12 = 0x80000001A852ED60;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 14:
        v12 = 0x80000001A852ED80;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 15:
        v12 = 0x80000001A852EDA0;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 16:
        v12 = 0x80000001A852EDC0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 17:
        v12 = 0x80000001A852EDE0;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      default:
LABEL_55:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_56:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_1A84E67AC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL ImportExport.Message.Reaction.ReactionType.isTapback.getter()
{
  v1 = *v0;
  if (sub_1A843D0E4(*v0, &unk_1F1B70418))
  {
    return 1;
  }

  return sub_1A843D0E4(v1, &unk_1F1B70440);
}

uint64_t ImportExport.Message.Reaction.ReactionType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E67BC();

  v6 = 18;
  if (v4 < 0x12)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A843D694()
{
  v0 = sub_1A84E684C();
  ImportExport.Message.Reaction.ReactionType.name.getter(v0);
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A843D6FC(uint64_t a1)
{
  ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  sub_1A84E5E5C();
}

uint64_t sub_1A843D760(uint64_t a1)
{
  v1 = sub_1A84E684C();
  ImportExport.Message.Reaction.ReactionType.name.getter(v1);
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A843D874(uint64_t a1)
{
  v1 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  v3 = v2;
  if (v1 == ImportExport.Message.Reaction.ReactionType.name.getter(v1) && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1A84E67AC();
  }

  return v6 & 1;
}

uint64_t sub_1A843D91C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t ImportExport.Message.Reaction.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 4);
  v11 = *(v0 + 1);
  v4 = *(v0 + 5);

  sub_1A84E646C();
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x6E6F697463616552, 0xE800000000000000);
  v5 = MEMORY[0x1AC56A990](8250, 0xE200000000000000);
  strcpy(v12, "ReactionType: ");
  HIBYTE(v12[1]) = -18;
  v13 = v1;
  v6 = ImportExport.Message.Reaction.ReactionType.name.getter(v5);
  if (v4)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0x3E656E6F6E3CLL;
  }

  if (!v4)
  {
    v4 = 0xE600000000000000;
  }

  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](v12[0], v12[1]);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A85311B0);
  MEMORY[0x1AC56A990](v11, v2);
  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A85311D0);
  MEMORY[0x1AC56A990](v7, v4);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85311F0);
  v8 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8531210);
  v9 = ImportExport.Message.LayoutDescriptor.description.getter();
  MEMORY[0x1AC56A990](v9);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return v14;
}

uint64_t ImportExport.Message.Reaction.ReactionType.description.getter(uint64_t a1)
{
  strcpy(v3, "ReactionType: ");
  v1 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  MEMORY[0x1AC56A990](v1);

  return v3[0];
}

uint64_t sub_1A843DC28()
{
  result = 0x72656B63697473;
  switch(*v0)
  {
    case 1:
      result = 0x697453696A6F6D65;
      break;
    case 2:
      v2 = 0x547472616568;
      goto LABEL_19;
    case 3:
      result = 0x705573626D756874;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6270615461486168;
      break;
    case 6:
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      v2 = 0x54696A6F6D65;
LABEL_19:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
      break;
    case 9:
      result = 0x5472656B63697473;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A843DE48(uint64_t a1)
{
  strcpy(v3, "ReactionType: ");
  v1 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  MEMORY[0x1AC56A990](v1);

  return v3[0];
}

BOOL _s6IMCore12ImportExportO7MessageV8ReactionV2eeoiySbAG_AGtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v32 = *(a1 + 40);
  v30 = *(a1 + 49);
  v31 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v26 = *(a2 + 4);
  v27 = *(a1 + 32);
  v13 = *(a2 + 5);
  v28 = a2[49];
  v29 = a2[48];
  v14 = *(a2 + 13);
  v15 = *(a2 + 7);
  v16 = *(a2 + 8);
  v17 = *(a2 + 9);
  LOBYTE(v34[0]) = *a1;
  LOBYTE(v33[0]) = v9;
  v18 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  v20 = v19;
  if (v18 == ImportExport.Message.Reaction.ReactionType.name.getter(v18) && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1A84E67AC();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 == v10 && v3 == v11)
  {
    if (v4 != v12)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v23 = sub_1A84E67AC();
  v24 = 0;
  if ((v23 & 1) != 0 && v4 == v12)
  {
LABEL_11:
    if (v32)
    {
      if (!v13 || (v27 != v26 || v32 != v13) && (sub_1A84E67AC() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (!v13)
    {
LABEL_16:
      LOBYTE(v34[0]) = v31;
      BYTE1(v34[0]) = v30;
      HIDWORD(v34[0]) = v5;
      v34[1] = v6;
      v34[2] = v7;
      v34[3] = v8;
      LOBYTE(v33[0]) = v29;
      BYTE1(v33[0]) = v28;
      HIDWORD(v33[0]) = v14;
      v33[1] = v15;
      v33[2] = v16;
      v33[3] = v17;
      return _s6IMCore12ImportExportO7MessageV16LayoutDescriptorV2eeoiySbAG_AGtFZ_0(v34, v33);
    }

    return 0;
  }

  return v24;
}

unint64_t sub_1A843E0B0()
{
  result = qword_1EB2E7BD0;
  if (!qword_1EB2E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BD0);
  }

  return result;
}

unint64_t sub_1A843E104()
{
  result = qword_1EB2E7BD8;
  if (!qword_1EB2E7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BD8);
  }

  return result;
}

unint64_t sub_1A843E158()
{
  result = qword_1EB2E7BE0;
  if (!qword_1EB2E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BE0);
  }

  return result;
}

unint64_t sub_1A843E1AC()
{
  result = qword_1EB2E7BF0;
  if (!qword_1EB2E7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BF0);
  }

  return result;
}

unint64_t sub_1A843E200()
{
  result = qword_1EB2E7BF8;
  if (!qword_1EB2E7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BF8);
  }

  return result;
}

unint64_t sub_1A843E2C0()
{
  result = qword_1EB2E7C00;
  if (!qword_1EB2E7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C00);
  }

  return result;
}

__n128 sub_1A843E314(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A843E330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A843E378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A843E400()
{
  result = qword_1EB2E7C08;
  if (!qword_1EB2E7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C08);
  }

  return result;
}

unint64_t sub_1A843E458()
{
  result = qword_1EB2E7C10;
  if (!qword_1EB2E7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C10);
  }

  return result;
}

unint64_t sub_1A843E4B0()
{
  result = qword_1EB2E7C18;
  if (!qword_1EB2E7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C18);
  }

  return result;
}

uint64_t sub_1A843E504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697463616572 && a2 == 0xEC00000065707954;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8531230 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8531250 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697463616572 && a2 == 0xED0000696A6F6D45 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531270 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1A843E6C4()
{
  result = qword_1EB2E7C20;
  if (!qword_1EB2E7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C20);
  }

  return result;
}

Swift::Void __swiftcall ImportExport.Timer.start()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A84E56DC();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843E9F0(v3, v0 + v6);
  swift_endAccess();
  v5(v3, 1, 1, v4);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v3, v0 + v7);
  swift_endAccess();
  sub_1A84E56CC();
  v5(v3, 0, 1, v4);
  swift_beginAccess();
  sub_1A843E9F0(v3, v0 + v6);
  swift_endAccess();
}

Swift::Void __swiftcall ImportExport.Timer.reset()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A84E56DC();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843E9F0(v3, v0 + v6);
  swift_endAccess();
  v5(v3, 1, 1, v4);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v3, v0 + v7);
  swift_endAccess();
}

uint64_t sub_1A843E9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall ImportExport.Timer.stop()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v7, v6);
  v8 = sub_1A84E56DC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  sub_1A824B2D4(v6, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v10 == 1)
  {
    sub_1A84E653C();
    __break(1u);
  }

  else
  {
    sub_1A84E56CC();
    (*(v9 + 56))(v4, 0, 1, v8);
    v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843E9F0(v4, v0 + v11);
    swift_endAccess();
  }
}

BOOL ImportExport.Timer.didStart.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v4, v3);
  v5 = sub_1A84E56DC();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1A824B2D4(v3, &qword_1EB2E6F48, &unk_1A8501F00);
  return v6;
}

uint64_t sub_1A843ED60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ImportExport.Timer.isTiming.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18[-v6];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v10, v9);
  v11 = sub_1A84E56DC();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v13 == 1)
  {
    return 0;
  }

  sub_1A843ED60(v0 + v10, v7);
  v14 = 1;
  v15 = v12(v7, 1, v11);
  sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v15 != 1)
  {
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v0 + v16, v4);
    v14 = v12(v4, 1, v11) == 1;
    sub_1A824B2D4(v4, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  return v14;
}

BOOL ImportExport.Timer.didStop.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v7, v6);
  v8 = sub_1A84E56DC();
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  sub_1A824B2D4(v6, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v10 == 1)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v12, v4);
  v11 = v9(v4, 1, v8) != 1;
  sub_1A824B2D4(v4, &qword_1EB2E6F48, &unk_1A8501F00);
  return v11;
}

BOOL ImportExport.Timer.isEmpty.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18[-v6];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v10, v9);
  v11 = sub_1A84E56DC();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v13 != 1)
  {
    return 0;
  }

  sub_1A843ED60(v0 + v10, v7);
  v14 = 1;
  v15 = v12(v7, 1, v11);
  sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v15 != 1)
  {
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v0 + v16, v4);
    v14 = v12(v4, 1, v11) == 1;
    sub_1A824B2D4(v4, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  return v14;
}

uint64_t sub_1A843F3D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1A843ED60(v2 + v4, a2);
}

uint64_t sub_1A843F430(uint64_t *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1A84E56DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  sub_1A843ED60(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A824B2D4(v5, &qword_1EB2E6F48, &unk_1A8501F00);
    return 48;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = objc_opt_self();
    v13 = sub_1A84E565C();
    v14 = [v12 localizedStringFromDate:v13 dateStyle:2 timeStyle:2];

    v15 = sub_1A84E5DBC();
    (*(v7 + 8))(v9, v6);
    return v15;
  }
}

uint64_t ImportExport.Timer.elapsedTime.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v25 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = sub_1A84E56DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v28 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v16, v9);
  v17 = v11[6];
  if (v17(v9, 1, v10) == 1)
  {
    return sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  v26 = v11[4];
  v27 = v4;
  v26(v15, v9, v10);
  v19 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v19, v7);
  v20 = v17(v7, 1, v10);
  sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v20 == 1)
  {
    v21 = v28;
    sub_1A84E56CC();
LABEL_7:
    sub_1A84E561C();
    sub_1A84E561C();
    v24 = v11[1];
    v24(v21, v10);
    return (v24)(v15, v10);
  }

  v22 = v0 + v19;
  v23 = v27;
  sub_1A843ED60(v22, v27);
  result = (v17)(v23, 1, v10);
  if (result != 1)
  {
    v21 = v28;
    v26(v28, v23, v10);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Timer.elapsedTimeDescription.getter()
{
  v0 = sub_1A84E68EC();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A84E68CC();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A84E694C();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A84E695C();
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ImportExport.Timer.elapsedTime.getter();
  v13 = sub_1A84E697C();
  v18[1] = v14;
  v18[2] = v13;
  sub_1A83EA2FC(&qword_1EB2E7C30, &qword_1A8505C30);
  sub_1A84E692C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8505C20;
  sub_1A84E690C();
  sub_1A84E691C();
  sub_1A84E68FC();
  sub_1A848FA10(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A84E693C();
  sub_1A84E68BC();
  sub_1A84E68DC();
  sub_1A84E523C();

  (*(v24 + 8))(v2, v25);
  (*(v22 + 8))(v5, v23);
  (*(v6 + 8))(v8, v21);
  sub_1A8441AEC(&qword_1EB2E7C38, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
  v16 = v19;
  sub_1A84E696C();
  (*(v20 + 8))(v12, v16);
  return v26;
}

uint64_t ImportExport.Timer.__allocating_init(withStartTime:endTime:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v7(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, 1, 1, v6);
  swift_beginAccess();
  sub_1A843E9F0(a1, v4 + v5);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(a2, v4 + v8);
  swift_endAccess();
  return v4;
}

uint64_t ImportExport.Timer.init(withStartTime:endTime:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v7(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, 1, 1, v6);
  swift_beginAccess();
  sub_1A843E9F0(a1, v2 + v5);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(a2, v2 + v8);
  swift_endAccess();
  return v2;
}

uint64_t sub_1A843FFA0()
{
  if (*v0)
  {
    return 0x656D6954646E65;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_1A843FFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A84400C4(uint64_t a1)
{
  v2 = sub_1A84417A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8440100(uint64_t a1)
{
  v2 = sub_1A84417A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Timer.deinit()
{
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, &qword_1EB2E6F48, &unk_1A8501F00);
  return v0;
}

uint64_t ImportExport.Timer.__deallocating_deinit()
{
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, &qword_1EB2E6F48, &unk_1A8501F00);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.Timer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = sub_1A83EA2FC(&qword_1EB2E7C40, &qword_1A8505C38);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84417A8();
  sub_1A84E68AC();
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v3 + v14, v9);
  v21 = 0;
  sub_1A84E56DC();
  sub_1A8441AEC(&qword_1EB2E7C50, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1A84E66BC();
  sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
  if (!v2)
  {
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    v16 = v3 + v15;
    v17 = v20;
    sub_1A843ED60(v16, v20);
    v22 = 1;
    sub_1A84E66BC();
    sub_1A824B2D4(v17, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t ImportExport.Timer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.Timer.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.Timer.init(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v20 - v7;
  v23 = sub_1A83EA2FC(&qword_1EB2E7C58, &qword_1A8505C40);
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v11 = sub_1A84E56DC();
  v12 = *(*(v11 - 8) + 56);
  v12(v2 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v12(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, 1, 1, v11);
  v14 = a1[3];
  v26 = a1;
  sub_1A82471E0(a1, v14);
  sub_1A84417A8();
  v15 = v24;
  sub_1A84E689C();
  if (v15)
  {
  }

  else
  {
    v24 = v13;
    v17 = v20;
    v16 = v21;
    v25 = 0;
    sub_1A8441AEC(&qword_1EB2E7C60, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1A84E65FC();
    swift_beginAccess();
    sub_1A843E9F0(v22, v2 + v10);
    swift_endAccess();
    v25 = 1;
    sub_1A84E65FC();
    (*(v17 + 8))(v9, v23);
    v19 = v24;
    swift_beginAccess();
    sub_1A843E9F0(v16, v2 + v19);
    swift_endAccess();
  }

  sub_1A8244788(v26);
  return v2;
}

uint64_t sub_1A84408A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.Timer.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.Timer.format(report:)(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - v7;
  v9 = sub_1A84E56DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v56 = 0;
  v57 = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v2 + v15, v8);
  v54 = *(v10 + 48);
  if (v54(v8, 1, v9) == 1)
  {
    sub_1A824B2D4(v8, &qword_1EB2E6F48, &unk_1A8501F00);
    v16 = 0xE100000000000000;
    v17 = 48;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v18 = objc_opt_self();
    v19 = sub_1A84E565C();
    v20 = [v18 localizedStringFromDate:v19 dateStyle:2 timeStyle:2];

    v21 = sub_1A84E5DBC();
    v16 = v22;

    (*(v10 + 8))(v14, v9);
    v17 = v21;
  }

  MEMORY[0x1AC56A990](v17, v16);

  v23 = v56;
  v24 = v57;
  v25 = *(v55 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1A83EEBEC(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1A83EEBEC((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[32 * v27];
  *(v28 + 4) = 0x6D69547472617473;
  *(v28 + 5) = 0xE900000000000065;
  *(v28 + 6) = v23;
  *(v28 + 7) = v24;
  v29 = v55;
  *(v55 + 16) = v25;
  v58 = 0;
  v59 = 0xE000000000000000;
  v30 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843ED60(v2 + v30, v6);
  if (v54(v6, 1, v9) == 1)
  {
    sub_1A824B2D4(v6, &qword_1EB2E6F48, &unk_1A8501F00);
    v31 = 0xE100000000000000;
    v32 = 48;
  }

  else
  {
    v33 = v53;
    (*(v10 + 32))(v53, v6, v9);
    v34 = objc_opt_self();
    v35 = sub_1A84E565C();
    v36 = [v34 localizedStringFromDate:v35 dateStyle:2 timeStyle:2];

    v37 = sub_1A84E5DBC();
    v31 = v38;

    (*(v10 + 8))(v33, v9);
    v32 = v37;
  }

  MEMORY[0x1AC56A990](v32, v31);

  v39 = v58;
  v40 = v59;
  v42 = *(v25 + 2);
  v41 = *(v25 + 3);
  if (v42 >= v41 >> 1)
  {
    v25 = sub_1A83EEBEC((v41 > 1), v42 + 1, 1, v25);
  }

  *(v25 + 2) = v42 + 1;
  v43 = &v25[32 * v42];
  *(v43 + 4) = 0x656D6954646E65;
  *(v43 + 5) = 0xE700000000000000;
  *(v43 + 6) = v39;
  *(v43 + 7) = v40;
  *(v29 + 16) = v25;
  result = ImportExport.Timer.elapsedTimeDescription.getter();
  v47 = *(v25 + 2);
  v46 = *(v25 + 3);
  if (v47 >= v46 >> 1)
  {
    v49 = result;
    v50 = v45;
    v51 = sub_1A83EEBEC((v46 > 1), v47 + 1, 1, v25);
    v45 = v50;
    v25 = v51;
    result = v49;
  }

  *(v25 + 2) = v47 + 1;
  v48 = &v25[32 * v47];
  *(v48 + 4) = 0x6E6F697461727564;
  *(v48 + 5) = 0xE800000000000000;
  *(v48 + 6) = result;
  *(v48 + 7) = v45;
  *(v29 + 16) = v25;
  return result;
}

uint64_t sub_1A8440E84()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - v4;
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v7(v3, 1, 1, v6);
  type metadata accessor for ImportExport.Timer(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v7((v8 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v6);
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v7((v8 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v6);
  swift_beginAccess();
  sub_1A843E9F0(v5, v8 + v9);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v3, v8 + v10);
  result = swift_endAccess();
  qword_1EB2E7C28 = v8;
  return result;
}

uint64_t static ImportExport.Timer.zero.getter()
{
  if (qword_1EB2E5968 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A84410A4@<X0>(void *a1@<X8>)
{
  if (qword_1EB2E5968 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB2E7C28;
}

uint64_t _s6IMCore12ImportExportO5TimerC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A84E56DC();
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E7CA0, &qword_1A8505E58);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  v48 = a1;
  v23 = a1 + v22;
  v24 = v53;
  sub_1A843ED60(v23, v21);
  v25 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  v49 = v6;
  v26 = *(v6 + 48);
  sub_1A843ED60(v21, v10);
  v51 = a2;
  sub_1A843ED60(a2 + v25, &v10[v26]);
  v27 = *(v24 + 48);
  if (v27(v10, 1, v4) == 1)
  {
    sub_1A824B2D4(v21, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v27(&v10[v26], 1, v4) == 1)
    {
      v46 = v14;
      sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
      goto LABEL_8;
    }

LABEL_6:
    v28 = v10;
LABEL_14:
    sub_1A824B2D4(v28, &qword_1EB2E7CA0, &qword_1A8505E58);
    goto LABEL_15;
  }

  sub_1A843ED60(v10, v19);
  if (v27(&v10[v26], 1, v4) == 1)
  {
    sub_1A824B2D4(v21, &qword_1EB2E6F48, &unk_1A8501F00);
    (*(v24 + 8))(v19, v4);
    goto LABEL_6;
  }

  v46 = v14;
  v29 = v47;
  (*(v24 + 32))(v47, &v10[v26], v4);
  sub_1A8441AEC(&qword_1EB2E7CA8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v30 = sub_1A84E5D7C();
  v31 = *(v24 + 8);
  v31(v29, v4);
  sub_1A824B2D4(v21, &qword_1EB2E6F48, &unk_1A8501F00);
  v31(v19, v4);
  sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((v30 & 1) == 0)
  {
LABEL_15:
    v39 = 0;
    return v39 & 1;
  }

LABEL_8:
  v32 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v33 = v48;
  swift_beginAccess();
  v34 = v50;
  sub_1A843ED60(v33 + v32, v50);
  v35 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v36 = v51;
  swift_beginAccess();
  v37 = *(v49 + 48);
  v38 = v52;
  sub_1A843ED60(v34, v52);
  sub_1A843ED60(v36 + v35, v38 + v37);
  if (v27(v38, 1, v4) != 1)
  {
    v40 = v46;
    sub_1A843ED60(v38, v46);
    if (v27((v38 + v37), 1, v4) != 1)
    {
      v42 = v53;
      v43 = v47;
      (*(v53 + 32))(v47, v38 + v37, v4);
      sub_1A8441AEC(&qword_1EB2E7CA8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v39 = sub_1A84E5D7C();
      v44 = *(v42 + 8);
      v44(v43, v4);
      sub_1A824B2D4(v34, &qword_1EB2E6F48, &unk_1A8501F00);
      v44(v40, v4);
      sub_1A824B2D4(v38, &qword_1EB2E6F48, &unk_1A8501F00);
      return v39 & 1;
    }

    sub_1A824B2D4(v34, &qword_1EB2E6F48, &unk_1A8501F00);
    (*(v53 + 8))(v40, v4);
    goto LABEL_13;
  }

  sub_1A824B2D4(v34, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v27((v38 + v37), 1, v4) != 1)
  {
LABEL_13:
    v28 = v38;
    goto LABEL_14;
  }

  sub_1A824B2D4(v38, &qword_1EB2E6F48, &unk_1A8501F00);
  v39 = 1;
  return v39 & 1;
}

unint64_t sub_1A84417A8()
{
  result = qword_1EB2E7C48;
  if (!qword_1EB2E7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C48);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.Timer(uint64_t a1)
{
  result = qword_1EB2E7C70;
  if (!qword_1EB2E7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8441898(uint64_t a1)
{
  sub_1A844197C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A844197C(uint64_t a1)
{
  if (!qword_1EB2E7C80)
  {
    sub_1A84E56DC();
    v1 = sub_1A84E633C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E7C80);
    }
  }
}

unint64_t sub_1A84419E8()
{
  result = qword_1EB2E7C88;
  if (!qword_1EB2E7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C88);
  }

  return result;
}

unint64_t sub_1A8441A40()
{
  result = qword_1EB2E7C90;
  if (!qword_1EB2E7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C90);
  }

  return result;
}

unint64_t sub_1A8441A98()
{
  result = qword_1EB2E7C98;
  if (!qword_1EB2E7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C98);
  }

  return result;
}

uint64_t sub_1A8441AEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A8441B3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v117 = type metadata accessor for ImportExport.MessageBatch(0);
  v3 = MEMORY[0x1EEE9AC00](v117);
  v115 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v103 - v5;
  v6 = type metadata accessor for ImportExport.Message(0);
  v123 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v120 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v103 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v119 = &v103 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v121 = &v103 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v122 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v103 - v17;
  v19 = sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v103 - v20;
  v22 = type metadata accessor for ImportExport.Conversation(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v103 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v103 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v103 - v33;
  sub_1A8442B00(a1, &v103 - v33, type metadata accessor for ImportExport.Conversation);
  v128 = v34;
  v35 = v125;
  sub_1A846837C(v21);
  if (v35)
  {
LABEL_2:
    v36 = v128;
LABEL_7:
    sub_1A8442A38(v36, type metadata accessor for ImportExport.Conversation);
    return;
  }

  v112 = v29;
  v113 = a1;
  v110 = v18;
  v111 = v26;
  v125 = 0;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1A8442A98(v21);
    v36 = v128;
  }

  else
  {
    v36 = v128;
    sub_1A8442A38(v128, type metadata accessor for ImportExport.Conversation);
    sub_1A8442B68(v21, v32, type metadata accessor for ImportExport.Conversation);
    sub_1A8442B68(v32, v36, type metadata accessor for ImportExport.Conversation);
  }

  v37 = v113;
  v39 = v124;
  v38 = v125;
  v40 = v112;
  sub_1A846A940();
  if (v38)
  {
    goto LABEL_7;
  }

  if (v41)
  {
    v42 = v41;
    sub_1A846AD4C(v41);
    v44 = [v42 guid];
    v45 = sub_1A84E5DBC();
    v47 = v46;

    v48 = sub_1A846B93C(v45, v47);

    if (v48)
    {
      v43 = v48;
    }

    else
    {
      sub_1A846BB2C();
    }

    v39 = v124;
  }

  else
  {
    sub_1A846BB2C();
  }

  v49 = v43;
  sub_1A8475A14(v49, v40);
  sub_1A8442A38(v36, type metadata accessor for ImportExport.Conversation);
  sub_1A8442B68(v40, v36, type metadata accessor for ImportExport.Conversation);
  swift_beginAccess();
  v50 = *(v39 + 24);
  v51 = *(v36 + 1);
  v52 = *(v36 + 2);

  v113 = v51;
  v112 = v52;
  LOBYTE(v52) = sub_1A84535C0(v51, v52, v50);

  v53 = 0;
  if ((v52 & 1) == 0)
  {
    swift_beginAccess();
    v54 = v112;

    sub_1A82493D0(&v126, v113, v54);
    swift_endAccess();

    v53 = 1;
  }

  sub_1A846A4E0(v49);
  v104 = v55;
  v105 = v53;
  v106 = v49;
  v56 = *(v37 + *(v117 + 20));
  v108 = *(v56 + 16);
  if (v108)
  {
    v109 = 0;
    v57 = 0;
    v58 = 0;
    v125 = MEMORY[0x1E69E7CC0];
    v107 = v56;
    while (1)
    {
      v124 = v57;
      if (v58 >= *(v56 + 16))
      {
        break;
      }

      v59 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v60 = *(v123 + 72);
      v61 = v110;
      sub_1A8442B00(v56 + v59 + v60 * v58, v110, type metadata accessor for ImportExport.Message);
      v62 = v122;
      sub_1A84C7274(v113, v112, v122);
      v63 = v121;
      sub_1A8442A38(v61, type metadata accessor for ImportExport.Message);
      sub_1A8442B00(v62, v63, type metadata accessor for ImportExport.Message);
      v64 = v125;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1A83EF168(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1A83EF168((v65 > 1), v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      v125 = v64;
      sub_1A8442B68(v63, v64 + v59 + v66 * v60, type metadata accessor for ImportExport.Message);
      v67 = objc_autoreleasePoolPush();
      v68 = v119;
      sub_1A8442B00(v62, v119, type metadata accessor for ImportExport.Message);
      _s17MessageImportInfoCMa(0);
      v69 = swift_allocObject();
      *(v69 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_didImportMessage) = 0;
      *(v69 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_importedAttachmentCount) = 0;
      v70 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_copiedAttachments;
      *(v69 + v70) = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
      sub_1A8442B00(v68, v69 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage, type metadata accessor for ImportExport.Message);
      v71 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message;
      sub_1A8442B68(v68, v69 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message, type metadata accessor for ImportExport.Message);
      v72 = v128;
      sub_1A8466930(v69, v128);
      swift_beginAccess();
      v73 = v118;
      sub_1A8442B00(v69 + v71, v118, type metadata accessor for ImportExport.Message);
      v36 = v72;
      v74 = sub_1A84C8340(v72);
      v76 = v75;
      sub_1A8442A38(v73, type metadata accessor for ImportExport.Message);
      *(v69 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_didImportMessage) = v74 & 1;
      *(v69 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_importedAttachmentCount) = v76;
      objc_autoreleasePoolPop(v67);
      sub_1A8442A38(v122, type metadata accessor for ImportExport.Message);

      if (v74)
      {
        v77 = __OFADD__(v109++, 1);
        v78 = v120;
        v79 = v124;
        if (v77)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v78 = v120;
        v79 = v124;
      }

      v56 = v107;
      v77 = __OFADD__(v79, v76);
      v57 = v79 + v76;
      if (v77)
      {
        goto LABEL_47;
      }

      if (v108 == ++v58)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v109 = 0;
    v57 = 0;
    v125 = MEMORY[0x1E69E7CC0];
    v78 = v120;
LABEL_34:

    v80 = v36;
    v81 = v111;
    sub_1A8442B00(v80, v111, type metadata accessor for ImportExport.Conversation);
    v82 = v125[2];
    if (!v82)
    {
LABEL_44:

      v93 = v81;
      v94 = v115;
      sub_1A8442B68(v93, v115, type metadata accessor for ImportExport.Conversation);
      v95 = v57;
      v96 = v117;
      *(v94 + *(v117 + 20)) = v125;
      *(v94 + *(v96 + 24)) = 0;
      v97 = v114;
      sub_1A8442B68(v94, v114, type metadata accessor for ImportExport.MessageBatch);
      v98 = v97;
      v99 = v116;
      sub_1A8442B68(v98, v116, type metadata accessor for ImportExport.MessageBatch);
      v100 = (v99 + *(type metadata accessor for ImportExport.ImportedMessageBatch(0) + 20));
      v101 = v109;
      *v100 = v105;
      v100[1] = v101;
      v102 = v104;
      v100[2] = v95;
      v100[3] = v102;
      v100[4] = 0;
      sub_1A8442A38(v128, type metadata accessor for ImportExport.Conversation);
      return;
    }

    v83 = 0;
    while (v83 < v125[2])
    {
      sub_1A8442B00(v125 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v83, v78, type metadata accessor for ImportExport.Message);
      v84 = *(v78 + 32);
      v85 = *(v78 + 40);
      v86 = v81;
      v87 = *(v81 + 8);
      v88 = *(v86 + 16);
      v89 = v84 == v87 && v85 == v88;
      if (!v89 && (sub_1A84E67AC() & 1) == 0)
      {

        v126 = 0;
        v127 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
        MEMORY[0x1AC56A990](v84, v85);
        MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
        MEMORY[0x1AC56A990](v87, v88);
        v90 = v126;
        v91 = v127;
        sub_1A8407E40();
        swift_allocError();
        *v92 = v90;
        v92[1] = v91;
        swift_willThrow();

        sub_1A8442A38(v111, type metadata accessor for ImportExport.Conversation);
        sub_1A8442A38(v78, type metadata accessor for ImportExport.Message);
        goto LABEL_2;
      }

      ++v83;
      sub_1A8442A38(v78, type metadata accessor for ImportExport.Message);
      v81 = v111;
      if (v82 == v83)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1A8442884()
{
  sub_1A8442A38(v0 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage, type metadata accessor for ImportExport.Message);
  sub_1A8442A38(v0 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message, type metadata accessor for ImportExport.Message);

  return swift_deallocClassInstance();
}

uint64_t _s17MessageImportInfoCMa(uint64_t a1)
{
  result = qword_1EB2E7CB0;
  if (!qword_1EB2E7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8442980(uint64_t a1)
{
  result = type metadata accessor for ImportExport.Message(319);
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

uint64_t sub_1A8442A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8442A98(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8442B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8442B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A8442BD0(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D8C();
    v4 = [v2 transferForGUID_];

    if (v4)
    {
      v5 = [v4 commSafetySensitive];

      return (v5 == 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A8442C90(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D8C();
    v4 = [v2 transferForGUID_];

    if (v4)
    {
      v5 = [v4 isAdaptiveImageGlyph];

      v2 = v4;
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A8442D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1A84E5DBC();
  v4 = v2(v3);

  return v4 & 1;
}

id sub_1A8442D9C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_1A84E5DBC();
  v15 = v14;
  v16 = sub_1A84E5D3C();
  if (a8)
  {
    v17 = sub_1A84E5DBC();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a3;
  v20 = a1;
  v21 = sub_1A8442EB0(v13, v15, a5, a6, v16, v17, a8);

  return v21;
}

uint64_t sub_1A8442EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1A84E5D2C();
  v10 = [v7 adjustMessageSummaryInfoForSending_];

  sub_1A84E5D3C();
  v11 = sub_1A84E5D2C();
  v27 = sub_1A8442C90;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A8442D50;
  v26 = &unk_1F1B73BF0;
  v12 = _Block_copy(&aBlock);

  v27 = sub_1A8442D4C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A8442D50;
  v26 = &unk_1F1B73C18;
  v13 = _Block_copy(&aBlock);

  v14 = [v7 backwardCompatibilityStringWithMessageSummaryInfo:v11 isAdaptiveImageGlyphProvider:v12 isCommSafetySensitiveProvider:v13];
  _Block_release(v12);

  _Block_release(v13);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = IMCreateSuperFormatStringFromPlainTextString();

  v17 = sub_1A84E5D8C();
  v18 = [v7 associatedMessageType];
  v19 = sub_1A84E5D2C();

  if (a7)
  {
    a7 = sub_1A84E5D8C();
  }

  v20 = [objc_opt_self() instantMessageWithAssociatedMessageContent:v16 associatedMessageGUID:v17 associatedMessageType:v18 associatedMessageRange:a3 associatedMessageEmoji:a4 messageSummaryInfo:0 threadIdentifier:{v19, a7}];

  return v20;
}

id sub_1A84431B8()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37[-v3];
  v5 = sub_1A84E56DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37[-v10];
  v12 = [objc_opt_self() sharedFeatureFlags];
  v13 = [v12 isPriorityMessagesEnabled];

  if (v13)
  {
    if ([v1 isFiltered] != 2 && objc_msgSend(v1, sel_isFiltered))
    {
      if ([v1 valueForChatProperty_])
      {
        sub_1A84E63AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v40 = v38;
      v41 = v39;
      if (*(&v39 + 1))
      {
        v17 = swift_dynamicCast();
        (*(v6 + 56))(v4, v17 ^ 1u, 1, v5);
        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          (*(v6 + 32))(v11, v4, v5);
          sub_1A84E56AC();
          if (sub_1A84E56BC() == 1)
          {
            v18 = *(v6 + 8);
            v18(v9, v5);
            v18(v11, v5);
            v19 = objc_opt_self();
            if ([v19 isTimeSensitiveCustomModelAvailable])
            {
              v20 = [v19 areTransactionsPromotionsPriorityAvailable];
              v21 = [objc_opt_self() timeSensitivePriorityEnabled];
              v22 = 0;
            }

            else
            {
              v22 = [objc_opt_self() verificationCodesPriorityEnabled];
              if (v22)
              {
                if ([v1 valueForChatProperty_])
                {
                  sub_1A84E63AC();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v38 = 0u;
                  v39 = 0u;
                }

                v40 = v38;
                v41 = v39;
                if (*(&v39 + 1))
                {
                  if ((swift_dynamicCast() & 1) != 0 && v37[15] == 1)
                  {
                    v24 = 0x617020646E756F66;
                    v25 = 0xEE0065646F637373;
                    v26 = 6;
                    return sub_1A8443984(v26, v24, v25, v1);
                  }
                }

                else
                {
                  sub_1A824B2D4(&v40, &qword_1EB2E66B0, &qword_1A8500960);
                }
              }

              v20 = [v19 areTransactionsPromotionsPriorityAvailable];
              v21 = 0;
            }

            v28 = objc_opt_self();
            v29 = [v28 personalPriorityEnabled];
            v30 = v29;
            if (v20)
            {
              v31 = [v28 transactionsPriorityEnabled];
              v32 = [v28 promotionsPriorityEnabled];
              v33 = v30 | v31 | v32;
              if ((v22 | v33))
              {
                v34 = v32;
                if ([v1 filterCategory] == 3 || objc_msgSend(v1, sel_filterCategory) == 4)
                {
                  if ((v34 & 1) != 0 && [v1 filterCategory] == 3)
                  {
                    v25 = 0x80000001A8531800;
                    v26 = 4;
LABEL_51:
                    v24 = 0xD00000000000001ALL;
                    return sub_1A8443984(v26, v24, v25, v1);
                  }

                  if (v33 & v31)
                  {
                    v25 = 0x80000001A85317E0;
                    v26 = 3;
                    goto LABEL_51;
                  }

                  if (v21)
                  {
                    v36 = "nd promotions enabled";
                    v24 = 0xD00000000000001ELL;
                    goto LABEL_47;
                  }

                  goto LABEL_54;
                }

                if (v30)
                {
                  v24 = 0xD000000000000035;
                  v25 = 0x80000001A8531780;
                  v26 = 2;
                  return sub_1A8443984(v26, v24, v25, v1);
                }

                goto LABEL_42;
              }
            }

            else
            {
              if (v29)
              {
                v35 = "back to timeSensitive";
                v24 = 0xD000000000000036;
                goto LABEL_44;
              }

              if (v22)
              {
LABEL_42:
                if (!v21)
                {
LABEL_54:
                  v23 = "time sensitivity enabled only";
                  v24 = 0xD000000000000017;
                  goto LABEL_19;
                }

                v35 = "fell through to default";
                v24 = 0xD000000000000035;
LABEL_44:
                v25 = v35 | 0x8000000000000000;
                v26 = 5;
                return sub_1A8443984(v26, v24, v25, v1);
              }
            }

            if (v21)
            {
              v36 = "all toggles disabled";
              v24 = 0xD00000000000001DLL;
LABEL_47:
              v25 = v36 | 0x8000000000000000;
              v26 = 1;
              return sub_1A8443984(v26, v24, v25, v1);
            }

            v23 = "expired priority date: ";
            v24 = 0xD000000000000014;
            goto LABEL_19;
          }

          *&v40 = 0;
          *(&v40 + 1) = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8531680);
          sub_1A84E561C();
          sub_1A84E60EC();
          MEMORY[0x1AC56A990](0x203A776F6E20, 0xE600000000000000);
          sub_1A84E561C();
          sub_1A84E60EC();
          v16 = sub_1A8443984(0, v40, *(&v40 + 1), v1);

          v27 = *(v6 + 8);
          v27(v9, v5);
          v27(v11, v5);
          return v16;
        }
      }

      else
      {
        sub_1A824B2D4(&v40, &qword_1EB2E66B0, &qword_1A8500960);
        (*(v6 + 56))(v4, 1, 1, v5);
      }

      sub_1A824B2D4(v4, &qword_1EB2E6F48, &unk_1A8501F00);
      v23 = "priorityMessaging disabled";
      v24 = 0xD000000000000027;
LABEL_19:
      v25 = v23 | 0x8000000000000000;
      v26 = 0;
      return sub_1A8443984(v26, v24, v25, v1);
    }

    strcpy(&v40, "isFiltered: ");
    BYTE13(v40) = 0;
    HIWORD(v40) = -5120;
    *&v38 = [v1 isFiltered];
    v15 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v15);

    v16 = sub_1A8443984(0, v40, *(&v40 + 1), v1);

    return v16;
  }

  return sub_1A8443984(0, 0xD00000000000001ALL, 0x80000001A8531630, v1);
}

id sub_1A8443984(id a1, uint64_t a2, unint64_t a3, id a4)
{
  v8 = [a4 cachedPriorityClassificationForLogging];
  if (v8 != a1)
  {
    v9 = v8;
    if (qword_1EB2E5A00 != -1)
    {
      swift_once();
    }

    v10 = sub_1A84E5C9C();
    sub_1A824431C(v10, qword_1EB2FF3C8);
    v11 = a4;

    v12 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v14 = 136315906;
      v15 = [v11 guid];
      v21 = a2;
      v16 = sub_1A84E5DBC();
      v18 = v17;

      v19 = sub_1A82446BC(v16, v18, &v23);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      *(v14 + 22) = 2048;
      *(v14 + 24) = a1;
      *(v14 + 32) = 2080;
      *(v14 + 34) = sub_1A82446BC(v21, a3, &v23);
      _os_log_impl(&dword_1A823F000, v12, v13, "chat: %s > changed priority classification from %ld to %ld for reason: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v22, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    [v11 setCachedPriorityClassificationForLogging_];
  }

  return a1;
}

uint64_t IMChat.wasDetectedAsSMSCategory.getter()
{
  if ([v0 valueForChatProperty_])
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v1 = 0;
    return v1 & 1;
  }

  if ([v0 valueForChatProperty_])
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
LABEL_12:
    sub_1A824B2D4(&v6, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v1 = (v3 > 0) | v3;
  return v1 & 1;
}

Swift::Bool __swiftcall IMChat.isKnownSender(withUnknownFilteringEnabled:)(Swift::Bool withUnknownFilteringEnabled)
{
  v2 = v1;
  v4 = [v2 isFiltered];
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isIntroductionsEnabled];

  if (v6)
  {
    if (v4)
    {
      if (![v2 hasKnownParticipantsCache])
      {
        if (v4 > 1 || [v2 wasDetectedAsSMSCategory])
        {
          sub_1A84E646C();
          v21 = [v2 guid];
          v22 = sub_1A84E5DBC();
          v24 = v23;

          MEMORY[0x1AC56A990](v22, v24);

          MEMORY[0x1AC56A990](0xD000000000000030, 0x80000001A8531540);
          v25 = sub_1A84E676C();
          MEMORY[0x1AC56A990](v25);

          sub_1A8444210(0, 0, 0xE000000000000000, v2);

          v13 = 0;
          goto LABEL_17;
        }

        if (withUnknownFilteringEnabled)
        {
          v13 = [v2 containsMessageFromContact];
          sub_1A84E646C();
          v27 = [v2 guid];
          v28 = sub_1A84E5DBC();
          v30 = v29;

          v40 = v28;
          v41 = v30;
          MEMORY[0x1AC56A990](0x7265766E6F63203ALL, 0xEF206E6F69746173);
          v31 = "o messages from a contact";
          v32 = "ge from contact or myself";
          v33 = v13 == 0;
          if (v13)
          {
            v34 = 0xD00000000000002FLL;
          }

          else
          {
            v34 = 0xD000000000000039;
          }
        }

        else
        {
          v13 = [v2 containsMessageFromContactOrMe];
          sub_1A84E646C();
          v35 = [v2 guid];
          v36 = sub_1A84E5DBC();
          v38 = v37;

          v40 = v36;
          v41 = v38;
          MEMORY[0x1AC56A990](0x7265766E6F63203ALL, 0xEF206E6F69746173);
          v31 = "a contact or myself";
          v32 = "B16@?0@NSString8";
          v33 = v13 == 0;
          if (v13)
          {
            v34 = 0xD000000000000039;
          }

          else
          {
            v34 = 0xD000000000000043;
          }
        }

        if (v33)
        {
          v39 = v32;
        }

        else
        {
          v39 = v31;
        }

        MEMORY[0x1AC56A990](v34, v39 | 0x8000000000000000);

        v18 = v40;
        v19 = v41;
        v20 = v13;
        goto LABEL_10;
      }

      sub_1A84E646C();
      v7 = [v2 guid];
      v8 = sub_1A84E5DBC();
      v10 = v9;

      MEMORY[0x1AC56A990](v8, v10);

      v11 = "use isFiltered: ";
      v12 = 0xD000000000000038;
    }

    else
    {
      sub_1A84E646C();
      v14 = [v2 guid];
      v15 = sub_1A84E5DBC();
      v17 = v16;

      MEMORY[0x1AC56A990](v15, v17);

      v11 = "asKnownParticipantsCache";
      v12 = 0xD000000000000036;
    }

    MEMORY[0x1AC56A990](v12, v11 | 0x8000000000000000);
    v18 = 0;
    v19 = 0xE000000000000000;
    v13 = 1;
    v20 = 1;
LABEL_10:
    sub_1A8444210(v20, v18, v19, v2);

    goto LABEL_17;
  }

  if (v4 && ([v2 hasKnownParticipantsCache] & 1) == 0)
  {
    v13 = 0;
    if ([v2 containsMessageFromContactOrMe] && v4 <= 1)
    {
      v13 = [v2 wasDetectedAsSMSCategory];
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_17:
  [v2 setCachedIsKnownSender_];
  return v13;
}

void sub_1A8444210(char a1, uint64_t a2, unint64_t a3, id a4)
{
  v8 = a1 & 1;
  v9 = [a4 cachedIsKnownSender];
  if (v9 != v8)
  {
    v10 = v9;
    if (qword_1EB2E5A08 != -1)
    {
      swift_once();
    }

    v11 = sub_1A84E5C9C();
    sub_1A824431C(v11, qword_1EB2FF3E0);
    v12 = a4;

    oslog = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315906;
      v16 = [v12 guid];
      v17 = sub_1A84E5DBC();
      v19 = v18;

      v20 = sub_1A82446BC(v17, v19, &v22);

      *(v14 + 4) = v20;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v10;
      *(v14 + 18) = 1024;
      *(v14 + 20) = a1 & 1;
      *(v14 + 24) = 2080;
      *(v14 + 26) = sub_1A82446BC(a2, a3, &v22);
      _os_log_impl(&dword_1A823F000, oslog, v13, "chat: %s > isKnownSender changed from %{BOOL}d to %{BOOL}d for reason: %s", v14, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v15, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  LOBYTE(v24[0]) = *a5;

  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(a1, a2, a3, a4, v24, a6, a7, a8, v25);
  if (v9)
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000028, 0x80000001A8531860);
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E652C();
    MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531890);
    result = sub_1A84E653C();
    __break(1u);
  }

  else
  {

    v19 = v25[7];
    v20 = v25[8];
    a9[6] = v25[6];
    a9[7] = v19;
    a9[8] = v20;
    v21 = v25[3];
    a9[2] = v25[2];
    a9[3] = v21;
    v22 = v25[5];
    a9[4] = v25[4];
    a9[5] = v22;
    v23 = v25[1];
    *a9 = v25[0];
    a9[1] = v23;
  }

  return result;
}

uint64_t ImportExport.Message.init(id:conversationID:senderID:account:messageState:subject:dateReceived:dateDelivered:dateRead:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int *a27, int *a28, uint64_t a29, uint64_t a30)
{
  v229 = a7;
  v242 = a8;
  v238 = a6;
  v239 = a2;
  v228 = a5;
  v206 = a9;
  v207 = a4;
  v202 = a3;
  v232 = a1;
  v233 = a18;
  v234 = a16;
  v235 = a14;
  v237 = a22;
  v30 = sub_1A84E5C9C();
  v200 = *(v30 - 8);
  v201 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v199 = &v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for ImportExport.MessagePart(0);
  v227 = *(v243 - 1);
  v32 = MEMORY[0x1EEE9AC00](v243);
  v241 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v240 = &v181 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v181 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v231 = (&v181 - v40);
  MEMORY[0x1EEE9AC00](v39);
  v208 = &v181 - v41;
  v42 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v236 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = *a10;
  LODWORD(v44) = *a21;
  if (qword_1EB2E5948 != -1)
  {
LABEL_81:
    swift_once();
  }

  v209 = a12;
  LOBYTE(v270[0]) = v44;
  v45 = v230;
  sub_1A83FE48C(v229, v242, v270, v229, v242);
  if (v45)
  {
  }

  else
  {
    v197 = a24;
    v198 = a29;
    v195 = a28;
    v196 = a26;
    v49 = v46;
    v50 = v47;

    if (v238)
    {
      v51 = v228;
    }

    else
    {
      v51 = 0;
    }

    if (v238)
    {
      v52 = v238;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v273 = v44;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v51, v52, 0, 0, &v273, a19, a20, 0, v270);
    v267 = v270[6];
    v268 = v270[7];
    v269 = v270[8];
    v263 = v270[2];
    v264 = v270[3];
    v266 = v270[5];
    v265 = v270[4];
    v262 = v270[1];
    v261 = v270[0];
    v272 = v44;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v49, v50, 0, 0, &v272, a19, a20, 0, v260);
    v189 = v44;
    v257 = v260[6];
    v258 = v260[7];
    v259 = v260[8];
    v253 = v260[2];
    v254 = v260[3];
    v255 = v260[4];
    v256 = v260[5];
    v251 = v260[0];
    v252 = v260[1];
    v187 = type metadata accessor for ImportExport.Message(0);
    v53 = *(v187 + 80);
    *&v244[0] = 0;
    sub_1A84E5B8C();
    v54 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v191 = v53;
    v204 = v54;
    sub_1A84E594C();
    if (v234)
    {
      v55 = HIBYTE(v234) & 0xF;
      if ((v234 & 0x2000000000000000) == 0)
      {
        v55 = a15 & 0xFFFFFFFFFFFFLL;
      }

      v56 = v226;
      if (v55)
      {
        v56 = v226 | 4;
      }

      v57 = v235;
      v58 = v233;
    }

    else
    {
      v57 = v235;
      v58 = v233;
      v56 = v226;
    }

    v185 = a13;
    if (v57)
    {
      v59 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v59 = a13 & 0xFFFFFFFFFFFFLL;
      }

      if (v59)
      {
        v56 |= 8uLL;
      }
    }

    v188 = a19;
    v186 = a15;
    v184 = a17;
    if (v58)
    {
      v60 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v60 = a17 & 0xFFFFFFFFFFFFLL;
      }

      if (v60)
      {
        v56 |= 0x10uLL;
      }
    }

    v190 = a20;
    if ((~v56 & 0x8002) != 0)
    {
      v61 = v56 | 0x8002;
    }

    else
    {
      v61 = v56;
    }

    v62 = v237;
    sub_1A8423270(v237, v244);
    v63 = *&v244[0];
    if ((*&v244[0] & ~v61) == 0)
    {
      v63 = 0;
    }

    v182 = v63;
    v183 = v61;
    v64 = *(v62 + 16);
    v65 = MEMORY[0x1E69E7CC0];
    v205 = 0;
    if (v64)
    {
      *&v244[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v64, 0);
      v65 = *&v244[0];
      v66 = v62 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
      v238 = *(v227 + 72);
      do
      {
        v67 = v241;
        sub_1A844F228(v66, v241, type metadata accessor for ImportExport.MessagePart);
        v68 = (v67 + v243[19]);
        v69 = v68[1];
        v242 = *v68;

        sub_1A844F290(v67, type metadata accessor for ImportExport.MessagePart);
        *&v244[0] = v65;
        v71 = *(v65 + 16);
        v70 = *(v65 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1A83EF534((v70 > 1), v71 + 1, 1);
          v65 = *&v244[0];
        }

        *(v65 + 16) = v71 + 1;
        v72 = v65 + 16 * v71;
        *(v72 + 32) = v242;
        *(v72 + 40) = v69;
        v66 += v238;
        --v64;
      }

      while (v64);
    }

    *&v244[0] = v65;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v193 = sub_1A84E5D6C();
    v194 = v73;

    v74 = *(v237 + 16);
    if (v74)
    {
      v75 = 0;
      v44 = 0;
      v203 = (*(v227 + 80) + 32) & ~*(v227 + 80);
      v76 = MEMORY[0x1E69E7CC0];
      v238 = *(v227 + 72);
      v181 = v237 + v203;
      result = v237 + v203;
      v192 = v74;
      v77 = v74;
      v78 = v243;
      v79 = v231;
      do
      {
        v210 = result;
        v211 = v77;
        sub_1A844F228(result, v79, type metadata accessor for ImportExport.MessagePart);
        v80 = v79[6];
        v230 = v76;
        if (v80)
        {
          v81 = v79[5];
          v241 = v80;
          v242 = v81;
        }

        else
        {
          v241 = sub_1A84E5E7C();
          v242 = v44;
        }

        v82 = v79[7];
        if (v82 < 0)
        {
          v82 = v75;
        }

        v229 = v82;
        v219 = *v79;
        v83 = v79;
        v84 = v79[1];
        v85 = (v83 + v78[19]);
        v86 = v85[1];
        v221 = *v85;
        v212 = v86;
        v217 = *(v83 + 16);
        v223 = v83[12];
        v87 = *(v83 + 21);
        v88 = *(v83 + 15);
        v89 = *(v83 + 17);
        v249 = *(v83 + 19);
        v250 = v87;
        v247 = v88;
        v248 = v89;
        v246 = *(v83 + 13);
        v90 = v78[13];
        v91 = (v83 + v78[12]);
        v92 = *v91;
        v215 = v91[1];
        v93 = *(v83 + v90 + 8);
        v228 = *(v83 + v90);
        v226 = v92;
        v227 = v93;
        v94 = (v83 + v78[14]);
        v95 = *v94;
        v96 = v94[1];
        v97 = (v83 + v78[15]);
        v98 = *v97;
        v99 = v97[1];
        v224 = v95;
        v225 = v98;
        v218 = v99;
        v100 = *(v83 + 5);
        v213 = *(v83 + 4);
        v214 = v100;

        sub_1A8243D74(&v246, v244, &qword_1EB2E6F58, &qword_1A8501388);

        v101 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        sub_1A84E595C();
        v216 = *&v244[0];
        v102 = v78[17];
        v220 = *(v83 + v78[16]);
        v271 = *(v83 + v102);
        v222 = *(v83 + v78[18]);
        v103 = *(v83 + v78[20]);
        sub_1A8243D74(v83 + v78[11], &v38[v78[11]], &qword_1EB2E6F50, &unk_1A8502920);
        *(v38 + 6) = 0u;
        *(v38 + 7) = 0u;
        *(v38 + 8) = 0u;
        *(v38 + 9) = 0u;
        *(v38 + 10) = 0u;
        *(v38 + 22) = 0;
        *(v38 + 4) = 0u;
        *(v38 + 5) = 0u;
        v104 = v243[21];
        *&v244[0] = 0;

        sub_1A84E5B8C();
        sub_1A84E594C();
        v38[16] = v217;
        *v38 = v219;
        *(v38 + 1) = v84;
        v105 = v241;
        *(v38 + 5) = v242;
        *(v38 + 6) = v105;
        v106 = &v38[v243[19]];
        v107 = v212;
        *v106 = v221;
        *(v106 + 1) = v107;

        v108 = v214;
        *(v38 + 4) = v213;
        *(v38 + 5) = v108;
        *(v38 + 12) = v223;
        v109 = *(v38 + 120);
        v110 = *(v38 + 152);
        v244[2] = *(v38 + 136);
        v244[3] = v110;
        v244[4] = *(v38 + 168);
        v244[0] = *(v38 + 104);
        v244[1] = v109;
        sub_1A824B2D4(v244, &qword_1EB2E6F58, &qword_1A8501388);
        v111 = v246;
        *(v38 + 120) = v247;
        v112 = v249;
        *(v38 + 136) = v248;
        *(v38 + 152) = v112;
        *(v38 + 168) = v250;
        *(v38 + 104) = v111;
        v113 = &v38[v243[12]];
        v114 = v227;
        v115 = v215;
        *v113 = v226;
        *(v113 + 1) = v115;
        v116 = &v38[v243[13]];
        v117 = v228;
        *v116 = v228;
        v116[1] = v114;
        v118 = &v38[v243[14]];
        v119 = v225;
        *v118 = v224;
        *(v118 + 1) = v96;
        v120 = &v38[v243[15]];
        v121 = v218;
        *v120 = v119;
        *(v120 + 1) = v121;
        sub_1A83F5918(v117, v114);
        (*(*(v101 - 8) + 8))(&v38[v104], v101);
        v245 = v216;
        sub_1A84E5B8C();
        v78 = v243;
        v122 = v229;
        sub_1A84E594C();
        v38[v78[16]] = v220;
        v38[v78[17]] = v271;
        v38[v78[18]] = v222;
        *&v38[v78[20]] = v103;
        v124 = v239;
        v123 = v240;
        *(v38 + 3) = v232;
        *(v38 + 4) = v124;
        *(v38 + 7) = v122;
        sub_1A844F228(v38, v123, type metadata accessor for ImportExport.MessagePart);

        v76 = v230;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1A83EF140(0, v76[2] + 1, 1, v76);
        }

        v126 = v76[2];
        v125 = v76[3];
        v127 = v208;
        v44 = v242;
        if (v126 >= v125 >> 1)
        {
          v76 = sub_1A83EF140((v125 > 1), v126 + 1, 1, v76);
        }

        v76[2] = v126 + 1;
        sub_1A844F2F0(v240, v76 + v203 + v126 * v238, type metadata accessor for ImportExport.MessagePart);
        sub_1A844F290(v38, type metadata accessor for ImportExport.MessagePart);
        v75 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v128 = v44 + v241;
        if (__OFADD__(v44, v241))
        {
          goto LABEL_79;
        }

        v44 = v128 + 1;
        v129 = v211;
        if (__OFADD__(v128, 1))
        {
          goto LABEL_80;
        }

        v79 = v231;
        sub_1A844F290(v231, type metadata accessor for ImportExport.MessagePart);
        result = v210 + v238;
        v77 = v129 - 1;
      }

      while (v77);
      v130 = 0;
      *&v246 = -1;
      v131 = v237;
      v132 = v181;
      while (1)
      {
        if (v130 >= *(v131 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1A844F228(v132, v127, type metadata accessor for ImportExport.MessagePart);
        v133 = v205;
        sub_1A842343C(v127, &v246, v193, v194);
        v205 = v133;
        if (v133)
        {
          break;
        }

        ++v130;
        result = sub_1A844F290(v127, type metadata accessor for ImportExport.MessagePart);
        v132 += v238;
        if (v192 == v130)
        {
          v134 = v76;
          goto LABEL_58;
        }
      }

      sub_1A844F290(v127, type metadata accessor for ImportExport.MessagePart);

      sub_1A8400ED8(&v251);
      sub_1A8400ED8(&v261);

      v166 = v199;
      sub_1A84E5C8C();
      v167 = v205;
      v168 = v205;
      v169 = sub_1A84E5C7C();
      v170 = sub_1A84E619C();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *v171 = 138412290;
        v173 = v167;
        v174 = _swift_stdlib_bridgeErrorToNSError();
        *(v171 + 4) = v174;
        *v172 = v174;
        _os_log_impl(&dword_1A823F000, v169, v170, "Failed to create a message with Error: %@", v171, 0xCu);
        sub_1A824B2D4(v172, &unk_1EB2E9070, &unk_1A8501A90);
        MEMORY[0x1AC56D3F0](v172, -1, -1);
        MEMORY[0x1AC56D3F0](v171, -1, -1);
      }

      (*(v200 + 8))(v166, v201);
      swift_willThrow();
      v175 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      return (*(*(v175 - 8) + 8))(&v206[v191], v175);
    }

    else
    {
      v134 = MEMORY[0x1E69E7CC0];
LABEL_58:
      v243 = a27;
      v135 = v182 | v183;

      v136 = v206;
      v137 = v239;
      *v206 = v232;
      *(v136 + 1) = v137;
      v138 = v194;
      *(v136 + 14) = v193;
      *(v136 + 15) = v138;
      *(v136 + 2) = a30;
      v139 = v207;
      *(v136 + 4) = v202;
      *(v136 + 5) = v139;
      v140 = v187;
      v141 = &v136[*(v187 + 92)];
      v142 = v264;
      *(v141 + 2) = v263;
      *(v141 + 3) = v142;
      v143 = v269;
      v144 = v267;
      *(v141 + 7) = v268;
      *(v141 + 8) = v143;
      v145 = v266;
      *(v141 + 4) = v265;
      *(v141 + 5) = v145;
      *(v141 + 6) = v144;
      v146 = v262;
      *v141 = v261;
      *(v141 + 1) = v146;
      v147 = &v136[v140[24]];
      v148 = v258;
      *(v147 + 6) = v257;
      *(v147 + 7) = v148;
      *(v147 + 8) = v259;
      v149 = v254;
      *(v147 + 2) = v253;
      *(v147 + 3) = v149;
      v150 = v256;
      *(v147 + 4) = v255;
      *(v147 + 5) = v150;
      v151 = v252;
      *v147 = v251;
      *(v147 + 1) = v151;
      v152 = v197;
      *(v136 + 10) = a23;
      *(v136 + 11) = v152;
      v153 = v209;
      *(v136 + 12) = a11;
      *(v136 + 13) = v153;
      v154 = v235;
      *(v136 + 16) = v185;
      *(v136 + 17) = v154;
      v155 = v234;
      *(v136 + 18) = v186;
      *(v136 + 19) = v155;
      v156 = v233;
      *(v136 + 20) = v184;
      *(v136 + 21) = v156;
      v157 = v190;
      *(v136 + 22) = v188;
      *(v136 + 23) = v157;
      v158 = v189;
      v136[208] = v189;
      *(v136 + 27) = v134;
      sub_1A8400E7C(&v261, v244);
      sub_1A8400E7C(&v251, v244);
      v159 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      (*(*(v159 - 8) + 8))(&v136[v191], v159);
      *&v244[0] = v198;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v160 = &v136[v140[21]];
      v161 = v196;
      *v160 = a25;
      *(v160 + 1) = v161;
      v162 = &v136[v140[22]];
      v163 = v195;
      *v162 = v243;
      v162[1] = v163;
      *(v136 + 3) = v135;
      if (v158 > 3)
      {
        if (v158 > 5)
        {
          if (v158 == 6)
          {
            v164 = 0xE300000000000000;
            v165 = 5456722;
          }

          else
          {
            v164 = 0xEC000000534D5365;
            v165 = 0x74696C6C65746153;
          }
        }

        else if (v158 == 4)
        {
          v165 = 5459283;
          v164 = 0xE300000000000000;
        }

        else
        {
          v164 = 0xE800000000000000;
          v165 = 0x656D695465636146;
        }
      }

      else if (v158 > 1)
      {
        if (v158 == 2)
        {
          v164 = 0xE800000000000000;
        }

        else
        {
          v164 = 0xEC0000006574694CLL;
        }

        v165 = 0x6567617373654D69;
      }

      else if (v158)
      {
        v164 = 0xE300000000000000;
        v165 = 7958113;
      }

      else
      {
        v164 = 0xE700000000000000;
        v165 = 0x6E776F6E6B6E75;
      }

      v176 = v206;
      *(v206 + 24) = v165;
      *(v176 + 25) = v164;
      v177 = *(&v263 + 1);
      v178 = v264;

      sub_1A8400ED8(&v261);
      *(v176 + 6) = v177;
      *(v176 + 7) = v178;
      v179 = *(&v253 + 1);
      v180 = v254;

      result = sub_1A8400ED8(&v251);
      *(v176 + 8) = v179;
      *(v176 + 9) = v180;
    }
  }

  return result;
}