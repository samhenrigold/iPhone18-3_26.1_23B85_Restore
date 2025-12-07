uint64_t type metadata accessor for RecentCall(uint64_t a1)
{
  result = qword_1EC0903B0;
  if (!qword_1EC0903B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecentCall.uniqueID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C40309F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecentCall.bytesOfDataUsed.setter(uint64_t a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t RecentCall.callerIDAvailability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RecentCall.callerIDAvailability.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t RecentCall.callerIDLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 44));

  return v1;
}

uint64_t RecentCall.callerIDLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.callerNetworkName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 48));

  return v1;
}

uint64_t RecentCall.callerNetworkName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.callStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t RecentCall.callStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t RecentCall.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentCall(0) + 56);
  v4 = sub_1C4030980();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentCall.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall(0) + 56);
  v4 = sub_1C4030980();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentCall.disconnectedCause.setter(__int16 a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t RecentCall.duration.setter(double a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t RecentCall.filteredOutReason.setter(__int16 a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t RecentCall.hasMessage.setter(char a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t RecentCall.isoCountryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 80));

  return v1;
}

uint64_t RecentCall.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.junkConfidence.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t RecentCall.junkConfidence.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t RecentCall.junkIdentificationCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 88));

  return v1;
}

uint64_t RecentCall.junkIdentificationCategory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t RecentCall.mediaType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 92)) = v2;
  return result;
}

uint64_t RecentCall.isRead.setter(char a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t RecentCall.serviceProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentCall(0) + 100));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1C3F16304(v4, v5);
}

uint64_t RecentCall.serviceProvider.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for RecentCall(0) + 100);
  result = sub_1C3F17D70(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t RecentCall.ttyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t RecentCall.ttyType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t RecentCall.verificationStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 108));
  return result;
}

uint64_t RecentCall.verificationStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 108)) = v2;
  return result;
}

uint64_t RecentCall.autoAnsweredReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 112));
  return result;
}

uint64_t RecentCall.autoAnsweredReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 112)) = v2;
  return result;
}

uint64_t RecentCall.usedEmergencyVideoStreaming.setter(char a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t RecentCall.wasEmergencyCall.setter(char a1)
{
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t RecentCall.blockedByExtension.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 124));

  return v1;
}

uint64_t RecentCall.blockedByExtension.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 124));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.blockedByExtensionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 128));

  return v1;
}

uint64_t RecentCall.blockedByExtensionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 128));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.identityExtension.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCall(0) + 132));

  return v1;
}

uint64_t RecentCall.identityExtension.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentCall(0) + 132));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentCall.callDirectoryIdentityType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t RecentCall.callDirectoryIdentityType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 136)) = v2;
  return result;
}

uint64_t RecentCall.screenSharingType.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t RecentCall.screenSharingType.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 140)) = v2;
  return result;
}

uint64_t RecentCall.remoteParticipantHandles.getter()
{
  type metadata accessor for RecentCall(0);
}

uint64_t RecentCall.remoteParticipantHandles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall(0) + 148);

  *(v1 + v3) = a1;
  return result;
}

void RecentCall.initiator.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentCall(0) + 152));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_1C3F3F4E4(v4, v5, v6, v7, v8);
}

__n128 RecentCall.initiator.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for RecentCall(0) + 152));
  sub_1C3F3F400(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

uint64_t RecentCall.emergencyMediaItems.getter()
{
  type metadata accessor for RecentCall(0);
}

uint64_t RecentCall.emergencyMediaItems.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall(0) + 156);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentCall.coalescedCalls.getter()
{
  type metadata accessor for RecentCall(0);
}

uint64_t RecentCall.coalescedCalls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentCall(0) + 160);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentCall.communicationTrustScore.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecentCall(0);
  *a1 = *(v1 + *(result + 164));
  return result;
}

uint64_t RecentCall.communicationTrustScore.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecentCall(0);
  *(v1 + *(result + 164)) = v2;
  return result;
}

__n128 RecentCall.init(uniqueID:conversationID:localParticipantUUID:outgoingLocalParticipantUUID:participantGroupUUID:bytesOfDataUsed:callerIDAvailability:callerIDLocation:callerNetworkName:callStatus:date:disconnectedCause:duration:filteredOutReason:hasMessage:imageURL:isoCountryCode:junkConfidence:junkIdentificationCategory:mediaType:isRead:serviceProvider:ttyType:verificationStatus:autoAnsweredReason:usedEmergencyVideoStreaming:wasEmergencyCall:blockedByExtension:blockedByExtensionName:identityExtension:callDirectoryIdentityType:screenSharingType:reminderUUID:remoteParticipantHandles:initiator:emergencyMediaItems:communicationTrustScore:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, __int16 a16, __int16 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char *a25, char a26, uint64_t *a27, char *a28, char *a29, char *a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39, __int16 *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  v73 = *a7;
  v74 = *a14;
  v79 = *a22;
  v80 = *a25;
  v82 = a27[1];
  v83 = *a27;
  v84 = *a28;
  v87 = *a30;
  v90 = *a39;
  v91 = *a40;
  v93 = *a45;
  v86 = *a29;
  v92 = *(a43 + 32);
  v47 = type metadata accessor for RecentCall(0);
  v48 = v47[5];
  v62 = v48;
  v49 = sub_1C40309F0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v88 = *a43;
  v85 = *(a43 + 16);
  v51(a9 + v48, 1, 1, v49);
  v52 = v47[6];
  v51(a9 + v52, 1, 1, v49);
  v53 = v47[7];
  v51(a9 + v53, 1, 1, v49);
  v54 = v47[8];
  v51(a9 + v54, 1, 1, v49);
  v63 = (a9 + v47[11]);
  v64 = (a9 + v47[12]);
  v55 = v47[19];
  v66 = v55;
  v56 = sub_1C4030910();
  (*(*(v56 - 8) + 56))(a9 + v55, 1, 1, v56);
  v65 = (a9 + v47[20]);
  v67 = (a9 + v47[22]);
  v68 = (a9 + v47[31]);
  v70 = (a9 + v47[32]);
  v69 = (a9 + v47[33]);
  v71 = v47[36];
  v51(a9 + v71, 1, 1, v49);
  v57 = (a9 + v47[38]);
  v57[4] = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *(a9 + v47[40]) = MEMORY[0x1E69E7CC0];
  (*(v50 + 32))(a9, a1, v49);
  sub_1C3F3F2F0(a2, a9 + v62, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3F3F2F0(a3, a9 + v52, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3F3F2F0(a4, a9 + v53, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3F3F2F0(a5, a9 + v54, &qword_1EC08F218, &qword_1C4041840);
  *(a9 + v47[9]) = a6;
  *(a9 + v47[10]) = v73;
  *v63 = a8;
  v63[1] = a11;
  *v64 = a12;
  v64[1] = a13;
  *(a9 + v47[13]) = v74;
  v58 = v47[14];
  v59 = sub_1C4030980();
  (*(*(v59 - 8) + 32))(a9 + v58, a15, v59);
  *(a9 + v47[15]) = a16;
  *(a9 + v47[16]) = a10;
  *(a9 + v47[17]) = a17;
  *(a9 + v47[18]) = a18;
  sub_1C3F3F2F0(a19, a9 + v66, &qword_1EC08F130, &qword_1C4038450);
  *v65 = a20;
  v65[1] = a21;
  *(a9 + v47[21]) = v79;
  *v67 = a23;
  v67[1] = a24;
  *(a9 + v47[23]) = v80;
  *(a9 + v47[24]) = a26;
  v60 = (a9 + v47[25]);
  *v60 = v83;
  v60[1] = v82;
  *(a9 + v47[26]) = v84;
  *(a9 + v47[27]) = v86;
  *(a9 + v47[28]) = v87;
  *(a9 + v47[39]) = a44;
  *(a9 + v47[29]) = a31;
  *(a9 + v47[30]) = a32;
  *v68 = a33;
  v68[1] = a34;
  *v70 = a35;
  v70[1] = a36;
  *v69 = a37;
  v69[1] = a38;
  *(a9 + v47[34]) = v90;
  *(a9 + v47[35]) = v91;
  sub_1C3F3F2F0(a41, a9 + v71, &qword_1EC08F218, &qword_1C4041840);
  *(a9 + v47[37]) = a42;
  sub_1C3F3F400(*v57, v57[1], v57[2], v57[3], v57[4]);
  result = v88;
  *v57 = v88;
  *(v57 + 1) = v85;
  v57[4] = v92;
  *(a9 + v47[41]) = v93;
  return result;
}

uint64_t RecentCall.description.getter()
{
  v0 = sub_1C4031200();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C40306B0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C40306F0();
  swift_allocObject();
  sub_1C40306E0();
  sub_1C40306A0();
  sub_1C40306C0();
  type metadata accessor for RecentCall(0);
  sub_1C3F3F528(&qword_1EC08ED90, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
  v2 = sub_1C40306D0();
  v4 = v3;
  sub_1C40311F0();
  v5 = sub_1C40311E0();
  v7 = v6;
  sub_1C3F31480(v2, v4);

  if (v7)
  {
    return v5;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C3F38C14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v37 = a2 + 56;
  v32 = result + 56;
  v33 = result;
  v35 = a2;
  v31 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v34 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 40 * (v8 | (v2 << 6)));
    v12 = *v11;
    v14 = v11[1];
    v13 = v11[2];
    v16 = v11[3];
    v15 = v11[4];
    v17 = a2;
    sub_1C4031C70();
    sub_1C4031CA0();

    sub_1C4031280();
    v36 = v16;
    sub_1C4031C90();
    if (v15)
    {
      sub_1C4031280();
    }

    v18 = sub_1C4031CC0();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    v21 = v37;
    if (((*(v37 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_35:

      return 0;
    }

    v22 = ~v19;
    v23 = *(v35 + 48);
    while (1)
    {
      v24 = (v23 + 40 * v20);
      if (*v24 != v12)
      {
        goto LABEL_18;
      }

      v26 = v24[3];
      v25 = v24[4];
      if (v24[1] != v14 || v24[2] != v13)
      {
        v28 = sub_1C4031BF0();
        v21 = v37;
        if ((v28 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v25)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_32;
      }

LABEL_18:
      v20 = (v20 + 1) & v22;
      if (((*(v21 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    if (v26 != v36 || v25 != v15)
    {
      v30 = sub_1C4031BF0();
      v21 = v37;
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_32:

    v3 = v32;
    result = v33;
    v6 = v34;
    a2 = v35;
    v7 = v31;
  }

  while (v34);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F38EB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v25 = v7;
  v26 = result;
  v28 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v27 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = a2;
    sub_1C4031C70();

    sub_1C4031280();
    sub_1C4031CA0();
    v17 = sub_1C4031CC0();
    v18 = -1 << *(v16 + 32);
    v19 = v17 & ~v18;
    if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_26:

      return 0;
    }

    v20 = ~v18;
    v21 = *(v28 + 48);
    while (1)
    {
      v22 = v21 + 24 * v19;
      v23 = *(v22 + 16);
      if (*v22 != v14 || *(v22 + 8) != v13)
      {
        break;
      }

      if (v15 == v23)
      {
        goto LABEL_23;
      }

LABEL_16:
      v19 = (v19 + 1) & v20;
      if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (sub_1C4031BF0() & 1) == 0 || ((v15 ^ v23))
    {
      goto LABEL_16;
    }

LABEL_23:

    v7 = v25;
    result = v26;
    v6 = v27;
    a2 = v28;
  }

  while (v27);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C3F390B4(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0x61737265766E6F63;
      break;
    case 2:
    case 4:
    case 6:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x44664F7365747962;
      break;
    case 7:
    case 26:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x746174536C6C6163;
      break;
    case 10:
      result = 1702125924;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E6F697461727564;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x617373654D736168;
      break;
    case 15:
      result = 0x4C52556567616D69;
      break;
    case 16:
      result = 0x746E756F436F7369;
      break;
    case 17:
      result = 0x666E6F436B6E756ALL;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x707954616964656DLL;
      break;
    case 20:
      result = 0x646165527369;
      break;
    case 21:
      result = 0x5065636976726573;
      break;
    case 22:
      result = 0x65707954797474;
      break;
    case 23:
    case 24:
    case 27:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0xD000000000000019;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    case 32:
      result = 0x7265646E696D6572;
      break;
    case 33:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0x6F74616974696E69;
      break;
    case 35:
      result = 0xD000000000000013;
      break;
    case 36:
      result = 0x656373656C616F63;
      break;
    case 37:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C3F394D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C3F40240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C3F3950C(uint64_t a1)
{
  v2 = sub_1C3F3F570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F39548(uint64_t a1)
{
  v2 = sub_1C3F3F570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecentCall.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090308, &qword_1C403CDB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F3F570();
  sub_1C4031D10();
  LOBYTE(v19) = 0;
  sub_1C40309F0();
  sub_1C3F3F528(&qword_1EC08F0B8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1C4031B70();
  if (!v2)
  {
    v9 = type metadata accessor for RecentCall(0);
    LOBYTE(v19) = 1;
    sub_1C4031B20();
    LOBYTE(v19) = 2;
    sub_1C4031B20();
    LOBYTE(v19) = 3;
    sub_1C4031B20();
    LOBYTE(v19) = 4;
    sub_1C4031B20();
    LOBYTE(v19) = 5;
    sub_1C4031B60();
    LOBYTE(v19) = *(v3 + v9[10]);
    v24 = 6;
    sub_1C3F09B50();
    sub_1C4031B70();
    LOBYTE(v19) = 7;
    sub_1C4031B10();
    LOBYTE(v19) = 8;
    sub_1C4031B10();
    LOBYTE(v19) = *(v3 + v9[13]);
    v24 = 9;
    sub_1C3F09D98();
    sub_1C4031B70();
    v18 = v9[14];
    LOBYTE(v19) = 10;
    sub_1C4030980();
    sub_1C3F3F528(&qword_1EC08FA20, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1C4031B70();
    LOBYTE(v19) = 11;
    sub_1C4031B80();
    LOBYTE(v19) = 12;
    sub_1C4031B50();
    LOBYTE(v19) = 13;
    sub_1C4031B80();
    LOBYTE(v19) = 14;
    sub_1C4031B40();
    v18 = v9[19];
    LOBYTE(v19) = 15;
    sub_1C4030910();
    sub_1C3F3F528(&qword_1EC090318, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1C4031B20();
    LOBYTE(v19) = 16;
    sub_1C4031B10();
    LOBYTE(v19) = *(v3 + v9[21]);
    v24 = 17;
    sub_1C3F3F5C4();
    sub_1C4031B70();
    LOBYTE(v19) = 18;
    sub_1C4031B10();
    LOBYTE(v19) = *(v3 + v9[23]);
    v24 = 19;
    sub_1C3F0A470();
    sub_1C4031B70();
    LOBYTE(v19) = 20;
    sub_1C4031B40();
    v10 = (v3 + v9[25]);
    v11 = v10[1];
    v19 = *v10;
    v20 = v11;
    v24 = 21;
    sub_1C3F16304(v19, v11);
    sub_1C3F24AD0();
    sub_1C4031B70();
    sub_1C3F17D70(v19, v20);
    LOBYTE(v19) = *(v3 + v9[26]);
    v24 = 22;
    sub_1C3F0A6B8();
    sub_1C4031B70();
    LOBYTE(v19) = *(v3 + v9[27]);
    v24 = 23;
    sub_1C3F0A900();
    sub_1C4031B70();
    LOBYTE(v19) = *(v3 + v9[28]);
    v24 = 24;
    sub_1C3F096C0();
    sub_1C4031B70();
    LOBYTE(v19) = 25;
    sub_1C4031B40();
    LOBYTE(v19) = 26;
    sub_1C4031B40();
    LOBYTE(v19) = 27;
    sub_1C4031B10();
    LOBYTE(v19) = 28;
    sub_1C4031B10();
    LOBYTE(v19) = 29;
    sub_1C4031B10();
    LOBYTE(v19) = *(v3 + v9[34]);
    v24 = 30;
    sub_1C3F09908();
    sub_1C4031B70();
    LOWORD(v19) = *(v3 + v9[35]);
    v24 = 31;
    sub_1C3F3F618();
    sub_1C4031B70();
    LOBYTE(v19) = 32;
    sub_1C4031B20();
    v19 = *(v3 + v9[37]);
    v24 = 33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090330, &qword_1C403CDB8);
    sub_1C3F3F8E8(&qword_1EC090338, sub_1C3F24BFC, MEMORY[0x1E69E64F0]);
    sub_1C4031B70();
    v12 = (v3 + v9[38]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v19 = *v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = 34;
    sub_1C3F3F4E4(v19, v13, v14, v15, v16);
    sub_1C3F24BFC();
    sub_1C4031B20();
    sub_1C3F3F400(v19, v20, v21, v22, v23);
    v19 = *(v3 + v9[39]);
    v24 = 35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090340, &qword_1C403CDC0);
    sub_1C3F3F66C(&qword_1EC090348, sub_1C3F3F6E4, MEMORY[0x1E69E64F0]);
    sub_1C4031B70();
    v19 = *(v3 + v9[40]);
    v24 = 36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3F3F738();
    sub_1C4031B70();
    LOBYTE(v19) = *(v3 + v9[41]);
    v24 = 37;
    sub_1C3F3F7EC();
    sub_1C4031B70();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RecentCall.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentCall(0);
  v63 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4030910();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v62 - v10;
  v11 = sub_1C40309F0();
  v64 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v66 = &v62 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  v26 = sub_1C3F3F528(&qword_1EC08F290, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C4031140();
  v27 = v64;
  sub_1C3EF1A60(v2 + v4[5], v25, &qword_1EC08F218, &qword_1C4041840);
  v72 = *(v27 + 48);
  v73 = v27 + 48;
  v28 = v72(v25, 1, v11);
  v71 = v26;
  if (v28 == 1)
  {
    v29 = v27;
    sub_1C4031C90();
  }

  else
  {
    (*(v27 + 32))(v13, v25, v11);
    sub_1C4031C90();
    sub_1C4031140();
    v29 = v27;
    (*(v27 + 8))(v13, v11);
  }

  sub_1C3EF1A60(v2 + v4[6], v23, &qword_1EC08F218, &qword_1C4041840);
  if (v72(v23, 1, v11) == 1)
  {
    sub_1C4031C90();
    v30 = v29;
  }

  else
  {
    v31 = v23;
    v30 = v29;
    (*(v29 + 32))(v13, v31, v11);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v29 + 8))(v13, v11);
  }

  v32 = v65;
  sub_1C3EF1A60(v2 + v4[7], v65, &qword_1EC08F218, &qword_1C4041840);
  if (v72(v32, 1, v11) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v30 + 32))(v13, v32, v11);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v30 + 8))(v13, v11);
  }

  v33 = v66;
  sub_1C3EF1A60(v2 + v4[8], v66, &qword_1EC08F218, &qword_1C4041840);
  if (v72(v33, 1, v11) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v30 + 32))(v13, v33, v11);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v30 + 8))(v13, v11);
  }

  MEMORY[0x1C6933940](*(v2 + v4[9]));
  sub_1C4031CA0();
  if (*(v2 + v4[11] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  if (*(v2 + v4[12] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  sub_1C4031CA0();
  sub_1C4030980();
  sub_1C3F3F528(&qword_1EC08FA70, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C4031140();
  sub_1C4031CA0();
  v34 = *(v2 + v4[16]);
  if (v34 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1C6933970](*&v34);
  sub_1C4031CA0();
  sub_1C4031C90();
  v35 = v67;
  sub_1C3EF1A60(v2 + v4[19], v67, &qword_1EC08F130, &qword_1C4038450);
  v37 = v68;
  v36 = v69;
  if ((*(v68 + 48))(v35, 1, v69) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    v38 = *(v37 + 32);
    v66 = v11;
    v39 = v13;
    v40 = v30;
    v41 = v62;
    v38(v62, v35, v36);
    sub_1C4031C90();
    sub_1C3F3F528(&qword_1EC090360, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1C4031140();
    v42 = v41;
    v30 = v40;
    v13 = v39;
    v11 = v66;
    (*(v37 + 8))(v42, v36);
  }

  if (*(v2 + v4[20] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  sub_1C4031CA0();
  if (*(v2 + v4[22] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  sub_1C4031CA0();
  sub_1C4031C90();
  v43 = *(v2 + v4[25] + 8);
  if (!v43)
  {
    v44 = 0;
    goto LABEL_34;
  }

  if (v43 == 1)
  {
    v44 = 1;
LABEL_34:
    MEMORY[0x1C6933940](v44);
    goto LABEL_36;
  }

  MEMORY[0x1C6933940](2);
  sub_1C4031280();
LABEL_36:
  sub_1C4031CA0();
  sub_1C4031CA0();
  sub_1C4031CA0();
  sub_1C4031C90();
  sub_1C4031C90();
  if (*(v2 + v4[31] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  if (*(v2 + v4[32] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  if (*(v2 + v4[33] + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  sub_1C4031CA0();
  sub_1C4031CA0();
  v45 = v70;
  sub_1C3EF1A60(v2 + v4[36], v70, &qword_1EC08F218, &qword_1C4041840);
  if (v72(v45, 1, v11) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v30 + 32))(v13, v45, v11);
    sub_1C4031C90();
    sub_1C4031140();
    (*(v30 + 8))(v13, v11);
  }

  sub_1C3F3D514(a1, *(v2 + v4[37]));
  v46 = (v2 + v4[38]);
  v47 = v46[2];
  if (v47)
  {
    v48 = *v46;
    v49 = v46[1];
    v50 = v46[3];
    v51 = v46[4];
    sub_1C4031C90();
    sub_1C4031CA0();

    sub_1C4031280();
    sub_1C4031C90();
    if (v51)
    {
      sub_1C4031280();
      v52 = v48;
      v53 = v49;
      v54 = v47;
      v55 = v50;
      v56 = v51;
    }

    else
    {
      v52 = v48;
      v53 = v49;
      v54 = v47;
      v55 = v50;
      v56 = 0;
    }

    sub_1C3F3F400(v52, v53, v54, v55, v56);
  }

  else
  {
    sub_1C4031C90();
  }

  sub_1C3F3D3A8(a1, *(v2 + v4[39]));
  v57 = *(v2 + v4[40]);
  MEMORY[0x1C6933940](*(v57 + 16));
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = v57 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v60 = *(v63 + 72);
    do
    {
      sub_1C3F40DE0(v59, v6, type metadata accessor for RecentCall);
      RecentCall.hash(into:)(a1);
      sub_1C3F40E48(v6, type metadata accessor for RecentCall);
      v59 += v60;
      --v58;
    }

    while (v58);
  }

  return sub_1C4031CA0();
}

uint64_t RecentCall.hashValue.getter()
{
  sub_1C4031C70();
  RecentCall.hash(into:)(v1);
  return sub_1C4031CC0();
}

uint64_t RecentCall.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v111 = &v105 - v4;
  v115 = sub_1C4030980();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  *&v112 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v105 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v119 = &v105 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v120 = &v105 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v105 - v15;
  v16 = sub_1C40309F0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090368, &qword_1C403CDC8);
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v20 = &v105 - v19;
  v21 = type metadata accessor for RecentCall(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v17 + 56);
  v132 = *(v22 + 20);
  v25(&v24[v132], 1, 1, v16);
  v131 = v21[6];
  v25(&v24[v131], 1, 1, v16);
  v130 = v21[7];
  v25(&v24[v130], 1, 1, v16);
  v129 = v21[8];
  v25(&v24[v129], 1, 1, v16);
  v26 = v21[19];
  v27 = sub_1C4030910();
  v28 = *(*(v27 - 8) + 56);
  v123 = v26;
  v29 = &v24[v26];
  v30 = v16;
  v31 = v27;
  v28(v29, 1, 1, v27);
  v124 = v21[36];
  v25(&v24[v124], 1, 1, v30);
  v126 = a1;
  v127 = v21;
  v32 = &v24[v21[38]];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v125 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F3F570();
  v117 = v20;
  v33 = v128;
  sub_1C4031D00();
  if (!v33)
  {
    v34 = v121;
    v107 = v31;
    v108 = v17;
    LOBYTE(v133) = 0;
    sub_1C3F3F528(&qword_1EC08F0B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v35 = v122;
    sub_1C4031AC0();
    (*(v108 + 32))(v24, v35, v30);
    LOBYTE(v133) = 1;
    v40 = v34;
    sub_1C4031A70();
    v41 = v127;
    v106 = v30;
    sub_1C3F3F2F0(v40, &v24[v132], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v133) = 2;
    v42 = v120;
    sub_1C4031A70();
    sub_1C3F3F2F0(v42, &v24[v131], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v133) = 3;
    v43 = v119;
    sub_1C4031A70();
    sub_1C3F3F2F0(v43, &v24[v130], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v133) = 4;
    v44 = v118;
    sub_1C4031A70();
    sub_1C3F3F2F0(v44, &v24[v129], &qword_1EC08F218, &qword_1C4041840);
    LOBYTE(v133) = 5;
    *&v24[v41[9]] = sub_1C4031AB0();
    v136 = 6;
    sub_1C3F09AFC();
    sub_1C4031AC0();
    v24[v41[10]] = v133;
    LOBYTE(v133) = 7;
    v45 = sub_1C4031A60();
    v47 = &v24[v41[11]];
    *v47 = v45;
    v47[1] = v48;
    LOBYTE(v133) = 8;
    v49 = sub_1C4031A60();
    v128 = 0;
    v51 = v41[12];
    v105 = v24;
    v52 = &v24[v51];
    *v52 = v49;
    v52[1] = v50;
    v136 = 9;
    sub_1C3F09D44();
    v53 = v128;
    sub_1C4031AC0();
    v128 = v53;
    if (v53 || (v105[v127[13]] = v133, LOBYTE(v133) = 10, sub_1C3F3F528(&qword_1EC08FB48, MEMORY[0x1E6969530], MEMORY[0x1E6969558]), v54 = v128, sub_1C4031AC0(), (v128 = v54) != 0))
    {
      (*(v113 + 8))(v117, v116);
      v37 = 0;
      v38 = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      goto LABEL_16;
    }

    (*(v114 + 32))(&v105[v127[14]], v112, v115);
    LOBYTE(v133) = 11;
    v55 = v128;
    v56 = sub_1C4031AD0();
    v128 = v55;
    if (v55 || (*&v105[v127[15]] = v56, LOBYTE(v133) = 12, sub_1C4031AA0(), v128 = 0, *&v105[v127[16]] = v57, LOBYTE(v133) = 13, v58 = sub_1C4031AD0(), v128 = 0, *&v105[v127[17]] = v58, LOBYTE(v133) = 14, v59 = sub_1C4031A90(), v128 = 0, v105[v127[18]] = v59 & 1, LOBYTE(v133) = 15, sub_1C3F3F528(&qword_1EC090370, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]), v60 = v128, sub_1C4031A70(), (v128 = v60) != 0) || (sub_1C3F3F2F0(v111, &v105[v123], &qword_1EC08F130, &qword_1C4038450), LOBYTE(v133) = 16, v61 = v128, v62 = sub_1C4031A60(), v122 = v63, (v128 = v61) != 0))
    {
      (*(v113 + 8))(v117, v116);
      v38 = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
    }

    else
    {
      v64 = &v105[v127[20]];
      v65 = v122;
      *v64 = v62;
      v64[1] = v65;
      v136 = 17;
      sub_1C3F3F840();
      v66 = v128;
      sub_1C4031AC0();
      v128 = v66;
      if (v66)
      {
        (*(v113 + 8))(v117, v116);
        v38 = 0;
        LODWORD(v116) = 0;
        LODWORD(v117) = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
      }

      else
      {
        v105[v127[21]] = v133;
        LOBYTE(v133) = 18;
        v67 = sub_1C4031A60();
        v121 = v68;
        v128 = 0;
        v69 = &v105[v127[22]];
        v70 = v121;
        *v69 = v67;
        v69[1] = v70;
        v136 = 19;
        sub_1C3F0A41C();
        v71 = v128;
        sub_1C4031AC0();
        v128 = v71;
        if (!v71)
        {
          v105[v127[23]] = v133;
          LOBYTE(v133) = 20;
          v72 = sub_1C4031A90();
          v128 = 0;
          v105[v127[24]] = v72 & 1;
          v136 = 21;
          sub_1C3F290EC();
          v73 = v128;
          sub_1C4031AC0();
          v128 = v73;
          if (!v73)
          {
            *&v105[v127[25]] = v133;
            v136 = 22;
            sub_1C3F0A664();
            v74 = v128;
            sub_1C4031AC0();
            v128 = v74;
            if (v74 || (v105[v127[26]] = v133, v136 = 23, sub_1C3F0A8AC(), v75 = v128, sub_1C4031AC0(), (v128 = v75) != 0) || (v105[v127[27]] = v133, v136 = 24, sub_1C3EF79AC(), v76 = v128, sub_1C4031AC0(), (v128 = v76) != 0))
            {
              (*(v113 + 8))(v117, v116);
              LODWORD(v116) = 0;
              LODWORD(v117) = 0;
              v118 = 0;
              v119 = 0;
              v120 = 0;
              v37 = 1;
            }

            else
            {
              v105[v127[28]] = v133;
              LOBYTE(v133) = 25;
              v77 = sub_1C4031A90();
              v128 = 0;
              v105[v127[29]] = v77 & 1;
              LOBYTE(v133) = 26;
              v78 = sub_1C4031A90();
              v128 = 0;
              v105[v127[30]] = v78 & 1;
              LOBYTE(v133) = 27;
              v79 = sub_1C4031A60();
              v120 = v80;
              v128 = 0;
              v81 = &v105[v127[31]];
              *v81 = v79;
              v81[1] = v80;
              LOBYTE(v133) = 28;
              v82 = sub_1C4031A60();
              v118 = v83;
              v128 = 0;
              v84 = &v105[v127[32]];
              *v84 = v82;
              v84[1] = v83;
              LOBYTE(v133) = 29;
              v85 = sub_1C4031A60();
              v119 = v86;
              v128 = 0;
              v87 = &v105[v127[33]];
              v88 = v119;
              *v87 = v85;
              v87[1] = v88;
              v136 = 30;
              sub_1C3F098B4();
              v89 = v128;
              sub_1C4031AC0();
              v128 = v89;
              if (!v89)
              {
                v105[v127[34]] = v133;
                v136 = 31;
                sub_1C3F3F894();
                v90 = v128;
                sub_1C4031AC0();
                v128 = v90;
                if (!v90)
                {
                  *&v105[v127[35]] = v133;
                  LOBYTE(v133) = 32;
                  sub_1C4031A70();
                  v128 = 0;
                  sub_1C3F3F2F0(v109, &v105[v124], &qword_1EC08F218, &qword_1C4041840);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090330, &qword_1C403CDB8);
                  v136 = 33;
                  sub_1C3F3F8E8(&qword_1EC090388, sub_1C3F291C4, MEMORY[0x1E69E6510]);
                  v91 = v128;
                  sub_1C4031AC0();
                  v128 = v91;
                  if (!v91)
                  {
                    *&v105[v127[37]] = v133;
                    v136 = 34;
                    sub_1C3F291C4();
                    v92 = v128;
                    sub_1C4031A70();
                    v128 = v92;
                    if (v92 || (v93 = v135, v94 = v125, v95 = *v125, v96 = v125[1], v97 = v125[2], v98 = v125[3], v99 = v125[4], v112 = v133, v111 = v134, sub_1C3F3F400(v95, v96, v97, v98, v99), v100 = v111, *v94 = v112, *(v94 + 1) = v100, v94[4] = v93, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090340, &qword_1C403CDC0), v136 = 35, sub_1C3F3F66C(&qword_1EC090390, sub_1C3F3F960, MEMORY[0x1E69E6510]), v101 = v128, sub_1C4031AC0(), (v128 = v101) != 0))
                    {
                      (*(v113 + 8))(v117, v116);
                      LODWORD(v117) = 0;
                      v37 = 1;
                      v38 = 1;
                      LODWORD(v116) = 1;
                    }

                    else
                    {
                      *&v105[v127[39]] = v133;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
                      v136 = 36;
                      sub_1C3F3F9B4();
                      v102 = v128;
                      sub_1C4031AC0();
                      v128 = v102;
                      if (!v102)
                      {
                        *&v105[v127[40]] = v133;
                        v136 = 37;
                        sub_1C3F3FA68();
                        v103 = v128;
                        sub_1C4031AC0();
                        v128 = v103;
                        if (!v103)
                        {
                          (*(v113 + 8))(v117, v116);
                          v104 = v105;
                          v105[v127[41]] = v133;
                          sub_1C3F40DE0(v104, v110, type metadata accessor for RecentCall);
                          __swift_destroy_boxed_opaque_existential_1(v126);
                          return sub_1C3F40E48(v104, type metadata accessor for RecentCall);
                        }
                      }

                      (*(v113 + 8))(v117, v116);
                      v37 = 1;
                      v38 = 1;
                      LODWORD(v116) = 1;
                      LODWORD(v117) = 1;
                    }

                    goto LABEL_16;
                  }
                }
              }

              (*(v113 + 8))(v117, v116);
              LODWORD(v116) = 0;
              LODWORD(v117) = 0;
              v37 = 1;
            }

            v38 = 1;
LABEL_16:
            v36 = v127;
            v24 = v105;
            v46 = v108;
            __swift_destroy_boxed_opaque_existential_1(v126);
            (*(v46 + 8))(v24, v106);
            goto LABEL_4;
          }
        }

        (*(v113 + 8))(v117, v116);
        v38 = 0;
        LODWORD(v116) = 0;
        LODWORD(v117) = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
      }
    }

    v37 = 1;
    goto LABEL_16;
  }

  v128 = v33;
  v36 = v127;
  __swift_destroy_boxed_opaque_existential_1(v126);
  v37 = 0;
  v38 = 0;
  LODWORD(v116) = 0;
  LODWORD(v117) = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
LABEL_4:
  sub_1C3EED388(&v24[v132], &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EED388(&v24[v131], &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EED388(&v24[v130], &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EED388(&v24[v129], &qword_1EC08F218, &qword_1C4041840);

  if (v37)
  {
    (*(v114 + 8))(&v24[v36[14]], v115);
  }

  sub_1C3EED388(&v24[v123], &qword_1EC08F130, &qword_1C4038450);

  if (v38)
  {
    sub_1C3F17D70(*&v24[v36[25]], *&v24[v36[25] + 8]);
  }

  sub_1C3EED388(&v24[v124], &qword_1EC08F218, &qword_1C4041840);
  if (v116)
  {
  }

  sub_1C3F3F400(*v125, v125[1], v125[2], v125[3], v125[4]);
  if (v117)
  {
  }
}

uint64_t sub_1C3F3C594()
{
  sub_1C4031C70();
  RecentCall.hash(into:)(v1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F3C5D8(uint64_t a1)
{
  sub_1C4031C70();
  RecentCall.hash(into:)(v2);
  return sub_1C4031CC0();
}

unint64_t sub_1C3F3C61C(unsigned __int8 *a1)
{
  sub_1C4031C70();
  sub_1C4025638(v4);
  v2 = sub_1C4031CC0();

  return sub_1C3F3CA10(a1, v2);
}

unint64_t sub_1C3F3C688(uint64_t a1)
{
  v2 = sub_1C4031C60();

  return sub_1C3F3CB6C(a1, v2);
}

unint64_t sub_1C3F3C6CC(uint64_t a1)
{
  v2 = sub_1C4031830();

  return sub_1C3F3CBD8(a1, v2);
}

unint64_t sub_1C3F3C710(uint64_t a1, uint64_t a2)
{
  sub_1C4031C70();
  sub_1C4031280();
  v4 = sub_1C4031CC0();

  return sub_1C3F3CCA0(a1, a2, v4);
}

unint64_t sub_1C3F3C78C(uint64_t a1)
{
  v1 = a1;
  sub_1C4031C70();
  sub_1C4031C90();
  v2 = sub_1C4031CC0();

  return sub_1C3F3CD58(v1, v2);
}

unint64_t sub_1C3F3C7F8(uint64_t a1)
{
  sub_1C40309F0();
  sub_1C3F3F528(&qword_1EC08F290, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1C4031130();

  return sub_1C3F3CDC8(a1, v2);
}

unint64_t sub_1C3F3C890(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1C6933910](*(v1 + 40), a1, 4);

  return sub_1C3F3CF88(v2, v3);
}

unint64_t sub_1C3F3C8D8(uint64_t a1)
{
  v1 = a1;
  sub_1C4031C70();
  sub_1C4031CA0();
  v2 = sub_1C4031CC0();
  return sub_1C3F3CFF4(v1, v2);
}

unint64_t sub_1C3F3C940(uint64_t a1)
{
  sub_1C4031C70();
  MEMORY[0x1C6933940](a1);
  v2 = sub_1C4031CC0();
  return sub_1C3F3CB6C(a1, v2);
}

unint64_t sub_1C3F3C9A8(char a1)
{
  sub_1C4031C70();
  sub_1C4031CA0();
  v2 = sub_1C4031CC0();
  return sub_1C3F3CD58(a1 & 1, v2);
}

unint64_t sub_1C3F3CA10(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1C3F40DE0(*(v2 + 48) + v12 * v10, v8, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      v13 = sub_1C402A3F0(v8, a1);
      sub_1C3F40E48(v8, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C3F3CB6C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3F3CBD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C3F411E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6933500](v9, a1);
      sub_1C3F41244(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C3F3CCA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C4031BF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C3F3CD58(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3F3CDC8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1C4031180();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1C3F3CF88(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3F3CFF4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1C3F3D064(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F3C9A8(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F01C7C(v15, v6 & 1);
    v10 = sub_1C3F3C9A8(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1C3F02D00();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C40318C0();
    MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
    sub_1C40319C0();
    MEMORY[0x1C6932F70](39, 0xE100000000000000);
    sub_1C40319D0();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v24 = *v6;
      v7 = *(v6 - 8);
      v25 = *a3;
      v26 = sub_1C3F3C9A8(v7);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1C3F01C7C(v30, 1);
        v26 = sub_1C3F3C9A8(v7);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v7;
      *(v32[7] + 8 * v26) = v24;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1C3F3D3A8(__int128 *a1, uint64_t a2)
{
  sub_1C4031CC0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1C6933940](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1C4031C70();

        sub_1C4031280();
        sub_1C4031CA0();
        v11 = sub_1C4031CC0();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F3D514(__int128 *a1, uint64_t a2)
{
  sub_1C4031CC0();
  v14 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v15 = v9;
LABEL_11:
    v13 = *(*(v14 + 48) + 40 * (__clz(__rbit64(v6)) | (v10 << 6)) + 32);
    sub_1C4031C70();
    sub_1C4031CA0();

    sub_1C4031280();
    sub_1C4031C90();
    if (v13)
    {
      sub_1C4031280();
    }

    v6 &= v6 - 1;
    v11 = sub_1C4031CC0();

    v9 = v11 ^ v15;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x1C6933940](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v15 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F3D6C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_1C3F411E8(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C3F3D71C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69334C0](a1, a2, v11);
      sub_1C3F03800(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C3F03800(0, a5, a6);
    if (sub_1C40317C0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C40317D0();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1C4031670();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1C4031680();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

BOOL _s11CallHistory06RecentA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4030910();
  v196 = *(v4 - 8);
  v197 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v193 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v195 = &v184 - v7;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090418, &qword_1C403D110);
  MEMORY[0x1EEE9AC00](v194);
  v198 = &v184 - v8;
  v9 = sub_1C40309F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v192 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v199 = &v184 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v202 = &v184 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v184 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v184 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090420, &unk_1C4054100);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v191 = &v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v201 = &v184 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v203 = &v184 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v184 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v184 - v35;
  if ((sub_1C40309C0() & 1) == 0)
  {
    return 0;
  }

  v187 = v12;
  v37 = type metadata accessor for RecentCall(0);
  v204 = a2;
  v188 = v25;
  v189 = v37;
  v200 = v9;
  v38 = *(v37 + 20);
  v39 = *(v25 + 48);
  v190 = a1;
  sub_1C3EF1A60(a1 + v38, v36, &qword_1EC08F218, &qword_1C4041840);
  v40 = v204 + v38;
  v41 = v200;
  sub_1C3EF1A60(v40, &v36[v39], &qword_1EC08F218, &qword_1C4041840);
  v42 = *(v10 + 48);
  v43 = v10;
  if (v42(v36, 1, v41) == 1)
  {
    if (v42(&v36[v39], 1, v41) == 1)
    {
      v185 = v42;
      v44 = (v10 + 48);
      v186 = v10;
      sub_1C3EED388(v36, &qword_1EC08F218, &qword_1C4041840);
      v45 = v41;
      goto LABEL_9;
    }

LABEL_7:
    v46 = &qword_1EC090420;
    v47 = &unk_1C4054100;
    v48 = v36;
LABEL_22:
    sub_1C3EED388(v48, v46, v47);
    return 0;
  }

  sub_1C3EF1A60(v36, v24, &qword_1EC08F218, &qword_1C4041840);
  if (v42(&v36[v39], 1, v41) == 1)
  {
    (*(v10 + 8))(v24, v41);
    goto LABEL_7;
  }

  v185 = v42;
  v44 = (v10 + 48);
  v49 = *(v10 + 32);
  v50 = v187;
  v49(v187, &v36[v39], v41);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v51 = sub_1C4031180();
  v186 = v43;
  v52 = v43;
  v45 = v41;
  v53 = *(v52 + 8);
  v53(v50, v41);
  v53(v24, v41);
  sub_1C3EED388(v36, &qword_1EC08F218, &qword_1C4041840);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v54 = v188;
  v55 = v189[6];
  v56 = *(v188 + 48);
  sub_1C3EF1A60(v190 + v55, v34, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EF1A60(v204 + v55, &v34[v56], &qword_1EC08F218, &qword_1C4041840);
  v57 = v185;
  v58 = v45;
  if (v185(v34, 1, v45) == 1)
  {
    v59 = v57;
    v60 = v57(&v34[v56], 1, v45);
    v61 = v186;
    if (v60 == 1)
    {
      sub_1C3EED388(v34, &qword_1EC08F218, &qword_1C4041840);
      goto LABEL_16;
    }

LABEL_14:
    v46 = &qword_1EC090420;
    v47 = &unk_1C4054100;
    v48 = v34;
    goto LABEL_22;
  }

  sub_1C3EF1A60(v34, v22, &qword_1EC08F218, &qword_1C4041840);
  v59 = v57;
  v62 = v57(&v34[v56], 1, v45);
  v61 = v186;
  if (v62 == 1)
  {
    (*(v186 + 8))(v22, v58);
    goto LABEL_14;
  }

  v63 = v187;
  (*(v186 + 32))(v187, &v34[v56], v58);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v64 = sub_1C4031180();
  v65 = *(v61 + 8);
  v66 = v63;
  v54 = v188;
  v65(v66, v58);
  v65(v22, v58);
  sub_1C3EED388(v34, &qword_1EC08F218, &qword_1C4041840);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v186 = v61;
  v67 = v58;
  v68 = v189;
  v69 = v189[7];
  v70 = *(v54 + 48);
  v71 = v203;
  sub_1C3EF1A60(v190 + v69, v203, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EF1A60(v204 + v69, v71 + v70, &qword_1EC08F218, &qword_1C4041840);
  if (v59(v71, 1, v67) == 1)
  {
    if (v59(v71 + v70, 1, v67) == 1)
    {
      v185 = v44;
      sub_1C3EED388(v71, &qword_1EC08F218, &qword_1C4041840);
      v67 = v200;
      goto LABEL_26;
    }

LABEL_21:
    v46 = &qword_1EC090420;
    v47 = &unk_1C4054100;
    v48 = v71;
    goto LABEL_22;
  }

  v72 = v202;
  sub_1C3EF1A60(v71, v202, &qword_1EC08F218, &qword_1C4041840);
  if (v59(v71 + v70, 1, v67) == 1)
  {
    (*(v186 + 8))(v72, v67);
    goto LABEL_21;
  }

  v185 = v44;
  v74 = v186;
  v75 = v187;
  (*(v186 + 32))(v187, v71 + v70, v67);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v76 = sub_1C4031180();
  v77 = *(v74 + 8);
  v78 = v75;
  v68 = v189;
  v77(v78, v67);
  v77(v72, v67);
  sub_1C3EED388(v71, &qword_1EC08F218, &qword_1C4041840);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v79 = v68[8];
  v80 = *(v54 + 48);
  v34 = v201;
  sub_1C3EF1A60(v190 + v79, v201, &qword_1EC08F218, &qword_1C4041840);
  v81 = v204 + v79;
  v82 = v204;
  sub_1C3EF1A60(v81, &v34[v80], &qword_1EC08F218, &qword_1C4041840);
  if (v59(v34, 1, v67) == 1)
  {
    if (v59(&v34[v80], 1, v67) == 1)
    {
      v83 = v59;
      sub_1C3EED388(v34, &qword_1EC08F218, &qword_1C4041840);
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v84 = v199;
  sub_1C3EF1A60(v34, v199, &qword_1EC08F218, &qword_1C4041840);
  if (v59(&v34[v80], 1, v67) == 1)
  {
    (*(v186 + 8))(v84, v67);
    goto LABEL_14;
  }

  v85 = v186;
  v86 = v187;
  (*(v186 + 32))(v187, &v34[v80], v67);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v87 = sub_1C4031180();
  v88 = *(v85 + 8);
  v89 = v86;
  v82 = v204;
  v88(v89, v67);
  v88(v84, v67);
  sub_1C3EED388(v34, &qword_1EC08F218, &qword_1C4041840);
  v83 = v59;
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v91 = v189;
  v90 = v190;
  if (*(v190 + v189[9]) != *(v82 + v189[9]) || *(v190 + v189[10]) != *(v82 + v189[10]))
  {
    return 0;
  }

  v92 = v189[11];
  v93 = (v190 + v92);
  v94 = *(v190 + v92 + 8);
  v95 = (v82 + v92);
  v96 = v95[1];
  if (v94)
  {
    if (!v96 || (*v93 != *v95 || v94 != v96) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  v97 = v91[12];
  v98 = (v90 + v97);
  v99 = *(v90 + v97 + 8);
  v100 = (v82 + v97);
  v101 = v100[1];
  if (v99)
  {
    if (!v101 || (*v98 != *v100 || v99 != v101) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  if (*(v90 + v91[13]) != *(v82 + v91[13]))
  {
    return 0;
  }

  if ((sub_1C4030950() & 1) == 0)
  {
    return 0;
  }

  v102 = v186;
  if (*(v90 + v91[15]) != *(v82 + v91[15]) || *(v90 + v91[16]) != *(v82 + v91[16]) || *(v190 + v189[17]) != *(v204 + v189[17]) || *(v190 + v189[18]) != *(v204 + v189[18]))
  {
    return 0;
  }

  v103 = v189[19];
  v104 = *(v194 + 48);
  v105 = v198;
  sub_1C3EF1A60(v190 + v103, v198, &qword_1EC08F130, &qword_1C4038450);
  sub_1C3EF1A60(v204 + v103, v105 + v104, &qword_1EC08F130, &qword_1C4038450);
  v106 = *(v196 + 48);
  if (v106(v105, 1, v197) == 1)
  {
    if (v106(v198 + v104, 1, v197) == 1)
    {
      sub_1C3EED388(v198, &qword_1EC08F130, &qword_1C4038450);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v107 = v198;
  sub_1C3EF1A60(v198, v195, &qword_1EC08F130, &qword_1C4038450);
  if (v106(v107 + v104, 1, v197) == 1)
  {
    (*(v196 + 8))(v195, v197);
LABEL_59:
    v46 = &qword_1EC090418;
    v47 = &qword_1C403D110;
    v48 = v198;
    goto LABEL_22;
  }

  v108 = v196;
  v109 = v198;
  v110 = v198 + v104;
  v111 = v193;
  v112 = v197;
  (*(v196 + 32))(v193, v110, v197);
  sub_1C3F3F528(&qword_1EC090428, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v113 = v195;
  v114 = sub_1C4031180();
  v115 = *(v108 + 8);
  v115(v111, v112);
  v115(v113, v112);
  sub_1C3EED388(v109, &qword_1EC08F130, &qword_1C4038450);
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v116 = v189[20];
  v117 = (v190 + v116);
  v118 = *(v190 + v116 + 8);
  v119 = (v204 + v116);
  v120 = v119[1];
  if (v118)
  {
    if (!v120 || (*v117 != *v119 || v118 != v120) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v120)
  {
    return 0;
  }

  if (*(v190 + v189[21]) != *(v204 + v189[21]))
  {
    return 0;
  }

  v121 = v189[22];
  v122 = (v190 + v121);
  v123 = *(v190 + v121 + 8);
  v124 = (v204 + v121);
  v125 = v124[1];
  if (v123)
  {
    if (!v125 || (*v122 != *v124 || v123 != v125) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  if (*(v190 + v189[23]) != *(v204 + v189[23]))
  {
    return 0;
  }

  if (*(v190 + v189[24]) != *(v204 + v189[24]))
  {
    return 0;
  }

  v126 = v189[25];
  v127 = *(v190 + v126 + 8);
  v207 = *(v190 + v126);
  v208 = v127;
  v128 = (v204 + v126);
  v130 = v128[1];
  v205 = *v128;
  v129 = v205;
  v206 = v130;
  sub_1C3F16304(v207, v127);
  sub_1C3F16304(v129, v130);
  LOBYTE(v129) = _s11CallHistory15ServiceProviderO2eeoiySbAC_ACtFZ_0(&v207, &v205);
  sub_1C3F17D70(v205, v206);
  sub_1C3F17D70(v207, v208);
  if ((v129 & 1) == 0 || *(v190 + v189[26]) != *(v204 + v189[26]) || *(v190 + v189[27]) != *(v204 + v189[27]) || *(v190 + v189[28]) != *(v204 + v189[28]) || *(v190 + v189[29]) != *(v204 + v189[29]) || *(v190 + v189[30]) != *(v204 + v189[30]))
  {
    return 0;
  }

  v131 = v189[31];
  v132 = (v190 + v131);
  v133 = *(v190 + v131 + 8);
  v134 = (v204 + v131);
  v135 = v134[1];
  if (v133)
  {
    if (!v135 || (*v132 != *v134 || v133 != v135) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v135)
  {
    return 0;
  }

  v136 = v189[32];
  v137 = (v190 + v136);
  v138 = *(v190 + v136 + 8);
  v139 = (v204 + v136);
  v140 = v139[1];
  if (v138)
  {
    if (!v140 || (*v137 != *v139 || v138 != v140) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v140)
  {
    return 0;
  }

  v141 = v189[33];
  v142 = (v190 + v141);
  v143 = *(v190 + v141 + 8);
  v144 = (v204 + v141);
  v145 = v144[1];
  if (v143)
  {
    if (!v145 || (*v142 != *v144 || v143 != v145) && (sub_1C4031BF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v145)
  {
    return 0;
  }

  if (*(v190 + v189[34]) != *(v204 + v189[34]) || *(v190 + v189[35]) != *(v204 + v189[35]))
  {
    return 0;
  }

  v146 = v189[36];
  v147 = *(v188 + 48);
  v148 = v191;
  sub_1C3EF1A60(v190 + v146, v191, &qword_1EC08F218, &qword_1C4041840);
  sub_1C3EF1A60(v204 + v146, v148 + v147, &qword_1EC08F218, &qword_1C4041840);
  if (v83(v148, 1, v200) == 1)
  {
    if (v83(v191 + v147, 1, v200) == 1)
    {
      sub_1C3EED388(v191, &qword_1EC08F218, &qword_1C4041840);
      goto LABEL_114;
    }

    goto LABEL_112;
  }

  v149 = v191;
  sub_1C3EF1A60(v191, v192, &qword_1EC08F218, &qword_1C4041840);
  if (v83(v149 + v147, 1, v200) == 1)
  {
    (*(v102 + 8))(v192, v200);
LABEL_112:
    v46 = &qword_1EC090420;
    v47 = &unk_1C4054100;
    v48 = v191;
    goto LABEL_22;
  }

  v150 = v102;
  v151 = *(v102 + 32);
  v152 = v191;
  v153 = v191 + v147;
  v154 = v187;
  v155 = v200;
  v151(v187, v153, v200);
  sub_1C3F3F528(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v156 = v192;
  v157 = sub_1C4031180();
  v158 = *(v150 + 8);
  v158(v154, v155);
  v158(v156, v155);
  sub_1C3EED388(v152, &qword_1EC08F218, &qword_1C4041840);
  if ((v157 & 1) == 0)
  {
    return 0;
  }

LABEL_114:
  if ((sub_1C3F38C14(*(v190 + v189[37]), *(v204 + v189[37])) & 1) == 0)
  {
    return 0;
  }

  v159 = v189[38];
  v161 = *(v190 + v159);
  v160 = *(v190 + v159 + 8);
  v162 = *(v190 + v159 + 16);
  v203 = *(v190 + v159 + 24);
  v163 = *(v190 + v159 + 32);
  v164 = (v204 + v159);
  v166 = *v164;
  v165 = v164[1];
  v167 = v164[2];
  v168 = v164[3];
  v169 = v164[4];
  if (v162)
  {
    if (v167)
    {
      if (v166 == v161 && (v160 == v165 && v162 == v167 || (sub_1C4031BF0() & 1) != 0))
      {
        if (!v163)
        {
          sub_1C3F3F4E4(v161, v160, v162, v203, 0);
          v170 = 0;
          if (!v169)
          {
            sub_1C3F3F4E4(v166, v165, v167, v168, 0);
            sub_1C3F3F4E4(v161, v160, v162, v203, 0);
            v178 = v166;
            v179 = v165;
            v180 = v167;
            v181 = v168;
            v182 = 0;
            goto LABEL_137;
          }

          goto LABEL_119;
        }

        if (v169)
        {
          if (v203 == v168 && v163 == v169)
          {
            v177 = v203;
            sub_1C3F3F4E4(v161, v160, v162, v203, v163);
            sub_1C3F3F4E4(v166, v165, v167, v177, v163);
            sub_1C3F3F4E4(v161, v160, v162, v177, v163);
            v178 = v166;
            v179 = v165;
            v180 = v167;
            v181 = v177;
            v182 = v163;
LABEL_137:
            sub_1C3F3F400(v178, v179, v180, v181, v182);
LABEL_139:

            goto LABEL_140;
          }

          v183 = v203;
          LODWORD(v202) = sub_1C4031BF0();
          sub_1C3F3F4E4(v161, v160, v162, v183, v163);
          sub_1C3F3F4E4(v166, v165, v167, v168, v169);
          sub_1C3F3F4E4(v161, v160, v162, v183, v163);
          sub_1C3F3F400(v166, v165, v167, v168, v169);
          if (v202)
          {
            goto LABEL_139;
          }

          goto LABEL_120;
        }
      }

      sub_1C3F3F4E4(v161, v160, v162, v203, v163);
      v170 = v163;
LABEL_119:
      sub_1C3F3F4E4(v166, v165, v167, v168, v169);
      sub_1C3F3F4E4(v161, v160, v162, v203, v170);
      sub_1C3F3F400(v166, v165, v167, v168, v169);
LABEL_120:

      v171 = v161;
      v172 = v160;
      v173 = v162;
      v174 = v203;
      v175 = v163;
LABEL_125:
      sub_1C3F3F400(v171, v172, v173, v174, v175);
      return 0;
    }

    v176 = v203;
    sub_1C3F3F4E4(v161, v160, v162, v203, v163);
    sub_1C3F3F4E4(v166, v165, 0, v168, v169);
    sub_1C3F3F4E4(v161, v160, v162, v176, v163);

LABEL_124:
    sub_1C3F3F400(v161, v160, v162, v203, v163);
    v171 = v166;
    v172 = v165;
    v173 = v167;
    v174 = v168;
    v175 = v169;
    goto LABEL_125;
  }

  sub_1C3F3F4E4(v161, v160, 0, v203, v163);
  if (v167)
  {
    sub_1C3F3F4E4(v166, v165, v167, v168, v169);
    goto LABEL_124;
  }

  sub_1C3F3F4E4(v166, v165, 0, v168, v169);
  v162 = 0;
LABEL_140:
  sub_1C3F3F400(v161, v160, v162, v203, v163);
  if (sub_1C3F38EB4(*(v190 + v189[39]), *(v204 + v189[39])) & 1) != 0 && (sub_1C3F22158(*(v190 + v189[40]), *(v204 + v189[40])))
  {
    return *(v190 + v189[41]) == *(v204 + v189[41]);
  }

  return 0;
}

unint64_t *sub_1C3F3F148(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C40317E0())
  {
    v12 = sub_1C3F03800(0, a2, a3);
    v13 = sub_1C3F3F2A0(a4, a2, a3);
    result = MEMORY[0x1C69331E0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1C6933590](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1C40317E0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C3F3F2A0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C3F03800(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F3F2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3F3F358(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C3F3FE30();
  result = MEMORY[0x1C69331E0](v2, &type metadata for Handle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_1C3F2AF14(v9, v7);
      sub_1C4026108(v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1C3F3F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1C3F3F444(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C3F3FF30();
  result = MEMORY[0x1C69331E0](v2, &type metadata for EmergencyMediaItem, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      sub_1C4025F68(&v9, v8, v7, v6);

      v5 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void sub_1C3F3F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1C3F3F528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C3F3F570()
{
  result = qword_1EC090310;
  if (!qword_1EC090310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090310);
  }

  return result;
}

unint64_t sub_1C3F3F5C4()
{
  result = qword_1EC090320;
  if (!qword_1EC090320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090320);
  }

  return result;
}

unint64_t sub_1C3F3F618()
{
  result = qword_1EC090328;
  if (!qword_1EC090328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090328);
  }

  return result;
}

uint64_t sub_1C3F3F66C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090340, &qword_1C403CDC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3F3F6E4()
{
  result = qword_1EC090350;
  if (!qword_1EC090350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090350);
  }

  return result;
}

unint64_t sub_1C3F3F738()
{
  result = qword_1EC08EE30;
  if (!qword_1EC08EE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3F3F528(&qword_1EC08ED90, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE30);
  }

  return result;
}

unint64_t sub_1C3F3F7EC()
{
  result = qword_1EC090358;
  if (!qword_1EC090358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090358);
  }

  return result;
}

unint64_t sub_1C3F3F840()
{
  result = qword_1EC090378;
  if (!qword_1EC090378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090378);
  }

  return result;
}

unint64_t sub_1C3F3F894()
{
  result = qword_1EC090380;
  if (!qword_1EC090380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090380);
  }

  return result;
}

uint64_t sub_1C3F3F8E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090330, &qword_1C403CDB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3F3F960()
{
  result = qword_1EC090398;
  if (!qword_1EC090398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090398);
  }

  return result;
}

unint64_t sub_1C3F3F9B4()
{
  result = qword_1EC08EE20;
  if (!qword_1EC08EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3F3F528(&qword_1EC08ED78, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE20);
  }

  return result;
}

unint64_t sub_1C3F3FA68()
{
  result = qword_1EC0903A0;
  if (!qword_1EC0903A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0903A0);
  }

  return result;
}

void sub_1C3F3FB2C(uint64_t a1)
{
  sub_1C40309F0();
  if (v1 <= 0x3F)
  {
    sub_1C3F3FF84(319, &qword_1EC0903C0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C3F3FE84(319, &qword_1EC08F8B0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C4030980();
        if (v4 <= 0x3F)
        {
          sub_1C3F3FF84(319, &qword_1EC0903C8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C3F3FED0(319, &qword_1EC0903D0, sub_1C3F3FE30, &type metadata for Handle);
            if (v6 <= 0x3F)
            {
              sub_1C3F3FE84(319, &qword_1EC0903E0, &type metadata for Handle);
              if (v7 <= 0x3F)
              {
                sub_1C3F3FED0(319, &qword_1EC0903E8, sub_1C3F3FF30, &type metadata for EmergencyMediaItem);
                if (v8 <= 0x3F)
                {
                  sub_1C3F3FF84(319, &qword_1EC0903F8, type metadata accessor for RecentCall, MEMORY[0x1E69E62F8]);
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

unint64_t sub_1C3F3FE30()
{
  result = qword_1EC0903D8;
  if (!qword_1EC0903D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0903D8);
  }

  return result;
}

void sub_1C3F3FE84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C40316A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3F3FED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1C4031550();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C3F3FF30()
{
  result = qword_1EC0903F0;
  if (!qword_1EC0903F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0903F0);
  }

  return result;
}

void sub_1C3F3FF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for RecentCall.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentCall.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3F4013C()
{
  result = qword_1EC090400;
  if (!qword_1EC090400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090400);
  }

  return result;
}

unint64_t sub_1C3F40194()
{
  result = qword_1EC090408;
  if (!qword_1EC090408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090408);
  }

  return result;
}

unint64_t sub_1C3F401EC()
{
  result = qword_1EC090410;
  if (!qword_1EC090410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090410);
  }

  return result;
}

uint64_t sub_1C3F40240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C4057120 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C4057140 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C4056FB0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44664F7365747962 && a2 == 0xEF64657355617461 || (sub_1C4031BF0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C4057160 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4057180 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40571A0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746174536C6C6163 && a2 == 0xEA00000000007375 || (sub_1C4031BF0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40571C0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40571E0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x617373654D736168 && a2 == 0xEA00000000006567 || (sub_1C4031BF0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972 || (sub_1C4031BF0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x666E6F436B6E756ALL && a2 == 0xEE0065636E656469 || (sub_1C4031BF0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C4057200 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1C4031BF0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x5065636976726573 && a2 == 0xEF72656469766F72 || (sub_1C4031BF0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65707954797474 && a2 == 0xE700000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C4057220 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C4057240 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C4057260 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4057280 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C40572A0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C40572C0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C40572E0 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C4057300 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C4057320 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEC00000044495555 || (sub_1C4031BF0() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C4056E60 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6F74616974696E69 && a2 == 0xE900000000000072 || (sub_1C4031BF0() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C4057340 == a2 || (sub_1C4031BF0() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x656373656C616F63 && a2 == 0xEE00736C6C614364 || (sub_1C4031BF0() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C4057360 == a2)
  {

    return 37;
  }

  else
  {
    v6 = sub_1C4031BF0();

    if (v6)
    {
      return 37;
    }

    else
    {
      return 38;
    }
  }
}

uint64_t sub_1C3F40DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3F40E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C3F40EA8()
{
  result = qword_1EC090440;
  if (!qword_1EC090440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F218, &qword_1C4041840);
    sub_1C3F3F528(&qword_1EC08F0B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090440);
  }

  return result;
}

unint64_t sub_1C3F40F5C()
{
  result = qword_1EC090448;
  if (!qword_1EC090448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F130, &qword_1C4038450);
    sub_1C3F3F528(&qword_1EC090370, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090448);
  }

  return result;
}

unint64_t sub_1C3F41010()
{
  result = qword_1EC090450;
  if (!qword_1EC090450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08FFD0, &qword_1C403C460);
    sub_1C3F3F528(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle, &unk_1C405317C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090450);
  }

  return result;
}

unint64_t sub_1C3F410C4()
{
  result = qword_1EC090458;
  if (!qword_1EC090458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090460, &qword_1C403D6F0);
    sub_1C3F3F528(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem, &unk_1C4053050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090458);
  }

  return result;
}

uint64_t sub_1C3F41178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EFF0, &qword_1C40381E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F412A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090478, &qword_1C403D888);
  swift_allocObject();
  v3[3] = v0;
  v3[4] = &off_1EEB06AE8;
  v3[0] = sub_1C4030DE0();
  type metadata accessor for CallHistoryStoreClient();
  v1 = swift_allocObject();
  sub_1C3F2C800(v3, v1 + 16);
  sub_1C4030DA0();
  __swift_destroy_boxed_opaque_existential_1(v3);
  type metadata accessor for CallHistoryManager();
  result = swift_allocObject();
  *(result + 16) = v1;
  qword_1EC090470 = result;
  return result;
}

uint64_t static CallHistoryManager.shared.getter()
{
  if (qword_1EC08EB58 != -1)
  {
    swift_once();
  }
}

uint64_t CallHistoryManager.saveCalls(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C3F413E4, 0, 0);
}

uint64_t sub_1C3F413E4()
{
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[2] = v1;
  v5 = *(v4 + 64);

  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  v7 = sub_1C3EEB4F0();
  *v6 = v0;
  v6[1] = sub_1C3F41550;

  return (v9)(v0 + 2, &type metadata for SaveCalls, v7, v3, v4);
}

uint64_t sub_1C3F41550()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F4523C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t CallHistoryManager.getCallsStream(fetchRequest:pageSize:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  v9 = v1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8790], v3);
  return sub_1C40314E0();
}

uint64_t sub_1C3F417F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for CallFetchRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1C40314B0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1C3F45174(v20, v11, type metadata accessor for CallFetchRequest);
  (*(v5 + 16))(v7, v21, v4);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  sub_1C3EF19F8(v11, &v18[v16], type metadata accessor for CallFetchRequest);
  (*(v5 + 32))(&v18[v17], v7, v4);

  sub_1C3F41DFC(0, 0, v14, &unk_1C403D878, v18);
}

uint64_t sub_1C3F41AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A0, &qword_1C403D880);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for GetCalls(0);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F41BB0, 0, 0);
}

uint64_t sub_1C3F41BB0()
{
  v15 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = *(v0[4] + 16);
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  sub_1C3F45174(v3, v2, type metadata accessor for CallFetchRequest);
  v7 = *(v6 + 40);
  v8 = sub_1C3F4512C(&qword_1EC08EBE8, type metadata accessor for GetCalls, &unk_1C4037B40);
  v7(v2, v1, v8, v5, v6);
  sub_1C3F451DC(v0[11], type metadata accessor for GetCalls);
  v14 = v0[2];

  sub_1C3F432BC(&v14);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  v0[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  sub_1C40314C0();
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C3F41DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C3F45054(a3, v22 - v9);
  v11 = sub_1C40314B0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C3F450C4(v10);
  }

  else
  {
    sub_1C40314A0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C4031450();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C4031240() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C3F450C4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C3F450C4(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t CallHistoryManager.getCallCount(with:)(uint64_t a1)
{
  v4 = type metadata accessor for GetCallCount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  sub_1C3F45174(a1, v6, type metadata accessor for CallFetchRequest);
  v10 = *(v9 + 40);
  v11 = sub_1C3F4512C(&qword_1EC08EEC0, type metadata accessor for GetCallCount, &unk_1C4037610);
  v10(&v14, v6, v4, v11, v8, v9);
  result = sub_1C3F451DC(v6, type metadata accessor for GetCallCount);
  if (!v2)
  {
    return v14;
  }

  return result;
}

uint64_t CallHistoryManager.updateCalls(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C3F421E4, 0, 0);
}

uint64_t sub_1C3F421E4()
{
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[2] = v1;
  v5 = *(v4 + 64);

  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  v7 = sub_1C3EEB6F0();
  *v6 = v0;
  v6[1] = sub_1C3F42350;

  return (v9)(v0 + 2, &type metadata for UpdateCalls, v7, v3, v4);
}

uint64_t sub_1C3F42350()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F08664, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t CallHistoryManager.deleteCalls(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F424C4, 0, 0);
}

uint64_t sub_1C3F424C4()
{
  v1 = v0[5];
  v2 = *(v0[4] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[3] = v1;
  v5 = *(v4 + 56);
  sub_1C3EE61B4(v1);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_1C3EE61E4();
  *v6 = v0;
  v6[1] = sub_1C3EE4B28;

  return (v9)(v0 + 2, v0 + 3, &type metadata for DeleteCalls, v7, v3, v4);
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallHistoryManager.estimateDatabaseSize(temporary:)(Swift::Bool temporary)
{
  v2 = type metadata accessor for GetCallCount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CallFetchRequest(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - v9;
  sub_1C40309E0();
  *&v8[*(v5 + 20)] = 0xF000000000000000;
  v11 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_1C40311C0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = &v8[*(v5 + 24)];
  *v16 = v13;
  v16[1] = v15;
  sub_1C3EF19F8(v8, v10, type metadata accessor for CallFetchRequest);
  v17 = *(v1 + 16);
  v18 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v18);
  sub_1C3F45174(v10, v4, type metadata accessor for CallFetchRequest);
  v20 = *(v19 + 40);
  v21 = sub_1C3F4512C(&qword_1EC08EEC0, type metadata accessor for GetCallCount, &unk_1C4037610);
  v22 = v26[1];
  v20(&v27, v4, v2, v21, v18, v19);
  sub_1C3F451DC(v4, type metadata accessor for GetCallCount);
  result = sub_1C3F451DC(v10, type metadata accessor for CallFetchRequest);
  if (!v22)
  {
    v24 = v27;
    v25 = *(*(type metadata accessor for RecentCall(0) - 8) + 72);
    result = v25 * v24;
    if ((v25 * v24) >> 64 != (v25 * v24) >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CallHistoryManager.markCallsAsRead(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F42918, 0, 0);
}

uint64_t sub_1C3F42918()
{
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v0[2] = v1;
  v5 = *(v4 + 64);
  sub_1C3EE61B4(v1);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  v7 = sub_1C3EEBAC0();
  *v6 = v0;
  v6[1] = sub_1C3F42A84;

  return (v9)(v0 + 2, &type metadata for MarkCallsAsRead, v7, v3, v4);
}

uint64_t sub_1C3F42A84()
{
  v2 = *v1;
  v2[6] = v0;

  sub_1C3EE6238(v2[2]);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F4523C, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

uint64_t CallHistoryManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C3F42C18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CallHistoryManager.saveCalls(_:)(a1);
}

uint64_t sub_1C3F42CE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  v9 = *v1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8790], v3);
  return sub_1C40314E0();
}

uint64_t sub_1C3F42E10(uint64_t a1)
{
  v4 = type metadata accessor for GetCallCount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v1 + 16);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  sub_1C3F45174(a1, v6, type metadata accessor for CallFetchRequest);
  v10 = *(v9 + 40);
  v11 = sub_1C3F4512C(&qword_1EC08EEC0, type metadata accessor for GetCallCount, &unk_1C4037610);
  v10(&v14, v6, v4, v11, v8, v9);
  result = sub_1C3F451DC(v6, type metadata accessor for GetCallCount);
  if (!v2)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C3F42F70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE4204;

  return CallHistoryManager.updateCalls(with:)(a1);
}

uint64_t sub_1C3F43008(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F43030, 0, 0);
}

uint64_t sub_1C3F43030()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C3F430D0;

  return sub_1C3EE4998(v0 + 2);
}

uint64_t sub_1C3F430D0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F08664, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C3F43224(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CallHistoryManager.markCallsAsRead(with:)(a1);
}

uint64_t sub_1C3F432BC(uint64_t *a1)
{
  v2 = *(type metadata accessor for RecentCall(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C3F15350(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C3F43364(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C3F43364(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4031BA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RecentCall(0);
        v6 = sub_1C4031420();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RecentCall(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C3F436F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C3F43490(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C3F43490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for RecentCall(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1C3F45174(v23, v17, type metadata accessor for RecentCall);
      sub_1C3F45174(v20, v13, type metadata accessor for RecentCall);
      v24 = sub_1C4030940();
      sub_1C3F451DC(v13, type metadata accessor for RecentCall);
      result = sub_1C3F451DC(v17, type metadata accessor for RecentCall);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1C3EF19F8(v23, v35, type metadata accessor for RecentCall);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C3EF19F8(v25, v20, type metadata accessor for RecentCall);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F436F4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for RecentCall(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1C3F14D78(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1C3F44058(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1C3F14D78(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1C3F14CEC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1C3F45174(v110 + v24 * v23, v18, type metadata accessor for RecentCall);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1C3F45174(v26, v116, type metadata accessor for RecentCall);
      LODWORD(v111) = sub_1C4030940();
      sub_1C3F451DC(v28, type metadata accessor for RecentCall);
      result = sub_1C3F451DC(v18, type metadata accessor for RecentCall);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1C3F45174(v30, v18, type metadata accessor for RecentCall);
        v31 = v116;
        sub_1C3F45174(v5, v116, type metadata accessor for RecentCall);
        v32 = sub_1C4030940() & 1;
        sub_1C3F451DC(v31, type metadata accessor for RecentCall);
        result = sub_1C3F451DC(v18, type metadata accessor for RecentCall);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_1C3EF19F8(v39 + v38, v107, type metadata accessor for RecentCall);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1C3EF19F8(v107, v39 + v33, type metadata accessor for RecentCall);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_1C3EFFD7C(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1C3EFFD7C((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1C3F44058(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1C3F14D78(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_1C3F14CEC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1C3F45174(v5, v18, type metadata accessor for RecentCall);
    v93 = v116;
    sub_1C3F45174(v90, v116, type metadata accessor for RecentCall);
    a4 = sub_1C4030940();
    sub_1C3F451DC(v93, type metadata accessor for RecentCall);
    result = sub_1C3F451DC(v18, type metadata accessor for RecentCall);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for RecentCall;
    v94 = v115;
    sub_1C3EF19F8(v5, v115, type metadata accessor for RecentCall);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C3EF19F8(v94, v90, type metadata accessor for RecentCall);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C3F44058(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for RecentCall(0);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1C3F45174(v30, v43, type metadata accessor for RecentCall);
          v32 = v44;
          sub_1C3F45174(v27, v44, type metadata accessor for RecentCall);
          v33 = sub_1C4030940();
          sub_1C3F451DC(v32, type metadata accessor for RecentCall);
          sub_1C3F451DC(v31, type metadata accessor for RecentCall);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1C3F45174(a2, v43, type metadata accessor for RecentCall);
        v21 = v44;
        sub_1C3F45174(a4, v44, type metadata accessor for RecentCall);
        v22 = sub_1C4030940();
        sub_1C3F451DC(v21, type metadata accessor for RecentCall);
        sub_1C3F451DC(v20, type metadata accessor for RecentCall);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1C3F44588(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1C3F44588(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for RecentCall(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C3F4466C(char a1)
{
  v3 = sub_1C4030770();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4030910();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1C402C604(v9);
  }

  else
  {
    sub_1C402BF1C(v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F240, &qword_1C40386A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C40385D0;
  v11 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v12 = v11;
  sub_1C3F0326C(inited);
  swift_setDeallocating();
  sub_1C3F451DC(inited + 32, type metadata accessor for URLResourceKey);
  v13 = v9;
  sub_1C40308B0();
  if (v1)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    v14 = sub_1C4030760();
    if (v15)
    {
      if (qword_1EC08EB80 != -1)
      {
        swift_once();
      }

      v16 = sub_1C4030D10();
      __swift_project_value_buffer(v16, qword_1EC0B0CF8);
      v17 = sub_1C4030CF0();
      v18 = sub_1C40315C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        MEMORY[0x1C6934650](v19, -1, -1);
      }

      v13 = 0;
    }

    else
    {
      v13 = v14;
    }

    (*(v22 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.saveCalls(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.updateCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE4204;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.deleteCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EEB800;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryManagerProtocol.markCallsAsRead(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return v9(a1, a2, a3);
}

uint64_t sub_1C3F44EE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CallFetchRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1C3EE7A84;

  return sub_1C3F41AB0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1C3F45054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F450C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F4512C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C3F45174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3F451DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3F452D4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1C3F158C4(&unk_1F4387368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  result = swift_arrayDestroy();
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v4;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    if (*(*(v2 + 56) + v11) == v1)
    {
      v12 = (*(v2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1C4031310();

      if (v15)
      {
        v16 = sub_1C3F0BAF4(1uLL, v14, v13);
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v14 = MEMORY[0x1C6932F10](v16, v18, v20, v22);
        v24 = v23;
      }

      else
      {
        v24 = v13;
      }

      MEMORY[0x1C6932F70](v14, v24);

      return 46;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  v25 = sub_1C4031BB0();
  v27 = v26;
  if (sub_1C4031310())
  {
    v28 = sub_1C3F0BAF4(1uLL, v25, v27);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v25 = MEMORY[0x1C6932F10](v28, v30, v32, v34);
  }

  return v25;
}

uint64_t sub_1C3F45598(unsigned __int8 a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a1;
  if (*a2 != -1)
  {
LABEL_20:
    v38 = a3;
    swift_once();
    a3 = v38;
  }

  v5 = 0;
  v6 = *a3;
  v7 = 1 << *(*a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v5;
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v11 << 6);
    if (*(*(v6 + 56) + v13) == v4)
    {
      v14 = (*(v6 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_1C4031310();

      if (v17)
      {
        v18 = sub_1C3F0BAF4(1uLL, v16, v15);
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v16 = MEMORY[0x1C6932F10](v18, v20, v22, v24);
        v26 = v25;
      }

      else
      {
        v26 = v15;
      }

      MEMORY[0x1C6932F70](v16, v26);

      return 46;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(*a3 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  v27 = sub_1C4031BB0();
  v29 = v28;
  if (sub_1C4031310())
  {
    v30 = sub_1C3F0BAF4(1uLL, v27, v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v27 = MEMORY[0x1C6932F10](v30, v32, v34, v36);
  }

  return v27;
}

uint64_t sub_1C3F457F4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
LABEL_20:
    v37 = a1;
    v38 = a3;
    swift_once();
    a3 = v38;
    a1 = v37;
  }

  v4 = 0;
  v5 = *a3;
  v6 = 1 << *(*a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    if (*(*(v5 + 56) + v12) == (a1 & 1))
    {
      v13 = (*(v5 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];

      v16 = sub_1C4031310();

      if (v16)
      {
        v17 = sub_1C3F0BAF4(1uLL, v15, v14);
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v15 = MEMORY[0x1C6932F10](v17, v19, v21, v23);
        v25 = v24;
      }

      else
      {
        v25 = v14;
      }

      MEMORY[0x1C6932F70](v15, v25);

      return 46;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(*a3 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  v26 = sub_1C4031BB0();
  v28 = v27;
  if (sub_1C4031310())
  {
    v29 = sub_1C3F0BAF4(1uLL, v26, v28);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v26 = MEMORY[0x1C6932F10](v29, v31, v33, v35);
  }

  return v26;
}

unint64_t static CoalescingStrategy.caseMap.getter()
{
  v0 = sub_1C3F158C4(&unk_1F4387EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  swift_arrayDestroy();
  return v0;
}

CallHistory::CoalescingStrategy_optional __swiftcall CoalescingStrategy.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F45B74()
{
  v0 = sub_1C3F158C4(&unk_1F4387950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090290, &qword_1C403D890);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1C3F45BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F45F3C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F45C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F45DEC();
  v5 = sub_1C3F45F3C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F45C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F45DEC();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

unint64_t sub_1C3F45CF4()
{
  result = qword_1EC090480;
  if (!qword_1EC090480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090480);
  }

  return result;
}

unint64_t sub_1C3F45D48(void *a1)
{
  a1[1] = sub_1C3F45D98();
  a1[2] = sub_1C3F45DEC();
  a1[3] = sub_1C3F45E40();
  a1[4] = sub_1C3F45E94();
  a1[5] = sub_1C3F45EE8();
  result = sub_1C3F45F3C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F45D98()
{
  result = qword_1EC090488;
  if (!qword_1EC090488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090488);
  }

  return result;
}

unint64_t sub_1C3F45DEC()
{
  result = qword_1EC090490;
  if (!qword_1EC090490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090490);
  }

  return result;
}

unint64_t sub_1C3F45E40()
{
  result = qword_1EC090498;
  if (!qword_1EC090498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090498);
  }

  return result;
}

unint64_t sub_1C3F45E94()
{
  result = qword_1EC0904A0;
  if (!qword_1EC0904A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904A0);
  }

  return result;
}

unint64_t sub_1C3F45EE8()
{
  result = qword_1EC0904A8;
  if (!qword_1EC0904A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904A8);
  }

  return result;
}

unint64_t sub_1C3F45F3C()
{
  result = qword_1EC0904B0;
  if (!qword_1EC0904B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904B0);
  }

  return result;
}

unint64_t sub_1C3F45F94()
{
  result = qword_1EC0904B8;
  if (!qword_1EC0904B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0904C0, &qword_1C403D9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904B8);
  }

  return result;
}

uint64_t sub_1C3F46008()
{
  v1 = [v0 versionIdentifiers];
  v2 = sub_1C4031500();

  *&v16 = v2;
  *(&v16 + 1) = sub_1C3F461B4;
  *&v17 = 0;
  *(&v17 + 1) = sub_1C3F47568;
  *&v18 = 0;
  *(&v18 + 1) = sub_1C3F47578;
  *&v19 = 0;
  *(&v19 + 1) = sub_1C3F4620C;
  *&v20 = 0;
  *(&v20 + 1) = sub_1C3F47540;
  v21 = 0;
  v22 = sub_1C3F47550;
  v23 = 0;
  v15 = 0;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v10 = v16;
  v11 = v17;
  result = sub_1C3F46F98();
  if (v5)
  {
    goto LABEL_10;
  }

  if (*(v2 + 36) != v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result == 1 << *(v2 + 32))
  {
    v6 = -1;
LABEL_8:
    sub_1C3F48280(&v16);
    return v6;
  }

  sub_1C3F3D6C4(result, v4, v2, v7);
  sub_1C3F461B4(v7, &v8);
  result = sub_1C3F41244(v7);
  if (!v9)
  {
    goto LABEL_11;
  }

  v7[0] = v8;
  v7[1] = v9;
  sub_1C3F4620C(v7, &v8);

  if (v9 != 1)
  {
    v6 = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C3F461B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C3F411E8(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t *sub_1C3F4620C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v27 = 0;
    v26 = 1;
LABEL_66:
    *a2 = v27;
    *(a2 + 8) = v26 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = a2;

    v8 = sub_1C3F46598(v2, v3, 10);
    v26 = v29;

    a2 = v28;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = a2;
      result = sub_1C4031910();
      a2 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v32 = v4;
        v26 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v31[0] = *result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v31 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

void *sub_1C3F46524(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F008, &qword_1C40381F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1C3F46598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C4031340();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C3F46B24(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C4031910();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C3F46B24(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C4031350();
  v6 = sub_1C3F46BA4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C3F46BA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C40316C0();
    if (!v9 || (v10 = v9, v11 = sub_1C3F46524(v9, 0), v12 = sub_1C3F46CFC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C4031270();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C4031270();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C4031910();
LABEL_4:

  return sub_1C4031270();
}

unint64_t sub_1C3F46CFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C3F46F1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C40312F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C4031910();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C3F46F1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C40312D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1C3F46F1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C4031300();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C6932FA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C3F46F98()
{
  v2 = v0[1];
  v20 = *v0;
  v21 = v2;
  v3 = *(v0 + 5);
  v22 = *(v0 + 4);
  v11 = v3;
  v10 = *(v0 + 7);
  v4 = *(v0 + 9);
  result = sub_1C3F4711C();
  v17 = result;
  v18 = v6;
  v19 = v7 & 1;
  if (v7)
  {
LABEL_7:
    __break(1u);
    return v1;
  }

  else
  {
    v8 = v6;
    v9 = v20;
    while (*(v9 + 36) == v8)
    {
      v1 = v17;
      if (v17 == 1 << *(v9 + 32))
      {
        return v1;
      }

      sub_1C3F3D6C4(v17, v8, v9, &v12);
      (*(&v9 + 1))(v14, &v12);
      sub_1C3F41244(&v12);
      v11(&v12, v14);

      v14[0] = v12;
      v14[1] = v13;
      v10(&v15, v14);

      v12 = v15;
      LOBYTE(v13) = v16;
      if (v4(&v12))
      {
        return v1;
      }

      result = sub_1C3F47324(&v17);
      v8 = v18;
      if (v19 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F4711C()
{
  v1 = *v0;
  v18 = v0[1];
  v17 = v0[3];
  v2 = *v0 + 56;
  result = sub_1C4031770();
  v4 = result;
  v5 = *(v1 + 36);
  v6 = 1 << *(v1 + 32);
  if (result == v6)
  {
    return v4;
  }

  else
  {
    while ((v4 & 0x8000000000000000) == 0 && v4 < v6)
    {
      v8 = v4 >> 6;
      if ((*(v2 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      sub_1C3F411E8(*(v1 + 48) + 40 * v4, v19);
      v18(v20, v19);
      sub_1C3F41244(v19);
      v19[0] = v20[0];
      v19[1] = v20[1];
      v9 = v17(v19);

      if (v9)
      {
        return v4;
      }

      v7 = 1 << *(v1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v10 = *(v2 + 8 * v8);
      if ((v10 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v4 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v8 << 6;
        v13 = v8 + 1;
        v14 = (v1 + 64 + 8 * v8);
        while (v13 < (v7 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_1C3E97CDC(v4, v5, 0);
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_6;
          }
        }

        result = sub_1C3E97CDC(v4, v5, 0);
      }

LABEL_6:
      v5 = *(v1 + 36);
      v6 = 1 << *(v1 + 32);
      v4 = v7;
      if (v7 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F47324(uint64_t result)
{
  if (*(result + 16))
  {
    goto LABEL_29;
  }

  v2 = *v1;
  v3 = *(result + 8);
  v4 = *(*v1 + 36);
  if (v4 != v3)
  {
    goto LABEL_27;
  }

  v5 = *result;
  if (*result != 1 << *(v2 + 32))
  {
    v20 = v1[1];
    v6 = v2 + 56;
    v19 = result;
    v7 = v1[3];
    while ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 1 << *(v2 + 32);
      if (v5 >= v8)
      {
        break;
      }

      v9 = v5 >> 6;
      v10 = *(v6 + 8 * (v5 >> 6));
      if (((v10 >> v5) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v4 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v5 & 0x3F));
      if (v11)
      {
        result = sub_1C3E97CDC(v5, v3, 0);
        v5 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (v2 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_1C3E97CDC(v5, v3, 0);
            v5 = __clz(__rbit64(v15)) + v12;
            goto LABEL_16;
          }
        }

        result = sub_1C3E97CDC(v5, v3, 0);
        v5 = v8;
      }

LABEL_16:
      v3 = *(v2 + 36);
      v17 = 1 << *(v2 + 32);
      if (v5 != v17)
      {
        if ((v5 & 0x8000000000000000) != 0 || v5 >= v17)
        {
          goto LABEL_25;
        }

        if (((*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_1C3F411E8(*(v2 + 48) + 40 * v5, v21);
        v20(v22, v21);
        sub_1C3F41244(v21);
        v21[0] = v22[0];
        v21[1] = v22[1];
        v18 = v7(v21);

        v4 = v3;
        if ((v18 & 1) == 0)
        {
          continue;
        }
      }

      *v19 = v5;
      *(v19 + 8) = v3;
      *(v19 + 16) = 0;
      return result;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C3F47550@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1C3F47578@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C3F47594()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1C40308D0();
  v6[0] = 0;
  v2 = [v0 cachedModelForPersistentStoreWithURL:v1 options:0 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C4030890();

    swift_willThrow();
  }

  return v2;
}

ValueMetadata *sub_1C3F47674()
{
  switch(sub_1C3F46008())
  {
    case 9:
      v0 = &type metadata for CallHistorySchemaV9;
      sub_1C3F4822C();
      break;
    case 10:
      v0 = &type metadata for CallHistorySchemaV10;
      sub_1C3F481D8();
      break;
    case 11:
      v0 = &type metadata for CallHistorySchemaV11;
      sub_1C3F48184();
      break;
    case 12:
      v0 = &type metadata for CallHistorySchemaV12;
      sub_1C3F48130();
      break;
    case 13:
      v0 = &type metadata for CallHistorySchemaV13;
      sub_1C3F480DC();
      break;
    case 14:
      v0 = &type metadata for CallHistorySchemaV14;
      sub_1C3F48088();
      break;
    case 15:
      v0 = &type metadata for CallHistorySchemaV15;
      sub_1C3F48034();
      break;
    case 16:
      v0 = &type metadata for CallHistorySchemaV16;
      sub_1C3F47FE0();
      break;
    case 17:
      v0 = &type metadata for CallHistorySchemaV17;
      sub_1C3F47F8C();
      break;
    case 18:
      v0 = &type metadata for CallHistorySchemaV18;
      sub_1C3F47F38();
      break;
    case 19:
      v0 = &type metadata for CallHistorySchemaV19;
      sub_1C3F47EE4();
      break;
    case 20:
      v0 = &type metadata for CallHistorySchemaV20;
      sub_1C3F47E90();
      break;
    case 21:
      v0 = &type metadata for CallHistorySchemaV21;
      sub_1C3F47E3C();
      break;
    case 22:
      v0 = &type metadata for CallHistorySchemaV22;
      sub_1C3F47DE8();
      break;
    case 23:
      v0 = &type metadata for CallHistorySchemaV23;
      sub_1C3F47D94();
      break;
    case 24:
      v0 = &type metadata for CallHistorySchemaV24;
      sub_1C3F47D40();
      break;
    case 25:
      v0 = &type metadata for CallHistorySchemaV25;
      sub_1C3F47CEC();
      break;
    case 26:
      v0 = &type metadata for CallHistorySchemaV26;
      sub_1C3F47C98();
      break;
    case 27:
      v0 = &type metadata for CallHistorySchemaV27;
      sub_1C3F47C44();
      break;
    case 28:
      v0 = &type metadata for CallHistorySchemaV28;
      sub_1C3F47BF0();
      break;
    case 29:
      v0 = &type metadata for CallHistorySchemaV29;
      sub_1C3F47B9C();
      break;
    case 30:
      v0 = &type metadata for CallHistorySchemaV30;
      sub_1C3F47B48();
      break;
    case 31:
      v0 = &type metadata for CallHistorySchemaV31;
      sub_1C3F47AF4();
      break;
    case 32:
      v0 = &type metadata for CallHistorySchemaV32;
      sub_1C3F47AA0();
      break;
    case 33:
      v0 = &type metadata for CallHistorySchemaV33;
      sub_1C3F47A4C();
      break;
    case 34:
      v0 = &type metadata for CallHistorySchemaV34;
      sub_1C3F479F8();
      break;
    case 35:
      v0 = &type metadata for CallHistorySchemaV35;
      sub_1C3F479A4();
      break;
    case 36:
      v0 = &type metadata for CallHistorySchemaV36;
      sub_1C3F47950();
      break;
    case 37:
      v0 = &type metadata for CallHistorySchemaV37;
      sub_1C3F478FC();
      break;
    default:
      v0 = &type metadata for CallHistorySchemaV38;
      sub_1C3F478A8();
      break;
  }

  return v0;
}

unint64_t sub_1C3F478A8()
{
  result = qword_1EC0904C8;
  if (!qword_1EC0904C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904C8);
  }

  return result;
}

unint64_t sub_1C3F478FC()
{
  result = qword_1EC0904D0;
  if (!qword_1EC0904D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904D0);
  }

  return result;
}

unint64_t sub_1C3F47950()
{
  result = qword_1EC0904D8;
  if (!qword_1EC0904D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904D8);
  }

  return result;
}

unint64_t sub_1C3F479A4()
{
  result = qword_1EC0904E0;
  if (!qword_1EC0904E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904E0);
  }

  return result;
}

unint64_t sub_1C3F479F8()
{
  result = qword_1EC0904E8;
  if (!qword_1EC0904E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904E8);
  }

  return result;
}

unint64_t sub_1C3F47A4C()
{
  result = qword_1EC0904F0;
  if (!qword_1EC0904F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904F0);
  }

  return result;
}

unint64_t sub_1C3F47AA0()
{
  result = qword_1EC0904F8;
  if (!qword_1EC0904F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904F8);
  }

  return result;
}

unint64_t sub_1C3F47AF4()
{
  result = qword_1EC090500;
  if (!qword_1EC090500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090500);
  }

  return result;
}

unint64_t sub_1C3F47B48()
{
  result = qword_1EC090508;
  if (!qword_1EC090508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090508);
  }

  return result;
}

unint64_t sub_1C3F47B9C()
{
  result = qword_1EC090510;
  if (!qword_1EC090510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090510);
  }

  return result;
}

unint64_t sub_1C3F47BF0()
{
  result = qword_1EC090518;
  if (!qword_1EC090518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090518);
  }

  return result;
}

unint64_t sub_1C3F47C44()
{
  result = qword_1EC090520;
  if (!qword_1EC090520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090520);
  }

  return result;
}

unint64_t sub_1C3F47C98()
{
  result = qword_1EC090528;
  if (!qword_1EC090528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090528);
  }

  return result;
}

unint64_t sub_1C3F47CEC()
{
  result = qword_1EC090530;
  if (!qword_1EC090530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090530);
  }

  return result;
}

unint64_t sub_1C3F47D40()
{
  result = qword_1EC090538;
  if (!qword_1EC090538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090538);
  }

  return result;
}

unint64_t sub_1C3F47D94()
{
  result = qword_1EC090540;
  if (!qword_1EC090540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090540);
  }

  return result;
}

unint64_t sub_1C3F47DE8()
{
  result = qword_1EC090548;
  if (!qword_1EC090548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090548);
  }

  return result;
}

unint64_t sub_1C3F47E3C()
{
  result = qword_1EC090550;
  if (!qword_1EC090550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090550);
  }

  return result;
}

unint64_t sub_1C3F47E90()
{
  result = qword_1EC090558;
  if (!qword_1EC090558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090558);
  }

  return result;
}

unint64_t sub_1C3F47EE4()
{
  result = qword_1EC090560;
  if (!qword_1EC090560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090560);
  }

  return result;
}

unint64_t sub_1C3F47F38()
{
  result = qword_1EC090568;
  if (!qword_1EC090568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090568);
  }

  return result;
}

unint64_t sub_1C3F47F8C()
{
  result = qword_1EC090570;
  if (!qword_1EC090570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090570);
  }

  return result;
}

unint64_t sub_1C3F47FE0()
{
  result = qword_1EC090578;
  if (!qword_1EC090578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090578);
  }

  return result;
}

unint64_t sub_1C3F48034()
{
  result = qword_1EC090580;
  if (!qword_1EC090580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090580);
  }

  return result;
}

unint64_t sub_1C3F48088()
{
  result = qword_1EC090588;
  if (!qword_1EC090588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090588);
  }

  return result;
}

unint64_t sub_1C3F480DC()
{
  result = qword_1EC090590;
  if (!qword_1EC090590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090590);
  }

  return result;
}

unint64_t sub_1C3F48130()
{
  result = qword_1EC090598;
  if (!qword_1EC090598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090598);
  }

  return result;
}

unint64_t sub_1C3F48184()
{
  result = qword_1EC0905A0;
  if (!qword_1EC0905A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0905A0);
  }

  return result;
}

unint64_t sub_1C3F481D8()
{
  result = qword_1EC0905A8;
  if (!qword_1EC0905A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0905A8);
  }

  return result;
}

unint64_t sub_1C3F4822C()
{
  result = qword_1EC0905B0;
  if (!qword_1EC0905B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0905B0);
  }

  return result;
}

uint64_t sub_1C3F48280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905B8, &qword_1C403DA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F482E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905D0, &qword_1C403DA98);
    v2 = sub_1C4031A10();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1C3EED3E8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1C3EED3E8(v29, v30);
    result = sub_1C4031830();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1C3EED3E8(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

void sub_1C3F485A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C40315F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3F47594();
  if (!v2)
  {
    v8 = v7;
    v13[9] = 0;
    v13[0] = [objc_allocWithZone(MEMORY[0x1E695D6C0]) initWithManagedObjectModel_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905C0, &qword_1C403DA88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C40385D0;
    *(inited + 32) = sub_1C40311C0();
    *(inited + 40) = v10;
    *(inited + 48) = 1;
    v11 = sub_1C3F15378(inited);
    swift_setDeallocating();
    sub_1C3F48778(inited + 32);
    sub_1C3F482E8(v11);

    sub_1C40315E0();
    v12 = v13[0];
    sub_1C4031650();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C3F48778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905C8, &qword_1C403DA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F487E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F488E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F489B0()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F48AAC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C4030F30();
}

uint64_t sub_1C3F48B58@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1C3F48C70(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

unint64_t sub_1C3F48D50()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F48E68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F48F1C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E24C(&qword_1EC0906F8, &qword_1EC08FB48, MEMORY[0x1E6969558], MEMORY[0x1E69E7C88]);
  sub_1C4030F90();
}

uint64_t sub_1C3F4905C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1C3F4E158(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v6);
}

uint64_t sub_1C3F4918C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E24C(&qword_1EC0906F8, &qword_1EC08FB48, MEMORY[0x1E6969558], MEMORY[0x1E69E7C88]);
  sub_1C4030F90();
}

uint64_t sub_1C3F492CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E24C(&qword_1EC0906F0, &qword_1EC08FA20, MEMORY[0x1E6969538], MEMORY[0x1E69E7C70]);
  sub_1C4030FB0();
}

uint64_t sub_1C3F493B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F494D0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F495AC()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F496B8(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DF00();
  sub_1C4030FB0();
}

uint64_t sub_1C3F49778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F49890(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F4996C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F49A78(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F49B38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F49C50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F49D2C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F49E38(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DF00();
  sub_1C4030FB0();
}

uint64_t sub_1C3F49F10@<X0>(_WORD *a2@<X8>)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C4030F90();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F4A01C(__int16 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F4A0EC()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F4A1F0(uint64_t a1, __int16 a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C4030FB0();
}

uint64_t sub_1C3F4A2A4@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a3 = v5;
  return result;
}

uint64_t sub_1C3F4A3B0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F4A484(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F4A584(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3F4A62C@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_1C3F4A738(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030A90();
}

uint64_t sub_1C3F4A80C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DD9C);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F4A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4A9C0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV9.CallRecord(0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090718, &qword_1C403E1B8);
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 256;
  *(v1 + 20) = 1;
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 256;
  *(v1 + 25) = 1;
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 257;
  *(v1 + 28) = 1;
  sub_1C4030AB0();
  *(v1 + 21) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F4AD18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory19CallHistorySchemaV910CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F4ADE4(uint64_t a1)
{
  result = sub_1C4030AC0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F4AEB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4AFC8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030A90();
}

uint64_t sub_1C3F4B0A4()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4B1B0(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4B270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4B388(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030A90();
}

uint64_t sub_1C3F4B464()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4B570(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4B630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4B748(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030A90();
}

uint64_t sub_1C3F4B824()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4B930(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4B9F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4BB08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030A90();
}

uint64_t sub_1C3F4BBE4()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4BCF0(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4BDB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4BEC8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030A90();
}

uint64_t sub_1C3F4BFA4()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DC70);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4C0B0(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4C170(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090720, &qword_1C403E288);
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  sub_1C4030AB0();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F4C45C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory19CallHistorySchemaV916CallDBProperties___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F4C528(uint64_t a1)
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3F4C608()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV9.CallRecord(0);
  v2 = sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties, &unk_1C403DD2C);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F4C73C(uint64_t a1)
{
  result = sub_1C3F4C764();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F4C764()
{
  result = qword_1EC090610;
  if (!qword_1EC090610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090610);
  }

  return result;
}

uint64_t sub_1C3F4C82C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  return swift_endAccess();
}

void (*sub_1C3F4C884(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

void sub_1C3F4C914(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 32));
    sub_1C3EAE504((v2 + 40), v3 + 32);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 32));
    sub_1C3EAE504(v2, v3 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3F4CAD0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F4CB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2, a3);
  v7 = swift_allocObject();
  a5(a1);
  return v7;
}

uint64_t sub_1C3F4CBC4(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1C3F4CC1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3F4CCAC;
}

void sub_1C3F4CCAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1C3EAE504((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1C3EAE504(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3F4CDB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_1C4031C70();
  a3(0);
  sub_1C3F4D034(a4, a5, a6);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F4CEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4031C70();
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F4CF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_1C3F4D034(a4, a5, a6);
  return sub_1C4030F50();
}

uint64_t sub_1C3F4CFC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F4D034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C3F4D34C(uint64_t a1)
{
  result = sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DE58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F4D3A4(uint64_t a1)
{
  result = sub_1C3F4D034(&qword_1EC090670, type metadata accessor for CallHistorySchemaV9.CallRecord, &unk_1C403DEC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F4D3FC()
{
  v21 = sub_1C4031070();
  v0 = *(v21 - 8);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C403DAA0;
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  sub_1C40310C0();
  v7 = swift_allocObject();
  v20 = xmmword_1C40385D0;
  *(v7 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v8 = sub_1C40310D0();
  swift_allocObject();
  v9 = sub_1C40310E0();
  *(&v23 + 1) = v8;
  v24 = sub_1C3F4D034(&qword_1EC090680, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  *&v22 = v9;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v26 + 1) = MEMORY[0x1E69E6530];
  *&v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v26 + 1) = v10;
  *&v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v26 + 1) = v10;
  *&v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v26 + 1) = v10;
  *&v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v26 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v25) = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090688, &unk_1C403E170);
  v11 = swift_allocObject();
  *(v11 + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C403DAB0;
  *(v12 + 32) = swift_getKeyPath();
  *(v11 + 32) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090690, &unk_1C403E180);
  swift_allocObject();
  v14 = sub_1C4031090();
  *(&v23 + 1) = v13;
  v24 = sub_1C3F4DC20();
  *&v22 = v14;
  sub_1C4031060();
  v15 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1C3EFFFE8((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = v15;
  (*(v1 + 32))(&v15[v5 + v17 * v4], v3, v21);
  *&v22 = v6;
  sub_1C40173FC(v18);
  return v22;
}

unint64_t sub_1C3F4DC20()
{
  result = qword_1EC090698;
  if (!qword_1EC090698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090690, &unk_1C403E180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090698);
  }

  return result;
}

unint64_t sub_1C3F4DCAC()
{
  result = qword_1EC0906A0;
  if (!qword_1EC0906A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F878, &qword_1C403A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906A0);
  }

  return result;
}

unint64_t sub_1C3F4DD50()
{
  result = qword_1EC0906A8;
  if (!qword_1EC0906A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906B0, &unk_1C403E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906A8);
  }

  return result;
}

unint64_t sub_1C3F4DDCC()
{
  result = qword_1EC0906B8;
  if (!qword_1EC0906B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906B0, &unk_1C403E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906B8);
  }

  return result;
}