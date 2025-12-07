void sub_10015B46C(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v21 = v6;
  v22 = v2;
LABEL_6:
  if (v5)
  {
    v24 = v7;
    v9 = v8;
LABEL_12:
    v10 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v5 &= v5 - 1;

    String.hash(into:)();

    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v25 = v10;

    v16 = 0;
    for (i = 0; v14; v16 = Hasher._finalize()() ^ v18)
    {
      v18 = v16;
      v19 = i;
LABEL_21:
      v20 = *(*(v25 + 56) + (__clz(__rbit64(v14)) | (v19 << 6)));
      v14 &= v14 - 1;

      String.hash(into:)();

      Hasher._combine(_:)(v20);
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        Hasher._combine(_:)(v16);

        v7 = Hasher._finalize()() ^ v24;
        v8 = v9;
        v6 = v21;
        v2 = v22;
        goto LABEL_6;
      }

      v14 = *(v11 + 8 * v19);
      ++i;
      if (v14)
      {
        v18 = v16;
        i = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        Hasher._combine(_:)(v7);
        return;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v24 = v7;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10015B6E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a5;
  v37 = a6;
  v34 = a6;
  v16 = sub_100032DBC(&v35);
  (*(*(a5 - 8) + 32))(v16, a1, a5);
  v17 = *a4;
  v19 = sub_10003AF10(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_7:
    v25 = *a4;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_10000BB78(v26);
      return sub_10001F358(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_10016F358();
    goto LABEL_7;
  }

  sub_100165918(v22, a3 & 1);
  v28 = sub_10003AF10(a2);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a4;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  v30 = sub_10001F370(&v35, v36);
  __chkstk_darwin(v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_10015B994(v19, v15, v32, v25, a5, v34);
  return sub_10000BB78(&v35);
}

uint64_t sub_10015B994(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v11 = sub_100032DBC(&v18);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_10001F358(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_10015BAA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007224(&qword_10083BC78, &qword_1006DA1C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - v8;
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = sub_100007224(&qword_10083BC80, &qword_1006DA1C8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  static ISO18013_5_1_ElementIdentifier.parseAgeOverElement(_:)();
  if ((v21 & 1) == 0)
  {
    type metadata accessor for IdentityElementRawValueKeys();
    return static IdentityElementRawValueKeys.ageIsOver(_:)();
  }

  ISO18013_5_1_ElementIdentifier.init(rawValue:)();
  sub_10000BBC4(v20, v18, &qword_10083BC80, &qword_1006DA1C8);
  v22 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) != 1)
  {
    sub_10000BBC4(v18, v15, &qword_10083BC80, &qword_1006DA1C8);
    v26 = (*(v23 + 88))(v15, v22);
    if (v26 != enum case for ISO18013_5_1_ElementIdentifier.givenName(_:) && v26 != enum case for ISO18013_5_1_ElementIdentifier.familyName(_:))
    {
      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:))
      {
LABEL_16:
        sub_10000BE18(v18, &qword_10083BC80, &qword_1006DA1C8);
        type metadata accessor for IdentityElementRawValueKeys();
        v28 = static IdentityElementRawValueKeys.dateOfBirth.getter();
        goto LABEL_17;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.documentIssueDate.getter();
LABEL_27:
        a1 = v34;
        sub_10000BE18(v20, &qword_10083BC80, &qword_1006DA1C8);
        v31 = v18;
        goto LABEL_28;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.documentExpirationDate.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:) || v26 == enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:))
      {
        goto LABEL_67;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.documentNumber.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.portrait(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.portrait.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.drivingPrivileges.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.unDistinguishingSign(_:))
      {
LABEL_67:
        sub_10000BE18(v18, &qword_10083BC80, &qword_1006DA1C8);
        type metadata accessor for IdentityElementRawValueKeys();
        v28 = static IdentityElementRawValueKeys.issuingAuthority.getter();
        goto LABEL_17;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.administrativeNumber(_:))
      {
        goto LABEL_3;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.sex(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.sex.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.height(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.height.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.weight(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.weight.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.eyeColor.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.hairColor.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.birthPlace(_:))
      {
        goto LABEL_3;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:))
      {
        goto LABEL_81;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.portraitCaptureDate(_:))
      {
        goto LABEL_3;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v34 = static IdentityElementRawValueKeys.age.getter();
        goto LABEL_27;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.ageBirthYear(_:))
      {
        goto LABEL_16;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:))
      {
        goto LABEL_67;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.nationality(_:))
      {
        goto LABEL_3;
      }

      if (v26 == enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:) || v26 == enum case for ISO18013_5_1_ElementIdentifier.residentState(_:) || v26 == enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:) || v26 == enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:))
      {
LABEL_81:
        sub_10000BE18(v18, &qword_10083BC80, &qword_1006DA1C8);
        type metadata accessor for IdentityElementRawValueKeys();
        v28 = static IdentityElementRawValueKeys.address.getter();
        goto LABEL_17;
      }

      if (v26 != enum case for ISO18013_5_1_ElementIdentifier.familyNameNationalCharacter(_:) && v26 != enum case for ISO18013_5_1_ElementIdentifier.givenNameNationalCharacter(_:))
      {
        if (v26 != enum case for ISO18013_5_1_ElementIdentifier.signatureUsualMark(_:))
        {
          (*(v23 + 8))(v15, v22);
        }

        goto LABEL_3;
      }
    }

    sub_10000BE18(v18, &qword_10083BC80, &qword_1006DA1C8);
    type metadata accessor for IdentityElementRawValueKeys();
    v28 = static IdentityElementRawValueKeys.givenName.getter();
LABEL_17:
    a1 = v28;
    v31 = v20;
LABEL_28:
    v32 = &qword_10083BC80;
    v33 = &qword_1006DA1C8;
    goto LABEL_29;
  }

LABEL_3:
  sub_10000BE18(v18, &qword_10083BC80, &qword_1006DA1C8);

  ISO18013_AAMVA_ElementIdentifier.init(rawValue:)();
  sub_10000BBC4(v11, v9, &qword_10083BC78, &qword_1006DA1C0);
  v24 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    goto LABEL_4;
  }

  sub_10000BBC4(v9, v6, &qword_10083BC78, &qword_1006DA1C0);
  v29 = (*(v25 + 88))(v6, v24);
  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:))
  {
    goto LABEL_14;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:))
  {
LABEL_19:
    sub_10000BE18(v9, &qword_10083BC78, &qword_1006DA1C0);
    type metadata accessor for IdentityElementRawValueKeys();
    v30 = static IdentityElementRawValueKeys.givenName.getter();
    goto LABEL_20;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:))
  {
    type metadata accessor for IdentityElementRawValueKeys();
    v35 = static IdentityElementRawValueKeys.organDonorStatus.getter();
LABEL_33:
    a1 = v35;
    sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
    sub_10000BE18(v20, &qword_10083BC80, &qword_1006DA1C8);
    v31 = v9;
    v32 = &qword_10083BC78;
    v33 = &qword_1006DA1C0;
    goto LABEL_29;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:))
  {
    type metadata accessor for IdentityElementRawValueKeys();
    v35 = static IdentityElementRawValueKeys.veteranStatus.getter();
    goto LABEL_33;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.familyNameTruncation(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.givenNameTruncation(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyName(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyNameV2(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenName(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenNameV2(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.akaSuffix(_:))
  {
    goto LABEL_19;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.weightRange(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.raceEthnicity(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:))
  {
    goto LABEL_4;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.firstName(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.middleNames(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.firstNameTruncation(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.middleNamesTruncation(_:))
  {
    goto LABEL_19;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.edlCredential(_:))
  {
    goto LABEL_4;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:))
  {
    goto LABEL_4;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.residentCounty(_:))
  {
    goto LABEL_4;
  }

  v37 = v29;
  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.residentCountyV2(_:) || v29 == enum case for ISO18013_AAMVA_ElementIdentifier.hazmatEndorsementExpirationDate(_:))
  {
    goto LABEL_4;
  }

  if (v29 == enum case for ISO18013_AAMVA_ElementIdentifier.cdlIndicator(_:))
  {
LABEL_14:
    sub_10000BE18(v9, &qword_10083BC78, &qword_1006DA1C0);
    type metadata accessor for IdentityElementRawValueKeys();
    v30 = static IdentityElementRawValueKeys.drivingPrivileges.getter();
LABEL_20:
    a1 = v30;
    sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
    v32 = &qword_10083BC80;
    v33 = &qword_1006DA1C8;
    v31 = v20;
LABEL_29:
    sub_10000BE18(v31, v32, v33);
    return a1;
  }

  if (v29 != enum case for ISO18013_AAMVA_ElementIdentifier.cdlNonDomiciled(_:) && v29 != enum case for ISO18013_AAMVA_ElementIdentifier.dhsComplianceText(_:))
  {
    v38 = enum case for ISO18013_AAMVA_ElementIdentifier.dhsTemporaryLawfulStatus(_:);
    sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
    sub_10000BE18(v20, &qword_10083BC80, &qword_1006DA1C8);
    if (v37 != v38)
    {
      (*(v25 + 8))(v6, v24);
    }

    goto LABEL_5;
  }

LABEL_4:
  sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
  sub_10000BE18(v20, &qword_10083BC80, &qword_1006DA1C8);
LABEL_5:
  sub_10000BE18(v9, &qword_10083BC78, &qword_1006DA1C0);

  return a1;
}

uint64_t sub_10015C624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = a6;
  v13 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
  v88 = *(v13 - 8);
  v89 = v13;
  __chkstk_darwin(v13);
  v87 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for IdentityDocumentElement.RetentionIntent();
  v90 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for IdentityDocumentElement();
  v98 = *(v94 - 8);
  __chkstk_darwin(v94);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10003D21C(_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v18;
  sub_10016CAB8(a2, a3, 0xD000000000000012, 0x80000001007020D0, isUniquelyReferenced_nonNull_native);
  v20 = v102[0];
  if (v12 == 2)
  {
    v21 = 6448503;
  }

  else
  {
    v21 = 0x7070416E69;
  }

  if (v12 == 2)
  {
    v22 = 0xE300000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v20;
  sub_10016CAB8(v21, v22, 0x5470704174736F68, 0xEB00000000657079, v23);
  v103 = v102[0];
  v24 = type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation(0);
  v25 = *(*(a1 + *(v24 + 24)) + 16);
  if (v25 <= 1)
  {
    v26 = 0x65736C6166;
  }

  else
  {
    v26 = 1702195828;
  }

  if (v25 <= 1)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  sub_10014BC18(v26, v27, 0x69746C754D736168, 0xEA00000000004449);
  v102[3] = type metadata accessor for DeviceInformationProvider();
  v102[4] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v102);
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  v102[5] = static UserDefaultsConfiguration.standard.getter();
  v28 = sub_100134AD0();
  sub_100108074(v102);
  v85 = v24;
  if (v28)
  {
    v29 = v103;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v102[0] = v29;
    sub_10016CAB8(0x4C73726576697244, 0xEE0065736E656369, 0x53746375646F7270, 0xEE00657079546275, v30);
    v31 = v102[0];
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v102[0] = v31;
    sub_10016CAB8(19277, 0xE200000000000000, 0x726575737369, 0xE600000000000000, v32);
    v103 = v102[0];
    v33 = v94;
    goto LABEL_32;
  }

  v34 = *(a1 + *(v24 + 20));
  v33 = v94;
  if (v34)
  {
    v35 = *(v34 + 56);
    if (v35 <= 2)
    {
      if (*(v34 + 56))
      {
        if (v35 == 1)
        {
          v36 = 0x4C73726576697244;
          v37 = 0xEE0065736E656369;
        }

        else
        {
          v37 = 0xE700000000000000;
          v36 = 0x6E776F6E6B6E75;
        }

        goto LABEL_29;
      }

      v37 = 0xE700000000000000;
      v38 = 0x496574617453;
    }

    else
    {
      if (*(v34 + 56) > 4u)
      {
        if (v35 != 5)
        {
          goto LABEL_30;
        }

        v37 = 0x8000000100702170;
        v36 = 0xD000000000000017;
LABEL_29:
        v39 = v103;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v102[0] = v39;
        sub_10016CAB8(v36, v37, 0x53746375646F7270, 0xEE00657079546275, v40);
        v103 = v102[0];
LABEL_30:
        v41 = *(v34 + 72);
        if (v41)
        {
          v42 = *(v34 + 64);

          sub_10014BC18(v42, v41, 0x726575737369, 0xE600000000000000);
        }

        goto LABEL_32;
      }

      if (v35 == 3)
      {
        v36 = 0x6C616E6F6974614ELL;
        v37 = 0xEA00000000004449;
        goto LABEL_29;
      }

      v37 = 0xE700000000000000;
      v38 = 0x496F746F6850;
    }

    v36 = v38 & 0xFFFFFFFFFFFFLL | 0x44000000000000;
    goto LABEL_29;
  }

LABEL_32:

  sub_10014BC18(a4, a5, 0x746E61686372656DLL, 0xEC000000656D614ELL);
  if (a6 != 2)
  {
    if (a6)
    {
      v43 = 0x7261507473726966;
    }

    else
    {
      v43 = 0x7261506472696874;
    }

    v44 = v103;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v102[0] = v44;
    sub_10016CAB8(v43, 0xEA00000000007974, 0x797469746E656469, 0xEF65736143657355, v45);
    v103 = v102[0];
  }

  v46 = &_swiftEmptySetSingleton;
  v100 = &_swiftEmptySetSingleton;
  v101 = &_swiftEmptySetSingleton;
  v99 = &_swiftEmptySetSingleton;
  v86 = a1;
  v47 = *(a1 + 80);
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v98 + 16;
    v98 = *(v98 + 16);
    v50 = v47 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v97 = *(v49 + 56);
    v51 = (v90 + 11);
    v93 = enum case for IdentityDocumentElement.RetentionIntent.retain(_:);
    v92 = enum case for IdentityDocumentElement.RetentionIntent.doNotRetain(_:);
    v91 = enum case for IdentityDocumentElement.RetentionIntent.displayOnly(_:);
    v52 = (v49 - 8);
    ++v90;
    (v98)(v17, v50, v33);
    while (1)
    {
      v53 = IdentityDocumentElement.identifier.getter();
      v55 = sub_10015BAA0(v53, v54);
      v57 = v56;

      if (!v57)
      {
        goto LABEL_40;
      }

      sub_100151120(v102, v55, v57);

      v58 = v95;
      IdentityDocumentElement.retentionIntent.getter();
      v59 = (*v51)(v58, v96);
      if (v59 == v93)
      {
        sub_100151120(v102, v55, v57);

        v33 = v94;
        (*v52)(v17, v94);
      }

      else
      {
        v33 = v94;
        if (v59 == v92 || v59 == v91)
        {
          sub_100151120(v102, v55, v57);

LABEL_40:
          (*v52)(v17, v33);
          goto LABEL_41;
        }

        (*v52)(v17, v94);

        (*v90)(v95, v96);
      }

LABEL_41:
      v50 += v97;
      if (!--v48)
      {
        v46 = v99;
        break;
      }

      (v98)(v17, v50, v33);
    }
  }

  v102[0] = v46;
  sub_100007224(&qword_10083BC60, &unk_1006DA1B0);
  sub_10015D0C8();
  sub_10001F298();
  v60 = Sequence<>.joined(separator:)();
  v62 = v61;

  v63 = v103;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v63;
  sub_10016CAB8(v60, v62, 0xD000000000000015, 0x80000001007020F0, v64);
  v65 = v102[0];
  v103 = v102[0];
  v102[0] = v101;
  v66 = Sequence<>.joined(separator:)();
  v68 = v67;

  v69 = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v65;
  sub_10016CAB8(v66, v68, 0xD000000000000012, 0x8000000100702110, v69);
  v70 = v102[0];
  v103 = v102[0];
  v102[0] = v100;
  v71 = Sequence<>.joined(separator:)();
  v73 = v72;

  v74 = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v70;
  sub_10016CAB8(v71, v73, 0xD000000000000015, 0x8000000100702130, v74);
  v103 = v102[0];
  v76 = v87;
  v75 = v88;
  v77 = v89;
  (*(v88 + 16))(v87, v86 + *(v85 + 28), v89);
  if ((*(v75 + 88))(v76, v77) == enum case for IdentityDocumentElementCategoryGroups.RetentionIntent.finite(_:))
  {
    (*(v75 + 96))(v76, v77);
    v78 = *v76;
  }

  else
  {
    (*(v75 + 8))(v76, v77);
    v78 = 0;
  }

  v102[0] = v78;
  v79 = dispatch thunk of CustomStringConvertible.description.getter();
  v81 = v80;
  v82 = v103;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v82;
  sub_10016CAB8(v79, v81, 0xD000000000000018, 0x8000000100702150, v83);
  return v102[0];
}

uint64_t type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation(uint64_t a1)
{
  result = qword_10083BDA0;
  if (!qword_10083BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10015D0C8()
{
  result = qword_10083BC68;
  if (!qword_10083BC68)
  {
    sub_10000B870(&qword_10083BC60, &unk_1006DA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083BC68);
  }

  return result;
}

unint64_t sub_10015D12C()
{
  result = qword_10083BCE8;
  if (!qword_10083BCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083BCE8);
  }

  return result;
}

uint64_t sub_10015D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10015D374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10015D498(uint64_t a1)
{
  type metadata accessor for DigitalPresentmentSessionManager.Proposal(319);
  if (v1 <= 0x3F)
  {
    sub_10015D5AC(319, &qword_10083B668, type metadata accessor for Pass, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10015D5AC(319, &qword_10083BDB0, type metadata accessor for DigitalPresentmentEligibleProposalData, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10015D5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10015D610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10015D65C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(DCPresentmentSessionOptions) init];
  [v13 setSessionEncryptionMode:1];
  [v13 setElementFallbackModes:1];
  if (a4 == 2)
  {
    [v13 setReaderAuthenticationPolicy:1];
  }

  else if (a4 == 1)
  {
    [v13 setReaderAuthenticationPolicy:0];
  }

  else
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v34))
    {
      v15 = swift_slowAlloc();
      v31 = v15;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v15 = 136315138;
      v16 = DCPresentmentTypeToString();
      v30 = v14;
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v10;
      v20 = v19;

      v21 = sub_100141FE4(v18, v20, &v36);

      v23 = v30;
      v22 = v31;
      *(v31 + 1) = v21;
      _os_log_impl(&_mh_execute_header, v23, v34, "Unexpected DCPresentmentType %s passed to DigitalPresentmentSessionManager", v22, 0xCu);
      sub_10000BB78(v33);

      (*(v32 + 8))(v12, v9);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }

  *(v5 + 16) = v35 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006BF520;
  *(v24 + 32) = a2;
  *(v24 + 40) = a3;
  v25 = objc_allocWithZone(DCPresentmentSession);

  v26 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v25 initWithPartitions:isa presentmentType:a4 options:v26];

  *(v5 + 40) = v28;
  return v5;
}

void sub_10015D9A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  __chkstk_darwin(v4 - 8);
  v6 = (&v81 - v5);
  v7 = [a1 credentialIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *a2 = v8;
  a2[1] = v10;
  v11 = [a1 presentmentKeyIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  a2[2] = v12;
  a2[3] = v14;
  v15 = [a1 presentmentPublicKey];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  a2[4] = v17;
  a2[5] = v19;
  v20 = [a1 docType];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  a2[8] = v21;
  a2[9] = v23;
  v24 = [a1 authACL];
  if (v24)
  {
    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  a2[6] = v26;
  a2[7] = v28;
  v29 = [a1 region];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  a2[11] = v31;
  a2[12] = v33;
  v34 = [a1 issuingJurisdiction];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  a2[13] = v36;
  a2[14] = v38;
  v39 = [a1 credentialRevocationInfo];
  if (v39)
  {
    v40 = v39;
    v41 = [v40 identifier];
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = [v40 certificate];
    if (v45)
    {
      v46 = v45;
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xF000000000000000;
    }

    v51 = [v40 URL];
    v52 = type metadata accessor for CredentialRevocationInfo(0);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *v6 = v42;
    v6[1] = v44;
    v6[2] = v47;
    v6[3] = v49;
    (*(*(v52 - 8) + 56))(v6, 0, 1, v52);
  }

  else
  {
    v50 = type metadata accessor for CredentialRevocationInfo(0);
    (*(*(v50 - 8) + 56))(v6, 1, 1, v50);
  }

  v53 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  sub_10016184C(v6, a2 + v53[12]);
  v54 = [a1 readerAuthCertificateData];
  if (v54)
  {
    v55 = v54;
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0xF000000000000000;
  }

  v59 = (a2 + v53[13]);
  *v59 = v56;
  v59[1] = v58;
  v60 = [a1 issuerSignerCertificateData];
  if (v60)
  {
    v61 = v60;
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xF000000000000000;
  }

  v65 = (a2 + v53[14]);
  *v65 = v62;
  v65[1] = v64;
  v66 = [a1 elements];
  sub_100007224(&qword_10083BF80, &qword_1006DA3C0);
  v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = _swiftEmptyArrayStorage;
  v68 = 1 << *(v67 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v67 + 64);
  v71 = (v68 + 63) >> 6;

  v72 = 0;
  while (v70)
  {
    v73 = v72;
LABEL_33:
    v74 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v75 = v74 | (v73 << 6);
    v76 = (*(v67 + 48) + 16 * v75);
    v77 = *v76;
    v78 = v76[1];
    v79 = *(*(v67 + 56) + 8 * v75);

    v80 = sub_10015DF1C(v77, v78, v79);

    sub_10031C978(v80);
  }

  while (1)
  {
    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v73 >= v71)
    {

      a2[10] = v82;
      return;
    }

    v70 = *(v67 + 64 + 8 * v73);
    ++v72;
    if (v70)
    {
      v72 = v73;
      goto LABEL_33;
    }
  }

  __break(1u);
}

char *sub_10015DF1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v52 = a1;
  v53 = a2;
  v4 = type metadata accessor for DCPresentmentRequestedElement.RetentionIntent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for IdentityDocumentElement.RetentionIntent();
  v8 = *(v51 - 8);
  v9 = __chkstk_darwin(v51);
  v50 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = (&v35 - v11);
  v12 = sub_100007224(&qword_10083BF88, &qword_1006DA3C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for IdentityDocumentElement();
  v44 = *(v15 - 8);
  __chkstk_darwin(v15);
  v61 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v59 = a3 & 0xFFFFFFFFFFFFFF8;
    v60 = a3 & 0xC000000000000001;
    v58 = (v5 + 88);
    v57 = enum case for DCPresentmentRequestedElement.RetentionIntent.retain(_:);
    v43 = enum case for DCPresentmentRequestedElement.RetentionIntent.doNotRetain(_:);
    v39 = enum case for DCPresentmentRequestedElement.RetentionIntent.displayOnly(_:);
    v37 = enum case for DCPresentmentRequestedElement.RetentionIntent.unknown(_:);
    v36 = (v5 + 8);
    v56 = (v44 + 56);
    v38 = enum case for IdentityDocumentElement.RetentionIntent.displayOnly(_:);
    v47 = (v8 + 104);
    v42 = enum case for IdentityDocumentElement.RetentionIntent.doNotRetain(_:);
    v41 = (v5 + 96);
    v46 = (v8 + 16);
    v45 = (v8 + 8);
    v8 = 0;
    v54 = (v44 + 32);
    v55 = (v44 + 48);
    v40 = enum case for IdentityDocumentElement.RetentionIntent.retain(_:);
    v63 = _swiftEmptyArrayStorage;
    v48 = v15;
    v49 = v4;
    v65 = v14;
    while (1)
    {
      if (v60)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v59 + 16))
        {
          goto LABEL_26;
        }

        v18 = *(a3 + 8 * v8 + 32);
      }

      v19 = v18;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v66 = v8 + 1;
      v5 = v18;
      DCPresentmentRequestedElement.intentToRetain.getter();
      v20 = (*v58)(v7, v4);
      if (v20 == v57)
      {
        (*v41)(v7, v4);
        *v62 = *v7;
        v21 = v40;
      }

      else
      {
        v22 = v20;
        v21 = v42;
        if (v20 != v43)
        {
          v21 = v38;
          if (v20 != v39)
          {

            if (v22 != v37)
            {
              (*v36)(v7, v4);
            }

            v29 = 1;
            goto LABEL_15;
          }
        }
      }

      v23 = *v47;
      v64 = v8;
      v24 = v62;
      v25 = v51;
      v23(v62, v21, v51);

      v26 = [v19 elementIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = i;

      (*v46)(v50, v24, v25);
      v4 = v49;
      IdentityDocumentElement.init(namespace:identifier:retentionIntent:)();

      v27 = v24;
      v8 = v64;
      v14 = v65;
      v28 = v25;
      v15 = v48;
      (*v45)(v27, v28);
      v29 = 0;
LABEL_15:
      (*v56)(v14, v29, 1, v15);
      if ((*v55)(v14, 1, v15) == 1)
      {
        sub_10000BE18(v14, &qword_10083BF88, &qword_1006DA3C8);
      }

      else
      {
        v30 = *v54;
        (*v54)(v61, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_1003C573C(0, *(v63 + 2) + 1, 1, v63);
        }

        v32 = *(v63 + 2);
        v31 = *(v63 + 3);
        v5 = (v32 + 1);
        if (v32 >= v31 >> 1)
        {
          v63 = sub_1003C573C((v31 > 1), v32 + 1, 1, v63);
        }

        v33 = v63;
        *(v63 + 2) = v5;
        v30(&v33[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v32], v61, v15);
      }

      ++v8;
      if (v66 == i)
      {
        return v63;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10015E5E4()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  v3 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(255);
  v43 = v41;
  v6._countAndFlagsBits = 0xD000000000000040;
  v6._object = 0x80000001007022F0;
  String.append(_:)(v6);
  String.append(_:)(*v0);
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  v7._object = 0x8000000100702340;
  String.append(_:)(v7);
  String.append(_:)(v0[1]);
  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x8000000100702360;
  String.append(_:)(v8);
  if (v0[2]._object >> 60 == 15)
  {
    object = 0xE500000000000000;
    countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v11 = Data.base16EncodedString()();
    countAndFlagsBits = v11._countAndFlagsBits;
    object = v11._object;
  }

  v12 = object;
  String.append(_:)(*&countAndFlagsBits);

  v13._countAndFlagsBits = 0x434168747561202CLL;
  v13._object = 0xEB00000000203A4CLL;
  String.append(_:)(v13);
  if (v0[3]._object >> 60 == 15)
  {
    v14 = 0xE500000000000000;
    v15 = 0x3E6C696E3CLL;
  }

  else
  {
    v16 = Data.base16EncodedString()();
    v15 = v16._countAndFlagsBits;
    v14 = v16._object;
  }

  v17 = v14;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0x707954636F64202CLL;
  v18._object = 0xEB00000000203A65;
  String.append(_:)(v18);
  String.append(_:)(v0[4]);
  v19._countAndFlagsBits = 0x6E656D656C65202CLL;
  v19._object = 0xEC000000203A7374;
  String.append(_:)(v19);
  type metadata accessor for IdentityDocumentElement();
  v20._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x6E6F69676572202CLL;
  v21._object = 0xEA0000000000203ALL;
  String.append(_:)(v21);
  if (v0[6]._countAndFlagsBits)
  {
    v22 = v0[5]._object;
    v23 = v0[6]._countAndFlagsBits;
  }

  else
  {
    v23 = 0xE500000000000000;
    v22 = 0x3E6C696E3CLL;
  }

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000100702380;
  String.append(_:)(v25);
  if (v0[7]._countAndFlagsBits)
  {
    v26 = v0[6]._object;
    v27 = v0[7]._countAndFlagsBits;
  }

  else
  {
    v27 = 0xE500000000000000;
    v26 = 0x3E6C696E3CLL;
  }

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  v29._object = 0x80000001007023A0;
  v29._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v29);
  v30 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  sub_100161774(v0 + *(v30 + 48), v5);
  v31 = type metadata accessor for CredentialRevocationInfo(0);
  if ((*(*(v31 - 8) + 48))(v5, 1, v31) == 1)
  {
    sub_10000BE18(v5, &qword_10083B408, &qword_1006E2490);
    v42 = &type metadata for String;
    *&v41 = 0x3E6C696E3CLL;
    *(&v41 + 1) = 0xE500000000000000;
  }

  else
  {
    v40 = v31;
    v32 = sub_100032DBC(&v39);
    sub_1001617E4(v5, v32, type metadata accessor for CredentialRevocationInfo);
    sub_10001F348(&v39, &v41);
  }

  _print_unlocked<A, B>(_:_:)();
  sub_10000BB78(&v41);
  v33._countAndFlagsBits = 0xD00000000000001DLL;
  v33._object = 0x80000001007023C0;
  String.append(_:)(v33);
  if (*(&v1->_object + *(v30 + 52)) >> 60 == 15)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v35 = Data.base16EncodedString()();
    v2 = v35._countAndFlagsBits;
    v34 = v35._object;
  }

  v36._countAndFlagsBits = v2;
  v36._object = v34;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 41;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  return v43;
}

id sub_10015EA24()
{
  v1 = [objc_allocWithZone(DCPresentmentSelection) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setCredentialIdentifier:v2];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setAuthData:isa];

  [v1 setResponseEncryptionParameters:*(v0 + 32)];
  v4 = *(v0 + 40);
  if (v4)
  {
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v4 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v1 setElementsToPresent:v4];

  return v1;
}

uint64_t sub_10015EB18(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v2[21] = swift_task_alloc();
  sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for ISO18013KnownDocTypes();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10015ECC4, 0, 0);
}

uint64_t sub_10015ECC4()
{
  v1 = v0[16];
  if (*(v1 + 16) == 1)
  {
    v2 = v0[24];
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1006BF520;
    v4 = *(v1 + 32);
    *(v3 + 32) = *(v1 + 24);
    *(v3 + 40) = v4;
    v34 = v3;

    v5 = CredentialPresentmentRequest.allDocumentTypes.getter();
    v6 = v5 + 56;
    v7 = -1;
    v8 = -1 << *(v5 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v5 + 56);
    v10 = (63 - v8) >> 6;
    v11 = (v2 + 48);
    v32 = v2;
    v33 = (v2 + 32);

    v13 = 0;
    v35 = _swiftEmptyArrayStorage;
    while (1)
    {
      v14 = v13;
      if (!v9)
      {
        break;
      }

LABEL_9:
      v16 = v0[22];
      v15 = v0[23];
      v9 &= v9 - 1;

      ISO18013KnownDocTypes.init(rawValue:)();
      if ((*v11)(v16, 1, v15) == 1)
      {
        v12 = sub_10000BE18(v0[22], &qword_10083AE00, &qword_1006D9ED0);
      }

      else
      {
        v17 = *v33;
        (*v33)(v0[25], v0[22], v0[23]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1003C58C8(0, *(v35 + 2) + 1, 1, v35);
        }

        v19 = *(v35 + 2);
        v18 = *(v35 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v23 = sub_1003C58C8((v18 > 1), v19 + 1, 1, v35);
          v20 = v19 + 1;
          v35 = v23;
        }

        v21 = v0[25];
        v22 = v0[23];
        *(v35 + 2) = v20;
        v12 = v17(&v35[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v19], v21, v22);
      }
    }

    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return DCPresentmentSession.interpretCredentialRequest(_:)(v12);
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v14;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    v0[13] = &type metadata for IDCredCredentialStore;
    v0[14] = &off_100815A88;
    v0[10] = v34;
    type metadata accessor for DeveloperTestMDLManager();
    inited = swift_initStackObject();
    v0[26] = inited;
    v26 = v0[13];
    v27 = sub_10001F370((v0 + 10), v26);
    v28 = *(v26 - 8);
    v29 = swift_task_alloc();
    (*(v28 + 16))(v29, v27, v26);
    v0[27] = sub_1001602C4(*v29, v35, inited);
    sub_10000BB78(v0 + 10);

    v30 = swift_task_alloc();
    v0[28] = v30;
    *v30 = v0;
    v30[1] = sub_10015F114;

    return sub_100103DF4();
  }

  else
  {
    v24 = swift_task_alloc();
    v0[30] = v24;
    *v24 = v0;
    v24[1] = sub_10015F2D0;
    v12 = v0[15];

    return DCPresentmentSession.interpretCredentialRequest(_:)(v12);
  }
}

uint64_t sub_10015F114()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10015F5B8;
  }

  else
  {
    v2 = sub_10015F228;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015F228()
{

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_10015F2D0;
  v2 = *(v0 + 120);

  return DCPresentmentSession.interpretCredentialRequest(_:)(v2);
}

uint64_t sub_10015F2D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_10015F738;
  }

  else
  {
    v4 = sub_10015F3E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_10015F3E4()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_100172ED4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 160);
  v6 = *(v0 + 248) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v6 + 8 * v4);
    }

    sub_10015D9A0(v7, *(v0 + 168));
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_100172ED4((v8 > 1), v9 + 1, 1);
    }

    v10 = *(v0 + 168);
    ++v4;
    _swiftEmptyArrayStorage[2] = v9 + 1;
    sub_1001617E4(v10, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  }

  while (v2 != v4);
LABEL_13:

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_10015F5B8()
{

  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10015F738()
{
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10015F8B0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10015F970, 0, 0);
}

uint64_t sub_10015F970()
{
  v1 = *(v0[20] + 40);
  v2 = sub_10015EA24();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10015FAA8;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083BF78, &unk_1006DA3A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015FDB8;
  v0[13] = &unk_100809E68;
  v0[14] = v3;
  [v1 buildCredentialResponseForSelection:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015FAA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_10015FC2C;
  }

  else
  {
    v2 = sub_10015FBB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015FBB8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015FC2C(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  v5 = v1[21];
  swift_willThrow();

  v6._countAndFlagsBits = 0x3663616363376334;
  v7._countAndFlagsBits = 0xD000000000000057;
  v7._object = 0x8000000100702230;
  v6._object = 0xE800000000000000;
  logMilestone(tag:description:)(v6, v7);
  (*(v4 + 104))(v3, enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

uint64_t sub_10015FDB8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000BA08((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10015FE90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10015FF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015FFD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentSessionManager.Proposal(uint64_t a1)
{
  result = qword_10083BF10;
  if (!qword_10083BF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001600D4(uint64_t a1)
{
  sub_100133F18(319, &qword_10083AA40, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_100160234(319, &unk_10083BF20, &type metadata accessor for IdentityDocumentElement, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100133F18(319, &qword_100835140, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100160234(319, &qword_10083B478, type metadata accessor for CredentialRevocationInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100160234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001602C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v150 = type metadata accessor for Logger();
  v6 = *(v150 - 8);
  __chkstk_darwin(v150);
  v152 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013KnownDocTypes();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v153 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v155 = &v148 - v13;
  v14 = __chkstk_darwin(v12);
  v167 = &v148 - v15;
  v16 = __chkstk_darwin(v14);
  v165 = &v148 - v17;
  __chkstk_darwin(v16);
  v19 = &v148 - v18;
  v183[3] = &type metadata for IDCredCredentialStore;
  v183[4] = &off_100815A88;
  v183[0] = a1;
  v148 = a3;
  sub_100020260(v183, a3 + 16);
  v163 = *(a2 + 16);
  if (!v163)
  {
    v21 = &_swiftEmptyDictionarySingleton;
LABEL_58:

    sub_10000BB78(v183);
    result = v148;
    *(v148 + 56) = v21;
    return result;
  }

  v20 = 0;
  v162 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v161 = v9 + 88;
  v164 = enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
  v154 = enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:);
  v151 = enum case for ISO18013KnownDocTypes.photoID(_:);
  v149 = (v6 + 8);
  v160 = (v9 + 104);
  v159 = (v9 + 8);
  v21 = &_swiftEmptyDictionarySingleton;
  v156 = a2;
  v157 = v9;
  v166 = v19;
  v169 = v9 + 16;
  while (v20 < *(a2 + 16))
  {
    v24 = *(v9 + 72);
    v25 = *(v9 + 16);
    v25(v19, v162 + v24 * v20, v8);
    v26 = v165;
    v25(v165, v19, v8);
    v27 = (*(v9 + 88))(v26, v8);
    v28 = v164;
    v170 = v25;
    if (v27 != v164)
    {
      v46 = v154;
      if (v27 != v154)
      {
        v64 = v151;
        if (v27 != v151)
        {
          defaultLogger()();
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v92, v93, "DeveloperTestMDLManager: unknown document type", v94, 2u);
          }

          (*v149)(v152, v150);
          v95 = type metadata accessor for DeveloperTestMDLPayloadBuilder(0);
          v181 = v95;
          v182 = &off_100809300;
          v96 = sub_100032DBC(&v180);
          (*v160)(v96, v164, v8);
          sub_10001F358(&v180, &v178);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v177 = v21;
          v98 = sub_10001F370(&v178, v179);
          __chkstk_darwin(v98);
          v100 = &v148 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v101 + 16))(v100);
          v175 = v95;
          v176 = &off_100809300;
          v102 = sub_100032DBC(&v174);
          sub_1001617E4(v100, v102, type metadata accessor for DeveloperTestMDLPayloadBuilder);
          v103 = sub_10003B480(v166);
          v105 = v21[2];
          v106 = (v104 & 1) == 0;
          v42 = __OFADD__(v105, v106);
          v107 = v105 + v106;
          if (v42)
          {
            goto LABEL_63;
          }

          v108 = v104;
          a2 = v156;
          if (v21[3] >= v107)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_41;
            }

            v136 = v103;
            sub_1001705E0();
            v103 = v136;
            v21 = v177;
            if ((v108 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_42:
            v114 = (v21[7] + 40 * v103);
            sub_10000BB78(v114);
            sub_10001F358(&v174, v114);
            v19 = v166;
          }

          else
          {
            sub_100167D08(v107, isUniquelyReferenced_nonNull_native);
            v103 = sub_10003B480(v166);
            if ((v108 & 1) != (v109 & 1))
            {
              goto LABEL_68;
            }

LABEL_41:
            v21 = v177;
            if (v108)
            {
              goto LABEL_42;
            }

LABEL_54:
            v137 = v24;
            v138 = v103;
            v139 = sub_10001F370(&v174, v175);
            __chkstk_darwin(v139);
            v141 = &v148 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v142 + 16))(v141);
            v172 = v95;
            v173 = &off_100809300;
            v143 = sub_100032DBC(&v171);
            sub_1001617E4(v141, v143, type metadata accessor for DeveloperTestMDLPayloadBuilder);
            v21[(v138 >> 6) + 8] |= 1 << v138;
            v19 = v166;
            v170(v21[6] + v138 * v137, v166, v8);
            sub_10001F358(&v171, v21[7] + 40 * v138);
            v144 = v21[2];
            v42 = __OFADD__(v144, 1);
            v145 = v144 + 1;
            if (v42)
            {
              goto LABEL_66;
            }

            v21[2] = v145;
            sub_10000BB78(&v174);
            a2 = v156;
          }

          v146 = *v159;
          (*v159)(v19, v8);
          sub_10000BB78(&v178);
          v146(v165, v8);
          v9 = v157;
          goto LABEL_5;
        }

        v168 = v24;
        v65 = v153;
        v25(v153, v19, v8);
        v66 = type metadata accessor for DeveloperTestPhotoIDPayloadBuilder(0);
        v181 = v66;
        v182 = &off_100809310;
        v67 = sub_100032DBC(&v180);
        (*v160)(v67, v64, v8);
        sub_10001F358(&v180, &v178);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v177 = v21;
        v69 = sub_10001F370(&v178, v179);
        v158 = &v148;
        __chkstk_darwin(v69);
        v71 = &v148 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v72 + 16))(v71);
        v175 = v66;
        v176 = &off_100809310;
        v73 = sub_100032DBC(&v174);
        sub_1001617E4(v71, v73, type metadata accessor for DeveloperTestPhotoIDPayloadBuilder);
        v74 = sub_10003B480(v65);
        v76 = v21[2];
        v77 = (v75 & 1) == 0;
        v42 = __OFADD__(v76, v77);
        v78 = v76 + v77;
        if (v42)
        {
          goto LABEL_64;
        }

        v79 = v75;
        if (v21[3] >= v78)
        {
          v81 = v168;
          if (v68)
          {
            goto LABEL_38;
          }

          v125 = v74;
          sub_1001705E0();
          v74 = v125;
          v21 = v177;
          if ((v79 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_39:
          v112 = (v21[7] + 40 * v74);
          sub_10000BB78(v112);
          sub_10001F358(&v174, v112);
          v113 = *v159;
          (*v159)(v153, v8);
          v19 = v166;
          v113(v166, v8);
        }

        else
        {
          sub_100167D08(v78, v68);
          v74 = sub_10003B480(v153);
          v81 = v168;
          if ((v79 & 1) != (v80 & 1))
          {
            goto LABEL_68;
          }

LABEL_38:
          v21 = v177;
          if (v79)
          {
            goto LABEL_39;
          }

LABEL_50:
          v126 = v74;
          v127 = sub_10001F370(&v174, v175);
          __chkstk_darwin(v127);
          v129 = &v148 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v130 + 16))(v129);
          v172 = v66;
          v173 = &off_100809310;
          v131 = sub_100032DBC(&v171);
          sub_1001617E4(v129, v131, type metadata accessor for DeveloperTestPhotoIDPayloadBuilder);
          v21[(v126 >> 6) + 8] |= 1 << v126;
          v132 = v153;
          v170(v21[6] + v126 * v81, v153, v8);
          sub_10001F358(&v171, v21[7] + 40 * v126);
          v133 = *v159;
          (*v159)(v132, v8);
          v19 = v166;
          v133(v166, v8);
          v134 = v21[2];
          v42 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v42)
          {
            goto LABEL_67;
          }

          v21[2] = v135;
          sub_10000BB78(&v174);
          v9 = v157;
        }

        sub_10000BB78(&v178);
        a2 = v156;
        goto LABEL_5;
      }

      v168 = v24;
      v47 = v155;
      v25(v155, v19, v8);
      v48 = type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder(0);
      v181 = v48;
      v182 = &off_1008092C8;
      v49 = sub_100032DBC(&v180);
      (*v160)(v49, v46, v8);
      sub_10001F358(&v180, &v178);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v21;
      v51 = sub_10001F370(&v178, v179);
      __chkstk_darwin(v51);
      v53 = &v148 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v53);
      v175 = v48;
      v176 = &off_1008092C8;
      v55 = sub_100032DBC(&v174);
      sub_1001617E4(v53, v55, type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder);
      v57 = sub_10003B480(v47);
      v58 = v21[2];
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_61;
      }

      v61 = v56;
      if (v21[3] >= v60)
      {
        if (v50)
        {
          v21 = v177;
          if ((v56 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_1001705E0();
          v21 = v177;
          if ((v61 & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        sub_100167D08(v60, v50);
        v62 = sub_10003B480(v155);
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_68;
        }

        v57 = v62;
        v21 = v177;
        if ((v61 & 1) == 0)
        {
LABEL_46:
          v116 = sub_10001F370(&v174, v175);
          __chkstk_darwin(v116);
          v118 = &v148 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v119 + 16))(v118);
          v172 = v48;
          v173 = &off_1008092C8;
          v120 = sub_100032DBC(&v171);
          sub_1001617E4(v118, v120, type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder);
          v21[(v57 >> 6) + 8] |= 1 << v57;
          v121 = v155;
          v170(v21[6] + v57 * v168, v155, v8);
          sub_10001F358(&v171, v21[7] + 40 * v57);
          v122 = *v159;
          (*v159)(v121, v8);
          v19 = v166;
          v122(v166, v8);
          v123 = v21[2];
          v42 = __OFADD__(v123, 1);
          v124 = v123 + 1;
          if (v42)
          {
            goto LABEL_65;
          }

          v21[2] = v124;
          sub_10000BB78(&v174);
          goto LABEL_48;
        }
      }

      v110 = (v21[7] + 40 * v57);
      sub_10000BB78(v110);
      sub_10001F358(&v174, v110);
      v111 = *v159;
      (*v159)(v155, v8);
      v19 = v166;
      v111(v166, v8);
LABEL_48:
      sub_10000BB78(&v178);
      a2 = v156;
      v9 = v157;
      goto LABEL_5;
    }

    v168 = v24;
    v158 = v20;
    v29 = v167;
    v25(v167, v19, v8);
    v30 = type metadata accessor for DeveloperTestMDLPayloadBuilder(0);
    v181 = v30;
    v182 = &off_100809300;
    v31 = sub_100032DBC(&v180);
    (*v160)(v31, v28, v8);
    sub_10001F358(&v180, &v178);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v21;
    v33 = sub_10001F370(&v178, v179);
    __chkstk_darwin(v33);
    v35 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35);
    v175 = v30;
    v176 = &off_100809300;
    v37 = sub_100032DBC(&v174);
    sub_1001617E4(v35, v37, type metadata accessor for DeveloperTestMDLPayloadBuilder);
    v38 = sub_10003B480(v29);
    v40 = v21[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_60;
    }

    v44 = v39;
    if (v21[3] >= v43)
    {
      if (v32)
      {
        v21 = v177;
        if ((v39 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v115 = v38;
        sub_1001705E0();
        v38 = v115;
        v21 = v177;
        if ((v44 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_100167D08(v43, v32);
      v38 = sub_10003B480(v167);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_69;
      }

      v21 = v177;
      if ((v44 & 1) == 0)
      {
LABEL_26:
        v82 = v38;
        v83 = sub_10001F370(&v174, v175);
        __chkstk_darwin(v83);
        v85 = &v148 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v86 + 16))(v85);
        v172 = v30;
        v173 = &off_100809300;
        v87 = sub_100032DBC(&v171);
        sub_1001617E4(v85, v87, type metadata accessor for DeveloperTestMDLPayloadBuilder);
        v21[(v82 >> 6) + 8] |= 1 << v82;
        v88 = v167;
        v170(v21[6] + v82 * v168, v167, v8);
        sub_10001F358(&v171, v21[7] + 40 * v82);
        v89 = *v159;
        (*v159)(v88, v8);
        v19 = v166;
        v89(v166, v8);
        v90 = v21[2];
        v42 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v42)
        {
          goto LABEL_62;
        }

        v21[2] = v91;
        sub_10000BB78(&v174);
        a2 = v156;
        goto LABEL_4;
      }
    }

    v22 = (v21[7] + 40 * v38);
    sub_10000BB78(v22);
    sub_10001F358(&v174, v22);
    v23 = *v159;
    (*v159)(v167, v8);
    v19 = v166;
    v23(v166, v8);
LABEL_4:
    sub_10000BB78(&v178);
    v9 = v157;
    v20 = v158;
LABEL_5:
    v20 = (v20 + 1);
    if (v163 == v20)
    {
      goto LABEL_58;
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
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100161774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001617E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016184C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001618CC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = type metadata accessor for RecipientEncryptionCertificate();
  v6 = __chkstk_darwin(v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v28 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 56) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100161B8C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1001750BC(v12, v10, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v14 = a1(v10);
      if (v3)
      {
        return sub_100174F88(v10, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      if (v14)
      {
        break;
      }

      sub_100174F88(v10, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100175124(v10, v18, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

_OWORD *sub_100161D84@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSet.makeIterator()();
  sub_10017518C(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v13)
    {
      result = (*(v6 + 8))(v8, v5);
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    sub_10001F348(&v12, v11);
    v9 = a1(v11);
    if (v2)
    {
      sub_10000BB78(v11);
      return (*(v6 + 8))(v8, v5);
    }

    if (v9)
    {
      break;
    }

    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v8, v5);
  return sub_10001F348(v11, a2);
}

uint64_t sub_100161F54@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_10016215C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_100162330(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 373) = a2;
  *(v5 + 144) = a1;
  *(v5 + 152) = a3;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 176) = v6;
  *(v5 + 184) = *(v6 - 8);
  *(v5 + 192) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  sub_100007224(&qword_10083BFF8, &qword_1006DA4D0);
  *(v5 + 248) = swift_task_alloc();
  v8 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost.Config();
  *(v5 + 280) = v9;
  *(v5 + 288) = *(v9 - 8);
  *(v5 + 296) = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  *(v5 + 304) = v10;
  *(v5 + 312) = *(v10 - 8);
  *(v5 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_1001625C4, 0, 0);
}

uint64_t sub_1001625C4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  static DaemonSignposts.requestDocumentSheet.getter();
  DIPSignpost.init(_:)();
  v6 = *(v4 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_eligibleProposalData);
  *(swift_task_alloc() + 16) = v5;
  sub_100161B8C(sub_100164EC0, v6, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    sub_10000BE18(*(v0 + 248), &qword_10083BFF8, &qword_1006DA4D0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017518C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
LABEL_4:

    v20 = *(v0 + 8);

    return v20();
  }

  v13 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 160);
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 373);
  sub_100175124(*(v0 + 248), v13, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v19 = sub_1001633CC(v13, *(v13 + *(v14 + 20)), v17, v18, v16, v15, *v13, v13[1]);
  *(v0 + 328) = v19;
  v22 = v19;
  v23 = [objc_allocWithZone(PKPaymentAuthorizationCoordinator) initWithPaymentRequest:v19];
  *(v0 + 336) = v23;
  if (!v23)
  {
    v43 = *(v0 + 312);
    v44 = *(v0 + 304);
    v45 = *(v0 + 320);
    v46 = *(v0 + 272);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.dpAuthorizationCoordinatorCreateFailure(_:), *(v0 + 176));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017518C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v43 + 8))(v45, v44);
    sub_100174F88(v46, type metadata accessor for DigitalPresentmentEligibleProposalData);
    goto LABEL_4;
  }

  v24 = v23;
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "DigitalPresentmentUIPresenter.present: Created PKPaymentAuthorizedCoordinator.", v27, 2u);
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 200);
  v30 = *(v0 + 208);
  v31 = *(v0 + 168);

  v32 = *(v30 + 8);
  v32(v28, v29);
  v33 = *(v31 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_privateDelegate);
  [v24 _setPrivateDelegate:v33];
  [v24 setDelegate:v33];
  v34 = OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator;
  *(v0 + 344) = OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator;
  v35 = *(v31 + v34);
  *(v31 + v34) = v24;
  v36 = v24;

  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "DigitalPresentmentUIPresenter.present: Calling coordinator.present()", v39, 2u);
  }

  v40 = *(v0 + 232);
  v41 = *(v0 + 200);

  v32(v40, v41);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 372;
  *(v0 + 24) = sub_100162D08;
  v42 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&qword_10083C000, &qword_1006DA4D8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100164264;
  *(v0 + 104) = &unk_100809F48;
  *(v0 + 112) = v42;
  [v36 presentWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100162D08()
{

  return _swift_task_switch(sub_100162DE8, 0, 0);
}

uint64_t sub_100162DE8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 168);
  *(v0 + 374) = *(v0 + 372);
  v3 = *(v2 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_signpostManager);
  *(v0 + 352) = v3;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  *(v0 + 368) = *(v1 + 80);
  v4 = swift_allocObject();
  *(v0 + 360) = v4;
  *(v4 + 16) = xmmword_1006BF740;
  static DaemonSignposts.WebPresentment.firstPartySelection.getter();
  static DaemonSignposts.WebPresentment.firstPartyBypass.getter();

  return _swift_task_switch(sub_100162ECC, v3, 0);
}

uint64_t sub_100162ECC()
{
  sub_10051B0E0(*(v0 + 360));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100162F78, 0, 0);
}

uint64_t sub_100162F78()
{
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 374);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "DigitalPresentmentUIPresenter.present: Callback invoked with result=%{BOOL}d", v4, 8u);
  }

  v5 = *(v0 + 374);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);

  v9 = *(v8 + 8);
  v9(v6, v7);
  if (v5)
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 336);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  }

  else
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      _os_log_impl(&_mh_execute_header, v12, v13, "DigitalPresentmentUIPresenter.present: Invocation to display presentment sheet called completion with result=%{BOOL}d, canceling", v14, 8u);
    }

    v15 = *(v0 + 336);
    v16 = *(v0 + 344);
    v26 = *(v0 + 320);
    v17 = *(v0 + 312);
    v24 = *(v0 + 328);
    v25 = *(v0 + 304);
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 168);

    v9(v18, v19);
    v21 = *(v20 + v16);
    *(v20 + v16) = 0;

    sub_1001642C0();
    (*(v17 + 8))(v26, v25);
  }

  sub_100174F88(*(v0 + 272), type metadata accessor for DigitalPresentmentEligibleProposalData);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10016324C(uint64_t *a1)
{
  v2 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = IdentityDocumentPresentmentConfiguration.eligibleCredentials.getter();
  if (*(v8 + 16))
  {
    (*(v3 + 16))(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    v9 = IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    if (v6 == v9 && v7 == v11)
    {

      v13 = 1;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v13 = 0;
  }

  return v13 & 1;
}

id sub_1001633CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v119 = a7;
  v120 = a8;
  v108 = a5;
  v109 = a6;
  v113 = a4;
  v127 = a3;
  v107 = a2;
  v12 = type metadata accessor for DIPError.Code();
  v110 = *(v12 - 8);
  v111 = v12;
  __chkstk_darwin(v12);
  v112 = &v97[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v118 = &v97[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  __chkstk_darwin(v16 - 8);
  v117 = &v97[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation(0);
  __chkstk_darwin(v104);
  v19 = &v97[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin(v20);
  v125 = &v97[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty();
  v126 = *(v124 - 8);
  v22 = __chkstk_darwin(v124);
  v103 = &v97[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v114 = &v97[-v24];
  v25 = type metadata accessor for Logger();
  v122 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v97[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = [objc_allocWithZone(PKPaymentRequest) init];
  v121 = v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v28 setExternalizedContext:isa];

  [v28 setRequestType:13];
  [v28 setConfirmationStyle:1];
  v30 = *(a1 + 56);
  if (v30 >> 60 == 15)
  {
    v101 = v19;
    v102 = a1;
  }

  else
  {
    v123 = v28;
    v31 = *(a1 + 48);
    type metadata accessor for SecAccessControl(0);
    sub_10000B8B8(v31, v30);
    v32 = static SecAccessControlRef.fromData(_:)();
    if (v9)
    {
      sub_10000BD94(v31, v30);
      v28 = v123;

      return v28;
    }

    v33 = v32;
    v101 = v19;
    v102 = a1;
    v128 = 0;
    v34 = v123;
    [v123 setAccesssControlRef:v32];

    defaultLogger()();
    v35 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v99 = v38;
      v100 = swift_slowAlloc();
      *&v130 = v100;
      *v38 = 136315138;
      v39 = [v35 accesssControlRef];
      *&v129[0] = v39;
      sub_100007224(&qword_10083C028, &unk_1006DA500);
      v98 = v37;
      v40 = Optional.debugDescription.getter();
      v42 = v41;

      v43 = sub_100141FE4(v40, v42, &v130);

      v44 = v99;
      *(v99 + 1) = v43;
      _os_log_impl(&_mh_execute_header, v36, v98, "DigitalPresentmentUIPresenter SecAccessControl = %s", v44, 0xCu);
      sub_10000BB78(v100);
    }

    sub_10000BD94(v31, v30);

    v122[1](v27, v25);
    v10 = v128;
    v28 = v123;
  }

  sub_100007224(&qword_10083C010, &qword_1006DA4E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *&v130 = static IdentityDocumentPresentmentConfiguration.paymentRequestUserInfoKey.getter();
  *(&v130 + 1) = v46;
  AnyHashable.init<A>(_:)();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for IdentityDocumentPresentmentConfiguration();
  sub_10017518C(&qword_10083C018, &type metadata accessor for IdentityDocumentPresentmentConfiguration, &protocol conformance descriptor for IdentityDocumentPresentmentConfiguration);
  v47 = v10;
  v48 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v50 = v49;

  v128 = v47;
  if (v47)
  {

    sub_1000279C8(inited + 32);
    swift_setDeallocating();
    sub_100007224(&qword_100834720, &qword_1006DA4F0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v50;
    sub_10003DB20(inited);
    swift_setDeallocating();
    sub_10000BE18(inited + 32, &qword_100834720, &qword_1006DA4F0);
    v51 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v28 setClientViewSourceParameter:v51];

    [v28 setPaymentContentItems:0];
    v52 = [v28 accesssControlRef];
    if (v52)
    {

      v53 = v113;
      v54 = v121;
      sub_100164438(v113);
      v55 = v53;
      v56 = String._bridgeToObjectiveC()();

      [v28 setLocalizedPhysicalButtonConfirmationTitle:v56];

      if (v55 == 1)
      {
        static DigitalPresentmentLocalizedString.touchIDRetry.getter();
        v57 = String._bridgeToObjectiveC()();

        [v28 setLocalizedBiometricRetryMessage:v57];

        static DigitalPresentmentLocalizedString.unboundFingerprint.getter();
        v58 = String._bridgeToObjectiveC()();
      }

      else
      {
        [v28 setLocalizedBiometricRetryMessage:0];
        v58 = 0;
      }

      v60 = v115;
      v59 = v116;
      [v28 setLocalizedUnboundBiometricMessage:v58];

      static DigitalPresentmentLocalizedString.authenticationFailedTitle.getter();
      v61 = String._bridgeToObjectiveC()();

      [v28 setLocalizedErrorMessage:v61];

      static DigitalPresentmentLocalizedString.presentingSecurely.getter();
      v62 = String._bridgeToObjectiveC()();

      [v28 setLocalizedAuthorizingTitle:v62];

      LODWORD(v123) = 1;
      [v28 setDisablePasscodeFallback:1];
      v63 = v114;
      IdentityDocumentPresentmentConfiguration.relyingParty.getter();
      v64 = v125;
      IdentityDocumentPresentmentConfiguration.RelyingParty.relyingPartyType.getter();
      v65 = *(v126 + 8);
      v126 += 8;
      v122 = v65;
      (v65)(v63, v124);
      v66 = (*(v60 + 88))(v64, v59);
      v67 = v117;
      v68 = v118;
      if (v66 != enum case for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.firstPartyService(_:))
      {
        if (v66 == enum case for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.application(_:))
        {
          LODWORD(v123) = 0;
        }

        else
        {
          LODWORD(v123) = 2 * (v66 == enum case for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.web(_:));
        }
      }

      (*(v60 + 8))(v125, v59);
      sub_1001750BC(v102, v67, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v69 = *(v54 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_eligibleProposalData);

      v70 = v128;
      sub_100164520(v119, v120, v68);
      v128 = v70;
      if (v70)
      {
        sub_100174F88(v67, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      }

      else
      {
        v71 = v101;
        sub_100175124(v67, v101, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
        v72 = v104;
        v73 = v105;
        v74 = v106;
        *(v71 + *(v104 + 20)) = v107;
        *(v71 + *(v72 + 24)) = v69;
        (*(v73 + 32))(v71 + *(v72 + 28), v68, v74);

        v75 = v103;
        IdentityDocumentPresentmentConfiguration.relyingParty.getter();
        v127 = IdentityDocumentPresentmentConfiguration.RelyingParty.name.getter();
        v77 = v76;
        (v122)(v75, v124);
        v78 = *(v54 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_archivedSessionToken + 8);
        v125 = *(v54 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_archivedSessionToken);
        v126 = v78;
        sub_100007224(&qword_10083C020, &qword_1006DA4F8);
        v79 = swift_initStackObject();
        v80 = PKPaymentRequestClientAnalyticsParametersProductTypeKey;
        *(v79 + 32) = PKPaymentRequestClientAnalyticsParametersProductTypeKey;
        *(v79 + 16) = xmmword_1006BFE10;
        *(v79 + 40) = 0x797469746E656469;
        *(v79 + 48) = 0xE800000000000000;
        v81 = PKPaymentRequestClientAnalyticsParametersPageTagKey;
        *(v79 + 64) = &type metadata for String;
        *(v79 + 72) = v81;
        *(v79 + 80) = 0xD000000000000015;
        *(v79 + 88) = 0x80000001007026C0;
        v82 = PKPaymentRequestClientAnalyticsParametersSubjectKey;
        *(v79 + 104) = &type metadata for String;
        *(v79 + 112) = v82;
        strcpy((v79 + 120), "identityInApp");
        *(v79 + 134) = -4864;
        v83 = PKPaymentRequestClientAnalyticsParametersRemoteAuthorizationStartPayloadKey;
        *(v79 + 144) = &type metadata for String;
        *(v79 + 152) = v83;
        v84 = v80;
        v85 = v81;
        v86 = v82;
        v87 = v83;
        v88 = v71;
        v89 = sub_10015C624(v71, v108, v109, v127, v77, v123);
        v90 = v126;

        *(v79 + 184) = sub_100007224(&unk_10084A230, &qword_1006C0F50);
        *(v79 + 160) = v89;
        v91 = sub_10003EDEC(v79);
        swift_setDeallocating();
        sub_100007224(&qword_100834710, &qword_1006C0010);
        swift_arrayDestroy();
        if (v90 >> 60 != 15)
        {
          v92 = PKPaymentRequestClientAnalyticsParametersArchivedParentTokenKey;
          v131 = &type metadata for Data;
          v93 = v125;
          *&v130 = v125;
          *(&v130 + 1) = v90;
          sub_10001F348(&v130, v129);
          sub_1000363B4(v93, v90);
          sub_10000B8B8(v93, v90);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v132 = v91;
          sub_10016D780(v129, v92, isUniquelyReferenced_nonNull_native);
          sub_10000BD94(v93, v90);
        }

        type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
        sub_10017518C(&qword_100833218, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1006BF47C);
        v95 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v28 setClientAnalyticsParameters:v95];

        sub_100174F88(v88, type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation);
      }
    }

    else
    {
      (*(v110 + 104))(v112, enum case for DIPError.Code.dpAccesssControlRefNil(_:), v111);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017518C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return v28;
}

uint64_t sub_100164264(uint64_t a1, char a2)
{
  v3 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

void sub_1001642C0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "DigitalPresentmentUIPresenter cancel invoked.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_100164AC4();
  v7._countAndFlagsBits = 0x3665663035323264;
  v8._object = 0x80000001007024B0;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0xD000000000000015;
  logMilestone(tag:description:)(v7, v8);
}

uint64_t sub_100164438(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a1 != 2)
  {
    sub_10000BA08((v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider), *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider + 24));
    if ((dispatch thunk of DeviceInformationProviding.isFaceIDDevice.getter() & 1) == 0)
    {
LABEL_13:

      return static DigitalPresentmentLocalizedString.touchIDConfirmationTitle.getter();
    }

    goto LABEL_10;
  }

  sub_10000BA08((v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider), *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider + 24));
  if (dispatch thunk of DeviceInformationProviding.isFaceIDDevice.getter())
  {
LABEL_10:

    return static DigitalPresentmentLocalizedString.faceIDConfirmationTitle.getter();
  }

  return static DigitalPresentmentLocalizedString.passcodeConfirmationTitle.getter();
}

uint64_t sub_100164520@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a3;
  v51 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = __chkstk_darwin(v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v36 - v9;
  v55 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v10 = *(v55 - 8);
  v11 = __chkstk_darwin(v55);
  v53 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v40 = &v36 - v14;
  __chkstk_darwin(v13);
  v54 = &v36 - v15;
  result = IdentityDocumentPresentmentConfiguration.eligibleCredentials.getter();
  v17 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v18 = 0;
    v49 = v10 + 16;
    v46 = (v10 + 8);
    v52 = (v10 + 32);
    v19 = _swiftEmptyArrayStorage;
    v47 = result;
    v48 = a1;
    while (1)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v21 = *(v10 + 72);
      (*(v10 + 16))(v54, v17 + v20 + v21 * v18, v55);
      if (IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter() == a1 && v22 == v51)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_10;
      }

      result = (*v46)(v54, v55);
LABEL_4:
      if (v50 == ++v18)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v24 = v10;
    v25 = *v52;
    (*v52)(v53, v54, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100172F5C(0, v19[2] + 1, 1);
      v19 = v56;
    }

    v28 = v19[2];
    v27 = v19[3];
    if (v28 >= v27 >> 1)
    {
      sub_100172F5C((v27 > 1), v28 + 1, 1);
      v19 = v56;
    }

    v19[2] = v28 + 1;
    result = (v25)(v19 + v20 + v28 * v21, v53, v55);
    v10 = v24;
    v17 = v47;
    a1 = v48;
    goto LABEL_4;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_16:

  if (v19[2])
  {
    v29 = v40;
    v30 = v55;
    (*(v10 + 16))(v40, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v55);

    v31 = v41;
    IdentityDocumentPresentmentConfiguration.Credential.elementCategoryGroups.getter();
    (*(v10 + 8))(v29, v30);
    v32 = v42;
    v33 = v43;
    v34 = v31;
    v35 = v44;
    (*(v43 + 32))(v42, v34, v44);
    IdentityDocumentElementCategoryGroups.retainedElementRetentionIntent.getter();
    return (*(v33 + 8))(v32, v35);
  }

  else
  {

    (*(v37 + 104))(v39, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017518C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

id sub_100164AC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DigitalPresentmentUIPresenter dismiss invoked.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  result = *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator);
  if (result)
  {
    return [result dismissWithCompletion:0];
  }

  return result;
}

id sub_100164C54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100164D78@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X5>, unint64_t a4@<X6>, uint64_t *a5@<X8>, void *a6@<X0>, void *a7@<X3>, uint64_t a8@<X4>, uint64_t a9@<X7>)
{
  v14 = sub_100174DAC(a6, a1, a2, a7, a8, a3, a4, a9);
  sub_10000BD94(a3, a4);
  result = sub_10000B90C(a1, a2);
  *a5 = v14;
  return result;
}

uint64_t sub_100164DDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_100162330(a1, a2, a3, a4);
}

Swift::Int sub_100164EE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100007224(&qword_100834990, &qword_1006DA820);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100175124(v28, v41, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      }

      else
      {
        sub_1001750BC(v28, v41, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100175124(v41, *(v9 + 56) + v27 * v17, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_100165294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100833A48, &unk_1006BF8B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1001654FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834898, &qword_1006C00D0);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100165918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DIPError.PropertyKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007224(&unk_10084A1F0, &unk_1006E9F80);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_10001F358((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_100020260(*(v9 + 56) + 40 * v23, v43);
      }

      sub_10017518C(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_10001F358(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100165CFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834738, &unk_1006DA620);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_10001F358(v24, v34);
      }

      else
      {
        sub_100020260(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10001F358(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100165FC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100849420, &qword_1006DA510);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100166280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_1008346F8, &qword_1006DA530);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10001F348(v24, v34);
      }

      else
      {
        sub_10001F2EC(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10001F348(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100166538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_1008348F8, &qword_1006C0110);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10016679C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IQCType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007224(&qword_100834918, &qword_1006C0120);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_10017518C(&qword_100834900, &type metadata accessor for IQCType, &protocol conformance descriptor for IQCType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100166B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C228, &unk_1006DA800);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100166DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100007224(&qword_1008348D8, &unk_1006DA710);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100175124(v28, v41, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      }

      else
      {
        sub_1001750BC(v28, v41, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100175124(v41, *(v9 + 56) + v27 * v17, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_100167164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C238, &qword_1006DA830);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {

        sub_10000B8B8(v25, v26);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100167438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C240, &qword_1006DA838);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 152 * v21;
      if (v41)
      {
        v43 = *v25;
        v42 = *(v25 + 16);
        v48 = *(v25 + 24);
        v44 = *(v25 + 32);
        v45 = *(v25 + 8);
        v46 = *(v25 + 40);
        v47 = *(v25 + 56);
        v49 = *(v25 + 72);
        v50 = *(v25 + 88);
        v51 = *(v25 + 104);
        v52 = *(v25 + 105);
        v53 = *(v25 + 106);
        v54 = *(v25 + 107);
        v55 = *(v25 + 108);
        v56 = *(v25 + 109);
        v57 = *(v25 + 112);
        v58 = *(v25 + 120);
        v59 = *(v25 + 121);
        v60 = *(v25 + 122);
        v63 = *(v25 + 136);
        v61 = *(v25 + 128);
        v62 = *(v25 + 144);
      }

      else
      {
        v26 = *(v25 + 16);
        v65 = *v25;
        v66 = v26;
        v27 = *(v25 + 80);
        v29 = *(v25 + 32);
        v28 = *(v25 + 48);
        *&v67[32] = *(v25 + 64);
        *&v67[48] = v27;
        *v67 = v29;
        *&v67[16] = v28;
        v31 = *(v25 + 112);
        v30 = *(v25 + 128);
        v32 = *(v25 + 96);
        v70 = *(v25 + 144);
        v68 = v31;
        v69 = v30;
        *&v67[64] = v32;
        v62 = v70;
        v63 = *(&v30 + 1);
        v61 = v30;
        v59 = BYTE9(v31);
        v60 = BYTE10(v31);
        v58 = BYTE8(v31);
        v57 = v31;
        v55 = BYTE12(v32);
        v56 = BYTE13(v32);
        v53 = BYTE10(v32);
        v54 = BYTE11(v32);
        v51 = BYTE8(v32);
        v52 = BYTE9(v32);
        v49 = *&v67[40];
        v50 = *&v67[56];
        v46 = *&v67[8];
        v47 = *&v67[24];
        v48 = *(&v66 + 1);
        v44 = v29;
        v45 = *(&v65 + 1);
        v42 = v66;
        v43 = v65;

        sub_1000B2D34(&v65, v64);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 152 * v15;
      *v17 = v43;
      *(v17 + 8) = v45;
      *(v17 + 16) = v42;
      *(v17 + 24) = v48;
      *(v17 + 32) = v44;
      *(v17 + 56) = v47;
      *(v17 + 40) = v46;
      *(v17 + 88) = v50;
      *(v17 + 72) = v49;
      *(v17 + 104) = v51;
      *(v17 + 105) = v52;
      *(v17 + 106) = v53;
      *(v17 + 107) = v54;
      *(v17 + 108) = v55;
      *(v17 + 109) = v56;
      *(v17 + 112) = v57;
      *(v17 + 120) = v58;
      *(v17 + 121) = v59;
      *(v17 + 122) = v60;
      *(v17 + 128) = v61;
      *(v17 + 136) = v63;
      *(v17 + 144) = v62;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1001678C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834978, &qword_1006C0160);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 152 * v21);
      if (v43)
      {
        v47 = *v26;
        v44 = v26[1];
        v46 = *(v26 + 16);
        v48 = *(v26 + 5);
        v45 = *(v26 + 3);
        v49 = *(v26 + 56);
        v51 = *(v26 + 57);
        v50 = *(v26 + 4);
        v54 = *(v26 + 7);
        v52 = *(v26 + 5);
        v53 = *(v26 + 6);
        v56 = v26[17];
        v57 = v26[16];
        v55 = v26[18];
      }

      else
      {
        v27 = *(v26 + 1);
        v59 = *v26;
        *v60 = v27;
        v28 = *(v26 + 5);
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        v61 = *(v26 + 4);
        v62 = v28;
        *&v60[16] = v30;
        *&v60[32] = v29;
        v32 = *(v26 + 7);
        v31 = *(v26 + 8);
        v33 = *(v26 + 6);
        v66 = v26[18];
        v64 = v32;
        v65 = v31;
        v63 = v33;
        v56 = *(&v31 + 1);
        v57 = v31;
        v55 = v66;
        v53 = v33;
        v54 = v32;
        v52 = v62;
        v50 = v61;
        v51 = v60[41];
        v49 = v60[40];
        v48 = *&v60[24];
        v45 = *&v60[8];
        v46 = v60[0];
        v44 = *(&v59 + 1);
        v47 = v59;

        sub_1000F059C(&v59, v58);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 152 * v15;
      *v17 = v47;
      *(v17 + 8) = v44;
      *(v17 + 16) = v46;
      *(v17 + 40) = v48;
      *(v17 + 24) = v45;
      *(v17 + 56) = v49;
      *(v17 + 57) = v51;
      *(v17 + 64) = v50;
      *(v17 + 80) = v52;
      *(v17 + 96) = v53;
      *(v17 + 112) = v54;
      *(v17 + 128) = v57;
      *(v17 + 136) = v56;
      *(v17 + 144) = v55;
      ++*(v7 + 16);
      v5 = v42;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100167D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007224(&qword_10083C130, &qword_1006DA6B8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_10001F358((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_100020260(*(v9 + 56) + 40 * v23, v43);
      }

      sub_10017518C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_10001F358(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_1001680EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100007224(&qword_100834730, &qword_1006C0028);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100175124(v28, v41, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      else
      {
        sub_1001750BC(v28, v41, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100175124(v41, *(v9 + 56) + v27 * v17, type metadata accessor for DigitalPresentmentEligibleProposalData);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1001684B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007224(&qword_10083C218, &qword_1006DA7E8);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10017518C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

_OWORD *sub_100168890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834708, &qword_1006C0008);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10001F348(v22, v36);
      }

      else
      {
        sub_10001F2EC(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_10001F348(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100168B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for DIPSignpost();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost.Config();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100007224(&qword_10083C108, &qword_1006DA688);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10017518C(&qword_100834878, &type metadata accessor for DIPSignpost.Config, &protocol conformance descriptor for DIPSignpost.Config);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_100169008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  sub_100007224(&qword_10083C1F8, &qword_1006DA7B8);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v35 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v36)
      {
        sub_100174FE8(v27, v37);
      }

      else
      {
        sub_10000BBC4(v27, v37, &qword_1008335C0, &qword_1006DA7B0);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = sub_100174FE8(v37, *(v9 + 56) + v26 * v20);
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

Swift::Int sub_1001693F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C200, &qword_1006DA7C0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100169720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C208, &qword_1006DA7C8);
  v32 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100169A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_1008348A8, &qword_1006C00E0);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      v39 = *v23;
      if ((v37 & 1) == 0)
      {
        v25 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      v12 = v38;
      *v16 = v39;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100169D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834948, &qword_1006DA7A0);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10016A040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100007224(a3, a4);
  v39 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v4;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = (*(v7 + 56) + 32 * v23);
      v27 = v26[1];
      v41 = *v26;
      v42 = *v24;
      v28 = v26[3];
      v40 = v26[2];
      if ((v39 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v42;
      v18[1] = v25;
      v19 = (*(v9 + 56) + 32 * v17);
      *v19 = v41;
      v19[1] = v27;
      v19[2] = v40;
      v19[3] = v28;
      ++*(v9 + 16);
      v7 = v38;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_10016A30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - v11;
  v12 = *v5;
  sub_100007224(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

Swift::Int sub_10016A690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C048, &qword_1006DA540);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v30 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_10000B8B8(v30, *(*(v5 + 48) + 16 * v20 + 8));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v16 = v30;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10016A93C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834760, &qword_1006DA550);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10016ABA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834768, &unk_1006DA5B0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10016AE54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100007224(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10016B0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Locale.Region();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100007224(&qword_10083C248, &qword_1006DA840);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10017518C(&qword_100834778, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10016B4D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_10083C100, &qword_1006DA680);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10016B77C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834828, &qword_1006C0090);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 96 * v21;
      if (v38)
      {
        v39 = *(v25 + 8);
        v42 = *(v25 + 24);
        v43 = *v25;
        v48 = *(v25 + 32);
        v45 = *(v25 + 16);
        v46 = *(v25 + 40);
        v44 = *(v25 + 48);
        v40 = *(v25 + 56);
        v41 = *(v25 + 72);
        v47 = *(v25 + 88);
      }

      else
      {
        v27 = *(v25 + 48);
        v26 = *(v25 + 64);
        v28 = *(v25 + 32);
        *&v51[25] = *(v25 + 73);
        v50[2] = v28;
        *v51 = v27;
        *&v51[16] = v26;
        v29 = *(v25 + 16);
        v50[0] = *v25;
        v50[1] = v29;
        v47 = v51[40];
        v48 = v28;
        v44 = v51[0];
        v40 = *&v51[8];
        v41 = *&v51[24];
        v45 = v29;
        v46 = *(&v28 + 1);
        v42 = *(&v29 + 1);
        v39 = *(&v50[0] + 1);
        v43 = *&v50[0];

        sub_10000BBC4(v50, v49, &unk_100849FC0, &qword_1006C9540);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 96 * v15;
      *v17 = v43;
      *(v17 + 8) = v39;
      *(v17 + 16) = v45;
      *(v17 + 24) = v42;
      *(v17 + 32) = v48;
      *(v17 + 40) = v46;
      *(v17 + 48) = v44;
      *(v17 + 72) = v41;
      *(v17 + 56) = v40;
      *(v17 + 88) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10016BB38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100007224(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_10016BDEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100007224(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_10016C088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007224(&qword_100834820, &qword_1006C0088);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10016C33C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003ADCC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10016EE08();
      goto LABEL_7;
    }

    sub_100164EE0(v15, a4 & 1);
    v22 = sub_10003ADCC(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0) - 8) + 72) * v12;

    return sub_100175058(a1, v20);
  }

LABEL_13:
  sub_10016E888(v12, a2, a3, a1, v18);
}

uint64_t sub_10016C4A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003ADCC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1001719C8(&type metadata accessor for AEADKey, &qword_10083C1E8, &qword_1006DA798);
      goto LABEL_7;
    }

    sub_10016A30C(v15, a4 & 1, &type metadata accessor for AEADKey, &qword_10083C1E8, &qword_1006DA798);
    v26 = sub_10003ADCC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for AEADKey();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10016ECD4(v12, a2, a3, a1, v18, &type metadata accessor for AEADKey);
}

uint64_t sub_10016C67C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003ADCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10016BDEC(v16, a4 & 1, &qword_100834890, &unk_1006DA810);
      v11 = sub_10003ADCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100172978(&qword_100834890, &unk_1006DA810);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10016C818(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10003B078(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1001654FC(v14, a3 & 1);
      result = sub_10003B078(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10016F1FC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10016C964(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003ADCC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10016F394();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100165CFC(v16, a4 & 1);
    v11 = sub_10003ADCC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_10000BB78(v22);

    return sub_10001F358(a1, v22);
  }

  else
  {
    sub_10016E934(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10016CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10003ADCC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100165FC0(v18, a5 & 1);
      v13 = sub_10003ADCC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10016F53C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_10016CC40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003ADCC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10016F6B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100166280(v16, a4 & 1);
    v11 = sub_10003ADCC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000BB78(v22);

    return sub_10001F348(a1, v22);
  }

  else
  {
    sub_10016E9A4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10016CD90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003ADCC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1001719C8(&type metadata accessor for IdentityProofingDisplayMessage, &qword_1008348F0, &qword_1006C0108);
      goto LABEL_7;
    }

    sub_10016A30C(v15, a4 & 1, &type metadata accessor for IdentityProofingDisplayMessage, &qword_1008348F0, &qword_1006C0108);
    v26 = sub_10003ADCC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for IdentityProofingDisplayMessage();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10016ECD4(v12, a2, a3, a1, v18, &type metadata accessor for IdentityProofingDisplayMessage);
}

unint64_t sub_10016CF6C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10003B1D8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100166538(v13, a3 & 1);
      result = sub_10003B1D8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for IdentityGesture();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_10016F880();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 8 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_10016D0C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for IQCType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003B21C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_10016F9DC();
    goto LABEL_7;
  }

  sub_10016679C(result, a3 & 1);
  result = sub_10003B21C(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_10016EA10(v14, v11, a1, v20);
}