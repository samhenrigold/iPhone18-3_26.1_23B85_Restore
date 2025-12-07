uint64_t sub_225A936EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProofingDisplayMessageAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_225A93770(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = result;

    v7 = v6;
  }

  return result;
}

unint64_t sub_225A937D0()
{
  result = qword_27D73BDE0;
  if (!qword_27D73BDE0)
  {
    sub_225CCCD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BDE0);
  }

  return result;
}

void sub_225A93850(uint64_t a1)
{
  sub_225A93934();
  if (v1 <= 0x3F)
  {
    sub_225A93CA4(319, &qword_281059B50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_225A93C50(319, &qword_27D73B318, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_225A93934()
{
  result = qword_281059AD0;
  if (!qword_281059AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059AD0);
  }

  return result;
}

uint64_t sub_225A93980(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_225A939C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_225A93A4C(uint64_t a1)
{
  sub_225A93934();
  if (v1 <= 0x3F)
  {
    sub_225A93CA4(319, &qword_281059B50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_225A93C50(319, &qword_28105B788, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_225A93CA4(319, &qword_28105B790, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_225A93CA4(319, &qword_27D73BDF8, &type metadata for ProofingDisplayMessage, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_225A93CA4(319, &unk_281059B40, &type metadata for ProofingSession.UploadAsset, MEMORY[0x277D83940]);
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

void sub_225A93C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_225CCEFC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_225A93CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void ProofingSession.UploadAsset.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 objectID];
  v5 = [a1 assetFileURL];
  if (v5)
  {
    v6 = v5;
    v7 = sub_225CCE474();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 assetType];
  if (v10)
  {
    v11 = v10;
    v12 = sub_225CCE474();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [a1 recordUUID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_225CCE474();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0;
  }

  *a2 = v4;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v17;
  a2[6] = v19;
}

uint64_t ProofingSession.UploadAsset.assetFileURL.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProofingSession.UploadAsset.assetType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ProofingSession.UploadAsset.recordUUID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 VICALDocument.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t VICALDocument.vicalProvider.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VICALDocument.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VICALDocument(0) + 24);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VICALDocument.nextUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VICALDocument(0) + 32);

  return sub_225A94014(v3, a1);
}

uint64_t sub_225A94014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VICALDocument.certificateInfos.getter()
{
  type metadata accessor for VICALDocument(0);
}

uint64_t sub_225A940B8()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x7373496C61636976;
  v4 = 0x616470557478656ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F72506C61636976;
  if (v1 != 1)
  {
    v5 = 1702125924;
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

uint64_t sub_225A9418C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A974F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A941C0(uint64_t a1)
{
  v2 = sub_225A94584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A941FC(uint64_t a1)
{
  v2 = sub_225A94584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VICALDocument.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE00, &qword_225CDD1C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A94584();
  sub_225CCFCE4();
  v11 = *v3;
  v12 = 0;
  sub_225A945D8();
  sub_225CCF7E4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_225CCF784();
    v10 = type metadata accessor for VICALDocument(0);
    LOBYTE(v11) = 2;
    sub_225CCD0B4();
    sub_225A9462C(&qword_27D73BE18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_225CCF7E4();
    LOBYTE(v11) = 3;
    sub_225CCF764();
    LOBYTE(v11) = 4;
    sub_225CCF774();
    *&v11 = *(v3 + *(v10 + 36));
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE20, &qword_225CDD1D0);
    sub_225A94D6C(&qword_27D73BE28, &qword_27D73BE30, &protocol conformance descriptor for VICALCertificateInfo, MEMORY[0x277D83948]);
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_225A94584()
{
  result = qword_27D73BE08;
  if (!qword_27D73BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE08);
  }

  return result;
}

unint64_t sub_225A945D8()
{
  result = qword_27D73BE10;
  if (!qword_27D73BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE10);
  }

  return result;
}

uint64_t sub_225A9462C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VICALDocument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = v26 - v4;
  v5 = sub_225CCD0B4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE38, &qword_225CDD1D8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = v26 - v8;
  v10 = type metadata accessor for VICALDocument(0);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_225A94584();
  v14 = v33;
  sub_225CCFCA4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v33 = v7;
  v15 = v30;
  v16 = v31;
  v36 = 0;
  sub_225A94CA8();
  sub_225CCF6E4();
  *v12 = v35;
  LOBYTE(v35) = 1;
  *(v12 + 2) = sub_225CCF684();
  *(v12 + 3) = v17;
  LOBYTE(v35) = 2;
  v18 = sub_225A9462C(&qword_27D73BE48, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v27 = v12;
  v19 = v18;
  v20 = v33;
  sub_225CCF6E4();
  v26[1] = v19;
  v21 = v27;
  (*(v16 + 32))(&v27[v10[6]], v20, v5);
  LOBYTE(v35) = 3;
  v22 = sub_225CCF664();
  v23 = v21 + v10[7];
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  LOBYTE(v35) = 4;
  sub_225CCF674();
  sub_225A94CFC(v29, v21 + v10[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE20, &qword_225CDD1D0);
  v36 = 5;
  sub_225A94D6C(&qword_27D73BE50, &qword_27D73BE58, &protocol conformance descriptor for VICALCertificateInfo, MEMORY[0x277D83978]);
  sub_225CCF6E4();
  (*(v15 + 8))(v9, v32);
  *(v21 + v10[9]) = v35;
  sub_225A96A2C(v21, v28, type metadata accessor for VICALDocument);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return sub_225A96A94(v21, type metadata accessor for VICALDocument);
}

uint64_t sub_225A94C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225A94CA8()
{
  result = qword_27D73BE40;
  if (!qword_27D73BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE40);
  }

  return result;
}

uint64_t sub_225A94CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A94D6C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73BE20, &qword_225CDD1D0);
    sub_225A9462C(a2, type metadata accessor for VICALCertificateInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VICALCertificateInfo.certificate.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t VICALCertificateInfo.serialNumber.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  return sub_2259CB710(v2, v3);
}

uint64_t VICALCertificateInfo.subjectKeyIdentifier.getter()
{
  v1 = *(v0 + 40);
  sub_2259CB710(v1, *(v0 + 48));
  return v1;
}

uint64_t VICALCertificateInfo.issuingAuthority.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t VICALCertificateInfo.issuingCountry.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t VICALCertificateInfo.stateOrProvinceName.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t VICALCertificateInfo.issuer.getter()
{
  v1 = *(v0 + 120);
  sub_2259CB6FC(v1, *(v0 + 128));
  return v1;
}

uint64_t VICALCertificateInfo.subject.getter()
{
  v1 = *(v0 + 136);
  sub_2259CB6FC(v1, *(v0 + 144));
  return v1;
}

uint64_t VICALCertificateInfo.notBefore.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VICALCertificateInfo(0) + 56);

  return sub_225A94014(v3, a1);
}

uint64_t VICALCertificateInfo.notAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VICALCertificateInfo(0) + 60);

  return sub_225A94014(v3, a1);
}

uint64_t VICALCertificateInfo.extensions.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for VICALCertificateInfo(0) + 64));
  *a1 = v3;

  return sub_225A95088(v3);
}

uint64_t sub_225A95088(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_225A950BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000225D1B3E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_225CCF934();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_225A95150(uint64_t a1)
{
  v2 = sub_225A9536C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A9518C(uint64_t a1)
{
  v2 = sub_225A9536C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VICALCertificateInfo.Extensions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE60, &qword_225CDD1E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9536C();

  sub_225CCFCE4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE70, &qword_225CDD1E8);
  sub_225A955C4(&qword_27D73BE78, sub_225A953C0, MEMORY[0x277D83948]);
  sub_225CCF774();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_225A9536C()
{
  result = qword_27D73BE68;
  if (!qword_27D73BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE68);
  }

  return result;
}

unint64_t sub_225A953C0()
{
  result = qword_27D73BE80;
  if (!qword_27D73BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE80);
  }

  return result;
}

uint64_t VICALCertificateInfo.Extensions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE88, &qword_225CDD1F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9536C();
  sub_225CCFCA4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BE70, &qword_225CDD1E8);
    sub_225A955C4(&qword_27D73BE90, sub_225A9563C, MEMORY[0x277D83978]);
    sub_225CCF674();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A955C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73BE70, &qword_225CDD1E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A9563C()
{
  result = qword_27D73BE98;
  if (!qword_27D73BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BE98);
  }

  return result;
}

unint64_t sub_225A95690(char a1)
{
  result = 0x6369666974726563;
  switch(a1)
  {
    case 1:
      result = 0x754E6C6169726573;
      break;
    case 2:
      result = 6908787;
      break;
    case 3:
      result = 0x65707954636F64;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x43676E6975737369;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x726575737369;
      break;
    case 9:
      result = 0x7463656A627573;
      break;
    case 10:
      result = 0x726F666542746F6ELL;
      break;
    case 11:
      result = 0x7265746641746F6ELL;
      break;
    case 12:
      result = 0x6F69736E65747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225A95848(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_225A95690(*a1);
  v5 = v4;
  if (v3 == sub_225A95690(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225A958D0()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225A95690(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A95934(uint64_t a1)
{
  sub_225A95690(*v1);
  sub_225CCE5B4();
}

uint64_t sub_225A95988()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225A95690(v1);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225A959E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225A97714(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_225A95A18@<X0>(unint64_t *a1@<X8>)
{
  result = sub_225A95690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_225A95A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A97714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A95A94(uint64_t a1)
{
  v2 = sub_225A95FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A95AD0(uint64_t a1)
{
  v2 = sub_225A95FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VICALCertificateInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BEA0, &unk_225CDD1F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A95FF8();
  sub_225CCFCE4();
  v9 = v3[1];
  v18 = *v3;
  v19 = v9;
  v21 = 0;
  sub_2259CB710(v18, v9);
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v18, v19);
  if (!v2)
  {
    v10 = v3[3];
    v11 = v3[4];
    v18 = v3[2];
    v19 = v10;
    v20 = v11;
    v21 = 1;
    sub_2259CB710(v10, v11);
    sub_225A953C0();
    sub_225CCF7E4();
    sub_2259BEF00(v19, v20);
    v13 = v3[6];
    v18 = v3[5];
    v19 = v13;
    v21 = 2;
    sub_2259CB710(v18, v13);
    sub_225CCF7E4();
    sub_2259BEF00(v18, v19);
    v18 = v3[7];
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_225A325B0(&qword_281059B28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_225CCF7E4();
    v18 = v3[8];
    v21 = 4;
    sub_225CCF774();
    LOBYTE(v18) = 5;
    sub_225CCF734();
    LOBYTE(v18) = 6;
    sub_225CCF734();
    LOBYTE(v18) = 7;
    sub_225CCF734();
    v14 = v3[16];
    v18 = v3[15];
    v19 = v14;
    v21 = 8;
    sub_2259CB6FC(v18, v14);
    sub_225CCF774();
    sub_2259B97A8(v18, v19);
    v15 = v3[18];
    v18 = v3[17];
    v19 = v15;
    v21 = 9;
    sub_2259CB6FC(v18, v15);
    sub_225CCF774();
    sub_2259B97A8(v18, v19);
    v16 = type metadata accessor for VICALCertificateInfo(0);
    LOBYTE(v18) = 10;
    sub_225CCD0B4();
    sub_225A9462C(&qword_27D73BE18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_225CCF774();
    LOBYTE(v18) = 11;
    sub_225CCF774();
    v18 = *(v3 + *(v16 + 64));
    v21 = 12;
    sub_225A95088(v18);
    sub_225A9604C();
    sub_225CCF774();
    sub_225A960A0(v18);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_225A95FF8()
{
  result = qword_27D73BEA8;
  if (!qword_27D73BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BEA8);
  }

  return result;
}

unint64_t sub_225A9604C()
{
  result = qword_27D73BEB0;
  if (!qword_27D73BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BEB0);
  }

  return result;
}

uint64_t sub_225A960A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t VICALCertificateInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BEB8, &qword_225CDD208);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = v28 - v10;
  v12 = type metadata accessor for VICALCertificateInfo(0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_225A95FF8();
  v34 = v11;
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v29 = v7;
  v30 = v9;
  v16 = v33;
  v31 = v14;
  v39 = 0;
  sub_2259D94A8();
  sub_225CCF6E4();
  v17 = v31;
  *v31 = v37;
  v39 = 1;
  sub_225A9563C();
  sub_225CCF6E4();
  v18 = v38;
  *(v17 + 1) = v37;
  *(v17 + 4) = v18;
  v39 = 2;
  v28[1] = 0;
  sub_225CCF6E4();
  *(v17 + 40) = v37;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  v39 = 3;
  sub_225A325B0(&qword_281059B18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v28[0] = v19;
  sub_225CCF6E4();
  *(v17 + 7) = v37;
  v39 = 4;
  sub_225CCF674();
  *(v17 + 8) = v37;
  LOBYTE(v37) = 5;
  *(v17 + 9) = sub_225CCF624();
  *(v17 + 10) = v20;
  LOBYTE(v37) = 6;
  *(v17 + 11) = sub_225CCF624();
  *(v17 + 12) = v21;
  LOBYTE(v37) = 7;
  v22 = sub_225CCF624();
  v23 = v31;
  *(v31 + 13) = v22;
  *(v23 + 14) = v24;
  v39 = 8;
  sub_225CCF674();
  *(v31 + 120) = v37;
  v39 = 9;
  sub_225CCF674();
  *(v31 + 136) = v37;
  sub_225CCD0B4();
  LOBYTE(v37) = 10;
  sub_225A9462C(&qword_27D73BE48, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_225CCF674();
  sub_225A94CFC(v30, &v31[v12[14]]);
  LOBYTE(v37) = 11;
  sub_225CCF674();
  sub_225A94CFC(v29, &v31[v12[15]]);
  v39 = 12;
  sub_225A969D8();
  sub_225CCF674();
  (*(v16 + 8))(v34, v35);
  v26 = v31;
  v25 = v32;
  *&v31[v12[16]] = v37;
  sub_225A96A2C(v26, v25, type metadata accessor for VICALCertificateInfo);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return sub_225A96A94(v26, type metadata accessor for VICALCertificateInfo);
}

unint64_t sub_225A969D8()
{
  result = qword_27D73BEC0;
  if (!qword_27D73BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BEC0);
  }

  return result;
}

uint64_t sub_225A96A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A96A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_225A96B4C(uint64_t a1)
{
  sub_225CCD0B4();
  if (v1 <= 0x3F)
  {
    sub_225A96F58(319, &qword_27D73BED8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_225A96C9C(319, &qword_28105B788, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_225A96C9C(319, &qword_27D73BEE0, type metadata accessor for VICALCertificateInfo, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_225A96C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_225A96D28(uint64_t a1)
{
  sub_225A96F58(319, &qword_27D73BEF8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_225A96EF4(319);
    if (v2 <= 0x3F)
    {
      sub_225A96F58(319, &qword_281059B50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_225A96F58(319, &qword_28105B790, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_225A96C9C(319, &qword_28105B788, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_225A96F58(319, &qword_27D73BF08, &type metadata for VICALCertificateInfo.Extensions, MEMORY[0x277D83D88]);
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

void sub_225A96EF4(uint64_t a1)
{
  if (!qword_27D73BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0, &unk_225CD76A0);
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D73BF00);
    }
  }
}

void sub_225A96F58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_225A96FB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_225A97010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VICALCertificateInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VICALCertificateInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225A971E4()
{
  result = qword_27D73BF10;
  if (!qword_27D73BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF10);
  }

  return result;
}

unint64_t sub_225A9723C()
{
  result = qword_27D73BF18;
  if (!qword_27D73BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF18);
  }

  return result;
}

unint64_t sub_225A97294()
{
  result = qword_27D73BF20;
  if (!qword_27D73BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF20);
  }

  return result;
}

unint64_t sub_225A972EC()
{
  result = qword_27D73BF28;
  if (!qword_27D73BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF28);
  }

  return result;
}

unint64_t sub_225A97344()
{
  result = qword_27D73BF30;
  if (!qword_27D73BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF30);
  }

  return result;
}

unint64_t sub_225A9739C()
{
  result = qword_27D73BF38;
  if (!qword_27D73BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF38);
  }

  return result;
}

unint64_t sub_225A973F4()
{
  result = qword_27D73BF40;
  if (!qword_27D73BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF40);
  }

  return result;
}

unint64_t sub_225A9744C()
{
  result = qword_27D73BF48;
  if (!qword_27D73BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF48);
  }

  return result;
}

unint64_t sub_225A974A4()
{
  result = qword_27D73BF50;
  if (!qword_27D73BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF50);
  }

  return result;
}

uint64_t sub_225A974F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72506C61636976 && a2 == 0xED00007265646976 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373496C61636976 && a2 == 0xED00004449726575 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616470557478656ELL && a2 == 0xEA00000000006574 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D1B3C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_225A97714(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(uint64_t a1)
{
  v23 = sub_225CCCD84();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_225CCD1C4();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA0, &unk_225CDC6D0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v25 = a1;
  sub_225CCD164();
  v20 = sub_225A84D38();
  sub_225CCCBB4();
  v26 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCC0, &unk_225CDC710);
  sub_2259D8B24(&qword_27D73BCC8, &qword_27D73BCC0, &unk_225CDC710, MEMORY[0x277D84338]);
  sub_225CCCD64();
  MEMORY[0x22AA6B410](v3, v6);
  (*(v21 + 8))(v3, v23);
  v16 = *(v7 + 8);
  v16(v10, v6);
  sub_225CCD134();
  MEMORY[0x22AA6B400](v5, v6);
  (*(v22 + 8))(v5, v24);
  v16(v13, v6);
  sub_2259D8B24(&qword_27D73BCD0, &qword_27D73BCA0, &unk_225CDC6D0, MEMORY[0x277CC8CE8]);
  sub_225CCF084();
  v16(v15, v6);
  v17 = v26;
  v18 = v27;
  v26 = 0x7265766F5F656761;
  v27 = 0xE90000000000005FLL;
  MEMORY[0x22AA6CE70](v17, v18);

  return v26;
}

uint64_t sub_225A97B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BF60, &qword_225CDD740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_225CDD730;
  *(v0 + 32) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(0);
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(1);
  *(v0 + 64) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(2);
  *(v0 + 88) = v3;
  *(v0 + 96) = 2;
  *(v0 + 104) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(3);
  *(v0 + 112) = v4;
  *(v0 + 120) = 3;
  *(v0 + 128) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(4);
  *(v0 + 136) = v5;
  *(v0 + 144) = 4;
  *(v0 + 152) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(5);
  *(v0 + 160) = v6;
  *(v0 + 168) = 5;
  *(v0 + 176) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(6);
  *(v0 + 184) = v7;
  *(v0 + 192) = 6;
  *(v0 + 200) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(7);
  *(v0 + 208) = v8;
  *(v0 + 216) = 7;
  *(v0 + 224) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(8);
  *(v0 + 232) = v9;
  *(v0 + 240) = 8;
  *(v0 + 248) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(9);
  *(v0 + 256) = v10;
  *(v0 + 264) = 9;
  *(v0 + 272) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(10);
  *(v0 + 280) = v11;
  *(v0 + 288) = 10;
  *(v0 + 296) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(11);
  *(v0 + 304) = v12;
  *(v0 + 312) = 11;
  *(v0 + 320) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(12);
  *(v0 + 328) = v13;
  *(v0 + 336) = 12;
  *(v0 + 344) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(13);
  *(v0 + 352) = v14;
  *(v0 + 360) = 13;
  *(v0 + 368) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(14);
  *(v0 + 376) = v15;
  *(v0 + 384) = 14;
  *(v0 + 392) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(15);
  *(v0 + 400) = v16;
  *(v0 + 408) = 15;
  *(v0 + 416) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(16);
  *(v0 + 424) = v17;
  *(v0 + 432) = 16;
  *(v0 + 440) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(17);
  *(v0 + 448) = v18;
  *(v0 + 456) = 17;
  *(v0 + 464) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(18);
  *(v0 + 472) = v19;
  *(v0 + 480) = 18;
  *(v0 + 488) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(19);
  *(v0 + 496) = v20;
  *(v0 + 504) = 19;
  *(v0 + 512) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(20);
  *(v0 + 520) = v21;
  *(v0 + 528) = 20;
  *(v0 + 536) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(21);
  *(v0 + 544) = v22;
  *(v0 + 552) = 21;
  *(v0 + 560) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(22);
  *(v0 + 568) = v23;
  *(v0 + 576) = 22;
  *(v0 + 584) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(23);
  *(v0 + 592) = v24;
  *(v0 + 600) = 23;
  *(v0 + 608) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(24);
  *(v0 + 616) = v25;
  *(v0 + 624) = 24;
  *(v0 + 632) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(25);
  *(v0 + 640) = v26;
  *(v0 + 648) = 25;
  *(v0 + 656) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(26);
  *(v0 + 664) = v27;
  *(v0 + 672) = 26;
  *(v0 + 680) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(27);
  *(v0 + 688) = v28;
  *(v0 + 696) = 27;
  *(v0 + 704) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(28);
  *(v0 + 712) = v29;
  *(v0 + 720) = 28;
  *(v0 + 728) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(29);
  *(v0 + 736) = v30;
  *(v0 + 744) = 29;
  *(v0 + 752) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(30);
  *(v0 + 760) = v31;
  *(v0 + 768) = 30;
  *(v0 + 776) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(31);
  *(v0 + 784) = v32;
  *(v0 + 792) = 31;
  *(v0 + 800) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(32);
  *(v0 + 808) = v33;
  *(v0 + 816) = 32;
  *(v0 + 824) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(33);
  *(v0 + 832) = v34;
  *(v0 + 840) = 33;
  *(v0 + 848) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(34);
  *(v0 + 856) = v35;
  *(v0 + 864) = 34;
  *(v0 + 872) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(35);
  *(v0 + 880) = v36;
  *(v0 + 888) = 35;
  *(v0 + 896) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(36);
  *(v0 + 904) = v37;
  *(v0 + 912) = 36;
  *(v0 + 920) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(37);
  *(v0 + 928) = v38;
  *(v0 + 936) = 37;
  *(v0 + 944) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(38);
  *(v0 + 952) = v39;
  *(v0 + 960) = 38;
  *(v0 + 968) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(39);
  *(v0 + 976) = v40;
  *(v0 + 984) = 39;
  *(v0 + 992) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(40);
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 40;
  *(v0 + 1016) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(41);
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 41;
  *(v0 + 1040) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(42);
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 42;
  *(v0 + 1064) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(43);
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 43;
  *(v0 + 1088) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(44);
  *(v0 + 1096) = v45;
  *(v0 + 1104) = 44;
  *(v0 + 1112) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(45);
  *(v0 + 1120) = v46;
  *(v0 + 1128) = 45;
  *(v0 + 1136) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(46);
  *(v0 + 1144) = v47;
  *(v0 + 1152) = 46;
  *(v0 + 1160) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(47);
  *(v0 + 1168) = v48;
  *(v0 + 1176) = 47;
  *(v0 + 1184) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(48);
  *(v0 + 1192) = v49;
  *(v0 + 1200) = 48;
  *(v0 + 1208) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(49);
  *(v0 + 1216) = v50;
  *(v0 + 1224) = 49;
  *(v0 + 1232) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(50);
  *(v0 + 1240) = v51;
  *(v0 + 1248) = 50;
  *(v0 + 1256) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(51);
  *(v0 + 1264) = v52;
  *(v0 + 1272) = 51;
  *(v0 + 1280) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(52);
  *(v0 + 1288) = v53;
  *(v0 + 1296) = 52;
  *(v0 + 1304) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(53);
  *(v0 + 1312) = v54;
  *(v0 + 1320) = 53;
  *(v0 + 1328) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(54);
  *(v0 + 1336) = v55;
  *(v0 + 1344) = 54;
  *(v0 + 1352) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(55);
  *(v0 + 1360) = v56;
  *(v0 + 1368) = 55;
  *(v0 + 1376) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(56);
  *(v0 + 1384) = v57;
  *(v0 + 1392) = 56;
  *(v0 + 1400) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(57);
  *(v0 + 1408) = v58;
  *(v0 + 1416) = 57;
  *(v0 + 1424) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(58);
  *(v0 + 1432) = v59;
  *(v0 + 1440) = 58;
  *(v0 + 1448) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(59);
  *(v0 + 1456) = v60;
  *(v0 + 1464) = 59;
  *(v0 + 1472) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(60);
  *(v0 + 1480) = v61;
  *(v0 + 1488) = 60;
  *(v0 + 1496) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(61);
  *(v0 + 1504) = v62;
  *(v0 + 1512) = 61;
  *(v0 + 1520) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(62);
  *(v0 + 1528) = v63;
  *(v0 + 1536) = 62;
  *(v0 + 1544) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(63);
  *(v0 + 1552) = v64;
  *(v0 + 1560) = 63;
  *(v0 + 1568) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(64);
  *(v0 + 1576) = v65;
  *(v0 + 1584) = 64;
  *(v0 + 1592) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(65);
  *(v0 + 1600) = v66;
  *(v0 + 1608) = 65;
  *(v0 + 1616) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(66);
  *(v0 + 1624) = v67;
  *(v0 + 1632) = 66;
  *(v0 + 1640) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(67);
  *(v0 + 1648) = v68;
  *(v0 + 1656) = 67;
  *(v0 + 1664) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(68);
  *(v0 + 1672) = v69;
  *(v0 + 1680) = 68;
  *(v0 + 1688) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(69);
  *(v0 + 1696) = v70;
  *(v0 + 1704) = 69;
  *(v0 + 1712) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(70);
  *(v0 + 1720) = v71;
  *(v0 + 1728) = 70;
  *(v0 + 1736) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(71);
  *(v0 + 1744) = v72;
  *(v0 + 1752) = 71;
  *(v0 + 1760) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(72);
  *(v0 + 1768) = v73;
  *(v0 + 1776) = 72;
  *(v0 + 1784) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(73);
  *(v0 + 1792) = v74;
  *(v0 + 1800) = 73;
  *(v0 + 1808) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(74);
  *(v0 + 1816) = v75;
  *(v0 + 1824) = 74;
  *(v0 + 1832) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(75);
  *(v0 + 1840) = v76;
  *(v0 + 1848) = 75;
  *(v0 + 1856) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(76);
  *(v0 + 1864) = v77;
  *(v0 + 1872) = 76;
  *(v0 + 1880) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(77);
  *(v0 + 1888) = v78;
  *(v0 + 1896) = 77;
  *(v0 + 1904) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(78);
  *(v0 + 1912) = v79;
  *(v0 + 1920) = 78;
  *(v0 + 1928) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(79);
  *(v0 + 1936) = v80;
  *(v0 + 1944) = 79;
  *(v0 + 1952) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(80);
  *(v0 + 1960) = v81;
  *(v0 + 1968) = 80;
  *(v0 + 1976) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(81);
  *(v0 + 1984) = v82;
  *(v0 + 1992) = 81;
  *(v0 + 2000) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(82);
  *(v0 + 2008) = v83;
  *(v0 + 2016) = 82;
  *(v0 + 2024) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(83);
  *(v0 + 2032) = v84;
  *(v0 + 2040) = 83;
  *(v0 + 2048) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(84);
  *(v0 + 2056) = v85;
  *(v0 + 2064) = 84;
  *(v0 + 2072) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(85);
  *(v0 + 2080) = v86;
  *(v0 + 2088) = 85;
  *(v0 + 2096) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(86);
  *(v0 + 2104) = v87;
  *(v0 + 2112) = 86;
  *(v0 + 2120) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(87);
  *(v0 + 2128) = v88;
  *(v0 + 2136) = 87;
  *(v0 + 2144) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(88);
  *(v0 + 2152) = v89;
  *(v0 + 2160) = 88;
  *(v0 + 2168) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(89);
  *(v0 + 2176) = v90;
  *(v0 + 2184) = 89;
  *(v0 + 2192) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(90);
  *(v0 + 2200) = v91;
  *(v0 + 2208) = 90;
  *(v0 + 2216) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(91);
  *(v0 + 2224) = v92;
  *(v0 + 2232) = 91;
  *(v0 + 2240) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(92);
  *(v0 + 2248) = v93;
  *(v0 + 2256) = 92;
  *(v0 + 2264) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(93);
  *(v0 + 2272) = v94;
  *(v0 + 2280) = 93;
  *(v0 + 2288) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(94);
  *(v0 + 2296) = v95;
  *(v0 + 2304) = 94;
  *(v0 + 2312) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(95);
  *(v0 + 2320) = v96;
  *(v0 + 2328) = 95;
  *(v0 + 2336) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(96);
  *(v0 + 2344) = v97;
  *(v0 + 2352) = 96;
  *(v0 + 2360) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(97);
  *(v0 + 2368) = v98;
  *(v0 + 2376) = 97;
  *(v0 + 2384) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(98);
  *(v0 + 2392) = v99;
  *(v0 + 2400) = 98;
  *(v0 + 2408) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(99);
  *(v0 + 2416) = v100;
  *(v0 + 2424) = 99;
  *(v0 + 2432) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(100);
  *(v0 + 2440) = v101;
  *(v0 + 2448) = 100;
  *(v0 + 2456) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(101);
  *(v0 + 2464) = v102;
  *(v0 + 2472) = 101;
  *(v0 + 2480) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(102);
  *(v0 + 2488) = v103;
  *(v0 + 2496) = 102;
  *(v0 + 2504) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(103);
  *(v0 + 2512) = v104;
  *(v0 + 2520) = 103;
  *(v0 + 2528) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(104);
  *(v0 + 2536) = v105;
  *(v0 + 2544) = 104;
  *(v0 + 2552) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(105);
  *(v0 + 2560) = v106;
  *(v0 + 2568) = 105;
  *(v0 + 2576) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(106);
  *(v0 + 2584) = v107;
  *(v0 + 2592) = 106;
  *(v0 + 2600) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(107);
  *(v0 + 2608) = v108;
  *(v0 + 2616) = 107;
  *(v0 + 2624) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(108);
  *(v0 + 2632) = v109;
  *(v0 + 2640) = 108;
  *(v0 + 2648) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(109);
  *(v0 + 2656) = v110;
  *(v0 + 2664) = 109;
  *(v0 + 2672) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(110);
  *(v0 + 2680) = v111;
  *(v0 + 2688) = 110;
  *(v0 + 2696) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(111);
  *(v0 + 2704) = v112;
  *(v0 + 2712) = 111;
  *(v0 + 2720) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(112);
  *(v0 + 2728) = v113;
  *(v0 + 2736) = 112;
  *(v0 + 2744) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(113);
  *(v0 + 2752) = v114;
  *(v0 + 2760) = 113;
  *(v0 + 2768) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(114);
  *(v0 + 2776) = v115;
  *(v0 + 2784) = 114;
  *(v0 + 2792) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(115);
  *(v0 + 2800) = v116;
  *(v0 + 2808) = 115;
  *(v0 + 2816) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(116);
  *(v0 + 2824) = v117;
  *(v0 + 2832) = 116;
  *(v0 + 2840) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(117);
  *(v0 + 2848) = v118;
  *(v0 + 2856) = 117;
  *(v0 + 2864) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(118);
  *(v0 + 2872) = v119;
  *(v0 + 2880) = 118;
  *(v0 + 2888) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(119);
  *(v0 + 2896) = v120;
  *(v0 + 2904) = 119;
  *(v0 + 2912) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(120);
  *(v0 + 2920) = v121;
  *(v0 + 2928) = 120;
  *(v0 + 2936) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(121);
  *(v0 + 2944) = v122;
  *(v0 + 2952) = 121;
  *(v0 + 2960) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(122);
  *(v0 + 2968) = v123;
  *(v0 + 2976) = 122;
  *(v0 + 2984) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(123);
  *(v0 + 2992) = v124;
  *(v0 + 3000) = 123;
  *(v0 + 3008) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(124);
  *(v0 + 3016) = v125;
  *(v0 + 3024) = 124;
  *(v0 + 3032) = _s13CoreIDVShared28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(125);
  *(v0 + 3040) = v126;
  *(v0 + 3048) = 125;
  v127 = sub_225B2DC84(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BF68, &qword_225CDD748);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27D73BF58 = v127;
  return result;
}

unint64_t ISO18013KnownNamespaces.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x2E6F73692E67726FLL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t ISO23220_1_ElementIdentifier.rawValue.getter()
{
  result = 0x795F6E695F656761;
  switch(*v0)
  {
    case 1:
      v2 = 0x5F6874726962;
      goto LABEL_16;
    case 2:
      result = 7890291;
      break;
    case 3:
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x747269625F656761;
      break;
    case 8:
      result = 0x616C706874726962;
      break;
    case 9:
      result = 0x5F74615F656D616ELL;
      break;
    case 0xA:
      result = 0x7469617274726F70;
      break;
    case 0xB:
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x746E656D75636F64;
      break;
    case 0xD:
      v2 = 0x5F6575737369;
LABEL_16:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
      break;
    case 0xE:
      result = 0x645F797269707865;
      break;
    case 0xF:
      result = 0xD000000000000019;
      break;
    case 0x11:
      result = 0x5F676E6975737369;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0xD000000000000010;
      break;
    case 0x17:
      result = 0x6C616E6F6974616ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ISO23220_1_Japan_ElementIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63696E755F786573;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0x7469617274726F70;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t ISO18013_5_1_ElementIdentifier.rawValue.getter()
{
  result = 0x616E5F6E65766967;
  switch(*v0)
  {
    case 1:
      return 0x6E5F796C696D6166;
    case 2:
      v2 = 0x5F6874726962;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    case 3:
      v2 = 0x5F6575737369;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    case 4:
      return 0x645F797269707865;
    case 5:
      return 0x5F676E6975737369;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0x746E656D75636F64;
    case 8:
      return 0x7469617274726F70;
    case 9:
      return 0xD000000000000012;
    case 0xA:
      return 0xD000000000000016;
    case 0xB:
    case 0x13:
      return 0xD000000000000015;
    case 0xC:
      return 7890291;
    case 0xD:
      return 0x746867696568;
    case 0xE:
      return 0x746867696577;
    case 0xF:
      return 0x6F6C6F635F657965;
    case 0x10:
      return 0x6C6F635F72696168;
    case 0x11:
      return 0x6C705F6874726962;
    case 0x12:
    case 0x1B:
      return 0xD000000000000010;
    case 0x14:
      return 0x795F6E695F656761;
    case 0x15:
      return 0x747269625F656761;
    case 0x16:
      return 0xD000000000000014;
    case 0x17:
      return 0x6C616E6F6974616ELL;
    case 0x18:
    case 0x19:
      return 0x746E656469736572;
    case 0x1A:
      return 0xD000000000000014;
    case 0x1C:
      v3 = 10;
      goto LABEL_29;
    case 0x1D:
      v3 = 9;
LABEL_29:
      result = v3 | 0xD000000000000014;
      break;
    case 0x1E:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ISO18013_5_1_DrivingPrivilegeIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x61645F6575737369;
  v3 = 1852270963;
  if (v1 != 5)
  {
    v3 = 0x65756C6176;
  }

  v4 = 0x7365646F63;
  if (v1 != 3)
  {
    v4 = 1701080931;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x645F797269707865;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

unint64_t ISO18013_AAMVA_ElementIdentifier.rawValue.getter()
{
  result = 0x6675735F656D616ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F645F6E6167726FLL;
      break;
    case 3:
      result = 0x6E617265746576;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x696D61665F616B61;
      break;
    case 7:
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x657669675F616B61;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x666675735F616B61;
      break;
    case 0xB:
      result = 0x725F746867696577;
      break;
    case 0xC:
      result = 0x6874655F65636172;
      break;
    case 0xD:
      result = 7890291;
      break;
    case 0xE:
      result = 0x616E5F7473726966;
      break;
    case 0xF:
      result = 0x6E5F656C6464696DLL;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0x646572635F4C4445;
      break;
    case 0x13:
      result = 0x706D6F635F534844;
      break;
    case 0x14:
      result = 0x746E656469736572;
      break;
    case 0x16:
      result = 0xD000000000000022;
      break;
    case 0x17:
      result = 0x69646E695F4C4443;
      break;
    case 0x18:
      result = 0xD000000000000011;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v7 = 0xD000000000000022;
    }

    if (v1 == 2)
    {
      v7 = 0xD00000000000001DLL;
    }

    v8 = 0xD000000000000016;
    if (*v0)
    {
      v8 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x61645F6575737369;
    v3 = 0xD000000000000028;
    v4 = 0xD000000000000021;
    if (v1 == 9)
    {
      v5 = 0xD000000000000021;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (v1 != 8)
    {
      v3 = v5;
    }

    if (v1 == 6)
    {
      v4 = 0x645F797269707865;
    }

    if (v1 != 5)
    {
      v2 = v4;
    }

    if (*v0 <= 7u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x695F6E6F73726570;
    v7 = 0x74735F6874726962;
    if (v1 != 2)
    {
      v7 = 0x69635F6874726962;
    }

    if (*v0)
    {
      v6 = 0x6F635F6874726962;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD000000000000015;
    v3 = 0x746E656469736572;
    if (v1 == 7)
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (v1 != 4)
    {
      v4 = 0x746E656469736572;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

CoreIDVShared::ISO18013KnownDocTypes_optional __swiftcall ISO18013KnownDocTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ISO18013KnownDocTypes.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_225A996B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "org.iso.18013.5.1.mDL";
  v4 = 0xD000000000000017;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "org.iso.18013.5.1.mDL";
  }

  else
  {
    v6 = "org.iso.23220.1.jp.mnc";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "efore";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v3 = "org.iso.23220.1.jp.mnc";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "efore";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A99784()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9981C(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A998A0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A99940(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "org.iso.18013.5.1.mDL";
  v4 = 0xD000000000000017;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v3 = "org.iso.23220.1.jp.mnc";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "efore";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

CoreIDVShared::ISO18013KnownNamespaces_optional __swiftcall ISO18013KnownNamespaces.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A99AC0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A99BB8(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A99C9C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A99D9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF312E3032323332;
  v4 = 0x2E6F73692E67726FLL;
  v5 = 0x8000000225D0ACF0;
  v6 = 0xD000000000000012;
  if (v2 != 3)
  {
    v6 = 0xD000000000000017;
    v5 = 0x8000000225D0AC80;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x8000000225D0ACA0;
  v8 = 0xD000000000000011;
  if (*v1)
  {
    v8 = 0xD000000000000017;
    v7 = 0x8000000225D0ACC0;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

CoreIDVShared::ISO18013_5_1_ElementIdentifier_optional __swiftcall ISO18013_5_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_225A9A04C@<X0>(unint64_t *a1@<X8>)
{
  result = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDVShared::ISO18013_5_1_DrivingPrivilegeIdentifier_optional __swiftcall ISO18013_5_1_DrivingPrivilegeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9A100(uint64_t a1)
{
  sub_225CCE5B4();
}

void sub_225A9A218(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0x61645F6575737369;
  v5 = 0xE400000000000000;
  v6 = 1852270963;
  v7 = 0xE500000000000000;
  if (v2 != 5)
  {
    v6 = 0x65756C6176;
    v5 = 0xE500000000000000;
  }

  v8 = 0x7365646F63;
  if (v2 != 3)
  {
    v8 = 1701080931;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x645F797269707865;
    v3 = 0xEB00000000657461;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000225D0AF50;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

CoreIDVShared::ISO18013_AAMVA_ElementIdentifier_optional __swiftcall ISO18013_AAMVA_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_225A9A4CC@<X0>(unint64_t *a1@<X8>)
{
  result = ISO18013_AAMVA_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDVShared::ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier_optional __swiftcall ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9A5B0@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_225A9A5DC(uint64_t a1, uint64_t a2)
{
  if (qword_27D739F30 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  if (*(off_27D73BF58 + 2))
  {
    sub_2259F18D4(a1, a2);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_225A9A660(uint64_t a1, uint64_t a2)
{
  if (qword_27D739F30 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = off_27D73BF58;
  if (*(off_27D73BF58 + 2) && (v3 = sub_2259F18D4(a1, a2), (v4 & 1) != 0))
  {
    return *(v2[7] + 8 * v3);
  }

  else
  {
    return 0;
  }
}

CoreIDVShared::ISO23220_1_ElementIdentifier_optional __swiftcall ISO23220_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_225A9A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A9A924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_225CCFBD4();
  a3(v4);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_225CCE5B4();
}

uint64_t sub_225A9AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_225CCFBD4();
  a4(v5);
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9AAA4@<X0>(uint64_t *a1@<X8>)
{
  result = ISO23220_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDVShared::ISO23220_1_Japan_ElementIdentifier_optional __swiftcall ISO23220_1_Japan_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9AB68(uint64_t a1)
{
  sub_225CCE5B4();
}

void sub_225A9AC9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000065646FLL;
  v4 = 0x63696E755F786573;
  v5 = 0x8000000225D0B4D0;
  v6 = 0xD000000000000019;
  if (v2 != 5)
  {
    v6 = 0x7469617274726F70;
    v5 = 0xE800000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000018;
    v3 = 0x8000000225D0B410;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x8000000225D0B470;
  v8 = 0xD000000000000016;
  v9 = 0xD000000000000011;
  v10 = 0x8000000225D0B490;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x8000000225D0B4B0;
  }

  if (*v1)
  {
    v8 = v9;
    v7 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (v12 ^ v13 | v11)
  {
    v3 = v7;
  }

  *a1 = v14;
  a1[1] = v3;
}

CoreIDVShared::ISO23220_PhotoID_1_ElementIdentifier_optional __swiftcall ISO23220_PhotoID_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9AE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_225CCFBD4();
  a3(v7, v5);
  return sub_225CCFC24();
}

uint64_t sub_225A9AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_225CCFBD4();
  a4(v8, v6);
  return sub_225CCFC24();
}

unint64_t sub_225A9AEFC@<X0>(unint64_t *a1@<X8>)
{
  result = ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_225A9AF38()
{
  result = qword_27D73BF70;
  if (!qword_27D73BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF70);
  }

  return result;
}

unint64_t sub_225A9AFC0()
{
  result = qword_27D73BF88;
  if (!qword_27D73BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF88);
  }

  return result;
}

unint64_t sub_225A9B018()
{
  result = qword_27D73BF90;
  if (!qword_27D73BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF90);
  }

  return result;
}

unint64_t sub_225A9B06C()
{
  result = qword_27D73BF98;
  if (!qword_27D73BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BF98);
  }

  return result;
}

unint64_t sub_225A9B0EC()
{
  result = qword_27D73BFA0;
  if (!qword_27D73BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFA0);
  }

  return result;
}

unint64_t sub_225A9B140()
{
  result = qword_27D73BFA8;
  if (!qword_27D73BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFA8);
  }

  return result;
}

unint64_t sub_225A9B1C8()
{
  result = qword_27D73BFC0;
  if (!qword_27D73BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFC0);
  }

  return result;
}

unint64_t sub_225A9B220()
{
  result = qword_27D73BFC8;
  if (!qword_27D73BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFC8);
  }

  return result;
}

unint64_t sub_225A9B2A0()
{
  result = qword_27D73BFD0;
  if (!qword_27D73BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFD0);
  }

  return result;
}

unint64_t sub_225A9B2F4()
{
  result = qword_27D73BFD8;
  if (!qword_27D73BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFD8);
  }

  return result;
}

unint64_t sub_225A9B37C()
{
  result = qword_27D73BFF0;
  if (!qword_27D73BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFF0);
  }

  return result;
}

unint64_t sub_225A9B3D4()
{
  result = qword_27D73BFF8;
  if (!qword_27D73BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73BFF8);
  }

  return result;
}

unint64_t sub_225A9B454()
{
  result = qword_27D73C000;
  if (!qword_27D73C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C000);
  }

  return result;
}

unint64_t sub_225A9B4A8()
{
  result = qword_27D73C008;
  if (!qword_27D73C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C008);
  }

  return result;
}

unint64_t sub_225A9B530()
{
  result = qword_27D73C020;
  if (!qword_27D73C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C020);
  }

  return result;
}

unint64_t sub_225A9B5B0()
{
  result = qword_27D73C028;
  if (!qword_27D73C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C028);
  }

  return result;
}

unint64_t sub_225A9B604()
{
  result = qword_27D73C030;
  if (!qword_27D73C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C030);
  }

  return result;
}

unint64_t sub_225A9B68C()
{
  result = qword_27D73C048;
  if (!qword_27D73C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C048);
  }

  return result;
}

uint64_t sub_225A9B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_225A9B748()
{
  result = qword_27D73C050;
  if (!qword_27D73C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C050);
  }

  return result;
}

unint64_t sub_225A9B79C()
{
  result = qword_27D73C058;
  if (!qword_27D73C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C058);
  }

  return result;
}

uint64_t sub_225A9B820(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO18013_5_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013_5_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPError.PropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPError.PropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO23220_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO23220_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO23220_PhotoID_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO23220_PhotoID_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225A9BE18()
{
  result = qword_27D73C070;
  if (!qword_27D73C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C070);
  }

  return result;
}

uint64_t ISO18013DeviceAuthentication.docType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013DeviceAuthentication(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ISO18013DeviceAuthentication(uint64_t a1)
{
  result = qword_27D73C098;
  if (!qword_27D73C098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013DeviceAuthentication.deviceNamespaceBytes.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013DeviceAuthentication(0) + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_2259CB710(v4, v5);
}

__n128 ISO18013DeviceAuthentication.init(sessionTranscript:docType:deviceNamespaceBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *a4;
  v8 = a4[1].n128_u64[0];
  v9 = a4[1].n128_u64[1];
  sub_225A9C018(a1, a5);
  v10 = type metadata accessor for ISO18013DeviceAuthentication(0);
  v11 = (a5 + *(v10 + 20));
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5 + *(v10 + 24));
  result = v14;
  *v12 = v14;
  v12[1].n128_u64[0] = v8;
  v12[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_225A9C018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013SessionTranscript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013DeviceAuthentication.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ISO18013DeviceAuthentication(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v9;
  v21 = v6;
  __swift_mutable_project_boxed_opaque_existential_0(v25, v26);
  sub_225CCF874();

  __swift_mutable_project_boxed_opaque_existential_0(v25, v26);
  sub_225A9CAD4(&qword_27D73C078, type metadata accessor for ISO18013SessionTranscript, &protocol conformance descriptor for ISO18013SessionTranscript);
  v10 = v21;
  sub_225CCF884();
  v11 = v10;
  v12 = v20;
  sub_225A9C018(v11, v20);
  __swift_mutable_project_boxed_opaque_existential_0(v25, v26);
  v13 = sub_225CCF874();
  v14 = (v12 + *(v7 + 20));
  *v14 = v13;
  v14[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C080, &qword_225CDE300);
  __swift_mutable_project_boxed_opaque_existential_0(v25, v26);
  sub_225A9C6B0(&qword_27D73C088, &protocol conformance descriptor for CBOREncodedCBOR<A>);
  sub_225CCF884();
  v16 = v23;
  v17 = v24;
  v18 = v12 + *(v7 + 24);
  *v18 = v22;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  __swift_destroy_boxed_opaque_existential_0(v25);
  sub_225A9C3BC(v12, v27, type metadata accessor for ISO18013DeviceAuthentication);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225A9C424(v12, type metadata accessor for ISO18013DeviceAuthentication);
}

uint64_t sub_225A9C3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A9C424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ISO18013DeviceAuthentication.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    type metadata accessor for ISO18013SessionTranscript(0);
    sub_225A9CAD4(&qword_27D73B048, type metadata accessor for ISO18013SessionTranscript, &protocol conformance descriptor for ISO18013SessionTranscript);
    sub_225CCF8C4();
    v3 = type metadata accessor for ISO18013DeviceAuthentication(0);
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    sub_225CCF8B4();
    v4 = v1 + *(v3 + 24);
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    sub_2259CB710(v5, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C080, &qword_225CDE300);
    sub_225A9C6B0(&qword_27D73C090, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    sub_225CCF8C4();
    sub_2259BEF00(v5, v6);
  }

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_225A9C6B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C080, &qword_225CDE300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_225A9C758(uint64_t a1)
{
  type metadata accessor for ISO18013SessionTranscript(319);
  if (v1 <= 0x3F)
  {
    sub_225A9C7E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225A9C7E4(uint64_t a1)
{
  if (!qword_27D73C0A8)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0B0, "h");
    v3 = sub_225A9C994(&qword_27D73C0B8, sub_225A9C8D8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v4 = sub_225A9C994(&qword_27D73C0D8, sub_225A9CA18, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v5 = type metadata accessor for CBOREncodedCBOR(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D73C0A8);
    }
  }
}

unint64_t sub_225A9C8D8()
{
  result = qword_27D73C0C0;
  if (!qword_27D73C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0C8, &qword_225CDE398);
    sub_225A9CAD4(&qword_27D73C0D0, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C0C0);
  }

  return result;
}

uint64_t sub_225A9C994(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0B0, "h");
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A9CA18()
{
  result = qword_27D73C0E0;
  if (!qword_27D73C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C0C8, &qword_225CDE398);
    sub_225A9CAD4(&qword_27D73C0E8, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C0E0);
  }

  return result;
}

uint64_t sub_225A9CAD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225A9CB40()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDE778[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225A9CBC8()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CDE778[v1]);
  return sub_225CCFC24();
}

_BYTE *sub_225A9CC14@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 7uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010303030300uLL >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225A9CC5C()
{
  v1 = 0x6E496E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x696C696261706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_225A9CCC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A9E08C(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_225A9CD08@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010303030300uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225A9CD34(uint64_t a1)
{
  v2 = sub_225A9D0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A9CD70(uint64_t a1)
{
  v2 = sub_225A9D0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 ISO18013DeviceEngagement.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 ISO18013DeviceEngagement.version.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t ISO18013DeviceEngagement.originInfos.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void ISO18013DeviceEngagement.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *(a1 + 2) = *(v1 + 26);
  *a1 = v2;
}

__int16 *ISO18013DeviceEngagement.capabilities.setter(__int16 *result)
{
  v2 = *result;
  *(v1 + 26) = *(result + 2);
  *(v1 + 24) = v2;
  return result;
}

__n128 ISO18013DeviceEngagement.init(version:originInfos:capabilities:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 2);
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u8[10] = v5;
  a4[1].n128_u16[4] = v4;
  return result;
}

uint64_t ISO18013DeviceEngagement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C0F0, &qword_225CDE3A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v8 = *v1;
  v7 = v1[1];
  v15 = v1[2];
  v19 = *(v1 + 26);
  v14 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D0EC();
  sub_225CCFCE4();
  v17 = v8;
  v18 = v7;
  v20 = 0;
  sub_225A945D8();
  v9 = v16;
  sub_225CCF7E4();
  if (!v9)
  {
    v10 = v14;
    v11 = v19;
    v17 = v15;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C100, &qword_225CDE3A8);
    sub_225A9D420(&qword_27D73C108, &qword_27D73C0E8, &protocol conformance descriptor for AnyCodable, MEMORY[0x277D83948]);
    sub_225CCF774();
    BYTE2(v17) = (v10 | (v11 << 16)) >> 16;
    LOWORD(v17) = v10;
    v20 = 2;
    sub_225A9D140();
    sub_225CCF774();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_225A9D0EC()
{
  result = qword_27D73C0F8;
  if (!qword_27D73C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C0F8);
  }

  return result;
}

unint64_t sub_225A9D140()
{
  result = qword_27D73C110;
  if (!qword_27D73C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C110);
  }

  return result;
}

uint64_t ISO18013DeviceEngagement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C118, &qword_225CDE3B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D0EC();
  sub_225CCFCA4();
  if (!v2)
  {
    v20 = 0;
    sub_225A94CA8();
    sub_225CCF6E4();
    v10 = v18;
    v9 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C100, &qword_225CDE3A8);
    v20 = 1;
    sub_225A9D420(&qword_27D73C120, &qword_27D73C0D0, &protocol conformance descriptor for AnyCodable, MEMORY[0x277D83978]);
    sub_225CCF674();
    v17 = v9;
    v12 = v18;
    v20 = 2;
    sub_225A9D4EC();
    sub_225CCF674();
    (*(v6 + 8))(v8, v5);
    v13 = v18;
    v14 = BYTE2(v18);
    v15 = v17;
    *a2 = v10;
    *(a2 + 8) = v15;
    *(a2 + 16) = v12;
    *(a2 + 26) = v14;
    *(a2 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A9D420(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C100, &qword_225CDE3A8);
    sub_225A9D4A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225A9D4A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCodable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A9D4EC()
{
  result = qword_27D73C128;
  if (!qword_27D73C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C128);
  }

  return result;
}

uint64_t sub_225A9D570()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1 + 2);
  return sub_225CCFC24();
}

uint64_t sub_225A9D5E8()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1 + 2);
  return sub_225CCFC24();
}

_BYTE *sub_225A9D62C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 5uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x201000303uLL >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_225A9D668()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t sub_225A9D6C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A9E1AC(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_225A9D6F8@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x201000303uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_225A9D720(uint64_t a1)
{
  v2 = sub_225A9D9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A9D75C(uint64_t a1)
{
  v2 = sub_225A9D9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

CoreIDVShared::ISO18013DeviceEngagement::Capabilities __swiftcall ISO18013DeviceEngagement.Capabilities.init(isHandoverSessionEstablishmentSupported:isReaderAuthAllSupported:isExtendedRequestSupported:)(Swift::Bool_optional isHandoverSessionEstablishmentSupported, Swift::Bool_optional isReaderAuthAllSupported, Swift::Bool_optional isExtendedRequestSupported)
{
  v3->value = isHandoverSessionEstablishmentSupported.value;
  v3[1].value = isReaderAuthAllSupported.value;
  v3[2].value = isExtendedRequestSupported.value;
  result.isHandoverSessionEstablishmentSupported = isHandoverSessionEstablishmentSupported;
  return result;
}

uint64_t ISO18013DeviceEngagement.Capabilities.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C130, &qword_225CDE3B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 1);
  v9[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D9F4();
  sub_225CCFCE4();
  v12 = 0;
  sub_225CCF744();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_225CCF744();
  v10 = 2;
  sub_225CCF744();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_225A9D9F4()
{
  result = qword_27D73C138;
  if (!qword_27D73C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C138);
  }

  return result;
}

uint64_t ISO18013DeviceEngagement.Capabilities.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C140, &qword_225CDE3C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A9D9F4();
  sub_225CCFCA4();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_225CCF634();
    v15 = 1;
    v13 = sub_225CCF634();
    v14 = 2;
    v11 = sub_225CCF634();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v13;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_225A9DC58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 27))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_225A9DCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ISO18013DeviceEngagement.Capabilities(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013DeviceEngagement.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_225A9DE80()
{
  result = qword_27D73C148;
  if (!qword_27D73C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C148);
  }

  return result;
}

unint64_t sub_225A9DED8()
{
  result = qword_27D73C150;
  if (!qword_27D73C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C150);
  }

  return result;
}

unint64_t sub_225A9DF30()
{
  result = qword_27D73C158;
  if (!qword_27D73C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C158);
  }

  return result;
}

unint64_t sub_225A9DF88()
{
  result = qword_27D73C160;
  if (!qword_27D73C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C160);
  }

  return result;
}

unint64_t sub_225A9DFE0()
{
  result = qword_27D73C168;
  if (!qword_27D73C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C168);
  }

  return result;
}

unint64_t sub_225A9E038()
{
  result = qword_27D73C170;
  if (!qword_27D73C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C170);
  }

  return result;
}

uint64_t sub_225A9E08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E696769726FLL && a2 == 0xEB00000000736F66 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_225A9E1AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000027 && 0x8000000225D1B420 == a2;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000225D1B450 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000225D1B470 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *computeISO18013Digest(algorithm:data:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v63 = sub_225CCE184();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCDBC4();
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_225CCE174();
  v54 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_225CCDBB4();
  v57 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCE164();
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCDBA4();
  v52 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  v64 = a2;
  v65 = a3;
  sub_2259D9454();
  v20 = sub_225CCD3E4();
  v22 = v21;

  v66 = v3;
  if (!v3)
  {
    v49 = v18;
    v24 = v61;
    v23 = v62;
    v25 = v63;
    if (v19)
    {
      if (v19 == 1)
      {
        sub_225A9F1B0(&qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
        v26 = v53;
        v27 = v24;
        sub_225CCDB94();
        sub_2259CB710(v20, v22);
        sub_225A9EC88(v20, v22, v26);
        v28 = v20;
        sub_2259BEF00(v20, v22);
        v29 = v56;
        sub_225CCDB84();
        (*(v54 + 8))(v26, v27);
        sub_225A9F1B0(&qword_27D73AE68, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
        v30 = v51;
        v31 = sub_225CCE154();
        v33 = sub_2259D732C(v31, v32);

        v15 = sub_2259D8490(v33);

        sub_2259BEF00(v28, v22);
        (*(v57 + 8))(v29, v30);
      }

      else
      {
        sub_225A9F1B0(&qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
        sub_225CCDB94();
        sub_2259CB710(v20, v22);
        sub_225A9EEAC(v20, v22, v23);
        sub_2259BEF00(v20, v22);
        v42 = v55;
        sub_225CCDB84();
        (*(v58 + 8))(v23, v25);
        sub_225A9F1B0(&qword_27D73AE78, MEMORY[0x277CC52E8], MEMORY[0x277CC52E0]);
        v43 = v59;
        v44 = sub_225CCE154();
        v46 = sub_2259D732C(v44, v45);

        v15 = sub_2259D8490(v46);

        sub_2259BEF00(v20, v22);
        (*(v60 + 8))(v42, v43);
      }
    }

    else
    {
      sub_225A9F1B0(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_225CCDB94();
      v34 = v20;
      v35 = v20;
      v36 = v22;
      sub_2259CB710(v35, v22);
      sub_2259DB138(v34, v22, v15);
      sub_2259BEF00(v34, v22);
      v37 = v49;
      sub_225CCDB84();
      (*(v50 + 8))(v15, v13);
      sub_225A9F1B0(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
      v38 = v16;
      v39 = sub_225CCE154();
      v41 = sub_2259D732C(v39, v40);

      v15 = sub_2259D8490(v41);

      sub_2259BEF00(v34, v36);
      (*(v52 + 8))(v37, v38);
    }
  }

  return v15;
}

CoreIDVShared::ISO18013DigestAlgorithm_optional __swiftcall ISO18013DigestAlgorithm.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225A9EB04(char *a1, char *a2)
{
  if (*&aSha256_2[8 * *a1] == *&aSha256_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225A9EB6C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9EBC8(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A9EC08()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9EC88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_225CCE174();
      sub_225A9F1B0(&qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return sub_225CCDB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  }

  sub_225CCE174();
  sub_225A9F1B0(&qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  return sub_225CCDB74();
}

uint64_t sub_225A9EEAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_225CCE184();
      sub_225A9F1B0(&qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_225CCDB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_225A9F0D0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  sub_225CCE184();
  sub_225A9F1B0(&qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  return sub_225CCDB74();
}

uint64_t sub_225A9F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      a5(0);
      sub_225A9F1B0(a6, a7, a8);
      return sub_225CCDB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225A9F1B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_225A9F1FC()
{
  result = qword_27D73C178;
  if (!qword_27D73C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C178);
  }

  return result;
}

void *ISO18013ReaderRequest.ItemsRequest.alternativeElements.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) >= 2uLL)
  {

    v3 = *(v2 + 16);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D84F90] + 16);
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 + 64;
  v6 = MEMORY[0x277D84F90];
  v55 = v2 + 64;
  v57 = v2;
  do
  {
    v7 = (v5 + 40 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        result = sub_225CCFAC4();
        __break(1u);
        return result;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_7;
      }

      v10 = *(v7 - 4);
      v9 = *(v7 - 3);
      v12 = *(v7 - 2);
      v11 = *(v7 - 1);
      v13 = *v7;

      v14 = sub_2259F18D4(v10, v9);
      if (v15)
      {
        if (*(*(*(v1 + 56) + 8 * v14) + 16))
        {
          break;
        }
      }

LABEL_6:

      v2 = v57;
LABEL_7:
      ++v8;
      v7 += 5;
      if (v3 == v8)
      {
        goto LABEL_23;
      }
    }

    sub_2259F18D4(v12, v11);
    if ((v16 & 1) == 0)
    {

      goto LABEL_6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2259D53DC(0, *(v6 + 16) + 1, 1);
    }

    v17 = v12;
    v19 = *(v6 + 16);
    v18 = *(v6 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      sub_2259D53DC((v18 > 1), v19 + 1, 1);
      v20 = v19 + 1;
      v17 = v12;
    }

    v4 = v8 + 1;
    *(v6 + 16) = v20;
    v21 = (v6 + 40 * v19);
    v21[4] = v10;
    v21[5] = v9;
    v21[6] = v17;
    v21[7] = v11;
    v21[8] = v13;
    v5 = v55;
    v2 = v57;
  }

  while (v3 - 1 != v8);
LABEL_23:

  v22 = sub_225B2DD80(MEMORY[0x277D84F90]);
  v51 = *(v6 + 16);
  if (v51)
  {
    v23 = 0;
    v50 = v6 + 32;
    v52 = v6;
    do
    {
      if (v23 >= *(v6 + 16))
      {
        goto LABEL_53;
      }

      v24 = (v50 + 40 * v23);
      v25 = v24[1];
      v58 = *v24;
      v26 = v24[3];
      v54 = v24[2];
      v27 = v24[4];
      ++v23;
      v28 = *(v27 + 16);
      swift_bridgeObjectRetain_n();
      v56 = v26;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v29 = 0;
      v30 = MEMORY[0x277D84F90];
      while (v28 != v29)
      {
        if (v29 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v31 = *(v27 + 8 * v29++ + 32);
        if (*(v31 + 16))
        {
          v53 = v25;

          v32 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2259D53FC(0, *(v30 + 16) + 1, 1);
          }

          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_2259D53FC((v33 > 1), v34 + 1, 1);
          }

          *(v30 + 16) = v34 + 1;
          *(v30 + 8 * v34 + 32) = v31;
          v23 = v32;
          v25 = v53;
        }
      }

      if (!*(v30 + 16))
      {

        v30 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = sub_2259F18D4(v58, v25);
      v38 = v22[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_54;
      }

      v41 = v36;
      if (v22[3] >= v40)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v36)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_225A44BBC();
          if (v41)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_225A419D4(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_2259F18D4(v58, v25);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_56;
        }

        v37 = v42;
        if (v41)
        {
LABEL_25:

          goto LABEL_26;
        }
      }

      v44 = sub_225B2DD94(MEMORY[0x277D84F90]);
      v22[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v22[6] + 16 * v37);
      *v45 = v58;
      v45[1] = v25;
      *(v22[7] + 8 * v37) = v44;
      v46 = v22[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_55;
      }

      v22[2] = v48;
LABEL_26:
      sub_225A054B4(v30, v54, v56);

      v6 = v52;
    }

    while (v23 != v51);
  }

  return v22;
}

_OWORD *sub_225A9F748(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2259B9624(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_225A9F7B4(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_225A9F7FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_225CCF454();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2259B9624(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_225A9F8BC(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2259A9C20(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_225A9F928(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 48) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

unint64_t sub_225A9F968(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_225A9F9B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2259B9624(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_225A9FA20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_225A9FA68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_225A9FAB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  sub_225A9FBA0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_225A9FBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013IssuerSignedItem.init(digestID:random:elementIdentifier:elementValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  v8 = a7 + *(type metadata accessor for ISO18013IssuerSignedItem(0) + 28);

  return sub_225A9FCA8(a6, v8);
}

uint64_t type metadata accessor for ISO18013IssuerSignedItem(uint64_t a1)
{
  result = qword_27D73C1B8;
  if (!qword_27D73C1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225A9FCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013IssuerSignedItem.random.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

uint64_t ISO18013IssuerSignedItem.elementIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_225A9FDD0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A9FE9C(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A9FF54()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225AA001C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225AA1588(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_225AA004C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4449747365676964;
  v4 = 0x8000000225D0B590;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x56746E656D656C65;
    v4 = 0xEC00000065756C61;
  }

  if (*v1)
  {
    v3 = 0x6D6F646E6172;
    v2 = 0xE600000000000000;
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

unint64_t sub_225AA00D4()
{
  v1 = 0x4449747365676964;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x56746E656D656C65;
  }

  if (*v0)
  {
    v1 = 0x6D6F646E6172;
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

unint64_t sub_225AA0158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AA1588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AA0180(uint64_t a1)
{
  v2 = sub_225AA0A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA01BC(uint64_t a1)
{
  v2 = sub_225AA0A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AA0204()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AA0258()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225AA02A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225AA15D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_225AA02D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AA15D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AA0300(uint64_t a1)
{
  v2 = sub_225AA0960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA033C(uint64_t a1)
{
  v2 = sub_225AA0960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013IssuerSignedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C180, &qword_225CDE890);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v28 = type metadata accessor for AnyCodable(0);
  v7 = MEMORY[0x28223BE20](v28);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C188, &qword_225CDE898);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v24 = type metadata accessor for ISO18013IssuerSignedItem(0);
  MEMORY[0x28223BE20](v24);
  v29 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v35);
  v14 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v14 & 1) == 0)
  {
    sub_225AA0A78();
    sub_225CCFCA4();
    if (!v2)
    {
      LOBYTE(v33) = 0;
      v18 = sub_225CCF6D4();
      v17 = v29;
      *v29 = v18;
      v34 = 1;
      sub_2259D94A8();
      sub_225CCF6E4();
      *(v17 + 8) = v33;
      LOBYTE(v33) = 2;
      *(v17 + 24) = sub_225CCF684();
      *(v17 + 32) = v22;
      LOBYTE(v33) = 3;
      sub_225AA1254(&qword_27D73C0D0, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
      v21 = v27;
      sub_225CCF6E4();
      (*(v30 + 8))(v12, v10);
      goto LABEL_7;
    }

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_225AA0960();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v33) = 0;
  v15 = v32;
  v16 = sub_225CCF6D4();
  v17 = v29;
  *v29 = v16;
  v34 = 1;
  sub_2259D94A8();
  sub_225CCF6E4();
  *(v17 + 8) = v33;
  LOBYTE(v33) = 2;
  *(v17 + 24) = sub_225CCF684();
  *(v17 + 32) = v20;
  LOBYTE(v33) = 3;
  sub_225AA1254(&qword_27D73C0D0, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
  v21 = v26;
  sub_225CCF6E4();
  (*(v31 + 8))(v6, v15);
LABEL_7:
  sub_225A9FCA8(v21, v17 + *(v24 + 28));
  sub_225AA09B4(v17, v25, type metadata accessor for ISO18013IssuerSignedItem);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AA0A1C(v17);
}

unint64_t sub_225AA0960()
{
  result = qword_27D73C190;
  if (!qword_27D73C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C190);
  }

  return result;
}

uint64_t sub_225AA09B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AA0A1C(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013IssuerSignedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225AA0A78()
{
  result = qword_27D73C198;
  if (!qword_27D73C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C198);
  }

  return result;
}

uint64_t ISO18013IssuerSignedItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C1A0, &qword_225CDE8A0);
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C1A8, &qword_225CDE8A8);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v23);
  v9 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9)
  {
    sub_225AA0960();
    sub_225CCFCE4();
    LOBYTE(v20) = 0;
    v11 = v18;
    v10 = v19;
    sub_225CCF7D4();
    if (!v10)
    {
      v12 = *(v1 + 16);
      v20 = *(v1 + 8);
      v21 = v12;
      v22 = 1;
      sub_2259CB710(v20, v12);
      sub_2259D9454();
      sub_225CCF7E4();
      sub_2259BEF00(v20, v21);
      LOBYTE(v20) = 2;
      sub_225CCF784();
      type metadata accessor for ISO18013IssuerSignedItem(0);
      LOBYTE(v20) = 3;
      type metadata accessor for AnyCodable(0);
      sub_225AA1254(&qword_27D73C0E8, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
      sub_225CCF7E4();
    }

    return (*(v17 + 8))(v5, v11);
  }

  else
  {
    sub_225AA0A78();
    sub_225CCFCE4();
    LOBYTE(v20) = 0;
    v14 = v19;
    sub_225CCF7D4();
    if (!v14)
    {
      v15 = *(v1 + 16);
      v20 = *(v1 + 8);
      v21 = v15;
      v22 = 1;
      sub_2259CB710(v20, v15);
      sub_2259D9454();
      sub_225CCF7E4();
      sub_2259BEF00(v20, v21);
      LOBYTE(v20) = 2;
      sub_225CCF784();
      type metadata accessor for ISO18013IssuerSignedItem(0);
      LOBYTE(v20) = 3;
      type metadata accessor for AnyCodable(0);
      sub_225AA1254(&qword_27D73C0E8, type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
      sub_225CCF7E4();
    }

    return (*(v16 + 8))(v8, v6);
  }
}

uint64_t ISO18013IssuerSignedItem.hash(into:)(uint64_t a1)
{
  MEMORY[0x22AA6E420](*v1);
  sub_225CCCFB4();
  sub_225CCE5B4();
  type metadata accessor for ISO18013IssuerSignedItem(0);
  return AnyCodable.hash(into:)(a1);
}

uint64_t ISO18013IssuerSignedItem.hashValue.getter()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  sub_225CCE5B4();
  type metadata accessor for ISO18013IssuerSignedItem(0);
  AnyCodable.hash(into:)(v2);
  return sub_225CCFC24();
}

uint64_t sub_225AA1014()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  sub_225CCE5B4();
  AnyCodable.hash(into:)(v2);
  return sub_225CCFC24();
}

uint64_t sub_225AA1090(uint64_t a1)
{
  MEMORY[0x22AA6E420](*v1);
  sub_225CCCFB4();
  sub_225CCE5B4();
  return AnyCodable.hash(into:)(a1);
}

uint64_t sub_225AA10F4()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  sub_225CCE5B4();
  AnyCodable.hash(into:)(v2);
  return sub_225CCFC24();
}

uint64_t _s13CoreIDVShared24ISO18013IssuerSignedItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || !sub_2259D8228(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v4 && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ISO18013IssuerSignedItem(0) + 28);

  return _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_225AA1254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225AA12C4(uint64_t a1)
{
  result = type metadata accessor for AnyCodable(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225AA137C()
{
  result = qword_27D73C1C8;
  if (!qword_27D73C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1C8);
  }

  return result;
}

unint64_t sub_225AA13D4()
{
  result = qword_27D73C1D0;
  if (!qword_27D73C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1D0);
  }

  return result;
}

unint64_t sub_225AA142C()
{
  result = qword_27D73C1D8;
  if (!qword_27D73C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1D8);
  }

  return result;
}

unint64_t sub_225AA1484()
{
  result = qword_27D73C1E0;
  if (!qword_27D73C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1E0);
  }

  return result;
}

unint64_t sub_225AA14DC()
{
  result = qword_27D73C1E8;
  if (!qword_27D73C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1E8);
  }

  return result;
}

unint64_t sub_225AA1534()
{
  result = qword_27D73C1F0;
  if (!qword_27D73C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C1F0);
  }

  return result;
}

unint64_t sub_225AA1588(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_225AA15D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t ISO18013JumboPackage.version.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013JumboPackage.init(version:packages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void ISO18013JumboPackage.init(version:packages:)(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  sub_225CCD424();
  swift_allocObject();
  v13 = sub_225CCD414();
  v14 = *(a3 + 16);
  if (v14)
  {
    v57 = a1;
    v58 = a4;
    v59 = a2;
    v56 = v12;
    v70 = MEMORY[0x277D84F90];
    sub_2259D543C(0, v14, 0);
    v15 = 0;
    v16 = v70;
    v17 = a3 + 40;
    v61 = v13;
    v60 = v14;
    while (v15 < *(a3 + 16))
    {
      v62 = v16;
      v18 = *v17;
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v65 = *(v17 - 8);
      v66 = v18;
      v67 = *(v17 + 8);
      v68 = v19;
      v69 = v20;
      v21 = v67;
      sub_2259CB710(v18, v67);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C1F8, &unk_225CDEC38);
      sub_225AA286C();
      v22 = sub_225CCD3F4();
      v63 = v5;
      if (v5)
      {

        sub_2259BEF00(v18, v21);

        a2 = v63;
        v28 = v63;
        v29 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v30 = swift_allocError();
        a4 = v31;
        swift_getErrorValue();
        v32 = v64;
        v33 = a2;
        sub_225B21FAC(v32, &v65);

        v16 = v66;
        v62 = v30;
        if (v66)
        {
          v61 = v65;
          v59 = *(&v67 + 1);
          v60 = v67;
          v34 = v68;
          a2 = v69;
        }

        else
        {
          v65 = a2;
          v35 = a2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
          sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
          if (swift_dynamicCast())
          {
            v36 = v70;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v38 = [v36 code];
            v39 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v39;
            *(inited + 40) = v38;
            v34 = sub_225B2C374(inited);
            swift_setDeallocating();
            a2 = v63;
            sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

            v40 = a2;
            v60 = 0;
            v61 = 0;
            v59 = 0;
            v16 = MEMORY[0x277D84F90];
          }

          else
          {
            v65 = a2;
            v41 = a2;
            v42 = sub_225CCE954();
            v43 = v56;
            v44 = swift_dynamicCast();
            v45 = *(v42 - 8);
            (*(v45 + 56))(v43, v44 ^ 1u, 1, v42);
            v46 = (*(v45 + 48))(v43, 1, v42);
            sub_2259CB640(v43, &unk_27D73B050, &unk_225CD3AD0);
            if (v46)
            {
              v47 = 0;
            }

            else
            {
              v47 = 23;
            }

            v61 = v47;
            v16 = MEMORY[0x277D84F90];
            v34 = sub_225B2C374(MEMORY[0x277D84F90]);
            v48 = a2;
            v60 = 0;
            v59 = 0;
          }
        }

        v14 = 0x8000000225D1B490;
        v17 = 0x8000000225D1B4C0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v34;
        sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v65);

        v5 = v65;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_20:
          v51 = *(v16 + 2);
          v50 = *(v16 + 3);
          if (v51 >= v50 >> 1)
          {
            v16 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v16);
          }

          v52 = v63;

          *(v16 + 2) = v51 + 1;
          v53 = &v16[56 * v51];
          *(v53 + 4) = 0;
          *(v53 + 5) = 0;
          *(v53 + 6) = 0xD000000000000028;
          *(v53 + 7) = v14;
          *(v53 + 8) = 0xD000000000000017;
          *(v53 + 9) = v17;
          *(v53 + 10) = 32;
          *a4 = v61;
          v54 = v60;
          *(a4 + 8) = v16;
          *(a4 + 16) = v54;
          *(a4 + 24) = v59;
          *(a4 + 32) = v5;
          *(a4 + 40) = a2;
          swift_willThrow();

          return;
        }

LABEL_24:
        v16 = sub_225B29AA0(0, *(v16 + 2) + 1, 1, v16);
        goto LABEL_20;
      }

      v24 = v22;
      v25 = v23;
      sub_2259BEF00(v18, v21);

      v16 = v62;
      v70 = v62;
      a4 = *(v62 + 16);
      v26 = *(v62 + 24);
      a2 = (a4 + 1);
      if (a4 >= v26 >> 1)
      {
        sub_2259D543C((v26 > 1), a4 + 1, 1);
        v16 = v70;
      }

      ++v15;
      *(v16 + 2) = a2;
      v27 = &v16[16 * a4];
      *(v27 + 4) = v24;
      *(v27 + 5) = v25;
      v17 += 48;
      v14 = v60;
      v5 = v63;
      if (v60 == v15)
      {

        a2 = v59;
        a4 = v58;
        a1 = v57;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_12:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v16;
}

uint64_t sub_225AA1D60()
{
  if (*v0)
  {
    return 0x736567616B636170;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_225AA1D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736567616B636170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AA1E78(uint64_t a1)
{
  v2 = sub_225AA28D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA1EB4(uint64_t a1)
{
  v2 = sub_225AA28D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013JumboPackage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C208, &qword_225CDEC48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AA28D0();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v44 = v6;
  v12 = v8;
  LOBYTE(v46) = 0;
  v14 = sub_225CCF684();
  v15 = v13;
  v16 = v14 == 0x2E312D6F626D754ALL && v13 == 0xE900000000000030;
  if (v16 || (sub_225CCF934() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C218, &qword_225CDEC50);
    v48 = 1;
    sub_225AA2924();
    sub_225CCF6E4();
    v43 = 0;
    (*(v12 + 8))(v10, v7);
    v17 = v45;
    v18 = v46;
    *v45 = v14;
    v17[1] = v15;
    v17[2] = v18;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v42 = a1;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D1B4E0);
    v45 = v15;
    MEMORY[0x22AA6CE70](v14, v15);
    MEMORY[0x22AA6CE70](0x74276E73656F6420, 0xEF20686374616D20);
    MEMORY[0x22AA6CE70](0x2E312D6F626D754ALL, 0xE900000000000030);
    MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D1B500);
    v19 = v47;
    v40 = 0x8000000225D1B490;
    v41 = v46;
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v43 = swift_allocError();
    v21 = v20;
    v22 = sub_225CCE954();
    v23 = *(v22 - 8);
    v24 = v44;
    (*(v23 + 56))(v44, 1, 1, v22);
    v25 = (*(v23 + 48))(v24, 1, v22);
    v26 = v19;
    LODWORD(v22) = v25;
    sub_2259CB640(v24, &unk_27D73B050, &unk_225CD3AD0);
    if (v22)
    {
      v27 = 410;
    }

    else
    {
      v27 = 23;
    }

    LODWORD(v44) = v27;

    v28 = MEMORY[0x277D84F90];
    v29 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v29;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v46);

    v31 = v46;
    v32 = sub_225B29AA0(0, 1, 1, v28);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_225B29AA0((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v35 = &v32[56 * v34];
    v36 = v41;
    *(v35 + 4) = v41;
    *(v35 + 5) = v26;
    v37 = v40;
    *(v35 + 6) = 0xD000000000000028;
    *(v35 + 7) = v37;
    *(v35 + 8) = 0x6F72662874696E69;
    *(v35 + 9) = 0xEB00000000293A6DLL;
    *(v35 + 10) = 48;
    *v21 = v44;
    *(v21 + 8) = v32;
    *(v21 + 16) = v36;
    *(v21 + 24) = v26;
    *(v21 + 32) = v31;
    *(v21 + 40) = 0;
    swift_willThrow();
    (*(v12 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }
}

uint64_t ISO18013JumboPackage.encode(to:)(void *a1)
{
  v3 = sub_225CCD454();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C228, &qword_225CDEC58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v9 = *(v1 + 16);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_225AA28D0();
  sub_225CCFCE4();
  v42 = 0;
  v14 = v39;
  result = sub_225CCF784();
  if (v14)
  {
    return (*(v6 + 8))(v8, v13);
  }

  v32[1] = 0;
  v33 = v8;
  v34 = v6;
  v35 = v13;
  v16 = 0;
  v39 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v17 = *(v9 + 16);
  v18 = v9 + 40;
  v32[0] = v9 + 40;
LABEL_4:
  v19 = (v18 + 16 * v16);
  while (1)
  {
    if (v17 == v16)
    {
      sub_2259D8718(0, &qword_27D73AC58, 0x277CF39D8);
      v25 = sub_225CCE7F4();

      v26 = [objc_opt_self() cborWithArray_];

      v27 = v36;
      sub_225CCD434();
      v41 = 1;
      sub_225AA29A8();
      v28 = v35;
      v29 = v38;
      v30 = v33;
      sub_225CCF7E4();
      v31 = v34;
      (*(v37 + 8))(v27, v29);
      return (*(v31 + 8))(v30, v28);
    }

    if (v16 >= *(v9 + 16))
    {
      break;
    }

    ++v16;
    v20 = v19 + 2;
    v22 = *(v19 - 1);
    v21 = *v19;
    sub_2259CB710(v22, *v19);
    v23 = sub_225CCCF74();
    v24 = [objc_opt_self() cborWithEncodedTag24Data_];

    result = sub_2259BEF00(v22, v21);
    v19 = v20;
    if (v24)
    {
      MEMORY[0x22AA6D020](result);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_225CCE844();
      }

      result = sub_225CCE884();
      v39 = v40;
      v18 = v32[0];
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225AA286C()
{
  result = qword_27D73C200;
  if (!qword_27D73C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C1F8, &unk_225CDEC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C200);
  }

  return result;
}

unint64_t sub_225AA28D0()
{
  result = qword_27D73C210;
  if (!qword_27D73C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C210);
  }

  return result;
}

unint64_t sub_225AA2924()
{
  result = qword_27D73C220;
  if (!qword_27D73C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C218, &qword_225CDEC50);
    sub_2259D94A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C220);
  }

  return result;
}

unint64_t sub_225AA29A8()
{
  result = qword_27D73C230;
  if (!qword_27D73C230)
  {
    sub_225CCD454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C230);
  }

  return result;
}

unint64_t sub_225AA2A24()
{
  result = qword_27D73C238;
  if (!qword_27D73C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C238);
  }

  return result;
}

unint64_t sub_225AA2A7C()
{
  result = qword_27D73C240;
  if (!qword_27D73C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C240);
  }

  return result;
}

unint64_t sub_225AA2AD4()
{
  result = qword_27D73C248;
  if (!qword_27D73C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C248);
  }

  return result;
}

void sub_225AA2B28(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), unint64_t *a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v177 = a8;
  v175 = a7;
  v183 = a6;
  v174 = a4;
  v178 = a3;
  v185 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v179 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v182 = &v163 - v14;
  v181 = a5(0);
  v15 = MEMORY[0x28223BE20](v181);
  v17 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v163 - v18;
  v20 = sub_225CCD954();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v173 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v163 - v24;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v26 = off_28105B918;
  v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v28));
  v29 = *(v21 + 16);
  v170 = v27;
  v169 = v21 + 16;
  v168 = v29;
  v29(v25, &v26[v27], v20);
  v172 = v26;
  v171 = v28;
  os_unfair_lock_unlock(&v26[v28]);
  v30 = v183;
  sub_225AA8304(a2, v19, v183);
  v31 = sub_225CCD934();
  v32 = sub_225CCED04();
  v33 = os_log_type_enabled(v31, v32);
  v180 = v21;
  v176 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v187 = v35;
    *v34 = 136315138;
    sub_225AA8304(v19, v17, v30);
    v36 = sub_225CCE504();
    v37 = v30;
    v38 = v20;
    v40 = v39;
    sub_225AA825C(v19, v37);
    v41 = sub_2259BE198(v36, v40, &v187);
    v20 = v38;

    *(v34 + 4) = v41;
    _os_log_impl(&dword_2259A7000, v31, v32, "Verifying reader signature with authentication structure %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA6F950](v35, -1, -1);
    MEMORY[0x22AA6F950](v34, -1, -1);

    v42 = *(v180 + 8);
    v42(v25, v38);
  }

  else
  {

    sub_225AA825C(v19, v30);
    v42 = *(v21 + 8);
    v42(v25, v20);
  }

  v43 = sub_225CCD334();
  v45 = v44;
  v46 = sub_225CCD344();
  if (!v46)
  {
    goto LABEL_11;
  }

  if (!v46[2])
  {

LABEL_11:
    v183 = v43;
    v181 = v45;
    v185 = 0x8000000225D15E40;
    v52 = MEMORY[0x277D84F90];
    v53 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v54 = swift_allocError();
    v56 = v55;
    v57 = sub_225CCE954();
    v58 = *(v57 - 8);
    v59 = v182;
    (*(v58 + 56))(v182, 1, 1, v57);
    LODWORD(v57) = (*(v58 + 48))(v59, 1, v57);
    sub_2259CB640(v59, &unk_27D73B050, &unk_225CD3AD0);
    if (v57)
    {
      v60 = 437;
    }

    else
    {
      v60 = 23;
    }

    v61 = sub_225B2C374(v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = v61;
    sub_225B2C4A0(v53, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v187);

    v63 = v187;
    v64 = sub_225B29AA0(0, 1, 1, v52);
    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_225B29AA0((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[56 * v66];
    *(v67 + 4) = 0xD000000000000031;
    *(v67 + 5) = 0x8000000225D15EF0;
    v68 = v185;
    *(v67 + 6) = 0xD00000000000002ALL;
    *(v67 + 7) = v68;
    *(v67 + 8) = 0xD000000000000036;
    *(v67 + 9) = 0x8000000225D15F30;
    *(v67 + 10) = 122;
    *v56 = v60;
    *(v56 + 8) = v64;
    *(v56 + 16) = 0xD000000000000031;
    *(v56 + 24) = 0x8000000225D15EF0;
    *(v56 + 32) = v63;
    *(v56 + 40) = 0;
    v51 = v54;
    swift_willThrow();
    sub_2259BEF00(v183, v181);
    v183 = 0;
    goto LABEL_17;
  }

  v167 = v20;
  v47 = v46[4];
  v48 = v46[5];
  sub_2259CB710(v47, v48);

  sub_2259CB710(v47, v48);
  v49 = v184;
  v50 = decodeCertificate(fromDER:)(v47, v48);
  if (v49)
  {
    sub_2259BEF00(v43, v45);
    sub_2259BEF00(v47, v48);
    sub_2259BEF00(v47, v48);
    v183 = 0;
    v51 = v49;
  }

  else
  {
    v99 = v50;
    v183 = v43;
    sub_2259BEF00(v47, v48);
    sub_2259BEF00(v47, v48);
    v100 = SecCertificateRef.rawECPublicKeyData()();
    if (v101 >> 60 == 15)
    {
      v184 = v99;
      v181 = v45;
      v180 = 0x8000000225D15E40;
      v178 = 0x8000000225D15F30;
      v102 = MEMORY[0x277D84F90];
      v103 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v185 = swift_allocError();
      v105 = v104;
      v106 = sub_225CCE954();
      v107 = *(v106 - 8);
      v108 = v182;
      (*(v107 + 56))(v182, 1, 1, v106);
      LODWORD(v106) = (*(v107 + 48))(v108, 1, v106);
      sub_2259CB640(v108, &unk_27D73B050, &unk_225CD3AD0);
      if (v106)
      {
        v109 = 438;
      }

      else
      {
        v109 = 23;
      }

      v110 = sub_225B2C374(v102);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v110;
      sub_225B2C4A0(v103, sub_225B2AC40, 0, v111, &v187);

      v112 = v187;
      v113 = sub_225B29AA0(0, 1, 1, v102);
      v115 = *(v113 + 2);
      v114 = *(v113 + 3);
      if (v115 >= v114 >> 1)
      {
        v113 = sub_225B29AA0((v114 > 1), v115 + 1, 1, v113);
      }

      v116 = v183;
      *(v113 + 2) = v115 + 1;
      v117 = &v113[56 * v115];
      *(v117 + 4) = 0xD000000000000022;
      *(v117 + 5) = 0x8000000225D15F90;
      v118 = v180;
      *(v117 + 6) = 0xD00000000000002ALL;
      *(v117 + 7) = v118;
      v119 = v178;
      *(v117 + 8) = 0xD000000000000036;
      *(v117 + 9) = v119;
      *(v117 + 10) = 125;
      *v105 = v109;
      *(v105 + 8) = v113;
      *(v105 + 16) = 0xD000000000000022;
      *(v105 + 24) = 0x8000000225D15F90;
      *(v105 + 32) = v112;
      *(v105 + 40) = 0;
      v51 = v185;
      swift_willThrow();
    }

    else
    {
      v166 = v100;
      v165 = v101;
      SecCertificateRef.publicKeyAlgorithm()();
      v120 = v187;
      if (v187 != 5)
      {
        sub_225AA82BC(v175, v177, a9);
        v138 = sub_225CCD3F4();
        v140 = v139;
        v164 = v120;
        v187 = v138;
        v188 = v139;
        v141 = v138;
        sub_2259CB710(v138, v139);
        sub_2259CB710(v141, v140);
        sub_2259D9454();
        v142 = sub_225CCD3E4();
        v144 = v143;
        v184 = v99;
        v181 = v45;
        v145 = v142;
        sub_2259BEF00(v187, v188);
        sub_2259CB710(v145, v144);
        v178 = v145;
        sub_2259BEF00(v145, v144);
        v177 = v141;
        sub_2259BEF00(v141, v140);
        v182 = v144;
        v146 = sub_225CCD304();
        sub_225CCD424();
        swift_allocObject();
        sub_225CCD414();
        v185 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 1;
        *(inited + 40) = v146;
        v148 = sub_225B2C828(inited);
        swift_setDeallocating();
        v187 = v148;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
        sub_2259DB480();
        v149 = sub_225CCD3F4();
        v151 = v150;
        v176 = v146;

        v187 = v149;
        v188 = v151;
        v189 = xmmword_225CD4150;
        v190 = v178;
        v191 = v182;
        sub_2259CB710(v178, v182);
        sub_2259E44EC();
        v152 = sub_225CCD3F4();
        v163 = v149;
        v175 = v151;
        v187 = v174;
        LOBYTE(v186) = v164;
        v153 = v176;
        v174 = v152;
        v176 = v154;
        sub_2259DBE5C(v183, v181, v166, v165, &v186, v153, v152, v154);

        sub_2259BEF00(v174, v176);
        sub_2259BEF00(v163, v175);
        sub_2259BEF00(0, 0xC000000000000000);
        v155 = v178;
        v156 = v182;
        sub_2259BEF00(v178, v182);
        v157 = v172;
        v158 = v171;
        os_unfair_lock_lock(&v172[v171]);
        v159 = v173;
        v168(v173, &v157[v170], v167);
        os_unfair_lock_unlock(&v157[v158]);
        v160 = sub_225CCD934();
        v161 = sub_225CCED04();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&dword_2259A7000, v160, v161, "COSESignatureValidator reader auth successfully validated", v162, 2u);
          MEMORY[0x22AA6F950](v162, -1, -1);
          sub_2259BEF00(v183, v181);
          sub_2259B97A8(v166, v165);

          sub_2259BEF00(v155, v156);
          sub_2259BEF00(v177, v185);
        }

        else
        {
          sub_2259BEF00(v183, v181);
          sub_2259BEF00(v177, v185);
          sub_2259B97A8(v166, v165);

          sub_2259BEF00(v155, v156);
        }

        v42(v159, v167);
        return;
      }

      v184 = v99;
      v181 = v45;
      v180 = 0x8000000225D15E40;
      v178 = 0x8000000225D15F30;
      v121 = MEMORY[0x277D84F90];
      v122 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v185 = swift_allocError();
      v124 = v123;
      v125 = sub_225CCE954();
      v126 = *(v125 - 8);
      v127 = v182;
      (*(v126 + 56))(v182, 1, 1, v125);
      LODWORD(v125) = (*(v126 + 48))(v127, 1, v125);
      sub_2259CB640(v127, &unk_27D73B050, &unk_225CD3AD0);
      if (v125)
      {
        v128 = 438;
      }

      else
      {
        v128 = 23;
      }

      v129 = sub_225B2C374(v121);
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v129;
      sub_225B2C4A0(v122, sub_225B2AC40, 0, v130, &v187);

      v131 = v187;
      v132 = sub_225B29AA0(0, 1, 1, v121);
      v134 = *(v132 + 2);
      v133 = *(v132 + 3);
      if (v134 >= v133 >> 1)
      {
        v132 = sub_225B29AA0((v133 > 1), v134 + 1, 1, v132);
      }

      v116 = v183;
      *(v132 + 2) = v134 + 1;
      v135 = &v132[56 * v134];
      *(v135 + 4) = 0xD000000000000025;
      *(v135 + 5) = 0x8000000225D15FC0;
      v136 = v180;
      *(v135 + 6) = 0xD00000000000002ALL;
      *(v135 + 7) = v136;
      v137 = v178;
      *(v135 + 8) = 0xD000000000000036;
      *(v135 + 9) = v137;
      *(v135 + 10) = 128;
      *v124 = v128;
      *(v124 + 8) = v132;
      *(v124 + 16) = 0xD000000000000025;
      *(v124 + 24) = 0x8000000225D15FC0;
      *(v124 + 32) = v131;
      *(v124 + 40) = 0;
      v51 = v185;
      swift_willThrow();
      sub_2259B97A8(v166, v165);
    }

    sub_2259BEF00(v116, v181);
    v183 = 0;
  }

LABEL_17:
  v69 = v51;
  v70 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v185 = swift_allocError();
  v72 = v71;
  swift_getErrorValue();
  v73 = v192;
  v74 = v51;
  sub_225B21FAC(v73, &v187);

  v75 = v188;
  v184 = 0x8000000225D15F70;
  if (v188)
  {
    v76 = v51;
    v182 = v187;
    v180 = *(&v189 + 1);
    v181 = v189;
    v77 = v190;
    v51 = v191;
  }

  else
  {
    v187 = v51;
    v78 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v79 = v186;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v80 = swift_initStackObject();
      *(v80 + 16) = xmmword_225CD30F0;
      *(v80 + 32) = 20;
      v81 = [v79 code];
      v82 = MEMORY[0x277D83BF8];
      *(v80 + 64) = MEMORY[0x277D83B88];
      *(v80 + 72) = v82;
      *(v80 + 40) = v81;
      v77 = sub_225B2C374(v80);
      swift_setDeallocating();
      sub_2259CB640(v80 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v83 = v51;
      v182 = 0;
      v181 = 0;
      v180 = 0;
      v75 = MEMORY[0x277D84F90];
      v76 = v51;
    }

    else
    {
      v187 = v51;
      v84 = v51;
      v85 = sub_225CCE954();
      v86 = v51;
      v87 = v179;
      v88 = swift_dynamicCast();
      v89 = *(v85 - 8);
      (*(v89 + 56))(v87, v88 ^ 1u, 1, v85);
      LODWORD(v89) = (*(v89 + 48))(v87, 1, v85);
      sub_2259CB640(v87, &unk_27D73B050, &unk_225CD3AD0);
      if (v89)
      {
        v90 = 0;
      }

      else
      {
        v90 = 23;
      }

      v182 = v90;
      v75 = MEMORY[0x277D84F90];
      v77 = sub_225B2C374(MEMORY[0x277D84F90]);
      v91 = v86;
      v181 = 0xD00000000000001CLL;
      v180 = 0x8000000225D15F70;
      v76 = v86;
      v51 = v86;
    }
  }

  v92 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v77;
  sub_225B2C4A0(v70, sub_225B2AC40, 0, v92, &v187);

  v93 = v187;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = sub_225B29AA0(0, *(v75 + 2) + 1, 1, v75);
  }

  v95 = *(v75 + 2);
  v94 = *(v75 + 3);
  if (v95 >= v94 >> 1)
  {
    v75 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v75);
  }

  *(v75 + 2) = v95 + 1;
  v96 = &v75[56 * v95];
  v97 = v184;
  *(v96 + 4) = 0xD00000000000001CLL;
  *(v96 + 5) = v97;
  *(v96 + 6) = 0xD00000000000002ALL;
  *(v96 + 7) = 0x8000000225D15E40;
  *(v96 + 8) = 0xD000000000000036;
  *(v96 + 9) = 0x8000000225D15F30;
  *(v96 + 10) = 144;
  *v72 = v182;
  v98 = v181;
  *(v72 + 8) = v75;
  *(v72 + 16) = v98;
  *(v72 + 24) = v180;
  *(v72 + 32) = v93;
  *(v72 + 40) = v51;
  swift_willThrow();
}

void *sub_225AA4250(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v23 = result;
    for (i = v9; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v12 = (a4)(0, a2);
      v14 = *(v12 - 8);
      result = (v12 - 8);
      v13 = v14;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v24, a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * i);
      if (v4)
      {

        return v23;
      }

      v15 = v24;
      if (v24)
      {
        break;
      }

      if (v9 == v5)
      {
        return v23;
      }
    }

    v16 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_225B2A398(0, v23[2] + 1, 1, v23);
    }

    v17 = v16;
    v18 = v16[2];
    v19 = v17;
    v20 = v17[3];
    v21 = v18 + 1;
    if (v18 >= v20 >> 1)
    {
      v22 = sub_225B2A398((v20 > 1), v18 + 1, 1, v19);
      v21 = v18 + 1;
      v19 = v22;
    }

    v19[2] = v21;
    result = v19;
    v19[v18 + 4] = v15;
  }

  while (v9 != v5);
  return result;
}

uint64_t static ISO18013MobileDocumentWebPresentmentRequestAuthenticator.authenticateAndParseCertificateChains(parsedRequest:origin:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = URL.serializedOrigin.getter();
  if (v10)
  {
    v12 = v10;
    v13 = (a1 + *(type metadata accessor for ISO18013RequestForwardingRequest(0) + 20));
    v14 = *v13;
    v15 = v13[1];

    ISO18013DCAPIHandover.init(encryptionInfoString:origin:)(v14, v15, v11, v12, v70);
    if (!v2)
    {
      *v9 = *v70;
      v16 = swift_storeEnumTagMultiPayload();
      v17 = *(a1 + 96);
      v67 = *(a1 + 80);
      v68 = v17;
      v69 = *(a1 + 112);
      v18 = *(a1 + 32);
      v63 = *(a1 + 16);
      v64 = v18;
      v19 = *(a1 + 64);
      v65 = *(a1 + 48);
      v66 = v19;
      v20 = v64;
      MEMORY[0x28223BE20](v16);
      *(&v46 - 2) = v9;
      sub_225AA802C(&v63, v57);
      v36 = sub_225AA4250(sub_225AA8010, (&v46 - 4), v20, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      sub_225AA8088(&v63);
      v37 = *(a1 + 64);
      v38 = *(a1 + 96);
      v60 = *(a1 + 80);
      v61 = v38;
      v39 = *(a1 + 32);
      v57[0] = *(a1 + 16);
      v57[1] = v39;
      v40 = *(a1 + 64);
      v42 = *(a1 + 16);
      v41 = *(a1 + 32);
      v58 = *(a1 + 48);
      v59 = v40;
      v53 = v37;
      v54 = v60;
      v55 = *(a1 + 96);
      v50 = v42;
      v62 = *(a1 + 112);
      v56 = *(a1 + 112);
      v51 = v41;
      v52 = v58;
      sub_225AA802C(v57, v48);
      v43 = sub_225AA497C(&v50, v9);
      v48[4] = v54;
      v48[5] = v55;
      v49 = v56;
      v48[0] = v50;
      v48[1] = v51;
      v48[2] = v52;
      v48[3] = v53;
      v44 = v43;
      sub_225AA8088(v48);
      v47 = v36;
      sub_225A84858(v44);
      v45 = v47;
      v47 = MEMORY[0x277D84FA0];
      v11 = sub_225AA80DC(v45);

      sub_225AA825C(v9, type metadata accessor for ISO18013SessionTranscript);
    }
  }

  else
  {
    v71 = 0x8000000225D1B520;
    v46 = 0x8000000225D1B570;
    v21 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v23 = v22;
    v24 = sub_225CCE954();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v6, 1, 1, v24);
    LODWORD(v24) = (*(v25 + 48))(v6, 1, v24);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v24)
    {
      v26 = 1077;
    }

    else
    {
      v26 = 23;
    }

    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v28;
    sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v63);

    v30 = v63;
    v31 = sub_225B29AA0(0, 1, 1, v27);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_225B29AA0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[56 * v33];
    *(v34 + 4) = v11;
    *(v34 + 40) = xmmword_225CDEE30;
    *(v34 + 7) = v71;
    *(v34 + 8) = 0xD00000000000003CLL;
    *(v34 + 9) = v46;
    *(v34 + 10) = 23;
    *v23 = v26;
    *(v23 + 8) = v31;
    *(v23 + 16) = v11;
    *(v23 + 24) = 0;
    *(v23 + 32) = v30;
    *(v23 + 40) = 0;
    swift_willThrow();
  }

  return v11;
}

char *sub_225AA497C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_225CCD954();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013ReaderRequest.DocRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ISO18013ReaderAuthenticationAll(0);
  MEMORY[0x28223BE20](v65);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = *(a1 + 40);
  v18 = *(a1 + 72);
  v81 = *(a1 + 56);
  v82 = v18;
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v66 = v14;
  v67 = v20;
  v83 = v19;
  v79 = *(a1 + 24);
  v80 = v17;
  sub_225AA8304(a2, v14, type metadata accessor for ISO18013SessionTranscript);
  v21 = *(v16 + 16);
  if (v21)
  {
    v61 = v2;
    sub_225A0DE54(&v79, &v70, &qword_27D73C250, &qword_225CDEE80);
    v78 = MEMORY[0x277D84F90];
    sub_2259D545C(0, v21, 0);
    v22 = v78;
    v23 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v84 = *(v9 + 72);
    do
    {
      sub_225AA8304(v23, v11, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      v24 = *(v11 + 4);
      v25 = *(v11 + 6);
      v75 = *(v11 + 5);
      v76 = v25;
      v26 = *(v11 + 1);
      v70 = *v11;
      v27 = *(v11 + 2);
      v28 = *(v11 + 3);
      v71 = v26;
      v72 = v27;
      v77 = *(v11 + 14);
      v73 = v28;
      v74 = v24;
      sub_225A0DE54(&v70, &v69, &qword_27D73AD30, &qword_225CE0360);
      sub_225AA825C(v11, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      v78 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2259D545C((v29 > 1), v30 + 1, 1);
        v22 = v78;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 120 * v30;
      v32 = v70;
      v33 = v71;
      v34 = v73;
      *(v31 + 64) = v72;
      *(v31 + 80) = v34;
      *(v31 + 32) = v32;
      *(v31 + 48) = v33;
      v35 = v74;
      v36 = v75;
      v37 = v76;
      *(v31 + 144) = v77;
      *(v31 + 112) = v36;
      *(v31 + 128) = v37;
      *(v31 + 96) = v35;
      v23 += v84;
      --v21;
    }

    while (v21);
    v3 = v61;
  }

  else
  {
    sub_225A0DE54(&v79, &v70, &qword_27D73C250, &qword_225CDEE80);
    v22 = MEMORY[0x277D84F90];
  }

  v39 = v65;
  v38 = v66;
  v40 = v68;
  v41 = &v68[*(v65 + 24)];
  *v41 = 0;
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  *(v41 + 3) = 1;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *(v41 + 8) = 0;
  sub_225A9C018(v38, v40);
  *(v40 + *(v39 + 20)) = v22;
  v42 = *(v41 + 2);
  v43 = *(v41 + 3);
  v44 = *v41;
  v71 = *(v41 + 1);
  v72 = v42;
  v73 = v43;
  *&v74 = *(v41 + 8);
  v70 = v44;
  v45 = sub_2259CB640(&v70, &qword_27D73C250, &qword_225CDEE80);
  v46 = v82;
  *(v41 + 2) = v81;
  *(v41 + 3) = v46;
  *(v41 + 8) = v83;
  v47 = v80;
  *v41 = v79;
  *(v41 + 1) = v47;
  if (v67)
  {
    MEMORY[0x28223BE20](v45);
    *(&v60 - 2) = v40;
    v49 = sub_225AA4250(sub_225AA8240, (&v60 - 4), v48, MEMORY[0x277CF3948]);
    if (!v3)
    {
      v41 = v49;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    v54 = v62;
    v53 = v63;
    v55 = v64;
    (*(v63 + 16))(v62, &v50[v51], v64);
    os_unfair_lock_unlock(&v50[v52]);
    v56 = sub_225CCD934();
    v57 = sub_225CCED34();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2259A7000, v56, v57, "ReaderAuthAll is nil, skipping certificate chain parsing for reader auth all", v58, 2u);
      MEMORY[0x22AA6F950](v58, -1, -1);
    }

    (*(v53 + 8))(v54, v55);
    v41 = MEMORY[0x277D84F90];
    v40 = v68;
  }

  sub_225AA825C(v40, type metadata accessor for ISO18013ReaderAuthenticationAll);
  return v41;
}

void sub_225AA4FA0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v116 - v8;
  v125 = sub_225CCD954();
  v126 = *(v125 - 1);
  v10 = MEMORY[0x28223BE20](v125);
  v124 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v116 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v116 - v15;
  v17 = sub_225CCD344();
  if (v17)
  {
    v18 = v17;
    v123 = v9;
    sub_225AA5E24(a1, a2, type metadata accessor for ISO18013ReaderAuthenticationAll, &qword_27D73C258, type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll, type metadata accessor for ISO18013ReaderAuthenticationAll);
    v19 = v3;
    v20 = MEMORY[0x277D841D0];
    if (v3)
    {
      v21 = v125;
      v22 = v126;
    }

    else
    {
      v22 = v126;
      if (qword_28105B910 != -1)
      {
        v115 = MEMORY[0x277D841D0];
        swift_once();
        v20 = v115;
      }

      v30 = off_28105B918;
      v31 = *(*off_28105B918 + *v20 + 16);
      v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v32));
      v21 = v125;
      (*(v22 + 16))(v14, &v30[v31], v125);
      os_unfair_lock_unlock(&v30[v32]);

      v33 = sub_225CCD934();
      v34 = sub_225CCED34();

      if (os_log_type_enabled(v33, v34))
      {
        LODWORD(v122) = v34;
        v35 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        p_isa = v120;
        v121 = v35;
        *v35 = 136446210;
        v36 = v18[2];
        v37 = MEMORY[0x277D84F90];
        if (v36)
        {
          v119 = v33;
          v117 = a3;
          v118 = 0;
          v127 = MEMORY[0x277D84F90];
          sub_2259D52A4(0, v36, 0);
          v37 = v127;
          v38 = v18 + 5;
          do
          {
            v39 = *(v38 - 1);
            v40 = *v38;
            sub_2259CB710(v39, *v38);
            v41 = sub_225CCCF84();
            v43 = v42;
            sub_2259BEF00(v39, v40);
            v127 = v37;
            v45 = v37[2];
            v44 = v37[3];
            if (v45 >= v44 >> 1)
            {
              sub_2259D52A4((v44 > 1), v45 + 1, 1);
              v37 = v127;
            }

            v38 += 2;
            v37[2] = v45 + 1;
            v46 = &v37[2 * v45];
            v46[4] = v41;
            v46[5] = v43;
            --v36;
          }

          while (v36);
          v19 = v118;
          a3 = v117;
          v22 = v126;
          v33 = v119;
        }

        v47 = MEMORY[0x22AA6D060](v37, MEMORY[0x277D837D0]);
        v49 = v48;

        v50 = sub_2259BE198(v47, v49, &p_isa);

        v51 = v121;
        *(v121 + 1) = v50;
        _os_log_impl(&dword_2259A7000, v33, v122, "Successfully validated Reader Auth All with X509 chain %{public}s", v51, 0xCu);
        v52 = v120;
        __swift_destroy_boxed_opaque_existential_0(v120);
        MEMORY[0x22AA6F950](v52, -1, -1);
        MEMORY[0x22AA6F950](v51, -1, -1);

        v21 = v125;
        (*(v22 + 8))(v14, v125);
      }

      else
      {

        (*(v22 + 8))(v14, v21);
      }

      v53 = decodeCertificateChain(fromDER:)(v18);
      if (!v19)
      {
        v99 = v53;

        *a3 = v99;
        return;
      }

      v20 = MEMORY[0x277D841D0];
    }

    if (qword_28105B910 != -1)
    {
      v114 = v20;
      swift_once();
      v20 = v114;
    }

    v54 = off_28105B918;
    v55 = *(*off_28105B918 + *v20 + 16);
    v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v56));
    v57 = &v54[v55];
    v58 = v124;
    (*(v22 + 16))(v124, v57, v21);
    os_unfair_lock_unlock(&v54[v56]);

    v59 = v19;
    v60 = sub_225CCD934();
    v61 = sub_225CCED14();

    if (os_log_type_enabled(v60, v61))
    {
      LODWORD(v121) = v61;
      v122 = v60;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      p_isa = v120;
      *v62 = 138412546;
      v64 = v19;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      v119 = v63;
      v63->isa = v65;
      *(v62 + 12) = 2082;
      v66 = v18[2];
      if (v66)
      {
        v117 = a3;
        v118 = v19;
        v127 = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v66, 0);
        v67 = v127;
        v68 = v18 + 5;
        do
        {
          v70 = *(v68 - 1);
          v69 = *v68;
          sub_2259CB710(v70, *v68);
          v71 = sub_225CCCF84();
          v73 = v72;
          sub_2259BEF00(v70, v69);
          v127 = v67;
          v75 = v67[2];
          v74 = v67[3];
          if (v75 >= v74 >> 1)
          {
            sub_2259D52A4((v74 > 1), v75 + 1, 1);
            v67 = v127;
          }

          v68 += 2;
          v67[2] = v75 + 1;
          v76 = &v67[2 * v75];
          v76[4] = v71;
          v76[5] = v73;
          --v66;
        }

        while (v66);

        v19 = v118;
        a3 = v117;
        v22 = v126;
        v58 = v124;
      }

      else
      {

        v67 = MEMORY[0x277D84F90];
      }

      v77 = MEMORY[0x22AA6D060](v67, MEMORY[0x277D837D0]);
      v79 = v78;

      v80 = sub_2259BE198(v77, v79, &p_isa);

      *(v62 + 14) = v80;
      v81 = v122;
      _os_log_impl(&dword_2259A7000, v122, v121, "IdentityDocumentWebPresentmentRawRequestValidator encountered error %@ while validating certificate for certificate chain: %{public}s", v62, 0x16u);
      v82 = v119;
      sub_2259CB640(v119, &unk_27D73FC90, &unk_225CFA710);
      MEMORY[0x22AA6F950](v82, -1, -1);
      v83 = v120;
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x22AA6F950](v83, -1, -1);
      MEMORY[0x22AA6F950](v62, -1, -1);

      (*(v22 + 8))(v58, v125);
    }

    else
    {

      (*(v22 + 8))(v58, v21);
    }

    swift_getErrorValue();
    Error.dipErrorCode.getter(v136, &p_isa);
    if (p_isa == 444 || (swift_getErrorValue(), Error.dipErrorCode.getter(v135, &p_isa), p_isa == 443))
    {
      v84 = v19;
      v85 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v87 = v86;
      swift_getErrorValue();
      v88 = v134;
      v89 = v19;
      sub_225B21FAC(v88, &p_isa);

      v90 = v129;
      v126 = "hains(parsedRequest:origin:)";
      if (v129)
      {
        v91 = v19;
        v125 = p_isa;
        v124 = v130;
        v123 = v131;
        v92 = v132;
        v122 = v133;
      }

      else
      {
        p_isa = &v19->isa;
        v93 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v94 = v127;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v96 = [v94 code];
          v97 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v97;
          *(inited + 40) = v96;
          v92 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v98 = v19;
          v124 = 0;
          v125 = 0;
          v123 = 0;
          v90 = MEMORY[0x277D84F90];
        }

        else
        {
          p_isa = &v19->isa;
          v100 = v19;
          v101 = sub_225CCE954();
          v102 = v123;
          v103 = swift_dynamicCast();
          v104 = *(v101 - 8);
          (*(v104 + 56))(v102, v103 ^ 1u, 1, v101);
          LODWORD(v101) = (*(v104 + 48))(v102, 1, v101);
          sub_2259CB640(v102, &unk_27D73B050, &unk_225CD3AD0);
          if (v101)
          {
            v105 = 0;
          }

          else
          {
            v105 = 23;
          }

          v125 = v105;
          v90 = MEMORY[0x277D84F90];
          v92 = sub_225B2C374(MEMORY[0x277D84F90]);
          v106 = v19;
          v124 = 0;
          v123 = 0;
        }

        v91 = v19;
        v122 = v19;
      }

      v107 = v126 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      p_isa = v92;
      sub_225B2C4A0(v85, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &p_isa);

      v109 = p_isa;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_225B29AA0(0, *(v90 + 2) + 1, 1, v90);
      }

      v111 = *(v90 + 2);
      v110 = *(v90 + 3);
      if (v111 >= v110 >> 1)
      {
        v90 = sub_225B29AA0((v110 > 1), v111 + 1, 1, v90);
      }

      *(v90 + 2) = v111 + 1;
      v112 = &v90[56 * v111];
      *(v112 + 4) = 0;
      *(v112 + 5) = 0;
      *(v112 + 6) = 0xD00000000000004CLL;
      *(v112 + 7) = 0x8000000225D1B520;
      *(v112 + 8) = 0xD00000000000003FLL;
      *(v112 + 9) = v107;
      *(v112 + 10) = 66;
      *v87 = v125;
      v113 = v124;
      *(v87 + 8) = v90;
      *(v87 + 16) = v113;
      *(v87 + 24) = v123;
      *(v87 + 32) = v109;
      *(v87 + 40) = v122;
      swift_willThrow();
    }

    else
    {

      *a3 = 0;
    }
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v23 = off_28105B918;
    v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v25));
    v26 = v125;
    (*(v126 + 16))(v16, &v23[v24], v125);
    os_unfair_lock_unlock(&v23[v25]);
    v27 = sub_225CCD934();
    v28 = sub_225CCED34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2259A7000, v27, v28, "Skipping reader auth all structure because it does not have an x509 chain attached.", v29, 2u);
      MEMORY[0x22AA6F950](v29, -1, -1);
    }

    (*(v126 + 8))(v16, v26);
    *a3 = 0;
  }
}

void sub_225AA5E24(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  v132 = a7;
  v136 = a3;
  v131 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v11 - 8);
  v129 = &v116 - v12;
  v139 = sub_225CCD954();
  v138 = *(v139 - 8);
  v13 = MEMORY[0x28223BE20](v139);
  v130 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v116 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v133 = &v116 - v18;
  MEMORY[0x28223BE20](v17);
  v134 = (&v116 - v19);
  v20 = sub_225CCF454();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD424();
  swift_allocObject();
  v24 = sub_225CCD414();
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v20, qword_27D73D108);
  (*(v21 + 16))(v23, v25, v20);
  v143 = &type metadata for ISO18013PresentmentType;
  LOBYTE(v140) = 2;
  v26 = sub_225CCD404();
  sub_225A0528C(&v140, v23);
  v26(&v147, 0);
  v136(0);
  sub_225AA82BC(a4, a5, a6);
  v136 = v24;
  v27 = v135;
  v28 = sub_225CCD3F4();
  v30 = MEMORY[0x277D841D0];
  if (v27)
  {
    v135 = 0;
    v31 = v138;

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    v61 = *(v31 + 16);
    v136 = v59;
    v62 = v139;
    v134 = v61;
    (v61)(v137, v59 + v58, v139);
    os_unfair_lock_unlock(&v58[v60]);
    v63 = v27;
    v64 = sub_225CCD934();
    v65 = sub_225CCED14();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138543362;
      v68 = v27;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_2259A7000, v64, v65, "IdentityDocumentWebPresentmentRawRequestValidator encountered error while authenticating a ReaderAuthAll %{public}@", v66, 0xCu);
      sub_2259CB640(v67, &unk_27D73FC90, &unk_225CFA710);
      MEMORY[0x22AA6F950](v67, -1, -1);
      v70 = v66;
      v62 = v139;
      MEMORY[0x22AA6F950](v70, -1, -1);
    }

    v71 = *(v31 + 8);
    v138 = v31 + 8;
    v71(v137, v62);
    v72 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v73 = sub_225CCE444();
      v74 = [v72 BOOLForKey_];

      if (v74)
      {
        os_unfair_lock_lock(&v58[v60]);
        v75 = v130;
        v76 = v139;
        (v134)(v130, v136 + v58, v139);
        v77 = &v58[v60];
        v78 = v75;
        os_unfair_lock_unlock(v77);
        v79 = sub_225CCD934();
        v80 = sub_225CCED34();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_2259A7000, v79, v80, "IdentityDocumentWebPresentmentRawRequestValidator treating error as non-fatal due to user defaults setting", v81, 2u);
          MEMORY[0x22AA6F950](v81, -1, -1);
        }

        else
        {
        }

        v71(v78, v76);
        return;
      }
    }

    else
    {
    }

    v138 = "viceRequest:sessionTranscript:)";
    v82 = v27;
    v83 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v139 = swift_allocError();
    v85 = v84;
    swift_getErrorValue();
    v86 = v146;
    v87 = v27;
    sub_225B21FAC(v86, &v140);

    v88 = v141;
    if (v141)
    {
      v137 = v140;
      v136 = v142;
      v134 = v143;
      v90 = v144;
      v89 = v145;
    }

    else
    {
      v140 = v27;
      v91 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v92 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v94 = [v92 code];
        v95 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v95;
        *(inited + 40) = v94;
        v90 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v96 = v27;
        v137 = 0;
        v136 = 0;
        v134 = 0;
        v88 = MEMORY[0x277D84F90];
      }

      else
      {
        v140 = v27;
        v102 = v27;
        v103 = sub_225CCE954();
        v104 = v129;
        v105 = swift_dynamicCast();
        v106 = *(v103 - 8);
        (*(v106 + 56))(v104, v105 ^ 1u, 1, v103);
        LODWORD(v106) = (*(v106 + 48))(v104, 1, v103);
        sub_2259CB640(v104, &unk_27D73B050, &unk_225CD3AD0);
        if (v106)
        {
          v107 = 0;
        }

        else
        {
          v107 = 23;
        }

        v137 = v107;
        v88 = MEMORY[0x277D84F90];
        v90 = sub_225B2C374(MEMORY[0x277D84F90]);
        v108 = v27;
        v136 = 0;
        v134 = 0;
      }

      v89 = v27;
    }

    v109 = v138 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v90;
    sub_225B2C4A0(v83, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v140);

    v111 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_225B29AA0(0, *(v88 + 2) + 1, 1, v88);
    }

    v113 = *(v88 + 2);
    v112 = *(v88 + 3);
    if (v113 >= v112 >> 1)
    {
      v88 = sub_225B29AA0((v112 > 1), v113 + 1, 1, v88);
    }

    *(v88 + 2) = v113 + 1;
    v114 = &v88[56 * v113];
    *(v114 + 4) = 0;
    *(v114 + 5) = 0;
    *(v114 + 6) = 0xD00000000000004CLL;
    *(v114 + 7) = 0x8000000225D1B520;
    *(v114 + 8) = 0xD000000000000034;
    *(v114 + 9) = v109;
    *(v114 + 10) = 137;
    *v85 = v137;
    v115 = v136;
    *(v85 + 8) = v88;
    *(v85 + 16) = v115;
    *(v85 + 24) = v134;
    *(v85 + 32) = v111;
    *(v85 + 40) = v89;
    swift_willThrow();
  }

  else
  {
    v32 = v29;
    v125 = a6;
    v126 = a4;
    v135 = v28;
    v33 = v138;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v128 = a2;
    v34 = off_28105B918;
    v35 = *(*off_28105B918 + *v30 + 16);
    v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v36));
    v37 = *(v33 + 16);
    v122 = v35;
    v38 = &v34[v35];
    v39 = v134;
    v121 = v33 + 16;
    v120 = v37;
    v37(v134, v38, v139);
    v123 = v36;
    os_unfair_lock_unlock(&v34[v36]);
    v40 = v135;
    sub_2259CB710(v135, v32);
    v41 = sub_225CCD934();
    v42 = sub_225CCED34();
    sub_2259BEF00(v40, v32);
    v124 = v42;
    v43 = os_log_type_enabled(v41, v42);
    v127 = v32;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v117 = v44;
      v118 = swift_slowAlloc();
      v140 = v118;
      *v44 = 136446210;
      v147 = sub_225B34448(v40, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      v119 = a5;
      sub_2259CB764();
      v45 = sub_225CCE384();
      v47 = v46;
      v48 = v138;

      v49 = sub_2259BE198(v45, v47, &v140);
      v50 = v125;
      v51 = v126;
      a5 = v119;

      v52 = v117;
      *(v117 + 1) = v49;
      v53 = v52;
      _os_log_impl(&dword_2259A7000, v41, v124, "Validating signature with authentication structure %{public}s", v52, 0xCu);
      v54 = v118;
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x22AA6F950](v54, -1, -1);
      MEMORY[0x22AA6F950](v53, -1, -1);

      v55 = v134;
      v134 = *(v48 + 8);
      (v134)(v55, v139);
      v56 = v136;
    }

    else
    {

      v134 = *(v33 + 8);
      (v134)(v39, v139);
      v56 = v136;
      v51 = v126;
      v50 = v125;
    }

    sub_225AA2B28(v131, v128, v56, 0x1BC01BB01B601BALL, a5, v132, v51, a5, v50);
    v57 = v133;
    v97 = v123;
    os_unfair_lock_lock(&v34[v123]);
    v98 = v139;
    v120(v57, &v34[v122], v139);
    os_unfair_lock_unlock(&v34[v97]);
    v99 = sub_225CCD934();
    v100 = sub_225CCED34();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_2259A7000, v99, v100, "Signature successfully validated", v101, 2u);
      MEMORY[0x22AA6F950](v101, -1, -1);

      sub_2259BEF00(v135, v127);
    }

    else
    {

      sub_2259BEF00(v135, v127);
    }

    (v134)(v57, v98);
  }
}

uint64_t sub_225AA6DE0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v170 = a2;
  v174 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v164 - v5;
  v171 = type metadata accessor for ISO18013ReaderAuthentication(0);
  MEMORY[0x28223BE20](v171);
  v7 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v176 = v8;
  v177 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v172 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v169 = (&v164 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v173 = &v164 - v15;
  MEMORY[0x28223BE20](v14);
  v175 = &v164 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30, &unk_225CDCF40);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v164 - v18;
  v20 = sub_225CCD354();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for ISO18013ReaderRequest.DocRequest(0);
  sub_225A0DE54(a1 + *(v24 + 20), v19, &qword_27D73AC30, &unk_225CDCF40);
  if ((*(v21 + 6))(v19, 1, v20) == 1)
  {
    sub_2259CB640(v19, &qword_27D73AC30, &unk_225CDCF40);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v25 = off_28105B918;
    v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v27));
    v28 = v176;
    v29 = v177;
    (*(v177 + 16))(v175, &v25[v26], v176);
    os_unfair_lock_unlock(&v25[v27]);
    v30 = sub_225CCD934();
    v31 = sub_225CCED34();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2259A7000, v30, v31, "Document request does not contain a reader auth structure, skipping.", v32, 2u);
      MEMORY[0x22AA6F950](v32, -1, -1);
    }

    result = (*(v29 + 8))(v175, v28);
LABEL_15:
    *v174 = 0;
    return result;
  }

  (*(v21 + 4))(v23, v19, v20);
  v34 = sub_225CCD344();
  if (!v34)
  {
    v51 = v23;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v52 = off_28105B918;
    v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v54));
    v55 = v176;
    v56 = v177;
    (*(v177 + 16))(v173, &v52[v53], v176);
    os_unfair_lock_unlock(&v52[v54]);
    v57 = sub_225CCD934();
    v58 = sub_225CCED34();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2259A7000, v57, v58, "Skipping reader auth structure because it does not have an x509 chain attached.", v59, 2u);
      MEMORY[0x22AA6F950](v59, -1, -1);
    }

    (*(v56 + 8))(v173, v55);
    result = (*(v21 + 1))(v51, v20);
    goto LABEL_15;
  }

  v35 = v34;
  v167 = v20;
  sub_225AA8304(v170, v7, type metadata accessor for ISO18013SessionTranscript);
  v36 = *(a1 + 80);
  v38 = *(a1 + 48);
  v192 = *(a1 + 64);
  v37 = v192;
  v193 = v36;
  v39 = *(a1 + 80);
  v194 = *(a1 + 96);
  v195 = *(a1 + 112);
  v40 = *(a1 + 48);
  v42 = *(a1 + 16);
  v190 = *(a1 + 32);
  v41 = v190;
  v191 = v40;
  v43 = *(a1 + 16);
  v189[0] = *a1;
  v44 = v189[0];
  v189[1] = v43;
  v45 = &v7[*(v171 + 20)];
  v46 = *(a1 + 96);
  *(v45 + 5) = v39;
  *(v45 + 6) = v46;
  *(v45 + 3) = v38;
  *(v45 + 4) = v37;
  *(v45 + 1) = v42;
  *(v45 + 2) = v41;
  *(v45 + 14) = *(a1 + 112);
  *v45 = v44;
  sub_225A0DE54(v189, &p_isa, &qword_27D73AD30, &qword_225CE0360);
  v47 = v178;
  sub_225AA5E24(v23, v7, type metadata accessor for ISO18013ReaderAuthentication, &qword_27D73C260, type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication, type metadata accessor for ISO18013ReaderAuthentication);
  v48 = v47;
  v49 = MEMORY[0x277D841D0];
  v175 = v21;
  v178 = v35;
  v166 = v23;
  if (v47)
  {
    sub_225AA825C(v7, type metadata accessor for ISO18013ReaderAuthentication);
    v171 = 0;
    v50 = v176;
  }

  else
  {
    sub_225AA825C(v7, type metadata accessor for ISO18013ReaderAuthentication);
    v60 = v176;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v61 = off_28105B918;
    v62 = *(*off_28105B918 + *v49 + 16);
    v63 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v63));
    v64 = v177;
    v65 = &v61[v62];
    v66 = v169;
    (*(v177 + 16))(v169, v65, v60);
    v67 = &v61[v63];
    v68 = v66;
    os_unfair_lock_unlock(v67);
    v69 = v178;

    v70 = sub_225CCD934();
    v71 = sub_225CCED34();

    if (os_log_type_enabled(v70, v71))
    {
      LODWORD(v171) = v71;
      v173 = 0;
      v72 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      p_isa = v165;
      v170 = v72;
      *v72 = 136446210;
      isa = v69[2].isa;
      v74 = MEMORY[0x277D84F90];
      if (isa)
      {
        v179 = MEMORY[0x277D84F90];
        sub_2259D52A4(0, isa, 0);
        v74 = v179;
        v75 = &v69[5];
        do
        {
          v76 = *(v75 - 1);
          v77 = *v75;
          sub_2259CB710(v76, *v75);
          v78 = sub_225CCCF84();
          v80 = v79;
          sub_2259BEF00(v76, v77);
          v179 = v74;
          v82 = v74[2];
          v81 = v74[3];
          if (v82 >= v81 >> 1)
          {
            sub_2259D52A4((v81 > 1), v82 + 1, 1);
            v74 = v179;
          }

          v75 += 2;
          v74[2] = v82 + 1;
          v83 = &v74[2 * v82];
          v83[4] = v78;
          v83[5] = v80;
          --isa;
        }

        while (isa);
        v85 = v167;
        v50 = v176;
        v69 = v178;
      }

      else
      {
        v50 = v60;
        v85 = v167;
      }

      v86 = MEMORY[0x22AA6D060](v74, MEMORY[0x277D837D0]);
      v88 = v87;

      v89 = sub_2259BE198(v86, v88, &p_isa);

      v90 = v170;
      *(v170 + 1) = v89;
      _os_log_impl(&dword_2259A7000, v70, v171, "Successfully validated Reader Auth list with X509 chain %{public}s", v90, 0xCu);
      v91 = v165;
      __swift_destroy_boxed_opaque_existential_0(v165);
      MEMORY[0x22AA6F950](v91, -1, -1);
      MEMORY[0x22AA6F950](v90, -1, -1);

      (*(v177 + 8))(v169, v50);
      v21 = v175;
      v84 = v166;
      v48 = v173;
    }

    else
    {

      (*(v64 + 8))(v68, v60);
      v50 = v60;
      v84 = v166;
      v85 = v167;
    }

    v92 = decodeCertificateChain(fromDER:)(v69);
    if (!v48)
    {
      v146 = v92;
      (*(v21 + 1))(v84, v85);

      *v174 = v146;
      return result;
    }

    v171 = 0;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v93 = off_28105B918;
  v94 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v95 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v95));
  v96 = v177;
  v97 = &v93[v94];
  v98 = v172;
  (*(v177 + 16))(v172, v97, v50);
  os_unfair_lock_unlock(&v93[v95]);
  v99 = v50;
  v100 = v178;

  v101 = v48;
  v102 = sub_225CCD934();
  v103 = sub_225CCED14();

  LODWORD(v170) = v103;
  v104 = os_log_type_enabled(v102, v103);
  v105 = v167;
  v173 = v48;
  if (v104)
  {
    v169 = v102;
    v106 = v99;
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    p_isa = v165;
    *v107 = 138412546;
    v109 = v48;
    v110 = _swift_stdlib_bridgeErrorToNSError();
    *(v107 + 4) = v110;
    v164 = v108;
    *v108 = v110;
    *(v107 + 12) = 2082;
    v111 = v100[2].isa;
    if (v111)
    {
      v179 = MEMORY[0x277D84F90];
      sub_2259D52A4(0, v111, 0);
      v112 = v179;
      v113 = &v100[5];
      do
      {
        v115 = *(v113 - 1);
        v114 = *v113;
        sub_2259CB710(v115, *v113);
        v116 = sub_225CCCF84();
        v118 = v117;
        sub_2259BEF00(v115, v114);
        v179 = v112;
        v120 = v112[2];
        v119 = v112[3];
        if (v120 >= v119 >> 1)
        {
          sub_2259D52A4((v119 > 1), v120 + 1, 1);
          v112 = v179;
        }

        v113 += 2;
        v112[2] = v120 + 1;
        v121 = &v112[2 * v120];
        v121[4] = v116;
        v121[5] = v118;
        --v111;
      }

      while (v111);

      v122 = v166;
      v123 = v176;
      v98 = v172;
      v48 = v173;
    }

    else
    {

      v112 = MEMORY[0x277D84F90];
      v122 = v166;
      v123 = v106;
    }

    v124 = MEMORY[0x22AA6D060](v112, MEMORY[0x277D837D0]);
    v126 = v125;

    v127 = sub_2259BE198(v124, v126, &p_isa);

    *(v107 + 14) = v127;
    v128 = v169;
    _os_log_impl(&dword_2259A7000, v169, v170, "IdentityDocumentWebPresentmentRawRequestValidator encountered error %@ while validating certificate for certificate chain. %{public}s", v107, 0x16u);
    v129 = v164;
    sub_2259CB640(v164, &unk_27D73FC90, &unk_225CFA710);
    MEMORY[0x22AA6F950](v129, -1, -1);
    v130 = v165;
    __swift_destroy_boxed_opaque_existential_0(v165);
    MEMORY[0x22AA6F950](v130, -1, -1);
    MEMORY[0x22AA6F950](v107, -1, -1);

    (*(v177 + 8))(v98, v123);
    v105 = v167;
    v21 = v175;
  }

  else
  {

    (*(v96 + 8))(v98, v99);
    v122 = v166;
  }

  swift_getErrorValue();
  Error.dipErrorCode.getter(v182, &p_isa);
  if (p_isa == 444 || (swift_getErrorValue(), Error.dipErrorCode.getter(v181, &p_isa), p_isa == 443))
  {
    v176 = "nticationStructure:)";
    v177 = ". Not a Jumbo Package";
    v131 = v48;
    v132 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v133 = swift_allocError();
    v135 = v134;
    swift_getErrorValue();
    v136 = v180;
    v137 = v48;
    sub_225B21FAC(v136, &p_isa);

    v138 = v184;
    v178 = v133;
    if (v184)
    {
      v174 = p_isa;
      v172 = v185;
      v139 = v187;
      v169 = v188;
      v170 = v186;
    }

    else
    {
      p_isa = &v48->isa;
      v140 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v141 = v179;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v143 = [v141 code];
        v144 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v144;
        *(inited + 40) = v143;
        v139 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v145 = v48;
        v172 = 0;
        v174 = 0;
        v170 = 0;
        v138 = MEMORY[0x277D84F90];
        v169 = v48;
      }

      else
      {
        p_isa = &v48->isa;
        v147 = v48;
        v148 = sub_225CCE954();
        v149 = v168;
        v150 = swift_dynamicCast();
        v151 = *(v148 - 8);
        (*(v151 + 56))(v149, v150 ^ 1u, 1, v148);
        LODWORD(v151) = (*(v151 + 48))(v149, 1, v148);
        sub_2259CB640(v149, &unk_27D73B050, &unk_225CD3AD0);
        if (v151)
        {
          v152 = 0;
        }

        else
        {
          v152 = 23;
        }

        v174 = v152;
        v138 = MEMORY[0x277D84F90];
        v139 = sub_225B2C374(MEMORY[0x277D84F90]);
        v153 = v48;
        v172 = 0;
        v169 = v48;
        v170 = 0;
      }
    }

    v154 = v177 | 0x8000000000000000;
    v155 = v176 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    p_isa = v139;
    sub_225B2C4A0(v132, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &p_isa);

    v157 = p_isa;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = sub_225B29AA0(0, *(v138 + 2) + 1, 1, v138);
    }

    v159 = *(v138 + 2);
    v158 = *(v138 + 3);
    if (v159 >= v158 >> 1)
    {
      v138 = sub_225B29AA0((v158 > 1), v159 + 1, 1, v138);
    }

    v160 = v173;

    *(v138 + 2) = v159 + 1;
    v161 = &v138[56 * v159];
    *(v161 + 4) = 0;
    *(v161 + 5) = 0;
    *(v161 + 6) = 0xD00000000000004CLL;
    *(v161 + 7) = v154;
    *(v161 + 8) = 0xD00000000000003CLL;
    *(v161 + 9) = v155;
    *(v161 + 10) = 103;
    *v135 = v174;
    v162 = v172;
    *(v135 + 8) = v138;
    *(v135 + 16) = v162;
    v163 = v169;
    *(v135 + 24) = v170;
    *(v135 + 32) = v157;
    *(v135 + 40) = v163;
    swift_willThrow();

    return (*(v175 + 1))(v166, v167);
  }

  else
  {

    result = (*(v21 + 1))(v122, v105);
    *v174 = 0;
  }

  return result;
}

uint64_t sub_225AA80DC(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * i);
      swift_bridgeObjectRetain_n();
      v9 = sub_225B1C4D8(&v13, v8);

      if (v9)
      {
        break;
      }

      if (v4 == v3)
      {
        return v6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v6;
    v12 = v2;
    if ((result & 1) == 0)
    {
      result = sub_2259D547C(0, *(v6 + 16) + 1, 1);
      v6 = v14;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2259D547C((v10 > 1), v11 + 1, 1);
      v6 = v14;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + 8 * v11 + 32) = v8;
    v2 = v12;
  }

  while (v4 != v3);
  return v6;
}

uint64_t sub_225AA825C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225AA82BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225AA8304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013MobileSecurityObject.DeviceKeyInfo.init(deviceKey:keyAuthorizations:keyInfo:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = sub_225CCD494();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
  v11 = (a4 + *(result + 20));
  *v11 = v7;
  v11[1] = v8;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.init(signed:validFrom:validUntil:expectedUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_225CCD0B4();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v11(a5 + v12[5], a2, v10);
  v11(a5 + v12[6], a3, v10);
  v13 = a5 + v12[7];

  return sub_225A94CFC(a4, v13);
}

__n128 ISO18013MobileSecurityObject.init(version:digestAlgorithm:valueDigests:deviceKeyInfo:docType:validityInfo:timePolicy:status:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v16 = *(a11 + 32);
  v17 = *(a11 + 40);
  *a9 = *a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  v18 = type metadata accessor for ISO18013MobileSecurityObject(0);
  sub_225AA8630(a5, a9 + v18[7], type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
  v19 = (a9 + v18[8]);
  *v19 = a6;
  v19[1] = a7;
  sub_225AA8630(a8, a9 + v18[9], type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  *(a9 + v18[10]) = a10;
  v20 = a9 + v18[11];
  result = *a11;
  v22 = *(a11 + 16);
  *v20 = *a11;
  *(v20 + 16) = v22;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  return result;
}

uint64_t sub_225AA8630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.init(id:certificate:uri:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 ISO18013MobileSecurityObject.Status.init(identifierList:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

unint64_t sub_225AA86BC()
{
  v0._countAndFlagsBits = 3157553;
  v0._object = 0xE300000000000000;
  result = ISO18013Version.init(_:)(v0);
  if (v4)
  {
    v2 = 0uLL;
  }

  else
  {
    v2 = v3;
  }

  xmmword_27D73C268 = v2;
  return result;
}

double static ISO18013MobileSecurityObject.supportedVersion.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27D739F38 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27D73C268;
  *a1 = xmmword_27D73C268;
  return result;
}

__n128 ISO18013MobileSecurityObject.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t ISO18013MobileSecurityObject.digestAlgorithm.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ISO18013MobileSecurityObject.docType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileSecurityObject(0) + 32));

  return v1;
}

uint64_t sub_225AA8890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ISO18013MobileSecurityObject.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013MobileSecurityObject(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_225AA8974(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_225AA8974(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    return sub_225AA8984(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_225AA8984(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2259CB710(result, a2);
    sub_2259CB6FC(a3, a4);
  }

  return result;
}

uint64_t sub_225AA89F8(uint64_t a1)
{
  sub_225CCE5B4();
}

unint64_t sub_225AA8B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225AAF3FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_225AA8B64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xEC0000006F666E49;
  v6 = 0x79746964696C6176;
  if (v2 != 5)
  {
    v6 = 0x737574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 0xED00006F666E4979;
  v8 = 0x654B656369766564;
  if (v2 != 3)
  {
    v8 = 0x65707954636F64;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF6D687469726F67;
  v10 = 0x6C41747365676964;
  if (v2 != 1)
  {
    v10 = 0x67694465756C6176;
    v9 = 0xEC00000073747365;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_225AA8C68()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x79746964696C6176;
  if (v1 != 5)
  {
    v3 = 0x737574617473;
  }

  v4 = 0x654B656369766564;
  if (v1 != 3)
  {
    v4 = 0x65707954636F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C41747365676964;
  if (v1 != 1)
  {
    v5 = 0x67694465756C6176;
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