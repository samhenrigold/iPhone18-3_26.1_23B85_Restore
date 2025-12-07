uint64_t sub_24A715C00(uint64_t a1, uint64_t a2)
{
  result = sub_24A715C58(&qword_27EF5DDC8, a2, type metadata accessor for FMIPRefreshClientResponse, &unk_24A8361BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24A715C58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void FMIPDiscoveredAccessory.defaultRole.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_24A715CBC(v2, v3, v4, v5, v6);
}

void sub_24A715CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t FMIPDiscoveredAccessory.productInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPDiscoveredAccessory(0) + 24);

  return sub_24A715D44(v3, a1);
}

uint64_t sub_24A715D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void FMIPDiscoveredAccessory.identifier.getter()
{
  v1 = [*v0 identifier];
  sub_24A82CA84();
}

uint64_t FMIPDiscoveredAccessory.displayName.getter()
{
  v1 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for FMIPDiscoveredAccessory(0);
  sub_24A715D44(v0 + *(v4 + 24), v3);
  v5 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_24A67F378(v3, &qword_27EF5D360, &unk_24A836200);
    return 0x726F737365636341;
  }

  else
  {
    v6 = *(v3 + 2);

    sub_24A715F34(v3);
  }

  return v6;
}

uint64_t sub_24A715F34(uint64_t a1)
{
  v2 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id FMIPDiscoveredAccessory.displayType.getter()
{
  result = [*v0 productInformation];
  if (result)
  {
    v2 = result;
    v3 = [result defaultRole];

    if (v3)
    {
      v4 = [v3 role];

      v5 = sub_24A82CFC4();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FMIPDiscoveredAccessory.batteryReplacementURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = [*v1 productInformation];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 lowBatteryInfoURL];

    if (v8)
    {
      sub_24A82C884();

      v9 = sub_24A82C8B4();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_24A82C8B4();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_24A696DA0(v5, a1);
  }

  else
  {
    v10 = sub_24A82C8B4();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

id FMIPDiscoveredAccessory.isEligibleForPairing.getter()
{
  v1 = [*v0 productInformation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 eligibleForPairing];

  return v3;
}

id FMIPDiscoveredAccessory.capabilities.getter()
{
  result = [*v0 productInformation];
  if (result)
  {
    v2 = result;
    v3 = [result capabilities];

    return v3;
  }

  return result;
}

uint64_t sub_24A716290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 productInformation];
  if (!v12)
  {
    *(v11 + 5) = 0;
    *(v11 + 24) = 0u;
    *(v11 + 8) = 0u;
    (*(v5 + 56))(&v11[*(v8 + 24)], 1, 1, v4);
    *v11 = a1;
    goto LABEL_13;
  }

  v13 = v12;
  v55 = v4;
  v14 = [a1 productInformation];
  v53 = v5;
  v54 = v8;
  v52 = v9;
  if (!v14)
  {
    v26 = 0;
    v20 = 0;
    v22 = 0;
    v16 = 0;
LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 defaultRole];

  if (!v16)
  {
    v26 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_8;
  }

  v17 = v16;
  v51 = a2;
  v18 = v17;
  v19 = [v17 roleEmoji];
  v20 = sub_24A82CFC4();
  v22 = v21;

  v23 = [v18 role];
  v16 = sub_24A82CFC4();
  v25 = v24;

  v26 = [v18 roleId];
  a2 = v51;
LABEL_9:
  *(v11 + 2) = v20;
  *(v11 + 3) = v22;
  *(v11 + 4) = v16;
  *(v11 + 5) = v25;
  *v11 = a1;
  *(v11 + 1) = v26;
  *v7 = 0;
  *(v7 + 1) = 0;
  v27 = [v13 modelName];
  v28 = sub_24A82CFC4();
  v30 = v29;

  *(v7 + 2) = v28;
  *(v7 + 3) = v30;
  v31 = [v13 manufacturerName];
  v32 = sub_24A82CFC4();
  v34 = v33;

  *(v7 + 4) = v32;
  *(v7 + 5) = v34;
  v35 = [v13 appBundleIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = sub_24A82CFC4();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v8 = v54;
  v9 = v52;
  v40 = *(v54 + 24);
  *(v7 + 6) = v37;
  *(v7 + 7) = v39;
  [v13 txPower];
  *(v7 + 8) = v41;
  v42 = [v13 defaultHeroIcon];
  v43 = v55;
  sub_24A82C884();

  v44 = [v13 defaultHeroIcon2x];
  sub_24A82C884();

  v45 = [v13 defaultHeroIcon3x];
  sub_24A82C884();

  v46 = [v13 defaultListIcon];
  sub_24A82C884();

  v47 = [v13 defaultListIcon2x];
  sub_24A82C884();

  v48 = [v13 defaultListIcon3x];
  sub_24A82C884();

  LOWORD(v48) = [v13 capabilities];
  v7[72] = (v48 & 0x1000) != 0;
  v7[73] = 1;
  sub_24A717174(v7, &v11[v40], type metadata accessor for FMIPHawkeyeProductInformation);
  (*(v53 + 56))(&v11[v40], 0, 1, v43);
LABEL_13:
  sub_24A717174(v11, a2, type metadata accessor for FMIPDiscoveredAccessory);
  return (*(v9 + 56))(a2, 0, 1, v8);
}

uint64_t FMIPDiscoveredAccessory.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  sub_24A82D5F4();
  if (v1[3])
  {
    v10 = v1[5];
    v16[0] = v1[4];
    v16[1] = v10;
    v11 = v6;
    v12 = v1[1];
    sub_24A82DCE4();
    v13 = v12;
    v6 = v11;
    MEMORY[0x24C21D5E0](v13);
    sub_24A82D094();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v14 = type metadata accessor for FMIPDiscoveredAccessory(0);
  sub_24A715D44(v1 + *(v14 + 24), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_24A82DCE4();
  }

  sub_24A717174(v9, v6, type metadata accessor for FMIPHawkeyeProductInformation);
  sub_24A82DCE4();
  FMIPHawkeyeProductInformation.hash(into:)(a1);
  return sub_24A715F34(v6);
}

uint64_t FMIPDiscoveredAccessory.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7169E8()
{
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A716A2C(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)(v2);
  return sub_24A82DD24();
}

BOOL _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  if ((sub_24A82D5E4() & 1) == 0)
  {
    return 0;
  }

  v64 = v10;
  v65 = v5;
  v66 = v4;
  v63 = v7;
  v14 = a1[1];
  v15 = a1[2];
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1[5];
  v20 = a2[1];
  v19 = a2[2];
  v22 = a2[3];
  v21 = a2[4];
  v67 = a2[5];
  if (!v17)
  {
    v60 = v14;
    v61 = v18;
    v62 = v15;
    v31 = v15;
    v32 = v16;
    sub_24A715CBC(v14, v31, 0, v16, v18);
    if (!v22)
    {
      sub_24A715CBC(v20, v19, 0, v21, v67);
      v17 = 0;
      v30 = v32;
      v26 = v61;
      v15 = v62;
      v29 = v60;
      goto LABEL_20;
    }

    v33 = v67;
    sub_24A715CBC(v20, v19, v22, v21, v67);
    v34 = v32;
    v35 = v61;
    v15 = v62;
    v36 = v60;
    goto LABEL_15;
  }

  if (!v22)
  {
    v34 = v16;
    v35 = v18;
    v36 = v14;
    sub_24A715CBC(v14, v15, v17, v16, v18);
    v33 = v67;
    sub_24A715CBC(v20, v19, 0, v21, v67);
    sub_24A715CBC(v36, v15, v17, v34, v35);

LABEL_15:
    sub_24A7171DC(v36, v15, v17, v34, v35);
    v41 = v20;
    v42 = v19;
    v43 = v22;
    v44 = v21;
    v45 = v33;
    goto LABEL_16;
  }

  if (v14 != v20 || ((v59 = v16, v16 != v21) || v18 != v67) && (v62 = v15, v23 = v18, v24 = v14, v25 = sub_24A82DC04(), v14 = v24, v18 = v23, v16 = v59, v15 = v62, v20 = v14, (v25 & 1) == 0))
  {
    v37 = v16;
    v38 = v18;
    v39 = v14;
    sub_24A715CBC(v14, v15, v17, v16, v18);
    v40 = v67;
    sub_24A715CBC(v20, v19, v22, v21, v67);
    sub_24A715CBC(v39, v15, v17, v37, v38);
    sub_24A7171DC(v20, v19, v22, v21, v40);

    v41 = v39;
    v42 = v15;
    v43 = v17;
    v44 = v37;
    v45 = v38;
LABEL_16:
    sub_24A7171DC(v41, v42, v43, v44, v45);
    return 0;
  }

  if (v15 != v19 || v17 != v22)
  {
    v58 = v19;
    v52 = v16;
    v61 = v18;
    v53 = v14;
    LODWORD(v62) = sub_24A82DC04();
    v54 = v52;
    v55 = v61;
    sub_24A715CBC(v53, v15, v17, v54, v61);
    sub_24A715CBC(v53, v58, v22, v21, v67);
    sub_24A715CBC(v53, v15, v17, v59, v55);
    sub_24A7171DC(v53, v58, v22, v21, v67);

    sub_24A7171DC(v53, v15, v17, v59, v55);
    if ((v62 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v26 = v18;
  v27 = v14;
  sub_24A715CBC(v14, v15, v17, v16, v18);
  v28 = v67;
  sub_24A715CBC(v27, v15, v17, v21, v67);
  sub_24A715CBC(v27, v15, v17, v59, v26);
  sub_24A7171DC(v27, v15, v17, v21, v28);

  v29 = v27;
  v30 = v59;
LABEL_20:
  sub_24A7171DC(v29, v15, v17, v30, v26);
LABEL_21:
  v47 = *(type metadata accessor for FMIPDiscoveredAccessory(0) + 24);
  v48 = *(v11 + 48);
  sub_24A715D44(a1 + v47, v13);
  sub_24A715D44(a2 + v47, &v13[v48]);
  v49 = v66;
  v50 = *(v65 + 48);
  if (v50(v13, 1, v66) == 1)
  {
    if (v50(&v13[v48], 1, v49) == 1)
    {
      sub_24A67F378(v13, &qword_27EF5D360, &unk_24A836200);
      return 1;
    }

    goto LABEL_26;
  }

  v51 = v64;
  sub_24A715D44(v13, v64);
  if (v50(&v13[v48], 1, v49) == 1)
  {
    sub_24A715F34(v51);
LABEL_26:
    sub_24A67F378(v13, &qword_27EF5D428, &qword_24A832720);
    return 0;
  }

  v56 = v63;
  sub_24A717174(&v13[v48], v63, type metadata accessor for FMIPHawkeyeProductInformation);
  v57 = _s8FMIPCore29FMIPHawkeyeProductInformationV2eeoiySbAC_ACtFZ_0(v51, v56);
  sub_24A715F34(v56);
  sub_24A715F34(v51);
  sub_24A67F378(v13, &qword_27EF5D360, &unk_24A836200);
  return (v57 & 1) != 0;
}

unint64_t sub_24A7170F4()
{
  result = qword_27EF5DDD0;
  if (!qword_27EF5DDD0)
  {
    type metadata accessor for FMIPDiscoveredAccessory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DDD0);
  }

  return result;
}

uint64_t sub_24A717174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24A7171DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

FMIPCore::FMIPRangingEventType_optional __swiftcall FMIPRangingEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPRangingEventType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x72656E776FLL;
  }
}

uint64_t sub_24A7172D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x72656E776FLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x800000024A8437E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v6 = 0x800000024A8437E0;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A71737C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A717400(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A717470(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7174F0@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A717550(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A8437E0;
  v3 = 0x72656E776FLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void static FMIPAnalytics.sendRangingEventAnalytics(eventType:)(char *a1)
{
  v1 = *a1;
  v2 = sub_24A82CF94();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v5[4] = sub_24A717728;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_24A6AEADC;
  v5[3] = &unk_285DC3F78;
  v4 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v4);
}

unint64_t sub_24A717674(char a1)
{
  v1 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v2 = sub_24A82CF94();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v2, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  return v1;
}

unint64_t sub_24A717734()
{
  result = qword_27EF5DDF8;
  if (!qword_27EF5DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DDF8);
  }

  return result;
}

id sub_24A717798()
{
  qword_27EF5DE00 = [objc_opt_self() sharedInstance];
  result = [objc_opt_self() standardUserDefaults];
  qword_27EF5DE08 = result;
  return result;
}

id static FMUserDefaults.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF5CBA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27EF5DE00;
  v1 = qword_27EF5DE08;
  v6 = qword_27EF5DE08;
  *a1 = qword_27EF5DE00;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

Swift::Bool __swiftcall FMUserDefaults.BOOL(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  v3 = [*v1 isInternalBuild];
  if (v3)
  {
    v4 = sub_24A82CF94();
    v5 = [v2 BOOLForKey_];

    LOBYTE(v3) = v5;
  }

  return v3;
}

Swift::String_optional __swiftcall FMUserDefaults.string(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v3 = sub_24A82CF94(), v4 = objc_msgSend(v2, sel_stringForKey_, v3), v3, v4))
  {
    v5 = sub_24A82CFC4();
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int_optional __swiftcall FMUserDefaults.int(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild])
  {
    v3 = sub_24A82CF94();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_24A82CFC4();
      v7 = v6;

      v9 = HIBYTE(v7) & 0xF;
      v10 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v11 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v34 = 0;
          v13 = sub_24A6D9830(v5, v7, 10);
          v31 = v32;
LABEL_65:

          if (v31)
          {
            v8 = 0;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_70;
        }

        if ((v7 & 0x2000000000000000) != 0)
        {
          v33[0] = v5;
          v33[1] = v7 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v9)
            {
              if (--v9)
              {
                v13 = 0;
                v23 = v33 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    break;
                  }

                  v13 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          if (v5 != 45)
          {
            if (v9)
            {
              v13 = 0;
              v28 = v33;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v9)
          {
            if (--v9)
            {
              v13 = 0;
              v17 = v33 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v8 = sub_24A82D8B4();
          }

          v12 = *v8;
          if (v12 == 43)
          {
            if (v10 >= 1)
            {
              v9 = v10 - 1;
              if (v10 != 1)
              {
                v13 = 0;
                if (v8)
                {
                  v20 = v8 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v13;
                    if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v13 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v9)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_75;
          }

          if (v12 != 45)
          {
            if (v10)
            {
              v13 = 0;
              if (v8)
              {
                while (1)
                {
                  v26 = *v8 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_63;
                  }

                  v27 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    goto LABEL_63;
                  }

                  ++v8;
                  if (!--v10)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            v13 = 0;
            LOBYTE(v9) = 1;
            goto LABEL_64;
          }

          if (v10 >= 1)
          {
            v9 = v10 - 1;
            if (v10 != 1)
            {
              v13 = 0;
              if (v8)
              {
                v14 = v8 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_63;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v9) = 0;
LABEL_64:
              v34 = v9;
              v31 = v9;
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }
  }

  v8 = 0;
  v31 = 1;
LABEL_70:
  LOBYTE(v10) = v31 & 1;
LABEL_77:
  result.is_nil = v10;
  result.value = v8;
  return result;
}

Swift::Double_optional __swiftcall FMUserDefaults.double(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v4 = sub_24A82CF94(), v5 = objc_msgSend(v2, sel_stringForKey_, v4), v4, v5))
  {
    v6 = sub_24A82CFC4();
    v8 = v7;

    v11 = 0;
    v9 = sub_24A717F58(v6, v8, &v11);

    v10 = v9 && v11;
  }

  else
  {
    v10 = 0;
  }

  result.value = v3;
  result.is_nil = v10;
  return result;
}

void FMUserDefaults.set(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  if ([*v3 isInternalBuild])
  {
    sub_24A718050(a1, v13);
    v6 = v14;
    if (v14)
    {
      v7 = sub_24A67DF6C(v13, v14);
      v8 = *(v6 - 8);
      MEMORY[0x28223BE20](v7);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_24A82DBF4();
      (*(v8 + 8))(v10, v6);
      sub_24A6876E8(v13);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_24A82CF94();
    [v5 setValue:v11 forKey:v12];
    swift_unknownObjectRelease();
  }
}

BOOL sub_24A717F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_24A82D834();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_24A718050(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7180C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24A718108(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *sub_24A718154@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t SPSecureLocationsManager.currentStewieState()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24A718244, 0, 0);
}

uint64_t sub_24A718244()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_24A82CD24();
  *v2 = v0;
  v2[1] = sub_24A718338;
  v4 = *(v0 + 16);

  return MEMORY[0x28215EC68](v4, 0xD000000000000014, 0x800000024A8464D0, sub_24A7185BC, v1, v3);
}

uint64_t sub_24A718338()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A718474, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24A718474()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24A7184D8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v8[4] = sub_24A71AACC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A718840;
  v8[3] = &unk_285DC4198;
  v7 = _Block_copy(v8);

  [a2 currentStewieStateWithCompletion_];
  _Block_release(v7);
}

void sub_24A7185C4(unint64_t a1, void *a2)
{
  v4 = sub_24A82CD24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9[1] = a2;
    v8 = a2;
    sub_24A82C4E4();
  }

  else
  {
    sub_24A7186E0(a1, v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24A82C4F4();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24A7186E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = sub_24A82CD94();
    v7 = sub_24A82D4E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24A675000, v6, v7, "FMNetworkUtil: (SPSecureLocationsManager+StewieStateProvider): Failed to map SP Stewie services state %ld to FML one.", v8, 0xCu);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    v4 = MEMORY[0x277D09138];
  }

  else
  {
    v4 = qword_278FE7BE0[a1];
  }

  v9 = *v4;
  v10 = sub_24A82CD24();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

void sub_24A718840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24A7188B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A69BD40;

  return SPSecureLocationsManager.currentStewieState()(a1);
}

uint64_t StewieStateProviderImpl.currentStewieState()(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A82CCE4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_24A82CCF4();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A718A40, 0, 0);
}

uint64_t sub_24A718A40()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A82CD04();
  sub_24A82CD44();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24A718B24;
  v2 = v0[6];

  return MEMORY[0x28215FBB8](v2);
}

uint64_t sub_24A718B24(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = a1;

  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v3;
  v4[1] = sub_24A718C74;
  v5 = v2[2];

  return MEMORY[0x28215FAC8](v5);
}

uint64_t sub_24A718C74()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A718DC8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24A718DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A718E48(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A82CCE4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_24A82CCF4();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A718F34, 0, 0);
}

uint64_t sub_24A718F34()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A82CD04();
  sub_24A82CD44();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24A719018;
  v2 = v0[6];

  return MEMORY[0x28215FBB8](v2);
}

uint64_t sub_24A719018(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = a1;

  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v3;
  v4[1] = sub_24A719168;
  v5 = v2[2];

  return MEMORY[0x28215FAC8](v5);
}

uint64_t sub_24A719168()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A71AADC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_24A7192BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24A719348(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_24A82D354();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24A698230(a3, v14);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_24A696E80(v14, (v10 + 6));
  v11 = a1;

  sub_24A7382F4(0, 0, v8, &unk_24A836500, v10);
}

uint64_t sub_24A71947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a4;
  v6[10] = a6;
  v7 = sub_24A82CD24();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24A719558, 0, 0);
}

uint64_t sub_24A719558()
{
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  sub_24A67DF6C(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24A719684;
  v5 = v0[14];

  return v7(v5, v2, v3);
}

uint64_t sub_24A719684()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24A719858;
  }

  else
  {
    v2 = sub_24A719798;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A719798()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[11];
  v5 = v0[9];
  swift_beginAccess();
  (*(v3 + 40))(v2, v1, v4);
  dispatch_group_leave(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24A719858()
{
  v22 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = v1;
  v4 = sub_24A82CD94();
  v5 = sub_24A82D4E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v0[8] = v7;
    v10 = v7;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v11 = sub_24A82D024();
    v13 = sub_24A68761C(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A675000, v4, v5, "FMNetworkUtil: failed to get current stewie state: %{public}s", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D09140], v0[11]);
  v14 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];
  v18 = v0[9];
  swift_beginAccess();
  (*(v16 + 40))(v14, v15, v17);
  dispatch_group_leave(v18);

  v19 = v0[1];

  return v19();
}

uint64_t dispatch thunk of StewieStateProvider.currentStewieState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24A69BD40;

  return v9(a1, a2, a3);
}

uint64_t sub_24A719C60()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = sub_24A82CF94();
  sub_24A67B054();
  v1 = sub_24A82D564();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A7192BC;
  aBlock[3] = &unk_285DC4148;
  v2 = _Block_copy(aBlock);
  v3 = _CTServerConnectionCreateOnTargetQueue();
  _Block_release(v2);

  if (v3)
  {
    v4 = sub_24A82CF94();
    _CTServerConnectionCopyCellularUsagePolicy();

    _CTServerConnectionGetCellularDataIsEnabled();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      swift_beginAccess();
      *(v8 + 4) = 0;
      _os_log_impl(&dword_24A675000, v6, v7, "FMNetworkUtil: Global cellular enabled? %{BOOL}d", v8, 8u);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_24A71A040(uint64_t a1)
{
  v66 = a1;
  v1 = sub_24A82CD24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = v60 - v6;
  v7 = sub_24A82CE74();
  isa = v7[-1].isa;
  v73 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v70 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = v60 - v10;
  v11 = sub_24A82CDF4();
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE04();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82C514();
  v76 = v21;
  v77 = sub_24A67898C(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v22 = sub_24A697E3C(aBlock);
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D089E0], v21);
  LOBYTE(v21) = sub_24A82C4D4();
  sub_24A6876E8(aBlock);
  if ((v21 & 1) == 0)
  {
LABEL_8:
    v41 = 0;
    return v41 & 1;
  }

  v62 = v5;
  v23 = swift_allocBox();
  v24 = *(v2 + 104);
  v63 = v25;
  v60[1] = v2 + 104;
  v60[0] = v24;
  v24();
  v26 = dispatch_group_create();
  v61 = v1;
  v27 = v26;
  dispatch_group_enter(v26);
  sub_24A67B054();
  (*(v18 + 104))(v20, *MEMORY[0x277D851C8], v17);
  v28 = sub_24A82D5A4();
  v64 = v2;
  v29 = v28;
  (*(v18 + 8))(v20, v17);
  sub_24A698230(v66, v79);
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v23;
  sub_24A696E80(v79, v30 + 32);
  v77 = sub_24A71A9FC;
  v78 = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  v76 = &unk_285DC40F8;
  v31 = _Block_copy(aBlock);
  v32 = v27;
  v66 = v23;

  sub_24A82CE24();
  v74 = MEMORY[0x277D84F90];
  sub_24A67898C(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v13, v31);
  _Block_release(v31);

  (*(v69 + 8))(v13, v11);
  (*(v67 + 8))(v16, v68);

  v33 = v70;
  sub_24A82CE64();
  v34 = v71;
  sub_24A82CE94();
  v35 = v73;
  v36 = *(isa + 1);
  v36(v33, v73);
  sub_24A82D514();
  v36(v34, v35);
  if (sub_24A82CDD4())
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v37 = sub_24A82CDC4();
    sub_24A6797D0(v37, qword_281518F88);
    v38 = sub_24A82CD94();
    v39 = sub_24A82D504();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A675000, v38, v39, "FMNetworkUtil: Stewie state is unavailable (timed out after 60 secs)", v40, 2u);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }

    goto LABEL_8;
  }

  v73 = v32;
  v42 = [objc_allocWithZone(MEMORY[0x277D07B30]) init];
  v43 = [v42 isNetworkUp];

  v44 = v63;
  swift_beginAccess();
  v45 = v64;
  v46 = *(v64 + 16);
  v47 = v65;
  v48 = v61;
  v46(v65, v44, v61);
  v49 = v62;
  (v60[0])(v62, *MEMORY[0x277D09140], v48);
  sub_24A67898C(&qword_27EF5DE10, MEMORY[0x277D09148], MEMORY[0x277D09150]);
  LOBYTE(v44) = sub_24A82CF84();
  v50 = *(v45 + 8);
  v50(v49, v48);
  v51 = v48;
  v64 = v45 + 8;
  v50(v47, v48);
  v52 = v44 | v43;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v41 = v52 ^ 1;
  v53 = sub_24A82CDC4();
  sub_24A6797D0(v53, qword_281518F88);

  v54 = sub_24A82CD94();
  v55 = sub_24A82D504();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134218240;
    v57 = v65;
    v46(v65, v63, v51);
    v58 = sub_24A82CD14();
    v50(v57, v51);
    *(v56 + 4) = v58;

    *(v56 + 12) = 1024;
    *(v56 + 14) = v41 & 1;
    _os_log_impl(&dword_24A675000, v54, v55, "FMNetworkUtil: Stewie state is %ld (available=%{BOOL}d)", v56, 0x12u);
    MEMORY[0x24C21E1D0](v56, -1, -1);
  }

  else
  {
  }

  return v41 & 1;
}

uint64_t sub_24A71AA08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A69BD40;

  return sub_24A71947C(a1, v4, v5, v6, v7, (v1 + 6));
}

void *FMLocationShiftingRequest.__allocating_init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a1;
  result[4] = a2;
  return result;
}

void *FMLocationShiftingRequest.init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

uint64_t FMLocationShiftingRequest.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FMLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  FMLocationShifter.init()();
  return v0;
}

uint64_t sub_24A71ABEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v45 = a4;
  v46 = a3;
  v58 = a2;
  v63 = a1;
  v61 = sub_24A82CDF4();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24A82CE54();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  v11 = sub_24A6797D0(v8, qword_281518F88);
  v9 = v63;

  v56 = v11;
  v10 = sub_24A82CD94();
  LOBYTE(v11) = sub_24A82D504();
  v12 = v9 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_8;
  }

  v9 = swift_slowAlloc();
  *v9 = 134217984;
  if (v12)
  {
    goto LABEL_26;
  }

  for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
  {
    *(v9 + 4) = i;

    _os_log_impl(&dword_24A675000, v10, v11, "FMLocationShifter: processing %ld shifting request", v9, 0xCu);
    MEMORY[0x24C21E1D0](v9, -1, -1);

LABEL_8:
    v14 = swift_allocObject();
    v62 = v14;
    *(v14 + 16) = MEMORY[0x277D84F90];
    v11 = (v14 + 16);
    if (v12)
    {
      v10 = sub_24A82D744();
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    v15 = objc_opt_self();
    if (v10 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v17 = v15;
  v18 = 0;
  v19 = v63 & 0xC000000000000001;
  v51 = "gQueue";
  v50 = v66;
  v49 = (v4 + 8);
  v48 = (v6 + 8);
  v20 = &off_278FE8000;
  v21 = &off_278FE8000;
  *&v16 = 136315138;
  v47 = v16;
  v54 = v10;
  v55 = v11;
  v52 = v63 & 0xC000000000000001;
  v53 = v15;
  do
  {
    if (v19)
    {
      v29 = MEMORY[0x24C21D180](v18, v63);
    }

    else
    {
      v29 = *(v63 + 8 * v18 + 32);
    }

    [*(v29 + 16) v20[183]];
    v31 = v30;
    [*(v29 + 16) v20[183]];
    if ([v17 v21[251]])
    {
      v32 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v33 = sub_24A82CF94();
      v34 = [v32 initWithDescription:v33 andTimeout:60.0];

      v35 = sub_24A82CD94();
      v36 = sub_24A82D504();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v64 = v29;
        aBlock[0] = v38;
        *v37 = v47;
        type metadata accessor for FMLocationShiftingRequest();

        v39 = sub_24A82D024();
        v41 = sub_24A68761C(v39, v40, aBlock);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_24A675000, v35, v36, "FMLocationShifter: processing shifting request %s", v37, 0xCu);
        sub_24A6876E8(v38);
        MEMORY[0x24C21E1D0](v38, -1, -1);
        MEMORY[0x24C21E1D0](v37, -1, -1);
      }

      v22 = v58;
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v29;
      v23[4] = v62;
      v23[5] = v34;
      v66[2] = sub_24A71BEA0;
      v66[3] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v66[0] = sub_24A699BA0;
      v66[1] = &unk_285DC4260;
      v24 = _Block_copy(aBlock);

      v25 = v34;
      v26 = v57;
      sub_24A82CE24();
      v64 = MEMORY[0x277D84F90];
      sub_24A695668(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v28 = v60;
      v27 = v61;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v26, v28, v24);
      _Block_release(v24);
      (*v49)(v28, v27);
      (*v48)(v26, v59);

      [v25 wait];

      v10 = v54;
      v11 = v55;
      v19 = v52;
      v17 = v53;
      v20 = &off_278FE8000;
      v21 = &off_278FE8000;
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C21CB10](v42);
      if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A82D274();
      }

      sub_24A82D2C4();
      swift_endAccess();
    }

    ++v18;
  }

  while (v10 != v18);
LABEL_24:
  swift_beginAccess();

  v46(v43);
}

void sub_24A71B398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = sub_24A82CE04();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  v11 = *(a2 + 16);
  [v11 coordinate];
  v13 = v12;
  [v11 coordinate];
  v15 = v14;
  [v11 horizontalAccuracy];
  v17 = v16;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v32 = sub_24A71BEAC;
  v33 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_24A71BAC0;
  v31 = &unk_285DC42B0;
  v19 = _Block_copy(&aBlock);

  v20 = a4;

  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a2;
  v21[4] = v20;
  v32 = sub_24A71BF00;
  v33 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_24A71BD40;
  v31 = &unk_285DC4300;
  v22 = _Block_copy(&aBlock);

  v23 = v20;

  sub_24A67B054();
  v24 = v26;
  (*(v8 + 104))(v10, *MEMORY[0x277D851C8], v26);
  v25 = sub_24A82D5A4();
  (*(v8 + 8))(v10, v24);
  [v27 shiftCoordinate:v19 accuracy:0 withCompletionHandler:v22 mustGoToNetworkCallback:v25 errorHandler:v13 callbackQueue:{v15, v17}];

  _Block_release(v22);
  _Block_release(v19);
}

uint64_t sub_24A71B688(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v12 = sub_24A82CA34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[2];
  [v16 altitude];
  v18 = v17;
  [v16 verticalAccuracy];
  v20 = v19;
  [v16 course];
  v22 = v21;
  [v16 speed];
  v24 = v23;
  v25 = [v16 timestamp];
  sub_24A82C9F4();

  v26 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v27 = sub_24A82C994();
  v28 = [v26 initWithCoordinate:v27 altitude:a4 horizontalAccuracy:a5 verticalAccuracy:v18 course:a6 speed:v20 timestamp:{v22, v24}];

  (*(v13 + 8))(v15, v12);
  [v28 setReferenceFrame_];
  v29 = a1[3];
  v30 = a1[4];
  type metadata accessor for FMLocationShiftingRequest();
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = v29;
  v31[4] = v30;
  swift_beginAccess();

  v32 = v28;

  MEMORY[0x24C21CB10](v33);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v34 = sub_24A82CDC4();
  sub_24A6797D0(v34, qword_281518F88);
  v35 = v32;

  v36 = v16;
  v37 = sub_24A82CD94();
  v38 = sub_24A82D504();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = a3;
    v48[0] = v41;
    v42 = v41;
    *v39 = 136315650;
    *(v39 + 4) = sub_24A68761C(v29, v30, v48);
    *(v39 + 12) = 2112;
    *(v39 + 14) = v35;
    *(v39 + 22) = 2112;
    *(v39 + 24) = v36;
    *v40 = v35;
    v40[1] = v36;
    v43 = v35;
    v44 = v36;
    _os_log_impl(&dword_24A675000, v37, v38, "FMLocationShifter: shifting completed %s newLocation: %@ oldLocation: %@", v39, 0x20u);
    sub_24A6BBA94(&qword_27EF5D010, &qword_24A830E30);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v40, -1, -1);
    sub_24A6876E8(v42);
    v45 = v42;
    a3 = v47;
    MEMORY[0x24C21E1D0](v45, -1, -1);
    MEMORY[0x24C21E1D0](v39, -1, -1);
  }

  [a3 signal];
}

uint64_t sub_24A71BAC0(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

id sub_24A71BB2C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D4E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMLocationShifter: shifting request error %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x24C21CB10](v17);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();
  return [a4 signal];
}

void sub_24A71BD40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t FMLocationShifter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A71BEB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A71BF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = type metadata accessor for FMIPDevice(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_24A6FE328(v11, v8);
      v13 = v8[33];
      if (v13)
      {
        v15 = *v8;
        v14 = v8[1];
        v16 = v13;

        sub_24A6FE094(v8);
        type metadata accessor for FMLocationShiftingRequest();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = v15;
        v17[4] = v14;
        MEMORY[0x24C21CB10]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A82D274();
        }

        sub_24A82D2C4();
        v9 = v23;
      }

      else
      {
        sub_24A6FE094(v8);
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  v18 = swift_allocObject();
  v19 = v22;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = a3;

  sub_24A6B0FEC(v9, sub_24A71D364, v18);
}

uint64_t sub_24A71C124(unint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v65 = a4;
  v66 = a3;
  v6 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v65 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v65 - v9;
  v10 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v65 - v11;
  v12 = type metadata accessor for FMIPDevice(0) - 8;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v78 = &v65 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v76 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v65 - v23);
  v25 = *(a2 + 16);
  if (v25)
  {
    v26 = 0;
    v80 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = a2 + v80;
    v28 = MEMORY[0x277D84F90];
    v29 = *(v22 + 72);
    v68 = v15;
    v69 = a1;
    v79 = v29;
    v67 = &v65 - v23;
    while (1)
    {
      v31 = sub_24A6FE328(v27, v24);
      MEMORY[0x28223BE20](v31);
      v63 = v24;
      v32 = sub_24A79ED3C(sub_24A71D370, &v62, a1);
      if (!v32)
      {
        goto LABEL_18;
      }

      v33 = v24[33];
      if (!v33)
      {
        break;
      }

      v74 = v32;
      v75 = v26;
      v34 = v24[34];
      v35 = v24[32];
      LOWORD(v85[0]) = v35 & 0x101;
      BYTE2(v85[0]) = BYTE2(v35) & 1;
      BYTE3(v85[0]) = BYTE3(v35);
      v85[1] = v33;
      v85[2] = v34;
      v36 = *(v32 + 16);
      v73 = v33;
      FMIPLocation.init(location:shiftedLocation:)(v85, v36, v86);
      v37 = LOBYTE(v86[0]);
      v38 = BYTE1(v86[0]);
      v39 = v24;
      v40 = v28;
      v41 = BYTE2(v86[0]);
      v42 = BYTE3(v86[0]);
      v43 = *(&v86[0] + 1);
      v44 = *&v86[1];
      sub_24A6FE328(v39, v77);
      sub_24A68808C(v86);
      memcpy(v85, v86, sizeof(v85));
      memset(v84, 0, sizeof(v84));
      v45 = 256;
      if (!v38)
      {
        v45 = 0;
      }

      v46 = v45 | v37;
      v47 = v41 == 0;
      v28 = v40;
      v48 = 0x10000;
      if (v47)
      {
        v48 = 0;
      }

      memset(v83, 0, sizeof(v83));
      v82[0] = v46 | v48 | (v42 << 24);
      v82[1] = v43;
      v82[2] = v44;
      v49 = type metadata accessor for FMIPItemGroup(0);
      v50 = v70;
      (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
      v81 = 7;
      v51 = type metadata accessor for FMIPDeviceConnectedState(0);
      v52 = v71;
      (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
      v53 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v54 = v72;
      (*(*(v53 - 8) + 56))(v72, 1, 1, v53);
      v55 = v43;
      v64 = v54;
      v56 = v76;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v77, 0, v85, v84, v83, v82, 2, v50, v76, 2u, 2, &v81, v52, v64);
      sub_24A6FE328(v56, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_24A6924E0(0, v40[2] + 1, 1, v40);
      }

      v58 = v28[2];
      v57 = v28[3];
      v26 = v75;
      v24 = v67;
      if (v58 >= v57 >> 1)
      {
        v28 = sub_24A6924E0((v57 > 1), v58 + 1, 1, v28);
      }

      sub_24A6FE094(v76);
      v28[2] = v58 + 1;
      v30 = v79;
      sub_24A6CAF68(v78, v28 + v80 + v58 * v79);
      v15 = v68;
      a1 = v69;
LABEL_4:
      sub_24A6FE094(v24);
      v27 += v30;
      if (!--v25)
      {
        goto LABEL_23;
      }
    }

LABEL_18:
    sub_24A6FE328(v24, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24A6924E0(0, v28[2] + 1, 1, v28);
    }

    v60 = v28[2];
    v59 = v28[3];
    if (v60 >= v59 >> 1)
    {
      v28 = sub_24A6924E0((v59 > 1), v60 + 1, 1, v28);
    }

    v28[2] = v60 + 1;
    v30 = v79;
    sub_24A6CAF68(v15, v28 + v80 + v60 * v79);
    goto LABEL_4;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_23:
  v66(v28);
}

uint64_t sub_24A71C75C(uint64_t *a1, void *a2)
{
  if (*(*a1 + 24) == *a2 && *(*a1 + 32) == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A71C7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_24A71BF1C(a3, sub_24A71D2E8, v10);
}

uint64_t sub_24A71C900(uint64_t a1)
{

  sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);
  return sub_24A82D334();
}

uint64_t sub_24A71C950(unint64_t a1, void *a2, void (*a3)(void *))
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v5 = sub_24A82D744();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v45 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = MEMORY[0x277D84F98];
      v43 = v4;
      v44 = a2;
      v41 = v4 & 0xC000000000000001;
      v42 = v5;
      while (1)
      {
        if (v7)
        {
          v9 = MEMORY[0x24C21D180](v6, v4);
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v6 >= *(v45 + 16))
          {
            goto LABEL_27;
          }

          v9 = *(v4 + 8 * v6 + 32);

          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        if (a2[2])
        {
          v11 = sub_24A6A2D48(v9[3], v9[4]);
          if (v12)
          {
            break;
          }
        }

LABEL_5:
        ++v6;
        if (v10 == v5)
        {
          goto LABEL_32;
        }
      }

      v13 = a2[7] + 24 * v11;
      v14 = *(v13 + 1);
      v15 = *(v13 + 2);
      v16 = *(v13 + 3);
      v17 = *(v13 + 8);
      v18 = *(v13 + 16);
      v52[0] = *v13;
      v52[1] = v14;
      v52[2] = v15;
      v52[3] = v16;
      v53 = v17;
      v54 = v18;
      v19 = v9[2];
      v51 = v17;
      FMIPLocation.init(location:shiftedLocation:)(v52, v19, v55);
      v46 = v55[0];
      v47 = BYTE1(v55[0]);
      v48 = BYTE2(v55[0]);
      v49 = BYTE3(v55[0]);
      v20 = v55[1];
      v21 = v55[2];
      v22 = v9[3];
      v4 = v9[4];

      v50 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v8;
      a2 = v8;
      v25 = sub_24A6A2D48(v22, v4);
      v26 = v8[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_28;
      }

      v29 = v24;
      if (v8[3] < v28)
      {
        sub_24A781610(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_24A6A2D48(v22, v4);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

        v25 = v30;
        if ((v29 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:

        v8 = v55[0];
        v32 = *(v55[0] + 56) + 24 * v25;
        v33 = *(v32 + 8);
        *v32 = v46;
        *(v32 + 1) = v47;
        *(v32 + 2) = v48;
        *(v32 + 3) = v49;
        *(v32 + 8) = v50;
        *(v32 + 16) = v21;

LABEL_25:
        v4 = v43;
        a2 = v44;
        v7 = v41;
        v5 = v42;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v24)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_24A78629C();
        if (v29)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v8 = v55[0];
      *(v55[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v34 = (v8[6] + 16 * v25);
      *v34 = v22;
      v34[1] = v4;
      v35 = v8[7] + 24 * v25;
      *v35 = v46;
      *(v35 + 1) = v47;
      *(v35 + 2) = v48;
      *(v35 + 3) = v49;
      a2 = v50;
      *(v35 + 8) = v50;
      *(v35 + 16) = v21;

      v36 = v8[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_29;
      }

      v8[2] = v38;
      goto LABEL_25;
    }
  }

  v8 = MEMORY[0x277D84F98];
LABEL_32:
  a3(v8);
}

uint64_t sub_24A71CCD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = result + 32;
    v20 = result + 32;
    do
    {
      v10 = (v9 + 352 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= v7)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        result = memcpy(__dst, v10, sizeof(__dst));
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }

        v12 = __dst[3];
        sub_24A6CC988(__dst, v22);
        v13 = v12;
        if ([v13 referenceFrame] != 2)
        {
          break;
        }

        result = sub_24A6CC294(__dst);
        ++v11;
        v10 += 352;
        if (v8 == v7)
        {
          goto LABEL_12;
        }
      }

      v14 = v3;
      v16 = __dst[0];
      v15 = __dst[1];
      type metadata accessor for FMLocationShiftingRequest();
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v15;

      v18 = sub_24A6CC294(__dst);
      MEMORY[0x24C21CB10](v18);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A82D274();
      }

      result = sub_24A82D2C4();
      v6 = v24;
      v3 = v14;
      v9 = v20;
    }

    while (v8 != v7);
  }

LABEL_12:
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a2;
  v19[4] = a3;

  sub_24A6B0FEC(v6, sub_24A71D3D0, v19);
}

uint64_t sub_24A71CEC0(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v37 = *(a2 + 16);
  if (v37)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_37:
      v24 = a2;
      v25 = sub_24A82D744();
      a2 = v24;
      v5 = v25;
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v36 = a2 + 32;
    for (i = MEMORY[0x277D84F90]; ; i = v13)
    {
      memcpy(__dst, (v36 + 352 * v6), 0x160uLL);
      v7 = __dst[0];
      v8 = __dst[1];
      sub_24A6CC988(__dst, v43);
      if (v5)
      {
        v9 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x24C21D180](v9, a1);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v9 >= *(v4 + 16))
            {
              goto LABEL_36;
            }

            v10 = *(a1 + 8 * v9 + 32);

            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          v12 = v10[3] == v7 && v10[4] == v8;
          if (v12 || (sub_24A82DC04() & 1) != 0)
          {
            break;
          }

          ++v9;
          if (v11 == v5)
          {
            goto LABEL_20;
          }
        }

        v35 = __dst[42];
        v38 = __dst[43];
        v33 = __dst[41];
        v34 = BYTE1(__dst[41]);
        LODWORD(v42[0]) = __dst[2];
        v42[1] = __dst[3];
        v42[2] = __dst[4];
        v16 = v10[2];
        v28 = __dst[3];
        FMIPLocation.init(location:shiftedLocation:)(v42, v16, v43);
        v31 = BYTE1(v43[0]);
        v32 = v43[0];
        v29 = BYTE3(v43[0]);
        v30 = BYTE2(v43[0]);
        v17 = v43[1];
        v18 = v43[2];
        sub_24A68808C(__src);
        memcpy(v42, __src, sizeof(v42));
        sub_24A6CC988(__dst, v43);
        v27 = v17;

        sub_24A6CB940(&__dst[5], v43);
        sub_24A71D3DC(v42);
        memcpy(v40, &__dst[5], sizeof(v40));

        sub_24A6CC294(__dst);
        memcpy(v43, v40, 0x120uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_24A7802EC(0, *(i + 2) + 1, 1, i);
        }

        v20 = *(i + 2);
        v19 = *(i + 3);
        if (v20 >= v19 >> 1)
        {
          i = sub_24A7802EC((v19 > 1), v20 + 1, 1, i);
        }

        sub_24A6CC294(__dst);
        *(i + 2) = v20 + 1;
        v21 = &i[352 * v20];
        *(v21 + 4) = v7;
        *(v21 + 5) = v8;
        v13 = i;
        v21[48] = v32;
        v21[49] = v31;
        v21[50] = v30;
        v21[51] = v29;
        *(v21 + 7) = v27;
        *(v21 + 8) = v18;
        memcpy(v21 + 72, v43, 0x120uLL);
        v21[360] = v33;
        v21[361] = v34;
        v22 = v40[1];
        *(v21 + 362) = v40[0];
        *(v21 + 183) = v22;
        *(v21 + 46) = v35;
        *(v21 + 47) = v38;
      }

      else
      {
LABEL_20:
        v13 = i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_24A7802EC(0, *(i + 2) + 1, 1, i);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = sub_24A7802EC((v14 > 1), v15 + 1, 1, v13);
        }

        *(v13 + 2) = v15 + 1;
        memcpy(&v13[352 * v15 + 32], __dst, 0x160uLL);
      }

      if (++v6 == v37)
      {
        break;
      }
    }

    a3(v13);
  }

  else
  {
    a3(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_24A71D2E8(uint64_t a1)
{
  sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);

  return sub_24A71C900(a1);
}

uint64_t sub_24A71D390()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A71D3DC(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPEraseAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);

  return v1;
}

uint64_t FMIPEraseAction.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);

  return v1;
}

uint64_t FMIPEraseAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);

  return v1;
}

uint64_t FMIPEraseAction.__allocating_init(device:message:phoneNumber:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v14 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
  *v16 = a4;
  v16[1] = a5;
  v17 = (v14 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
  *v17 = a6;
  v17[1] = a7;
  *(v14 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled) = a3 != 0;
  *(v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v18 = (v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v22 = 0;
  v22[1] = 0;
  *(v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v14 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v14;
}

uint64_t FMIPEraseAction.init(device:message:phoneNumber:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
  *v8 = a2;
  v8[1] = a3;
  v9 = (v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
  *v9 = a4;
  v9[1] = a5;
  v10 = (v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
  *v10 = a6;
  v10[1] = a7;
  *(v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled) = a3 != 0;
  *(v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v11 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v7;
}

uint64_t static FMIPEraseAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  v3 = *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_24A82DC04();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  v10 = *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode) || v9 != v10)
    {
      v12 = a1;
      v13 = a2;
      v14 = sub_24A82DC04();
      a2 = v13;
      v15 = v14;
      a1 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  v17 = *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber) || v16 != v17)
  {
    v19 = a1;
    v20 = a2;
    v21 = sub_24A82DC04();
    a2 = v20;
    v22 = v21;
    a1 = v19;
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled))
  {
    return 0;
  }

  v24 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v25 = a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;

  return static FMIPDevice.== infix(_:_:)(v24, v25);
}

uint64_t sub_24A71D918()
{
}

uint64_t FMIPEraseAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();

  return v0;
}

uint64_t FMIPEraseAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPEraseAction(uint64_t a1)
{
  result = qword_27EF5DE28;
  if (!qword_27EF5DE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPPrewarmAction.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPPrewarmAction.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FMIPPrewarmAction.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FMIPPrewarmAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FMIPPrewarmAction.debugDescription.getter()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  MEMORY[0x24C21C9E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A656369766564, 0xE800000000000000);

  return 60;
}

uint64_t type metadata accessor for FMIPSavePreferencesRequest(uint64_t a1)
{
  result = qword_27EF5DE38;
  if (!qword_27EF5DE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A71DF08()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78D80);
  type metadata accessor for FMIPShowContactDetailsAction(0);
  v3 = swift_dynamicCastClass();
  v4 = MEMORY[0x277D837D0];
  v5 = &unk_27EF5D000;
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled);
    v40 = MEMORY[0x277D839B0];
    LOBYTE(v39) = v6;
    v7 = qword_27EF5D920;
    v8 = *(v0 + qword_27EF5D920);

    os_unfair_lock_lock(v8 + 6);

    os_unfair_lock_unlock(v8 + 6);

    sub_24A6A50DC(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_24A6A4F8C(v38, 0xD000000000000012, 0x800000024A846800, isUniquelyReferenced_nonNull_native);
    v11 = *(v1 + v7);
    MEMORY[0x28223BE20](v10);

    os_unfair_lock_lock((v11 + 24));
    sub_24A6FF740((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));

    v40 = v4;
    *&v39 = 0xD000000000000012;
    *(&v39 + 1) = 0x800000024A846800;
    v12 = *(v1 + v7);

    os_unfair_lock_lock(v12 + 6);

    os_unfair_lock_unlock(v12 + 6);

    sub_24A6A50DC(&v39, v38);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_24A6A4F8C(v38, 0x79747265706F7270, 0xEF6465676E616843, v13);
    v15 = *(v1 + v7);
    MEMORY[0x28223BE20](v14);

    os_unfair_lock_lock((v15 + 24));
    sub_24A6FF740((v15 + 16));
LABEL_3:
    os_unfair_lock_unlock((v15 + 24));

    v5 = &unk_27EF5D000;

    goto LABEL_12;
  }

  type metadata accessor for FMIPNotifyAction(0);
  v16 = swift_dynamicCastClass();
  if (v16 && *(v16 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type) == 1)
  {
    v17 = *(v16 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
    v40 = MEMORY[0x277D839B0];
    LOBYTE(v39) = v17;
    v18 = qword_27EF5D920;
    v19 = *(v0 + qword_27EF5D920);

    os_unfair_lock_lock(v19 + 6);

    os_unfair_lock_unlock(v19 + 6);

    sub_24A6A50DC(&v39, v38);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_24A6A4F8C(v38, 0xD000000000000012, 0x800000024A8467E0, v20);
    v22 = *(v1 + v18);
    MEMORY[0x28223BE20](v21);

    os_unfair_lock_lock((v22 + 24));
    sub_24A6FF740((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));

    v40 = v4;
    *&v39 = 0xD000000000000012;
    *(&v39 + 1) = 0x800000024A8467E0;
    v23 = *(v1 + v18);

    os_unfair_lock_lock(v23 + 6);

    os_unfair_lock_unlock(v23 + 6);

    sub_24A6A50DC(&v39, v38);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_24A6A4F8C(v38, 0x79747265706F7270, 0xEF6465676E616843, v24);
    v15 = *(v1 + v18);
    MEMORY[0x28223BE20](v25);

    os_unfair_lock_lock((v15 + 24));
    sub_24A6FF740((v15 + 16));
    goto LABEL_3;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);
  v27 = sub_24A82CD94();
  v28 = sub_24A82D4C4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24A675000, v27, v28, "Action not supported", v29, 2u);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

LABEL_12:
  v31 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v30 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v40 = v4;
  *&v39 = v31;
  *(&v39 + 1) = v30;
  v32 = v5[292];
  v33 = *(v1 + v32);

  os_unfair_lock_lock(v33 + 6);

  os_unfair_lock_unlock(v33 + 6);

  sub_24A6A50DC(&v39, v38);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = sub_24A6A4F8C(v38, 0x656369766564, 0xE600000000000000, v34);
  v36 = *(v1 + v32);
  MEMORY[0x28223BE20](v35);

  os_unfair_lock_lock((v36 + 24));
  sub_24A6A3D28((v36 + 16));
  os_unfair_lock_unlock((v36 + 24));
}

uint64_t sub_24A71E524()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

uint64_t sub_24A71E5A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v236 = a2;
  v223 = a3;
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v235 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v234 = &v202 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v233 = &v202 - v10;
  MEMORY[0x28223BE20](v9);
  v241 = &v202 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  MEMORY[0x28223BE20](v12 - 8);
  v244 = &v202 - v13;
  v14 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  MEMORY[0x28223BE20](v14 - 8);
  v240 = &v202 - v15;
  v16 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v16 - 8);
  v232 = &v202 - v17;
  v18 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  MEMORY[0x28223BE20](v18 - 8);
  v231 = &v202 - v19;
  v251 = sub_24A82CA34();
  v20 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v239 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for FMIPDevice(0);
  v22 = *(v227 - 8);
  v23 = MEMORY[0x28223BE20](v227);
  v248 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v238 = &v202 - v26;
  result = MEMORY[0x28223BE20](v25);
  v29 = (&v202 - v28);
  v30 = *(a1 + 11);
  v272 = *(a1 + 10);
  v31 = a1[4];
  v270 = a1[3];
  v271 = v31;
  v32 = a1[2];
  v268 = a1[1];
  v269 = v32;
  v267 = *a1;
  v33 = *(a1 + 13);
  v222 = *(a1 + 12);
  v242 = v33;
  v34 = *(v30 + 16);
  if (v34)
  {
    v35 = 0;
    v228 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v254 = v30 + v228;
    v237 = (v20 + 8);
    v225 = (v20 + 56);
    v224 = xmmword_24A836760;
    v252 = MEMORY[0x277D84F90];
    v36 = v242;
    v37 = v30;
    v229 = v30;
    v230 = v22;
    v243 = v34;
    v245 = (&v202 - v28);
    while (1)
    {
      if (v35 >= *(v37 + 16))
      {
        __break(1u);
        return result;
      }

      v38 = *(v22 + 72);
      sub_24A6FE328(v254 + v38 * v35, v29);
      v39 = v29[33];
      if (v39 && *(v36 + 16))
      {
        v253 = v35;
        v40 = v22;
        v42 = *v29;
        v41 = v29[1];
        v43 = v39;
        v249 = v42;
        v250 = v41;
        v44 = sub_24A6A2D48(v42, v41);
        if (v45)
        {
          v46 = (*(v36 + 56) + 208 * v44);
          v257 = *v46;
          v47 = v46[3];
          v48 = v46[4];
          v49 = v46[2];
          *v258 = v46[1];
          *&v258[16] = v49;
          *&v258[32] = v47;
          *&v258[48] = v48;
          v50 = v46[5];
          v51 = v46[6];
          v52 = v46[8];
          *&v258[96] = v46[7];
          *&v258[112] = v52;
          *&v258[64] = v50;
          *&v258[80] = v51;
          v53 = v46[9];
          v54 = v46[10];
          v55 = v46[11];
          *(v261 + 9) = *(v46 + 185);
          v260 = v54;
          v261[0] = v55;
          v259 = v53;
          v56 = v29[27];
          LODWORD(v57) = (v56 & 0x10) == 0;
          if ((v56 & 0x10) != 0)
          {
            v58 = 10.0;
          }

          else
          {
            v58 = 120.0;
          }

          sub_24A71FF60(&v257, v255);
          v247 = v43;
          v59 = [v43 timestamp];
          v60 = v239;
          sub_24A82C9F4();

          sub_24A82C974();
          v62 = v61;
          v63 = *v237;
          (*v237)(v60, v251);
          *&v255[0] = 0;
          MEMORY[0x24C21E1F0](v255, 8);
          v246 = v38;
          if ((0x20000000000001 * *&v255[0]) >= 0x1FFFFFFFFFF801)
          {
            v65 = (*&v255[0] * 0x20000000000001uLL) >> 64;
            v34 = v243;
            v64 = v238;
            v35 = v253;
          }

          else
          {
            v64 = v238;
            v35 = v253;
            do
            {
              *&v255[0] = 0;
              MEMORY[0x24C21E1F0](v255, 8);
            }

            while ((0x20000000000001 * *&v255[0]) < 0x1FFFFFFFFFF801);
            v65 = (*&v255[0] * 0x20000000000001uLL) >> 64;
            v34 = v243;
          }

          if (vcvtd_n_f64_u64(v65, 0x35uLL) <= pow(v62 / v58, 10.0))
          {
            v57 = (v56 >> 4) & 1;
          }

          if ((v56 & 0x10) != 0)
          {
            if (v57)
            {
              v72 = v247;
              [v247 coordinate];
              v74 = v73;
              v76 = v75;
              [v72 altitude];
              v78 = v77;
              [v72 horizontalAccuracy];
              v80 = v79;
              [v72 verticalAccuracy];
              v82 = v81;
              v83 = v239;
              sub_24A82CA24();
              v84 = objc_allocWithZone(MEMORY[0x277CE41F8]);
              v85 = sub_24A82C994();
              v86 = [v84 initWithCoordinate:v85 altitude:v74 horizontalAccuracy:v76 verticalAccuracy:v78 timestamp:{v80, v82}];

              v63(v83, v251);
              v256 = 6;
              v221 = v86;
              FMIPLocation.init(location:type:)(v221, &v256, v255);
              v87 = LOBYTE(v255[0]);
              v88 = BYTE1(v255[0]);
              v89 = BYTE2(v255[0]);
              v90 = BYTE3(v255[0]);
              v91 = *(&v255[0] + 1);
              v220 = *&v255[1];
              v92 = *&v258[88];
              v93 = *&v258[96];
              if (*&v258[96])
              {
                if (*&v258[88] == __PAIR128__(0xE500000000000000, 0x72656E776FLL))
                {
                  v253 = 0;
                  v217 = 0x72656E776FLL;
                  v218 = 0xE500000000000000;
                  v219 = 288;
                }

                else
                {
                  v101 = sub_24A82DC04();
                  v102 = 416;
                  if (v101)
                  {
                    v102 = 288;
                  }

                  v218 = v93;
                  v219 = v102;
                  v217 = v92;
                  v253 = 0;
                }
              }

              else
              {
                v217 = 0x72656E776FLL;
                v218 = 0xE500000000000000;
                v219 = 416;
                v253 = *&v258[88];
              }

              LODWORD(v216) = (BYTE8(v261[1]) & 1) == 0;
              v263 = v257;
              sub_24A720010(&v263, v255);
              v103 = v250;

              sub_24A720010(&v263, v255);
              v226 = v91;

              v104 = sub_24A771CCC();
              v213 = v105;
              v214 = v104;
              v106 = sub_24A771FF8();
              v211 = v107;
              v212 = v106;
              v108 = sub_24A7720F8();
              v209 = v109;
              v210 = v108;
              v110 = sub_24A771DC8();
              v206 = v111;
              v207 = v110;
              v112 = sub_24A771EE8();
              v204 = v113;
              v205 = v112;
              v208 = qword_24A8367F0[v258[0]];
              v114 = 256;
              if (!v88)
              {
                v114 = 0;
              }

              v115 = v114 | v87;
              v116 = 0x10000;
              if (!v89)
              {
                v116 = 0;
              }

              v117 = v115 | v116 | (v90 << 24);
              sub_24A68808C(v255);
              v118 = type metadata accessor for FMIPPlaySoundMetadata(0);
              v119 = v231;
              (*(*(v118 - 8) + 56))(v231, 1, 1, v118);
              v120 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
              v121 = v232;
              (*(*(v120 - 8) + 56))(v232, 1, 1, v120);
              v122 = type metadata accessor for FMIPLockMetadata(0);
              (*(*(v122 - 8) + 56))(v240, 1, 1, v122);
              v123 = type metadata accessor for FMIPEraseMetadata(0);
              (*(*(v123 - 8) + 56))(v244, 1, 1, v123);
              v124 = *v225;
              v125 = v251;
              (*v225)(v241, 1, 1, v251);
              v124(v233, 1, 1, v125);
              v124(v234, 1, 1, v251);
              v124(v235, 1, 1, v251);
              v126 = v227;
              v127 = *(v227 + 128);
              v128 = type metadata accessor for FMIPItemGroup(0);
              v64 = v238;
              (*(*(v128 - 8) + 56))(&v238[v127], 1, 1, v128);
              v215 = v126[35];
              *(v64 + v215) = 1;
              *v64 = v249;
              *(v64 + 8) = v103;
              v129 = v253;
              *(v64 + 16) = v253;
              *(v64 + 24) = 0;
              v130 = v218;
              *(v64 + 32) = v217;
              *(v64 + 40) = v130;
              *(v64 + 48) = v129;
              *(v64 + 56) = 0;
              *(v64 + 64) = v263;
              *(v64 + 80) = v216;
              v131 = v213;
              *(v64 + 88) = v214;
              *(v64 + 96) = v131;
              v132 = v211;
              *(v64 + 104) = v212;
              *(v64 + 112) = v132;
              v133 = v209;
              *(v64 + 120) = v210;
              *(v64 + 128) = v133;
              v134 = v206;
              *(v64 + 136) = v207;
              *(v64 + 144) = v134;
              v135 = v204;
              *(v64 + 152) = v205;
              *(v64 + 160) = v135;
              *(v64 + 168) = v263;
              *(v64 + 184) = 0x3FF0000000000000;
              *(v64 + 192) = 1;
              *(v64 + 200) = v224;
              *(v64 + 216) = v219;
              v136 = MEMORY[0x277D84F90];
              v137 = v208;
              *(v64 + 232) = MEMORY[0x277D84F90];
              *(v64 + 240) = v137;
              *(v64 + 248) = v136;
              *(v64 + 256) = v117;
              v138 = v226;
              v139 = v220;
              *(v64 + 264) = v226;
              *(v64 + 272) = v139;
              *(v64 + 280) = v117;
              *(v64 + 288) = v138;
              *(v64 + 296) = v139;
              memcpy((v64 + 304), v255, 0x120uLL);
              sub_24A67E964(v119, v64 + v126[28], &qword_27EF5D5F8, &qword_24A83DE60);
              sub_24A67E964(v121, v64 + v126[29], &unk_27EF5E0A0, &unk_24A8367D0);
              sub_24A67E964(v240, v64 + v126[30], &qword_27EF5DE50, &qword_24A83DE40);
              sub_24A67E964(v244, v64 + v126[31], &qword_27EF5DE48, &unk_24A8367C0);
              v140 = v241;
              sub_24A67E964(v241, v64 + v126[39], &qword_27EF5E0E0, &qword_24A836D90);
              v141 = v233;
              sub_24A67E964(v233, v64 + v126[40], &qword_27EF5E0E0, &qword_24A836D90);
              v142 = v234;
              sub_24A67E964(v234, v64 + v126[41], &qword_27EF5E0E0, &qword_24A836D90);
              v143 = v235;
              sub_24A67E964(v235, v64 + v126[42], &qword_27EF5E0E0, &qword_24A836D90);
              v250 = v226;
              sub_24A71FFBC(&v257);
              *(v64 + v126[38]) = 0;
              *(v64 + v126[43]) = 0;
              *(v64 + v126[44]) = 0;
              *(v64 + v126[45]) = 0;
              sub_24A67F378(v143, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v142, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v141, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v140, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v244, &qword_27EF5DE48, &unk_24A8367C0);
              sub_24A67F378(v240, &qword_27EF5DE50, &qword_24A83DE40);
              sub_24A67F378(v232, &unk_27EF5E0A0, &unk_24A8367D0);
              sub_24A67F378(v231, &qword_27EF5D5F8, &qword_24A83DE60);

              *(v64 + 224) = MEMORY[0x277D84F90];
              *(v64 + v126[33]) = 0;
              *(v64 + v126[34]) = 0;
              *(v64 + v126[36]) = 0;
              v144 = (v64 + v126[37]);
              *v144 = v253;
              v144[1] = 0;
              v145 = v215;
              goto LABEL_120;
            }
          }

          else if ((v57 & 1) == 0)
          {
            v66 = v245[32];
            v67 = v245[33];
            v68 = v245[34];
            v69 = *&v258[88];
            v70 = *&v258[96];
            if (*&v258[96] && (*&v258[88] == __PAIR128__(0xE500000000000000, 0x72656E776FLL) || (sub_24A82DC04() & 1) != 0))
            {
              v71 = 288;
            }

            else
            {
              v71 = 416;
            }

            v218 = v71;
            LODWORD(v217) = BYTE8(v261[1]);
            v94 = 2048;
            if (BYTE8(v261[1]))
            {
              v94 = 16;
            }

            v216 = v94;
            if (v67)
            {
              v226 = v68;
              v214 = (v66 >> 8) & 1;
              v215 = BYTE3(v66);
              v213 = (v66 >> 16) & 1;

              v209 = v67;
              v202 = v66;
            }

            else
            {
              sub_24A72006C();
              v265[2] = *&v258[40];
              v265[3] = *&v258[56];
              v265[4] = *&v258[72];
              v265[0] = *&v258[8];
              v265[1] = *&v258[24];
              v262[2] = *&v258[40];
              v262[3] = *&v258[56];
              v262[4] = *&v258[72];
              v262[0] = *&v258[8];
              v262[1] = *&v258[24];

              sub_24A7200B8(v265, v255);
              v95 = sub_24A7AE728(v262);
              v256 = 6;
              FMIPLocation.init(location:type:)(v95, &v256, v255);
              v202 = LOBYTE(v255[0]);
              v214 = BYTE1(v255[0]);
              v213 = BYTE2(v255[0]);
              v215 = BYTE3(v255[0]);
              v209 = *(&v255[0] + 1);
              v226 = *&v255[1];
            }

            if (v70)
            {
              v96 = v69;
            }

            else
            {
              v96 = 0x72656E776FLL;
            }

            v97 = 0xE500000000000000;
            if (v70)
            {
              v98 = v70;
            }

            else
            {
              v98 = 0xE500000000000000;
            }

            v220 = v98;
            v221 = v96;
            v212 = v258[0];
            v99 = v258[0];
            if (v258[0] > 2u)
            {
              if (v258[0] != 3)
              {
                if (v258[0] == 4)
                {
                  v97 = 0xE600000000000000;
                  v100 = 0x7265766C6973;
                }

                else
                {
                  v97 = 0xE100000000000000;
                  v100 = 48;
                }

                goto LABEL_62;
              }

              goto LABEL_51;
            }

            if (v258[0])
            {
              if (v258[0] == 1)
              {
                v100 = 0x302D322D31;
                goto LABEL_62;
              }

LABEL_51:
              v100 = 0x302D312D31;
            }

            else
            {
              v97 = 0xE900000000000079;
              v100 = 0x6172676563617073;
            }

LABEL_62:
            v264 = v257;
            v206 = *&v258[120];
            v204 = *(&v259 + 1);
            v253 = *(&v260 + 1);
            v146 = v260;
            v147 = *&v261[0];
            v148 = v259;
            if (v259 == 1)
            {
              v219 = v100;
              sub_24A720010(&v264, v255);
              sub_24A720010(&v264, v255);
            }

            else
            {
              v149 = v97;
              v266 = *&v258[104];
              v97 = *&v258[112];
              if (*&v258[112] == 1)
              {
                v219 = v100;
                sub_24A720010(&v264, v255);
                sub_24A720010(&v264, v255);

                v97 = v149;
              }

              else
              {
                v219 = v266;
                sub_24A720010(&v264, v255);
                sub_24A720010(&v264, v255);

                sub_24A67E964(&v266, v255, &qword_27EF5DE58, &unk_24A8367E0);
              }
            }

            v150 = v146;
            if (v99 > 2)
            {
              v151 = v148;
              if (v99 == 3)
              {
                v152 = 0xE500000000000000;
                v153 = 0x6863746157;
                if (v148 != 1)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                if (v99 != 4)
                {
                  v152 = 0xE900000000000079;
                  v153 = 0x726F737365636341;
                  if (v148 == 1)
                  {
                    goto LABEL_85;
                  }

                  goto LABEL_83;
                }

                v152 = 0xE400000000000000;
                v153 = 1667321193;
                if (v148 != 1)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
              v151 = v148;
              if (v99)
              {
                if (v99 == 1)
                {
                  v152 = 0xE600000000000000;
                  v153 = 0x656E6F685069;
                  if (v148 == 1)
                  {
                    goto LABEL_85;
                  }

LABEL_83:
                  if (!v147)
                  {
                    goto LABEL_85;
                  }

                  v210 = v253;
                  v211 = v147;
LABEL_86:
                  v207 = sub_24A7720F8();
                  v208 = v154;
                  v155 = v212;
                  if (v212 > 2u)
                  {
                    if (v212 == 3)
                    {
                      v253 = 0xE800000000000000;
                      v156 = 0x312C336863746157;
                      goto LABEL_98;
                    }

                    if (v212 == 4)
                    {
                      v253 = 0xEA0000000000312CLL;
                      v156 = 0x316F725063614D69;
                      goto LABEL_98;
                    }

                    v156 = 0x5F73646F50726941;
                    v157 = 0xEC00000034393138;
                  }

                  else
                  {
                    if (v212)
                    {
                      if (v212 == 1)
                      {
                        v253 = 0xEA0000000000352CLL;
                        v156 = 0x3231656E6F685069;
                      }

                      else
                      {
                        v253 = 0xE700000000000000;
                        v156 = 0x312C3864615069;
                      }

LABEL_98:
                      if (v151 >= 2)
                      {

                        v156 = v206;
                        v253 = v151;
                      }

                      v206 = v156;
                      if (v155 > 2u)
                      {
                        if (v155 == 3)
                        {
                          v159 = 0x615720656C707041;
                          v158 = 0xEB00000000686374;
                        }

                        else if (v155 == 4)
                        {
                          v158 = 0xE400000000000000;
                          v159 = 1667321193;
                        }

                        else
                        {
                          v158 = 0xE900000000000079;
                          v159 = 0x726F737365636341;
                        }
                      }

                      else if (v155)
                      {
                        if (v155 == 1)
                        {
                          v158 = 0xE600000000000000;
                          v159 = 0x656E6F685069;
                        }

                        else
                        {
                          v158 = 0xE400000000000000;
                          v159 = 1684099177;
                        }
                      }

                      else
                      {
                        v159 = 0x206B6F6F4263614DLL;
                        v158 = 0xEB000000006F7250;
                      }

                      v218 |= v216;
                      LODWORD(v216) = (v217 & 1) == 0;
                      v205 = v97;
                      if (v151 == 1 || !v150)
                      {
                        v203 = v159;
                        v204 = v158;
                      }

                      else
                      {

                        v203 = v204;
                        v204 = v150;
                      }

                      v212 = qword_24A8367F0[v155];
                      v160 = 256;
                      if (!v214)
                      {
                        v160 = 0;
                      }

                      v161 = v160 & 0xFFFFFFFFFFFFFFFELL | v202 & 1;
                      v162 = 0x10000;
                      if (!v213)
                      {
                        v162 = 0;
                      }

                      v215 = v161 | v162 | (v215 << 24);
                      sub_24A68808C(v255);
                      v163 = type metadata accessor for FMIPPlaySoundMetadata(0);
                      v164 = v231;
                      (*(*(v163 - 8) + 56))(v231, 1, 1, v163);
                      v165 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
                      v166 = v232;
                      (*(*(v165 - 8) + 56))(v232, 1, 1, v165);
                      v167 = type metadata accessor for FMIPLockMetadata(0);
                      v168 = v240;
                      (*(*(v167 - 8) + 56))(v240, 1, 1, v167);
                      v169 = type metadata accessor for FMIPEraseMetadata(0);
                      (*(*(v169 - 8) + 56))(v244, 1, 1, v169);
                      v170 = *v225;
                      v171 = v251;
                      (*v225)(v241, 1, 1, v251);
                      v170(v233, 1, 1, v171);
                      v170(v234, 1, 1, v251);
                      v170(v235, 1, 1, v251);
                      v172 = v227;
                      v173 = *(v227 + 128);
                      v174 = type metadata accessor for FMIPItemGroup(0);
                      (*(*(v174 - 8) + 56))(v64 + v173, 1, 1, v174);
                      v217 = v172[35];
                      *(v64 + v217) = 1;
                      v175 = v250;
                      *v64 = v249;
                      *(v64 + 8) = v175;
                      *(v64 + 16) = 0;
                      *(v64 + 24) = 0;
                      v176 = v220;
                      *(v64 + 32) = v221;
                      *(v64 + 40) = v176;
                      *(v64 + 48) = 0;
                      *(v64 + 56) = 0;
                      *(v64 + 64) = v264;
                      *(v64 + 80) = v216;
                      v177 = v205;
                      *(v64 + 88) = v219;
                      *(v64 + 96) = v177;
                      v178 = v211;
                      *(v64 + 104) = v210;
                      *(v64 + 112) = v178;
                      v179 = v208;
                      *(v64 + 120) = v207;
                      *(v64 + 128) = v179;
                      v180 = v253;
                      *(v64 + 136) = v206;
                      *(v64 + 144) = v180;
                      v181 = v204;
                      *(v64 + 152) = v203;
                      *(v64 + 160) = v181;
                      *(v64 + 168) = v264;
                      *(v64 + 184) = 0x3FF0000000000000;
                      *(v64 + 192) = 1;
                      *(v64 + 200) = v224;
                      *(v64 + 216) = v218;
                      v182 = MEMORY[0x277D84F90];
                      v183 = v212;
                      *(v64 + 232) = MEMORY[0x277D84F90];
                      *(v64 + 240) = v183;
                      v184 = v215;
                      *(v64 + 248) = v182;
                      *(v64 + 256) = v184;
                      v185 = v209;
                      v186 = v226;
                      *(v64 + 264) = v209;
                      *(v64 + 272) = v186;
                      *(v64 + 280) = v184;
                      *(v64 + 288) = v185;
                      *(v64 + 296) = v186;
                      memcpy((v64 + 304), v255, 0x120uLL);
                      sub_24A67E964(v164, v64 + v172[28], &qword_27EF5D5F8, &qword_24A83DE60);
                      sub_24A67E964(v166, v64 + v172[29], &unk_27EF5E0A0, &unk_24A8367D0);
                      sub_24A67E964(v168, v64 + v172[30], &qword_27EF5DE50, &qword_24A83DE40);
                      sub_24A67E964(v244, v64 + v172[31], &qword_27EF5DE48, &unk_24A8367C0);
                      sub_24A67E964(v241, v64 + v172[39], &qword_27EF5E0E0, &qword_24A836D90);
                      v187 = v233;
                      sub_24A67E964(v233, v64 + v172[40], &qword_27EF5E0E0, &qword_24A836D90);
                      v188 = v234;
                      sub_24A67E964(v234, v64 + v172[41], &qword_27EF5E0E0, &qword_24A836D90);
                      v189 = v235;
                      sub_24A67E964(v235, v64 + v172[42], &qword_27EF5E0E0, &qword_24A836D90);
                      v190 = v185;
                      sub_24A71FFBC(&v257);
                      *(v64 + v172[38]) = 0;
                      *(v64 + v172[43]) = 0;
                      *(v64 + v172[44]) = 0;
                      *(v64 + v172[45]) = 0;
                      sub_24A67F378(v189, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v188, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v187, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v241, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v244, &qword_27EF5DE48, &unk_24A8367C0);
                      sub_24A67F378(v240, &qword_27EF5DE50, &qword_24A83DE40);
                      sub_24A67F378(v232, &unk_27EF5E0A0, &unk_24A8367D0);
                      sub_24A67F378(v231, &qword_27EF5D5F8, &qword_24A83DE60);
                      *(v64 + 224) = MEMORY[0x277D84F90];
                      *(v64 + v172[33]) = 0;
                      *(v64 + v172[34]) = 0;
                      *(v64 + v172[36]) = 0;
                      v191 = (v64 + v172[37]);
                      *v191 = 0;
                      v191[1] = 0;
                      v145 = v217;
LABEL_120:
                      *(v64 + v145) = 1;
                      v34 = v243;
LABEL_121:
                      sub_24A6FE328(v64, v248);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v22 = v230;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v252 = sub_24A6924E0(0, v252[2] + 1, 1, v252);
                      }

                      v194 = v252[2];
                      v193 = v252[3];
                      if (v194 >= v193 >> 1)
                      {
                        v252 = sub_24A6924E0((v193 > 1), v194 + 1, 1, v252);
                      }

                      sub_24A6FE094(v64);
                      v29 = v245;
                      sub_24A6FE094(v245);
                      v195 = v252;
                      v252[2] = v194 + 1;
                      result = sub_24A6CAF68(v248, v195 + v228 + v194 * v246);
                      v36 = v242;
                      v37 = v229;
                      goto LABEL_5;
                    }

                    v156 = 0x506B6F6F4263614DLL;
                    v157 = 0xEE00312C36316F72;
                  }

                  v253 = v157;
                  goto LABEL_98;
                }

                v152 = 0xE400000000000000;
                v153 = 1684099177;
                if (v148 != 1)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v152 = 0xEA00000000006F72;
                v153 = 0x506B6F6F4263614DLL;
                if (v148 != 1)
                {
                  goto LABEL_83;
                }
              }
            }

LABEL_85:
            v210 = v153;
            v211 = v152;
            goto LABEL_86;
          }

          sub_24A71FFBC(&v257);
          sub_24A6FE328(v245, v64);
          goto LABEL_121;
        }

        v22 = v40;
        v35 = v253;
      }

      result = sub_24A6FE094(v29);
LABEL_5:
      if (++v35 == v34)
      {
        goto LABEL_127;
      }
    }
  }

  v252 = MEMORY[0x277D84F90];
  v36 = v242;
LABEL_127:
  v196 = v270;
  v198 = v222;
  v197 = v223;
  *(v223 + 32) = v269;
  *(v197 + 48) = v196;
  *(v197 + 64) = v271;
  v199 = v272;
  v200 = v268;
  *v197 = v267;
  *(v197 + 16) = v200;
  v201 = v252;
  *(v197 + 80) = v199;
  *(v197 + 88) = v201;
  *(v197 + 96) = v198;
  *(v197 + 104) = v36;
  sub_24A6EF948(&v267, v255);
}

unint64_t sub_24A72006C()
{
  result = qword_27EF5D830;
  if (!qword_27EF5D830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5D830);
  }

  return result;
}

void sub_24A720124(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_24A720190(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_24A82D744();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C21D180](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_24A6BBA94(&qword_27EF5DE70, &qword_24A836A88);
    v8 = sub_24A82D5E4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_24A72029C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24A766C5C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24A72032C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
  sub_24A72931C();
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t FMIPItemActionStatus.description.getter()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

FMIPCore::FMIPItemActionStatus_optional __swiftcall FMIPItemActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 199)
  {
    if (rawValue == -1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (!rawValue)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 500)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 205)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 200)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_24A720508()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A836A98[v1]);
  return sub_24A82DD24();
}

uint64_t sub_24A720590(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A836A98[v2]);
  return sub_24A82DD24();
}

uint64_t sub_24A7205FC()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

uint64_t FMIPItemActionControllerError.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

unint64_t sub_24A72071C()
{
  result = qword_27EF5DE60;
  if (!qword_27EF5DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE60);
  }

  return result;
}

unint64_t sub_24A720774()
{
  result = qword_27EF5DE68;
  if (!qword_27EF5DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPItemActionControllerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPItemActionControllerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A720928(uint64_t a1, void (*a2)(char *, uint64_t, void *), uint64_t a3)
{
  v46 = a3;
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = sub_24A82C8B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_24A67E964(a1, v9, &unk_27EF5CCB8, &qword_24A82FDB0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24A67F378(v9, &unk_27EF5CCB8, &qword_24A82FDB0);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: Fetch unauthorized encrypted payload failed with error, no URL", v20, 2u);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    v49 = 0;
    v21 = v45;
    (*(v11 + 56))(v45, 1, 1, v10);
    sub_24A72A0CC();
    v22 = swift_allocError();
    *v23 = 10;
    a2(&v49, v21, v22);

    return sub_24A67F378(v21, &unk_27EF5CCB8, &qword_24A82FDB0);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A82CDC4();
    sub_24A6797D0(v25, qword_281518F88);
    v44 = *(v11 + 16);
    v44(v14, v16, v10);
    v26 = sub_24A82CD94();
    v27 = sub_24A82D504();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = v28;
      v42 = swift_slowAlloc();
      v47 = v42;
      *v28 = 136315138;
      v41 = v27;
      v29 = sub_24A82C804();
      v43 = a2;
      v31 = v30;
      v32 = *(v11 + 8);
      v32(v14, v10);
      v33 = sub_24A68761C(v29, v31, &v47);
      a2 = v43;

      v34 = v40;
      *(v40 + 1) = v33;
      v35 = v34;
      _os_log_impl(&dword_24A675000, v26, v41, "FMIPItemActionsController: Fetch unauthorized encrypted payload succeeded! URL: %s", v34, 0xCu);
      v36 = v42;
      sub_24A6876E8(v42);
      MEMORY[0x24C21E1D0](v36, -1, -1);
      MEMORY[0x24C21E1D0](v35, -1, -1);

      v37 = v32;
    }

    else
    {

      v37 = *(v11 + 8);
      v37(v14, v10);
    }

    v48 = 2;
    v38 = v45;
    v44(v45, v16, v10);
    (*(v11 + 56))(v38, 0, 1, v10);
    a2(&v48, v38, 0);
    sub_24A67F378(v38, &unk_27EF5CCB8, &qword_24A82FDB0);
    return (v37)(v16, v10);
  }
}

void sub_24A720E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FMIPPlayUTSoundAction(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem;
    v11 = *(v9 + OBJC_IVAR____TtC8FMIPCore21FMIPPlayUTSoundAction_context);
    v12 = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24A72F93C;
    *(v13 + 24) = v8;
    swift_retain_n();

    sub_24A722740(v12 + v10, v11, sub_24A72FAC8, v13);

LABEL_3:

    return;
  }

  type metadata accessor for FMIPIgnoreItemAction(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = *(a2 + 24);
    swift_retain_n();

    v17 = sub_24A82CA64();
    v18 = *(v15 + OBJC_IVAR____TtC8FMIPCore20FMIPIgnoreItemAction_until);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_24A72F93C;
    *(v19 + 24) = v8;
    v36[4] = sub_24A72F944;
    v36[5] = v19;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 1107296256;
    v36[2] = sub_24A7386AC;
    v36[3] = &unk_285DC5410;
    v20 = _Block_copy(v36);

    [v16 ignoreBeaconByUUID:v17 until:v18 completion:v20];
    _Block_release(v20);
  }

  else
  {
    type metadata accessor for FMIPStopUTSoundAction(0);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_24A72F93C;
      *(v24 + 24) = v8;
      swift_retain_n();

      sub_24A722AB8(v22 + v23, 0, 1, sub_24A72FAC8, v24);

      goto LABEL_3;
    }

    type metadata accessor for FMIPFetchEncryptedPayloadAction(0);
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      v29 = qword_281515DC8;
      swift_retain_n();
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_24A82CDC4();
      sub_24A6797D0(v30, qword_281518F88);
      v31 = sub_24A82CD94();
      v32 = sub_24A82D504();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_24A675000, v31, v32, "FMIPItemActionsController: cannot map action to request", v33, 2u);
        MEMORY[0x24C21E1D0](v33, -1, -1);
      }

      LOBYTE(v36[0]) = 0;
      sub_24A72A0CC();
      v34 = swift_allocError();
      *v35 = 6;
      sub_24A73F314(v36, v34, a3);

      goto LABEL_3;
    }

    v26 = v25;
    swift_retain_n();

    v28 = MEMORY[0x24C21D990](v27);

    sub_24A720E6C(v26, a2, a3, a4);
    if (!v4)
    {
      objc_autoreleasePoolPop(v28);

      goto LABEL_3;
    }

    objc_autoreleasePoolPop(v28);
    __break(1u);
  }
}

uint64_t sub_24A72135C(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), void **a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  type metadata accessor for FMIPPlaySoundItemAction(0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72A854(v13, a2, a3, a4, a5, a6);
LABEL_11:

    goto LABEL_12;
  }

  type metadata accessor for FMIPLostModeItemAction(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72AF28(v15, a2, a3, a4, a5, a6);
    goto LABEL_11;
  }

  type metadata accessor for FMIPRemoveItemAction(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72BD14(v17, a2, a3, a4, a5, a6);
    goto LABEL_11;
  }

  type metadata accessor for FMIPNotifyItemAction(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72D594(v19, a2, a3, a4, a5, a6);
    goto LABEL_11;
  }

  type metadata accessor for FMIPFirmwareUpdateAction(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A728ABC(v21, sub_24A72F608, v11);
    goto LABEL_11;
  }

  v23 = qword_281515DC8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518F88);
  v25 = sub_24A82CD94();
  v26 = sub_24A82D504();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPItemActionsController: cannot map action to request", v27, 2u);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  sub_24A72A0CC();
  v28 = swift_allocError();
  *v29 = 6;
  v30 = v28;
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();

  if (os_log_type_enabled(v31, v32))
  {
    v38 = v32;
    v33 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v33 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v34 = sub_24A82D624();
    v39 = v28;
    v36 = sub_24A68761C(v34, v35, &v40);

    *(v33 + 4) = v36;
    v28 = v39;
    *(v33 + 12) = 2048;
    *(v33 + 14) = -1;
    _os_log_impl(&dword_24A675000, v31, v38, "FMIPManager: performed item action with error?: %s status?: %ld", v33, 0x16u);
    sub_24A6876E8(v37);
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
  }

  LOBYTE(v40) = 0;
  a5(&v40, 0, v28);

LABEL_12:
}

uint64_t sub_24A721890(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  v11 = v7;
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24A8327A0;
  v9 = *(a4 + 24);
  *(v8 + 32) = *(a4 + 16);
  *(v8 + 40) = v9;

  a2(&v11, v8, a1);
}

void sub_24A72194C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    v7 = v4;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_281518F88);
    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: connect", v11, 2u);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    v12 = objc_opt_self();
    v13 = sub_24A82CA64();
    v14 = [v12 connectToBeaconUUID_];

    v15 = [*(v7 + 24) executeCommand_];
    v16 = *(v7 + 48);
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A72FA2C;
    *(v18 + 24) = v17;
    v37 = sub_24A680674;
    v38 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_24A6805E4;
    v36 = &unk_285DC4AB0;
    v19 = _Block_copy(&aBlock);

    v20 = v15;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = 1;
      *(v21 + 24) = v7;
      *(v21 + 32) = v20;
      *(v21 + 40) = a3;
      *(v21 + 48) = a4;
      v37 = sub_24A72955C;
      v38 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A720114;
      v36 = &unk_285DC4B00;
      v22 = _Block_copy(&aBlock);

      v23 = v20;
      sub_24A6A7314(a3, a4);

      v24 = [v23 addFailureBlock_];
      _Block_release(v22);

      v25 = swift_allocObject();
      *(v25 + 16) = 1;
      *(v25 + 24) = v7;
      *(v25 + 32) = v23;
      *(v25 + 40) = a3;
      *(v25 + 48) = a4;
      v37 = sub_24A7295C4;
      v38 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A72011C;
      v36 = &unk_285DC4B50;
      v26 = _Block_copy(&aBlock);

      v27 = v23;
      sub_24A6A7314(a3, a4);

      v28 = [v27 addSuccessBlock_];

      _Block_release(v26);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v29 = sub_24A82CDC4();
  sub_24A6797D0(v29, qword_281518F88);
  v30 = sub_24A82CD94();
  v31 = sub_24A82D504();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A675000, v30, v31, "FMIPItemActionsController: disconnect is not supported on this platform!", v32, 2u);
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  if (a3)
  {
    a3(0);
  }
}

uint64_t sub_24A721E50(void *a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v42 = a6;
  v45 = a5;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = a1;
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  v21 = os_log_type_enabled(v19, v20);
  v41 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v40 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v38 = a3;
    v25 = v24;
    v47 = v24;
    *v23 = 136315394;
    if (a2)
    {
      v26 = 0x7463656E6E6F63;
    }

    else
    {
      v26 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xEA00000000007463;
    }

    v28 = sub_24A68761C(v26, v27, &v47);
    v39 = v10;
    v29 = a4;
    v30 = v28;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    aBlock = 0;
    v49 = 0xE000000000000000;
    v46 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    v31 = sub_24A68761C(aBlock, v49, &v47);

    *(v23 + 14) = v31;
    a4 = v29;
    v10 = v39;
    _os_log_impl(&dword_24A675000, v19, v20, "FMIPItemActionsController: %s action failed %s", v23, 0x16u);
    swift_arrayDestroy();
    v32 = v25;
    a3 = v38;
    MEMORY[0x24C21E1D0](v32, -1, -1);
    v33 = v23;
    v11 = v40;
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  v52 = sub_24A72FA28;
  v53 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_24A699BA0;
  v51 = &unk_285DC4BF0;
  v35 = _Block_copy(&aBlock);

  v36 = a4;
  sub_24A82CE24();
  v47 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v13, v35);
  _Block_release(v35);
  (*(v11 + 8))(v13, v10);
  (*(v43 + 8))(v16, v44);

  if (v45)
  {
    return v45(v41);
  }

  return result;
}

uint64_t sub_24A722318(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v31 = a6;
  v35 = a5;
  v9 = sub_24A82CDF4();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = a4;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    if (a2)
    {
      v21 = 0x7463656E6E6F63;
    }

    else
    {
      v21 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xEA00000000007463;
    }

    v23 = sub_24A68761C(v21, v22, aBlock);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPItemActionsController: %s action succeeded", v18, 0xCu);
    sub_24A6876E8(v20);
    v24 = v20;
    a4 = v30;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  aBlock[4] = sub_24A72FA28;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC4BA0;
  v26 = _Block_copy(aBlock);

  v27 = a4;
  sub_24A82CE24();
  v36 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v11, v26);
  _Block_release(v26);
  (*(v34 + 8))(v11, v9);
  (*(v32 + 8))(v14, v33);

  if (v35)
  {
    return v35(0);
  }

  return result;
}

void sub_24A722740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = objc_opt_self();
  v9 = sub_24A82CA64();
  v10 = [v8 playSoundWithBeaconUUID:v9 withContext:a2];

  v11 = [*(v5 + 24) executeUTPlaySoundCommand_];
  v12 = *(v5 + 48);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24A729474;
  *(v14 + 24) = v13;
  v30 = sub_24A680674;
  v31 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_24A6805E4;
  v29 = &unk_285DC48F8;
  v15 = _Block_copy(&aBlock);

  v16 = v11;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = v5;
    v17[5] = v16;
    v30 = sub_24A729490;
    v31 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_24A720114;
    v29 = &unk_285DC4948;
    v18 = _Block_copy(&aBlock);

    v19 = v16;

    v20 = [v19 addFailureBlock_];
    _Block_release(v18);

    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = v5;
    v21[5] = v19;
    v30 = sub_24A7294E8;
    v31 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_24A72011C;
    v29 = &unk_285DC4998;
    v22 = _Block_copy(&aBlock);

    v23 = v19;

    v24 = [v23 addSuccessBlock_];
    _Block_release(v22);
  }
}

void sub_24A722AB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if ((a3 & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPItemActionsController: play sound", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v19 = objc_opt_self();
    v12 = sub_24A82CA64();
    v13 = [v19 playSoundWithBeaconUUID:v12 withContext:a2];
    goto LABEL_11;
  }

  if (qword_281515DC8 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = sub_24A82CD94();
    v9 = sub_24A82D504();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24A675000, v8, v9, "FMIPItemActionsController: stop sound", v10, 2u);
      MEMORY[0x24C21E1D0](v10, -1, -1);
    }

    v11 = objc_opt_self();
    v12 = sub_24A82CA64();
    v13 = [v11 stopSoundWithBeaconUUID_];
LABEL_11:
    v20 = v13;

    v21 = [*(v6 + 24) executeCommand_];
    v22 = *(v6 + 48);
    v23 = swift_allocObject();
    *(v23 + 16) = v6;
    *(v23 + 24) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_24A72FA2C;
    *(v24 + 24) = v23;
    v41 = sub_24A6806A0;
    v42 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_24A6805E4;
    v40 = &unk_285DC4740;
    v25 = _Block_copy(&aBlock);

    v26 = v21;

    dispatch_sync(v22, v25);
    _Block_release(v25);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = v6;
  v27[5] = v26;
  v41 = sub_24A7293C4;
  v42 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_24A720114;
  v40 = &unk_285DC4790;
  v28 = _Block_copy(&aBlock);

  v29 = v26;

  v30 = [v29 addFailureBlock_];
  _Block_release(v28);

  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v6;
  v31[5] = v29;
  v41 = sub_24A72941C;
  v42 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_24A72011C;
  v40 = &unk_285DC47E0;
  v32 = _Block_copy(&aBlock);

  v33 = v29;

  v34 = [v33 addSuccessBlock_];

  _Block_release(v32);
}

uint64_t sub_24A722FBC(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a8;
  v47 = a3;
  v42 = a6;
  v43 = a7;
  v45 = a2;
  v12 = sub_24A82CDF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A82CE54();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v44 = a9;
  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = a1;
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();

  v41 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v13;
    v24 = v23;
    v38 = v23;
    v39 = swift_slowAlloc();
    v51 = v39;
    aBlock = 0;
    *v24 = 136315138;
    v53 = 0xE000000000000000;
    v50 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    v25 = a1;
    v26 = a4;
    v27 = sub_24A68761C(aBlock, v53, &v51);

    v28 = v38;
    *(v38 + 4) = v27;
    a4 = v26;
    a1 = v25;
    v29 = v21;
    v30 = v21;
    v31 = v28;
    _os_log_impl(&dword_24A675000, v29, v41, v42, v28, 0xCu);
    v32 = v39;
    sub_24A6876E8(v39);
    MEMORY[0x24C21E1D0](v32, -1, -1);
    v13 = v40;
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  else
  {
  }

  v45(a1);
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = a5;
  v56 = v46;
  v57 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_24A699BA0;
  v55 = v44;
  v34 = _Block_copy(&aBlock);

  v35 = a5;
  sub_24A82CE24();
  v51 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v18, v15, v34);
  _Block_release(v34);
  (*(v13 + 8))(v15, v12);
  (*(v48 + 8))(v18, v49);
}

uint64_t sub_24A72343C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v34 = a8;
  v31 = a6;
  v12 = sub_24A82CDF4();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24A82CE54();
  v15 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v32 = a9;
  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = v17;
    v22 = a2;
    v23 = a5;
    v24 = v21;
    *v21 = 0;
    _os_log_impl(&dword_24A675000, v19, v20, v31, v21, 2u);
    v25 = v24;
    a5 = v23;
    a2 = v22;
    v17 = v30;
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  a2(0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  aBlock[4] = v34;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v32;
  v27 = _Block_copy(aBlock);

  v28 = a5;
  sub_24A82CE24();
  v37 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v17, v14, v27);
  _Block_release(v27);
  (*(v36 + 8))(v14, v12);
  (*(v15 + 8))(v17, v35);
}

void sub_24A723804(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);

  v5 = sub_24A720190(a2, v4);
  LOBYTE(a2) = v6;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v7 = sub_24A72029C(v5);
    swift_endAccess();
  }
}

uint64_t sub_24A7238A8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v21 = 4;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v7 = *(type metadata accessor for FMIPItem(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v9 + v8, type metadata accessor for FMIPItem);
    v10 = &v21;
    v11 = v9;
    v12 = a1;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A82CDC4();
    sub_24A6797D0(v13, qword_281518F88);
    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v14, v15, "FMIPItemActionsController: play sound performed", v16, 2u);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v22 = 2;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v17 = *(type metadata accessor for FMIPItem(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v19 + v18, type metadata accessor for FMIPItem);
    v10 = &v22;
    v11 = v19;
    v12 = 0;
  }

  a2(v10, v11, v12);
}

uint64_t sub_24A723B54(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x24C21CB10]();
  if (*((*(a1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A82D274();
  }

  sub_24A82D2C4();
  return swift_endAccess();
}

uint64_t sub_24A723BFC(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v49 = a4;
  v50 = a3;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = a1;
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v21;
    v45 = swift_slowAlloc();
    v58[0] = v45;
    *v21 = 136315138;
    aBlock = 0;
    v53 = 0xE000000000000000;
    v51 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    LOBYTE(v21) = v20;
    v22 = a2;
    v23 = a5;
    v24 = v13;
    v25 = a6;
    v26 = v10;
    v27 = v11;
    v28 = sub_24A68761C(aBlock, v53, v58);

    v29 = v44;
    *(v44 + 1) = v28;
    v11 = v27;
    v10 = v26;
    a6 = v25;
    v13 = v24;
    a5 = v23;
    a2 = v22;
    v30 = v29;
    _os_log_impl(&dword_24A675000, v19, v21, "FMIPItemActionsController: lost mode action failed %s", v29, 0xCu);
    v31 = v45;
    sub_24A6876E8(v45);
    MEMORY[0x24C21E1D0](v31, -1, -1);
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  LOBYTE(aBlock) = 4;
  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v32 = *(type metadata accessor for FMIPItem(0) - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(v49 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v34 + v33, type metadata accessor for FMIPItem);
  sub_24A72A0CC();
  v35 = swift_allocError();
  *v36 = 4;
  a2(&aBlock, v34, v35);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = *(result + 48);

    v39 = swift_allocObject();
    *(v39 + 16) = a5;
    *(v39 + 24) = a6;
    v56 = sub_24A72FA30;
    v57 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_24A699BA0;
    v55 = &unk_285DC4F88;
    v40 = _Block_copy(&aBlock);

    v41 = a6;
    v42 = v46;
    sub_24A82CE24();
    v51 = MEMORY[0x277D84F90];
    sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v42, v13, v40);
    _Block_release(v40);

    (*(v11 + 8))(v13, v10);
    (*(v48 + 8))(v42, v47);
  }

  return result;
}

uint64_t sub_24A7241AC(uint64_t a1, void (*a2)(void *, void, void), uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_24A82CDF4();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPItemActionsController: lost mode action succeeded", v17, 2u);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  LOBYTE(aBlock[0]) = 2;
  a2(aBlock, 0, 0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 48);

    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    aBlock[4] = sub_24A72F6A4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC4F38;
    v21 = _Block_copy(aBlock);

    v22 = a5;
    sub_24A82CE24();
    v27 = MEMORY[0x277D84F90];
    sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v10, v21);
    _Block_release(v21);

    (*(v26 + 8))(v10, v8);
    (*(v24 + 8))(v13, v25);
  }

  return result;
}

void sub_24A724580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v4 + 56);

    v6 = sub_24A720190(a2, v5);
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        v9 = sub_24A72029C(v6);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_24A72467C(void *a1, uint64_t (*a2)(void **, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = a1;
    v38 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v38);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: remove action completed successfuly %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (!a1)
  {
    LOBYTE(v38) = 2;
    return a2(&v38, 0, 0);
  }

  v38 = a1;
  v17 = a1;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for CommandError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = v37;
  sub_24A72F4B0(MEMORY[0x277D84F90]);
  sub_24A6956B0(&unk_27EF5D150, type metadata accessor for CommandError, &unk_24A83174C);
  sub_24A82C7D4();
  v18 = sub_24A82C794();

  if ((v18 & 1) == 0)
  {

LABEL_11:
    swift_getErrorValue();
    v25 = a1;
    if (sub_24A774234(v35, v36) == 14)
    {
      LOBYTE(v38) = 4;
      sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
      v26 = *(type metadata accessor for FMIPItem(0) - 8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24A8327A0;
      sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v28 + v27, type metadata accessor for FMIPItem);
      sub_24A72A0CC();
      v29 = swift_allocError();
      *v30 = 9;
      a2(&v38, v28, v29);
    }

    else
    {
    }

    LOBYTE(v38) = 4;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v31 = *(type metadata accessor for FMIPItem(0) - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v33 + v32, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v22 = swift_allocError();
    *v34 = 2;
    a2(&v38, v33, v22);
    goto LABEL_15;
  }

  LOBYTE(v38) = 4;
  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v19 = *(type metadata accessor for FMIPItem(0) - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v21 + v20, type metadata accessor for FMIPItem);
  sub_24A72A0CC();
  v22 = swift_allocError();
  *v23 = 3;
  a2(&v38, v21, v22);

LABEL_15:
}

void sub_24A724C80(void *a1, void (*a2)(void *, void, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = *(a4 + 24);
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a5;
    v15[4] = sub_24A72F760;
    v15[5] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_24A7386AC;
    v15[3] = &unk_285DC50A0;
    v11 = _Block_copy(v15);
    v12 = a1;

    [v9 removeBeacon:v12 completion:v11];
    _Block_release(v11);
  }

  else
  {
    LOBYTE(v15[0]) = 4;
    sub_24A72A0CC();
    v13 = swift_allocError();
    *v14 = 7;
    a2(v15, 0, v13);
  }
}

uint64_t sub_24A724DE4(void *a1, uint64_t (*a2)(void **, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = a1;
    v38 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v38);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: remove item group action completed successfuly %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (!a1)
  {
    LOBYTE(v38) = 2;
    return a2(&v38, 0, 0);
  }

  v38 = a1;
  v17 = a1;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for CommandError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = v37;
  sub_24A72F4B0(MEMORY[0x277D84F90]);
  sub_24A6956B0(&unk_27EF5D150, type metadata accessor for CommandError, &unk_24A83174C);
  sub_24A82C7D4();
  v18 = sub_24A82C794();

  if ((v18 & 1) == 0)
  {

LABEL_11:
    swift_getErrorValue();
    v25 = a1;
    if (sub_24A774234(v35, v36) == 14)
    {
      LOBYTE(v38) = 4;
      sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
      v26 = *(type metadata accessor for FMIPItemGroup(0) - 8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24A8327A0;
      sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, v28 + v27, type metadata accessor for FMIPItemGroup);
      sub_24A72A0CC();
      v29 = swift_allocError();
      *v30 = 9;
      a2(&v38, v28, v29);
    }

    else
    {
    }

    LOBYTE(v38) = 4;
    sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
    v31 = *(type metadata accessor for FMIPItemGroup(0) - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, v33 + v32, type metadata accessor for FMIPItemGroup);
    sub_24A72A0CC();
    v22 = swift_allocError();
    *v34 = 2;
    a2(&v38, v33, v22);
    goto LABEL_15;
  }

  LOBYTE(v38) = 4;
  sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
  v19 = *(type metadata accessor for FMIPItemGroup(0) - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, v21 + v20, type metadata accessor for FMIPItemGroup);
  sub_24A72A0CC();
  v22 = swift_allocError();
  *v23 = 3;
  a2(&v38, v21, v22);

LABEL_15:
}

uint64_t sub_24A7253E8(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, const char *a5)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a1;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v16 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v17 = sub_24A82D024();
    v19 = sub_24A68761C(v17, v18, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24A675000, v11, v12, a5, v14, 0xCu);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    v20 = v14;
    a2 = v13;
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  if (a1)
  {
    LOBYTE(v30) = 4;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v21 = *(type metadata accessor for FMIPItem(0) - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v23 + v22, type metadata accessor for FMIPItem);
    v24 = v23;
    v25 = a1;
  }

  else
  {
    LOBYTE(v30) = 2;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v26 = *(type metadata accessor for FMIPItem(0) - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v28 + v27, type metadata accessor for FMIPItem);
    v24 = v28;
    v25 = 0;
  }

  a2(&v30, v24, v25);
}

uint64_t sub_24A725744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v5 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - v6;
  v78 = type metadata accessor for FMIPDevice(0);
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPItem(0);
  v70 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  if (qword_281515DC8 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v74 = v10;
    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    v20 = os_log_type_enabled(v18, v19);
    v72 = v8;
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: performing add safe location to all supported beacons action", v21, 2u);
      v22 = v21;
      v8 = v72;
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v68 = v4;
    v23 = *(v4 + 32);
    swift_beginAccess();
    v24 = *(v23 + 280);
    v25 = *(v24 + 16);
    v71 = v7;
    if (v25)
    {
      v81 = v23;
      v26 = v24 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v27 = *(v70 + 72);
      v79 = v24;

      v80 = MEMORY[0x277D84F90];
      do
      {
        sub_24A69F0CC(v26, v16, type metadata accessor for FMIPItem);
        if ((v16[304] & 0x10) != 0)
        {
          v28 = *(v16 + 44);
          v29 = *(v16 + 45);

          sub_24A69F264(v16, type metadata accessor for FMIPItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_24A780414(0, *(v80 + 2) + 1, 1, v80);
          }

          v31 = *(v80 + 2);
          v30 = *(v80 + 3);
          if (v31 >= v30 >> 1)
          {
            v80 = sub_24A780414((v30 > 1), v31 + 1, 1, v80);
          }

          v32 = v80;
          *(v80 + 2) = v31 + 1;
          v33 = &v32[16 * v31];
          *(v33 + 4) = v28;
          *(v33 + 5) = v29;
        }

        else
        {
          sub_24A69F264(v16, type metadata accessor for FMIPItem);
        }

        v26 += v27;
        --v25;
      }

      while (v25);

      v7 = v71;
      v8 = v72;
      v23 = v81;
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v10 = *(v23 + 80);
    v34 = *(v10 + 2);
    v35 = MEMORY[0x277D84F90];
    v4 = v74;
    if (!v34)
    {
      break;
    }

    v79 = &v10[(*(v8 + 80) + 32) & ~*(v8 + 80)];

    v36 = 0;
    v69 = xmmword_24A8327A0;
    v75 = v34;
    v76 = v10;
    while (v36 < *(v10 + 2))
    {
      v37 = *(v8 + 72);
      v81 = v36;
      sub_24A69F0CC(&v79[v37 * v36], v4, type metadata accessor for FMIPDevice);
      if ((*(v4 + 242) & 4) != 0)
      {
        sub_24A67E964(v4 + *(v78 + 128), v7, &unk_27EF5E0B0, &qword_24A8338B0);
        v38 = type metadata accessor for FMIPItemGroup(0);
        if ((*(*(v38 - 8) + 48))(v7, 1, v38) != 1)
        {
          v77 = v35;
          v41 = *(v7 + 40);

          sub_24A69F264(v7, type metadata accessor for FMIPItemGroup);
          v42 = *(v41 + 16);
          if (v42)
          {
            v83[0] = MEMORY[0x277D84F90];
            sub_24A6FC900(0, v42, 0);
            v40 = v83[0];
            v43 = *(v70 + 80);
            v73 = v41;
            v44 = v41 + ((v43 + 32) & ~v43);
            v45 = *(v70 + 72);
            do
            {
              sub_24A69F0CC(v44, v14, type metadata accessor for FMIPItem);
              v47 = *(v14 + 44);
              v46 = *(v14 + 45);

              sub_24A69F264(v14, type metadata accessor for FMIPItem);
              v83[0] = v40;
              v49 = v40[2];
              v48 = v40[3];
              if (v49 >= v48 >> 1)
              {
                sub_24A6FC900((v48 > 1), v49 + 1, 1);
                v40 = v83[0];
              }

              v40[2] = v49 + 1;
              v50 = &v40[2 * v49];
              v50[4] = v47;
              v50[5] = v46;
              v44 += v45;
              --v42;
            }

            while (v42);
            v4 = v74;
            sub_24A69F264(v74, type metadata accessor for FMIPDevice);

            v7 = v71;
            v8 = v72;
          }

          else
          {

            v4 = v74;
            sub_24A69F264(v74, type metadata accessor for FMIPDevice);
            v40 = MEMORY[0x277D84F90];
          }

          v35 = v77;
          goto LABEL_33;
        }

        sub_24A67F378(v7, &unk_27EF5E0B0, &qword_24A8338B0);
        v16 = *(v4 + 24);
        if (v16)
        {
          v39 = *(v4 + 16);
          sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
          v40 = swift_allocObject();
          *(v40 + 1) = v69;
          v40[4] = v39;
          v40[5] = v16;

          sub_24A69F264(v4, type metadata accessor for FMIPDevice);
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_24A780520(0, v35[2] + 1, 1, v35);
          }

          v52 = v35[2];
          v51 = v35[3];
          v16 = (v52 + 1);
          if (v52 >= v51 >> 1)
          {
            v35 = sub_24A780520((v51 > 1), v52 + 1, 1, v35);
          }

          v35[2] = v16;
          v35[v52 + 4] = v40;
          v34 = v75;
          v10 = v76;
          goto LABEL_19;
        }
      }

      sub_24A69F264(v4, type metadata accessor for FMIPDevice);
LABEL_19:
      v36 = v81 + 1;
      if (v81 + 1 == v34)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_39:
  v53 = v35[2];
  if (v53)
  {
    v7 = 0;
    v10 = v35;
    v54 = v35 + 4;
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v7 >= *(v10 + 2))
      {
        goto LABEL_60;
      }

      v4 = v54[v7];
      v16 = *(v4 + 16);
      v8 = *(v14 + 2);
      v55 = &v16[v8];
      if (__OFADD__(v8, v16))
      {
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v55 <= *(v14 + 3) >> 1)
      {
        if (!*(v4 + 16))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v8 <= v55)
        {
          v57 = &v16[v8];
        }

        else
        {
          v57 = v8;
        }

        v14 = sub_24A780414(isUniquelyReferenced_nonNull_native, v57, 1, v14);
        if (!*(v4 + 16))
        {
LABEL_41:

          if (v16)
          {
            goto LABEL_62;
          }

          goto LABEL_42;
        }
      }

      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
      {
        goto LABEL_63;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v58 = *(v14 + 2);
        v59 = __OFADD__(v58, v16);
        v60 = &v16[v58];
        if (v59)
        {
          goto LABEL_64;
        }

        *(v14 + 2) = v60;
      }

LABEL_42:
      if (v53 == ++v7)
      {
        goto LABEL_58;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_58:

  v83[0] = v80;
  sub_24A77EA14(v14);
  v61 = v83[0];
  v62 = v65;
  memcpy(v82, (v65 + 16), sizeof(v82));
  type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
  v63 = swift_allocObject();
  memcpy((v63 + 16), (v62 + 16), 0x160uLL);
  *(v63 + 376) = 0;
  *(v63 + 384) = v61;
  *(v63 + 368) = 0;
  sub_24A6CC988(v82, v83);
  sub_24A72626C(v63, v66, v67);
  swift_setDeallocating();
  memcpy(v83, (v63 + 16), sizeof(v83));

  sub_24A6CC294(v83);

  return swift_deallocClassInstance();
}

uint64_t sub_24A726084(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPItemActionsController: performing add safe location action", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A8327A0;
  v11 = a1[47];
  *(v10 + 32) = a1[46];
  *(v10 + 40) = v11;
  memcpy(v14, a1 + 2, sizeof(v14));
  type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1 + 2, 0x160uLL);
  *(v12 + 376) = 0;
  *(v12 + 384) = v10;
  *(v12 + 368) = 0;

  sub_24A6CC988(v14, __dst);
  sub_24A72626C(v12, a2, a3);
  swift_setDeallocating();
  memcpy(__dst, (v12 + 16), sizeof(__dst));

  sub_24A6CC294(__dst);

  return swift_deallocClassInstance();
}

void sub_24A72626C(void (*a1)(char *, char *, uint8_t *), uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_24A82CAA4();
  v40 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    v13 = os_log_type_enabled(v11, v12);
    v42 = v7;
    if (v13)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPItemActionsController: performing add safe location action", v7, 2u);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    v35 = a1;
    v14 = *(a1 + 48);
    v41 = *(v14 + 16);
    if (!v41)
    {
      break;
    }

    v15 = 0;
    v16 = (v40 + 48);
    v17 = (v40 + 32);
    v18 = v14 + 40;
    v19 = MEMORY[0x277D84F90];
    v39 = v9;
    while (v15 < *(v14 + 16))
    {
      a1 = *(v18 - 8);

      sub_24A82CA44();
      v7 = v42;

      if ((*v16)(v6, 1, v7) == 1)
      {
        sub_24A67F378(v6, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        a1 = *v17;
        (*v17)(v9, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24A78029C(0, v19[2] + 1, 1, v19);
        }

        v21 = v19[2];
        v20 = v19[3];
        v7 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_24A78029C((v20 > 1), v21 + 1, 1, v19);
        }

        v19[2] = v7;
        v22 = v19 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v21;
        v9 = v39;
        a1(v22, v39, v42);
      }

      ++v15;
      v18 += 16;
      if (v41 == v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v19 = MEMORY[0x277D84F90];
LABEL_16:
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = *(v35 + 5);
  if (*(v35 + 45))
  {
    v25 = v24;
    v26 = sub_24A82CF94();
  }

  else
  {
    v27 = v24;
    v26 = 0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D496B0]) initWithType:0 name:v26 location:v24 approvalState:1];

  v29 = v38;
  v30 = *(v38 + 24);
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = v23;
  v32 = v37;
  v31[4] = v36;
  v31[5] = v32;
  v31[6] = v29;
  v31[7] = v19;
  aBlock[4] = sub_24A7293A8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A7FD664;
  aBlock[3] = &unk_285DC4678;
  v33 = _Block_copy(aBlock);
  v34 = v28;

  [v30 addSafeLocation:v34 completion:v33];
  _Block_release(v33);
}

void sub_24A726720(int a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v88 = a6;
  v87 = a4;
  v89 = a2;
  LODWORD(v90) = a1;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v79 - v12;
  v13 = sub_24A82CAA4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - v17;
  v19 = swift_allocBox();
  v21 = v20;
  v22 = [a3 identifier];
  sub_24A82CA84();

  v23 = *(v14 + 32);
  v91 = v21;
  v82 = v14 + 32;
  v81 = v23;
  v23(v21, v18, v13);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518F88);

  v25 = sub_24A82CD94();
  v26 = sub_24A82D504();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v80 = v19;
    v28 = v27;
    v29 = swift_slowAlloc();
    v85 = a8;
    v30 = v29;
    v100 = v29;
    *v28 = 136315394;
    aBlock = 0;
    v95 = 0xE000000000000000;
    if (v90)
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    v79 = a5;
    if (v90)
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    MEMORY[0x24C21C9E0](v31, v32);

    v33 = sub_24A68761C(aBlock, v95, &v100);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v91;
    swift_beginAccess();
    (*(v14 + 16))(v18, v34, v13);
    sub_24A6956B0(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = sub_24A82DB84();
    v37 = v36;
    (*(v14 + 8))(v18, v13);
    v38 = sub_24A68761C(v35, v37, &v100);
    a5 = v79;

    *(v28 + 14) = v38;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPItemActionsController: Add safe location completed with success? %s, identifier: %s", v28, 0x16u);
    swift_arrayDestroy();
    v39 = v30;
    a8 = v85;
    MEMORY[0x24C21E1D0](v39, -1, -1);
    v40 = v28;
    v19 = v80;
    MEMORY[0x24C21E1D0](v40, -1, -1);
  }

  v41 = v89;
  if (v89)
  {
    swift_getErrorValue();
    if (sub_24A774234(v92, v93) == 8)
    {
      v42 = v41;
      v43 = sub_24A82CD94();
      v44 = sub_24A82D504();

      v45 = os_log_type_enabled(v43, v44);
      v85 = a8;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        aBlock = v90;
        *v46 = 136315138;
        v100 = v41;
        v47 = v41;
        sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
        v48 = sub_24A82D024();
        v50 = sub_24A68761C(v48, v49, &aBlock);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_24A675000, v43, v44, "FMIPItemActionsController: Safe Location already exists. Assigning it. %s", v46, 0xCu);
        v51 = v90;
        sub_24A6876E8(v90);
        MEMORY[0x24C21E1D0](v51, -1, -1);
        MEMORY[0x24C21E1D0](v46, -1, -1);
      }

      v52 = sub_24A82C7E4();
      v53 = [v52 userInfo];
      v54 = sub_24A82CEF4();

      if (*(v54 + 16) && (v55 = sub_24A6A2D48(0xD000000000000020, 0x800000024A846960), (v56 & 1) != 0))
      {
        sub_24A67E168(*(v54 + 56) + 32 * v55, &aBlock);

        v57 = v84;
        v58 = swift_dynamicCast();
        (*(v14 + 56))(v57, v58 ^ 1u, 1, v13);
        if ((*(v14 + 48))(v57, 1, v13) != 1)
        {
          v59 = v83;
          v81(v83, v57, v13);
          v60 = v91;
          swift_beginAccess();
          (*(v14 + 24))(v60, v59, v13);
          (*(v14 + 8))(v59, v13);
          v61 = v87;
          swift_beginAccess();
          *(v61 + 16) = 1;
LABEL_25:
          v71 = *(v86 + 24);
          v72 = v91;
          swift_beginAccess();
          (*(v14 + 16))(v18, v72, v13);
          v73 = sub_24A82CA64();
          (*(v14 + 8))(v18, v13);
          v74 = sub_24A82D224();
          v75 = swift_allocObject();
          v76 = v88;
          v75[2] = a5;
          v75[3] = v76;
          v77 = v87;
          v75[4] = v19;
          v75[5] = v77;
          v98 = sub_24A7293B8;
          v99 = v75;
          aBlock = MEMORY[0x277D85DD0];
          v95 = 1107296256;
          v96 = sub_24A7FD664;
          v97 = &unk_285DC46C8;
          v78 = _Block_copy(&aBlock);

          [v71 assignSafeLocation:v73 beaconUUIDs:v74 completion:v78];
          _Block_release(v78);

          return;
        }
      }

      else
      {

        v57 = v84;
        (*(v14 + 56))(v84, 1, 1, v13);
      }

      sub_24A67F378(v57, &qword_27EF5D020, &qword_24A830E40);
      goto LABEL_25;
    }
  }

  if (v90)
  {
    goto LABEL_25;
  }

  v62 = v41;
  v63 = sub_24A82CD94();
  v64 = sub_24A82D504();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136315138;
    v100 = v41;
    v67 = v41;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v68 = sub_24A82D024();
    v70 = sub_24A68761C(v68, v69, &aBlock);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_24A675000, v63, v64, "FMIPItemActionsController: Add safe location error %s", v65, 0xCu);
    sub_24A6876E8(v66);
    MEMORY[0x24C21E1D0](v66, -1, -1);
    MEMORY[0x24C21E1D0](v65, -1, -1);
  }

  LOBYTE(aBlock) = 4;
  a5(&aBlock, 0, 0, v41, 2);
}

uint64_t sub_24A72717C(uint64_t a1, void *a2, void (*a3)(void, void, void, void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  v14 = a2;
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v17;
    v43 = swift_slowAlloc();
    v46[0] = v43;
    *v17 = 136315138;
    v45 = a2;
    v18 = a2;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v19 = sub_24A82D024();
    v41 = v16;
    v21 = a3;
    v22 = sub_24A68761C(v19, v20, v46);

    v23 = v42;
    *(v42 + 1) = v22;
    a3 = v21;
    _os_log_impl(&dword_24A675000, v15, v41, "FMIPItemActionsController: Assign safe location completed with error? %s", v23, 0xCu);
    v24 = v43;
    sub_24A6876E8(v43);
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v25 = (v10 + 16);
  v26 = (v10 + 8);
  if (a2)
  {
    v47 = 4;
    swift_beginAccess();
    v27 = v44;
    (*v25)(v44, v12, v9);
    v28 = sub_24A82CA54();
    v30 = v29;
    (*v26)(v27, v9);
    swift_beginAccess();
    v31 = *(a6 + 16);
    v32 = v28;
    v33 = v30;
    v34 = a2;
  }

  else
  {
    v47 = 2;
    swift_beginAccess();
    v35 = v44;
    (*v25)(v44, v12, v9);
    v36 = sub_24A82CA54();
    v38 = v37;
    (*v26)(v35, v9);
    swift_beginAccess();
    v31 = *(a6 + 16);
    v32 = v36;
    v33 = v38;
    v34 = 0;
  }

  a3(&v47, v32, v33, v34, v31);
}

uint64_t sub_24A72751C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPItemActionsController: performing remove safe location action", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A8327A0;
  v11 = a1[47];
  *(v10 + 32) = a1[46];
  *(v10 + 40) = v11;
  memcpy(__dst, a1 + 2, sizeof(__dst));
  type metadata accessor for FMIPRemoveMultipleSafeLocationItemsAction();
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1 + 2, 0x160uLL);
  *(v12 + 368) = v10;

  sub_24A6CC988(__dst, &v14);
  sub_24A7276C0(v12, a2, a3);
}

void sub_24A7276C0(void (*a1)(char *, char *, uint8_t *), uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v28 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_24A82CAA4();
  v33 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    v13 = os_log_type_enabled(v11, v12);
    v35 = v7;
    if (v13)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPItemActionsController: performing remove safe location action", v7, 2u);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    v29 = a1;
    v14 = *(a1 + 46);
    v34 = *(v14 + 16);
    if (!v34)
    {
      break;
    }

    v15 = 0;
    v16 = (v33 + 48);
    v17 = (v33 + 32);
    v18 = v14 + 40;
    v19 = MEMORY[0x277D84F90];
    v32 = v9;
    while (v15 < *(v14 + 16))
    {
      a1 = *(v18 - 8);

      sub_24A82CA44();
      v7 = v35;

      if ((*v16)(v6, 1, v7) == 1)
      {
        sub_24A67F378(v6, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        a1 = *v17;
        (*v17)(v9, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24A78029C(0, v19[2] + 1, 1, v19);
        }

        v21 = v19[2];
        v20 = v19[3];
        v7 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_24A78029C((v20 > 1), v21 + 1, 1, v19);
        }

        v19[2] = v7;
        v22 = v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21;
        v9 = v32;
        a1(v22, v32, v35);
      }

      ++v15;
      v18 += 16;
      if (v34 == v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v19 = MEMORY[0x277D84F90];
LABEL_16:
  v23 = v30;
  v24 = *(v30 + 24);
  v25 = swift_allocObject();
  v26 = v28;
  v25[2] = v29;
  v25[3] = v23;
  v25[4] = v19;
  v25[5] = v26;
  v25[6] = v31;
  aBlock[4] = sub_24A729304;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A72032C;
  aBlock[3] = &unk_285DC45B0;
  v27 = _Block_copy(aBlock);

  [v24 safeLocationsForSeparationMonitoring_];
  _Block_release(v27);
}

uint64_t sub_24A727ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a4;
  v77 = a3;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v85 = v10;
  v86 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v75 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = v71 - v14;
  if (qword_281515DC8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v15 = sub_24A82CDC4();
  v16 = sub_24A6797D0(v15, qword_281518F88);

  v79 = v16;
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
    sub_24A72931C();
    v21 = a1;
    v22 = sub_24A82D3D4();
    v24 = sub_24A68761C(v22, v23, aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPItemActionsController: Owner session safe locations %s", v19, 0xCu);
    sub_24A6876E8(v20);
    MEMORY[0x24C21E1D0](v20, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  else
  {
    v21 = a1;
  }

  v25 = sub_24A82CD94();
  v26 = sub_24A82D504();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    v29 = sub_24A82D064();
    v31 = sub_24A68761C(v29, v30, aBlock);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPItemActionsController: action location identifier %s", v27, 0xCu);
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v28, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  v32 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
    sub_24A72931C();
    sub_24A82D414();
    v32 = v89[4];
    a1 = v89[5];
    v35 = v89[6];
    v34 = v89[7];
    v36 = v89[8];
  }

  else
  {
    v37 = -1 << *(v21 + 32);
    a1 = v21 + 56;
    v35 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v36 = v39 & *(v21 + 56);

    v34 = 0;
  }

  v71[1] = v35;
  v40 = (v35 + 64) >> 6;
  v84 = (v86 + 8);
  v74 = v89;
  *&v33 = 136315138;
  v72 = v33;
  v76 = a2;
  v80 = v40;
  v73 = a5;
  v83 = v32;
  v81 = a1;
  while ((v32 & 0x8000000000000000) == 0)
  {
    v49 = v34;
    v50 = v36;
    v51 = v34;
    if (!v36)
    {
      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v51 >= v40)
        {
          return sub_24A6BAFBC(v32);
        }

        v50 = *(a1 + 8 * v51);
        ++v49;
        if (v50)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_21:
    v52 = (v50 - 1) & v50;
    v48 = *(*(v32 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
    if (!v48)
    {
      return sub_24A6BAFBC(v32);
    }

LABEL_25:
    v86 = v52;
    v54 = [v48 identifier];
    v55 = v82;
    sub_24A82CA84();

    v56 = sub_24A82CA54();
    v58 = v57;
    v59 = *v84;
    (*v84)(v55, v85);
    if (v56 == *(a2 + 16) && v58 == *(a2 + 24))
    {
    }

    else
    {
      v60 = sub_24A82DC04();

      if ((v60 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v61 = sub_24A82CD94();
    v62 = sub_24A82D504();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = a6;
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v63 = v72;
      v66 = sub_24A82D064();
      v68 = sub_24A68761C(v66, v67, aBlock);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_24A675000, v61, v62, "FMIPItemActionsController: REMOVE SAFE LOCATION %s", v63, 0xCu);
      sub_24A6876E8(v65);
      v69 = v65;
      a6 = v64;
      a5 = v73;
      MEMORY[0x24C21E1D0](v69, -1, -1);
      MEMORY[0x24C21E1D0](v63, -1, -1);
    }

    v41 = *(v77 + 24);
    v42 = [v48 identifier];
    v43 = v75;
    sub_24A82CA84();

    v44 = sub_24A82CA64();
    v59(v43, v85);
    v45 = sub_24A82D224();
    v46 = swift_allocObject();
    *(v46 + 16) = a5;
    *(v46 + 24) = a6;
    v89[2] = sub_24A729384;
    v89[3] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v89[0] = sub_24A7FD664;
    v89[1] = &unk_285DC4600;
    v47 = _Block_copy(aBlock);

    [v41 unassignSafeLocation:v44 beaconUUIDs:v45 completion:v47];
    _Block_release(v47);

    v48 = v45;
    a2 = v76;
LABEL_15:

    v34 = v51;
    v36 = v86;
    v32 = v83;
    v40 = v80;
    a1 = v81;
  }

  v53 = sub_24A82D784();
  if (v53)
  {
    v87 = v53;
    sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
    swift_dynamicCast();
    v48 = aBlock[0];
    v51 = v34;
    v52 = v36;
    if (aBlock[0])
    {
      goto LABEL_25;
    }
  }

  return sub_24A6BAFBC(v32);
}

uint64_t sub_24A7282DC(uint64_t a1, void *a2, uint64_t (*a3)(void **, void, void, void *, uint64_t), uint64_t a4, const char *a5)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = a2;
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = a2;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D024();
    v17 = sub_24A68761C(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_24A675000, v10, v11, a5, v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  if (a2)
  {
    LOBYTE(v20) = 4;
    v18 = a2;
  }

  else
  {
    LOBYTE(v20) = 2;
    v18 = 0;
  }

  return a3(&v20, 0, 0, v18, 2);
}

void sub_24A7284B0(uint64_t a1, uint64_t a2, void (*a3)(void *, void, void, void, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  v23[2] = a2;
  sub_24A79EE60(sub_24A72F904, v23, a1);
  if (v10 && (v11 = v10, v12 = [v10 mutableSafeLocation], v11, v12))
  {
    v13 = a5[5];
    v14 = v12;
    [v14 setLocation_];
    if (a5[45])
    {
      v15 = sub_24A82CF94();
    }

    else
    {
      v15 = 0;
    }

    [v14 setName_];

    v20 = *(a6 + 24);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;
    aBlock[4] = sub_24A72F924;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7FD664;
    aBlock[3] = &unk_285DC52F8;
    v22 = _Block_copy(aBlock);

    [v20 updateSafeLocation:v14 completion:v22];
    _Block_release(v22);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A82CDC4();
    sub_24A6797D0(v16, qword_281518F88);
    v17 = sub_24A82CD94();
    v18 = sub_24A82D504();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24A675000, v17, v18, "FMIPItemActionsController: update safe location completed with error: unable to fetch existing safe location", v19, 2u);
      MEMORY[0x24C21E1D0](v19, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    a3(aBlock, 0, 0, 0, 2);
  }
}

uint64_t sub_24A728730(id *a1, uint64_t a2)
{
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_24A82CA84();

  v8 = sub_24A82CA74();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_24A72883C(char a1, void *a2, uint64_t (*a3)(void **, void, void, void *, uint64_t))
{
  if (a1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A82CDC4();
    sub_24A6797D0(v4, qword_281518F88);
    v5 = sub_24A82CD94();
    v6 = sub_24A82D504();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A675000, v5, v6, "FMIPItemActionsController: update safe location completed successfully", v7, 2u);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    LOBYTE(v21) = 2;
    v8 = 0;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = a2;
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v17 = sub_24A82D024();
      v19 = sub_24A68761C(v17, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPItemActionsController: update safe location completed with error? %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    LOBYTE(v21) = 4;
    v8 = a2;
  }

  return a3(&v21, 0, 0, v8, 2);
}

void sub_24A728ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_24A82CAA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA44();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D4E4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMItemDetailContentViewController: No UUID specified for firmware update", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = objc_opt_self();
    v20 = sub_24A82CA64();
    v21 = [v19 updateAccessoryFirmware_];
    v30 = v21;

    v22 = [*(v4 + 24) executeCommand_];
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v35 = sub_24A7292F0;
    v36 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_24A72011C;
    v34 = &unk_285DC4510;
    v24 = _Block_copy(&aBlock);

    v25 = [v22 addSuccessBlock_];
    _Block_release(v24);

    v26 = swift_allocObject();
    v26[2] = a2;
    v26[3] = a3;
    v26[4] = a1;
    v35 = sub_24A7292F8;
    v36 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_24A720114;
    v34 = &unk_285DC4560;
    v27 = _Block_copy(&aBlock);

    v28 = [v22 addFailureBlock_];
    _Block_release(v27);

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_24A728F10(uint64_t a1, uint64_t (*a2)(char *, void, void))
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);
  v4 = sub_24A82CD94();
  v5 = sub_24A82D504();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPItemActionsController: Update accessory firmware successfully completed", v6, 2u);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  v8 = 2;
  return a2(&v8, 0, 0);
}

uint64_t sub_24A729020(void *a1, void (*a2)(void **, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: Update accessory firmware completed with error: %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  LOBYTE(v21) = 4;
  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v17 = *(type metadata accessor for FMIPItem(0) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v19 + v18, type metadata accessor for FMIPItem);
  a2(&v21, v19, a1);
}

uint64_t sub_24A729290()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24A72931C()
{
  result = qword_27EF5D728;
  if (!qword_27EF5D728)
  {
    sub_24A679170(255, &qword_27EF5D720, 0x277D496B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D728);
  }

  return result;
}

uint64_t sub_24A729574()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A7295F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  v12 = MEMORY[0x24C21D990](v11);
  type metadata accessor for FMIPFetchEncryptedPayloadAction(0);
  if (swift_dynamicCastClass())
  {
    v13 = *(a2 + 24);

    v14 = sub_24A82CA64();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_24A72F92C;
    *(v15 + 24) = v10;
    aBlock[4] = sub_24A72F934;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7E39A4;
    aBlock[3] = &unk_285DC5370;
    v16 = _Block_copy(aBlock);

    [v13 fetchUnauthorizedEncryptedPayload:v14 completion:v16];
    _Block_release(v16);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: cannot map action to request", v20, 2u);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    LOBYTE(aBlock[0]) = 0;
    v21 = sub_24A82C8B4();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    sub_24A72A0CC();
    v22 = swift_allocError();
    *v23 = 6;
    sub_24A73F72C(aBlock, v9, v22, a3);

    sub_24A67F378(v9, &unk_27EF5CCB8, &qword_24A82FDB0);
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t sub_24A729930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v51 = a2;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_24A82CAA4();
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v53 = a3;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = qword_281515DC8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v49 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v50 = a4;
    v20 = v12;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;

    v22 = FMIPItemGroupAction.description.getter();
    v24 = v23;

    v25 = sub_24A68761C(v22, v24, aBlock);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPItemActionsController: performing remove item group action %s", v18, 0xCu);
    sub_24A6876E8(v21);
    v26 = v21;
    v12 = v20;
    MEMORY[0x24C21E1D0](v26, -1, -1);
    v27 = v18;
    v10 = v49;
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  v28 = v54;
  v29 = a1 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup;
  sub_24A82CA44();
  if ((*(v28 + 48))(v9, 1, v10) == 1)
  {
    sub_24A67F378(v9, &qword_27EF5D020, &qword_24A830E40);
    v30 = sub_24A82CD94();
    v31 = sub_24A82D504();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24A675000, v30, v31, "FMIPItemActionsController: cannot remove an item group with an invalid identifier", v32, 2u);
      MEMORY[0x24C21E1D0](v32, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
    v33 = *(type metadata accessor for FMIPItemGroup(0) - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v29, v35 + v34, type metadata accessor for FMIPItemGroup);
    sub_24A72A0CC();
    v36 = swift_allocError();
    *v37 = 0;
    sub_24A740C90(aBlock, v35, v36, v53);
  }

  else
  {
    v39 = v52;
    (*(v28 + 32))(v52, v9, v10);
    v40 = v10;
    v41 = sub_24A6DA74C();
    v42 = sub_24A82CA64();
    v43 = v28;
    v44 = OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced;
    swift_beginAccess();
    v45 = *(a1 + v44);
    v46 = swift_allocObject();
    v46[2] = sub_24A72A120;
    v46[3] = v12;
    v46[4] = a1;
    aBlock[4] = sub_24A72A128;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC4C68;
    v47 = _Block_copy(aBlock);

    [v41 unpairUUID:v42 force:v45 completion:v47];
    _Block_release(v47);

    (*(v43 + 8))(v39, v40);
  }
}

uint64_t sub_24A729F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{

  v8 = MEMORY[0x24C21D990](v7);
  type metadata accessor for FMIPRemoveItemGroupAction(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;

    sub_24A729930(v10, a2, a3, a4);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518F88);
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPItemGroupAction: cannot map action to request", v14, 2u);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v18 = 0;
    sub_24A72A0CC();
    v15 = swift_allocError();
    *v16 = 6;
    sub_24A740C90(&v18, 0, v15, a3);
  }

  objc_autoreleasePoolPop(v8);
}

unint64_t sub_24A72A0CC()
{
  result = qword_27EF5DE78;
  if (!qword_27EF5DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE78);
  }

  return result;
}

uint64_t sub_24A72A134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v26 = a3;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);

  sub_24A82CA44();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24A67F378(v9, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: cannot connect with an invalid identifier", v20, 2u);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    v27 = 4;
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24A8327A0;
    *(v21 + 32) = v16;
    *(v21 + 40) = v15;
    sub_24A72A0CC();
    v22 = swift_allocError();
    *v23 = 0;

    sub_24A74087C(&v27, v21, v22, v26);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v25 = swift_allocObject();
    v25[2] = sub_24A72F5E0;
    v25[3] = v14;
    v25[4] = a1;

    sub_24A72194C(v13, 1, sub_24A72F5E8, v25);

    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24A72A4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v26 = a3;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);

  sub_24A82CA44();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24A67F378(v9, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: cannot disconnect with an invalid identifier", v20, 2u);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    v27 = 4;
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24A8327A0;
    *(v21 + 32) = v16;
    *(v21 + 40) = v15;
    sub_24A72A0CC();
    v22 = swift_allocError();
    *v23 = 0;

    sub_24A74087C(&v27, v21, v22, v26);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v25 = swift_allocObject();
    v25[2] = sub_24A72FACC;
    v25[3] = v14;
    v25[4] = a1;

    sub_24A72194C(v13, 0, sub_24A72FA34, v25);

    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24A72A854(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void **, uint64_t, void *), uint64_t a6)
{
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  v15 = sub_24A82CAA4();
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v62 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v64 = a5;
  v17[4] = a5;
  v17[5] = a6;
  v18 = qword_281515DC8;
  v61 = a3;

  v60 = a4;

  v63 = a6;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);

  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58 = a2;
    *&v59 = v15;
    v24 = v17;
    v25 = v23;
    v67 = v23;
    *v22 = 136315138;
    v26 = FMIPItemAction.debugDescription.getter();
    v28 = sub_24A68761C(v26, v27, &v67);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPItemActionsController: performing play sound %s", v22, 0xCu);
    sub_24A6876E8(v25);
    v29 = v25;
    v17 = v24;
    v15 = v59;
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  v30 = v65;
  v31 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  sub_24A82CA44();
  if ((*(v30 + 48))(v14, 1, v15) == 1)
  {
    sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24A675000, v32, v33, "FMIPItemActionsController: cannot play sound for item with an invalid identifier", v34, 2u);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    v35 = sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v36 = *(type metadata accessor for FMIPItem(0) - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v62 = *(v36 + 72);
    v65 = v35;
    v38 = swift_allocObject();
    v59 = xmmword_24A8327A0;
    *(v38 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v31, v38 + v37, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v39 = swift_allocError();
    *v40 = 0;
    v41 = v39;
    v42 = sub_24A82CD94();
    v43 = sub_24A82D504();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v58 = v17;
      v45 = v44;
      v46 = swift_slowAlloc();
      v66 = v39;
      v67 = v46;
      *v45 = 136315394;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v47 = sub_24A82D624();
      v49 = sub_24A68761C(v47, v48, &v67);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      *(v45 + 14) = 500;
      _os_log_impl(&dword_24A675000, v42, v43, "FMIPManager: performed item action with error?: %s status?: %ld", v45, 0x16u);
      sub_24A6876E8(v46);
      MEMORY[0x24C21E1D0](v46, -1, -1);
      MEMORY[0x24C21E1D0](v45, -1, -1);
    }

    if (!*(v38 + 16))
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v59;
      sub_24A69F0CC(v60 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v50 + v37, type metadata accessor for FMIPItem);
      sub_24A7404C0(v50);
    }

    LOBYTE(v67) = 4;
    v64(&v67, v38, v39);
  }

  else
  {
    v52 = v62;
    (*(v30 + 32))(v62, v14, v15);
    v53 = *(a1 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context);
    v54 = v30;
    v55 = *(a1 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context + 8);
    v56 = swift_allocObject();
    v56[2] = sub_24A72FA24;
    v56[3] = v17;
    v56[4] = a1;

    sub_24A722AB8(v52, v53, v55, sub_24A72F614, v56);

    (*(v54 + 8))(v52, v15);
  }
}

uint64_t sub_24A72AF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **, uint64_t, void *), void **a6)
{
  *&v113 = a2;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v103 - v12;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v111 = a5;
  v18[4] = a5;
  v18[5] = a6;
  v114 = v18;
  v109 = a3;
  v110 = (a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);

  v108 = a4;

  v112 = a6;

  sub_24A82CA44();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24A67F378(v13, &qword_27EF5D020, &qword_24A830E40);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPItemActionsController: cannot enable lost mode for item with an invalid identifier", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v23 = sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v24 = *(*(type metadata accessor for FMIPItem(0) - 8) + 80);
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    v113 = xmmword_24A8327A0;
    *(v26 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v110, v26 + v25, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v27 = swift_allocError();
    *v28 = 0;
    v29 = v27;
    v30 = sub_24A82CD94();
    v31 = sub_24A82D504();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v107 = (v24 + 32) & ~v24;
      v33 = v32;
      v34 = swift_slowAlloc();
      v110 = v23;
      v106 = v34;
      aBlock = v34;
      *v33 = 136315394;
      v121[0] = v27;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v35 = sub_24A82D624();
      v37 = sub_24A68761C(v35, v36, &aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 500;
      _os_log_impl(&dword_24A675000, v30, v31, "FMIPManager: performed item action with error?: %s status?: %ld", v33, 0x16u);
      v38 = v106;
      sub_24A6876E8(v106);
      MEMORY[0x24C21E1D0](v38, -1, -1);
      v39 = v33;
      v25 = v107;
      MEMORY[0x24C21E1D0](v39, -1, -1);
    }

    if (!*(v26 + 16))
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v113;
      sub_24A69F0CC(v108 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v40 + v25, type metadata accessor for FMIPItem);
      sub_24A7404C0(v40);
    }

    LOBYTE(aBlock) = 4;
    v111(&aBlock, v26, v27);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v42 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isTrackingEnabled);
    v106 = v15;
    v107 = v14;
    v105 = v17;
    v104 = a1;
    if ((v42 & 1) == 0)
    {
      v44 = objc_opt_self();
      v45 = sub_24A82CA64();
      v46 = [v44 disableLostModeForBeaconUUID_];

      v47 = qword_281515DC8;
      v48 = v46;
      if (v47 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }

    v43 = sub_24A82CA64();

    v58 = sub_24A82CF94();

    v59 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber + 8);
    v108 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
    v109 = v59;

    v60 = sub_24A82CF94();

    v61 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email + 8);
    v110 = *(a1 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
    v62 = objc_opt_self();
    v111 = v61;

    v63 = sub_24A82CF94();

    v64 = [v62 enableLostModeForBeaconUUID:v43 message:v58 phoneNumber:v60 email:v63];

    v65 = qword_281515DC8;
    v66 = v64;
    v112 = v66;
    if (v65 != -1)
    {
      swift_once();
    }

    v67 = sub_24A82CDC4();
    sub_24A6797D0(v67, qword_281518F88);

    v68 = sub_24A82CD94();
    v69 = sub_24A82D504();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136315138;
      v72 = FMIPItemAction.debugDescription.getter();
      v74 = sub_24A68761C(v72, v73, &aBlock);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_24A675000, v68, v69, "FMIPItemActionsController: enabling lost mode %s", v70, 0xCu);
      sub_24A6876E8(v71);
      MEMORY[0x24C21E1D0](v71, -1, -1);
      MEMORY[0x24C21E1D0](v70, -1, -1);
    }

    v75 = sub_24A82CD94();
    v76 = sub_24A82D504();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v121[0] = v78;
      *v77 = 136315394;
      aBlock = v108;
      v116 = v109;

      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      v79 = sub_24A82D024();
      v81 = sub_24A68761C(v79, v80, v121);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      aBlock = v110;
      v116 = v111;

      v82 = sub_24A82D024();
      v84 = sub_24A68761C(v82, v83, v121);

      *(v77 + 14) = v84;
      _os_log_impl(&dword_24A675000, v75, v76, "FMIPItemActionsController: lost mode: metadata: phone %s, email: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v78, -1, -1);
      MEMORY[0x24C21E1D0](v77, -1, -1);
    }

    v48 = v112;
    for (i = v113; ; i = v113)
    {
      v85 = [*(i + 24) executeCommand_];

      v86 = *(i + 48);
      v87 = swift_allocObject();
      *(v87 + 16) = i;
      *(v87 + 24) = v85;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_24A72FA2C;
      *(v88 + 24) = v87;
      v119 = sub_24A680674;
      v120 = v88;
      aBlock = MEMORY[0x277D85DD0];
      v116 = 1107296256;
      v89 = v48;
      v48 = &v117;
      v117 = sub_24A6805E4;
      v118 = &unk_285DC4E20;
      v90 = _Block_copy(&aBlock);

      v91 = v85;

      dispatch_sync(v86, v90);
      _Block_release(v90);
      LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

      if ((v90 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_27:
      swift_once();
LABEL_14:
      v49 = sub_24A82CDC4();
      sub_24A6797D0(v49, qword_281518F88);

      v50 = sub_24A82CD94();
      v51 = sub_24A82D504();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock = v53;
        *v52 = 136315138;
        v54 = FMIPItemAction.debugDescription.getter();
        v56 = sub_24A68761C(v54, v55, &aBlock);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_24A675000, v50, v51, "FMIPItemActionsController: disabling lost mode %s", v52, 0xCu);
        sub_24A6876E8(v53);
        MEMORY[0x24C21E1D0](v53, -1, -1);
        MEMORY[0x24C21E1D0](v52, -1, -1);
      }
    }

    v92 = swift_allocObject();
    swift_weakInit();
    v93 = swift_allocObject();
    v112 = v89;
    v94 = v114;
    v93[2] = sub_24A72FA24;
    v93[3] = v94;
    v93[4] = v104;
    v93[5] = v92;
    v93[6] = v91;
    v119 = sub_24A72F620;
    v120 = v93;
    aBlock = MEMORY[0x277D85DD0];
    v116 = 1107296256;
    v117 = sub_24A720114;
    v118 = &unk_285DC4E98;
    v95 = _Block_copy(&aBlock);

    v96 = v91;

    v97 = [v96 addFailureBlock_];
    _Block_release(v95);

    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v99[2] = sub_24A72FA24;
    v99[3] = v94;
    v99[4] = v98;
    v99[5] = v96;
    v119 = sub_24A72F698;
    v120 = v99;
    aBlock = MEMORY[0x277D85DD0];
    v116 = 1107296256;
    v117 = sub_24A72011C;
    v118 = &unk_285DC4EE8;
    v100 = _Block_copy(&aBlock);
    v101 = v96;

    v102 = [v101 addSuccessBlock_];
    _Block_release(v100);

    (v106[1])(v105, v107);
  }
}

uint64_t sub_24A72BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **, uint64_t, void *), uint64_t a6)
{
  *&v79 = a2;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v75 - v12;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v81 = a5;
  v82 = v18;
  v18[4] = a5;
  v18[5] = a6;
  v19 = qword_281515DC8;
  v78 = a3;

  v77 = a4;

  v80 = a6;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_24A82CDC4();
  v21 = sub_24A6797D0(v20, qword_281518F88);

  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v75 = v21;
    v25 = v24;
    v26 = swift_slowAlloc();
    v76 = v17;
    v27 = v15;
    v28 = v26;
    aBlock = v26;
    *v25 = 136315138;
    v29 = FMIPItemAction.debugDescription.getter();
    v31 = v14;
    v32 = sub_24A68761C(v29, v30, &aBlock);

    *(v25 + 4) = v32;
    v14 = v31;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPItemActionsController: performing remove action %s", v25, 0xCu);
    sub_24A6876E8(v28);
    v33 = v28;
    v15 = v27;
    v17 = v76;
    MEMORY[0x24C21E1D0](v33, -1, -1);
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  v34 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  sub_24A82CA44();
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v54 = (v34 + *(type metadata accessor for FMIPItem(0) + 60));
    v55 = *v54;
    v56 = v54[1];
    v57 = [objc_opt_self() SPOwner];
    v58 = [v57 destination];

    v59 = sub_24A82CFC4();
    v61 = v60;

    if (v55 == v59 && v56 == v61)
    {
    }

    else
    {
      v62 = sub_24A82DC04();

      if ((v62 & 1) == 0)
      {
        v70 = v79;
        v71 = *(v79 + 16);
        v64 = sub_24A82CA64();
        v72 = swift_allocObject();
        v73 = v82;
        v72[2] = sub_24A72FA24;
        v72[3] = v73;
        v72[4] = v70;
        v72[5] = a1;
        v88 = sub_24A72F748;
        v89 = v72;
        aBlock = MEMORY[0x277D85DD0];
        v85 = 1107296256;
        v86 = sub_24A7386B4;
        v87 = &unk_285DC5000;
        v74 = _Block_copy(&aBlock);

        [v71 beaconForUUID:v64 completion:v74];
        _Block_release(v74);
        goto LABEL_19;
      }
    }

    v63 = sub_24A6DA74C();
    v64 = sub_24A82CA64();
    v65 = OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced;
    swift_beginAccess();
    v66 = *(a1 + v65);
    v67 = swift_allocObject();
    v68 = v82;
    v67[2] = sub_24A72FA24;
    v67[3] = v68;
    v67[4] = a1;
    v88 = sub_24A72F754;
    v89 = v67;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_24A7386AC;
    v87 = &unk_285DC5050;
    v69 = _Block_copy(&aBlock);

    [v63 unpairUUID:v64 force:v66 completion:v69];
    _Block_release(v69);

LABEL_19:
    (*(v15 + 8))(v17, v14);
  }

  sub_24A67F378(v13, &qword_27EF5D020, &qword_24A830E40);
  v35 = sub_24A82CD94();
  v36 = sub_24A82D504();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_24A675000, v35, v36, "FMIPItemActionsController: cannot remove an item with an invalid identifier", v37, 2u);
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v38 = *(*(type metadata accessor for FMIPItem(0) - 8) + 80);
  v39 = (v38 + 32) & ~v38;
  v40 = swift_allocObject();
  v79 = xmmword_24A8327A0;
  *(v40 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(v34, v40 + v39, type metadata accessor for FMIPItem);
  sub_24A72A0CC();
  v41 = swift_allocError();
  *v42 = 0;
  v43 = v41;
  v44 = sub_24A82CD94();
  v45 = sub_24A82D504();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v76 = v38;
    v47 = v46;
    v75 = swift_slowAlloc();
    aBlock = v75;
    *v47 = 136315394;
    v83 = v41;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v48 = sub_24A82D624();
    v50 = sub_24A68761C(v48, v49, &aBlock);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 500;
    _os_log_impl(&dword_24A675000, v44, v45, "FMIPManager: performed item action with error?: %s status?: %ld", v47, 0x16u);
    v51 = v75;
    sub_24A6876E8(v75);
    MEMORY[0x24C21E1D0](v51, -1, -1);
    MEMORY[0x24C21E1D0](v47, -1, -1);
  }

  if (!*(v40 + 16))
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v79;
    sub_24A69F0CC(v77 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v52 + v39, type metadata accessor for FMIPItem);
    sub_24A7404C0(v52);
  }

  LOBYTE(aBlock) = 4;
  v81(&aBlock, v40, v41);
}

uint64_t sub_24A72C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  *&v64 = a2;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - v12;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v66 = a5;
  v67 = v18;
  v18[4] = a5;
  v18[5] = a6;
  v19 = qword_281515DC8;
  v63 = a3;

  v62 = a4;

  v65 = a6;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_24A82CDC4();
  sub_24A6797D0(v20, qword_281518F88);

  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60 = v14;
    v61 = v15;
    v25 = v17;
    v26 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    v27 = FMIPItemAction.debugDescription.getter();
    v29 = sub_24A68761C(v27, v28, aBlock);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_24A675000, v21, v22, "FMIPItemActionsController: performing notify action %s, separationEnabled? ", v23, 0xCu);
    sub_24A6876E8(v26);
    v30 = v26;
    v17 = v25;
    v14 = v60;
    v15 = v61;
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v31 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  sub_24A82CA44();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24A67F378(v13, &qword_27EF5D020, &qword_24A830E40);
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24A675000, v32, v33, "FMIPItemActionsController: cannot notify an item with an invalid identifier", v34, 2u);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v35 = *(*(type metadata accessor for FMIPItem(0) - 8) + 80);
    v36 = (v35 + 32) & ~v35;
    v37 = swift_allocObject();
    v64 = xmmword_24A8327A0;
    *(v37 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v31, v37 + v36, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v38 = swift_allocError();
    *v39 = 0;
    v40 = v38;
    v41 = sub_24A82CD94();
    v42 = sub_24A82D504();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = v35;
      v44 = v43;
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v44 = 136315394;
      aBlock[6] = v38;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v45 = sub_24A82D624();
      v47 = sub_24A68761C(v45, v46, aBlock);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 500;
      _os_log_impl(&dword_24A675000, v41, v42, "FMIPManager: performed item action with error?: %s status?: %ld", v44, 0x16u);
      v48 = v60;
      sub_24A6876E8(v60);
      MEMORY[0x24C21E1D0](v48, -1, -1);
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }

    if (!*(v37 + 16))
    {
      v49 = swift_allocObject();
      *(v49 + 16) = v64;
      sub_24A69F0CC(v62 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v49 + v36, type metadata accessor for FMIPItem);
      sub_24A7404C0(v49);
    }

    LOBYTE(aBlock[0]) = 4;
    v66(aBlock, v37, v38);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v51 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state);
    v52 = objc_opt_self();
    v53 = sub_24A82CA64();
    v54 = &selRef_beginLeashingWithBeaconUUID_;
    if (!v51)
    {
      v54 = &selRef_endLeashingWithBeaconUUID_;
    }

    v55 = [v52 *v54];

    v56 = *(v64 + 24);
    v57 = swift_allocObject();
    v58 = v67;
    v57[2] = sub_24A72FA24;
    v57[3] = v58;
    v57[4] = a1;
    aBlock[4] = sub_24A72F788;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC5118;
    v59 = _Block_copy(aBlock);

    [v56 executeCommand:v55 completion:v59];
    _Block_release(v59);

    (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_24A72CD8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v69 - v13;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v76 = a5;
  v18[4] = a5;
  v18[5] = a6;
  v19 = qword_281515DC8;
  v73 = a3;

  v72 = a4;

  v75 = a6;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_24A82CDC4();
  v21 = sub_24A6797D0(v20, qword_281518F88);

  v74 = v21;
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *&v71 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315394;
    v27 = FMIPItemAction.debugDescription.getter();
    v29 = sub_24A68761C(v27, v28, aBlock);
    v70 = a2;
    v30 = v18;
    v31 = v15;
    v32 = v17;
    v33 = v29;

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state))
    {
      v34 = 0x64656C62616E65;
    }

    else
    {
      v34 = 0x64656C6261736964;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state))
    {
      v35 = 0xE700000000000000;
    }

    else
    {
      v35 = 0xE800000000000000;
    }

    v36 = sub_24A68761C(v34, v35, aBlock);

    *(v25 + 14) = v36;
    v17 = v32;
    v15 = v31;
    v18 = v30;
    a2 = v70;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPItemActionsController: performing notify when found action %s, state: %s ", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v26, -1, -1);
    v37 = v25;
    v14 = v71;
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  v38 = v77;
  v39 = a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  sub_24A82CA44();
  if ((*(v15 + 48))(v38, 1, v14) == 1)
  {
    sub_24A67F378(v38, &qword_27EF5D020, &qword_24A830E40);
    v40 = sub_24A82CD94();
    v41 = sub_24A82D504();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_24A675000, v40, v41, "FMIPItemActionsController: performing notify an item with an invalid identifier", v42, 2u);
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    v43 = sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v44 = *(type metadata accessor for FMIPItem(0) - 8);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v77 = *(v44 + 80);
    v46 = swift_allocObject();
    v71 = xmmword_24A8327A0;
    *(v46 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(v39, v46 + v45, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v47 = swift_allocError();
    *v48 = 0;
    v49 = v47;
    v50 = sub_24A82CD94();
    v51 = sub_24A82D504();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v74 = v43;
      v70 = v53;
      aBlock[0] = v53;
      *v52 = 136315394;
      aBlock[6] = v47;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v54 = sub_24A82D624();
      v56 = v45;
      v57 = sub_24A68761C(v54, v55, aBlock);

      *(v52 + 4) = v57;
      v45 = v56;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 500;
      _os_log_impl(&dword_24A675000, v50, v51, "FMIPManager: performed item action with error?: %s status?: %ld", v52, 0x16u);
      v58 = v70;
      sub_24A6876E8(v70);
      MEMORY[0x24C21E1D0](v58, -1, -1);
      MEMORY[0x24C21E1D0](v52, -1, -1);
    }

    if (!*(v46 + 16))
    {
      v59 = swift_allocObject();
      *(v59 + 16) = v71;
      sub_24A69F0CC(v72 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v59 + v45, type metadata accessor for FMIPItem);
      sub_24A7404C0(v59);
    }

    LOBYTE(aBlock[0]) = 4;
    v76(aBlock, v46, v47);
  }

  else
  {
    (*(v15 + 32))(v17, v38, v14);
    v61 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state);
    v62 = objc_opt_self();
    v63 = sub_24A82CA64();
    v64 = &selRef_enableNotifyWhenFound_;
    if (!v61)
    {
      v64 = &selRef_disableNotifyWhenFound_;
    }

    v65 = [v62 *v64];

    v66 = a2[3];
    v67 = swift_allocObject();
    v67[2] = sub_24A72FA24;
    v67[3] = v18;
    v67[4] = a1;
    aBlock[4] = sub_24A72F7F8;
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC5190;
    v68 = _Block_copy(aBlock);

    [v66 executeCommand:v65 completion:v68];
    _Block_release(v68);

    (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_24A72D594(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), uint64_t a6)
{
  v12 = qword_281515DC8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPItemActionsController: Notification action received", v16, 2u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type);

  if (v17 == 1)
  {
    sub_24A72C604(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    sub_24A72CD8C(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_24A72D738(unint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void, void, void, uint64_t), uint64_t a4)
{
  v56 = a2;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v55 - v11;
  v64 = sub_24A82CAA4();
  v12 = *(v64 - 8);
  v13 = MEMORY[0x28223BE20](v64);
  v66 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v55 - v15;
  v16 = swift_allocObject();
  v58 = a4;
  v59 = a3;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v62 = v16;
  v17 = qword_281515DC8;

  if (v17 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v18 = sub_24A82CDC4();
    v55 = sub_24A6797D0(v18, qword_281518F88);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPItemActionsController: performing assign safe location action", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    v60 = a1;
    v22 = *(a1 + 368);
    v23 = *(v22 + 16);
    v24 = v64;
    v63 = v12;
    v65 = v23;
    if (!v23)
    {
      break;
    }

    v25 = 0;
    v26 = (v12 + 6);
    v27 = (v12 + 4);
    v12 = (v22 + 40);
    v28 = MEMORY[0x277D84F90];
    while (v25 < *(v22 + 16))
    {
      a1 = *v12;

      sub_24A82CA44();

      if ((*v26)(v10, 1, v24) == 1)
      {
        sub_24A67F378(v10, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        v29 = *v27;
        (*v27)(v66, v10, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_24A78029C(0, v28[2] + 1, 1, v28);
        }

        v31 = v28[2];
        v30 = v28[3];
        a1 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v28 = sub_24A78029C((v30 > 1), v31 + 1, 1, v28);
        }

        v28[2] = a1;
        v32 = v28 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v63[9] * v31;
        v24 = v64;
        v29(v32, v66, v64);
      }

      ++v25;
      v12 += 2;
      if (v65 == v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_15:
  v33 = v61;
  sub_24A82CA44();
  v34 = v63;
  if ((v63[6])(v33, 1, v24) == 1)
  {

    sub_24A67F378(v33, &qword_27EF5D020, &qword_24A830E40);
    v35 = sub_24A82CD94();
    v36 = sub_24A82D504();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24A675000, v35, v36, "FMIPItemActionsController: Assign safe location failed. No SafeLocationUUID", v37, 2u);
      MEMORY[0x24C21E1D0](v37, -1, -1);
    }

    v38 = sub_24A82CD94();
    v39 = sub_24A82D504();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315394;
      aBlock[6] = 0;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v42 = sub_24A82D624();
      v44 = sub_24A68761C(v42, v43, aBlock);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2048;
      *(v40 + 14) = 500;
      _os_log_impl(&dword_24A675000, v38, v39, "FMIPManager: performed safe location action with error?: %s status?: %ld", v40, 0x16u);
      sub_24A6876E8(v41);
      MEMORY[0x24C21E1D0](v41, -1, -1);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }

    LOBYTE(aBlock[0]) = 4;
    v59(aBlock, 0, 0, 0, 2);
  }

  else
  {
    v45 = v57;
    (v34[4])(v57, v33, v24);
    v46 = *(v56 + 24);
    v47 = v24;
    v48 = sub_24A82CA64();
    v49 = sub_24A82D224();

    v50 = swift_allocObject();
    v51 = v34;
    v52 = v62;
    *(v50 + 16) = sub_24A72FA38;
    *(v50 + 24) = v52;
    aBlock[4] = sub_24A72F828;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7FD664;
    aBlock[3] = &unk_285DC5230;
    v53 = _Block_copy(aBlock);

    [v46 assignSafeLocation:v48 beaconUUIDs:v49 completion:v53];
    _Block_release(v53);

    (v51[1])(v45, v47);
  }
}