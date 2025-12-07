__n128 TTRAssignment.init(assignee:originator:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v3;
  v4 = a1[6];
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v6;
  v7 = *a2;
  v8 = a2[2];
  v9 = a2[3];
  *(a3 + 128) = a2[1];
  *(a3 + 144) = v8;
  *(a3 + 96) = v4;
  *(a3 + 112) = v7;
  result = a2[4];
  v11 = a2[6];
  *(a3 + 192) = a2[5];
  *(a3 + 208) = v11;
  *(a3 + 160) = v9;
  *(a3 + 176) = result;
  return result;
}

Swift::Void __swiftcall TTRAssigneeCandidateData.setLoadedContact(_:)(CNContact a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = a1.super.isa;

  v6 = *(v2 + 32);
  v7 = *(v2 + 64);
  v16 = *(v2 + 48);
  v17 = v7;
  v8 = *(v2 + 64);
  v18 = *(v2 + 80);
  v9 = *(v2 + 32);
  v15[0] = *(v2 + 16);
  v10 = v15[0];
  v15[1] = v9;
  v23 = v16;
  v24 = v8;
  v25 = *(v2 + 80);
  *(v2 + 8) = a1;
  v21 = v10;
  v22 = v6;
  sub_21D1D9B34(v15, &v20);
  TTRParticipantModel.updatingNames(with:)(&v20, v5);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_21D1D9B90(v19);
  v11 = *(v2 + 64);
  v23 = *(v2 + 48);
  v24 = v11;
  v25 = *(v2 + 80);
  v12 = *(v2 + 32);
  v21 = *(v2 + 16);
  v22 = v12;
  sub_21D1D9B90(&v21);
  emailAddress = v20.emailAddress;
  *(v2 + 48) = v20.lastName;
  *(v2 + 64) = emailAddress;
  *(v2 + 80) = v20.phoneNumber;
  firstName = v20.firstName;
  *(v2 + 16) = v20.displayName;
  *(v2 + 32) = firstName;
}

Swift::Void __swiftcall TTRAssigneeCandidateData.setUnknownContact()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = v2;
  v3 = *(v0 + 64);
  v14 = *(v0 + 80);
  v4 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v4;
  v8 = v12;
  v9 = v3;
  v10 = *(v0 + 80);
  v6 = v11[0];
  v7 = v1;
  sub_21D1D9B34(v11, v15);
  v5 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v6);
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[0] = v6;
  v15[1] = v7;
  sub_21D1D9B90(v15);

  *(v0 + 8) = v5;
}

uint64_t TTRAssignment.assignee.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_21D1D9C94(v10, &v9);
}

__n128 TTRAssignment.assignee.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v9[6] = v1[6];
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  sub_21D30DA04(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t TTRAssignment.originator.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[12];
  v13 = v1[11];
  v2 = v13;
  v14 = v3;
  v15 = v1[13];
  v4 = v15;
  v5 = v1[8];
  v10[0] = v1[7];
  v10[1] = v5;
  v6 = v1[10];
  v11 = v1[9];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_21DACEFE8(v10, &v9);
}

uint64_t TTRAssignment.isSelfAssigned.getter()
{
  if (*(v0 + 96) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 112);
  if (v1)
  {
    LOBYTE(v1) = *(v0 + 208);
  }

  return v1 & 1;
}

uint64_t TTRAssignment.originatorString.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 160);
  v18[1] = *(v0 + 144);
  v18[2] = v2;
  v3 = *(v0 + 192);
  v18[3] = *(v0 + 176);
  v18[4] = v3;
  v4 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18[0] = v4;
  v5 = *(v0 + 208);
  *v20 = *(v0 + 209);
  *&v20[7] = *(v0 + 216);
  v19 = v5;
  if (v17)
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 176);
    v15 = *(v0 + 192);
    v11 = *(v0 + 128);
    v12 = *(v0 + 144);
    sub_21D1D9B34(v18, v16);
    v6 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
    v16[2] = v13;
    v16[3] = v14;
    v16[4] = v15;
    v16[0] = v11;
    v16[1] = v12;
    sub_21D1D9B90(v16);
  }

  else
  {
    v5 = 0;
    countAndFlagsBits = 0;
    object = 0;
  }

  v9 = sub_21DACF058(v1, v5 & 1, countAndFlagsBits, object);

  return v9;
}

uint64_t TTRAssignment.assignmentString.getter()
{
  v1 = *(v0 + 64);
  v32 = *(v0 + 48);
  v33 = v1;
  v34 = *(v0 + 80);
  v2 = *(v0 + 32);
  v30 = *(v0 + 16);
  v31 = v2;
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  v36[2] = *(v0 + 152);
  v36[3] = *(v0 + 168);
  v36[4] = *(v0 + 184);
  v5 = *(v0 + 200);
  v36[0] = *(v0 + 120);
  v36[1] = *(v0 + 136);
  *&v39[7] = *(v0 + 216);
  *v39 = *(v0 + 209);
  v6 = *(v0 + 208);
  v37 = v5;
  v35 = v4;
  v38 = v6;
  if (v4)
  {
    v19 = *(v0 + 160);
    v21 = *(v0 + 176);
    v23 = *(v0 + 192);
    v15 = *(v0 + 128);
    v17 = *(v0 + 144);
    sub_21D1D9B34(v36 + 8, &v25);
    v7 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
    v27 = v19;
    v28 = v21;
    v29 = v23;
    v25 = v15;
    v26 = v17;
    sub_21D1D9B90(&v25);
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v20 = v32;
  v22 = v33;
  v24 = v34;
  v16 = v30;
  v18 = v31;
  sub_21D1D9B34(&v30, &v25);
  v10 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
  v27 = v20;
  v28 = v22;
  v29 = v24;
  v25 = v16;
  v26 = v18;
  sub_21D1D9B90(&v25);
  if (v4)
  {
    if (v3)
    {

      if (v6)
      {

        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }

LABEL_21:
        swift_once();
        return sub_21DBF516C();
      }

      goto LABEL_11;
    }

LABEL_15:

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21D17A884();
    *(v14 + 32) = v10;
    v13 = sub_21DBFA17C();

    return v13;
  }

  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!object)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D00;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21D17A884();
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  v13 = sub_21DBFA17C();

  return v13;
}

void *TTRAssigneeCandidateData.contact.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRAssigneeCandidateData.contactInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_21D1D9B34(v8, &v7);
}

void *TTRAssigneeCandidateData.avatarImage.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t sub_21DACE458(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DACD8B0(v13, v14) & 1;
}

uint64_t sub_21DACE4C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DACD710(v13, v14) & 1;
}

uint64_t sub_21DACE528(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DACD200(v13, v14) & 1;
}

id sub_21DACE590@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3)
  {
    result = v3;
  }

  *a1 = v3;
  return result;
}

uint64_t _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  v38 = *(a1 + 3);
  v39 = v3;
  v4 = *(a1 + 5);
  v5 = *(a1 + 2);
  v36 = *(a1 + 1);
  v37 = v5;
  v6 = *(a1 + 96);
  v7 = a1[13];
  v8 = a2[1];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 5);
  v44 = *(a2 + 4);
  v45 = v11;
  v12 = *(a2 + 3);
  v42 = v10;
  v43 = v12;
  v40 = v4;
  v41 = v9;
  v13 = *(a2 + 96);
  v14 = a2[13];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v8)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
    v15 = v8;
    v16 = v2;
    v17 = sub_21DBFB63C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v31 = v38;
  v32 = v39;
  v33 = v40;
  v29 = v36;
  v30 = v37;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v24 = v41;
  v25 = v42;
  v18 = _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(&v29, &v24);
  v34[2] = v26;
  v34[3] = v27;
  v34[4] = v28;
  v34[0] = v24;
  v34[1] = v25;
  sub_21D1D9B34(&v36, v23);
  sub_21D1D9B34(&v41, v23);
  sub_21D1D9B90(v34);
  v35[2] = v31;
  v35[3] = v32;
  v35[4] = v33;
  v35[0] = v29;
  v35[1] = v30;
  sub_21D1D9B90(v35);
  if ((v18 & 1) == 0 || v6 != v13)
  {
    return 0;
  }

  if (v7)
  {
    if (v14)
    {
      sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
      v20 = v14;
      v21 = v7;
      v22 = sub_21DBFB63C();

      if (v22)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore13TTRAssignmentV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v70 = a1[4];
  v71 = v3;
  v4 = a1[5];
  v72 = a1[6];
  v5 = a1[1];
  v67[0] = *a1;
  v67[1] = v5;
  v6 = a1[3];
  v7 = *a1;
  v8 = a1[1];
  v68 = a1[2];
  v69 = v6;
  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[6];
  *v73 = a1[7];
  *&v73[16] = v9;
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  *&v73[96] = a1[13];
  *&v73[80] = v14;
  *&v73[64] = v13;
  *&v73[32] = v10;
  *&v73[48] = v12;
  v15 = *a2;
  v74[1] = a2[1];
  v74[0] = v15;
  v16 = a2[5];
  v79 = a2[6];
  v18 = a2[3];
  v17 = a2[4];
  v19 = v17;
  v78 = a2[5];
  v77 = v17;
  v20 = a2[3];
  v21 = *a2;
  v22 = a2[1];
  v75 = a2[2];
  v76 = v20;
  v23 = a2[9];
  v25 = a2[6];
  v24 = a2[7];
  *&v80[16] = a2[8];
  *v80 = v24;
  v26 = a2[12];
  *&v80[96] = a2[13];
  v27 = a2[10];
  v28 = a2[11];
  *&v80[80] = v26;
  *&v80[64] = v28;
  *&v80[32] = v23;
  *&v80[48] = v27;
  *&v37[64] = v70;
  *&v37[80] = v4;
  *&v37[96] = v11;
  *v37 = v7;
  *&v37[16] = v8;
  *&v37[32] = v68;
  *&v37[48] = v2;
  v64 = v19;
  v65 = v16;
  v66 = v25;
  v60 = v21;
  v61 = v22;
  v62 = v75;
  v63 = v18;
  sub_21D1D9C94(v67, v82);
  sub_21D1D9C94(v74, v82);
  v29 = _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(v37, &v60);
  v81[4] = v64;
  v81[5] = v65;
  v81[6] = v66;
  v81[0] = v60;
  v81[1] = v61;
  v81[3] = v63;
  v81[2] = v62;
  sub_21D30DA04(v81);
  v82[4] = *&v37[64];
  v82[5] = *&v37[80];
  v82[6] = *&v37[96];
  v82[0] = *v37;
  v82[1] = *&v37[16];
  v82[2] = *&v37[32];
  v82[3] = *&v37[48];
  sub_21D30DA04(v82);
  if ((v29 & 1) == 0)
  {
    v32 = 0;
    return v32 & 1;
  }

  v57 = *&v73[72];
  v58 = *&v73[88];
  v30 = *v73;
  v59 = *&v73[104];
  v53 = *&v73[8];
  v54 = *&v73[24];
  v55 = *&v73[40];
  v56 = *&v73[56];
  v31 = *v80;
  v52 = *&v80[104];
  v50 = *&v80[72];
  v51 = *&v80[88];
  v48 = *&v80[40];
  v49 = *&v80[56];
  v46 = *&v80[8];
  v47 = *&v80[24];
  if (!*v73)
  {
    if (!*v80)
    {
      *&v37[56] = *&v73[56];
      *&v37[72] = *&v73[72];
      *&v37[88] = *&v73[88];
      *&v37[8] = *&v73[8];
      *&v37[24] = *&v73[24];
      *v37 = 0;
      *&v37[104] = *&v73[104];
      *&v37[40] = *&v73[40];
      sub_21DACEFE8(v73, &v60);
      sub_21DACEFE8(v80, &v60);
      sub_21D0CF7E0(v37, &qword_27CE5FF78, &qword_21DC22D60);
      v32 = 1;
      return v32 & 1;
    }

    sub_21DACEFE8(v73, v37);
    sub_21DACEFE8(v80, v37);
    goto LABEL_9;
  }

  *&v37[8] = *&v73[8];
  *&v37[24] = *&v73[24];
  *&v37[40] = *&v73[40];
  *v37 = *v73;
  *&v37[104] = *&v73[104];
  *&v37[88] = *&v73[88];
  *&v37[72] = *&v73[72];
  *&v37[56] = *&v73[56];
  v60 = *v37;
  v61 = *&v37[16];
  v65 = *&v37[80];
  v66 = *&v37[96];
  v63 = *&v37[48];
  v64 = *&v37[64];
  v62 = *&v37[32];
  if (!*v80)
  {
    *&v36[64] = *&v37[64];
    *&v36[80] = *&v37[80];
    *&v36[96] = *&v37[96];
    *v36 = *v37;
    *&v36[16] = *&v37[16];
    *&v36[32] = *&v37[32];
    *&v36[48] = *&v37[48];
    sub_21DACEFE8(v73, v35);
    sub_21DACEFE8(v80, v35);
    sub_21DACEFE8(v37, v35);
    sub_21D30DA04(v36);
LABEL_9:
    *&v37[56] = v56;
    *&v37[72] = v57;
    *&v37[88] = v58;
    *v37 = v30;
    *&v37[104] = v59;
    v38 = v31;
    *&v37[8] = v53;
    *&v37[24] = v54;
    *&v37[40] = v55;
    v41 = v48;
    v40 = v47;
    v39 = v46;
    v45 = v52;
    v44 = v51;
    v43 = v50;
    v42 = v49;
    sub_21D0CF7E0(v37, &qword_27CE66438, &qword_21DC3C140);
    v32 = 0;
    return v32 & 1;
  }

  *&v36[56] = *&v80[56];
  *&v36[72] = *&v80[72];
  *&v36[88] = *&v80[88];
  *&v36[8] = *&v80[8];
  *&v36[24] = *&v80[24];
  *&v36[40] = *&v80[40];
  *&v36[104] = *&v80[104];
  *v36 = *v80;
  sub_21DACEFE8(v73, v35);
  sub_21DACEFE8(v80, v35);
  sub_21DACEFE8(v37, v35);
  v32 = _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(&v60, v36);
  v34[4] = *&v36[64];
  v34[5] = *&v36[80];
  v34[6] = *&v36[96];
  v34[0] = *v36;
  v34[1] = *&v36[16];
  v34[2] = *&v36[32];
  v34[3] = *&v36[48];
  sub_21D30DA04(v34);
  v35[4] = v64;
  v35[5] = v65;
  v35[6] = v66;
  v35[0] = v60;
  v35[1] = v61;
  v35[2] = v62;
  v35[3] = v63;
  sub_21D30DA04(v35);
  *&v36[56] = v56;
  *&v36[72] = v57;
  *&v36[88] = v58;
  *&v36[8] = v53;
  *&v36[24] = v54;
  *v36 = v30;
  *&v36[104] = v59;
  *&v36[40] = v55;
  sub_21D0CF7E0(v36, &qword_27CE5FF78, &qword_21DC22D60);
  return v32 & 1;
}

uint64_t _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v39 = a1[4];
  v40 = v3;
  v4 = a1[5];
  v41 = a1[6];
  v5 = a1[1];
  v36[0] = *a1;
  v36[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v37 = a1[2];
  v38 = v6;
  v9 = a2[1];
  v42[0] = *a2;
  v42[1] = v9;
  v10 = a2[5];
  v47 = a2[6];
  v11 = a2[3];
  v12 = a2[5];
  v45 = a2[4];
  v46 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v43 = a2[2];
  v44 = v13;
  v48[0] = v8;
  v48[1] = v7;
  v48[4] = v39;
  v48[5] = v4;
  v48[2] = v37;
  v48[3] = v2;
  v48[8] = v15;
  v48[9] = v43;
  v48[6] = a1[6];
  v48[7] = v14;
  v16 = a2[6];
  v48[12] = v10;
  v48[13] = v16;
  v48[10] = v11;
  v48[11] = v45;
  if (!*&v36[0])
  {
    if (!*&v42[0])
    {
      sub_21D0CF7E0(v48, &qword_27CE593A0, &qword_21DC0B598);
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  if (!*&v42[0])
  {
LABEL_5:
    sub_21D1D9A84(v42, &v28);
    sub_21D1D9A84(v36, &v28);
    sub_21D0CF7E0(v48, &qword_27CE593A0, &qword_21DC0B598);
    v17 = 0;
    return v17 & 1;
  }

  v32 = *(a1 + 56);
  v33 = *(a1 + 72);
  v34 = *(a1 + 88);
  v35 = *(a1 + 13);
  v29 = *(a1 + 8);
  v30 = *(a1 + 24);
  v31 = *(a1 + 40);
  v20 = *&v42[0];
  v24 = *(a2 + 56);
  v25 = *(a2 + 72);
  v26 = *(a2 + 88);
  v27 = *(a2 + 13);
  v28 = *&v36[0];
  v21 = *(a2 + 8);
  v22 = *(a2 + 24);
  v23 = *(a2 + 40);
  sub_21D1D9A84(v42, v19);
  sub_21D1D9A84(v36, v19);
  sub_21D1D9A84(v42, v19);
  sub_21D1D9A84(v36, v19);
  v17 = _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(&v28, &v20);
  sub_21D0CF7E0(v48, &qword_27CE593A0, &qword_21DC0B598);
  sub_21D1D9AE0(v42);
  sub_21D1D9AE0(v36);
  return v17 & 1;
}

uint64_t _s15RemindersUICore20TTRAssigneeCandidateO1loiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v20[4] = a1[4];
  v20[5] = v2;
  v21 = a1[6];
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v4 = a1[3];
  v20[2] = a1[2];
  v20[3] = v4;
  v5 = a2[1];
  v22[0] = *a2;
  v22[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  v22[5] = a2[5];
  v23 = v8;
  v9 = a2[4];
  v22[3] = v7;
  v22[4] = v9;
  v22[2] = v6;
  if (*&v20[0])
  {
    v10 = ((*&v22[0] == 0) | v21) ^ 1;
    if (!((*&v22[0] == 0) | v21 & 1) && (v23 & 1) == 0)
    {
      v11 = a1[4];
      v19[9] = a1[3];
      v19[10] = v11;
      v19[11] = a1[5];
      v12 = a1[2];
      v19[7] = a1[1];
      v19[8] = v12;
      sub_21D1D9A84(v22, v19);
      sub_21D1D9A84(v20, v19);
      v14 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
      v15 = a2[4];
      v19[2] = a2[3];
      v19[3] = v15;
      v19[4] = a2[5];
      v16 = a2[2];
      v19[0] = a2[1];
      v19[1] = v16;
      v17 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
      if (v14._countAndFlagsBits != v17._countAndFlagsBits || (v10 = 0, v14._object != v17._object))
      {
        v10 = sub_21DBFC64C();
      }

      sub_21D1D9AE0(v22);
      sub_21D1D9AE0(v20);
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_21DACEFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FF78, &qword_21DC22D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DACF058(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_12:
    swift_once();
    return sub_21DBF516C();
  }

  v6 = qword_280D1BAA8;
  sub_21DBF8E0C();
  if (v6 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = sub_21DBFA17C();

  return v9;
}

unint64_t sub_21DACF2E4()
{
  result = qword_27CE66428;
  if (!qword_27CE66428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAssigneeCandidate, &type metadata for TTRAssigneeCandidate, v0, v1);
    atomic_store(result, &qword_27CE66428);
  }

  return result;
}

unint64_t sub_21DACF33C()
{
  result = qword_27CE66430;
  if (!qword_27CE66430)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60EE0, &qword_21DC18C30);
    v4[0] = sub_21D183A0C();
    result = swift_getWitnessTable(MEMORY[0x277D84F48], v3, v4);
    atomic_store(result, &qword_27CE66430);
  }

  return result;
}

void destroy for TTRAssignment(uint64_t a1)
{

  v2 = *(a1 + 112);
  if (v2)
  {

    v3 = *(a1 + 216);
  }
}

uint64_t initializeWithCopy for TTRAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;
  v10 = (a2 + 112);
  v35 = *(a2 + 112);
  v11 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v11;
  *(a1 + 96) = *(a2 + 96);
  v12 = *(a2 + 104);
  *(a1 + 104) = v12;
  v13 = v4;
  v14 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v15 = v12;
  if (v35)
  {
    v17 = *(a2 + 120);
    v16 = *(a2 + 128);
    *(a1 + 112) = v35;
    *(a1 + 120) = v17;
    v19 = *(a2 + 136);
    v18 = *(a2 + 144);
    *(a1 + 128) = v16;
    *(a1 + 136) = v19;
    v21 = *(a2 + 152);
    v20 = *(a2 + 160);
    *(a1 + 144) = v18;
    *(a1 + 152) = v21;
    v23 = *(a2 + 168);
    v22 = *(a2 + 176);
    *(a1 + 160) = v20;
    *(a1 + 168) = v23;
    v25 = *(a2 + 184);
    v24 = *(a2 + 192);
    *(a1 + 176) = v22;
    *(a1 + 184) = v25;
    v26 = *(a2 + 200);
    *(a1 + 192) = v24;
    *(a1 + 200) = v26;
    *(a1 + 208) = *(a2 + 208);
    v27 = *(a2 + 216);
    *(a1 + 216) = v27;
    v28 = v35;
    v29 = v17;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v30 = v27;
  }

  else
  {
    v31 = v10[5];
    *(a1 + 176) = v10[4];
    *(a1 + 192) = v31;
    *(a1 + 208) = v10[6];
    v32 = v10[1];
    *(a1 + 112) = *v10;
    *(a1 + 128) = v32;
    v33 = v10[3];
    *(a1 + 144) = v10[2];
    *(a1 + 160) = v33;
  }

  return a1;
}

uint64_t assignWithCopy for TTRAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  *(a1 + 104) = v11;
  v12 = v11;

  v13 = (a1 + 112);
  v14 = *(a1 + 112);
  v16 = (a2 + 112);
  v15 = *(a2 + 112);
  if (v14)
  {
    if (v15)
    {
      *(a1 + 112) = v15;
      v17 = v15;

      v18 = *(a1 + 120);
      v19 = *(a2 + 120);
      *(a1 + 120) = v19;
      v20 = v19;

      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      sub_21DBF8E0C();

      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      sub_21DBF8E0C();

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      sub_21DBF8E0C();

      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      sub_21DBF8E0C();

      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      sub_21DBF8E0C();

      *(a1 + 208) = *(a2 + 208);
      v21 = *(a1 + 216);
      v22 = *(a2 + 216);
      *(a1 + 216) = v22;
      v23 = v22;
    }

    else
    {
      sub_21D30DA04(a1 + 112);
      v30 = *(a2 + 128);
      v29 = *(a2 + 144);
      *v13 = *v16;
      *(a1 + 128) = v30;
      *(a1 + 144) = v29;
      v31 = *(a2 + 208);
      v33 = *(a2 + 160);
      v32 = *(a2 + 176);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v31;
      *(a1 + 160) = v33;
      *(a1 + 176) = v32;
    }
  }

  else if (v15)
  {
    *(a1 + 112) = v15;
    v24 = *(a2 + 120);
    *(a1 + 120) = v24;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    v25 = *(a2 + 216);
    *(a1 + 216) = v25;
    v26 = v15;
    v27 = v24;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v28 = v25;
  }

  else
  {
    v34 = *v16;
    v35 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v35;
    *v13 = v34;
    v36 = *(a2 + 160);
    v37 = *(a2 + 176);
    v38 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v38;
    *(a1 + 160) = v36;
    *(a1 + 176) = v37;
  }

  return a1;
}

uint64_t assignWithTake for TTRAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;

  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;

  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;

  *(a1 + 96) = *(a2 + 96);
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  v12 = *(a1 + 112);
  v13 = *(a2 + 112);
  if (!v12)
  {
    goto LABEL_5;
  }

  if (!v13)
  {
    sub_21D30DA04(a1 + 112);
LABEL_5:
    v21 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v21;
    *(a1 + 208) = *(a2 + 208);
    v22 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v22;
    v23 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v23;
    return a1;
  }

  *(a1 + 112) = v13;

  v14 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v15 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v15;

  v16 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v16;

  v17 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v17;

  v18 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v18;

  v19 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v19;

  *(a1 + 208) = *(a2 + 208);
  v20 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAssignment(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAssignment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 224) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for TTRAssigneeCandidateData(uint64_t a1)
{

  v2 = *(a1 + 104);
}

uint64_t initializeWithCopy for TTRAssigneeCandidateData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  v10 = *(a2 + 104);
  *(a1 + 104) = v10;
  v11 = v3;
  v12 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v13 = v10;
  return a1;
}

uint64_t assignWithCopy for TTRAssigneeCandidateData(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  *(a1 + 104) = v11;
  v12 = v11;

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for TTRAssigneeCandidateData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;

  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAssigneeCandidateData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAssigneeCandidateData(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void destroy for TTRAssigneeCandidate(uint64_t a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {

    v3 = *(a1 + 104);
  }
}

__n128 initializeWithCopy for TTRAssigneeCandidate(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v19 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v19;
    *(a1 + 96) = *(a2 + 96);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    result = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = result;
  }

  else
  {
    v4 = *(a2 + 8);
    v3 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v4;
    v6 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a1 + 16) = v3;
    *(a1 + 24) = v6;
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    *(a1 + 32) = v5;
    *(a1 + 40) = v8;
    v10 = *(a2 + 56);
    v9 = *(a2 + 64);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
    v12 = *(a2 + 72);
    v11 = *(a2 + 80);
    *(a1 + 64) = v9;
    *(a1 + 72) = v12;
    v13 = *(a2 + 88);
    *(a1 + 80) = v11;
    *(a1 + 88) = v13;
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 104);
    *(a1 + 104) = v14;
    v15 = v2;
    v16 = v4;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = v14;
  }

  return result;
}

uint64_t assignWithCopy for TTRAssigneeCandidate(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      v13 = *(a2 + 1);
      *(a1 + 8) = v13;
      *(a1 + 16) = a2[1];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = a2[4];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = *(a2 + 96);
      v14 = *(a2 + 13);
      *(a1 + 104) = v14;
      v15 = v5;
      v16 = v13;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v17 = v14;
      return a1;
    }

LABEL_7:
    v18 = *a2;
    v19 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v19;
    *a1 = v18;
    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v22;
    *(a1 + 48) = v20;
    *(a1 + 64) = v21;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 1);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 11);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 13);
  *(a1 + 104) = v11;
  v12 = v11;

  return a1;
}

uint64_t assignWithTake for TTRAssigneeCandidate(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    v12 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v12;
    *(result + 96) = *(a2 + 96);
    v13 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v13;
    v14 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v14;
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      v15 = *(a2 + 80);
      *(v4 + 64) = *(a2 + 64);
      *(v4 + 80) = v15;
      *(v4 + 96) = *(a2 + 96);
      v16 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v16;
      v17 = *(a2 + 48);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 48) = v17;
    }

    else
    {
      *result = *a2;
      v4 = result;

      v5 = *(v4 + 8);
      *(v4 + 8) = *(a2 + 8);

      v6 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v6;

      v7 = *(a2 + 40);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 40) = v7;

      v8 = *(a2 + 56);
      *(v4 + 48) = *(a2 + 48);
      *(v4 + 56) = v8;

      v9 = *(a2 + 72);
      *(v4 + 64) = *(a2 + 64);
      *(v4 + 72) = v9;

      v10 = *(a2 + 88);
      *(v4 + 80) = *(a2 + 80);
      *(v4 + 88) = v10;

      *(v4 + 96) = *(a2 + 96);
      v11 = *(v4 + 104);
      *(v4 + 104) = *(a2 + 104);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRAssigneeCandidate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRAssigneeCandidate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21DAD04A8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

double TTRAssert(condition:_:file:line:)(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1(v13) & 1) == 0)
  {
    sub_21DAD06D8();
    v28 = sub_21DBFBA4C();
    HIDWORD(v27) = sub_21DBFAEBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v17 = a3;
    v18 = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21DC08D10;
    sub_21DBF53AC();
    v20 = sub_21DBF53BC();
    v22 = v21;
    (*(v12 + 8))(v15, v11);
    v23 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v24 = sub_21D17A884();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v25 = MEMORY[0x277D83C10];
    *(v19 + 96) = MEMORY[0x277D83B88];
    *(v19 + 104) = v25;
    *(v19 + 64) = v24;
    *(v19 + 72) = v18;
    *(v19 + 136) = v23;
    *(v19 + 144) = v24;
    *(v19 + 112) = v17;
    *(v19 + 120) = a4;
    sub_21DBF8E0C();
    v26 = v28;
    sub_21DBF845C("Failed Assert %@:%@: %@", 23, 2, &dword_21D0C9000, v28, HIDWORD(v27), v19);
  }

  return result;
}

unint64_t sub_21DAD06D8()
{
  result = qword_27CE66440;
  if (!qword_27CE66440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE66440);
  }

  return result;
}

Swift::Void __swiftcall TTRAssertFailure(_:file:line:)(Swift::String _, Swift::String file, Swift::Int line)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAD06D8();
  v8 = sub_21DBFBA4C();
  v9 = sub_21DBFAEBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D20;
  sub_21DBF53AC();
  v11 = sub_21DBF53BC();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = sub_21D17A884();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v15 = MEMORY[0x277D83C10];
  *(v10 + 96) = MEMORY[0x277D83B88];
  *(v10 + 104) = v15;
  *(v10 + 64) = v14;
  *(v10 + 72) = line;
  sub_21DBF845C("Failed Assert %@:%@: Unexpected call from non-main thread", 57, 2, &dword_21D0C9000, v8, v9, v10);
}

Swift::Void __swiftcall TTRAssertIsMainThread(_:file:line:)(Swift::String _, Swift::String file, Swift::Int line)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_21DAD06D8();
    v8 = sub_21DBFBA4C();
    v9 = sub_21DBFAEBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D20;
    sub_21DBF53AC();
    v11 = sub_21DBF53BC();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    *(v10 + 56) = MEMORY[0x277D837D0];
    v14 = sub_21D17A884();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v15 = MEMORY[0x277D83C10];
    *(v10 + 96) = MEMORY[0x277D83B88];
    *(v10 + 104) = v15;
    *(v10 + 64) = v14;
    *(v10 + 72) = line;
    sub_21DBF845C("Failed Assert %@:%@: Unexpected call from non-main thread", 57, 2, &dword_21D0C9000, v8, v9, v10);
  }
}

uint64_t TTRHashtag.init(name:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRHashtag.id.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRHashtag.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

BOOL static TTRHashtag.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t TTRHashtag.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21DBFA27C();
  return MEMORY[0x223D44FA0](v2);
}

uint64_t TTRHashtag.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  sub_21DBFA27C();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

BOOL sub_21DAD0C08(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_21DAD0C64()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  sub_21DBFA27C();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DAD0CC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21DBFA27C();
  return MEMORY[0x223D44FA0](v2);
}

uint64_t sub_21DAD0D00(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21DBFC7DC();
  sub_21DBFA27C();
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21DAD0D60(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21DAD0D90(uint64_t *a1, uint64_t *a2)
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
    return (sub_21DBFC64C() ^ 1) & 1;
  }
}

uint64_t sub_21DAD0DD8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_21DBFC64C() ^ 1) & 1;
  }
}

uint64_t sub_21DAD0E2C(uint64_t *a1, uint64_t *a2)
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
    return sub_21DBFC64C();
  }
}

double sub_21DAD0E50@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_21DBF8E0C();
  return result;
}

unint64_t sub_21DAD0E5C()
{
  result = qword_27CE66448;
  if (!qword_27CE66448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRHashtag, &type metadata for TTRHashtag, v0, v1);
    atomic_store(result, &qword_27CE66448);
  }

  return result;
}

void *sub_21DAD0EB0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRHashtag(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for TTRHashtag(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

double TTRIHashtagCollectionCell.allTagsButtonState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  v8[0] = v5;
  v8[1] = v6;
  sub_21D8EFAE8(v8);

  return result;
}

void TTRIHashtagCollectionCell.addTagButtonState.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_21D8EFE60(&v6);
}

double TTRIHashtagCollectionCell.hashtagLabels.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
  sub_21D8F0118(v5);

  return result;
}

double TTRIHashtagCollectionCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRIHashtagCollectionCell.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIHashtagCollectionCell.isEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  return *(v1 + v2);
}

void TTRIHashtagCollectionCell.isEnabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  v6 = v4[v5];
  v4[v5] = a1;
  if (v6 != v3)
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v8 = *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v8 | 4;
    if ((v8 | 4) != v8)
    {
      [v4 setNeedsLayout];
      if (v4[v7])
      {
        [v4 invalidateIntrinsicContentSize];
      }
    }
  }
}

void (*TTRIHashtagCollectionCell.isEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + v6);
  return sub_21DAD14A0;
}

void sub_21DAD14A0(uint64_t a1)
{
  v1 = *a1;
  TTRIHashtagCollectionCell.isEnabled.setter(*(*a1 + 32));

  free(v1);
}

double TTRIHashtagCollectionCell.allTagsButtonState.getter@<D0>(void *a1@<X8>)
{
  v3 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  sub_21DBF8E0C();
  return result;
}

double sub_21DAD1544@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  sub_21DBF8E0C();
  return result;
}

double sub_21DAD15AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
  v8[0] = v6;
  v8[1] = v5;
  sub_21D8EFAE8(v8);

  return result;
}

void (*TTRIHashtagCollectionCell.allTagsButtonState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = v7[1];
  *(v4 + 24) = *v7;
  *(v4 + 32) = v8;
  sub_21DBF8E0C();
  return sub_21D8EFC6C;
}

void sub_21DAD16F8(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_21D8EFE60(&v6);
}

void (*TTRIHashtagCollectionCell.addTagButtonState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21D8EFF90;
}

double TTRIHashtagCollectionCell.hashtagLabels.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21DAD1868(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  sub_21D8F0118(v5);

  return result;
}

void (*TTRIHashtagCollectionCell.hashtagLabels.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  sub_21DBF8E0C();
  return sub_21D8F0254;
}

uint64_t TTRIHashtagCollectionCell.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v5 = sub_21DBF6C1C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t TTRIHashtagCollectionCell.allowsEmptySelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_21DAD1A88(char a1, uint64_t *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = *a2;
  swift_beginAccess();
  *(v4 + v5) = a1;
}

uint64_t (*TTRIHashtagCollectionCell.allowsEmptySelection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21DAD1B84;
}

uint64_t TTRIHashtagCollectionCell.allowsExcludedSelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*TTRIHashtagCollectionCell.allowsExcludedSelection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21DAD3110;
}

void sub_21DAD1C80(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32)) = *(v1 + 40);
  free(v1);
}

void sub_21DAD1CA0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = *a1;
  swift_beginAccess();
  *a2 = *(v4 + v5);
}

void TTRIHashtagCollectionCell.hashtagFocusStyle.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if (v5 != v2)
  {
    [v3 setNeedsFocusUpdate];
  }
}

void (*TTRIHashtagCollectionCell.hashtagFocusStyle.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21D8F1464;
}

uint64_t TTRIHashtagCollectionCell.maxRowCount.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    return *v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DAD1E8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    v5 = *(v4 + 8);
    *a2 = *v4;
    *(a2 + 8) = v5;
  }

  else
  {
    __break(1u);
  }
}

void (*TTRIHashtagCollectionCell.maxRowCount.modify(void (**a1)(uint64_t a1)))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v4 = result;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = result;
  *(result + 5) = v5;
  v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v6)
  {
    v7 = v6 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    v8 = *(v7 + 8);
    *(v4 + 3) = *v7;
    *(v4 + 32) = v8;
    return sub_21D8F1074;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21DAD2004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = [objc_allocWithZone(type metadata accessor for TTRIHashtagWrappingCollectionView(0)) initWithFrame_];
  [v8 setLayoutMargins_];
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView] = v8;
  v9 = v8;
  if (a3)
  {
    v10 = sub_21DBFA12C();
  }

  else
  {
    v10 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v23, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = &v8[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate];
  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for TTRIHashtagCollectionCell;
  swift_unknownObjectWeakAssign();
  v13 = v11;
  v14 = [v13 containerView];
  [v14 setLayoutMarginsRelativeArrangement_];
  [v14 setPreservesSuperviewLayoutMargins_];
  v15 = v14;
  [v15 setHorizontalAlignment_];
  [v15 setVerticalAlignment_];

  [v15 setDebugBoundingBoxesEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = v8;
  sub_21D114EC8();
  v17 = sub_21DBFA5DC();

  [v15 setArrangedSubviews_];

  v18 = sub_21D507728();
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  *(v18 + 24) = sub_21DAD22EC;
  *(v18 + 32) = 0;
  sub_21D0D0E88(v19, v20);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsInvalidation_];

  [v13 setSelectionStyle_];
  [v13 setSeparatorInset_];

  return v13;
}

double sub_21DAD22EC@<D0>(_OWORD *a1@<X8>)
{
  *&result = 10;
  *a1 = xmmword_21DC3C250;
  return result;
}

id TTRIHashtagCollectionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:selectionDidChange:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

double TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:layoutResultDidChange:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9[0] = v3;
    v9[1] = v4;
    (*(v7 + 16))(v2, v9, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:canHandle:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(v2, a2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:dropSession:canDropOnHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 32))(v4, a2, a3, a4, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

double TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:dropSession:performDropOnHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(v4, a2, a3, a4, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:contextMenuConfigurationForHashtagLabel:popoverAnchor:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 48))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

double TTRIHashtagCollectionCell.hashtagWrappingCollectionViewRequestAddTag(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:accessibilityActionsForHashtagLabel:popoverAnchor:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 64))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

double sub_21DAD29E4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_21DAD2A7C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_21DAD2B0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9[0] = v3;
    v9[1] = v4;
    (*(v7 + 16))(v2, v9, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAD2BB0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(v2, a2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21DAD2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 32))(v4, a2, a3, a4, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

double sub_21DAD2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(v4, a2, a3, a4, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAD2DC8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 48))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_21DAD2EA0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 64))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

void keypath_set_12Tm(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void keypath_get_3Tm_0(void *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t UIDropOperation.debugHUDInfo.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1702260557;
      }

      return 4144959;
    }

    return 2037411651;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6564646962726F46;
      }

      return 4144959;
    }

    return 0x6C65636E6143;
  }
}

uint64_t UICollectionViewDropIntent.debugHUDInfo.getter(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1061109567;
  }

  else
  {
    return *&aUnsp_0[8 * a1];
  }
}

uint64_t UICollectionViewDropProposal.debugHUDInfo.getter()
{
  v1 = [v0 operation];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v2 = 0xE400000000000000;
        v3 = 1702260557;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v2 = 0xE400000000000000;
    v3 = 2037411651;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 0xE90000000000006ELL;
        v3 = 0x6564646962726F46;
        goto LABEL_11;
      }

LABEL_8:
      v2 = 0xE300000000000000;
      v3 = 4144959;
      goto LABEL_11;
    }

    v2 = 0xE600000000000000;
    v3 = 0x6C65636E6143;
  }

LABEL_11:
  MEMORY[0x223D42AA0](v3, v2);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v4 = [v0 intent];
  if (v4 > 2)
  {
    v5 = 1061109567;
  }

  else
  {
    v5 = *&aUnsp_0[8 * v4];
  }

  MEMORY[0x223D42AA0](v5, 0xE400000000000000);

  return 0;
}

id TTRISizedToFitImageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRISizedToFitImageView.image.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_image);

  return v1;
}

void TTRISizedToFitImageView.image.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setImage_, a1);
  sub_21DAD34C4();
}

void sub_21DAD34C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint];
  if (v4)
  {
    [v4 setActive_];
  }

  v22.receiver = v1;
  v22.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v22, sel_image);
  if (v5)
  {
    v6 = v5;
    [v5 size];
    v8 = v7;
    [v6 size];
    if (v8 > 0.0)
    {
      v10 = v9 / v8;
      if (v10 > 0.0)
      {
        v11 = [v1 heightAnchor];
        v12 = [v1 widthAnchor];
        v13 = [v11 constraintEqualToAnchor:v12 multiplier:v10];

        v14 = *&v1[v3];
        *&v1[v3] = v13;

        v15 = *&v1[v3];
        if (v15)
        {
          type metadata accessor for UILayoutPriority(0);
          v16 = v15;
          [v16 priority];
          v21 = v17;
          sub_21D367748();
          sub_21DBF84FC();
          LODWORD(v18) = v21;
          [v16 setPriority_];

          v19 = *&v1[v3];
          if (v19)
          {
            v20 = v19;
            [v20 setActive_];
          }
        }
      }
    }
  }
}

void (*TTRISizedToFitImageView.image.modify(objc_super **a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[3].receiver = [(objc_super *)v4 image];
  return sub_21DAD371C;
}

void sub_21DAD371C(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, sel_setImage_, receiver);
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, sel_setImage_, receiver);

    sub_21DAD34C4();
  }

  free(v2);
}

id TTRISizedToFitImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id TTRISizedToFitImageView.init(image:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithImage_, a1);
  [v4 setContentMode_];
  sub_21DAD34C4();

  return v4;
}

id TTRISizedToFitImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setContentMode_];
  sub_21DAD34C4();

  return v10;
}

id TTRISizedToFitImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRISizedToFitImageView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setContentMode_];
    sub_21DAD34C4();
  }

  return v5;
}

id TTRISizedToFitImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id TTRISizedToFitImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRBoardEditableColumnHeaderViewModel(0) + 20);

  return sub_21DAD3D24(v3, a1);
}

uint64_t type metadata accessor for TTRBoardEditableColumnHeaderViewModel(uint64_t a1)
{
  result = qword_27CE66468;
  if (!qword_27CE66468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DAD3D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRBoardEditableColumnHeaderViewModel(0) + 20);

  return sub_21DAD3DCC(a1, v3);
}

uint64_t sub_21DAD3DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardEditableColumnHeaderViewModel.init(isUserInteractionEnabled:editableSectionNameViewModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for TTRBoardEditableColumnHeaderViewModel(0) + 20)];

  return sub_21DAD3EC4(a2, v4);
}

uint64_t sub_21DAD3EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TTRBoardEditableColumnHeaderViewModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TTRBoardEditableColumnHeaderViewModel(0) + 20);

  return _s15RemindersUICore44TTRRemindersListEditableSectionNameViewModelV2eeoiySbAC_ACtFZ_0(&a1[v6], &a2[v6]);
}

uint64_t sub_21DAD3F88(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s15RemindersUICore44TTRRemindersListEditableSectionNameViewModelV2eeoiySbAC_ACtFZ_0(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRBoardEditableColumnHeaderViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));

    return v3;
  }

  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *v7;
        *v6 = *v7;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v26 = *(v18 + 48);
        v27 = v25;
        if (v26(v7 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v7;
        *v6 = *v7;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        v20 = v15;
        if (v19(v7 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      v128 = v3;
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(v6, v7, v51);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v52 = *v7;
        *v6 = *v7;
        v53 = v52;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(v6, v7, *(*(v13 - 8) + 64));
LABEL_92:
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v58 = v57[5];
      v59 = v6 + v58;
      v60 = v7 + v58;
      v61 = *(v7 + v58 + 8);
      if (v61)
      {
        v123 = v7;
        v126 = v6;
        *v59 = *v60;
        *(v59 + 1) = v61;
        v62 = *(v60 + 2);
        v63 = *(v60 + 3);
        v64 = *(v60 + 4);
        v65 = *(v60 + 5);
        v66 = *(v60 + 6);
        v67 = *(v60 + 7);
        v68 = v60[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v62, v63, v64, v65, v66, v67, v68);
        *(v59 + 2) = v62;
        *(v59 + 3) = v63;
        *(v59 + 4) = v64;
        *(v59 + 5) = v65;
        *(v59 + 6) = v66;
        *(v59 + 7) = v67;
        v59[64] = v68;
        *(v59 + 65) = *(v60 + 65);
        v69 = v60[120];
        if (v69 == 255)
        {
          *(v59 + 72) = *(v60 + 72);
          *(v59 + 88) = *(v60 + 88);
          *(v59 + 104) = *(v60 + 104);
          v59[120] = v60[120];
        }

        else
        {
          v70 = *(v60 + 9);
          v71 = *(v60 + 10);
          v72 = *(v60 + 11);
          v73 = *(v60 + 12);
          v74 = *(v60 + 13);
          v75 = *(v60 + 14);
          v76 = v69 & 1;
          sub_21D0FB960(v70, v71, v72, v73, v74, v75, v69 & 1);
          *(v59 + 9) = v70;
          *(v59 + 10) = v71;
          *(v59 + 11) = v72;
          *(v59 + 12) = v73;
          *(v59 + 13) = v74;
          *(v59 + 14) = v75;
          v59[120] = v76;
        }

        v3 = v128;
        v59[121] = v60[121];
        v7 = v123;
        v6 = v126;
        goto LABEL_98;
      }

LABEL_95:
      v77 = *(v60 + 5);
      *(v59 + 4) = *(v60 + 4);
      *(v59 + 5) = v77;
      *(v59 + 6) = *(v60 + 6);
      *(v59 + 106) = *(v60 + 106);
      v78 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v78;
      v79 = *(v60 + 3);
      *(v59 + 2) = *(v60 + 2);
      *(v59 + 3) = v79;
LABEL_98:
      *(v6 + v57[6]) = *(v7 + v57[6]);
      *(v6 + v57[7]) = *(v7 + v57[7]);
      *(v6 + v57[8]) = *(v7 + v57[8]);
      *(v6 + v57[9]) = *(v7 + v57[9]);
      *(v6 + v57[10]) = *(v7 + v57[10]);
      v80 = v57[11];
      v81 = *(v7 + v80);
      *(v6 + v80) = v81;
      v82 = v81;
      goto LABEL_129;
    }

    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = swift_getEnumCaseMultiPayload();
    v129 = v3;
    if (v24 <= 4)
    {
      if (v24 > 2)
      {
LABEL_69:
        v54 = sub_21DBF563C();
        (*(*(v54 - 8) + 16))(v6, v7, v54);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v55 = *v7;
      *v6 = *v7;
      v56 = v55;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v24 > 7)
    {
      if (v24 == 8 || v24 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v24 == 5 || v24 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(v6, v7, *(*(v23 - 8) + 64));
LABEL_100:
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v57[5];
    v59 = v6 + v83;
    v60 = v7 + v83;
    v84 = *(v7 + v83 + 8);
    if (v84)
    {
      v124 = v7;
      v127 = v6;
      *v59 = *v60;
      *(v59 + 1) = v84;
      v85 = *(v60 + 2);
      v86 = *(v60 + 3);
      v87 = *(v60 + 4);
      v88 = *(v60 + 5);
      v90 = *(v60 + 6);
      v89 = *(v60 + 7);
      v91 = v60[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v85, v86, v87, v88, v90, v89, v91);
      *(v59 + 2) = v85;
      *(v59 + 3) = v86;
      *(v59 + 4) = v87;
      *(v59 + 5) = v88;
      *(v59 + 6) = v90;
      *(v59 + 7) = v89;
      v59[64] = v91;
      *(v59 + 65) = *(v60 + 65);
      v92 = v60[120];
      if (v92 == 255)
      {
        *(v59 + 72) = *(v60 + 72);
        *(v59 + 88) = *(v60 + 88);
        *(v59 + 104) = *(v60 + 104);
        v59[120] = v60[120];
      }

      else
      {
        v93 = *(v60 + 9);
        v94 = *(v60 + 10);
        v95 = *(v60 + 11);
        v96 = *(v60 + 12);
        v97 = *(v60 + 13);
        v98 = *(v60 + 14);
        v99 = v92 & 1;
        sub_21D0FB960(v93, v94, v95, v96, v97, v98, v92 & 1);
        *(v59 + 9) = v93;
        *(v59 + 10) = v94;
        *(v59 + 11) = v95;
        *(v59 + 12) = v96;
        *(v59 + 13) = v97;
        *(v59 + 14) = v98;
        v59[120] = v99;
      }

      v3 = v129;
      v59[121] = v60[121];
      v7 = v124;
      v6 = v127;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v6 = *v7;
      *(v6 + 8) = *(v7 + 8);
      *(v6 + 9) = *(v7 + 9);
      v21 = v7[2];
      v6[2] = v21;
      v22 = v21;
      goto LABEL_129;
    }

    v32 = *v7;
    *v6 = *v7;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = *(v17 - 8);
    v33 = *(v18 + 48);
    v34 = v32;
    if (v33(v7 + v16, 1, v17))
    {
LABEL_28:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v6 + v16, v7 + v16, *(*(v28 - 8) + 64));
      goto LABEL_129;
    }

    v48 = swift_getEnumCaseMultiPayload();
    if (v48 > 4)
    {
      if (v48 <= 7)
      {
        if (v48 == 5 || v48 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v48 != 8 && v48 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v100 = *(v7 + v16);
      *(v6 + v16) = v100;
      v101 = v100;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v18 + 56))(v6 + v16, 0, 1, v17);
      goto LABEL_129;
    }

    if (v48 <= 2)
    {
      if (v48 != 1)
      {
        if (v48 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(v6 + v16, v7 + v16, *(v18 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v102 = sub_21DBF563C();
    (*(*(v102 - 8) + 16))(v6 + v16, v7 + v16, v102);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v7, 1, v29))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(v6, v7, *(*(v31 - 8) + 64));
      }

      else
      {
        *v6 = *v7;
        v40 = *(v29 + 20);
        v41 = sub_21DBF6C1C();
        v125 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v125(v6 + v40, v7 + v40, v41);
        (*(v30 + 56))(v6, 0, 1, v29);
      }

      v42 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v43 = (v6 + v42);
      v44 = (v7 + v42);
      v45 = v44[1];
      if (v45)
      {
        *v43 = *v44;
        v43[1] = v45;
        v46 = v44[2];
        v43[2] = v46;
        sub_21DBF8E0C();
        v47 = v46;
      }

      else
      {
        *v43 = *v44;
        v43[2] = v44[2];
      }

      goto LABEL_129;
    case 7:
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v7, 1, v35))
      {
        v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v6, v7, *(*(v37 - 8) + 64));
      }

      else
      {
        v49 = sub_21DBF563C();
        (*(*(v49 - 8) + 16))(v6, v7, v49);
        *(v6 + *(v35 + 20)) = *(v7 + *(v35 + 20));
        (*(v36 + 56))(v6, 0, 1, v35);
      }

      v50 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v6 + *(v50 + 20)) = *(v7 + *(v50 + 20));
      goto LABEL_129;
    case 8:
      *v6 = *v7;
      v10 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v11 = sub_21DBF8D7C();
      (*(*(v11 - 8) + 16))(v6 + v10, v7 + v10, v11);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(v6, v7, *(*(v8 - 8) + 64));
LABEL_130:
  v103 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0) + 20);
  v104 = v6 + v103;
  v105 = v7 + v103;
  v106 = *(v105 + 1);
  *v104 = *v105;
  *(v104 + 1) = v106;
  v107 = *(v105 + 2);
  v108 = *(v105 + 3);
  v109 = *(v105 + 4);
  v110 = *(v105 + 5);
  v111 = *(v105 + 6);
  v112 = *(v105 + 7);
  v113 = v105[64];
  sub_21DBF8E0C();
  sub_21D2A7DB4(v107, v108, v109, v110, v111, v112, v113);
  *(v104 + 2) = v107;
  *(v104 + 3) = v108;
  *(v104 + 4) = v109;
  *(v104 + 5) = v110;
  *(v104 + 6) = v111;
  *(v104 + 7) = v112;
  v104[64] = v113;
  *(v104 + 65) = *(v105 + 65);
  v114 = v105[120];
  if (v114 == 255)
  {
    *(v104 + 72) = *(v105 + 72);
    *(v104 + 88) = *(v105 + 88);
    *(v104 + 104) = *(v105 + 104);
    v104[120] = v105[120];
  }

  else
  {
    v115 = *(v105 + 9);
    v116 = *(v105 + 10);
    v117 = *(v105 + 11);
    v118 = *(v105 + 12);
    v119 = *(v105 + 13);
    v120 = *(v105 + 14);
    v121 = v114 & 1;
    sub_21D0FB960(v115, v116, v117, v118, v119, v120, v114 & 1);
    *(v104 + 9) = v115;
    *(v104 + 10) = v116;
    *(v104 + 11) = v117;
    *(v104 + 12) = v118;
    *(v104 + 13) = v119;
    *(v104 + 14) = v120;
    v104[120] = v121;
  }

  v104[121] = v105[121];
  return v3;
}

void destroy for TTRBoardEditableColumnHeaderViewModel(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + *(a2 + 20));
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v10 - 8) + 48))(v2, 1, v10))
          {

            v11 = *(v10 + 20);
            v12 = sub_21DBF6C1C();
            (*(*(v12 - 8) + 8))(v2 + v11, v12);
          }

          v13 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v13[1])
          {
          }

          break;
        case 7:
          v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v14 - 8) + 48))(v2, 1, v14))
          {
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 8))(v2, v15);
          }

          break;
        case 8:
          v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v5 = sub_21DBF8D7C();
          (*(*(v5 - 8) + 8))(v2 + v4, v5);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v8 - 8) + 48))(v2 + v7, 1, v8))
    {
      goto LABEL_46;
    }

    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v2 + v7, v20);
        goto LABEL_46;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_45;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 > 4)
  {
    if (v6 <= 7)
    {
      if (v6 != 5 && v6 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v6 != 8 && v6 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v6 > 2)
  {
LABEL_37:
    v16 = sub_21DBF563C();
    (*(*(v16 - 8) + 8))(v2, v16);
    goto LABEL_41;
  }

  if (v6 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v6 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v18 = v2 + *(v17 + 20);
  if (*(v18 + 1))
  {

    sub_21D179EF0(*(v18 + 2), *(v18 + 3), *(v18 + 4), *(v18 + 5), *(v18 + 6), *(v18 + 7), v18[64]);
    v19 = v18[120];
    if (v19 != 255)
    {
      sub_21D1078C0(*(v18 + 9), *(v18 + 10), *(v18 + 11), *(v18 + 12), *(v18 + 13), *(v18 + 14), v19 & 1);
    }
  }

LABEL_46:
  v21 = v2 + *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0) + 20);

  sub_21D179EF0(*(v21 + 2), *(v21 + 3), *(v21 + 4), *(v21 + 5), *(v21 + 6), *(v21 + 7), v21[64]);
  v22 = v21[120];
  if (v22 != 255)
  {
    v23 = *(v21 + 9);
    v24 = *(v21 + 10);
    v25 = *(v21 + 11);
    v26 = *(v21 + 12);
    v27 = *(v21 + 13);
    v28 = *(v21 + 14);

    sub_21D1078C0(v23, v24, v25, v26, v27, v28, v22 & 1);
  }
}

_BYTE *initializeWithCopy for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(v6 + v14, 1, v15))
        {
          goto LABEL_26;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v37 > 2)
        {
          goto LABEL_112;
        }

        if (v37 == 1)
        {
          goto LABEL_111;
        }

        if (v37 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v13 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(v6 + v14, 1, v15))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      v126 = v3;
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v5, v6, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *v6;
        *v5 = *v6;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(v5, v6, *(*(v11 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v5 + v56;
      v58 = v6 + v56;
      v59 = *(v6 + v56 + 8);
      if (v59)
      {
        v121 = v6;
        v124 = v5;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        v3 = v126;
        v57[121] = v58[121];
        v6 = v121;
        v5 = v124;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(v5 + v55[6]) = *(v6 + v55[6]);
      *(v5 + v55[7]) = *(v6 + v55[7]);
      *(v5 + v55[8]) = *(v6 + v55[8]);
      *(v5 + v55[9]) = *(v6 + v55[9]);
      *(v5 + v55[10]) = *(v6 + v55[10]);
      v78 = v55[11];
      v79 = *(v6 + v78);
      *(v5 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    v127 = v3;
    if (v22 <= 4)
    {
      if (v22 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v5, v6, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *v6;
      *v5 = *v6;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v22 > 7)
    {
      if (v22 == 8 || v22 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v22 == 5 || v22 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(v5, v6, *(*(v21 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = v5 + v81;
    v58 = v6 + v81;
    v82 = *(v6 + v81 + 8);
    if (v82)
    {
      v122 = v6;
      v125 = v5;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      v3 = v127;
      v57[121] = v58[121];
      v6 = v122;
      v5 = v125;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 9) = *(v6 + 9);
      v19 = v6[2];
      v5[2] = v19;
      v20 = v19;
      goto LABEL_127;
    }

    v30 = *v6;
    *v5 = *v6;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(v6 + v14, 1, v15))
    {
LABEL_26:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v5 + v14, v6 + v14, *(*(v26 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(v6 + v14);
      *(v5 + v14) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v16 + 56))(v5 + v14, 0, 1, v15);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(v5 + v14, v6 + v14, *(v16 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(v5 + v14, v6 + v14, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v6, 1, v27))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v5, v6, *(*(v29 - 8) + 64));
    }

    else
    {
      *v5 = *v6;
      v38 = *(v27 + 20);
      v39 = sub_21DBF6C1C();
      v123 = *(*(v39 - 8) + 16);
      sub_21DBF8E0C();
      v123(v5 + v38, v6 + v38, v39);
      (*(v28 + 56))(v5, 0, 1, v27);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v5 + v40);
    v42 = (v6 + v40);
    v43 = v42[1];
    if (v43)
    {
      *v41 = *v42;
      v41[1] = v43;
      v44 = v42[2];
      v41[2] = v44;
      sub_21DBF8E0C();
      v45 = v44;
    }

    else
    {
      *v41 = *v42;
      v41[2] = v42[2];
    }

    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v6, 1, v33))
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v5, v6, *(*(v35 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v5, v6, v47);
      *(v5 + *(v33 + 20)) = *(v6 + *(v33 + 20));
      (*(v34 + 56))(v5, 0, 1, v33);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v5 + *(v48 + 20)) = *(v6 + *(v48 + 20));
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(v5, v6, *(*(v7 - 8) + 64));
    goto LABEL_128;
  }

  *v5 = *v6;
  v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v10 = sub_21DBF8D7C();
  (*(*(v10 - 8) + 16))(v5 + v9, v6 + v9, v10);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v101 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0) + 20);
  v102 = v5 + v101;
  v103 = v6 + v101;
  v104 = *(v103 + 1);
  *v102 = *v103;
  *(v102 + 1) = v104;
  v105 = *(v103 + 2);
  v106 = *(v103 + 3);
  v107 = *(v103 + 4);
  v108 = *(v103 + 5);
  v109 = *(v103 + 6);
  v110 = *(v103 + 7);
  v111 = v103[64];
  sub_21DBF8E0C();
  sub_21D2A7DB4(v105, v106, v107, v108, v109, v110, v111);
  *(v102 + 2) = v105;
  *(v102 + 3) = v106;
  *(v102 + 4) = v107;
  *(v102 + 5) = v108;
  *(v102 + 6) = v109;
  *(v102 + 7) = v110;
  v102[64] = v111;
  *(v102 + 65) = *(v103 + 65);
  v112 = v103[120];
  if (v112 == 255)
  {
    *(v102 + 72) = *(v103 + 72);
    *(v102 + 88) = *(v103 + 88);
    *(v102 + 104) = *(v103 + 104);
    v102[120] = v103[120];
  }

  else
  {
    v113 = *(v103 + 9);
    v114 = *(v103 + 10);
    v115 = *(v103 + 11);
    v116 = *(v103 + 12);
    v117 = *(v103 + 13);
    v118 = *(v103 + 14);
    v119 = v112 & 1;
    sub_21D0FB960(v113, v114, v115, v116, v117, v118, v112 & 1);
    *(v102 + 9) = v113;
    *(v102 + 10) = v114;
    *(v102 + 11) = v115;
    *(v102 + 12) = v116;
    *(v102 + 13) = v117;
    *(v102 + 14) = v118;
    v102[120] = v119;
  }

  v102[121] = v103[121];
  return v3;
}

_BYTE *assignWithCopy for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D24B040(&a1[v4]);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(v6 + v14, 1, v15))
        {
          goto LABEL_27;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v37 > 2)
        {
          goto LABEL_113;
        }

        if (v37 == 1)
        {
          goto LABEL_112;
        }

        if (v37 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v13 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(v6 + v14, 1, v15))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      v159 = v3;
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_64:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v5, v6, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v50 = *v6;
        *v5 = *v6;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(v5, v6, *(*(v11 - 8) + 64));
LABEL_91:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v5 + v56;
      v58 = v6 + v56;
      if (*(v6 + v56 + 8))
      {
        v154 = v5;
        v157 = v6;
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v59 = *(v58 + 2);
        v60 = *(v58 + 3);
        v61 = *(v58 + 4);
        v62 = *(v58 + 5);
        v63 = *(v58 + 6);
        v64 = *(v58 + 7);
        v65 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v64, v65);
        *(v57 + 2) = v59;
        *(v57 + 3) = v60;
        *(v57 + 4) = v61;
        *(v57 + 5) = v62;
        *(v57 + 6) = v63;
        *(v57 + 7) = v64;
        v57[64] = v65;
        v57[65] = v58[65];
        v57[66] = v58[66];
        v57[67] = v58[67];
        v57[68] = v58[68];
        v66 = v58[120];
        if (v66 == 255)
        {
          v80 = *(v58 + 72);
          v81 = *(v58 + 88);
          v82 = *(v58 + 104);
          v57[120] = v58[120];
          *(v57 + 104) = v82;
          *(v57 + 88) = v81;
          *(v57 + 72) = v80;
        }

        else
        {
          v67 = *(v58 + 9);
          v68 = *(v58 + 10);
          v69 = *(v58 + 11);
          v70 = *(v58 + 12);
          v71 = *(v58 + 13);
          v72 = *(v58 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v57 + 9) = v67;
          *(v57 + 10) = v68;
          *(v57 + 11) = v69;
          *(v57 + 12) = v70;
          *(v57 + 13) = v71;
          *(v57 + 14) = v72;
          v57[120] = v73;
        }

        v3 = v159;
        v57[121] = v58[121];
        v5 = v154;
        v6 = v157;
        goto LABEL_97;
      }

LABEL_94:
      v74 = *v58;
      v75 = *(v58 + 1);
      v76 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v76;
      *v57 = v74;
      *(v57 + 1) = v75;
      v77 = *(v58 + 4);
      v78 = *(v58 + 5);
      v79 = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      *(v57 + 5) = v78;
      *(v57 + 6) = v79;
      *(v57 + 4) = v77;
      v3 = v159;
LABEL_97:
      *(v5 + v55[6]) = *(v6 + v55[6]);
      *(v5 + v55[7]) = *(v6 + v55[7]);
      *(v5 + v55[8]) = *(v6 + v55[8]);
      *(v5 + v55[9]) = *(v6 + v55[9]);
      *(v5 + v55[10]) = *(v6 + v55[10]);
      v83 = v55[11];
      v84 = *(v6 + v83);
      *(v5 + v83) = v84;
      v85 = v84;
      goto LABEL_128;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    v159 = v3;
    if (v22 <= 4)
    {
      if (v22 > 2)
      {
LABEL_68:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v5, v6, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v53 = *v6;
      *v5 = *v6;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v22 > 7)
    {
      if (v22 == 8 || v22 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v22 == 5 || v22 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(v5, v6, *(*(v21 - 8) + 64));
LABEL_99:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v55[5];
    v57 = v5 + v86;
    v58 = v6 + v86;
    if (*(v6 + v86 + 8))
    {
      v155 = v5;
      v158 = v6;
      *v57 = *v58;
      *(v57 + 1) = *(v58 + 1);
      v87 = *(v58 + 2);
      v88 = *(v58 + 3);
      v89 = *(v58 + 4);
      v90 = *(v58 + 5);
      v91 = *(v58 + 6);
      v92 = *(v58 + 7);
      v93 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v87, v88, v89, v90, v91, v92, v93);
      *(v57 + 2) = v87;
      *(v57 + 3) = v88;
      *(v57 + 4) = v89;
      *(v57 + 5) = v90;
      *(v57 + 6) = v91;
      *(v57 + 7) = v92;
      v57[64] = v93;
      v57[65] = v58[65];
      v57[66] = v58[66];
      v57[67] = v58[67];
      v57[68] = v58[68];
      v94 = v58[120];
      if (v94 == 255)
      {
        v102 = *(v58 + 72);
        v103 = *(v58 + 88);
        v104 = *(v58 + 104);
        v57[120] = v58[120];
        *(v57 + 104) = v104;
        *(v57 + 88) = v103;
        *(v57 + 72) = v102;
      }

      else
      {
        v95 = *(v58 + 9);
        v96 = *(v58 + 10);
        v97 = *(v58 + 11);
        v98 = *(v58 + 12);
        v99 = *(v58 + 13);
        v100 = *(v58 + 14);
        v101 = v94 & 1;
        sub_21D0FB960(v95, v96, v97, v98, v99, v100, v94 & 1);
        *(v57 + 9) = v95;
        *(v57 + 10) = v96;
        *(v57 + 11) = v97;
        *(v57 + 12) = v98;
        *(v57 + 13) = v99;
        *(v57 + 14) = v100;
        v57[120] = v101;
      }

      v3 = v159;
      v57[121] = v58[121];
      v5 = v155;
      v6 = v158;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 9) = *(v6 + 9);
      *(v5 + 10) = *(v6 + 10);
      v19 = v6[2];
      v5[2] = v19;
      v20 = v19;
      goto LABEL_128;
    }

    v30 = *v6;
    *v5 = *v6;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(v6 + v14, 1, v15))
    {
LABEL_27:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v5 + v14, v6 + v14, *(*(v26 - 8) + 64));
      goto LABEL_128;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v105 = *(v6 + v14);
      *(v5 + v14) = v105;
      v106 = v105;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v16 + 56))(v5 + v14, 0, 1, v15);
      goto LABEL_128;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(v5 + v14, v6 + v14, *(v16 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v107 = sub_21DBF563C();
    (*(*(v107 - 8) + 16))(v5 + v14, v6 + v14, v107);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v6, 1, v27))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v5, v6, *(*(v29 - 8) + 64));
    }

    else
    {
      *v5 = *v6;
      v38 = *(v27 + 20);
      v39 = sub_21DBF6C1C();
      v156 = *(*(v39 - 8) + 16);
      sub_21DBF8E0C();
      v156(v5 + v38, v6 + v38, v39);
      (*(v28 + 56))(v5, 0, 1, v27);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v5 + v40);
    v42 = (v6 + v40);
    if (v42[1])
    {
      *v41 = *v42;
      v41[1] = v42[1];
      v43 = v42[2];
      v41[2] = v43;
      sub_21DBF8E0C();
      v44 = v43;
    }

    else
    {
      v45 = *v42;
      v41[2] = v42[2];
      *v41 = v45;
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v6, 1, v33))
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v5, v6, *(*(v35 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v5, v6, v47);
      *(v5 + *(v33 + 20)) = *(v6 + *(v33 + 20));
      (*(v34 + 56))(v5, 0, 1, v33);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v5 + *(v48 + 20)) = *(v6 + *(v48 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(v5, v6, *(*(v7 - 8) + 64));
    goto LABEL_129;
  }

  *v5 = *v6;
  v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v10 = sub_21DBF8D7C();
  (*(*(v10 - 8) + 16))(v5 + v9, v6 + v9, v10);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  v108 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0) + 20);
  v109 = v5 + v108;
  v110 = v6 + v108;
  *v109 = *v110;
  *(v109 + 1) = *(v110 + 1);
  sub_21DBF8E0C();

  v111 = *(v110 + 2);
  v112 = *(v110 + 3);
  v113 = *(v110 + 4);
  v114 = *(v110 + 5);
  v115 = *(v110 + 6);
  v116 = *(v110 + 7);
  v117 = v110[64];
  sub_21D2A7DB4(v111, v112, v113, v114, v115, v116, v117);
  v118 = *(v109 + 2);
  v119 = *(v109 + 3);
  v120 = *(v109 + 4);
  v121 = *(v109 + 5);
  v122 = *(v109 + 6);
  v123 = *(v109 + 7);
  *(v109 + 2) = v111;
  *(v109 + 3) = v112;
  *(v109 + 4) = v113;
  *(v109 + 5) = v114;
  *(v109 + 6) = v115;
  *(v109 + 7) = v116;
  v124 = v109[64];
  v109[64] = v117;
  sub_21D179EF0(v118, v119, v120, v121, v122, v123, v124);
  v109[65] = v110[65];
  v109[66] = v110[66];
  v109[67] = v110[67];
  v109[68] = v110[68];
  v125 = v110[120];
  if (v109[120] == 255)
  {
    if (v125 == 255)
    {
      v150 = *(v110 + 72);
      v151 = *(v110 + 88);
      v152 = *(v110 + 104);
      v109[120] = v110[120];
      *(v109 + 104) = v152;
      *(v109 + 88) = v151;
      *(v109 + 72) = v150;
    }

    else
    {
      v140 = *(v110 + 9);
      v141 = *(v110 + 10);
      v142 = *(v110 + 11);
      v143 = *(v110 + 12);
      v144 = *(v110 + 13);
      v145 = *(v110 + 14);
      v146 = v125 & 1;
      sub_21D0FB960(v140, v141, v142, v143, v144, v145, v125 & 1);
      *(v109 + 9) = v140;
      *(v109 + 10) = v141;
      *(v109 + 11) = v142;
      *(v109 + 12) = v143;
      *(v109 + 13) = v144;
      *(v109 + 14) = v145;
      v109[120] = v146;
    }
  }

  else if (v125 == 255)
  {
    sub_21D2E979C((v109 + 72));
    v147 = *(v110 + 88);
    v148 = *(v110 + 104);
    v149 = v110[120];
    *(v109 + 72) = *(v110 + 72);
    v109[120] = v149;
    *(v109 + 104) = v148;
    *(v109 + 88) = v147;
  }

  else
  {
    v126 = *(v110 + 9);
    v127 = *(v110 + 10);
    v128 = *(v110 + 11);
    v129 = *(v110 + 12);
    v130 = *(v110 + 13);
    v131 = *(v110 + 14);
    v132 = v125 & 1;
    sub_21D0FB960(v126, v127, v128, v129, v130, v131, v125 & 1);
    v133 = *(v109 + 9);
    v134 = *(v109 + 10);
    v135 = *(v109 + 11);
    v136 = *(v109 + 12);
    v137 = *(v109 + 13);
    v138 = *(v109 + 14);
    v139 = v109[120];
    *(v109 + 9) = v126;
    *(v109 + 10) = v127;
    *(v109 + 11) = v128;
    *(v109 + 12) = v129;
    *(v109 + 13) = v130;
    *(v109 + 14) = v131;
    v109[120] = v132;
    sub_21D1078C0(v133, v134, v135, v136, v137, v138, v139);
  }

  v109[121] = v110[121];
  return v3;
}

_BYTE *initializeWithTake for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v6, 1, v22))
        {
          v24 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v5, v6, *(*(v24 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(v5, v6, v27);
          v5[*(v22 + 20)] = v6[*(v22 + 20)];
          (*(v23 + 56))(v5, 0, 1, v22);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&v5[*(v28 + 20)] = *&v6[*(v28 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *v5 = *v6;
      v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v19 = sub_21DBF8D7C();
      (*(*(v19 - 8) + 32))(&v5[v18], &v6[v18], v19);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(v5, v6, *(*(v14 - 8) + 64));
        }

        else
        {
          *v5 = *v6;
          v29 = *(v12 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&v5[v29], &v6[v29], v30);
          (*(v13 + 56))(v5, 0, 1, v12);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &v5[v31];
        v33 = &v6[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *v5 = *v6;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v6[v15], 1, v16))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *v5 = *v6;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(&v6[v15], 1, v16))
      {
        goto LABEL_29;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_57:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&v5[v15], &v6[v15], v35);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v17 + 56))(&v5[v15], 0, 1, v16);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&v5[v15], &v6[v15], *(v17 + 64));
      goto LABEL_86;
    }

    *v5 = *v6;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v6[v15], 1, v16))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&v5[v15], &v6[v15], *(*(v21 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 <= 3)
    {
      if (v20 == 2 || v20 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v20 == 4 || v20 == 5 || v20 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 3)
    {
      if (v10 == 2 || v10 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v10 == 4 || v10 == 5 || v10 == 6)
    {
LABEL_9:
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 32))(v5, v6, v11);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &v5[v37];
      v39 = &v6[v37];
      v40 = v39[3];
      v38[2] = v39[2];
      v38[3] = v40;
      v41 = v39[1];
      *v38 = *v39;
      v38[1] = v41;
      *(v38 + 106) = *(v39 + 106);
      v42 = v39[6];
      v38[5] = v39[5];
      v38[6] = v42;
      v38[4] = v39[4];
      v5[v36[6]] = v6[v36[6]];
      v5[v36[7]] = v6[v36[7]];
      v5[v36[8]] = v6[v36[8]];
      v5[v36[9]] = v6[v36[9]];
      v5[v36[10]] = v6[v36[10]];
      *&v5[v36[11]] = *&v6[v36[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(v5, v6, *(*(v9 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(v5, v6, *(*(v7 - 8) + 64));
LABEL_88:
  v43 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0) + 20);
  v44 = &v5[v43];
  v45 = &v6[v43];
  v46 = v45[5];
  v44[4] = v45[4];
  v44[5] = v46;
  v44[6] = v45[6];
  *(v44 + 106) = *(v45 + 106);
  v47 = v45[1];
  *v44 = *v45;
  v44[1] = v47;
  v48 = v45[3];
  v44[2] = v45[2];
  v44[3] = v48;
  return a1;
}

_BYTE *assignWithTake for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  if (a1 != a2)
  {
    sub_21D24B040(&a1[v4]);
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v23 = *(v22 - 8);
          if ((*(v23 + 48))(v6, 1, v22))
          {
            v24 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v5, v6, *(*(v24 - 8) + 64));
          }

          else
          {
            v27 = sub_21DBF563C();
            (*(*(v27 - 8) + 32))(v5, v6, v27);
            v5[*(v22 + 20)] = v6[*(v22 + 20)];
            (*(v23 + 56))(v5, 0, 1, v22);
          }

          v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&v5[*(v28 + 20)] = *&v6[*(v28 + 20)];
          goto LABEL_88;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *v5 = *v6;
        v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v19 = sub_21DBF8D7C();
        (*(*(v19 - 8) + 32))(&v5[v18], &v6[v18], v19);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v13 = *(v12 - 8);
          if ((*(v13 + 48))(v6, 1, v12))
          {
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(v5, v6, *(*(v14 - 8) + 64));
          }

          else
          {
            *v5 = *v6;
            v29 = *(v12 + 20);
            v30 = sub_21DBF6C1C();
            (*(*(v30 - 8) + 32))(&v5[v29], &v6[v29], v30);
            (*(v13 + 56))(v5, 0, 1, v12);
          }

          v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v32 = &v5[v31];
          v33 = &v6[v31];
          *v32 = *v33;
          *(v32 + 2) = *(v33 + 2);
          goto LABEL_88;
        }

        goto LABEL_33;
      }

      *v5 = *v6;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(&v6[v15], 1, v16))
      {
        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 <= 3)
          {
            if (v10 == 2 || v10 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v10 == 4 || v10 == 5 || v10 == 6)
          {
LABEL_10:
            v11 = sub_21DBF563C();
            (*(*(v11 - 8) + 32))(v5, v6, v11);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v37 = v36[5];
            v38 = &v5[v37];
            v39 = &v6[v37];
            v40 = v39[3];
            v38[2] = v39[2];
            v38[3] = v40;
            v41 = v39[1];
            *v38 = *v39;
            v38[1] = v41;
            *(v38 + 106) = *(v39 + 106);
            v42 = v39[6];
            v38[5] = v39[5];
            v38[6] = v42;
            v38[4] = v39[4];
            v5[v36[6]] = v6[v36[6]];
            v5[v36[7]] = v6[v36[7]];
            v5[v36[8]] = v6[v36[8]];
            v5[v36[9]] = v6[v36[9]];
            v5[v36[10]] = v6[v36[10]];
            *&v5[v36[11]] = *&v6[v36[11]];
            goto LABEL_88;
          }

LABEL_65:
          memcpy(v5, v6, *(*(v9 - 8) + 64));
          goto LABEL_66;
        }

LABEL_33:
        memcpy(v5, v6, *(*(v7 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *v5 = *v6;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(&v6[v15], 1, v16))
        {
          goto LABEL_30;
        }

        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
LABEL_58:
          v35 = sub_21DBF563C();
          (*(*(v35 - 8) + 32))(&v5[v15], &v6[v15], v35);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v17 + 56))(&v5[v15], 0, 1, v16);
          goto LABEL_88;
        }

LABEL_86:
        memcpy(&v5[v15], &v6[v15], *(v17 + 64));
        goto LABEL_87;
      }

      *v5 = *v6;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(&v6[v15], 1, v16))
      {
        v26 = swift_getEnumCaseMultiPayload();
        if (v26 <= 3)
        {
          if (v26 == 2 || v26 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v26 == 4 || v26 == 5 || v26 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

LABEL_30:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&v5[v15], &v6[v15], *(*(v21 - 8) + 64));
    goto LABEL_88;
  }

LABEL_89:
  v43 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel(0) + 20);
  v44 = &v5[v43];
  v45 = &v6[v43];
  v46 = *(v45 + 1);
  *v44 = *v45;
  *(v44 + 1) = v46;

  v47 = v45[64];
  v48 = *(v44 + 2);
  v49 = *(v44 + 3);
  v50 = *(v44 + 4);
  v51 = *(v44 + 5);
  v52 = *(v44 + 6);
  v53 = *(v44 + 7);
  v54 = *(v45 + 2);
  *(v44 + 1) = *(v45 + 1);
  *(v44 + 2) = v54;
  *(v44 + 3) = *(v45 + 3);
  v55 = v44[64];
  v44[64] = v47;
  sub_21D179EF0(v48, v49, v50, v51, v52, v53, v55);
  *(v44 + 65) = *(v45 + 65);
  v44[67] = v45[67];
  v44[68] = v45[68];
  v56 = v44[120];
  if (v56 == 255)
  {
LABEL_93:
    *(v44 + 72) = *(v45 + 72);
    *(v44 + 88) = *(v45 + 88);
    *(v44 + 104) = *(v45 + 104);
    v44[120] = v45[120];
    goto LABEL_94;
  }

  v57 = v45[120];
  if (v57 == 255)
  {
    sub_21D2E979C((v44 + 72));
    goto LABEL_93;
  }

  v58 = *(v44 + 9);
  v59 = *(v44 + 10);
  v60 = *(v44 + 11);
  v61 = *(v44 + 12);
  v62 = *(v44 + 13);
  v63 = *(v44 + 14);
  *(v44 + 72) = *(v45 + 72);
  *(v44 + 88) = *(v45 + 88);
  *(v44 + 104) = *(v45 + 104);
  v44[120] = v57 & 1;
  sub_21D1078C0(v58, v59, v60, v61, v62, v63, v56 & 1);
LABEL_94:
  v44[121] = v45[121];
  return a1;
}

uint64_t sub_21DADAD60(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListEditableSectionNameViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRAnyEquatable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyEquatableBoxImpl(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = sub_21DADAF10(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t sub_21DADAF10(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

uint64_t sub_21DADB118(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DADB1F8(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = sub_21DBFA10C();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_21DADB2B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  a1[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_0, v1 + v2, v3);
}

uint64_t sub_21DADB3A4()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t TTRIHostingControllerWithCustomUndo.__allocating_init(rootView:undoManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v2);
  v6 = sub_21DADBAEC(a1);
  (*(*(*(v3 + class metadata base offset for TTRIHostingControllerWithCustomUndo) - 8) + 8))(a1);
  return v6;
}

uint64_t TTRIHostingControllerWithCustomUndo.init(rootView:undoManager:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_21DADBAEC(a1);
  (*(*(*(v4 + class metadata base offset for TTRIHostingControllerWithCustomUndo) - 8) + 8))(a1);
  return v5;
}

id TTRIHostingControllerWithCustomUndo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21DADB684()
{
  v0 = sub_21DADBC40();

  return v0;
}

void sub_21DADB6C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for TTRIHostingControllerWithCustomUndo(0, *((*MEMORY[0x277D85000] & *v5) + class metadata base offset for TTRIHostingControllerWithCustomUndo), *((*MEMORY[0x277D85000] & *v5) + class metadata base offset for TTRIHostingControllerWithCustomUndo + 8), a4);
  v11.receiver = v5;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  v8 = [v5 view];
  if (v8)
  {
    v9 = v8;
    v10 = UIView.firstResponderDescendant.getter();

    if (v10)
    {
    }

    else
    {
      [v5 becomeFirstResponder];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21DADB7A4(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_21DADB6C0(a3, v6, v4, v5);
}

id sub_21DADB7F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TTRIHostingControllerWithCustomUndo(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRIHostingControllerWithCustomUndo), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRIHostingControllerWithCustomUndo + 8), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  return [v4 resignFirstResponder];
}

void sub_21DADB894(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_21DADB7F8(a3, v6, v4, v5);
}

id TTRIHostingControllerWithCustomUndo.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRIHostingControllerWithCustomUndo(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRIHostingControllerWithCustomUndo), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRIHostingControllerWithCustomUndo + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21DADBAEC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  *(v1 + *(v3 + 16)) = v4;
  (*(v5 + 16))(&v9 - v6, v7, v2);
  return sub_21DBF97DC();
}

void TTRTemplatesListViewModel.Template.init(template:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  type metadata accessor for TTRListColors();
  v7 = [a1 color];
  static TTRListColors.color(for:)(v7, v65);

  v8 = v65[1];
  v55 = v65[0];
  v9 = v65[3];
  v61 = v65[2];
  v10 = v65[4];
  v63 = v65[5];
  v62 = v66;
  v52 = a1;
  v11 = [a1 badge];
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithRawValue_];
  }

  v12 = [v11 emoji];
  v57 = v10;
  v58 = v9;
  v56 = v11;
  v51 = v8;
  if (!v12)
  {
    v50 = v6;
    v16 = v11;
    v17 = [v16 emblem];
    if (v17)
    {
      v18 = v17;
      if (qword_27CE56B40 != -1)
      {
        swift_once();
      }

      sub_21DBF8E0C();
      v20 = sub_21D22D5B4(v19);

      if (v20)
      {
        goto LABEL_11;
      }
    }

    v18 = *MEMORY[0x277D44960];
LABEL_11:
    v60 = v18;

    v21 = v18;
    v22 = REMListBadgeEmblem.name.getter(v21);
    v53 = v23;
    v54 = v22;

    v59 = 0;
    v10 = v57;
    v9 = v58;
    v6 = v50;
    goto LABEL_12;
  }

  v13 = sub_21DBFA16C();
  v15 = v14;

  sub_21DBF8E0C();
  v53 = v15;
  v54 = v13;
  v59 = v15;
  v60 = v13;
LABEL_12:
  v24 = v12 != 0;
  v25 = v62;
  LOBYTE(v65[0]) = v62;
  v64 = v12 != 0;
  LODWORD(v50) = v12 != 0;
  v26 = sub_21DBF563C();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = *(type metadata accessor for TTRTemplatesListViewModel.Template(0) + 28);
  v28 = v55;
  v29 = v51;
  v30 = v6;
  v31 = v61;
  sub_21D0FB960(v55, v51, v61, v9, v10, v63, v25);
  sub_21D0FB9BC(v60, v59, v24);
  v32 = v52;
  TTRTemplatePublicLinkData.init(template:now:)(v32, v30, a2 + v27);
  v52 = [v32 objectID];
  v33 = v28;
  v34 = [v32 name];
  v35 = sub_21DBFA16C();
  v36 = v58;
  v49 = v35;
  v48 = v37;

  v38 = v31;
  v39 = v63;
  LOBYTE(v30) = v62;
  sub_21D1078C0(v33, v29, v38, v36, v10, v63, v62);

  v41 = v59;
  v40 = v60;
  LOBYTE(v32) = v50;
  sub_21D0FB9F4(v60, v59, v50);

  v42 = v49;
  *a2 = v52;
  *(a2 + 8) = v42;
  v43 = v53;
  v44 = v54;
  *(a2 + 16) = v48;
  *(a2 + 24) = v44;
  *(a2 + 32) = v43;
  *(a2 + 40) = v33;
  v45 = v61;
  *(a2 + 48) = v29;
  *(a2 + 56) = v45;
  v46 = v57;
  *(a2 + 64) = v36;
  *(a2 + 72) = v46;
  *(a2 + 80) = v39;
  *(a2 + 88) = v30;
  *(a2 + 89) = v65[0];
  *(a2 + 92) = *(v65 + 3);
  *(a2 + 96) = v40;
  *(a2 + 104) = v41;
  *(a2 + 112) = v32;
  *(a2 + 113) = 0;
}

uint64_t TTRTemplatesListStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRTemplatesListViewModel.SectionIdentifier.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

uint64_t TTRTemplatesListViewModel.Template.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRTemplatesListViewModel.Template.badge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 72);
  v10 = *(v1 + 56);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 88);
  v4 = v12[0];
  *(v12 + 10) = *(v1 + 98);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 74) = *(v12 + 10);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_21D24BF60(v9, &v8);
}

uint64_t TTRTemplatesListViewModel.Template.init(objectID:name:badge:publicLinkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4[3];
  *(a6 + 56) = a4[2];
  *(a6 + 72) = v8;
  *(a6 + 88) = a4[4];
  *(a6 + 98) = *(a4 + 74);
  v9 = a4[1];
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v9;
  v10 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  return sub_21DADECA0(a5, a6 + *(v10 + 28), type metadata accessor for TTRTemplatePublicLinkData);
}

uint64_t TTRTemplatesListViewModel.Template.hashValue.getter()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21DADC494()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21DADC4D8(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

double TTRTemplatesListViewModel.OptimisticApply.deletedTemplateIDs.getter()
{
  type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0);

  sub_21DBF8E0C();
  return result;
}

void TTRTemplatesListViewModel.OptimisticApply.deletedTemplateIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0) + 20);

  *(v1 + v3) = a1;
}

BOOL TTRTemplatesListViewModel.OptimisticApply.isEmpty.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_21D6DD788(v1, &v11 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE60478, &unk_21DC23A20);
  }

  else
  {
    v7 = sub_21DBF5EBC();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(v1 + *(type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0) + 20));
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9 == 0;
}

uint64_t TTRTemplatesListViewModel.OptimisticApply.init(templateOrdering:deletedTemplateIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_21D6DD7F8(a1, a3);
  result = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL TTRTemplatesListViewModel.isEmpty.getter()
{
  if (*v0 >> 62)
  {
    v1 = sub_21DBFBD7C();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter()
{
  v1 = *(v0 + 8);
  if (*v0 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v2 == 0) & (v1 ^ 1u);
}

void TTRTemplatesListViewModel.init(isPlaceholder:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_21D179B70(MEMORY[0x277D84F90]);
  v6 = v5;
  if (v4 >> 62)
  {
    v8 = v5;
    if (sub_21DBFBD7C())
    {
      sub_21D1CE198(MEMORY[0x277D84F90]);
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }

    v6 = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *a2 = v4;
  *(a2 + 8) = a1 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
}

void TTRTemplatesListViewModel.init(templateViewModels:)(uint64_t isUniquelyReferenced_nonNull_native@<X0>, unint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  v36 = MEMORY[0x277D84F98];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_28:
    sub_21DBFBD7C();
  }

  v10 = sub_21DBFBF9C();
  v37 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66578, &qword_21DC3C4A8);
  sub_21DBF9EAC();
  v32 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v32)
  {
    v29 = a2;
    v30 = isUniquelyReferenced_nonNull_native;
    a2 = 0;
    v31 = isUniquelyReferenced_nonNull_native + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v11 = v36;
    while (1)
    {
      if (a2 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34 = *(v33 + 72);
      sub_21DADEC38(v31 + v34 * a2, v9, type metadata accessor for TTRTemplatesListViewModel.Template);
      v12 = *v9;
      MEMORY[0x223D42D80]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 = v37;
      v13 = v9;
      v14 = v9;
      v9 = v6;
      sub_21DADECA0(v14, v6, type metadata accessor for TTRTemplatesListViewModel.Template);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v11;
      v16 = sub_21D17E07C(v12);
      v17 = v11[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_26;
      }

      v20 = v15;
      if (v11[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = v34;
          v11 = v35;
          if (v15)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_21D226734();
          v23 = v34;
          v11 = v35;
          if (v20)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_21D21FAB8(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_21D17E07C(v12);
        if ((v20 & 1) != (v22 & 1))
        {
          v36 = v11;
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          sub_21DBFC70C();
          __break(1u);
          return;
        }

        v16 = v21;
        v23 = v34;
        v11 = v35;
        if (v20)
        {
LABEL_4:
          v6 = v9;
          sub_21DADED08(v9, v11[7] + v16 * v23);

          goto LABEL_5;
        }
      }

      v11[(v16 >> 6) + 8] |= 1 << v16;
      *(v11[6] + 8 * v16) = v12;
      v6 = v9;
      sub_21DADECA0(v9, v11[7] + v16 * v23, type metadata accessor for TTRTemplatesListViewModel.Template);
      v24 = v11[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_27;
      }

      v11[2] = v26;
LABEL_5:
      ++a2;
      isUniquelyReferenced_nonNull_native = v30;
      v9 = v13;
      if (v32 == a2)
      {

        a2 = v29;
        goto LABEL_22;
      }
    }
  }

  v11 = v36;
LABEL_22:
  if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v27;
}

void TTRTemplatesListViewModel.init(templates:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
LABEL_14:
    TTRTemplatesListViewModel.init(templateViewModels:)(v10, &v16);
    v14 = v17;
    v15 = v18;
    *a2 = v16;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    return;
  }

  v8 = sub_21DBFBD7C();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  sub_21D18F924(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      TTRTemplatesListViewModel.Template.init(template:)(v11, v7);
      v16 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21D18F924((v12 > 1), v13 + 1, 1);
        v10 = v16;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      sub_21DADECA0(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for TTRTemplatesListViewModel.Template);
    }

    while (v8 != v9);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t TTRTemplatesListViewModel.template(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_21D17E07C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
    v16 = *(v9 - 8);
    sub_21DADEC38(v8 + *(v16 + 72) * v7, a2, type metadata accessor for TTRTemplatesListViewModel.Template);
    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

double TTRTemplatesListViewModel.snapshot(previousViewModel:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 1);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21DADED6C();
  sub_21D183A0C();
  sub_21DBF8AFC();
  if (!(v6 >> 62))
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_21DBFBD7C())
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66588, &unk_21DC3C4B0);
    sub_21DBF8A6C();
    LOBYTE(v14) = 0;
    sub_21DBF8A2C();
  }

LABEL_4:
  if (v3)
  {
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v16 = v9;
    v10 = v3;
    v11 = v2 & 1;
    v12 = v4;
    sub_21DADD200(&v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66588, &unk_21DC3C4B0);
    sub_21DBF8ACC();
  }

  return result;
}

void sub_21DADD200(uint64_t a1)
{
  v3 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v193 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v6 - 8);
  v194 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63020, &unk_21DC2E290);
  MEMORY[0x28223BE20](v199);
  v9 = &v192 - v8;
  v198 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v222 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v201 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v220 = &v192 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v192 - v14;
  MEMORY[0x28223BE20](v16);
  v218 = &v192 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665C8, &qword_21DC3C6E0);
  MEMORY[0x28223BE20](v18 - 8);
  v227 = (&v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v223 = (&v192 - v21);
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = *(v22 + 64);
  v225 = v22 + 64;
  v25 = 1 << *(v22 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v24;
  v28 = *(a1 + 16);
  v29 = v3;
  v195 = MEMORY[0x277D84F90];
  v241 = MEMORY[0x277D84F90];
  v224 = (v25 + 63) >> 6;
  v221 = v23 & 0xC000000000000001;
  v30 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 < 0)
  {
    v30 = v23;
  }

  v216 = v28;
  v217 = v30;
  v228 = v23 + 56;
  v229 = v23;
  v197 = (v4 + 48);
  v219 = v22;
  sub_21DBF8E0C();
  v31 = 0;
  v203 = v9;
  v226 = v15;
  v196 = v29;
LABEL_7:
  v32 = v227;
  v34 = v224;
  v33 = v225;
  while (v27)
  {
    v35 = v15;
    v36 = v31;
LABEL_20:
    v39 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v218;
    v42 = *(*(v219 + 48) + 8 * v40);
    sub_21DADEC38(*(v219 + 56) + *(v222 + 72) * v40, v218, type metadata accessor for TTRTemplatesListViewModel.Template);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665D0, &qword_21DC3C6E8);
    v44 = *(v43 + 48);
    v45 = v227;
    *v227 = v42;
    v46 = v41;
    v32 = v45;
    sub_21DADECA0(v46, v45 + v44, type metadata accessor for TTRTemplatesListViewModel.Template);
    (*(*(v43 - 8) + 56))(v32, 0, 1, v43);
    v47 = v42;
LABEL_21:
    v48 = v223;
    sub_21DADFD94(v32, v223);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665D0, &qword_21DC3C6E8);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {

      return;
    }

    v50 = *v48;
    sub_21DADECA0(v48 + *(v49 + 48), v35, type metadata accessor for TTRTemplatesListViewModel.Template);
    if (v221)
    {
      v51 = v50;
      v52 = sub_21DBFBDCC();

      if (v52)
      {
        goto LABEL_8;
      }
    }

    else if (*(v229 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v53 = v229;
      v54 = sub_21DBFB62C();
      v55 = -1 << *(v53 + 32);
      v56 = v54 & ~v55;
      if ((*(v228 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        while (1)
        {
          v58 = *(*(v229 + 48) + 8 * v56);
          v59 = sub_21DBFB63C();

          if (v59)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v228 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

LABEL_8:
        v15 = v226;
        sub_21DADFE04(v226, type metadata accessor for TTRTemplatesListViewModel.Template);

        goto LABEL_9;
      }
    }

LABEL_30:
    v60 = v216;
    if (*(v216 + 16))
    {
      v61 = sub_21D17E07C(v50);
      if (v62)
      {
        v63 = *(v60 + 56) + *(v222 + 72) * v61;
        v64 = v201;
        sub_21DADEC38(v63, v201, type metadata accessor for TTRTemplatesListViewModel.Template);
        sub_21DADECA0(v64, v220, type metadata accessor for TTRTemplatesListViewModel.Template);
        v65 = sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v15 = v226;
        v66 = sub_21DBFB63C();
        v212 = v50;
        if ((v66 & 1) == 0 || (*(v220 + 8) != *(v15 + 1) || *(v220 + 16) != *(v15 + 2)) && (sub_21DBFC64C() & 1) == 0)
        {
          goto LABEL_96;
        }

        v67 = *(v220 + 72);
        v233 = *(v220 + 56);
        v234 = v67;
        *v235 = *(v220 + 88);
        *&v235[10] = *(v220 + 98);
        v68 = *(v220 + 40);
        v231 = *(v220 + 24);
        v232 = v68;
        v69 = *(v15 + 72);
        v238 = *(v15 + 56);
        v239 = v69;
        *v240 = *(v15 + 88);
        *&v240[10] = *(v15 + 98);
        v70 = *(v15 + 40);
        v236 = *(v15 + 24);
        v237 = v70;
        if (*(&v231 + 1))
        {
          if (!*(&v236 + 1) || v231 != v236 && (sub_21DBFC64C() & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        else if (*(&v236 + 1))
        {
          goto LABEL_96;
        }

        v202 = v65;
        v73 = *(&v232 + 1);
        v213 = *(&v233 + 1);
        v74 = *(&v234 + 1);
        v210 = v234;
        v75 = v235[0];
        v76 = v237;
        v77 = *(&v238 + 1);
        v78 = v238;
        v79 = *(&v239 + 1);
        v80 = v239;
        v205 = *(&v232 + 1);
        v206 = v237;
        v208 = *(&v234 + 1);
        v214 = *(&v238 + 1);
        v209 = v238;
        v215 = v233;
        v211 = *(&v237 + 1);
        if (v235[0])
        {
          if ((v240[0] & 1) == 0)
          {
            goto LABEL_82;
          }

          v81 = v232;
          v82 = *(&v239 + 1);
          v204 = *(&v239 + 1);
          v207 = v239;
          sub_21D0FB960(v237, *(&v237 + 1), v238, *(&v238 + 1), v239, *(&v239 + 1), 1);
          v83 = v81;
          v84 = v81;
          v85 = v210;
          sub_21D0FB960(v83, v73, v215, v213, v210, v74, 1);
          sub_21D24BF60(&v231, v230);
          sub_21D24BF60(&v236, v230);
          sub_21D0FB960(v76, v211, v209, v214, v207, v82, 1);
          v86 = v73;
          v87 = v73;
          v88 = v215;
          v89 = v213;
          v90 = v208;
          sub_21D0FB960(v84, v87, v215, v213, v85, v208, 1);
          LODWORD(v202) = sub_21DBFB63C();
          sub_21D1078C0(v84, v86, v88, v89, v85, v90, 1);
          v92 = v206;
          v91 = v207;
          v93 = v211;
          v94 = v209;
          v95 = v214;
          v96 = v204;
          sub_21D1078C0(v206, v211, v209, v214, v207, v204, 1);
          sub_21D1078C0(v92, v93, v94, v95, v91, v96, 1);
          v97 = v84;
          v15 = v226;
          v98 = v205;
          v99 = v215;
          v100 = v213;
          v101 = v210;
          v102 = v208;
          v103 = 1;
          goto LABEL_57;
        }

        if (v240[0])
        {
LABEL_82:
          v157 = v232;
          v200 = v232;
          v204 = *(&v239 + 1);
          v207 = v239;
          sub_21D0FB960(v237, *(&v237 + 1), v238, *(&v238 + 1), v239, *(&v239 + 1), v235[0] ^ 1);
          v158 = v157;
          v159 = v215;
          v160 = v213;
          v161 = v210;
          v162 = v208;
          sub_21D0FB960(v158, v73, v215, v213, v210, v208, v75);
          sub_21D1078C0(v200, v73, v159, v160, v161, v162, v75);
          v163 = v75 ^ 1;
          v164 = v206;
          v165 = v207;
          v166 = v211;
          v167 = v209;
          v168 = v214;
          v169 = v204;
          goto LABEL_94;
        }

        v200 = v232;
        if (v232 != v237)
        {
          v104 = v239;
          v105 = *(&v232 + 1);
          v106 = *(&v239 + 1);
          v107 = sub_21DBFC64C();
          v80 = v104;
          v79 = v106;
          v77 = v214;
          if ((v107 & 1) == 0)
          {
            v173 = v105;
            v207 = v104;
            v204 = v79;
            sub_21D0FB960(v76, *(&v76 + 1), v78, v214, v104, v79, 0);
            v174 = v200;
            v175 = v105;
            v176 = v215;
            v177 = v213;
            v178 = v173;
            v179 = v210;
            v180 = v208;
            sub_21D0FB960(v200, v175, v215, v213, v210, v208, 0);
            v181 = v174;
            v182 = v178;
            v183 = v176;
            v184 = v177;
            v185 = v179;
            goto LABEL_93;
          }
        }

        v108 = v78;
        if (v215 != v78 || v213 != v77)
        {
          v109 = v80;
          v110 = v79;
          v111 = sub_21DBFC64C();
          v80 = v109;
          v79 = v110;
          if ((v111 & 1) == 0)
          {
            v207 = v109;
            v204 = *(&v76 + 1);
            sub_21D0FB960(v76, v211, v108, v214, v109, *(&v76 + 1), 0);
            v186 = v200;
            v187 = v205;
            v188 = v215;
            v189 = v213;
            v190 = v210;
            v180 = v208;
            sub_21D0FB960(v200, v205, v215, v213, v210, v208, 0);
            v181 = v186;
            v182 = v187;
            v183 = v188;
            v184 = v189;
            v185 = v190;
LABEL_93:
            sub_21D1078C0(v181, v182, v183, v184, v185, v180, 0);
            v164 = v206;
            v165 = v207;
            v166 = v211;
            v167 = v209;
            v168 = v214;
            v169 = v204;
            v163 = 0;
LABEL_94:
            sub_21D1078C0(v164, v166, v167, v168, v165, v169, v163);
LABEL_95:
            v50 = v212;
LABEL_96:
            v191 = v50;
            MEMORY[0x223D42D80]();
            if (*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v241 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();

            v195 = v241;
            sub_21DADFE04(v220, type metadata accessor for TTRTemplatesListViewModel.Template);
            sub_21DADFE04(v15, type metadata accessor for TTRTemplatesListViewModel.Template);
            goto LABEL_7;
          }
        }

        v112 = v208;
        if (v210 == v80 && v208 == v79)
        {
          sub_21D24BF60(&v231, v230);
          sub_21D24BF60(&v236, v230);
          v113 = v108;
          v114 = v210;
          sub_21D0FB960(v76, v211, v113, v214, v210, v112, 0);
          v115 = v200;
          v116 = v205;
          v117 = v215;
          v118 = v213;
          sub_21D0FB960(v200, v205, v215, v213, v114, v112, 0);
          sub_21D1078C0(v115, v116, v117, v118, v114, v112, 0);
          sub_21D1078C0(v206, v211, v209, v214, v114, v112, 0);
        }

        else
        {
          v119 = v210;
          v120 = v80;
          v207 = v80;
          v121 = v79;
          v204 = v79;
          LODWORD(v202) = sub_21DBFC64C();
          sub_21D24BF60(&v231, v230);
          sub_21D24BF60(&v236, v230);
          sub_21D0FB960(v76, v211, v108, v214, v120, v121, 0);
          v122 = v200;
          v123 = v205;
          v124 = v215;
          v125 = v213;
          sub_21D0FB960(v200, v205, v215, v213, v119, v112, 0);
          sub_21D1078C0(v122, v123, v124, v125, v119, v112, 0);
          v97 = v206;
          v101 = v207;
          v98 = v211;
          v99 = v209;
          v100 = v214;
          v102 = v204;
          v103 = 0;
LABEL_57:
          sub_21D1078C0(v97, v98, v99, v100, v101, v102, v103);
          if ((v202 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        v126 = *&v235[8];
        v127 = v235[24];
        v129 = *&v240[8];
        v128 = *&v240[16];
        if (v235[24])
        {
          if ((v240[24] & 1) == 0)
          {
            sub_21D0FB9BC(*&v235[8], *&v235[16], 1);
            sub_21D0FB9BC(v129, v128, 0);
            sub_21D0FB9F4(v126, *(&v126 + 1), 1);
            v170 = v129;
            v171 = v128;
            v172 = 0;
            goto LABEL_85;
          }

          if (*&v235[8] == *&v240[8])
          {
            sub_21D0FB9BC(*&v235[8], *&v235[16], 1);
            sub_21D0FB9BC(v126, *(&v126 + 1), 1);
            v131 = *(&v126 + 1);
            v130 = v126;
            v132 = 1;
            goto LABEL_66;
          }

          v139 = sub_21DBFC64C();
          sub_21D0FB9BC(v126, *(&v126 + 1), 1);
          sub_21D0FB9BC(v129, v128, 1);
          sub_21D0FB9F4(v126, *(&v126 + 1), 1);
          sub_21D0FB9F4(v129, v128, 1);
          v138 = v203;
          if ((v139 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v240[24])
          {
            sub_21D0FB9BC(*&v235[8], *&v235[16], 0);
            sub_21D0FB9BC(v129, v128, 1);
            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            v170 = v129;
            v171 = v128;
            v172 = 1;
LABEL_85:
            sub_21D0FB9F4(v170, v171, v172);
LABEL_86:
            sub_21D24C27C(&v236);
            sub_21D24C27C(&v231);
            goto LABEL_95;
          }

          v215 = *&v240[16];
          v133 = sub_21DBFA16C();
          v135 = v134;
          if (v133 == sub_21DBFA16C() && v135 == v136)
          {
            v137 = v215;
            v214 = v136;
            sub_21D0FB9BC(v129, v215, 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v129, v137, 0);

            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            sub_21D0FB9F4(v129, v137, 0);
            v130 = v129;
            v131 = v137;
            v132 = 0;
LABEL_66:
            sub_21D0FB9F4(v130, v131, v132);
            sub_21D0FB9F4(v126, *(&v126 + 1), v127);
            v138 = v203;
          }

          else
          {
            LODWORD(v214) = sub_21DBFC64C();
            v140 = v215;
            sub_21D0FB9BC(v129, v215, 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v129, v140, 0);

            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            sub_21D0FB9F4(v129, v140, 0);
            sub_21D0FB9F4(v129, v140, 0);
            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            v138 = v203;
            if ((v214 & 1) == 0)
            {
              goto LABEL_86;
            }
          }
        }

        v141 = v235[25];
        v142 = v240[25];
        sub_21D24C27C(&v236);
        sub_21D24C27C(&v231);
        if (v141 != v142)
        {
          goto LABEL_95;
        }

        v143 = *(v198 + 28);
        v144 = v220 + v143;
        v145 = &v15[v143];
        v146 = *(v199 + 48);
        sub_21DADEC38(v220 + v143, v138, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
        v215 = v145;
        sub_21DADEC38(v145, v138 + v146, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
        v147 = v196;
        v148 = *v197;
        if ((*v197)(v138, 1, v196) == 1)
        {
          v149 = v148(v138 + v146, 1, v147);
          v15 = v226;
          if (v149 != 1)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v214 = v144;
          v150 = v194;
          sub_21DADEC38(v138, v194, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
          if (v148(v138 + v146, 1, v147) == 1)
          {
            sub_21DADFE04(v150, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
            v15 = v226;
LABEL_88:
            sub_21D0CF7E0(v138, &qword_27CE63020, &unk_21DC2E290);
            goto LABEL_95;
          }

          v151 = v193;
          sub_21DADECA0(v138 + v146, v193, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
          if ((sub_21DBF55EC() & 1) == 0)
          {
            sub_21DADFE04(v151, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
            v15 = v226;
LABEL_90:
            sub_21DADFE04(v150, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
            sub_21DADFE04(v138, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
            goto LABEL_95;
          }

          v152 = *(v147 + 20);
          v153 = *(v150 + v152);
          v154 = *(v151 + v152);
          sub_21DADFE04(v151, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
          v155 = v153 == v154;
          v138 = v203;
          v15 = v226;
          if (!v155)
          {
            goto LABEL_90;
          }

          sub_21DADFE04(v150, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
          v144 = v214;
        }

        sub_21DADFE04(v138, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
        v156 = type metadata accessor for TTRTemplatePublicLinkData(0);
        if (*(v144 + *(v156 + 20)) != *&v215[*(v156 + 20)])
        {
          goto LABEL_95;
        }

        sub_21DADFE04(v220, type metadata accessor for TTRTemplatesListViewModel.Template);
        v71 = v15;
        goto LABEL_81;
      }
    }

    v15 = v226;
    v71 = v226;
LABEL_81:
    sub_21DADFE04(v71, type metadata accessor for TTRTemplatesListViewModel.Template);
LABEL_9:
    v32 = v227;
    v34 = v224;
    v33 = v225;
  }

  if (v34 <= v31 + 1)
  {
    v37 = v31 + 1;
  }

  else
  {
    v37 = v34;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      v35 = v15;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665D0, &qword_21DC3C6E8);
      (*(*(v72 - 8) + 56))(v32, 1, 1, v72);
      v27 = 0;
      v31 = v38;
      goto LABEL_21;
    }

    v27 = *(v33 + 8 * v36);
    ++v31;
    if (v27)
    {
      v35 = v15;
      v31 = v36;
      goto LABEL_20;
    }
  }

  __break(1u);
}

double TTRTemplatesListViewModel.applying(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478, &unk_21DC23A20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480, &qword_21DC3C4A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10];
  v12 = *v2;
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v13 = *(a1 + *(type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0) + 20));
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v14 = sub_21DBFBD7C();
    if (!v14)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = *(v13 + 16);
  v14 = sub_21DBF8E0C();
  if (v17)
  {
LABEL_3:
    MEMORY[0x28223BE20](v14);
    *&v18[-16] = a1;
    v12 = sub_21D9B2688(sub_21DADEDC0, &v18[-32], v12);
  }

LABEL_4:
  sub_21D6DD788(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE60478, &unk_21DC23A20);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21D6DDD90();
    sub_21D183A0C();
    v15 = sub_21DBFA45C();

    (*(v9 + 8))(v11, v8);
    v12 = v15;
  }

  *a2 = v12;
  *(a2 + 16) = v20;
  *(a2 + 24) = v13;
  *(a2 + 8) = v19;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return result;
}

unint64_t sub_21DADE8C0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_21DBFBD7C();
    }

    result = sub_21DBFBF9C();
    *v2 = result;
  }

  return result;
}

uint64_t sub_21DADE97C(uint64_t a1, char a2)
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

  sub_21DBFBD7C();
LABEL_9:
  result = sub_21DBFBF9C();
  *v2 = result;
  return result;
}

BOOL _s15RemindersUICore25TTRTemplatesListViewModelV8TemplateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  result = 0;
  if (sub_21DBFB63C())
  {
    v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    if (v4 || (sub_21DBFC64C() & 1) != 0)
    {
      v5 = *(a1 + 72);
      v32[2] = *(a1 + 56);
      v32[3] = v5;
      v33[0] = *(a1 + 88);
      *(v33 + 10) = *(a1 + 98);
      v6 = *(a1 + 40);
      v32[0] = *(a1 + 24);
      v32[1] = v6;
      v7 = *(a1 + 72);
      v29 = *(a1 + 56);
      v30 = v7;
      v31[0] = *(a1 + 88);
      *(v31 + 10) = *(a1 + 98);
      v8 = *(a1 + 40);
      v27 = *(a1 + 24);
      v28 = v8;
      v9 = *(a2 + 40);
      v34[0] = *(a2 + 24);
      v34[1] = v9;
      v10 = *(a2 + 56);
      v11 = *(a2 + 72);
      v12 = *(a2 + 88);
      *(v35 + 10) = *(a2 + 98);
      v34[3] = v11;
      v35[0] = v12;
      v34[2] = v10;
      v13 = *(a2 + 72);
      v24 = *(a2 + 56);
      v25 = v13;
      v26[0] = *(a2 + 88);
      *(v26 + 10) = *(a2 + 98);
      v14 = *(a2 + 40);
      v22 = *(a2 + 24);
      v23 = v14;
      sub_21D24BF60(v32, v21);
      sub_21D24BF60(v34, v21);
      v15 = _s15RemindersUICore27TTRListDetailBadgeViewModelV2eeoiySbAC_ACtFZ_0(&v27, &v22);
      v36[2] = v24;
      v36[3] = v25;
      v37[0] = v26[0];
      *(v37 + 10) = *(v26 + 10);
      v36[0] = v22;
      v36[1] = v23;
      sub_21D24C27C(v36);
      v38[2] = v29;
      v38[3] = v30;
      v39[0] = v31[0];
      *(v39 + 10) = *(v31 + 10);
      v38[0] = v27;
      v38[1] = v28;
      sub_21D24C27C(v38);
      if (v15)
      {
        v16 = *(type metadata accessor for TTRTemplatesListViewModel.Template(0) + 28);
        v17 = a1 + v16;
        v18 = a2 + v16;
        if (_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(a1 + v16, v18))
        {
          v19 = type metadata accessor for TTRTemplatePublicLinkData(0);
          if (*(v17 + *(v19 + 20)) == *(v18 + *(v19 + 20)))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21DADEC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DADECA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DADED08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DADED6C()
{
  result = qword_27CE66580;
  if (!qword_27CE66580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatesListViewModel.SectionIdentifier, &type metadata for TTRTemplatesListViewModel.SectionIdentifier, v0, v1);
    atomic_store(result, &qword_27CE66580);
  }

  return result;
}

BOOL sub_21DADEDC0(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0);
  return (sub_21D1E21BC(v3, *(v2 + *(v4 + 20))) & 1) == 0;
}

unint64_t sub_21DADEE18()
{
  result = qword_27CE66590;
  if (!qword_27CE66590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatesListStyle, &type metadata for TTRTemplatesListStyle, v0, v1);
    atomic_store(result, &qword_27CE66590);
  }

  return result;
}

unint64_t sub_21DADEE70()
{
  result = qword_27CE66598;
  if (!qword_27CE66598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatesListViewModel.SectionIdentifier, &type metadata for TTRTemplatesListViewModel.SectionIdentifier, v0, v1);
    atomic_store(result, &qword_27CE66598);
  }

  return result;
}

unint64_t sub_21DADEEC8()
{
  result = qword_27CE665A0;
  if (!qword_27CE665A0)
  {
    v3 = type metadata accessor for TTRTemplatesListViewModel.Template(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatesListViewModel.Template, v3, v0, v1);
    atomic_store(result, &qword_27CE665A0);
  }

  return result;
}

double destroy for TTRTemplatesListViewModel()
{

  return result;
}

uint64_t initializeWithCopy for TTRTemplatesListViewModel(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRTemplatesListViewModel(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];
  sub_21DBF8E0C();

  *(a1 + 24) = a2[3];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRTemplatesListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRTemplatesListViewModel.Template(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
  }

  else
  {
    v6 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v6;
    v7 = a2[4];
    *(a1 + 3) = a2[3];
    *(a1 + 4) = v7;
    v8 = a2[6];
    v27 = a2[5];
    v9 = a2[7];
    v10 = a2[8];
    v11 = a2[9];
    v12 = a2[10];
    v13 = *(a2 + 88);
    v15 = v5;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D0FB960(v27, v8, v9, v10, v11, v12, v13);
    *(a1 + 5) = v27;
    *(a1 + 6) = v8;
    *(a1 + 7) = v9;
    *(a1 + 8) = v10;
    *(a1 + 9) = v11;
    *(a1 + 10) = v12;
    a1[88] = v13;
    v16 = a2[12];
    v17 = a2[13];
    LOBYTE(v7) = *(a2 + 112);
    sub_21D0FB9BC(v16, v17, v7);
    *(a1 + 12) = v16;
    *(a1 + 13) = v17;
    a1[112] = v7;
    a1[113] = *(a2 + 113);
    v18 = *(a3 + 28);
    v19 = &a1[v18];
    v20 = a2 + v18;
    v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1, v21))
    {
      v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v19, v20, *(*(v23 - 8) + 64));
    }

    else
    {
      v24 = sub_21DBF563C();
      (*(*(v24 - 8) + 16))(v19, v20, v24);
      v19[*(v21 + 20)] = v20[*(v21 + 20)];
      (*(v22 + 56))(v19, 0, 1, v21);
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *&v19[*(v25 + 20)] = *&v20[*(v25 + 20)];
  }

  return a1;
}

uint64_t destroy for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2)
{

  sub_21D1078C0(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  sub_21D0FB9F4(*(a1 + 96), *(a1 + 104), *(a1 + 112));
  v4 = *(a2 + 28);
  v5 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = sub_21DBF563C();
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v4, v7);
  }

  return result;
}

uint64_t initializeWithCopy for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  v27 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v27, v8, v9, v10, v11, v12, v13);
  *(a1 + 40) = v27;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  sub_21D0FB9BC(v15, v16, v17);
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 113) = *(a2 + 113);
  v18 = *(a3 + 28);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21))
  {
    v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v19, v20, *(*(v23 - 8) + 64));
  }

  else
  {
    v24 = sub_21DBF563C();
    (*(*(v24 - 8) + 16))(v19, v20, v24);
    v19[*(v21 + 20)] = v20[*(v21 + 20)];
    (*(v22 + 56))(v19, 0, 1, v21);
  }

  v25 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v19[*(v25 + 20)] = *&v20[*(v25 + 20)];
  return a1;
}

uint64_t assignWithCopy for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  sub_21D0FB960(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  sub_21D1078C0(v16, v17, v18, v19, v20, v21, v22);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  LOBYTE(v11) = *(a2 + 112);
  sub_21D0FB9BC(v23, v24, v11);
  v25 = *(a1 + 96);
  v26 = *(a1 + 104);
  v27 = *(a1 + 112);
  *(a1 + 96) = v23;
  *(a1 + 104) = v24;
  *(a1 + 112) = v11;
  sub_21D0FB9F4(v25, v26, v27);
  *(a1 + 113) = *(a2 + 113);
  v28 = *(a3 + 28);
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  LODWORD(v24) = v33(v29, 1, v31);
  v34 = v33(v30, 1, v31);
  if (!v24)
  {
    if (!v34)
    {
      v39 = sub_21DBF563C();
      (*(*(v39 - 8) + 24))(v29, v30, v39);
      v29[*(v31 + 20)] = v30[*(v31 + 20)];
      goto LABEL_7;
    }

    sub_21DADFE04(v29, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v34)
  {
LABEL_6:
    v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v29, v30, *(*(v36 - 8) + 64));
    goto LABEL_7;
  }

  v35 = sub_21DBF563C();
  (*(*(v35 - 8) + 16))(v29, v30, v35);
  v29[*(v31 + 20)] = v30[*(v31 + 20)];
  (*(v32 + 56))(v29, 0, 1, v31);
LABEL_7:
  v37 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v29[*(v37 + 20)] = *&v30[*(v37 + 20)];
  return a1;
}

uint64_t initializeWithTake for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a3 + 28);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  *(a1 + 40) = *(a2 + 40);
  v7 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    v9 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 32))(v5, v6, v10);
    v5[*(v7 + 20)] = v6[*(v7 + 20)];
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  v11 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v5[*(v11 + 20)] = *&v6[*(v11 + 20)];
  return a1;
}

uint64_t assignWithTake for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v7;

  v8 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;

  v9 = *(a2 + 88);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v9;
  sub_21D1078C0(v10, v11, v12, v13, v14, v15, v16);
  v17 = *(a2 + 112);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v17;
  sub_21D0FB9F4(v18, v19, v20);
  *(a1 + 113) = *(a2 + 113);
  v21 = *(a3 + 28);
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(v22, 1, v24);
  v28 = v26(v23, 1, v24);
  if (!v27)
  {
    if (!v28)
    {
      v33 = sub_21DBF563C();
      (*(*(v33 - 8) + 40))(v22, v23, v33);
      v22[*(v24 + 20)] = v23[*(v24 + 20)];
      goto LABEL_7;
    }

    sub_21DADFE04(v22, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v28)
  {
LABEL_6:
    v30 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v22, v23, *(*(v30 - 8) + 64));
    goto LABEL_7;
  }

  v29 = sub_21DBF563C();
  (*(*(v29 - 8) + 32))(v22, v23, v29);
  v22[*(v24 + 20)] = v23[*(v24 + 20)];
  (*(v25 + 56))(v22, 0, 1, v24);
LABEL_7:
  v31 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v22[*(v31 + 20)] = *&v23[*(v31 + 20)];
  return a1;
}

uint64_t sub_21DADFCBC(uint64_t a1)
{
  result = type metadata accessor for TTRTemplatePublicLinkData(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DADFD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665C8, &qword_21DC3C6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DADFE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall TTRModuleState.viewWillDisappear()()
{
  if (*(v0 + 51) == 1)
  {
    if ((*(v0 + 49) & 1) == 0)
    {
      if (qword_280D17ED8 != -1)
      {
        swift_once();
      }

      v1 = sub_21DBF84BC();
      __swift_project_value_buffer(v1, qword_280D0F240);

      v2 = sub_21DBF84AC();
      v3 = sub_21DBFAE9C();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v20 = v5;
        *v4 = 136315138;
        v6 = TTRModuleState.description.getter();
        v8 = sub_21D0CDFB4(v6, v7, &v20);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_21D0C9000, v2, v3, "%s reject", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x223D46520](v5, -1, -1);
        MEMORY[0x223D46520](v4, -1, -1);
      }

      v9 = sub_21DBF5F5C();
      sub_21D122DFC(&qword_280D0C850, MEMORY[0x277D44D58], MEMORY[0x277D44D60]);
      v10 = swift_allocError();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D44D50], v9);

      sub_21DBF5FAC();
    }

    *(v0 + 51) = 0;
    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F240);

    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      v17 = TTRModuleState.description.getter();
      v19 = sub_21D0CDFB4(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, v13, v14, "%s unresolve", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0, &qword_21DC17690);
    swift_allocObject();
    *(v0 + 56) = sub_21DBF5FDC();
  }
}

uint64_t TTRModuleState.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_21D0D852C(a1, a2);

  return v4;
}

uint64_t TTRModuleState.readyPromise.getter()
{

  v0 = sub_21DBF5FBC();

  if (v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t TTRModuleState.name.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRModuleState.readyAndModelIsUpToDatePromise.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC0AA00;

  v1 = sub_21DBF5FBC();

  if (v1)
  {
    *(v0 + 32) = v1;

    v3 = sub_21DBF5FBC();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608E8, &qword_21DC25DF0);
      *(v0 + 40) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608F0, &qword_21DC25DF8);
      sub_21D0D0F1C(&qword_27CE608F8, &qword_27CE608F0, &qword_21DC25DF8, MEMORY[0x277D83988]);
      sub_21DBF819C();

      v4 = sub_21DBF816C();
      v5 = sub_21DBF820C();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TTRModuleState.viewAppearedPromise.getter()
{

  v0 = sub_21DBF5FBC();

  if (v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRModuleState.modelWillRefresh()()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[51];
  v0[50] = 0;
  if (v4)
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v1;
  v9 = v6 | v5;
  sub_21D0EF69C(v7 | v1 | v6 | v5);

  sub_21DAE0620(v8 | v9);
}

uint64_t sub_21DAE0620(uint64_t result)
{
  if ((result & 0x1000000) != 0)
  {
    if (*(v1 + 51))
    {
      return result;
    }

    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F240);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = TTRModuleState.description.getter();
      v17 = sub_21D0CDFB4(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "%s view disappeared", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0, &qword_21DC17690);
    swift_allocObject();
    *(v1 + 80) = sub_21DBF5FDC();
  }

  else
  {
    if (!*(v1 + 51))
    {
      return result;
    }

    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F240);

    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAE9C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      v7 = TTRModuleState.description.getter();
      v9 = sub_21D0CDFB4(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, v3, v4, "%s view appeared", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    sub_21DBF5FCC();
  }
}

uint64_t TTRModuleState.deinit()
{

  return v0;
}

uint64_t TTRModuleState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21DAE09E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  v4 = *(a1 + 50);
  v5 = *(a1 + 51);
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  if (v3 == 1 && (v5 & 1) != 0)
  {
    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F240);

    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();

    if (os_log_type_enabled(v7, v8))
    {
      v21 = v2;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = TTRModuleState.description.getter();
      v13 = sub_21D0CDFB4(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "%s unresolve", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      v14 = v9;
      v2 = v21;
      MEMORY[0x223D46520](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0, &qword_21DC17690);
    swift_allocObject();
    *(a1 + 56) = sub_21DBF5FDC();
  }

  if (v5)
  {
    v15 = 0x1000000;
  }

  else
  {
    v15 = 0;
  }

  if (v4)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v3)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v2;
  v19 = v16 | v15;
  sub_21D0EF69C(v17 | v2 | v16 | v15);
  return sub_21DAE0620(v18 | v19);
}

uint64_t getEnumTagSinglePayload for TTRModuleState.ModuleStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRModuleState.ModuleStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t TTRReminderSuggestedAttribute.init(attributeType:source:valueText:rangeToDelete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_21DAE99CC(a1, a7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  v13 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v14 = v13[5];
  v15 = sub_21DBF79FC();
  result = (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  *(a7 + v13[6]) = a3;
  v17 = a7 + v13[7];
  *v17 = a4;
  *(v17 + 8) = a5;
  *(v17 + 16) = a6 & 1;
  return result;
}

uint64_t TTRReminderSuggestedAttribute.attributeTypeDescription.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
        sub_21DAE57A0(&v3[*(v6 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
        v7 = sub_21DBF509C();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0x6E65727275636572;
      }

      else
      {
        sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        return 0x65746164657564;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x6E6F697461636F6CLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x656C6369686576;
    }

    else
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 1953720684;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 6775156;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x746361746E6F63;
    }

    else
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x7265646E696D6572;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0x65656E6769737361;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 1734437990;
  }

  else
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0x797469726F697270;
  }
}

uint64_t TTRReminderSuggestedAttribute.AugmentedAttributeType.remSuggestedAttributeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v2, v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v12 = *MEMORY[0x277D45648];
        v13 = sub_21DBF799C();
        v14 = *(v13 - 8);
        (*(v14 + 104))(a1, v12, v13);
        (*(v14 + 56))(a1, 0, 1, v13);
        return sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
      sub_21DAE57A0(&v6[*(v16 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
      v17 = sub_21DBF509C();
      (*(*(v17 - 8) + 8))(v6, v17);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45650];
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_13;
      }

      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45670];
    }

LABEL_21:
    v19 = *v11;
    v9 = sub_21DBF799C();
    v10 = *(v9 - 8);
    (*(v10 + 104))(a1, v19, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45668];
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_13;
      }

      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45678];
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5)
  {
LABEL_13:
    sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
LABEL_19:
    v18 = sub_21DBF799C();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  if (EnumCaseMultiPayload != 6)
  {
    sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v11 = MEMORY[0x277D45698];
    goto LABEL_21;
  }

  v8 = *MEMORY[0x277D45680];
  v9 = sub_21DBF799C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(a1, v8, v9);
  return (*(v10 + 56))(a1, 0, 1, v9);
}

uint64_t TTRReminderSuggestedAttribute.UserLocation.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderSuggestedAttribute.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) + 20);
  v4 = sub_21DBF79FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TTRReminderSuggestedAttribute.valueText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderSuggestedAttribute(0) + 24));

  return v1;
}

uint64_t TTRReminderSuggestedAttribute.AttributeType.description.getter()
{
  v1 = sub_21DBF509C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v0, v7, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v13 = *v7;
        v33 = 677863796;
        v34 = 0xE400000000000000;
        v14 = [v13 description];
      }

      else
      {
        if (EnumCaseMultiPayload == 9)
        {
          v15 = *v7;
          v33 = 0x28746361746E6F63;
          v34 = 0xE800000000000000;
          v16 = [v15 description];
          v17 = sub_21DBFA16C();
          v19 = v18;

          MEMORY[0x223D42AA0](v17, v19);

          return v33;
        }

        v13 = *v7;
        v33 = 0x7265646E696D6572;
        v34 = 0xE900000000000028;
        v14 = [v13 description];
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v9 = *v7;
          v33 = 0x2867616C66;
          v34 = 0xE500000000000000;
          if (v9)
          {
            v10 = 1702195828;
          }

          else
          {
            v10 = 0x65736C6166;
          }

          if (v9)
          {
            v11 = 0xE400000000000000;
          }

          else
          {
            v11 = 0xE500000000000000;
          }

          v12 = v11;
        }

        else
        {
          v27 = *v7;
          v33 = 0x797469726F697270;
          v34 = 0xE900000000000028;
          v32[1] = v27;
          v10 = sub_21DBFC5BC();
        }

        MEMORY[0x223D42AA0](v10, v12);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        return v33;
      }

      v13 = *v7;
      v33 = 0x65656E6769737361;
      v34 = 0xE900000000000028;
      v14 = [v13 description];
    }

LABEL_31:
    v28 = v14;
    v29 = sub_21DBFA16C();
    v31 = v30;

    MEMORY[0x223D42AA0](v29, v31);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);

    return v33;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v7;
      v33 = 0x6E6F697461636F6CLL;
      v34 = 0xE900000000000028;
      v14 = [v13 description];
    }

    else
    {
      v13 = *v7;
      if (EnumCaseMultiPayload == 3)
      {
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_21DBFBEEC();

        v33 = 0x54656C6369686576;
        v34 = 0xEF28726567676972;
      }

      else
      {
        v33 = 0x287473696CLL;
        v34 = 0xE500000000000000;
      }

      v14 = [v13 description];
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
    (*(v2 + 32))(v4, v7, v1);
    v24 = sub_21DAE1C80(v4);
    v26 = v25;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_21DBFBEEC();

    v33 = 0x6E65727275636572;
    v34 = 0xEF28746E65764574;
    MEMORY[0x223D42AA0](v24, v26);

    MEMORY[0x223D42AA0](0x3E656C75723C202CLL, 0xE900000000000029);
    v21 = v33;
    (*(v2 + 8))(v4, v1);
    sub_21DAE57A0(&v7[v23], type metadata accessor for TTRRecurrenceRuleModel);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v20 = sub_21DAE1C80(v4);
    v33 = 0x7461446465786966;
    v34 = 0xEA00000000002865;
    MEMORY[0x223D42AA0](v20);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v21 = v33;
    (*(v2 + 8))(v4, v1);
  }

  return v21;
}

uint64_t sub_21DAE1C80(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_21DBF5A2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE58D68, &unk_21DC0C060);
    return 4144959;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v16 setDateStyle_];
    v17 = sub_21DBF4EDC();
    v18 = [v17 rem_isAllDayDateComponents];

    [v16 setTimeStyle_];
    sub_21DBF507C();
    v19 = sub_21DBF5C4C();
    v20 = *(v19 - 8);
    v21 = 0;
    if ((*(v20 + 48))(v3, 1, v19) != 1)
    {
      v21 = sub_21DBF5C0C();
      (*(v20 + 8))(v3, v19);
    }

    [v16 setTimeZone_];

    v22 = sub_21DBF55BC();
    v23 = [v16 stringFromDate_];

    v24 = sub_21DBFA16C();
    (*(v12 + 8))(v14, v11);
    return v24;
  }
}

uint64_t sub_21DAE205C@<X0>(id *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v2, v13, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
        v17 = *(v16 + 48);
        v18 = *(v8 + 32);
        v18(v10, v13, v7);
        sub_21DAE99CC(v13 + v17, v6, type metadata accessor for TTRRecurrenceRuleModel);
        v19 = *(v16 + 48);
        v18(a1, v10, v7);
        sub_21DAE99CC(v6, a1 + v19, type metadata accessor for TTRRecurrenceRuleModel);
      }

      else
      {
        (*(v8 + 32))(a1, v13, v7);
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v15 = *v13;

        *a1 = v15;
        type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (EnumCaseMultiPayload == 6)
      {
        *a1 = *v13;
      }

      else
      {
        v20 = *v13;

        *a1 = v20;
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        *a1 = *v13;
      }

      else
      {
        v21 = *v13;

        *a1 = v21;
      }

LABEL_13:
      type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  *a1 = *v13;
  type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static TTRReminderSuggestedAttribute.identitiesEqual(_:_:)()
{
  v0 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = (&v8 - v4);
  sub_21DAE205C((&v8 - v4));
  sub_21DAE205C(v2);
  v6 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v5, v2);
  sub_21DAE57A0(v2, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  sub_21DAE57A0(v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  return v6 & 1;
}

uint64_t sub_21DAE2510()
{
  v0 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = (&v8 - v4);
  sub_21DAE205C((&v8 - v4));
  sub_21DAE205C(v2);
  v6 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v5, v2);
  sub_21DAE57A0(v2, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  sub_21DAE57A0(v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  return v6 & 1;
}

uint64_t TTRReminderSuggestedAttribute.headerText.getter()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  sub_21DAE5820(v1, v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else
      {
        v19 = *v7;
        v20 = v7[16];

        if (v20 == 1)
        {
          if (qword_280D1BAA8 == -1)
          {
            return sub_21DBF516C();
          }
        }

        else if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload == 6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_41;
    }

LABEL_30:
    sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
    (*(v9 + 32))(v14, v7, v8);
    sub_21DAE57A0(&v7[v16], type metadata accessor for TTRRecurrenceRuleModel);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  (*(v9 + 16))(v11, v14, v8);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  TTRReminderEditor.AllDayColloquialDateType.init(dueDateComponents:now:)(v11, v4, &v23);
  if (v23 - 2 >= 3)
  {
    (*(v9 + 8))(v14, v8);
    if (qword_280D1BAA8 != -1)
    {
LABEL_41:
      swift_once();
    }
  }

  else
  {
    v17 = sub_21DBF4EDC();
    v18 = [v17 rem_isAllDayDateComponents];

    (*(v9 + 8))(v14, v8);
    if (v18)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }
    }

    else if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  return sub_21DBF516C();
}

void TTRReminderSuggestedAttribute.iconImageInfo.getter(uint64_t a1@<X8>)
{
  sub_21DAE3344(&v16);
  v2 = *(&v16 + 1);
  v3 = v16;
  v4 = v17;
  if (v17 <= 2u)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        *a1 = v16;
      }

      else
      {
        if (!*(&v16 + 1))
        {
          v2 = [objc_opt_self() systemBlueColor];
        }

        *a1 = v3;
        *(a1 + 8) = v2;
        v4 = 2;
      }

      *(a1 + 16) = v4;
      return;
    }

    if (v16 == 2)
    {
      v8 = [objc_opt_self() systemRedColor];
    }

    else
    {
      v12 = objc_opt_self();
      if (v3)
      {
        v8 = [v12 systemBrownColor];
      }

      else
      {
        v8 = [v12 systemCyanColor];
      }
    }

LABEL_36:
    v14 = sub_21DBFA12C();

    v15 = [objc_opt_self() _systemImageNamed_];

    *a1 = v15;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    return;
  }

  if (v17 == 3)
  {
    v5 = 3;
    v6 = v16;
    v7 = 3;
  }

  else
  {
    if (v17 != 4)
    {
      if (v16 > 2)
      {
        v8 = 0;
        if (v16 ^ 3 | *(&v16 + 1) && !(v16 ^ 4 | *(&v16 + 1)))
        {
          v8 = [objc_opt_self() systemOrangeColor];
        }
      }

      else if (v16 == 0)
      {
        if (qword_280D16960 != -1)
        {
          swift_once();
        }

        v8 = qword_280D16968;
        v13 = qword_280D16968;
      }

      else if (v16 ^ 1 | *(&v16 + 1))
      {
        v8 = [objc_opt_self() systemBlueColor];
      }

      else
      {
        if (qword_280D16918 != -1)
        {
          swift_once();
        }

        v8 = qword_280D16920;
        v11 = qword_280D16920;
      }

      goto LABEL_36;
    }

    v5 = 4;
    v6 = v16;
    v7 = 4;
  }

  sub_21DAE5888(v6, *(&v16 + 1), v7);
  if (qword_280D16900 != -1)
  {
    swift_once();
  }

  v9 = qword_280D16908;
  *a1 = qword_280D16908;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;

  v10 = v9;
}

void sub_21DAE3344(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v2, v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
        (*(v8 + 32))(v10, v6, v7);
        sub_21DAE57A0(&v6[v15], type metadata accessor for TTRRecurrenceRuleModel);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
      }

      v16 = sub_21DBF4EDC();
      v17 = [v16 rem_isAllDayDateComponents];

      (*(v8 + 8))(v10, v7);
      v12 = 0;
      v14 = v17 ^ 1;
      v13 = 5;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v14 = v6[8];

      v12 = 0;
      v13 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v12 = 0;
      v13 = 5;
      v14 = 2;
    }

    else
    {
      v12 = 0;
      v14 = *v6;
      v13 = 1;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v12 = 0;
      v14 = *v6;
      v13 = 3;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v12 = 0;
      v14 = 5;
      v13 = 5;
    }

    else
    {
      v14 = *v6;

      v12 = 0;
      v13 = 4;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v12 = 0;
    v13 = 5;
    v14 = 3;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v12 = 0;
    v13 = 5;
    v14 = 4;
  }

  else
  {
    v14 = *v6;
    v12 = *(v6 + 1);
    v13 = 2;
  }

  *a1 = v14;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
}

void *TTRReminderSuggestedAttribute.contact.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v5 = *v3;
    v6 = v3[1];

    return v6;
  }

  else
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }
}

uint64_t TTRReminderSuggestedAttribute.secondaryValueText.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
      sub_21DAE57A0(v4 + *(v12 + 48), type metadata accessor for TTRRecurrenceRuleModel);
      v13 = sub_21DBF509C();
      (*(*(v13 - 8) + 8))(v4, v13);
      return 0;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v6 = EnumCaseMultiPayload;
      result = 0;
      if (v6 == 6)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
  {
LABEL_13:
    sub_21DAE57A0(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }

  v8 = *v4;

  v9 = [v8 notesAsString];
  if (v9)
  {
    v10 = v9;
    v11 = sub_21DBFA16C();

    return v11;
  }

  v14 = [v8 attachmentContext];
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v14 imageAttachments];

  sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
  v17 = sub_21DBFA5EC();

  if (v17 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      v18 = sub_21DBFBD7C();
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_24:

LABEL_25:

    return 0;
  }

LABEL_19:

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_21DC08D00;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = v18;
  v22 = sub_21DBFA13C();

  return v22;
}