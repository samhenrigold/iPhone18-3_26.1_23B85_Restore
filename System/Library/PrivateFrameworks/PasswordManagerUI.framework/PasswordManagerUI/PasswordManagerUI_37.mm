uint64_t sub_21CB33C48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_21CB80DD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  PMAccount.signInWithAppleAccount.getter(v8);
  v16 = type metadata accessor for PMSignInWithAppleAccount(0);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_21C6EA794(v8, &qword_27CDEB2A8, &qword_21CBA1670);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    sub_21C6EDBAC(&v8[*(v16 + 28)], v11, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C719900(v8, type metadata accessor for PMSignInWithAppleAccount);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v18 = (*(v13 + 32))(v15, v11, v12);
      MEMORY[0x28223BE20](v18);
      *(&v20 - 2) = v15;
      sub_21CB825D4();
      (*(v13 + 8))(v15, v12);
      (*(v3 + 32))(a1, v5, v2);
      v17 = 0;
      return (*(v3 + 56))(a1, v17, 1, v2);
    }
  }

  sub_21C6EA794(v11, &unk_27CDED250, &qword_21CBA64C0);
  v17 = 1;
  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t sub_21CB34030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9530, &unk_21CBCB8C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A0, &qword_21CBBE3B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v23[-v14];
  v16 = (a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 56));
  v17 = *v16;
  v18 = v16[1];

  v19 = sub_21CB34C04();
  v24 = a1;
  sub_21CA26210(v17, v18, v19, v20, sub_21CB39104, v15);
  sub_21CB31C2C(v9);
  sub_21C6EDBAC(v15, v12, &qword_27CDF55A0, &qword_21CBBE3B8);
  sub_21C6EDBAC(v9, v6, &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EDBAC(v12, a2, &qword_27CDF55A0, &qword_21CBBE3B8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9538, &unk_21CBCB8D0);
  sub_21C6EDBAC(v6, a2 + *(v21 + 48), &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EA794(v9, &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EA794(v15, &qword_27CDF55A0, &qword_21CBBE3B8);
  sub_21C6EA794(v6, &qword_27CDF9530, &unk_21CBCB8C0);
  return sub_21C6EA794(v12, &qword_27CDF55A0, &qword_21CBBE3B8);
}

uint64_t sub_21CB34278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9520, &unk_21CBCB830);
  MEMORY[0x28223BE20](v70);
  v72 = &v57 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94D0, &unk_21CBCB790);
  MEMORY[0x28223BE20](v71);
  v5 = &v57 - v4;
  v6 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v60 = v7;
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v57 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v57 - v16;
  v17 = type metadata accessor for PMSignInWithAppleAccount(0);
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v67 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v57 - v24;
  v26 = a1;
  PMAccount.signInWithAppleAccount.getter(&v57 - v24);
  v27 = *(v18 + 48);
  if (v27(v25, 1, v17) == 1)
  {
    sub_21C6EA794(v25, &qword_27CDEB2A8, &qword_21CBA1670);
  }

  else
  {
    v58 = v5;
    v28 = &v25[v17[9]];
    v29 = *v28;
    v30 = v28[1];

    sub_21C719900(v25, type metadata accessor for PMSignInWithAppleAccount);
    if (v30)
    {
      sub_21CB322CC(v29, v30, v73);

      v31 = v26 + *(v6 + 40);
      v32 = *v31;
      v33 = *(v31 + 8);
      v76 = v32;
      v77 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D54();
      if (v75)
      {
        v34 = v61;
        sub_21CB38794(v26, v61, type metadata accessor for PMSignInWithAppleAccountDetailsView);
        v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
        v36 = swift_allocObject();
        sub_21CB3910C(v34, v36 + v35, type metadata accessor for PMSignInWithAppleAccountDetailsView);
        v37 = v62;
        sub_21CB84DA4();
        v39 = v63;
        v38 = v64;
        v40 = v66;
        (*(v63 + 32))(v66, v37, v64);
        v41 = 0;
        v42 = v74;
      }

      else
      {
        v41 = 1;
        v42 = v74;
        v40 = v66;
        v39 = v63;
        v38 = v64;
      }

      (*(v39 + 56))(v40, v41, 1, v38);
      v50 = v73;
      v51 = v68;
      sub_21C6EDBAC(v73, v68, &qword_27CDF1B78, &qword_21CBBE2D0);
      v52 = v65;
      sub_21C6EDBAC(v40, v65, &qword_27CDEC2B8, &qword_21CBA3EB0);
      v53 = v58;
      sub_21C6EDBAC(v51, v58, &qword_27CDF1B78, &qword_21CBBE2D0);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9528, &qword_21CBCB840);
      sub_21C6EDBAC(v52, v53 + *(v54 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
      sub_21C6EA794(v52, &qword_27CDEC2B8, &qword_21CBA3EB0);
      sub_21C6EA794(v51, &qword_27CDF1B78, &qword_21CBBE2D0);
      sub_21C6EDBAC(v53, v72, &qword_27CDF94D0, &unk_21CBCB790);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF94C8, &qword_27CDF94D0, &unk_21CBCB790, MEMORY[0x277CE14C0]);
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
      sub_21CB83494();
      sub_21C6EA794(v53, &qword_27CDF94D0, &unk_21CBCB790);
      sub_21C6EA794(v40, &qword_27CDEC2B8, &qword_21CBA3EB0);
      sub_21C6EA794(v50, &qword_27CDF1B78, &qword_21CBBE2D0);
      goto LABEL_15;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v22);
  v43 = v27(v22, 1, v17);
  v42 = v74;
  if (v43 != 1)
  {
    v44 = v67;
    sub_21CB3910C(v22, v67, type metadata accessor for PMSignInWithAppleAccount);
    v45 = (v44 + v17[15]);
    v46 = v45[1];
    if (!v46 || (v47 = *v45, !sub_21C8A137C(2u, *(v44 + v17[8]))))
    {
      sub_21C719900(v44, type metadata accessor for PMSignInWithAppleAccount);
      goto LABEL_12;
    }

    v48 = v68;
    sub_21CB326FC(v47, v46, v68);

    sub_21C6EDBAC(v48, v72, &qword_27CDF1B78, &qword_21CBBE2D0);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF94C8, &qword_27CDF94D0, &unk_21CBCB790, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
    sub_21CB83494();
    sub_21C6EA794(v48, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21C719900(v44, type metadata accessor for PMSignInWithAppleAccount);
LABEL_15:
    v49 = 0;
    goto LABEL_16;
  }

  sub_21C6EA794(v22, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_12:
  v49 = 1;
LABEL_16:
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94C0, &qword_21CBCB788);
  return (*(*(v55 - 8) + 56))(v42, v49, 1, v55);
}

uint64_t sub_21CB34C04()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_21CB80DD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85174();
  result = 0;
  if ((v14 & 1) == 0)
  {
    type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
    PMAccount.signInWithAppleAccount.getter(v6);
    v16 = type metadata accessor for PMSignInWithAppleAccount(0);
    if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEB2A8, &qword_21CBA1670);
      (*(v11 + 56))(v9, 1, 1, v10);
LABEL_5:
      sub_21C6EA794(v9, &unk_27CDED250, &qword_21CBA64C0);
      return 0;
    }

    sub_21C6EDBAC(&v6[*(v16 + 28)], v9, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C719900(v6, type metadata accessor for PMSignInWithAppleAccount);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      goto LABEL_5;
    }

    (*(v11 + 32))(v13, v9, v10);
    sub_21CB81014();
    sub_21CB81004();
    (*(v1 + 8))(v3, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21CBA0690;
    if (qword_27CDEA3B8 != -1)
    {
      swift_once();
    }

    v18 = qword_27CDF2480;
    [qword_27CDF2480 setDoesRelativeDateFormatting_];
    v19 = sub_21CB80D24();
    v20 = [v18 stringFromDate_];

    v21 = sub_21CB855C4();
    v23 = v22;

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21C7C0050();
    *(v17 + 32) = v21;
    *(v17 + 40) = v23;
    v24 = sub_21CB85594();

    (*(v11 + 8))(v13, v10);
    return v24;
  }

  return result;
}

uint64_t sub_21CB35094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_21CB80E34();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v64 - v6;
  v70 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v70);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v72);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for PMAccountIcon(0);
  v18 = *(v17 - 8);
  v80 = v17;
  v81 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = &v64 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v64 - v24;
  v26 = type metadata accessor for PMSignInWithAppleAccount(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v31 = a1;
  v32 = a1 + *(v30 + 52);
  PMAccount.signInWithAppleAccount.getter(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_21C6EA794(v25, &qword_27CDEB2A8, &qword_21CBA1670);
    v33 = 1;
    v34 = v82;
    v35 = v80;
  }

  else
  {
    sub_21CB3910C(v25, v29, type metadata accessor for PMSignInWithAppleAccount);
    v36 = (v31 + *(v30 + 56));
    v37 = v36[1];
    v67 = *v36;
    v38 = *(v26 + 20);
    v39 = sub_21CB85B74();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v16, &v29[v38], v39);
    v65 = *(v40 + 56);
    v65(v16, 0, 1, v39);
    v41 = type metadata accessor for PMAccount(0);
    sub_21CB38794(v32 + *(v41 + 24), v9, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v68 = v29;
    v69 = v16;
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v71;
      sub_21CB3910C(v9, v71, type metadata accessor for PMAccount.MockData);
      v44 = v73;
      sub_21C6EDBAC(v43 + *(v70 + 72), v73, &unk_27CDF20B0, &unk_21CBA0090);

      sub_21C719900(v43, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v45 = *v9;

      v44 = v73;
      sub_21CB85B94();
    }

    v35 = v80;
    v66 = v37;
    v46 = v74;
    sub_21C716934(v44, v74, &unk_27CDF20B0, &unk_21CBA0090);
    v47 = sub_21CB85C44();
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47) != 1;
    sub_21C6EA794(v46, &unk_27CDF20B0, &unk_21CBA0090);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v84[0]);

    type metadata accessor for PMAccountsState(0);
    sub_21CB3917C(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v50 = sub_21CB82674();
    v52 = v51;

    *v20 = v50;
    *(v20 + 1) = v52;
    *(v20 + 2) = swift_getKeyPath(asc_21CBCB8E0);
    *(v20 + 3) = swift_getKeyPath(byte_21CBCB908);
    *(v20 + 4) = swift_getKeyPath(byte_21CBCB930);
    v83 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(v20 + 40) = *v84;
    v53 = v35[11];
    v65(&v20[v53], 1, 1, v39);
    v54 = &v20[v35[16]];
    v55 = &v20[v35[17]];
    *v55 = sub_21C7E79A0;
    *(v55 + 1) = 0;
    v55[16] = 0;
    v56 = v76;
    sub_21CB80E24();
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v56, v79);
    sub_21CB84D44();
    (*(v57 + 8))(v56, v58);
    sub_21C719900(v68, type metadata accessor for PMSignInWithAppleAccount);
    v59 = v66;
    *(v20 + 7) = v67;
    *(v20 + 8) = v59;
    *(v20 + 9) = 0;
    *(v20 + 10) = 0;
    sub_21C805878(v69, &v20[v53]);
    v20[v35[12]] = 1;
    v20[v35[13]] = 1;
    v20[v35[14]] = 1;
    v60 = &v20[v35[15]];
    *v60 = xmmword_21CBA4340;
    v60[16] = 0;
    *v54 = v48;
    *(v54 + 8) = vdupq_n_s64(0x3FC999999999999AuLL);
    *(v54 + 24) = xmmword_21CBCB3D0;
    *(v54 + 5) = 0;
    *(v54 + 6) = 0;
    v61 = v75;
    sub_21CB3910C(v20, v75, type metadata accessor for PMAccountIcon);
    v62 = v61;
    v34 = v82;
    sub_21CB3910C(v62, v82, type metadata accessor for PMAccountIcon);
    v33 = 0;
  }

  return (*(v81 + 56))(v34, v33, 1, v35);
}

uint64_t sub_21CB35978@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDEA3B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDF2480;
  [qword_27CDF2480 setDoesRelativeDateFormatting_];
  v3 = sub_21CB80D24();
  v4 = [v2 stringFromDate_];

  sub_21CB855C4();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_21CB35A7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  sub_21CB38794(a1 + *(v7 + 52), v6, type metadata accessor for PMAccount);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  swift_allocObject();
  v8 = sub_21CA4B79C(v6);
  return sub_21C9B0330(v8, a2);
}

double sub_21CB35B5C(uint64_t a1)
{
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21CB38794(a1, v5, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21CB3910C(v5, v12 + v11, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21C98B308(0, 0, v8, &unk_21CBCB850, v12);

  return result;
}

uint64_t sub_21CB35D3C()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21CB35DE8();
}

uint64_t sub_21CB35DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v0[2] = swift_task_alloc();
  v1 = sub_21CB80BE4();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  sub_21CB858B4();
  v0[6] = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CB35F10, v3, v2);
}

id sub_21CB35F10(__n128 a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  sub_21CB80BD4();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[2];

    sub_21C6EA794(v5, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    (*(v1[4] + 32))(v1[5], v1[2], v1[3]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = v1[5];
    v9 = v1[3];
    v10 = v1[4];

    v11 = sub_21CB80B74();
    sub_21C73181C(MEMORY[0x277D84F90]);
    v12 = sub_21CB85464();

    [v7 openSensitiveURL:v11 withOptions:v12];

    (*(v10 + 8))(v8, v9);
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_21CB360D8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB36204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  sub_21CB81ED4();
  v10 = sub_21CB81F14();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_21CB38794(a1, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21CB3910C(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9468, &qword_21CBCB718);
  sub_21C6EADEC(&qword_27CDF9470, &qword_27CDF9468, &qword_21CBCB718, MEMORY[0x277CE1138]);
  sub_21CB84D94();
  v13 = sub_21CB84A64();
  KeyPath = swift_getKeyPath(byte_21CBCB720);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9440, &qword_21CBCB6F0);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

void sub_21CB36470(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v6 = a1 + *(v5 + 52);
  v7 = type metadata accessor for PMAccount(0);
  sub_21CB38794(v6 + *(v7 + 24), v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719900(v4, type metadata accessor for PMAccount.Storage);
    if (qword_27CDEA478 != -1)
    {
      swift_once();
    }

    v8 = sub_21CB81C84();
    __swift_project_value_buffer(v8, qword_27CE186F8);
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AE4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Saved account nil, unable to show ＂Stop using Sign in with Apple＂ alert.", v11, 2u);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
    v12 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21CBA0690;
    sub_21CB38794(v6, v13 + v12, type metadata accessor for PMAccount);
    v14 = sub_21C87E898(v13);
    v15 = (a1 + *(v5 + 32));
    v16 = v15[1];
    v20 = *v15;
    v21 = v16;
    v19[1] = v14;
    v19[2] = v17;
    v19[3] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93C8, &qword_21CBCB610);
    sub_21CB84D64();
  }
}

__n128 sub_21CB36708@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB83074();
  sub_21CB367A0(v6);
  *&v5[48] = *&v7[9];
  *&v5[39] = *v7;
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 17) = *v5;
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v5[48];
  return result;
}

uint64_t sub_21CB367A0@<X0>(uint64_t a1@<X8>)
{
  sub_21CB368DC();
  sub_21C71F3FC();
  v2 = sub_21CB84054();
  v4 = v3;
  v6 = v5;
  sub_21CB84A64();
  v7 = sub_21CB83FC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_21C74A72C(v2, v4, v6 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11 & 1;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_21C79B058(v7, v9, v11 & 1);

  sub_21C74A72C(v7, v9, v11 & 1);
}

uint64_t sub_21CB368DC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v0 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 52);
  v12 = type metadata accessor for PMAccount(0);
  sub_21CB38794(v11 + *(v12 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719900(v10, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v13 = *v10;
    [*v10 isCurrentUserOriginalContributor];
  }

  sub_21CB81014();
  sub_21CB81014();
  v14 = sub_21CB80FF4();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  return v14;
}

uint64_t sub_21CB36B48@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_21CB82A04();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v25 = *(v2 - 8);
  v24[1] = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v24[0] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMPlatformRoleButton(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21CB81F14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81F04();
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  (*(v12 + 16))(v10 + *(v8 + 20), v14, v11);
  v18 = v24[0];
  sub_21CB38794(v26, v24[0], type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_21CB3910C(v18, v20 + v19, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  *v10 = v15;
  v10[1] = v17;
  v21 = (v10 + *(v8 + 24));
  *v21 = sub_21CB383C8;
  v21[1] = v20;
  v22 = v27;
  sub_21CB829E4();
  sub_21CB3917C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB84334();
  (*(v28 + 8))(v22, v30);
  sub_21C719900(v10, type metadata accessor for PMPlatformRoleButton);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21CB36F6C(uint64_t a1)
{
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB38794(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CB3910C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  return sub_21CB84DA4();
}

uint64_t sub_21CB370C0(uint64_t a1, char a2)
{
  type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CB37144@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  sub_21CB372D0(v13 - v3);
  v5 = type metadata accessor for PMSharingGroup(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v7 = qword_27CE18748;
    v6 = qword_27CE18750;
  }

  else
  {
    v8 = &v4[*(v5 + 20)];
    v7 = *v8;
    v6 = v8[1];

    sub_21C719900(v4, type metadata accessor for PMSharingGroup);
  }

  v13[0] = v7;
  v13[1] = v6;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CB372D0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_21CB85C44();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 52);
  v30 = v1;
  v20 = v1 + v19;
  v21 = type metadata accessor for PMAccount(0);
  sub_21CB38794(v20 + *(v21 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB3910C(v9, v6, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v6[*(v4 + 72)], v15, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719900(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v22 = *v9;
    sub_21CB85B94();
  }

  sub_21C716934(v15, v18, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v18, v12, &unk_27CDF20B0, &unk_21CBA0090);
  v24 = v31;
  v23 = v32;
  if ((*(v31 + 48))(v12, 1, v32) == 1)
  {
    sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
    v25 = type metadata accessor for PMSharingGroup(0);
    return (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  }

  else
  {
    v27 = v29;
    (*(v24 + 32))(v29, v12, v23);
    sub_21CA1D444(v27, v33);
    (*(v24 + 8))(v27, v23);
    return sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CB376B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v17[0] = v9;
  v17[1] = v11;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_21CB37858@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v15[0] = v8;
  v15[1] = v10;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

void sub_21CB379A8(uint64_t a1)
{
  sub_21CB37B98(319);
  if (v1 <= 0x3F)
  {
    sub_21C70DB24(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
    if (v2 <= 0x3F)
    {
      sub_21C70DB24(319, &qword_27CDEB898, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_21C705CFC(319);
        if (v4 <= 0x3F)
        {
          sub_21CB37C2C(319);
          if (v5 <= 0x3F)
          {
            sub_21CB37C90(319, &qword_27CDF1428, &type metadata for PMAccountDetailsPresentationStyle, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21CB37C90(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_21C70640C(319);
                if (v8 <= 0x3F)
                {
                  sub_21CB37C90(319, &qword_27CDF1420, &type metadata for PMAccountDetailsContext, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for PMAccount(319);
                    if (v10 <= 0x3F)
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
}

void sub_21CB37B98(uint64_t a1)
{
  if (!qword_27CDF9348)
  {
    type metadata accessor for PMSignInWithAppleAccountDetailsModel(255);
    sub_21CB3917C(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel, &unk_21CBC0218);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF9348);
    }
  }
}

void sub_21CB37C2C(uint64_t a1)
{
  if (!qword_27CDF9350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAEF8, &unk_21CBA0740);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF9350);
    }
  }
}

void sub_21CB37C90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21CB37CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB2EEA8(v4, a1);
}

unint64_t sub_21CB37D74()
{
  result = qword_27CDF9380;
  if (!qword_27CDF9380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9358, &qword_21CBCB578);
    sub_21CB37E2C();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9380);
  }

  return result;
}

unint64_t sub_21CB37E2C()
{
  result = qword_27CDF9388;
  if (!qword_27CDF9388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9370, &qword_21CBCB598);
    sub_21C6EADEC(&qword_27CDF9390, &qword_27CDF9398, &unk_21CBCB5E0, &unk_21CBA2240);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9388);
  }

  return result;
}

unint64_t sub_21CB37F10()
{
  result = qword_27CDF93B0;
  if (!qword_27CDF93B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93B8, &unk_21CBCB600);
    v1 = MEMORY[0x277CDD7A8];
    sub_21C6EADEC(&qword_27CDF93C0, &qword_27CDF93B8, &unk_21CBCB600, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA80, &unk_21CBA81E0);
    sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF93B0);
  }

  return result;
}

uint64_t sub_21CB3806C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21CB307D4(a1, v1 + v5);
}

unint64_t sub_21CB38144()
{
  result = qword_27CDF93D0;
  if (!qword_27CDF93D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9368, &unk_21CBCB588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9358, &qword_21CBCB578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9378, &qword_21CBCB5D8);
    sub_21CB37D74();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A0, &qword_21CBCB5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
    sub_21CB37F10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF93D0);
  }

  return result;
}

uint64_t sub_21CB382AC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21CB30A78(a1, v6, v7, v1 + v5);
}

unint64_t sub_21CB3844C()
{
  result = qword_27CDF9448;
  if (!qword_27CDF9448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9440, &qword_21CBCB6F0);
    sub_21C6EADEC(&qword_27CDF9450, &qword_27CDF9458, &unk_21CBCB6F8, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9448);
  }

  return result;
}

uint64_t sub_21CB38548(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CB385D4()
{
  result = qword_27CDF94B8;
  if (!qword_27CDF94B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF94C0, &qword_21CBCB788);
    sub_21C6EADEC(&qword_27CDF94C8, &qword_27CDF94D0, &unk_21CBCB790, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF94B8);
  }

  return result;
}

unint64_t sub_21CB386DC()
{
  result = qword_27CDF94E8;
  if (!qword_27CDF94E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF94E0, &qword_21CBCB7A8);
    sub_21C6EADEC(&qword_27CDF94F0, &qword_27CDF94F8, &qword_21CBCB7B0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF94E8);
  }

  return result;
}

uint64_t sub_21CB38794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = v0;
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v3 = *(*(v2 - 1) + 80);
  v47 = *(*(v2 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + ((v3 + 32) & ~v3);

  v5 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82834();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v4 + v2[8];
  if (*v9)
  {
  }

  sub_21C7025C4(*(v4 + v2[9]), *(v4 + v2[9] + 8));

  sub_21C940E04(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  v10 = v4 + v2[13];

  v11 = type metadata accessor for PMAccount(0);
  v12 = v10 + v11[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v46 = v11;
  if (EnumCaseMultiPayload == 1)
  {

    v14 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v15 = *(v14 + 28);
    v16 = sub_21CB85B74();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);

    v17 = *(v14 + 36);
    v18 = sub_21CB85C44();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v12 + v17, 1, v18))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v36 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v37 = v36[7];
  v38 = sub_21CB85C04();
  v39 = *(v38 - 8);
  if (!(*(v39 + 48))(v12 + v37, 1, v38))
  {
    (*(v39 + 8))(v12 + v37, v38);
  }

  v40 = v36[8];
  v41 = sub_21CB85BB4();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v12 + v40, 1, v41))
  {
    (*(v42 + 8))(v12 + v40, v41);
  }

  v17 = v36[9];
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  v11 = v46;
  if (!(*(v19 + 48))(v12 + v17, 1, v18))
  {
LABEL_11:
    (*(v19 + 8))(v12 + v17, v18);
  }

LABEL_12:
  v20 = (v10 + v11[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v1;

    v21 = type metadata accessor for PMAccount.MockData(0);
    v22 = v21[8];
    v23 = sub_21CB80DD4();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v20 + v22, 1, v23))
    {
      (*(v24 + 8))(v20 + v22, v23);
    }

    v26 = v21[12];
    if (!v25(v20 + v26, 1, v23))
    {
      (*(v24 + 8))(v20 + v26, v23);
    }

    v27 = v21[15];
    v28 = sub_21CB85BB4();
    v29 = *(v28 - 8);
    v1 = v45;
    if (!(*(v29 + 48))(v20 + v27, 1, v28))
    {
      (*(v29 + 8))(v20 + v27, v28);
    }

    v30 = v21[16];
    v31 = sub_21CB85C04();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v20 + v30, 1, v31))
    {
      (*(v32 + 8))(v20 + v30, v31);
    }

    v33 = v21[18];
    v34 = sub_21CB85C44();
    v35 = *(v34 - 8);
    v11 = v46;
    if (!(*(v35 + 48))(v20 + v33, 1, v34))
    {
      (*(v35 + 8))(v20 + v33, v34);
    }
  }

  else
  {
  }

  v43 = v10 + v11[7];
  if (*(v43 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, ((v3 + 32) & ~v3) + v47, v3 | 7);
}

uint64_t sub_21CB39014()
{
  type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21C702EFC;

  return sub_21CB35D3C();
}

uint64_t sub_21CB3910C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB3917C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB391CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PMOsloHeaderContentView.init(icon:badge:title:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_21CB813C4();
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = type metadata accessor for PMOsloHeaderContentView(0);
  v16 = v15[5];
  v17 = type metadata accessor for PMOsloBadge(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v15[7];
  v19 = (a7 + v15[6]);
  v20 = (a7 + v18);
  sub_21C7D3344(a1, a7, &qword_27CDECC98, &unk_21CBCB9B0);
  result = sub_21C7D3344(a2, a7 + v16, &unk_27CDF2CA0, &unk_21CBA5520);
  *v19 = a3;
  v19[1] = a4;
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t PMOsloHeaderContentView.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PMOsloHeaderContentView(0) + 24));

  return v1;
}

uint64_t PMOsloHeaderContentView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PMOsloHeaderContentView(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PMOsloHeaderContentView.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for PMOsloHeaderContentView(0) + 28));

  return v1;
}

uint64_t PMOsloHeaderContentView.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PMOsloHeaderContentView(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PMOsloHeaderContentView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9580, &qword_21CBCB9C0);
  sub_21CB3976C(v2, a2 + *(v4 + 44));
  v5 = sub_21CB83CD4();
  sub_21CB81F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9588, &qword_21CBCB9C8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_21CB3976C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = sub_21CB83274();
  v124 = *(v3 - 8);
  v125 = v3;
  MEMORY[0x28223BE20](v3);
  v123 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9778, &qword_21CBCBC78);
  MEMORY[0x28223BE20](v114);
  v116 = &v109 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9780, &qword_21CBCBC80);
  MEMORY[0x28223BE20](v115);
  v118 = &v109 - v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9788, &qword_21CBCBC88);
  MEMORY[0x28223BE20](v117);
  v119 = &v109 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9790, &qword_21CBCBC90);
  MEMORY[0x28223BE20](v121);
  v122 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9798, &qword_21CBCBC98);
  v128 = *(v9 - 8);
  v129 = v9;
  MEMORY[0x28223BE20](v9);
  v120 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97A0, &qword_21CBCBCA0);
  MEMORY[0x28223BE20](v11 - 8);
  v130 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v133 = &v109 - v14;
  v110 = type metadata accessor for PMOsloHeaderImageView(0);
  MEMORY[0x28223BE20](v110);
  v111 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97A8, &qword_21CBCBCA8);
  MEMORY[0x28223BE20](v113);
  v17 = &v109 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97B0, &qword_21CBCBCB0);
  v19 = *(v18 - 8);
  v126 = v18;
  v127 = v19;
  MEMORY[0x28223BE20](v18);
  v112 = &v109 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v109 - v22;
  v24 = sub_21CB813C4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97B8, &qword_21CBCBCB8);
  MEMORY[0x28223BE20](v28 - 8);
  v132 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  sub_21C6EDBAC(a1, v23, &qword_27CDECC98, &unk_21CBCB9B0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_21C6EA794(v23, &qword_27CDECC98, &unk_21CBCB9B0);
    v33 = 1;
    v34 = a1;
  }

  else
  {
    (*(v25 + 32))(v27, v23, v24);
    v35 = v111;
    (*(v25 + 16))(v111, v27, v24);
    v36 = type metadata accessor for PMOsloHeaderContentView(0);
    v34 = a1;
    sub_21C6EDBAC(a1 + *(v36 + 20), v35 + *(v110 + 20), &unk_27CDF2CA0, &unk_21CBA5520);
    sub_21CB85224();
    sub_21CB82AC4();
    sub_21CB3EBE8(v35, v17, type metadata accessor for PMOsloHeaderImageView);
    v37 = &v17[*(v113 + 36)];
    v38 = v163[7];
    *(v37 + 4) = v163[6];
    *(v37 + 5) = v38;
    *(v37 + 6) = v163[8];
    v39 = v163[3];
    *v37 = v163[2];
    *(v37 + 1) = v39;
    v40 = v163[5];
    *(v37 + 2) = v163[4];
    *(v37 + 3) = v40;
    sub_21CB3EC50();
    v41 = v112;
    sub_21CB84494();
    sub_21C6EA794(v17, &qword_27CDF97A8, &qword_21CBCBCA8);
    (*(v25 + 8))(v27, v24);
    sub_21C716934(v41, v32, &qword_27CDF97B0, &qword_21CBCBCB0);
    v33 = 0;
  }

  v42 = *(v127 + 7);
  v127 = v32;
  v42(v32, v33, 1, v126);
  v43 = type metadata accessor for PMOsloHeaderContentView(0);
  v44 = (v34 + *(v43 + 24));
  v45 = v44[1];
  if (v45)
  {
    *&v153 = *v44;
    *(&v153 + 1) = v45;
    sub_21C71F3FC();
    v126 = v43;
    v46 = v34;

    v47 = sub_21CB84054();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = sub_21CB83E34();
    v56 = swift_getKeyPath(asc_21CBCBC40);
    LOBYTE(v146[0]) = v51 & 1;
    *&v148 = v47;
    *(&v148 + 1) = v49;
    LOBYTE(v149) = v51 & 1;
    *(&v149 + 1) = v53;
    *&v150 = KeyPath;
    BYTE8(v150) = 0;
    *&v151 = v56;
    *(&v151 + 1) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23D8, &unk_21CBCBD30);
    sub_21C95BFC8();
    v57 = v116;
    sub_21CB846B4();
    v153 = v148;
    v154 = v149;
    v155 = v150;
    v156 = v151;
    v34 = v46;
    v43 = v126;
    sub_21C6EA794(&v153, &qword_27CDF23D8, &unk_21CBCBD30);
    v58 = swift_getKeyPath(byte_21CBCBD00);
    v59 = v57 + *(v114 + 36);
    *v59 = v58;
    *(v59 + 8) = 0;
    *(v59 + 16) = 1;
    sub_21CB85224();
    sub_21CB82AC4();
    v60 = v118;
    sub_21C716934(v57, v118, &qword_27CDF9778, &qword_21CBCBC78);
    v61 = (v60 + *(v115 + 36));
    v62 = v163[14];
    v61[4] = v163[13];
    v61[5] = v62;
    v61[6] = v163[15];
    v63 = v163[10];
    *v61 = v163[9];
    v61[1] = v63;
    v64 = v163[12];
    v61[2] = v163[11];
    v61[3] = v64;
    v65 = v119;
    sub_21C716934(v60, v119, &qword_27CDF9780, &qword_21CBCBC80);
    *(v65 + *(v117 + 36)) = 256;
    LOBYTE(v60) = sub_21CB83D04();
    sub_21CB81F24();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v122;
    sub_21C716934(v65, v122, &qword_27CDF9788, &qword_21CBCBC88);
    v75 = v74 + *(v121 + 36);
    *v75 = v60;
    *(v75 + 8) = v67;
    *(v75 + 16) = v69;
    *(v75 + 24) = v71;
    *(v75 + 32) = v73;
    *(v75 + 40) = 0;
    v76 = v123;
    sub_21CB83264();
    sub_21CB3E950();
    v77 = v120;
    sub_21CB84594();
    (*(v124 + 8))(v76, v125);
    sub_21C6EA794(v74, &qword_27CDF9790, &qword_21CBCBC90);
    v78 = v133;
    sub_21C716934(v77, v133, &qword_27CDF9798, &qword_21CBCBC98);
    (*(v128 + 56))(v78, 0, 1, v129);
  }

  else
  {
    (*(v128 + 56))(v133, 1, 1, v129);
  }

  v79 = (v34 + *(v43 + 28));
  v80 = v79[1];
  if (v80)
  {
    *&v153 = *v79;
    *(&v153 + 1) = v80;
    sub_21C71F3FC();

    v81 = sub_21CB84054();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = swift_getKeyPath(byte_21CBCBD00);
    LOBYTE(v146[0]) = v85 & 1;
    LOBYTE(v135) = 1;
    sub_21CB85224();
    sub_21CB82AC4();
    *&v134[55] = v163[19];
    *&v134[71] = v163[20];
    *&v134[87] = v163[21];
    *&v134[103] = v164;
    *&v134[7] = v163[16];
    *&v134[23] = v163[17];
    *&v134[39] = v163[18];
    *(&v152[4] + 1) = *&v134[64];
    *(&v152[5] + 1) = *&v134[80];
    *(&v152[6] + 1) = *&v134[96];
    *(v152 + 1) = *v134;
    *(&v152[1] + 1) = *&v134[16];
    *(&v152[2] + 1) = *&v134[32];
    *&v148 = v81;
    *(&v148 + 1) = v83;
    LOBYTE(v149) = v85 & 1;
    *(&v149 + 1) = v87;
    *&v150 = v88;
    BYTE8(v150) = 0;
    v151 = v89;
    LOBYTE(v152[0]) = 1;
    *&v152[7] = *(&v164 + 1);
    *(&v152[3] + 1) = *&v134[48];
    WORD4(v152[7]) = 256;
    nullsub_1();
    v161 = v152[4];
    v162 = v152[5];
    v163[0] = v152[6];
    *(v163 + 10) = *(&v152[6] + 10);
    v157 = v152[0];
    v158 = v152[1];
    v159 = v152[2];
    v160 = v152[3];
    v153 = v148;
    v154 = v149;
    v155 = v150;
    v156 = v151;
  }

  else
  {
    sub_21CB3E92C(&v153);
  }

  v90 = v127;
  v91 = v132;
  sub_21C6EDBAC(v127, v132, &qword_27CDF97B8, &qword_21CBCBCB8);
  v92 = v133;
  v93 = v130;
  sub_21C78BCA0(v133, v130);
  v144 = v162;
  v145[0] = v163[0];
  *(v145 + 10) = *(v163 + 10);
  v140 = v158;
  v141 = v159;
  v142 = v160;
  v143 = v161;
  v135 = v153;
  v136 = v154;
  v137 = v155;
  v138 = v156;
  v139 = v157;
  v94 = v91;
  v95 = v131;
  sub_21C6EDBAC(v94, v131, &qword_27CDF97B8, &qword_21CBCBCB8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97C0, &qword_21CBCBCC0);
  sub_21C78BCA0(v93, v95 + *(v96 + 48));
  v97 = *(v96 + 64);
  v98 = v142;
  v146[8] = v143;
  v146[9] = v144;
  v99 = v144;
  v147[0] = v145[0];
  *(v147 + 10) = *(v145 + 10);
  v101 = v138;
  v146[4] = v139;
  v100 = v139;
  v146[5] = v140;
  v102 = v140;
  v146[6] = v141;
  v103 = v141;
  v146[7] = v142;
  v104 = v137;
  v105 = v135;
  v146[0] = v135;
  v146[1] = v136;
  v106 = v136;
  v146[2] = v137;
  v146[3] = v138;
  v107 = (v95 + v97);
  v107[8] = v143;
  v107[9] = v99;
  v107[10] = v145[0];
  *(v107 + 170) = *(v145 + 10);
  v107[4] = v100;
  v107[5] = v102;
  v107[6] = v103;
  v107[7] = v98;
  *v107 = v105;
  v107[1] = v106;
  v107[2] = v104;
  v107[3] = v101;
  sub_21C6EDBAC(v146, &v148, &qword_27CDF97C8, &qword_21CBCBCC8);
  sub_21C6EA794(v92, &qword_27CDF97A0, &qword_21CBCBCA0);
  sub_21C6EA794(v90, &qword_27CDF97B8, &qword_21CBCBCB8);
  v152[4] = v143;
  v152[5] = v144;
  v152[6] = v145[0];
  *(&v152[6] + 10) = *(v145 + 10);
  v152[0] = v139;
  v152[1] = v140;
  v152[2] = v141;
  v152[3] = v142;
  v148 = v135;
  v149 = v136;
  v150 = v137;
  v151 = v138;
  sub_21C6EA794(&v148, &qword_27CDF97C8, &qword_21CBCBCC8);
  sub_21C6EA794(v93, &qword_27CDF97A0, &qword_21CBCBCA0);
  return sub_21C6EA794(v132, &qword_27CDF97B8, &qword_21CBCBCB8);
}

uint64_t sub_21CB3A614@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9580, &qword_21CBCB9C0);
  sub_21CB3976C(v2, a2 + *(v4 + 44));
  v5 = sub_21CB83CD4();
  sub_21CB81F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9588, &qword_21CBCB9C8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_21CB3A6CC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_21CB813C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF95F0, &qword_21CBCBB18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF95F8, &qword_21CBCBB20);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v43 = &v40[-v13];
  *v10 = sub_21CB851F4();
  v10[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9600, &qword_21CBCBB28);
  sub_21CB3A9F4(v10 + *(v15 + 44));
  v41 = sub_21CB83CF4();
  v42 = v3[2];
  v42(v7, v1, v2);
  v16 = v3[11];
  v16(v7, v2);
  v17 = v3[1];
  v17(v7, v2);
  sub_21CB81F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v43;
  sub_21C716934(v10, v43, &qword_27CDF95F0, &qword_21CBCBB18);
  v27 = &v26[*(v12 + 44)];
  *v27 = v41;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  LOBYTE(v10) = sub_21CB83D04();
  v28 = v44;
  v42(v44, v1, v2);
  v16(v28, v2);
  v17(v28, v2);
  sub_21CB81F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v45;
  sub_21C716934(v26, v45, &qword_27CDF95F8, &qword_21CBCBB20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9608, &qword_21CBCBB30);
  v39 = v37 + *(result + 36);
  *v39 = v10;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_21CB3A9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9610, &qword_21CBCBB38);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9618, &qword_21CBCBB40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_21CB3ACA4(&v23 - v13);
  sub_21CB3C174(v8);
  sub_21CB84A94();
  v15 = sub_21CB84B04();

  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9620, &qword_21CBCBB48) + 36)];
  *v16 = v15;
  *(v16 + 8) = xmmword_21CBCB9A0;
  *(v16 + 3) = 0x4000000000000000;
  v17 = sub_21CB83304();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9628, &qword_21CBCBB50) + 36)];
  *v18 = v17;
  v18[1] = sub_21CB3D078;
  v18[2] = 0;
  v19 = sub_21CB83064();
  v20 = &v8[*(v3 + 44)];
  *v20 = v19;
  v20[1] = sub_21CB3D0A8;
  v20[2] = 0;
  sub_21C6EDBAC(v14, v11, &qword_27CDF9618, &qword_21CBCBB40);
  sub_21C6EDBAC(v8, v5, &qword_27CDF9610, &qword_21CBCBB38);
  sub_21C6EDBAC(v11, a1, &qword_27CDF9618, &qword_21CBCBB40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9630, &qword_21CBCBB58);
  sub_21C6EDBAC(v5, a1 + *(v21 + 48), &qword_27CDF9610, &qword_21CBCBB38);
  sub_21C6EA794(v8, &qword_27CDF9610, &qword_21CBCBB38);
  sub_21C6EA794(v14, &qword_27CDF9618, &qword_21CBCBB40);
  sub_21C6EA794(v5, &qword_27CDF9610, &qword_21CBCBB38);
  return sub_21C6EA794(v11, &qword_27CDF9618, &qword_21CBCBB40);
}

uint64_t sub_21CB3ACA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F8, &qword_21CBCBBE8);
  MEMORY[0x28223BE20](v95);
  v96 = &v88 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9700, &qword_21CBCBBF0);
  MEMORY[0x28223BE20](v115);
  v97 = &v88 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9638, &qword_21CBCBB60);
  MEMORY[0x28223BE20](v94);
  v89 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9658, &qword_21CBCBB80);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = (&v88 - v7);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9660, &qword_21CBCBB88);
  MEMORY[0x28223BE20](v106);
  v93 = &v88 - v8;
  v9 = sub_21CB81A04();
  v99 = *(v9 - 1);
  v100 = v9;
  MEMORY[0x28223BE20](v9);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9708, &qword_21CBCBBF8);
  MEMORY[0x28223BE20](v104);
  v105 = (&v88 - v11);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9710, &qword_21CBCBC00);
  MEMORY[0x28223BE20](v111);
  v107 = &v88 - v12;
  v13 = sub_21CB84BD4();
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9718, &qword_21CBCBC08);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v88 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9720, &qword_21CBCBC10);
  MEMORY[0x28223BE20](v112);
  v114 = &v88 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9728, &qword_21CBCBC18);
  MEMORY[0x28223BE20](v109);
  v108 = (&v88 - v25);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9730, &unk_21CBCBC20);
  MEMORY[0x28223BE20](v113);
  v110 = &v88 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v88 - v28;
  v30 = sub_21CB813C4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v34, v2, v30, v32);
  v35 = (*(v31 + 88))(v34, v30);
  if (v35 == *MEMORY[0x277CBA688])
  {
    (*(v31 + 96))(v34, v30);
    v36 = sub_21CB84BB4();
    if (!PMOnboardingShouldShowIconBadge())
    {
      goto LABEL_13;
    }

    if (qword_27CDEA4B0 != -1)
    {
      swift_once();
    }

    if ((sub_21C900A10(v2, qword_27CDF9578) & 1) == 0)
    {
LABEL_13:
      v38 = type metadata accessor for PMOsloHeaderImageView(0);
      sub_21C6EDBAC(v2 + *(v38 + 20), v23, &unk_27CDF2CA0, &unk_21CBA5520);
      v39 = type metadata accessor for PMOsloBadge(0);
      (*(*(v39 - 8) + 48))(v23, 1, v39);
      sub_21C6EA794(v23, &unk_27CDF2CA0, &unk_21CBA5520);
    }

    v40 = sub_21CB83DC4();
    (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
    v41 = sub_21CB83E14();
    sub_21C6EA794(v29, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath(asc_21CBCBC40);
    v43 = sub_21CB84A74();
    *&v117[0] = v36;
    *(&v117[0] + 1) = KeyPath;
    *&v117[1] = v41;
    *(&v117[1] + 1) = v43;
    LOBYTE(v117[2]) = 0;
LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C8FD504();
    sub_21CB83494();
    v67 = v120[16];
    v68 = *v120;
    v69 = v108;
    *v108 = v119;
    v69[1] = v68;
    *(v69 + 32) = v67;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    v70 = v110;
    sub_21CB83494();
    sub_21C6EDBAC(v70, v114, &qword_27CDF9730, &unk_21CBCBC20);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();

    v58 = v70;
    v59 = &qword_27CDF9730;
    v60 = &unk_21CBCBC20;
    return sub_21C6EA794(v58, v59, v60);
  }

  if (v35 == *MEMORY[0x277CBA680])
  {
    (*(v31 + 96))(v34, v30);
    v37 = sub_21CB84C14();
    if (!PMOnboardingShouldShowIconBadge())
    {
      goto LABEL_17;
    }

    if (qword_27CDEA4B0 != -1)
    {
      swift_once();
    }

    if ((sub_21C900A10(v2, qword_27CDF9578) & 1) == 0)
    {
LABEL_17:
      v61 = type metadata accessor for PMOsloHeaderImageView(0);
      sub_21C6EDBAC(v2 + *(v61 + 20), v20, &unk_27CDF2CA0, &unk_21CBA5520);
      v62 = type metadata accessor for PMOsloBadge(0);
      (*(*(v62 - 8) + 48))(v20, 1, v62);
      sub_21C6EA794(v20, &unk_27CDF2CA0, &unk_21CBA5520);
    }

    v63 = sub_21CB83DC4();
    (*(*(v63 - 8) + 56))(v29, 1, 1, v63);
    v64 = sub_21CB83E14();
    sub_21C6EA794(v29, &qword_27CDEBB58, &qword_21CBAF8A0);
    v65 = swift_getKeyPath(asc_21CBCBC40);
    v66 = sub_21CB84A74();
    *&v117[0] = v37;
    *(&v117[0] + 1) = v65;
    *&v117[1] = v64;
    *(&v117[1] + 1) = v66;
    LOBYTE(v117[2]) = 1;
    goto LABEL_19;
  }

  if (v35 == *MEMORY[0x277CBA678])
  {
    (*(v31 + 96))(v34, v30);
    v100 = v34[2];
    sub_21CB84C74();
    v44 = *MEMORY[0x277CE1020];
    v45 = sub_21CB84C34();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v17, v44, v45);
    (*(v46 + 56))(v17, 0, 1, v45);
    sub_21CB84C04();

    sub_21C6EA794(v17, &qword_27CDF9718, &qword_21CBCBC08);
    v48 = v101;
    v47 = v102;
    v49 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x277CE0FE0], v103);
    v50 = sub_21CB84C64();

    (*(v47 + 8))(v48, v49);
    [objc_opt_self() headerIconSize];
    sub_21CB85214();
    sub_21CB82374();
    LOBYTE(v119) = 1;
    *&v118[6] = v122;
    *&v118[22] = v123;
    *&v118[38] = v124;
    v51 = sub_21CB84A74();
    v119 = v50;
    *v120 = 1;
    *&v120[2] = *v118;
    *&v120[18] = *&v118[16];
    *&v120[34] = *&v118[32];
    *&v120[48] = *&v118[46];
    *&v120[56] = v51;
    v52 = *v120;
    v53 = *&v120[16];
    v54 = *&v120[48];
    v55 = v105;
    v105[3] = *&v120[32];
    v55[4] = v54;
    v55[1] = v52;
    v55[2] = v53;
    *v55 = v50;
    swift_storeEnumTagMultiPayload();
    sub_21C6EDBAC(&v119, v117, &qword_27CDF9760, &qword_21CBCBC38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9760, &qword_21CBCBC38);
    sub_21CB3E7E8();
    sub_21CB3E194();
    v56 = v107;
    sub_21CB83494();
    sub_21C6EDBAC(v56, v108, &qword_27CDF9710, &qword_21CBCBC00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    v57 = v110;
    sub_21CB83494();
    sub_21C6EA794(v56, &qword_27CDF9710, &qword_21CBCBC00);
    sub_21C6EDBAC(v57, v114, &qword_27CDF9730, &unk_21CBCBC20);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();

    sub_21C6EA794(&v119, &qword_27CDF9760, &qword_21CBCBC38);
    v58 = v57;
    v59 = &qword_27CDF9730;
    v60 = &unk_21CBCBC20;
    return sub_21C6EA794(v58, v59, v60);
  }

  if (v35 == *MEMORY[0x277CBA668])
  {
    (*(v31 + 96))(v34, v30);
    (*(v99 + 32))(v98, v34, v100);
    sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
    [objc_opt_self() headerIconSize];
    v72 = sub_21CB85D94();
    if (v72)
    {
      v73 = v72;
      v74 = sub_21CB84BA4();
      v75 = v90;
      sub_21CB3D0D8(0, v74, v90);

      v76 = v93;
      sub_21C716934(v75, v93, &qword_27CDF9658, &qword_21CBCBB80);
      v77 = 0;
    }

    else
    {
      v77 = 1;
      v76 = v93;
    }

    (*(v91 + 56))(v76, v77, 1, v92);
    sub_21C6EDBAC(v76, v105, &qword_27CDF9660, &qword_21CBCBB88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9760, &qword_21CBCBC38);
    sub_21CB3E7E8();
    sub_21CB3E194();
    v86 = v107;
    sub_21CB83494();
    sub_21C6EDBAC(v86, v108, &qword_27CDF9710, &qword_21CBCBC00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    v87 = v110;
    sub_21CB83494();
    sub_21C6EA794(v86, &qword_27CDF9710, &qword_21CBCBC00);
    sub_21C6EDBAC(v87, v114, &qword_27CDF9730, &unk_21CBCBC20);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();
    sub_21C6EA794(v87, &qword_27CDF9730, &unk_21CBCBC20);
    sub_21C6EA794(v76, &qword_27CDF9660, &qword_21CBCBB88);
    return (*(v99 + 8))(v98, v100);
  }

  else
  {
    if (v35 == *MEMORY[0x277CBA670])
    {
      (*(v31 + 96))(v34, v30);
      v78 = *v34;
      sub_21CB84BA4();
      v80 = v101;
      v79 = v102;
      v81 = v103;
      (*(v102 + 104))(v101, *MEMORY[0x277CE0FE0], v103);
      v82 = sub_21CB84C64();

      (*(v79 + 8))(v80, v81);
      [objc_opt_self() headerIconSize];
      sub_21CB85214();
      sub_21CB82374();
      *(v117 + 6) = v122;
      *(&v117[1] + 6) = v123;
      *(&v117[2] + 6) = v124;
      *&v120[2] = v117[0];
      v121 = 1;
      v119 = v82;
      *v120 = 1;
      *&v120[18] = v117[1];
      *&v120[34] = v117[2];
      *&v120[48] = *(&v124 + 1);
      v83 = v89;
      sub_21CB3D394(0, v89);
      sub_21C6EA794(&v119, &qword_27CDEBAA0, &unk_21CBA2B50);
      sub_21C6EDBAC(v83, v96, &qword_27CDF9638, &qword_21CBCBB60);
      swift_storeEnumTagMultiPayload();
      sub_21CB3E388();
      v84 = v97;
      sub_21CB83494();
      sub_21C6EDBAC(v84, v114, &qword_27CDF9700, &qword_21CBCBBF0);
      swift_storeEnumTagMultiPayload();
      sub_21CB3E64C();
      sub_21CB3E8A0();
      sub_21CB83494();

      sub_21C6EA794(v84, &qword_27CDF9700, &qword_21CBCBBF0);
      v58 = v83;
      v59 = &qword_27CDF9638;
      v60 = &qword_21CBCBB60;
      return sub_21C6EA794(v58, v59, v60);
    }

    swift_storeEnumTagMultiPayload();
    sub_21CB3E388();
    v85 = v97;
    sub_21CB83494();
    sub_21C6EDBAC(v85, v114, &qword_27CDF9700, &qword_21CBCBBF0);
    swift_storeEnumTagMultiPayload();
    sub_21CB3E64C();
    sub_21CB3E8A0();
    sub_21CB83494();
    sub_21C6EA794(v85, &qword_27CDF9700, &qword_21CBCBBF0);
    return (*(v31 + 8))(v34, v30);
  }
}

uint64_t sub_21CB3C174@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v81 = sub_21CB84BD4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9638, &qword_21CBCBB60);
  MEMORY[0x28223BE20](v85);
  v75 = &v70 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9640, &qword_21CBCBB68);
  MEMORY[0x28223BE20](v87);
  v89 = &v70 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9648, &qword_21CBCBB70);
  MEMORY[0x28223BE20](v83);
  v84 = &v70 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9650, &qword_21CBCBB78);
  MEMORY[0x28223BE20](v88);
  v86 = &v70 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9658, &qword_21CBCBB80);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = (&v70 - v7);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9660, &qword_21CBCBB88);
  MEMORY[0x28223BE20](v82);
  v74 = &v70 - v8;
  v78 = sub_21CB81A04();
  v77 = *(v78 - 1);
  MEMORY[0x28223BE20](v78);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9668, &qword_21CBCBB90);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v70 - v12;
  v14 = type metadata accessor for PMOsloBadge(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = sub_21CB813C4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v1, v21, v23);
  v26 = (*(v22 + 88))(v25, v21);
  v27 = 1;
  if (v26 != *MEMORY[0x277CBA688] && v26 != *MEMORY[0x277CBA680] && v26 != *MEMORY[0x277CBA678])
  {
    if (v26 == *MEMORY[0x277CBA670] || v26 == *MEMORY[0x277CBA668])
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }
  }

  (*(v22 + 8))(v25, v21);
  v29 = type metadata accessor for PMOsloHeaderImageView(0);
  sub_21C6EDBAC(v1 + *(v29 + 20), v13, &unk_27CDF2CA0, &unk_21CBA5520);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21C6EA794(v13, &unk_27CDF2CA0, &unk_21CBA5520);
    v30 = 1;
    v31 = v91;
  }

  else
  {
    v32 = v20;
    sub_21CB3EBE8(v13, v20, type metadata accessor for PMOsloBadge);
    sub_21CB3E584(v20, v17, type metadata accessor for PMOsloBadge);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v34 = v90;
      if (EnumCaseMultiPayload == 1)
      {
        v78 = *v17;
        sub_21CB84BA4();
        v35 = v80;
        v36 = v79;
        v37 = v81;
        (*(v80 + 104))(v79, *MEMORY[0x277CE0FE0], v81);
        v38 = sub_21CB84C64();

        (*(v35 + 8))(v36, v37);
        v39 = objc_opt_self();
        v40 = &selRef_headerSmallBadgeIconSize;
        if (v27 != 2)
        {
          v40 = &selRef_headerBadgeIconSize;
        }

        [v39 *v40];
        sub_21CB85214();
        sub_21CB82374();
        *(v94 + 6) = v99;
        *(&v94[1] + 6) = v100;
        *(&v94[2] + 6) = v101;
        *&v96[2] = v94[0];
        v98 = 1;
        v95 = v38;
        *v96 = 1;
        *&v96[18] = v94[1];
        *&v96[34] = v94[2];
        *&v96[48] = *(&v101 + 1);
        v41 = v75;
        sub_21CB3D394(v27, v75);
        sub_21C6EA794(&v95, &qword_27CDEBAA0, &unk_21CBA2B50);
        sub_21C6EDBAC(v41, v84, &qword_27CDF9638, &qword_21CBCBB60);
        swift_storeEnumTagMultiPayload();
        sub_21CB3E194();
        sub_21CB3E388();
        v42 = v86;
        sub_21CB83494();
        sub_21C6EDBAC(v42, v89, &qword_27CDF9650, &qword_21CBCBB78);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9670, &qword_21CBCBB98);
        sub_21CB3E108();
        sub_21CB3E440();
        sub_21CB83494();

        sub_21C6EA794(v42, &qword_27CDF9650, &qword_21CBCBB78);
        v43 = v41;
        v44 = &qword_27CDF9638;
        v45 = &qword_21CBCBB60;
      }

      else
      {
        v55 = *(v17 + 2);
        v54 = *(v17 + 3);
        sub_21CB84BB4();
        v56 = v80;
        v57 = v34;
        v58 = v79;
        v59 = v81;
        (*(v80 + 104))(v79, *MEMORY[0x277CE0FE0], v81);
        v60 = sub_21CB84C64();

        v61 = v58;
        v34 = v57;
        (*(v56 + 8))(v61, v59);
        LODWORD(v59) = v27;
        v62 = objc_opt_self();

        v63 = &selRef_headerSmallBadgeIconSize;
        if (v59 != 2)
        {
          v63 = &selRef_headerBadgeIconSize;
        }

        [v62 *v63];
        sub_21CB85214();
        sub_21CB82374();
        v98 = 1;
        v95 = v60;
        *v96 = 1;
        *&v96[2] = v99;
        *&v96[6] = WORD2(v99);
        *&v96[8] = v55;
        *&v96[16] = v54;
        v64 = *&v96[48];
        v65 = v89;
        *(v89 + 48) = *&v96[32];
        *(v65 + 64) = v64;
        *(v65 + 80) = v97;
        v66 = *&v96[16];
        v67 = *v96;
        *v65 = v95;
        *(v65 + 16) = v67;
        *(v65 + 32) = v66;
        swift_storeEnumTagMultiPayload();
        sub_21C6EDBAC(&v95, v94, &qword_27CDF9670, &qword_21CBCBB98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9670, &qword_21CBCBB98);
        sub_21CB3E108();
        sub_21CB3E440();
        sub_21CB83494();

        v43 = &v95;
        v44 = &qword_27CDF9670;
        v45 = &qword_21CBCBB98;
      }

      sub_21C6EA794(v43, v44, v45);
      sub_21CB3E5EC(v32, type metadata accessor for PMOsloBadge);
      v31 = v91;
    }

    else
    {
      (*(v77 + 32))(v76, v17, v78);
      v46 = objc_opt_self();
      v47 = &selRef_headerSmallBadgeIconSize;
      if (v27 != 2)
      {
        v47 = &selRef_headerBadgeIconSize;
      }

      [v46 *v47];
      sub_21C6E8F4C(0, &qword_27CDF4610, 0x277CBA968);
      v48 = sub_21CB85D94();
      v31 = v91;
      v34 = v90;
      if (v48)
      {
        v49 = v48;
        v50 = sub_21CB84BA4();
        v51 = v71;
        sub_21CB3D0D8(v27, v50, v71);

        v52 = v74;
        sub_21C716934(v51, v74, &qword_27CDF9658, &qword_21CBCBB80);
        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v74;
      }

      (*(v72 + 56))(v52, v53, 1, v73);
      sub_21C6EDBAC(v52, v84, &qword_27CDF9660, &qword_21CBCBB88);
      swift_storeEnumTagMultiPayload();
      sub_21CB3E194();
      sub_21CB3E388();
      v68 = v86;
      sub_21CB83494();
      sub_21C6EDBAC(v68, v89, &qword_27CDF9650, &qword_21CBCBB78);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9670, &qword_21CBCBB98);
      sub_21CB3E108();
      sub_21CB3E440();
      sub_21CB83494();
      sub_21C6EA794(v68, &qword_27CDF9650, &qword_21CBCBB78);
      sub_21C6EA794(v52, &qword_27CDF9660, &qword_21CBCBB88);
      (*(v77 + 8))(v76, v78);
      sub_21CB3E5EC(v20, type metadata accessor for PMOsloBadge);
    }

    sub_21C716934(v34, v31, &qword_27CDF9668, &qword_21CBCBB90);
    v30 = 0;
  }

  return (*(v92 + 56))(v31, v30, 1, v93);
}

uint64_t sub_21CB3D0D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21CB82A84();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [objc_opt_self() *off_27831D080[a1]];
  v11 = v10;
  v12 = *(v7 + 28);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_21CB831A4();
  (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
  *v9 = v11;
  *(v9 + 1) = v11;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9698, &unk_21CBCBBA0) + 36);
  v16 = MEMORY[0x277CDFC08];
  sub_21CB3E584(v9, v15, MEMORY[0x277CDFC08]);
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)] = 256;
  *a3 = a2;
  v17 = objc_opt_self();

  v18 = [v17 iconBorderColor];
  v19 = sub_21CB84A24();
  [v17 iconBorderWidth];
  sub_21CB82164();
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9658, &qword_21CBCBB80) + 36);
  sub_21CB3E584(v9, v20, v16);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E0, &qword_21CBCBBD0) + 36)];
  v22 = v34;
  *v21 = *&v33[8];
  *(v21 + 1) = v22;
  *(v21 + 4) = v35;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E8, &qword_21CBCBBD8);
  *&v20[*(v23 + 52)] = v19;
  *&v20[*(v23 + 56)] = 256;
  v24 = sub_21CB85214();
  v26 = v25;
  v27 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F0, &qword_21CBCBBE0) + 36)];
  *v27 = v24;
  v27[1] = v26;
  v28 = sub_21CB85214();
  v30 = v29;
  sub_21CB3E5EC(v9, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96A8, &unk_21CBCBBB0);
  v32 = &v20[*(result + 36)];
  *v32 = v28;
  v32[1] = v30;
  return result;
}

uint64_t sub_21CB3D394@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21CB82A84();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() *off_27831D080[a1]];
  v11 = v10;
  v12 = *(v7 + 28);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_21CB831A4();
  (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
  *v9 = v11;
  *(v9 + 1) = v11;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA90, &qword_21CBA2B48) + 36);
  v16 = MEMORY[0x277CDFC08];
  sub_21CB3E584(v9, v15, MEMORY[0x277CDFC08]);
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
  v17 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v17;
  *(a2 + 64) = *(v3 + 64);
  v18 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v18;
  v19 = objc_opt_self();
  sub_21C6EDBAC(v3, v36, &qword_27CDEBAA0, &unk_21CBA2B50);
  v20 = [v19 iconBorderColor];
  v21 = sub_21CB84A24();
  [v19 iconBorderWidth];
  sub_21CB82164();
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9638, &qword_21CBCBB60) + 36);
  sub_21CB3E584(v9, v22, v16);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E0, &qword_21CBCBBD0) + 36);
  v24 = v36[1];
  *v23 = v36[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v37;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E8, &qword_21CBCBBD8);
  *(v22 + *(v25 + 52)) = v21;
  *(v22 + *(v25 + 56)) = 256;
  v26 = sub_21CB85214();
  v28 = v27;
  v29 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F0, &qword_21CBCBBE0) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = sub_21CB85214();
  v32 = v31;
  sub_21CB3E5EC(v9, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96A8, &unk_21CBCBBB0);
  v34 = (v22 + *(result + 36));
  *v34 = v30;
  v34[1] = v32;
  return result;
}

uint64_t sub_21CB3D67C()
{
  v0 = sub_21CB813C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = sub_21CB81814();
  v8 = sub_21CB01200(v7, sub_21CB3D7B8, 0);

  v11 = v8;
  sub_21CB81394();
  sub_21CA96B80(v6, v3);
  result = (*(v1 + 8))(v6, v0);
  qword_27CDF9578 = v11;
  return result;
}

uint64_t sub_21CB3D7BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E04();
  *a1 = result;
  return result;
}

uint64_t _s17PasswordManagerUI11PMOsloBadgeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_21CB81A04();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMOsloBadge(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v31 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9770, &qword_21CBCBC70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v19 = (&v31 + *(v18 + 56) - v16);
  sub_21CB3E584(a1, &v31 - v16, type metadata accessor for PMOsloBadge);
  sub_21CB3E584(v32, v19, type metadata accessor for PMOsloBadge);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v24 = v31;
    sub_21CB3E584(v17, v14, type metadata accessor for PMOsloBadge);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v24 + 32))(v5, v19, v3);
      v23 = MEMORY[0x21CF114F0](v14, v5);
      v29 = *(v24 + 8);
      v29(v5, v3);
      v29(v14, v3);
      goto LABEL_22;
    }

    (*(v24 + 8))(v14, v3);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21CB3E584(v17, v11, type metadata accessor for PMOsloBadge);
    v21 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v19;
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v23 = sub_21CB85DD4();

LABEL_22:
      sub_21CB3E5EC(v17, type metadata accessor for PMOsloBadge);
      return v23 & 1;
    }

    goto LABEL_16;
  }

  sub_21CB3E584(v17, v8, type metadata accessor for PMOsloBadge);
  v26 = *v8;
  v25 = v8[1];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    if (v26 == *v19 && v25 == v19[1])
    {
    }

    else
    {
      v28 = sub_21CB86344();

      if ((v28 & 1) == 0)
      {
LABEL_24:

        sub_21CB3E5EC(v17, type metadata accessor for PMOsloBadge);
        goto LABEL_17;
      }
    }

    if (sub_21CB84A54())
    {
      v23 = sub_21CB84A54();

      goto LABEL_22;
    }

    goto LABEL_24;
  }

LABEL_16:
  sub_21C6EA794(v17, &qword_27CDF9770, &qword_21CBCBC70);
LABEL_17:
  v23 = 0;
  return v23 & 1;
}

void sub_21CB3DCDC(uint64_t a1)
{
  sub_21CB3DDB0(319, &qword_27CDF95A0, MEMORY[0x277CBA690]);
  if (v1 <= 0x3F)
  {
    sub_21CB3DDB0(319, &qword_27CDEE588, type metadata accessor for PMOsloBadge);
    if (v2 <= 0x3F)
    {
      sub_21C6EDA64();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CB3DDB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21CB3DE04(uint64_t a1)
{
  sub_21CB81A04();
  if (v1 <= 0x3F)
  {
    sub_21CB3DE8C();
    if (v2 <= 0x3F)
    {
      sub_21CB3DEE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21CB3DE8C()
{
  if (!qword_27CDF95B8)
  {
    v0 = sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF95B8);
    }
  }
}

void sub_21CB3DEE4()
{
  if (!qword_27CDF95C0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CDF95C0);
    }
  }
}

unint64_t sub_21CB3DF4C()
{
  result = qword_27CDF95C8;
  if (!qword_27CDF95C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9588, &qword_21CBCB9C8);
    sub_21C6EADEC(&qword_27CDF95D0, &qword_27CDF95D8, &unk_21CBCBAA0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF95C8);
  }

  return result;
}

void sub_21CB3E04C(uint64_t a1)
{
  sub_21CB813C4();
  if (v1 <= 0x3F)
  {
    sub_21CB3DDB0(319, &qword_27CDEE588, type metadata accessor for PMOsloBadge);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21CB3E108()
{
  result = qword_27CDF9678;
  if (!qword_27CDF9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9650, &qword_21CBCBB78);
    sub_21CB3E194();
    sub_21CB3E388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9678);
  }

  return result;
}

unint64_t sub_21CB3E194()
{
  result = qword_27CDF9680;
  if (!qword_27CDF9680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9660, &qword_21CBCBB88);
    sub_21CB3E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9680);
  }

  return result;
}

unint64_t sub_21CB3E218()
{
  result = qword_27CDF9688;
  if (!qword_27CDF9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9658, &qword_21CBCBB80);
    sub_21CB3E2D0();
    sub_21C6EADEC(&qword_27CDF96A0, &qword_27CDF96A8, &unk_21CBCBBB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9688);
  }

  return result;
}

unint64_t sub_21CB3E2D0()
{
  result = qword_27CDF9690;
  if (!qword_27CDF9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9698, &unk_21CBCBBA0);
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9690);
  }

  return result;
}

unint64_t sub_21CB3E388()
{
  result = qword_27CDF96B0;
  if (!qword_27CDF96B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9638, &qword_21CBCBB60);
    sub_21C7E8F5C();
    sub_21C6EADEC(&qword_27CDF96A0, &qword_27CDF96A8, &unk_21CBCBBB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF96B0);
  }

  return result;
}

unint64_t sub_21CB3E440()
{
  result = qword_27CDF96B8;
  if (!qword_27CDF96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9670, &qword_21CBCBB98);
    sub_21CB3E4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF96B8);
  }

  return result;
}

unint64_t sub_21CB3E4CC()
{
  result = qword_27CDF96C0;
  if (!qword_27CDF96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF96C8, &qword_21CBCBBC0);
    sub_21C738AA4();
    sub_21C6EADEC(&qword_27CDF96D0, &qword_27CDF96D8, &qword_21CBCBBC8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF96C0);
  }

  return result;
}

uint64_t sub_21CB3E584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB3E5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB3E64C()
{
  result = qword_27CDF9738;
  if (!qword_27CDF9738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9730, &unk_21CBCBC20);
    sub_21CB3E6D8();
    sub_21CB3E75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9738);
  }

  return result;
}

unint64_t sub_21CB3E6D8()
{
  result = qword_27CDF9740;
  if (!qword_27CDF9740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9748, &qword_21CBCBC30);
    sub_21C8FD504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9740);
  }

  return result;
}

unint64_t sub_21CB3E75C()
{
  result = qword_27CDF9750;
  if (!qword_27CDF9750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9710, &qword_21CBCBC00);
    sub_21CB3E7E8();
    sub_21CB3E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9750);
  }

  return result;
}

unint64_t sub_21CB3E7E8()
{
  result = qword_27CDF9758;
  if (!qword_27CDF9758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9760, &qword_21CBCBC38);
    sub_21C738A18();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9758);
  }

  return result;
}

unint64_t sub_21CB3E8A0()
{
  result = qword_27CDF9768;
  if (!qword_27CDF9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9700, &qword_21CBCBBF0);
    sub_21CB3E388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9768);
  }

  return result;
}

double sub_21CB3E92C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 170) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_21CB3E950()
{
  result = qword_27CDF97D0;
  if (!qword_27CDF97D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9790, &qword_21CBCBC90);
    sub_21CB3E9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97D0);
  }

  return result;
}

unint64_t sub_21CB3E9DC()
{
  result = qword_27CDF97D8;
  if (!qword_27CDF97D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9788, &qword_21CBCBC88);
    sub_21CB3EA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97D8);
  }

  return result;
}

unint64_t sub_21CB3EA68()
{
  result = qword_27CDF97E0;
  if (!qword_27CDF97E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9780, &qword_21CBCBC80);
    sub_21CB3EAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97E0);
  }

  return result;
}

unint64_t sub_21CB3EAF4()
{
  result = qword_27CDF97E8;
  if (!qword_27CDF97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9778, &qword_21CBCBC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF23D8, &unk_21CBCBD30);
    sub_21C95BFC8();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97E8);
  }

  return result;
}

uint64_t sub_21CB3EBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB3EC50()
{
  result = qword_27CDF97F0;
  if (!qword_27CDF97F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF97A8, &qword_21CBCBCA8);
    sub_21CB3ECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97F0);
  }

  return result;
}

unint64_t sub_21CB3ECDC()
{
  result = qword_27CDF97F8;
  if (!qword_27CDF97F8)
  {
    type metadata accessor for PMOsloHeaderImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF97F8);
  }

  return result;
}

unint64_t sub_21CB3ED34()
{
  result = qword_27CDF9800;
  if (!qword_27CDF9800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9608, &qword_21CBCBB30);
    sub_21CB3EDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9800);
  }

  return result;
}

unint64_t sub_21CB3EDC0()
{
  result = qword_27CDF9808;
  if (!qword_27CDF9808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF95F8, &qword_21CBCBB20);
    sub_21C6EADEC(&qword_27CDF9810, &qword_27CDF95F0, &qword_21CBCBB18, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9808);
  }

  return result;
}

uint64_t sub_21CB3EEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v27 = sub_21CB83E74();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;
  sub_21C71F3FC();

  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  LODWORD(v29) = sub_21CB837E4();
  v13 = sub_21CB83FC4();
  v15 = v14;
  v17 = v16;
  sub_21C74A72C(v8, v10, v12 & 1);

  sub_21CB83EB4();
  v18 = v27;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v27);
  sub_21CB83EA4();

  (*(v5 + 8))(v7, v18);
  v19 = sub_21CB84024();
  v21 = v20;
  LOBYTE(v7) = v22;
  v24 = v23;

  sub_21C74A72C(v13, v15, v17 & 1);

  v26 = v28;
  *v28 = v19;
  v26[1] = v21;
  *(v26 + 16) = v7 & 1;
  v26[3] = v24;
  return result;
}

uint64_t sub_21CB3F0BC@<X0>(uint64_t a1@<X8>)
{
  sub_21CB85054();
  v2 = sub_21CB83D44();
  sub_21CB81F24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9818, &qword_21CBCBDD0);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

unint64_t sub_21CB3F180()
{
  result = qword_27CDF9820;
  if (!qword_27CDF9820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9818, &qword_21CBCBDD0);
    sub_21CB3F20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9820);
  }

  return result;
}

unint64_t sub_21CB3F20C()
{
  result = qword_27CDF9828;
  if (!qword_27CDF9828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9830, &qword_21CBCBDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9828);
  }

  return result;
}

uint64_t type metadata accessor for PMAdapativeStackLabeledContentStyle(uint64_t a1)
{
  result = qword_27CDF9838;
  if (!qword_27CDF9838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB3F308(uint64_t a1)
{
  sub_21C72C81C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CB3F3A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_21CB82834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  sub_21C7448E0(v9);
  v10 = sub_21CB82824();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v14 = sub_21CB832F4();
    v15 = 0x4000000000000000;
    v16 = 0;
    sub_21CB3FB20();
  }

  else
  {
    v14 = *v3;
    v15 = 0;
    v16 = 1;
    sub_21CB3FACC();
  }

  *a2 = sub_21CB85274();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9850, &qword_21CBCBE40);
  return sub_21CB3F520(a1, v3, a2 + *(v11 + 44));
}

uint64_t sub_21CB3F520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = sub_21CB83B84();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9860, &qword_21CBCBE48);
  MEMORY[0x28223BE20](v50);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  MEMORY[0x28223BE20](v10);
  v55 = &v44 - v11;
  v12 = sub_21CB82834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21CB83B94();
  v16 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9868, &qword_21CBCBE50);
  MEMORY[0x28223BE20](v45);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v23);
  v47 = &v44 - v24;
  v51 = a1;
  sub_21CB83BA4();
  if (*(a2 + 8))
  {
    v25 = 0;
    LOBYTE(v26) = 1;
  }

  else
  {
    type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
    sub_21C7448E0(v15);
    v26 = sub_21CB82824();
    (*(v13 + 8))(v15, v12);
    v25 = ~v26 & 1;
  }

  KeyPath = swift_getKeyPath(aH_115);
  (*(v16 + 32))(v22, v18, v46);
  v28 = &v22[*(v45 + 36)];
  *v28 = KeyPath;
  *(v28 + 1) = v25;
  v28[16] = v26 & 1;
  v29 = v47;
  sub_21C716934(v22, v47, &qword_27CDF9868, &qword_21CBCBE50);
  type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  sub_21C7448E0(v15);
  v30 = sub_21CB82824();
  v31 = *(v13 + 8);
  v31(v15, v12);
  LODWORD(v46) = (v30 & 1) == 0;
  v32 = v52;
  sub_21CB83BB4();
  sub_21C7448E0(v15);
  v33 = sub_21CB82824();
  v31(v15, v12);
  v34 = swift_getKeyPath(aH_115);
  v35 = v49;
  (*(v53 + 32))(v49, v32, v54);
  v36 = v35 + *(v50 + 36);
  *v36 = v34;
  *(v36 + 8) = (v33 & 1) == 0;
  *(v36 + 16) = v33 & 1;
  v37 = v55;
  sub_21C716934(v35, v55, &qword_27CDF9860, &qword_21CBCBE48);
  v38 = v48;
  sub_21C6EDBAC(v29, v48, &qword_27CDF9868, &qword_21CBCBE50);
  v39 = v56;
  sub_21C6EDBAC(v37, v56, &qword_27CDF9860, &qword_21CBCBE48);
  v40 = v57;
  sub_21C6EDBAC(v38, v57, &qword_27CDF9868, &qword_21CBCBE50);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9870, &qword_21CBCBE88);
  v42 = v40 + *(v41 + 48);
  *v42 = 0;
  *(v42 + 8) = v46;
  *(v42 + 9) = v30 & 1;
  sub_21C6EDBAC(v39, v40 + *(v41 + 64), &qword_27CDF9860, &qword_21CBCBE48);
  sub_21C6EA794(v37, &qword_27CDF9860, &qword_21CBCBE48);
  sub_21C6EA794(v29, &qword_27CDF9868, &qword_21CBCBE50);
  sub_21C6EA794(v39, &qword_27CDF9860, &qword_21CBCBE48);
  return sub_21C6EA794(v38, &qword_27CDF9868, &qword_21CBCBE50);
}

unint64_t sub_21CB3FACC()
{
  result = qword_27CDF9848;
  if (!qword_27CDF9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9848);
  }

  return result;
}

unint64_t sub_21CB3FB20()
{
  result = qword_27CDF9858;
  if (!qword_27CDF9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9858);
  }

  return result;
}

unint64_t sub_21CB3FB74()
{
  result = qword_27CDF9878;
  if (!qword_27CDF9878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9850, &qword_21CBCBE40);
    sub_21C6EADEC(&qword_27CDF9880, &qword_27CDF9888, &qword_21CBCBE90, MEMORY[0x277CDF510]);
    sub_21C6EADEC(&qword_27CDF9890, &qword_27CDF9898, &qword_21CBCBE98, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9878);
  }

  return result;
}

uint64_t sub_21CB3FC5C(unsigned __int8 a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_21CB81014();
  if (a1 > 1u)
  {
    v9 = sub_21CB81004();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_21CB81014();
    v9 = sub_21CB80FF4();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
  }

  return v9;
}

unint64_t sub_21CB3FE88@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C713C64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_21CB3FED4()
{
  result = qword_27CDF98A0;
  if (!qword_27CDF98A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEB80, &qword_21CBAABC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF98A0);
  }

  return result;
}

uint64_t sub_21CB3FF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82804();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C7316D8(*v2, *(v2 + 8)))
  {
    sub_21CB827F4();
  }

  else
  {
    sub_21CB827E4();
  }

  KeyPath = swift_getKeyPath(asc_21CBCC0A8);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98A8, &qword_21CBCC0D8) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98B0, &qword_21CBCC0E0);
  (*(v6 + 32))(v10 + *(v11 + 28), v8, v5);
  *v10 = KeyPath;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98B8, &qword_21CBCC0E8);
  return (*(*(v12 - 8) + 16))(a2, a1, v12);
}

uint64_t sub_21CB400EC(uint64_t a1)
{
  v2 = sub_21CB82804();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82C74();
}

unint64_t sub_21CB401B4()
{
  result = qword_27CDF98C0;
  if (!qword_27CDF98C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF98A8, &qword_21CBCC0D8);
    sub_21C6EADEC(&qword_27CDF98C8, &qword_27CDF98B8, &qword_21CBCC0E8, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&qword_27CDF98D0, &qword_27CDF98B0, &qword_21CBCC0E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF98C0);
  }

  return result;
}

uint64_t sub_21CB40298(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = type metadata accessor for PMAppSourceListModel.Source(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  *&v22 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v23 = &v37 - v20;
  v24 = *a1;
  v25 = *a4;
  if (v24 != 1)
  {
    v41 = v21;
    v38 = v11;
    swift_getKeyPath(byte_21CBCC3D0, v22);
    v42 = v25;
    sub_21C7062A0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810D4();

    v26 = a5;
    v27 = v8;
    v28 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
    swift_beginAccess();
    sub_21C744908(v26, v18, type metadata accessor for PMAppSourceListModel.Source);
    v39 = *(v9 + 56);
    v40 = v9 + 56;
    v39(v18, 0, 1, v27);
    v29 = *(v12 + 48);
    v30 = v25 + v28;
    v31 = v27;
    sub_21C6EDBAC(v30, v14, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EDBAC(v18, &v14[v29], &qword_27CDEAC20, &qword_21CBAD710);
    v32 = *(v9 + 48);
    if (v32(v14, 1, v27) == 1)
    {
      sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
      if (v32(&v14[v29], 1, v27) == 1)
      {
        sub_21C6EA794(v14, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
        v39(v23, 1, 1, v31);
        return sub_21C742C88(v23);
      }
    }

    else
    {
      v33 = v41;
      sub_21C6EDBAC(v14, v41, &qword_27CDEAC20, &qword_21CBAD710);
      if (v32(&v14[v29], 1, v31) != 1)
      {
        v35 = v38;
        sub_21C744970(&v14[v29], v38, type metadata accessor for PMAppSourceListModel.Source);
        v36 = sub_21C918FE4(v33, v35);
        sub_21C7463DC(v35);
        sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
        sub_21C7463DC(v33);
        result = sub_21C6EA794(v14, &qword_27CDEAC20, &qword_21CBAD710);
        if ((v36 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C7463DC(v33);
    }

    return sub_21C6EA794(v14, &unk_27CDED310, &unk_21CBA0150);
  }

  sub_21C744908(a5, &v37 - v20, type metadata accessor for PMAppSourceListModel.Source);
  (*(v9 + 56))(v23, 0, 1, v8);
  return sub_21C742C88(v23);
}

uint64_t sub_21CB40750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821305F8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_21CB4087C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF98F8, qword_21CBCC810);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C6EDBAC(a1, &v5 - v3, qword_27CDF98F8, qword_21CBCC810);
  return sub_21CB82D54();
}

uint64_t sub_21CB4094C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for PMSourceGrid(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAppSourceListModel.Source(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21CB40298(a1, v7, v8, (v1 + v4), v9);
}

uint64_t sub_21CB40A44()
{
  sub_21C741570();
  sub_21CB82F94();
  return v1;
}

uint64_t sub_21CB40A90()
{
  [objc_opt_self() defaultStrongPasswordLength];
  result = sub_21CB85784();
  qword_27CE18768 = result;
  unk_27CE18770 = v1;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CB40AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_21CB40B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB40BB4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_21CB82F84();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AA0, &qword_21CBCC798);
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AA8, &qword_21CBCC7A0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AB0, &qword_21CBCC7A8);
  MEMORY[0x28223BE20](v44);
  v48 = &v39 - v10;
  v49 = v1;
  v11 = *(v1 + 16);
  v45 = v9;
  if (v11)
  {
    if (qword_27CDEA4B8 != -1)
    {
      swift_once();
    }

    v12 = &qword_27CE18768;
  }

  else
  {
    v12 = v1;
  }

  v13 = *v12;

  v53 = v13;
  v54 = v14;
  sub_21C71F3FC();
  v15 = sub_21CB84054();
  v17 = v16;
  v53 = v15;
  v54 = v16;
  v19 = v18 & 1;
  v55 = v18 & 1;
  v56 = v20;
  v21 = MEMORY[0x277CE0BD8];
  v22 = MEMORY[0x277CE0BC8];
  sub_21CB843B4();
  sub_21C74A72C(v15, v17, v19);

  v53 = v21;
  v54 = v22;
  v23 = 1;
  swift_getOpaqueTypeConformance2();
  v24 = v45;
  v25 = v43;
  sub_21CB844B4();
  (*(v4 + 8))(v6, v25);
  if (v11)
  {
    v26 = 0;
    v27 = v49;
  }

  else
  {
    v27 = v49;
    LOWORD(v54) = *(v49 + 32);
    v23 = *(v49 + 24);
    v53 = v23;
    if (BYTE1(v54) == 1)
    {
      v26 = v54;
    }

    else
    {

      sub_21CB85B04();
      v28 = sub_21CB83C94();
      sub_21CB81C14();

      v29 = v40;
      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21CB4108C(&v53);
      (*(v41 + 8))(v29, v42);
      v23 = v51;
      v26 = v52;
    }
  }

  KeyPath = swift_getKeyPath(a8_47);
  v31 = v48;
  (*(v46 + 32))(v48, v24, v47);
  v32 = v31 + *(v44 + 36);
  *v32 = KeyPath;
  *(v32 + 8) = v23;
  *(v32 + 16) = v26 & 1;
  v33 = *(v27 + 17);
  sub_21CB855C4();
  v34 = [objc_opt_self() pm_defaults];
  v35 = sub_21CB81E74();
  v36 = v50;
  sub_21C78C088(v31, v50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AC0, &unk_21CBCC7E8);
  v38 = v36 + *(result + 36);
  *v38 = v35;
  *(v38 + 8) = v33;
  return result;
}

uint64_t sub_21CB4108C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AB8, &qword_21CBCC7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CB410F4()
{
  result = qword_27CDF9AC8;
  if (!qword_27CDF9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9AC0, &unk_21CBCC7E8);
    sub_21CB41180();
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9AC8);
  }

  return result;
}

unint64_t sub_21CB41180()
{
  result = qword_27CDF9AD0;
  if (!qword_27CDF9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9AB0, &qword_21CBCC7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9AA0, &qword_21CBCC798);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CB41278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9AD0);
  }

  return result;
}

unint64_t sub_21CB41278()
{
  result = qword_27CDEB900;
  if (!qword_27CDEB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB900);
  }

  return result;
}

uint64_t sub_21CB41338@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v73 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B88, &qword_21CBCC890);
  MEMORY[0x28223BE20](v75);
  v74 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  *&v96 = sub_21CB828F4();
  *(&v96 + 1) = MEMORY[0x277CE1180];
  *&v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B78, &qword_21CBCC880);
  *(&v97 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B80, &qword_21CBCC888);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  v10 = sub_21CB84E14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  v76 = a2;
  v77 = v72;
  v78 = a1;
  sub_21CB83074();
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  v71 = v16;
  v68 = WitnessTable;
  sub_21C72BE10(v13, v10, WitnessTable);
  v67 = v11;
  v69 = *(v11 + 8);
  v70 = v11 + 8;
  v69(v13, v10);
  v66 = a1;
  v18 = a1[1];
  *&v96 = *a1;
  *(&v96 + 1) = v18;
  sub_21C71F3FC();

  v19 = sub_21CB84054();
  v21 = v20;
  *&v96 = v19;
  *(&v96 + 1) = v20;
  LOBYTE(v16) = v22 & 1;
  LOBYTE(v97) = v22 & 1;
  *(&v97 + 1) = v23;
  sub_21CB84624();
  sub_21C74A72C(v19, v21, v16);

  LOBYTE(v18) = sub_21CB83D14();
  sub_21CB81F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9BE0, &qword_21CBCC8D8) + 36)];
  *v32 = v18;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  KeyPath = swift_getKeyPath(byte_21CBCC8E0);
  v34 = *(v75 + 36);
  v72 = v9;
  v35 = &v9[v34];
  *v35 = KeyPath;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = v66[3];
  if (v36)
  {
    *&v96 = v66[2];
    *(&v96 + 1) = v36;

    v37 = sub_21CB84054();
    v39 = v38;
    v41 = v40;
    sub_21CB83E94();
    v42 = sub_21CB84024();
    v65 = v43;
    v66 = v42;
    v45 = v44;
    v47 = v46;

    sub_21C74A72C(v37, v39, v41 & 1);

    LOBYTE(v37) = sub_21CB83D14();
    sub_21CB81F24();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    LOBYTE(v96) = v47 & 1;
    LOBYTE(v94[0]) = 0;
    LODWORD(v39) = sub_21CB837E4();
    v56 = swift_getKeyPath(byte_21CBCC8E0);
    v57 = 1;
    *&v96 = v66;
    *(&v96 + 1) = v45;
    LOBYTE(v97) = v47 & 1;
    *(&v97 + 1) = v65;
    LOBYTE(v98) = v37;
    *(&v98 + 1) = v49;
    *&v99 = v51;
    *(&v99 + 1) = v53;
    *&v100 = v55;
    BYTE8(v100) = 0;
    HIDWORD(v100) = v39;
    v101 = v56;
  }

  else
  {
    v57 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
  }

  v102 = v57;
  v58 = v71;
  (*(v67 + 16))(v13, v71, v10);
  v91 = 0;
  v92 = 0;
  v93[0] = v13;
  v93[1] = &v91;
  v59 = v72;
  v60 = v74;
  sub_21C6EDBAC(v72, v74, &qword_27CDF9B88, &qword_21CBCC890);
  v88 = v100;
  v89 = v101;
  v90 = v102;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v93[2] = v60;
  v93[3] = &v84;
  sub_21C6EDBAC(&v96, v94, &qword_27CDF9B90, &qword_21CBCC898);
  v83[0] = v10;
  v83[1] = MEMORY[0x277CE1180];
  v83[2] = v75;
  v83[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B90, &qword_21CBCC898);
  v79 = v68;
  v80 = MEMORY[0x277CE1170];
  v81 = sub_21C74A73C();
  v82 = sub_21C74A1D4(&qword_27CDF9BF8, &qword_27CDF9B90, &qword_21CBCC898, sub_21C74A8B0);
  sub_21C74A55C(v93, 4uLL, v83);
  sub_21C6EA794(&v96, &qword_27CDF9B90, &qword_21CBCC898);
  sub_21C6EA794(v59, &qword_27CDF9B88, &qword_21CBCC890);
  v61 = v58;
  v62 = v69;
  v69(v61, v10);
  v94[4] = v88;
  v94[5] = v89;
  v95 = v90;
  v94[0] = v84;
  v94[1] = v85;
  v94[2] = v86;
  v94[3] = v87;
  sub_21C6EA794(v94, &qword_27CDF9B90, &qword_21CBCC898);
  sub_21C6EA794(v60, &qword_27CDF9B88, &qword_21CBCC890);
  return v62(v13, v10);
}

uint64_t sub_21CB41A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v98 = a4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C20, &qword_21CBCC920);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v83 = v81 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B80, &qword_21CBCC888);
  MEMORY[0x28223BE20](v95);
  v97 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = v81 - v9;
  v10 = sub_21CB83124();
  MEMORY[0x28223BE20](v10 - 8);
  v81[1] = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C28, &qword_21CBCC928);
  v89 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v82 = v81 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9B78, &qword_21CBCC880);
  MEMORY[0x28223BE20](v91);
  v93 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = v81 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  v88 = sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  v90 = sub_21CB828F4();
  sub_21CB83B74();
  v16 = sub_21CB828F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v81 - v18;
  v20 = sub_21CB828F4();
  v100 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v81 - v24;
  v81[0] = type metadata accessor for PMSourceTile(0, a2, a3, v26);
  sub_21C749784(v81[0], v19);
  sub_21CB83D14();
  v27 = sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
  v124 = a3;
  v125 = v27;
  WitnessTable = swift_getWitnessTable();
  v29 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
  v122 = WitnessTable;
  v123 = v29;
  v120 = swift_getWitnessTable();
  v121 = MEMORY[0x277CDF678];
  v30 = swift_getWitnessTable();
  v31 = sub_21C6EADEC(&qword_27CDF9C30, &qword_27CDF9B70, &qword_21CBCC878, MEMORY[0x277CE0328]);
  v118 = v30;
  v119 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_21C74422C(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v116 = v32;
  v117 = v33;
  v34 = swift_getWitnessTable();
  sub_21CB84884();
  v35 = v19;
  v36 = v102;
  (*(v17 + 8))(v35, v16);
  v114 = v34;
  v115 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  v88 = v25;
  v85 = v37;
  sub_21C72BE10(v22, v20, v37);
  v38 = *(v100 + 8);
  v90 = v22;
  v84 = v20;
  v87 = v100 + 8;
  v86 = v38;
  v38(v22, v20);
  if (*(v36 + 40) & 1) != 0 || (*(v36 + 56))
  {
    v39 = 1;
    v40 = v96;
    v41 = v94;
    v42 = v101;
  }

  else
  {
    v43 = *(v36 + 32);
    sub_21CB83114();
    sub_21CB83104();
    v110 = v43;
    sub_21CB830E4();
    sub_21CB83104();
    sub_21CB83144();
    v44 = sub_21CB84034();
    v46 = v45;
    v48 = v47;
    v110 = sub_21CB426E0(v81[0], MEMORY[0x277CE0F50]);
    v49 = sub_21CB83FC4();
    v51 = v50;
    v53 = v52;
    sub_21C74A72C(v44, v46, v48 & 1);

    v110 = sub_21C74F120(v43);
    v111 = v54;
    sub_21C71F3FC();
    v55 = sub_21CB83FE4();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_21C74A72C(v49, v51, v53 & 1);

    v62 = sub_21CB85254();
    v63 = v82;
    v64 = &v82[*(v99 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940);
    sub_21CB82B14();
    *v64 = swift_getKeyPath(byte_21CBCC980);
    *v63 = v55;
    *(v63 + 8) = v57;
    *(v63 + 16) = v59 & 1;
    *(v63 + 24) = v61;
    *(v63 + 32) = v62;
    v36 = v102;
    *(v63 + 40) = v43;
    v42 = v101;
    sub_21C716934(v63, v101, &qword_27CDF9C28, &qword_21CBCC928);
    v39 = 0;
    v40 = v96;
    v41 = v94;
  }

  (*(v89 + 56))(v42, v39, 1, v99);
  v65 = 1;
  if (*(v36 + 56) == 1)
  {
    v66 = v83;
    sub_21CB82234();
    v67 = sub_21CB837E4();
    *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C70, &qword_21CBCC948) + 36)) = v67;
    v68 = v42;
    v69 = (v66 + *(v41 + 36));
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v71 = *MEMORY[0x277CDF440];
    v72 = sub_21CB82064();
    (*(*(v72 - 8) + 104))(&v69[v70], v71, v72);
    *v69 = swift_getKeyPath(a8_48);
    v42 = v68;
    sub_21C716934(v66, v40, &qword_27CDF9C20, &qword_21CBCC920);
    v65 = 0;
  }

  (*(v92 + 56))(v40, v65, 1, v41);
  v73 = v90;
  v74 = v88;
  v75 = v84;
  (*(v100 + 16))(v90, v88, v84);
  v108 = 0;
  v109 = 1;
  v110 = v73;
  v111 = &v108;
  v76 = v93;
  sub_21C6EDBAC(v42, v93, &qword_27CDF9B78, &qword_21CBCC880);
  v112 = v76;
  v77 = v97;
  sub_21C6EDBAC(v40, v97, &qword_27CDF9B80, &qword_21CBCC888);
  v113 = v77;
  v107[0] = v75;
  v107[1] = MEMORY[0x277CE1180];
  v107[2] = v91;
  v107[3] = v95;
  v103 = v85;
  v104 = MEMORY[0x277CE1170];
  v105 = sub_21C74A1D4(&qword_27CDF9C38, &qword_27CDF9B78, &qword_21CBCC880, sub_21C74A308);
  v106 = sub_21C74A1D4(&qword_27CDF9C58, &qword_27CDF9B80, &qword_21CBCC888, sub_21C74A4A4);
  sub_21C74A55C(&v110, 4uLL, v107);
  sub_21C6EA794(v40, &qword_27CDF9B80, &qword_21CBCC888);
  sub_21C6EA794(v101, &qword_27CDF9B78, &qword_21CBCC880);
  v78 = v74;
  v79 = v86;
  v86(v78, v75);
  sub_21C6EA794(v77, &qword_27CDF9B80, &qword_21CBCC888);
  sub_21C6EA794(v76, &qword_27CDF9B78, &qword_21CBCC880);
  return v79(v73, v75);
}

uint64_t sub_21CB426E0(uint64_t a1, uint64_t (*a2)(void))
{
  if (sub_21C749ED4(a1))
  {

    return sub_21CB84AD4();
  }

  else
  {

    return a2();
  }
}

unint64_t sub_21CB427E0()
{
  result = qword_27CDF9BF0;
  if (!qword_27CDF9BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9BE0, &qword_21CBCC8D8);
    sub_21C74A7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9BF0);
  }

  return result;
}

uint64_t sub_21CB4286C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21CB428B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB42980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9C80, &qword_21CBCCAD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB83774();
  sub_21C6EADEC(&qword_27CDF9C88, &qword_27CDF9C80, &qword_21CBCCAD0, MEMORY[0x277CDE158]);
  sub_21CB842D4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21CB42B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = sub_21CB83ED4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[2] = a1;
  v26[3] = a2;
  sub_21C71F3FC();

  v13 = sub_21CB84054();
  v15 = v14;
  v17 = v16;
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A80], v9);
  v18 = sub_21CB83DC4();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_21CB83E24();
  sub_21C9E1150(v8);
  (*(v10 + 8))(v12, v9);
  v19 = sub_21CB84024();
  v21 = v20;
  LOBYTE(v12) = v22;
  v24 = v23;

  sub_21C74A72C(v13, v15, v17 & 1);

  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v12 & 1;
  *(a3 + 24) = v24;
  return result;
}

uint64_t sub_21CB42DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21CB42DF0@<X0>(uint64_t (**a1)()@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_21CB42E5C;
  a1[1] = v5;
}

uint64_t sub_21CB42EE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D40, &qword_21CBCCC08);
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v47 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D48, &qword_21CBCCC10);
  v60 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v47 - v4;
  v57 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v57);
  v66 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D50, &qword_21CBCCC18);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v47 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D58, &qword_21CBCCC20);
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v47 - v7;
  v8 = sub_21CB85C44();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D60, &qword_21CBCCC28);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v47 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D68, &qword_21CBCCC30);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v47 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D70, &qword_21CBCCC38);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v47 - v13;
  v15 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D78, &qword_21CBCCC40);
  v19 = *(v18 - 8);
  v73 = v18;
  v74 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB4515C();
  v22 = v21;
  sub_21CB864F4();
  sub_21CB450F4(v72, v17, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v79 = 4;
        sub_21CB452C0();
        v46 = v55;
        v24 = v73;
        sub_21CB862A4();
        v25 = *(v56 + 8);
        v26 = v46;
        v45 = v58;
        goto LABEL_16;
      }

      v77 = 2;
      sub_21CB45368();
      v39 = v52;
      v24 = v73;
      sub_21CB862A4();
      v25 = *(v53 + 8);
      v26 = v39;
      v27 = &v84;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v75 = 0;
      sub_21CB45410();
      v24 = v73;
      sub_21CB862A4();
      v25 = *(v48 + 8);
      v26 = v14;
      v27 = &v82;
    }

    else
    {
      v76 = 1;
      sub_21CB453BC();
      v24 = v73;
      sub_21CB862A4();
      v25 = *(v50 + 8);
      v26 = v12;
      v27 = &v83;
    }

    v45 = *(v27 - 32);
LABEL_16:
    v25(v26, v45);
    return (*(v74 + 8))(v21, v24);
  }

  v28 = v64;
  v29 = v65;
  v30 = v67;
  v31 = v68;
  v32 = v69;
  v33 = v70;
  v34 = v71;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v66;
      sub_21CB45204(v17, v66, type metadata accessor for PMRecentlyDeletedAccountsSource);
      v80 = 5;
      sub_21CB4526C();
      v36 = v30;
      v37 = v73;
      sub_21CB862A4();
      sub_21CB45B50(&qword_27CDF9D80, type metadata accessor for PMRecentlyDeletedAccountsSource, &unk_21CBC6F48);
      sub_21CB862C4();
      (*(v60 + 8))(v36, v31);
      sub_21CB45AF0(v35, type metadata accessor for PMRecentlyDeletedAccountsSource);
      return (*(v74 + 8))(v22, v37);
    }

    else
    {
      v81 = 6;
      sub_21CB451B0();
      v44 = v73;
      sub_21CB862A4();
      sub_21CB862B4();

      (*(v33 + 8))(v32, v34);
      return (*(v74 + 8))(v22, v44);
    }
  }

  else
  {
    v40 = v62;
    v41 = v61;
    v42 = v63;
    (*(v62 + 32))(v61, v17, v63);
    v78 = 3;
    sub_21CB45314();
    v43 = v73;
    sub_21CB862A4();
    sub_21CB45B50(&qword_27CDF7DC8, MEMORY[0x277D49978], MEMORY[0x277D49980]);
    sub_21CB862C4();
    (*(v59 + 8))(v28, v29);
    (*(v40 + 8))(v41, v42);
    return (*(v74 + 8))(v22, v43);
  }
}

uint64_t sub_21CB43920(uint64_t a1)
{
  v2 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB450F4(v1, v14, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_21CB45204(v14, v7, type metadata accessor for PMRecentlyDeletedAccountsSource);
        MEMORY[0x21CF15F90](5);
        sub_21CB450F4(v7, v4, type metadata accessor for PMRecentlyDeletedAccountsSource);
        v17 = (*(v9 + 48))(v4, 2, v8);
        if (v17)
        {
          MEMORY[0x21CF15F90](v17 != 1);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          MEMORY[0x21CF15F90](2);
          sub_21CB45B50(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
          sub_21CB85494();
          (*(v9 + 8))(v11, v8);
        }

        return sub_21CB45AF0(v7, type metadata accessor for PMRecentlyDeletedAccountsSource);
      }

      else
      {
        MEMORY[0x21CF15F90](6);
        sub_21CB854C4();
      }
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
      MEMORY[0x21CF15F90](3);
      sub_21CB45B50(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      sub_21CB85494();
      return (*(v9 + 8))(v11, v8);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return MEMORY[0x21CF15F90](2);
    }

    else
    {
      return MEMORY[0x21CF15F90](4);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x21CF15F90](0);
  }

  else
  {
    return MEMORY[0x21CF15F90](1);
  }
}

uint64_t sub_21CB43CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CB8, &qword_21CBCCBC0);
  v79 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v89 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CC0, &qword_21CBCCBC8);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v61 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CC8, &qword_21CBCCBD0);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v81 = &v61 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CD0, &qword_21CBCCBD8);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v80 = &v61 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CD8, &qword_21CBCCBE0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v88 = &v61 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CE0, &qword_21CBCCBE8);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v87 = &v61 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CE8, &qword_21CBCCBF0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v85 = &v61 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9CF0, &qword_21CBCCBF8);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v12 = &v61 - v11;
  v13 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v25 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_21CB4515C();
  v26 = v91;
  sub_21CB864E4();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0(v90);
  }

  v27 = v85;
  v62 = v15;
  v63 = v21;
  v64 = v18;
  v28 = v87;
  v29 = v88;
  v30 = v89;
  v91 = v13;
  v65 = v24;
  v31 = v84;
  v32 = v86;
  v33 = sub_21CB86294();
  v34 = (2 * *(v33 + 16)) | 1;
  v92 = v33;
  v93 = v33 + 32;
  v94 = 0;
  v95 = v34;
  v35 = sub_21CADE0C4();
  v36 = v32;
  if (v35 == 7 || v94 != v95 >> 1)
  {
    v40 = sub_21CB86104();
    v41 = v32;
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D80, &qword_21CBCCC00);
    *v43 = v91;
    sub_21CB86264();
    sub_21CB860F4();
    (*(*(v40 - 8) + 104))(v43, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v31 + 8))(v12, v41);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v90);
  }

  if (v35 <= 2u)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        v96 = 1;
        sub_21CB453BC();
        sub_21CB86254();
        (*(v69 + 8))(v28, v68);
      }

      else
      {
        v96 = 2;
        sub_21CB45368();
        sub_21CB86254();
        (*(v70 + 8))(v29, v71);
      }

      (*(v31 + 8))(v12, v32);
      swift_unknownObjectRelease();
      v45 = v65;
    }

    else
    {
      v96 = 0;
      sub_21CB45410();
      sub_21CB86254();
      (*(v66 + 8))(v27, v67);
      (*(v31 + 8))(v12, v32);
      swift_unknownObjectRelease();
      v45 = v65;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  if (v35 > 4u)
  {
    v46 = v83;
    if (v35 == 5)
    {
      v96 = 5;
      sub_21CB4526C();
      v47 = v82;
      sub_21CB86254();
      type metadata accessor for PMRecentlyDeletedAccountsSource(0);
      sub_21CB45B50(&qword_27CDF9D10, type metadata accessor for PMRecentlyDeletedAccountsSource, &unk_21CBC6F70);
      v54 = v64;
      v48 = v78;
      sub_21CB86284();
      (*(v77 + 8))(v47, v48);
      (*(v31 + 8))(v12, v32);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    v96 = 6;
    sub_21CB451B0();
    v50 = v32;
    sub_21CB86254();
    v51 = v76;
    v52 = sub_21CB86274();
    v53 = v30;
    v58 = v57;
    (*(v79 + 8))(v53, v51);
    (*(v31 + 8))(v12, v50);
    swift_unknownObjectRelease();
    v59 = v62;
    *v62 = v52;
    v59[1] = v58;
    swift_storeEnumTagMultiPayload();
    v60 = v59;
    v45 = v65;
    sub_21CB45204(v60, v65, type metadata accessor for PMSystemSettingsNavigationDestination);
    v56 = v90;
    v37 = v46;
  }

  else
  {
    v37 = v83;
    v38 = v31;
    if (v35 == 3)
    {
      v96 = 3;
      sub_21CB45314();
      v39 = v80;
      sub_21CB86254();
      sub_21CB85C44();
      sub_21CB45B50(&qword_27CDF7D90, MEMORY[0x277D49978], MEMORY[0x277D499A0]);
      v54 = v63;
      v55 = v73;
      sub_21CB86284();
      (*(v75 + 8))(v39, v55);
      (*(v38 + 8))(v12, v32);
      swift_unknownObjectRelease();
LABEL_23:
      swift_storeEnumTagMultiPayload();
      v45 = v65;
      sub_21CB45204(v54, v65, type metadata accessor for PMSystemSettingsNavigationDestination);
LABEL_21:
      v56 = v90;
      v37 = v83;
      goto LABEL_22;
    }

    v96 = 4;
    sub_21CB452C0();
    v49 = v81;
    sub_21CB86254();
    (*(v72 + 8))(v49, v74);
    (*(v31 + 8))(v12, v36);
    swift_unknownObjectRelease();
    v45 = v65;
    swift_storeEnumTagMultiPayload();
    v56 = v90;
  }

LABEL_22:
  sub_21CB45204(v45, v37, type metadata accessor for PMSystemSettingsNavigationDestination);
  return __swift_destroy_boxed_opaque_existential_0(v56);
}

uint64_t sub_21CB44AFC(uint64_t a1)
{
  v2 = sub_21CB451B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44B38(uint64_t a1)
{
  v2 = sub_21CB451B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44B74()
{
  v1 = *v0;
  v2 = 0x64726F7773736170;
  v3 = 0x796C746E65636572;
  if (v1 != 5)
  {
    v3 = 0x44746E756F636361;
  }

  v4 = 0x70756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0x6F7773736150796DLL;
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

uint64_t sub_21CB44C7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CB46438(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CB44CB0(uint64_t a1)
{
  v2 = sub_21CB4515C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44CEC(uint64_t a1)
{
  v2 = sub_21CB4515C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44D28(uint64_t a1)
{
  v2 = sub_21CB45314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44D64(uint64_t a1)
{
  v2 = sub_21CB45314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44DA0(uint64_t a1)
{
  v2 = sub_21CB452C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44DDC(uint64_t a1)
{
  v2 = sub_21CB452C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44E18(uint64_t a1)
{
  v2 = sub_21CB45368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44E54(uint64_t a1)
{
  v2 = sub_21CB45368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44E90(uint64_t a1)
{
  v2 = sub_21CB45410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44ECC(uint64_t a1)
{
  v2 = sub_21CB45410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44F08(uint64_t a1)
{
  v2 = sub_21CB4526C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44F44(uint64_t a1)
{
  v2 = sub_21CB4526C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44F80(uint64_t a1)
{
  v2 = sub_21CB453BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB44FBC(uint64_t a1)
{
  v2 = sub_21CB453BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CB44FF8()
{
  sub_21CB86484();
  sub_21CB43920(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CB4503C(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB43920(v2);
  return sub_21CB864D4();
}

uint64_t sub_21CB450F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB4515C()
{
  result = qword_27CDF9CF8;
  if (!qword_27CDF9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9CF8);
  }

  return result;
}

unint64_t sub_21CB451B0()
{
  result = qword_27CDF9D00;
  if (!qword_27CDF9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D00);
  }

  return result;
}

uint64_t sub_21CB45204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB4526C()
{
  result = qword_27CDF9D08;
  if (!qword_27CDF9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D08);
  }

  return result;
}

unint64_t sub_21CB452C0()
{
  result = qword_27CDF9D18;
  if (!qword_27CDF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D18);
  }

  return result;
}

unint64_t sub_21CB45314()
{
  result = qword_27CDF9D20;
  if (!qword_27CDF9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D20);
  }

  return result;
}

unint64_t sub_21CB45368()
{
  result = qword_27CDF9D28;
  if (!qword_27CDF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D28);
  }

  return result;
}

unint64_t sub_21CB453BC()
{
  result = qword_27CDF9D30;
  if (!qword_27CDF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D30);
  }

  return result;
}

unint64_t sub_21CB45410()
{
  result = qword_27CDF9D38;
  if (!qword_27CDF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D38);
  }

  return result;
}

uint64_t sub_21CB45464(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85C44();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D88, &qword_21CBCCC48);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v37 + *(v20 + 56) - v19);
  v22 = a1;
  v23 = &v37 - v19;
  sub_21CB450F4(v22, &v37 - v19, type metadata accessor for PMSystemSettingsNavigationDestination);
  sub_21CB450F4(v38, v21, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_34;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_34;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_34;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v25 = v37;
  if (!EnumCaseMultiPayload)
  {
    sub_21CB450F4(v23, v17, type metadata accessor for PMSystemSettingsNavigationDestination);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v25 + 8))(v17, v6);
LABEL_28:
      sub_21CB45A88(v23);
      goto LABEL_29;
    }

    v31 = v25;
    (*(v25 + 32))(v8, v21, v6);
    sub_21CB45B50(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v41 == v39 && v42 == v40)
    {
      v32 = *(v25 + 8);
      v32(v8, v6);

      v32(v17, v6);
    }

    else
    {
      v35 = sub_21CB86344();
      v36 = *(v31 + 8);
      v36(v8, v6);

      v36(v17, v6);
      if ((v35 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v33 = v23;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21CB450F4(v23, v11, type metadata accessor for PMSystemSettingsNavigationDestination);
    v28 = *v11;
    v27 = v11[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_28;
    }

    if (v28 == *v21 && v27 == v21[1])
    {
    }

    else
    {
      v30 = sub_21CB86344();

      if ((v30 & 1) == 0)
      {
LABEL_21:
        sub_21CB45AF0(v23, type metadata accessor for PMSystemSettingsNavigationDestination);
LABEL_29:
        v26 = 0;
        return v26 & 1;
      }
    }

LABEL_34:
    v33 = v23;
LABEL_35:
    sub_21CB45AF0(v33, type metadata accessor for PMSystemSettingsNavigationDestination);
    v26 = 1;
    return v26 & 1;
  }

  sub_21CB450F4(v23, v14, type metadata accessor for PMSystemSettingsNavigationDestination);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21CB45AF0(v14, type metadata accessor for PMRecentlyDeletedAccountsSource);
    goto LABEL_28;
  }

  sub_21CB45204(v21, v5, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v26 = sub_21CADE0F8(v14, v5);
  sub_21CB45AF0(v5, type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CB45AF0(v14, type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CB45AF0(v23, type metadata accessor for PMSystemSettingsNavigationDestination);
  return v26 & 1;
}

uint64_t sub_21CB45A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9D88, &qword_21CBCCC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CB45AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB45B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PMSystemSettingsNavigationDestination.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMSystemSettingsNavigationDestination.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CB45D5C()
{
  result = qword_27CDF9D90;
  if (!qword_27CDF9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D90);
  }

  return result;
}

unint64_t sub_21CB45DB4()
{
  result = qword_27CDF9D98;
  if (!qword_27CDF9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9D98);
  }

  return result;
}

unint64_t sub_21CB45E0C()
{
  result = qword_27CDF9DA0;
  if (!qword_27CDF9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DA0);
  }

  return result;
}

unint64_t sub_21CB45E64()
{
  result = qword_27CDF9DA8;
  if (!qword_27CDF9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DA8);
  }

  return result;
}

unint64_t sub_21CB45EBC()
{
  result = qword_27CDF9DB0;
  if (!qword_27CDF9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DB0);
  }

  return result;
}

unint64_t sub_21CB45F14()
{
  result = qword_27CDF9DB8;
  if (!qword_27CDF9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DB8);
  }

  return result;
}

unint64_t sub_21CB45F6C()
{
  result = qword_27CDF9DC0;
  if (!qword_27CDF9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DC0);
  }

  return result;
}

unint64_t sub_21CB45FC4()
{
  result = qword_27CDF9DC8;
  if (!qword_27CDF9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DC8);
  }

  return result;
}

unint64_t sub_21CB4601C()
{
  result = qword_27CDF9DD0;
  if (!qword_27CDF9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DD0);
  }

  return result;
}

unint64_t sub_21CB46074()
{
  result = qword_27CDF9DD8;
  if (!qword_27CDF9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DD8);
  }

  return result;
}

unint64_t sub_21CB460CC()
{
  result = qword_27CDF9DE0;
  if (!qword_27CDF9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DE0);
  }

  return result;
}

unint64_t sub_21CB46124()
{
  result = qword_27CDF9DE8;
  if (!qword_27CDF9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DE8);
  }

  return result;
}

unint64_t sub_21CB4617C()
{
  result = qword_27CDF9DF0;
  if (!qword_27CDF9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DF0);
  }

  return result;
}

unint64_t sub_21CB461D4()
{
  result = qword_27CDF9DF8;
  if (!qword_27CDF9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9DF8);
  }

  return result;
}

unint64_t sub_21CB4622C()
{
  result = qword_27CDF9E00;
  if (!qword_27CDF9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E00);
  }

  return result;
}

unint64_t sub_21CB46284()
{
  result = qword_27CDF9E08;
  if (!qword_27CDF9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E08);
  }

  return result;
}

unint64_t sub_21CB462DC()
{
  result = qword_27CDF9E10;
  if (!qword_27CDF9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E10);
  }

  return result;
}

unint64_t sub_21CB46334()
{
  result = qword_27CDF9E18;
  if (!qword_27CDF9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E18);
  }

  return result;
}

unint64_t sub_21CB4638C()
{
  result = qword_27CDF9E20;
  if (!qword_27CDF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E20);
  }

  return result;
}

unint64_t sub_21CB463E4()
{
  result = qword_27CDF9E28;
  if (!qword_27CDF9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E28);
  }

  return result;
}

uint64_t sub_21CB46438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64726F7773736170 && a2 == 0xEF736E6F6974704FLL;
  if (v4 || (sub_21CB86344() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021CB9C6D0 == a2 || (sub_21CB86344() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7773736150796DLL && a2 == 0xEB00000000736472 || (sub_21CB86344() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_21CB86344() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CB9C6F0 == a2 || (sub_21CB86344() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEF646574656C6544 || (sub_21CB86344() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44746E756F636361 && a2 == 0xED00006C69617465)
  {

    return 6;
  }

  else
  {
    v6 = sub_21CB86344();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_21CB466C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_21CB829D4();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountsView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E78, &unk_21CBCD520);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F30, &unk_21CBCD570);
  v12 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v31 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E50, &qword_21CBCD508);
  MEMORY[0x28223BE20](v35);
  v16 = &v31 - v15;
  PMAccountsView.init()(v8);
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CACB1D0();

    type metadata accessor for PMAccountsListModel(0);
    sub_21C7062E8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
    v20 = sub_21CB81CE4();
    sub_21CB495D4(v8, v11, type metadata accessor for PMAccountsView);
    v21 = &v11[*(v9 + 36)];
    *v21 = v20;
    v21[1] = v19;
    sub_21CB85294();
    sub_21CB48EB0();
    sub_21C7062E8(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v22 = v34;
    sub_21CB849C4();
    (*(v33 + 8))(v5, v22);
    sub_21C6EA794(v11, &qword_27CDF9E78, &unk_21CBCD520);
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    v23 = sub_21CB82B84();
    v25 = v24;
    (*(v12 + 32))(v16, v14, v32);
    v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E70, &qword_21CBCD518) + 36)];
    *v26 = v23;
    v26[1] = v25;
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    v27 = swift_allocObject();
    v28 = *(a1 + 16);
    v27[1] = *a1;
    v27[2] = v28;
    v29 = *(a1 + 48);
    v27[3] = *(a1 + 32);
    v27[4] = v29;
    sub_21C82F854(a1, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E58, &qword_21CBCD510);
    sub_21CB48D14();
    sub_21C7062E8(&qword_27CDF7C90, type metadata accessor for PMSystemSettingsNavigationDestination, &unk_21CBCCB80);
    sub_21CB48FEC();
    sub_21CB84564();

    return sub_21C78C480(v16);
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CB46C00@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v142 = a2;
  v101 = type metadata accessor for PMAccountDetailsView(0);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v96 - v4;
  v108 = type metadata accessor for PMAccount(0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v96 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F20, &qword_21CBCD560);
  MEMORY[0x28223BE20](v134);
  v100 = &v96 - v6;
  v119 = type metadata accessor for PMRecentlyDeletedAccountsView(0);
  MEMORY[0x28223BE20](v119);
  v125 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F38, &qword_21CBCD580);
  MEMORY[0x28223BE20](v131);
  v132 = &v96 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F40, &unk_21CBCD588);
  MEMORY[0x28223BE20](v116);
  v117 = &v96 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F08, &qword_21CBCD558);
  MEMORY[0x28223BE20](v130);
  v118 = &v96 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EF8, &qword_21CBCD550);
  MEMORY[0x28223BE20](v140);
  v133 = &v96 - v13;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v106);
  v105 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v96 - v16;
  v115 = type metadata accessor for PMGroupInvitationsList(0);
  MEMORY[0x28223BE20](v115);
  v109 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for PMGroupAccountsView(0);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v123 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v19 - 8);
  v122 = &v96 - v20;
  v121 = type metadata accessor for PMSharingGroup(0);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EE0, &qword_21CBCD548);
  MEMORY[0x28223BE20](v112);
  v24 = &v96 - v23;
  v128 = sub_21CB85C44();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F48, &qword_21CBCD598);
  MEMORY[0x28223BE20](v110);
  v111 = &v96 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EC8, &qword_21CBCD540);
  MEMORY[0x28223BE20](v139);
  v114 = &v96 - v28;
  v113 = type metadata accessor for PMPasswordsSecurityView(0);
  MEMORY[0x28223BE20](v113);
  v103 = (&v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F50, &qword_21CBCD5A0);
  MEMORY[0x28223BE20](v143);
  v145 = &v96 - v30;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F58, &qword_21CBCD5A8);
  MEMORY[0x28223BE20](v136);
  v138 = &v96 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F60, &qword_21CBCD5B0);
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EB0, &qword_21CBCD538);
  MEMORY[0x28223BE20](v137);
  v36 = &v96 - v35;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9EA0, &qword_21CBCD530);
  MEMORY[0x28223BE20](v144);
  v135 = &v96 - v37;
  v38 = type metadata accessor for PMPasswordOptionsView(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
  MEMORY[0x28223BE20](v41);
  v43 = (&v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB4963C(v141, v43, type metadata accessor for PMSystemSettingsNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21CACE64C(v40);
        sub_21CB4963C(v40, v34, type metadata accessor for PMPasswordOptionsView);
        swift_storeEnumTagMultiPayload();
        sub_21C7062E8(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
        sub_21C7062E8(&qword_27CDF9EB8, type metadata accessor for PMPasswordsSecurityView, &unk_21CBC66F0);
        sub_21CB83494();
        sub_21C6EDBAC(v36, v138, &qword_27CDF9EB0, &qword_21CBCD538);
        swift_storeEnumTagMultiPayload();
        sub_21CB49104();
        sub_21CB491F0();
        v45 = v135;
        sub_21CB83494();
        sub_21C6EA794(v36, &qword_27CDF9EB0, &qword_21CBCD538);
        sub_21C6EDBAC(v45, v145, &qword_27CDF9EA0, &qword_21CBCD530);
        swift_storeEnumTagMultiPayload();
        sub_21CB49078();
        sub_21CB49384();
        sub_21CB83494();
        sub_21C6EA794(v45, &qword_27CDF9EA0, &qword_21CBCD530);
        return sub_21CB496A4(v40, type metadata accessor for PMPasswordOptionsView);
      }

      else
      {
        v79 = v103;
        sub_21CAD2478(v103);
        sub_21CB4963C(v79, v34, type metadata accessor for PMPasswordsSecurityView);
        swift_storeEnumTagMultiPayload();
        sub_21C7062E8(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
        sub_21C7062E8(&qword_27CDF9EB8, type metadata accessor for PMPasswordsSecurityView, &unk_21CBC66F0);
        sub_21CB83494();
        sub_21C6EDBAC(v36, v138, &qword_27CDF9EB0, &qword_21CBCD538);
        swift_storeEnumTagMultiPayload();
        sub_21CB49104();
        sub_21CB491F0();
        v80 = v135;
        sub_21CB83494();
        sub_21C6EA794(v36, &qword_27CDF9EB0, &qword_21CBCD538);
        sub_21C6EDBAC(v80, v145, &qword_27CDF9EA0, &qword_21CBCD530);
        swift_storeEnumTagMultiPayload();
        sub_21CB49078();
        sub_21CB49384();
        sub_21CB83494();
        sub_21C6EA794(v80, &qword_27CDF9EA0, &qword_21CBCD530);
        return sub_21CB496A4(v79, type metadata accessor for PMPasswordsSecurityView);
      }
    }

    if (EnumCaseMultiPayload != 5)
    {
      v147 = *(v129 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA40, &qword_21CBA8088);
      sub_21CB84D54();
      v81 = v109;
      *v109 = v146;
      type metadata accessor for PMPasswordManagerState(0);
      sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
      *(v81 + 8) = sub_21CB82B84();
      *(v81 + 16) = v82;
      v83 = v115;
      v84 = *(v115 + 24);
      *(v81 + v84) = swift_getKeyPath(aH_116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
      swift_storeEnumTagMultiPayload();
      v85 = v104;
      (*(v127 + 56))(v104, 1, 1, v128);
      sub_21C6EDBAC(v85, v105, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CB84D44();
      sub_21C6EA794(v85, &unk_27CDF20B0, &unk_21CBA0090);
      v86 = v81 + *(v83 + 32);
      *v86 = swift_getKeyPath(asc_21CBCD630);
      *(v86 + 8) = 0;
      sub_21CB4963C(v81, v117, type metadata accessor for PMGroupInvitationsList);
      swift_storeEnumTagMultiPayload();
      sub_21C7062E8(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList, &unk_21CBB9830);
      sub_21C7062E8(&qword_27CDF9F10, type metadata accessor for PMRecentlyDeletedAccountsView, &unk_21CBC7428);
      v87 = v118;
      sub_21CB83494();
      sub_21C6EDBAC(v87, v132, &qword_27CDF9F08, &qword_21CBCD558);
      swift_storeEnumTagMultiPayload();
      sub_21CB49410();
      sub_21CB494FC();
      v88 = v133;
      sub_21CB83494();
      sub_21C6EA794(v87, &qword_27CDF9F08, &qword_21CBCD558);
      sub_21C6EDBAC(v88, v145, &qword_27CDF9EF8, &qword_21CBCD550);
      swift_storeEnumTagMultiPayload();
      sub_21CB49078();
      sub_21CB49384();
      sub_21CB83494();
      sub_21C6EA794(v88, &qword_27CDF9EF8, &qword_21CBCD550);
      return sub_21CB496A4(v81, type metadata accessor for PMGroupInvitationsList);
    }

    swift_storeEnumTagMultiPayload();
    sub_21CB4927C();
    sub_21CB492D0();
    v60 = v114;
    sub_21CB83494();
    sub_21C6EDBAC(v60, v138, &qword_27CDF9EC8, &qword_21CBCD540);
    swift_storeEnumTagMultiPayload();
    sub_21CB49104();
    sub_21CB491F0();
    v61 = v135;
    sub_21CB83494();
    sub_21C6EA794(v60, &qword_27CDF9EC8, &qword_21CBCD540);
    sub_21C6EDBAC(v61, v145, &qword_27CDF9EA0, &qword_21CBCD530);
    swift_storeEnumTagMultiPayload();
    sub_21CB49078();
    sub_21CB49384();
    sub_21CB83494();
    v62 = v61;
    v63 = &qword_27CDF9EA0;
    v64 = &qword_21CBCD530;
    return sub_21C6EA794(v62, v63, v64);
  }

  v47 = v120;
  v48 = v121;
  v49 = v22;
  v50 = v122;
  v51 = v123;
  v141 = v26;
  v52 = v126;
  v53 = v125;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v124;
      sub_21CB495D4(v43, v124, type metadata accessor for PMRecentlyDeletedAccountsSource);
      sub_21CB4963C(v54, v53, type metadata accessor for PMRecentlyDeletedAccountsSource);
      v55 = (v53 + *(v119 + 20));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      v146 = v56;
      sub_21CB84D44();
      v57 = *(&v147 + 1);
      *v55 = v147;
      v55[1] = v57;
      sub_21CB4963C(v53, v117, type metadata accessor for PMRecentlyDeletedAccountsView);
      swift_storeEnumTagMultiPayload();
      sub_21C7062E8(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList, &unk_21CBB9830);
      sub_21C7062E8(&qword_27CDF9F10, type metadata accessor for PMRecentlyDeletedAccountsView, &unk_21CBC7428);
      v58 = v118;
      sub_21CB83494();
      sub_21C6EDBAC(v58, v132, &qword_27CDF9F08, &qword_21CBCD558);
      swift_storeEnumTagMultiPayload();
      sub_21CB49410();
      sub_21CB494FC();
      v59 = v133;
      sub_21CB83494();
      sub_21C6EA794(v58, &qword_27CDF9F08, &qword_21CBCD558);
      sub_21C6EDBAC(v59, v145, &qword_27CDF9EF8, &qword_21CBCD550);
      swift_storeEnumTagMultiPayload();
      sub_21CB49078();
      sub_21CB49384();
      sub_21CB83494();
      sub_21C6EA794(v59, &qword_27CDF9EF8, &qword_21CBCD550);
      sub_21CB496A4(v53, type metadata accessor for PMRecentlyDeletedAccountsView);
      return sub_21CB496A4(v54, type metadata accessor for PMRecentlyDeletedAccountsSource);
    }

    v71 = *v43;
    v70 = v43[1];
    swift_getKeyPath(byte_21CBCD5B8);
    swift_getKeyPath(asc_21CBCD5E0);
    sub_21CB81DB4();

    v73 = v147;
    *&v147 = v71;
    *(&v147 + 1) = v70;
    MEMORY[0x28223BE20](v72);
    *(&v96 - 2) = &v147;
    sub_21C968D04(sub_21C7AE738, v73, v52);

    if ((*(v107 + 48))(v52, 1, v108) == 1)
    {
      sub_21C6EA794(v52, &unk_27CDEBE60, &unk_21CB9FF40);
      v74 = 1;
      v75 = v145;
      v76 = v101;
      v77 = v102;
      v78 = v100;
    }

    else
    {
      v91 = v96;
      sub_21CB495D4(v52, v96, type metadata accessor for PMAccount);
      v92 = v91;
      v93 = v97;
      sub_21CB495D4(v92, v97, type metadata accessor for PMAccount);
      v94 = v93;
      v78 = v100;
      sub_21CB495D4(v94, v100, type metadata accessor for PMAccountDetailsView);
      v74 = 0;
      v75 = v145;
      v76 = v101;
      v77 = v102;
    }

    (*(v77 + 56))(v78, v74, 1, v76);
    sub_21C6EDBAC(v78, v132, &qword_27CDF9F20, &qword_21CBCD560);
    swift_storeEnumTagMultiPayload();
    sub_21CB49410();
    sub_21CB494FC();
    v95 = v133;
    sub_21CB83494();
    sub_21C6EDBAC(v95, v75, &qword_27CDF9EF8, &qword_21CBCD550);
    swift_storeEnumTagMultiPayload();
    sub_21CB49078();
    sub_21CB49384();
    sub_21CB83494();
    sub_21C6EA794(v95, &qword_27CDF9EF8, &qword_21CBCD550);
    v62 = v78;
    v63 = &qword_27CDF9F20;
    v64 = &qword_21CBCD560;
    return sub_21C6EA794(v62, v63, v64);
  }

  v65 = v141;
  (*(v127 + 32))(v141, v43, v128);
  sub_21CA1D444(v65, v50);
  if ((*(v47 + 48))(v50, 1, v48) == 1)
  {
    sub_21C6EA794(v50, &qword_27CDF7670, &unk_21CBAA8F0);
    v66 = 1;
    v67 = v145;
    v68 = v135;
    v69 = v24;
  }

  else
  {
    sub_21CB495D4(v50, v49, type metadata accessor for PMSharingGroup);
    sub_21CB495D4(v49, v51, type metadata accessor for PMSharingGroup);
    v69 = v24;
    sub_21CB495D4(v51, v24, type metadata accessor for PMGroupAccountsView);
    v66 = 0;
    v67 = v145;
    v68 = v135;
  }

  v89 = v111;
  (*(v98 + 56))(v69, v66, 1, v99);
  sub_21C6EDBAC(v69, v89, &qword_27CDF9EE0, &qword_21CBCD548);
  swift_storeEnumTagMultiPayload();
  sub_21CB4927C();
  sub_21CB492D0();
  v90 = v114;
  sub_21CB83494();
  sub_21C6EDBAC(v90, v138, &qword_27CDF9EC8, &qword_21CBCD540);
  swift_storeEnumTagMultiPayload();
  sub_21CB49104();
  sub_21CB491F0();
  sub_21CB83494();
  sub_21C6EA794(v90, &qword_27CDF9EC8, &qword_21CBCD540);
  sub_21C6EDBAC(v68, v67, &qword_27CDF9EA0, &qword_21CBCD530);
  swift_storeEnumTagMultiPayload();
  sub_21CB49078();
  sub_21CB49384();
  sub_21CB83494();
  sub_21C6EA794(v68, &qword_27CDF9EA0, &qword_21CBCD530);
  sub_21C6EA794(v69, &qword_27CDF9EE0, &qword_21CBCD548);
  return (*(v127 + 8))(v141, v128);
}

uint64_t sub_21CB48750@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v1 = sub_21CB82B54();
  swift_getKeyPath(asc_21CBCD4D0);
  sub_21CB82B74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7778, &qword_21CBC5CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E30, &qword_21CBCD500);
  sub_21C6EADEC(&qword_27CDF9E38, &qword_27CDF7778, &qword_21CBC5CB0, MEMORY[0x277D83960]);
  sub_21C6EADEC(&qword_27CDF9E40, &qword_27CDF7778, &qword_21CBC5CB0, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF9E48, &qword_27CDF7778, &qword_21CBC5CB0, MEMORY[0x277D83990]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E50, &qword_21CBCD508);
  type metadata accessor for PMSystemSettingsNavigationDestination(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E58, &qword_21CBCD510);
  sub_21CB48D14();
  sub_21C7062E8(&qword_27CDF7C90, type metadata accessor for PMSystemSettingsNavigationDestination, &unk_21CBCCB80);
  sub_21CB48FEC();
  swift_getOpaqueTypeConformance2();
  sub_21CB82914();
  v2 = sub_21CB82B84();
  v4 = v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9F28, &qword_21CBCD568);
  v6 = (a1 + *(result + 36));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

uint64_t sub_21CB48A2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = v19 - v4;
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v20);

  type metadata accessor for PMAccountsState(0);
  sub_21C7062E8(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  v10 = swift_getKeyPath(byte_21CBCD400);
  sub_21CB86544();
  sub_21C7073E8(v10, v20);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7062E8(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v11 = sub_21CB82674();
  v13 = v12;

  v14 = sub_21CB85C44();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  type metadata accessor for PMGroupInvitationsListModel(0);
  swift_allocObject();
  v19[1] = sub_21C9C6E08(v5);
  sub_21CB84D44();
  v15 = v20;
  v16 = v21;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C7062E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  result = sub_21CB82B84();
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v16;
  a1[6] = result;
  a1[7] = v18;
  return result;
}

unint64_t sub_21CB48D14()
{
  result = qword_27CDF9E60;
  if (!qword_27CDF9E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E50, &qword_21CBCD508);
    sub_21CB48D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E60);
  }

  return result;
}

unint64_t sub_21CB48D98()
{
  result = qword_27CDF9E68;
  if (!qword_27CDF9E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E70, &qword_21CBCD518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E78, &unk_21CBCD520);
    sub_21CB829D4();
    sub_21CB48EB0();
    sub_21C7062E8(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21CB48F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E68);
  }

  return result;
}

unint64_t sub_21CB48EB0()
{
  result = qword_27CDF9E80;
  if (!qword_27CDF9E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E78, &unk_21CBCD520);
    sub_21C7062E8(&qword_27CDED198, type metadata accessor for PMAccountsView, &protocol conformance descriptor for PMAccountsView);
    sub_21C6EADEC(&qword_27CDECF60, &qword_27CDED1C0, &qword_21CBA5BF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E80);
  }

  return result;
}

unint64_t sub_21CB48F98()
{
  result = qword_27CDF9E88;
  if (!qword_27CDF9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E88);
  }

  return result;
}

unint64_t sub_21CB48FEC()
{
  result = qword_27CDF9E90;
  if (!qword_27CDF9E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9E58, &qword_21CBCD510);
    sub_21CB49078();
    sub_21CB49384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E90);
  }

  return result;
}

unint64_t sub_21CB49078()
{
  result = qword_27CDF9E98;
  if (!qword_27CDF9E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EA0, &qword_21CBCD530);
    sub_21CB49104();
    sub_21CB491F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9E98);
  }

  return result;
}

unint64_t sub_21CB49104()
{
  result = qword_27CDF9EA8;
  if (!qword_27CDF9EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EB0, &qword_21CBCD538);
    sub_21C7062E8(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
    sub_21C7062E8(&qword_27CDF9EB8, type metadata accessor for PMPasswordsSecurityView, &unk_21CBC66F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9EA8);
  }

  return result;
}

unint64_t sub_21CB491F0()
{
  result = qword_27CDF9EC0;
  if (!qword_27CDF9EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EC8, &qword_21CBCD540);
    sub_21CB4927C();
    sub_21CB492D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9EC0);
  }

  return result;
}

unint64_t sub_21CB4927C()
{
  result = qword_27CDF9ED0;
  if (!qword_27CDF9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9ED0);
  }

  return result;
}

unint64_t sub_21CB492D0()
{
  result = qword_27CDF9ED8;
  if (!qword_27CDF9ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EE0, &qword_21CBCD548);
    sub_21C7062E8(&qword_27CDF9EE8, type metadata accessor for PMGroupAccountsView, &unk_21CBB84A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9ED8);
  }

  return result;
}

unint64_t sub_21CB49384()
{
  result = qword_27CDF9EF0;
  if (!qword_27CDF9EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9EF8, &qword_21CBCD550);
    sub_21CB49410();
    sub_21CB494FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9EF0);
  }

  return result;
}

unint64_t sub_21CB49410()
{
  result = qword_27CDF9F00;
  if (!qword_27CDF9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9F08, &qword_21CBCD558);
    sub_21C7062E8(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList, &unk_21CBB9830);
    sub_21C7062E8(&qword_27CDF9F10, type metadata accessor for PMRecentlyDeletedAccountsView, &unk_21CBC7428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9F00);
  }

  return result;
}

unint64_t sub_21CB494FC()
{
  result = qword_27CDF9F18;
  if (!qword_27CDF9F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9F20, &qword_21CBCD560);
    sub_21C7062E8(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView, &unk_21CBA1F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9F18);
  }

  return result;
}

uint64_t sub_21CB495D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB4963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB496A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB49704()
{
  result = qword_27CDF9F68;
  if (!qword_27CDF9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9F28, &qword_21CBCD568);
    sub_21C6EADEC(&qword_27CDF9F70, &qword_27CDF9F78, &qword_21CBCD658, MEMORY[0x277CDDA18]);
    sub_21CB497BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9F68);
  }

  return result;
}

unint64_t sub_21CB497BC()
{
  result = qword_27CDF9F80[0];
  if (!qword_27CDF9F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF9F80);
  }

  return result;
}

void sub_21CB49810(uint64_t a1)
{
  sub_21CB49968(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21C72C81C(319);
    if (v2 <= 0x3F)
    {
      sub_21CB49968(319, &qword_27CDEE4A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_21C7226D8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CB49968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21CB499FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v32 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA008, &qword_21CBCD6D0);
  v7 = sub_21CB825E4();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v8;
  v9 = *(a1 + 24);
  v31 = sub_21CB4A1DC();
  v50 = v9;
  v51 = v31;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  v33 = sub_21CAA5114();
  v46 = v7;
  v47 = v3;
  v48 = WitnessTable;
  v49 = v33;
  v36 = MEMORY[0x277CDEA88];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v43 = v6;
  v44 = v9;
  v18 = v37;
  v45 = v37;
  v40 = v6;
  v41 = v9;
  v42 = v37;
  sub_21CB825D4();
  LOBYTE(v6) = *(v18 + *(v32 + 52));
  *v5 = sub_21CB83034();
  v5[8] = v6;
  v19 = v30;
  v20 = *(v30 + 24);
  *&v5[v20] = swift_getKeyPath(asc_21CBCD6D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v21 = v19;
  v22 = v34;
  v23 = v33;
  v24 = v29;
  sub_21CB844C4();
  sub_21CAA516C(v5);
  (*(v38 + 8))(v24, v7);
  v46 = v7;
  v47 = v21;
  v48 = v22;
  v49 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21C72BE10(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v12 + 8);
  v26(v14, OpaqueTypeMetadata2);
  sub_21C72BE10(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v26)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_21CB49DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_21CB82834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v15 = type metadata accessor for PMTextField(0, a2, a3, v14);
  v16 = *(v15 + 40);
  v17 = (a1 + *(v15 + 44));
  v18 = v17[1];
  v37 = *v17;
  v38 = v18;
  v19 = a1 + v16;
  v29[2] = a1;
  v20 = *(a1 + v16);
  v22 = *(a1 + v16 + 16);
  v21 = *(v19 + 24);
  v34 = v20;
  v35 = v22;
  v36 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v29[1] = v33;
  sub_21C7448E0(v10);
  sub_21CB82824();
  v23 = *(v8 + 8);
  v23(v10, v7);
  sub_21C71F3FC();
  sub_21CB85324();
  sub_21C7448E0(v10);
  LOBYTE(a1) = sub_21CB82824();
  v23(v10, v7);
  if (a1)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  KeyPath = swift_getKeyPath(byte_21CBCD708);
  v26 = v32;
  (*(v30 + 32))(v32, v13, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA008, &qword_21CBCD6D0);
  v28 = v26 + *(result + 36);
  *v28 = KeyPath;
  *(v28 + 8) = v24;
  return result;
}

uint64_t sub_21CB4A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v15 = type metadata accessor for PMTextField(0, v12, v13, v14);
  (*(a1 + *(v15 + 56)))();
  sub_21C72BE10(v8, a2, a3);
  v16 = *(v6 + 8);
  v16(v8, a2);
  sub_21C72BE10(v11, a2, a3);
  return (v16)(v11, a2);
}

unint64_t sub_21CB4A1DC()
{
  result = qword_27CDFA010;
  if (!qword_27CDFA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA008, &qword_21CBCD6D0);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA010);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21CB4A2FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB4A350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_21CB4A414(v7, v9) & 1;
}

unint64_t sub_21CB4A3C0()
{
  result = qword_27CDFA018[0];
  if (!qword_27CDFA018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDFA018);
  }

  return result;
}

uint64_t sub_21CB4A414(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_21CB84C44() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_21CB86344();
}

uint64_t sub_21CB4A518(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 233) = a4;
  *(v4 + 168) = a2;
  *(v4 + 176) = a3;
  *(v4 + 160) = a1;
  sub_21CB858B4();
  *(v4 + 184) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v4 + 192) = v6;
  *(v4 + 200) = v5;

  return MEMORY[0x2822009F8](sub_21CB4A5B8, v6, v5);
}

uint64_t sub_21CB4A5B8()
{
  v1 = *(v0 + 160);
  if (v1 <= 1)
  {
    if (!v1)
    {

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v10 = sub_21CB81C84();
      __swift_project_value_buffer(v10, qword_27CE186E0);
      v6 = sub_21CB81C64();
      v7 = sub_21CB85AF4();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_21;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Tip context: performed an action on a none tip type.";
      goto LABEL_20;
    }

    if (v1 == 1)
    {
      v2 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 232;
      *(v0 + 24) = sub_21CB4A984;
      v3 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21CA92000;
      *(v0 + 104) = &block_descriptor_43;
      *(v0 + 112) = v3;
      [v2 setUserVisibleKeychainSyncEnabled:1 withCompletion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

LABEL_12:

    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_21;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Tip context: performed an action on an unknown tip type.";
LABEL_20:
    _os_log_impl(&dword_21C6E5000, v6, v7, v9, v8, 2u);
    MEMORY[0x21CF16D90](v8, -1, -1);
LABEL_21:

LABEL_22:
    v11 = *(v0 + 8);

    return v11();
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v4 = *(v0 + 233);

      if (v4)
      {
        if (*(v0 + 176))
        {
          sub_21C9175A4(0);
        }
      }

      else
      {
        v13 = *(v0 + 168);
        swift_getKeyPath(byte_21CBCD7F8);
        *(v0 + 144) = 0;
        v14 = v13;
        sub_21CB81DC4();
      }

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_21CB4AB14;

  return sub_21CA857C4();
}

uint64_t sub_21CB4A984()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_21CB4AD28;
  }

  else
  {
    v5 = sub_21CB4AAB4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CB4AAB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CB4AB14(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_21CB4AC3C, v4, v3);
}

uint64_t sub_21CB4AC3C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 233);

  if (v2)
  {
    if (*(v0 + 176))
    {

      sub_21C9175A4(v1);
    }
  }

  else
  {
    v3 = *(v0 + 168);
    swift_getKeyPath(byte_21CBCD7F8);
    *(v0 + 152) = v1;
    v4 = v3;
    sub_21CB81DC4();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21CB4AD28()
{
  v1 = *(v0 + 208);

  swift_willThrow();
  sub_21CB4ADA8();

  v2 = *(v0 + 8);

  return v2();
}

id sub_21CB4ADA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80BD4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_21C79C324(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_21CB80B74();
    sub_21C73181C(MEMORY[0x277D84F90]);
    v10 = sub_21CB85464();

    [v8 openSensitiveURL:v9 withOptions:v10];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21CB4AFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_21CB4BD58(a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21CB4B058()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CB4B0D4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_21CB4B1B8()
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](v0);
  return sub_21CB864D4();
}

uint64_t sub_21CB4B248(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB4B18C();
  return sub_21CB864D4();
}

uint64_t sub_21CB4B2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = v2;
  v8 = *v2;
  sub_21CB86484();
  v9 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB4C634(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  v58 = v9;
  sub_21CB85494();
  v60 = v5;
  v10 = *(a1 + *(v5 + 20));
  v59 = a2;
  v57 = v10;
  sub_21CB864A4();
  if (v10)
  {
    v11 = v10;
    sub_21CB85DE4();
  }

  v12 = sub_21CB864D4();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  v15 = v12 & ~v14;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return (*(v63 + 56))(v59, 1, 1, v60);
  }

  v67 = 0;
  v71 = ~v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v72 = *(v63 + 72);
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 == 0xC000000000000000;
  }

  v19 = !v18;
  v70 = v19;
  v20 = v17 >> 62;
  v68 = v16;
  v21 = HIDWORD(v16) - v16;
  v22 = __OFSUB__(HIDWORD(v16), v16);
  v66 = v22;
  v64 = v17;
  v65 = v21;
  v69 = BYTE6(v17);
  v61 = v8;
  v62 = v8 + 56;
  while (1)
  {
    v23 = v72 * v15;
    sub_21CADB840(*(v8 + 48) + v72 * v15, v7);
    v24 = *v7;
    v25 = v7[1];
    v26 = v25 >> 62;
    if (v25 >> 62 == 3)
    {
      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25 == 0xC000000000000000;
      }

      v29 = !v27 || v20 < 3;
      if (((v29 | v70) & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_36:
      v30 = 0;
      if (v20 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_36;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_121;
      }

      if (v20 > 1)
      {
        goto LABEL_37;
      }
    }

    else if (v26)
    {
      LODWORD(v30) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_122;
      }

      v30 = v30;
      if (v20 > 1)
      {
LABEL_37:
        if (v20 != 2)
        {
          if (v30)
          {
            goto LABEL_111;
          }

          goto LABEL_63;
        }

        v36 = *(v68 + 16);
        v35 = *(v68 + 24);
        v33 = __OFSUB__(v35, v36);
        v34 = v35 - v36;
        if (v33)
        {
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

        goto LABEL_39;
      }
    }

    else
    {
      v30 = BYTE6(v25);
      if (v20 > 1)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    v34 = v69;
    if (v20)
    {
      v34 = v65;
      if (v66)
      {
        goto LABEL_120;
      }
    }

LABEL_39:
    if (v30 != v34)
    {
      goto LABEL_111;
    }

    if (v30 >= 1)
    {
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *&v74[6] = 0;
          *v74 = 0;
LABEL_62:
          v10 = v67;
          sub_21CA8FA10(v74, v68, v64, &v73);
          v67 = v10;
          if (!v73)
          {
            goto LABEL_111;
          }

          goto LABEL_63;
        }

        v37 = *(v24 + 16);
        v10 = *(v24 + 24);
        v38 = sub_21CB808C4();
        if (v38)
        {
          v39 = sub_21CB808F4();
          if (__OFSUB__(v37, v39))
          {
            goto LABEL_125;
          }

          v38 += v37 - v39;
        }

        v33 = __OFSUB__(v10, v37);
        v10 = (v10 - v37);
        if (v33)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (!v26)
        {
          *v74 = *v7;
          *&v74[8] = v25;
          v74[10] = BYTE2(v25);
          v74[11] = BYTE3(v25);
          v74[12] = BYTE4(v25);
          v74[13] = BYTE5(v25);
          goto LABEL_62;
        }

        v10 = v24;
        if (v24 >> 32 < v24)
        {
          goto LABEL_123;
        }

        v38 = sub_21CB808C4();
        if (v38)
        {
          v40 = sub_21CB808F4();
          if (__OFSUB__(v10, v40))
          {
            goto LABEL_126;
          }

          v38 += v10 - v40;
        }
      }

      sub_21CB808E4();
      v10 = v67;
      sub_21CA8FA10(v38, v68, v64, v74);
      v67 = v10;
      v8 = v61;
      v13 = v62;
      if ((v74[0] & 1) == 0)
      {
        goto LABEL_111;
      }
    }

LABEL_63:
    if ((v7[2] != *(a1 + 16) || v7[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v7[4] != *(a1 + 32) || v7[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_111;
    }

    v41 = v7[6];
    v42 = *(a1 + 48);
    if (*(a1 + 56) == 1)
    {
      if (v42 <= 1)
      {
        if (v42)
        {
          if (v41 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v41)
        {
          goto LABEL_111;
        }
      }

      else if (v42 == 2)
      {
        if (v41 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v42 == 3)
      {
        if (v41 != 3)
        {
          goto LABEL_111;
        }
      }

      else if (v41 != 4)
      {
        goto LABEL_111;
      }
    }

    else if (v41 != v42)
    {
      goto LABEL_111;
    }

    v43 = v7[8];
    v44 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          if (v43 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v43 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v43)
      {
        goto LABEL_111;
      }
    }

    else if (v43 != v44)
    {
      goto LABEL_111;
    }

    v45 = v7[10];
    v46 = *(a1 + 80);
    if (*(a1 + 88) == 1)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          if (v45 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v45)
      {
        goto LABEL_111;
      }
    }

    else if (v45 != v46)
    {
      goto LABEL_111;
    }

    if (v7[12] != *(a1 + 96) || (v10 = *(v58 + 44), sub_21CB811C4(), sub_21CB4C634(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_21CB85574() & 1) == 0))
    {
LABEL_111:
      sub_21CADB8EC(v7);
      goto LABEL_112;
    }

    v10 = *(v7 + *(v60 + 20));
    if (!v10)
    {
      break;
    }

    v47 = v57;
    if (!v57)
    {
      goto LABEL_111;
    }

    sub_21C7B1B18();
    v48 = v47;
    v49 = v10;
    v50 = sub_21CB85DD4();
    sub_21CADB8EC(v7);

    v13 = v62;
    if (v50)
    {
      goto LABEL_117;
    }

LABEL_112:
    v15 = (v15 + 1) & v71;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return (*(v63 + 56))(v59, 1, 1, v60);
    }
  }

  v10 = v57;
  v51 = v57;
  sub_21CADB8EC(v7);
  if (v10)
  {

    goto LABEL_112;
  }

LABEL_117:
  v10 = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v10;
  *v74 = *v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_118;
  }

LABEL_127:
  sub_21CA9DD1C();
  v54 = *v74;
LABEL_118:
  v55 = v59;
  sub_21CB4C67C(*(v54 + 48) + v23, v59);
  sub_21CB4BFBC(v15);
  *v10 = *v74;
  return (*(v63 + 56))(v55, 0, 1, v60);
}

uint64_t sub_21CB4BAE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21CB86484();
  sub_21CB854C4();
  v6 = sub_21CB864D4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21CA9DBC0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21CB4C2C8(v8);
  *v2 = v16;
  return v12;
}

void sub_21CB4BC20(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_21CB86484();
  sub_21CB854C4();
  v8 = sub_21CB864D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a1 && v12[1] == a2;
      if (v13 || (sub_21CB86344() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21CA9E078();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    sub_21CB4C2C8(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_21CB4BD58(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_21CB85FF4();

    if (v5)
    {
      v6 = sub_21CB4BEC8(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_21CB86484();
  MEMORY[0x21CF15F90](a1);
  v8 = sub_21CB864D4();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21CA9E9B4();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_21CB4C48C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_21CB4BEC8(uint64_t a1, uint64_t a2)
{

  v4 = sub_21CB85FA4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_21CA977CC(v5, v4);
  v14 = v6;
  sub_21CB86484();
  MEMORY[0x21CF15F90](a2);
  v7 = sub_21CB864D4();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_21CB4C48C(v10);
  *v2 = v14;
  return v6;
}

void sub_21CB4BFBC(int64_t a1)
{
  v28 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_21CB85F34();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v27 = v10;
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      while (1)
      {
        v14 = v7;
        v15 = v13;
        v16 = v13 * v9;
        sub_21CADB840(*(v6 + 48) + v13 * v9, v5);
        sub_21CB86484();
        type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
        sub_21CB4C634(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
        sub_21CB85494();
        v17 = *&v5[*(v28 + 20)];
        sub_21CB864A4();
        if (v17)
        {
          v18 = v17;
          sub_21CB85DE4();
        }

        v19 = sub_21CB864D4();
        sub_21CADB8EC(v5);
        v20 = v27;
        v21 = v19 & v27;
        if (a1 >= v12)
        {
          break;
        }

        v13 = v15;
        if (v21 < v12)
        {
          goto LABEL_13;
        }

LABEL_14:
        v22 = v13 * a1;
        if (v13 * a1 < v16 || *(v6 + 48) + v13 * a1 >= (*(v6 + 48) + v16 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v9;
          if (v22 == v16)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v9;
LABEL_6:
        v9 = (v9 + 1) & v20;
        v7 = v14;
        if (((*(v14 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v13 = v15;
      if (v21 < v12)
      {
        goto LABEL_6;
      }

LABEL_13:
      if (a1 < v21)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

LABEL_18:

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v6 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v25;
    ++*(v6 + 36);
  }
}

void sub_21CB4C2C8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21CB85F34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21CB86484();

        sub_21CB854C4();
        v10 = sub_21CB864D4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_21CB4C48C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21CB85F34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_21CB86484();
        MEMORY[0x21CF15F90](v10);
        v11 = sub_21CB864D4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

uint64_t sub_21CB4C634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB4C67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_21CB4C6E0@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBCDA10);
  sub_21CB81DB4();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_21CB4C798()
{
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle))
  {

    sub_21CB85944();
  }

  v1 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore__tip;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED220, &qword_21CBA6458);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider));

  return swift_deallocClassInstance();
}

uint64_t sub_21CB4C8A8(uint64_t a1)
{
  swift_getKeyPath(byte_21CBCDA10);
  sub_21CB81DB4();

  v3 = v7;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v14 = v9;
  v15 = v10;
  if (v8)
  {
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v10 = v15;
    v9 = v14;
    sub_21CB4CA34(&v7);
    if (v3 == a1)
    {
      swift_getKeyPath(byte_21CBCDA10);

      sub_21CB81DC4();
    }
  }

  else
  {
    v8 = 0;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v10 = v15;
    v9 = v14;
    sub_21CB4CA34(&v7);
  }

  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v4);
  return (*(v5 + 32))(a1, v4, v5);
}

uint64_t sub_21CB4CA34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CB4CAD8()
{
  result = qword_27CDFA120;
  if (!qword_27CDFA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA120);
  }

  return result;
}

uint64_t sub_21CB4CB48@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v47 = sub_21CB83274();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB83874();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83A34();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA128, &qword_21CBCDD08);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA130, &qword_21CBCDD10);
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA138, &qword_21CBCDD18);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v34 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA140, &qword_21CBCDD20);
  MEMORY[0x28223BE20](v39);
  v17 = &v34 - v16;
  *v10 = sub_21CB851E4();
  v10[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA148, &qword_21CBCDD28);
  sub_21CB4D10C(v1, v10 + *(v19 + 44));
  v20 = sub_21CB83CF4();
  sub_21CB81F24();
  v21 = v10 + *(v8 + 36);
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_21CB83A24();
  v26 = sub_21CB4F928();
  sub_21CB844F4();
  (*(v35 + 8))(v7, v36);
  sub_21C6EA794(v10, &qword_27CDFA128, &qword_21CBCDD08);
  v48 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA168, &qword_21CBCDD38);
  v49 = v8;
  v50 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_21C6EADEC(&qword_27CDFA170, &qword_27CDFA168, &qword_21CBCDD38, MEMORY[0x277CE14C0]);
  sub_21CB844E4();
  (*(v37 + 8))(v13, v11);
  v30 = v41;
  sub_21CB83864();
  v49 = v11;
  v50 = v27;
  v51 = OpaqueTypeConformance2;
  v52 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_21CB84484();
  (*(v42 + 8))(v30, v43);
  (*(v40 + 8))(v15, v31);
  v32 = v44;
  sub_21CB83254();
  sub_21CB828D4();
  (*(v45 + 8))(v32, v47);
  return sub_21C6EA794(v17, &qword_27CDFA140, &qword_21CBCDD20);
}

uint64_t sub_21CB4D10C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for PMTipView(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21CB81024();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1C0, &qword_21CBCDE20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = sub_21CB83054();
  if (*a1 > 3uLL)
  {
    v18 = 0x4028000000000000;
  }

  else
  {
    v18 = qword_21CBCDEF0[*a1];
  }

  *v13 = v17;
  *(v13 + 1) = v18;
  v13[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1C8, &qword_21CBCDE28);
  sub_21CB4D48C(a1, &v13[*(v19 + 44)]);
  sub_21C716934(v13, v16, &qword_27CDFA1C0, &qword_21CBCDE20);
  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  (*(v5 + 8))(v7, v30);
  v23 = a1;
  v24 = v32;
  sub_21CB4FF80(v23, v32, type metadata accessor for PMTipView);
  v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v26 = swift_allocObject();
  sub_21CB4F9E8(v24, v26 + v25);
  sub_21C6EDBAC(v16, v10, &qword_27CDFA1C0, &qword_21CBCDE20);
  v27 = v33;
  sub_21C6EDBAC(v10, v33, &qword_27CDFA1C0, &qword_21CBCDE20);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1D0, &qword_21CBCDE30) + 48));
  *v28 = v20;
  v28[1] = v22;
  v28[2] = sub_21CB501C4;
  v28[3] = v26;

  sub_21C6EA794(v16, &qword_27CDFA1C0, &qword_21CBCDE20);

  return sub_21C6EA794(v10, &qword_27CDFA1C0, &qword_21CBCDE20);
}

uint64_t sub_21CB4D48C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1D8, &qword_21CBCDE38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1E0, &qword_21CBCDE40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1E8, &qword_21CBCDE48);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_21CB4D7B4();
  v22 = sub_21CB83D14();
  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_21C716934(v11, v18, &qword_27CDFA1E0, &qword_21CBCDE40);
  v31 = &v18[*(v13 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_21C716934(v18, v21, &qword_27CDFA1E8, &qword_21CBCDE48);
  *v8 = sub_21CB832F4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1F0, &qword_21CBCDE50);
  sub_21CB4DA88(a1, &v8[*(v32 + 44)]);
  sub_21C6EDBAC(v21, v15, &qword_27CDFA1E8, &qword_21CBCDE48);
  sub_21C6EDBAC(v8, v5, &qword_27CDFA1D8, &qword_21CBCDE38);
  v33 = v37;
  sub_21C6EDBAC(v15, v37, &qword_27CDFA1E8, &qword_21CBCDE48);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1F8, &qword_21CBCDE58);
  sub_21C6EDBAC(v5, v33 + *(v34 + 48), &qword_27CDFA1D8, &qword_21CBCDE38);
  sub_21C6EA794(v8, &qword_27CDFA1D8, &qword_21CBCDE38);
  sub_21C6EA794(v21, &qword_27CDFA1E8, &qword_21CBCDE48);
  sub_21C6EA794(v5, &qword_27CDFA1D8, &qword_21CBCDE38);
  return sub_21C6EA794(v15, &qword_27CDFA1E8, &qword_21CBCDE48);
}

uint64_t sub_21CB4D7B4()
{
  v1 = sub_21CB84BD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA230, &qword_21CBCDEB8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1, v6);
  v9 = sub_21CB84C64();
  (*(v2 + 8))(v4, v1);
  v10 = sub_21CB84B14();
  v11 = *(v0 + 96);
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA238, &qword_21CBCDEC0) + 36)];
  v13 = *(sub_21CB82A84() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_21CB831A4();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  *v12 = v11;
  *(v12 + 1) = v11;
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = 0;
  *(v8 + 12) = 1;
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA240, &qword_21CBCDEC8) + 36)];
  sub_21CB4E8A8(v16);
  v17 = sub_21CB85214();
  v19 = v18;
  v20 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA248, &qword_21CBCDED0) + 36));
  *v20 = v17;
  v20[1] = v19;
  sub_21CB85214();
  sub_21CB82374();
  v21 = &v8[*(v5 + 36)];
  v22 = v24[1];
  *v21 = v24[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v24[2];
  sub_21CB4FCF8();
  sub_21CB84494();
  return sub_21C6EA794(v8, &qword_27CDFA230, &qword_21CBCDEB8);
}

uint64_t sub_21CB4DA88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA178, &unk_21CBCDD40);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v30 - v6;
  v35 = sub_21CB84FB4();
  v32 = *(v35 - 8);
  v7 = v32;
  MEMORY[0x28223BE20](v35);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA200, &qword_21CBCDE60);
  v34 = *(v12 - 8);
  v13 = v34;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA208, &qword_21CBCDE68);
  sub_21C6EADEC(&qword_27CDFA210, &qword_27CDFA208, &qword_21CBCDE68, MEMORY[0x277CE14C0]);
  v19 = v18;
  v33 = v18;
  sub_21CB81FC4();
  v31 = v11;
  sub_21CB84FA4();
  v20 = v39;
  sub_21CB4E170(v39);
  v21 = *(v13 + 16);
  v21(v15, v19, v12);
  v30 = *(v7 + 16);
  v22 = v38;
  v23 = v35;
  v30(v38, v11, v35);
  v24 = v36;
  sub_21C6EDBAC(v20, v36, &qword_27CDFA178, &unk_21CBCDD40);
  v25 = v37;
  v21(v37, v15, v12);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA218, &qword_21CBCDE70);
  v30(&v25[*(v26 + 48)], v22, v23);
  sub_21C6EDBAC(v24, &v25[*(v26 + 64)], &qword_27CDFA178, &unk_21CBCDD40);
  sub_21C6EA794(v39, &qword_27CDFA178, &unk_21CBCDD40);
  v27 = *(v32 + 8);
  v27(v31, v23);
  v28 = *(v34 + 8);
  v28(v33, v12);
  sub_21C6EA794(v24, &qword_27CDFA178, &unk_21CBCDD40);
  v27(v38, v23);
  return (v28)(v15, v12);
}

uint64_t sub_21CB4DE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA220, &qword_21CBCDE78);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v36 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v35 = a1;
  v9 = *(a1 + 32);
  v38 = *(a1 + 24);
  v39 = v9;
  v34[1] = sub_21C71F3FC();

  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v9) = v13;
  v15 = v14;
  KeyPath = swift_getKeyPath(byte_21CBCDE80);
  v38 = v10;
  v39 = v12;
  v40 = v9 & 1;
  v41 = v15;
  v42 = KeyPath;
  v43 = 0;
  v44 = 1;
  sub_21CB83DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB960, &qword_21CBBAFA0);
  sub_21C7E397C();
  sub_21CB840D4();
  sub_21C74A72C(v10, v12, v9 & 1);

  LOBYTE(v10) = sub_21CB83D34();
  sub_21CB81F24();
  v17 = &v8[*(v4 + 44)];
  *v17 = v10;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = *(v35 + 48);
  v38 = *(v35 + 40);
  v39 = v22;

  v23 = sub_21CB84054();
  v25 = v24;
  LOBYTE(v10) = v26;
  v28 = v27;
  v29 = swift_getKeyPath(byte_21CBCDE80);
  v30 = v36;
  sub_21C6EDBAC(v8, v36, &qword_27CDFA220, &qword_21CBCDE78);
  v31 = v37;
  sub_21C6EDBAC(v30, v37, &qword_27CDFA220, &qword_21CBCDE78);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA228, &qword_21CBCDEB0) + 48);
  *v32 = v23;
  *(v32 + 8) = v25;
  LOBYTE(v10) = v10 & 1;
  *(v32 + 16) = v10;
  *(v32 + 24) = v28;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  *(v32 + 48) = 1;
  sub_21C79B058(v23, v25, v10);

  sub_21C6EA794(v8, &qword_27CDFA220, &qword_21CBCDE78);
  sub_21C74A72C(v23, v25, v10);

  return sub_21C6EA794(v30, &qword_27CDFA220, &qword_21CBCDE78);
}

uint64_t sub_21CB4E170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA188, &qword_21CBCDD58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA190, &qword_21CBCDD60);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA198, &qword_21CBCDD68);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  *v6 = sub_21CB83074();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1A0, &unk_21CBCDD70);
  sub_21CB4ED50(v2, &v6[*(v15 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v6, v10, &qword_27CDFA188, &qword_21CBCDD58);
  v16 = &v10[*(v8 + 44)];
  v17 = v39[5];
  *(v16 + 4) = v39[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v39[6];
  v18 = v39[1];
  *v16 = v39[0];
  *(v16 + 1) = v18;
  v19 = v39[3];
  *(v16 + 2) = v39[2];
  *(v16 + 3) = v19;
  LOBYTE(v6) = sub_21CB83CF4();
  sub_21CB81F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_21C716934(v10, v14, &qword_27CDFA190, &qword_21CBCDD60);
  v28 = &v14[*(v12 + 44)];
  *v28 = v6;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v6) = sub_21CB83D04();
  sub_21CB81F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_21C716934(v14, a1, &qword_27CDFA198, &qword_21CBCDD68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA178, &unk_21CBCDD40);
  v38 = a1 + *(result + 36);
  *v38 = v6;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_21CB4E434@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA178, &unk_21CBCDD40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PMTipView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_21CB4FF80(a1, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMTipView);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_21CB4F9E8(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_21CB84DA4();
  sub_21CB4E170(v8);
  v21 = *(v13 + 16);
  v21(v15, v18, v12);
  sub_21C6EDBAC(v8, v5, &qword_27CDFA178, &unk_21CBCDD40);
  v22 = v27;
  v21(v27, v15, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA180, &qword_21CBCDD50);
  sub_21C6EDBAC(v5, &v22[*(v23 + 48)], &qword_27CDFA178, &unk_21CBCDD40);
  sub_21C6EA794(v8, &qword_27CDFA178, &unk_21CBCDD40);
  v24 = *(v13 + 8);
  v24(v18, v12);
  sub_21C6EA794(v5, &qword_27CDFA178, &unk_21CBCDD40);
  return (v24)(v15, v12);
}

uint64_t sub_21CB4E780@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB4E8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82A84();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA290, &qword_21CBCDEE8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  if (*(v1 + 16) == 1)
  {
    v11 = *(v1 + 96);
    v12 = *(v3 + 20);
    v13 = *MEMORY[0x277CE0118];
    v25 = v7;
    v14 = sub_21CB831A4();
    (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
    *v5 = v11;
    *(v5 + 1) = v11;
    sub_21CB84A84();
    v15 = sub_21CB84B04();

    sub_21CB82164();
    sub_21CB4FF80(v5, v10, MEMORY[0x277CDFC08]);
    v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E0, &qword_21CBCBBD0) + 36)];
    v17 = v27;
    *v16 = v26;
    *(v16 + 1) = v17;
    *(v16 + 4) = v28;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96E8, &qword_21CBCBBD8);
    *&v10[*(v18 + 52)] = v15;
    *&v10[*(v18 + 56)] = 256;
    v19 = sub_21CB85214();
    v21 = v20;
    sub_21C74B294(v5);
    v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF96F0, &qword_21CBCBBE0) + 36)];
    *v22 = v19;
    v22[1] = v21;
    sub_21C716934(v10, a1, &qword_27CDFA290, &qword_21CBCDEE8);
    return (*(v25 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v24 = *(v7 + 56);

    return v24(a1, 1, 1, v6, v8);
  }
}

uint64_t sub_21CB4EB90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  v7 = *(v1 + 152);
  v14[16] = *(v1 + 144);
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v14[15] == 1)
  {
    sub_21CB82234();
    v8 = &v6[*(v3 + 36)];
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v10 = *MEMORY[0x277CDF438];
    v11 = sub_21CB82064();
    (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
    *v8 = swift_getKeyPath(aH_117);
    sub_21C716934(v6, a1, &qword_27CDF1FD0, &qword_21CBB92A0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v4 + 56))(a1, v12, 1, v3);
}

uint64_t sub_21CB4ED50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_21CB83634();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMTipView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1A8, &qword_21CBCDD80);
  v13 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1B0, &unk_21CBCDD88);
  MEMORY[0x28223BE20](v17 - 8);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v43 = &v42 - v20;
  sub_21CB4EB90(&v42 - v20);
  v22 = *(a1 + 64);
  v52 = *(a1 + 56);
  v53 = v22;
  sub_21CB4FF80(a1, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMTipView);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_21CB4F9E8(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_21C71F3FC();

  sub_21CB84DE4();
  v25 = *(a1 + 152);
  LOBYTE(v52) = *(a1 + 144);
  v53 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v26 = v51;
  KeyPath = swift_getKeyPath(byte_21CBCDD98);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = &v12[*(v10 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_21C735744;
  v29[2] = v28;
  v30 = v6;
  sub_21CB83624();
  sub_21C844588();
  sub_21CB5017C(&qword_27CDF2658, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v31 = v44;
  v32 = v48;
  sub_21CB84124();
  (*(v49 + 8))(v30, v32);
  sub_21C6EA794(v12, &qword_27CDEDA98, &unk_21CBABCB0);
  v33 = v21;
  v34 = v45;
  sub_21C6EDBAC(v33, v45, &qword_27CDFA1B0, &unk_21CBCDD88);
  v35 = *(v13 + 16);
  v37 = v46;
  v36 = v47;
  v35(v46, v31, v47);
  v38 = v50;
  sub_21C6EDBAC(v34, v50, &qword_27CDFA1B0, &unk_21CBCDD88);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA1B8, &unk_21CBCDDD0);
  v35((v38 + *(v39 + 48)), v37, v36);
  v40 = *(v13 + 8);
  v40(v31, v36);
  sub_21C6EA794(v43, &qword_27CDFA1B0, &unk_21CBCDD88);
  v40(v37, v36);
  return sub_21C6EA794(v34, &qword_27CDFA1B0, &unk_21CBCDD88);
}

double sub_21CB4F29C(uint64_t a1)
{
  v2 = type metadata accessor for PMTipView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21CB4FF80(a1, v5, type metadata accessor for PMTipView);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21CB4F9E8(v5, v12 + v11);
  sub_21C98B308(0, 0, v8, &unk_21CBCDDE8, v12);

  return result;
}

uint64_t sub_21CB4F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_21CB858B4();
  v4[9] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_21CB4F500, v6, v5);
}

uint64_t sub_21CB4F500()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 144);
  *(v0 + 59) = v2;
  v3 = *(v1 + 152);
  *(v0 + 57) = 1;
  *(v0 + 96) = v3;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;

  *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v4 = *v1;
  v5 = *(v1 + 128);
  *(v0 + 112) = v5;
  if (v5)
  {
    type metadata accessor for PMTipView(0);
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    sub_21CB821D4();
    v7 = *(v0 + 48);
    if ((*(v0 + 56) & 1) == 0)
    {
      j_j__swift_release(*(v0 + 48));
      v7 = 0;
    }

    *(v0 + 120) = v7;
    v8 = *(*(v0 + 64) + 104);
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_21CB4F6F0;

    return sub_21CB4A518(v4, v6, v7, v8);
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21CB5017C(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);

    return sub_21CB82B64();
  }
}

uint64_t sub_21CB4F6F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21CB4F84C, v4, v3);
}

uint64_t sub_21CB4F84C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 59);
  v3 = *(v0 + 64);

  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 58) = 0;
  sub_21CB84D64();

  v4 = (*(v3 + 120) + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v5);
  (*(v6 + 40))(v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_21CB4F928()
{
  result = qword_27CDFA150;
  if (!qword_27CDFA150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA128, &qword_21CBCDD08);
    sub_21C6EADEC(&qword_27CDFA158, &qword_27CDFA160, &qword_21CBCDD30, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA150);
  }

  return result;
}

uint64_t sub_21CB4F9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21CB4FA50()
{
  v1 = *(type metadata accessor for PMTipView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB4F29C(v2);
}

uint64_t sub_21CB4FAB0(uint64_t a1)
{
  v4 = *(type metadata accessor for PMTipView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CB4F468(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CB4FBC4(uint64_t a1)
{
  v2 = sub_21CB82064();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x21CF12720](v5);
}

unint64_t sub_21CB4FCF8()
{
  result = qword_27CDFA250;
  if (!qword_27CDFA250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA230, &qword_21CBCDEB8);
    sub_21CB4FD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA250);
  }

  return result;
}

unint64_t sub_21CB4FD84()
{
  result = qword_27CDFA258;
  if (!qword_27CDFA258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA240, &qword_21CBCDEC8);
    sub_21CB4FE3C();
    sub_21C6EADEC(&qword_27CDFA288, &qword_27CDFA248, &qword_21CBCDED0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA258);
  }

  return result;
}

unint64_t sub_21CB4FE3C()
{
  result = qword_27CDFA260;
  if (!qword_27CDFA260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA238, &qword_21CBCDEC0);
    sub_21CB4FEF4();
    sub_21C6EADEC(&qword_27CDFA278, &qword_27CDFA280, &qword_21CBCDEE0, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA260);
  }

  return result;
}

unint64_t sub_21CB4FEF4()
{
  result = qword_27CDFA268;
  if (!qword_27CDFA268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA270, &qword_21CBCDED8);
    sub_21C87D040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA268);
  }

  return result;
}

uint64_t sub_21CB4FF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CB4FFE8()
{
  result = qword_27CDFA298;
  if (!qword_27CDFA298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA140, &qword_21CBCDD20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA130, &qword_21CBCDD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA168, &qword_21CBCDD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA128, &qword_21CBCDD08);
    sub_21CB4F928();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA170, &qword_27CDFA168, &qword_21CBCDD38, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_21CB5017C(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA298);
  }

  return result;
}

uint64_t sub_21CB5017C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB501C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81104();
  v11 = sub_21CB51BEC(a1, a2);
  v13 = v12;

  v14 = sub_21CB51A00(v11, v13);
  v16 = v15;

  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  v20 = sub_21CB80BE4();
  (*(*(v20 - 8) + 8))(a3, v20);
  *(v3 + 16) = v17;
  *(v3 + 24) = v19;
  v21 = MEMORY[0x277D84F90];
  *(v3 + 32) = v14;
  *(v3 + 40) = v16;
  *(v3 + 48) = v21;
  *(v3 + 56) = 256;
  *(v3 + 58) = 0;
  return v3;
}

uint64_t sub_21CB50384()
{

  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo62PMSafariAutoFillEditingStrongPasswordInformationViewController21ConfigurationProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21CB50454@<X0>(void *a1@<X8>)
{
  *a1 = 0x6C69636E6570;
  a1[1] = 0xE600000000000000;
  v2 = *MEMORY[0x277CBA688];
  v3 = sub_21CB813C4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

id static PMSafariAutoFillEditingStrongPasswordInformationViewController.shouldShowView.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    v1 = [objc_opt_self() pm_defaults];
    v2 = sub_21CB85584();
    v3 = [v1 BOOLForKey_];

    return (v3 ^ 1);
  }

  return result;
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void PMSafariAutoFillEditingStrongPasswordInformationViewController.contentSize.getter()
{
  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() shouldShowView])
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      [v1 intrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.websiteTitle.getter()
{
  v1 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle;
  swift_beginAccess();
  sub_21C7A3394(v0 + v1, v4);
  swift_dynamicCast();
  return v3;
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.websiteTitle.setter(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x277D837D0];
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v3 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v2 + v3));
  sub_21C731A9C(&v5, (v2 + v3));
  return swift_endAccess();
}

void sub_21CB50B30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 websiteTitle];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.formURL.getter()
{
  v2 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL;
  swift_beginAccess();
  sub_21C7A3394(v1 + v2, v4);
  sub_21CB80BE4();
  return swift_dynamicCast();
}

uint64_t PMSafariAutoFillEditingStrongPasswordInformationViewController.formURL.setter(uint64_t a1)
{
  v3 = sub_21CB80BE4();
  v8 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v7);
  (*(*(v3 - 8) + 32))(boxed_opaque_existential_0, a1, v3);
  v5 = OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v5));
  sub_21C731A9C(&v7, (v1 + v5));
  return swift_endAccess();
}

void sub_21CB50F0C(id *a1)
{
  v1 = [*a1 formURL];
  sub_21CB80B94();
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(websiteTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_21CB85584();

  v6 = sub_21CB80B74();
  v7 = [v4 initWithWebsiteTitle:v5 url:v6];

  v8 = sub_21CB80BE4();
  (*(*(v8 - 8) + 8))(a3, v8);
  return v7;
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(websiteTitle:url:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21CB80BE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v12 = &v4[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anywebsiteTitle];
  *(v12 + 3) = MEMORY[0x277D837D0];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v4[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController__anyFormURL];
  v13[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v15 = *(v9 + 16);
  v15(boxed_opaque_existential_0, a3, v8);
  v15(v11, a3, v8);
  _s21ConfigurationProviderCMa_2(0);
  v16 = swift_allocObject();

  sub_21CB501C8(a1, a2, v11);
  *&v4[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController_configurationProvider] = v16;
  v19.receiver = v4;
  v19.super_class = PMSafariAutoFillEditingStrongPasswordInformationViewController;
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  (*(v9 + 8))(a3, v8);
  return v17;
}

uint64_t _s21ConfigurationProviderCMa_2(uint64_t a1)
{
  result = qword_27CDFA2F0;
  if (!qword_27CDFA2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PMSafariAutoFillEditingStrongPasswordInformationViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariAutoFillEditingStrongPasswordInformationViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR___PMSafariAutoFillEditingStrongPasswordInformationViewController_configurationProvider];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_21C6EDBAC(v11, v10, &unk_27CDFA2C0, &unk_21CBA68A0);

  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v11, &unk_27CDFA2C0, &unk_21CBA68A0);
  v13[0] = sub_21CB518E4;
  v13[1] = v2;
  v13[2] = nullsub_1;
  v13[3] = 0;
  v16 = v1;
  v17 = 0;
  sub_21C6EA794(v18, &qword_27CDF3260, &qword_21CBAF450);
  v18[5] = 0;
  sub_21C6EDBAC(&v7, v18, &unk_27CDFA2C0, &unk_21CBA68A0);
  v14 = 0u;
  v15 = 0u;
  v4 = objc_opt_self();
  v18[6] = [v4 biometryType];
  LOBYTE(v4) = [v4 isPad];
  sub_21C6EA794(&v7, &unk_27CDFA2C0, &unk_21CBA68A0);
  v19 = v4;
  sub_21C6EDBAC(v13, &v7, &qword_27CDFA2D0, &qword_21CBCDF10);
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA2D8, &qword_21CBCDF18));
  v6 = sub_21CB827D4();
  sub_21C6EA794(v13, &qword_27CDFA2D0, &qword_21CBCDF10);
  [v3 setView_];
}

id PMSafariAutoFillEditingStrongPasswordInformationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id sub_21CB51804(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() pm_defaults];
  v4 = sub_21CB85584();
  [v3 setBool:1 forKey:v4];

  result = [a2 delegate];
  if (result)
  {
    [result editingStrongPasswordInformationViewShouldClose_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CB51918(uint64_t a1)
{
  result = sub_21CB81114();
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

unint64_t type metadata accessor for PMSafariAutoFillEditingStrongPasswordInformationViewController()
{
  result = qword_27CDFA360;
  if (!qword_27CDFA360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDFA360);
  }

  return result;
}

uint64_t sub_21CB51A00(uint64_t a1, unint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    sub_21CB81014();
    sub_21CB81004();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21CBA0690;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_21C7C0050();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v10 = sub_21CB855F4();
  }

  else
  {
LABEL_6:
    sub_21CB81014();
    v10 = sub_21CB81004();
    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

uint64_t sub_21CB51BEC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = a1;
  }

  else
  {
    result = sub_21CB80BB4();
    if (!v5)
    {
      return result;
    }

    v6 = sub_21CB85584();

    v7 = [v6 safari_highLevelDomainForPasswordManager];

    v3 = sub_21CB855C4();
  }

  return v3;
}

uint64_t sub_21CB51C9C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = sub_21CB858B4();
  v3[13] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v3[14] = v6;
  v3[15] = v5;

  return MEMORY[0x2822009F8](sub_21CB51DB0, v6, v5);
}

uint64_t sub_21CB51DB0()
{
  v1 = *(v0 + 48);
  swift_getKeyPath(byte_21CBCE0F0);
  swift_getKeyPath(byte_21CBCE118);
  sub_21CB81DB4();

  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v0 + 64);
    v28 = *(v0 + 56);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v0 + 72);
      sub_21CB566E8(v6 + *(v5 + 72) * v4, v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v1 = *(v7 + *(v28 + 20));
      if (v1)
      {
        v8 = *(v0 + 32);
        sub_21C7B1B18();
        v9 = v1;
        v10 = v8;
        v1 = sub_21CB85DD4();

        if (v1)
        {
          break;
        }
      }

      ++v4;
      sub_21CB568AC(*(v0 + 72), type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);

    sub_21CB5692C(v13, v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    sub_21CB5692C(v12, v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v14 = *(v11 + *(v28 + 20));
    *(v0 + 128) = v14;
    if (!v14)
    {
      v23 = *(v0 + 88);

      v20 = v23;
      goto LABEL_17;
    }

    v15 = *(v0 + 40);
    v1 = v14;
    v16 = [v15 totpGenerators];
    v17 = sub_21CB85824();

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

LABEL_24:
    v18 = sub_21CB85FA4();
LABEL_10:

    if (v18)
    {
      v19 = *(v0 + 88);

      swift_getKeyPath(byte_21CBCE140);
      swift_getKeyPath(byte_21CBCE168);
      *(v0 + 184) = 1;

      sub_21CB81DC4();

      v20 = v19;
LABEL_17:
      sub_21CB568AC(v20, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      goto LABEL_13;
    }

    v24 = *(*(v0 + 48) + 16);
    v25 = qword_27CDEA4C0;

    if (v25 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    *(v0 + 136) = sub_21C7072A8(v24, *(v0 + 24));

    *(v0 + 144) = sub_21CB858A4();
    v27 = sub_21CB85874();
    *(v0 + 152) = v27;
    *(v0 + 160) = v26;

    return MEMORY[0x2822009F8](sub_21CB521C8, v27, v26);
  }

  else
  {
LABEL_12:

LABEL_13:

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_21CB521C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = v0[16];
    v3 = *(v0[17] + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 80) + **(v3 + 80));
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_21CB5235C;
    v6 = v0[5];

    return v10(v2, v6, ObjectType, v3);
  }

  else
  {

    v8 = v0[14];
    v9 = v0[15];

    return MEMORY[0x2822009F8](sub_21CB5250C, v8, v9);
  }
}

uint64_t sub_21CB5235C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21CB524A0, v3, v2);
}

uint64_t sub_21CB524A0()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_21CB5250C, v1, v2);
}

uint64_t sub_21CB5250C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);

  swift_getKeyPath(byte_21CBCE188);
  swift_getKeyPath(aH_43);
  *(v0 + 185) = 0;

  sub_21CB81DC4();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_21CB56750;
  *(v5 + 24) = v4;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB568AC(v2, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21CB526A0(uint64_t a1)
{
  sub_21CB86484();
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB564C0(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v3 = *(v1 + *(a1 + 20));
  sub_21CB864A4();
  if (v3)
  {
    v4 = v3;
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

void sub_21CB52770(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB564C0(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v4 = *(v2 + *(a2 + 20));
  if (v4)
  {
    sub_21CB864A4();
    v5 = v4;
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }
}

uint64_t sub_21CB52858(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB564C0(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v4 = *(v2 + *(a2 + 20));
  sub_21CB864A4();
  if (v4)
  {
    v5 = v4;
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

double sub_21CB529C0()
{
  swift_getKeyPath(a0_57);
  swift_getKeyPath(byte_21CBCE360);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CB52A38(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA408, &qword_21CBCE0E8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v37 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  MEMORY[0x28223BE20](v37);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA400, &unk_21CBCE0D8);
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v37 - v19;
  *(v2 + 16) = swift_getKeyPath(aH_118, v18);
  *(v2 + 24) = 0;
  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__suggestedAccounts;
  v46 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3C8, &qword_21CBCDFD8);
  sub_21CB81D74();
  (*(v17 + 32))(v2 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isFailedToAddAlertPresented;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v23 = *(v13 + 32);
  v23(v2 + v22, v15, v12);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDiscardAlertPresented;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v23(v2 + v24, v15, v12);
  v25 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDuplicateGeneratorAlertPresented;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v23(v2 + v25, v15, v12);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isAddToSuggestedAccountAlertPresented;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v23(v2 + v26, v15, v12);
  v27 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__addToSuggestedAccountAlertAccountAndCode;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  sub_21CB567A8(v11, v8);
  v29 = v38;
  sub_21CB81D74();
  sub_21C6EA794(v11, &qword_27CDFA3D8, &qword_21CBCDFE0);
  (*(v39 + 32))(v2 + v27, v29, v40);
  swift_beginAccess();
  v45 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3B8, &qword_21CBCDFD0);
  sub_21CB81D74();
  swift_endAccess();
  v30 = *(v2 + 16);
  v31 = qword_27CDEA4C0;

  if (v31 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v30, v46);

  swift_getKeyPath(asc_21CBCE208);
  swift_getKeyPath(byte_21CBCE230);
  sub_21CB81DB4();

  sub_21CB53120(v46);

  v32 = *(v2 + 16);

  sub_21CB86544();
  sub_21C7072A8(v32, v46);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v33 = v42;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB56820();
  v34 = v44;
  v35 = sub_21CB81E04();

  (*(v43 + 8))(v33, v34);
  *(v2 + 24) = v35;

  return v2;
}

uint64_t sub_21CB53120(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v211 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v218 = &v211 - v7;
  MEMORY[0x28223BE20](v8);
  v224 = &v211 - v9;
  MEMORY[0x28223BE20](v10);
  v230 = &v211 - v11;
  MEMORY[0x28223BE20](v12);
  v235 = &v211 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v211 - v15;
  MEMORY[0x28223BE20](v17);
  v244 = &v211 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA418, &qword_21CBCE250);
  MEMORY[0x28223BE20](v19 - 8);
  v243 = &v211 - v20;
  v223 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v252 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v221 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v239 = &v211 - v23;
  MEMORY[0x28223BE20](v24);
  v240 = (&v211 - v25);
  MEMORY[0x28223BE20](v26);
  v247 = &v211 - v27;
  MEMORY[0x28223BE20](v28);
  v242 = &v211 - v29;
  MEMORY[0x28223BE20](v30);
  v212 = &v211 - v31;
  MEMORY[0x28223BE20](v32);
  v214 = &v211 - v33;
  MEMORY[0x28223BE20](v34);
  v213 = &v211 - v35;
  MEMORY[0x28223BE20](v36);
  v215 = &v211 - v37;
  MEMORY[0x28223BE20](v38);
  v232 = (&v211 - v39);
  MEMORY[0x28223BE20](v40);
  v228 = &v211 - v41;
  v220 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v220);
  v219 = &v211 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v227);
  v234 = (&v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = type metadata accessor for PMAccount(0);
  v44 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v216 = &v211 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v229 = &v211 - v47;
  MEMORY[0x28223BE20](v48);
  v241 = &v211 - v49;
  *&v51 = MEMORY[0x28223BE20](v50).n128_u64[0];
  v53 = &v211 - v52;
  swift_getKeyPath(byte_21CBCE258, v51);
  swift_getKeyPath(byte_21CBCE280);
  v54 = sub_21CB81DA4();
  v56 = v55;

  *v56 = MEMORY[0x277D84F98];
  v54(&v259, 0);

  swift_getKeyPath(byte_21CBCE0F0);
  swift_getKeyPath(byte_21CBCE118);
  v253 = v2;
  sub_21CB81DB4();

  v57 = sub_21CB00A44(v259);

  v258 = v57;
  v257 = MEMORY[0x277D84FA0];
  v226 = *(a1 + 16);
  if (!v226)
  {
LABEL_128:
  }

  v58 = 0;
  v222 = 0;
  v225 = a1 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v251 = *(v44 + 72);
  v254 = (v44 + 56);
  v249 = (v44 + 48);
  v59 = v240;
  v60 = v234;
  v233 = v16;
  v250 = v53;
  while (1)
  {
    v231 = v58;
    sub_21CB566E8(v225 + v251 * v58, v53, type metadata accessor for PMAccount);
    sub_21CB566E8(&v53[*(v255 + 24)], v60, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v61 = v219;
    sub_21CB5692C(v60, v219, type metadata accessor for PMAccount.MockData);
    v62 = *(v61 + *(v220 + 56));
    v63 = v62;
    sub_21CB568AC(v61, type metadata accessor for PMAccount.MockData);
    if (!v62)
    {
      goto LABEL_14;
    }

LABEL_4:

LABEL_5:
    v64 = v231 + 1;
    sub_21CB568AC(v53, type metadata accessor for PMAccount);
    v58 = v64;
    if (v64 == v226)
    {
      goto LABEL_128;
    }
  }

  v63 = *v60;
  v65 = [*v60 totpGenerators];
  sub_21C7B1B18();
  v66 = sub_21CB85824();

  if (!(v66 >> 62))
  {
    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (sub_21CB85FA4())
  {
LABEL_9:
    if ((v66 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CF15BD0](0, v66);
      swift_unknownObjectRelease();
    }

    else if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_136;
    }

    goto LABEL_4;
  }

LABEL_13:

LABEL_14:
  v67 = v258;
  v68 = v258 + 56;
  v69 = 1 << *(v258 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & *(v258 + 56);
  v72 = (v69 + 63) >> 6;

  v73 = 0;
  v74 = MEMORY[0x277D84F90];
  v238 = MEMORY[0x277D84F90];
LABEL_18:
  v75 = v257;
  v248 = v74;
  while (v71)
  {
LABEL_26:
    v78 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v79 = *(v252 + 72);
    v80 = v228;
    sub_21CB566E8(v67[6] + v79 * (v78 | (v73 << 6)), v228, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v81 = v80;
    v76 = v232;
    sub_21CB5692C(v81, v232, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    if ((sub_21C8FF314(v76, v75) & 1) == 0)
    {
      v82 = *(v76 + *(v223 + 20));
      if (v82)
      {
        v83 = [v82 heuristicallyDeterminedServiceNameHints];
        if (v83)
        {
          v246 = v67;
          v84 = v83;
          v85 = sub_21CB85824();

          MEMORY[0x28223BE20](v86);
          *(&v211 - 2) = v250;
          v87 = v222;
          LOBYTE(v84) = sub_21C8A13AC(sub_21CB5690C, (&v211 - 4), v85);
          v222 = v87;

          if (v84)
          {
            v88 = v232;
            v89 = v232[3];
            v90 = HIBYTE(v89) & 0xF;
            if ((v89 & 0x2000000000000000) == 0)
            {
              v90 = v232[2] & 0xFFFFFFFFFFFFLL;
            }

            if (!v90)
            {
              goto LABEL_48;
            }

            PMAccount.userName.getter();
            if (v91)
            {
              v92 = sub_21CB85634();
              v94 = v93;

              v95 = sub_21CB85634();
              if (v94)
              {
                if (v92 == v95 && v94 == v96)
                {

                  v88 = v232;
                  goto LABEL_40;
                }

                v97 = sub_21CB86344();

                v88 = v232;
                if (v97)
                {
LABEL_40:
                  sub_21CB566E8(v88, v215, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v74 = v248;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v74 = sub_21CA4F3F8(0, v74[2] + 1, 1, v74);
                  }

                  v99 = v74[2];
                  v98 = v74[3];
                  if (v99 >= v98 >> 1)
                  {
                    v74 = sub_21CA4F3F8((v98 > 1), v99 + 1, 1, v74);
                  }

                  v74[2] = v99 + 1;
                  sub_21CB5692C(v215, v74 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + v99 * v79, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v100 = v232;
                  v101 = v214;
                  sub_21CB566E8(v232, v214, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v102 = v213;
                  sub_21CA941C8(v213, v101);
                  sub_21CB568AC(v102, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v103 = v100;
LABEL_45:
                  sub_21CB568AC(v103, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v59 = v240;
                  v67 = v246;
                  goto LABEL_18;
                }

LABEL_48:
                sub_21CB566E8(v88, v212, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v238 = sub_21CA4F3F8(0, v238[2] + 1, 1, v238);
                }

                v105 = v238[2];
                v104 = v238[3];
                if (v105 >= v104 >> 1)
                {
                  v238 = sub_21CA4F3F8((v104 > 1), v105 + 1, 1, v238);
                }

                v74 = v248;
                v106 = v238;
                v238[2] = v105 + 1;
                sub_21CB5692C(v212, v106 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + v105 * v79, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                v103 = v232;
                goto LABEL_45;
              }
            }

            else
            {
              sub_21CB85634();
            }

            v88 = v232;
            goto LABEL_48;
          }

          v76 = v232;
          v74 = v248;
          v67 = v246;
        }

        else
        {
          v76 = v232;
        }
      }
    }

    sub_21CB568AC(v76, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v59 = v240;
  }

  while (1)
  {
    v77 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v77 >= v72)
    {

      if (v74[2])
      {

        v107 = v247;
        v53 = v250;
        v246 = v74[2];
        if (!v246)
        {

LABEL_126:
          v60 = v234;
          goto LABEL_5;
        }

        v108 = 0;
        v245 = v74 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
        while (2)
        {
          if (v108 >= v74[2])
          {
            goto LABEL_130;
          }

          v111 = *(v252 + 72);
          v112 = v242;
          sub_21CB566E8(&v245[v111 * v108], v242, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v113 = v243;
          sub_21CB4B2E0(v112, v243);
          sub_21C6EA794(v113, &qword_27CDFA418, &qword_21CBCE250);
          sub_21CB5692C(v112, v107, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v114 = v244;
          sub_21CB566E8(v53, v244, type metadata accessor for PMAccount);
          v115 = v255;
          v116 = *v254;
          (*v254)(v114, 0, 1, v255);
          swift_getKeyPath(byte_21CBCE258);
          swift_getKeyPath(byte_21CBCE280);
          v117 = sub_21CB81DA4();
          v119 = v118;
          if ((*v249)(v114, 1, v115) == 1)
          {
            sub_21C6EA794(v114, &unk_27CDEBE60, &unk_21CB9FF40);
            v120 = sub_21CB10AEC(v107);
            if (v121)
            {
              v122 = v120;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v256 = *v119;
              *v119 = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_21C8D55C4();
              }

              v124 = v256;
              sub_21CB568AC(v256[6] + v122 * v111, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v110 = v233;
              sub_21CB5692C(*(v124 + 56) + v122 * v251, v233, type metadata accessor for PMAccount);
              sub_21CADAE5C(v122, v124);
              v107 = v247;
              sub_21CB568AC(v247, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              *v119 = v124;

              v109 = 0;
            }

            else
            {
              sub_21CB568AC(v107, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v109 = 1;
              v110 = v233;
            }

            v116(v110, v109, 1, v255);
            sub_21C6EA794(v110, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_58:
            v74 = v248;
            ++v108;
            v117(&v259, 0);

            v53 = v250;
            if (v246 == v108)
            {

              v59 = v240;
              goto LABEL_126;
            }

            continue;
          }

          break;
        }

        sub_21CB5692C(v114, v241, type metadata accessor for PMAccount);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v256 = *v119;
        v126 = v256;
        *v119 = 0x8000000000000000;
        v128 = sub_21CB10AEC(v107);
        v129 = v126[2];
        v130 = (v127 & 1) == 0;
        v131 = v129 + v130;
        if (__OFADD__(v129, v130))
        {
          goto LABEL_132;
        }

        v132 = v127;
        if (v126[3] >= v131)
        {
          if (v125)
          {
            v135 = v256;
            if ((v127 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            sub_21C8D55C4();
            v135 = v256;
            if ((v132 & 1) == 0)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          sub_21C8D1658(v131, v125);
          v133 = sub_21CB10AEC(v247);
          if ((v132 & 1) != (v134 & 1))
          {
            goto LABEL_139;
          }

          v128 = v133;
          v135 = v256;
          if ((v132 & 1) == 0)
          {
LABEL_69:
            v135[(v128 >> 6) + 8] |= 1 << v128;
            v107 = v247;
            sub_21CB566E8(v247, v135[6] + v128 * v111, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
            sub_21CB5692C(v241, v135[7] + v128 * v251, type metadata accessor for PMAccount);
            sub_21CB568AC(v107, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
            v136 = v135[2];
            v137 = __OFADD__(v136, 1);
            v138 = v136 + 1;
            if (v137)
            {
              goto LABEL_133;
            }

            v135[2] = v138;
            goto LABEL_74;
          }
        }

        sub_21C897944(v241, v135[7] + v128 * v251);
        v107 = v247;
        sub_21CB568AC(v247, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
LABEL_74:
        *v119 = v135;

        goto LABEL_58;
      }

      v139 = v238;
      v60 = v234;
      v53 = v250;
      v237 = v238[2];
      if (!v237)
      {
LABEL_124:

        goto LABEL_5;
      }

      v140 = 0;
      v236 = v238 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
      while (2)
      {
        if (v140 >= v139[2])
        {
          goto LABEL_131;
        }

        v143 = *(v252 + 72);
        sub_21CB566E8(&v236[v143 * v140], v59, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        swift_getKeyPath(byte_21CBCE258);
        swift_getKeyPath(byte_21CBCE280);
        sub_21CB81DB4();

        v144 = v259;
        if (*(v259 + 16))
        {
          v145 = sub_21CB10AEC(v59);
          if (v146)
          {
            v147 = v235;
            sub_21CB566E8(*(v144 + 56) + v145 * v251, v235, type metadata accessor for PMAccount);

            v148 = *v254;
            (*v254)(v147, 0, 1, v255);
            sub_21C6EA794(v147, &unk_27CDEBE60, &unk_21CB9FF40);
            if ((sub_21C8FF314(v59, v257) & 1) == 0)
            {
              v245 = v143;
              v149 = v59;
              v150 = v221;
              sub_21CB566E8(v149, v221, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
              v151 = v218;
              v152 = v255;
              v148(v218, 1, 1, v255);
              swift_getKeyPath(byte_21CBCE258);
              KeyPath = swift_getKeyPath(byte_21CBCE280);
              v246 = sub_21CB81DA4();
              v155 = v154;
              v156 = (*v249)(v151, 1, v152);
              v248 = KeyPath;
              if (v156 == 1)
              {
                sub_21C6EA794(v151, &unk_27CDEBE60, &unk_21CB9FF40);
                v157 = sub_21CB10AEC(v150);
                if (v158)
                {
                  v159 = v157;
                  v160 = swift_isUniquelyReferenced_nonNull_native();
                  v256 = *v155;
                  *v155 = 0x8000000000000000;
                  if (!v160)
                  {
                    sub_21C8D55C4();
                  }

                  v161 = v256;
                  sub_21CB568AC(v256[6] + v159 * v245, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v162 = v217;
                  sub_21CB5692C(*(v161 + 56) + v159 * v251, v217, type metadata accessor for PMAccount);
                  sub_21CADAE5C(v159, v161);
                  sub_21CB568AC(v221, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  *v155 = v161;

                  v163 = 0;
                  v59 = v240;
                  v53 = v250;
                }

                else
                {
                  sub_21CB568AC(v150, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v163 = 1;
                  v162 = v217;
                  v59 = v240;
                }

                v148(v162, v163, 1, v255);
                sub_21C6EA794(v162, &unk_27CDEBE60, &unk_21CB9FF40);
                v60 = v234;
              }

              else
              {
                v194 = v216;
                sub_21CB5692C(v151, v216, type metadata accessor for PMAccount);
                v195 = swift_isUniquelyReferenced_nonNull_native();
                v256 = *v155;
                v196 = v256;
                *v155 = 0x8000000000000000;
                v197 = sub_21CB10AEC(v150);
                v199 = v196[2];
                v200 = (v198 & 1) == 0;
                v137 = __OFADD__(v199, v200);
                v201 = v199 + v200;
                if (v137)
                {
                  goto LABEL_137;
                }

                v202 = v198;
                if (v196[3] >= v201)
                {
                  if ((v195 & 1) == 0)
                  {
                    v209 = v197;
                    sub_21C8D55C4();
                    v197 = v209;
                    v150 = v221;
                  }
                }

                else
                {
                  sub_21C8D1658(v201, v195);
                  v197 = sub_21CB10AEC(v150);
                  if ((v202 & 1) != (v203 & 1))
                  {
                    goto LABEL_139;
                  }
                }

                v53 = v250;
                v204 = v256;
                if (v202)
                {
                  sub_21C897944(v194, v256[7] + v197 * v251);
                  sub_21CB568AC(v150, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                }

                else
                {
                  v256[(v197 >> 6) + 8] |= 1 << v197;
                  v205 = v197;
                  sub_21CB566E8(v150, v204[6] + v197 * v245, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  sub_21CB5692C(v194, v204[7] + v205 * v251, type metadata accessor for PMAccount);
                  sub_21CB568AC(v150, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
                  v206 = v204[2];
                  v137 = __OFADD__(v206, 1);
                  v207 = v206 + 1;
                  if (v137)
                  {
                    goto LABEL_138;
                  }

                  v204[2] = v207;
                }

                *v155 = v204;

                v59 = v240;
                v60 = v234;
              }

              v139 = v238;
              (v246)(&v259, 0);
LABEL_83:
            }

            ++v140;
            sub_21CB568AC(v59, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
            if (v237 == v140)
            {
              goto LABEL_124;
            }

            continue;
          }
        }

        break;
      }

      v245 = v143;

      v164 = v59;
      v165 = *v254;
      v166 = v235;
      v167 = v255;
      (*v254)(v235, 1, 1, v255);
      sub_21C6EA794(v166, &unk_27CDEBE60, &unk_21CB9FF40);
      v168 = v239;
      sub_21CB566E8(v164, v239, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v169 = v230;
      sub_21CB566E8(v53, v230, type metadata accessor for PMAccount);
      v165(v169, 0, 1, v167);
      v170 = swift_getKeyPath(byte_21CBCE258);
      v171 = swift_getKeyPath(byte_21CBCE280);
      v246 = v170;
      v248 = v171;
      v172 = sub_21CB81DA4();
      v174 = v173;
      if ((*v249)(v169, 1, v167) == 1)
      {
        sub_21C6EA794(v169, &unk_27CDEBE60, &unk_21CB9FF40);
        v175 = sub_21CB10AEC(v168);
        if (v176)
        {
          v177 = v175;
          v178 = swift_isUniquelyReferenced_nonNull_native();
          v256 = *v174;
          *v174 = 0x8000000000000000;
          if (!v178)
          {
            sub_21C8D55C4();
          }

          v179 = v256;
          sub_21CB568AC(v256[6] + v177 * v245, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v142 = v224;
          sub_21CB5692C(*(v179 + 56) + v177 * v251, v224, type metadata accessor for PMAccount);
          sub_21CADAE5C(v177, v179);
          sub_21CB568AC(v239, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          *v174 = v179;

          v141 = 0;
          v53 = v250;
        }

        else
        {
          sub_21CB568AC(v168, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v141 = 1;
          v142 = v224;
        }

        v165(v142, v141, 1, v255);
        sub_21C6EA794(v142, &unk_27CDEBE60, &unk_21CB9FF40);
        v59 = v240;
        v60 = v234;
      }

      else
      {
        sub_21CB5692C(v169, v229, type metadata accessor for PMAccount);
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v256 = *v174;
        v181 = v256;
        *v174 = 0x8000000000000000;
        v182 = sub_21CB10AEC(v168);
        v184 = v181[2];
        v185 = (v183 & 1) == 0;
        v137 = __OFADD__(v184, v185);
        v186 = v184 + v185;
        if (v137)
        {
          goto LABEL_134;
        }

        v187 = v183;
        if (v181[3] >= v186)
        {
          v59 = v240;
          if ((v180 & 1) == 0)
          {
            v208 = v182;
            sub_21C8D55C4();
            v182 = v208;
            v59 = v240;
          }
        }

        else
        {
          sub_21C8D1658(v186, v180);
          v182 = sub_21CB10AEC(v239);
          v59 = v240;
          if ((v187 & 1) != (v188 & 1))
          {
            goto LABEL_139;
          }
        }

        v53 = v250;
        v189 = v256;
        if (v187)
        {
          sub_21C897944(v229, v256[7] + v182 * v251);
          sub_21CB568AC(v239, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        }

        else
        {
          v256[(v182 >> 6) + 8] |= 1 << v182;
          v190 = v182;
          v191 = v239;
          sub_21CB566E8(v239, v189[6] + v182 * v245, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          sub_21CB5692C(v229, v189[7] + v190 * v251, type metadata accessor for PMAccount);
          sub_21CB568AC(v191, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
          v192 = v189[2];
          v137 = __OFADD__(v192, 1);
          v193 = v192 + 1;
          if (v137)
          {
            goto LABEL_135;
          }

          v189[2] = v193;
        }

        *v174 = v189;

        v60 = v234;
      }

      v139 = v238;
      v172(&v259, 0);
      goto LABEL_83;
    }

    v71 = *(v68 + 8 * v77);
    ++v73;
    if (v71)
    {
      v73 = v77;
      goto LABEL_26;
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
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

double sub_21CB54E14(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    MEMORY[0x28223BE20](v4);
    sub_21CB85254();
    sub_21CB82524();
  }

  return result;
}

id sub_21CB54F18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount(0);
  sub_21CB566E8(a2 + *(v6 + 24), v5, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB568AC(v5, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v8 = *v5;
    v9 = sub_21CB85584();
    v10 = [v8 matchesServiceNameHintString_];

    return v10;
  }
}

uint64_t sub_21CB55044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBCE258);
  swift_getKeyPath(byte_21CBCE280);
  sub_21CB81DB4();

  if (*(v12 + 16) && (v4 = sub_21CB10AEC(a1), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v12 + 56);
    v8 = type metadata accessor for PMAccount(0);
    v9 = *(v8 - 8);
    sub_21CB566E8(v7 + *(v9 + 72) * v6, a2, type metadata accessor for PMAccount);

    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {

    v11 = type metadata accessor for PMAccount(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_21CB551C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for PMAccount.Storage(0);
  v3[6] = swift_task_alloc();
  sub_21CB858B4();
  v3[7] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_21CB55294, v5, v4);
}

uint64_t sub_21CB55294()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMAccount(0);
  sub_21CB566E8(v2 + *(v3 + 24), v1, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 48);

    sub_21CB568AC(v4, type metadata accessor for PMAccount.Storage);
LABEL_8:
    swift_getKeyPath(byte_21CBCE2A0);
    swift_getKeyPath(byte_21CBCE2C8);
    *(v0 + 104) = 1;

    sub_21CB81DC4();

    v12 = *(v0 + 8);

    return v12();
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *v5;
  *(v0 + 80) = *v5;
  v8 = *(v6 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  *(v0 + 88) = v8;
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_21CB5546C;

  return sub_21CB51C9C(v9, v7);
}

uint64_t sub_21CB5546C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21CB5558C, v3, v2);
}

uint64_t sub_21CB5558C()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

void sub_21CB55600(uint64_t a1, uint64_t a2)
{
  v7[2] = a2;
  swift_getKeyPath(byte_21CBCE0F0);
  swift_getKeyPath(byte_21CBCE118);
  v2 = sub_21CB81DA4();
  v4 = v3;
  v5 = sub_21CB64C1C(sub_21CB56788, v7);
  v6 = *(*v4 + 16);
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_21CB655AC(v5, v6);
    v2(v8, 0);
  }
}

uint64_t sub_21CB556D8(_BOOL8 *a1, uint64_t a2)
{
  if (sub_21CA900DC(a1, a2))
  {
    v4 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_21C7B1B18();
        v7 = v6;
        v8 = v5;
        v9 = sub_21CB85DD4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21CB55774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  v11 = *(v10 + 48);
  sub_21CB566E8(a2, v9, type metadata accessor for PMAccount);
  sub_21CB566E8(a1, &v9[v11], type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  swift_getKeyPath(a0_57);
  swift_getKeyPath(byte_21CBCE360);
  sub_21CB567A8(v9, v6);

  sub_21CB81DC4();
  sub_21C6EA794(v9, &qword_27CDFA3D8, &qword_21CBCDFE0);
  swift_getKeyPath(byte_21CBCE188);
  swift_getKeyPath(aH_43);
  v13[15] = 1;

  return sub_21CB81DC4();
}

BOOL sub_21CB55968()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  *&v2 = MEMORY[0x28223BE20](v0).n128_u64[0];
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBCE0F0, v2);
  swift_getKeyPath(byte_21CBCE118);
  sub_21CB81DB4();

  v5 = v17;
  v17 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 20);
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_21CB566E8(v8, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v11 = *&v4[v7];
      v12 = v11;
      v13 = sub_21CB568AC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v11)
      {
        MEMORY[0x21CF15300](v13);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21CB85834();
        }

        sub_21CB85854();
        v10 = v17;
      }

      v8 += v9;
      --v6;
    }

    while (v6);

    if (!(v10 >> 62))
    {
      goto LABEL_9;
    }

LABEL_12:
    v14 = sub_21CB85FA4();
    goto LABEL_10;
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_9:
  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  return v14 == 0;
}

BOOL sub_21CB55BA4()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  *&v2 = MEMORY[0x28223BE20](v0).n128_u64[0];
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBCE0F0, v2);
  swift_getKeyPath(byte_21CBCE118);
  sub_21CB81DB4();

  v5 = v17;
  v17 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 20);
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_21CB566E8(v8, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v11 = *&v4[v7];
      v12 = v11;
      v13 = sub_21CB568AC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v11)
      {
        MEMORY[0x21CF15300](v13);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21CB85834();
        }

        sub_21CB85854();
        v10 = v17;
      }

      v8 += v9;
      --v6;
    }

    while (v6);

    if (!(v10 >> 62))
    {
      goto LABEL_9;
    }

LABEL_12:
    v14 = sub_21CB85FA4();
    goto LABEL_10;
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_9:
  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  return v14 != 0;
}

void sub_21CB55DE0()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  *&v2 = MEMORY[0x28223BE20](v0).n128_u64[0];
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBCE0F0, v2);
  swift_getKeyPath(byte_21CBCE118);
  sub_21CB81DB4();

  v5 = v11;
  v6 = *(v11 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      sub_21CB566E8(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v8 = *&v4[*(v0 + 20)];
      v9 = v8;
      sub_21CB568AC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v8)
      {

        if (v6 != ++v7)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_21CB55F94()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__codesToMigrate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3F8, &qword_21CBCE0D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__suggestedAccounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA400, &unk_21CBCE0D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isFailedToAddAlertPresented;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDiscardAlertPresented, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isDuplicateGeneratorAlertPresented, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__isAddToSuggestedAccountAlertPresented, v6);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMTOTPMigrationModel__addToSuggestedAccountAlertAccountAndCode;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA408, &qword_21CBCE0E8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

void sub_21CB561C0(uint64_t a1)
{
  sub_21C6EA5CC(319, &qword_27CDFA3B0, &qword_27CDFA3B8, &qword_21CBCDFD0);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDFA3C0, &qword_27CDFA3C8, &qword_21CBCDFD8);
    if (v2 <= 0x3F)
    {
      sub_21C6E7ED8();
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDFA3D0, &qword_27CDFA3D8, &qword_21CBCDFE0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21CB563AC(uint64_t a1)
{
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EBED4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CB564C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21CB56558(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBCE258);
  swift_getKeyPath(byte_21CBCE280);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CB565D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBCE258);
  swift_getKeyPath(byte_21CBCE280);

  return sub_21CB81DC4();
}

uint64_t sub_21CB56654(_BOOL8 *a1, uint64_t a2)
{
  if (sub_21CA900DC(a1, a2))
  {
    v4 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_21C7B1B18();
        v7 = v6;
        v8 = v5;
        v9 = sub_21CB85DD4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21CB566E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB567A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB56820()
{
  result = qword_27CDEAC08;
  if (!qword_27CDEAC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEABF8, &unk_21CBAB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAC08);
  }

  return result;
}

uint64_t sub_21CB568AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB5692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB569D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_21CB83ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v11 = *(a1 + 24);
  v51 = *(a1 + 32);
  v52 = v11;
  *&v54 = v11;
  *(&v54 + 1) = v51;
  v50 = sub_21C71F3FC();

  v12 = sub_21CB84054();
  v47 = v13;
  v48 = v12;
  v15 = v14;
  v17 = v16;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A68], v7);
  v18 = *MEMORY[0x277CE0980];
  v19 = sub_21CB83DC4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v6, v18, v19);
  (*(v20 + 56))(v6, 0, 1, v19);
  sub_21CB83E24();
  sub_21C9E1150(v6);
  (*(v8 + 8))(v10, v7);
  v21 = v48;
  v22 = sub_21CB84024();
  v24 = v23;
  LOBYTE(v6) = v25;

  sub_21C74A72C(v21, v15, v17 & 1);

  LODWORD(v54) = sub_21CB837E4();
  v26 = sub_21CB83FC4();
  v28 = v27;
  LOBYTE(v8) = v29;
  sub_21C74A72C(v22, v24, v6 & 1);

  v54 = *(v49 + 8);
  v53 = *(v49 + 8);

  v30 = sub_21CB83FE4();
  v32 = v31;
  LOBYTE(v7) = v33;
  sub_21C74A72C(v26, v28, v8 & 1);

  sub_21C81A534(&v54);
  v34 = sub_21CB83FF4();
  v36 = v35;
  LOBYTE(v8) = v37;
  v39 = v38;
  sub_21C74A72C(v30, v32, v7 & 1);

  sub_21CB855C4();
  v40 = [objc_opt_self() pm_defaults];
  v41 = sub_21CB81E74();
  v42 = sub_21CB85254();
  LOBYTE(v7) = v8 & 1;
  LOBYTE(v53) = v8 & 1;
  v43 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA420, &unk_21CBCE420) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940);
  v44 = v51;

  sub_21CB82B04();
  *v43 = result;
  *a2 = v34;
  *(a2 + 8) = v36;
  *(a2 + 16) = v7;
  *(a2 + 24) = v39;
  *(a2 + 32) = v41;
  *(a2 + 40) = 1;
  v46 = v52;
  *(a2 + 48) = v42;
  *(a2 + 56) = v46;
  *(a2 + 64) = v44;
  return result;
}

id sub_21CB56E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = sub_21CB569D8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return v2;
}

unint64_t sub_21CB56E64()
{
  result = qword_27CDFA428;
  if (!qword_27CDFA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA430, &unk_21CBCE460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA428);
  }

  return result;
}

uint64_t sub_21CB56EC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21CB56F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB56F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v89 = sub_21CB829D4();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21CB82FD4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_21CB81024();
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB830D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA438, &qword_21CBCE518);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA440, &qword_21CBCE520);
  v77 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v71 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA448, &qword_21CBCE528);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v71 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA450, &qword_21CBCE530);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v74 = &v71 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA458, &qword_21CBCE538);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v75 = &v71 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA460, &qword_21CBCE540);
  MEMORY[0x28223BE20](v96);
  v95 = &v71 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA468, &qword_21CBCE548);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v71 - v18;
  v102 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA470, &qword_21CBCE550);
  sub_21C6EADEC(&qword_27CDFA478, &qword_27CDFA470, &qword_21CBCE550, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB830A4();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA480, &qword_21CBCE558) + 36);
  (*(v7 + 16))(&v12[v19], v9, v6);
  v20 = *(v7 + 56);
  v20(&v12[v19], 0, 1, v6);
  KeyPath = swift_getKeyPath(a0_58);
  v22 = &v12[*(v10 + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v7 + 32))(v22 + v23, v9, v6);
  v20(v22 + v23, 0, 1, v6);
  *v22 = KeyPath;
  v24 = v98;
  sub_21CB81014();
  v25 = sub_21CB81004();
  v27 = v26;
  v97 = *(v100 + 8);
  v100 += 8;
  v97(v24, v99);
  v103 = v25;
  v104 = v27;
  v28 = sub_21CB5CFA4();
  v29 = sub_21C71F3FC();
  v30 = v71;
  v31 = MEMORY[0x277D837D0];
  v32 = v29;
  v78 = v29;
  sub_21CB842F4();

  sub_21C6EA794(v12, &qword_27CDFA438, &qword_21CBCE518);
  v33 = v84;
  v34 = v83;
  v35 = v85;
  (*(v84 + 104))(v83, *MEMORY[0x277CDDDC0], v85);
  v103 = v10;
  v104 = v31;
  v105 = v28;
  v106 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v72;
  v38 = v76;
  sub_21CB84684();
  (*(v33 + 8))(v34, v35);
  (*(v77 + 8))(v30, v38);
  v39 = v88;
  sub_21CB85294();
  v103 = v38;
  v104 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_21CB5E1A4(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v42 = v74;
  v43 = v79;
  v44 = v89;
  sub_21CB849C4();
  (*(v90 + 8))(v39, v44);
  (*(v80 + 8))(v37, v43);
  v103 = v43;
  v104 = v44;
  v105 = v40;
  v106 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v75;
  v47 = v81;
  sub_21CB84644();
  (*(v82 + 8))(v42, v47);
  v48 = v73;
  v101 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4A8, &qword_21CBCE5A8);
  v103 = v47;
  v104 = v45;
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDFA4B0, &qword_27CDFA4A8, &qword_21CBCE5A8, MEMORY[0x277CDDF68]);
  v49 = v95;
  v50 = v86;
  sub_21CB84894();
  (*(v87 + 8))(v46, v50);
  v90 = *(v48 + 48);
  v51 = *(v48 + 56);
  swift_getKeyPath(byte_21CBCE5B0);
  sub_21CB81DB4();

  v52 = v103;
  v53 = swift_allocObject();
  v54 = *(v48 + 16);
  v53[1] = *v48;
  v53[2] = v54;
  v55 = *(v48 + 48);
  v53[3] = *(v48 + 32);
  v53[4] = v55;
  v56 = &v49[*(v96 + 36)];
  *v56 = v52;
  *(v56 + 1) = sub_21CB5D148;
  *(v56 + 2) = v53;

  v89 = v51;

  v57 = v98;
  sub_21CB81014();
  v58 = sub_21CB81004();
  v60 = v59;
  v97(v57, v99);
  v111 = v58;
  v112 = v60;
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21CB5E1A4(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel, &unk_21CBCE094);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBCE5F8);
  sub_21CB82694();

  v61 = sub_21CB5D180();
  v62 = v78;
  v63 = v91;
  v64 = v95;
  sub_21CB84754();

  sub_21C6EA794(v64, &qword_27CDFA460, &qword_21CBCE540);
  v65 = v98;
  sub_21CB81014();
  v66 = sub_21CB81004();
  v68 = v67;
  v97(v65, v99);
  v113 = v66;
  v114 = v68;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBCE628);
  sub_21CB82694();

  v103 = v96;
  v104 = MEMORY[0x277D837D0];
  v105 = MEMORY[0x277CE1428];
  v106 = MEMORY[0x277CE0BD8];
  v107 = v61;
  v108 = v62;
  v109 = MEMORY[0x277CE1410];
  v110 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v69 = v92;
  sub_21CB84764();

  return (*(v93 + 8))(v63, v69);
}

uint64_t sub_21CB57F38@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA508, &unk_21CBCE738);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v26 = v15;
  v27 = v14;
  (*(v11 + 8))(v13, v10);
  v30 = a1[3];
  swift_getKeyPath(byte_21CBCE5B0);
  sub_21CB81DB4();

  v29[2] = v29[0];
  v16 = swift_allocObject();
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v18 = a1[3];
  v16[3] = a1[2];
  v16[4] = v18;

  sub_21C6EDBAC(&v30, v29, &qword_27CDFA500, &qword_21CBCE6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3B8, &qword_21CBCDFD0);
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA510, &qword_21CBCE748);
  sub_21C6EADEC(&qword_27CDFA518, &qword_27CDFA3B8, &qword_21CBCDFD0, MEMORY[0x277D83980]);
  sub_21CB5D474();
  sub_21CB5E1A4(&qword_27CDFA538, type metadata accessor for PMTOTPMigrationModel.TOTPCode, &unk_21CBCE01C);
  sub_21CB84FF4();
  v19 = *(v4 + 16);
  v19(v6, v9, v3);
  v20 = v28;
  v21 = v26;
  *v28 = v27;
  v20[1] = v21;
  v22 = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA540, &qword_21CBCE758);
  v19(v22 + *(v23 + 48), v6, v3);
  v24 = *(v4 + 8);

  v24(v9, v3);
  v24(v6, v3);
}

uint64_t sub_21CB58334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4D0, &qword_21CBCE670);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4D8, &qword_21CBCE678);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v43 = &v40 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FB0, &qword_21CBCE680);
  v42 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v41 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4E0, &qword_21CBCE688);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v40 - v9;
  v10 = sub_21CB83604();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4E8, &qword_21CBCE690);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  sub_21CB835C4();
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA4F0, &unk_21CBCE698);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  v16 = sub_21C844588();
  v17 = sub_21C71F3FC();
  v18 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  v55 = v14;
  v56 = MEMORY[0x277D837D0];
  v57 = v15;
  v58 = MEMORY[0x277CE0BD8];
  v19 = v13;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21CB82194();
  sub_21CB55DE0();
  if (v20)
  {
    v21 = sub_21CB835D4();
    MEMORY[0x28223BE20](v21);
    *(&v40 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FB8, &unk_21CBB2E00);
    sub_21C94B574();
    v22 = v41;
    sub_21CB82194();
    v23 = sub_21C6EADEC(&qword_27CDFA4F8, &qword_27CDF1FB0, &qword_21CBCE680, MEMORY[0x277CDD7A8]);
    v24 = v43;
    v25 = v48;
    MEMORY[0x21CF131E0](v22, v48, v23);
    v26 = v47;
    v27 = v44;
    v28 = v50;
    (*(v47 + 16))(v44, v24, v50);
    (*(v26 + 56))(v27, 0, 1, v28);
    v55 = v25;
    v56 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v49;
    MEMORY[0x21CF13220](v27, v28, OpaqueTypeConformance2);
    sub_21C6EA794(v27, &qword_27CDFA4E0, &qword_21CBCE688);
    (*(v26 + 8))(v24, v28);
    (*(v42 + 8))(v22, v25);
  }

  else
  {
    v31 = v44;
    v32 = v50;
    (*(v47 + 56))(v44, 1, 1, v50);
    v33 = sub_21C6EADEC(&qword_27CDFA4F8, &qword_27CDF1FB0, &qword_21CBCE680, MEMORY[0x277CDD7A8]);
    v55 = v48;
    v56 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v30 = v49;
    MEMORY[0x21CF13220](v31, v32, v34);
    sub_21C6EA794(v31, &qword_27CDFA4E0, &qword_21CBCE688);
  }

  v35 = v51;
  v36 = *(v52 + 48);
  v38 = v45;
  v37 = v46;
  (*(v45 + 16))(v51, v19, v46);
  sub_21C6EDBAC(v30, &v35[v36], &qword_27CDFA4E0, &qword_21CBCE688);
  sub_21CB83394();
  sub_21C6EA794(v30, &qword_27CDFA4E0, &qword_21CBCE688);
  return (*(v38 + 8))(v19, v37);
}

uint64_t sub_21CB58A30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_21CB81024();
  v29 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v30);
  v32 = &v27 - v10;
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  v28 = *(v7 + 8);
  v28(v9, v6);
  v34 = v11;
  v35 = v13;
  sub_21CB81ED4();
  v14 = sub_21CB81F14();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v27 = *(v2 + 48);
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  v15[1] = *v2;
  v15[2] = v16;
  v17 = *(v2 + 48);
  v15[3] = *(v2 + 32);
  v15[4] = v17;
  sub_21C71F3FC();

  v18 = v32;
  sub_21CB84DC4();
  LOBYTE(v11) = sub_21CB55968();
  KeyPath = swift_getKeyPath(byte_21CBCE6B0);
  v20 = swift_allocObject();
  *(v20 + 16) = v11 & 1;
  v21 = &v18[*(v30 + 36)];
  *v21 = KeyPath;
  v21[1] = sub_21C87E800;
  v21[2] = v20;
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  v28(v9, v29);
  v36 = v22;
  v37 = v24;
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21CB5E1A4(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel, &unk_21CBCE094);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBCE6E8);
  sub_21CB82694();

  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C844588();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  v25 = v32;
  sub_21CB84424();

  return sub_21C6EA794(v25, &qword_27CDEDA98, &unk_21CBABCB0);
}

uint64_t sub_21CB58F18@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81F14();
  v25 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81EE4();
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v15 = type metadata accessor for PMPlatformRoleButton(0);
  (*(v9 + 16))(&a2[*(v15 + 20)], v11, v8);
  v27 = a1[3];
  v24 = *(&v27 + 1);
  v16 = swift_allocObject();
  v17 = a1[1];
  *(v16 + 1) = *a1;
  *(v16 + 2) = v17;
  v18 = a1[3];
  *(v16 + 3) = a1[2];
  *(v16 + 4) = v18;
  *a2 = v12;
  *(a2 + 1) = v14;
  v19 = &a2[*(v15 + 24)];
  *v19 = sub_21CB5E3D4;
  v19[1] = v16;

  sub_21C6EDBAC(&v27, v26, &qword_27CDFA500, &qword_21CBCE6A8);
  LOBYTE(a1) = sub_21CB55BA4();
  (*(v9 + 8))(v11, v25);
  KeyPath = swift_getKeyPath(byte_21CBCE6B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FB8, &unk_21CBB2E00);
  v23 = &a2[*(result + 36)];
  *v23 = KeyPath;
  v23[1] = sub_21C735744;
  v23[2] = v21;
  return result;
}

uint64_t sub_21CB591F0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB59344(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA530, &qword_21CBCE750);
  sub_21C6EADEC(&qword_27CDFA528, &qword_27CDFA530, &qword_21CBCE750, MEMORY[0x277CE14C0]);
  return sub_21CB85054();
}

uint64_t sub_21CB593E8@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA548, &unk_21CBCE760);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA550, &qword_21CBCE770);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA558, &qword_21CBCE778);
  MEMORY[0x28223BE20](v17 - 8);
  v43 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v39 = &v36 - v20;
  v44 = sub_21CB832F4();
  v50 = 0;
  sub_21CB5A26C(a2, &v47);
  v54 = *&v48[4];
  v55 = *&v48[6];
  v56[0] = *&v48[8];
  *(v56 + 9) = *(&v48[9] + 1);
  v51 = v47;
  v52 = *v48;
  v53 = *&v48[2];
  v57[0] = v47;
  v57[1] = *v48;
  v57[2] = *&v48[2];
  v57[3] = *&v48[4];
  v57[4] = *&v48[6];
  v58[0] = *&v48[8];
  *(v58 + 9) = *(&v48[9] + 1);
  sub_21C6EDBAC(&v51, &v45, &qword_27CDFA560, &qword_21CBCE780);
  sub_21C6EA794(v57, &qword_27CDFA560, &qword_21CBCE780);
  *(&v49[3] + 7) = v54;
  *(&v49[4] + 7) = v55;
  *(&v49[5] + 7) = v56[0];
  v49[6] = *(v56 + 9);
  *(v49 + 7) = v51;
  *(&v49[1] + 7) = v52;
  *(&v49[2] + 7) = v53;
  v40 = v50;
  if (*(a2 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20)))
  {
    sub_21CB599F4(a2, v16);
    sub_21CB59EA0(a2, v11);
    v21 = v36;
    sub_21C6EDBAC(v16, v36, &qword_27CDFA550, &qword_21CBCE770);
    v22 = v37;
    sub_21C6EDBAC(v11, v37, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v23 = v38;
    sub_21C6EDBAC(v21, v38, &qword_27CDFA550, &qword_21CBCE770);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA578, &unk_21CBCE798);
    sub_21C6EDBAC(v22, v23 + *(v24 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v11, &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v16, &qword_27CDFA550, &qword_21CBCE770);
    sub_21C6EA794(v22, &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v21, &qword_27CDFA550, &qword_21CBCE770);
    v25 = v39;
    sub_21C716934(v23, v39, &qword_27CDFA548, &unk_21CBCE760);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v39;
  }

  (*(v41 + 56))(v25, v26, 1, v42);
  v27 = v43;
  sub_21C6EDBAC(v25, v43, &qword_27CDFA558, &qword_21CBCE778);
  *&v46[97] = v49[6];
  *&v46[81] = v49[5];
  *&v46[65] = v49[4];
  *&v46[49] = v49[3];
  *&v46[17] = v49[1];
  v28 = v44;
  *&v45 = v44;
  *(&v45 + 1) = 0x4010000000000000;
  v29 = v40;
  v46[0] = v40;
  *&v46[1] = v49[0];
  *&v46[33] = v49[2];
  v30 = *&v46[96];
  *(a3 + 96) = *&v46[80];
  *(a3 + 112) = v30;
  *(a3 + 128) = v46[112];
  v31 = *v46;
  *a3 = v45;
  *(a3 + 16) = v31;
  v32 = *&v46[32];
  *(a3 + 32) = *&v46[16];
  *(a3 + 48) = v32;
  v33 = *&v46[64];
  *(a3 + 64) = *&v46[48];
  *(a3 + 80) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA568, &qword_21CBCE788);
  sub_21C6EDBAC(v27, a3 + *(v34 + 48), &qword_27CDFA558, &qword_21CBCE778);
  sub_21C6EDBAC(&v45, &v47, &qword_27CDFA570, &qword_21CBCE790);
  sub_21C6EA794(v25, &qword_27CDFA558, &qword_21CBCE778);
  sub_21C6EA794(v27, &qword_27CDFA558, &qword_21CBCE778);
  *(&v48[6] + 1) = v49[3];
  *(&v48[8] + 1) = v49[4];
  *(&v48[10] + 1) = v49[5];
  *(&v48[12] + 1) = v49[6];
  *(v48 + 1) = v49[0];
  *(&v48[2] + 1) = v49[1];
  *&v47 = v28;
  *(&v47 + 1) = 0x4010000000000000;
  LOBYTE(v48[0]) = v29;
  *(&v48[4] + 1) = v49[2];
  return sub_21C6EA794(&v47, &qword_27CDFA570, &qword_21CBCE790);
}

uint64_t sub_21CB599F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA580, &qword_21CBCE7A8);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA588, &qword_21CBCE7B0);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_21CB55044(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
    return (*(v42 + 56))(v44, 1, 1, v43);
  }

  else
  {
    sub_21CB5D5CC(v12, v16, type metadata accessor for PMAccount);
    v18 = v16;
    v19 = sub_21CB832F4();
    v35 = v19;
    v36 = v16;
    LOBYTE(v49[0]) = 1;
    sub_21CB5AD14(v2, v16, v46);
    *&v45[7] = v46[0];
    *&v45[23] = v46[1];
    *&v45[39] = v46[2];
    *&v45[55] = v46[3];
    v20 = v49[0];
    v21 = v41;
    sub_21CB5B364(v37, v18, v41);
    v23 = v39;
    v22 = v40;
    v24 = *(v40 + 16);
    v25 = v21;
    v26 = v38;
    v24(v39, v25, v38);
    v47 = v19;
    v48[0] = v20;
    *&v48[1] = *v45;
    *&v48[17] = *&v45[16];
    *&v48[33] = *&v45[32];
    *&v48[49] = *&v45[48];
    v27 = *&v45[63];
    *&v48[64] = *&v45[63];
    v28 = *v48;
    *v6 = v19;
    *(v6 + 1) = v28;
    v29 = *&v48[16];
    v30 = *&v48[32];
    v31 = *&v48[48];
    *(v6 + 10) = v27;
    *(v6 + 3) = v30;
    *(v6 + 4) = v31;
    *(v6 + 2) = v29;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA590, &qword_21CBCE7B8);
    v24(&v6[*(v32 + 48)], v23, v26);
    sub_21C6EDBAC(&v47, v49, &qword_27CDFA598, &qword_21CBCE7C0);
    v33 = *(v22 + 8);
    v33(v41, v26);
    v33(v23, v26);
    v49[0] = v35;
    v49[1] = 0;
    v50 = v20;
    v52 = *&v45[16];
    v53 = *&v45[32];
    *v54 = *&v45[48];
    *&v54[15] = *&v45[63];
    v51 = *v45;
    sub_21C6EA794(v49, &qword_27CDFA598, &qword_21CBCE7C0);
    v34 = v44;
    sub_21C716934(v6, v44, &qword_27CDFA580, &qword_21CBCE7A8);
    (*(v42 + 56))(v34, 0, 1, v43);
    return sub_21C7D4A64(v36);
  }
}

uint64_t sub_21CB59EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = *(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  if (v15)
  {
    v34 = v2[3];
    v28 = v15;
    v29 = a2;
    v16 = v2;
    sub_21CB55044(a1, v14);
    v17 = type metadata accessor for PMAccount(0);
    (*(*(v17 - 8) + 48))(v14, 1, v17);
    sub_21C6EA794(v14, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21CB81014();
    v18 = sub_21CB81004();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v32 = v18;
    v33 = v20;
    v21 = swift_allocObject();
    v22 = v16[1];
    *(v21 + 16) = *v16;
    *(v21 + 32) = v22;
    v23 = v16[3];
    *(v21 + 48) = v16[2];
    *(v21 + 64) = v23;
    *(v21 + 80) = v28;

    sub_21C6EDBAC(&v34, v31, &qword_27CDFA500, &qword_21CBCE6A8);
    sub_21C71F3FC();
    sub_21CB84DE4();
    v24 = v29;
    (*(v30 + 32))(v29, v7, v5);
    return (*(v30 + 56))(v24, 0, 1, v5);
  }

  else
  {
    v26 = *(v30 + 56);

    return v26(a2, 1, 1, v5);
  }
}

__n128 sub_21CB5A26C@<Q0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v57 = a3;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_21CB83ED4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  if (v15)
  {
    v56 = v15;
    *&v86 = sub_21CB5E1EC(a1);
    *(&v86 + 1) = v16;
    sub_21C71F3FC();
    v17 = sub_21CB84054();
    v19 = v18;
    v21 = v20;
    (*(v12 + 104))(v14, *MEMORY[0x277CE0A68], v11);
    v22 = sub_21CB83DC4();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    sub_21CB83DE4();
    sub_21CB83E24();
    sub_21C6EA794(v10, &qword_27CDEBB58, &qword_21CBAF8A0);
    (*(v12 + 8))(v14, v11);
    v23 = sub_21CB84024();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    sub_21C74A72C(v17, v19, v21 & 1);

    v30 = v56;
    v56 = v30;
    sub_21C79B058(v23, v25, v27 & 1);

    sub_21C79B058(v23, v25, v27 & 1);

    sub_21C74A72C(v23, v25, v27 & 1);

    *&v88[8] = v80;
    *&v88[24] = v81;
    *v89 = v82;
    LOBYTE(v70) = v27 & 1;
    LOBYTE(v65) = 0;
    *&v86 = v23;
    *(&v86 + 1) = v25;
    LOBYTE(v87) = v27 & 1;
    *(&v87 + 1) = v73[0];
    DWORD1(v87) = *(v73 + 3);
    *(&v87 + 1) = v29;
    *v88 = v30;
    *&v89[16] = v83;
    v89[32] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5A8, &qword_21CBCE970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5B0, &qword_21CBCE978);
    v31 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDFA5B8, &qword_27CDFA5A8, &qword_21CBCE970, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDFA5C0, &qword_27CDFA5B0, &qword_21CBCE978, v31);
    sub_21CB83494();

    sub_21C74A72C(v23, v25, v27 & 1);
  }

  else
  {
    v32 = sub_21CB83034();
    LOBYTE(v58) = 1;
    sub_21CB5AA44(a1, &v86);
    v33 = v86;
    LOBYTE(v86) = v88[0];
    v70 = v32;
    LOBYTE(v71[0]) = v58;
    *(v71 + 8) = v33;
    *(&v71[1] + 8) = v87;
    BYTE8(v71[2]) = v88[0];
    v72 = *&v88[8];
    sub_21CB81014();
    v34 = sub_21CB81004();
    v36 = v35;
    (*(v5 + 8))(v7, v4);
    *&v86 = v34;
    *(&v86 + 1) = v36;
    sub_21C71F3FC();
    v37 = sub_21CB84054();
    v39 = v38;
    v41 = v40;
    LODWORD(v86) = sub_21CB837E4();
    v42 = sub_21CB83FC4();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_21C74A72C(v37, v39, v41 & 1);

    v69 = v72;
    v74 = v72;
    v67 = v71[1];
    v68 = v71[2];
    v73[2] = v71[1];
    v73[3] = v71[2];
    v65 = v70;
    v66 = v71[0];
    v73[0] = v70;
    v73[1] = v71[0];
    v79 = v72;
    v77 = v71[1];
    v78 = v71[2];
    v75 = v70;
    v76 = v71[0];
    v64 = v46 & 1;
    sub_21C6EDBAC(&v70, &v86, &qword_27CDFA5A0, &qword_21CBCE968);
    sub_21C79B058(v42, v44, v46 & 1);

    sub_21C6EDBAC(v73, &v86, &qword_27CDFA5A0, &qword_21CBCE968);
    sub_21C79B058(v42, v44, v46 & 1);

    v55 = v42;
    sub_21C74A72C(v42, v44, v46 & 1);
    v56 = v48;

    v82 = v67;
    v83 = v68;
    v84 = v69;
    v80 = v65;
    v81 = v66;
    sub_21C6EA794(&v80, &qword_27CDFA5A0, &qword_21CBCE968);
    v85 = 1;
    *v88 = v77;
    *&v88[16] = v78;
    v86 = v75;
    v87 = v76;
    *&v88[32] = v79;
    *v89 = v42;
    *&v89[8] = v44;
    v89[16] = v46 & 1;
    *&v89[24] = v48;
    v89[32] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5A8, &qword_21CBCE970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5B0, &qword_21CBCE978);
    v49 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDFA5B8, &qword_27CDFA5A8, &qword_21CBCE970, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDFA5C0, &qword_27CDFA5B0, &qword_21CBCE978, v49);
    sub_21CB83494();
    sub_21C74A72C(v55, v44, v46 & 1);

    sub_21C6EA794(&v70, &qword_27CDFA5A0, &qword_21CBCE968);
  }

  *&v89[8] = v63[0];
  *&v89[17] = *(v63 + 9);
  v86 = v58;
  v87 = v59;
  *v88 = v60;
  *&v88[16] = v61;
  v50 = *&v89[8];
  v51 = v57;
  *(v57 + 64) = v62;
  *(v51 + 80) = v50;
  *(v51 + 89) = *&v89[17];
  v52 = v87;
  *v51 = v86;
  *(v51 + 16) = v52;
  result = *&v88[16];
  *(v51 + 32) = *v88;
  *(v51 + 48) = result;
  return result;
}

uint64_t sub_21CB5AA44@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_21CB83ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21CB84BB4();
  v27 = sub_21CB84AF4();
  v29 = sub_21CB5E1EC(a1);
  v30 = v11;
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A68], v7);
  v17 = sub_21CB83DC4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_21CB83DE4();
  sub_21CB83E24();
  sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v8 + 8))(v10, v7);
  v18 = sub_21CB84024();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;

  sub_21C74A72C(v12, v14, v16 & 1);

  v24 = v27;
  *a2 = v28;
  *(a2 + 8) = v24;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v10 & 1;
  *(a2 + 40) = v23;

  sub_21C79B058(v18, v20, v10 & 1);

  sub_21C74A72C(v18, v20, v10 & 1);
}

uint64_t sub_21CB5AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v53 = a3;
  v4 = type metadata accessor for PMAccount(0);
  v50 = *(v4 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v7;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *&v55 = v12;
  *(&v55 + 1) = v14;
  sub_21C71F3FC();
  v15 = sub_21CB84054();
  v17 = v16;
  LOBYTE(v12) = v18;
  sub_21CB83D64();
  v19 = sub_21CB84024();
  v21 = v20;
  v23 = v22;

  sub_21C74A72C(v15, v17, v12 & 1);

  sub_21CB84B34();
  v24 = sub_21CB83FB4();
  v45 = v25;
  v46 = v26;
  v43 = v27;

  sub_21C74A72C(v19, v21, v23 & 1);

  v42 = *(a1 + 8);
  v44 = *(a1 + 24);
  v47 = *(a1 + 40);
  v55 = *(a1 + 48);
  v28 = v51;
  v29 = v48;
  sub_21CB5D564(v51, v48, type metadata accessor for PMAccount);
  v30 = *(v50 + 80);
  v31 = swift_allocObject();
  v32 = *(a1 + 16);
  v31[1] = *a1;
  v31[2] = v32;
  v33 = *(a1 + 48);
  v31[3] = *(a1 + 32);
  v31[4] = v33;
  sub_21CB5D5CC(v29, v31 + ((v30 + 80) & ~v30), type metadata accessor for PMAccount);
  v34 = v28;
  v35 = v52;
  sub_21CB5D564(v34, v52, type metadata accessor for PMAccount);
  v36 = swift_allocObject();
  sub_21CB5D5CC(v35, v36 + ((v30 + 16) & ~v30), type metadata accessor for PMAccount);
  v37 = v43 & 1;
  v56 = v43 & 1;
  v38 = v53;
  v40 = v45;
  v39 = v46;
  *v53 = v24;
  v38[1] = v40;
  *(v38 + 16) = v37;
  v38[3] = v39;
  v38[4] = sub_21CB5E134;
  v38[5] = v36;
  v38[6] = sub_21CB5E0CC;
  v38[7] = v31;

  sub_21C6EDBAC(&v55, v54, &qword_27CDFA500, &qword_21CBCE6A8);
  sub_21C79B058(v24, v40, v37);

  sub_21C74A72C(v24, v40, v37);
}

uint64_t sub_21CB5B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CB5D564(a1, a2, type metadata accessor for PMAccount);
  v3 = sub_21CB837E4();
  v4 = type metadata accessor for PMAccountRow(0);
  v5 = a2 + v4[7];
  v6 = MEMORY[0x277CE04E8];
  *(v5 + 24) = MEMORY[0x277CE04F8];
  *(v5 + 32) = v6;
  *v5 = v3;
  v7 = v4[9];
  KeyPath = swift_getKeyPath(byte_21CBCE858);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v7);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v22);

  type metadata accessor for PMGroupsStore(0);
  sub_21CB5E1A4(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v10 = sub_21CB82674();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  v13 = a2 + v4[10];
  *v13 = swift_getKeyPath(byte_21CBCE878);
  *(v13 + 8) = 0;
  v14 = a2 + v4[11];
  *v14 = swift_getKeyPath(asc_21CBCE8A0);
  *(v14 + 8) = 0;
  v15 = v4[12];
  *(a2 + v15) = swift_getKeyPath(a8_49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v16 = v4[13];
  *(a2 + v16) = swift_getKeyPath(asc_21CBCE908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v17 = v4[14];
  *(a2 + v17) = result;
  v19 = (a2 + v4[5]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a2 + v4[6]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + v4[8]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_21CB5B364@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = v55 - v8;
  v9 = type metadata accessor for PMAccount(0);
  v63 = *(v9 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB81024();
  v58 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  v25 = *(v16 + 8);
  v57 = v16 + 8;
  v59 = v25;
  v25(v18, v15);
  v70 = v22;
  v71 = v24;
  v27 = *(v4 + 40);
  v26 = *(v4 + 48);
  v55[0] = *(v4 + 24);
  v55[1] = v27;
  v62 = v26;
  sub_21CB5D564(v64, v14, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v28 = v11;
  sub_21CB5D564(v65, v11, type metadata accessor for PMAccount);
  v29 = (*(v56 + 80) + 80) & ~*(v56 + 80);
  v30 = (v13 + *(v63 + 80) + v29) & ~*(v63 + 80);
  v31 = swift_allocObject();
  v32 = *(v4 + 16);
  v31[1] = *v4;
  v31[2] = v32;
  v33 = *(v4 + 32);
  v34 = *(v4 + 48);
  v63 = v4;
  v31[3] = v33;
  v31[4] = v34;
  sub_21CB5D5CC(v14, v31 + v29, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D5CC(v28, v31 + v30, type metadata accessor for PMAccount);
  v35 = sub_21C71F3FC();

  v36 = MEMORY[0x277D837D0];
  v64 = v35;
  v65 = v21;
  sub_21CB84DE4();
  sub_21CB81014();
  sub_21CB81004();
  v59(v18, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21CBA0690;
  swift_getKeyPath(byte_21CBCE7C8);
  swift_getKeyPath(byte_21CBCE7F0);
  v38 = v61;
  sub_21CB81DB4();

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  v40 = *(*(v39 - 8) + 48);
  v60 = v39;
  if (v40(v38, 1))
  {
    sub_21C6EA794(v38, &qword_27CDFA3D8, &qword_21CBCDFE0);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    sub_21CB5D564(v38, v28, type metadata accessor for PMAccount);
    sub_21C6EA794(v38, &qword_27CDFA3D8, &qword_21CBCDFE0);
    v41 = PMAccount.userVisibleDomain.getter();
    v42 = v43;
    sub_21C7D4A64(v28);
  }

  *(v37 + 56) = v36;
  *(v37 + 64) = sub_21C7C0050();
  if (v42)
  {
    v44 = v41;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v42)
  {
    v45 = v42;
  }

  *(v37 + 32) = v44;
  *(v37 + 40) = v45;
  v46 = sub_21CB85594();
  v48 = v47;
  v61 = v47;

  v72 = v46;
  v73 = v48;
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21CB5E1A4(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel, &unk_21CBCE094);
  sub_21CB82684();
  sub_21CB82694();

  swift_getKeyPath(byte_21CBCE7C8);
  swift_getKeyPath(byte_21CBCE7F0);
  v49 = v69;
  sub_21CB81DB4();

  MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  v52 = v67;
  v53 = v65;
  sub_21CB84414();

  sub_21C6EA794(v49, &qword_27CDFA3D8, &qword_21CBCDFE0);

  return (*(v66 + 8))(v53, v52);
}

uint64_t sub_21CB5BC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v63 = a2;
  v64 = a1;
  v69 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = v52 - v6;
  v7 = type metadata accessor for PMAccount(0);
  v61 = *(v7 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v59 = *(v9 - 8);
  v57 = *(v59 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v67 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v66 = v52 - v22;
  MEMORY[0x28223BE20](v23);
  v65 = v52 - v24;
  MEMORY[0x28223BE20](v25);
  v58 = v52 - v26;
  sub_21CB81014();
  sub_21CB81014();
  v27 = sub_21CB80FF4();
  v29 = v28;
  v30 = *(v12 + 8);
  v54 = v12 + 8;
  v56 = v30;
  v55 = v11;
  v30(v14, v11);
  v30(v17, v11);
  v71 = v27;
  v72 = v29;
  v52[1] = *(a3 + 24);
  v52[2] = *(a3 + 40);
  v73 = *(a3 + 48);
  v31 = v53;
  sub_21CB5D564(v63, v53, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v32 = v60;
  sub_21CB5D564(v64, v60, type metadata accessor for PMAccount);
  v33 = (*(v59 + 80) + 80) & ~*(v59 + 80);
  v34 = (v57 + *(v61 + 80) + v33) & ~*(v61 + 80);
  v35 = swift_allocObject();
  v36 = *(a3 + 16);
  v35[1] = *a3;
  v35[2] = v36;
  v37 = *(a3 + 48);
  v35[3] = *(a3 + 32);
  v35[4] = v37;
  sub_21CB5D5CC(v31, v35 + v33, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D5CC(v32, v35 + v34, type metadata accessor for PMAccount);

  sub_21C6EDBAC(&v73, v70, &qword_27CDFA500, &qword_21CBCE6A8);
  sub_21C71F3FC();
  v38 = v58;
  sub_21CB84DE4();
  sub_21CB81014();
  v39 = sub_21CB81004();
  v41 = v40;
  v56(v17, v55);
  v71 = v39;
  v72 = v41;
  v42 = v68;
  sub_21CB81EF4();
  v43 = sub_21CB81F14();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = v65;
  sub_21CB84DC4();
  v45 = *(v19 + 16);
  v46 = v66;
  v45(v66, v38, v18);
  v47 = v67;
  v45(v67, v44, v18);
  v48 = v69;
  v45(v69, v46, v18);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v45(&v48[*(v49 + 48)], v47, v18);
  v50 = *(v19 + 8);
  v50(v44, v18);
  v50(v38, v18);
  v50(v47, v18);
  return (v50)(v46, v18);
}

double sub_21CB5C310(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = type metadata accessor for PMAccount(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v28 = a1[3];
  sub_21CB5D564(a2, v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D564(v25, v7, type metadata accessor for PMAccount);
  sub_21CB858B4();

  sub_21C6EDBAC(&v28, v27, &qword_27CDFA500, &qword_21CBCE6A8);
  v15 = sub_21CB858A4();
  v16 = (*(v24 + 80) + 96) & ~*(v24 + 80);
  v17 = (v9 + *(v26 + 80) + v16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  v20 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v20;
  v21 = a1[3];
  *(v18 + 64) = a1[2];
  *(v18 + 80) = v21;
  sub_21CB5D5CC(v10, v18 + v16, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CB5D5CC(v7, v18 + v17, type metadata accessor for PMAccount);
  sub_21C98B308(0, 0, v13, &unk_21CBCE850, v18);

  return result;
}

uint64_t sub_21CB5C634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21CB858B4();
  v6[3] = sub_21CB858A4();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_21C74FDC4;

  return sub_21CB551C8(a5, a6);
}

uint64_t sub_21CB5C6F8(uint64_t a1)
{
  swift_getKeyPath(byte_21CBCE6E8);
  swift_getKeyPath(byte_21CBCE718);

  return sub_21CB81DC4();
}

uint64_t sub_21CB5C794@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v42 - v4;
  v6 = sub_21CB81024();
  v45 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = v42 - v14;
  MEMORY[0x28223BE20](v15);
  v47 = v42 - v16;
  MEMORY[0x28223BE20](v17);
  v43 = v42 - v18;
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  v22 = *(v7 + 8);
  v44 = v7 + 8;
  v46 = v22;
  v22(v9, v6);
  v52 = v19;
  v53 = v21;
  sub_21CB81ED4();
  v23 = sub_21CB81F14();
  v24 = *(v23 - 8);
  v42[0] = *(v24 + 56);
  v42[1] = v24 + 56;
  (v42[0])(v5, 0, 1, v23);
  v54 = a1[3];
  v25 = swift_allocObject();
  v26 = a1[1];
  v25[1] = *a1;
  v25[2] = v26;
  v27 = a1[3];
  v25[3] = a1[2];
  v25[4] = v27;

  sub_21C6EDBAC(&v54, v51, &qword_27CDFA500, &qword_21CBCE6A8);
  sub_21C71F3FC();
  v28 = v43;
  sub_21CB84DC4();
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v46(v9, v45);
  v52 = v29;
  v53 = v31;
  sub_21CB81EF4();
  (v42[0])(v5, 0, 1, v23);
  v32 = v47;
  sub_21CB84DC4();
  v33 = *(v11 + 16);
  v34 = v48;
  v35 = v28;
  v33(v48, v28, v10);
  v36 = v49;
  v37 = v32;
  v33(v49, v32, v10);
  v38 = v50;
  v33(v50, v34, v10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v33(&v38[*(v39 + 48)], v36, v10);
  v40 = *(v11 + 8);
  v40(v37, v10);
  v40(v35, v10);
  v40(v36, v10);
  return (v40)(v34, v10);
}

uint64_t sub_21CB5CC88@<X0>(uint64_t a1@<X8>)
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

double sub_21CB5CDF8(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBCE7C8);
  swift_getKeyPath(byte_21CBCE7F0);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CB5CE74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA3D8, &qword_21CBCDFE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C6EDBAC(a1, &v10 - v7, &qword_27CDFA3D8, &qword_21CBCDFE0);
  swift_getKeyPath(byte_21CBCE7C8);
  swift_getKeyPath(byte_21CBCE7F0);
  sub_21C6EDBAC(v8, v5, &qword_27CDFA3D8, &qword_21CBCDFE0);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &qword_27CDFA3D8, &qword_21CBCDFE0);
}

unint64_t sub_21CB5CFA4()
{
  result = qword_27CDFA488;
  if (!qword_27CDFA488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA438, &qword_21CBCE518);
    sub_21CB5D05C();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA488);
  }

  return result;
}

unint64_t sub_21CB5D05C()
{
  result = qword_27CDFA490;
  if (!qword_27CDFA490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA480, &qword_21CBCE558);
    sub_21C6EADEC(&qword_27CDFA498, &qword_27CDFA4A0, &unk_21CBCE598, MEMORY[0x277CDE580]);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA490);
  }

  return result;
}

uint64_t sub_21CB5D148(uint64_t result)
{
  if (!*(*result + 16))
  {
    return (*(v1 + 48))();
  }

  return result;
}

unint64_t sub_21CB5D180()
{
  result = qword_27CDFA4B8;
  if (!qword_27CDFA4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA460, &qword_21CBCE540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA458, &qword_21CBCE538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA4A8, &qword_21CBCE5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA450, &qword_21CBCE530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA448, &qword_21CBCE528);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA440, &qword_21CBCE520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA438, &qword_21CBCE518);
    sub_21CB5CFA4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CB5E1A4(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA4B0, &qword_27CDFA4A8, &qword_21CBCE5A8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA4C0, &qword_27CDFA4C8, &qword_21CBCE620, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA4B8);
  }

  return result;
}

unint64_t sub_21CB5D474()
{
  result = qword_27CDFA520;
  if (!qword_27CDFA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA510, &qword_21CBCE748);
    sub_21C6EADEC(&qword_27CDFA528, &qword_27CDFA530, &qword_21CBCE750, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA520);
  }

  return result;
}

uint64_t sub_21CB5D564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB5D5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB5D634()
{
  v1 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21CB55774(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_21CB5D704(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA410, &qword_21CBCE200);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t objectdestroy_58Tm()
{
  v1 = (type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v45 = *(*(v5 - 1) + 64);

  v8 = v0 + v3;
  sub_21C7A34C0(*v8, *(v8 + 8));

  v9 = *(type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0) + 44);
  v10 = sub_21CB811C4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v46 = v7;
  v11 = v0 + v7;

  v12 = v0 + v7 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();

  if (v8 == 1)
  {

    v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v14 = *(v13 + 28);
    v15 = sub_21CB85B74();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);

    v16 = *(v13 + 36);
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12 + v16, 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v35 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v36 = v35[7];
  v37 = sub_21CB85C04();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v12 + v36, 1, v37))
  {
    (*(v38 + 8))(v12 + v36, v37);
  }

  v39 = v35[8];
  v40 = sub_21CB85BB4();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v12 + v39, 1, v40))
  {
    (*(v41 + 8))(v12 + v39, v40);
  }

  v16 = v35[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v12 + v16, 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(v12 + v16, v17);
  }

LABEL_4:
  v19 = (v11 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v2;

    v20 = type metadata accessor for PMAccount.MockData(0);
    v21 = v20[8];
    v22 = sub_21CB80DD4();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v19 + v21, 1, v22))
    {
      (*(v23 + 8))(v19 + v21, v22);
    }

    v25 = v20[12];
    if (!v24(v19 + v25, 1, v22))
    {
      (*(v23 + 8))(v19 + v25, v22);
    }

    v26 = v20[15];
    v27 = sub_21CB85BB4();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }

    v29 = v20[16];
    v30 = sub_21CB85C04();
    v31 = *(v30 - 8);
    v2 = v44;
    if (!(*(v31 + 48))(v19 + v29, 1, v30))
    {
      (*(v31 + 8))(v19 + v29, v30);
    }

    v32 = v20[18];
    v33 = sub_21CB85C44();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v19 + v32, 1, v33))
    {
      (*(v34 + 8))(v19 + v32, v33);
    }
  }

  else
  {
  }

  v42 = v11 + v5[7];
  if (*(v42 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v46 + v45, v2 | v6 | 7);
}

double sub_21CB5DEA8()
{
  v1 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21CB5C310((v0 + 16), v0 + v2, v5);
}

uint64_t sub_21CB5DF78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMAccount(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21CB5C634(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_21CB5E134@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB5B120(v4, a1);
}

uint64_t sub_21CB5E1A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB5E1EC(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  v6 = a1[5];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v10 = a1[2];
  v9 = a1[3];
  if (v8)
  {
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v3 + 8))(v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21CBA15B0;
      v13 = MEMORY[0x277D837D0];
      *(v12 + 56) = MEMORY[0x277D837D0];
      v14 = sub_21C7C0050();
      *(v12 + 32) = v7;
      *(v12 + 40) = v6;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 64) = v14;
      *(v12 + 72) = v10;
      *(v12 + 80) = v9;

      v10 = sub_21CB85594();
    }

    else
    {

      return v7;
    }
  }

  else
  {
  }

  return v10;
}

uint64_t sub_21CB5E3D8()
{
  v0 = sub_21CB807A4();
  v48 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v47 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21CB80814();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_21CB80894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB80BC4();
  v13 = MEMORY[0x277D84FA0];
  if (v12)
  {
    v14 = v11;
    v15 = v12;
    v46 = v0;
    if (v11 == 0x6874756170746FLL && v12 == 0xE700000000000000 || (sub_21CB86344() & 1) != 0 || v14 == 0x746F2D656C707061 && v15 == 0xED00006874756170)
    {
    }

    else
    {
      v31 = sub_21CB86344();

      if ((v31 & 1) == 0)
      {
        return v13;
      }
    }

    sub_21CB80844();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_21CB5EADC(v7);
      return v13;
    }

    v16 = v49;
    (*(v9 + 32))(v49, v7, v8);
    v57 = v13;
    v17 = sub_21CB80824();
    v45 = v9;
    if (v17)
    {
      v43[1] = v17;
      v44 = v8;
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v52 + 16);
        v20 = v17 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v50 = *(v52 + 72);
        v51 = v19;
        v52 += 16;
        v21 = (v52 - 8);
        v22 = MEMORY[0x277D84F90];
        v19(v4, v20, v2);
        while (1)
        {
          if (sub_21CB807F4() == 0x726575737369 && v23 == 0xE600000000000000)
          {
          }

          else
          {
            v24 = sub_21CB86344();

            if ((v24 & 1) == 0)
            {
              (*v21)(v4, v2);
              goto LABEL_14;
            }
          }

          v25 = sub_21CB80804();
          v27 = v26;
          (*v21)(v4, v2);
          if (v27)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_21CA4F2EC(0, *(v22 + 2) + 1, 1, v22);
            }

            v29 = *(v22 + 2);
            v28 = *(v22 + 3);
            if (v29 >= v28 >> 1)
            {
              v22 = sub_21CA4F2EC((v28 > 1), v29 + 1, 1, v22);
            }

            *(v22 + 2) = v29 + 1;
            v30 = &v22[16 * v29];
            *(v30 + 4) = v25;
            *(v30 + 5) = v27;
          }

LABEL_14:
          v20 += v50;
          if (!--v18)
          {
            goto LABEL_29;
          }

          v51(v4, v20, v2);
        }
      }

      v22 = MEMORY[0x277D84F90];
LABEL_29:

      if (*(v22 + 2))
      {
        v32 = *(v22 + 4);
        v33 = *(v22 + 5);

        sub_21CA94078(&v55, v32, v33);
      }

      v8 = v44;
      v16 = v49;
    }

    v55 = sub_21CB80864();
    v56 = v34;
    v35 = v47;
    sub_21CB80774();
    sub_21C71F3FC();
    v36 = sub_21CB85EA4();
    v38 = v37;
    (*(v48 + 8))(v35, v46);

    v55 = v36;
    v56 = v38;
    v53 = 58;
    v54 = 0xE100000000000000;
    v39 = sub_21CB85E84();

    if (v39[2] == 2)
    {
      v40 = v39[4];
      v41 = v39[5];

      sub_21CA94078(&v55, v40, v41);

      (*(v45 + 8))(v16, v8);
    }

    else
    {
      (*(v45 + 8))(v16, v8);
    }

    return v57;
  }

  return v13;
}

uint64_t sub_21CB5EA14(uint64_t a1)
{
  v1 = sub_21CB80BC4();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (v1 == 0x6874756170746FLL && v2 == 0xE700000000000000 || (sub_21CB86344() & 1) != 0 || v3 == 0x746F2D656C707061 && v4 == 0xED00006874756170)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_21CB86344();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21CB5EADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CB5EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5C8, &qword_21CBCE980);
  MEMORY[0x28223BE20](v87);
  v81 = &v68 - v3;
  v75 = sub_21CB81024();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5D0, &qword_21CBCE988);
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v68 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5D8, &qword_21CBCE990);
  MEMORY[0x28223BE20](v84);
  v86 = &v68 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5E0, &qword_21CBCE998);
  MEMORY[0x28223BE20](v85);
  v78 = &v68 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1860, &qword_21CBB2090);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1968, &qword_21CBB22D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19);
  v83 = &v68 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5E8, &qword_21CBCE9A0);
  v76 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v70 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5F0, &qword_21CBCE9A8);
  v25 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v69 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v30 = &v68 - v29;
  swift_getKeyPath(aP_117, v28);
  swift_getKeyPath(aP_118);
  sub_21CB81DB4();

  v89 = a1;
  v92 = a1;
  if (v93 == 1)
  {
    v90 = v25;
    v80 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA620, &qword_21CBCEA08);
    v31 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDFA628, &qword_27CDFA620, &qword_21CBCEA08, MEMORY[0x277CE14C0]);
    v81 = v30;
    v32 = sub_21CB85054();
    MEMORY[0x28223BE20](v32);
    *(&v68 - 2) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA630, &qword_21CBCEA10);
    sub_21C6EADEC(&qword_27CDFA638, &qword_27CDFA630, &qword_21CBCEA10, v31);
    sub_21CB85054();
    v33 = sub_21C92FD78();
    v71 = v24;
    if (v33)
    {
      v34 = v68;
      sub_21C92FF5C(v68);
      v35 = v83;
      sub_21C716934(v34, v83, &qword_27CDF1860, &qword_21CBB2090);
      v36 = 0;
      v37 = v80;
    }

    else
    {
      v36 = 1;
      v37 = v80;
      v35 = v83;
    }

    (*(v72 + 56))(v35, v36, 1, v73);
    v54 = *(v90 + 2);
    v55 = v69;
    v56 = v82;
    v54(v69, v81, v82);
    v57 = v76;
    v58 = *(v76 + 16);
    v59 = v70;
    v58(v70, v71, v91);
    sub_21C6EDBAC(v35, v37, &qword_27CDF1968, &qword_21CBB22D0);
    v60 = v78;
    v54(v78, v55, v56);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA640, &qword_21CBCEA18);
    v62 = v91;
    v58((v60 + *(v61 + 48)), v59, v91);
    sub_21C6EDBAC(v37, v60 + *(v61 + 64), &qword_27CDF1968, &qword_21CBB22D0);
    sub_21C6EA794(v37, &qword_27CDF1968, &qword_21CBB22D0);
    v63 = *(v57 + 8);
    v63(v59, v62);
    v64 = *(v90 + 1);
    v90 += 8;
    v65 = v55;
    v66 = v82;
    v64(v65, v82);
    sub_21C6EDBAC(v60, v86, &qword_27CDFA5E0, &qword_21CBCE998);
    swift_storeEnumTagMultiPayload();
    v67 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDFA610, &qword_27CDFA5E0, &qword_21CBCE998, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDFA618, &qword_27CDFA5C8, &qword_21CBCE980, v67);
    sub_21CB83494();
    sub_21C6EA794(v60, &qword_27CDFA5E0, &qword_21CBCE998);
    sub_21C6EA794(v83, &qword_27CDF1968, &qword_21CBB22D0);
    v63(v71, v91);
    return (v64)(v81, v66);
  }

  else
  {
    sub_21CB81014();
    v38 = sub_21CB81004();
    v40 = v39;
    (*(v74 + 8))(v5, v75);
    v93 = v38;
    v94 = v40;
    sub_21C71F3FC();
    v93 = sub_21CB84054();
    v94 = v41;
    v95 = v42 & 1;
    v96 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA5F8, &qword_21CBCE9F8);
    v91 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDFA600, &qword_27CDFA5F8, &qword_21CBCE9F8, MEMORY[0x277CE14C0]);
    v44 = v90;
    sub_21CB85064();
    sub_21C932F7C(v18);
    v45 = v79;
    v46 = v80;
    v47 = *(v79 + 16);
    v48 = v77;
    v47(v77, v44, v80);
    sub_21C6EDBAC(v18, v15, &qword_27CDF1968, &qword_21CBB22D0);
    v49 = v81;
    v47(v81, v48, v46);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA608, &qword_21CBCEA00);
    sub_21C6EDBAC(v15, v49 + *(v50 + 48), &qword_27CDF1968, &qword_21CBB22D0);
    sub_21C6EA794(v15, &qword_27CDF1968, &qword_21CBB22D0);
    v51 = *(v45 + 8);
    v51(v48, v46);
    sub_21C6EDBAC(v49, v86, &qword_27CDFA5C8, &qword_21CBCE980);
    swift_storeEnumTagMultiPayload();
    v52 = v91;
    sub_21C6EADEC(&qword_27CDFA610, &qword_27CDFA5E0, &qword_21CBCE998, v91);
    sub_21C6EADEC(&qword_27CDFA618, &qword_27CDFA5C8, &qword_21CBCE980, v52);
    sub_21CB83494();
    sub_21C6EA794(v49, &qword_27CDFA5C8, &qword_21CBCE980);
    sub_21C6EA794(v18, &qword_27CDF1968, &qword_21CBB22D0);
    return (v51)(v90, v46);
  }
}

uint64_t sub_21CB5F738@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B88, &qword_21CBB2558);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  v44 = &v38 - v27;
  sub_21C924A48(&v38 - v27);
  v42 = v22;
  sub_21CB5FB90(v22);
  v41 = v19;
  sub_21CB6015C(v19);
  sub_21CB60734(v16);
  v38 = v5;
  sub_21CB60D0C(v5);
  v43 = v25;
  sub_21C6EDBAC(v28, v25, &qword_27CDF1858, &qword_21CBB1FA8);
  v40 = v13;
  sub_21C6EDBAC(v22, v13, &qword_27CDF1B88, &qword_21CBB2558);
  v39 = v10;
  sub_21C6EDBAC(v19, v10, &qword_27CDF1B88, &qword_21CBB2558);
  v29 = v16;
  v30 = v16;
  v31 = v47;
  sub_21C6EDBAC(v29, v47, &qword_27CDF1B88, &qword_21CBB2558);
  v32 = v5;
  v33 = v45;
  sub_21C6EDBAC(v32, v45, &qword_27CDF1B80, &qword_21CBB2550);
  v34 = v25;
  v35 = v46;
  sub_21C6EDBAC(v34, v46, &qword_27CDF1858, &qword_21CBB1FA8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA650, &qword_21CBCEA28);
  sub_21C6EDBAC(v13, v35 + v36[12], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v10, v35 + v36[16], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v31, v35 + v36[20], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v33, v35 + v36[24], &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v38, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v30, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v41, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v42, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v44, &qword_27CDF1858, &qword_21CBB1FA8);
  sub_21C6EA794(v33, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v47, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v39, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v40, &qword_27CDF1B88, &qword_21CBB2558);
  return sub_21C6EA794(v43, &qword_27CDF1858, &qword_21CBB1FA8);
}

uint64_t sub_21CB5FB90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  if (v18[1])
  {
    v19 = v18[2];
    v41 = v18[3];
    v42 = v19;
    v44 = v14;

    sub_21CB81014();
    v20 = sub_21CB81004();
    v39 = v21;
    v40 = v20;
    v43 = a1;
    v22 = *(v4 + 8);
    v22(v9, v3);
    sub_21CB81014();
    sub_21CB81014();
    v38 = sub_21CB80FF4();
    v24 = v23;
    v22(v6, v3);
    v22(v9, v3);
    v45 = 0;
    sub_21CB84D44();
    v25 = v47;
    v12[88] = v46;
    *(v12 + 12) = v25;
    v45 = 0;
    sub_21CB84D44();
    v26 = v47;
    v12[104] = v46;
    *(v12 + 14) = v26;
    v45 = 0;
    sub_21CB84D44();
    v27 = v47;
    v12[120] = v46;
    *(v12 + 16) = v27;
    v45 = 0;
    sub_21CB84D44();
    v28 = v47;
    v12[136] = v46;
    *(v12 + 18) = v28;
    *(v12 + 19) = swift_getKeyPath(byte_21CBCEAC0);
    *(v12 + 20) = 0;
    v12[168] = 0;
    *(v12 + 22) = swift_getKeyPath(aP_119);
    v12[184] = 0;
    v29 = v10[29];
    *&v12[v29] = swift_getKeyPath(aH_119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v30 = &v12[v10[30]];
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    *v30 = sub_21CB823C4();
    v30[1] = v31;
    type metadata accessor for PMWiFiDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB821F4();
    *&v12[v10[32]] = 0;
    v32 = &v12[v10[33]];
    *v32 = 0x707954656772616CLL;
    *(v32 + 1) = 0xE900000000000065;
    v33 = v39;
    *v12 = v40;
    *(v12 + 1) = v33;
    *(v12 + 2) = v38;
    *(v12 + 3) = v24;
    v34 = v41;
    *(v12 + 4) = v42;
    *(v12 + 5) = v34;
    *(v12 + 6) = 0;
    v12[56] = 1;
    *(v12 + 57) = 0;
    *(v12 + 8) = 0;
    *(v12 + 9) = 0;
    *(v12 + 20) = 257;
    *(v12 + 42) = 256;
    v12[86] = 0;
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
    sub_21CB845C4();
    sub_21C6EA794(v12, &qword_27CDF1B78, &qword_21CBBE2D0);
    v35 = v43;
    sub_21C716934(v17, v43, &qword_27CDF1B80, &qword_21CBB2550);
    return (*(v44 + 56))(v35, 0, 1, v13);
  }

  else
  {
    v37 = *(v14 + 56);

    return v37(a1, 1, 1, v13, v15);
  }
}

uint64_t sub_21CB6015C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  if (v18[1] && (v19 = v18[5]) != 0)
  {
    v20 = v18[4];
    v42 = v19;
    v43 = v20;
    v45 = v14;

    sub_21CB81014();
    v21 = sub_21CB81004();
    v40 = v22;
    v41 = v21;
    v44 = a1;
    v23 = *(v4 + 8);
    v23(v9, v3);
    sub_21CB81014();
    sub_21CB81014();
    v39 = sub_21CB80FF4();
    v25 = v24;
    v23(v6, v3);
    v23(v9, v3);
    v46 = 0;
    sub_21CB84D44();
    v26 = v48;
    v12[88] = v47;
    *(v12 + 12) = v26;
    v46 = 0;
    sub_21CB84D44();
    v27 = v48;
    v12[104] = v47;
    *(v12 + 14) = v27;
    v46 = 0;
    sub_21CB84D44();
    v28 = v48;
    v12[120] = v47;
    *(v12 + 16) = v28;
    v46 = 0;
    sub_21CB84D44();
    v29 = v48;
    v12[136] = v47;
    *(v12 + 18) = v29;
    *(v12 + 19) = swift_getKeyPath(byte_21CBCEAC0);
    *(v12 + 20) = 0;
    v12[168] = 0;
    *(v12 + 22) = swift_getKeyPath(aP_119);
    v12[184] = 0;
    v30 = v10[29];
    *&v12[v30] = swift_getKeyPath(aH_119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v31 = &v12[v10[30]];
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    *v31 = sub_21CB823C4();
    v31[1] = v32;
    type metadata accessor for PMWiFiDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB821F4();
    *&v12[v10[32]] = 0;
    v33 = &v12[v10[33]];
    *v33 = 0x707954656772616CLL;
    *(v33 + 1) = 0xE900000000000065;
    v34 = v40;
    *v12 = v41;
    *(v12 + 1) = v34;
    *(v12 + 2) = v39;
    *(v12 + 3) = v25;
    v35 = v42;
    *(v12 + 4) = v43;
    *(v12 + 5) = v35;
    *(v12 + 6) = 0;
    v12[56] = 1;
    *(v12 + 57) = 0;
    *(v12 + 8) = 0;
    *(v12 + 9) = 0;
    *(v12 + 20) = 257;
    *(v12 + 42) = 256;
    v12[86] = 0;
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
    sub_21CB845C4();
    sub_21C6EA794(v12, &qword_27CDF1B78, &qword_21CBBE2D0);
    v36 = v44;
    sub_21C716934(v17, v44, &qword_27CDF1B80, &qword_21CBB2550);
    return (*(v45 + 56))(v36, 0, 1, v13);
  }

  else
  {
    v38 = *(v14 + 56);

    return v38(a1, 1, 1, v13, v15);
  }
}

uint64_t sub_21CB60734@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v19 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  v20 = v19[1];
  if (v20)
  {
    v43 = *v19;
    v45 = v18;
    v46 = v15;
    v47 = v14;

    sub_21CB81014();
    v21 = sub_21CB81004();
    v41 = v22;
    v42 = v21;
    v44 = a1;
    v23 = *(v4 + 8);
    v23(v9, v3);
    sub_21CB81014();
    sub_21CB81014();
    v24 = sub_21CB80FF4();
    v26 = v25;
    v23(v6, v3);
    v23(v9, v3);
    v48 = 0;
    sub_21CB84D44();
    v27 = v50;
    v12[88] = v49;
    *(v12 + 12) = v27;
    v48 = 0;
    sub_21CB84D44();
    v28 = v50;
    v12[104] = v49;
    *(v12 + 14) = v28;
    v48 = 0;
    sub_21CB84D44();
    v29 = v50;
    v12[120] = v49;
    *(v12 + 16) = v29;
    v48 = 0;
    sub_21CB84D44();
    v30 = v50;
    v12[136] = v49;
    *(v12 + 18) = v30;
    *(v12 + 19) = swift_getKeyPath(byte_21CBCEAC0);
    *(v12 + 20) = 0;
    v12[168] = 0;
    *(v12 + 22) = swift_getKeyPath(aP_119);
    v12[184] = 0;
    v31 = v10[29];
    *&v12[v31] = swift_getKeyPath(aH_119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v32 = &v12[v10[30]];
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    *v32 = sub_21CB823C4();
    v32[1] = v33;
    type metadata accessor for PMWiFiDetailsModel(0);
    sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB821F4();
    *&v12[v10[32]] = 0;
    v34 = &v12[v10[33]];
    *v34 = 0x707954656772616CLL;
    *(v34 + 1) = 0xE900000000000065;
    v35 = v41;
    *v12 = v42;
    *(v12 + 1) = v35;
    *(v12 + 2) = v24;
    *(v12 + 3) = v26;
    *(v12 + 4) = v43;
    *(v12 + 5) = v20;
    *(v12 + 6) = 0;
    v12[56] = 1;
    *(v12 + 57) = 0;
    *(v12 + 8) = 0;
    *(v12 + 9) = 0;
    *(v12 + 20) = 257;
    *(v12 + 42) = 256;
    v12[86] = 0;
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
    v36 = v45;
    sub_21CB845C4();
    sub_21C6EA794(v12, &qword_27CDF1B78, &qword_21CBBE2D0);
    v37 = v36;
    v38 = v44;
    sub_21C716934(v37, v44, &qword_27CDF1B80, &qword_21CBB2550);
    return (*(v46 + 56))(v38, 0, 1, v47);
  }

  else
  {
    v40 = *(v15 + 56);

    return v40(a1, 1, 1, v16);
  }
}

uint64_t sub_21CB60D0C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v42 - v2;
  v4 = sub_21CB83ED4();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  *&v13 = MEMORY[0x28223BE20](v47).n128_u64[0];
  v15 = &v42 - v14;
  swift_getKeyPath(byte_21CBCEA30, v13);
  swift_getKeyPath(byte_21CBCEA58);
  sub_21CB81DB4();

  v51 = v54;
  sub_21CB81014();
  v16 = sub_21CB81004();
  v49 = v17;
  v50 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_21CB81014();
  sub_21CB81014();
  v46 = sub_21CB80FF4();
  v48 = v19;
  v18(v9, v6);
  v18(v12, v6);
  swift_getKeyPath(byte_21CBCEAA0);
  sub_21CB81DB4();

  v20 = v54;
  v21 = v55;
  v23 = v43;
  v22 = v44;
  v24 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CE0A68], v45);
  v25 = *MEMORY[0x277CE0980];
  v26 = sub_21CB83DC4();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v3, v25, v26);
  (*(v27 + 56))(v3, 0, 1, v26);
  v28 = v23;
  v29 = sub_21CB83E24();
  sub_21C6EA794(v3, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v22 + 8))(v28, v24);
  v53 = 0;
  sub_21CB84D44();
  v30 = v55;
  v15[88] = v54;
  *(v15 + 12) = v30;
  v53 = 0;
  sub_21CB84D44();
  v31 = v55;
  v15[104] = v54;
  *(v15 + 14) = v31;
  v53 = 0;
  sub_21CB84D44();
  v32 = v55;
  v15[120] = v54;
  *(v15 + 16) = v32;
  v53 = 0;
  sub_21CB84D44();
  v33 = v55;
  v15[136] = v54;
  *(v15 + 18) = v33;
  *(v15 + 19) = swift_getKeyPath(byte_21CBCEAC0);
  *(v15 + 20) = 0;
  v15[168] = 0;
  *(v15 + 22) = swift_getKeyPath(aP_119);
  v15[184] = 0;
  v34 = v47;
  v35 = *(v47 + 116);
  *&v15[v35] = swift_getKeyPath(aH_119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v36 = &v15[v34[30]];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C6F0748(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  *v36 = sub_21CB823C4();
  v36[1] = v37;
  type metadata accessor for PMWiFiDetailsModel(0);
  sub_21C6F0748(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB821F4();
  *&v15[v34[32]] = 0;
  v38 = &v15[v34[33]];
  *v38 = 0x707954656772616CLL;
  *(v38 + 1) = 0xE900000000000065;
  v39 = v49;
  *v15 = v50;
  *(v15 + 1) = v39;
  v40 = v48;
  *(v15 + 2) = v46;
  *(v15 + 3) = v40;
  *(v15 + 4) = v20;
  *(v15 + 5) = v21;
  *(v15 + 6) = v29;
  *(v15 + 28) = 257;
  v15[58] = v51;
  *(v15 + 8) = 0;
  *(v15 + 9) = 0;
  *(v15 + 20) = 257;
  *(v15 + 42) = 256;
  v15[86] = 0;
  sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
  sub_21CB845C4();
  return sub_21C6EA794(v15, &qword_27CDF1B78, &qword_21CBBE2D0);
}

uint64_t sub_21CB61400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v27 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A80, &qword_21CBB2390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A88, &qword_21CBB2398);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  sub_21C92D9F4(&v27 - v18);
  if (sub_21C92FB9C())
  {
    *v7 = sub_21CB85214();
    v7[1] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA8, &qword_21CBB23B0);
    sub_21C937180(a1, v7 + *(v21 + 44));
    v22 = sub_21CB832C4();
    v23 = (v7 + *(v4 + 36));
    *v23 = v22;
    v23[1] = sub_21C7902AC;
    v23[2] = 0;
    sub_21C78E4F4(v7, v13);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v5 + 56))(v13, v24, 1, v4);
  sub_21C6EDBAC(v19, v16, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EDBAC(v13, v10, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EDBAC(v16, a2, &qword_27CDF1A88, &qword_21CBB2398);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA648, &qword_21CBCEA20);
  sub_21C6EDBAC(v10, a2 + *(v25 + 48), &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v13, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v19, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EA794(v10, &qword_27CDF1A80, &qword_21CBB2390);
  return sub_21C6EA794(v16, &qword_27CDF1A88, &qword_21CBB2398);
}

uint64_t sub_21CB61704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = (&v71 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A80, &qword_21CBB2390);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A88, &qword_21CBB2398);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v71 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B88, &qword_21CBB2558);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v86 = &v71 - v21;
  MEMORY[0x28223BE20](v22);
  v80 = &v71 - v23;
  MEMORY[0x28223BE20](v24);
  v85 = &v71 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - v27;
  MEMORY[0x28223BE20](v29);
  v84 = &v71 - v30;
  v31 = sub_21CB82F84();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1CA0, &unk_21CBB2700);
  MEMORY[0x28223BE20](v35 - 8);
  v79 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v78 = &v71 - v38;
  v39 = a1 + *(type metadata accessor for PMCombinedAccountDetailsView(0) + 44);
  v40 = *v39;
  if (v39[8] == 1)
  {
    LOBYTE(v87) = *v39;
  }

  else
  {

    sub_21CB85B04();
    v41 = v28;
    v42 = sub_21CB83C94();
    sub_21CB81C14();

    v28 = v41;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v40, 0);
    (*(v32 + 8))(v34, v31);
    LOBYTE(v40) = v87;
  }

  v43 = v78;
  if (v40 == 1)
  {

    if (sub_21C930630())
    {
LABEL_7:
      v45 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v44 = sub_21CB86344();

    if ((v44 & 1) != 0 && sub_21C930630())
    {
      goto LABEL_7;
    }
  }

  sub_21C924A48(v43);
  v45 = 0;
LABEL_10:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  v47 = 1;
  (*(*(v46 - 8) + 56))(v43, v45, 1, v46);
  sub_21CB5FB90(v84);
  sub_21CB6015C(v28);
  sub_21CB60734(v85);
  sub_21CB60D0C(v17);
  sub_21C92D9F4(v83);
  swift_getKeyPath(asc_21CBCEB48);
  swift_getKeyPath(byte_21CBCEB70);
  sub_21CB81DB4();

  v49 = v87;
  v48 = v88;

  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    v51 = sub_21CB85214();
    v52 = v71;
    *v71 = v51;
    *(v52 + 8) = v53;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA8, &qword_21CBB23B0);
    sub_21C937180(a1, v52 + *(v54 + 44));
    v55 = sub_21CB832C4();
    v56 = v73;
    v57 = (v52 + *(v73 + 9));
    *v57 = v55;
    v57[1] = sub_21C7902AC;
    v57[2] = 0;
    sub_21C78E4F4(v52, v77);
    v47 = 0;
  }

  else
  {
    v56 = v73;
  }

  v58 = v77;
  v72[7](v77, v47, 1, v56);
  v59 = v79;
  sub_21C6EDBAC(v43, v79, &qword_27CDF1CA0, &unk_21CBB2700);
  v60 = v80;
  sub_21C6EDBAC(v84, v80, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v28, v86, &qword_27CDF1B88, &qword_21CBB2558);
  v73 = v28;
  v61 = v81;
  sub_21C6EDBAC(v85, v81, &qword_27CDF1B88, &qword_21CBB2558);
  v62 = v17;
  v63 = v58;
  v72 = v17;
  v64 = v82;
  sub_21C6EDBAC(v62, v82, &qword_27CDF1B80, &qword_21CBB2550);
  v65 = v74;
  sub_21C6EDBAC(v83, v74, &qword_27CDF1A88, &qword_21CBB2398);
  v66 = v75;
  sub_21C6EDBAC(v63, v75, &qword_27CDF1A80, &qword_21CBB2390);
  v67 = v59;
  v68 = v76;
  sub_21C6EDBAC(v67, v76, &qword_27CDF1CA0, &unk_21CBB2700);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA658, &unk_21CBCEB90);
  sub_21C6EDBAC(v60, v68 + v69[12], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v86, v68 + v69[16], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v61, v68 + v69[20], &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EDBAC(v64, v68 + v69[24], &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EDBAC(v65, v68 + v69[28], &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EDBAC(v66, v68 + v69[32], &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v63, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v83, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EA794(v72, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v85, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v73, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v84, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v78, &qword_27CDF1CA0, &unk_21CBB2700);
  sub_21C6EA794(v66, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v65, &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EA794(v82, &qword_27CDF1B80, &qword_21CBB2550);
  sub_21C6EA794(v81, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v86, &qword_27CDF1B88, &qword_21CBB2558);
  sub_21C6EA794(v80, &qword_27CDF1B88, &qword_21CBB2558);
  return sub_21C6EA794(v79, &qword_27CDF1CA0, &unk_21CBB2700);
}

void sub_21CB6212C(void *a1)
{
  v2 = sub_21CB85584();
  [a1 setText_];
}

id sub_21CB62198(uint64_t a1, int a2, id a3)
{
  result = [a3 systemLayoutSizeFittingSize_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_21CB621E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB622D4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21CB62248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB622D4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21CB622AC(uint64_t a1)
{
  sub_21CB622D4();
  sub_21CB83454();
  __break(1u);
}

unint64_t sub_21CB622D4()
{
  result = qword_27CDFA660;
  if (!qword_27CDFA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA660);
  }

  return result;
}

id sub_21CB62328()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  [v0 setScrollEnabled_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  [v0 setTextContainerInset_];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  [v3 setEditable_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  LODWORD(v6) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [v2 secondaryLabelColor];
  [v3 setTextColor_];

  return v3;
}

unint64_t sub_21CB624DC()
{
  result = qword_27CDFA668;
  if (!qword_27CDFA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA668);
  }

  return result;
}

uint64_t sub_21CB6253C()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_21CB62578()
{
  result = qword_27CDFA670;
  if (!qword_27CDFA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA670);
  }

  return result;
}

unint64_t sub_21CB625DC()
{
  result = qword_27CDFA678;
  if (!qword_27CDFA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA678);
  }

  return result;
}

uint64_t PMWiFiNetworksStore.__allocating_init()()
{
  v0 = swift_allocObject();
  PMWiFiNetworksStore.init()();
  return v0;
}

uint64_t sub_21CB62678()
{
  swift_getKeyPath(byte_21CBCEEA0);
  swift_getKeyPath(byte_21CBCEEC8);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CB626EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

double sub_21CB6288C(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBCEEF0);
  swift_getKeyPath(byte_21CBCEF18);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CB62908(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C6EF0A0(a1, &v10 - v7);
  swift_getKeyPath(byte_21CBCEEF0);
  swift_getKeyPath(byte_21CBCEF18);
  sub_21C6EF0A0(v8, v5);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &qword_27CDEE678, &unk_21CBBA210);
}

double sub_21CB62A28()
{
  swift_getKeyPath(byte_21CBCEEF0);
  swift_getKeyPath(byte_21CBCEF18);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CB62AA0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6D8, &qword_21CBCF040);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void sub_21CB62C40(_BYTE *a2@<X8>)
{
  swift_getKeyPath(asc_21CBCEF40);
  swift_getKeyPath(asc_21CBCEF68);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CB62CC0(char *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBCEF40);
  swift_getKeyPath(asc_21CBCEF68);

  return sub_21CB81DC4();
}

uint64_t sub_21CB62D34()
{
  swift_getKeyPath(asc_21CBCEF40);
  swift_getKeyPath(asc_21CBCEF68);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CB62DA8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t sub_21CB62E24(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_21CB62FC4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t PMWiFiNetworksStore.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
  [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface) invalidate];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__savedNetworks;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__activeWiFiNetwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__loadedNetworks;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t PMWiFiNetworksStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
  [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface) invalidate];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__savedNetworks;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__activeWiFiNetwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__loadedNetworks;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

double sub_21CB632F0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_21C98B608(0, 0, v4, &unk_21CBCF030, v7);

  return result;
}

uint64_t sub_21CB63440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_21CB63460, 0, 0);
}

uint64_t sub_21CB63460()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21C6EF374();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_21CB634FC(uint64_t a1)
{
  v3 = type metadata accessor for PMWiFiNetwork(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;

  sub_21CB81E94();

  if ((v21[0] & 1) == 0)
  {
    v9 = [objc_opt_self() isRunningInStoreDemoMode];
    if ((v9 & 1) == 0 && (*(a1 + *(v3 + 36)) & 1) == 0)
    {
      v20[1] = v20;
      *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
      v20[-2] = a1;
      swift_getKeyPath(byte_21CBCEEA0, v10);
      swift_getKeyPath(byte_21CBCEEC8);
      v20[2] = v1;
      v11 = sub_21CB81DA4();
      v13 = v12;
      v14 = sub_21CB64C74(sub_21CB64B48, &v20[-4], type metadata accessor for PMWiFiNetwork, sub_21C862E7C, type metadata accessor for PMWiFiNetwork, sub_21CAA1140);
      v15 = *(*v13 + 16);
      if (v15 < v14)
      {
        __break(1u);
      }

      else
      {
        sub_21CB655D8(v14, v15, sub_21C6F0E94, sub_21CAA3F24);
        v11(v21, 0);

        v16 = sub_21CB858E4();
        (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
        v17 = swift_allocObject();
        swift_weakInit();
        sub_21C73A880(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiNetwork);
        v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        sub_21C6F0E30(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
        *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
        sub_21C9E6C0C(0, 0, v8, &unk_21CBCEFA0, v19);

        sub_21C6EA794(v8, &qword_27CDF1D50, &qword_21CBA0C00);
      }
    }
  }
}

uint64_t sub_21CB638AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;

  return MEMORY[0x2822009F8](sub_21CB6393C, 0, 0);
}

uint64_t sub_21CB6393C()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + *(type metadata accessor for PMWiFiNetwork(0) + 56));
  *(v0 + 88) = v2;
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      *(v0 + 104) = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
      sub_21CB858B4();
      v4 = v2;
      *(v0 + 112) = sub_21CB858A4();
      v5 = sub_21CB85874();
      v7 = sub_21CB63B20;
LABEL_6:

      return MEMORY[0x2822009F8](v7, v5, v6);
    }

    v8 = v2;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    *(v0 + 128) = v9;
    if (v9)
    {
      *(v0 + 136) = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
      sub_21CB858B4();
      *(v0 + 144) = sub_21CB858A4();
      v5 = sub_21CB85874();
      v7 = sub_21CB63D8C;
      goto LABEL_6;
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21CB63B20()
{
  v1 = v0[13];
  v2 = v0[12];

  v3 = *(v2 + v1);
  v0[15] = v3;
  v4 = v3;

  return MEMORY[0x2822009F8](sub_21CB63BD4, 0, 0);
}

uint64_t sub_21CB63BD4()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 120);
  v2 = [v1 setPassword:0 knownNetworkProfile:*(v0 + 88) error:v0 + 40];

  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v5 = v3;
    v6 = sub_21CB80B14();

    swift_willThrow();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    *(v0 + 136) = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface;
    sub_21CB858B4();
    *(v0 + 144) = sub_21CB858A4();
    v9 = sub_21CB85874();

    return MEMORY[0x2822009F8](sub_21CB63D8C, v9, v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_21CB63D8C()
{
  v1 = v0[17];
  v2 = v0[16];

  v3 = *(v2 + v1);
  v0[19] = v3;
  v4 = v3;

  return MEMORY[0x2822009F8](sub_21CB63E40, 0, 0);
}

uint64_t sub_21CB63E40()
{
  v0[8] = 0;
  v1 = v0[19];
  v2 = [v1 removeKnownNetworkProfile:v0[11] reason:2 error:v0 + 8];

  v3 = v0[8];
  v4 = v0[11];
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v6 = v3;
    v7 = sub_21CB80B14();

    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

void sub_21CB63F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = v39 - v5;
  v49 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v49);
  v42 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks;
  v15 = (v12 + 63) >> 6;
  v43 = v9;
  v47 = (v9 + 48);
  v41 = v8 + 7;
  v50 = a1;

  v16 = 0;
  v46 = v11;
  while (v14)
  {
LABEL_10:
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = (*(v50 + 48) + ((v16 << 10) | (16 * v18)));
      v21 = *v19;
      v20 = v19[1];
      swift_getKeyPath(byte_21CBCEEA0);
      swift_getKeyPath(byte_21CBCEEC8);

      sub_21CB81DB4();

      v23 = v51[0];
      v51[0] = v21;
      v51[1] = v20;
      MEMORY[0x28223BE20](v22);
      v39[-2] = v51;
      v24 = v48;
      sub_21C9693F8(sub_21C7AE738, v23, v48);

      if ((*v47)(v24, 1, v49) != 1)
      {
        break;
      }

      sub_21C6EA794(v24, &qword_27CDEE678, &unk_21CBBA210);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v25 = v46;
    sub_21C6F0E30(v24, v46);

    sub_21CB81E94();

    if ((v51[0] & 1) == 0)
    {
      v26 = [objc_opt_self() isRunningInStoreDemoMode];
      if (!v26 && (*(v25 + *(v49 + 36)) & 1) == 0)
      {
        v39[1] = v39;
        *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
        v40 = &v39[-4];
        v39[-2] = v25;
        swift_getKeyPath(byte_21CBCEEA0, v27);
        swift_getKeyPath(byte_21CBCEEC8);
        v39[0] = sub_21CB81DA4();
        v29 = v28;
        v30 = sub_21CB64C74(sub_21CB65778, v40, type metadata accessor for PMWiFiNetwork, sub_21C862E7C, type metadata accessor for PMWiFiNetwork, sub_21CAA1140);
        v31 = *(*v29 + 16);
        if (v31 < v30)
        {
          goto LABEL_20;
        }

        sub_21CB655D8(v30, v31, sub_21C6F0E94, sub_21CAA3F24);
        (v39[0])(v51, 0);

        v32 = sub_21CB858E4();
        (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = v42;
        sub_21C73A880(v25, v42, type metadata accessor for PMWiFiNetwork);
        v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v36 = (v41 + v35) & 0xFFFFFFFFFFFFFFF8;
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        sub_21C6F0E30(v34, v37 + v35);
        *(v37 + v36) = v33;
        v38 = v44;
        sub_21C9E6C0C(0, 0, v44, &unk_21CBCEFA8, v37);

        sub_21C6EA794(v38, &qword_27CDF1D50, &qword_21CBA0C00);
        v25 = v46;
      }
    }

    sub_21CB656B0(v25, type metadata accessor for PMWiFiNetwork);
  }

LABEL_6:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(a1 + 56 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_21CB64580()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v0 - 8);
  v33 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - v3;
  v4 = type metadata accessor for PMWiFiNetwork(0);
  v30 = *(v4 - 1);
  v31 = v30;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v14 = *(v13 + 28);
  sub_21CB80DA4();
  v15 = sub_21CB80DD4();
  v16 = *(*(v15 - 8) + 56);
  v16(&v12[v14], 0, 1, v15);
  v17 = v4[8];
  sub_21CB80DA4();
  v16(&v12[v17], 0, 1, v15);
  *v12 = 0x46695720656D6F48;
  *(v12 + 1) = 0xE900000000000069;
  *(v12 + 2) = 0x46695720656D6F48;
  *(v12 + 3) = 0xE900000000000069;
  *(v12 + 4) = 0xD000000000000014;
  *(v12 + 5) = 0x800000021CB9D100;
  v12[v4[9]] = 0;
  v12[v4[10]] = 0;
  *&v12[v4[11]] = 0;
  *&v12[v4[12]] = 16;
  v12[v4[13]] = 0;
  *&v12[v4[14]] = 0;
  v18 = v4[7];
  sub_21CB80DA4();
  v16(&v9[v18], 0, 1, v15);
  v19 = v4[8];
  sub_21CB80DA4();
  v16(&v9[v19], 0, 1, v15);
  *v9 = 0x695720A9C3666143;
  *(v9 + 1) = 0xAA00000000006946;
  *(v9 + 2) = 0x695720A9C3666143;
  *(v9 + 3) = 0xAA00000000006946;
  *(v9 + 4) = 0xD000000000000014;
  *(v9 + 5) = 0x800000021CB9D120;
  v9[v4[9]] = 0;
  v9[v4[10]] = 0;
  *&v9[v4[11]] = 0;
  *&v9[v4[12]] = 16;
  v9[v4[13]] = 0;
  *&v9[v4[14]] = 0;
  v20 = v4[7];
  sub_21CB80DA4();
  v16(&v6[v20], 0, 1, v15);
  v21 = v4[8];
  sub_21CB80DA4();
  v16(&v6[v21], 0, 1, v15);
  *v6 = 0x466957206B726F57;
  *(v6 + 1) = 0xE900000000000069;
  *(v6 + 2) = 0x466957206B726F57;
  *(v6 + 3) = 0xE900000000000069;
  *(v6 + 4) = 0xD000000000000014;
  *(v6 + 5) = 0x800000021CB9D140;
  v6[v4[9]] = 0;
  v6[v4[10]] = 0;
  *&v6[v4[11]] = 0;
  *&v6[v4[12]] = 16;
  v6[v4[13]] = 0;
  *&v6[v4[14]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB008, &qword_21CBC0C30);
  v22 = v31;
  v23 = *(v30 + 72);
  v24 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21CBA15A0;
  v26 = v25 + v24;
  sub_21C73A880(v12, v26, type metadata accessor for PMWiFiNetwork);
  sub_21C73A880(v9, v26 + v23, type metadata accessor for PMWiFiNetwork);
  sub_21C73A880(v6, v26 + 2 * v23, type metadata accessor for PMWiFiNetwork);
  swift_getKeyPath(byte_21CBCEEA0);
  swift_getKeyPath(byte_21CBCEEC8);
  v35 = v25;

  sub_21CB81DC4();
  v27 = v32;
  sub_21C73A880(v12, v32, type metadata accessor for PMWiFiNetwork);
  (*(v22 + 56))(v27, 0, 1, v4);
  swift_getKeyPath(byte_21CBCEEF0);
  swift_getKeyPath(byte_21CBCEF18);
  sub_21C6EF0A0(v27, v33);

  sub_21CB81DC4();
  sub_21C6EA794(v27, &qword_27CDEE678, &unk_21CBBA210);
  swift_getKeyPath(asc_21CBCEF40);
  swift_getKeyPath(asc_21CBCEF68);
  v34 = 1;

  sub_21CB81DC4();
  sub_21CB656B0(v6, type metadata accessor for PMWiFiNetwork);
  sub_21CB656B0(v9, type metadata accessor for PMWiFiNetwork);
  return sub_21CB656B0(v12, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21CB64B7C(uint64_t a1, char a2)
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

  sub_21CB85FA4();
LABEL_9:
  result = sub_21CB860E4();
  *v2 = result;
  return result;
}

uint64_t sub_21CB64C74(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t (*)(uint64_t), uint64_t, uint64_t, __n128), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v49 = a6;
  v58 = a5;
  v11 = a3(0);
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = *v6;
  result = a4(a1, a2, *v6, v18);
  if (!v7)
  {
    v55 = v20;
    v50 = v16;
    v48 = v13;
    if (v23)
    {
      return *(v21 + 16);
    }

    v51 = a1;
    v52 = a2;
    v47 = v6;
    v57 = result;
    v24 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    for (i = v21; ; v21 = i)
    {
      v28 = *(v21 + 16);
      v27 = (v21 + 16);
      v26 = v28;
      if (v24 == v28)
      {
        break;
      }

      if (v24 >= v26)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v29 = i;
      v53 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v30 = i + v53;
      v31 = *(v56 + 72);
      v54 = v31 * v24;
      v32 = i + v53 + v31 * v24;
      v33 = v55;
      v34 = v58;
      sub_21C73A880(v32, v55, v58);
      v35 = v51(v33);
      result = sub_21CB656B0(v33, v34);
      if (v35)
      {
        i = v29;
      }

      else
      {
        v36 = v57;
        i = v29;
        if (v24 != v57)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v37 = *v27;
          if (v57 >= v37)
          {
            goto LABEL_24;
          }

          v38 = v31 * v57;
          v39 = v30 + v31 * v57;
          v40 = v58;
          result = sub_21C73A880(v39, v50, v58);
          if (v24 >= v37)
          {
            goto LABEL_25;
          }

          v41 = v54;
          v42 = v48;
          sub_21C73A880(v30 + v54, v48, v40);
          v43 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = v49(i);
          }

          v44 = v50;
          v45 = i + v53;
          result = sub_21CB65710(v42, i + v53 + v38, v43);
          if (v24 >= *(i + 16))
          {
            goto LABEL_26;
          }

          result = sub_21CB65710(v44, v45 + v41, v43);
          *v47 = i;
          v36 = v57;
        }

        v57 = v36 + 1;
      }

      ++v24;
    }

    return v57;
  }

  return result;
}

uint64_t sub_21CB64F74(uint64_t a1)
{
  v4 = *(type metadata accessor for PMWiFiNetwork(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CB638AC(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for PMWiFiNetwork(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v11 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v1[7];
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = v1[8];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21CB6538C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21CB63440(a1, v4, v5, v6);
}

uint64_t sub_21CB6546C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a2;
    v9 = a1;
    v10 = *v7;
    v11 = *v7 >> 62;
    if (!v11)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v21 = a4;
  v22 = a3;
  v23 = a6;
  v24 = a5;
  result = sub_21CB85FA4();
  a5 = v24;
  a6 = v23;
  a3 = v22;
  a4 = v21;
  if (result < v8)
  {
    goto LABEL_16;
  }

LABEL_4:
  v13 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = a6;
  v15 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v16 = a5;
  v17 = a3;
  v18 = a4;
  if (v11)
  {
    v19 = sub_21CB85FA4();
  }

  else
  {
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = __OFADD__(v19, v15);
  result = v19 + v15;
  if (v20)
  {
    goto LABEL_20;
  }

  sub_21CB64B7C(result, 1);

  return sub_21CAA4014(v9, v8, v14, v17, v18, v16, v25);
}

uint64_t sub_21CB655D8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_21CB656B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB65710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

Swift::String __swiftcall PMWiFiNetwork.userVisibleType(isActive:)(Swift::Bool isActive)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMWiFiNetwork(0);
  if (*(v1 + *(v7 + 36)) == 1 || *(v1 + *(v7 + 52)) == 1)
  {
    sub_21CB81014();
    v8 = sub_21CB81004();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
LABEL_6:
    v16 = v8;
    v17 = v10;
    goto LABEL_10;
  }

  if (isActive)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21CBA0690;
    v12 = PMWiFiNetwork.localizedSecurityType.getter();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_21C7C0050();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v8 = sub_21CB85594();
    v10 = v15;

    goto LABEL_6;
  }

  v16 = PMWiFiNetwork.localizedSecurityType.getter();
LABEL_10:
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t PMWiFiNetwork.qrCodeURI.getter()
{
  v1 = type metadata accessor for PMWiFiNetwork(0);
  result = 0;
  if ((*(v0 + *(v1 + 36)) & 1) == 0)
  {
    return sub_21C807A74(v0);
  }

  return result;
}

uint64_t PMWiFiNetworkIdentifier.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static PMWiFiNetworkIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344();
  }
}

uint64_t sub_21CB65B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CB86344();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CB65BA0(uint64_t a1)
{
  v2 = sub_21CB6723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB65BDC(uint64_t a1)
{
  v2 = sub_21CB6723C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PMWiFiNetworkIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6E0, &qword_21CBCF048);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB6723C();
  sub_21CB864F4();
  sub_21CB862B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PMWiFiNetworkIdentifier.hashValue.getter()
{
  sub_21CB86484();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t PMWiFiNetworkIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6F0, &unk_21CBCF050);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB6723C();
  sub_21CB864E4();
  if (!v2)
  {
    v9 = sub_21CB86274();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CB65F34(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA6E0, &qword_21CBCF048);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CB6723C();
  sub_21CB864F4();
  sub_21CB862B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PMWiFiNetwork.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PMWiFiNetwork.ssid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PMWiFiNetwork.password.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PMWiFiNetwork.addedAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PMWiFiNetwork(0) + 28);

  return sub_21CAA444C(v3, a1);
}

uint64_t PMWiFiNetwork.lastJoinedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PMWiFiNetwork(0) + 32);

  return sub_21CAA444C(v3, a1);
}

uint64_t PMWiFiNetwork.localizedSecurityType.getter()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMWiFiNetwork(0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void PMWiFiNetwork.hash(into:)(uint64_t a1)
{
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_21CB854C4();
  sub_21CB854C4();
  if (*(v1 + 40))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v11 = type metadata accessor for PMWiFiNetwork(0);
  sub_21CAA444C(v1 + v11[7], v10);
  v12 = *(v3 + 48);
  if (v12(v10, 1, v2) == 1)
  {
    v13 = v3;
    sub_21CB864A4();
  }

  else
  {
    v14 = *(v3 + 32);
    v20 = v7;
    v15 = v21;
    v14(v21, v10, v2);
    sub_21CB864A4();
    sub_21CB674EC(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();
    v13 = v3;
    v16 = v15;
    v7 = v20;
    (*(v3 + 8))(v16, v2);
  }

  sub_21CAA444C(v1 + v11[8], v7);
  if (v12(v7, 1, v2) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v17 = v21;
    (*(v13 + 32))(v21, v7, v2);
    sub_21CB864A4();
    sub_21CB674EC(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();
    (*(v13 + 8))(v17, v2);
  }

  sub_21CB864A4();
  sub_21CB864A4();
  MEMORY[0x21CF15F90](*(v1 + v11[11]));
  MEMORY[0x21CF15F90](*(v1 + v11[12]));
  sub_21CB864A4();
  v18 = *(v1 + v11[14]);
  sub_21CB864A4();
  if (v18)
  {
    v19 = v18;
    sub_21CB85DE4();
  }
}

uint64_t PMWiFiNetwork.hashValue.getter()
{
  sub_21CB86484();
  PMWiFiNetwork.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CB6689C()
{
  sub_21CB86484();
  PMWiFiNetwork.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CB668E0(uint64_t a1)
{
  sub_21CB86484();
  PMWiFiNetwork.hash(into:)(v2);
  return sub_21CB864D4();
}

uint64_t sub_21CB6691C(char a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8;
}

char *sub_21CB66AE8(char *result)
{
  v2 = *result;
  if (*result)
  {
    v3 = v1[5];
    if (!v3)
    {
      return result;
    }

    v4 = v1[4];
  }

  else
  {
    v4 = v1[2];
    v3 = v1[3];
  }

  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  sub_21CADAA84(v4, v3, v2);
}

BOOL _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  MEMORY[0x28223BE20](v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v44[-v18];
  if (*a1 != *a2 && (sub_21CB86344() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21 || (a1[4] != a2[4] || v20 != v21) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v48 = v10;
  v49 = v7;
  v50 = type metadata accessor for PMWiFiNetwork(0);
  v22 = *(v50 + 28);
  v23 = *(v14 + 48);
  sub_21CAA444C(a1 + v22, v19);
  sub_21CAA444C(a2 + v22, &v19[v23]);
  v51 = v5;
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_21C6EA794(v19, &unk_27CDED250, &qword_21CBA64C0);
      goto LABEL_20;
    }

LABEL_18:
    v25 = v19;
LABEL_26:
    sub_21C6EA794(v25, &qword_27CDEB3E0, &unk_21CBA1A70);
    return 0;
  }

  sub_21CAA444C(v19, v13);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    (*(v51 + 8))(v13, v4);
    goto LABEL_18;
  }

  v26 = *(v51 + 32);
  v46 = v24;
  v27 = v49;
  v26(v49, &v19[v23], v4);
  sub_21CB674EC(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v45 = sub_21CB85574();
  v47 = *(v51 + 8);
  v28 = v27;
  v24 = v46;
  v47(v28, v4);
  v47(v13, v4);
  sub_21C6EA794(v19, &unk_27CDED250, &qword_21CBA64C0);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v29 = v50;
  v30 = *(v50 + 32);
  v31 = *(v14 + 48);
  sub_21CAA444C(a1 + v30, v16);
  sub_21CAA444C(a2 + v30, &v16[v31]);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v31], 1, v4) == 1)
    {
      sub_21C6EA794(v16, &unk_27CDED250, &qword_21CBA64C0);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v32 = v48;
  sub_21CAA444C(v16, v48);
  if (v24(&v16[v31], 1, v4) == 1)
  {
    (*(v51 + 8))(v32, v4);
LABEL_25:
    v25 = v16;
    goto LABEL_26;
  }

  v34 = v51;
  v35 = v49;
  (*(v51 + 32))(v49, &v16[v31], v4);
  sub_21CB674EC(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v36 = sub_21CB85574();
  v37 = *(v34 + 8);
  v37(v35, v4);
  v37(v32, v4);
  sub_21C6EA794(v16, &unk_27CDED250, &qword_21CBA64C0);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (*(a1 + v29[9]) != *(a2 + v29[9]) || *(a1 + v29[10]) != *(a2 + v29[10]) || *(a1 + v29[11]) != *(a2 + v29[11]) || *(a1 + v29[12]) != *(a2 + v29[12]) || *(a1 + v29[13]) != *(a2 + v29[13]))
  {
    return 0;
  }

  v38 = v29[14];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39)
  {
    if (v40)
    {
      sub_21C6EE9BC();
      v41 = v40;
      v42 = v39;
      v43 = sub_21CB85DD4();

      if (v43)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v40;
}

unint64_t sub_21CB6723C()
{
  result = qword_27CDFA6E8;
  if (!qword_27CDFA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA6E8);
  }

  return result;
}

unint64_t sub_21CB672E0()
{
  result = qword_27CDFA708;
  if (!qword_27CDFA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA708);
  }

  return result;
}

unint64_t sub_21CB67338()
{
  result = qword_27CDFA710;
  if (!qword_27CDFA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA710);
  }

  return result;
}

unint64_t sub_21CB673E8()
{
  result = qword_27CDFA730;
  if (!qword_27CDFA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA730);
  }

  return result;
}

unint64_t sub_21CB67440()
{
  result = qword_27CDFA738;
  if (!qword_27CDFA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA738);
  }

  return result;
}

unint64_t sub_21CB67498()
{
  result = qword_27CDFA740;
  if (!qword_27CDFA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA740);
  }

  return result;
}

uint64_t sub_21CB674EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMVerificationCodeRow(uint64_t a1)
{
  result = qword_27CDFA748;
  if (!qword_27CDFA748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB675A8(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C7086F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CB67668@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for PMVerificationCodeRow(0);
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA758, &qword_21CBCF480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA760, &qword_21CBCF488);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA768, &qword_21CBCF490);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA770, &qword_21CBCF498);
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = &v42 - v15;
  *v7 = sub_21CB83074();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA778, &qword_21CBCF4A0);
  sub_21CB67C0C(v2, &v7[*(v17 + 44)]);
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v7, v11, &qword_27CDFA758, &qword_21CBCF480);
  v18 = &v11[*(v9 + 44)];
  v19 = v58;
  *(v18 + 4) = v57;
  *(v18 + 5) = v19;
  *(v18 + 6) = v59;
  v20 = v54;
  *v18 = v53;
  *(v18 + 1) = v20;
  v21 = v56;
  *(v18 + 2) = v55;
  *(v18 + 3) = v21;
  v22 = sub_21CB83D34();
  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_21C716934(v11, v14, &qword_27CDFA760, &qword_21CBCF488);
  v31 = &v14[*(v12 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = v2;
  v33 = v2;
  v34 = v43;
  sub_21CB69E68(v33, v43, type metadata accessor for PMVerificationCodeRow);
  v35 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v36 = swift_allocObject();
  sub_21CB69DB8(v34, v36 + v35, type metadata accessor for PMVerificationCodeRow);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v38 = sub_21CB69BFC();
  v39 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB848F4();

  sub_21C6EA794(v14, &qword_27CDFA768, &qword_21CBCF490);
  v48 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA798, &unk_21CBCF4A8);
  v49 = v12;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDFA7A0, &qword_27CDFA798, &unk_21CBCF4A8, MEMORY[0x277CE14C0]);
  v40 = v45;
  sub_21CB84154();
  return (*(v46 + 8))(v16, v40);
}

uint64_t sub_21CB67C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for PMVerificationCodeRow(0);
  v4 = v3 - 8;
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = v5;
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7B0, &qword_21CBCF4C0);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7B8, &qword_21CBCF4C8);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v18);
  v71 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  sub_21CB69E68(a1, &v61 - v21, type metadata accessor for PMAccount);
  v23 = (a1 + *(v4 + 28));
  v24 = v23[1];
  v68 = *v23;

  v25 = sub_21CB837E4();
  v26 = MEMORY[0x277CE04E8];
  v27 = &v22[v18[7]];
  *(v27 + 3) = MEMORY[0x277CE04F8];
  *(v27 + 4) = v26;
  *v27 = v25;
  v28 = &v22[v18[9]];
  KeyPath = swift_getKeyPath(asc_21CBCF4D0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v76);

  type metadata accessor for PMGroupsStore(0);
  sub_21CB69E20(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v30 = sub_21CB82674();
  v32 = v31;

  *v28 = v30;
  v28[1] = v32;
  v33 = &v22[v18[10]];
  *v33 = swift_getKeyPath(aH_120);
  v33[8] = 0;
  v34 = &v22[v18[11]];
  *v34 = swift_getKeyPath(asc_21CBCF518);
  v34[8] = 0;
  v35 = v18[12];
  *&v22[v35] = swift_getKeyPath(byte_21CBCF548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v36 = v18[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v37 = v18[14];
  *&v22[v37] = swift_getKeyPath(byte_21CBCF5B8);
  v38 = &v22[v18[5]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v22[v18[6]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v22[v18[8]];
  *v40 = v68;
  *(v40 + 1) = v24;
  sub_21CB683EC();
  if (v41)
  {
    v76 = v41;
    v77 = sub_21CB685FC;
    v78 = 0;
    v79 = 1;
    v42 = v41;
    sub_21CB81014();
    v43 = v61;
    sub_21CB81014();
    v44 = sub_21CB80FF4();
    v46 = v45;
    v47 = *(v62 + 8);
    v48 = v43;
    v49 = v63;
    v47(v48, v63);
    v47(v10, v49);
    v74 = v44;
    v75 = v46;
    v50 = v66;
    sub_21CB69E68(a1, v66, type metadata accessor for PMVerificationCodeRow);
    v51 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v52 = swift_allocObject();
    sub_21CB69DB8(v50, v52 + v51, type metadata accessor for PMVerificationCodeRow);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7C8, &unk_21CBCF5E0);
    sub_21C6EADEC(&qword_27CDFA7D0, &qword_27CDFA7C8, &unk_21CBCF5E0, &unk_21CBD0028);
    sub_21C71F3FC();
    v53 = v67;
    sub_21CB84474();

    sub_21C716934(v53, v17, &qword_27CDFA7B0, &qword_21CBCF4C0);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  (*(v69 + 56))(v17, v54, 1, v70);
  v55 = v71;
  sub_21CB69E68(v22, v71, type metadata accessor for PMAccountRow);
  v56 = v72;
  sub_21C78E8D0(v17, v72);
  v57 = v73;
  sub_21CB69E68(v55, v73, type metadata accessor for PMAccountRow);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7C0, &qword_21CBCF5D8);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  sub_21C78E8D0(v56, v57 + *(v58 + 64));
  sub_21C6EA794(v17, &qword_27CDFA7B8, &qword_21CBCF4C8);
  sub_21CB69ED0(v22, type metadata accessor for PMAccountRow);
  sub_21C6EA794(v56, &qword_27CDFA7B8, &qword_21CBCF4C8);
  return sub_21CB69ED0(v55, type metadata accessor for PMAccountRow);
}

void sub_21CB683EC()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21CB69E68(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB69DB8(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *&v3[*(v1 + 56)];
    sub_21CB69ED0(v3, type metadata accessor for PMAccount.MockData);
    return;
  }

  v9 = *v6;
  v10 = [*v6 totpGenerators];
  sub_21C7B1B18();
  v11 = sub_21CB85824();

  if (v11 >> 62)
  {
    if (!sub_21CB85FA4())
    {
      goto LABEL_9;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CF15BD0](0, v11);
    goto LABEL_9;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_21CB685FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_21CB83ED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7D8, &qword_21CBCF5F0);
  MEMORY[0x28223BE20](v50);
  v11 = &v44 - v10;
  v46 = a1;
  v12 = *(a1 + 24);
  v48 = *(a1 + 32);
  v49 = v12;
  *&v53 = v12;
  *(&v53 + 1) = v48;
  v47 = sub_21C71F3FC();

  v13 = sub_21CB84054();
  v44 = v14;
  v45 = v13;
  v16 = v15;
  v18 = v17;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A68], v6);
  v19 = *MEMORY[0x277CE0980];
  v20 = sub_21CB83DC4();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v5, v19, v20);
  (*(v21 + 56))(v5, 0, 1, v20);
  sub_21CB83E04();
  sub_21CB83E24();
  sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v7 + 8))(v9, v6);
  v22 = v45;
  v23 = sub_21CB84024();
  v25 = v24;
  LOBYTE(v9) = v26;

  sub_21C74A72C(v22, v16, v18 & 1);

  v53 = *(v46 + 8);
  v52 = *(v46 + 8);

  v27 = sub_21CB83FE4();
  v29 = v28;
  LOBYTE(v22) = v30;
  sub_21C74A72C(v23, v25, v9 & 1);

  sub_21C81A534(&v53);
  v31 = sub_21CB83FF4();
  v33 = v32;
  LOBYTE(v9) = v34;
  v36 = v35;
  sub_21C74A72C(v27, v29, v22 & 1);

  sub_21CB855C4();
  v37 = [objc_opt_self() pm_defaults];
  v38 = sub_21CB81E74();
  v39 = sub_21CB85254();
  LOBYTE(v29) = v9 & 1;
  LOBYTE(v52) = v9 & 1;
  v40 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA420, &unk_21CBCE420) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940);
  v41 = v48;

  sub_21CB82B04();
  *v40 = swift_getKeyPath(aH_121);
  *v11 = v31;
  *(v11 + 1) = v33;
  v11[16] = v29;
  *(v11 + 3) = v36;
  *(v11 + 4) = v38;
  v11[40] = 1;
  v42 = v49;
  *(v11 + 6) = v39;
  *(v11 + 7) = v42;
  *(v11 + 8) = v41;
  *&v11[*(v50 + 36)] = sub_21CB837E4();
  sub_21CB69F8C();
  sub_21CB84984();
  return sub_21C6EA794(v11, &qword_27CDFA7D8, &qword_21CBCF5F0);
}

void sub_21CB68AB4()
{
  v1 = sub_21CB80DD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21CB69E68(v0 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB69DB8(v10, v7, type metadata accessor for PMAccount.MockData);
    v12 = *&v7[*(v5 + 56)];
    v13 = v12;
    sub_21CB69ED0(v7, type metadata accessor for PMAccount.MockData);
    if (!v12)
    {
      return;
    }

    goto LABEL_10;
  }

  v14 = *v10;
  v15 = [*v10 totpGenerators];
  sub_21C7B1B18();
  v16 = sub_21CB85824();

  if (v16 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_6;
    }

LABEL_14:

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x21CF15BD0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 + 32);
  }

  v13 = v17;

LABEL_10:
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  sub_21CB80DA4();
  v18 = sub_21CB80D24();
  (*(v2 + 8))(v4, v1);
  v19 = [v13 codeForDate_];

  v20 = sub_21CB855C4();
  v22 = v21;

  sub_21CADAA84(v20, v22, 1);
}

uint64_t sub_21CB68E00(uint64_t a1)
{
  v2 = type metadata accessor for PMVerificationCodeRow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB69E68(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodeRow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CB69DB8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMVerificationCodeRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

uint64_t sub_21CB68F94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v70 = sub_21CB83834();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v71 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v59 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  MEMORY[0x28223BE20](v14 - 8);
  v78 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v59 - v17;
  v18 = type metadata accessor for PMVerificationCodeRow(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v73 = *(v21 - 8);
  v74 = v21;
  MEMORY[0x28223BE20](v21);
  v76 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  sub_21CB69E68(a1, &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodeRow);
  v26 = *(v19 + 80);
  v27 = (v26 + 16) & ~v26;
  v65 = v20;
  v63 = v26;
  v28 = swift_allocObject();
  v64 = v27;
  v29 = v28 + v27;
  v30 = v70;
  v66 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB69DB8(v66, v29, type metadata accessor for PMVerificationCodeRow);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v32 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v75 = v25;
  v33 = v72;
  v62 = v31;
  v34 = v69;
  sub_21CB84DA4();
  v35 = a1;
  v36 = v71;
  v67 = v35;
  sub_21C728D50(v13);
  (*(v33 + 104))(v34, *MEMORY[0x277CE0558], v30);
  (*(v33 + 56))(v34, 0, 1, v30);
  v37 = *(v5 + 56);
  sub_21C6EDBAC(v13, v36, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v34, v36 + v37, &qword_27CDEC390, &qword_21CBA40E0);
  v38 = *(v33 + 48);
  if (v38(v36, 1, v30) == 1)
  {
    v60 = v32;
    sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
    if (v38(v36 + v37, 1, v30) == 1)
    {
      sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
      v39 = v77;
      v40 = v73;
LABEL_8:
      v49 = v66;
      sub_21CB69E68(v67, v66, type metadata accessor for PMVerificationCodeRow);
      v50 = v64;
      v51 = swift_allocObject();
      sub_21CB69DB8(v49, v51 + v50, type metadata accessor for PMVerificationCodeRow);
      v43 = v76;
      sub_21CB84DA4();
      v44 = v74;
      (*(v40 + 32))(v39, v43, v74);
      v42 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v59 = v13;
    v41 = v68;
    sub_21C6EDBAC(v36, v68, &qword_27CDEC390, &qword_21CBA40E0);
    if (v38(v36 + v37, 1, v30) != 1)
    {
      v60 = v32;
      v45 = v36 + v37;
      v46 = v61;
      (*(v33 + 32))(v61, v45, v30);
      sub_21CB69E20(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v47 = sub_21CB85574();
      v48 = *(v33 + 8);
      v48(v46, v30);
      sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v59, &qword_27CDEC390, &qword_21CBA40E0);
      v48(v41, v30);
      sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
      v39 = v77;
      v40 = v73;
      if ((v47 & 1) == 0)
      {
        v42 = 1;
        v43 = v76;
        v44 = v74;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v59, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v33 + 8))(v41, v30);
  }

  sub_21C6EA794(v36, &qword_27CDEE530, &unk_21CBA9D80);
  v42 = 1;
  v43 = v76;
  v39 = v77;
  v40 = v73;
  v44 = v74;
LABEL_10:
  (*(v40 + 56))(v39, v42, 1, v44);
  v52 = *(v40 + 16);
  v53 = v75;
  v52(v43, v75, v44);
  v54 = v78;
  sub_21C6EDBAC(v39, v78, &qword_27CDEB8C0, &unk_21CBA26A0);
  v55 = v79;
  v52(v79, v43, v44);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7A8, &qword_21CBCF4B8);
  sub_21C6EDBAC(v54, &v55[*(v56 + 48)], &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v39, &qword_27CDEB8C0, &unk_21CBA26A0);
  v57 = *(v40 + 8);
  v57(v53, v44);
  sub_21C6EA794(v54, &qword_27CDEB8C0, &unk_21CBA26A0);
  return (v57)(v43, v44);
}

uint64_t sub_21CB698B4()
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

uint64_t sub_21CB69A4C()
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

uint64_t sub_21CB69B8C()
{
  v1 = *(type metadata accessor for PMVerificationCodeRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB68E00(v2);
}

unint64_t sub_21CB69BFC()
{
  result = qword_27CDFA780;
  if (!qword_27CDFA780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA768, &qword_21CBCF490);
    sub_21CB69C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA780);
  }

  return result;
}

unint64_t sub_21CB69C88()
{
  result = qword_27CDFA788;
  if (!qword_27CDFA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA760, &qword_21CBCF488);
    sub_21C6EADEC(&qword_27CDFA790, &qword_27CDFA758, &qword_21CBCF480, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA788);
  }

  return result;
}

uint64_t sub_21CB69DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB69E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB69E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB69ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB69F8C()
{
  result = qword_27CDFA7E0;
  if (!qword_27CDFA7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA7D8, &qword_21CBCF5F0);
    sub_21CB6A044();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA7E0);
  }

  return result;
}

unint64_t sub_21CB6A044()
{
  result = qword_27CDFA7E8;
  if (!qword_27CDFA7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA420, &unk_21CBCE420);
    sub_21CB6A0FC();
    sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA7E8);
  }

  return result;
}

unint64_t sub_21CB6A0FC()
{
  result = qword_27CDFA7F0;
  if (!qword_27CDFA7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA7F8, &qword_21CBCF628);
    sub_21CB6A1B4();
    sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA7F0);
  }

  return result;
}

unint64_t sub_21CB6A1B4()
{
  result = qword_27CDFA800;
  if (!qword_27CDFA800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDFA808, &unk_21CBCF630);
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA800);
  }

  return result;
}

void sub_21CB6A244(uint64_t a1)
{
  sub_21C6EDA64();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CB6A2D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_21CB6A42C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_21CB6A664(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v21 = MEMORY[0x277CE0BD8];
  v22 = v3;
  v23 = MEMORY[0x277CE0BC8];
  v24 = v2;
  v4 = sub_21CB84CC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v18 = v3;
  v19 = v2;
  v20 = v1;
  v15 = v3;
  v16 = v2;
  v17 = v1;
  sub_21CB84C84();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_21C72BE10(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_21CB6A830@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for PMPasskeyAccountRegistrationFieldCell(0, a2, a3, a4);

  sub_21C71F3FC();
  v6 = sub_21CB84054();
  v8 = v7;
  v10 = v9;

  v11 = sub_21CB83FC4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_21C74A72C(v6, v8, v10 & 1);

  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  return result;
}

uint64_t sub_21CB6A954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMPasskeyAccountRegistrationFieldCell(0, v9, v10, v11);
  sub_21C72BE10(a1 + *(v12 + 36), a2, a3);
  sub_21C72BE10(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_21CB6AA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21CB6AAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB6AB28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B08, &qword_21CBCF820);
  sub_21C6EADEC(&qword_27CDFA8A0, &qword_27CDF1B08, &qword_21CBCF820, &unk_21CBB7BC0);
  sub_21CB84C84();
  v12 = *(a1 + 8);
  v11 = *(a1 + 24);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8A8, &qword_21CBCF828) + 36);
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_21C805950(&v12, v10);
  return sub_21C805950(&v11, v10);
}

uint64_t sub_21CB6AC6C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CB6AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 40);
  sub_21CB84D44();
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = swift_getKeyPath(byte_21CBCF830);
  *(a2 + 32) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B08, &qword_21CBCF820);
  v4 = *(v3 + 44);
  *(a2 + v4) = swift_getKeyPath(byte_21CBCF860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B18, &unk_21CBB3F50);
  swift_storeEnumTagMultiPayload();
  v5 = *(v3 + 48);
  *(a2 + v5) = swift_getKeyPath(aH_122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  return swift_storeEnumTagMultiPayload();
}

id sub_21CB6AE94@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = sub_21CB6AB28;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return v2;
}

uint64_t sub_21CB6AEBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v15);
  v37 = &v35 - v16;
  MEMORY[0x28223BE20](v17);
  v38 = &v35 - v18;
  v35 = "sibility Action)";
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v36 = sub_21CB81034();
  v19 = *(v36 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v22(v8, v2);
  v22(v11, v2);
  v22(v14, v2);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v36);
  swift_deallocClassInstance();
  v23 = v38;
  sub_21CB81004();
  v22(v37, v2);
  v22(v23, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21CBA0690;
  v25 = *v39;
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v26;
  *(v24 + 32) = v25;
  v27 = sub_21CB85594();
  v29 = v28;

  v41 = v27;
  v42 = v29;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v31 = v40;
  *v40 = result;
  v31[1] = v32;
  *(v31 + 16) = v33 & 1;
  v31[3] = v34;
  return result;
}

uint64_t sub_21CB6B2E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA890, &qword_21CBCF780);
  sub_21C6EADEC(&qword_27CDFA898, &qword_27CDFA890, &qword_21CBCF780, MEMORY[0x277CE04B0]);
  return sub_21CB84654();
}

uint64_t sub_21CB6B438@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v107 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v105 = &v86 - v3;
  v104 = type metadata accessor for PMVerificationCodesList(0);
  v95 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v96 = v4;
  v97 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21CB81024();
  v7 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8F0, &qword_21CBCF968);
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8F8, &qword_21CBCF970);
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v17 = &v86 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA900, &qword_21CBCF978);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v86 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA908, &qword_21CBCF980);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v86 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA910, &qword_21CBCF988);
  MEMORY[0x28223BE20](v93);
  v100 = &v86 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA918, &qword_21CBCF990);
  MEMORY[0x28223BE20](v94);
  v103 = &v86 - v21;
  sub_21CB6C2CC(v1, v15);
  *&v108 = v2;
  v106 = v1;
  sub_21CB85084();
  v22 = v112;
  swift_getKeyPath(byte_21CBCF998);
  *&v112 = v22;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v23 = *(v22 + 48);
  v24 = *(v22 + 56);

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_21CB81014();
    v26 = sub_21CB81004();
    v28 = v27;
    (*(v7 + 8))(v12, v88);
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v26 = sub_21CB80FF4();
    v28 = v29;
    v30 = *(v7 + 8);
    v31 = v9;
    v32 = v88;
    v30(v31, v88);
    v30(v12, v32);
  }

  *&v112 = v26;
  *(&v112 + 1) = v28;
  v33 = sub_21CB6FC44();
  v34 = sub_21C71F3FC();
  v35 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v15, &qword_27CDFA8F0, &qword_21CBCF968);
  v36 = sub_21CB85184();
  v88 = &v86;
  MEMORY[0x28223BE20](v36);
  v37 = v106;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA978, &qword_21CBCF9E8);
  *&v112 = v13;
  *(&v112 + 1) = v35;
  v113 = v33;
  v114 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v87;
  *&v112 = v87;
  *(&v112 + 1) = v35;
  v113 = OpaqueTypeConformance2;
  v114 = v34;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = MEMORY[0x277CE1350];
  v43 = v90;
  sub_21CB84974();
  v44 = (v89[1])(v17, v40);
  v89 = &v86;
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA980, &qword_21CBCF9F0);
  *&v112 = v40;
  *(&v112 + 1) = v42;
  v113 = v38;
  v114 = OpaqueTypeConformance2;
  v115 = MEMORY[0x277CE1340];
  v116 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA988, &qword_21CBCF9F8);
  v46 = sub_21C6EADEC(&qword_27CDFA990, &qword_27CDFA988, &qword_21CBCF9F8, MEMORY[0x277CDDF68]);
  *&v112 = v45;
  *(&v112 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v98;
  v48 = v92;
  sub_21CB84894();
  (*(v91 + 8))(v43, v48);
  v49 = v37 + *(v104 + 20);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v110) = v50;
  v111 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v91 = *(&v112 + 1);
  v92 = v112;
  LODWORD(v90) = v113;
  v52 = type metadata accessor for PMAccount(0);
  v53 = v102;
  (*(*(v52 - 8) + 56))(v102, 1, 1, v52);
  v54 = v97;
  sub_21CB705FC(v37, v97, type metadata accessor for PMVerificationCodesList);
  v55 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v56 = swift_allocObject();
  sub_21CB70664(v54, v56 + v55, type metadata accessor for PMVerificationCodesList);
  v57 = v100;
  v58 = &v100[*(v93 + 36)];
  v59 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  sub_21CB705FC(v53, &v58[v59[5]], type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v60 = &v58[v59[7]];
  v110 = 0;
  v111 = 0xE000000000000000;
  sub_21CB84D44();
  v61 = v113;
  *v60 = v112;
  *(v60 + 2) = v61;
  v62 = &v58[v59[8]];
  LOBYTE(v110) = 0;
  sub_21CB84D44();
  v63 = *(&v112 + 1);
  *v62 = v112;
  *(v62 + 1) = v63;
  v64 = v59[9];
  v110 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1478, &qword_21CBB1660);
  sub_21CB84D44();
  *&v58[v64] = v112;
  v65 = &v58[v59[10]];
  LOBYTE(v110) = 0;
  sub_21CB84D44();
  v66 = *(&v112 + 1);
  *v65 = v112;
  *(v65 + 1) = v66;
  v67 = &v58[v59[11]];
  LOBYTE(v110) = 0;
  sub_21CB84D44();
  v68 = *(&v112 + 1);
  *v67 = v112;
  *(v67 + 1) = v68;
  v69 = &v58[v59[12]];
  LOBYTE(v110) = 0;
  sub_21CB84D44();
  sub_21CB70798(v53, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v70 = *(&v112 + 1);
  *v69 = v112;
  *(v69 + 1) = v70;
  v71 = v59[13];
  *&v58[v71] = swift_getKeyPath(byte_21CBCFA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v72 = v91;
  *v58 = v92;
  *(v58 + 1) = v72;
  v58[16] = v90;
  v73 = &v58[v59[6]];
  *v73 = sub_21CB6FFB8;
  v73[1] = v56;
  (*(v99 + 32))(v57, v47, v101);
  type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
  sub_21CB70C00(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel, &unk_21CBBBBE0);

  v74 = v103;
  sub_21CB850A4();
  sub_21C716934(v57, v74, &qword_27CDFA910, &qword_21CBCF988);
  v75 = v105;
  v76 = v108;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBCF998);
  sub_21CB850B4();

  (*(v107 + 8))(v75, v76);
  v108 = v112;
  v77 = v113;
  v78 = v114;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA998, &qword_21CBCFA38);
  v80 = v109;
  v81 = (v109 + *(v79 + 36));
  *v81 = swift_getKeyPath(asc_21CBCFA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v82 = type metadata accessor for PMContentListSearchable(0);
  v83 = *(v82 + 20);
  *(v81 + v83) = swift_getKeyPath(asc_21CBCFA68);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21CB70C00(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB821F4();
  v84 = v81 + *(v82 + 28);
  *v84 = v108;
  *(v84 + 2) = v77;
  *(v84 + 3) = v78;
  return sub_21C716934(v74, v80, &qword_27CDFA918, &qword_21CBCF990);
}

uint64_t sub_21CB6C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA960, &qword_21CBCF9D8);
  MEMORY[0x28223BE20](v72);
  v67 = v57 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA18, &qword_21CBCFB50);
  MEMORY[0x28223BE20](v68);
  v69 = v57 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA20, &qword_21CBCFB58);
  v62 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = v57 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA940, &qword_21CBCF9C8);
  MEMORY[0x28223BE20](v76);
  v71 = v57 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA28, &unk_21CBCFB60);
  MEMORY[0x28223BE20](v73);
  v75 = v57 - v7;
  v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PMEmptyStateDetailView(0);
  MEMORY[0x28223BE20](v74);
  v60 = (v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21CB83834();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v63);
  v64 = v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v24 = v78;
  swift_getKeyPath(aP_120);
  v78 = v24;
  v25 = sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v26 = *(v24 + 24);

  v27 = *(v26 + 16);

  if (!v27)
  {
    v57[0] = v25;
    v57[1] = v23;
    type metadata accessor for PMVerificationCodesList(0);
    v57[2] = a1;
    sub_21C728D50(v22);
    v29 = v65;
    v28 = v66;
    (*(v65 + 104))(v19, *MEMORY[0x277CE0558], v66);
    (*(v29 + 56))(v19, 0, 1, v28);
    v30 = v64;
    v31 = *(v63 + 12);
    sub_21C6EDBAC(v22, v64, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v19, v30 + v31, &qword_27CDEC390, &qword_21CBA40E0);
    v32 = *(v29 + 48);
    if (v32(v30, 1, v28) == 1)
    {
      sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
      if (v32(v30 + v31, 1, v28) == 1)
      {
        sub_21C6EA794(v30, &qword_27CDEC390, &qword_21CBA40E0);
        v33 = v59;
        v34 = v60;
LABEL_14:
        v56 = sub_21CB85C44();
        (*(*(v56 - 8) + 56))(v33, 3, 6, v56);
        sub_21C9E14F8(v33, 1, v34);
        sub_21CB705FC(v34, v75, type metadata accessor for PMEmptyStateDetailView);
        swift_storeEnumTagMultiPayload();
        sub_21CB70C00(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
        sub_21CB6FD84();
        sub_21CB83494();
        return sub_21CB70798(v34, type metadata accessor for PMEmptyStateDetailView);
      }

      goto LABEL_7;
    }

    v63 = v19;
    sub_21C6EDBAC(v30, v16, &qword_27CDEC390, &qword_21CBA40E0);
    if (v32(v30 + v31, 1, v28) == 1)
    {
      sub_21C6EA794(v63, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v29 + 8))(v16, v28);
LABEL_7:
      sub_21C6EA794(v30, &qword_27CDEE530, &unk_21CBA9D80);
      goto LABEL_8;
    }

    v53 = v58;
    (*(v29 + 32))(v58, v30 + v31, v28);
    sub_21CB70C00(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v54 = sub_21CB85574();
    v55 = *(v29 + 8);
    v55(v53, v28);
    sub_21C6EA794(v63, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v22, &qword_27CDEC390, &qword_21CBA40E0);
    v55(v16, v28);
    sub_21C6EA794(v30, &qword_27CDEC390, &qword_21CBA40E0);
    v33 = v59;
    v34 = v60;
    if (v54)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
  sub_21CB85084();
  v35 = v78;
  swift_getKeyPath(aP_120);
  v78 = v35;
  sub_21CB810D4();

  v36 = *(v35 + 24);

  v37 = *(v36 + 16);

  if (v37)
  {
    v38 = v67;
    sub_21CB6CEE0();
    v39 = sub_21CB85214();
    v41 = v40;
    v42 = v38 + *(v72 + 36);
    sub_21CB6D180(v42);
    v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA970, &qword_21CBCF9E0) + 36));
    *v43 = v39;
    v43[1] = v41;
    sub_21C6EDBAC(v38, v69, &qword_27CDFA960, &qword_21CBCF9D8);
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    v45 = sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0, MEMORY[0x277CDE5A0]);
    v78 = v44;
    v79 = v45;
    swift_getOpaqueTypeConformance2();
    sub_21CB6FE80();
    v46 = v71;
    sub_21CB83494();
    sub_21C6EA794(v38, &qword_27CDFA960, &qword_21CBCF9D8);
  }

  else
  {
    v47 = v61;
    sub_21CB6CEE0();
    v48 = v62;
    v49 = v70;
    (*(v62 + 16))(v69, v47, v70);
    swift_storeEnumTagMultiPayload();
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    v51 = sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0, MEMORY[0x277CDE5A0]);
    v78 = v50;
    v79 = v51;
    swift_getOpaqueTypeConformance2();
    sub_21CB6FE80();
    v46 = v71;
    sub_21CB83494();
    (*(v48 + 8))(v47, v49);
  }

  sub_21C6EDBAC(v46, v75, &qword_27CDFA940, &qword_21CBCF9C8);
  swift_storeEnumTagMultiPayload();
  sub_21CB70C00(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
  sub_21CB6FD84();
  sub_21CB83494();
  return sub_21C6EA794(v46, &qword_27CDFA940, &qword_21CBCF9C8);
}

uint64_t sub_21CB6CEE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA948, &qword_21CBCF9D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_21CB85094();
  swift_getKeyPath(asc_21CBCFBA0);
  sub_21CB850B4();

  (*(v2 + 8))(v4, v1);
  v16 = v19;
  v17 = v20;
  v18 = v21;
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA38, &qword_21CBCFBC8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA40, &qword_21CBCFBD0);
  v10 = sub_21CB70354();
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  sub_21CB83F24();
  sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0, MEMORY[0x277CDE5A0]);
  sub_21CB845F4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21CB6D180@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA30, &qword_21CBCFB98);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v5 = v18;
  swift_getKeyPath(byte_21CBCFB28);
  v18 = v5;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v6 = *(v5 + 40);

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 1;
    v9 = v17;
  }

  else
  {
    sub_21CB85084();
    v10 = v18;
    swift_getKeyPath(byte_21CBCF998);
    v18 = v10;
    sub_21CB810D4();

    sub_21CB83784();

    v11 = [objc_opt_self() systemGroupedBackgroundColor];
    v12 = sub_21CB84A24();
    v13 = sub_21CB83CE4();
    v14 = &v4[*(v1 + 36)];
    *v14 = v12;
    v14[8] = v13;
    v15 = v17;
    sub_21CB702DC(v4, v17);
    v8 = 0;
    v9 = v15;
  }

  return (*(v2 + 56))(v9, v8, 1, v1);
}

uint64_t sub_21CB6D3F4()
{
  sub_21CB6D4E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8F8, &qword_21CBCF970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F0, &qword_21CBCF968);
  sub_21CB6FC44();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21CB6D4E0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v31 = &v29 - v14;
  MEMORY[0x28223BE20](v15);
  v32 = &v29 - v16;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v30 = sub_21CB81034();
  v17 = *(v30 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v20 = *(v1 + 8);
  v20(v3, v0);
  v20(v6, v0);
  v20(v9, v0);
  v20(v12, v0);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v30);
  swift_deallocClassInstance();
  v21 = v32;
  sub_21CB81004();
  v20(v31, v0);
  v20(v21, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21CBA0690;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v23 = v33;
  swift_getKeyPath(byte_21CBCFB28);
  v33 = v23;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v24 = *(v23 + 40);

  v25 = *(v24 + 16);

  v26 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v26;
  *(v22 + 32) = v25;
  v27 = sub_21CB85594();

  return v27;
}

uint64_t sub_21CB6D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9A0, &qword_21CBCFA98);
  MEMORY[0x28223BE20](v26);
  v25 = &v22 - v3;
  v4 = sub_21CB83604();
  MEMORY[0x28223BE20](v4 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9A8, &qword_21CBCFAA0);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v22 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9B0, &qword_21CBCFAA8);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v22 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA988, &qword_21CBCF9F8);
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - v12;
  sub_21CB6F1A8(v10);
  sub_21CB835F4();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9B8, &qword_21CBCFAB0);
  sub_21C6EADEC(&qword_27CDFA9C0, &qword_27CDFA9B8, &qword_21CBCFAB0, MEMORY[0x277CE14C0]);
  sub_21CB82AA4();
  v14 = v25;
  v15 = *(v26 + 48);
  v16 = v22;
  (*(v8 + 16))(v25, v10, v22);
  v17 = &v14[v15];
  v18 = v24;
  (*(v5 + 16))(v17, v7, v24);
  sub_21CB83394();
  (*(v5 + 8))(v7, v18);
  (*(v8 + 8))(v10, v16);
  v19 = sub_21C6EADEC(&qword_27CDFA990, &qword_27CDFA988, &qword_21CBCF9F8, MEMORY[0x277CDDF68]);
  v20 = v23;
  MEMORY[0x21CF131E0](v13, v23, v19);
  return (*(v11 + 8))(v13, v20);
}

void sub_21CB6DD68(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_21CB82F84();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB80BE4();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for PMSetUpVerificationCodeAlertError(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  MEMORY[0x28223BE20](v17);
  v19 = (&v52 - v18);
  sub_21C6EDBAC(a1, &v52 - v18, &qword_27CDF1610, &unk_21CBB1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB70664(v19, v16, type metadata accessor for PMSetUpVerificationCodeAlertError);
    sub_21CB70C00(&qword_27CDF1618, type metadata accessor for PMSetUpVerificationCodeAlertError, &unk_21CBCA878);
    swift_willThrowTypedImpl();
    v20 = swift_allocError();
    sub_21CB70664(v16, v21, type metadata accessor for PMSetUpVerificationCodeAlertError);
    v60 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    if (swift_dynamicCast())
    {
      v24 = v56;
      v23 = v57;
      v25 = (*(v56 + 48))(v13, 3, v57);
      if (v25 == 1)
      {
LABEL_6:
        v26 = v60;
        goto LABEL_19;
      }

      if (!v25)
      {
        (*(v24 + 32))(v7, v13, v23);
        type metadata accessor for PMVerificationCodesList(0);
        sub_21C9F8EDC(v7);
        (*(v24 + 8))(v7, v23);
        goto LABEL_6;
      }

      sub_21CB70798(v13, type metadata accessor for PMSetUpVerificationCodeAlertError);
    }

    v43 = v20;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v44 = sub_21CB81C84();
    __swift_project_value_buffer(v44, qword_27CE186E0);
    v45 = v20;
    v46 = sub_21CB81C64();
    v47 = sub_21CB85AF4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      v50 = v20;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_21C6E5000, v46, v47, "Cannot create verification code generator. %{public}@", v48, 0xCu);
      sub_21C6EA794(v49, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v49, -1, -1);
      MEMORY[0x21CF16D90](v48, -1, -1);

LABEL_20:
      return;
    }

    v26 = v20;
LABEL_19:

    goto LABEL_20;
  }

  v27 = *v19;
  v28 = [*v19 exportableURL];
  if (v28)
  {
    v29 = v28;
    sub_21CB80B94();

    v30 = type metadata accessor for PMVerificationCodesList(0);
    v31 = v58;
    v32 = v58 + *(v30 + 20);
    v33 = *v32;
    v34 = *(v32 + 8);
    LOBYTE(v60) = v33;
    v61 = v34;
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v35 = v31 + *(v30 + 24);
    v37 = *v35;
    v36 = *(v35 + 8);
    if (*(v35 + 16) == 1)
    {
    }

    else
    {

      sub_21CB85B04();
      v40 = sub_21CB83C94();
      sub_21CB81C14();

      v41 = v53;
      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C79C1F4(v37, v36, 0);
      (*(v54 + 8))(v41, v55);
      v37 = v60;
    }

    v42 = v57;
    v37(v10);

    (*(v56 + 8))(v10, v42);
  }

  else
  {
    v38 = v58 + *(type metadata accessor for PMVerificationCodesList(0) + 20);
    v39 = *(v38 + 8);
    LOBYTE(v60) = *v38;
    v61 = v39;
    v59 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
  }
}

uint64_t sub_21CB6E440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA40, &qword_21CBCFBD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA58, &qword_21CBCFBD8);
  sub_21CB703E4();
  sub_21CB85054();
  sub_21CB82334();
  sub_21CB70354();
  sub_21CB84514();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CB6E584(uint64_t a1)
{
  v2 = type metadata accessor for PMVerificationCodesList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBCFB28);
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v5 = *(v10 + 40);

  v10 = v5;
  sub_21CB705FC(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodesList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21CB70664(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PMVerificationCodesList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA68, &qword_21CBCFBE0);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21CB70468();
  sub_21CB70C00(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21CB6E828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v56 = sub_21CB83834();
  v62 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80) - 8;
  MEMORY[0x28223BE20](v61);
  v57 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v52 - v9;
  MEMORY[0x28223BE20](v10);
  v67 = &v52 - v11;
  v12 = sub_21CB83A34();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PMVerificationCodeRow(0);
  MEMORY[0x28223BE20](v55);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA78, &qword_21CBCFBE8);
  v63 = *(v16 - 8);
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  v68 = &v52 - v17;
  v18 = type metadata accessor for PMAccount(0);
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PMVerificationCodesList(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB705FC(v2, v24, type metadata accessor for PMVerificationCodesList);
  sub_21CB705FC(a1, v20, type metadata accessor for PMAccount);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = (v23 + *(v54 + 80) + v25) & ~*(v54 + 80);
  v27 = swift_allocObject();
  v28 = v27 + v25;
  v29 = v67;
  sub_21CB70664(v24, v28, type metadata accessor for PMVerificationCodesList);
  sub_21CB70664(v20, v27 + v26, type metadata accessor for PMAccount);
  v30 = v57;
  sub_21CB705FC(a1, v15, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v31 = v69;
  swift_getKeyPath(byte_21CBCF998);
  v69 = v31;
  sub_21CB70C00(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v33 = *(v31 + 48);
  v32 = *(v31 + 56);

  v34 = v55;
  v35 = &v15[*(v55 + 20)];
  *v35 = v33;
  *(v35 + 1) = v32;
  v36 = &v15[*(v34 + 24)];
  *v36 = sub_21CB706CC;
  v36[1] = v27;
  v37 = *(v34 + 28);
  *&v15[v37] = swift_getKeyPath(asc_21CBCFA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();

  v38 = v58;
  sub_21CB83A24();
  sub_21CB70C00(&qword_27CDFAA70, type metadata accessor for PMVerificationCodeRow, &unk_21CBCF430);
  v39 = v66;
  sub_21CB844F4();
  (*(v59 + 8))(v38, v60);
  sub_21CB70798(v15, type metadata accessor for PMVerificationCodeRow);
  v40 = v62;
  sub_21C728D50(v29);
  v41 = v56;
  (*(v40 + 104))(v39, *MEMORY[0x277CE0558], v56);
  (*(v40 + 56))(v39, 0, 1, v41);
  v42 = *(v61 + 56);
  sub_21C6EDBAC(v29, v30, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v39, v30 + v42, &qword_27CDEC390, &qword_21CBA40E0);
  v43 = *(v40 + 48);
  if (v43(v30, 1, v41) != 1)
  {
    v45 = v53;
    sub_21C6EDBAC(v30, v53, &qword_27CDEC390, &qword_21CBA40E0);
    if (v43(v30 + v42, 1, v41) != 1)
    {
      v46 = v30 + v42;
      v47 = v52;
      (*(v40 + 32))(v52, v46, v41);
      sub_21CB70C00(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v48 = sub_21CB85574();

      v49 = *(v40 + 8);
      v49(v47, v41);
      sub_21C6EA794(v66, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v67, &qword_27CDEC390, &qword_21CBA40E0);
      v49(v45, v41);
      sub_21C6EA794(v30, &qword_27CDEC390, &qword_21CBA40E0);
      v44 = v48 ^ 1;
      goto LABEL_8;
    }

    sub_21C6EA794(v66, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v67, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v40 + 8))(v45, v41);
    goto LABEL_6;
  }

  sub_21C6EA794(v39, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
  if (v43(v30 + v42, 1, v41) != 1)
  {
LABEL_6:
    sub_21C6EA794(v30, &qword_27CDEE530, &unk_21CBA9D80);
    v44 = 1;
    goto LABEL_8;
  }

  sub_21C6EA794(v30, &qword_27CDEC390, &qword_21CBA40E0);
  v44 = 0;
LABEL_8:
  v50 = v65;
  (*(v63 + 32))(v65, v68, v64);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA68, &qword_21CBCFBE0);
  *(v50 + *(result + 36)) = v44 & 1;
  return result;
}

uint64_t sub_21CB6F1A8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9D0, &qword_21CBCFAC0);
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = v34 - v2;
  v3 = sub_21CB83604();
  MEMORY[0x28223BE20](v3 - 8);
  v34[1] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9D8, &qword_21CBCFAC8);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9E0, &unk_21CBCFAD0);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9E8, &qword_21CBCFAE0);
  MEMORY[0x28223BE20](v39);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v17 = sub_21CB712BC();

  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_21CB85084();
  sub_21CB71B34(v11);

  v18 = type metadata accessor for PMAccount(0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    sub_21C6EA794(v11, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_6:
    v28 = v41;
    (*(v1 + 56))(v13, 1, 1, v41);
    v29 = sub_21C6EADEC(&qword_27CDFA9F0, &qword_27CDFA9D8, &qword_21CBCFAC8, MEMORY[0x277CDD7A8]);
    v43 = v5;
    v44 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v40;
    v44 = OpaqueTypeConformance2;
    v31 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v13, v28, v31);
    sub_21C6EA794(v13, &qword_27CDFA9E8, &qword_21CBCFAE0);
    goto LABEL_7;
  }

  v19 = PMAccount.totpGenerator.getter();
  v20 = sub_21CB70798(v11, type metadata accessor for PMAccount);
  if (!v19)
  {
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v20);
  v34[-2] = v19;
  sub_21CB835E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA00, &unk_21CBCFAE8);
  sub_21CB701D0();
  sub_21CB82194();
  v21 = sub_21C6EADEC(&qword_27CDFA9F0, &qword_27CDFA9D8, &qword_21CBCFAC8, MEMORY[0x277CDD7A8]);
  v22 = v36;
  sub_21CB82784();
  (*(v35 + 8))(v7, v5);
  v43 = v5;
  v44 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v38;
  v25 = v40;
  MEMORY[0x21CF131E0](v22, v40, v23);
  v26 = v41;
  (*(v1 + 16))(v13, v24, v41);
  (*(v1 + 56))(v13, 0, 1, v26);
  v43 = v25;
  v44 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v13, v26, v27);

  sub_21C6EA794(v13, &qword_27CDFA9E8, &qword_21CBCFAE0);
  (*(v1 + 8))(v24, v26);
  (*(v37 + 8))(v22, v25);
LABEL_7:
  v32 = sub_21CB70090();
  MEMORY[0x21CF131E0](v16, v39, v32);
  return sub_21C6EA794(v16, &qword_27CDFA9E8, &qword_21CBCFAE0);
}

uint64_t sub_21CB6F870@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMVerificationCodesList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB831C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_21CB831B4();
  sub_21CB705FC(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMVerificationCodesList);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_21CB70664(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMVerificationCodesList);
  v16 = *(v8 + 16);
  v16(v10, v13, v7);
  v24 = 1;
  v16(a2, v10, v7);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA9C8, &qword_21CBCFAB8);
  v18 = &a2[*(v17 + 48)];
  v19 = v24;
  *v18 = 0;
  v18[8] = v19;
  v20 = &a2[*(v17 + 64)];
  *v20 = sub_21CB70030;
  *(v20 + 1) = v15;
  sub_21C7335A8(sub_21CB70030, v15);
  v21 = *(v8 + 8);
  v21(v13, v7);
  sub_21C71B710(sub_21CB70030, v15);
  return (v21)(v10, v7);
}

uint64_t sub_21CB6FAFC(uint64_t a1)
{
  type metadata accessor for PMVerificationCodesList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

id sub_21CB6FB70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_21CB83D94();
  KeyPath = swift_getKeyPath(byte_21CBCFAF8);
  *a2 = a1;
  a2[1] = KeyPath;
  a2[2] = v3;

  return a1;
}

double sub_21CB6FBCC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  sub_21CB85084();
  v4 = *a2;
  v3 = a2[1];

  sub_21CB70C48(v4, v3);

  return result;
}

unint64_t sub_21CB6FC44()
{
  result = qword_27CDFA920;
  if (!qword_27CDFA920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F0, &qword_21CBCF968);
    sub_21CB6FCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA920);
  }

  return result;
}

unint64_t sub_21CB6FCC8()
{
  result = qword_27CDFA928;
  if (!qword_27CDFA928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA930, &qword_21CBCF9C0);
    sub_21CB70C00(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21CB6FD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA928);
  }

  return result;
}

unint64_t sub_21CB6FD84()
{
  result = qword_27CDFA938;
  if (!qword_27CDFA938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA940, &qword_21CBCF9C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_21CB6FE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA938);
  }

  return result;
}

unint64_t sub_21CB6FE80()
{
  result = qword_27CDFA958;
  if (!qword_27CDFA958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA960, &qword_21CBCF9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA948, &qword_21CBCF9D0);
    sub_21C6EADEC(&qword_27CDFA950, &qword_27CDFA948, &qword_21CBCF9D0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFA968, &qword_27CDFA970, &qword_21CBCF9E0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA958);
  }

  return result;
}

void sub_21CB6FFB8(uint64_t a1)
{
  v3 = *(type metadata accessor for PMVerificationCodesList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21CB6DD68(a1, v4);
}

uint64_t sub_21CB70030()
{
  v1 = *(type metadata accessor for PMVerificationCodesList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB6FAFC(v2);
}

unint64_t sub_21CB70090()
{
  result = qword_27CDFA9F8;
  if (!qword_27CDFA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA9E8, &qword_21CBCFAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA9E0, &unk_21CBCFAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA9D8, &qword_21CBCFAC8);
    sub_21C6EADEC(&qword_27CDFA9F0, &qword_27CDFA9D8, &qword_21CBCFAC8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA9F8);
  }

  return result;
}

unint64_t sub_21CB701D0()
{
  result = qword_27CDFAA08;
  if (!qword_27CDFAA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA00, &unk_21CBCFAE8);
    sub_21CB70288();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA08);
  }

  return result;
}

unint64_t sub_21CB70288()
{
  result = qword_27CDFAA10;
  if (!qword_27CDFAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA10);
  }

  return result;
}

uint64_t sub_21CB702DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAA30, &qword_21CBCFB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB70354()
{
  result = qword_27CDFAA48;
  if (!qword_27CDFAA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA40, &qword_21CBCFBD0);
    sub_21CB703E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA48);
  }

  return result;
}

unint64_t sub_21CB703E4()
{
  result = qword_27CDFAA50;
  if (!qword_27CDFAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA58, &qword_21CBCFBD8);
    sub_21CB70468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA50);
  }

  return result;
}

unint64_t sub_21CB70468()
{
  result = qword_27CDFAA60;
  if (!qword_27CDFAA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAA68, &qword_21CBCFBE0);
    type metadata accessor for PMVerificationCodeRow(255);
    sub_21CB70C00(&qword_27CDFAA70, type metadata accessor for PMVerificationCodeRow, &unk_21CBCF430);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA60);
  }

  return result;
}

uint64_t sub_21CB705FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB70664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_21CB706CC()
{
  v1 = *(type metadata accessor for PMVerificationCodesList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_21CB6FBCC(v0 + v2, v5);
}

uint64_t sub_21CB70798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB707F8()
{
  result = qword_27CDFAA80;
  if (!qword_27CDFAA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA998, &qword_21CBCFA38);
    sub_21CB708B4();
    sub_21CB70C00(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable, &unk_21CBCB2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA80);
  }

  return result;
}

unint64_t sub_21CB708B4()
{
  result = qword_27CDFAA88;
  if (!qword_27CDFAA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA918, &qword_21CBCF990);
    sub_21CB70970();
    sub_21CB70C00(&qword_27CDEADB8, type metadata accessor for PMHandleInboundTOTPMigrationURLModifier, &unk_21CBBBC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA88);
  }

  return result;
}

unint64_t sub_21CB70970()
{
  result = qword_27CDFAA90;
  if (!qword_27CDFAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA910, &qword_21CBCF988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA900, &qword_21CBCF978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA980, &qword_21CBCF9F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F8, &qword_21CBCF970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA978, &qword_21CBCF9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA8F0, &qword_21CBCF968);
    sub_21CB6FC44();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA988, &qword_21CBCF9F8);
    sub_21C6EADEC(&qword_27CDFA990, &qword_27CDFA988, &qword_21CBCF9F8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CB70C00(&qword_27CDF1608, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier, &unk_21CBCA8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAA90);
  }

  return result;
}

uint64_t sub_21CB70C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB70C48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v7 = v6 == a1 && v5 == a2;
      if (v7 || (sub_21CB86344() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath(byte_21CBCFCB8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_21CB72C70(v6, v5);
}

uint64_t sub_21CB70DC4()
{
  swift_getKeyPath(byte_21CBCFD58);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();
}

uint64_t sub_21CB70E68()
{
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();
}

uint64_t sub_21CB70F0C()
{
  swift_getKeyPath(byte_21CBCFD80);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21CB70FBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBCFD80);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21CB71068(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21CB710A8(v1, v2);
}

uint64_t sub_21CB710A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_21CB86344() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;

    return sub_21CB726C0();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBCFD80);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
    sub_21CB810C4();
  }
}

uint64_t sub_21CB7120C()
{
  swift_getKeyPath(byte_21CBCFCB8);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_21CB712BC()
{
  v1 = v0;
  v71 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v71);
  v70 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v76);
  v69 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v64 - v5);
  v75 = type metadata accessor for PMAccount(0);
  v7 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v16 = &v64 - v15;
  v17 = OBJC_IVAR____TtC17PasswordManagerUI28PMVerificationCodesListModel___observationRegistrar;
  v77 = v1;
  v67 = sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  v68 = v17;
  sub_21CB810D4();

  v18 = *(v1 + 40);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v66 = v1;
    v77 = MEMORY[0x277D84F90];

    sub_21C7B1400(0, v19, 0);
    v20 = v77;
    v21 = *(v7 + 80);
    v64 = v18;
    v65 = v7;
    v22 = v18 + ((v21 + 32) & ~v21);
    v23 = *(v7 + 72);
    v73 = v6;
    while (1)
    {
      sub_21C80EABC(v22, v11, type metadata accessor for PMAccount);
      sub_21C80EABC(&v11[*(v75 + 24)], v6, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v72 = v19;
      v24 = v11;
      v25 = v16;
      v26 = v23;
      v27 = v13;
      v28 = v70;
      sub_21C8399BC(v6, v70, type metadata accessor for PMAccount.MockData);
      v29 = *(v28 + *(v71 + 56));
      v30 = v29;
      sub_21C719960(v28, type metadata accessor for PMAccount.MockData);
      if (v29)
      {
        v13 = v27;
        v23 = v26;
        v16 = v25;
        v11 = v24;
        v19 = v72;
        goto LABEL_12;
      }

      v36 = 1;
      v13 = v27;
      v23 = v26;
      v16 = v25;
      v11 = v24;
      v19 = v72;
      v6 = v73;
LABEL_17:
      sub_21C719960(v11, type metadata accessor for PMAccount);
      v37 = sub_21CB80DD4();
      (*(*(v37 - 8) + 56))(v16, v36, 1, v37);
      v77 = v20;
      v39 = *(v20 + 16);
      v38 = *(v20 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21C7B1400((v38 > 1), v39 + 1, 1);
        v20 = v77;
      }

      *(v20 + 16) = v39 + 1;
      sub_21C6F1098(v16, v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v39);
      v22 += v23;
      if (!--v19)
      {

        v7 = v65;
        v1 = v66;
        goto LABEL_22;
      }
    }

    v31 = *v6;
    v32 = [*v6 totpGenerators];
    sub_21C7B1B18();
    v33 = sub_21CB85824();

    if (v33 >> 62)
    {
      result = sub_21CB85FA4();
      if (result)
      {
LABEL_8:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x21CF15BD0](0, v33);
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return result;
          }

          v35 = *(v33 + 32);
        }

        v30 = v35;

LABEL_12:
        v31 = [v30 initialDate];

        sub_21CB80D94();
        v36 = 0;
LABEL_16:
        v6 = v73;

        goto LABEL_17;
      }
    }

    else
    {
      result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }

    v36 = 1;
    goto LABEL_16;
  }

LABEL_22:
  v40 = sub_21CB0143C(v20);

  v41 = *(v40 + 16);

  v42 = v69;
  if (v41 != 1)
  {
    return 0;
  }

  v77 = v1;
  sub_21CB810D4();

  v43 = *(v1 + 40);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  if (!v44)
  {
    goto LABEL_44;
  }

  v77 = MEMORY[0x277D84F90];

  sub_21C7B13E0(0, v44, 0);
  v45 = v77;
  v46 = *(v7 + 80);
  v73 = v43;
  v47 = v43 + ((v46 + 32) & ~v46);
  v48 = *(v7 + 72);
  do
  {
    v49 = v74;
    sub_21C80EABC(v47, v74, type metadata accessor for PMAccount);
    sub_21C80EABC(v49 + *(v75 + 24), v42, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = v70;
      sub_21C8399BC(v42, v70, type metadata accessor for PMAccount.MockData);
      v51 = *(v50 + *(v71 + 56));
      v52 = v51;
      sub_21C719960(v50, type metadata accessor for PMAccount.MockData);
      if (!v51)
      {
        v53 = 0;
        v54 = 1;
        goto LABEL_38;
      }
    }

    else
    {
      v55 = *v42;
      v56 = [*v42 totpGenerators];
      sub_21C7B1B18();
      v57 = sub_21CB85824();

      if (v57 >> 62)
      {
        result = sub_21CB85FA4();
        if (!result)
        {
LABEL_36:

          v53 = 0;
          v54 = 1;
          goto LABEL_37;
        }
      }

      else
      {
        result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_36;
        }
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x21CF15BD0](0, v57);
      }

      else
      {
        if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v58 = *(v57 + 32);
      }

      v52 = v58;
    }

    v53 = [v52 codeGenerationPeriod];
    v54 = 0;
    v55 = v52;
LABEL_37:

LABEL_38:
    sub_21C719960(v74, type metadata accessor for PMAccount);
    v77 = v45;
    v60 = *(v45 + 16);
    v59 = *(v45 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_21C7B13E0((v59 > 1), v60 + 1, 1);
      v45 = v77;
    }

    *(v45 + 16) = v60 + 1;
    v61 = v45 + 16 * v60;
    *(v61 + 32) = v53;
    *(v61 + 40) = v54;
    v47 += v48;
    --v44;
    v42 = v69;
  }

  while (v44);

LABEL_44:
  v62 = sub_21CB015A8(v45);

  v63 = *(v62 + 16);

  return v63 == 1;
}

uint64_t sub_21CB71B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v24);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PMAccount(0);
  v8 = *(v26 - 8);
  *&v9 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v12 = v1[5];
  v13 = *(v12 + 16);
  if (!v13)
  {
    v21 = 1;
    return (*(v8 + 56))(a1, v21, 1, v26);
  }

  v22 = a1;
  v25 = v8;
  v14 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  v16 = 0;
  while (1)
  {
    if (v16 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_21C80EABC(v14 + *(v25 + 72) * v16, v11, type metadata accessor for PMAccount);
    sub_21C80EABC(&v11[*(v26 + 24)], v7, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_21C8399BC(v7, v5, type metadata accessor for PMAccount.MockData);
    v17 = *&v5[*(v23 + 56)];
    v2 = v17;
    sub_21C719960(v5, type metadata accessor for PMAccount.MockData);
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_4:
    ++v16;
    result = sub_21C719960(v11, type metadata accessor for PMAccount);
    if (v13 == v16)
    {

      v21 = 1;
      a1 = v22;
      v8 = v25;
      return (*(v8 + 56))(a1, v21, 1, v26);
    }
  }

  v2 = *v7;
  v18 = [*v7 totpGenerators];
  sub_21C7B1B18();
  v19 = sub_21CB85824();

  result = v19;
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v20 = sub_21CB85FA4();
  result = v19;
  if (!v20)
  {
LABEL_9:

    goto LABEL_4;
  }

LABEL_11:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_20:
    MEMORY[0x21CF15BD0](0, result);

    swift_unknownObjectRelease();
LABEL_16:

    a1 = v22;
    v8 = v25;
LABEL_17:

    sub_21C8399BC(v11, a1, type metadata accessor for PMAccount);
    v21 = 0;
    return (*(v8 + 56))(a1, v21, 1, v26);
  }

  a1 = v22;
  v8 = v25;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CB71F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBCFD58);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  *a2 = *(v3 + 24);
}

uint64_t sub_21CB72048(uint64_t a1)
{

  v4 = sub_21C714F88(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBCFD58);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
    sub_21CB810C4();
  }
}

uint64_t sub_21CB7219C()
{
  swift_getKeyPath(a8_50);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();
}

uint64_t sub_21CB72240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a8_50);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  *a2 = *(v3 + 32);
}

double sub_21CB722EC(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    if (a1)
    {
      sub_21CB81CC4();
      sub_21CB73730(&qword_27CDEAC18, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);

      v4 = sub_21CB85574();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath(a8_50);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
    sub_21CB810C4();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 32) = a1;

  return result;
}

uint64_t sub_21CB72494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_21CB7256C(uint64_t a1)
{

  v4 = sub_21C714F88(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
    sub_21CB810C4();
  }
}

uint64_t sub_21CB726C0()
{
  v1 = v0;
  swift_getKeyPath(byte_21CBCFD80);
  v17 = v0;
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v2 = v0[7];
  v3 = v0[6] & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    v4 = v0[2];
    v5 = qword_27CDEA4C0;

    if (v5 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v6 = sub_21C7072A8(v4, v17);

    swift_getKeyPath(byte_21CBCFD58);
    sub_21CB810D4();

    v7 = v1[3];
    swift_getKeyPath(byte_21CBCFD80);

    sub_21CB810D4();

    v9 = v1[6];
    v8 = v1[7];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 48);

      v14 = v13(ObjectType, v11);
      swift_unknownObjectRelease();
      Strong = [v14 associatedDomainsManager];
    }

    else
    {
    }

    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v7, v9, v8, Strong);
  }

  else
  {
    swift_getKeyPath(byte_21CBCFD58);
    sub_21CB810D4();

    matched = v0[3];
  }

  return sub_21CB7256C(matched);
}

uint64_t sub_21CB72978()
{
  swift_getKeyPath(aX_87);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21CB72A28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_87);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21CB736F0;
  a2[1] = v6;
}

double sub_21CB72B00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath(aX_87);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);

  sub_21CB810C4();

  return result;
}

void sub_21CB72C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_21CB735B4(a2, a3);
}

void sub_21CB72C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath(byte_21CBCFCB8);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v6 = v2[11];
  if (!a2)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v6 || (v2[10] != a1 || v6 != a2) && (sub_21CB86344() & 1) == 0)
  {
LABEL_8:
    swift_getKeyPath(aX_87);
    sub_21CB810D4();

    v7 = v2[8];
    swift_getKeyPath(byte_21CBCFCB8);

    sub_21CB810D4();

    v8 = v2[10];
    v9 = v3[11];

    v7(a1, a2, v8, v9);
  }
}

uint64_t sub_21CB72E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;

  sub_21CB72C70(v3, v4);
}

void *sub_21CB72E64()
{
  KeyPath = swift_getKeyPath(aX_88);
  v2 = MEMORY[0x277D84F90];
  v0[2] = KeyPath;
  v0[3] = v2;
  v0[4] = 0;
  v0[5] = v2;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = nullsub_1;
  v0[9] = 0;
  v0[10] = 0;
  v0[11] = 0;
  sub_21CB81104();
  sub_21CB72ECC();
  return v0;
}

double sub_21CB72ECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = *(v0 + 16);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v9[1]);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB56820();
  v7 = sub_21CB81E04();

  (*(v2 + 8))(v4, v1);
  return sub_21CB722EC(v7);
}

void sub_21CB730C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PMAccount(0);
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    sub_21CB72048(v7);
    swift_getKeyPath(byte_21CBCFD58);
    v8 = OBJC_IVAR____TtC17PasswordManagerUI28PMVerificationCodesListModel___observationRegistrar;
    v21 = v6;
    v19[0] = sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
    v19[1] = v8;
    sub_21CB810D4();

    v9 = v6[3];
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + ((*(v20 + 80) + 32) & ~*(v20 + 80));

      v12 = 0;
      while (v12 < *(v9 + 16))
      {
        sub_21C80EABC(v11 + *(v20 + 72) * v12, v4, type metadata accessor for PMAccount);
        v13 = *v4;
        v14 = v4[1];
        swift_getKeyPath(byte_21CBCFCB8);
        v21 = v6;
        sub_21CB810D4();

        v15 = v6[11];
        if (v15)
        {
          if (v13 == v6[10] && v15 == v14)
          {
            sub_21C719960(v4, type metadata accessor for PMAccount);
LABEL_17:

            goto LABEL_18;
          }

          v16 = sub_21CB86344();
          sub_21C719960(v4, type metadata accessor for PMAccount);
          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_21C719960(v4, type metadata accessor for PMAccount);
        }

        if (v10 == ++v12)
        {

          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      if (v6[11])
      {
        KeyPath = swift_getKeyPath(byte_21CBCFCB8);
        MEMORY[0x28223BE20](KeyPath);
        v19[-3] = 0;
        v19[-2] = 0;
        v19[-4] = v6;
        v21 = v6;
        sub_21CB810C4();
      }

      else
      {
        v18 = v6[10];
        v6[10] = 0;
        v6[11] = 0;
        sub_21CB72C70(v18, 0);
      }

LABEL_18:
      sub_21CB726C0();
    }
  }
}

char *sub_21CB73428()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI28PMVerificationCodesListModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21CB734C0()
{
  sub_21CB73428();

  return swift_deallocClassInstance();
}

uint64_t sub_21CB73520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  return v5(v8, v7);
}

void sub_21CB73560()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_21CB735B4(v1, v2);
}

uint64_t sub_21CB735B4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;

  swift_getKeyPath(aX_87);
  sub_21CB73730(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel, &unk_21CBCFC98);
  sub_21CB810D4();

  v3 = v2[8];
  swift_getKeyPath(byte_21CBCFCB8);
  v7 = v2;

  sub_21CB810D4();

  v5 = v2[10];
  v4 = v7[11];

  v3(0, 0, v5, v4);
}

uint64_t sub_21CB73730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB737AC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;

  return sub_21CB726C0();
}

uint64_t sub_21CB737FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CB73838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21CB73880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB73920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_21CB82304();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_21CB73A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a3;
  v51 = a6;
  v42 = a5;
  v52 = a4;
  v49 = a2;
  v53 = a7;
  v8 = sub_21CB80DD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v46 = sub_21CB83964();
  MEMORY[0x28223BE20](v46);
  v41 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83B74();
  v43 = sub_21CB828F4();
  v45 = sub_21CB74744(&qword_27CDFAB30, MEMORY[0x277CE06F0], MEMORY[0x277CE06E8]);
  v16 = sub_21CB82314();
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_21CB828F4();
  v48 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v44 = &v41 - v24;
  v25 = [a1 initialDate];
  sub_21CB80D94();

  v26 = v8;
  (*(v9 + 16))(v11, v14, v8);
  v27 = v41;
  sub_21CB83954();
  (*(v9 + 8))(v14, v26);
  v28 = swift_allocObject();
  v30 = v50;
  v29 = v51;
  *(v28 + 16) = v42;
  *(v28 + 24) = v29;
  v31 = v49;
  *(v28 + 32) = a1;
  *(v28 + 40) = v31;
  *(v28 + 48) = v30;
  *(v28 + 56) = v52;
  v32 = sub_21CB74744(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v57 = v29;
  v58 = v32;
  v33 = a1;

  v34 = v43;
  WitnessTable = swift_getWitnessTable();
  sub_21CB73920(v27, sub_21CB744DC, v28, v46, v34, v45, WitnessTable);
  v56 = WitnessTable;
  v36 = swift_getWitnessTable();
  sub_21CB845C4();
  (*(v47 + 8))(v18, v16);
  v54 = v36;
  v55 = v32;
  v37 = swift_getWitnessTable();
  v38 = v44;
  sub_21C72BE10(v21, v19, v37);
  v39 = *(v48 + 8);
  v39(v21, v19);
  sub_21C72BE10(v38, v19, v37);
  return (v39)(v38, v19);
}

uint64_t sub_21CB73F78@<X0>(void *a1@<X1>, void (*a2)(void *)@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v52 = a6;
  v43 = a4;
  v41[1] = a3;
  v42 = a2;
  v53 = a7;
  v47 = sub_21CB83274();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83B74();
  v51 = a5;
  v13 = sub_21CB828F4();
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = v41 - v16;
  v41[0] = sub_21CB80DD4();
  v17 = *(v41[0] - 8);
  MEMORY[0x28223BE20](v41[0]);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91C8, &qword_21CBCAF70);
  sub_21CB822E4();
  sub_21CB7FE58();
  v21 = v20;
  v22 = sub_21CB80D24();
  v23 = [a1 codeForDate_];

  v24 = sub_21CB855C4();
  v26 = v25;

  v27 = sub_21CB7FFD4(v19);
  v29 = v28;
  v30 = [a1 codeGenerationPeriod];
  v57[0] = v21;
  v57[1] = v24;
  v57[2] = v26;
  v57[3] = v27;
  v57[4] = v29;
  *&v57[5] = 1.0 - v21 / v30;
  v42(v57);

  if (v43)
  {
    v31 = v45;
    sub_21CB83224();
    v32 = v47;
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
    sub_21CB74744(&qword_27CDF4520, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4528, &unk_21CBBAD40);
    sub_21CB7478C();
    v31 = v45;
    v32 = v47;
    sub_21CB85F14();
  }

  v33 = v46;
  v35 = v51;
  v34 = v52;
  sub_21CB84594();
  (*(v49 + 8))(v31, v32);
  (*(v44 + 8))(v12, v35);
  (*(v17 + 8))(v19, v41[0]);
  v36 = sub_21CB74744(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v54 = v34;
  v55 = v36;
  WitnessTable = swift_getWitnessTable();
  v38 = v48;
  sub_21C72BE10(v33, v13, WitnessTable);
  v39 = *(v50 + 8);
  v39(v33, v13);
  sub_21C72BE10(v38, v13, WitnessTable);
  return (v39)(v38, v13);
}

uint64_t sub_21CB744F0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v31 = a7;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91C8, &qword_21CBCAF70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  v21 = sub_21CB822F4();
  v23 = *(v21 - 8);
  result = v21 - 8;
  if (*(v23 + 64) == v11)
  {
    (*(v10 + 16))(v13, v27, v9);
    v29(v13);
    (*(v10 + 8))(v13, v9);
    v24 = v31;
    sub_21C72BE10(v17, a5, v31);
    v25 = *(v14 + 8);
    v25(v17, a5);
    sub_21C72BE10(v20, a5, v24);
    return (v25)(v20, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CB74744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CB7478C()
{
  result = qword_27CDF4530;
  if (!qword_27CDF4530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4528, &unk_21CBBAD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4530);
  }

  return result;
}

uint64_t sub_21CB74800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21CB85214();
  sub_21CB82AB4();
  sub_21CB828F4();
  swift_getWitnessTable();
  sub_21CB82AD4();
  sub_21CB828F4();
  sub_21CB74BB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_21CB846F4();
}

uint64_t sub_21CB7495C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7;
  v27 = a4;
  v24 = a5;
  v25 = a3;
  v28 = a1;
  v29 = a2;
  v30 = a9;
  sub_21CB82AB4();
  sub_21CB828F4();
  v39 = a8;
  v40 = MEMORY[0x277CDFC30];
  swift_getWitnessTable();
  sub_21CB82AD4();
  v11 = sub_21CB828F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v31 = v24;
  v32 = a6;
  v33 = v26;
  v34 = a8;
  v35 = v25;
  v36 = v27;
  v18 = sub_21CB74BB4();
  sub_21CB84864();
  WitnessTable = swift_getWitnessTable();
  v37 = v18;
  v38 = WitnessTable;
  v20 = swift_getWitnessTable();
  sub_21C72BE10(v14, v11, v20);
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_21C72BE10(v17, v11, v20);
  return (v21)(v17, v11);
}

unint64_t sub_21CB74BB4()
{
  result = qword_27CDFAB38;
  if (!qword_27CDFAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAB38);
  }

  return result;
}

uint64_t sub_21CB74C08@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = sub_21CB85284();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB82AB4();
  v13 = sub_21CB828F4();
  v23 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  v25(v17);
  (*(v7 + 104))(v9, *MEMORY[0x277CE13C0], v6);
  sub_21CB849A4();
  (*(v7 + 8))(v9, v6);
  (*(v24 + 8))(v12, a2);
  v27 = a3;
  v28 = MEMORY[0x277CDFC30];
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v15, v13, WitnessTable);
  v21 = *(v23 + 8);
  v21(v15, v13);
  sub_21C72BE10(v19, v13, WitnessTable);
  return (v21)(v19, v13);
}

uint64_t sub_21CB74F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  if (MGGetBoolAnswer())
  {
    if (a1 == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    sub_21CB81014();
    sub_21CB81004();
    (*(v7 + 8))(v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_21CBA0690;
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = a1;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    goto LABEL_6;
  }

LABEL_5:
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21CBA0690;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_21C7C0050();
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;

LABEL_7:
  v18 = sub_21CB85594();

  return v18;
}

uint64_t sub_21CB75210()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_21CB75364()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_21CB754B8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_21CB7560C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21CB75784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CB757CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CB7584C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = sub_21CB83A34();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB48, &qword_21CBD01C8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB50, &qword_21CBD01D0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB58, &qword_21CBD01D8);
  v40 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v37 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB60, &qword_21CBD01E0);
  v14 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v41 = &v37 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB68, &qword_21CBD01E8);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB70, &qword_21CBD01F0);
  MEMORY[0x28223BE20](v45);
  v18 = &v37 - v17;
  if (*(a1 + 72))
  {
    sub_21CB75F74(v18);
    sub_21C78FAD8(v18, v44);
    swift_storeEnumTagMultiPayload();
    sub_21CB77714();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    v20 = sub_21CB775B0();
    v21 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v48 = v9;
    v49 = v19;
    v50 = v20;
    v51 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v46;
    v49 = v19;
    v50 = OpaqueTypeConformance2;
    v51 = v21;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return sub_21C6EA794(v18, &qword_27CDFAB70, &qword_21CBD01F0);
  }

  else
  {
    *v8 = sub_21CB83074();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB78, &unk_21CBD01F8);
    sub_21CB76AB8(a1, &v8[*(v24 + 44)]);
    sub_21CB83A24();
    v38 = v14;
    sub_21C6EADEC(&qword_27CDFAB80, &qword_27CDFAB48, &qword_21CBD01C8, MEMORY[0x277CE1138]);
    sub_21CB844F4();
    (*(v3 + 8))(v5, v39);
    v25 = sub_21C6EA794(v8, &qword_27CDFAB48, &qword_21CBD01C8);
    MEMORY[0x28223BE20](v25);
    *(&v37 - 2) = a1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    v27 = sub_21CB775B0();
    v28 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB844E4();
    sub_21C6EA794(v11, &qword_27CDFAB50, &qword_21CBD01D0);
    v29 = swift_allocObject();
    v30 = *(a1 + 48);
    v29[3] = *(a1 + 32);
    v29[4] = v30;
    *(v29 + 74) = *(a1 + 58);
    v31 = *(a1 + 16);
    v29[1] = *a1;
    v29[2] = v31;
    sub_21CB776DC(a1, &v48);
    v48 = v9;
    v49 = v26;
    v50 = v27;
    v51 = v28;
    v32 = swift_getOpaqueTypeConformance2();
    v33 = v41;
    v34 = v46;
    sub_21CB848F4();

    (*(v40 + 8))(v13, v34);
    v35 = v38;
    v36 = v47;
    (*(v38 + 16))(v44, v33, v47);
    swift_storeEnumTagMultiPayload();
    sub_21CB77714();
    v48 = v34;
    v49 = v26;
    v50 = v32;
    v51 = v28;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v35 + 8))(v33, v36);
  }
}

uint64_t sub_21CB75F74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABA8, &qword_21CBD0218);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v53 - v7;
  v8 = sub_21CB81024();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v64 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF988, &unk_21CBAC958);
  v65 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v18 = &v53 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABA0, &qword_21CBD0210);
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v53 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB98, &qword_21CBD0208);
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v53 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABB0, &unk_21CBD0228);
  MEMORY[0x28223BE20](v74);
  if (*(v1 + 72) & 1) != 0 && (*(v1 + 73))
  {
    v23 = *(v1 + 40);
    v78 = *(v1 + 24);
    v79 = v23;
    v61 = &v53 - v21;
    v62 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
    sub_21CB84F54();
    v57 = *(&v75 + 1);
    v58 = v75;
    v56 = v76;
    v55 = v77;
    sub_21CB81014();
    sub_21CB81014();
    v24 = sub_21CB80FF4();
    v60 = a1;
    v26 = v25;
    v59 = v3;
    v54 = v18;
    v27 = *(v63 + 8);
    v27(v10, v8);
    v27(v13, v8);
    *&v78 = v24;
    *(&v78 + 1) = v26;
    sub_21C71F3FC();
    sub_21CB84054();
    sub_21CB852F4();
    v28 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
    v29 = v54;
    sub_21CB841E4();
    (*(v64 + 8))(v16, v14);
    *&v78 = v14;
    *(&v78 + 1) = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v66;
    v32 = v71;
    sub_21CB841D4();
    (*(v65 + 8))(v29, v32);
    v33 = v70;
    sub_21CB83A84();
    v34 = sub_21CB83A94();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    *&v78 = v32;
    *(&v78 + 1) = OpaqueTypeConformance2;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v67;
    v37 = v72;
    sub_21CB84664();
    sub_21C6EA794(v33, &qword_27CDEE080, &qword_21CBD0220);
    (*(v68 + 8))(v31, v37);
    *&v78 = v37;
    *(&v78 + 1) = v35;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = v61;
    v40 = v73;
    MEMORY[0x21CF14040](1, v73, v38);
    (*(v69 + 8))(v36, v40);
    v41 = v62;
    v42 = v74;
    (*(v62 + 16))(v5, v39, v74);
    swift_storeEnumTagMultiPayload();
    *&v78 = v40;
    *(&v78 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v41 + 8))(v39, v42);
  }

  else
  {
    v44 = *(v1 + 40);
    v78 = *(v1 + 24);
    v79 = v44;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
    MEMORY[0x21CF14A20](&v75, v45);
    v78 = v75;
    sub_21C71F3FC();
    *v5 = sub_21CB84054();
    *(v5 + 1) = v46;
    v5[16] = v47 & 1;
    *(v5 + 3) = v48;
    swift_storeEnumTagMultiPayload();
    v49 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
    *&v78 = v14;
    *(&v78 + 1) = v49;
    v50 = swift_getOpaqueTypeConformance2();
    *&v78 = v71;
    *(&v78 + 1) = v50;
    v51 = swift_getOpaqueTypeConformance2();
    *&v78 = v72;
    *(&v78 + 1) = v51;
    v52 = swift_getOpaqueTypeConformance2();
    *&v78 = v73;
    *(&v78 + 1) = v52;
    swift_getOpaqueTypeConformance2();
    return sub_21CB83494();
  }
}

uint64_t sub_21CB76928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v17[0] = v9;
  v17[1] = v11;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_21CB76AB8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82A54();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABB8, &qword_21CBD0238);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABC0, &qword_21CBD0240);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = *(a1 + 40);
  v43[0] = *(a1 + 24);
  v43[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v44, v19);
  v43[0] = v44;
  sub_21C71F3FC();
  v36 = sub_21CB84054();
  v35 = v20;
  v37 = v21;
  v38 = v22;
  v23 = swift_allocObject();
  v24 = a1[3];
  v23[3] = a1[2];
  v23[4] = v24;
  *(v23 + 74) = *(a1 + 58);
  v25 = a1[1];
  v23[1] = *a1;
  v23[2] = v25;
  v42 = a1;
  sub_21CB776DC(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABC8, &unk_21CBD0248);
  sub_21CB778EC();
  sub_21CB84DA4();
  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDFABD8, &qword_27CDFABB8, &qword_21CBD0238, MEMORY[0x277CDF028]);
  sub_21CB779A4();
  v34 = v17;
  v26 = v40;
  sub_21CB84124();
  (*(v41 + 8))(v7, v26);
  (*(v39 + 8))(v10, v8);
  v27 = *(v12 + 16);
  v27(v14, v17, v11);
  v28 = v36;
  v29 = v35;
  *a2 = v36;
  *(a2 + 8) = v29;
  v30 = v37 & 1;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABE0, &qword_21CBD0258);
  v27((a2 + *(v31 + 64)), v14, v11);
  sub_21C79B058(v28, v29, v30);
  v32 = *(v12 + 8);

  v32(v34, v11);
  v32(v14, v11);
  sub_21C74A72C(v28, v29, v30);
}

uint64_t sub_21CB76F34(__int128 *a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = sub_21CB80BE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 40);
  v19 = *(a1 + 24);
  v20 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v18, v14);
  *&v19 = 0x2F2F3A7370747468;
  *(&v19 + 1) = 0xE800000000000000;
  MEMORY[0x21CF151F0](v18[0], v18[1]);

  sub_21CB80BD4();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21C6EA794(v8, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v10 + 32))(v12, v8, v9);
  v19 = *a1;
  LOBYTE(v20) = *(a1 + 16);
  v16 = v19;
  if (v20 == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v19, &qword_27CDF2F10, &unk_21CBB68B0);
    (*(v3 + 8))(v5, v2);
    v16 = v18[0];
  }

  v16(v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21CB7727C@<X0>(uint64_t a2@<X8>)
{

  v3 = sub_21CB84BB4();
  result = sub_21CB837E4();
  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_21CB772CC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v16 = v8;
  v17 = v10;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  *(v11 + 74) = *(a1 + 58);
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  sub_21CB776DC(a1, v15);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21CB7744C(uint64_t a1)
{
  if (qword_27CDEA480 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(a1 + 40);
  v6 = *(a1 + 24);
  v7 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v5, v2);
  sub_21CADAA84(v5[0], v5[1], 0);
}

uint64_t sub_21CB77504@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v8[2] = v2[2];
  v9[0] = v4;
  *(v9 + 10) = *(v2 + 58);
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_21CB83074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB40, &qword_21CBD01C0);
  return sub_21CB7584C(v8, a2 + *(v6 + 44));
}

unint64_t sub_21CB775B0()
{
  result = qword_27CDFAB88;
  if (!qword_27CDFAB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB50, &qword_21CBD01D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB48, &qword_21CBD01C8);
    sub_21C6EADEC(&qword_27CDFAB80, &qword_27CDFAB48, &qword_21CBD01C8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAB88);
  }

  return result;
}

unint64_t sub_21CB77714()
{
  result = qword_27CDFAB90;
  if (!qword_27CDFAB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB70, &qword_21CBD01F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAB98, &qword_21CBD0208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFABA0, &qword_21CBD0210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAB90);
  }

  return result;
}

unint64_t sub_21CB778EC()
{
  result = qword_27CDFABD0;
  if (!qword_27CDFABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFABC8, &unk_21CBD0248);
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFABD0);
  }

  return result;
}

unint64_t sub_21CB779A4()
{
  result = qword_27CDED508;
  if (!qword_27CDED508)
  {
    sub_21CB82A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED508);
  }

  return result;
}

unint64_t sub_21CB77A6C()
{
  result = qword_27CDFAC00;
  if (!qword_27CDFAC00)
  {
    sub_21C897E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAC00);
  }

  return result;
}

id sub_21CB77AC4(void *a1)
{
  v1 = a1;
  WBSSavedAccount.recentlyDeletedDetailViewDeleteSectionFooter.getter();

  v2 = sub_21CB85584();

  return v2;
}

uint64_t WBSSavedAccount.recentlyDeletedDetailViewDeleteSectionFooter.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v252 = &v246 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v254 = &v246 - v5;
  MEMORY[0x28223BE20](v6);
  v251 = &v246 - v7;
  MEMORY[0x28223BE20](v8);
  v250 = &v246 - v9;
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  v255 = v10;
  v256 = v11;
  MEMORY[0x28223BE20](v10);
  v249 = &v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v253 = &v246 - v14;
  MEMORY[0x28223BE20](v15);
  v248 = &v246 - v16;
  MEMORY[0x28223BE20](v17);
  v247 = &v246 - v18;
  v19 = sub_21CB81024();
  v20 = *(v19 - 8);
  v263 = v19;
  v264 = v20;
  MEMORY[0x28223BE20](v19);
  v259 = &v246 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v260 = &v246 - v23;
  MEMORY[0x28223BE20](v24);
  v261 = &v246 - v25;
  MEMORY[0x28223BE20](v26);
  v262 = &v246 - v27;
  MEMORY[0x28223BE20](v28);
  v271 = &v246 - v29;
  MEMORY[0x28223BE20](v30);
  v272 = &v246 - v31;
  v32 = sub_21CB80F14();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v246 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21CB80F24();
  v265 = *(v36 - 8);
  v266 = v36;
  MEMORY[0x28223BE20](v36);
  v38 = &v246 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v268 = &v246 - v43;
  v274 = sub_21CB80DD4();
  v44 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v46 = &v246 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v246 - v48;
  MEMORY[0x28223BE20](v50);
  v273 = &v246 - v51;
  v270 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
  sub_21CB80F04();
  v52 = *MEMORY[0x277CC9968];
  v267 = v33;
  v53 = v32;
  (*(v33 + 104))(v35, v52, v32);
  v269 = v1;
  v54 = [v1 lastModifiedDate];
  if (v54)
  {
    v55 = v54;
    sub_21CB80D94();

    v56 = v274;
    v57 = *(v44 + 32);
    v57(v41, v46, v274);
    (*(v44 + 56))(v41, 0, 1, v56);
    v57(v49, v41, v56);
  }

  else
  {
    v58 = v274;
    (*(v44 + 56))(v41, 1, 1, v274);
    v59 = [objc_opt_self() now];
    sub_21CB80D94();

    if ((*(v44 + 48))(v41, 1, v58) != 1)
    {
      sub_21C6EA794(v41, &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  v60 = v268;
  sub_21CB80EF4();
  v62 = v44 + 8;
  v61 = *(v44 + 8);
  v63 = v274;
  v61(v49, v274);
  (*(v267 + 8))(v35, v53);
  (*(v265 + 8))(v38, v266);
  v64 = *(v44 + 48);
  if (v64(v60, 1, v63) == 1)
  {
    v65 = [objc_opt_self() now];
    sub_21CB80D94();

    v66 = v64(v60, 1, v274);
    v67 = v269;
    if (v66 != 1)
    {
      sub_21C6EA794(v60, &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    (*(v44 + 32))(v273, v60, v274);
    v67 = v269;
  }

  sub_21CB80DA4();
  v68 = sub_21CB80D24();
  v61(v46, v274);
  v69 = sub_21CB80D24();
  v70 = [v68 safari:v69 numberOfDaysUntilDate:?];

  v71 = (v70 + 1);
  if (__OFADD__(v70, 1))
  {
    __break(1u);
LABEL_72:
    swift_once();
LABEL_34:
    v88 = sub_21CB81C84();
    __swift_project_value_buffer(v88, qword_27CE186E0);
    v89 = sub_21CB81C64();
    v90 = sub_21CB85AF4();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      *(v91 + 4) = v270;
      _os_log_impl(&dword_21C6E5000, v89, v90, "FileVault Recovery Key displayed a credential older than %ld days in Recently Deleted.", v91, 0xCu);
      MEMORY[0x21CF16D90](v91, -1, -1);
    }

LABEL_51:

    v101 = v272;
    sub_21CB81014();
    v102 = sub_21CB81004();
    (*(v264 + 8))(v101, v263);
    goto LABEL_70;
  }

  v72 = [v67 credentialTypes];
  if ((v72 - 8) >= 2)
  {
    if (v72 == 1)
    {
      if (v71 > 0)
      {
        v270 = v70 + 1;
        v257 = v61;
        v258 = v62;
        if ([v67 isSavedInSharedGroup] && (objc_msgSend(v67, sel_isCurrentUserOriginalContributor) & 1) == 0)
        {
          v81 = v250;
          sub_21CB85B94();
          v83 = v255;
          v82 = v256;
          if ((*(v256 + 48))(v81, 1, v255) == 1)
          {
            sub_21C6EA794(v81, &unk_27CDF20B0, &unk_21CBA0090);
          }

          else
          {
            v149 = v247;
            (*(v82 + 32))(v247, v81, v83);
            v150 = [objc_opt_self() sharedManager];
            v151 = [v67 originalContributorParticipantID];
            sub_21CB85B64();
            v152 = sub_21CB85584();

            v153 = [v150 nameForOriginalContributorParticipantID:v151 inGroupID:v152];

            if (v153)
            {
              v154 = sub_21CB855C4();
              v268 = v155;
              v269 = v154;

              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v156 = sub_21CB81034();
              v157 = *(v156 - 8);
              v158 = (*(v157 + 80) + 32) & ~*(v157 + 80);
              v159 = swift_allocObject();
              v160 = v262;
              sub_21CB81014();
              v161 = v261;
              sub_21CB81014();
              v162 = v260;
              sub_21CB81014();
              v163 = v259;
              sub_21CB81014();
              sub_21CB80FE4();
              v164 = *(v264 + 8);
              v165 = v163;
              v166 = v263;
              v164(v165, v263);
              v164(v162, v166);
              v164(v161, v166);
              v164(v160, v166);
              swift_setDeallocating();
              (*(v157 + 8))(v159 + v158, v156);
              swift_deallocClassInstance();
              v167 = v272;
              sub_21CB81004();
              v164(v271, v166);
              v164(v167, v166);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v168 = swift_allocObject();
              *(v168 + 16) = xmmword_21CBA15B0;
              v169 = MEMORY[0x277D83C10];
              *(v168 + 56) = MEMORY[0x277D83B88];
              *(v168 + 64) = v169;
              *(v168 + 32) = v270;
              *(v168 + 96) = MEMORY[0x277D837D0];
              *(v168 + 104) = sub_21C7C0050();
              v170 = v268;
              *(v168 + 72) = v269;
              *(v168 + 80) = v170;
              v102 = sub_21CB85594();

              (*(v256 + 8))(v247, v255);
              goto LABEL_69;
            }

            (*(v256 + 8))(v149, v83);
          }
        }

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v221 = sub_21CB81034();
        v222 = *(v221 - 8);
        v223 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v224 = swift_allocObject();
        v225 = v262;
        sub_21CB81014();
        v226 = v261;
        sub_21CB81014();
        v227 = v260;
        sub_21CB81014();
        v228 = v259;
        sub_21CB81014();
        sub_21CB80FE4();
        v229 = *(v264 + 8);
        v230 = v228;
        v231 = v263;
        v229(v230, v263);
        v229(v227, v231);
        v229(v226, v231);
        v229(v225, v231);
        swift_setDeallocating();
        (*(v222 + 8))(v224 + v223, v221);
        swift_deallocClassInstance();
        v232 = v272;
        sub_21CB81004();
        v229(v271, v231);
        v229(v232, v231);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v233 = swift_allocObject();
        v234 = MEMORY[0x277D83B88];
        *(v233 + 16) = xmmword_21CBA0690;
        v235 = MEMORY[0x277D83C10];
        *(v233 + 56) = v234;
        *(v233 + 64) = v235;
        *(v233 + 32) = v270;
        v102 = sub_21CB85594();

        goto LABEL_69;
      }

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v95 = sub_21CB81C84();
      __swift_project_value_buffer(v95, qword_27CE186E0);
      v89 = sub_21CB81C64();
      v96 = sub_21CB85AF4();
      if (os_log_type_enabled(v89, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 134217984;
        *(v97 + 4) = v270;
        _os_log_impl(&dword_21C6E5000, v89, v96, "Passwords displayed a credential older than %ld days in Recently Deleted.", v97, 0xCu);
        MEMORY[0x21CF16D90](v97, -1, -1);
      }
    }

    else if (v72 == 2)
    {
      if (v71 > 0)
      {
        v270 = v70 + 1;
        v257 = v61;
        v73 = [v67 isSavedInSharedGroup];
        v258 = v62;
        if (!v73 || ([v67 isCurrentUserOriginalContributor] & 1) != 0)
        {
          goto LABEL_63;
        }

        v74 = v251;
        sub_21CB85B94();
        v76 = v255;
        v75 = v256;
        if ((*(v256 + 48))(v74, 1, v255) == 1)
        {
          sub_21C6EA794(v74, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_63:
          sub_21CB81014();
          sub_21CB81014();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
          v209 = sub_21CB81034();
          v210 = *(v209 - 8);
          v211 = (*(v210 + 80) + 32) & ~*(v210 + 80);
          v212 = swift_allocObject();
          v213 = v262;
          sub_21CB81014();
          v214 = v261;
          sub_21CB81014();
          v215 = v260;
          sub_21CB81014();
          v216 = v259;
          sub_21CB81014();
          sub_21CB80FE4();
          v217 = *(v264 + 8);
          v218 = v216;
          v219 = v263;
          v217(v218, v263);
          v217(v215, v219);
          v217(v214, v219);
          v220 = v213;
LABEL_68:
          v217(v220, v219);
          swift_setDeallocating();
          (*(v210 + 8))(v212 + v211, v209);
          swift_deallocClassInstance();
          v241 = v272;
          sub_21CB81004();
          v217(v271, v219);
          v217(v241, v219);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v242 = swift_allocObject();
          v243 = MEMORY[0x277D83B88];
          *(v242 + 16) = xmmword_21CBA0690;
          v244 = MEMORY[0x277D83C10];
          *(v242 + 56) = v243;
          *(v242 + 64) = v244;
          *(v242 + 32) = v270;
          v102 = sub_21CB85594();

          goto LABEL_69;
        }

        v126 = v74;
        v127 = v248;
        (*(v75 + 32))(v248, v126, v76);
        v128 = [objc_opt_self() sharedManager];
        v129 = [v67 originalContributorParticipantID];
        sub_21CB85B64();
        v130 = sub_21CB85584();

        v131 = [v128 nameForOriginalContributorParticipantID:v129 inGroupID:v130];

        if (!v131)
        {
          (*(v256 + 8))(v127, v76);
          goto LABEL_63;
        }

        v132 = sub_21CB855C4();
        v268 = v133;
        v269 = v132;

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v134 = sub_21CB81034();
        v135 = *(v134 - 8);
        v136 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v137 = swift_allocObject();
        v138 = v262;
        sub_21CB81014();
        v139 = v261;
        sub_21CB81014();
        v140 = v260;
        sub_21CB81014();
        v141 = v259;
        sub_21CB81014();
        sub_21CB80FE4();
        v142 = *(v264 + 8);
        v143 = v141;
        v144 = v263;
        v142(v143, v263);
        v142(v140, v144);
        v142(v139, v144);
        v142(v138, v144);
        swift_setDeallocating();
        (*(v135 + 8))(v137 + v136, v134);
        swift_deallocClassInstance();
        v145 = v272;
        sub_21CB81004();
        v142(v271, v144);
        v142(v145, v144);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_21CBA15B0;
        v147 = MEMORY[0x277D83C10];
        *(v146 + 56) = MEMORY[0x277D83B88];
        *(v146 + 64) = v147;
        *(v146 + 32) = v270;
        *(v146 + 96) = MEMORY[0x277D837D0];
        *(v146 + 104) = sub_21C7C0050();
        v148 = v268;
        *(v146 + 72) = v269;
        *(v146 + 80) = v148;
        v102 = sub_21CB85594();

        (*(v256 + 8))(v248, v255);
LABEL_69:
        v61 = v257;
        goto LABEL_70;
      }

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v92 = sub_21CB81C84();
      __swift_project_value_buffer(v92, qword_27CE186E0);
      v89 = sub_21CB81C64();
      v93 = sub_21CB85AF4();
      if (os_log_type_enabled(v89, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 134217984;
        *(v94 + 4) = v270;
        _os_log_impl(&dword_21C6E5000, v89, v93, "Passwords displayed a credential older than %ld days in Recently Deleted.", v94, 0xCu);
        MEMORY[0x21CF16D90](v94, -1, -1);
      }
    }

    else
    {
      if (v71 > 0)
      {
        v270 = v70 + 1;
        v257 = v61;
        v84 = [v67 isSavedInSharedGroup];
        v258 = v62;
        if (v84 && ([v67 isCurrentUserOriginalContributor] & 1) == 0)
        {
          v85 = v252;
          sub_21CB85B94();
          v87 = v255;
          v86 = v256;
          if ((*(v256 + 48))(v85, 1, v255) == 1)
          {
            sub_21C6EA794(v85, &unk_27CDF20B0, &unk_21CBA0090);
          }

          else
          {
            v171 = v85;
            v172 = v249;
            (*(v86 + 32))(v249, v171, v87);
            v173 = [objc_opt_self() sharedManager];
            v174 = [v67 originalContributorParticipantID];
            sub_21CB85B64();
            v175 = sub_21CB85584();

            v176 = [v173 nameForOriginalContributorParticipantID:v174 inGroupID:v175];

            if (v176)
            {
              v177 = sub_21CB855C4();
              v268 = v178;
              v269 = v177;

              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v179 = sub_21CB81034();
              v180 = *(v179 - 8);
              v181 = (*(v180 + 80) + 32) & ~*(v180 + 80);
              v182 = swift_allocObject();
              v183 = v262;
              sub_21CB81014();
              v184 = v261;
              sub_21CB81014();
              v185 = v260;
              sub_21CB81014();
              v186 = v259;
              sub_21CB81014();
              sub_21CB80FE4();
              v187 = *(v264 + 8);
              v188 = v186;
              v189 = v263;
              v187(v188, v263);
              v187(v185, v189);
              v187(v184, v189);
              v187(v183, v189);
              swift_setDeallocating();
              (*(v180 + 8))(v182 + v181, v179);
              swift_deallocClassInstance();
              v190 = v272;
              sub_21CB81004();
              v187(v271, v189);
              v187(v190, v189);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v191 = swift_allocObject();
              *(v191 + 16) = xmmword_21CBA15B0;
              v192 = MEMORY[0x277D83C10];
              *(v191 + 56) = MEMORY[0x277D83B88];
              *(v191 + 64) = v192;
              *(v191 + 32) = v270;
              *(v191 + 96) = MEMORY[0x277D837D0];
              *(v191 + 104) = sub_21C7C0050();
              v193 = v268;
              *(v191 + 72) = v269;
              *(v191 + 80) = v193;
              v102 = sub_21CB85594();

              (*(v256 + 8))(v249, v255);
              goto LABEL_69;
            }

            (*(v256 + 8))(v172, v87);
          }
        }

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v209 = sub_21CB81034();
        v210 = *(v209 - 8);
        v211 = (*(v210 + 80) + 32) & ~*(v210 + 80);
        v212 = swift_allocObject();
        v236 = v262;
        sub_21CB81014();
        v237 = v261;
        sub_21CB81014();
        v238 = v260;
        sub_21CB81014();
        v239 = v259;
        sub_21CB81014();
        sub_21CB80FE4();
        v217 = *(v264 + 8);
        v240 = v239;
        v219 = v263;
        v217(v240, v263);
        v217(v238, v219);
        v217(v237, v219);
        v220 = v236;
        goto LABEL_68;
      }

      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v98 = sub_21CB81C84();
      __swift_project_value_buffer(v98, qword_27CE186E0);
      v89 = sub_21CB81C64();
      v99 = sub_21CB85AF4();
      if (os_log_type_enabled(v89, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = v270;
        _os_log_impl(&dword_21C6E5000, v89, v99, "Passwords displayed a credential older than %ld days in Recently Deleted.", v100, 0xCu);
        MEMORY[0x21CF16D90](v100, -1, -1);
      }
    }

    goto LABEL_51;
  }

  if (v71 <= 0)
  {
    if (qword_27CDEA470 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

  v258 = v62;
  v270 = v70 + 1;
  v77 = [v67 isSavedInSharedGroup];
  v257 = v61;
  if (v77 && ([v67 isCurrentUserOriginalContributor] & 1) == 0)
  {
    v78 = v254;
    sub_21CB85B94();
    v80 = v255;
    v79 = v256;
    if ((*(v256 + 48))(v78, 1, v255) == 1)
    {
      sub_21C6EA794(v78, &unk_27CDF20B0, &unk_21CBA0090);
    }

    else
    {
      v103 = v253;
      (*(v79 + 32))(v253, v78, v80);
      v104 = v79;
      v105 = [objc_opt_self() sharedManager];
      v106 = [v67 originalContributorParticipantID];
      sub_21CB85B64();
      v107 = sub_21CB85584();

      v108 = [v105 nameForOriginalContributorParticipantID:v106 inGroupID:v107];

      if (v108)
      {
        v109 = sub_21CB855C4();
        v268 = v110;
        v269 = v109;

        sub_21CB81014();
        sub_21CB81014();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
        v111 = sub_21CB81034();
        v112 = *(v111 - 8);
        v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v114 = swift_allocObject();
        v115 = v262;
        sub_21CB81014();
        v116 = v261;
        sub_21CB81014();
        v117 = v260;
        sub_21CB81014();
        v118 = v259;
        sub_21CB81014();
        sub_21CB80FE4();
        v119 = *(v264 + 8);
        v120 = v118;
        v121 = v263;
        v119(v120, v263);
        v119(v117, v121);
        v119(v116, v121);
        v119(v115, v121);
        swift_setDeallocating();
        (*(v112 + 8))(v114 + v113, v111);
        swift_deallocClassInstance();
        v122 = v272;
        sub_21CB81004();
        v119(v271, v121);
        v119(v122, v121);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_21CBA15B0;
        v124 = MEMORY[0x277D83C10];
        *(v123 + 56) = MEMORY[0x277D83B88];
        *(v123 + 64) = v124;
        *(v123 + 32) = v270;
        *(v123 + 96) = MEMORY[0x277D837D0];
        *(v123 + 104) = sub_21C7C0050();
        v125 = v268;
        *(v123 + 72) = v269;
        *(v123 + 80) = v125;
        v102 = sub_21CB85594();

        (*(v256 + 8))(v253, v255);
        goto LABEL_69;
      }

      (*(v104 + 8))(v103, v80);
    }
  }

  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v194 = sub_21CB81034();
  v195 = *(v194 - 8);
  v196 = (*(v195 + 80) + 32) & ~*(v195 + 80);
  v197 = swift_allocObject();
  v198 = v262;
  sub_21CB81014();
  v199 = v261;
  sub_21CB81014();
  v200 = v260;
  sub_21CB81014();
  v201 = v259;
  sub_21CB81014();
  sub_21CB80FE4();
  v202 = *(v264 + 8);
  v203 = v201;
  v204 = v263;
  v202(v203, v263);
  v202(v200, v204);
  v202(v199, v204);
  v202(v198, v204);
  swift_setDeallocating();
  (*(v195 + 8))(v197 + v196, v194);
  swift_deallocClassInstance();
  v205 = v272;
  sub_21CB81004();
  v202(v271, v204);
  v202(v205, v204);
  v61 = v257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v206 = swift_allocObject();
  v207 = MEMORY[0x277D83B88];
  *(v206 + 16) = xmmword_21CBA0690;
  v208 = MEMORY[0x277D83C10];
  *(v206 + 56) = v207;
  *(v206 + 64) = v208;
  *(v206 + 32) = v270;
  v102 = sub_21CB85594();

LABEL_70:
  v61(v273, v274);
  return v102;
}

double sub_21CB7A264@<D0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for PMAccount(0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath(byte_21CBD0330, v4);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, *&v20[0]);

  type metadata accessor for PMAccountsState(0);
  sub_21C706330(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v8 = sub_21CB82674();
  v10 = v9;

  a2[2] = v8;
  a2[3] = v10;
  v11 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v12 = v11[6];
  *(a2 + v12) = swift_getKeyPath(byte_21CBD0358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  *&v20[0] = 0x4079000000000000;
  sub_21CA468F4();

  sub_21CB82244();
  v14 = a2 + v11[9];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C706330(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);

  *a2 = sub_21CB82674();
  a2[1] = v15;
  sub_21CB81DB4();

  v16 = *v6;
  v17 = v6[1];

  sub_21C7199C0(v6, type metadata accessor for PMAccount);
  sub_21C832578(v16, v17, v20);

  sub_21C7D33F0(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3));
  result = *v20;
  v19 = v20[1];
  *v14 = v20[0];
  *(v14 + 1) = v19;
  return result;
}

uint64_t type metadata accessor for PMSecurityRecommendationPlatter(uint64_t a1)
{
  result = qword_27CDFAC10;
  if (!qword_27CDFAC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB7A5F4(uint64_t a1)
{
  sub_21C940C08(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21C7086F8(319);
      if (v3 <= 0x3F)
      {
        sub_21C721A6C(319);
        if (v4 <= 0x3F)
        {
          sub_21CB7A6D8(319);
          if (v5 <= 0x3F)
          {
            sub_21CB7A734();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CB7A6D8(uint64_t a1)
{
  if (!qword_27CDFAC20)
  {
    sub_21CA468F4();
    v1 = sub_21CB82264();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDFAC20);
    }
  }
}

void sub_21CB7A734()
{
  if (!qword_27CDEB2F0)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB2F0);
    }
  }
}

uint64_t sub_21CB7A7A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC28, &qword_21CBD0488);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC30, &qword_21CBD0490);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v13 = (v1 + *(v12 + 36));
  v14 = v13[1];
  if (v14)
  {
    v46 = v6;
    v42 = v3;
    v15 = v13[3];
    v43 = v13[2];
    v44 = *v13;
    MEMORY[0x28223BE20](v12);

    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC38, &qword_21CBD0498);
    v45 = a1;
    sub_21C6EADEC(&qword_27CDFAC40, &qword_27CDFAC38, &qword_21CBD0498, MEMORY[0x277CE1198]);
    sub_21CB85054();
    v17 = sub_21CB83CF4();
    sub_21CB81F24();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC48, &qword_21CBD04A0) + 36)];
    *v26 = v17;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    v27 = sub_21CB83D04();
    sub_21CB81F24();
    v28 = &v5[*(v42 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    sub_21CB85214();
    sub_21CB82AC4();
    sub_21C7D33F0(v44, v14, v43, v15);
    sub_21C716934(v5, v8, &qword_27CDFAC28, &qword_21CBD0488);
    v33 = v46;
    v34 = &v8[*(v46 + 36)];
    v35 = v53;
    *(v34 + 4) = v52;
    *(v34 + 5) = v35;
    *(v34 + 6) = v54;
    v36 = v49;
    *v34 = v48;
    *(v34 + 1) = v36;
    v37 = v51;
    *(v34 + 2) = v50;
    *(v34 + 3) = v37;
    sub_21C716934(v8, v11, &qword_27CDFAC30, &qword_21CBD0490);
    v38 = v45;
    sub_21C716934(v11, v45, &qword_27CDFAC30, &qword_21CBD0490);
    return (*(v47 + 56))(v38, 0, 1, v33);
  }

  else
  {
    v40 = *(v47 + 56);

    return v40(a1, 1, 1, v6);
  }
}

uint64_t sub_21CB7ABD8@<X0>(void *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_21CB832E4();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC50, &qword_21CBD04A8);
  return sub_21CB7AC60(a5, a6 + *(v8 + 44));
}

uint64_t sub_21CB7AC60@<X0>(void *a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC58, &qword_21CBD04B0);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for PMAccountIcon(0);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  sub_21CB7B210(&v41 - v14);
  v47 = sub_21CB832E4();
  v79 = 0;
  sub_21CB7BCA0(v82, a4);
  *&v78[7] = v82[0];
  *&v78[23] = v82[1];
  *&v78[39] = v82[2];
  *&v78[55] = v82[3];
  v45 = v79;
  type metadata accessor for PMSecurityRecommendationPlatter(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  sub_21CB82254();
  sub_21CB85214();
  sub_21CB82AC4();
  KeyPath = swift_getKeyPath(byte_21CBD04B8);
  v44 = KeyPath;
  v43 = sub_21CB83CF4();
  sub_21CB81F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v80 = 0;
  LOBYTE(a4) = sub_21CB83D04();
  sub_21CB81F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v81 = 0;
  sub_21CB7BEAC(v10);
  v33 = v49;
  sub_21CB7E298(v15, v49, type metadata accessor for PMAccountIcon);
  v34 = v48;
  sub_21C6EDBAC(v10, v48, &qword_27CDFAC58, &qword_21CBD04B0);
  v42 = v10;
  v35 = v46;
  sub_21CB7E298(v33, v46, type metadata accessor for PMAccountIcon);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC60, &qword_21CBD04E8);
  v37 = *(v36 + 48);
  *(&v57[4] + 1) = *&v78[16];
  *(&v57[6] + 1) = *&v78[32];
  *(&v57[8] + 1) = *&v78[48];
  *(&v57[2] + 1) = *v78;
  *&v57[11] = v50;
  *&v57[13] = v51;
  *&v57[17] = v53;
  *&v57[19] = v54;
  *&v57[21] = v55;
  *&v57[23] = v56;
  v38 = v47;
  v57[0] = v47;
  v57[1] = 0x4010000000000000;
  v39 = v45;
  LOBYTE(v57[2]) = v45;
  *&v57[15] = v52;
  v57[10] = *&v78[63];
  v57[25] = KeyPath;
  LOBYTE(v57[26]) = 1;
  LOBYTE(KeyPath) = v43;
  LOBYTE(v57[27]) = v43;
  v57[28] = v18;
  v57[29] = v20;
  v57[30] = v22;
  v57[31] = v24;
  LOBYTE(v57[32]) = 0;
  LOBYTE(v57[33]) = a4;
  v57[34] = v26;
  v57[35] = v28;
  v57[36] = v30;
  v57[37] = v32;
  LOBYTE(v57[38]) = 0;
  memcpy((v35 + v37), v57, 0x131uLL);
  sub_21C6EDBAC(v34, v35 + *(v36 + 64), &qword_27CDFAC58, &qword_21CBD04B0);
  sub_21C6EDBAC(v57, v58, &qword_27CDFAC68, &qword_21CBD04F0);
  sub_21C6EA794(v42, &qword_27CDFAC58, &qword_21CBD04B0);
  sub_21C7199C0(v15, type metadata accessor for PMAccountIcon);
  sub_21C6EA794(v34, &qword_27CDFAC58, &qword_21CBD04B0);
  v61 = *&v78[16];
  v62 = *&v78[32];
  *v63 = *&v78[48];
  v60 = *v78;
  *&v63[71] = v53;
  *&v63[87] = v54;
  *&v63[103] = v55;
  *&v63[119] = v56;
  *&v63[23] = v50;
  *&v63[39] = v51;
  v58[0] = v38;
  v58[1] = 0x4010000000000000;
  v59 = v39;
  *&v63[55] = v52;
  *&v63[15] = *&v78[63];
  v64 = v44;
  v65 = 1;
  v66 = KeyPath;
  v67 = v18;
  v68 = v20;
  v69 = v22;
  v70 = v24;
  v71 = 0;
  v72 = a4;
  v73 = v26;
  v74 = v28;
  v75 = v30;
  v76 = v32;
  v77 = 0;
  sub_21C6EA794(v58, &qword_27CDFAC68, &qword_21CBD04F0);
  return sub_21C7199C0(v49, type metadata accessor for PMAccountIcon);
}

double sub_21CB7B210@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v76 - v6;
  v8 = sub_21CB80E34();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v76 - v23;
  sub_21CB81DB4();

  if (v86 != 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath(byte_21CBD06D8);
  swift_getKeyPath(byte_21CBD0700);
  sub_21CB81DB4();

  v25 = v86;

  v26 = HIBYTE(*(&v25 + 1)) & 0xFLL;
  if ((*(&v25 + 1) & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    swift_getKeyPath(byte_21CBD06D8);
    swift_getKeyPath(byte_21CBD0700);
    sub_21CB81DB4();

    v80 = *(&v86 + 1);
    v84 = v86;
    sub_21CB81DB4();

    v27 = PMAccount.userVisibleDomain.getter();
    v78 = v28;
    v79 = v27;
    sub_21C7199C0(v24, type metadata accessor for PMAccount);
    v29 = sub_21CB85B74();
    v30 = *(*(v29 - 8) + 56);
    v30(v17, 1, 1, v29);
    KeyPath = swift_getKeyPath(byte_21CBD0330);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v86);

    type metadata accessor for PMAccountsState(0);
    sub_21C706330(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v32 = sub_21CB82674();
    v34 = v33;

    *a1 = v32;
    *(a1 + 8) = v34;
    v85 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(a1 + 40) = v86;
    v35 = type metadata accessor for PMAccountIcon(0);
    v36 = v35[11];
    v30((a1 + v36), 1, 1, v29);
    v37 = v35[16];
    v38 = a1 + v35[17];
    *v38 = sub_21C7E79A0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    v39 = v81;
    sub_21CB80E24();
    v41 = v82;
    v40 = v83;
    (*(v82 + 16))(v10, v39, v83);
    sub_21CB84D44();
    (*(v41 + 8))(v39, v40);
    v43 = v79;
    v42 = v80;
    *(a1 + 56) = v84;
    *(a1 + 64) = v42;
    v44 = v78;
    *(a1 + 72) = v43;
    *(a1 + 80) = v44;
    v45 = a1 + v36;
    v46 = v17;
  }

  else
  {
LABEL_8:
    sub_21CB81DB4();

    PMAccount.signInWithAppleAccount.getter(v7);
    v47 = type metadata accessor for PMSignInWithAppleAccount(0);
    v48 = *(*(v47 - 8) + 48);
    if (v48(v7, 1, v47) == 1)
    {
      sub_21C6EA794(v7, &qword_27CDEB2A8, &qword_21CBA1670);
      v49 = PMAccount.titleForSorting.getter();
      v79 = v50;
      v80 = v49;
    }

    else
    {
      v51 = &v7[*(v47 + 24)];
      v52 = *v51;
      v79 = *(v51 + 1);
      v80 = v52;

      sub_21C7199C0(v7, type metadata accessor for PMSignInWithAppleAccount);
    }

    v53 = PMAccount.userVisibleDomain.getter();
    v77 = v54;
    v78 = v53;
    PMAccount.signInWithAppleAccount.getter(v4);
    if (v48(v4, 1, v47) == 1)
    {
      sub_21C6EA794(v4, &qword_27CDEB2A8, &qword_21CBA1670);
      v55 = sub_21CB85B74();
      (*(*(v55 - 8) + 56))(v84, 1, 1, v55);
    }

    else
    {
      v56 = *(v47 + 20);
      v57 = sub_21CB85B74();
      v58 = *(v57 - 8);
      v59 = &v4[v56];
      v60 = v84;
      (*(v58 + 16))(v84, v59, v57);
      sub_21C7199C0(v4, type metadata accessor for PMSignInWithAppleAccount);
      (*(v58 + 56))(v60, 0, 1, v57);
    }

    v61 = swift_getKeyPath(byte_21CBD0330);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v61, v86);

    type metadata accessor for PMAccountsState(0);
    sub_21C706330(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
    v62 = sub_21CB82674();
    v64 = v63;

    *a1 = v62;
    *(a1 + 8) = v64;
    v85 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(a1 + 40) = v86;
    v35 = type metadata accessor for PMAccountIcon(0);
    v65 = v35[11];
    v66 = sub_21CB85B74();
    (*(*(v66 - 8) + 56))(a1 + v65, 1, 1, v66);
    v37 = v35[16];
    v67 = a1 + v35[17];
    *v67 = sub_21C7E79A0;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    v68 = v81;
    sub_21CB80E24();
    v69 = v82;
    v70 = v83;
    (*(v82 + 16))(v10, v68, v83);
    sub_21CB84D44();
    (*(v69 + 8))(v68, v70);
    sub_21C7199C0(v20, type metadata accessor for PMAccount);
    v71 = v79;
    *(a1 + 56) = v80;
    *(a1 + 64) = v71;
    v72 = v77;
    *(a1 + 72) = v78;
    *(a1 + 80) = v72;
    v45 = a1 + v65;
    v46 = v84;
  }

  sub_21C805878(v46, v45);
  *(a1 + v35[12]) = 1;
  *(a1 + v35[13]) = 1;
  *(a1 + v35[14]) = 1;
  v73 = a1 + v37;
  v74 = a1 + v35[15];
  *v74 = xmmword_21CBA4340;
  *(v74 + 16) = 0;
  result = 0.0;
  *(v73 + 16) = 0u;
  *(v73 + 32) = 0u;
  *v73 = 0u;
  *(v73 + 48) = 1;
  return result;
}

uint64_t *sub_21CB7BCA0@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X3>)
{
  v3 = [a2 localizedHeadline];
  sub_21CB855C4();

  sub_21C71F3FC();
  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83E34();
  v9 = sub_21CB84024();
  v11 = v10;
  v13 = v12;

  sub_21C74A72C(v4, v6, v8 & 1);

  v14 = sub_21CB84014();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_21C74A72C(v9, v11, v13 & 1);

  v21 = [a2 localizedBody];
  sub_21CB855C4();

  v22 = sub_21CB84054();
  v24 = v23;
  v25 = v18 & 1;
  v31 = v18 & 1;
  v27 = v26 & 1;
  *a1 = v14;
  a1[1] = v16;
  *(a1 + 16) = v25;
  a1[3] = v20;
  a1[4] = v22;
  a1[5] = v23;
  *(a1 + 48) = v26 & 1;
  a1[7] = v28;
  sub_21C79B058(v14, v16, v25);

  sub_21C79B058(v22, v24, v27);

  sub_21C74A72C(v22, v24, v27);

  sub_21C74A72C(v14, v16, v31);
}

uint64_t sub_21CB7BEAC@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC70, &unk_21CBD04F8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - v2;
  v79 = sub_21CB82A54();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v69 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v70 = v4;
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v69 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC78, &qword_21CBD0508);
  MEMORY[0x28223BE20](v77);
  v78 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC80, &qword_21CBD0510);
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC88, &qword_21CBD0518);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v69 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC90, &qword_21CBD0520);
  v14 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v16 = &v69 - v15;
  v17 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PMAccount(0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC98, &qword_21CBD0528);
  MEMORY[0x28223BE20](v24 - 8);
  v85 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v91 = &v69 - v28;
  sub_21CB81DB4();

  sub_21CB7E298(&v23[*(v21 + 32)], v19, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7199C0(v23, type metadata accessor for PMAccount);
    sub_21C7199C0(v19, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v29 = *v19;
    v30 = [*v19 hasValidWebsite];

    sub_21C7199C0(v23, type metadata accessor for PMAccount);
    if (v30)
    {
      sub_21CB7C9C8(v16);
      v31 = sub_21CB83D04();
      sub_21CB81F24();
      v32 = v82;
      v33 = &v16[*(v82 + 36)];
      *v33 = v31;
      *(v33 + 1) = v34;
      *(v33 + 2) = v35;
      *(v33 + 3) = v36;
      *(v33 + 4) = v37;
      v33[40] = 0;
      sub_21CB7E228(v16, v91);
      v38 = v32;
      v39 = 0;
      v40 = v88;
      v41 = v84;
      goto LABEL_6;
    }
  }

  v39 = 1;
  v40 = v88;
  v41 = v84;
  v38 = v82;
LABEL_6:
  v42 = 1;
  (*(v14 + 56))(v91, v39, 1, v38);
  v43 = (v1 + *(v83 + 36));
  v44 = v43[1];
  if (v44)
  {
    v45 = *v43;
    v46 = v43[2];
    v47 = v43[3];
    v48 = v71;
    sub_21CB7E298(v1, v71, type metadata accessor for PMSecurityRecommendationPlatter);
    v49 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v50 = (v70 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = v72 + 8;
    v84 = v45;
    v88 = v46;
    v51 = swift_allocObject();
    sub_21CB7DF70(v48, v51 + v49);
    v52 = v51 + v50;
    *v52 = v45;
    *(v52 + 8) = v44;
    *(v52 + 16) = (v46 & 1) != 0;
    *(v52 + 24) = v47;
    sub_21C7D33AC(v45, v44, v46, v47);

    v53 = v47;
    sub_21CB84DA4();
    v54 = v41;
    v55 = v76;
    sub_21CB82A44();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C706330(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v57 = v78;
    v56 = v79;
    v58 = v74;
    sub_21CB84124();
    (*v83)(v55, v56);
    (*(v73 + 8))(v54, v58);
    v59 = v57 + *(v77 + 36);
    v60 = *MEMORY[0x277CE0118];
    v61 = sub_21CB831A4();
    (*(*(v61 - 8) + 104))(v59, v60, v61);
    *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFACA8, &qword_21CBD0538) + 36)) = 0;
    sub_21C6EDBAC(v57, v80, &qword_27CDFAC78, &qword_21CBD0508);
    swift_storeEnumTagMultiPayload();
    sub_21CB7DFEC();
    v62 = v75;
    sub_21CB83494();
    sub_21C7D33F0(v84, v44, v88, v47);
    sub_21C6EA794(v57, &qword_27CDFAC78, &qword_21CBD0508);
    sub_21C716934(v62, v40, &qword_27CDFAC80, &qword_21CBD0510);
    v42 = 0;
  }

  (*(v86 + 56))(v40, v42, 1, v87);
  v63 = v91;
  v64 = v85;
  sub_21C6EDBAC(v91, v85, &qword_27CDFAC98, &qword_21CBD0528);
  v65 = v89;
  sub_21C6EDBAC(v40, v89, &qword_27CDFAC88, &qword_21CBD0518);
  v66 = v90;
  sub_21C6EDBAC(v64, v90, &qword_27CDFAC98, &qword_21CBD0528);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFACA0, &qword_21CBD0530);
  sub_21C6EDBAC(v65, v66 + *(v67 + 48), &qword_27CDFAC88, &qword_21CBD0518);
  sub_21C6EA794(v40, &qword_27CDFAC88, &qword_21CBD0518);
  sub_21C6EA794(v63, &qword_27CDFAC98, &qword_21CBD0528);
  sub_21C6EA794(v65, &qword_27CDFAC88, &qword_21CBD0518);
  return sub_21C6EA794(v64, &qword_27CDFAC98, &qword_21CBD0528);
}

uint64_t sub_21CB7C9C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v3 = (v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB81DB4();

  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = &v6[v3[9]];
  v8 = &v6[v3[11]];
  v6[v3[8]] = 0;
  *v7 = 0;
  v7[1] = 0;
  v6[v3[10]] = 1;
  *v8 = 0;
  v8[1] = 0;
  sub_21CB81DB4();

  LOBYTE(v3) = v13[15];
  KeyPath = swift_getKeyPath(byte_21CBD05B0);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  sub_21CB7E298(v6, a1, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFACC0, &qword_21CBD05E0) + 36));
  *v11 = KeyPath;
  v11[1] = sub_21C735744;
  v11[2] = v10;
  return sub_21C7199C0(v6, type metadata accessor for PMChangePasswordOnWebsiteLink);
}

double sub_21CB7CBB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_21CB858E4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_21CB7E298(a1, v13, type metadata accessor for PMSecurityRecommendationPlatter);
  sub_21CB858B4();

  v18 = a5;
  v19 = sub_21CB858A4();
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_21CB7DF70(v13, v22 + v20);
  v24 = v22 + v21;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a4;
  *(v24 + 24) = v18;
  sub_21C98B308(0, 0, v16, &unk_21CBD05F0, v22);

  return result;
}

uint64_t sub_21CB7CDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 314) = a7;
  *(v8 + 96) = a6;
  *(v8 + 104) = a8;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  v9 = sub_21CB823B4();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = sub_21CB83834();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = sub_21CB858B4();
  *(v8 + 240) = sub_21CB858A4();
  v12 = sub_21CB85874();
  *(v8 + 248) = v12;
  *(v8 + 256) = v11;

  return MEMORY[0x2822009F8](sub_21CB7CFE8, v12, v11);
}

uint64_t sub_21CB7CFE8(uint64_t a1)
{
  v1[33] = *(v1[10] + 24);
  v1[34] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[35] = v3;
  v1[36] = v2;

  return MEMORY[0x2822009F8](sub_21CB7D080, v3, v2);
}

uint64_t sub_21CB7D080()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 314);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(v0 + 296) = inited;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_21CB7D17C;

  return sub_21C833508(inited);
}

uint64_t sub_21CB7D17C()
{
  v1 = *v0;
  v2 = *(*v0 + 296);

  swift_setDeallocating();
  sub_21C8F1684(v2 + 32);
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_21CB7D2C8, v4, v3);
}

uint64_t sub_21CB7D2C8()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_21CB7D32C, v1, v2);
}

uint64_t sub_21CB7D32C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  type metadata accessor for PMSecurityRecommendationPlatter(0);
  sub_21C728D50(v1);
  v49 = v5[13];
  v49(v2, *MEMORY[0x277CE0558], v6);
  v48 = v5[7];
  v48(v2, 0, 1, v6);
  v50 = v4;
  v7 = *(v4 + 48);
  sub_21C6EDBAC(v1, v3, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v2, v3 + v7, &qword_27CDEC390, &qword_21CBA40E0);
  v8 = v5[6];
  v51 = v8;
  if (v8(v3, 1, v6) == 1)
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 136);
    sub_21C6EA794(*(v0 + 216), &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
    if (v8(v3 + v7, 1, v10) == 1)
    {
      sub_21C6EA794(*(v0 + 176), &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_8;
    }

LABEL_6:
    sub_21C6EA794(*(v0 + 176), &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_9;
  }

  v11 = *(v0 + 136);
  sub_21C6EDBAC(*(v0 + 176), *(v0 + 208), &qword_27CDEC390, &qword_21CBA40E0);
  v12 = v8(v3 + v7, 1, v11);
  v13 = *(v0 + 216);
  v47 = *(v0 + 224);
  v14 = *(v0 + 208);
  if (v12 == 1)
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v47, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v16 + 8))(v14, v15);
    goto LABEL_6;
  }

  v46 = *(v0 + 176);
  v17 = *(v0 + 144);
  v18 = *(v0 + 152);
  v19 = *(v0 + 136);
  (*(v17 + 32))(v18, v3 + v7, v19);
  sub_21C706330(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v45 = sub_21CB85574();
  v20 = *(v17 + 8);
  v20(v18, v19);
  sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v47, &qword_27CDEC390, &qword_21CBA40E0);
  v20(v14, v19);
  sub_21C6EA794(v46, &qword_27CDEC390, &qword_21CBA40E0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getKeyPath(byte_21CBD0600);
  swift_getKeyPath(byte_21CBD0628);
  sub_21CB81DB4();

  if ((*(v0 + 313) & 1) == 0)
  {
LABEL_9:
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 168);
    v24 = *(v0 + 136);
    sub_21C728D50(v21);
    v49(v22, *MEMORY[0x277CE0560], v24);
    v48(v22, 0, 1, v24);
    v25 = *(v50 + 48);
    sub_21C6EDBAC(v21, v23, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v22, v23 + v25, &qword_27CDEC390, &qword_21CBA40E0);
    if (v51(v23, 1, v24) == 1)
    {
      v26 = *(v0 + 200);
      v27 = *(v0 + 136);
      sub_21C6EA794(*(v0 + 192), &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
      if (v51(v23 + v25, 1, v27) == 1)
      {
        sub_21C6EA794(*(v0 + 168), &qword_27CDEC390, &qword_21CBA40E0);
        goto LABEL_16;
      }
    }

    else
    {
      v28 = *(v0 + 136);
      sub_21C6EDBAC(*(v0 + 168), *(v0 + 184), &qword_27CDEC390, &qword_21CBA40E0);
      v29 = v51(v23 + v25, 1, v28);
      v31 = *(v0 + 192);
      v30 = *(v0 + 200);
      v32 = *(v0 + 184);
      if (v29 != 1)
      {
        v52 = *(v0 + 168);
        v35 = *(v0 + 144);
        v36 = *(v0 + 152);
        v37 = *(v0 + 136);
        (*(v35 + 32))(v36, v23 + v25, v37);
        sub_21C706330(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v38 = sub_21CB85574();
        v39 = *(v35 + 8);
        v39(v36, v37);
        sub_21C6EA794(v31, &qword_27CDEC390, &qword_21CBA40E0);
        sub_21C6EA794(v30, &qword_27CDEC390, &qword_21CBA40E0);
        v39(v32, v37);
        sub_21C6EA794(v52, &qword_27CDEC390, &qword_21CBA40E0);
        if ((v38 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        swift_getKeyPath(byte_21CBD0600);
        swift_getKeyPath(byte_21CBD0628);
        sub_21CB81DB4();

        if (*(v0 + 312))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v33 = *(v0 + 136);
      v34 = *(v0 + 144);
      sub_21C6EA794(*(v0 + 192), &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v30, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v34 + 8))(v32, v33);
    }

    sub_21C6EA794(*(v0 + 168), &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_18;
  }

LABEL_17:
  v40 = *(v0 + 120);
  v41 = *(v0 + 128);
  v42 = *(v0 + 112);
  sub_21C95B2C8(v41);
  sub_21CB823A4();
  (*(v40 + 8))(v41, v42);
LABEL_18:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_21CB7DAD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v25[2] = v9;
  v25[3] = v11;
  sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  LOBYTE(v8) = v16;
  sub_21CB84A64();
  v17 = sub_21CB83FB4();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_21C74A72C(v13, v15, v8 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_21CB7DCBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;

  v10 = a5;
  sub_21C83532C(inited);
  swift_setDeallocating();
  return sub_21C8F1684(inited + 32);
}

uint64_t sub_21CB7DD70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v25[2] = v9;
  v25[3] = v11;
  sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  LOBYTE(v8) = v16;
  sub_21CB84A64();
  v17 = sub_21CB83FB4();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_21C74A72C(v13, v15, v8 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_21CB7DF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB7DFEC()
{
  result = qword_27CDFACB0;
  if (!qword_27CDFACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAC78, &qword_21CBD0508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C706330(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDFACB8, &qword_27CDFACA8, &qword_21CBD0538, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACB0);
  }

  return result;
}

uint64_t sub_21CB7E17C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMSecurityRecommendationPlatter(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_21CB7E228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC90, &qword_21CBD0520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB7E298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB7E300(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMSecurityRecommendationPlatter(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21C702EFC;

  return sub_21CB7CDD0(a1, v7, v8, v1 + v6, v10, v11, v12, v13);
}

unint64_t sub_21CB7E44C()
{
  result = qword_27CDFACC8;
  if (!qword_27CDFACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFACD0, &qword_21CBD0720);
    sub_21CB7E4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACC8);
  }

  return result;
}

unint64_t sub_21CB7E4D0()
{
  result = qword_27CDFACD8;
  if (!qword_27CDFACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFAC30, &qword_21CBD0490);
    sub_21CB7E588(&qword_27CDFACE0, &qword_27CDFAC28, &qword_21CBD0488, sub_21CB7E60C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACD8);
  }

  return result;
}

uint64_t sub_21CB7E588(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CB7E63C()
{
  result = qword_27CDFACF0;
  if (!qword_27CDFACF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFACF8, &qword_21CBD0728);
    sub_21C6EADEC(&qword_27CDFAC40, &qword_27CDFAC38, &qword_21CBD0498, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFACF0);
  }

  return result;
}

id sub_21CB7E6F8(int a1, id a2)
{
  v2 = [a2 role];
  v3 = [objc_allocWithZone(MEMORY[0x277D75958]) initWithName:0 sessionRole:v2];

  type metadata accessor for PMSceneDelegate();
  [v3 setDelegateClass_];
  return v3;
}

void sub_21CB7E778()
{
  v0 = [objc_opt_self() sharedStore];
  [v0 savePendingChangesBeforeTermination];
}

id PMUIApplicationDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMUIApplicationDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_21CB7E884@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMUIApplicationDelegate();
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

id sub_21CB7E8D0()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setUserInteractionEnabled_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21CB7E984(int a1, id a2)
{
  v2 = [a2 type];
  sub_21CB855C4();

  v3 = sub_21CB86244();

  if (v3 <= 2)
  {
    return sub_21CB81D04();
  }

  return result;
}

void sub_21CB7EAD8(int a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow;
  v7 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow];
  if (v7)
  {
    [v7 alpha];
    if (((v8 != 1.0) ^ a1))
    {
      return;
    }
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow;
  v10 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow];
  if (!v10 || (v11 = *&v3[v6]) == 0)
  {
    v15 = 0x65736C6166;
    aBlock.a = 0.0;
    aBlock.b = -2.68156159e154;
    sub_21CB86094();
    MEMORY[0x21CF151F0](0xD00000000000002BLL, 0x800000021CB9E310);
    if (a1)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    v17 = 0xE400000000000000;
    if (a1)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x21CF151F0](v16, v18);

    MEMORY[0x21CF151F0](0xD000000000000056, 0x800000021CB9E340);
    v19 = *&v3[v9];
    if (v19)
    {
      v20 = 0x65736C6166;
    }

    else
    {
      v20 = 1702195828;
    }

    if (v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    MEMORY[0x21CF151F0](v20, v21);

    MEMORY[0x21CF151F0](0x646469487369202CLL, 0xEC000000203A6E65);
    v22 = *&v3[v9];
    if (v22 && ([v22 isHidden] & 1) != 0)
    {
      v23 = 1702195828;
    }

    else
    {
      v17 = 0xE500000000000000;
      v23 = 0x65736C6166;
    }

    MEMORY[0x21CF151F0](v23, v17);

    MEMORY[0x21CF151F0](0x3A6168706C61202CLL, 0xE900000000000020);
    v24 = *&v3[v9];
    if (v24)
    {
      [v24 alpha];
    }

    v25 = sub_21CB85974();
    MEMORY[0x21CF151F0](v25);

    MEMORY[0x21CF151F0](0xD000000000000019, 0x800000021CB9E3A0);
    if (*&v3[v6])
    {
      v26 = 0x65736C6166;
    }

    else
    {
      v26 = 1702195828;
    }

    if (*&v3[v6])
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x21CF151F0](v26, v27);

    MEMORY[0x21CF151F0](0x646469487369202CLL, 0xEC000000203A6E65);
    v28 = *&v3[v6];
    if (v28 && ([v28 isHidden] & 1) != 0)
    {
      v29 = 0xE400000000000000;
      v30 = 1702195828;
    }

    else
    {
      v29 = 0xE500000000000000;
      v30 = 0x65736C6166;
    }

    MEMORY[0x21CF151F0](v30, v29);

    MEMORY[0x21CF151F0](0x3A6168706C61202CLL, 0xE900000000000020);
    v31 = *&v3[v6];
    if (v31)
    {
      [v31 alpha];
    }

    v32 = sub_21CB85974();
    MEMORY[0x21CF151F0](v32);

    MEMORY[0x21CF151F0](0xD000000000000020, 0x800000021CB9E3C0);
    v33 = *&v3[v9];
    v34 = *&v3[v6];
    if (v33)
    {
      if (v34)
      {
        sub_21C6E8F4C(0, &qword_27CDFAE20, 0x277D75DA0);
        v35 = v34;
        v36 = v33;
        v37 = sub_21CB85DD4();

        if (v37)
        {
          goto LABEL_43;
        }
      }
    }

    else if (!v34)
    {
LABEL_43:
      v38 = 0xE400000000000000;
      v15 = 1702195828;
LABEL_46:
      MEMORY[0x21CF151F0](v15, v38);

      v39 = *&aBlock.a;
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v40 = sub_21CB81C84();
      __swift_project_value_buffer(v40, qword_27CE186E0);

      osloga = sub_21CB81C64();
      v41 = sub_21CB85AF4();

      if (os_log_type_enabled(osloga, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&aBlock.a = v43;
        *v42 = 136315138;
        v44 = sub_21C98E004(v39, *(&v39 + 1), &aBlock);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_21C6E5000, osloga, v41, "%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x21CF16D90](v43, -1, -1);
        MEMORY[0x21CF16D90](v42, -1, -1);

        return;
      }

      goto LABEL_52;
    }

    v38 = 0xE500000000000000;
    goto LABEL_46;
  }

  if (a2)
  {
    oslog = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_animator;
    v12 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_animator];
    v13 = v10;
    v14 = v11;
    if (v12)
    {
      [v12 stopAnimation_];
    }

    v46 = v10;
    v47 = sub_21CB7E8D0();
    [v46 addSubview_];

    v89 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_21CBD0730;
    v49 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView;
    v50 = [*&v3[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView] topAnchor];
    v51 = [v46 topAnchor];

    v52 = [v50 constraintEqualToAnchor_];
    *(v48 + 32) = v52;
    v53 = [*&v3[v49] leadingAnchor];
    v54 = [v46 leadingAnchor];

    v55 = [v53 constraintEqualToAnchor_];
    *(v48 + 40) = v55;
    v56 = [*&v3[v49] trailingAnchor];
    v57 = [v46 trailingAnchor];

    v58 = [v56 constraintEqualToAnchor_];
    *(v48 + 48) = v58;
    v59 = [*&v3[v49] bottomAnchor];
    v60 = [v46 bottomAnchor];

    v61 = [v59 constraintEqualToAnchor_];
    *(v48 + 56) = v61;
    sub_21C6E8F4C(0, &unk_27CDF8A50, 0x277CCAAD0);
    v62 = sub_21CB85814();

    [v89 activateConstraints_];

    CGAffineTransformMakeScale(&v93, 1.1, 1.1);
    if (a1)
    {

      aBlock = v93;
      [v11 setTransform_];
      v63 = swift_allocObject();
      *(v63 + 16) = v11;
      *(v63 + 24) = v3;
      v64 = objc_allocWithZone(MEMORY[0x277D75D40]);
      *&aBlock.tx = sub_21CB7FDE0;
      *&aBlock.ty = v63;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21C6ECBD4;
      *&aBlock.d = &block_descriptor_36;
      v65 = _Block_copy(&aBlock);
      v66 = v11;
      v67 = v3;

      v68 = [v64 initWithDuration:2 curve:v65 animations:0.5];
      _Block_release(v65);
      v69 = *(&oslog->isa + v3);
      *(&oslog->isa + v3) = v68;
      v70 = v68;

      if (v70)
      {
        v71 = swift_allocObject();
        v71[2] = v67;
        v71[3] = v46;
        v71[4] = v66;
        *&aBlock.tx = sub_21CB7FE30;
        *&aBlock.ty = v71;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        v72 = &block_descriptor_42_0;
LABEL_60:
        *&aBlock.c = sub_21CB7F7FC;
        *&aBlock.d = v72;
        v84 = _Block_copy(&aBlock);
        v85 = v46;
        v86 = v66;
        v87 = v67;

        [(objc_class *)v70 addCompletion:v84];
        _Block_release(v84);
      }
    }

    else
    {
      [v46 setAlpha_];

      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v11 setTransform_];
      v73 = *&v3[v49];
      v74 = objc_opt_self();
      v75 = v73;
      v76 = [v74 effectWithStyle_];
      [v75 setEffect_];

      v77 = swift_allocObject();
      *(v77 + 16) = v11;
      *(v77 + 24) = v3;
      v78 = *&v93.c;
      *(v77 + 32) = *&v93.a;
      *(v77 + 48) = v78;
      *(v77 + 64) = *&v93.tx;
      v79 = objc_allocWithZone(MEMORY[0x277D75D40]);
      *&aBlock.tx = sub_21CB7FDC8;
      *&aBlock.ty = v77;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21C6ECBD4;
      *&aBlock.d = &block_descriptor_46;
      v80 = _Block_copy(&aBlock);
      v66 = v11;
      v67 = v3;

      v81 = [v79 initWithDuration:2 curve:v80 animations:0.3];
      _Block_release(v80);
      v82 = *(&oslog->isa + v3);
      *(&oslog->isa + v3) = v81;
      v70 = v81;

      if (v70)
      {
        v83 = swift_allocObject();
        v83[2] = v66;
        v83[3] = v67;
        v83[4] = v46;
        *&aBlock.tx = sub_21CB7FDD4;
        *&aBlock.ty = v83;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        v72 = &block_descriptor_30_0;
        goto LABEL_60;
      }
    }

    v88 = *(&oslog->isa + v3);
    [v88 startAnimation];

    return;
  }

  v45 = v10;
  osloga = v11;
  sub_21C738B28(a1 & 1);

LABEL_52:
}

void sub_21CB7F6C4(void *a1)
{
  [a1 setAlpha_];
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  [a1 setTransform_];
  v2 = sub_21CB7E8D0();
  v3 = [objc_opt_self() effectWithStyle_];
  [v2 setEffect_];
}

id sub_21CB7F770(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_21CB7E8D0();
  [v6 removeFromSuperview];

  [a3 setAlpha_];
  [a3 setAccessibilityElementsHidden_];

  return [a4 makeKeyWindow];
}

double sub_21CB7F7FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_21CB7F850(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  [a1 setAlpha_];
  v7 = sub_21CB7E8D0();
  [v7 setEffect_];

  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = v5;
  v12 = v6;
  return [a1 setTransform_];
}

id sub_21CB7F8E0(int a1, id a2, uint64_t a3, void *a4)
{
  v7[0] = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  [a2 setTransform_];
  v5 = sub_21CB7E8D0();
  [v5 removeFromSuperview];

  [a4 setAccessibilityElementsHidden_];
  return [a4 makeKeyWindow];
}

void sub_21CB7F96C()
{
  v0 = sub_21CB807D4();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_21CB86034();
  if (!*(v1 + 16) || (v2 = sub_21CB10D50(v4), (v3 & 1) == 0))
  {

    sub_21C8E1980(v4);
LABEL_8:
    v5 = 0u;
    v6 = 0u;
    goto LABEL_9;
  }

  sub_21C7A3394(*(v1 + 56) + 32 * v2, &v5);
  sub_21C8E1980(v4);

  if (!*(&v6 + 1))
  {
LABEL_9:
    sub_21CA0B028(&v5);
    return;
  }

  if (swift_dynamicCast())
  {
    sub_21CB7EAD8(v4[0], v4[1]);
  }
}

id PMSceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21CB7FBA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21CB7FE58()
{
  v1 = v0;
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB80D24();
  v7 = [v1 startDateOfIntervalContainingDate_];

  sub_21CB80D94();
  sub_21CB80D64();
  v9 = floor(-v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v1 codeGenerationPeriod];
  (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v11, v10))
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_21CB7FFD4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB80D24();
  v4 = [v2 codeForDate_];

  v5 = sub_21CB855C4();

  v6 = sub_21CB85694();

  if (v6 >= 5)
  {
    [v2 numberOfDigitsInCode];
    sub_21CB856C4();
    sub_21CB85704();
  }

  return v5;
}

void __getSKStoreReviewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSKStoreReviewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PMAppStoreReviewHelper.m" lineNumber:16 description:{@"Unable to find class %s", "SKStoreReviewController"}];

  __break(1u);
}

void __getSKStoreReviewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *StoreKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PMAppStoreReviewHelper.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void __getSFSafariViewControllerConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PMSafariViewController.m" lineNumber:32 description:{@"Unable to find class %s", "SFSafariViewControllerConfiguration"}];

  __break(1u);
}

void SafariServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PMSafariViewController.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getSFSafariViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PMSafariViewController.m" lineNumber:31 description:{@"Unable to find class %s", "SFSafariViewController"}];

  __break(1u);
}