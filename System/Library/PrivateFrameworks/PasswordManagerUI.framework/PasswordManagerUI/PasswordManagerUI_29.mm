uint64_t sub_21CA54AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB830D4();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21CA57430(*(a1 + 32));
  v41 = v6;
  sub_21C71F3FC();
  v7 = sub_21CB84054();
  v9 = v8;
  v11 = v10;
  sub_21CB83EB4();
  v12 = sub_21CB84024();
  v14 = v13;
  v16 = v15;

  sub_21C74A72C(v7, v9, v11 & 1);

  v40 = sub_21CB84B34();
  v17 = sub_21CB83FC4();
  v35 = v18;
  v36 = v17;
  v20 = v19;
  v34 = v21;
  sub_21C74A72C(v12, v14, v16 & 1);

  v22 = sub_21CB83CD4();
  LOBYTE(v12) = v20 & 1;
  v43 = v20 & 1;
  v42 = 1;
  v40 = sub_21CB84AB4();
  v23 = sub_21CB84F14();
  v24 = v37;
  sub_21CB830A4();
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66F8, &qword_21CBC1828) + 36);
  v27 = v38;
  v26 = v39;
  (*(v38 + 16))(a2 + v25, v24, v39);
  v28 = *(v27 + 56);
  v28((a2 + v25), 0, 1, v26);
  v29 = v35;
  *a2 = v36;
  *(a2 + 8) = v29;
  *(a2 + 16) = v12;
  *(a2 + 24) = v34;
  *(a2 + 32) = v22;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 80) = v23;
  KeyPath = swift_getKeyPath(asc_21CBC1A60);
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF66D8, &qword_21CBC1818) + 36));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v27 + 32))(v31 + v32, v24, v26);
  result = v28(v31 + v32, 0, 1, v26);
  *v31 = KeyPath;
  return result;
}

uint64_t sub_21CA54DA0@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBC1878);
  sub_21CB81DB4();

  v3 = *(*&v11[0] + 16);

  if (v3)
  {
    v4 = 0;
    result = 0;
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    sub_21CA55FB8(v11);
    v9 = v11[0];
    v10 = v11[1];
    v4 = v12;
    v6 = sub_21CB84B34();
    result = swift_getKeyPath(a0_50);
    v7 = v9;
    v8 = v10;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_21CA54E8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6728, &qword_21CBC18A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3 - 8];
  v13 = *(v0 + 24);
  swift_getKeyPath(byte_21CBC1878);
  sub_21CB81DB4();

  v11 = v12;
  swift_getKeyPath(byte_21CBC18A8);
  v12 = *(v0 + 40);
  v5 = swift_allocObject();
  v6 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = *(v0 + 48);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21CA56FDC;
  *(v7 + 24) = v5;

  sub_21C6EDBAC(&v13, v10, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v12, v10, &qword_27CDF66B0, &qword_21CBC1750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6730, &qword_21CBC18C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6738, &qword_21CBC18D0);
  sub_21C6EADEC(&qword_27CDF6740, &qword_27CDF6730, &qword_21CBC18C8, MEMORY[0x277D83980]);
  sub_21C706578(&qword_27CDF6748, type metadata accessor for PMMoveAccountsListModel.Section, &unk_21CBC1B08);
  sub_21CA57040();
  sub_21CB84FD4();
  sub_21CA572CC();
  sub_21CB845F4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21CA55178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMMoveAccountsListModel.Section(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA57350(a1, v12, type metadata accessor for PMMoveAccountsListModel.Section);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v14 = qword_27CE18748;
    v13 = qword_27CE18750;
  }

  else
  {
    sub_21CA573C8(v12, v9, type metadata accessor for PMSharingGroup);
    v16 = &v9[*(v6 + 20)];
    v14 = *v16;
    v13 = v16[1];

    v15 = sub_21C7196C0(v9, type metadata accessor for PMSharingGroup);
  }

  v18[0] = v14;
  v18[1] = v13;
  MEMORY[0x28223BE20](v15);
  v18[-2] = a2;
  v18[-1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6760, &qword_21CBC18D8);
  sub_21CA570D8();
  sub_21C71F3FC();
  return sub_21CB85014();
}

uint64_t sub_21CA553E8(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v3 = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = v3;
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  sub_21C6EDBAC(&v10, v7, &qword_27CDF66A8, &qword_21CBC1748);
  sub_21C6EDBAC(&v9, v7, &qword_27CDF66B0, &qword_21CBC1750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6770, L"V\a_");
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21CA5715C();
  sub_21C706578(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21CA55594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6790, &unk_21CBC18F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6780, &qword_21CBC18E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  *v8 = sub_21CB83074();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67A0, &qword_21CBC1900);
  sub_21CA5575C(a1, a2, &v8[*(v12 + 44)]);
  if (sub_21CA5AF8C(a1) & 1) != 0 || (sub_21CA5B2E0(a1))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.8;
  }

  sub_21C716934(v8, v11, &qword_27CDF6790, &unk_21CBC18F0);
  *&v11[*(v9 + 36)] = v13;
  if (sub_21CA5AF8C(a1))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21CA5B2E0(a1);
  }

  sub_21C716934(v11, a3, &qword_27CDF6780, &qword_21CBC18E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6770, L"V\a_");
  *(a3 + *(result + 36)) = v14 & 1;
  return result;
}

uint64_t sub_21CA5575C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v65 = sub_21CB81024();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67A8, &qword_21CBC1908);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67B0, &unk_21CBC1910);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  MEMORY[0x28223BE20](v69);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v70 = a1;
  sub_21CA57350(a1, v15, type metadata accessor for PMAccount);
  v23 = *(a2 + 32);
  swift_getKeyPath(byte_21CBC1920);
  v68 = v23;
  sub_21CB81DB4();

  v24 = *(&v79 + 1);
  v67 = v79;
  v25 = sub_21CB837E4();
  v26 = MEMORY[0x277CE04E8];
  v27 = &v15[v13[7]];
  *(v27 + 3) = MEMORY[0x277CE04F8];
  *(v27 + 4) = v26;
  *v27 = v25;
  v28 = &v15[v13[9]];
  KeyPath = swift_getKeyPath(aH_96);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v79);

  type metadata accessor for PMGroupsStore(0);
  sub_21C706578(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v30 = sub_21CB82674();
  v32 = v31;

  *v28 = v30;
  v28[1] = v32;
  v33 = &v15[v13[10]];
  *v33 = swift_getKeyPath(byte_21CBC1940);
  v33[8] = 0;
  v34 = &v15[v13[11]];
  v34[8] = 0;
  v35 = v13[12];
  *&v15[v35] = swift_getKeyPath(byte_21CBC1998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v36 = v13[13];
  *&v15[v36] = swift_getKeyPath(byte_21CBC19D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v37 = v13[14];
  *&v15[v37] = swift_getKeyPath(aP_88);
  v38 = &v15[v13[5]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v15[v13[6]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v15[v13[8]];
  *v40 = v67;
  *(v40 + 1) = v24;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85224();
  v41 = 1;
  sub_21CB82AC4();
  sub_21CA573C8(v15, v19, type metadata accessor for PMAccountRow);
  v42 = &v19[*(v69 + 36)];
  v43 = v84;
  *(v42 + 4) = v83;
  *(v42 + 5) = v43;
  *(v42 + 6) = v85;
  v44 = v80;
  *v42 = v79;
  *(v42 + 1) = v44;
  v45 = v82;
  *(v42 + 2) = v81;
  *(v42 + 3) = v45;
  sub_21C7EC4B8(v19, v22);
  v46 = *(v68 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords);

  v47 = sub_21C8FFBD8(v70, v46);

  v48 = v73;
  if (v47)
  {
    v78 = sub_21CB84BB4();
    v49 = v63;
    sub_21CB81014();
    v50 = sub_21CB81004();
    v52 = v51;
    (*(v64 + 8))(v49, v65);
    v76 = v50;
    v77 = v52;
    sub_21C71F3FC();
    v53 = v66;
    sub_21CB846E4();

    v54 = sub_21CB84AF4();
    v55 = swift_getKeyPath(a0_50);
    v56 = (v53 + *(v48 + 36));
    *v56 = v55;
    v56[1] = v54;
    sub_21C716934(v53, v12, &qword_27CDF67A8, &qword_21CBC1908);
    v41 = 0;
  }

  (*(v72 + 56))(v12, v41, 1, v48);
  v57 = v71;
  sub_21C6EDBAC(v22, v71, &qword_27CDEBC70, &qword_21CBAD0C0);
  v58 = v74;
  sub_21C6EDBAC(v12, v74, &qword_27CDF67B0, &unk_21CBC1910);
  v59 = v75;
  sub_21C6EDBAC(v57, v75, &qword_27CDEBC70, &qword_21CBAD0C0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF67B8, &qword_21CBC1A28);
  sub_21C6EDBAC(v58, v59 + *(v60 + 48), &qword_27CDF67B0, &unk_21CBC1910);
  sub_21C6EA794(v12, &qword_27CDF67B0, &unk_21CBC1910);
  sub_21C6EA794(v22, &qword_27CDEBC70, &qword_21CBAD0C0);
  sub_21C6EA794(v58, &qword_27CDF67B0, &unk_21CBC1910);
  return sub_21C6EA794(v57, &qword_27CDEBC70, &qword_21CBAD0C0);
}

double sub_21CA55FB8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBC1920);
  sub_21CB81DB4();

  v8 = v32;

  v9 = HIBYTE(*(&v8 + 1)) & 0xFLL;
  if ((*(&v8 + 1) & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v10 = (v4 + 8);
  if (v9)
  {
    sub_21CB81014();
    v11 = sub_21CB81004();
    v13 = v12;
    (*v10)(v7, v3);
    *&v32 = v11;
    *(&v32 + 1) = v13;
    sub_21C71F3FC();
    v27 = sub_21CB84054();
    v28 = v15;
    v29 = v14 & 1;
    v30 = v16;
    v31 = 1;
  }

  else
  {
    sub_21CB81014();
    v17 = sub_21CB81004();
    v19 = v18;
    (*v10)(v7, v3);
    *&v32 = v17;
    *(&v32 + 1) = v19;
    sub_21C71F3FC();
    v27 = sub_21CB84054();
    v28 = v20;
    v29 = v21 & 1;
    v30 = v22;
    v31 = 0;
  }

  sub_21CB83494();
  result = *&v32;
  v24 = v33;
  v25 = v34;
  *a2 = v32;
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  return result;
}

double sub_21CA5625C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(aH_97);
  swift_getKeyPath(asc_21CBC16B8);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21CA562DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath(aH_97);
  swift_getKeyPath(asc_21CBC16B8);
  sub_21CA56CB4(v2, v3);

  return sub_21CB81DC4();
}

unint64_t sub_21CA5638C()
{
  result = qword_27CDF65D8;
  if (!qword_27CDF65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF65D8);
  }

  return result;
}

unint64_t sub_21CA56404()
{
  result = qword_27CDF6648;
  if (!qword_27CDF6648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6640, &qword_21CBC15E8);
    sub_21C6EADEC(&qword_27CDF6650, &qword_27CDF6658, &qword_21CBC15F0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6648);
  }

  return result;
}

unint64_t sub_21CA564B4()
{
  result = qword_27CDF6660;
  if (!qword_27CDF6660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65E0, &qword_21CBC1588);
    sub_21CA5656C();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6660);
  }

  return result;
}

unint64_t sub_21CA5656C()
{
  result = qword_27CDF6668;
  if (!qword_27CDF6668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6670, &qword_21CBC1628);
    sub_21C6EADEC(&qword_27CDF6678, &qword_27CDF6680, &qword_21CBC1630, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6668);
  }

  return result;
}

uint64_t sub_21CA5661C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(sub_21CA57B50() + 16);

  if (v5)
  {
    v6 = *(sub_21CA57B50() + 16);

    return sub_21C7C56AC(v6);
  }

  else
  {
    sub_21C6EDBAC(a1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v4, &qword_27CDF7670, &unk_21CBAA8F0);
    v8 = type metadata accessor for PMSharingGroup(0);
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
    {
      sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
      if (qword_27CDEA4A0 != -1)
      {
        swift_once();
      }

      v9 = qword_27CE18758;

      return v9;
    }

    else
    {
      v10 = *&v4[*(v8 + 20)];

      sub_21C7196C0(v4, type metadata accessor for PMSharingGroup);
      return v10;
    }
  }
}

uint64_t sub_21CA567E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21CA56834()
{
  result = qword_27CDF66A0;
  if (!qword_27CDF66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6628, &qword_21CBC15D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6618, &qword_21CBC15C0);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6610, &qword_21CBC15B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED918, &qword_21CBC1710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6608, &qword_21CBC15B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6698, &qword_21CBC1708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6600, &qword_21CBC15A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6688, &qword_21CBC1688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65F8, &qword_21CBC15A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65F0, &qword_21CBC1598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65E8, &qword_21CBC1590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF65E0, &qword_21CBC1588);
    sub_21CA564B4();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDF6690, &qword_27CDF6688, &qword_21CBC1688, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, v1);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_21C706578(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF66A0);
  }

  return result;
}

uint64_t sub_21CA56CB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21CA56D28()
{
  result = qword_27CDF66E8;
  if (!qword_27CDF66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF66D8, &qword_21CBC1818);
    sub_21CA56DE0();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF66E8);
  }

  return result;
}

unint64_t sub_21CA56DE0()
{
  result = qword_27CDF66F0;
  if (!qword_27CDF66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF66F8, &qword_21CBC1828);
    sub_21CA56E98();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF66F0);
  }

  return result;
}

unint64_t sub_21CA56E98()
{
  result = qword_27CDF6700;
  if (!qword_27CDF6700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6708, &qword_21CBC1830);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6700);
  }

  return result;
}

unint64_t sub_21CA56F58()
{
  result = qword_27CDF6718;
  if (!qword_27CDF6718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6710, &qword_21CBC1838);
    sub_21C80FB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6718);
  }

  return result;
}

uint64_t sub_21CA56FE4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0A0, &qword_21CBA0E40);
  return v3(a1, *(a1 + *(v4 + 48)));
}

unint64_t sub_21CA57040()
{
  result = qword_27CDF6750;
  if (!qword_27CDF6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6738, &qword_21CBC18D0);
    sub_21CA570D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6750);
  }

  return result;
}

unint64_t sub_21CA570D8()
{
  result = qword_27CDF6758;
  if (!qword_27CDF6758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6760, &qword_21CBC18D8);
    sub_21CA5715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6758);
  }

  return result;
}

unint64_t sub_21CA5715C()
{
  result = qword_27CDF6768;
  if (!qword_27CDF6768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6770, L"V\a_");
    sub_21CA57214();
    sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6768);
  }

  return result;
}

unint64_t sub_21CA57214()
{
  result = qword_27CDF6778;
  if (!qword_27CDF6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6780, &qword_21CBC18E8);
    sub_21C6EADEC(&qword_27CDF6788, &qword_27CDF6790, &unk_21CBC18F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6778);
  }

  return result;
}

unint64_t sub_21CA572CC()
{
  result = qword_27CDF6798;
  if (!qword_27CDF6798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6728, &qword_21CBC18A0);
    sub_21CA57040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6798);
  }

  return result;
}

uint64_t sub_21CA57350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA573C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA57430(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PMSharingGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v8, &qword_27CDF7670, &unk_21CBAA8F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21C6EA794(v8, &qword_27CDF7670, &unk_21CBAA8F0);
    sub_21CB81014();
    v13 = sub_21CB81004();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_21CA573C8(v8, v12, type metadata accessor for PMSharingGroup);
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21CBA0690;
    v15 = &v12[*(v9 + 20)];
    v17 = *v15;
    v16 = *(v15 + 1);
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21C7C0050();
    *(v14 + 32) = v17;
    *(v14 + 40) = v16;

    v13 = sub_21CB85594();

    sub_21C7196C0(v12, type metadata accessor for PMSharingGroup);
  }

  return v13;
}

uint64_t sub_21CA57784(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_21C7B13C0(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = sub_21CB85F24();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v13 = (*(v3 + 56) + 16 * v6);
    v31 = *v13;
    v32 = *v11;
    v14 = v3;
    v15 = v13[1];
    v16 = *(v33 + 16);
    v17 = *(v33 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_21C7B13C0((v17 > 1), v16 + 1, 1);
    }

    *(v33 + 16) = v16 + 1;
    v18 = (v33 + 32 * v16);
    v18[4] = v31;
    v18[5] = v15;
    v18[6] = v32;
    v18[7] = v12;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_21C7AE858(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_21C7AE858(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CA579EC()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v1 = sub_21CB858A4();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v0;

  v4 = swift_allocObject();
  swift_weakInit();

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  sub_21CB84F64();
  return v8;
}

uint64_t sub_21CA57B50()
{
  v1 = type metadata accessor for PMAccount(0);
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v33 = (&v28 - v5);
  swift_getKeyPath(byte_21CBC1C50, v4);
  swift_getKeyPath(byte_21CBC1C78);
  sub_21CB81DB4();

  v7 = sub_21CAFBB3C(v6, v34);
  KeyPath = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_21CB86544();
    sub_21C7072A8(KeyPath, v34);

    swift_getKeyPath(aX_63);
    KeyPath = swift_getKeyPath(aX_62);
    sub_21CB81DB4();

    v10 = v34;
    v31 = *(v34 + 16);
    if (!v31)
    {
      break;
    }

    v11 = 0;
    v12 = v7 + 56;
    v30 = MEMORY[0x277D84F90];
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      KeyPath = *(v32 + 72);
      v14 = v10;
      sub_21CA60D5C(v10 + v13 + KeyPath * v11, v33, type metadata accessor for PMAccount);
      if (*(v7 + 16) && (v15 = *v33, v16 = v33[1], sub_21CB86484(), sub_21CB854C4(), v17 = sub_21CB864D4(), v18 = -1 << *(v7 + 32), v19 = v17 & ~v18, ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v7 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_21CA615C0(v33, v29, type metadata accessor for PMAccount);
        v23 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v23 + 16) + 1, 1);
          v23 = v35;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21C7B0C4C((v25 > 1), v26 + 1, 1);
          v23 = v35;
        }

        *(v23 + 16) = v26 + 1;
        v30 = v23;
        sub_21CA615C0(v29, v23 + v13 + v26 * KeyPath, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_4:
        sub_21CA60500(v33, type metadata accessor for PMAccount);
      }

      ++v11;
      v10 = v14;
      if (v11 == v31)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v30 = MEMORY[0x277D84F90];
LABEL_23:

  return v30;
}

uint64_t sub_21CA57F7C()
{
  swift_getKeyPath(asc_21CBC1E48);
  swift_getKeyPath(byte_21CBC1E70);
  sub_21CB81DB4();

  return v1;
}

double sub_21CA58008()
{
  v2 = v0;
  v3 = type metadata accessor for PMAccount(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v31 - v6);
  v8 = sub_21CA57B50();
  v33 = *(v8 + 16);
  if (v33)
  {
    v9 = 0;
    v32 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords;
    v10 = MEMORY[0x277D84F90];
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v12 = *(v39 + 72);
      sub_21CA60D5C(v8 + v11 + v12 * v9, v7, type metadata accessor for PMAccount);
      v1 = v2;
      v13 = *(v2 + v32);

      v14 = sub_21C8FFBD8(v7, v13);

      if (v14)
      {
        sub_21CA615C0(v7, v34, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v10 + 16) + 1, 1);
          v10 = v35;
        }

        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21C7B0C4C((v16 > 1), v17 + 1, 1);
          v10 = v35;
        }

        *(v10 + 16) = v17 + 1;
        sub_21CA615C0(v34, v10 + v11 + v17 * v12, type metadata accessor for PMAccount);
      }

      else
      {
        sub_21CA60500(v7, type metadata accessor for PMAccount);
      }

      ++v9;
      v2 = v1;
      if (v33 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_13:

  v18 = *(v10 + 16);

  if (v18)
  {
    swift_getKeyPath(aX_64);
    swift_getKeyPath(a8_35);
LABEL_17:
    LOBYTE(v35) = 1;

    sub_21CB81DC4();
    sub_21CA61554();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v19 = sub_21CA57B50();
  v20 = sub_21CA5CABC(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (v22)
  {
    swift_getKeyPath(asc_21CBC1E48);
    swift_getKeyPath(byte_21CBC1E70);
    v35 = v20;
    v36 = v22;
    v37 = v24;
    v38 = v26;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC1E90);
    goto LABEL_17;
  }

  v1 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v28 = qword_27CDEA4C0;

  if (v28 != -1)
  {
LABEL_21:
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v1, v35);

  v29 = sub_21CA57B50();
  v30 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;

  sub_21C835C98(v29, v2 + v30, sub_21CA56CAC, v2);

  return result;
}

uint64_t sub_21CA58460()
{
  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);
  sub_21CB81DB4();

  return v1;
}

void sub_21CA584D4(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);
  sub_21CB81DB4();

  *a2 = v3;
  a2[1] = v4;
}

void sub_21CA58554(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_21CA58594(v1, v2);
}

void sub_21CA58594(unint64_t a1, unint64_t a2)
{
  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);
  sub_21CB81DB4();

  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);

  sub_21CB81DC4();
  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);
  sub_21CB81DB4();

  if (v5 == __PAIR128__(a2, a1))
  {
  }

  else
  {
    v4 = sub_21CB86344();

    if ((v4 & 1) == 0)
    {
      sub_21CA59710();
    }
  }
}

uint64_t sub_21CA58710(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMSharingGroup(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PMMoveAccountsListModel.Section(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CA60D5C(v2, v9, type metadata accessor for PMMoveAccountsListModel.Section);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x21CF15F90](0);
  }

  sub_21CA615C0(v9, v6, type metadata accessor for PMSharingGroup);
  MEMORY[0x21CF15F90](1);
  sub_21CB85C44();
  sub_21CA5FD88(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  sub_21CB854C4();
  v11 = *&v6[*(v3 + 24)];
  MEMORY[0x21CF15F90](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v15 = v13[2];
      v16 = *v13;
      v26 = v13[1];
      v27 = v15;
      v25 = v16;
      v17 = v13[3];
      v18 = v13[4];
      v19 = v13[6];
      v30 = v13[5];
      v31 = v19;
      v28 = v17;
      v29 = v18;
      if (*(&v16 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v25, v24);
        sub_21CB854C4();
        if (*(&v26 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v25, v24);
        if (*(&v26 + 1))
        {
LABEL_9:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_12;
        }
      }

      sub_21CB864A4();
LABEL_12:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v20 = v31;
      v21 = BYTE2(v30);
      v22 = BYTE1(v30);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v22);
      MEMORY[0x21CF15F90](v21);
      if (v20)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v23 = *(&v31 + 1);
        if (!*(&v31 + 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_21CB864A4();
        v23 = *(&v31 + 1);
        if (!*(&v31 + 1))
        {
LABEL_16:
          sub_21CB864A4();
          goto LABEL_6;
        }
      }

      sub_21CB864A4();
      v14 = v23;
      sub_21CB85DE4();

LABEL_6:
      sub_21C7A344C(&v25);
      v13 += 7;
      --v12;
    }

    while (v12);
  }

  sub_21CB854C4();
  return sub_21CA60500(v6, type metadata accessor for PMSharingGroup);
}

uint64_t sub_21CA58AE4()
{
  sub_21CB86484();
  sub_21CA58710(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CA58B28(uint64_t a1)
{
  sub_21CB86484();
  sub_21CA58710(v2);
  return sub_21CB864D4();
}

uint64_t sub_21CA58B68(uint64_t a1)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68A0, qword_21CBC1BB0);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v36 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6898, &unk_21CBC1BA0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6890, &unk_21CBC1B90);
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  *(v1 + v17) = swift_getKeyPath(byte_21CBC1BD8, v14);
  v18 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__groupsStore;
  *(v1 + v18) = swift_getKeyPath(byte_21CBC1C00);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__autoFillQuirksManager;
  *(v1 + v19) = swift_getKeyPath(byte_21CBC1C20);
  v20 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords) = v20;
  v21 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__listedSections;
  v22 = MEMORY[0x277D84F90];
  *&v46 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6730, &qword_21CBC18C8);
  sub_21CB81D74();
  (*(v13 + 32))(v1 + v21, v16, v12);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain) = v22;
  v23 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID;
  *(v1 + v23) = sub_21CB12B08(v22);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups) = v22;
  v24 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__searchText;
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  (*(v9 + 32))(v1 + v24, v11, v37);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask) = 0;
  v25 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__selectedAccountsNewIDToOldID;
  *&v46 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6858, &qword_21CBC1AC8);
  v26 = v38;
  sub_21CB81D74();
  (*(v39 + 32))(v1 + v25, v26, v40);
  v27 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveAccountsFailureAlert;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v28 = *(v4 + 32);
  v29 = v41;
  v28(v1 + v27, v6, v41);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingReusedPasswordAlert;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v28(v1 + v30, v6, v29);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveSharedAccountsAlert;
  LOBYTE(v46) = 0;
  sub_21CB81D74();
  v28(v1 + v31, v6, v29);
  v32 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__moveSharedAccountsAlertConfiguration;
  v46 = 0u;
  v47 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6868, &qword_21CBC1AD0);
  v33 = v42;
  sub_21CB81D74();
  (*(v43 + 32))(v1 + v32, v33, v44);
  v34 = v45;
  sub_21C6EDBAC(v45, v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21CA59104();
  sub_21C6EA794(v34, &qword_27CDF7670, &unk_21CBAA8F0);
  return v1;
}

double sub_21CA59104()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC60, &unk_21CBA00B0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  v12 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v12, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v14 = *(v1 + v11);

  sub_21CB86544();
  sub_21C7072A8(v14, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720);
  v15 = v21;
  sub_21CB81E04();

  (*(v20 + 8))(v6, v15);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v16 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__groupsStore);

  sub_21CB86544();
  sub_21C7073E8(v16, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v17 = v22;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC70, &qword_27CDEAC60, &unk_21CBA00B0);
  v18 = v24;
  sub_21CB81E04();

  (*(v23 + 8))(v17, v18);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return result;
}

void sub_21CA59710()
{
  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);
  sub_21CB81DB4();

  v1 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v1 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    sub_21CA5E7F0();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain);
    v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);
    v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);

    sub_21CA60578(v2, v3, v4);

    swift_getKeyPath(asc_21CBC1D30);
    swift_getKeyPath(byte_21CBC1D58);

    sub_21CB81DC4();
  }
}

void sub_21CA5986C(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath(byte_21CBC1C50);
    swift_getKeyPath(byte_21CBC1C78);
    sub_21CB81DB4();

    v4 = sub_21CAFBB3C(v3, v5);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  *a2 = v4;
}

double sub_21CA5992C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v159 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v159);
  v6 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v158);
  v8 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v173);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v150 - v12;
  MEMORY[0x28223BE20](v14);
  v169 = &v150 - v15;
  MEMORY[0x28223BE20](v16);
  v168 = &v150 - v17;
  MEMORY[0x28223BE20](v18);
  v171 = &v150 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v150 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v26 - 8);
  v156 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v155 = &v150 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v150 - v31;
  MEMORY[0x28223BE20](v33);
  v175 = &v150 - v34;
  v163 = type metadata accessor for PMAccount(0);
  v176 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = (&v150 - v37);
  MEMORY[0x28223BE20](v38);
  v177 = (&v150 - v39);
  MEMORY[0x28223BE20](v40);
  v165 = &v150 - v41;
  MEMORY[0x28223BE20](v42);
  v172 = (&v150 - v43);
  MEMORY[0x28223BE20](v44);
  v178 = &v150 - v45;
  v46 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v49 = Strong;
  v167 = v32;
  v154 = v10;
  swift_getKeyPath(byte_21CBC1C50);
  swift_getKeyPath(byte_21CBC1C78);
  v179 = v49;
  sub_21CB81DB4();

  v51 = sub_21CAFBB3C(v50, v180[0]);
  v52 = *(v46 + 16);
  v53 = *(v51 + 16);
  v152 = v46;
  if (v52 > v53 >> 3)
  {
    v54 = sub_21C9D8AA8(v46, v51);
  }

  else
  {
    v180[0] = v51;
    sub_21C8648B8(v46);
    v54 = v180[0];
  }

  v170 = v25;
  v153 = v13;
  v151 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  KeyPath = *(v179 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v56 = qword_27CDEA4C0;

  if (v56 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v157 = v22;
    v160 = v8;
    v161 = v6;
    v150 = qword_27CE18778;
    sub_21CB86544();
    sub_21C7072A8(KeyPath, v180[0]);

    swift_getKeyPath(aX_63);
    KeyPath = swift_getKeyPath(aX_62);
    sub_21CB81DB4();

    v57 = v180[0];
    v166 = *(v180[0] + 16);
    if (v166)
    {
      v6 = 0;
      v22 = v54 + 56;
      v164 = MEMORY[0x277D84F90];
      while (v6 < *(v57 + 16))
      {
        v59 = (*(v176 + 80) + 32) & ~*(v176 + 80);
        v8 = *(v176 + 72);
        sub_21CA60D5C(v57 + v59 + v8 * v6, v178, type metadata accessor for PMAccount);
        if (*(v54 + 16) && (v60 = *v178, KeyPath = *(v178 + 8), sub_21CB86484(), sub_21CB854C4(), v61 = sub_21CB864D4(), v62 = -1 << *(v54 + 32), v63 = v61 & ~v62, ((*(v22 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) != 0))
        {
          v64 = ~v62;
          while (1)
          {
            v65 = (*(v54 + 48) + 16 * v63);
            v66 = *v65 == v60 && v65[1] == KeyPath;
            if (v66 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v63 = (v63 + 1) & v64;
            if (((*(v22 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          sub_21CA615C0(v178, v165, type metadata accessor for PMAccount);
          v67 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v67 + 16) + 1, 1);
            v67 = v181;
          }

          v70 = *(v67 + 16);
          v69 = *(v67 + 24);
          KeyPath = v70 + 1;
          if (v70 >= v69 >> 1)
          {
            sub_21C7B0C4C((v69 > 1), v70 + 1, 1);
            v67 = v181;
          }

          *(v67 + 16) = KeyPath;
          v164 = v67;
          sub_21CA615C0(v165, v67 + v59 + v70 * v8, type metadata accessor for PMAccount);
        }

        else
        {
LABEL_8:
          sub_21CA60500(v178, type metadata accessor for PMAccount);
        }

        ++v6;
        v58 = v171;
        if (v6 == v166)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v164 = MEMORY[0x277D84F90];
    v58 = v171;
LABEL_27:

    v71 = *(v164 + 16);
    v72 = v161;
    v73 = v160;
    if (v71)
    {
      v178 = *(v163 + 24);
      v166 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
      v74 = v164 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
      v165 = *(v176 + 72);
      KeyPath = v170;
      v75 = v175;
      v76 = v172;
      while (1)
      {
        sub_21CA60D5C(v74, v76, type metadata accessor for PMAccount);
        sub_21C6EDBAC(v179 + v166, KeyPath, &qword_27CDF7670, &unk_21CBAA8F0);
        v77 = type metadata accessor for PMSharingGroup(0);
        if ((*(*(v77 - 8) + 48))(KeyPath, 1, v77) == 1)
        {
          sub_21C6EA794(KeyPath, &qword_27CDF7670, &unk_21CBAA8F0);
          v78 = sub_21CB85C44();
          (*(*(v78 - 8) + 56))(v75, 1, 1, v78);
        }

        else
        {
          v79 = sub_21CB85C44();
          v80 = *(v79 - 8);
          (*(v80 + 16))(v75, KeyPath, v79);
          sub_21CA60500(KeyPath, type metadata accessor for PMSharingGroup);
          (*(v80 + 56))(v75, 0, 1, v79);
        }

        sub_21C7C8A3C(v58);
        v81 = v167;
        sub_21C6EDBAC(v75, v167, &unk_27CDF20B0, &unk_21CBA0090);
        v82 = v168;
        sub_21CA615C0(v58, v168, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA615C0(v82, v72, type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C815B54(v81, v72 + *(v159 + 36));
          sub_21CA60D5C(v72, v58, type metadata accessor for PMAccount.SIWAUniqueID);
          swift_storeEnumTagMultiPayload();
          v83 = type metadata accessor for PMAccount.SIWAUniqueID;
          v84 = v72;
        }

        else
        {
          sub_21CA615C0(v82, v73, type metadata accessor for PMAccount.CombinedUniqueID);
          sub_21C815B54(v81, v73 + *(v158 + 36));
          sub_21CA60D5C(v73, v58, type metadata accessor for PMAccount.CombinedUniqueID);
          swift_storeEnumTagMultiPayload();
          v83 = type metadata accessor for PMAccount.CombinedUniqueID;
          v84 = v73;
        }

        sub_21CA60500(v84, v83);
        v85 = v169;
        sub_21CA60D5C(v58, v169, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA615C0(v85, v72, type metadata accessor for PMAccount.SIWAUniqueID);
          v86 = sub_21C7CE99C();
          v88 = v87;
          v89 = type metadata accessor for PMAccount.SIWAUniqueID;
          v90 = v72;
        }

        else
        {
          sub_21CA615C0(v85, v73, type metadata accessor for PMAccount.CombinedUniqueID);
          v86 = sub_21C7CE408();
          v88 = v91;
          v89 = type metadata accessor for PMAccount.CombinedUniqueID;
          v90 = v73;
        }

        sub_21CA60500(v90, v89);
        sub_21CA60500(v58, type metadata accessor for PMAccount.UniqueID);
        sub_21C6EA794(v175, &unk_27CDF20B0, &unk_21CBA0090);
        swift_getKeyPath(byte_21CBC1C50);
        swift_getKeyPath(byte_21CBC1C78);
        sub_21CB81DB4();

        v92 = v180[0];
        if (*(v180[0] + 16))
        {
          v93 = sub_21CB10A3C(v86, v88);
          if (v94)
          {
            break;
          }
        }

LABEL_30:
        v76 = v172;
        sub_21CA60500(v172, type metadata accessor for PMAccount);
        v74 += v165;
        --v71;
        KeyPath = v170;
        v75 = v175;
        if (!v71)
        {
          goto LABEL_49;
        }
      }

      v95 = (*(v92 + 56) + 16 * v93);
      v97 = *v95;
      v96 = v95[1];

      if (v97 == *v172 && v96 == v172[1])
      {
      }

      else
      {
        v98 = sub_21CB86344();

        if ((v98 & 1) == 0)
        {

          goto LABEL_48;
        }
      }

      swift_getKeyPath(byte_21CBC1C50);
      swift_getKeyPath(byte_21CBC1C78);
      v99 = sub_21CB81DA4();
      sub_21C87EDF0(0, 0, v86, v88);
      v99(v180, 0);

LABEL_48:
      v58 = v171;
      goto LABEL_30;
    }

LABEL_49:

    swift_getKeyPath(byte_21CBC1C50);
    swift_getKeyPath(byte_21CBC1C78);
    v100 = v152;

    v101 = v179;
    sub_21CB81DB4();

    v103 = sub_21CAFBB3C(v102, v180[0]);
    if (*(v103 + 16) <= *(v100 + 16) >> 3)
    {
      v180[0] = v100;
      sub_21C8648B8(v103);

      v6 = v180[0];
    }

    else
    {
      v6 = sub_21C9D8AA8(v103, v100);
    }

    v104 = *(v101 + v151);

    sub_21CB86544();
    sub_21C7072A8(v104, v180[0]);

    swift_getKeyPath(aX_63);
    swift_getKeyPath(aX_62);
    sub_21CB81DB4();

    v8 = v180[0];
    v178 = *(v180[0] + 16);
    if (!v178)
    {
      break;
    }

    v22 = 0;
    v54 = v6 + 56;
    v175 = MEMORY[0x277D84F90];
    while (v22 < *(v8 + 16))
    {
      v105 = (*(v176 + 80) + 32) & ~*(v176 + 80);
      v106 = *(v176 + 72);
      sub_21CA60D5C(v8 + v105 + v106 * v22, v177, type metadata accessor for PMAccount);
      if (*(v6 + 16) && (v107 = *v177, KeyPath = v177[1], sub_21CB86484(), sub_21CB854C4(), v108 = sub_21CB864D4(), v109 = -1 << *(v6 + 32), v110 = v108 & ~v109, ((*(v54 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) != 0))
      {
        v111 = ~v109;
        while (1)
        {
          v112 = (*(v6 + 48) + 16 * v110);
          v113 = *v112 == v107 && v112[1] == KeyPath;
          if (v113 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v110 = (v110 + 1) & v111;
          if (((*(v54 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        sub_21CA615C0(v177, v162, type metadata accessor for PMAccount);
        v114 = v175;
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v116 = v114;
        v181 = v114;
        if ((v115 & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v114 + 16) + 1, 1);
          v116 = v181;
        }

        v117 = v116;
        v119 = *(v116 + 16);
        v118 = *(v116 + 24);
        KeyPath = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          sub_21C7B0C4C((v118 > 1), v119 + 1, 1);
          v117 = v181;
        }

        *(v117 + 16) = KeyPath;
        v175 = v117;
        sub_21CA615C0(v162, v117 + v105 + v119 * v106, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_54:
        sub_21CA60500(v177, type metadata accessor for PMAccount);
      }

      if (++v22 == v178)
      {
        goto LABEL_73;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v175 = MEMORY[0x277D84F90];
LABEL_73:

  v120 = *(v175 + 16);
  if (v120)
  {
    v121 = *(v176 + 80);
    v172 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
    v122 = v175 + ((v121 + 32) & ~v121);
    v123 = *(v176 + 72);
    v124 = v157;
    v125 = v174;
    v126 = v179;
    v176 = v123;
    do
    {
      sub_21CA60D5C(v122, v125, type metadata accessor for PMAccount);
      if (sub_21CA5B2E0(v125))
      {
        sub_21C6EDBAC(v172 + v126, v124, &qword_27CDF7670, &unk_21CBAA8F0);
        v138 = type metadata accessor for PMSharingGroup(0);
        v139 = (*(*(v138 - 8) + 48))(v124, 1, v138);
        v140 = v155;
        if (v139 == 1)
        {
          sub_21C6EA794(v124, &qword_27CDF7670, &unk_21CBAA8F0);
          v141 = sub_21CB85C44();
          (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
        }

        else
        {
          v142 = sub_21CB85C44();
          v143 = *(v142 - 8);
          (*(v143 + 16))(v140, v124, v142);
          sub_21CA60500(v124, type metadata accessor for PMSharingGroup);
          (*(v143 + 56))(v140, 0, 1, v142);
        }

        v144 = v161;
        v145 = v160;
        v146 = v154;
        v147 = v153;
        sub_21C7C8A3C(v153);
        v148 = v156;
        sub_21C6EDBAC(v140, v156, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C7CE19C(v148);
        sub_21CA60D5C(v147, v146, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA615C0(v146, v144, type metadata accessor for PMAccount.SIWAUniqueID);
          v177 = sub_21C7CE99C();
          v178 = v127;
          v128 = type metadata accessor for PMAccount.SIWAUniqueID;
          v129 = v144;
        }

        else
        {
          sub_21CA615C0(v146, v145, type metadata accessor for PMAccount.CombinedUniqueID);
          v177 = sub_21C7CE408();
          v178 = v149;
          v128 = type metadata accessor for PMAccount.CombinedUniqueID;
          v129 = v145;
        }

        sub_21CA60500(v129, v128);
        sub_21CA60500(v147, type metadata accessor for PMAccount.UniqueID);
        sub_21C6EA794(v140, &unk_27CDF20B0, &unk_21CBA0090);
        v130 = *v174;
        v131 = v174[1];
        swift_getKeyPath(byte_21CBC1C50);
        swift_getKeyPath(byte_21CBC1C78);

        v132 = v179;
        v133 = sub_21CB81DA4();
        v135 = v134;
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v181 = *v135;
        *v135 = 0x8000000000000000;
        v137 = v130;
        v125 = v174;
        sub_21C8D4B50(v137, v131, v177, v178, v136);

        *v135 = v181;
        v133(v180, 0);
        v126 = v132;

        v124 = v157;
        v123 = v176;
      }

      sub_21CA60500(v125, type metadata accessor for PMAccount);
      v122 += v123;
      --v120;
    }

    while (v120);
  }

  return result;
}

uint64_t sub_21CA5AF8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  sub_21C6EDBAC(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v5, &qword_27CDF7670, &unk_21CBAA8F0);
  v9 = type metadata accessor for PMSharingGroup(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21C6EA794(v5, &qword_27CDF7670, &unk_21CBAA8F0);
    v10 = sub_21CB85C44();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  else
  {
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, v5, v11);
    sub_21CA60500(v5, type metadata accessor for PMSharingGroup);
    (*(v12 + 56))(v8, 0, 1, v11);
  }

  v13 = _s17PasswordManagerUI9PMAccountV13generateNewID3for2inSSAC_So15WBSSavedAccountC10SafariCoreE05GroupG0VSgtFZ_0(a1, v8);
  v15 = v14;
  sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
  swift_getKeyPath(byte_21CBC1C50);
  swift_getKeyPath(byte_21CBC1C78);
  sub_21CB81DB4();

  v16 = v27;
  if (!*(v27 + 16))
  {

    goto LABEL_12;
  }

  v17 = sub_21CB10A3C(v13, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_12:

    v24 = 0;
    return v24 & 1;
  }

  v20 = (*(v16 + 56) + 16 * v17);
  v22 = *v20;
  v21 = v20[1];

  if (v22 == *a1 && v21 == a1[1])
  {

    v24 = 1;
  }

  else
  {
    v24 = sub_21CB86344();
  }

  return v24 & 1;
}

uint64_t sub_21CA5B2E0(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  v3 = sub_21CB85C44();
  v118 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v98 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v106);
  v107 = (&v97 - v5);
  v104 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v104);
  v105 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v113);
  v103 = (&v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v102 = (&v97 - v9);
  v10 = type metadata accessor for PMSharingGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v111 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v13 - 8);
  v108 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v21 - 8);
  v112 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v97 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v28);
  v99 = &v97 - v29;
  MEMORY[0x28223BE20](v30);
  v109 = &v97 - v31;
  MEMORY[0x28223BE20](v32);
  v100 = &v97 - v33;
  MEMORY[0x28223BE20](v34);
  v110 = &v97 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v97 - v37;
  v120 = v2;
  v114 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
  sub_21C6EDBAC(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v20, &qword_27CDF7670, &unk_21CBAA8F0);
  v39 = *(v11 + 48);
  v115 = v10;
  v116 = v39;
  v117 = v11 + 48;
  if (v39(v20, 1, v10) == 1)
  {
    sub_21C6EA794(v20, &qword_27CDF7670, &unk_21CBAA8F0);
    v40 = 1;
    v41 = v3;
    v42 = v118;
  }

  else
  {
    v43 = v118;
    (*(v118 + 16))(v38, v20, v3);
    sub_21CA60500(v20, type metadata accessor for PMSharingGroup);
    v40 = 0;
    v41 = v3;
    v42 = v43;
  }

  v44 = v42;
  v45 = v42 + 56;
  v46 = v41;
  v47 = *(v42 + 56);
  v47(v38, v40, 1);
  v48 = _s17PasswordManagerUI9PMAccountV13generateNewID3for2inSSAC_So15WBSSavedAccountC10SafariCoreE05GroupG0VSgtFZ_0(v119, v38);
  v50 = v49;
  sub_21C6EA794(v38, &unk_27CDF20B0, &unk_21CBA0090);
  swift_getKeyPath(byte_21CBC1C50);
  swift_getKeyPath(byte_21CBC1C78);
  sub_21CB81DB4();

  if (*(v121 + 16))
  {
    sub_21CB10A3C(v48, v50);
    v52 = v51;

    if (v52)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_21C6EDBAC(v120 + v114, v17, &qword_27CDF7670, &unk_21CBAA8F0);
  v53 = v116(v17, 1, v115);
  v97 = v45;
  if (v53 == 1)
  {
    sub_21C6EA794(v17, &qword_27CDF7670, &unk_21CBAA8F0);
    v54 = type metadata accessor for PMAccount(0);
    v55 = v103;
    sub_21CA60D5C(v119 + *(v54 + 24), v103, type metadata accessor for PMAccount.Storage);
    v56 = v46;
    v57 = v44;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = v55;
      v59 = v105;
      sub_21CA615C0(v58, v105, type metadata accessor for PMAccount.MockData);
      v60 = v101;
      sub_21C6EDBAC(v59 + *(v104 + 72), v101, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CA60500(v59, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v70 = *v55;
      v60 = v101;
      sub_21CB85B94();
    }

    v71 = v120;
    v72 = v112;
    sub_21C716934(v60, v27, &unk_27CDF20B0, &unk_21CBA0090);
    v73 = (*(v57 + 48))(v27, 1, v46);
    sub_21C6EA794(v27, &unk_27CDF20B0, &unk_21CBA0090);
    if (v73 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v61 = v17;
  v62 = v111;
  sub_21CA615C0(v61, v111, type metadata accessor for PMSharingGroup);
  v63 = type metadata accessor for PMAccount(0);
  v64 = v102;
  sub_21CA60D5C(v119 + *(v63 + 24), v102, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v113 = v46;
  v66 = v44;
  if (EnumCaseMultiPayload == 1)
  {
    v67 = v64;
    v68 = v105;
    sub_21CA615C0(v67, v105, type metadata accessor for PMAccount.MockData);
    v69 = v100;
    sub_21C6EDBAC(v68 + *(v104 + 72), v100, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA60500(v68, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v75 = *v64;
    v69 = v100;
    sub_21CB85B94();
  }

  v72 = v107;
  v77 = v109;
  v76 = v110;
  sub_21C716934(v69, v110, &unk_27CDF20B0, &unk_21CBA0090);
  v56 = v113;
  (*(v66 + 16))(v77, v62, v113);
  v107 = v47;
  (v47)(v77, 0, 1, v56);
  v78 = v62;
  v79 = *(v106 + 48);
  sub_21C6EDBAC(v76, v72, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v77, v72 + v79, &unk_27CDF20B0, &unk_21CBA0090);
  v80 = v66;
  v81 = v76;
  v82 = *(v80 + 48);
  if (v82(v72, 1, v56) == 1)
  {
    sub_21C6EA794(v77, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v81, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA60500(v78, type metadata accessor for PMSharingGroup);
    v83 = v82(v72 + v79, 1, v56);
    v57 = v118;
    if (v83 == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v84 = v99;
  sub_21C6EDBAC(v72, v99, &unk_27CDF20B0, &unk_21CBA0090);
  if (v82(v72 + v79, 1, v56) == 1)
  {
    sub_21C6EA794(v109, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v110, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA60500(v111, type metadata accessor for PMSharingGroup);
    v57 = v118;
    (*(v118 + 8))(v84, v56);
LABEL_22:
    sub_21C6EA794(v72, &qword_27CDEAC40, &qword_21CBA1A40);
    v71 = v120;
    v72 = v112;
    v47 = v107;
LABEL_23:
    v85 = *(v71 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
    v86 = qword_27CDEA4C0;

    if (v86 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v87 = sub_21C7072A8(v85, v121);

    v88 = v108;
    sub_21C6EDBAC(v71 + v114, v108, &qword_27CDF7670, &unk_21CBAA8F0);
    if (v116(v88, 1, v115) == 1)
    {
      sub_21C6EA794(v88, &qword_27CDF7670, &unk_21CBAA8F0);
      v89 = 1;
    }

    else
    {
      (*(v57 + 16))(v72, v88, v56);
      sub_21CA60500(v88, type metadata accessor for PMSharingGroup);
      v89 = 0;
    }

    (v47)(v72, v89, 1, v56);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v90 = *(v87 + 24);
      ObjectType = swift_getObjectType();
      v74 = (*(v90 + 160))(v119, v72, ObjectType, v90);

      swift_unknownObjectRelease();
LABEL_32:
      sub_21C6EA794(v72, &unk_27CDF20B0, &unk_21CBA0090);
      return v74 & 1;
    }

LABEL_31:
    v74 = 0;
    goto LABEL_32;
  }

  v57 = v118;
  v93 = v72 + v79;
  v94 = v98;
  (*(v118 + 32))(v98, v93, v56);
  sub_21CA5FD88(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
  v95 = sub_21CB85574();
  v96 = *(v57 + 8);
  v96(v94, v56);
  sub_21C6EA794(v109, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v110, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CA60500(v111, type metadata accessor for PMSharingGroup);
  v96(v84, v56);
  sub_21C6EA794(v72, &unk_27CDF20B0, &unk_21CBA0090);
  v71 = v120;
  v72 = v112;
  v47 = v107;
  if ((v95 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v74 = 0;
  return v74 & 1;
}

uint64_t sub_21CA5C048()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_21CB86544();
    sub_21C7072A8(v9, v26);

    swift_getKeyPath(byte_21CBC1DB0);
    swift_getKeyPath(aX_65);
    sub_21CB81DB4();

    v11 = v26;
    v25 = *(v26 + 16);
    if (!v25)
    {
      break;
    }

    v12 = 0;
    v9 = 0;
    v13 = MEMORY[0x277D84F90];
    v23 = v5;
    v24 = v1;
    while (v12 < *(v11 + 16))
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      sub_21CA60D5C(v11 + v14 + v15 * v12, v8, type metadata accessor for PMAccount);
      if (sub_21CA5C3B0(v8, v1))
      {
        sub_21CA615C0(v8, v5, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v13 + 16) + 1, 1);
          v13 = v26;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21C7B0C4C((v17 > 1), v18 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + v14 + v18 * v15;
        v5 = v23;
        sub_21CA615C0(v23, v19, type metadata accessor for PMAccount);
        v1 = v24;
      }

      else
      {
        sub_21CA60500(v8, type metadata accessor for PMAccount);
      }

      if (v25 == ++v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_14:

  v20 = sub_21CB01070(v13);

  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords) = v20;
}

uint64_t sub_21CA5C3B0(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v4 = sub_21CB85C44();
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v50 - v7;
  v56 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v56);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (&v50 - v20);
  v22 = type metadata accessor for PMAccount(0);
  v23 = (a1 + *(v22 + 28));
  v61 = v23[1];
  if (v61)
  {
    v60 = v2;
    v24 = *v23;
    v52 = v4;
    v53 = v24;
    v25 = v23[3];
    v54 = v23[2];
    v26 = *(v22 + 24);
    sub_21CA60D5C(a1 + v26, v21, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CA60500(v21, type metadata accessor for PMAccount.Storage);
LABEL_7:
      v27 = 0;
      return v27 & 1;
    }

    v51 = v15;
    v28 = *v21;
    v29 = v61;

    if (([v25 issueTypes] & 1) == 0)
    {

      sub_21C7D33F0(v53, v29, v54, v25);
      goto LABEL_7;
    }

    v50 = v28;
    sub_21CA60D5C(a1 + v26, v18, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CA615C0(v18, v9, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(&v9[*(v56 + 72)], v12, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CA60500(v9, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v31 = *v18;
      sub_21CB85B94();
    }

    v32 = v25;
    v33 = v59;
    v34 = v51;
    sub_21C716934(v12, v51, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v33 + 48))(v34, 1, v52) == 1)
    {
      sub_21C6EA794(v34, &unk_27CDF20B0, &unk_21CBA0090);
      v35 = v57;
      v36 = *(v57 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
      v37 = qword_27CDEA4C0;

      if (v37 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v38 = sub_21C7072A8(v36, v62);

      v39 = [objc_opt_self() sharedStore];
      v40 = v58;
      sub_21C6EDBAC(v35 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v58, &qword_27CDF7670, &unk_21CBAA8F0);
      v41 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        sub_21C6EA794(v40, &qword_27CDF7670, &unk_21CBAA8F0);
      }

      else
      {
        v42 = v55;
        v43 = v52;
        (*(v33 + 16))(v55, v40, v52);
        sub_21CA60500(v40, type metadata accessor for PMSharingGroup);
        sub_21CB85B64();
        (*(v33 + 8))(v42, v43);
      }

      v44 = v50;
      v45 = sub_21CB85584();

      v46 = [v39 savedAccountsForGroupID_];

      sub_21C897E98();
      v47 = sub_21CB85824();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v48 = *(v38 + 24);
        ObjectType = swift_getObjectType();
        LOBYTE(v48) = (*(v48 + 192))(v47, v44, ObjectType, v48);

        sub_21C7D33F0(v53, v61, v54, v32);
        swift_unknownObjectRelease();
        v27 = v48 ^ 1;
      }

      else
      {

        sub_21C7D33F0(v53, v61, v54, v32);
        v27 = 1;
      }
    }

    else
    {

      sub_21C7D33F0(v53, v29, v54, v25);
      sub_21C6EA794(v34, &unk_27CDF20B0, &unk_21CBA0090);
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_21CA5CABC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  v8 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v9 + 24);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    do
    {
      sub_21CA60D5C(v16, v12, type metadata accessor for PMAccount);
      sub_21CA60D5C(&v12[v15], v4, type metadata accessor for PMAccount.Storage);
      sub_21CA60500(v12, type metadata accessor for PMAccount);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA60500(v4, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        MEMORY[0x21CF15300]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35[1] = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v13 = v36;
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  sub_21C6EDBAC(v35[2] + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, v7, &qword_27CDF7670, &unk_21CBAA8F0);
  v18 = type metadata accessor for PMSharingGroup(0);
  if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDF7670, &unk_21CBAA8F0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = &v7[*(v18 + 20)];
    v19 = *v21;
    v20 = v21[1];

    sub_21CA60500(v7, type metadata accessor for PMSharingGroup);
  }

  sub_21C7C0290(v13, v19, v20);
  v23 = v22;

  if (v23 && (sub_21C7C08A8(v13, 0), v25 = v24, , v25))
  {
    v26 = sub_21CB85584();

    v27 = sub_21CB85584();

    v28 = [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v26 second:v27];

    if (v28)
    {
      v29 = [v28 first];
      if (v29)
      {
        v30 = v29;
        v31 = [v28 second];
        if (v31)
        {
          v32 = v31;
          v33 = sub_21CB855C4();
          sub_21CB855C4();

          return v33;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_21CA5CF50(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 != -1)
  {
    swift_getKeyPath(byte_21CBC1ED8);
    swift_getKeyPath(byte_21CBC1F00);

    sub_21CB81DC4();
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v3 = sub_21CB81C84();
    __swift_project_value_buffer(v3, qword_27CE186E0);
    v4 = sub_21CB81C64();
    v5 = sub_21CB85AF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21C6E5000, v4, v5, "Cannot move selected accounts.", v6, 2u);
      MEMORY[0x21CF16D90](v6, -1, -1);
    }
  }
}

uint64_t sub_21CA5D088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v61 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  v74 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v74);
  v69 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for PMAccount(0);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = (&v61 - v10);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v61 - v13;
  swift_getKeyPath(byte_21CBC1C50, v12);
  swift_getKeyPath(byte_21CBC1C78);
  v70 = v0;
  sub_21CB81DB4();

  v15 = sub_21CA57784(v77);

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
    v16 = sub_21CB86224();
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  v77 = v16;
  sub_21CA60AC0(v15, 1, &v77);

  v61 = 0;
  v63 = v77;
  v68 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
  v17 = *(v70 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);
  v18 = qword_27CDEA4C0;

  if (v18 != -1)
  {
LABEL_40:
    swift_once();
  }

  v67 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v17, v77);

  swift_getKeyPath(aX_63);
  swift_getKeyPath(aX_62);
  sub_21CB81DB4();

  v19 = v77;
  v20 = *(v77 + 16);
  v66 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;

  v72 = v20;
  if (v20)
  {
    v17 = 0;
    v65 = MEMORY[0x277D84F90];
    v21 = v69;
    v71 = v19;
    while (1)
    {
      if (v17 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v22 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v23 = *(v75 + 72);
      sub_21CA60D5C(v19 + v22 + v23 * v17, v14, type metadata accessor for PMAccount);
      sub_21CA60D5C(&v14[*(v73 + 24)], v21, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA60500(v21, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v24 = *v21;
        v25 = [*v21 userIsNeverSaveMarker];

        if (v25)
        {
          goto LABEL_8;
        }
      }

      v26 = v6;
      v27 = v3;
      v28 = v70;
      v29 = *(v70 + v68);

      sub_21CB86544();
      v30 = sub_21C7072A8(v29, v76);

      v31 = v28 + v66;
      v3 = v27;
      sub_21C6EDBAC(v31, v27, &qword_27CDF7670, &unk_21CBAA8F0);
      v32 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v32 - 8) + 48))(v27, 1, v32) == 1)
      {
        sub_21C6EA794(v27, &qword_27CDF7670, &unk_21CBAA8F0);
        v33 = sub_21CB85C44();
        v6 = v26;
        (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
      }

      else
      {
        v34 = sub_21CB85C44();
        v35 = *(v34 - 8);
        v6 = v26;
        (*(v35 + 16))(v26, v3, v34);
        sub_21CA60500(v3, type metadata accessor for PMSharingGroup);
        (*(v35 + 56))(v26, 0, 1, v34);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v21 = v69;
      if (Strong)
      {
        v37 = *(v30 + 24);
        ObjectType = swift_getObjectType();
        LOBYTE(v37) = (*(v37 + 160))(v14, v6, ObjectType, v37);

        swift_unknownObjectRelease();
        sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
        if (v37)
        {
          sub_21CA615C0(v14, v64, type metadata accessor for PMAccount);
          v39 = v65;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v39 + 16) + 1, 1);
            v39 = v77;
          }

          v42 = *(v39 + 16);
          v41 = *(v39 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_21C7B0C4C((v41 > 1), v42 + 1, 1);
            v39 = v77;
          }

          *(v39 + 16) = v42 + 1;
          v65 = v39;
          sub_21CA615C0(v64, v39 + v22 + v42 * v23, type metadata accessor for PMAccount);
          goto LABEL_9;
        }
      }

      else
      {

        sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
      }

LABEL_8:
      sub_21CA60500(v14, type metadata accessor for PMAccount);
LABEL_9:
      ++v17;
      v19 = v71;
      if (v72 == v17)
      {
        goto LABEL_25;
      }
    }
  }

  v65 = MEMORY[0x277D84F90];
LABEL_25:

  v43 = *(v65 + 16);
  if (v43)
  {
    v44 = v65 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v45 = *(v75 + 72);
    v46 = MEMORY[0x277D84F90];
    v48 = v62;
    v47 = v63;
    do
    {
      sub_21CA60D5C(v44, v48, type metadata accessor for PMAccount);
      if (*(v47 + 16) && (v49 = sub_21CB10A3C(*v48, v48[1]), (v50 & 1) != 0))
      {
        v51 = (*(v47 + 56) + 16 * v49);
        v53 = *v51;
        v52 = v51[1];

        sub_21CA60500(v48, type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_21CA4F2EC(0, *(v46 + 2) + 1, 1, v46);
        }

        v55 = *(v46 + 2);
        v54 = *(v46 + 3);
        if (v55 >= v54 >> 1)
        {
          v46 = sub_21CA4F2EC((v54 > 1), v55 + 1, 1, v46);
        }

        *(v46 + 2) = v55 + 1;
        v56 = &v46[16 * v55];
        *(v56 + 4) = v53;
        *(v56 + 5) = v52;
        v48 = v62;
        v47 = v63;
      }

      else
      {
        sub_21CA60500(v48, type metadata accessor for PMAccount);
      }

      v44 += v45;
      --v43;
    }

    while (v43);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v57 = sub_21CB009AC(v46);

  swift_getKeyPath(byte_21CBC1C50);
  swift_getKeyPath(byte_21CBC1C78);
  sub_21CB81DB4();

  v58 = v77;

  v59 = sub_21CA60FEC(v58, v57);

  swift_bridgeObjectRelease_n();
  swift_getKeyPath(byte_21CBC1C50);
  swift_getKeyPath(byte_21CBC1C78);
  v77 = v59;

  return sub_21CB81DC4();
}

uint64_t sub_21CA5DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v58 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v58);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for PMAccount(0);
  v13 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  if (a1)
  {
    v48 = a2;
    v18 = *(a1 + 16);
    v53 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
    v54 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;
    v56 = v3;

    if (v18)
    {
      v50 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v19 = a1 + v50;
      v52 = MEMORY[0x277D84F90];
      v59 = *(v13 + 72);
      v20 = &qword_27CDF7670;
      while (1)
      {
        sub_21CA60D5C(v19, v17, type metadata accessor for PMAccount);
        sub_21CA60D5C(&v17[*(v57 + 24)], v12, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CA60500(v12, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v21 = *v12;
          v22 = [*v12 userIsNeverSaveMarker];

          if (v22)
          {
            goto LABEL_5;
          }
        }

        v23 = v20;
        v24 = v56;
        v25 = *(v56 + v54);
        v26 = qword_27CDEA4C0;

        if (v26 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        v27 = sub_21C7072A8(v25, v60);

        v28 = v24 + v53;
        v29 = v55;
        v20 = v23;
        sub_21C6EDBAC(v28, v55, v23, &unk_21CBAA8F0);
        v30 = type metadata accessor for PMSharingGroup(0);
        if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
        {
          sub_21C6EA794(v29, v23, &unk_21CBAA8F0);
          v31 = sub_21CB85C44();
          (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
        }

        else
        {
          v32 = v17;
          v33 = v20;
          v34 = v12;
          v35 = v29;
          v36 = sub_21CB85C44();
          v37 = *(v36 - 8);
          (*(v37 + 16))(v10, v35, v36);
          v38 = v35;
          v12 = v34;
          v20 = v33;
          v17 = v32;
          sub_21CA60500(v38, type metadata accessor for PMSharingGroup);
          (*(v37 + 56))(v10, 0, 1, v36);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = *(v27 + 24);
          ObjectType = swift_getObjectType();
          LOBYTE(v39) = (*(v39 + 160))(v17, v10, ObjectType, v39);

          swift_unknownObjectRelease();
          sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
          if (v39)
          {
            sub_21CA615C0(v17, v51, type metadata accessor for PMAccount);
            v41 = v52;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v41 + 16) + 1, 1);
              v41 = v61;
            }

            v44 = *(v41 + 16);
            v43 = *(v41 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_21C7B0C4C((v43 > 1), v44 + 1, 1);
              v41 = v61;
            }

            *(v41 + 16) = v44 + 1;
            v52 = v41;
            sub_21CA615C0(v51, v41 + v50 + v44 * v59, type metadata accessor for PMAccount);
            goto LABEL_6;
          }
        }

        else
        {

          sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
        }

LABEL_5:
        sub_21CA60500(v17, type metadata accessor for PMAccount);
LABEL_6:
        v19 += v59;
        if (!--v18)
        {
          goto LABEL_23;
        }
      }
    }

    v52 = MEMORY[0x277D84F90];
LABEL_23:
    v3 = v56;

    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain) = v52;

    sub_21CA5C048();
    a2 = v48;
  }

  if (a2)
  {

    v45 = sub_21CA61260(a2, v3);

    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID) = v45;
  }

  if (v49)
  {
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups) = v49;
  }

  sub_21CA59710();
  return sub_21CA5D088();
}

void sub_21CA5E17C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v53 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v53);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PMAccount(0);
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = *a1;
  v19 = *(*a1 + 16);
  v47 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group;
  v48 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState;

  v50 = v19;
  if (v19)
  {
    v20 = 0;
    v45 = MEMORY[0x277D84F90];
    v46 = v18;
    v49 = a2;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return;
      }

      v21 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = *(v51 + 72);
      v55 = v21;
      sub_21CA60D5C(v18 + v21 + v54 * v20, v17, type metadata accessor for PMAccount);
      sub_21CA60D5C(&v17[*(v52 + 24)], v12, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA60500(v12, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v22 = *v12;
        v23 = [*v12 userIsNeverSaveMarker];

        if (v23)
        {
          goto LABEL_4;
        }
      }

      v24 = v12;
      v25 = v10;
      v26 = v7;
      v27 = *(a2 + v48);
      v28 = qword_27CDEA4C0;

      v29 = a2;
      if (v28 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v30 = sub_21C7072A8(v27, v56);

      v31 = v29 + v47;
      v7 = v26;
      sub_21C6EDBAC(v31, v26, &qword_27CDF7670, &unk_21CBAA8F0);
      v32 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v32 - 8) + 48))(v26, 1, v32) == 1)
      {
        sub_21C6EA794(v26, &qword_27CDF7670, &unk_21CBAA8F0);
        v33 = sub_21CB85C44();
        v10 = v25;
        (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
      }

      else
      {
        v34 = sub_21CB85C44();
        v35 = *(v34 - 8);
        v10 = v25;
        (*(v35 + 16))(v25, v7, v34);
        sub_21CA60500(v7, type metadata accessor for PMSharingGroup);
        (*(v35 + 56))(v25, 0, 1, v34);
      }

      v12 = v24;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v30 + 24);
        ObjectType = swift_getObjectType();
        LOBYTE(v36) = (*(v36 + 160))(v17, v10, ObjectType, v36);

        swift_unknownObjectRelease();
        sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
        a2 = v49;
        v18 = v46;
        if (v36)
        {
          sub_21CA615C0(v17, v44, type metadata accessor for PMAccount);
          v38 = v45;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v38 + 16) + 1, 1);
            v38 = v57;
          }

          v41 = *(v38 + 16);
          v40 = *(v38 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_21C7B0C4C((v40 > 1), v41 + 1, 1);
            v38 = v57;
          }

          *(v38 + 16) = v41 + 1;
          v45 = v38;
          sub_21CA615C0(v44, v38 + v55 + v41 * v54, type metadata accessor for PMAccount);
          a2 = v49;
          goto LABEL_5;
        }
      }

      else
      {

        sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
        a2 = v49;
        v18 = v46;
      }

LABEL_4:
      sub_21CA60500(v17, type metadata accessor for PMAccount);
LABEL_5:
      if (v50 == ++v20)
      {
        goto LABEL_23;
      }
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_23:

  *v43 = v45;
}

double sub_21CA5E7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask;
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask))
  {

    sub_21CB85944();
  }

  sub_21CB858C4();
  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_21C9E6C0C(0, 0, v3, &unk_21CBC1D98, v7);
  sub_21C6EA794(v3, &qword_27CDF1D50, &qword_21CBA0C00);
  *(v0 + v4) = v8;

  return result;
}

uint64_t sub_21CA5E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_21CB85C44();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68A8, &qword_21CBC1DA0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CA5EA8C, 0, 0);
}

uint64_t sub_21CA5EA8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
LABEL_4:

    v2 = v0[1];

    return v2();
  }

  if (sub_21CB85954())
  {

    goto LABEL_4;
  }

  v0[17] = sub_21CB858B4();
  v0[18] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA5EBC0, v5, v4);
}

uint64_t sub_21CA5EBC0()
{
  v1 = v0[16];

  swift_getKeyPath(asc_21CBC1CE8);
  swift_getKeyPath(asc_21CBC1D10);
  sub_21CB81DB4();

  v2 = v0[6];
  v0[19] = v0[5];
  v0[20] = v2;
  v0[21] = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain);
  v0[22] = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__autoFillQuirksManager);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C81C2D0(v3, v0[7]);

  v0[23] = [v5 associatedDomainsManager];

  return MEMORY[0x2822009F8](sub_21CA5ED44, 0, 0);
}

uint64_t sub_21CA5ED44(uint64_t a1)
{
  v2 = sub_21CB85954();
  v3 = *(v1 + 184);
  if (v2)
  {

    goto LABEL_38;
  }

  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  v6 = *(v1 + 152);
  v7 = v3;
  matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v5, v6, v4, v3);

  *(v1 + 192) = matched;

  if ((sub_21CB85954() & 1) == 0)
  {
    v68 = v3;
    v10 = *(v1 + 176);
    v11 = *(v1 + 88);
    v12 = sub_21CB12B08(MEMORY[0x277D84F90]);
    v15 = 0;
    v64 = v10 + 64;
    v65 = v11;
    v16 = -1;
    v17 = -1 << *(v10 + 32);
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v18 = v16 & *(v10 + 64);
    v63 = (63 - v17) >> 6;
    v69 = (v11 + 16);
    v71 = (v11 + 32);
    v19 = v12;
    v66 = v10;
    v67 = (v11 + 8);
    while (1)
    {
      *(v1 + 200) = v19;
      if (!v18)
      {
        if (v63 <= v15 + 1)
        {
          v26 = v15 + 1;
        }

        else
        {
          v26 = v63;
        }

        v27 = v26 - 1;
        while (1)
        {
          v25 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v25 >= v63)
          {
            v51 = *(v1 + 112);
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68B0, &qword_21CBC1DA8);
            (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
            v18 = 0;
            v15 = v27;
            goto LABEL_21;
          }

          v18 = *(v64 + 8 * v25);
          ++v15;
          if (v18)
          {
            v70 = v19;
            v15 = v25;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        return MEMORY[0x2822009F8](v12, v13, v14);
      }

      v70 = v19;
      v25 = v15;
LABEL_20:
      v29 = *(v1 + 104);
      v28 = *(v1 + 112);
      v30 = *(v1 + 80);
      v31 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v32 = v31 | (v25 << 6);
      (*(v65 + 16))(v29, *(v66 + 48) + *(v65 + 72) * v32, v30);
      v33 = *(*(v66 + 56) + 8 * v32);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68B0, &qword_21CBC1DA8);
      v35 = *(v34 + 48);
      (*(v65 + 32))(v28, v29, v30);
      *(v28 + v35) = v33;
      (*(*(v34 - 8) + 56))(v28, 0, 1, v34);

      v19 = v70;
LABEL_21:
      v36 = *(v1 + 120);
      sub_21C716934(*(v1 + 112), v36, &qword_27CDF68A8, &qword_21CBC1DA0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68B0, &qword_21CBC1DA8);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {

        *(v1 + 208) = sub_21CB858A4();
        v54 = sub_21CB85874();
        v56 = v55;
        v12 = sub_21CA5F3FC;
        v13 = v54;
        v14 = v56;

        return MEMORY[0x2822009F8](v12, v13, v14);
      }

      v39 = *(v1 + 152);
      v38 = *(v1 + 160);
      v40 = *(*(v1 + 120) + *(v37 + 48));
      (*v71)(*(v1 + 96));
      v41 = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v40, v39, v38, v68);

      if (sub_21CB85954())
      {
        v57 = *(v1 + 184);
        v58 = *(v1 + 96);
        v59 = *(v1 + 80);

        (*v67)(v58, v59);

        goto LABEL_39;
      }

      v42 = *(v1 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_21CB10A54(v42);
      v44 = v19[2];
      v45 = (v13 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        goto LABEL_46;
      }

      v48 = v13;
      if (v19[3] < v47)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v53 = v12;
      sub_21C8D58B0();
      v12 = v53;
      if (v48)
      {
LABEL_29:
        *(v19[7] + 8 * v12) = v41;

        goto LABEL_9;
      }

LABEL_8:
      v20 = *(v1 + 104);
      v21 = v12;
      (*v69)(v20, *(v1 + 96), *(v1 + 80));
      sub_21C8D5124(v21, v20, v41, v19);
LABEL_9:
      v22 = *(v1 + 96);
      v23 = *(v1 + 80);
      v24 = sub_21CB85954();
      v12 = (*v67)(v22, v23);
      if (v24)
      {
        v60 = *(v1 + 184);

        goto LABEL_38;
      }
    }

    v49 = *(v1 + 96);
    sub_21C8D1B3C(v47, isUniquelyReferenced_nonNull_native);
    v12 = sub_21CB10A54(v49);
    if ((v48 & 1) != (v50 & 1))
    {

      return sub_21CB863B4();
    }

LABEL_28:
    if (v48)
    {
      goto LABEL_29;
    }

    goto LABEL_8;
  }

  v9 = *(v1 + 184);

LABEL_38:

LABEL_39:

  v61 = *(v1 + 8);

  return v61();
}

uint64_t sub_21CA5F3FC()
{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[16];

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);

  v5 = sub_21CA60578(v2, v1, v4);

  if (sub_21CB85954())
  {
  }

  else
  {
    swift_getKeyPath(asc_21CBC1D30);
    swift_getKeyPath(byte_21CBC1D58);
    v0[8] = v5;

    sub_21CB81DC4();
  }

  return MEMORY[0x2822009F8](sub_21CA5F518, 0, 0);
}

uint64_t sub_21CA5F518()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

double sub_21CA5F5AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CA5DA9C(v2, 0, 0);
  }

  return result;
}

double sub_21CA5F614(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = sub_21CA61260(v2, v5);

    *(v5 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID) = v6;

    sub_21CA59710();
    sub_21CA5D088();
  }

  return result;
}

double sub_21CA5F6B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups) = v2;

    sub_21CA59710();
    sub_21CA5D088();
  }

  return result;
}

uint64_t sub_21CA5F738()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, &qword_27CDF7670, &unk_21CBAA8F0);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__listedSections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6890, &unk_21CBC1B90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__searchText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__selectedAccountsNewIDToOldID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6898, &unk_21CBC1BA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveAccountsFailureAlert;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingReusedPasswordAlert, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveSharedAccountsAlert, v8);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__moveSharedAccountsAlertConfiguration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68A0, qword_21CBC1BB0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_21CA5F9D0()
{
  sub_21CA5F738();

  return swift_deallocClassInstance();
}

void sub_21CA5FA50(uint64_t a1)
{
  sub_21CA50814(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDF6848, &qword_27CDF6730, &qword_21CBC18C8);
    if (v2 <= 0x3F)
    {
      sub_21C6F039C(319, &qword_27CDEAEC8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDF6850, &qword_27CDF6858, &qword_21CBC1AC8);
        if (v4 <= 0x3F)
        {
          sub_21C6F039C(319, &qword_27CDEAEE0, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDF6860, &qword_27CDF6868, &qword_21CBC1AD0);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21CA5FCE8(uint64_t a1)
{
  v1 = type metadata accessor for PMSharingGroup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21CA5FD88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_21CA5FDD0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_21CA60DC4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_21CA5FE6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
  result = sub_21CB86224();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_21CB86484();

    sub_21CB854C4();
    result = sub_21CB864D4();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CA600C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMMoveAccountsListModel.Section(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6888, &unk_21CBC1B80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - v12;
  v15 = *(v14 + 56);
  sub_21CA60D5C(a1, v27 - v12, type metadata accessor for PMMoveAccountsListModel.Section);
  sub_21CA60D5C(a2, &v13[v15], type metadata accessor for PMMoveAccountsListModel.Section);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_21CA60500(v13, type metadata accessor for PMMoveAccountsListModel.Section);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21CA60D5C(v13, v10, type metadata accessor for PMMoveAccountsListModel.Section);
  if (v16(&v13[v15], 1, v4) != 1)
  {
    sub_21CA615C0(&v13[v15], v7, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21CA5FD88(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v27[2] == v27[0] && v27[3] == v27[1])
    {
    }

    else
    {
      v18 = sub_21CB86344();

      if ((v18 & 1) == 0)
      {
LABEL_19:
        sub_21CA60500(v7, type metadata accessor for PMSharingGroup);
        sub_21CA60500(v10, type metadata accessor for PMSharingGroup);
        sub_21CA60500(v13, type metadata accessor for PMMoveAccountsListModel.Section);
        return 0;
      }
    }

    v19 = v4[5];
    v20 = *&v10[v19];
    v21 = *&v10[v19 + 8];
    v22 = &v7[v19];
    if (v20 == *v22 && v21 == *(v22 + 1) || (sub_21CB86344()) && (sub_21C967680(*&v10[v4[6]], *&v7[v4[6]]))
    {
      if (v23 = v4[7], v24 = *&v10[v23], v25 = *&v10[v23 + 8], v26 = &v7[v23], v24 == *v26) && v25 == *(v26 + 1) || (sub_21CB86344())
      {
        sub_21CA60500(v7, type metadata accessor for PMSharingGroup);
        sub_21CA60500(v10, type metadata accessor for PMSharingGroup);
        goto LABEL_3;
      }
    }

    goto LABEL_19;
  }

  sub_21CA60500(v10, type metadata accessor for PMSharingGroup);
LABEL_6:
  sub_21C6EA794(v13, &qword_27CDF6888, &unk_21CBC1B80);
  return 0;
}

uint64_t sub_21CA60500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CA60578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v53 = a2;
  v47 = a1;
  v3 = type metadata accessor for PMSharingGroup(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0A0, &qword_21CBA0E40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB098, &unk_21CBC1D80);
  v19 = *(v8 + 72);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21CBA0690;
  v56 = v20;
  v57 = v7;
  v48 = v21;
  v22 = v21 + v20;
  v23 = *(v7 + 48);
  v24 = *(v4 + 56);
  v51 = v4 + 56;
  v52 = v3;
  v50 = v24;
  v24(v22, 1, 1, v3);
  *(v22 + v23) = v47;
  v25 = v49;
  v26 = *(v49 + 16);
  v55 = v19;
  if (v26)
  {
    v58 = MEMORY[0x277D84F90];

    sub_21C7B1380(0, v26, 0);
    v27 = v58;
    v28 = v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v49 = *(v4 + 72);
    do
    {
      sub_21CA60D5C(v28, v6, type metadata accessor for PMSharingGroup);
      sub_21CA60D5C(v6, v18, type metadata accessor for PMSharingGroup);
      v50(v18, 0, 1, v52);
      v29 = v53;
      if (*(v53 + 16) && (v30 = sub_21CB10A54(v6), (v31 & 1) != 0))
      {
        v32 = *(*(v29 + 56) + 8 * v30);
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
      }

      v33 = *(v57 + 48);
      sub_21CA60500(v6, type metadata accessor for PMSharingGroup);
      *&v18[v33] = v32;
      v58 = v27;
      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_21C7B1380((v34 > 1), v35 + 1, 1);
        v27 = v58;
      }

      *(v27 + 16) = v35 + 1;
      v36 = v27 + v56 + v35 * v55;
      v19 = v55;
      sub_21C716934(v18, v36, &qword_27CDEB0A0, &qword_21CBA0E40);
      v28 += v49;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v58 = v48;
  result = sub_21CAE9004(v27);
  v38 = v58;
  v53 = *(v58 + 16);
  if (v53)
  {
    v39 = 0;
    v40 = v58 + v56;
    v41 = MEMORY[0x277D84F90];
    while (v39 < *(v38 + 16))
    {
      sub_21C6EDBAC(v40, v15, &qword_27CDEB0A0, &qword_21CBA0E40);
      sub_21C6EDBAC(v15, v12, &qword_27CDEB0A0, &qword_21CBA0E40);
      v42 = *(*&v12[*(v57 + 48)] + 16);

      sub_21CA60500(v12, type metadata accessor for PMMoveAccountsListModel.Section);
      if (v42)
      {
        sub_21C716934(v15, v54, &qword_27CDEB0A0, &qword_21CBA0E40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1380(0, *(v41 + 16) + 1, 1);
          v41 = v58;
        }

        v45 = *(v41 + 16);
        v44 = *(v41 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_21C7B1380((v44 > 1), v45 + 1, 1);
          v41 = v58;
        }

        *(v41 + 16) = v45 + 1;
        v46 = v41 + v56 + v45 * v55;
        v19 = v55;
        result = sub_21C716934(v54, v46, &qword_27CDEB0A0, &qword_21CBA0E40);
      }

      else
      {
        result = sub_21C6EA794(v15, &qword_27CDEB0A0, &qword_21CBA0E40);
      }

      ++v39;
      v40 += v19;
      if (v53 == v39)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
LABEL_24:

    return v41;
  }

  return result;
}

unint64_t sub_21CA60AC0(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v39 = *(result + 48);
  v10 = *a3;

  result = sub_21CB10A3C(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_21C8D2D78(v15, i & 1);
    result = sub_21CB10A3C(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_21CB863B4();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    v23 = (v18[7] + 16 * result);
    *v23 = v39;
    v23[1] = v9;
    v24 = v18[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_21C8D6350();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 16 * v19);
  *v20 = v39;
  v20[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v28 = *a3;

      result = sub_21CB10A3C(v7, v9);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        break;
      }

      v8 = v29;
      if (v28[3] < v32)
      {
        sub_21C8D2D78(v32, 1);
        result = sub_21CB10A3C(v7, v9);
        if ((v8 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      v34 = *a3;
      if (v8)
      {
        v26 = result;

        v27 = (v34[7] + 16 * v26);
        *v27 = v3;
        v27[1] = v6;
      }

      else
      {
        v34[(result >> 6) + 8] |= 1 << result;
        v35 = (v34[6] + 16 * result);
        *v35 = v7;
        v35[1] = v9;
        v36 = (v34[7] + 16 * result);
        *v36 = v3;
        v36[1] = v6;
        v37 = v34[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v34[2] = v38;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_21CA60D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t *sub_21CA60DC4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v26);
      v15 = *v14;
      v16 = v14[1];
      sub_21CB86484();

      sub_21CB854C4();
      v17 = sub_21CB864D4();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_21CA5FE6C(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_21CA5FE6C(v25, a2, v27, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21CA60FEC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_21CA5FDD0(v12, v7, a1, a2);
      MEMORY[0x21CF16D90](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_21CA60DC4((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_21CA611AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21CA5E97C(a1, v4, v5, v6);
}

uint64_t sub_21CA61260(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  result = sub_21CB86204();
  v10 = 0;
  v38 = result;
  v39 = a1;
  v11 = *(a1 + 64);
  v33 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v41 = v4;
  v34 = result + 64;
  v35 = v4 + 32;
  v36 = v4 + 16;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v42 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = v39;
      v21 = v41;
      v22 = *(v41 + 72) * v19;
      v23 = v37;
      (*(v41 + 16))(v37, *(v39 + 48) + v22, v3);
      v24 = *(v20 + 56);
      v25 = v3;
      v45 = *(v24 + 8 * v19);
      v26 = *(v21 + 32);
      v26(v6, v23, v3);

      v27 = v43;
      sub_21CA5E17C(&v45, v40, &v44);
      v43 = v27;
      if (v27)
      {
        break;
      }

      *(v34 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v28 = v38;
      result = (v26)(*(v38 + 48) + v22, v6, v25);
      *(*(v28 + 56) + 8 * v19) = v44;
      v29 = *(v28 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      result = v28;
      v3 = v25;
      *(result + 16) = v31;
      v14 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    v32 = v38;

    (*(v41 + 8))(v6, v3);

    return v32;
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        return result;
      }

      v18 = *(v33 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_21CA61554()
{
  result = qword_27CDF68B8;
  if (!qword_27CDF68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF68B8);
  }

  return result;
}

uint64_t sub_21CA615C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21CA61680(uint64_t a1)
{
  sub_21C72CDCC(319, &qword_27CDEBD50, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21CA618DC(319, &qword_27CDF68D8, &qword_27CDEB700, &unk_21CBA24F0, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_21C7210DC();
      if (v3 <= 0x3F)
      {
        sub_21CA618DC(319, &qword_27CDEC848, &unk_27CDEBE60, &unk_21CB9FF40, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C705CFC(319);
          if (v5 <= 0x3F)
          {
            sub_21C6EFE5C(319);
            if (v6 <= 0x3F)
            {
              sub_21CA61848(319);
              if (v7 <= 0x3F)
              {
                sub_21CA618DC(319, &qword_27CDEACF0, &qword_27CDEACF8, &unk_21CBC1FB0, type metadata accessor for PMDependency);
                if (v8 <= 0x3F)
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

void sub_21CA61848(uint64_t a1)
{
  if (!qword_27CDF68E0)
  {
    type metadata accessor for PMSignInWithAppleAccountDetailsModel(255);
    sub_21C7060A8(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel, &unk_21CBC0218);
    v1 = sub_21CB823D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF68E0);
    }
  }
}

void sub_21CA618DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21CA61988@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v29[-v9];
  *a2 = swift_getKeyPath(byte_21CBC2188, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v12 = a2 + v11[6];
  v30 = 0;
  sub_21CB84D44();
  v13 = v32;
  *v12 = v31;
  *(v12 + 1) = v13;
  v14 = a2 + v11[7];
  v30 = 0;
  sub_21CB84D44();
  v15 = v32;
  *v14 = v31;
  *(v14 + 1) = v15;
  v16 = type metadata accessor for PMAccount(0);
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_21C6EDBAC(v10, v6, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
  v17 = v11[9];
  KeyPath = swift_getKeyPath(byte_21CBC21B8);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v19 = (a2 + v17);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v31);

  type metadata accessor for PMAccountsState(0);
  sub_21C7060A8(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v20 = sub_21CB82674();
  v22 = v21;

  *v19 = v20;
  v19[1] = v22;
  v23 = (a2 + v11[10]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C7060A8(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  *v23 = sub_21CB823C4();
  v23[1] = v24;
  v25 = (a2 + v11[11]);
  type metadata accessor for PMSignInWithAppleAccountDetailsModel(0);
  sub_21C7060A8(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel, &unk_21CBC0218);
  *v25 = sub_21CB823C4();
  v25[1] = v26;
  v27 = v11[12];
  *(a2 + v27) = swift_getKeyPath(aX_66);
  return sub_21CA6642C(a1, a2 + v11[5]);
}

uint64_t sub_21CA61D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a1;
  v58 = a2;
  v4 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v5 = (v4 - 8);
  v61 = *(v4 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21CB81024();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6900, &unk_21CBC2048);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v62 = &v41 - v11;
  v12 = v5[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  v54 = v12;
  v14 = v13;
  v53 = v13;
  MEMORY[0x21CF14A20]();
  v15 = sub_21CA624B0(v10);
  v17 = v16;
  v48 = v16;
  sub_21C6EA794(v10, &qword_27CDEB700, &unk_21CBA24F0);
  v77 = v15;
  v78 = v17;
  v18 = v3 + v5[8];
  v19 = *v18;
  v20 = *(v18 + 8);
  v75 = v19;
  v76 = v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v45 = v66;
  v44 = v67;
  v46 = v68;
  MEMORY[0x21CF14A20](v14);
  v65 = v3;
  v64 = v3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6908, &qword_21CBC2058);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6910, &unk_21CBC2060);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  v22 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v43 = sub_21C6EADEC(&qword_27CDF6918, &qword_27CDF6908, &qword_21CBC2058, MEMORY[0x277CE04B0]);
  v23 = sub_21C71F3FC();
  v24 = sub_21C6EADEC(&qword_27CDF6920, &qword_27CDF6910, &unk_21CBC2060, MEMORY[0x277CE14C0]);
  v47 = sub_21C7FC578();
  sub_21CB84714();

  sub_21C6EA794(v10, &qword_27CDEB700, &unk_21CBA24F0);

  v25 = v50;
  sub_21CB81014();
  v26 = sub_21CB81004();
  v28 = v27;
  (*(v52 + 8))(v25, v55);
  v77 = v26;
  v78 = v28;
  v29 = v3 + v5[9];
  v30 = *v29;
  v31 = *(v29 + 8);
  v75 = v30;
  v76 = v31;
  sub_21CB84D74();
  v63 = v3;
  v66 = v21;
  v67 = MEMORY[0x277D837D0];
  v68 = v41;
  v69 = v42;
  v70 = v22;
  v71 = v43;
  v72 = v23;
  v73 = v24;
  v74 = v47;
  swift_getOpaqueTypeConformance2();
  v32 = v56;
  v33 = v58;
  v34 = v62;
  sub_21CB84754();

  (*(v57 + 8))(v34, v32);
  v35 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6928, &unk_21CBC2070) + 36);
  MEMORY[0x21CF14A20](v53);
  v36 = v59;
  sub_21CA660E0(v3, v59, type metadata accessor for PMMoveAccountToGroupAlert);
  v37 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v38 = swift_allocObject();
  sub_21CA66148(v36, v38 + v37, type metadata accessor for PMMoveAccountToGroupAlert);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB708, &unk_21CBC2080);
  v40 = (v35 + *(result + 36));
  *v40 = sub_21CA65710;
  v40[1] = v38;
  return result;
}

uint64_t sub_21CA624B0(uint64_t a1)
{
  v2 = sub_21CB81024();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v33 - v6;
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v34 = a1;
  sub_21C6EDBAC(a1, &v33 - v17, &qword_27CDEB700, &unk_21CBA24F0);
  v19 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v18, 1, v19) != 1)
  {
    sub_21CA660E0(v18, v12, type metadata accessor for PMAccount);
    sub_21C719720(v18, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
    sub_21CA660E0(&v12[*(v10 + 24)], v9, type metadata accessor for PMAccount.Storage);
    sub_21C719720(v12, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719720(v9, type metadata accessor for PMAccount.Storage);
      goto LABEL_5;
    }

    v22 = *v9;
    sub_21C6EDBAC(v34, v15, &qword_27CDEB700, &unk_21CBA24F0);
    if (v20(v15, 1, v19) == 1)
    {
      v23 = &qword_27CDEB700;
      v24 = &unk_21CBA24F0;
      v25 = v15;
    }

    else
    {
      v26 = v33;
      sub_21C6EDBAC(&v15[*(v19 + 24)], v33, &qword_27CDF7670, &unk_21CBAA8F0);
      sub_21C719720(v15, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      v27 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) != 1)
      {
        v30 = (v26 + *(v27 + 20));
        v31 = *v30;
        v29 = v30[1];

        sub_21C719720(v26, type metadata accessor for PMSharingGroup);
        v28 = v31;
        goto LABEL_12;
      }

      v23 = &qword_27CDF7670;
      v24 = &unk_21CBAA8F0;
      v25 = v26;
    }

    sub_21C6EA794(v25, v23, v24);
    v28 = 0;
    v29 = 0;
LABEL_12:
    sub_21C7C1D78(v22, v28, v29);

    v21 = sub_21CB85594();

    return v21;
  }

  sub_21C6EA794(v18, &qword_27CDEB700, &unk_21CBA24F0);
LABEL_5:
  sub_21CB81014();
  v21 = sub_21CB81004();
  (*(v35 + 8))(v4, v36);
  return v21;
}

uint64_t sub_21CA629CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v75 - v6;
  v7 = sub_21CB81024();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v97 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v75 - v12;
  v13 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v79 = v14;
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B70, &unk_21CBC2090);
  v85 = *(v15 - 8);
  v86 = v15;
  MEMORY[0x28223BE20](v15);
  v84 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v75 - v18;
  v19 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v91 = *(v19 - 8);
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v92 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0638, &qword_21CBAF088);
  MEMORY[0x28223BE20](v28 - 8);
  v94 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v75 - v31;
  v33 = a1;
  v34 = a1;
  v35 = a2;
  if ((sub_21CA63408(v34) & 1) == 0)
  {
    goto LABEL_6;
  }

  v36 = type metadata accessor for PMAccount(0);
  sub_21CA660E0(v33 + *(v36 + 24), v27, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719720(v27, type metadata accessor for PMAccount.Storage);
LABEL_6:
    v44 = 1;
    goto LABEL_7;
  }

  v37 = *v27;
  v38 = [v37 hasValidWebsite];

  if (!v38)
  {
    goto LABEL_6;
  }

  sub_21CA660E0(v33, &v24[v21[5]], type metadata accessor for PMAccount);
  v39 = v92;
  sub_21CA660E0(a2, v92, type metadata accessor for PMMoveAccountToGroupAlert);
  v40 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v41 = swift_allocObject();
  sub_21CA66148(v39, v41 + v40, type metadata accessor for PMMoveAccountToGroupAlert);
  *v24 = swift_getKeyPath(aX_67);
  *(v24 + 1) = 0;
  v24[16] = 0;
  v42 = &v24[v21[7]];
  v43 = &v24[v21[9]];
  v24[v21[6]] = 0;
  *v42 = 0;
  *(v42 + 1) = 0;
  v24[v21[8]] = 0;
  *v43 = sub_21CA666DC;
  *(v43 + 1) = v41;
  sub_21CA66148(v24, v32, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v44 = 0;
LABEL_7:
  v45 = *(v22 + 56);
  v93 = v32;
  v45(v32, v44, 1, v21);
  v77 = type metadata accessor for PMMoveAccountToGroupAlert;
  v76 = v35;
  v46 = v92;
  sub_21CA660E0(v35, v92, type metadata accessor for PMMoveAccountToGroupAlert);
  v47 = v80;
  sub_21CA660E0(v33, v80, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  v48 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v49 = (v48 + v20 + *(v78 + 80)) & ~*(v78 + 80);
  v50 = swift_allocObject();
  sub_21CA66148(v46, v50 + v48, type metadata accessor for PMMoveAccountToGroupAlert);
  v51 = sub_21CA66148(v47, v50 + v49, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  MEMORY[0x28223BE20](v51);
  *(&v75 - 2) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  sub_21C7FC578();
  v52 = v95;
  sub_21CB84DA4();
  v53 = v81;
  sub_21CB81014();
  v54 = sub_21CB81004();
  v56 = v55;
  (*(v82 + 8))(v53, v83);
  v98 = v54;
  v99 = v56;
  v57 = v87;
  sub_21CB81EF4();
  v58 = sub_21CB81F14();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_21CA660E0(v76, v46, v77);
  v59 = swift_allocObject();
  sub_21CA66148(v46, v59 + v48, type metadata accessor for PMMoveAccountToGroupAlert);
  sub_21C71F3FC();
  v60 = v96;
  sub_21CB84DC4();
  v61 = v94;
  sub_21C6EDBAC(v93, v94, &qword_27CDF0638, &qword_21CBAF088);
  v62 = v84;
  v63 = v85;
  v92 = *(v85 + 16);
  v64 = v86;
  (v92)(v84, v52, v86);
  v66 = v88;
  v65 = v89;
  v67 = *(v88 + 16);
  v67(v97, v60, v89);
  v68 = v90;
  sub_21C6EDBAC(v61, v90, &qword_27CDF0638, &qword_21CBAF088);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6938, &qword_21CBC20A0);
  (v92)(v68 + *(v69 + 48), v62, v64);
  v70 = v68 + *(v69 + 64);
  v71 = v97;
  v67(v70, v97, v65);
  v72 = *(v66 + 8);
  v72(v96, v65);
  v73 = *(v63 + 8);
  v73(v95, v64);
  sub_21C6EA794(v93, &qword_27CDF0638, &qword_21CBAF088);
  v72(v71, v65);
  v73(v62, v64);
  return sub_21C6EA794(v94, &qword_27CDF0638, &qword_21CBAF088);
}

uint64_t sub_21CA63408(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = (a1 + *(v16 + 28));
  v18 = v17[1];
  if (!v18)
  {
    goto LABEL_8;
  }

  v54 = v9;
  v55 = v7;
  v56 = v6;
  v57 = v16;
  v19 = a1;
  v20 = *v17;
  v21 = v17[2];
  v22 = v17[3];

  if (([v22 issueTypes] & 1) == 0)
  {
    sub_21C7D33F0(v20, v18, v21, v22);
LABEL_8:
    v29 = 0;
    return v29 & 1;
  }

  v50 = v18;
  v51 = v21;
  v52 = v20;
  v53 = v22;
  v48 = v3;
  v49 = v5;
  v23 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v24 = v19;
  sub_21C6EDBAC(v19 + *(v23 + 20), v15, &qword_27CDF7670, &unk_21CBAA8F0);
  v25 = type metadata accessor for PMSharingGroup(0);
  v26 = *(*(v25 - 8) + 48);
  if (v26(v15, 1, v25) != 1)
  {
    sub_21C7D33F0(v52, v50, v51, v53);
    sub_21C6EA794(v15, &qword_27CDF7670, &unk_21CBAA8F0);
    goto LABEL_8;
  }

  sub_21C6EA794(v15, &qword_27CDF7670, &unk_21CBAA8F0);
  v47 = *(v1 + *(type metadata accessor for PMMoveAccountToGroupAlert(0) + 36) + 8);
  v27 = [objc_opt_self() sharedStore];
  sub_21C6EDBAC(v19 + *(v23 + 24), v12, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v26(v12, 1, v25) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDF7670, &unk_21CBAA8F0);
    v28 = 0;
  }

  else
  {
    v31 = v54;
    v32 = v55;
    v33 = v56;
    (*(v55 + 16))(v54, v12, v56);
    sub_21C719720(v12, type metadata accessor for PMSharingGroup);
    sub_21CB85B64();
    (*(v32 + 8))(v31, v33);
    v28 = sub_21CB85584();
  }

  v34 = v49;
  v35 = [v27 savedAccountsForGroupID_];

  sub_21C897E98();
  v36 = sub_21CB85824();
  sub_21CA660E0(v24 + *(v57 + 24), v34, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = v52;
  v38 = v53;
  if (EnumCaseMultiPayload != 1)
  {

    v40 = *v34;
    v41 = v47;
    Strong = swift_unknownObjectWeakLoadStrong();
    v43 = v51;
    if (Strong)
    {
      v44 = *(v41 + 24);
      ObjectType = swift_getObjectType();
      LOBYTE(v44) = (*(v44 + 192))(v36, v40, ObjectType, v44);

      sub_21C7D33F0(v39, v50, v43, v38);
      swift_unknownObjectRelease();
      v29 = v44 ^ 1;
    }

    else
    {

      sub_21C7D33F0(v39, v50, v43, v38);
      v29 = 1;
    }

    return v29 & 1;
  }

  result = sub_21C719720(v34, type metadata accessor for PMAccount.Storage);
  __break(1u);
  return result;
}

double sub_21CA63918(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = &v19 - v10;
  if (*(a1 + *(v6 + 40)))
  {
    swift_getKeyPath(asc_21CBC2130, v9);
    swift_getKeyPath(byte_21CBC2158);
    v22 = 1;

    sub_21CB81DC4();
  }

  if (*(a1 + *(v6 + 44)))
  {
    swift_getKeyPath(asc_21CBC20E8, v9);
    swift_getKeyPath(asc_21CBC2110);
    v23 = 1;

    sub_21CB81DC4();
  }

  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21CA660E0(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupAlert);
  sub_21CA660E0(v20, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  sub_21CB858B4();
  v13 = sub_21CB858A4();
  v14 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v15 = (v7 + *(v21 + 80) + v14) & ~*(v21 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21CA66148(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for PMMoveAccountToGroupAlert);
  sub_21CA66148(v5, v16 + v15, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  sub_21C98B308(0, 0, v11, &unk_21CBC20E0, v16);

  return result;
}

uint64_t sub_21CA63C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for PMAccount(0);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_21CB858B4();
  v5[15] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x2822009F8](sub_21CA63E38, v8, v7);
}

uint64_t sub_21CA63E38()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  *(v0 + 144) = type metadata accessor for PMMoveAccountToGroupAlert(0);
  sub_21CA660E0(v3, v1, type metadata accessor for PMAccount);
  v4 = *(type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0) + 24);
  *(v0 + 192) = v4;
  sub_21C6EDBAC(v3 + v4, v2, &qword_27CDF7670, &unk_21CBAA8F0);
  v5 = type metadata accessor for PMSharingGroup(0);
  *(v0 + 152) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v8 = v7(v2, 1, v5);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  if (v8 == 1)
  {
    sub_21C6EA794(*(v0 + 80), &qword_27CDF7670, &unk_21CBAA8F0);
    v11 = sub_21CB85C44();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  else
  {
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, v10, v12);
    sub_21C719720(v10, type metadata accessor for PMSharingGroup);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_21CA640B0;
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);

  return sub_21C835884(v15, v16, 1);
}

uint64_t sub_21CA640B0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  *(*v1 + 184) = v0;

  sub_21C6EA794(v4, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C719720(v3, type metadata accessor for PMAccount);
  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_21CA643F0;
  }

  else
  {
    v7 = sub_21CA64250;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21CA64250()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 192);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  sub_21C6EDBAC(v5 + v3, v4, &qword_27CDF7670, &unk_21CBAA8F0);
  LODWORD(v2) = v1(v4, 1, v2);
  sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v2 != 1)
  {
    v6 = *(*(v0 + 40) + *(*(v0 + 144) + 48));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v7 = sub_21C741948(v6, *(v0 + 32));

    if (v7)
    {
      sub_21C91C188();
    }
  }

  sub_21CA645C8(*(v0 + 40));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21CA643F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  sub_21CA660E0(v7, v5, type metadata accessor for PMAccount);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_21C6EDBAC(v5, v6, &unk_27CDEBE60, &unk_21CB9FF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  sub_21CB84D64();
  sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
  v9 = v8 + *(v2 + 28);
  v10 = *(v9 + 8);
  *(v0 + 16) = *v9;
  *(v0 + 24) = v10;
  *(v0 + 196) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();

  sub_21CA645C8(*(v0 + 40));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21CA645C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  v8 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  if (*(a1 + *(v8 + 40)))
  {
    swift_getKeyPath(asc_21CBC2130);
    swift_getKeyPath(byte_21CBC2158);
    v11[14] = 0;

    sub_21CB81DC4();
  }

  if (*(a1 + *(v8 + 44)))
  {
    swift_getKeyPath(asc_21CBC20E8);
    swift_getKeyPath(asc_21CBC2110);
    v11[15] = 0;

    sub_21CB81DC4();
  }

  v9 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_21C6EDBAC(v7, v4, &qword_27CDEB700, &unk_21CBA24F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CB84F34();
  return sub_21C6EA794(v7, &qword_27CDEB700, &unk_21CBA24F0);
}

double sub_21CA647B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  sub_21C6EDBAC(a1 + *(v11 + 24), v10, &qword_27CDF7670, &unk_21CBAA8F0);
  v12 = type metadata accessor for PMSharingGroup(0);
  LODWORD(a1) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_21C6EA794(v10, &qword_27CDF7670, &unk_21CBAA8F0);
  v13 = (v5 + 8);
  sub_21CB81014();
  v15 = sub_21CB81004();
  if (a1 == 1)
  {
    v16 = v14;
    (*v13)(v7, v4);
    *&v33 = v15;
    *(&v33 + 1) = v16;
    sub_21C71F3FC();
    v28 = sub_21CB84054();
    v29 = v17;
    v30 = v18 & 1;
    v31 = v19;
    v32 = 1;
  }

  else
  {
    v20 = v14;
    (*v13)(v7, v4);
    *&v33 = v15;
    *(&v33 + 1) = v20;
    sub_21C71F3FC();
    v28 = sub_21CB84054();
    v29 = v21;
    v30 = v22 & 1;
    v31 = v23;
    v32 = 0;
  }

  sub_21CB83494();
  result = *&v33;
  v25 = v34;
  v26 = v35;
  *a2 = v33;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  return result;
}

uint64_t sub_21CA64A8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for PMMoveAccountToGroupAlert(0);
  sub_21C6EDBAC(v5, v2, &qword_27CDEB700, &unk_21CBA24F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CB84F34();
  return sub_21C6EA794(v5, &qword_27CDEB700, &unk_21CBA24F0);
}

__n128 sub_21CA64BCC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CA64D0C(a1);
  v6 = v5;
  if ((sub_21CA63408(a1) & 1) != 0 && (v7 = a1 + *(type metadata accessor for PMAccount(0) + 28), *(v7 + 8)))
  {
    v8 = *(v7 + 24);

    v9 = [v8 localizedAlertWarningForSharingReusedPassword];
    v10 = sub_21CB855C4();
    v12 = v11;

    *&v14 = v10;
    *(&v14 + 1) = v12;
    sub_21C71F3FC();
    sub_21CB84054();
  }

  else
  {
    *&v14 = v4;
    *(&v14 + 1) = v6;
    sub_21C71F3FC();
    sub_21CB84054();
  }

  sub_21CB83494();
  result = v15;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21CA64D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PMSharingGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PMAccount(0);
  sub_21CA660E0(a1 + *(v18 + 24), v17, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for PMAccount.Storage;
    v20 = v17;
LABEL_3:
    sub_21C719720(v20, v19);
    return 0;
  }

  v22 = *v17;
  v23 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  sub_21C6EDBAC(a1 + *(v23 + 20), v10, &qword_27CDF7670, &unk_21CBAA8F0);
  v24 = *(v12 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    sub_21C6EA794(v10, &qword_27CDF7670, &unk_21CBAA8F0);
    sub_21C6EDBAC(a1 + *(v23 + 24), v4, &qword_27CDF7670, &unk_21CBAA8F0);
    v25 = v24(v4, 1, v11);
    sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
    if (v25 == 1)
    {

      return 0;
    }

    v35 = sub_21C7BFCA4(v22);

    return v35;
  }

  else
  {
    sub_21CA66148(v10, v14, type metadata accessor for PMSharingGroup);
    sub_21C6EDBAC(a1 + *(v23 + 24), v7, &qword_27CDF7670, &unk_21CBAA8F0);
    v26 = v24(v7, 1, v11);
    sub_21C6EA794(v7, &qword_27CDF7670, &unk_21CBAA8F0);
    if (v26 == 1)
    {
      v27 = [objc_opt_self() sharedProvider];
      sub_21CB85B64();
      v28 = sub_21CB85584();

      v29 = [v27 cachedGroupWithID_];

      if (!v29)
      {

        v19 = type metadata accessor for PMSharingGroup;
        v20 = v14;
        goto LABEL_3;
      }

      sub_21C7BD554(v22, v29);
      v31 = v30;
      v33 = v32;

      if (v33)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0;
      }

      sub_21C719720(v14, type metadata accessor for PMSharingGroup);
      return v34;
    }

    else
    {
      v36 = sub_21C7BFE38(v22, *&v14[*(v11 + 20)], *&v14[*(v11 + 20) + 8]);

      sub_21C719720(v14, type metadata accessor for PMSharingGroup);
      return v36;
    }
  }
}

uint64_t sub_21CA65190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  type metadata accessor for PMMoveAccountToGroupAlert(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  v35 = a1;
  sub_21CB84D54();
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_5:
    v38 = 0;
    v16 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  sub_21CA660E0(v15, v12, type metadata accessor for PMAccount);
  sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CA660E0(&v12[*(v9 + 24)], v8, type metadata accessor for PMAccount.Storage);
  sub_21C719720(v12, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719720(v8, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v38 = *v8;
  v16 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  if (v38)
  {
    v31 = v38;
    MEMORY[0x21CF15300]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CB85834();
    }

    sub_21CB85854();
    v16 = v36;
  }

LABEL_6:
  sub_21C6EA794(&v38, &qword_27CDF6930, &unk_21CBC3200);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  MEMORY[0x21CF14A20](v17);
  v18 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if ((*(*(v18 - 8) + 48))(v5, 1, v18) || (v19 = &v5[*(v18 + 24)], v20 = type metadata accessor for PMSharingGroup(0), (*(*(v20 - 8) + 48))(v19, 1, v20)))
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v32 = &v19[*(v20 + 20)];
    v21 = *v32;
    v22 = v32[1];
  }

  sub_21C6EA794(v5, &qword_27CDEB700, &unk_21CBA24F0);
  v23 = sub_21C7C1BFC(v16, v21, v22);
  v25 = v24;

  v36 = v23;
  v37 = v25;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v27 = v34;
  *v34 = result;
  v27[1] = v28;
  *(v27 + 16) = v29 & 1;
  v27[3] = v30;
  return result;
}

uint64_t sub_21CA65630(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  result = (*(*(v3 - 8) + 48))(a1, 1, v3);
  if (result != 1)
  {
    type metadata accessor for PMMoveAccountToGroupAlert(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21CA65710(uint64_t a1)
{
  v3 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA65630(a1, v4);
}

uint64_t sub_21CA65780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6EDBAC(a1, v8, &qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CA61988(v8, v11);
  MEMORY[0x21CF14400](v11, a2, v9, a3);
  return sub_21C719720(v11, type metadata accessor for PMMoveAccountToGroupAlert);
}

uint64_t sub_21CA65914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6940, &qword_21CBC2180);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  if ((static PMAccount.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v61 = v18;
  v62 = v12;
  v57 = v7;
  v22 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v63 = v4;
  v58 = v22;
  v59 = a1;
  v23 = *(v22 + 20);
  v24 = *(v16 + 48);
  sub_21C6EDBAC(a1 + v23, v21, &qword_27CDF7670, &unk_21CBAA8F0);
  v60 = a2;
  v25 = a2 + v23;
  v26 = v63;
  sub_21C6EDBAC(v25, &v21[v24], &qword_27CDF7670, &unk_21CBAA8F0);
  v27 = *(v5 + 48);
  if (v27(v21, 1, v26) == 1)
  {
    if (v27(&v21[v24], 1, v26) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_21C6EDBAC(v21, v15, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v27(&v21[v24], 1, v26) == 1)
  {
    sub_21C719720(v15, type metadata accessor for PMSharingGroup);
LABEL_9:
    v33 = &qword_27CDF6940;
    v34 = &qword_21CBC2180;
LABEL_26:
    v37 = v21;
    goto LABEL_27;
  }

  v35 = v64;
  sub_21CA66148(&v21[v24], v64, type metadata accessor for PMSharingGroup);
  sub_21CB85C44();
  sub_21C7060A8(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v67 == v65 && v68 == v66)
  {
  }

  else
  {
    v38 = sub_21CB86344();

    if ((v38 & 1) == 0)
    {
LABEL_25:
      sub_21C719720(v35, type metadata accessor for PMSharingGroup);
      sub_21C719720(v15, type metadata accessor for PMSharingGroup);
      v33 = &qword_27CDF7670;
      v34 = &unk_21CBAA8F0;
      goto LABEL_26;
    }
  }

  v39 = v26[5];
  v40 = *&v15[v39];
  v41 = *&v15[v39 + 8];
  v42 = (v35 + v39);
  if ((v40 != *v42 || v41 != v42[1]) && (sub_21CB86344() & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((sub_21C967680(*&v15[v26[6]], *(v35 + v26[6])) & 1) == 0)
  {
    goto LABEL_25;
  }

  v43 = v26[7];
  v44 = *&v15[v43];
  v45 = *&v15[v43 + 8];
  v46 = (v35 + v43);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_21CB86344() & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_21C719720(v35, type metadata accessor for PMSharingGroup);
  sub_21C719720(v15, type metadata accessor for PMSharingGroup);
LABEL_4:
  sub_21C6EA794(v21, &qword_27CDF7670, &unk_21CBAA8F0);
  v28 = *(v58 + 24);
  v29 = *(v16 + 48);
  v30 = v26;
  v31 = v61;
  sub_21C6EDBAC(v59 + v28, v61, &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21C6EDBAC(v60 + v28, v31 + v29, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v27(v31, 1, v30) == 1)
  {
    if (v27((v31 + v29), 1, v30) == 1)
    {
LABEL_6:
      sub_21C6EA794(v31, &qword_27CDF7670, &unk_21CBAA8F0);
      return 1;
    }

    goto LABEL_15;
  }

  v36 = v62;
  sub_21C6EDBAC(v31, v62, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v27((v31 + v29), 1, v30) != 1)
  {
    v47 = v57;
    sub_21CA66148(v31 + v29, v57, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21C7060A8(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v67 == v65 && v68 == v66)
    {
    }

    else
    {
      v48 = sub_21CB86344();

      if ((v48 & 1) == 0)
      {
LABEL_41:
        sub_21C719720(v47, type metadata accessor for PMSharingGroup);
        sub_21C719720(v62, type metadata accessor for PMSharingGroup);
        v33 = &qword_27CDF7670;
        v34 = &unk_21CBAA8F0;
        v37 = v31;
        goto LABEL_27;
      }
    }

    v49 = v63[5];
    v50 = &v62[v49];
    v51 = *&v62[v49 + 8];
    v52 = (v47 + v49);
    if (*v50 == *v52 && v51 == v52[1] || (sub_21CB86344()) && (sub_21C967680(*&v62[v63[6]], *(v47 + v63[6])))
    {
      if (v53 = v63[7], v54 = &v62[v53], v55 = *&v62[v53 + 8], v56 = (v47 + v53), *v54 == *v56) && v55 == v56[1] || (sub_21CB86344())
      {
        sub_21C719720(v47, type metadata accessor for PMSharingGroup);
        sub_21C719720(v62, type metadata accessor for PMSharingGroup);
        goto LABEL_6;
      }
    }

    goto LABEL_41;
  }

  sub_21C719720(v36, type metadata accessor for PMSharingGroup);
LABEL_15:
  v33 = &qword_27CDF6940;
  v34 = &qword_21CBC2180;
  v37 = v31;
LABEL_27:
  sub_21C6EA794(v37, v33, v34);
  return 0;
}

uint64_t sub_21CA660E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA66148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_21CA661B0()
{
  v1 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21CA63918(v0 + v2, v5);
}

uint64_t sub_21CA662DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21CA63C84(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_21CA6642C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA6649C()
{
  result = qword_27CDF6948;
  if (!qword_27CDF6948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6928, &unk_21CBC2070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6900, &unk_21CBC2048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6908, &qword_21CBC2058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6910, &unk_21CBC2060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC150, &unk_21CBA4F60);
    type metadata accessor for PMMoveAccountToGroupAlert.Configuration(255);
    sub_21C6EADEC(&qword_27CDF6918, &qword_27CDF6908, &qword_21CBC2058, MEMORY[0x277CE04B0]);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDF6920, &qword_27CDF6910, &unk_21CBC2060, MEMORY[0x277CE14C0]);
    sub_21C7FC578();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB780, &qword_27CDEB708, &unk_21CBC2080, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6948);
  }

  return result;
}

void sub_21CA66728(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21C70640C(319);
      if (v3 <= 0x3F)
      {
        sub_21C72CC94(319, &qword_27CDF6960, type metadata accessor for PMMoveAccountToGroupPicker.Selection, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C72CC94(319, &qword_27CDF6968, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21CA668D8(319);
            if (v6 <= 0x3F)
            {
              sub_21C7210DC();
              if (v7 <= 0x3F)
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

void sub_21CA668D8(uint64_t a1)
{
  if (!qword_27CDF6970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF6970);
    }
  }
}

void sub_21CA6693C(uint64_t a1)
{
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(319);
  if (v1 <= 0x3F)
  {
    sub_21C72CC94(319, &qword_27CDF6988, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_21CA66A30(uint64_t a1)
{
  sub_21C72CC94(319, &qword_27CDEABC0, MEMORY[0x277D49978], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_21CA66AB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB728, &unk_21CBA2510);
  v32 = v15;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v30 - v17;
  swift_getKeyPath(byte_21CBC23E0, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  sub_21CB84F44();

  sub_21C6EDBAC(v14, v11, &qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CA61988(v11, &v18[*(v15 + 36)]);
  sub_21C6EA794(v14, &qword_27CDF68C0, &qword_21CBC1F78);
  v19 = v31;
  sub_21C6EDBAC(v31, v18, &qword_27CDEB6C0, &qword_21CBA2490);
  swift_getKeyPath(aP_89);
  sub_21CB84F44();

  v20 = swift_allocObject();
  v21 = v35;
  *(v20 + 16) = a1;
  *(v20 + 24) = v21;
  v22 = v19;
  v23 = v33;
  sub_21C6EDBAC(v22, v33, &qword_27CDEB6C0, &qword_21CBA2490);
  v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v25 = (v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_21C716934(v23, v26 + v24, &qword_27CDEB6C0, &qword_21CBA2490);
  v27 = (v26 + v25);
  *v27 = a1;
  v27[1] = v21;
  sub_21C71DD5C(a1, v21);
  sub_21C71DD5C(a1, v21);
  type metadata accessor for PMAccount(0);
  type metadata accessor for PMNewGroupFlow(0);
  sub_21C7D9E6C();
  sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v28 = v37;
  sub_21CB847C4();

  sub_21C6EA794(v28, &qword_27CDEB1E8, &qword_21CBA13A0);
  return sub_21C6EA794(v18, &qword_27CDEB728, &unk_21CBA2510);
}

uint64_t sub_21CA66F38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a2;
  v46 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368);
  v36 = *(v3 - 8);
  v4 = v36;
  v37 = v3;
  v43 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69E0, &qword_21CBC2378);
  v41 = v14;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v35 - v16;
  swift_getKeyPath(byte_21CBC23E0, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  sub_21CB84F44();

  sub_21C6EDBAC(v13, v10, &qword_27CDF68C0, &qword_21CBC1F78);
  v18 = *(v14 + 36);
  v39 = v17;
  sub_21CA61988(v10, &v17[v18]);
  sub_21C6EA794(v13, &qword_27CDF68C0, &qword_21CBC1F78);
  v19 = *(v4 + 16);
  v20 = v17;
  v21 = v40;
  v22 = v37;
  v19(v20, v40, v37);
  swift_getKeyPath(aP_89);
  sub_21CB84F44();

  v23 = swift_allocObject();
  v25 = v44;
  v24 = v45;
  *(v23 + 16) = v44;
  *(v23 + 24) = v24;
  v26 = v42;
  v19(v42, v21, v22);
  v27 = v36;
  v28 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v26, v22);
  v31 = (v30 + v29);
  *v31 = v25;
  v31[1] = v24;
  sub_21C71DD5C(v25, v24);
  sub_21C71DD5C(v25, v24);
  type metadata accessor for PMAccount(0);
  type metadata accessor for PMNewGroupFlow(0);
  sub_21CA6EDD4();
  sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v32 = v38;
  v33 = v39;
  sub_21CB847C4();

  sub_21C6EA794(v32, &qword_27CDEB1E8, &qword_21CBA13A0);
  return sub_21C6EA794(v33, &qword_27CDF69E0, &qword_21CBC2378);
}

uint64_t sub_21CA673E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a2;
  v38 = a3;
  v42 = a6;
  v33 = *(a4 - 8);
  v36 = *(v33 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v32 - v13;
  type metadata accessor for PMMoveAccountToGroupAlert(255);
  v39 = sub_21CB828F4();
  v41 = *(v39 - 8);
  *&v15 = MEMORY[0x28223BE20](v39).n128_u64[0];
  v40 = v32 - v16;
  swift_getKeyPath(byte_21CBC23E0, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  sub_21CB84F44();

  v17 = v6;
  sub_21CA65780(v14, a4, a5);
  sub_21C6EA794(v14, &qword_27CDF68C0, &qword_21CBC1F78);
  swift_getKeyPath(aP_89);
  sub_21CB84F44();

  v18 = swift_allocObject();
  v32[1] = v18;
  v19 = v37;
  v20 = v38;
  *(v18 + 16) = v37;
  *(v18 + 24) = v20;
  v21 = v33;
  v22 = v34;
  (*(v33 + 16))(v34, v17, a4);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = (v36 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  (*(v21 + 32))(v25 + v23, v22, a4);
  v26 = (v25 + v24);
  *v26 = v19;
  v26[1] = v20;
  sub_21C71DD5C(v19, v20);
  sub_21C71DD5C(v19, v20);
  type metadata accessor for PMAccount(0);
  type metadata accessor for PMNewGroupFlow(0);
  v27 = sub_21C7060F0(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert, &unk_21CBC1FF8);
  v43 = a5;
  v44 = v27;
  v28 = v39;
  swift_getWitnessTable();
  sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v29 = v35;
  v30 = v40;
  sub_21CB847C4();

  sub_21C6EA794(v29, &qword_27CDEB1E8, &qword_21CBA13A0);
  return (*(v41 + 8))(v30, v28);
}

uint64_t sub_21CA678BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v2, v9, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_21CA70198(v9, a1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21C716934(v9, v6, &qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x21CF14A20](v4);
  return sub_21C6EA794(v6, &qword_27CDEB6B8, &qword_21CBA2488);
}

uint64_t sub_21CA67A30(uint64_t a1)
{
  v3 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v1, v11, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C716934(v11, v8, &qword_27CDEB6B8, &qword_21CBA2488);
    sub_21CA6F9A4(a1, v5, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
    sub_21CB84F34();
    sub_21CA70138(a1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
    return sub_21C6EA794(v8, &qword_27CDEB6B8, &qword_21CBA2488);
  }

  else
  {
    sub_21CA70138(v1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    sub_21CA70198(a1, v1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
    swift_storeEnumTagMultiPayload();
    return sub_21CA70138(v11, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  }
}

uint64_t sub_21CA67C64(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v1, v15, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v16 = (*(v7 + 48))(v15, 2, v6);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    return MEMORY[0x21CF15F90](v17);
  }

  else
  {
    sub_21C716934(v15, v12, &unk_27CDF20B0, &unk_21CBA0090);
    MEMORY[0x21CF15F90](0);
    sub_21C6EDBAC(v12, v9, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      sub_21CB864A4();
      sub_21C7060F0(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      sub_21CB85494();
      (*(v3 + 8))(v5, v2);
    }

    return sub_21C6EA794(v12, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CA67F7C()
{
  sub_21CB86484();
  sub_21CA67C64(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CA67FC0(uint64_t a1)
{
  sub_21CB86484();
  sub_21CA67C64(v2);
  return sub_21CB864D4();
}

void *sub_21CA68064()
{
  type metadata accessor for PMMoveAccountToGroupPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  return sub_21CB84D54();
}

uint64_t sub_21CA680BC(char *a1)
{
  v2 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMMoveAccountToGroupPicker(0);
  sub_21CA6F9A4(a1, v4, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D64();
  return sub_21CA6818C(a1);
}

uint64_t sub_21CA6818C(char *a1)
{
  v2 = v1;
  v61 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v50);
  v49 = &v48 - v3;
  v58 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v58);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v48 - v6;
  v52 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v48 - v11;
  v12 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v59 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v51 = type metadata accessor for PMAccount(0);
  v30 = *(v51 + 24);
  v60 = v2;
  sub_21CA6F9A4(v2 + v30, v17, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v17, v14, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v14[*(v12 + 72)], v23, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v14, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v31 = *v17;
    sub_21CB85B94();
  }

  sub_21C716934(v23, v29, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v19 + 56))(v29, 0, 2, v18);
  v32 = v61;
  v33 = sub_21CA72AC4(v61, v29);
  result = sub_21CA70138(v29, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  if ((v33 & 1) == 0)
  {
    sub_21CA6F9A4(v32, v26, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v35 = (*(v19 + 48))(v26, 2, v18);
    if (v35)
    {
      if (v35 == 1)
      {
        v36 = sub_21CB85C44();
        v37 = v59;
        (*(*(v36 - 8) + 56))(v59, 1, 1, v36);
        sub_21CA6E3B8(v37);
        return sub_21C6EA794(v37, &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        v40 = v54;
        sub_21CA6F9A4(v60, v54, type metadata accessor for PMAccount);
        (*(*(v51 - 8) + 56))(v40, 0, 1);
        type metadata accessor for PMMoveAccountToGroupPicker(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
        v41 = v55;
        sub_21CB84D54();
        v42 = v53;
        sub_21CA6F9A4(v41, v53, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v43 = v42;
          v44 = v49;
          sub_21C716934(v43, v49, &qword_27CDEB6B8, &qword_21CBA2488);
          v45 = v56;
          MEMORY[0x21CF14A20](v50);
          sub_21C6EA794(v44, &qword_27CDEB6B8, &qword_21CBA2488);
        }

        else
        {
          v45 = v56;
          sub_21CA70198(v42, v56, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
        }

        v47 = v57;
        v46 = v58;
        sub_21CA70198(v45, v57, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
        sub_21C7D3344(v40, v47 + *(v46 + 20), &unk_27CDEBE60, &unk_21CB9FF40);
        sub_21CA67A30(v47);
        return sub_21CB84D64();
      }
    }

    else
    {
      v38 = v26;
      v39 = v59;
      sub_21C716934(v38, v59, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CA6E3B8(v39);
      return sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
    }
  }

  return result;
}

uint64_t sub_21CA688D0@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69C0, &unk_21CBC2350);
  MEMORY[0x28223BE20](v57);
  v62 = &v52 - v2;
  v3 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69C8, &qword_21CBC2360);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v52 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D8, &qword_21CBC2370);
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v52 - v12;
  v13 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  sub_21CB84D54();
  v59 = v15;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v11;
  sub_21CA69144(v11);
  if (EnumCaseMultiPayload == 1)
  {
    v18 = v58;
    v19 = v61;
    (*(v58 + 16))(v62, v11, v61);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    v21 = type metadata accessor for PMAccount(255);
    v22 = type metadata accessor for PMNewGroupFlow(255);
    v23 = sub_21CA6EDD4();
    v24 = sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    v25 = sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
    v64 = v20;
    v65 = v21;
    v66 = v22;
    v67 = v23;
    v68 = v24;
    v69 = v25;
    swift_getOpaqueTypeConformance2();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    v29 = sub_21CA6EF34();
    v64 = v28;
    v65 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_21CA6F154();
    v64 = v26;
    v65 = v27;
    v66 = OpaqueTypeConformance2;
    v67 = v31;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v18 + 8))(v17, v19);
  }

  else
  {
    sub_21CB84D74();
    swift_getKeyPath(byte_21CBC23B8);
    v32 = v54;
    sub_21CB84F44();

    sub_21C6EA794(v9, &qword_27CDF69C8, &qword_21CBC2360);
    v33 = v53;
    sub_21CA6F9A4(v1, v53, type metadata accessor for PMMoveAccountToGroupPicker);
    v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v35 = swift_allocObject();
    sub_21CA70198(v33, v35 + v34, type metadata accessor for PMMoveAccountToGroupPicker);
    v36 = v55;
    sub_21CA66F38(sub_21CA6F1D0, v35, v55);

    sub_21C6EA794(v32, &qword_27CDEB6B8, &qword_21CBA2488);
    (*(v58 + 8))(v17, v61);
    v37 = v56;
    v38 = v60;
    (*(v56 + 16))(v62, v36, v60);
    swift_storeEnumTagMultiPayload();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    v40 = type metadata accessor for PMAccount(255);
    v41 = type metadata accessor for PMNewGroupFlow(255);
    v42 = sub_21CA6EDD4();
    v43 = sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    v44 = sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
    v64 = v39;
    v65 = v40;
    v66 = v41;
    v67 = v42;
    v68 = v43;
    v69 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    v48 = sub_21CA6EF34();
    v64 = v47;
    v65 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_21CA6F154();
    v64 = v45;
    v65 = v46;
    v66 = v49;
    v67 = v50;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v37 + 8))(v36, v38);
  }

  return sub_21CA70138(v59, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
}

uint64_t sub_21CA69144@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69F0, &unk_21CBC2380);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = v96 - v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
  MEMORY[0x28223BE20](v114);
  v113 = v96 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A08, &qword_21CBC2390);
  MEMORY[0x28223BE20](v101);
  v111 = (v96 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A18, L"N\a©");
  MEMORY[0x28223BE20](v5 - 8);
  v108 = (v96 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A38, &qword_21CBC2510);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = v96 - v8;
  v112 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v9 = *(v112 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v112);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_21CA6F9A4(v1, v96 - v11, type metadata accessor for PMMoveAccountToGroupPicker);
  v12 = sub_21CB858B4();
  v13 = sub_21CB858A4();
  v14 = *(v9 + 80);
  v100 = ~v14;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  v18 = sub_21CA70198(v96 - v11, v16 + v15, type metadata accessor for PMMoveAccountToGroupPicker);
  MEMORY[0x28223BE20](v18);
  v19 = v96 - v11;
  v20 = v115;
  sub_21CA6F9A4(v115, v19, type metadata accessor for PMMoveAccountToGroupPicker);
  v102 = v12;
  v21 = sub_21CB858A4();
  v110 = v10;
  v109 = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v17;
  v103 = v15;
  sub_21CA70198(v19, v22 + v15, type metadata accessor for PMMoveAccountToGroupPicker);
  type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  sub_21CB84F64();
  v118 = v20;
  v117 = v20;
  v116 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A40, L"6\a3");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A48, L"b\aw");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A50, &qword_21CBC2528);
  sub_21CA72588();
  sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection, &unk_21CBC2294);
  sub_21C6EADEC(&qword_27CDF6A88, &qword_27CDF6A48, L"b\aw", MEMORY[0x277CE14C0]);
  sub_21CA7277C();
  sub_21CB84E34();
  v23 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v25 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v112 + 44);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  v98 = v26;
  v97 = v27;
  sub_21CB84D54();
  v99 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v28 = *(*(v99 - 1) + 64);
  MEMORY[0x28223BE20](v99);
  v29 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v96 - v31;
  MEMORY[0x28223BE20](v33);
  sub_21CA6F9A4(v25, v25, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  v96[2] = v23;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
    v96[1] = v96;
    MEMORY[0x28223BE20](v34);
    v36 = v96 - v35;
    sub_21C716934(v25, v96 - v35, &qword_27CDEB6B8, &qword_21CBA2488);
    MEMORY[0x21CF14A20](v34);
    sub_21C6EA794(v36, &qword_27CDEB6B8, &qword_21CBA2488);
    sub_21CA70138(v25, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  }

  else
  {
    sub_21CA70138(v25, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    sub_21CA70198(v25, v32, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21CA70198(v32, v29, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v37 = v111;
  v38 = v111 + *(v101 + 36);
  sub_21C6EDBAC(v29, v38, &qword_27CDEB700, &unk_21CBA24F0);
  v39 = sub_21CA70138(v29, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v40 = v110;
  MEMORY[0x28223BE20](v39);
  v41 = v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v115, v41, type metadata accessor for PMMoveAccountToGroupPicker);
  v42 = (v109 + 16) & v100;
  v43 = swift_allocObject();
  v101 = v42;
  sub_21CA70198(v41, v43 + v42, type metadata accessor for PMMoveAccountToGroupPicker);
  v44 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB708, &unk_21CBC2080) + 36));
  *v44 = sub_21CA72944;
  v44[1] = v43;
  v45 = sub_21C716934(v108, v37, &qword_27CDF6A18, L"N\a©");
  v108 = v96;
  MEMORY[0x28223BE20](v45);
  v46 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = v96 - v46;
  v48 = sub_21CB84D54();
  v100 = v96;
  MEMORY[0x28223BE20](v48);
  v49 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = v96 - v51;
  MEMORY[0x28223BE20](v53);
  v54 = v96 - v46;
  sub_21CA6F9A4(v96 - v46, v96 - v46, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v113;
  if (EnumCaseMultiPayload == 1)
  {
    v98 = v96;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
    v97 = v96;
    MEMORY[0x28223BE20](v57);
    v59 = v96 - v58;
    sub_21C716934(v54, v96 - v58, &qword_27CDEB6B8, &qword_21CBA2488);
    MEMORY[0x21CF14A20](v57);
    sub_21C6EA794(v59, &qword_27CDEB6B8, &qword_21CBA2488);
    sub_21CA70138(v47, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  }

  else
  {
    sub_21CA70138(v96 - v46, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    sub_21CA70198(v96 - v46, v52, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21CA70198(v52, v49, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v60 = v56 + *(v114 + 36);
  sub_21C6EDBAC(&v49[*(v99 + 5)], v60, &unk_27CDEBE60, &unk_21CB9FF40);
  v61 = sub_21CA70138(v49, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v99 = v96;
  v62 = v110;
  MEMORY[0x28223BE20](v61);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = v115;
  sub_21CA6F9A4(v115, v96 - v63, type metadata accessor for PMMoveAccountToGroupPicker);
  v65 = v101;
  v66 = swift_allocObject();
  sub_21CA70198(v96 - v63, v66 + v65, type metadata accessor for PMMoveAccountToGroupPicker);
  v67 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6F8, &qword_21CBC23B0) + 36));
  *v67 = sub_21CA7295C;
  v67[1] = v66;
  v68 = sub_21C716934(v111, v56, &qword_27CDF6A08, &qword_21CBC2390);
  v111 = v96;
  MEMORY[0x28223BE20](v68);
  sub_21CA6F9A4(v64, v96 - v63, type metadata accessor for PMMoveAccountToGroupPicker);
  v69 = sub_21CB858A4();
  v70 = v103;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;
  *(v71 + 24) = MEMORY[0x277D85700];
  sub_21CA70198(v96 - v63, v71 + v70, type metadata accessor for PMMoveAccountToGroupPicker);
  v72 = sub_21CB858E4();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v96 - v75;
  sub_21CB858C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v109 = sub_21CB827C4();
    v110 = v96;
    v108 = *(v109 - 8);
    MEMORY[0x28223BE20](v109);
    v103 = v72;
    v78 = v96 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_21CB86094();

    v120 = 0xD00000000000003FLL;
    v121 = 0x800000021CB99270;
    v119 = 143;
    v79 = sub_21CB862F4();
    MEMORY[0x21CF151F0](v79);

    v81 = MEMORY[0x28223BE20](v80);
    v82 = v96 - v75;
    v83 = v96 - v75;
    v84 = v103;
    (*(v73 + 16))(v82, v83, v103, v81);
    sub_21CB827B4();
    (*(v73 + 8))(v76, v84);
    v85 = v104;
    sub_21C716934(v113, v104, &qword_27CDEA5B8, &qword_21CB9E6B8);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5C0, &qword_21CB9E6C0);
    (v108[4])(v85 + *(v86 + 36), v78, v109);
  }

  else
  {
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5C8, &qword_21CB9E6C8);
    v85 = v104;
    v88 = (v104 + *(v87 + 36));
    v89 = sub_21CB824F4();
    (*(v73 + 32))(&v88[*(v89 + 20)], v76, v72);
    *v88 = &unk_21CBC2550;
    *(v88 + 1) = v71;
    sub_21C716934(v113, v85, &qword_27CDEA5B8, &qword_21CB9E6B8);
  }

  v90 = (v115 + *(v112 + 48));
  v92 = *v90;
  v91 = v90[1];
  v120 = v92;
  v121 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AA8, &unk_21CBC2560);
  sub_21CB84D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
  v93 = sub_21CA6EF34();
  v120 = v114;
  v121 = v93;
  swift_getOpaqueTypeConformance2();
  sub_21CA6F154();
  v94 = v107;
  sub_21CB84934();

  return (*(v106 + 8))(v85, v94);
}

uint64_t sub_21CA6A2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(a1, v9, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_21CA70198(v9, a2, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21C716934(v9, v6, &qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x21CF14A20](v4);
  return sub_21C6EA794(v6, &qword_27CDEB6B8, &qword_21CBA2488);
}

uint64_t sub_21CA6A44C(uint64_t a1)
{
  v2 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(a1, v4, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  return sub_21CA67A30(v4);
}

uint64_t sub_21CA6A4E8(char a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 32) + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(ObjectType, v5);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = *(v3 + 24);
    v8 = swift_getObjectType();
    (*(v7 + 72))(v8, v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_21CA6A5B0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AC8, &qword_21CBC2618);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AD0, &qword_21CBC2620);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v48 - v7;
  v48 = sub_21CB81024();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AD8, &unk_21CBC2628);
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v48 - v14;
  v15 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D54();
  v22 = sub_21CB85C44();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v23 - 8) + 56))(v17, 0, 2, v23);
  v24 = sub_21CA72AC4(v20, v17);
  sub_21CA70138(v17, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  sub_21CA70138(v20, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v58 = (v24 & 1) == 0;
  v59 = v2;
  if (*(v2 + *(v21 + 24)) == 1)
  {
    sub_21CB81014();
    v29 = sub_21CB81004();
    v31 = v30;
    (*(v8 + 8))(v10, v48);
    v60 = v29;
    v61 = v31;
    sub_21C71F3FC();
    v25 = sub_21CB84054();
    v27 = v32 & 1;
  }

  v60 = v25;
  v61 = v26;
  v62 = v27;
  v63 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AE0, &qword_21CBC2638);
  sub_21C87DED8();
  sub_21C6EADEC(&qword_27CDF6AE8, &qword_27CDF6AE0, &qword_21CBC2638, MEMORY[0x277CE14C0]);
  v33 = sub_21CB85034();
  if (v24)
  {
    v34 = 1;
    v36 = v53;
    v35 = v54;
    v37 = v52;
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    *(&v48 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
    sub_21CA735E4();
    v38 = v49;
    sub_21CB85054();
    v37 = v52;
    v36 = v53;
    v35 = v54;
    (*(v52 + 32))(v53, v38, v54);
    v34 = 0;
  }

  (*(v37 + 56))(v36, v34, 1, v35);
  v39 = *(v11 + 16);
  v40 = v50;
  v41 = v51;
  v42 = v57;
  v39(v51, v57, v50);
  v43 = v55;
  sub_21C6EDBAC(v36, v55, &qword_27CDF6AD0, &qword_21CBC2620);
  v44 = v56;
  v39(v56, v41, v40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B00, &unk_21CBC2650);
  sub_21C6EDBAC(v43, &v44[*(v45 + 48)], &qword_27CDF6AD0, &qword_21CBC2620);
  sub_21C6EA794(v36, &qword_27CDF6AD0, &qword_21CBC2620);
  v46 = *(v11 + 8);
  v46(v42, v40);
  sub_21C6EA794(v43, &qword_27CDF6AD0, &qword_21CBC2620);
  return (v46)(v41, v40);
}

uint64_t sub_21CA6AC7C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_21CA6ACD8(a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A40, L"6\a3");
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t sub_21CA6ACD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AC0, &qword_21CBC2610);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v10 = *(a1 + *(v9 + 28));
  v11 = (a1 + *(v9 + 20));
  v12 = v11[1];
  v17[0] = *v11;
  v17[1] = v12;
  if (v10 == 1)
  {
    sub_21C71F3FC();

    sub_21CB84CB4();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21CB83494();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_21C71F3FC();

    *v4 = sub_21CB84054();
    *(v4 + 1) = v14;
    v4[16] = v15 & 1;
    *(v4 + 3) = v16;
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    return sub_21CB83494();
  }
}

uint64_t sub_21CA6AF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = sub_21CB83374();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AB0, &qword_21CBC25C8);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v33 = &v32 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AB8, &unk_21CBC25D0);
  MEMORY[0x28223BE20](v36);
  v7 = &v32 - v6;
  v8 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A98, &qword_21CBC2540);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = *(a1 + *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D54();
  sub_21CA6B5B4(v10, v14);
  sub_21CA70138(v10, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  if (v15 == 1)
  {
    (*(v12 + 16))(v7, v14, v11);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v17 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v18 = sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection, &unk_21CBC2294);
    v40 = v16;
    v41 = v8;
    v42 = v17;
    v43 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = sub_21C7060F0(&qword_27CDF6AA0, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
    v40 = v11;
    v41 = v37;
    v42 = OpaqueTypeConformance2;
    v43 = v20;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v22 = v4;
    sub_21CB83364();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v24 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v25 = sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection, &unk_21CBC2294);
    v40 = v23;
    v41 = v8;
    v42 = v24;
    v43 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = sub_21C7060F0(&qword_27CDF6AA0, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
    v28 = v33;
    v29 = v37;
    sub_21CB840E4();
    (*(v34 + 8))(v22, v29);
    (*(v12 + 8))(v14, v11);
    v30 = v35;
    v31 = v38;
    (*(v35 + 16))(v7, v28, v38);
    swift_storeEnumTagMultiPayload();
    v40 = v11;
    v41 = v29;
    v42 = v26;
    v43 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v30 + 8))(v28, v31);
  }
}

uint64_t sub_21CA6B5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v46 = sub_21CB81024();
  v44 = *(v46 - 1);
  MEMORY[0x28223BE20](v46);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for PMSharingGroup(0);
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_21CB85C44();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  sub_21CA6F9A4(a1, v23, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v24 = (*(v15 + 48))(v23, 2, v14);
  if (v24)
  {
    if (v24 == 1)
    {
      v26 = v49;
      v25 = v50;
      v27 = v48;
      if (qword_27CDEA490 != -1)
      {
        swift_once();
      }

      v53 = qword_27CE18738;
      v54 = qword_27CE18740;
      sub_21C71F3FC();

      sub_21CB84CB4();
      v29 = v51;
      v28 = v52;
      goto LABEL_16;
    }

    v31 = v43;
    sub_21CB81014();
    v32 = sub_21CB81004();
    v34 = v33;
    v44[1](v31, v46);
    v53 = v32;
    v54 = v34;
    sub_21C71F3FC();
    v27 = v48;
    sub_21CB84CB4();
    v29 = v51;
    v28 = v52;
LABEL_15:
    v26 = v49;
    v25 = v50;
    goto LABEL_16;
  }

  v44 = v11;
  sub_21C716934(v23, v20, &unk_27CDF20B0, &unk_21CBA0090);
  v46 = v20;
  sub_21C6EDBAC(v20, v17, &unk_27CDF20B0, &unk_21CBA0090);
  v30 = v45;
  if ((*(v45 + 48))(v17, 1, v47) == 1)
  {
    sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
    v25 = v50;
    v29 = v51;
    v27 = v48;
  }

  else
  {
    (*(v30 + 32))(v13, v17, v47);
    type metadata accessor for PMMoveAccountToGroupPicker(0);
    sub_21CA1D444(v13, v8);
    v35 = (*(v42 + 48))(v8, 1, v9);
    v29 = v51;
    v27 = v48;
    if (v35 != 1)
    {
      v37 = v44;
      sub_21CA70198(v8, v44, type metadata accessor for PMSharingGroup);
      v38 = (v37 + *(v9 + 20));
      v39 = v38[1];
      v53 = *v38;
      v54 = v39;
      sub_21C71F3FC();

      sub_21CB84CB4();
      sub_21CA70138(v37, type metadata accessor for PMSharingGroup);
      (*(v30 + 8))(v13, v47);
      sub_21C6EA794(v46, &unk_27CDF20B0, &unk_21CBA0090);
      v28 = v52;
      goto LABEL_15;
    }

    (*(v30 + 8))(v13, v47);
    sub_21C6EA794(v8, &qword_27CDF7670, &unk_21CBAA8F0);
    v25 = v50;
  }

  v36 = v46;
  v28 = v52;
  if (qword_27CDEA498 != -1)
  {
    swift_once();
  }

  v53 = qword_27CE18748;
  v54 = qword_27CE18750;
  sub_21C71F3FC();

  sub_21CB84CB4();
  sub_21C6EA794(v36, &unk_27CDF20B0, &unk_21CBA0090);
  v26 = v49;
LABEL_16:
  v40 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA580, &qword_21CB9E690) + 36);
  sub_21CA6F9A4(v29, v40, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA588, &qword_21CB9E698) + 36)) = 1;
  return (*(v26 + 32))(v28, v27, v25);
}

uint64_t sub_21CA6BDB4()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v18 = type metadata accessor for PMAccount(0);
  sub_21CA6F9A4(v1 + *(v18 + 24), v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v7, v4, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v4[*(v2 + 72)], v11, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v19 = *v7;
    sub_21CB85B94();
  }

  sub_21C716934(v11, v17, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v9 + 56))(v17, 0, 2, v8);
  type metadata accessor for PMMoveAccountToGroupPicker(0);
  sub_21CA6F9A4(v17, v14, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D64();
  return sub_21CA70138(v17, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
}

uint64_t sub_21CA6C0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  if (result == 1)
  {
    return sub_21CA6BDB4();
  }

  return result;
}

uint64_t sub_21CA6C13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v3[10] = swift_task_alloc();
  v3[11] = sub_21CB858B4();
  v3[12] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_21CA6C240, v5, v4);
}

uint64_t sub_21CA6C240()
{
  v0[15] = type metadata accessor for PMMoveAccountToGroupPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  sub_21CB84D54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[10];

    sub_21CA70138(v1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_21CA70138(v0[10], type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_21CA6C3B0;

    return sub_21CA6C80C();
  }
}

uint64_t sub_21CA6C3B0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_21CA6C4D8, v4, v3);
}

uint64_t sub_21CA6C4D8()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + *(*(v0 + 120) + 32) + 8);
  v3 = sub_21CB85C44();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 160))(v5, v4, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 153) = v8 & 1;
  sub_21C6EA794(*(v0 + 64), &unk_27CDF20B0, &unk_21CBA0090);

  return MEMORY[0x2822009F8](sub_21CA6C608, 0, 0);
}

uint64_t sub_21CA6C608(uint64_t a1)
{
  *(v1 + 144) = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA6C694, v3, v2);
}

uint64_t sub_21CA6C694()
{
  v1 = *(v0 + 153);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 56);

  v5 = (v4 + *(v3 + 48));
  v7 = *v5;
  v6 = v5[1];
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AA8, &unk_21CBC2560);
  sub_21CB84D64();
  v8 = (v4 + *(v3 + 52));
  v9 = *v8;
  v10 = *(v8 + 1);
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 152) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21CA6C798, v11, v12);
}

uint64_t sub_21CA6C798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CA6C80C()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v1[4] = swift_task_alloc();
  v2 = sub_21CB85C44();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = *(type metadata accessor for PMSharingGroup(0) - 8);
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA6C990, v4, v3);
}

void sub_21CA6C990()
{

  v1 = sub_21CB12DEC(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  swift_getKeyPath(asc_21CBC2580);
  swift_getKeyPath(asc_21CBC25A8);
  sub_21CB81DB4();

  v40 = v0[2];
  v3 = *(v40 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[6];
    v39 = v0[8];
    v38 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v41 = (v5 + 16);
    v34 = v5;
    v35 = (v5 + 8);
    v36 = (v5 + 56);
    v37 = *(v0[3] + *(v2 + 32) + 8);
    do
    {
      if (v4 >= *(v40 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v6 = v0[9];
      v7 = v0[7];
      v9 = v0[4];
      v8 = v0[5];
      sub_21CA6F9A4(v38 + *(v39 + 72) * v4, v6, type metadata accessor for PMSharingGroup);
      v10 = *v41;
      (*v41)(v7, v6, v8);
      v10(v9, v6, v8);
      sub_21CA70138(v6, type metadata accessor for PMSharingGroup);
      (*v36)(v9, 0, 1, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = v0[3];
        v11 = v0[4];
        v13 = *(v37 + 24);
        ObjectType = swift_getObjectType();
        v15 = (*(v13 + 160))(v12, v11, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
      }

      v16 = v0[7];
      sub_21C6EA794(v0[4], &unk_27CDF20B0, &unk_21CBA0090);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v1;
      v18 = sub_21CB10A54(v16);
      v20 = v1[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_25;
      }

      v24 = v19;
      if (v1[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v18;
          sub_21C8D6D88();
          v18 = v32;
          v1 = v42;
        }
      }

      else
      {
        v25 = v0[7];
        sub_21C8D4014(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_21CB10A54(v25);
        if ((v24 & 1) != (v26 & 1))
        {

          sub_21CB863B4();
          return;
        }
      }

      v27 = v0[7];
      v28 = v0[5];
      if (v24)
      {
        *(v1[7] + v18) = v15 & 1;
        (*v35)(v27, v28);
      }

      else
      {
        v1[(v18 >> 6) + 8] |= 1 << v18;
        v29 = v18;
        v10(v1[6] + *(v34 + 72) * v18, v27, v28);
        *(v1[7] + v29) = v15 & 1;
        (*(v34 + 8))(v27, v28);
        v30 = v1[2];
        v22 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v22)
        {
          goto LABEL_26;
        }

        v1[2] = v31;
      }

      ++v4;
    }

    while (v3 != v4);
  }

  v33 = v0[1];

  v33(v1);
}

uint64_t sub_21CA6CDE4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v54 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A98, &qword_21CBC2540);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v6;
  v7 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B08, &qword_21CBC2660);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - v12;
  v13 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B10, &unk_21CBC2668);
  MEMORY[0x28223BE20](v20 - 8);
  v56 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = &v48 - v23;
  if (v49)
  {
    (*(v17 + 56))(&v48 - v23, 1, 1, v16, v24);
  }

  else
  {
    v26 = sub_21CB85C44();
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    (*(*(v27 - 8) + 56))(v15, 0, 2, v27);
    sub_21CA6B5B4(v15, v19);
    sub_21CA70138(v15, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v19[*(v16 + 36)] = 0;
    sub_21C716934(v19, v25, &qword_27CDF6AF0, &unk_21CBC2640);
    (*(v17 + 56))(v25, 0, 1, v16, v28);
  }

  swift_getKeyPath(asc_21CBC2580);
  swift_getKeyPath(asc_21CBC25A8);
  sub_21CB81DB4();

  sub_21CA6F9A4(a2, &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupPicker);
  v29 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v30 = swift_allocObject();
  sub_21CA70198(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PMMoveAccountToGroupPicker);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB85C44();
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380, MEMORY[0x277D83980]);
  sub_21CA735E4();
  sub_21C7060F0(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
  v31 = v57;
  sub_21CB84FF4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v32 - 8) + 56))(v15, 2, 2, v32);
  v33 = v59;
  sub_21CA6B5B4(v15, v59);
  sub_21CA70138(v15, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v48 = v25;
  v34 = v56;
  sub_21C6EDBAC(v25, v56, &qword_27CDF6B10, &unk_21CBC2668);
  v36 = v51;
  v35 = v52;
  v50 = *(v51 + 16);
  v37 = v58;
  (v50)(v58, v31, v52);
  v38 = v53;
  v39 = *(v53 + 16);
  v40 = v55;
  v39(v60, v33, v55);
  v41 = v34;
  v42 = v54;
  sub_21C6EDBAC(v41, v54, &qword_27CDF6B10, &unk_21CBC2668);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B18, &qword_21CBC2678);
  (v50)(v42 + *(v43 + 48), v37, v35);
  v44 = v60;
  v39((v42 + *(v43 + 64)), v60, v40);
  v45 = *(v38 + 8);
  v45(v59, v40);
  v46 = *(v36 + 8);
  v46(v57, v35);
  sub_21C6EA794(v48, &qword_27CDF6B10, &unk_21CBC2668);
  v45(v44, v40);
  v46(v58, v35);
  return sub_21C6EA794(v56, &qword_27CDF6B10, &unk_21CBC2668);
}

uint64_t sub_21CA6D5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v9, a1, v10);
  v13 = *(v11 + 56);
  v13(v9, 0, 1, v10);
  (*(v4 + 56))(v9, 0, 2, v3);
  v14 = v18;
  sub_21CA6B5B4(v9, v18);
  sub_21CA70138(v9, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v12(v6, v17, v10);
  v13(v6, 0, 1, v10);
  v15 = sub_21CA6D824(v6);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
  *(v14 + *(result + 36)) = (v15 & 1) == 0;
  return result;
}

uint64_t sub_21CA6D824(uint64_t a1)
{
  v88 = a1;
  v80 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v80);
  v79 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21CB85C44();
  v3 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v73 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v86);
  v87 = &v73 - v7;
  v8 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v73 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v83 = &v73 - v22;
  MEMORY[0x28223BE20](v23);
  v85 = &v73 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  v31 = *(type metadata accessor for PMAccount(0) + 24);
  v89 = v1;
  sub_21CA6F9A4(v1 + v31, v16, type metadata accessor for PMAccount.Storage);
  v84 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v77 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21CA70198(v16, v10, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v10[*(v8 + 72)], v27, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v10, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v33 = *v16;
    sub_21CB85B94();
  }

  sub_21C716934(v27, v30, &unk_27CDF20B0, &unk_21CBA0090);
  v81 = v3;
  v34 = *(v3 + 48);
  v35 = v90;
  v36 = v34(v30, 1, v90);
  sub_21C6EA794(v30, &unk_27CDF20B0, &unk_21CBA0090);
  v37 = v88;
  if (v36 == 1)
  {
    v38 = 1;
    if (v34(v88, 1, v35) == 1)
    {
      return v38 & 1;
    }
  }

  v82 = v34;
  sub_21CA6F9A4(v89 + v31, v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v13, v10, type metadata accessor for PMAccount.MockData);
    v39 = v83;
    sub_21C6EDBAC(&v10[*(v77 + 72)], v83, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v10, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v40 = *v13;
    v39 = v83;
    sub_21CB85B94();
  }

  v41 = v90;
  v42 = v82;
  v43 = v85;
  sub_21C716934(v39, v85, &unk_27CDF20B0, &unk_21CBA0090);
  v44 = v87;
  v45 = *(v86 + 48);
  sub_21C6EDBAC(v43, v87, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v37, v44 + v45, &unk_27CDF20B0, &unk_21CBA0090);
  if (v42(v44, 1, v41) == 1)
  {
    sub_21C6EA794(v43, &unk_27CDF20B0, &unk_21CBA0090);
    if (v42(v44 + v45, 1, v41) == 1)
    {
      sub_21C6EA794(v44, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_26:
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_14;
  }

  v46 = v78;
  sub_21C6EDBAC(v44, v78, &unk_27CDF20B0, &unk_21CBA0090);
  if (v42(v44 + v45, 1, v41) == 1)
  {
    sub_21C6EA794(v43, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v81 + 8))(v46, v41);
LABEL_14:
    sub_21C6EA794(v44, &qword_27CDEAC40, &qword_21CBA1A40);
    goto LABEL_15;
  }

  v58 = v81;
  v59 = v44 + v45;
  v60 = v75;
  (*(v81 + 32))(v75, v59, v41);
  sub_21C7060F0(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
  v61 = sub_21CB85574();
  v62 = *(v58 + 8);
  v62(v60, v41);
  sub_21C6EA794(v43, &unk_27CDF20B0, &unk_21CBA0090);
  v62(v46, v41);
  v42 = v82;
  v37 = v88;
  sub_21C6EA794(v44, &unk_27CDF20B0, &unk_21CBA0090);
  if (v61)
  {
    goto LABEL_26;
  }

LABEL_15:
  v47 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  v48 = v89;
  v49 = v79;
  sub_21CB84D54();
  v50 = swift_getEnumCaseMultiPayload();
  sub_21CA70138(v49, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (v50 == 1)
  {
    v51 = *(v48 + v47[8] + 8);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_26;
    }

    v52 = *(v51 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v52) = (*(v52 + 160))(v48, v37, ObjectType, v52);
    swift_unknownObjectRelease();
    v38 = v52 ^ 1;
  }

  else
  {
    v54 = v76;
    sub_21C6EDBAC(v37, v76, &unk_27CDF20B0, &unk_21CBA0090);
    if (v42(v54, 1, v41) == 1)
    {
      sub_21C6EA794(v54, &unk_27CDF20B0, &unk_21CBA0090);
      v55 = (v48 + v47[13]);
      v56 = *v55;
      v57 = *(v55 + 1);
      LOBYTE(v92) = v56;
      v93 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D54();
      v38 = v91 ^ 1;
    }

    else
    {
      v63 = v81;
      v64 = v74;
      (*(v81 + 32))(v74, v54, v41);
      v65 = (v48 + v47[12]);
      v67 = *v65;
      v66 = v65[1];
      v92 = v67;
      v93 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AA8, &unk_21CBC2560);
      sub_21CB84D54();
      v68 = v91;
      if (!*(v91 + 16) || (v69 = sub_21CB10A54(v64), (v70 & 1) == 0))
      {

        (*(v63 + 8))(v64, v41);
        goto LABEL_26;
      }

      v71 = *(*(v68 + 56) + v69);
      (*(v63 + 8))(v64, v41);

      v38 = v71 ^ 1;
    }
  }

  return v38 & 1;
}

uint64_t sub_21CA6E1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 56))(v9, 1, 2, v2, v7);
  sub_21CA6B5B4(v9, a1);
  sub_21CA70138(v9, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v10 = sub_21CB85C44();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_21CA6D824(v5);
  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
  *(a1 + *(result + 36)) = (v11 & 1) == 0;
  return result;
}

uint64_t sub_21CA6E3B8(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x28223BE20](v65);
  v64 = &v63 - v3;
  v4 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v63 - v7;
  v71 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v63 - v12;
  v13 = sub_21CB85C44();
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v63 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v33 - 8);
  v70 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v77 = &v63 - v36;
  v37 = *(type metadata accessor for PMAccount(0) + 24);
  v78 = v2;
  sub_21CA6F9A4(v2 + v37, v20, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v20, v17, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v17[*(v15 + 72)], v29, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v17, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v38 = *v20;
    sub_21CB85B94();
  }

  sub_21C716934(v29, v32, &unk_27CDF20B0, &unk_21CBA0090);
  v66 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v39 = *(v78 + *(v66 + 36) + 8);
  swift_getKeyPath(asc_21CBC2580);
  swift_getKeyPath(asc_21CBC25A8);
  sub_21CB81DB4();

  v40 = v79;
  sub_21C6EDBAC(v32, v26, &unk_27CDF20B0, &unk_21CBA0090);
  v41 = v68;
  v42 = *(v68 + 48);
  if (v42(v26, 1, v13) == 1)
  {
    sub_21C6EA794(v32, &unk_27CDF20B0, &unk_21CBA0090);
    v43 = type metadata accessor for PMSharingGroup(0);
    (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
  }

  else
  {
    v44 = *(v41 + 32);
    v63 = v39;
    v45 = v23;
    v46 = v67;
    v47 = v44(v67, v26, v13);
    MEMORY[0x28223BE20](v47);
    *(&v63 - 2) = v46;
    sub_21C968E80(sub_21CA1ECA4, v40, v77);
    v48 = v46;
    v23 = v45;
    (*(v41 + 8))(v48, v13);
    sub_21C6EA794(v32, &unk_27CDF20B0, &unk_21CBA0090);
  }

  swift_getKeyPath(asc_21CBC2580);
  swift_getKeyPath(asc_21CBC25A8);
  sub_21CB81DB4();

  v49 = v79;
  sub_21C6EDBAC(v69, v23, &unk_27CDF20B0, &unk_21CBA0090);
  if (v42(v23, 1, v13) == 1)
  {
    v50 = type metadata accessor for PMSharingGroup(0);
    v51 = v70;
    (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  }

  else
  {
    v52 = v67;
    v53 = (*(v41 + 32))(v67, v23, v13);
    MEMORY[0x28223BE20](v53);
    *(&v63 - 2) = v52;
    v51 = v70;
    sub_21C968E80(sub_21CA1EA74, v49, v70);
    (*(v41 + 8))(v52, v13);
  }

  v55 = v74;
  v54 = v75;
  v56 = v73;

  sub_21CA6F9A4(v78, v56, type metadata accessor for PMAccount);
  v57 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  sub_21C6EDBAC(v77, v56 + *(v57 + 20), &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21C6EDBAC(v51, v56 + *(v57 + 24), &qword_27CDF7670, &unk_21CBAA8F0);
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  sub_21CB84D54();
  v58 = v72;
  sub_21CA6F9A4(v55, v72, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v58;
    v60 = v64;
    sub_21C716934(v59, v64, &qword_27CDEB6B8, &qword_21CBA2488);
    MEMORY[0x21CF14A20](v65);
    sub_21C6EA794(v60, &qword_27CDEB6B8, &qword_21CBA2488);
  }

  else
  {
    sub_21CA70198(v58, v54, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  v61 = v76;
  sub_21CA70198(v54, v76, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21C7D3344(v56, v61, &qword_27CDEB700, &unk_21CBA24F0);
  sub_21CA67A30(v61);
  sub_21CB84D64();
  sub_21C6EA794(v51, &qword_27CDF7670, &unk_21CBAA8F0);
  return sub_21C6EA794(v77, &qword_27CDF7670, &unk_21CBAA8F0);
}

unint64_t sub_21CA6EDD4()
{
  result = qword_27CDF69E8;
  if (!qword_27CDF69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    sub_21CA6EF34();
    swift_getOpaqueTypeConformance2();
    sub_21CA6F154();
    swift_getOpaqueTypeConformance2();
    sub_21C7060F0(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert, &unk_21CBC1FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF69E8);
  }

  return result;
}

unint64_t sub_21CA6EF34()
{
  result = qword_27CDF69F8;
  if (!qword_27CDF69F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    sub_21CA6EFEC();
    sub_21C6EADEC(&qword_27CDEB778, &qword_27CDEB6F8, &qword_21CBC23B0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF69F8);
  }

  return result;
}

unint64_t sub_21CA6EFEC()
{
  result = qword_27CDF6A00;
  if (!qword_27CDF6A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A08, &qword_21CBC2390);
    sub_21CA6F0A4();
    sub_21C6EADEC(&qword_27CDEB780, &qword_27CDEB708, &unk_21CBC2080, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A00);
  }

  return result;
}

unint64_t sub_21CA6F0A4()
{
  result = qword_27CDF6A10;
  if (!qword_27CDF6A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A18, L"N\a©");
    sub_21C6EADEC(&qword_27CDF6A20, &qword_27CDF6A28, &unk_21CBC23A0, MEMORY[0x277CDF038]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A10);
  }

  return result;
}

unint64_t sub_21CA6F154()
{
  result = qword_27CDF6A30;
  if (!qword_27CDF6A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A30);
  }

  return result;
}

uint64_t sub_21CA6F1D0(char a1)
{
  v3 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA6A4E8(a1, v4);
}

uint64_t sub_21CA6F244@<X0>(uint64_t a1@<X0>, double (*a2)(uint64_t, __n128)@<X2>, uint64_t a3@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = sub_21CB82644();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  if (a2)
  {
    a2(1, v15);
  }

  sub_21CA6F9A4(a1, a3, type metadata accessor for PMAccount);
  v18 = type metadata accessor for PMAccount(0);
  (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  v19 = type metadata accessor for PMNewGroupFlow(0);
  v20 = a3 + v19[6];
  *(v20 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v20 + 32) = &off_282E572E8;
  *(a3 + v19[5]) = 0;
  v43 = v19[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  type metadata accessor for PMNewGroupFlow.Step(0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v47 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310, MEMORY[0x277D83970]);
  sub_21C7060F0(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  sub_21CB82654();
  (*(v11 + 16))(v13, v17, v10);
  sub_21CB84D44();
  (*(v11 + 8))(v17, v10);
  v22 = a3 + v19[8];
  v46 = 0;
  sub_21CB84D44();
  v23 = v48;
  *v22 = v47;
  *(v22 + 8) = v23;
  v24 = type metadata accessor for MoveAccountFailureAlertData(0);
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_21C6EDBAC(v9, v44, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v9, &qword_27CDECBD8, &unk_21CBA5300);
  v25 = v19[10];
  *(a3 + v25) = swift_getKeyPath(aP_90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v26 = v19[11];
  KeyPath = swift_getKeyPath(asc_21CBC2460);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v28 = (a3 + v26);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v47);

  type metadata accessor for PMAccountsState(0);
  sub_21C7060F0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v29 = sub_21CB82674();
  v31 = v30;

  *v28 = v29;
  v28[1] = v31;
  v32 = (a3 + v19[12]);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C7060F0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *v32 = sub_21CB82B84();
  v32[1] = v33;
  v34 = (a3 + v19[13]);
  v35 = swift_getKeyPath(byte_21CBC2488);
  sub_21CB86544();
  sub_21C7073E8(v35, v47);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7060F0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v36 = sub_21CB82674();
  v38 = v37;

  *v34 = v36;
  v34[1] = v38;
  v39 = a3 + v19[14];
  *v39 = swift_getKeyPath(byte_21CBC24A8);
  *(v39 + 8) = 0;
  v40 = v19[15];
  v41 = v19[16];
  result = swift_getKeyPath(byte_21CBC24F0);
  *(a3 + v41) = result;
  return result;
}

uint64_t sub_21CA6F8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21CA6F244(a1, v6, a2);
}

uint64_t sub_21CA6F9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA6FA0C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = sub_21CB82644();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  if (a2)
  {
    a2(1, v15);
  }

  sub_21CA6F9A4(a1, a3, type metadata accessor for PMAccount);
  v18 = type metadata accessor for PMAccount(0);
  (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
  v19 = type metadata accessor for PMNewGroupFlow(0);
  v20 = a3 + v19[6];
  *(v20 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v20 + 32) = &off_282E572E8;
  *(a3 + v19[5]) = 0;
  v43 = v19[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  type metadata accessor for PMNewGroupFlow.Step(0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v47 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310, MEMORY[0x277D83970]);
  sub_21C7060F0(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  sub_21CB82654();
  (*(v11 + 16))(v13, v17, v10);
  sub_21CB84D44();
  (*(v11 + 8))(v17, v10);
  v22 = a3 + v19[8];
  v46 = 0;
  sub_21CB84D44();
  v23 = v48;
  *v22 = v47;
  *(v22 + 8) = v23;
  v24 = type metadata accessor for MoveAccountFailureAlertData(0);
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_21C6EDBAC(v9, v44, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v9, &qword_27CDECBD8, &unk_21CBA5300);
  v25 = v19[10];
  *(a3 + v25) = swift_getKeyPath(aP_90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v26 = v19[11];
  KeyPath = swift_getKeyPath(asc_21CBC2460);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v28 = (a3 + v26);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v47);

  type metadata accessor for PMAccountsState(0);
  sub_21C7060F0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v29 = sub_21CB82674();
  v31 = v30;

  *v28 = v29;
  v28[1] = v31;
  v32 = (a3 + v19[12]);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C7060F0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *v32 = sub_21CB82B84();
  v32[1] = v33;
  v34 = (a3 + v19[13]);
  v35 = swift_getKeyPath(byte_21CBC2488);
  sub_21CB86544();
  sub_21C7073E8(v35, v47);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7060F0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v36 = sub_21CB82674();
  v38 = v37;

  *v34 = v36;
  v34[1] = v38;
  v39 = a3 + v19[14];
  *v39 = swift_getKeyPath(byte_21CBC24A8);
  *(v39 + 8) = 0;
  v40 = v19[15];
  v41 = v19[16];
  result = swift_getKeyPath(byte_21CBC24F0);
  *(a3 + v41) = result;
  return result;
}

uint64_t sub_21CA70138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CA70198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_21CA70200()
{
  type metadata accessor for PMMoveAccountToGroupPicker(0);

  return sub_21CA68064();
}

uint64_t objectdestroy_64Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v209 = *(*(v2 - 8) + 80);
  v207 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();
  v208 = (v209 + 32) & ~v209;
  v3 = v0 + v208;

  v4 = type metadata accessor for PMAccount(0);
  v5 = v3 + v4[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v8 = *(v7 + 28);
    v9 = sub_21CB85B74();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);

    v10 = *(v7 + 36);
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {

    v13 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v14 = v13[7];
    v15 = sub_21CB85C04();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }

    v17 = v13[8];
    v18 = sub_21CB85BB4();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v5 + v17, 1, v18))
    {
      (*(v19 + 8))(v5 + v17, v18);
    }

    v20 = v13[9];
    v21 = sub_21CB85C44();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v5 + v20, 1, v21))
    {
      (*(v22 + 8))(v5 + v20, v21);
    }
  }

  v23 = (v3 + v4[6]);
  type metadata accessor for PMAccount.Storage(0);
  v210 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v23 + v25, 1, v26))
    {
      (*(v27 + 8))(v23 + v25, v26);
    }

    v29 = v24[12];
    if (!v28(v23 + v29, 1, v26))
    {
      (*(v27 + 8))(v23 + v29, v26);
    }

    v30 = v24[15];
    v31 = sub_21CB85BB4();
    v32 = *(v31 - 8);
    v4 = v210;
    if (!(*(v32 + 48))(v23 + v30, 1, v31))
    {
      (*(v32 + 8))(v23 + v30, v31);
    }

    v33 = v24[16];
    v34 = sub_21CB85C04();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v23 + v33, 1, v34))
    {
      (*(v35 + 8))(v23 + v33, v34);
    }

    v36 = v24[18];
    v37 = sub_21CB85C44();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v23 + v36, 1, v37))
    {
      (*(v38 + 8))(v23 + v36, v37);
    }
  }

  else
  {
  }

  v39 = v3 + v4[7];
  if (*(v39 + 8))
  {
  }

  v40 = v3 + *(v2 + 40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  if (!(*(*(v41 - 8) + 48))(v40, 2, v41))
  {
    v42 = sub_21CB85C44();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(v40, 1, v42))
    {
      (*(v43 + 8))(v40, v42);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);

  v44 = v3 + *(v2 + 44);
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488) + 32);
    v46 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v46 - 8) + 48))(v45, 1, v46))
    {

      v47 = v45 + v210[5];
      v48 = swift_getEnumCaseMultiPayload();

      if (v48 == 1)
      {

        v49 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v50 = *(v49 + 28);
        v51 = sub_21CB85B74();
        (*(*(v51 - 8) + 8))(v47 + v50, v51);

        v52 = *(v49 + 36);
        v53 = sub_21CB85C44();
        v54 = *(v53 - 8);
        if (!(*(v54 + 48))(v47 + v52, 1, v53))
        {
          (*(v54 + 8))(v47 + v52, v53);
        }
      }

      else
      {
        v64 = v1;

        v65 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v66 = v65[7];
        v67 = sub_21CB85C04();
        v68 = *(v67 - 8);
        if (!(*(v68 + 48))(v47 + v66, 1, v67))
        {
          (*(v68 + 8))(v47 + v66, v67);
        }

        v69 = v65[8];
        v70 = sub_21CB85BB4();
        v71 = *(v70 - 8);
        if (!(*(v71 + 48))(v47 + v69, 1, v70))
        {
          (*(v71 + 8))(v47 + v69, v70);
        }

        v72 = v65[9];
        v73 = sub_21CB85C44();
        v74 = *(v73 - 8);
        v1 = v64;
        if (!(*(v74 + 48))(v47 + v72, 1, v73))
        {
          (*(v74 + 8))(v47 + v72, v73);
        }
      }

      v75 = (v45 + v210[6]);
      v204 = v1;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v76 = type metadata accessor for PMAccount.MockData(0);
        v77 = v76[8];
        v78 = sub_21CB80DD4();
        v79 = *(v78 - 8);
        v80 = *(v79 + 48);
        if (!v80(v75 + v77, 1, v78))
        {
          (*(v79 + 8))(v75 + v77, v78);
        }

        v81 = v76[12];
        if (!v80(v75 + v81, 1, v78))
        {
          (*(v79 + 8))(v75 + v81, v78);
        }

        v82 = v76[15];
        v83 = sub_21CB85BB4();
        v84 = *(v83 - 8);
        if (!(*(v84 + 48))(v75 + v82, 1, v83))
        {
          (*(v84 + 8))(v75 + v82, v83);
        }

        v85 = v76[16];
        v86 = sub_21CB85C04();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v75 + v85, 1, v86))
        {
          (*(v87 + 8))(v75 + v85, v86);
        }

        v88 = v76[18];
        v89 = sub_21CB85C44();
        v90 = *(v89 - 8);
        if (!(*(v90 + 48))(v75 + v88, 1, v89))
        {
          (*(v90 + 8))(v75 + v88, v89);
        }
      }

      else
      {
      }

      v117 = v45 + v210[7];
      if (*(v117 + 8))
      {
      }

      v118 = v45 + *(v46 + 20);
      v119 = type metadata accessor for PMSharingGroup(0);
      v120 = *(*(v119 - 8) + 48);
      if (!v120(v118, 1, v119))
      {
        v121 = sub_21CB85C44();
        (*(*(v121 - 8) + 8))(v118, v121);
      }

      v122 = v45 + *(v46 + 24);
      v1 = v204;
      if (!v120(v122, 1, v119))
      {
        v123 = sub_21CB85C44();
        (*(*(v123 - 8) + 8))(v122, v123);
      }
    }

    v124 = v45 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
    v125 = v210;
    if (!(*(*(v210 - 1) + 48))(v124, 1, v210))
    {

      v126 = v124 + v210[5];
      v127 = swift_getEnumCaseMultiPayload();

      if (v127 == 1)
      {

        v128 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v129 = *(v128 + 28);
        v130 = sub_21CB85B74();
        (*(*(v130 - 8) + 8))(v126 + v129, v130);

        v131 = *(v128 + 36);
        v132 = sub_21CB85C44();
        v133 = *(v132 - 8);
        if (!(*(v133 + 48))(v126 + v131, 1, v132))
        {
          (*(v133 + 8))(v126 + v131, v132);
        }
      }

      else
      {

        v149 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v150 = v149[7];
        v151 = sub_21CB85C04();
        v152 = *(v151 - 8);
        if (!(*(v152 + 48))(v126 + v150, 1, v151))
        {
          (*(v152 + 8))(v126 + v150, v151);
        }

        v153 = v149[8];
        v154 = sub_21CB85BB4();
        v155 = *(v154 - 8);
        if (!(*(v155 + 48))(v126 + v153, 1, v154))
        {
          (*(v155 + 8))(v126 + v153, v154);
        }

        v156 = v149[9];
        v157 = sub_21CB85C44();
        v158 = *(v157 - 8);
        if (!(*(v158 + 48))(v126 + v156, 1, v157))
        {
          (*(v158 + 8))(v126 + v156, v157);
        }
      }

      v159 = (v124 + v210[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v160 = type metadata accessor for PMAccount.MockData(0);
        v161 = v160[8];
        v162 = sub_21CB80DD4();
        v163 = *(v162 - 8);
        v164 = *(v163 + 48);
        if (!v164(v159 + v161, 1, v162))
        {
          (*(v163 + 8))(v159 + v161, v162);
        }

        v165 = v160[12];
        if (!v164(v159 + v165, 1, v162))
        {
          (*(v163 + 8))(v159 + v165, v162);
        }

        v166 = v160[15];
        v167 = sub_21CB85BB4();
        v168 = *(v167 - 8);
        if (!(*(v168 + 48))(v159 + v166, 1, v167))
        {
          (*(v168 + 8))(v159 + v166, v167);
        }

        v169 = v160[16];
        v170 = sub_21CB85C04();
        v171 = *(v170 - 8);
        v125 = v210;
        if (!(*(v171 + 48))(v159 + v169, 1, v170))
        {
          (*(v171 + 8))(v159 + v169, v170);
        }

        v172 = v160[18];
        v173 = sub_21CB85C44();
        v174 = *(v173 - 8);
        if (!(*(v174 + 48))(v159 + v172, 1, v173))
        {
          (*(v174 + 8))(v159 + v172, v173);
        }
      }

      else
      {
      }

      v201 = v125[7];
LABEL_130:
      v202 = v124 + v201;
      if (*(v124 + v201 + 8))
      {
      }
    }
  }

  else
  {
    v55 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v55 - 8) + 48))(v44, 1, v55))
    {

      v206 = v44;
      v56 = v44 + v4[5];
      v57 = swift_getEnumCaseMultiPayload();

      if (v57 == 1)
      {

        v58 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v59 = *(v58 + 28);
        v60 = sub_21CB85B74();
        (*(*(v60 - 8) + 8))(v56 + v59, v60);

        v61 = *(v58 + 36);
        v62 = sub_21CB85C44();
        v63 = *(v62 - 8);
        if (!(*(v63 + 48))(v56 + v61, 1, v62))
        {
          (*(v63 + 8))(v56 + v61, v62);
        }
      }

      else
      {

        v91 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v92 = v91[7];
        v93 = sub_21CB85C04();
        v94 = *(v93 - 8);
        if (!(*(v94 + 48))(v56 + v92, 1, v93))
        {
          (*(v94 + 8))(v56 + v92, v93);
        }

        v95 = v91[8];
        v96 = sub_21CB85BB4();
        v97 = *(v96 - 8);
        if (!(*(v97 + 48))(v56 + v95, 1, v96))
        {
          (*(v97 + 8))(v56 + v95, v96);
        }

        v98 = v91[9];
        v99 = sub_21CB85C44();
        v100 = *(v99 - 8);
        v4 = v210;
        if (!(*(v100 + 48))(v56 + v98, 1, v99))
        {
          (*(v100 + 8))(v56 + v98, v99);
        }
      }

      v101 = (v206 + v4[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v205 = v1;

        v102 = type metadata accessor for PMAccount.MockData(0);
        v103 = v102[8];
        v104 = sub_21CB80DD4();
        v105 = *(v104 - 8);
        v106 = *(v105 + 48);
        if (!v106(v101 + v103, 1, v104))
        {
          (*(v105 + 8))(v101 + v103, v104);
        }

        v107 = v102[12];
        if (!v106(v101 + v107, 1, v104))
        {
          (*(v105 + 8))(v101 + v107, v104);
        }

        v108 = v102[15];
        v109 = sub_21CB85BB4();
        v110 = *(v109 - 8);
        if (!(*(v110 + 48))(v101 + v108, 1, v109))
        {
          (*(v110 + 8))(v101 + v108, v109);
        }

        v111 = v102[16];
        v112 = sub_21CB85C04();
        v113 = *(v112 - 8);
        v1 = v205;
        if (!(*(v113 + 48))(v101 + v111, 1, v112))
        {
          (*(v113 + 8))(v101 + v111, v112);
        }

        v114 = v102[18];
        v115 = sub_21CB85C44();
        v116 = *(v115 - 8);
        v4 = v210;
        if (!(*(v116 + 48))(v101 + v114, 1, v115))
        {
          (*(v116 + 8))(v101 + v114, v115);
        }
      }

      else
      {
      }

      v44 = v206;
      v134 = v206 + v4[7];
      if (*(v134 + 8))
      {
      }

      v135 = v206 + *(v55 + 20);
      v136 = type metadata accessor for PMSharingGroup(0);
      v137 = *(*(v136 - 8) + 48);
      if (!v137(v135, 1, v136))
      {
        v138 = sub_21CB85C44();
        (*(*(v138 - 8) + 8))(v135, v138);
      }

      v139 = v206 + *(v55 + 24);
      v4 = v210;
      if (!v137(v139, 1, v136))
      {
        v140 = sub_21CB85C44();
        (*(*(v140 - 8) + 8))(v139, v140);
      }
    }

    v124 = v44 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
    if (!(*(*(v4 - 1) + 48))(v124, 1, v4))
    {

      v141 = v124 + v4[5];
      v142 = swift_getEnumCaseMultiPayload();

      if (v142 == 1)
      {

        v143 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v144 = *(v143 + 28);
        v145 = sub_21CB85B74();
        (*(*(v145 - 8) + 8))(v141 + v144, v145);

        v146 = *(v143 + 36);
        v147 = sub_21CB85C44();
        v148 = *(v147 - 8);
        if (!(*(v148 + 48))(v141 + v146, 1, v147))
        {
          (*(v148 + 8))(v141 + v146, v147);
        }
      }

      else
      {

        v175 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v176 = v175[7];
        v177 = sub_21CB85C04();
        v178 = *(v177 - 8);
        if (!(*(v178 + 48))(v141 + v176, 1, v177))
        {
          (*(v178 + 8))(v141 + v176, v177);
        }

        v179 = v175[8];
        v180 = sub_21CB85BB4();
        v181 = *(v180 - 8);
        if (!(*(v181 + 48))(v141 + v179, 1, v180))
        {
          (*(v181 + 8))(v141 + v179, v180);
        }

        v182 = v175[9];
        v183 = sub_21CB85C44();
        v184 = *(v183 - 8);
        if (!(*(v184 + 48))(v141 + v182, 1, v183))
        {
          (*(v184 + 8))(v141 + v182, v183);
        }
      }

      v185 = (v124 + v4[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v186 = type metadata accessor for PMAccount.MockData(0);
        v187 = v186[8];
        v188 = sub_21CB80DD4();
        v189 = *(v188 - 8);
        v190 = *(v189 + 48);
        if (!v190(v185 + v187, 1, v188))
        {
          (*(v189 + 8))(v185 + v187, v188);
        }

        v191 = v186[12];
        if (!v190(v185 + v191, 1, v188))
        {
          (*(v189 + 8))(v185 + v191, v188);
        }

        v192 = v186[15];
        v193 = sub_21CB85BB4();
        v194 = *(v193 - 8);
        if (!(*(v194 + 48))(v185 + v192, 1, v193))
        {
          (*(v194 + 8))(v185 + v192, v193);
        }

        v195 = v186[16];
        v196 = sub_21CB85C04();
        v197 = *(v196 - 8);
        v4 = v210;
        if (!(*(v197 + 48))(v185 + v195, 1, v196))
        {
          (*(v197 + 8))(v185 + v195, v196);
        }

        v198 = v186[18];
        v199 = sub_21CB85C44();
        v200 = *(v199 - 8);
        if (!(*(v200 + 48))(v185 + v198, 1, v199))
        {
          (*(v200 + 8))(v185 + v198, v199);
        }
      }

      else
      {
      }

      v201 = v4[7];
      goto LABEL_130;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);

  return MEMORY[0x2821FE8E8](v1, v208 + v207, v209 | 7);
}

uint64_t sub_21CA724E0(char *a1)
{
  type metadata accessor for PMMoveAccountToGroupPicker(0);

  return sub_21CA680BC(a1);
}

unint64_t sub_21CA72588()
{
  result = qword_27CDF6A58;
  if (!qword_27CDF6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A40, L"6\a3");
    sub_21CA72640();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A58);
  }

  return result;
}

unint64_t sub_21CA72640()
{
  result = qword_27CDF6A60;
  if (!qword_27CDF6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A68, &qword_21CBC2530);
    sub_21CA726C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A60);
  }

  return result;
}

unint64_t sub_21CA726C4()
{
  result = qword_27CDF6A70;
  if (!qword_27CDF6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A78, &qword_21CBC2538);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A70);
  }

  return result;
}

unint64_t sub_21CA7277C()
{
  result = qword_27CDF6A90;
  if (!qword_27CDF6A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A50, &qword_21CBC2528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    type metadata accessor for PMMoveAccountToGroupPicker.Selection(255);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection, &unk_21CBC2294);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A98, &qword_21CBC2540);
    sub_21CB83374();
    sub_21C7060F0(&qword_27CDF6AA0, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A90);
  }

  return result;
}

uint64_t sub_21CA729E8()
{
  v2 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C702EFC;

  return sub_21CA6C13C(v4, v5, v0 + v3);
}

uint64_t sub_21CA72AC4(char *a1, char *a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_21CB85C44();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B20, &unk_21CBC2680);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  v19 = *(v18 + 56);
  sub_21CA6F9A4(v34, &v32 - v16, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  sub_21CA6F9A4(v35, &v17[v19], type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v20 = *(v6 + 48);
  v21 = v20(v17, 2, v5);
  if (!v21)
  {
    v34 = v4;
    v35 = v8;
    v23 = v32;
    v22 = v33;
    sub_21CA6F9A4(v17, v14, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    if (v20(&v17[v19], 2, v5))
    {
      sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
      goto LABEL_9;
    }

    v25 = *(v9 + 48);
    sub_21C716934(v14, v11, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C716934(&v17[v19], &v11[v25], &unk_27CDF20B0, &unk_21CBA0090);
    v26 = v23;
    v27 = *(v23 + 48);
    if (v27(v11, 1, v22) == 1)
    {
      if (v27(&v11[v25], 1, v22) == 1)
      {
        sub_21C6EA794(v11, &unk_27CDF20B0, &unk_21CBA0090);
        goto LABEL_8;
      }
    }

    else
    {
      v28 = v35;
      sub_21C6EDBAC(v11, v35, &unk_27CDF20B0, &unk_21CBA0090);
      if (v27(&v11[v25], 1, v22) != 1)
      {
        v29 = v34;
        (*(v26 + 32))(v34, &v11[v25], v22);
        sub_21C7060F0(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v30 = sub_21CB85574();
        v31 = *(v26 + 8);
        v31(v29, v22);
        v31(v28, v22);
        sub_21C6EA794(v11, &unk_27CDF20B0, &unk_21CBA0090);
        if (v30)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_21CA70138(v17, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
        return 0;
      }

      (*(v26 + 8))(v28, v22);
    }

    sub_21C6EA794(v11, &qword_27CDEAC40, &qword_21CBA1A40);
    goto LABEL_17;
  }

  if (v21 == 1)
  {
    if (v20(&v17[v19], 2, v5) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_21CA70138(v17, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    return 1;
  }

  if (v20(&v17[v19], 2, v5) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21C6EA794(v17, &qword_27CDF6B20, &unk_21CBC2680);
  return 0;
}

BOOL sub_21CA7301C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v35 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  MEMORY[0x28223BE20](v37);
  v38 = &v35 - v8;
  v9 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B28, &qword_21CBC2690);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v35 - v17;
  v20 = *(v19 + 56);
  v39 = a1;
  sub_21C6EDBAC(a1, &v35 - v17, &qword_27CDEB700, &unk_21CBA24F0);
  v40 = a2;
  sub_21C6EDBAC(a2, &v18[v20], &qword_27CDEB700, &unk_21CBA24F0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_21C6EDBAC(v18, v15, &qword_27CDEB700, &unk_21CBA24F0);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      sub_21CA70198(&v18[v20], v12, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      v25 = sub_21CA61968();
      sub_21CA70138(v12, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      sub_21CA70138(v15, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      sub_21C6EA794(v18, &qword_27CDEB700, &unk_21CBA24F0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_21CA70138(v15, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
LABEL_6:
    v22 = &qword_27CDF6B28;
    v23 = &qword_21CBC2690;
    v24 = v18;
LABEL_14:
    sub_21C6EA794(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v18, &qword_27CDEB700, &unk_21CBA24F0);
LABEL_8:
  v26 = *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  v27 = v38;
  v28 = *(v37 + 48);
  sub_21C6EDBAC(v39 + v26, v38, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C6EDBAC(v40 + v26, v27 + v28, &unk_27CDEBE60, &unk_21CB9FF40);
  v29 = v42;
  v30 = *(v41 + 48);
  if (v30(v27, 1, v42) == 1)
  {
    if (v30(v27 + v28, 1, v29) == 1)
    {
      sub_21C6EA794(v27, &unk_27CDEBE60, &unk_21CB9FF40);
      return 1;
    }

    goto LABEL_13;
  }

  v31 = v36;
  sub_21C6EDBAC(v27, v36, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v30(v27 + v28, 1, v29) == 1)
  {
    sub_21CA70138(v31, type metadata accessor for PMAccount);
LABEL_13:
    v22 = &qword_27CDEAC50;
    v23 = &unk_21CBA00A0;
    v24 = v27;
    goto LABEL_14;
  }

  v33 = v35;
  sub_21CA70198(v27 + v28, v35, type metadata accessor for PMAccount);
  v34 = static PMAccount.== infix(_:_:)(v31, v33);
  sub_21CA70138(v33, type metadata accessor for PMAccount);
  sub_21CA70138(v31, type metadata accessor for PMAccount);
  sub_21C6EA794(v27, &unk_27CDEBE60, &unk_21CB9FF40);
  return (v34 & 1) != 0;
}

unint64_t sub_21CA735E4()
{
  result = qword_27CDF6AF8;
  if (!qword_27CDF6AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6AF0, &unk_21CBC2640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    type metadata accessor for PMMoveAccountToGroupPicker.Selection(255);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection, &unk_21CBC2294);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6AF8);
  }

  return result;
}

uint64_t sub_21CA7375C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PMMoveAccountToGroupPicker(0);

  return sub_21CA6D5D4(a1, a2);
}

unint64_t sub_21CA737DC()
{
  result = qword_27CDF6B30;
  if (!qword_27CDF6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6B38, &qword_21CBC2698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    type metadata accessor for PMAccount(255);
    type metadata accessor for PMNewGroupFlow(255);
    sub_21CA6EDD4();
    sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    sub_21CA6EF34();
    swift_getOpaqueTypeConformance2();
    sub_21CA6F154();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6B30);
  }

  return result;
}

uint64_t sub_21CA739E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_21CA73AC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBC2740);
  v5 = v1;
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  return sub_21CA77220(v5 + v3, a1, type metadata accessor for PMMultipleAccountsDetailsModel.State);
}

uint64_t sub_21CA73BA4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  sub_21CA7704C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21CA73C10()
{
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21CA73CD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21CA73D98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBC27A0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
    sub_21CB810C4();
  }
}