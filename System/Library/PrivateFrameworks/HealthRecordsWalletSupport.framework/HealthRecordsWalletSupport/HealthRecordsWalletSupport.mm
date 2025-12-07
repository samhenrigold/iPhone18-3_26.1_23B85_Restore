uint64_t sub_251E5B6B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251E5B6F8()
{
  v1 = sub_251E71928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_251E5B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251E71928();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251E5B880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251E71928();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251E5B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251E71928();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251E5B9E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251E71928();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_251E5BAA0()
{
  if (MEMORY[0x277D85020])
  {
    sub_251E6ABC8(0);
  }
}

uint64_t sub_251E5BADC()
{
  sub_251E6AE3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251E5BB64()
{
  v1 = sub_251E71928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t SignedClinicalDataWalletPassIdentifier.passTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SignedClinicalDataWalletPassIdentifier.serialNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecordSyncIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000003CLL;
  a2[1] = 0x8000000251E736C0;
  v4 = sub_251E71A78();
  MEMORY[0x253090C90](v4);

  v5 = sub_251E71A98();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  a2[2] = 762472566;
  a2[3] = 0xE400000000000000;
  return result;
}

void SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_251E71A98();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = [a1 originIdentifier];
  v15 = [v14 signedClinicalDataRecordIdentifier];

  if (v15)
  {
    sub_251E71A88();

    (*(v5 + 32))(v13, v11, v4);
    (*(v5 + 16))(v8, v13, v4);
    v16 = sub_251E71A78();
    v21 = 762472566;
    v22 = 0xE400000000000000;
    MEMORY[0x253090C90](v16);

    v17 = v21;
    v18 = v22;
    v19 = *(v5 + 8);
    v19(v8, v4);
    v19(v13, v4);
    *a2 = 0xD00000000000003CLL;
    a2[1] = 0x8000000251E736C0;
    a2[2] = v17;
    a2[3] = v18;
  }

  else
  {
    sub_251E5C054();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
  }
}

unint64_t sub_251E5C054()
{
  result = qword_27F4BD660;
  if (!qword_27F4BD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD660);
  }

  return result;
}

uint64_t sub_251E5C0A8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_251E5C0D8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SignedClinicalDataWalletPassComponents.passIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SignedClinicalDataWalletPassComponents.groupingIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SignedClinicalDataWalletPassComponents.appLaunchURL.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void SignedClinicalDataWalletPassComponents.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 mainRecord];
  if (!v5)
  {
    sub_251E5C054();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
LABEL_25:

    return;
  }

  v6 = v5;
  v7 = [a1 medicalRecords];
  if (!v7)
  {
LABEL_13:
    sub_251E5C054();
    swift_allocError();
    v16 = 4;
    goto LABEL_24;
  }

  v8 = v7;
  sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);
  v9 = sub_251E71C08();

  if (v9 >> 62)
  {
    if (sub_251E71DA8())
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  v10 = [a1 QRRepresentation];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v12 = [v10 alreadyScannedSegments];

  if (!v12)
  {
    goto LABEL_23;
  }

  sub_251E5C984(0, &qword_27F4BD670, 0x277D12490);
  v13 = sub_251E71C08();

  if (v13 >> 62)
  {
    if (sub_251E71DA8() >= 2)
    {
      goto LABEL_9;
    }

    v14 = sub_251E71DA8();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 > 1)
    {
LABEL_9:

      sub_251E5C054();
      swift_allocError();
      v16 = 6;
LABEL_24:
      *v15 = v16;
      swift_willThrow();

      goto LABEL_25;
    }
  }

  if (!v14)
  {

LABEL_23:

    sub_251E5C054();
    swift_allocError();
    v16 = 5;
    goto LABEL_24;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x253090E10](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(v13 + 32);
  }

  v19 = v18;

  if ([v19 numberOfExpectedSiblings] >= 2)
  {

    sub_251E5C054();
    swift_allocError();
    *v20 = 6;
    swift_willThrow();

    goto LABEL_25;
  }

  v21 = v6;
  SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(v21, &v59);
  if (v2)
  {
  }

  else
  {
    v57 = v60;
    v58 = v59;
    v55 = v62;
    v56 = v61;
    v22 = HKSignedClinicalDataRecord.appLaunchURL.getter();
    v53 = v23;
    v54 = v22;
    v63 = v21;
    v24 = [v63 credentialTypes];
    v25 = sub_251E71C08();

    v59 = sub_251E71B88();
    v60 = v26;
    MEMORY[0x28223BE20](v59);
    v51 = &v59;
    v27 = sub_251E5C9CC(sub_251E5CAD0, v50, v25);

    v28 = v63;
    v29 = [v63 credentialTypes];
    if (v27)
    {
      v30 = sub_251E71C08();

      v59 = sub_251E71B88();
      v60 = v31;
      MEMORY[0x28223BE20](v59);
      v51 = &v59;
      v32 = sub_251E5C9CC(sub_251E5CCB8, v50, v30);

      if (v32)
      {

        v33 = v63;
        v34 = 0x8000000251E73770;
        v35 = 0xD000000000000032;
      }

      else
      {
        v33 = v63;
        v45 = [v63 credentialTypes];

        v46 = sub_251E71C08();
        v47 = sub_251E71B88();
        v52[1] = v52;
        v59 = v47;
        v60 = v48;
        MEMORY[0x28223BE20](v47);
        v51 = &v59;
        v49 = sub_251E5C9CC(sub_251E5CCB8, v50, v46);

        v34 = 0x8000000251E737B0;
        v35 = 0xD000000000000029;
        if ((v49 & 1) == 0)
        {
          v35 = 0;
          v34 = 0;
        }
      }

      v40 = v57;
      v39 = v58;
      v42 = v55;
      v41 = v56;
      v44 = v53;
      v43 = v54;
    }

    else
    {

      v36 = sub_251E71C08();
      v59 = sub_251E71B88();
      v60 = v37;
      MEMORY[0x28223BE20](v59);
      v51 = &v59;
      v38 = sub_251E5C9CC(sub_251E5CCB8, v50, v36);

      v34 = 0x8000000251E73740;
      if (v38)
      {
        v35 = 0xD00000000000002ALL;
      }

      else
      {
        v35 = 0;
      }

      if ((v38 & 1) == 0)
      {
        v34 = 0;
      }

      v40 = v57;
      v39 = v58;
      v42 = v55;
      v41 = v56;
      v44 = v53;
      v43 = v54;
      v33 = v63;
    }

    *a2 = v39;
    a2[1] = v40;
    a2[2] = v41;
    a2[3] = v42;
    a2[4] = v35;
    a2[5] = v34;
    a2[6] = v43;
    a2[7] = v44;
    a2[8] = v33;
    a2[9] = v9;
    a2[10] = v19;
  }
}

uint64_t sub_251E5C984(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_251E5C9CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_251E5CA78(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8() & 1;
  }
}

uint64_t sub_251E5CAEC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8() & 1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_251E5CB50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_251E5CB98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_251E5CC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_251E5CC54(uint64_t result, int a2, int a3)
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

uint64_t sub_251E5CCD4(uint64_t a1)
{
  v2 = sub_251E71CE8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_251E6516C(v2, *(a1 + 36), 0, a1);

  return v4;
}

id sub_251E5CD50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v3 setFormatOptions_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_251E5CDD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_251E5CE28();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_251E5CE28()
{
  sub_251E650F4(0, &qword_27F4BD698, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v3 setDateStyle_];
  [v3 setTimeStyle_];
  sub_251E71AB8();
  v4 = sub_251E71AD8();
  v5 = *(v4 - 8);
  v6 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v6 = sub_251E71AC8();
    (*(v5 + 8))(v2, v4);
  }

  [v3 setTimeZone_];

  return v3;
}

uint64_t SignedClinicalDataWalletPassManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SignedClinicalDataWalletPassManager.init()();
  return v0;
}

void *SignedClinicalDataWalletPassManager.init()()
{
  type metadata accessor for WalletPassManager();
  v0[2] = 0;
  v0[3] = 0;
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  v0[4] = v1;
  v3 = v2;
  return v0;
}

void sub_251E5D050(void *a1)
{
  if ([objc_opt_self() isWalletVisible])
  {
    v4 = [a1 mainRecord];
    if (!v4)
    {
      sub_251E5C054();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
      return;
    }

    v5 = v4;
    if (HKSignedClinicalDataRecord.permanentlyIneligibleToBeAddedToWallet.getter())
    {
      sub_251E5C054();
      swift_allocError();
      v7 = 2;
    }

    else
    {
      if (HKSignedClinicalDataRecord.eligibleToBeAddedToWallet.getter())
      {
        SignedClinicalDataWalletPassComponents.init(from:)(a1, v14);
        if (!v2)
        {
          v12[2] = v14[2];
          v12[3] = v14[3];
          v12[4] = v14[4];
          v13 = v15;
          v12[0] = v14[0];
          v12[1] = v14[1];
          sub_251E62540(v12);
        }

        goto LABEL_15;
      }

      sub_251E5C054();
      swift_allocError();
      v7 = 1;
    }

    *v6 = v7;
    swift_willThrow();
LABEL_15:

    return;
  }

  v8 = *(v1 + 32);
  os_unfair_lock_lock((v8 + 24));
  v9 = [*(v8 + 32) canAddPassOfType_];
  os_unfair_lock_unlock((v8 + 24));
  sub_251E624EC();
  swift_allocError();
  if (v9)
  {
    *v10 = 0;
  }

  else
  {
    *v10 = 1;
  }

  swift_willThrow();
}

uint64_t sub_251E5D21C(void *a1)
{
  SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(a1, v3);
  v1 = sub_251E62594(v3[0], v3[1], v3[2], v3[3]);

  return v1;
}

uint64_t sub_251E5D2A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  SignedClinicalDataWalletPassIdentifier.init(signedClinicalDataRecord:)(a1, v7);
  v3 = sub_251E62594(v7[0], v7[1], v7[2], v7[3]);
  if (v4)
  {
    strcpy(v7, "wallet://card/");
    HIBYTE(v7[1]) = -18;
    MEMORY[0x253090C90](v3);

    sub_251E71918();
  }

  else
  {
    v5 = sub_251E71928();
    (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t sub_251E5D438(void *a1, void (*a2)(void), void (*a3)(void))
{
  v48 = a2;
  v49 = a3;
  v4 = type metadata accessor for PassComponents(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251E62680(0);
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = a1;
  SignedClinicalDataWalletPassComponents.init(from:)(v20, v58);
  v46 = v19;
  v47 = v17;
  v43 = v14;
  v44 = v6;
  v45 = v11;
  v54 = v58[2];
  v55 = v58[3];
  v56 = v58[4];
  v57 = v59;
  v52 = v58[0];
  v53 = v58[1];
  sub_251E5E8EC(v58, v51);
  memcpy(v50, v51, sizeof(v50));
  v21 = v8;
  v22 = v46;
  *&v22[*(v8 + 64)] = sub_251E5DB44(v46, &v46[*(v8 + 48)], v20);
  v23 = v52;
  v24 = v53;
  v25 = v44;
  v44[3] = &type metadata for SignedClinicalDataWalletPassIdentifier;
  v25[4] = &protocol witness table for SignedClinicalDataWalletPassIdentifier;
  v26 = swift_allocObject();
  *v25 = v26;
  *(v26 + 16) = v23;
  *(v26 + 32) = v24;
  sub_251E62778(v22, v47);
  v42 = *(v21 + 48);

  v27 = v43;
  sub_251E62778(v22, v43);
  v41 = *(v21 + 48);

  v28 = v45;
  sub_251E62778(v22, v45);
  v29 = *(v21 + 48);
  v39 = *(v28 + *(v21 + 64));
  v40 = v29;
  memcpy(v25 + 5, v50, 0x118uLL);
  v38 = v4[6];
  v30 = sub_251E71928();
  v31 = *(v30 - 8);
  v32 = *(v31 + 32);
  v32(v25 + v38, v47, v30);
  v32(v25 + v4[7], (v27 + v41), v30);
  *(v25 + v4[8]) = v39;
  v33 = v25;
  v34 = *(v31 + 8);
  v35 = v45;
  v34(&v45[v40], v30);
  v34(v35, v30);
  v34(v27, v30);
  v34(&v47[v42], v30);
  sub_251E67FF4(v33, v48, v49);
  sub_251E62540(&v52);
  sub_251E627DC(v33, type metadata accessor for PassComponents);
  return sub_251E627DC(v22, sub_251E62680);
}

void sub_251E5D86C(void *a1)
{
  SignedClinicalDataWalletPassComponents.init(from:)(a1, v14);
  if (!v2)
  {
    v8 = v14[0];
    v9 = v14[1];
    v10 = v14[2];
    v11 = v14[3];
    v12 = v14[4];
    v13 = v15;
    v3 = *(v1 + 32);
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 32);
    v5 = sub_251E71B78();
    v6 = sub_251E71B78();
    v7 = [v4 passWithPassTypeIdentifier:v5 serialNumber:{v6, v8, v9, v10, v11, v12, v13}];

    if (v7)
    {
      [*(v3 + 32) removePass_];
    }

    os_unfair_lock_unlock((v3 + 24));
    sub_251E62540(&v8);
  }
}

uint64_t sub_251E5D980(uint64_t a1)
{
  v3 = sub_251E71A98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_251E71A78();
  v14[0] = 762472566;
  v14[1] = 0xE400000000000000;
  MEMORY[0x253090C90](v7);

  (*(v4 + 8))(v6, v3);
  v8 = *(v1 + 32);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 32);
  v10 = sub_251E71B78();
  v11 = sub_251E71B78();
  v12 = [v9 passWithPassTypeIdentifier:v10 serialNumber:v11];

  if (v12)
  {
    [*(v8 + 32) removePass_];
  }

  os_unfair_lock_unlock((v8 + 24));
}

void *sub_251E5DB44(char *a1, char *a2, void *a3)
{
  v128 = a3;
  v120 = a2;
  v123 = a1;
  v126 = *v3;
  v124 = type metadata accessor for PassComponents.BundleResource(0);
  v122 = *(v124 - 8);
  v4 = MEMORY[0x28223BE20](v124);
  v115 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v117 = &v105 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v121 = &v105 - v9;
  MEMORY[0x28223BE20](v8);
  v119 = &v105 - v10;
  v125 = sub_251E71928();
  v127 = *(v125 - 8);
  v11 = MEMORY[0x28223BE20](v125);
  v116 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v105 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v105 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v105 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v105 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v105 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v105 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v105 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v105 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v105 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v105 - v39;
  v41 = v128;
  v42 = v134;
  SignedClinicalDataWalletPassComponents.init(from:)(v41, v132);
  if (v42)
  {
    return v32;
  }

  v128 = v38;
  v110 = v35;
  v108 = v29;
  v113 = v32;
  v109 = v23;
  v114 = v26;
  v111 = v17;
  v106 = v20;
  v134 = v40;
  v112 = 0;
  v129[2] = v132[2];
  v129[3] = v132[3];
  v130 = v132[4];
  v131 = v133;
  v129[0] = v132[0];
  v129[1] = v132[1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = [objc_opt_self() bundleForClass_];
  v32 = sub_251E71B78();
  v45 = sub_251E71B78();
  v46 = [v44 URLForResource:v32 withExtension:v45];

  if (!v46)
  {
LABEL_9:
    sub_251E5C054();
    swift_allocError();
    *v69 = 7;
    swift_willThrow();

    sub_251E62540(v129);
    return v32;
  }

  v47 = v128;
  sub_251E71908();

  v48 = v127;
  v49 = v127 + 32;
  v50 = *(v127 + 32);
  v51 = v134;
  v52 = v125;
  v50(v134, v47, v125);
  v32 = sub_251E71B78();
  v53 = sub_251E71B78();
  v54 = [v44 0x2796E4903];

  if (!v54)
  {
    (*(v48 + 8))(v51, v52);
    goto LABEL_9;
  }

  v55 = v110;
  sub_251E71908();

  v50(v120, v55, v52);
  v56 = v44;
  v57 = sub_251E71B78();
  v58 = sub_251E71B78();
  v128 = v56;
  v59 = [v56 URLForResource:v57 withExtension:v58];

  v126 = v50;
  v107 = v49;
  if (v59)
  {
    v60 = v108;
    sub_251E71908();

    v61 = v113;
    v50(v113, v60, v52);
    v62 = v119;
    (*(v48 + 16))(v119, v61, v52);
    v63 = (v62 + *(v124 + 20));
    *v63 = 0x2E7832406F676F6CLL;
    v63[1] = 0xEB00000000676E70;
    v32 = sub_251E62B7C(0, 1, 1, MEMORY[0x277D84F90]);
    v65 = v32[2];
    v64 = v32[3];
    v66 = v52;
    if (v65 >= v64 >> 1)
    {
      v32 = sub_251E62B7C((v64 > 1), v65 + 1, 1, v32);
    }

    v67 = v122;
    (*(v48 + 8))(v113, v66);
    v32[2] = v65 + 1;
    sub_251E65A4C(v62, v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v65);
    v68 = v124;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    v66 = v52;
    v67 = v122;
    v68 = v124;
  }

  v71 = sub_251E71B78();
  v72 = sub_251E71B78();
  v73 = [v128 URLForResource:v71 withExtension:v72];

  v74 = v121;
  if (v73)
  {
    v75 = v109;
    sub_251E71908();

    v76 = v114;
    v126(v114, v75, v66);
    (*(v127 + 16))(v74, v76, v66);
    v77 = (v74 + *(v68 + 20));
    *v77 = 0x2E7833406F676F6CLL;
    v77[1] = 0xEB00000000676E70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_251E62B7C(0, v32[2] + 1, 1, v32);
    }

    v78 = v134;
    v80 = v32[2];
    v79 = v32[3];
    v81 = v111;
    if (v80 >= v79 >> 1)
    {
      v32 = sub_251E62B7C((v79 > 1), v80 + 1, 1, v32);
    }

    (*(v127 + 8))(v114, v66);
    v32[2] = v80 + 1;
    sub_251E65A4C(v74, v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v80);
  }

  else
  {
    v78 = v134;
    v81 = v111;
  }

  v82 = [v130 sourceType];
  v83 = v123;
  if (v82 == 1 && ([objc_opt_self() hk_isUSLocale] & 1) != 0)
  {
    v84 = sub_251E71B78();
    v85 = sub_251E71B78();
    v86 = [v128 URLForResource:v84 withExtension:v85];

    if (v86)
    {
      sub_251E71908();

      v87 = v106;
      v88 = v125;
      v126(v106, v81, v125);
      v89 = v117;
      (*(v127 + 16))(v117, v87, v88);
      v90 = v124;
      v91 = (v89 + *(v124 + 20));
      *v91 = 0x6567616D49746C61;
      v91[1] = 0xEF676E702E783240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_251E62B7C(0, v32[2] + 1, 1, v32);
      }

      v93 = v32[2];
      v92 = v32[3];
      if (v93 >= v92 >> 1)
      {
        v32 = sub_251E62B7C((v92 > 1), v93 + 1, 1, v32);
      }

      (*(v127 + 8))();
      v32[2] = v93 + 1;
      sub_251E65A4C(v117, v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v93);
    }

    else
    {
      v90 = v124;
    }

    v94 = v116;
    v95 = sub_251E71B78();
    v96 = sub_251E71B78();
    v97 = v128;
    v98 = [v128 URLForResource:v95 withExtension:v96];

    if (v98)
    {
      sub_251E71908();

      v99 = v118;
      v100 = v94;
      v66 = v125;
      v126(v118, v100, v125);
      v101 = v115;
      (*(v127 + 16))(v115, v99, v66);
      v102 = (v101 + *(v90 + 20));
      *v102 = 0x6567616D49746C61;
      v102[1] = 0xEF676E702E783340;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_251E62B7C(0, v32[2] + 1, 1, v32);
      }

      v104 = v32[2];
      v103 = v32[3];
      if (v104 >= v103 >> 1)
      {
        v32 = sub_251E62B7C((v103 > 1), v104 + 1, 1, v32);
      }

      sub_251E62540(v129);
      (*(v127 + 8))(v118, v66);
      v32[2] = v104 + 1;
      sub_251E65A4C(v101, v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v104);
      v83 = v123;
    }

    else
    {

      sub_251E62540(v129);
      v83 = v123;
      v66 = v125;
    }

    v78 = v134;
  }

  else
  {

    sub_251E62540(v129);
  }

  v126(v83, v78, v66);
  return v32;
}

uint64_t sub_251E5E8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = sub_251E71A68();
  v72 = *(v73 - 8);
  v5 = MEMORY[0x28223BE20](v73);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v70 - v7;
  v8 = *(a1 + 8);
  v81 = *a1;
  v85 = v8;
  v9 = *(a1 + 24);
  v80 = *(a1 + 16);
  v105 = v9;
  v10 = *(a1 + 40);
  v83 = *(a1 + 32);
  v84 = v10;
  v11 = *(a1 + 56);
  v82 = *(a1 + 48);
  v86 = v11;
  v12 = *(a1 + 64);
  v75 = *(a1 + 80);
  v78 = v12;
  v13 = v12;
  v14 = [v12 credentialTypes];
  v15 = sub_251E71C08();

  v89 = sub_251E71B88();
  v90 = v16;
  v88 = &v89;
  v17 = sub_251E5C9CC(sub_251E64EF8, v87, v15);

  if (v17)
  {
    *&v76 = v2;
    v18 = v13;
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    v18 = v13;
    v21 = [v13 credentialTypes];
    v22 = sub_251E71C08();

    v89 = sub_251E71B88();
    v90 = v23;
    MEMORY[0x28223BE20](v89);
    v69 = &v89;
    sub_251E5C9CC(sub_251E65AB0, (&v70 - 4), v22);
    *&v76 = v2;

    type metadata accessor for SignedClinicalDataWalletPassManager();
    v24 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
  }

  v69 = 0xE000000000000000;
  v74 = sub_251E718B8();
  v77 = v25;

  v26 = v18;
  v27 = [v18 sourceType];
  if (v27 == 2)
  {
    v28 = 0x434344205545;
  }

  else
  {
    v28 = 0;
  }

  if (v27 == 2)
  {
    v29 = 0xE600000000000000;
  }

  else
  {
    v29 = 0;
  }

  v30 = v75;
  v31 = [v75 fullQRCodeValue];
  v32 = sub_251E71B88();
  v34 = v33;

  *&v101 = v28;
  *(&v101 + 1) = v29;
  *&v102 = 0xD000000000000011;
  *(&v102 + 1) = 0x8000000251E73840;
  *&v103 = v32;
  *(&v103 + 1) = v34;
  *&v104 = 0x393538382D6F7369;
  *(&v104 + 1) = 0xEA0000000000312DLL;
  v89 = v81;
  v90 = v85;
  v91 = v80;
  v92 = v105;
  v93 = v83;
  v94 = v84;
  v95 = v82;
  v96 = v86;
  v97 = v78;
  v98 = v30;
  v35 = v76;
  sub_251E5F120(&v89, v99);
  if (v35)
  {

    return sub_251E64F3C(&v101);
  }

  else
  {
    v76 = v99[1];
    v78 = v99[0];
    v75 = v100;
    v37 = [v26 expirationDate];
    v38 = v26;
    if (v37)
    {
      v39 = v70;
      v40 = v37;
      sub_251E71A48();

      v41 = v72;
      v42 = v71;
      v43 = v39;
      v44 = v73;
      (*(v72 + 32))(v71, v43, v73);
      v45 = sub_251E5CD50();
      v46 = sub_251E71A18();
      v47 = [v45 stringFromDate_];

      v79 = sub_251E71B88();
      v49 = v48;

      (*(v41 + 8))(v42, v44);
    }

    else
    {
      v79 = 0;
      v49 = 0;
    }

    v50 = [v38 recordTypeDisplayName];
    v51 = sub_251E71B88();
    v53 = v52;

    v54 = [v38 recordIssuerDisplayName];
    v55 = sub_251E71B88();
    v57 = v56;

    sub_251E659FC(0, &qword_27F4BD690, &type metadata for WalletPassBarcode, MEMORY[0x277D84560]);
    v58 = swift_allocObject();
    v59 = v101;
    v60 = v102;
    v58[1] = xmmword_251E725D0;
    v58[2] = v59;
    v61 = v103;
    v62 = v104;
    v58[3] = v60;
    v58[4] = v61;
    v58[5] = v62;
    *a2 = v51;
    *(a2 + 8) = v53;
    *(a2 + 16) = 1;
    *(a2 + 24) = v55;
    v63 = v81;
    *(a2 + 32) = v57;
    *(a2 + 40) = v63;
    v64 = v80;
    *(a2 + 48) = v85;
    *(a2 + 56) = v64;
    *(a2 + 64) = v105;
    *(a2 + 72) = 0xD000000000000010;
    v65 = v82;
    *(a2 + 80) = 0x8000000251E73700;
    *(a2 + 88) = v65;
    *(a2 + 96) = v86;
    *(a2 + 104) = &unk_28641AA40;
    *(a2 + 112) = xmmword_251E725E0;
    *(a2 + 128) = 0xD000000000000010;
    *(a2 + 136) = 0x8000000251E73720;
    v66 = v84;
    *(a2 + 144) = v83;
    *(a2 + 152) = v66;
    *(a2 + 160) = xmmword_251E725F0;
    v67 = v77;
    *(a2 + 176) = v74;
    *(a2 + 184) = v67;
    v68 = v76;
    *(a2 + 192) = v78;
    *(a2 + 208) = v68;
    *(a2 + 224) = v75;
    *(a2 + 232) = v58;
    *(a2 + 240) = v79;
    *(a2 + 248) = v49;
    *(a2 + 256) = 513;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }
}

void sub_251E5F120(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v278 = a2;
  v310 = *MEMORY[0x277D85DE8];
  v286 = sub_251E71A68();
  v282 = *(v286 - 8);
  v4 = MEMORY[0x28223BE20](v286);
  v273[0] = v273 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v281 = v273 - v6;
  v7 = *(a1 + 64);
  v295 = *(a1 + 72);
  v292 = v7;
  v8 = [v7 credentialTypes];
  v9 = sub_251E71C08();

  *&v303 = sub_251E71B88();
  *(&v303 + 1) = v10;
  v302 = &v303;
  v11 = sub_251E5C9CC(sub_251E65AB0, v301, v9);

  if (v11)
  {
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_251E718B8();
    v16 = v15;

    sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_251E725D0;
    *(v17 + 32) = 1701869940;
    *(v17 + 40) = 0xE400000000000000;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = v14;
    *(v17 + 72) = v16;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0;
    *(v17 + 136) = 33686789;
    *(v17 + 144) = 0;
    v277 = v17;
    *(v17 + 152) = 1;
  }

  else
  {
    v277 = 0;
  }

  sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
  v19 = v18;
  v20 = swift_allocObject();
  v285 = xmmword_251E725D0;
  *(v20 + 16) = xmmword_251E725D0;
  type metadata accessor for SignedClinicalDataWalletPassManager();
  v21 = swift_getObjCClassFromMetadata();
  v288 = objc_opt_self();
  v291 = v21;
  v22 = [v288 bundleForClass_];
  v279 = "meFormatter";
  v283 = 0xD000000000000020;
  v289 = 0x8000000251E73810;
  v23 = sub_251E718B8();
  v25 = v24;

  v26 = v292;
  v27 = [v292 subject];
  v28 = [v27 fullName];

  v29 = sub_251E71B88();
  v31 = v30;

  strcpy((v20 + 32), "subject-name");
  *(v20 + 45) = 0;
  *(v20 + 46) = -5120;
  *(v20 + 48) = v23;
  *(v20 + 56) = v25;
  *(v20 + 64) = v29;
  *(v20 + 72) = v31;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;

  *(v20 + 112) = 0;

  *(v20 + 120) = 0;
  *(v20 + 128) = 0;

  *&v32 = 33686789;
  v290 = v32;
  *(v20 + 136) = 33686789;
  *(v20 + 144) = 0;
  v33 = 1;
  v276 = v20;
  *(v20 + 152) = 1;
  v34 = sub_251E65258(v26);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v284 = v19;
  v41 = swift_allocObject();
  *(v41 + 1) = v285;
  v41[4] = 0x6D616E2D6D657469;
  v41[5] = 0xE900000000000065;
  v41[6] = v34;
  v41[7] = v36;
  v41[8] = v38;
  v41[9] = v40;
  *(v41 + 5) = 0u;
  *(v41 + 6) = 0u;

  v41[14] = 0;

  v41[15] = 0;
  v41[16] = 0;

  *(v41 + 34) = v290;
  v41[18] = 0;
  *(v41 + 152) = 1;

  *&v303 = sub_251E64CB8(v42);
  sub_251E62E1C(&v303);
  if (v2)
  {
LABEL_155:

    __break(1u);
    return;
  }

  v295 = 0;
  v43 = v303;
  *&v303 = MEMORY[0x277D84F90];
  v44 = (v43 >> 62) & 1;
  if (v43 < 0)
  {
    LODWORD(v44) = 1;
  }

  v280 = v44;
  v294 = v43;
  if (v44 == 1)
  {
    goto LABEL_139;
  }

  for (i = *(v43 + 16); ; i = sub_251E71DA8())
  {
    v275 = v41;
    v46 = MEMORY[0x277D84F90];
    if (i)
    {
      v47 = 0;
      v41 = v294;
      v33 = v294 & 0xC000000000000001;
      v19 = 0x277CCD000uLL;
      v38 = 0x2796E4000uLL;
      v287 = v294 & 0xC000000000000001;
      while (1)
      {
        if (v33)
        {
          v48 = MEMORY[0x253090E10](v47, v41);
        }

        else
        {
          if (v47 >= v41[2])
          {
            goto LABEL_134;
          }

          v48 = v41[v47 + 4];
        }

        v36 = v48;
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (!v50 || ([v50 notGiven] & 1) != 0)
        {
        }

        else
        {
          sub_251E71D68();
          sub_251E71D88();
          v33 = v287;
          sub_251E71D98();
          sub_251E71D78();
          v41 = v294;
        }

        ++v47;
        if (v49 == i)
        {
          v46 = v303;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_22:
    v51 = v46 < 0 || (v46 & 0x4000000000000000) != 0;
    if (v51)
    {
      v41 = sub_251E71DA8();
      if (sub_251E71DA8() < 0)
      {
        __break(1u);
        goto LABEL_155;
      }

      if (v41 >= 4)
      {
        v272 = 4;
      }

      else
      {
        v272 = v41;
      }

      if (v41 >= 0)
      {
        v53 = v272;
      }

      else
      {
        v53 = 4;
      }

      if (sub_251E71DA8() < v53)
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

    else
    {
      v52 = *(v46 + 16);
      if (v52 >= 4)
      {
        v53 = 4;
      }

      else
      {
        v53 = *(v46 + 16);
      }

      if (v52 < v53)
      {
        goto LABEL_148;
      }
    }

    if ((v46 & 0xC000000000000001) != 0 && v53)
    {
      sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);

      sub_251E71D38();
      if (v53 != 1)
      {
        sub_251E71D38();
        if (v53 != 2)
        {
          sub_251E71D38();
          if (v53 != 3)
          {
            sub_251E71D38();
            if (v53 != 4)
            {
              sub_251E71D38();
              sub_251E71D38();
              sub_251E71D38();
            }
          }
        }
      }
    }

    else
    {
    }

    if (v51)
    {
      v54 = sub_251E71DB8();
      v38 = v55;
      v33 = v56;
      v58 = v57;

      v53 = v58 >> 1;
      v46 = v54;
    }

    else
    {
      v33 = 0;
      v38 = v46 + 32;
    }

    v41 = v289;
    v19 = v53 - v33;
    if (__OFSUB__(v53, v33))
    {
      goto LABEL_149;
    }

    if (!v19)
    {
      break;
    }

    v300 = MEMORY[0x277D84F90];
    v41 = &v300;
    sub_251E62F8C(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_152;
    }

    v287 = v46;
    v60 = v300;
    v61 = v38 - 8;
    v36 = 1;
    while (v36 - 1 < v19 && v53 > v33)
    {
      v299 = *(v61 + 8 * v53);
      v63 = v60;
      v41 = v299;
      v2 = v295;
      sub_251E612FC(&v299, &v303);
      v295 = v2;

      v60 = v63;
      v300 = v63;
      v64 = *(v63 + 2);
      v65 = *(v60 + 3);
      v38 = v64 + 1;
      if (v64 >= v65 >> 1)
      {
        v41 = &v300;
        sub_251E62F8C((v65 > 1), v64 + 1, 1);
        v60 = v300;
      }

      *(v60 + 2) = v38;
      v66 = &v60[128 * v64];
      v67 = v303;
      v68 = v304;
      v69 = v306;
      *(v66 + 4) = v305;
      *(v66 + 5) = v69;
      *(v66 + 2) = v67;
      *(v66 + 3) = v68;
      v70 = v307;
      v71 = v308;
      v72 = v309[0];
      *(v66 + 137) = *(v309 + 9);
      *(v66 + 7) = v71;
      *(v66 + 8) = v72;
      *(v66 + 6) = v70;
      if (v19 == v36)
      {
        v74 = v60;
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      --v53;
      if (__OFADD__(v36++, 1))
      {
        goto LABEL_136;
      }
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    ;
  }

  swift_unknownObjectRelease();
  v74 = MEMORY[0x277D84F90];
LABEL_57:
  v19 = v288;
  v75 = [v288 bundleForClass_];
  v273[1] = 0xD000000000000022;
  v273[2] = "FIELD_LABEL_NAME";
  v41 = sub_251E718B8();
  v53 = v76;

  v77 = [v292 recordIssuerDisplayName];
  v36 = sub_251E71B88();
  v33 = v78;

  LOBYTE(v303) = 0;
  v38 = v74;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v79 = v74;
    goto LABEL_59;
  }

LABEL_150:
  v79 = sub_251E62960(0, *(v38 + 16) + 1, 1, v38);
LABEL_59:
  v81 = *(v79 + 2);
  v80 = *(v79 + 3);
  if (v81 >= v80 >> 1)
  {
    v79 = sub_251E62960((v80 > 1), v81 + 1, 1, v79);
  }

  *(v79 + 2) = v81 + 1;
  v274 = v79;
  v82 = &v79[128 * v81];
  *(v82 + 4) = 0x726575737369;
  *(v82 + 5) = 0xE600000000000000;
  *(v82 + 6) = v41;
  *(v82 + 7) = v53;
  *(v82 + 8) = v36;
  *(v82 + 9) = v33;
  *(v82 + 5) = 0u;
  *(v82 + 6) = 0u;
  *(v82 + 7) = 0u;
  *(v82 + 16) = 0;
  *(v82 + 34) = v290;
  *(v82 + 18) = 1;
  v82[152] = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = v285;
  v83 = v19;
  v84 = v291;
  v85 = [v83 bundleForClass_];
  v287 = sub_251E718B8();
  v87 = v86;

  v88 = v292;
  v89 = [v292 subject];
  v90 = [v89 fullName];

  v91 = sub_251E71B88();
  v93 = v92;

  *(v36 + 112) = 0;
  *(v36 + 120) = 0;
  *(v36 + 128) = 0;
  *(v36 + 136) = v290;
  *(v36 + 144) = 0;
  *(v36 + 152) = 1;
  *(v36 + 32) = 0xD000000000000011;
  *(v36 + 40) = 0x8000000251E739E0;
  *(v36 + 48) = v287;
  *(v36 + 56) = v87;
  *(v36 + 64) = v91;
  *(v36 + 72) = v93;
  *(v36 + 80) = 0u;
  *(v36 + 96) = 0u;

  *(v36 + 112) = 0;

  *(v36 + 120) = 0;
  *(v36 + 128) = 0;

  *(v36 + 136) = v290;
  *(v36 + 144) = 0;
  *(v36 + 152) = 1;
  v300 = v36;
  v94 = [v88 subject];
  v53 = [v94 birthDate];

  if (v53)
  {
    v95 = [v288 bundleForClass_];
    v287 = sub_251E718B8();
    *&v285 = v96;

    v97 = sub_251E5CD50();
    v98 = [v53 dateForUTC];
    v99 = v281;
    sub_251E71A48();

    v100 = sub_251E71A18();
    (*(v282 + 8))(v99, v286);
    v101 = [v97 stringFromDate_];

    v41 = sub_251E71B88();
    v38 = v102;

    LOBYTE(v46) = 1;
    v19 = *(v36 + 16);
    v59 = *(v36 + 24);
    v33 = v19 + 1;
    if (v19 < v59 >> 1)
    {
LABEL_63:

      *(v36 + 16) = v33;
      v103 = v36 + (v19 << 7);
      *(v103 + 32) = 6451044;
      *(v103 + 40) = 0xE300000000000000;
      v104 = v285;
      *(v103 + 48) = v287;
      *(v103 + 56) = v104;
      *(v103 + 64) = v41;
      *(v103 + 72) = v38;
      *(v103 + 80) = 0u;
      *(v103 + 96) = 0u;
      *(v103 + 112) = 0u;
      *(v103 + 128) = 0;
      *(v103 + 136) = 33621250;
      *(v103 + 144) = 0;
      *(v103 + 152) = v46;
      v300 = v36;
      goto LABEL_64;
    }

LABEL_152:
    v36 = sub_251E62960((v59 > 1), v33, 1, v36);
    goto LABEL_63;
  }

LABEL_64:
  v105 = [v292 subject];
  v106 = [v105 gender];

  if (v106)
  {
    v287 = sub_251E71B88();
    v108 = v107;

    v109 = [v288 bundleForClass_];
    v110 = sub_251E718B8();
    v112 = v111;

    v114 = *(v36 + 16);
    v113 = *(v36 + 24);
    if (v114 >= v113 >> 1)
    {
      v36 = sub_251E62960((v113 > 1), v114 + 1, 1, v36);
    }

    *(v36 + 16) = v114 + 1;
    v115 = v36 + (v114 << 7);
    *(v115 + 32) = 0x7265646E6567;
    *(v115 + 40) = 0xE600000000000000;
    *(v115 + 48) = v110;
    *(v115 + 56) = v112;
    *(v115 + 64) = v287;
    *(v115 + 72) = v108;
    *(v115 + 80) = 0u;
    *(v115 + 96) = 0u;
    *(v115 + 112) = 0u;
    *(v115 + 128) = 0;
    *(v115 + 136) = v290;
    *(v115 + 144) = 0;
    *(v115 + 152) = 1;
    v300 = v36;
  }

  v299 = 0;
  v116 = [v292 subject];
  v117 = [v116 identifiers];

  v118 = v293;
  if (v117)
  {
    sub_251E659FC(0, &qword_27F4BD6A8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v119 = sub_251E71C08();

    v2 = v295;
    sub_251E61CB8(v119, &v299, &v300);
    v295 = v2;
  }

  v120 = [v292 subject];
  v121 = [v120 emailAddresses];

  if (v121)
  {
    v122 = MEMORY[0x277D837D0];
    v123 = sub_251E71C08();

    v124 = [v288 bundleForClass_];
    v287 = sub_251E718B8();
    v126 = v125;

    *&v303 = v123;
    sub_251E659FC(0, &qword_27F4BD6A8, v122, MEMORY[0x277D83940]);
    sub_251E656B0();
    v127 = sub_251E71B68();
    v129 = v128;

    LOBYTE(v303) = 1;
    v130 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_251E62960(0, *(v130 + 2) + 1, 1, v130);
    }

    v132 = *(v130 + 2);
    v131 = *(v130 + 3);
    if (v132 >= v131 >> 1)
    {
      v130 = sub_251E62960((v131 > 1), v132 + 1, 1, v130);
    }

    *(v130 + 2) = v132 + 1;
    v133 = &v130[128 * v132];
    *(v133 + 4) = 0x736C69616D65;
    *(v133 + 5) = 0xE600000000000000;
    *(v133 + 6) = v287;
    *(v133 + 7) = v126;
    *(v133 + 8) = v127;
    *(v133 + 9) = v129;
    *(v133 + 5) = 0u;
    *(v133 + 6) = 0u;
    *(v133 + 7) = 0u;
    *(v133 + 16) = 0;
    *(v133 + 34) = v290;
    *(v133 + 18) = 0;
    v133[152] = 1;
    v300 = v130;
    v118 = v293;
  }

  v134 = [v292 subject];
  v135 = [v134 phoneNumbers];

  if (v135)
  {
    v136 = MEMORY[0x277D837D0];
    v137 = sub_251E71C08();

    v138 = [v288 bundleForClass_];
    v287 = sub_251E718B8();
    v140 = v139;

    *&v303 = v137;
    sub_251E659FC(0, &qword_27F4BD6A8, v136, MEMORY[0x277D83940]);
    sub_251E656B0();
    v141 = sub_251E71B68();
    v143 = v142;

    LOBYTE(v303) = 1;
    v144 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_251E62960(0, *(v144 + 2) + 1, 1, v144);
    }

    v146 = *(v144 + 2);
    v145 = *(v144 + 3);
    if (v146 >= v145 >> 1)
    {
      v144 = sub_251E62960((v145 > 1), v146 + 1, 1, v144);
    }

    *(v144 + 2) = v146 + 1;
    v147 = &v144[128 * v146];
    *(v147 + 4) = 0x73656E6F6870;
    *(v147 + 5) = 0xE600000000000000;
    *(v147 + 6) = v287;
    *(v147 + 7) = v140;
    *(v147 + 8) = v141;
    *(v147 + 9) = v143;
    *(v147 + 5) = 0u;
    *(v147 + 6) = 0u;
    *(v147 + 7) = 0u;
    *(v147 + 16) = 0;
    *(v147 + 34) = v290;
    *(v147 + 18) = 0;
    v147[152] = 1;
    v300 = v144;
    v118 = v293;
  }

  v148 = [v292 subject];
  v149 = [v148 addresses];

  if (v149)
  {
    v150 = MEMORY[0x277D837D0];
    v151 = sub_251E71C08();

    v152 = [v288 bundleForClass_];
    v287 = sub_251E718B8();
    v154 = v153;

    *&v303 = v151;
    sub_251E659FC(0, &qword_27F4BD6A8, v150, MEMORY[0x277D83940]);
    sub_251E656B0();
    v155 = sub_251E71B68();
    v157 = v156;

    LOBYTE(v303) = 1;
    v158 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = sub_251E62960(0, *(v158 + 2) + 1, 1, v158);
    }

    v160 = *(v158 + 2);
    v159 = *(v158 + 3);
    if (v160 >= v159 >> 1)
    {
      v158 = sub_251E62960((v159 > 1), v160 + 1, 1, v158);
    }

    *(v158 + 2) = v160 + 1;
    v161 = &v158[128 * v160];
    *(v161 + 4) = 0x6573736572646461;
    *(v161 + 5) = 0xE900000000000073;
    *(v161 + 6) = v287;
    *(v161 + 7) = v154;
    *(v161 + 8) = v155;
    *(v161 + 9) = v157;
    *(v161 + 5) = 0u;
    *(v161 + 6) = 0u;
    *(v161 + 7) = 0u;
    *(v161 + 16) = 0;
    *(v161 + 34) = v290;
    *(v161 + 18) = 0;
    v161[152] = 1;
    v300 = v158;
    v118 = v293;
  }

  v162 = [v292 subject];
  v163 = [v162 maritalStatus];

  if (v163)
  {
    v287 = sub_251E71B88();
    v165 = v164;

    v166 = [v288 bundleForClass_];
    v167 = sub_251E718B8();
    v169 = v168;

    v170 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_251E62960(0, *(v170 + 2) + 1, 1, v170);
    }

    v172 = *(v170 + 2);
    v171 = *(v170 + 3);
    if (v172 >= v171 >> 1)
    {
      v170 = sub_251E62960((v171 > 1), v172 + 1, 1, v170);
    }

    *(v170 + 2) = v172 + 1;
    v173 = &v170[128 * v172];
    strcpy(v173 + 32, "marital-status");
    v173[47] = -18;
    *(v173 + 6) = v167;
    *(v173 + 7) = v169;
    *(v173 + 8) = v287;
    *(v173 + 9) = v165;
    *(v173 + 5) = 0u;
    *(v173 + 6) = 0u;
    *(v173 + 7) = 0u;
    *(v173 + 16) = 0;
    *(v173 + 34) = v290;
    *(v173 + 18) = 0;
    v173[152] = 1;
    v300 = v170;
    v118 = v293;
  }

  v174 = [v292 subject];
  v175 = [v174 race];

  if (v175)
  {
    v287 = sub_251E71B88();
    v177 = v176;

    v178 = [v288 bundleForClass_];
    v179 = sub_251E718B8();
    v181 = v180;

    v182 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_251E62960(0, *(v182 + 2) + 1, 1, v182);
    }

    v184 = *(v182 + 2);
    v183 = *(v182 + 3);
    if (v184 >= v183 >> 1)
    {
      v182 = sub_251E62960((v183 > 1), v184 + 1, 1, v182);
    }

    *(v182 + 2) = v184 + 1;
    v185 = &v182[128 * v184];
    *(v185 + 4) = 1701011826;
    *(v185 + 5) = 0xE400000000000000;
    *(v185 + 6) = v179;
    *(v185 + 7) = v181;
    *(v185 + 8) = v287;
    *(v185 + 9) = v177;
    *(v185 + 5) = 0u;
    *(v185 + 6) = 0u;
    *(v185 + 7) = 0u;
    *(v185 + 16) = 0;
    *(v185 + 34) = v290;
    *(v185 + 18) = 0;
    v185[152] = 1;
    v300 = v182;
    v118 = v293;
  }

  v186 = [v292 subject];
  v187 = [v186 ethnicity];

  if (v187)
  {
    v287 = sub_251E71B88();
    v189 = v188;

    v190 = [v288 bundleForClass_];
    v191 = sub_251E718B8();
    v193 = v192;

    v194 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_251E62960(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_251E62960((v195 > 1), v196 + 1, 1, v194);
    }

    *(v194 + 2) = v196 + 1;
    v197 = &v194[128 * v196];
    *(v197 + 4) = 0x746963696E687465;
    *(v197 + 5) = 0xE900000000000079;
    *(v197 + 6) = v191;
    *(v197 + 7) = v193;
    *(v197 + 8) = v287;
    *(v197 + 9) = v189;
    *(v197 + 5) = 0u;
    *(v197 + 6) = 0u;
    *(v197 + 7) = 0u;
    *(v197 + 16) = 0;
    *(v197 + 34) = v290;
    *(v197 + 18) = 0;
    v197[152] = 1;
    v300 = v194;
    v118 = v293;
  }

  v198 = [v292 subject];
  v199 = [v198 birthSex];

  if (v199)
  {
    v287 = sub_251E71B88();
    v201 = v200;

    v202 = [v288 bundleForClass_];
    v203 = sub_251E718B8();
    v205 = v204;

    v206 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_251E62960(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_251E62960((v207 > 1), v208 + 1, 1, v206);
    }

    *(v206 + 2) = v208 + 1;
    v209 = &v206[128 * v208];
    *(v209 + 4) = 0x65732D6874726962;
    *(v209 + 5) = 0xE900000000000078;
    *(v209 + 6) = v203;
    *(v209 + 7) = v205;
    *(v209 + 8) = v287;
    *(v209 + 9) = v201;
    *(v209 + 5) = 0u;
    *(v209 + 6) = 0u;
    *(v209 + 7) = 0u;
    *(v209 + 16) = 0;
    *(v209 + 34) = v290;
    *(v209 + 18) = 0;
    v209[152] = 1;
    v300 = v206;
    v118 = v293;
  }

  if (v280)
  {
    v38 = sub_251E71DA8();
  }

  else
  {
    v38 = *(v294 + 16);
  }

  v210 = 0x2796E4000uLL;
  v211 = v291;
  v212 = v288;
  if (v38)
  {
    v298 = MEMORY[0x277D84F90];
    v41 = &v298;
    sub_251E62F8C(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      __break(1u);
    }

    v213 = 0;
    v36 = v298;
    v214 = v294;
    v33 = v294 & 0xC000000000000001;
    v19 = v38 - 1;
    while (1)
    {
      if (v33)
      {
        v215 = MEMORY[0x253090E10](v213);
      }

      else
      {
        if (v213 >= *(v214 + 16))
        {
          goto LABEL_138;
        }

        v215 = *(v214 + 8 * v213 + 32);
      }

      v41 = v215;
      v297 = v215;
      v2 = v295;
      sub_251E61D50(&v297, v118, &v303);
      v295 = v2;

      v298 = v36;
      v217 = *(v36 + 16);
      v216 = *(v36 + 24);
      v38 = v217 + 1;
      if (v217 >= v216 >> 1)
      {
        v41 = &v298;
        sub_251E62F8C((v216 > 1), v217 + 1, 1);
        v36 = v298;
      }

      *(v36 + 16) = v38;
      v218 = (v36 + (v217 << 7));
      v219 = v303;
      v220 = v304;
      v221 = v306;
      v218[4] = v305;
      v218[5] = v221;
      v218[2] = v219;
      v218[3] = v220;
      v222 = v307;
      v223 = v308;
      v224 = v309[0];
      *(v218 + 137) = *(v309 + 9);
      v218[7] = v223;
      v218[8] = v224;
      v218[6] = v222;
      if (v19 == v213)
      {
        break;
      }

      ++v213;
      v214 = v294;
      if (__OFADD__(v213, 1))
      {
        goto LABEL_137;
      }
    }

    v210 = 0x2796E4000;
    v211 = v291;
    v212 = v288;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_251E72600;
  v226 = [v212 *(v210 + 3720)];
  v294 = sub_251E718B8();
  v228 = v227;

  v229 = [v292 recordIssuerDisplayName];
  v230 = sub_251E71B88();
  v231 = v210;
  v232 = v212;
  v234 = v233;

  *(v225 + 32) = 0x622D726575737369;
  *(v225 + 40) = 0xEB000000006B6361;
  *(v225 + 48) = v294;
  *(v225 + 56) = v228;
  *(v225 + 64) = v230;
  *(v225 + 72) = v234;
  *(v225 + 80) = 0u;
  *(v225 + 96) = 0u;
  *(v225 + 128) = 0;
  *(v225 + 112) = MEMORY[0x277D84F90];
  *(v225 + 120) = 0;
  *(v225 + 136) = v290;
  *(v225 + 144) = 0;
  v287 = 0x8000000251E73A00;
  *(v225 + 152) = 1;
  v235 = [v232 (v231 + 1083)];
  v294 = 0xD000000000000017;
  v236 = sub_251E718B8();
  v238 = v237;

  v239 = v292;
  v240 = HKSignedClinicalDataRecord.detailSignatureStatusPlainString.getter();
  v241 = v287;
  *(v225 + 160) = 0xD000000000000010;
  *(v225 + 168) = v241;
  *(v225 + 176) = v236;
  *(v225 + 184) = v238;
  *(v225 + 192) = v240;
  *(v225 + 200) = v242;
  *(v225 + 208) = 0u;
  *(v225 + 224) = 0u;
  *(v225 + 240) = 0u;
  *(v225 + 256) = 0;
  *(v225 + 264) = v290;
  *(v225 + 272) = 0;
  *(v225 + 280) = 1;
  v243 = [v288 bundleForClass_];
  v244 = sub_251E718B8();
  v246 = v245;

  v247 = sub_251E5CD50();
  v248 = [v239 issuedDate];
  v249 = v281;
  sub_251E71A48();

  v250 = sub_251E71A18();
  v294 = *(v282 + 8);
  (v294)(v249, v286);
  v251 = [v247 stringFromDate_];

  v252 = sub_251E71B88();
  v254 = v253;

  *(v225 + 288) = 0x642D646575737369;
  *(v225 + 296) = 0xEB00000000657461;
  *(v225 + 304) = v244;
  *(v225 + 312) = v246;
  *(v225 + 320) = v252;
  *(v225 + 328) = v254;
  *(v225 + 336) = 0u;
  *(v225 + 352) = 0u;
  *(v225 + 368) = 0u;
  *(v225 + 384) = 0;
  v290 = 0x2020502uLL;
  *(v225 + 392) = 33686786;
  *(v225 + 400) = 0;
  *(v225 + 408) = 1;
  v255 = [v292 expirationDate];
  if (v255)
  {
    v256 = v273[0];
    v257 = v255;
    sub_251E71A48();

    v258 = [v288 bundleForClass_];
    v259 = sub_251E718B8();
    v292 = v260;

    v261 = *(v293 + 16);
    v262 = sub_251E71A18();
    v263 = [v261 stringFromDate_];

    v264 = sub_251E71B88();
    v266 = v265;

    v225 = sub_251E62960(1, 4, 1, v225);
    (v294)(v256, v286);
    *(v225 + 16) = 4;
    *(v225 + 416) = 0x6974617269707865;
    *(v225 + 424) = 0xEF657461642D6E6FLL;
    v267 = v292;
    *(v225 + 432) = v259;
    *(v225 + 440) = v267;
    *(v225 + 448) = v264;
    *(v225 + 456) = v266;
    *(v225 + 464) = 0u;
    *(v225 + 480) = 0u;
    *(v225 + 496) = 0u;
    *(v225 + 512) = 0;
    *(v225 + 520) = v290;
    *(v225 + 528) = 0;
    *(v225 + 536) = 1;
  }

  v296 = v300;

  sub_251E62E98(v36);
  sub_251E62E98(v225);
  v268 = v296;
  v269 = v278;
  v270 = v276;
  *v278 = v277;
  v269[1] = v270;
  v271 = v274;
  v269[2] = v275;
  v269[3] = v271;
  v269[4] = v268;
}

double sub_251E612FC@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251E71A98();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251E650F4(0, &qword_27F4BD6B8, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v66 - v10;
  v11 = sub_251E71A68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = sub_251E5CD50();
  v17 = [v15 sortDate];
  v18 = [v17 date];

  sub_251E71A48();
  v19 = sub_251E71A18();
  (*(v12 + 8))(v14, v11);
  v20 = [v16 stringFromDate_];

  v21 = sub_251E71B88();
  v71 = v22;

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = v23;
  v25 = v15;
  v26 = [v24 doseNumber];
  if (!v26)
  {

LABEL_7:
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    v42 = sub_251E718B8();
    v44 = v50;

    goto LABEL_8;
  }

  v67 = v25;
  v68 = v21;
  v27 = v26;
  v28 = sub_251E71B88();
  v30 = v29;

  v31 = [v24 doseQuantity];
  if (v31)
  {
    v32 = v31;
    v33 = sub_251E71B88();
    v35 = v34;

    v69 = "FIELD_LABEL_DOSE_X";
    v36 = sub_251E71AA8();
    (*(*(v36 - 8) + 56))(v70, 1, 1, v36);
    sub_251E650F4(0, &qword_27F4BD6C8, sub_251E65774, MEMORY[0x277D84560]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_251E72610;
    v38 = MEMORY[0x277D837D0];
    *(v37 + 56) = MEMORY[0x277D837D0];
    v39 = sub_251E657D8();
    *(v37 + 32) = v28;
    *(v37 + 40) = v30;
    *(v37 + 96) = v38;
    *(v37 + 104) = v39;
    *(v37 + 64) = v39;
    *(v37 + 72) = v33;
    *(v37 + 80) = v35;
    type metadata accessor for SignedClinicalDataWalletPassManager();
    v40 = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_251E718B8();
    v44 = v43;

    if (*(v37 + 16))
    {
      v45 = v70;
      v42 = sub_251E71B98();
      v47 = v46;

      v44 = v47;
      v21 = v68;
      sub_251E6582C(v45);
    }

    else
    {

      v21 = v68;
      sub_251E6582C(v70);
    }
  }

  else
  {
    v58 = sub_251E71AA8();
    v59 = v69;
    (*(*(v58 - 8) + 56))(v69, 1, 1, v58);
    sub_251E650F4(0, &qword_27F4BD6C8, sub_251E65774, MEMORY[0x277D84560]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_251E725D0;
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 64) = sub_251E657D8();
    *(v60 + 32) = v28;
    *(v60 + 40) = v30;
    type metadata accessor for SignedClinicalDataWalletPassManager();
    v61 = swift_getObjCClassFromMetadata();
    v62 = [objc_opt_self() bundleForClass_];
    v42 = sub_251E718B8();
    v44 = v63;

    if (*(v60 + 16))
    {
      v42 = sub_251E71B98();
      v65 = v64;

      v44 = v65;
    }

    else
    {
    }

    sub_251E6582C(v59);
    v21 = v68;
  }

LABEL_8:
  v74 = 762869089;
  v75 = 0xE400000000000000;
  v51 = [v15 UUID];
  sub_251E71A88();

  sub_251E6572C(&qword_27F4BD6C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v52 = v73;
  v53 = sub_251E71E98();
  MEMORY[0x253090C90](v53);

  (*(v72 + 8))(v6, v52);
  v54 = v74;
  v55 = v75;
  LOBYTE(v74) = 0;
  *a2 = v54;
  *(a2 + 8) = v55;
  *(a2 + 16) = v42;
  *(a2 + 24) = v44;
  v56 = v71;
  *(a2 + 32) = v21;
  *(a2 + 40) = v56;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *&result = 33621249;
  *(a2 + 104) = 33621249;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

double sub_251E61B08(void *a1, void *a2, char **a3)
{
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v9 = *a1;
    ++*a2;
    v10 = sub_251E71E98();
    MEMORY[0x253090C90](v10);

    v8 = 0x696669746E656469;
    v19 = 0xEB000000002D7265;
    v11 = v9[2];
    if (v11)
    {
      v4 = v9[5];
      v18 = v9[4];
      v12 = &v9[2 * v11 + 4];
      v3 = *(v12 - 16);
      v6 = *(v12 - 8);
    }

    else
    {
      v3 = 0;
      v18 = 0;
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    v7 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }
  }

  v7 = sub_251E62960(0, *(v7 + 2) + 1, 1, v7);
  *v5 = v7;
LABEL_6:
  v15 = *(v7 + 2);
  v14 = *(v7 + 3);
  if (v15 >= v14 >> 1)
  {
    v7 = sub_251E62960((v14 > 1), v15 + 1, 1, v7);
    *v5 = v7;
  }

  *(v7 + 2) = v15 + 1;
  v16 = &v7[128 * v15];
  *(v16 + 4) = v8;
  *(v16 + 5) = v19;
  *(v16 + 6) = v18;
  *(v16 + 7) = v4;
  *(v16 + 8) = v3;
  *(v16 + 9) = v6;
  *(v16 + 5) = 0u;
  *(v16 + 6) = 0u;
  *(v16 + 7) = 0u;
  *(v16 + 16) = 0;
  *&result = 33686789;
  *(v16 + 34) = 33686789;
  *(v16 + 18) = 0;
  v16[152] = 1;
  return result;
}

void sub_251E61CB8(uint64_t a1, void *a2, char **a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v8 = *i;

      sub_251E61B08(&v8, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_251E61D50(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  sub_251E650F4(0, &qword_27F4BD6B8, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v59 - v6;
  v7 = sub_251E71A98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_251E71A68();
  v11 = *(v62 - 1);
  MEMORY[0x28223BE20](v62);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  v59 = v7;
  v17 = v14;
  if (![v16 notGiven])
  {

    v7 = v59;
LABEL_6:
    v63 = 0x2D64726F636572;
    v64 = 0xE700000000000000;
    v42 = [v14 UUID];
    sub_251E71A88();

    sub_251E6572C(&qword_27F4BD6C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = sub_251E71E98();
    MEMORY[0x253090C90](v43);

    (*(v8 + 8))(v10, v7);
    v44 = v63;
    v60 = v64;
    v45 = sub_251E65ACC();
    v47 = v46;
    v48 = sub_251E5CD50();
    v49 = [v14 sortDate];
    v50 = [v49 date];

    sub_251E71A48();
    v51 = sub_251E71A18();
    (*(v11 + 8))(v13, v62);
    v52 = [v48 stringFromDate_];

    v53 = sub_251E71B88();
    v55 = v54;

    v56 = v60;
    *a3 = v44;
    *(a3 + 8) = v56;
    *(a3 + 16) = v45;
    *(a3 + 24) = v47;
    *(a3 + 32) = v53;
    *(a3 + 40) = v55;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0;
    *(a3 + 104) = 1282;
    v57 = 1;
    goto LABEL_9;
  }

  v18 = sub_251E5CDD0();
  v19 = [v17 sortDate];
  v20 = [v19 date];

  sub_251E71A48();
  v21 = sub_251E71A18();
  (*(v11 + 8))(v13, v62);
  v22 = [v18 stringFromDate_];

  v23 = sub_251E71B88();
  v25 = v24;

  v63 = 0x2D64726F636572;
  v64 = 0xE700000000000000;
  v26 = [v17 UUID];
  sub_251E71A88();

  sub_251E6572C(&qword_27F4BD6C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v27 = v59;
  v28 = sub_251E71E98();
  MEMORY[0x253090C90](v28);

  (*(v8 + 8))(v10, v27);
  v61 = v63;
  v62 = v17;
  v59 = v64;
  v29 = sub_251E65ACC();
  v31 = v30;
  v32 = sub_251E71AA8();
  v33 = v60;
  (*(*(v32 - 8) + 56))(v60, 1, 1, v32);
  sub_251E650F4(0, &qword_27F4BD6C8, sub_251E65774, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_251E725D0;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_251E657D8();
  *(v34 + 32) = v23;
  *(v34 + 40) = v25;
  type metadata accessor for SignedClinicalDataWalletPassManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() bundleForClass_];
  v37 = sub_251E718B8();
  v39 = v38;

  if (*(v34 + 16))
  {
    v37 = sub_251E71B98();
    v41 = v40;

    v39 = v41;
  }

  else
  {
  }

  sub_251E6582C(v33);
  v58 = v59;
  *a3 = v61;
  *(a3 + 8) = v58;
  *(a3 + 16) = v29;
  *(a3 + 24) = v31;
  *(a3 + 32) = v37;
  *(a3 + 40) = v39;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1285;
  v57 = 2;
LABEL_9:
  *(a3 + 106) = v57;
  *(a3 + 107) = 2;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
}

uint64_t SignedClinicalDataWalletPassManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_251E624EC()
{
  result = qword_27F4BD678;
  if (!qword_27F4BD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD678);
  }

  return result;
}

uint64_t sub_251E62594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 32);
  v6 = sub_251E71B78();
  v7 = sub_251E71B78();
  v8 = [v5 passWithPassTypeIdentifier:v6 serialNumber:v7];

  os_unfair_lock_unlock((v4 + 24));
  if (v8)
  {
    v9 = [v8 uniqueID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_251E71B88();

      return v11;
    }
  }

  return 0;
}

void sub_251E62680(uint64_t a1)
{
  if (!qword_27F4BD680)
  {
    sub_251E71928();
    sub_251E650F4(255, &qword_27F4BD688, type metadata accessor for PassComponents.BundleResource, MEMORY[0x277D83940]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4BD680);
    }
  }
}

uint64_t sub_251E62778(uint64_t a1, uint64_t a2)
{
  sub_251E62680(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251E627DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_251E6283C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251E659FC(0, &qword_27F4BD718, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251E62960(char *result, int64_t a2, char a3, char *a4)
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
    sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251E62A84(char *result, int64_t a2, char a3, char *a4)
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
    sub_251E65924(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_251E62B7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251E650F4(0, &qword_27F4BD720, type metadata accessor for PassComponents.BundleResource, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for PassComponents.BundleResource(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassComponents.BundleResource(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_251E62D78(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251E659FC(0, &qword_27F4BD6F0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_251E62E1C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_251E65158(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_251E630D0(v6);
  return sub_251E71D78();
}

void sub_251E62E98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_251E62960(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_251E62F8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251E62FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251E62FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_251E659FC(0, &qword_27F4BD6A0, &type metadata for WalletPassField, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_251E630D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_251E71E88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);
        v6 = sub_251E71C18();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_251E6344C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_251E631E4(0, v2, 1, a1);
  }
}

void sub_251E631E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_251E71A68();
  v8 = MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v34 = (v10 + 8);
    v12 = v38 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_5:
    v32 = v12;
    v33 = a3;
    v14 = *(v38 + 8 * a3);
    v31 = v13;
    while (1)
    {
      v15 = *v12;
      v16 = v14;
      v17 = v15;
      v18 = [v16 sortDate];
      v19 = [v18 date];

      v20 = v35;
      sub_251E71A48();

      v21 = [v17 sortDate];
      v22 = [v21 date];

      v23 = v36;
      sub_251E71A48();

      LOBYTE(v21) = sub_251E71A28();
      v24 = *v34;
      v25 = v23;
      v26 = v37;
      (*v34)(v25, v37);
      v24(v20, v26);

      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v12 = v32 + 8;
        v13 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v27 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v27;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_251E6344C(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v135 = sub_251E71A68();
  v9 = MEMORY[0x28223BE20](v135);
  v134 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v133 = &v120 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_87:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_126;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = a4;
    }

    else
    {
LABEL_120:
      v115 = sub_251E642F8(a4);
    }

    v136 = v115;
    a4 = *(v115 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v116 = *&v115[16 * a4];
        v117 = v115;
        v118 = *&v115[16 * a4 + 24];
        sub_251E63D70((*a3 + 8 * v116), (*a3 + 8 * *&v115[16 * a4 + 16]), (*a3 + 8 * v118), v5);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v118 < v116)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_251E642F8(v117);
        }

        if ((a4 - 2) >= *(v117 + 2))
        {
          goto LABEL_114;
        }

        v119 = &v117[16 * a4];
        *v119 = v116;
        *(v119 + 1) = v118;
        v136 = v117;
        sub_251E6426C(a4 - 1);
        v115 = v136;
        a4 = *(v136 + 2);
        if (a4 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v14 = 0;
  v132 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v124 = a4;
  v121 = a3;
  while (1)
  {
    v16 = v14++;
    v126 = v16;
    if (v14 < v13)
    {
      v130 = v13;
      v122 = v15;
      v123 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v19 = v16;
      v128 = 8 * v16;
      v20 = (v17 + 8 * v16);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v18;
      v23 = v21;
      v24 = [v22 sortDate];
      v25 = [v24 date];

      v26 = v133;
      sub_251E71A48();

      v27 = [v23 sortDate];
      v28 = [v27 date];

      v29 = v134;
      sub_251E71A48();

      LODWORD(v131) = sub_251E71A28();
      v30 = *v132;
      v31 = v29;
      v32 = v135;
      (*v132)(v31, v135);
      v129 = v30;
      v30(v26, v32);

      v33 = v19 + 2;
      while (1)
      {
        v14 = v130;
        if (v130 == v33)
        {
          break;
        }

        v34 = *(v5 - 8);
        v35 = *v5;
        v36 = v34;
        v37 = [v35 sortDate];
        v38 = [v37 date];

        v39 = v133;
        sub_251E71A48();

        v40 = [v36 sortDate];
        v41 = [v40 date];

        v42 = v134;
        sub_251E71A48();

        LODWORD(v40) = sub_251E71A28() & 1;
        v43 = v135;
        v44 = v129;
        v129(v42, v135);
        v44(v39, v43);

        ++v33;
        v5 += 8;
        if ((v131 & 1) != v40)
        {
          v14 = v33 - 1;
          break;
        }
      }

      v15 = v122;
      v6 = v123;
      a3 = v121;
      a4 = v124;
      v16 = v126;
      v45 = v128;
      if (v131)
      {
        if (v14 < v126)
        {
          goto LABEL_117;
        }

        if (v126 < v14)
        {
          v46 = 8 * v14 - 8;
          v47 = v14;
          v48 = v126;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v49 = *(v50 + v45);
              *(v50 + v45) = *(v50 + v46);
              *(v50 + v46) = v49;
            }

            ++v48;
            v46 -= 8;
            v45 += 8;
          }

          while (v48 < v47);
        }
      }
    }

    v51 = a3[1];
    if (v14 < v51)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_116;
      }

      if (v14 - v16 < a4)
      {
        v52 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_118;
        }

        if (v52 >= v51)
        {
          v52 = a3[1];
        }

        if (v52 < v16)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v14 != v52)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v14 < v16)
    {
      goto LABEL_115;
    }

    v69 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v69;
    }

    else
    {
      v15 = sub_251E62A84(0, *(v69 + 2) + 1, 1, v69);
    }

    v71 = *(v15 + 2);
    v70 = *(v15 + 3);
    v5 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v15 = sub_251E62A84((v70 > 1), v71 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v72 = &v15[16 * v71];
    *(v72 + 4) = v126;
    *(v72 + 5) = v14;
    a4 = *v125;
    if (!*v125)
    {
      goto LABEL_125;
    }

    if (v71)
    {
      while (1)
      {
        v73 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v74 = *(v15 + 4);
          v75 = *(v15 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_55:
          if (v77)
          {
            goto LABEL_104;
          }

          v90 = &v15[16 * v5];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_107;
          }

          v96 = &v15[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_111;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v100 = &v15[16 * v5];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_69:
        if (v95)
        {
          goto LABEL_106;
        }

        v103 = &v15[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_109;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_76:
        v111 = v73 - 1;
        if (v73 - 1 >= v5)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v112 = v15;
        v113 = *&v15[16 * v111 + 32];
        v5 = *&v15[16 * v73 + 40];
        sub_251E63D70((*a3 + 8 * v113), (*a3 + 8 * *&v15[16 * v73 + 32]), (*a3 + 8 * v5), a4);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v5 < v113)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_251E642F8(v112);
        }

        if (v111 >= *(v112 + 2))
        {
          goto LABEL_101;
        }

        v114 = &v112[16 * v111];
        *(v114 + 4) = v113;
        *(v114 + 5) = v5;
        v136 = v112;
        sub_251E6426C(v73);
        v15 = v136;
        v5 = *(v136 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v15[16 * v5 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_102;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_103;
      }

      v85 = &v15[16 * v5];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_105;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_108;
      }

      if (v89 >= v81)
      {
        v107 = &v15[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_112;
        }

        if (v76 < v110)
        {
          v73 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v124;
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v122 = v15;
  v123 = v6;
  v131 = *a3;
  v53 = v131 + 8 * v14 - 8;
  v54 = v16 - v14;
  v127 = v52;
LABEL_28:
  v129 = v53;
  v130 = v14;
  v55 = *(v131 + 8 * v14);
  v128 = v54;
  while (1)
  {
    v56 = *v53;
    v5 = v55;
    v57 = v56;
    v58 = [v5 sortDate];
    v59 = [v58 date];

    v60 = v133;
    sub_251E71A48();

    v61 = [v57 sortDate];
    v62 = [v61 date];

    v63 = v134;
    sub_251E71A48();

    a4 = sub_251E71A28();
    v64 = *v132;
    v65 = v63;
    v66 = v135;
    (*v132)(v65, v135);
    v64(v60, v66);

    if ((a4 & 1) == 0)
    {
LABEL_27:
      v14 = v130 + 1;
      v53 = v129 + 8;
      v54 = v128 - 1;
      if (v130 + 1 != v127)
      {
        goto LABEL_28;
      }

      v14 = v127;
      v15 = v122;
      v6 = v123;
      a3 = v121;
      v16 = v126;
      goto LABEL_35;
    }

    if (!v131)
    {
      break;
    }

    v67 = *v53;
    v55 = *(v53 + 8);
    *v53 = v55;
    *(v53 + 8) = v67;
    v53 -= 8;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_251E63D70(id *a1, id *a2, char *a3, void **a4)
{
  v57 = sub_251E71A68();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v59 = &a4[v15];
    if (a3 - a2 < 8)
    {
      v30 = a2;
    }

    else
    {
      v30 = a2;
      if (a2 > a1)
      {
        v52 = (v8 + 8);
        v58 = a4;
        v50 = a1;
LABEL_28:
        v51 = v30;
        v31 = v30 - 1;
        a3 -= 8;
        v32 = v59;
        v53 = v30 - 1;
        do
        {
          v33 = a3 + 8;
          v34 = *--v32;
          v35 = *v31;
          v36 = v34;
          v54 = v36;
          v37 = v35;
          v38 = [v36 sortDate];
          v39 = [v38 date];

          v40 = v55;
          sub_251E71A48();

          v41 = [v37 sortDate];
          v42 = [v41 date];

          v43 = v56;
          sub_251E71A48();

          LOBYTE(v41) = sub_251E71A28();
          v44 = *v52;
          v45 = v43;
          v46 = v57;
          (*v52)(v45, v57);
          v44(v40, v46);

          if (v41)
          {
            v47 = v50;
            v48 = v53;
            if (v33 != v51)
            {
              *a3 = *v53;
            }

            a4 = v58;
            if (v59 <= v58 || (v30 = v48, v48 <= v47))
            {
              v30 = v48;
              goto LABEL_39;
            }

            goto LABEL_28;
          }

          if (v33 != v59)
          {
            *a3 = *v32;
          }

          a3 -= 8;
          v59 = v32;
          v31 = v53;
        }

        while (v32 > v58);
        v59 = v32;
        v30 = v51;
        a4 = v58;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v59 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = (v8 + 8);
      v54 = a3;
      while (1)
      {
        v58 = a4;
        v16 = *a4;
        v17 = *a2;
        v18 = v16;
        v19 = [v17 sortDate];
        v20 = [v19 date];

        v21 = v55;
        sub_251E71A48();

        v22 = [v18 sortDate];
        v23 = [v22 date];

        v24 = v56;
        sub_251E71A48();

        LOBYTE(v22) = sub_251E71A28();
        v25 = *v53;
        v26 = v24;
        v27 = v57;
        (*v53)(v26, v57);
        v25(v21, v27);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = a1 == a2++;
        a4 = v58;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++a1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_20;
        }
      }

      v28 = v58;
      a4 = v58 + 1;
      if (a1 == v58)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    v30 = a1;
  }

LABEL_39:
  if (v30 != a4 || v30 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_251E6426C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251E642F8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_251E6430C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_251E71F38();
  sub_251E71BB8();
  v8 = sub_251E71F58();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_251E71EB8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_251E646DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_251E6445C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251E659A8(0, &qword_27F4BD710, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251E71D08();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_251E71F38();
      sub_251E71BB8();
      result = sub_251E71F58();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251E646DC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_251E6445C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251E6485C();
      goto LABEL_16;
    }

    sub_251E649D8(v8 + 1);
  }

  v10 = *v4;
  sub_251E71F38();
  sub_251E71BB8();
  result = sub_251E71F58();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_251E71EB8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_251E71ED8();
  __break(1u);
  return result;
}

void *sub_251E6485C()
{
  v1 = v0;
  sub_251E659A8(0, &qword_27F4BD710, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_251E71CF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_251E649D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251E659A8(0, &qword_27F4BD710, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251E71D08();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_251E71F38();

      sub_251E71BB8();
      result = sub_251E71F58();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void (*sub_251E64C30(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253090E10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_251E64CB0;
  }

  __break(1u);
  return result;
}

void *sub_251E64CB8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_251E71DA8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_251E62D78(v3, 0);
  sub_251E64D4C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251E64D4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251E71DA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251E71DA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251E658BC(0);
          sub_251E6572C(&qword_27F4BD6E8, sub_251E658BC, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251E64C30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_251E5C984(0, &qword_27F4BD668, 0x277CCD5F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_251E650F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251E6516C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_251E651C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253090D30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_251E6430C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_251E65258(void *a1)
{
  v2 = [a1 credentialTypes];
  v3 = sub_251E71C08();

  v33[0] = sub_251E71B88();
  v33[1] = v4;
  v32 = v33;
  sub_251E5C9CC(sub_251E65AB0, v31, v3);

  type metadata accessor for SignedClinicalDataWalletPassManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_251E718B8();

  v28 = a1;
  v7 = [a1 items];
  sub_251E5C984(0, &qword_27F4BD708, 0x277CCD990);
  v8 = sub_251E71C08();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v6;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    v30 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v9 = sub_251E71DA8();
  v29 = v6;
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v30 = MEMORY[0x277D84F90];
  do
  {
    v10 = v6;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x253090E10](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v13 = [v11 primaryConcept];
      v14 = [v13 localizedPreferredName];

      if (v14)
      {
        break;
      }

      ++v10;
      if (v6 == v9)
      {
        goto LABEL_23;
      }
    }

    v15 = sub_251E71B88();
    v17 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_251E6283C(0, *(v30 + 2) + 1, 1, v30);
    }

    v19 = *(v30 + 2);
    v18 = *(v30 + 3);
    if (v19 >= v18 >> 1)
    {
      v30 = sub_251E6283C((v18 > 1), v19 + 1, 1, v30);
    }

    *(v30 + 2) = v19 + 1;
    v20 = &v30[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
  }

  while (v6 != v9);
LABEL_23:

  v21 = sub_251E651C0(v30);

  sub_251E5CCD4(v21);
  if (!v22)
  {

    v25 = [v28 recordItemsDisplayName];
    sub_251E71B88();
LABEL_28:
    v24 = v29;

    return v24;
  }

  v23 = *(v21 + 16);

  if (v23 != 1)
  {

    v25 = [objc_opt_self() bundleForClass_];
    sub_251E718B8();
    goto LABEL_28;
  }

  return v29;
}

unint64_t sub_251E656B0()
{
  result = qword_27F4BD6B0;
  if (!qword_27F4BD6B0)
  {
    sub_251E659FC(255, &qword_27F4BD6A8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD6B0);
  }

  return result;
}

uint64_t sub_251E6572C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251E65774()
{
  result = qword_27F4BD6D0;
  if (!qword_27F4BD6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4BD6D0);
  }

  return result;
}

unint64_t sub_251E657D8()
{
  result = qword_27F4BD6D8;
  if (!qword_27F4BD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD6D8);
  }

  return result;
}

uint64_t sub_251E6582C(uint64_t a1)
{
  sub_251E650F4(0, &qword_27F4BD6B8, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251E658BC(uint64_t a1)
{
  if (!qword_27F4BD6E0)
  {
    sub_251E5C984(255, &qword_27F4BD668, 0x277CCD5F8);
    v1 = sub_251E71C28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4BD6E0);
    }
  }
}

void sub_251E65924(uint64_t a1)
{
  if (!qword_27F4BD6F8)
  {
    sub_251E659A8(255, &qword_27F4BD700, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_251E71EA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4BD6F8);
    }
  }
}

void sub_251E659A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251E659FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251E65A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassComponents.BundleResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251E65ACC()
{
  v1 = [v0 primaryConcept];
  v2 = [v1 localizedPreferredName];

  if (v2)
  {
    v3 = sub_251E71B88();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  result = sub_251E65BDC();
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    result = sub_251E65DCC();
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      v12 = [v0 fallbackDisplayString];
      v13 = sub_251E71B88();

      return v13;
    }
  }

  return result;
}

uint64_t sub_251E65BDC()
{
  v1 = [v0 medicalRecordCodings];
  sub_251E5C984(0, &qword_27F4BD728, 0x277CCD5C0);
  v2 = sub_251E71C08();

  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_251E71DA8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253090E10](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 codingSystem];
    v9 = [objc_opt_self() textSystem];
    v10 = v9;
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_19;
    }
  }

  sub_251E5C984(0, &qword_27F4BD730, 0x277CCD5D0);
  v11 = sub_251E71CA8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v6 displayString];

  if (v12)
  {
    v13 = sub_251E71B88();

    return v13;
  }

  return 0;
}

uint64_t sub_251E65DCC()
{
  v1 = [v0 medicalRecordCodings];
  sub_251E5C984(0, &qword_27F4BD728, 0x277CCD5C0);
  v2 = sub_251E71C08();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_251E71DA8();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253090E10](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v5 displayString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_251E71B88();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v14 = [v6 displayString];

  if (v14)
  {
    v15 = sub_251E71B88();

    return v15;
  }

  return 0;
}

unint64_t HKSignedClinicalDataRecord.appLaunchURL.getter()
{
  v1 = v0;
  v2 = sub_251E71A98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = [v1 items];
  sub_251E663DC();
  v10 = sub_251E71C08();

  if (v10 >> 62)
  {
    if (sub_251E71DA8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x253090E10](0, v10);
      goto LABEL_6;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
LABEL_6:
      v12 = v11;

      v13 = [v12 medicalRecordSampleID];

      sub_251E71A88();
      (*(v3 + 32))(v8, v6, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_251E71D28();

      v32 = 0xD000000000000022;
      v33 = 0x8000000251E73E10;
      v14 = sub_251E71A78();
      MEMORY[0x253090C90](v14);

      v15 = v32;
      (*(v3 + 8))(v8, v2);
      return v15;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_27F4BD650 != -1)
  {
LABEL_15:
    swift_once();
  }

  v16 = sub_251E71B18();
  __swift_project_value_buffer(v16, qword_27F4BF310);
  v17 = v1;
  v18 = sub_251E71AF8();
  v19 = sub_251E71C78();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    v22 = HKSensitiveLogItem();
    sub_251E71CC8();
    swift_unknownObjectRelease();
    v23 = __swift_project_boxed_opaque_existential_0(&v32, v34);
    MEMORY[0x28223BE20](v23);
    (*(v25 + 16))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_251E71BA8();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(&v32);
    v29 = sub_251E66D74(v26, v28, &v35);

    *(v20 + 4) = v29;
    _os_log_impl(&dword_251E5A000, v18, v19, "unable to construct deep link to %s, no valid record", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x253091490](v21, -1, -1);
    MEMORY[0x253091490](v20, -1, -1);
  }

  return 0xD000000000000022;
}

unint64_t sub_251E663DC()
{
  result = qword_27F4BD708;
  if (!qword_27F4BD708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4BD708);
  }

  return result;
}

uint64_t sub_251E66488(void *a1, uint64_t (*a2)(void *))
{
  v4 = [v2 credentialTypes];
  v5 = sub_251E71C08();

  v9[0] = sub_251E71B88();
  v9[1] = v6;
  v8[2] = v9;
  LOBYTE(a2) = sub_251E5C9CC(a2, v8, v5);

  return a2 & 1;
}

BOOL HKSignedClinicalDataRecord.permanentlyIneligibleToBeAddedToWallet.getter()
{
  v1 = sub_251E71A68();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if ((HKSignedClinicalDataRecord.hasAddToWalletEligibleCredentialTypes.getter() & 1) == 0)
  {
    return 1;
  }

  v11 = [v0 expirationDate];
  if (v11 && (v12 = v11, sub_251E71A48(), v12, (*(v2 + 32))(v10, v8, v1), sub_251E71A58(), v13 = sub_251E71A38(), v14 = *(v2 + 8), v14(v5, v1), v14(v10, v1), (v13 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return [v0 signatureStatus] == 3;
  }
}

BOOL HKSignedClinicalDataRecord.eligibleToBeAddedToWallet.getter()
{
  v1 = sub_251E71A68();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  if ((HKSignedClinicalDataRecord.hasAddToWalletEligibleCredentialTypes.getter() & 1) == 0)
  {
    return 0;
  }

  v8 = [v0 expirationDate];
  if (v8)
  {
    v9 = v8;
    sub_251E71A48();

    sub_251E71A58();
    LOBYTE(v9) = sub_251E71A38();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
    if (v9)
    {
      return 0;
    }
  }

  return [v0 signatureStatus] != 3 && objc_msgSend(v0, sel_signatureStatus) == 2;
}

uint64_t HKSignedClinicalDataRecord.detailSignatureStatusPlainString.getter()
{
  v1 = v0;
  v2 = sub_251E71A68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = [v1 expirationDate];
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v12;
  sub_251E71A48();

  (*(v3 + 32))(v11, v9, v2);
  sub_251E71A58();
  v14 = sub_251E71A38();
  v15 = *(v3 + 8);
  v15(v6, v2);
  if ((v14 & 1) == 0)
  {
    v15(v11, v2);
LABEL_5:
    [v1 signatureStatus];
    type metadata accessor for SignedClinicalDataWalletPassManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v18 = sub_251E718B8();

    return v18;
  }

  type metadata accessor for SignedClinicalDataWalletPassManager();
  v16 = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_251E718B8();

  v15(v11, v2);
  return v18;
}

uint64_t HKSignedClinicalDataRecord.hasAddToWalletEligibleCredentialTypes.getter()
{
  v1 = [v0 credentialTypes];
  v2 = sub_251E71C08();

  v13 = sub_251E71B88();
  v14 = v3;
  v12 = &v13;
  v4 = sub_251E5C9CC(sub_251E65AB0, v11, v2);

  if (v4)
  {
    v5 = [v0 credentialTypes];
    v6 = sub_251E71C08();

    v13 = sub_251E71B88();
    v14 = v7;
    MEMORY[0x28223BE20](v13);
    v10[2] = &v13;
    v8 = sub_251E5C9CC(sub_251E65AB0, v10, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_251E66D74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251E66E40(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_251E67394(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251E66E40(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251E66F4C(a5, a6);
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
    result = sub_251E71D58();
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

void *sub_251E66F4C(uint64_t a1, unint64_t a2)
{
  v3 = sub_251E66F98(a1, a2);
  sub_251E670C8(&unk_28641AA70);
  return v3;
}

void *sub_251E66F98(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251E671B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251E71D58();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251E71BD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251E671B4(v10, 0);
        result = sub_251E71D18();
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

void sub_251E670C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_251E6721C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_251E671B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251E673F0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251E6721C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251E673F0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_251E67394(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251E673F0()
{
  if (!qword_27F4BD738)
  {
    v0 = sub_251E71EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4BD738);
    }
  }
}

uint64_t WalletPass.asData()()
{
  v1 = sub_251E71838();
  MEMORY[0x28223BE20](v1);
  memcpy(v5, v0, sizeof(v5));
  sub_251E71878();
  swift_allocObject();
  sub_251E71868();
  sub_251E676B0(0, &qword_27F4BD740, MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_251E72610;
  sub_251E71818();
  sub_251E71828();
  sub_251E67658();
  sub_251E676B0(0, &qword_27F4BD750, MEMORY[0x277D83940]);
  sub_251E67710();
  sub_251E71CD8();
  sub_251E71848();
  memcpy(v4, v5, sizeof(v4));
  sub_251E67784();
  v2 = sub_251E71858();

  return v2;
}

unint64_t sub_251E67658()
{
  result = qword_27F4BD748;
  if (!qword_27F4BD748)
  {
    sub_251E71838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD748);
  }

  return result;
}

void sub_251E676B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_251E71838();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251E67710()
{
  result = qword_27F4BD758;
  if (!qword_27F4BD758)
  {
    sub_251E676B0(255, &qword_27F4BD750, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD758);
  }

  return result;
}

unint64_t sub_251E67784()
{
  result = qword_27F4BD760;
  if (!qword_27F4BD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD760);
  }

  return result;
}

uint64_t WalletPassManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  v2 = v1;
  return v0;
}

uint64_t PassComponents.init(identifier:walletPass:icon2xURL:icon3xURL:resources:)@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_251E67BA8(a1, a6);
  memcpy((a6 + 40), a2, 0x118uLL);
  v11 = type metadata accessor for PassComponents(0);
  v12 = v11[6];
  v13 = sub_251E71928();
  v14 = *(*(v13 - 8) + 32);
  v14(a6 + v12, a3, v13);
  result = (v14)(a6 + v11[7], a4, v13);
  *(a6 + v11[8]) = a5;
  return result;
}

uint64_t PassComponents.BundleResource.init(url:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251E71928();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PassComponents.BundleResource(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t PassComponents.walletPass.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x118uLL);
  memcpy(a1, (v1 + 40), 0x118uLL);
  return sub_251E67C9C(__dst, v4);
}

uint64_t PassComponents.icon2xURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassComponents(0) + 24);
  v4 = sub_251E71928();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PassComponents.icon3xURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassComponents(0) + 28);
  v4 = sub_251E71928();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PassComponents.resources.getter()
{
  type metadata accessor for PassComponents(0);
}

uint64_t WalletPassManager.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  v2 = v1;
  return v0;
}

uint64_t sub_251E67BA8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251E67C00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251E67C38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_251E67CF8()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = [*(v0 + 32) canAddPassOfType_];
  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

uint64_t sub_251E67D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 24));
  sub_251E67DA8((v3 + 32), a2, a3, &v7);
  os_unfair_lock_unlock((v3 + 24));
  return v7;
}

void sub_251E67DA8(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  (*(a3 + 8))(a2, a3);
  v8 = sub_251E71B78();

  (*(a3 + 16))(a2, a3);
  v9 = sub_251E71B78();

  v10 = [v7 passWithPassTypeIdentifier:v8 serialNumber:v9];

  *a4 = v10;
}

void *sub_251E67E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251E67D40(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = [result uniqueID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_251E71B88();

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_251E67F00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_251E67E88(a1, a2, a3);
  if (v6)
  {
    MEMORY[0x253090C90](v5);

    sub_251E71918();
  }

  else
  {
    v7 = sub_251E71928();
    v8 = *(*(v7 - 8) + 56);

    v8(a4, 1, 1, v7);
  }
}

void sub_251E67FF4(void *a1, void (*a2)(void), void (*a3)(void))
{
  v40 = a2;
  v41 = a3;
  v5 = sub_251E71B28();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_251E71B58();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251E71B38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251E71928();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  if ([objc_opt_self() isWalletVisible])
  {
    sub_251E68FD0(a1, v18);
    sub_251E5C984(0, &qword_27F4BD768, 0x277D85C78);
    (*(v9 + 104))(v11, *MEMORY[0x277D851C8], v8);
    v32 = v3;
    v33 = sub_251E71C98();
    (*(v9 + 8))(v11, v8);
    (*(v13 + 16))(v16, v18, v12);
    v23 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v32;
    (*(v13 + 32))(v24 + v23, v16, v12);
    v25 = (v24 + ((v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v26 = v41;
    *v25 = v40;
    v25[1] = v26;
    aBlock[4] = sub_251E698A8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251E689E4;
    aBlock[3] = &block_descriptor;
    v27 = _Block_copy(aBlock);

    v28 = v34;
    sub_251E71B48();
    v42 = MEMORY[0x277D84F90];
    sub_251E69954();
    sub_251E6A5D8(0, &qword_27F4BD778, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_251E699AC();
    v29 = v36;
    v30 = v39;
    sub_251E71CD8();
    v31 = v33;
    MEMORY[0x253090D50](0, v28, v29, v27);
    _Block_release(v27);

    (*(v38 + 8))(v29, v30);
    (*(v35 + 8))(v28, v37);
    (*(v13 + 8))(v18, v12);
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    v19 = [*(v3 + 32) canAddPassOfType_];
    os_unfair_lock_unlock((v3 + 24));
    sub_251E624EC();
    v20 = swift_allocError();
    if (v19)
    {
      *v21 = 0;
    }

    else
    {
      *v21 = 1;
    }

    v22 = v20;
    v40();
  }
}

void sub_251E685A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v21 = a1;
  v6 = sub_251E71928();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  os_unfair_lock_lock((a1 + 24));
  v20 = *(a1 + 32);
  sub_251E6A5D8(0, &qword_27F4BD7E0, MEMORY[0x277CC9260], MEMORY[0x277D84560]);
  v9 = *(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251E725D0;
  v11 = *(v7 + 16);
  v11(v10 + ((v9 + 32) & ~v9), a2, v6);
  v12 = sub_251E71BF8();

  v11(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (v9 + 16) & ~v9;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v19;
  *v15 = v18;
  v15[1] = v16;
  aBlock[4] = sub_251E6AF84;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251E68990;
  aBlock[3] = &block_descriptor_38;
  v17 = _Block_copy(aBlock);

  [v20 addUnsignedPassesAtURLs:v12 withCompletionHandler:v17];
  _Block_release(v17);

  os_unfair_lock_unlock(v21 + 6);
}

void sub_251E68844(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v6 = sub_251E718E8();
  v13[0] = 0;
  v7 = [v5 removeItemAtURL:v6 error:v13];

  if (v7)
  {
    v8 = v13[0];
    if (a1)
    {
LABEL_3:
      sub_251E624EC();
      v9 = swift_allocError();
      *v10 = 2;
      a3();

      return;
    }
  }

  else
  {
    v11 = v13[0];
    v12 = sub_251E718C8();

    swift_willThrow();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  (a3)(0);
}

uint64_t sub_251E68990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_251E689E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_251E68A28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_251E68A48, 0, 0);
}

uint64_t sub_251E68A48()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_251E68B3C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_251E68B3C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_251E68C70;
  }

  else
  {

    v2 = sub_251E68C58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251E68C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251E68CD4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_251E6AE3C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_251E67FF4(a3, sub_251E6AF14, v10);
}

uint64_t sub_251E68E18(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_251E6AE3C(0);
    return sub_251E71C38();
  }

  else
  {
    sub_251E6AE3C(0);
    return sub_251E71C48();
  }
}

void sub_251E68E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 24));
  sub_251E68EDC((v3 + 32), a1, a2, a3);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_251E68EDC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  (*(a4 + 8))(a3, a4);
  v7 = sub_251E71B78();

  (*(a4 + 16))(a3, a4);
  v8 = sub_251E71B78();

  v9 = [v6 passWithPassTypeIdentifier:v7 serialNumber:v8];

  if (v9)
  {
    [v6 removePass_];
  }
}

uint64_t sub_251E68FD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v98[35] = *MEMORY[0x277D85DE8];
  v6 = sub_251E71928();
  v93 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v92 = &v79 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v79 - v11;
  v13 = NSTemporaryDirectory();
  sub_251E71B88();

  sub_251E718D8();

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v14);
  v98[0] = (*(v15 + 8))(v14, v15);
  v98[1] = v16;
  MEMORY[0x253090C90](45, 0xE100000000000000);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v17);
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = a2;
  v22 = v19(v17, v20);
  MEMORY[0x253090C90](v22);

  MEMORY[0x253090C90](0x737361706B702ELL, 0xE700000000000000);
  sub_251E718F8();

  v23 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v24 = sub_251E718E8();
  v98[0] = 0;
  LODWORD(v17) = [v23 removeItemAtURL:v24 error:v98];

  if (v17)
  {
    v25 = v98[0];
  }

  else
  {
    v26 = v98[0];
    v27 = sub_251E718C8();

    swift_willThrow();
    v3 = 0;
  }

  v28 = objc_allocWithZone(MEMORY[0x277CCDD18]);
  v29 = sub_251E718E8();
  v30 = [v28 initWithURL:v29 archiveType:0];
  v31 = v21;
  v32 = v30;

  memcpy(v98, a1 + 5, 0x118uLL);
  memcpy(v97, a1 + 5, sizeof(v97));
  sub_251E67C9C(v98, v96);
  v33 = WalletPass.asData()();
  if (v3)
  {

    memcpy(v96, v97, sizeof(v96));
    sub_251E62724(v96);
    v35 = *(v93 + 8);
    v35(v31, v6);
    return (v35)(v12, v6);
  }

  else
  {
    v87 = v31;
    v88 = v23;
    v90 = v12;
    v37 = v33;
    v38 = v34;
    memcpy(v96, v97, sizeof(v96));
    sub_251E62724(v96);
    v39 = sub_251E71938();
    sub_251E6B024(v37, v38);
    v40 = v92;
    sub_251E718D8();
    v41 = sub_251E718E8();
    v89 = 0;
    v42 = *(v93 + 8);
    v43 = v40;
    v44 = v93 + 8;
    v42(v43, v6);
    [v32 addDataToArchive:v39 pathInArchive:v41];

    v45 = v89;
    sub_251E69A3C(0xD000000000000012, 0x8000000251E74020);
    if (v45)
    {

      v42(v87, v6);
      return (v42)(v90, v6);
    }

    else
    {
      v85 = v42;
      v86 = v44;
      v46 = type metadata accessor for PassComponents(0);
      sub_251E69B6C(a1 + v46[6], 0x2E7832406E6F6369, 0xEB00000000676E70);
      v47 = v90;
      v48 = sub_251E69B6C(a1 + v46[7], 0x2E7833406E6F6369, 0xEB00000000676E70);
      v89 = 0;
      v84 = v32;
      v49 = *(a1 + v46[8]);
      v81 = *(v49 + 16);
      v82 = v6;
      if (v81)
      {
        v50 = 0;
        v79 = v49;
        v80 = (v93 + 16);
        v51 = v91;
        while (1)
        {
          if (v50 >= *(v49 + 16))
          {
            __break(1u);
          }

          v52 = (type metadata accessor for PassComponents.BundleResource(0) - 8);
          v53 = v49 + ((*(*v52 + 80) + 32) & ~*(*v52 + 80));
          v54 = *(*v52 + 72);
          v83 = v50;
          v55 = v53 + v54 * v50;
          v56 = v82;
          (*v80)(v51, v55, v82);
          v57 = (v55 + v52[7]);
          v58 = v57[1];
          v93 = *v57;

          v59 = sub_251E718E8();
          v60 = v92;
          sub_251E718D8();
          v61 = sub_251E718E8();
          v62 = v85;
          v85(v60, v56);
          [v84 addFileToArchive:v59 pathInArchive:v61];

          v94 = 0x6020676E69646461;
          v95 = 0xE800000000000000;
          MEMORY[0x253090C90](v93, v58);

          MEMORY[0x253090C90](96, 0xE100000000000000);
          v63 = v94;
          v64 = v95;
          if (![v84 archiveIsValid])
          {
            break;
          }

          v65 = v56;
          v50 = v83 + 1;
          v62(v51, v65);

          v47 = v90;
          v49 = v79;
          if (v81 == v50)
          {
            goto LABEL_13;
          }
        }

        v94 = 0x20726F727265;
        v95 = 0xE600000000000000;
        MEMORY[0x253090C90](v63, v64);
        MEMORY[0x253090C90](8250, 0xE200000000000000);
        v67 = v84;
        v68 = [v84 error];
        if (v68)
        {
          v69 = v68;
          swift_getErrorValue();
          v70 = sub_251E71EE8();
          v72 = v71;
        }

        else
        {
          v72 = 0xE500000000000000;
          v70 = 0x7D6C696E7BLL;
        }

        v73 = v82;
        v74 = v91;
        v75 = v85;
        MEMORY[0x253090C90](v70, v72);

        v76 = v94;
        v77 = v95;
        sub_251E6A3A4();
        swift_allocError();
        *v78 = v76;
        v78[1] = v77;
        swift_willThrow();

        v75(v74, v73);
        v75(v87, v73);
        return (v75)(v90, v73);
      }

      else
      {
LABEL_13:
        v66 = v84;
        [v84 closeArchive];

        return (v85)(v47, v82);
      }
    }
  }
}

void sub_251E698A8()
{
  v1 = *(sub_251E71928() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_251E685A8(v3, v0 + v2, v5, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251E69954()
{
  result = qword_27F4BD770;
  if (!qword_27F4BD770)
  {
    sub_251E71B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD770);
  }

  return result;
}

unint64_t sub_251E699AC()
{
  result = qword_27F4BD780;
  if (!qword_27F4BD780)
  {
    sub_251E6A5D8(255, &qword_27F4BD778, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD780);
  }

  return result;
}

id sub_251E69A3C(uint64_t a1, uint64_t a2)
{
  result = [v2 archiveIsValid];
  if (!result)
  {
    MEMORY[0x253090C90](a1, a2);
    MEMORY[0x253090C90](8250, 0xE200000000000000);
    v6 = [v2 error];
    if (v6)
    {
      v7 = v6;
      swift_getErrorValue();
      v8 = sub_251E71EE8();
      v10 = v9;
    }

    else
    {
      v10 = 0xE500000000000000;
      v8 = 0x7D6C696E7BLL;
    }

    MEMORY[0x253090C90](v8, v10);

    sub_251E6A3A4();
    swift_allocError();
    *v11 = 0x20726F727265;
    v11[1] = 0xE600000000000000;
    return swift_willThrow();
  }

  return result;
}

double sub_251E69B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_251E71928();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251E718E8();
  sub_251E718D8();
  v12 = sub_251E718E8();
  (*(v8 + 8))(v10, v7);
  [v4 addFileToArchive:v11 pathInArchive:v12];

  v14 = 0x6020676E69646461;
  v15 = 0xE800000000000000;
  MEMORY[0x253090C90](a2, a3);
  MEMORY[0x253090C90](96, 0xE100000000000000);
  sub_251E69A3C(v14, v15);

  return result;
}

uint64_t WalletPassManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_251E69D84()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 32) canAddPassOfType_];
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_251E69E60(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_251E69E84, 0, 0);
}

uint64_t sub_251E69E84()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_251E69F78;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_251E69F78()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_251E6B088;
  }

  else
  {

    v2 = sub_251E6B07C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t WalletPassManager.AddErrors.errorDescription.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

uint64_t WalletPassManager.AddErrors.hashValue.getter()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

uint64_t sub_251E6A198()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

uint64_t sub_251E6A1E0(uint64_t a1)
{
  v2 = *v1;
  sub_251E71F38();
  MEMORY[0x253091010](v2);
  return sub_251E71F58();
}

unint64_t sub_251E6A224()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

unint64_t _HKArchiveCreator.PassArchiveError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251E71D28();

  MEMORY[0x253090C90](v1, v2);
  return 0xD000000000000012;
}

uint64_t static _HKArchiveCreator.PassArchiveError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8();
  }
}

unint64_t sub_251E6A348()
{
  result = qword_27F4BD788;
  if (!qword_27F4BD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD788);
  }

  return result;
}

unint64_t sub_251E6A3A4()
{
  result = qword_27F4BD790;
  if (!qword_27F4BD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD790);
  }

  return result;
}

unint64_t sub_251E6A3F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_251E71D28();

  MEMORY[0x253090C90](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_251E6A474(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_251E71EB8();
  }
}

void sub_251E6A4F4(uint64_t a1)
{
  sub_251E6AEB8(319, &qword_27F4BD7A8, &protocol descriptor for PassIdentifier);
  if (v1 <= 0x3F)
  {
    sub_251E71928();
    if (v2 <= 0x3F)
    {
      sub_251E6A5D8(319, &qword_27F4BD688, type metadata accessor for PassComponents.BundleResource, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251E6A5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251E6A664(uint64_t a1)
{
  result = sub_251E71928();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of WalletPassManaging.addPass(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_251E6B080;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WalletPassManager.addPass(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_251E6AAB0;

  return v6(a1);
}

uint64_t sub_251E6AAB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_251E6ABC8(uint64_t a1)
{
  if (!qword_27F4BD7C0)
  {
    sub_251E5C984(255, &qword_27F4BD7C8, 0x277D37FC0);
    v1 = sub_251E71AE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4BD7C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for WalletPassManager.AddErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WalletPassManager.AddErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251E6ADA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_251E6ADE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251E6AE3C(uint64_t a1)
{
  if (!qword_27F4BD7D0)
  {
    sub_251E6AEB8(255, &qword_27F4BD7D8, MEMORY[0x277D84948]);
    v1 = sub_251E71C58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4BD7D0);
    }
  }
}

uint64_t sub_251E6AEB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251E6AF14(void *a1)
{
  sub_251E6AE3C(0);

  return sub_251E68E18(a1);
}

void sub_251E6AF84(uint64_t a1)
{
  v3 = *(sub_251E71928() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_251E68844(a1, v1 + v4, v5);
}

uint64_t sub_251E6B024(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t SignedClinicalDataWalletPassError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000002CLL;
  if (v1 != 6)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000017;
  if (v1 != 4)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000037;
  if (v1 != 2)
  {
    v4 = 0xD000000000000019;
  }

  v5 = 0xD000000000000035;
  if (!*v0)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t SignedClinicalDataWalletPassError.hashValue.getter()
{
  v1 = *v0;
  sub_251E71F38();
  MEMORY[0x253091010](v1);
  return sub_251E71F58();
}

unint64_t sub_251E6B1FC()
{
  result = qword_27F4BD7E8;
  if (!qword_27F4BD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD7E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignedClinicalDataWalletPassError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignedClinicalDataWalletPassError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251E6B3A8()
{
  v0 = sub_251E71B18();
  __swift_allocate_value_buffer(v0, qword_27F4BF310);
  __swift_project_value_buffer(v0, qword_27F4BF310);
  return sub_251E71B08();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_251E6B490(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF656E6F4E656C79;
  v3 = 0x7453657461444B50;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x7453657461444B50;
    }

    if (v4)
    {
      v5 = 0x8000000251E73660;
    }

    else
    {
      v5 = 0xEF656E6F4E656C79;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x8000000251E73680;
    v6 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0xEF676E6F4C656C79;
    }

    else
    {
      v5 = 0xEF6C6C7546656C79;
    }

    v6 = 0x7453657461444B50;
  }

  v7 = 0x8000000251E73680;
  v8 = 0xD000000000000011;
  v9 = 0xEF676E6F4C656C79;
  if (a2 != 3)
  {
    v9 = 0xEF6C6C7546656C79;
  }

  if (a2 != 2)
  {
    v8 = 0x7453657461444B50;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000251E73660;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v6 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_251E71EB8();
  }

  return v12 & 1;
}

void __swiftcall WalletPassBarcode.init(altText:message:)(HealthRecordsWalletSupport::WalletPassBarcode *__return_ptr retstr, Swift::String_optional altText, Swift::String message)
{
  retstr->format._countAndFlagsBits = 0xD000000000000011;
  retstr->format._object = 0x8000000251E73840;
  retstr->messageEncoding._countAndFlagsBits = 0x393538382D6F7369;
  retstr->messageEncoding._object = 0xEA0000000000312DLL;
  retstr->altText = altText;
  retstr->message = message;
}

__n128 WalletPass.init(description:organizationName:passTypeIdentifier:serialNumber:teamIdentifier:appLaunchURL:systemAppBundleIdentifiers:backgroundColor:foregroundColor:groupingIdentifier:labelColor:logoText:healthPass:barcodes:expirationDate:sharingProhibited:voided:locations:relevantDates:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, __n128 a19, uint64_t a20, __int16 a21, uint64_t a22, uint64_t a23)
{
  result = a19;
  v24 = *(a18 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 152) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  v25 = *(a18 + 16);
  *(a9 + 192) = *a18;
  *(a9 + 208) = v25;
  *(a9 + 224) = v24;
  *(a9 + 232) = a19;
  *(a9 + 248) = a20;
  *(a9 + 256) = a21;
  *(a9 + 264) = a22;
  *(a9 + 272) = a23;
  return result;
}

__n128 WalletPassField.init(key:label:value:textAlignment:attributedValue:dataDetectorTypes:numberStyle:dateStyle:timeStyle:ignoresTimeZone:isRelative:row:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char *a13, char *a14, __int16 a15, uint64_t a16, char a17)
{
  result = a11;
  v18 = *a13;
  v19 = *a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = v18;
  *(a9 + 105) = v19;
  *(a9 + 106) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  return result;
}

uint64_t WalletPassContent.init(headerFields:primaryFields:secondaryFields:auxiliaryFields:backFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t WalletPass.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletPass.organizationName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WalletPass.passTypeIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t WalletPass.serialNumber.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t WalletPass.teamIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t WalletPass.appLaunchURL.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t WalletPass.backgroundColor.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t WalletPass.foregroundColor.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t WalletPass.groupingIdentifier.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t WalletPass.labelColor.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t WalletPass.logoText.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t WalletPass.healthPass.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  *a1 = v1[24];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t WalletPass.expirationDate.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t sub_251E6BA28(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x655674616D726F66;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x754E6C6169726573;
      break;
    case 5:
      result = 0x6E6564496D616574;
      break;
    case 6:
      result = 0x636E75614C707061;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      v3 = 1801675106;
      goto LABEL_21;
    case 9:
      v3 = 1701998438;
LABEL_21:
      result = v3 | 0x756F726700000000;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6C6F436C6562616CLL;
      break;
    case 12:
      result = 0x747865546F676F6CLL;
      break;
    case 13:
      result = 0x615068746C616568;
      break;
    case 14:
      result = 0x7365646F63726162;
      break;
    case 15:
      result = 0x6974617269707865;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x646564696F76;
      break;
    case 18:
      result = 0x6E6F697461636F6CLL;
      break;
    case 19:
      result = 0x746E6176656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_251E6BCA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251E70708(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251E6BCE0(uint64_t a1)
{
  v2 = sub_251E6C52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6BD1C(uint64_t a1)
{
  v2 = sub_251E6C52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPass.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD808, sub_251E6C52C, &type metadata for WalletPass.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = *(v1 + 16);
  v63 = *(v1 + 24);
  v64 = v6;
  v7 = *(v1 + 32);
  v61 = *(v1 + 40);
  v62 = v7;
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v59 = *(v1 + 64);
  v60 = v8;
  v10 = *(v1 + 72);
  v57 = *(v1 + 80);
  v58 = v9;
  v11 = *(v1 + 88);
  v55 = *(v1 + 96);
  v56 = v10;
  v12 = *(v1 + 112);
  v53 = *(v1 + 104);
  v54 = v11;
  v51 = v12;
  v13 = *(v1 + 128);
  v52 = *(v1 + 120);
  v49 = v13;
  v14 = *(v1 + 144);
  v50 = *(v1 + 136);
  v47 = v14;
  v15 = *(v1 + 160);
  v48 = *(v1 + 152);
  v45 = v15;
  v16 = *(v1 + 176);
  v46 = *(v1 + 168);
  v43 = v16;
  v17 = *(v1 + 192);
  v44 = *(v1 + 184);
  v38 = v17;
  v18 = *(v1 + 208);
  v39 = *(v1 + 200);
  v40 = v18;
  v19 = *(v1 + 224);
  v41 = *(v1 + 216);
  v42 = v19;
  v20 = *(v1 + 240);
  v37 = *(v1 + 232);
  v35 = v20;
  v36 = *(v1 + 248);
  v71 = *(v1 + 256);
  v33 = *(v1 + 257);
  v21 = *(v1 + 272);
  v34 = *(v1 + 264);
  v22 = a1[3];
  v23 = a1;
  v25 = &v32 - v24;
  __swift_project_boxed_opaque_existential_0(v23, v22);
  sub_251E6C52C();
  sub_251E71F68();
  LOBYTE(v66) = 0;
  v26 = v65;
  sub_251E71E28();
  if (v26 || (v32 = v21, LOBYTE(v66) = 1, sub_251E71E48(), LOBYTE(v66) = 2, sub_251E71E28(), LOBYTE(v66) = 3, sub_251E71E28(), LOBYTE(v66) = 4, sub_251E71E28(), LOBYTE(v66) = 5, sub_251E71E28(), LOBYTE(v66) = 6, sub_251E71DD8(), v65 = 0, v66 = v53, v72 = 7, sub_251E6CCA0(0, &qword_27F4BD6A8, MEMORY[0x277D837D0]), sub_251E6C580(), v26 = v65, sub_251E71E18(), v26))
  {
    v65 = v26;
  }

  else
  {
    LOBYTE(v66) = 8;
    sub_251E71DD8();
    LOBYTE(v66) = 9;
    sub_251E71DD8();
    v65 = 0;
    LOBYTE(v66) = 10;
    sub_251E71DD8();
    v65 = 0;
    LOBYTE(v66) = 11;
    sub_251E71DD8();
    v65 = 0;
    LOBYTE(v66) = 12;
    sub_251E71DD8();
    v65 = 0;
    v66 = v38;
    v67 = v39;
    v68 = v40;
    v69 = v41;
    v70 = v42;
    v72 = 13;
    sub_251E6C600();

    v27 = v65;
    sub_251E71E58();
    v65 = v27;
    if (v27)
    {
    }

    else
    {

      v66 = v37;
      v72 = 14;
      sub_251E6CCA0(0, &qword_27F4BD828, &type metadata for WalletPassBarcode);
      sub_251E6C6A8(&qword_27F4BD830, &qword_27F4BD828, &type metadata for WalletPassBarcode, sub_251E6C654);
      v28 = v65;
      sub_251E71E18();
      v65 = v28;
      if (!v28)
      {
        LOBYTE(v66) = 15;
        sub_251E71DD8();
        v65 = 0;
        LOBYTE(v66) = 16;
        sub_251E71DE8();
        v65 = 0;
        LOBYTE(v66) = 17;
        sub_251E71DE8();
        v65 = 0;
        v66 = v34;
        v72 = 18;
        sub_251E6CCA0(0, &qword_27F4BD840, &type metadata for WalletPassLocation);
        sub_251E6C6A8(&qword_27F4BD848, &qword_27F4BD840, &type metadata for WalletPassLocation, sub_251E6C720);
        v29 = v65;
        sub_251E71E18();
        v65 = v29;
        if (!v29)
        {
          v66 = v32;
          v72 = 19;
          sub_251E6CCA0(0, &qword_27F4BD858, &type metadata for WalletPassDates);
          sub_251E6C6A8(&qword_27F4BD860, &qword_27F4BD858, &type metadata for WalletPassDates, sub_251E6C774);
          v30 = v65;
          sub_251E71E18();
          v65 = v30;
        }
      }
    }
  }

  return (*(v5 + 8))(v25, v4);
}

unint64_t sub_251E6C52C()
{
  result = qword_27F4BD810;
  if (!qword_27F4BD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD810);
  }

  return result;
}

unint64_t sub_251E6C580()
{
  result = qword_27F4BD818;
  if (!qword_27F4BD818)
  {
    sub_251E6CCA0(255, &qword_27F4BD6A8, MEMORY[0x277D837D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD818);
  }

  return result;
}

unint64_t sub_251E6C600()
{
  result = qword_27F4BD820;
  if (!qword_27F4BD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD820);
  }

  return result;
}

unint64_t sub_251E6C654()
{
  result = qword_27F4BD838;
  if (!qword_27F4BD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD838);
  }

  return result;
}

uint64_t sub_251E6C6A8(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251E6CCA0(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251E6C720()
{
  result = qword_27F4BD850;
  if (!qword_27F4BD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD850);
  }

  return result;
}

unint64_t sub_251E6C774()
{
  result = qword_27F4BD868;
  if (!qword_27F4BD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD868);
  }

  return result;
}

uint64_t sub_251E6C808()
{
  v1 = *v0;
  v2 = 0x6946726564616568;
  v3 = 0x7261646E6F636573;
  v4 = 0x7261696C69787561;
  if (v1 != 3)
  {
    v4 = 0x6C6569466B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x467972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_251E6C8D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251E70D7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251E6C908(uint64_t a1)
{
  v2 = sub_251E6CC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6C944(uint64_t a1)
{
  v2 = sub_251E6CC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassContent.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD870, sub_251E6CC4C, &type metadata for WalletPassContent.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v14 = v1[4];
  v15 = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6CC4C();

  sub_251E71F68();
  v20 = v9;
  v19 = 0;
  sub_251E6CCA0(0, &qword_27F4BD880, &type metadata for WalletPassField);
  sub_251E6C6A8(&qword_27F4BD888, &qword_27F4BD880, &type metadata for WalletPassField, sub_251E6CCEC);
  v11 = v18;
  sub_251E71E18();
  if (v11)
  {
  }

  else
  {
    v12 = v16;

    v20 = v17;
    v19 = 1;
    sub_251E71E18();
    v20 = v12;
    v19 = 2;
    sub_251E71E18();
    v20 = v15;
    v19 = 3;
    sub_251E71E18();
    v20 = v14;
    v19 = 4;
    sub_251E71E18();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251E6CC4C()
{
  result = qword_27F4BD878;
  if (!qword_27F4BD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD878);
  }

  return result;
}

void sub_251E6CCA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251E71C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_251E6CCEC()
{
  result = qword_27F4BD890;
  if (!qword_27F4BD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD890);
  }

  return result;
}

HealthRecordsWalletSupport::WalletPassField::DateTimeStyle_optional __swiftcall WalletPassField.DateTimeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251E71DC8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WalletPassField.DateTimeStyle.rawValue.getter()
{
  v1 = 0x7453657461444B50;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7453657461444B50;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_251E6CE68()
{
  sub_251E71F38();
  sub_251E71BB8();

  return sub_251E71F58();
}

double sub_251E6CF58(uint64_t a1)
{
  sub_251E71BB8();

  return result;
}

uint64_t sub_251E6D034(uint64_t a1)
{
  sub_251E71F38();
  sub_251E71BB8();

  return sub_251E71F58();
}

void sub_251E6D12C(unint64_t *a1@<X8>)
{
  v2 = 0x7453657461444B50;
  v3 = *v1;
  v4 = 0xEF656E6F4E656C79;
  v5 = 0x8000000251E73680;
  v6 = 0xD000000000000011;
  v7 = 0xEF676E6F4C656C79;
  if (v3 != 3)
  {
    v7 = 0xEF6C6C7546656C79;
  }

  if (v3 != 2)
  {
    v6 = 0x7453657461444B50;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000010;
    v4 = 0x8000000251E73660;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v6;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t WalletPassField.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletPassField.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void WalletPassField.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t WalletPassField.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void WalletPassField.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t WalletPassField.textAlignment.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void WalletPassField.textAlignment.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t WalletPassField.attributedValue.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void WalletPassField.attributedValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t WalletPassField.numberStyle.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void WalletPassField.numberStyle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t WalletPassField.row.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_251E6D660(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x547365726F6E6769;
    v7 = 0x6974616C65527369;
    if (a1 != 10)
    {
      v7 = 7827314;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74537265626D756ELL;
    v9 = 0x6C79745365746164;
    if (a1 != 7)
    {
      v9 = 0x6C797453656D6974;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7955819;
    v2 = 0x67696C4174786574;
    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6562616CLL;
    if (a1 != 1)
    {
      v4 = 0x65756C6176;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_251E6D808@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251E70F50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251E6D83C(uint64_t a1)
{
  v2 = sub_251E6DC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6D878(uint64_t a1)
{
  v2 = sub_251E6DC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassField.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD898, sub_251E6DC80, &type metadata for WalletPassField.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = v8;
  v9 = *(v1 + 32);
  v28 = *(v1 + 40);
  v29 = v9;
  v10 = *(v1 + 48);
  v26 = *(v1 + 56);
  v27 = v10;
  v11 = *(v1 + 64);
  v24 = *(v1 + 72);
  v25 = v11;
  v12 = *(v1 + 80);
  v21 = *(v1 + 88);
  v22 = *(v1 + 96);
  v23 = v12;
  LODWORD(v12) = *(v1 + 104);
  v19 = *(v1 + 105);
  v20 = v12;
  LODWORD(v12) = *(v1 + 106);
  v17 = *(v1 + 107);
  v18 = v12;
  v15[1] = *(v1 + 112);
  v16 = *(v1 + 120);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6DC80();
  sub_251E71F68();
  LOBYTE(v34) = 0;
  v13 = v32;
  sub_251E71E28();
  if (!v13)
  {
    LOBYTE(v34) = 1;
    sub_251E71DD8();
    LOBYTE(v34) = 2;
    sub_251E71E28();
    LOBYTE(v34) = 3;
    sub_251E71DD8();
    LOBYTE(v34) = 4;
    sub_251E71DD8();
    v34 = v23;
    v33 = 5;
    sub_251E6CCA0(0, &qword_27F4BD6A8, MEMORY[0x277D837D0]);
    sub_251E6C580();
    sub_251E71E18();
    LOBYTE(v34) = 6;
    sub_251E71DD8();
    LOBYTE(v34) = v20;
    v33 = 7;
    sub_251E6DCD4();
    sub_251E71E18();
    LOBYTE(v34) = v19;
    v33 = 8;
    sub_251E71E18();
    LOBYTE(v34) = 9;
    sub_251E71DE8();
    LOBYTE(v34) = 10;
    sub_251E71DE8();
    LOBYTE(v34) = 11;
    sub_251E71E08();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251E6DC80()
{
  result = qword_27F4BD8A0;
  if (!qword_27F4BD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8A0);
  }

  return result;
}

unint64_t sub_251E6DCD4()
{
  result = qword_27F4BD8A8;
  if (!qword_27F4BD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8A8);
  }

  return result;
}

uint64_t WalletPassBarcode.altText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletPassBarcode.format.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WalletPassBarcode.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WalletPassBarcode.messageEncoding.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_251E6DE00()
{
  v1 = 0x74786554746C61;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0x456567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x74616D726F66;
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

uint64_t sub_251E6DE84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251E71348(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251E6DEAC(uint64_t a1)
{
  v2 = sub_251E6E10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6DEE8(uint64_t a1)
{
  v2 = sub_251E6E10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassBarcode.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD8B0, sub_251E6E10C, &type metadata for WalletPassBarcode.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = v1[2];
  v13[5] = v1[3];
  v13[6] = v8;
  v9 = v1[4];
  v13[3] = v1[5];
  v13[4] = v9;
  v10 = v1[6];
  v13[1] = v1[7];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6E10C();
  sub_251E71F68();
  v17 = 0;
  v11 = v13[7];
  sub_251E71DD8();
  if (!v11)
  {
    v16 = 1;
    sub_251E71E28();
    v15 = 2;
    sub_251E71E28();
    v14 = 3;
    sub_251E71E28();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251E6E10C()
{
  result = qword_27F4BD8B8;
  if (!qword_27F4BD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8B8);
  }

  return result;
}

uint64_t WalletPassLocation.relevantText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall WalletPassLocation.init(altitude:latitude:longitude:relevantText:)(HealthRecordsWalletSupport::WalletPassLocation *__return_ptr retstr, Swift::Double_optional altitude, Swift::Double latitude, Swift::Double longitude, Swift::String_optional relevantText)
{
  retstr->altitude.value = *&altitude.is_nil;
  retstr->altitude.is_nil = relevantText.value._countAndFlagsBits & 1;
  retstr->latitude = altitude.value;
  retstr->longitude = latitude;
  retstr->relevantText.value._countAndFlagsBits = relevantText.value._object;
  retstr->relevantText.value._object = v5;
}

uint64_t sub_251E6E1DC()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x64757469676E6F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x746E6176656C6572;
  }

  if (!*v0)
  {
    v1 = 0x6564757469746C61;
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

uint64_t sub_251E6E258@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251E714B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251E6E280(uint64_t a1)
{
  v2 = sub_251E6E4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251E6E2BC(uint64_t a1)
{
  v2 = sub_251E6E4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WalletPassLocation.encode(to:)(void *a1)
{
  sub_251E6F534(0, &qword_27F4BD8C0, sub_251E6E4D8, &type metadata for WalletPassLocation.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 32);
  v11[1] = *(v1 + 40);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_251E6E4D8();
  sub_251E71F68();
  v15 = 0;
  v9 = v11[3];
  sub_251E71DF8();
  if (!v9)
  {
    v14 = 1;
    sub_251E71E38();
    v13 = 2;
    sub_251E71E38();
    v12 = 3;
    sub_251E71DD8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251E6E4D8()
{
  result = qword_27F4BD8C8;
  if (!qword_27F4BD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4BD8C8);
  }

  return result;
}

uint64_t sub_251E6E544()
{
  v0 = sub_251E71A08();
  __swift_allocate_value_buffer(v0, qword_27F4BD7F0);
  v1 = __swift_project_value_buffer(v0, qword_27F4BD7F0);
  return sub_251E6E590(v1);
}

uint64_t sub_251E6E590@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  sub_251E71794(0, &qword_27F4BD698, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = &v55 - v2;
  v72 = sub_251E71AD8();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_251E71998();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v55 - v7;
  v8 = sub_251E71968();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v69 = sub_251E71948();
  v13 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251E71958();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_251E71A08();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v55 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v59 = &v55 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v61 = &v55 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v62 = &v55 - v33;
  MEMORY[0x28223BE20](v32);
  v64 = &v55 - v34;
  v35 = *MEMORY[0x277CC9460];
  v36 = *(v17 + 104);
  v60 = v19;
  v36(v19, v35, v16);
  v37 = v71;
  v38 = *MEMORY[0x277CC9458];
  v39 = *(v13 + 104);
  v63 = v15;
  v39(v15, v38, v69);
  v40 = *MEMORY[0x277CC9468];
  v41 = *(v74 + 104);
  v69 = v12;
  v57 = v40;
  v56 = v41;
  v41(v12);
  v42 = *MEMORY[0x277CC9480];
  v58 = *(v76 + 104);
  v58(v73, v42, v77);
  sub_251E71AB8();
  v43 = v70;
  v44 = v72;
  result = (*(v70 + 48))(v37, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v43 + 32))(v65, v37, v44);
    sub_251E71978();
    sub_251E719C8();
    v46 = *(v21 + 8);
    v46(v24, v20);
    v47 = v59;
    sub_251E719D8();
    v46(v27, v20);
    v48 = v61;
    sub_251E719A8();
    v46(v47, v20);
    v49 = v66;
    v50 = v75;
    v56(v66, v57, v75);
    v51 = v62;
    sub_251E71988();
    (*(v74 + 8))(v49, v50);
    v46(v48, v20);
    v52 = v64;
    sub_251E719B8();
    v46(v51, v20);
    v53 = v67;
    v54 = v77;
    v58(v67, *MEMORY[0x277CC9478], v77);
    sub_251E719F8();
    (*(v76 + 8))(v53, v54);
    return (v46)(v52, v20);
  }

  return result;
}

uint64_t WalletPassDates.date.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletPassDates.endDate.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WalletPassDates.init(date:endDate:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a3;
  v46 = a2;
  sub_251E71794(0, &qword_27F4BD8D0, MEMORY[0x277CC9578]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_251E71A68();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v44 = a1;
  sub_251E6F170(a1, v13);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    sub_251E6F1F0(v13);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    if (qword_27F4BD658 != -1)
    {
      swift_once();
    }

    v24 = sub_251E71A08();
    __swift_project_value_buffer(v24, qword_27F4BD7F0);
    v42 = sub_251E719E8();
    v43 = v25;
    (*(v15 + 8))(v22, v14);
  }

  v26 = v41;
  sub_251E6F170(v46, v11);
  if (v23(v11, 1, v14) == 1)
  {
    sub_251E6F1F0(v11);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v15 + 32))(v20, v11, v14);
    if (qword_27F4BD658 != -1)
    {
      swift_once();
    }

    v29 = sub_251E71A08();
    __swift_project_value_buffer(v29, qword_27F4BD7F0);
    v28 = sub_251E719E8();
    v27 = v30;
    (*(v15 + 8))(v20, v14);
  }

  v31 = v45;
  sub_251E6F170(v45, v26);
  if (v23(v26, 1, v14) == 1)
  {
    sub_251E6F1F0(v31);
    sub_251E6F1F0(v46);
    sub_251E6F1F0(v44);
    result = sub_251E6F1F0(v26);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = v40;
    (*(v15 + 32))(v40, v26, v14);
    if (qword_27F4BD658 != -1)
    {
      swift_once();
    }

    v36 = sub_251E71A08();
    __swift_project_value_buffer(v36, qword_27F4BD7F0);
    v34 = sub_251E719E8();
    v33 = v37;
    sub_251E6F1F0(v45);
    sub_251E6F1F0(v46);
    sub_251E6F1F0(v44);
    result = (*(v15 + 8))(v35, v14);
  }

  v38 = v43;
  *a4 = v42;
  a4[1] = v38;
  a4[2] = v28;
  a4[3] = v27;
  a4[4] = v34;
  a4[5] = v33;
  return result;
}

uint64_t sub_251E6F170(uint64_t a1, uint64_t a2)
{
  sub_251E71794(0, &qword_27F4BD8D0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251E6F1F0(uint64_t a1)
{
  sub_251E71794(0, &qword_27F4BD8D0, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall WalletPassDates.init(date:endDate:startDate:)(HealthRecordsWalletSupport::WalletPassDates *__return_ptr retstr, Swift::String_optional date, Swift::String_optional endDate, Swift::String_optional startDate)
{
  retstr->date = date;
  retstr->endDate = endDate;
  retstr->startDate = startDate;
}

uint64_t sub_251E6F278()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x7461447472617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_251E6F2D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251E71620(a2, a3);
  *a1 = result;
  return result;
}