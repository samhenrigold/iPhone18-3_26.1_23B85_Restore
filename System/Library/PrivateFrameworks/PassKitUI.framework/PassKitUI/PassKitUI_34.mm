void sub_1BD3AAD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD3AADC0(uint64_t a1)
{
  sub_1BD3AAD34(319, &qword_1EBD440A8, type metadata accessor for BoardingPassAttributes);
  if (v1 <= 0x3F)
  {
    sub_1BD3AAD34(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1BE04B3B4();
      if (v3 <= 0x3F)
      {
        sub_1BE04AF64();
        if (v4 <= 0x3F)
        {
          sub_1BD3AAD34(319, &qword_1EBD3A738, MEMORY[0x1E6969BC0]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD3AB21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static BankCredentialListView.invalidInputErrorAlert(action:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8, &qword_1BE0D1620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v37 - v5;
  v7 = sub_1BE052404();
  v8 = PKLocalizedPaymentString(v7);

  if (v8)
  {
    v37[0] = a1;
    v37[1] = a2;
    v9 = sub_1BE052434();
    v11 = v10;

    v38 = v9;
    v39 = v11;
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    v12 = sub_1BE052404();
    v13 = PKLocalizedPaymentString(v12);

    if (v13)
    {
      v14 = sub_1BE052434();
      v16 = v15;

      v38 = v14;
      v39 = v16;
      v17 = sub_1BE0506C4();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      sub_1BE051184();
      sub_1BD0DDF10(v17, v19, (v21 & 1), v24, v25, v26, v27, v28);
      v23, v29, v30, v31, v32, v33, v34, v35;
      v36 = sub_1BE0511A4();
      (*(*(v36 - 8) + 56))(v6, 0, 1, v36);
      sub_1BE051174();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static BankCredentialListView.genericErrorAlert(action:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8, &qword_1BE0D1620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v37 - v5;
  v7 = sub_1BE052404();
  v8 = PKLocalizedPaymentString(v7);

  if (v8)
  {
    v37[0] = a1;
    v37[1] = a2;
    v9 = sub_1BE052434();
    v11 = v10;

    v38 = v9;
    v39 = v11;
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    v12 = sub_1BE052404();
    v13 = PKLocalizedPaymentString(v12);

    if (v13)
    {
      v14 = sub_1BE052434();
      v16 = v15;

      v38 = v14;
      v39 = v16;
      v17 = sub_1BE0506C4();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      sub_1BE051184();
      sub_1BD0DDF10(v17, v19, (v21 & 1), v24, v25, v26, v27, v28);
      v23, v29, v30, v31, v32, v33, v34, v35;
      v36 = sub_1BE0511A4();
      (*(*(v36 - 8) + 56))(v6, 0, 1, v36);
      sub_1BE051174();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t BankCredentialListView.init(model:)@<X0>(uint64_t a2@<X8>)
{
  sub_1BE051694();
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  sub_1BE051694();
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD3AEDB8(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel, &protocol conformance descriptor for CredentialCenterModel);
  result = sub_1BE04E954();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t BankCredentialListView.body.getter()
{
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD3AEDB8(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel, &protocol conformance descriptor for CredentialCenterModel);
  v0 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v0, v9, v10, v11, v12, v13, v14, v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8F0, &qword_1BE0BF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440C0, &qword_1BE0D1658);
  sub_1BD0DE4F4(&qword_1EBD440C8, &qword_1EBD3C8F0, &qword_1BE0BF590, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD440D0, &qword_1EBD3C8F0, &qword_1BE0BF590, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD440D8, &qword_1EBD3C8F0, &qword_1BE0BF590, MEMORY[0x1E69E6348]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E0, &qword_1BE0D1660);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E8, &qword_1BE0D1668);
  type metadata accessor for CredentialCenterPathIdentifier(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440F0, &qword_1BE0D1670);
  sub_1BD0DE4F4(&qword_1EBD440F8, &qword_1EBD440E8, &qword_1BE0D1668, MEMORY[0x1E697CCF0]);
  sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier, &protocol conformance descriptor for CredentialCenterPathIdentifier);
  sub_1BD3ABE5C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

uint64_t sub_1BD3ABAC8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440E8, &qword_1BE0D1668);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440E0, &qword_1BE0D1660);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v9;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44150, &qword_1BE0D1730);
  sub_1BD3AE9A0();
  sub_1BE0504A4();
  v10 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v11 = swift_allocObject();
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = a1[2];
  sub_1BD3AEA64(a1, &v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440F0, &qword_1BE0D1670);
  v14 = sub_1BD0DE4F4(&qword_1EBD440F8, &qword_1EBD440E8, &qword_1BE0D1668, MEMORY[0x1E697CCF0]);
  v15 = sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier, &protocol conformance descriptor for CredentialCenterPathIdentifier);
  v44 = sub_1BD3ABE5C();
  sub_1BE050D64();
  v11, v16, v17, v18, v19, v20, v21, v22;
  v23 = *(v4 + 8);
  v24 = v3;
  v23(v6, v3);
  v51 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v25 = v52;
  v26 = v53;
  v49 = a1;
  v52 = v24;
  v53 = v10;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v44;
  swift_getOpaqueTypeConformance2();
  v27 = v45;
  v28 = v48;
  sub_1BE050EE4();
  v26, v29, v30, v31, v32, v33, v34, v35;
  v25, v36, v37, v38, v39, v40, v41, v42;
  return (*(v46 + 8))(v28, v27);
}

unint64_t sub_1BD3ABE5C()
{
  result = qword_1EBD44108;
  if (!qword_1EBD44108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440F0, &qword_1BE0D1670);
    sub_1BD3AEDB8(&qword_1EBD44110, type metadata accessor for AddBankCredentialSheet, &protocol conformance descriptor for AddBankCredentialSheet);
    sub_1BD3ABF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44108);
  }

  return result;
}

unint64_t sub_1BD3ABF18()
{
  result = qword_1EBD44118;
  if (!qword_1EBD44118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44120, &qword_1BE0D1678);
    sub_1BD3ABF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44118);
  }

  return result;
}

unint64_t sub_1BD3ABF9C()
{
  result = qword_1EBD44128;
  if (!qword_1EBD44128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44130, &qword_1BE0D1680);
    sub_1BD3AEDB8(&qword_1EBD44138, type metadata accessor for ACHCredentialDetailsView, &protocol conformance descriptor for ACHCredentialDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44128);
  }

  return result;
}

void sub_1BD3AC058(uint64_t a1)
{
  v1 = sub_1BE052404();
  v2 = PKLocalizedPaymentString(v1);

  if (v2)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    v3 = sub_1BE052404();
    v4 = PKLocalizedPaymentString(v3);

    if (v4)
    {
      sub_1BE052434();

      sub_1BE0506C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44168, &unk_1BE0D1738);
      sub_1BD0DE4F4(&qword_1EBD44160, &qword_1EBD44168, &unk_1BE0D1738, MEMORY[0x1E6981F48]);
      sub_1BE051A34();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3AC21C(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v38 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44188, &unk_1BE0D17B0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v48 = CredentialCenterModel.achCredentials.getter();
  v11 = swift_allocObject();
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = a1[2];
  sub_1BD3AEA64(a1, v50);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D4B0, &unk_1BE0E8890);
  sub_1BE04AFE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44190, &qword_1BE0D17C0);
  sub_1BD0DE4F4(&qword_1EBD44198, &unk_1EBD4D4B0, &unk_1BE0E8890, MEMORY[0x1E69E6338]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441A0, &qword_1BE0D17C8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441A8, &unk_1BE0D17D0);
  v15 = sub_1BD0DE4F4(&qword_1EBD441B0, &qword_1EBD441A0, &qword_1BE0D17C8, MEMORY[0x1E697C090]);
  v16 = sub_1BD3AEC60();
  v50[0] = v13;
  v50[1] = v14;
  v50[2] = v15;
  v50[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BD3AEDB8(&qword_1EBD441E0, MEMORY[0x1E6967750], MEMORY[0x1E6967768]);
  v17 = v10;
  sub_1BE0519D4();
  v18 = sub_1BE052404();
  v19 = PKLocalizedPaymentString(v18);

  if (v19)
  {
    v20 = sub_1BE052434();
    v22 = v21;

    v48 = v20;
    v49 = v22;
    v23 = swift_allocObject();
    v24 = a1[1];
    v23[1] = *a1;
    v23[2] = v24;
    v23[3] = a1[2];
    sub_1BD3AEA64(a1, v50);
    sub_1BD0DDEBC();
    v25 = v47;
    sub_1BE051744();
    v27 = v39;
    v26 = v40;
    v28 = *(v39 + 16);
    v38 = v17;
    v29 = v41;
    v28(v40, v17, v41);
    v30 = v44;
    v46 = *(v44 + 16);
    v31 = v42;
    v32 = v25;
    v33 = v45;
    v46(v42, v32, v45);
    v34 = v43;
    v28(v43, v26, v29);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441E8, &qword_1BE0D17E8);
    v46(&v34[*(v35 + 48)], v31, v33);
    v36 = *(v30 + 8);
    v36(v47, v33);
    v37 = *(v27 + 8);
    v37(v38, v29);
    v36(v31, v33);
    v37(v26, v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD3AC738(uint64_t a1)
{
  v1 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v2 + 28);
  v7 = sub_1BE04AFE4();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *v5 = 0;
  v5[*(v2 + 32)] = 2;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = sub_1BE04D8A4();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1BD1D8BC8(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1BD1D8BC8((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  sub_1BD3AED4C(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16);
  v10(v31, 0);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v9, v24, v25, v26, v27, v28, v29, v30;
}

uint64_t sub_1BD3AC940@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v95 = a2;
  v96 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44170, &qword_1BE0D1748);
  MEMORY[0x1EEE9AC00](v84);
  v87 = v77 - v4;
  v86 = type metadata accessor for ACHCredentialDetailsView(0);
  MEMORY[0x1EEE9AC00](v86);
  v80 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BE049364();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44130, &qword_1BE0D1680);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v77 - v12;
  v14 = sub_1BE049394();
  v89 = *(v14 - 8);
  v90 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v82 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v77 - v19;
  v21 = sub_1BE04AFE4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v91 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44120, &qword_1BE0D1678);
  MEMORY[0x1EEE9AC00](v24);
  v92 = v77 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44178, &qword_1BE0D1750);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v77 - v27;
  v29 = type metadata accessor for AddBankCredentialSheet(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    sub_1BE048964();
    AddBankCredentialSheet.init(model:)(v31);
    sub_1BD3AEB88(v31, v28, type metadata accessor for AddBankCredentialSheet);
    swift_storeEnumTagMultiPayload();
    sub_1BD3AEDB8(&qword_1EBD44110, type metadata accessor for AddBankCredentialSheet, &protocol conformance descriptor for AddBankCredentialSheet);
    sub_1BD3ABF18();
    sub_1BE04F9A4();
    return sub_1BD3AEBF0(v31, type metadata accessor for AddBankCredentialSheet);
  }

  v32 = v95;
  v77[1] = v26;
  v77[2] = v29;
  v33 = type metadata accessor for CredentialCenterPathIdentifier(0);
  sub_1BD0DE19C(&a1[*(v33 + 20)], v20, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1BD0DE53C(v20, &qword_1EBD39980, &qword_1BE0BF3C0);
  }

  else
  {
    v35 = v21;
    v36 = v91;
    (*(v22 + 32))(v91, v20, v21);
    v98[0] = *v32;
    v37 = *(&v98[0] + 1);
    KeyPath = swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_1BE048964();
    v95 = v37;
    sub_1BE04D8B4(&v97);
    KeyPath, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    v54 = v97;
    MEMORY[0x1EEE9AC00](v55);
    v77[-2] = v36;
    sub_1BD1CED58(sub_1BD3AEAF8, v54, v13);
    v54, v56, v57, v58, v59, v60, v61, v62;
    v64 = v89;
    v63 = v90;
    if ((*(v89 + 48))(v13, 1, v90) != 1)
    {
      v66 = v88;
      (*(v64 + 32))(v88, v13, v63);
      v67 = v82;
      (*(v64 + 16))(v82, v66, v63);
      if ((*(v64 + 88))(v67, v63) == *MEMORY[0x1E6967770])
      {
        (*(v64 + 96))(v67, v63);
        v68 = v79;
        v69 = *(v79 + 32);
        v70 = v83;
        v82 = v35;
        v71 = v81;
        v69();
        v72 = v78;
        (*(v68 + 16))(v78, v70, v71);
        v73 = v80;
        ACHCredentialDetailsView.init(model:credential:)(v95, v72, v80);
        sub_1BD3AEB88(v73, v87, type metadata accessor for ACHCredentialDetailsView);
        swift_storeEnumTagMultiPayload();
        sub_1BD3AEDB8(&qword_1EBD44138, type metadata accessor for ACHCredentialDetailsView, &protocol conformance descriptor for ACHCredentialDetailsView);
        v74 = v85;
        sub_1BE04F9A4();
        sub_1BD3AEBF0(v73, type metadata accessor for ACHCredentialDetailsView);
        v75 = v71;
        v35 = v82;
        (*(v68 + 8))(v83, v75);
        (*(v64 + 8))(v88, v90);
      }

      else
      {
        sub_1BD0DE53C(v98, &qword_1EBD44180, &unk_1BE0D17A0);
        swift_storeEnumTagMultiPayload();
        sub_1BD3AEDB8(&qword_1EBD44138, type metadata accessor for ACHCredentialDetailsView, &protocol conformance descriptor for ACHCredentialDetailsView);
        v74 = v85;
        sub_1BE04F9A4();
        v76 = *(v64 + 8);
        v76(v66, v63);
        v76(v67, v63);
      }

      v65 = v92;
      sub_1BD3AEB18(v74, v92);
      (*(v93 + 56))(v65, 0, 1, v94);
      (*(v22 + 8))(v91, v35);
      goto LABEL_12;
    }

    sub_1BD0DE53C(v98, &qword_1EBD44180, &unk_1BE0D17A0);
    sub_1BD0DE53C(v13, &unk_1EBD4D450, &unk_1BE0BF570);
    (*(v22 + 8))(v36, v35);
  }

  v65 = v92;
  (*(v93 + 56))(v92, 1, 1, v94);
LABEL_12:
  sub_1BD0DE19C(v65, v28, &qword_1EBD44120, &qword_1BE0D1678);
  swift_storeEnumTagMultiPayload();
  sub_1BD3AEDB8(&qword_1EBD44110, type metadata accessor for AddBankCredentialSheet, &protocol conformance descriptor for AddBankCredentialSheet);
  sub_1BD3ABF18();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v65, &qword_1EBD44120, &qword_1BE0D1678);
}

uint64_t sub_1BD3AD444(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0492D4();
  v6 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_1BD3AD530(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  sub_1BD3AEA64(a1, &v13);
  static BankCredentialListView.genericErrorAlert(action:)(sub_1BD3AEAA4, a2);
  v4, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1BD3AD5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v18 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441F0, &unk_1BE0D1810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441A0, &qword_1BE0D17C8);
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v11 = *(v10 + 20);
  MEMORY[0x1BFB363C0]();
  v12 = sub_1BE04AFE4();
  (*(*(v12 - 8) + 56))(&v6[v11], 0, 1, v12);
  *v6 = 1;
  v6[*(v10 + 24)] = 2;
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v21 = a1;
  type metadata accessor for ACHCredentialRow(0);
  sub_1BD3AEDB8(&qword_1EBD4D4E0, type metadata accessor for ACHCredentialRow, &unk_1BE0E2044);
  sub_1BD3AEDB8(&qword_1EBD441F8, type metadata accessor for CredentialCenterPathIdentifier, &protocol conformance descriptor for CredentialCenterPathIdentifier);
  sub_1BD3AEDB8(&qword_1EBD44200, type metadata accessor for CredentialCenterPathIdentifier, &protocol conformance descriptor for CredentialCenterPathIdentifier);
  sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier, &protocol conformance descriptor for CredentialCenterPathIdentifier);
  sub_1BE04E8E4();
  v19 = v16;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441A8, &unk_1BE0D17D0);
  sub_1BD0DE4F4(&qword_1EBD441B0, &qword_1EBD441A0, &qword_1BE0D17C8, MEMORY[0x1E697C090]);
  sub_1BD3AEC60();
  v13 = v17;
  sub_1BE0509F4();
  return (*(v7 + 8))(v9, v13);
}

uint64_t sub_1BD3AD93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE049364();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = type metadata accessor for ACHCredentialRow(0);
  *(a2 + *(result + 20)) = 0;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_1BD3AD9B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE049364();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v9);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 1) = *a1;
  *(v11 + 2) = v12;
  *(v11 + 3) = a1[2];
  (*(v7 + 32))(&v11[v10], v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1BD3AEA64(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
  sub_1BE051704();
  v13 = sub_1BE0513B4();
  KeyPath = swift_getKeyPath();
  v18[0] = v13;
  v15 = sub_1BE04E5F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441A8, &unk_1BE0D17D0);
  v17 = (a3 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v15;
  return result;
}

void sub_1BD3ADBD0(_OWORD *a1, uint64_t a2)
{
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-v9];
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_1BE0528A4();
  sub_1BD3AEA64(a1, v25);
  v12 = sub_1BE052894();
  v13 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  v16 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  *(v14 + 64) = a1[2];
  (*(v5 + 32))(v14 + v13, v7, v4);
  v17 = sub_1BD122C00(0, 0, v10, &unk_1BE0D1860, v14);
  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD3ADDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_1BE04D214();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_1BE04AFE4();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1BE0528A4();
  v5[19] = sub_1BE052894();
  v9 = sub_1BE052844();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD3ADF3C, v9, v8);
}

uint64_t sub_1BD3ADF3C()
{
  MEMORY[0x1BFB363C0]();
  *(v0 + 216) = 2;
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1BD3ADFF8;
  v2 = *(v0 + 144);

  return CredentialCenterModel.deleteCredential(credentialID:sealedBoxType:)(v2, (v0 + 216));
}

uint64_t sub_1BD3ADFF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    (*(v4[16] + 8))(v4[18], v4[15]);
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1BD3AE264;
  }

  else
  {
    v8 = v4[18];
    v9 = v4[15];
    v10 = v4[16];
    v4[24] = a1;
    v11 = *(v10 + 8);
    v4[25] = v11;
    v4[26] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1BD3AE158;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD3AE158(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 200);
  v10 = *(v8 + 192);
  v11 = *(v8 + 136);
  v12 = *(v8 + 120);
  *(v8 + 152), a2, a3, a4, a5, a6, a7, a8;
  MEMORY[0x1BFB363C0]();
  v13 = sub_1BD438738(v11, v10);
  v10, v14, v15, v16, v17, v18, v19, v20;
  v9(v11, v12);
  if (!v13)
  {
    v21 = *(*(v8 + 80) + 32);
    *(v8 + 218) = 1;
    *(v8 + 48) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  v22 = *(v8 + 8);

  return v22();
}

uint64_t sub_1BD3AE264(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 184);
  *(v8 + 152), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D1E4();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v8 + 184);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v11, v12, "Error deleting ACH credential: %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v18 = *(v8 + 184);
  v20 = *(v8 + 104);
  v19 = *(v8 + 112);
  v21 = *(v8 + 96);
  v22 = *(v8 + 80);

  (*(v20 + 8))(v19, v21);
  *(v8 + 16) = *(v22 + 32);
  *(v8 + 32) = *(v22 + 32);
  *(v8 + 217) = 1;
  *(v8 + 64) = *(v8 + 24);
  sub_1BD0DE19C(v8 + 64, v8 + 72, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();

  sub_1BD0DE53C(v8 + 16, &qword_1EBD54350, &unk_1BE0B8D00);

  v23 = *(v8 + 8);

  return v23();
}

void sub_1BD3AE484()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE051624();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3AE538()
{
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD3AEDB8(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel, &protocol conformance descriptor for CredentialCenterModel);
  v0 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v0, v9, v10, v11, v12, v13, v14, v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8F0, &qword_1BE0BF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440C0, &qword_1BE0D1658);
  sub_1BD0DE4F4(&qword_1EBD440C8, &qword_1EBD3C8F0, &qword_1BE0BF590, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD440D0, &qword_1EBD3C8F0, &qword_1BE0BF590, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD440D8, &qword_1EBD3C8F0, &qword_1BE0BF590, MEMORY[0x1E69E6348]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E0, &qword_1BE0D1660);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E8, &qword_1BE0D1668);
  type metadata accessor for CredentialCenterPathIdentifier(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440F0, &qword_1BE0D1670);
  sub_1BD0DE4F4(&qword_1EBD440F8, &qword_1EBD440E8, &qword_1BE0D1668, MEMORY[0x1E697CCF0]);
  sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier, &protocol conformance descriptor for CredentialCenterPathIdentifier);
  sub_1BD3ABE5C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

unint64_t _s9PassKitUI22BankCredentialListViewV8lastFour10fullNumberS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1BE048C84();
  v2 = sub_1BE0534E4();
  v4 = v3;
  v6 = v5;
  result = sub_1BE0534C4();
  if (v8)
  {
    result = v2;
  }

  if (v4 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1BE0534F4();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v6, v10, v12, v14, v16, v17, v18, v19;
    v20 = MEMORY[0x1BFB3F570](v9, v11, v13, v15);
    v22 = v21;
    v15, v21, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1BFB3F610](v20, v22);
    v22, v29, v30, v31, v32, v33, v34, v35;
    return 0x80E2A280E2A280E2;
  }

  return result;
}

unint64_t sub_1BD3AE9A0()
{
  result = qword_1EBD44158;
  if (!qword_1EBD44158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44150, &qword_1BE0D1730);
    sub_1BD0DE4F4(&qword_1EBD44160, &qword_1EBD44168, &unk_1BE0D1738, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44158);
  }

  return result;
}

double sub_1BD3AEAA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD3AEB18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44130, &qword_1BE0D1680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AEB88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3AEBF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD3AEC60()
{
  result = qword_1EBD441B8;
  if (!qword_1EBD441B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441A8, &unk_1BE0D17D0);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8, &qword_1BE0D17E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD441B8);
  }

  return result;
}

uint64_t sub_1BD3AED4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialCenterPathIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AEDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD3AEE08()
{
  v1 = *(sub_1BE049364() - 8);
  v2 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_1BD3ADBD0((v0 + 16), v2);
}

uint64_t sub_1BD3AEE6C(uint64_t a1)
{
  v4 = *(sub_1BE049364() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD3ADDE0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1BD3AEF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for BalanceInfo(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CashBalanceSubtextView(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  v15 = sub_1BE0502A4();
  sub_1BE050394();
  v16 = sub_1BE0503F4();
  v15, v17, v18, v19, v20, v21, v22, v23;
  *&v12[v14] = v16;
  v24 = v40;
  sub_1BD0DE19C(v40, v4, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BD0DE53C(v24, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    sub_1BD0DE53C(v4, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  }

  else
  {
    sub_1BD3AF2EC(v4, v8);
    v32 = [*v8 formattedStringValue];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1BE052434();
      v36 = v35;

      sub_1BD0DE53C(v24, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      sub_1BD3AF2EC(v8, v12);
      v37 = &v12[*(v9 + 20)];
      *v37 = v34;
      v37[1] = v36;
      v38 = v41;
      sub_1BD3AF350(v12, v41);
      (*(v10 + 56))(v38, 0, 1, v9);
      return sub_1BD3AF3B4(v12, type metadata accessor for CashBalanceSubtextView);
    }

    sub_1BD0DE53C(v24, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    sub_1BD3AF3B4(v8, type metadata accessor for BalanceInfo);
  }

  v16, v25, v26, v27, v28, v29, v30, v31;
  return (*(v10 + 56))(v41, 1, 1, v9);
}

uint64_t type metadata accessor for CashBalanceSubtextView(uint64_t a1)
{
  result = qword_1EBD44208;
  if (!qword_1EBD44208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD3AF2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AF350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CashBalanceSubtextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AF3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3AF414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BD3AF45C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BD3AF4E4(uint64_t a1)
{
  result = type metadata accessor for BalanceInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD3AF584@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44218, &qword_1BE0D1998);
  MEMORY[0x1EEE9AC00](v64);
  v4 = v61 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44220, &qword_1BE0D19A0);
  MEMORY[0x1EEE9AC00](v70);
  v65 = v61 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44228, &qword_1BE0D19A8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = v61 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44230, &qword_1BE0D19B0);
  MEMORY[0x1EEE9AC00](v62);
  v8 = v61 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44238, &qword_1BE0D19B8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44240, &qword_1BE0D19C0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44248, &qword_1BE0D19C8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44250, &qword_1BE0D19D0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44258, &qword_1BE0D19D8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - v19;
  if (*(v2 + 8))
  {
    v61[1] = v10;
    if (*(v2 + 9) == 1 && PKConnectedCardLowBalanceEnabled())
    {
      *v8 = sub_1BE04F7C4();
      *(v8 + 1) = 0;
      v8[16] = 1;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442A0, &qword_1BE0D19E8);
      sub_1BD3B0374(v2, &v8[*(v21 + 44)]);
      sub_1BE052434();
      v23 = v22;
      sub_1BD0DE4F4(&qword_1EBD44278, &qword_1EBD44230, &qword_1BE0D19B0, MEMORY[0x1E6981870]);
      v24 = v63;
      sub_1BE050DE4();
      v23, v25, v26, v27, v28, v29, v30, v31;
      sub_1BD0DE53C(v8, &qword_1EBD44230, &qword_1BE0D19B0);
      v32 = &qword_1EBD44238;
      v33 = &qword_1BE0D19B8;
      sub_1BD0DE19C(v24, v69, &qword_1EBD44238, &qword_1BE0D19B8);
      swift_storeEnumTagMultiPayload();
      sub_1BD3B12D8();
      sub_1BD3B1390();
      v34 = v68;
      sub_1BE04F9A4();
      v35 = v24;
    }

    else
    {
      *v4 = sub_1BE04F504();
      *(v4 + 1) = 0;
      v4[16] = 1;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44260, &qword_1BE0D19E0);
      sub_1BD3B09BC(v2, &v4[*(v49 + 44)]);
      sub_1BE052434();
      v51 = v50;
      sub_1BD0DE4F4(&qword_1EBD44268, &qword_1EBD44218, &qword_1BE0D1998, MEMORY[0x1E69817F8]);
      v52 = v65;
      sub_1BE050DE4();
      v51, v53, v54, v55, v56, v57, v58, v59;
      sub_1BD0DE53C(v4, &qword_1EBD44218, &qword_1BE0D1998);
      v32 = &qword_1EBD44220;
      v33 = &qword_1BE0D19A0;
      sub_1BD0DE19C(v52, v69, &qword_1EBD44220, &qword_1BE0D19A0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3B12D8();
      sub_1BD3B1390();
      v34 = v68;
      sub_1BE04F9A4();
      v35 = v52;
    }

    sub_1BD0DE53C(v35, v32, v33);
    v46 = &qword_1EBD44240;
    v47 = &qword_1BE0D19C0;
    sub_1BD0DE19C(v34, v14, &qword_1EBD44240, &qword_1BE0D19C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD3B1448();
    sub_1BD3B1500();
    sub_1BE04F9A4();
    v48 = v34;
  }

  else
  {
    *v17 = sub_1BE04F504();
    *(v17 + 1) = 0x4018000000000000;
    v17[16] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442A8, &qword_1BE0D19F0);
    sub_1BD3AFCC8(v2, &v17[*(v36 + 44)]);
    sub_1BE052434();
    v38 = v37;
    sub_1BD0DE4F4(&qword_1EBD44290, &qword_1EBD44250, &qword_1BE0D19D0, MEMORY[0x1E69817F8]);
    sub_1BE050DE4();
    v38, v39, v40, v41, v42, v43, v44, v45;
    sub_1BD0DE53C(v17, &qword_1EBD44250, &qword_1BE0D19D0);
    v46 = &qword_1EBD44258;
    v47 = &qword_1BE0D19D8;
    sub_1BD0DE19C(v20, v14, &qword_1EBD44258, &qword_1BE0D19D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD3B1448();
    sub_1BD3B1500();
    sub_1BE04F9A4();
    v48 = v20;
  }

  return sub_1BD0DE53C(v48, v46, v47);
}

uint64_t sub_1BD3AFCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442B0, &qword_1BE0D19F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = (a1 + *(type metadata accessor for CashBalanceSubtextView(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v26[0] = 0;
  v27 = v12;
  v28 = v11;
  sub_1BE048C84();
  v13 = sub_1BE0502A4();
  sub_1BE050394();
  v14 = sub_1BE0503F4();
  v13, v15, v16, v17, v18, v19, v20, v21;
  v29 = v14;
  v22 = sub_1BE051234();
  v31 = MEMORY[0x1E69815C0];
  v32 = MEMORY[0x1E6981568];
  v30 = v22;
  sub_1BD3AFE74(v9);
  sub_1BD3B158C(v26, v25);
  sub_1BD0DE19C(v9, v6, &qword_1EBD442B0, &qword_1BE0D19F8);
  sub_1BD3B158C(v25, a2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442B8, &qword_1BE0D1A00);
  sub_1BD0DE19C(v6, a2 + *(v23 + 48), &qword_1EBD442B0, &qword_1BE0D19F8);
  sub_1BD0DE53C(v9, &qword_1EBD442B0, &qword_1BE0D19F8);
  sub_1BD3B15C4(v26);
  sub_1BD0DE53C(v6, &qword_1EBD442B0, &qword_1BE0D19F8);
  return sub_1BD3B15C4(v25);
}

uint64_t sub_1BD3AFE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C0, &unk_1BE0D1A08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v83 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v83 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BalanceInfo(0);
  sub_1BD0DE19C(v2 + *(v14 + 28), v9, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &unk_1EBD39970, &unk_1BE0B9F80);
    return (*(v4 + 56))(v89, 1, 1, v3);
  }

  else
  {
    v16 = *(v11 + 32);
    v88 = v13;
    v16(v13, v9, v10);
    v17 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter(0)) init];
    BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v13, 0);
    v19 = v18;
    v21 = v20;

    *&v96[0] = v19;
    *(&v96[0] + 1) = v21;
    sub_1BD0DDEBC();
    v22 = sub_1BE0506C4();
    v24 = v23;
    LOBYTE(v21) = v25;
    v87 = v10;
    v27 = v26;
    type metadata accessor for CashBalanceSubtextView(0);
    v28 = sub_1BE0505F4();
    v30 = v29;
    v86 = v3;
    v32 = v31;
    v85 = v4;
    v34 = v33;
    sub_1BD0DDF10(v22, v24, (v21 & 1), v33, v35, v36, v37, v38);
    v27, v39, v40, v41, v42, v43, v44, v45;
    v46 = sub_1BE051234();
    v47 = sub_1BE050564();
    v49 = v48;
    LOBYTE(v27) = v50;
    v84 = v6;
    v52 = v51;
    v46, v48, v50, v51, v53, v54, v55, v56;
    sub_1BD0DDF10(v28, v30, (v32 & 1), v57, v58, v59, v60, v61);
    v34, v62, v63, v64, v65, v66, v67, v68;
    KeyPath = swift_getKeyPath();
    v70 = swift_getKeyPath();
    LOBYTE(v96[0]) = v27 & 1;
    LOBYTE(v90) = 0;
    v71 = swift_getKeyPath();
    *&v90 = v47;
    *(&v90 + 1) = v49;
    LOBYTE(v91) = v27 & 1;
    *(&v91 + 1) = v52;
    *&v92 = KeyPath;
    *(&v92 + 1) = 1;
    LOBYTE(v93) = 0;
    *(&v93 + 1) = v70;
    LOBYTE(v94) = 1;
    *(&v94 + 1) = v71;
    v95 = 0x3FE999999999999ALL;
    sub_1BE052434();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C8, &qword_1BE0D1AA8);
    sub_1BD3B15F4();
    v74 = v84;
    sub_1BE050DE4();
    v73, v75, v76, v77, v78, v79, v80, v81;
    v96[2] = v92;
    v96[3] = v93;
    v96[4] = v94;
    v97 = v95;
    v96[0] = v90;
    v96[1] = v91;
    sub_1BD0DE53C(v96, &qword_1EBD442C8, &qword_1BE0D1AA8);
    (*(v11 + 8))(v88, v87);
    v82 = v89;
    sub_1BD3B1764(v74, v89);
    return (*(v85 + 56))(v82, 0, 1, v86);
  }
}

uint64_t sub_1BD3B0374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442B0, &qword_1BE0D19F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44218, &qword_1BE0D1998);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  *v15 = sub_1BE04F504();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44260, &qword_1BE0D19E0);
  sub_1BD3B0590(a1, &v15[*(v16 + 44)]);
  sub_1BD3AFE74(v9);
  sub_1BD0DE19C(v15, v12, &qword_1EBD44218, &qword_1BE0D1998);
  sub_1BD0DE19C(v9, v6, &qword_1EBD442B0, &qword_1BE0D19F8);
  sub_1BD0DE19C(v12, a2, &qword_1EBD44218, &qword_1BE0D1998);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442E8, &qword_1BE0D1AB8);
  sub_1BD0DE19C(v6, a2 + *(v17 + 48), &qword_1EBD442B0, &qword_1BE0D19F8);
  sub_1BD0DE53C(v9, &qword_1EBD442B0, &qword_1BE0D19F8);
  sub_1BD0DE53C(v15, &qword_1EBD44218, &qword_1BE0D1998);
  sub_1BD0DE53C(v6, &qword_1EBD442B0, &qword_1BE0D19F8);
  return sub_1BD0DE53C(v12, &qword_1EBD44218, &qword_1BE0D1998);
}

id sub_1BD3B0590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v110 - v10;
  v12 = (a1 + *(type metadata accessor for CashBalanceSubtextView(0) + 20));
  v14 = *v12;
  v13 = v12[1];
  v119[0] = 1;
  v120 = v14;
  v121 = v13;
  sub_1BE048C84();
  v15 = sub_1BE0502A4();
  sub_1BE050394();
  v16 = sub_1BE0503F4();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v122 = v16;
  v24 = sub_1BE051234();
  v124 = MEMORY[0x1E69815C0];
  v125 = MEMORY[0x1E6981568];
  v123 = v24;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v4 + 8))(v6, v3);
    v113 = v27;
    v114 = v29;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    LOBYTE(v26) = v33;
    v35 = v34;
    v36 = sub_1BE0505F4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BD0DDF10(v30, v32, (v26 & 1), v41, v43, v44, v45, v46);
    v35, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE0513B4();
    v55 = sub_1BE050564();
    v57 = v56;
    LOBYTE(v35) = v58;
    v60 = v59;
    v54, v56, v58, v59, v61, v62, v63, v64;
    sub_1BD0DDF10(v36, v38, (v40 & 1), v65, v66, v67, v68, v69);
    v42, v70, v71, v72, v73, v74, v75, v76;
    KeyPath = swift_getKeyPath();
    v113 = v55;
    v114 = v57;
    v78 = (v35 & 1);
    v115 = v35 & 1;
    v116 = v60;
    v117 = KeyPath;
    v118 = 1;
    sub_1BE052434();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    sub_1BE050DE4();
    v80, v81, v82, v83, v84, v85, v86, v87;
    sub_1BD0DDF10(v55, v57, v78, v88, v89, v90, v91, v92);
    KeyPath, v93, v94, v95, v96, v97, v98, v99;
    v60, v100, v101, v102, v103, v104, v105, v106;
    sub_1BD3B158C(v119, &v113);
    v107 = v111;
    sub_1BD0DE19C(v11, v111, &qword_1EBD38A98, &unk_1BE0C3CC0);
    v108 = v112;
    sub_1BD3B158C(&v113, v112);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442F0, &qword_1BE0D1AC0);
    sub_1BD0DE19C(v107, v108 + *(v109 + 48), &qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD0DE53C(v11, &qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD3B15C4(v119);
    sub_1BD0DE53C(v107, &qword_1EBD38A98, &unk_1BE0C3CC0);
    return sub_1BD3B15C4(&v113);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3B09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v110 - v10;
  v12 = (a1 + *(type metadata accessor for CashBalanceSubtextView(0) + 20));
  v14 = *v12;
  v13 = v12[1];
  v119[0] = 1;
  v120 = v14;
  v121 = v13;
  sub_1BE048C84();
  v15 = sub_1BE0502A4();
  sub_1BE050394();
  v16 = sub_1BE0503F4();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v122 = v16;
  v24 = sub_1BE051234();
  v124 = MEMORY[0x1E69815C0];
  v125 = MEMORY[0x1E6981568];
  v123 = v24;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8050], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v4 + 8))(v6, v3);
    v113 = v27;
    v114 = v29;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    LOBYTE(v26) = v33;
    v35 = v34;
    v36 = sub_1BE0505F4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BD0DDF10(v30, v32, (v26 & 1), v41, v43, v44, v45, v46);
    v35, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE0513B4();
    v55 = sub_1BE050564();
    v57 = v56;
    LOBYTE(v35) = v58;
    v60 = v59;
    v54, v56, v58, v59, v61, v62, v63, v64;
    sub_1BD0DDF10(v36, v38, (v40 & 1), v65, v66, v67, v68, v69);
    v42, v70, v71, v72, v73, v74, v75, v76;
    KeyPath = swift_getKeyPath();
    v113 = v55;
    v114 = v57;
    v78 = (v35 & 1);
    v115 = v35 & 1;
    v116 = v60;
    v117 = KeyPath;
    v118 = 1;
    sub_1BE052434();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    sub_1BE050DE4();
    v80, v81, v82, v83, v84, v85, v86, v87;
    sub_1BD0DDF10(v55, v57, v78, v88, v89, v90, v91, v92);
    KeyPath, v93, v94, v95, v96, v97, v98, v99;
    v60, v100, v101, v102, v103, v104, v105, v106;
    sub_1BD3B158C(v119, &v113);
    v107 = v111;
    sub_1BD0DE19C(v11, v111, &qword_1EBD38A98, &unk_1BE0C3CC0);
    v108 = v112;
    sub_1BD3B158C(&v113, v112);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442F0, &qword_1BE0D1AC0);
    sub_1BD0DE19C(v107, v108 + *(v109 + 48), &qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD0DE53C(v11, &qword_1EBD38A98, &unk_1BE0C3CC0);
    sub_1BD3B15C4(v119);
    sub_1BD0DE53C(v107, &qword_1EBD38A98, &unk_1BE0C3CC0);
    return sub_1BD3B15C4(&v113);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3B0DEC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442F8, &qword_1BE0D1AC8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44300, &qword_1BE0D1AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34[-1] - v6;
  if (*v1)
  {
    v8 = sub_1BE0513B4();
    v34[3] = MEMORY[0x1E69815C0];
    v34[4] = MEMORY[0x1E6981568];
    v34[0] = v8;
    v9 = sub_1BE051374();
    sub_1BD3B0FB0(v34, v9, v7);
    v9, v10, v11, v12, v13, v14, v15, v16;
    __swift_destroy_boxed_opaque_existential_0(v34, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = sub_1BE051334();
    sub_1BD3B0FB0((v1 + 32), v24, v7);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  sub_1BD0DE19C(v7, v4, &qword_1EBD44300, &qword_1BE0D1AD0);
  swift_storeEnumTagMultiPayload();
  sub_1BD3B17D4();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v7, &qword_1EBD44300, &qword_1BE0D1AD0);
}

uint64_t sub_1BD3B0FB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v80 = a3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44318, &qword_1BE0D1AD8);
  MEMORY[0x1EEE9AC00](v79);
  v6 = v77 - v5;
  v7 = a1[3];
  v77[1] = a1[4];
  v77[0] = __swift_project_boxed_opaque_existential_1(a1, v7);
  v8 = *(v3 + 16);
  v81 = *(v3 + 8);
  v82 = v8;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1BE0505F4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v21, v23, v24, v25, v26);
  v15, v27, v28, v29, v30, v31, v32, v33;
  v34 = sub_1BE050574();
  v36 = v35;
  LOBYTE(v15) = v37;
  v39 = v38;
  sub_1BD0DDF10(v16, v18, (v20 & 1), v38, v40, v41, v42, v43);
  v22, v44, v45, v46, v47, v48, v49, v50;
  LOBYTE(v11) = sub_1BE0501D4();
  LOBYTE(v15) = v15 & 1;
  LOBYTE(v81) = v15;
  v83 = 0;
  v51 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44328, &unk_1BE0D1AE0) + 36)];
  v52 = *(sub_1BE04EDE4() + 20);
  v53 = *MEMORY[0x1E697F468];
  v54 = sub_1BE04F684();
  (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #4.0 }

  *v51 = _Q0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE10, &qword_1BE0C0498);
  *&v51[*(v60 + 52)] = v78;
  *&v51[*(v60 + 56)] = 256;
  sub_1BE048964();
  v61 = sub_1BE051CD4();
  v63 = v62;
  v64 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44338, &unk_1BE0D1AF0) + 36)];
  *v64 = v61;
  v64[1] = v63;
  *v6 = v34;
  *(v6 + 1) = v36;
  v6[16] = v15;
  *(v6 + 3) = v39;
  v6[32] = v11;
  *(v6 + 40) = xmmword_1BE0D1870;
  *(v6 + 56) = xmmword_1BE0D1870;
  v6[72] = 0;
  KeyPath = swift_getKeyPath();
  v66 = &v6[*(v79 + 36)];
  *v66 = KeyPath;
  v66[8] = 1;
  sub_1BE052434();
  v68 = v67;
  sub_1BD3B1860();
  sub_1BE050DE4();
  v68, v69, v70, v71, v72, v73, v74, v75;
  return sub_1BD0DE53C(v6, &qword_1EBD44318, &qword_1BE0D1AD8);
}

unint64_t sub_1BD3B12D8()
{
  result = qword_1EBD44270;
  if (!qword_1EBD44270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44238, &qword_1BE0D19B8);
    sub_1BD0DE4F4(&qword_1EBD44278, &qword_1EBD44230, &qword_1BE0D19B0, MEMORY[0x1E6981870]);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44270);
  }

  return result;
}

unint64_t sub_1BD3B1390()
{
  result = qword_1EBD44280;
  if (!qword_1EBD44280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44220, &qword_1BE0D19A0);
    sub_1BD0DE4F4(&qword_1EBD44268, &qword_1EBD44218, &qword_1BE0D1998, MEMORY[0x1E69817F8]);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44280);
  }

  return result;
}

unint64_t sub_1BD3B1448()
{
  result = qword_1EBD44288;
  if (!qword_1EBD44288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44258, &qword_1BE0D19D8);
    sub_1BD0DE4F4(&qword_1EBD44290, &qword_1EBD44250, &qword_1BE0D19D0, MEMORY[0x1E69817F8]);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44288);
  }

  return result;
}

unint64_t sub_1BD3B1500()
{
  result = qword_1EBD44298;
  if (!qword_1EBD44298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44240, &qword_1BE0D19C0);
    sub_1BD3B12D8();
    sub_1BD3B1390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44298);
  }

  return result;
}

unint64_t sub_1BD3B15F4()
{
  result = qword_1EBD442D0;
  if (!qword_1EBD442D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD442C8, &qword_1BE0D1AA8);
    sub_1BD3B16AC();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD442D0);
  }

  return result;
}

unint64_t sub_1BD3B16AC()
{
  result = qword_1EBD442D8;
  if (!qword_1EBD442D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD442E0, &qword_1BE0D1AB0);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD442D8);
  }

  return result;
}

uint64_t sub_1BD3B1764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C0, &unk_1BE0D1A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3B17D4()
{
  result = qword_1EBD44308;
  if (!qword_1EBD44308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44300, &qword_1BE0D1AD0);
    sub_1BD3B1860();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44308);
  }

  return result;
}

unint64_t sub_1BD3B1860()
{
  result = qword_1EBD44310;
  if (!qword_1EBD44310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44318, &qword_1BE0D1AD8);
    sub_1BD3B1918();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44310);
  }

  return result;
}

unint64_t sub_1BD3B1918()
{
  result = qword_1EBD44320;
  if (!qword_1EBD44320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44328, &unk_1BE0D1AE0);
    sub_1BD2A275C();
    sub_1BD0DE4F4(&qword_1EBD44330, &qword_1EBD44338, &unk_1BE0D1AF0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44320);
  }

  return result;
}

unint64_t sub_1BD3B19E0()
{
  result = qword_1EBD44340;
  if (!qword_1EBD44340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44348, &qword_1BE0D1B08);
    sub_1BD3B1448();
    sub_1BD3B1500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44340);
  }

  return result;
}

unint64_t sub_1BD3B1A6C()
{
  result = qword_1EBD44350;
  if (!qword_1EBD44350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44358, qword_1BE0D1B10);
    sub_1BD3B17D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44350);
  }

  return result;
}

unint64_t sub_1BD3B1AF4()
{
  result = qword_1EBD44360;
  if (!qword_1EBD44360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44360);
  }

  return result;
}

id sub_1BD3B1CB0()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BBD4();
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_credential);
  sub_1BE04BC04();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE052404();
    v11, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v12 = 0;
  }

  v20 = [objc_allocWithZone(PKPeerPaymentExplanationViewController) initWithProvisoningController:v6 setupDelegate:v1 passLibraryDataProvider:v7 context:v8 credential:v9 campaignAttributionReferrerIdentifier:v12];

  return v20;
}

uint64_t sub_1BD3B1E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3B1E8C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD3B1ED8(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04BBD4();
  [v2 resetForNewProvisioningForce_];

  return a1(1);
}

char *sub_1BD3B1F50(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v32 = v8;
      sub_1BD3B5D60(&v32, a2, &v30);
      if (v2)
      {
        v6, v11, v12, v13, v14, v15, v16, v17;

        return v6;
      }

      if (v30)
      {
        v29 = v30;
        v18 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1BD1D8BF0(0, *(v6 + 2) + 1, 1, v6, v19, v20, v21, v22);
        }

        v24 = *(v6 + 2);
        v23 = *(v6 + 3);
        v25 = v29;
        if (v24 >= v23 >> 1)
        {
          v26 = sub_1BD1D8BF0((v23 > 1), v24 + 1, 1, v6, v19, v20, v21, v22);
          v25 = v29;
          v6 = v26;
        }

        *(v6 + 2) = v24 + 1;
        v7 = &v6[24 * v24];
        *(v7 + 2) = v25;
        v7[48] = v18 & 1;
      }

      ++v5;
      if (v10 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD3B2110(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = v8;
  sub_1BE048964();
  v25 = a2;
  v10 = a3;
  v7(v25, v10, sub_1BD3B6980, v9);
  v6, v11, v12, v13, v14, v15, v16, v17;
  v9, v18, v19, v20, v21, v22, v23, v24;
}

void sub_1BD3B21E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v16 = a3;
  swift_unknownObjectRetain();
  v8(a2, v16, a4);
  v7, v9, v10, v11, v12, v13, v14, v15;
  swift_unknownObjectRelease();
}

void sub_1BD3B2390(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v10 = v2;
  sub_1BD12FA24(1, v10, KeyPath);

  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = a1;
  v18[4] = a2;
  v19 = v10;
  sub_1BE048964();
  sub_1BE04BC34();
  v20 = sub_1BE04B974();
  (*(v6 + 8))(v8, v5);
  if (v20)
  {
    v21 = v19;
    sub_1BE048964();
    sub_1BD3B6A04(v21, v21, sub_1BD3B69F8, v18);

    v18, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    sub_1BD3B2558(*&v19[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials], MEMORY[0x1E69E7CC0], v19, a1, a2);
  }

  v18, v29, v30, v31, v32, v33, v34, v35;
}

void sub_1BD3B2558(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision;
  swift_beginAccess();
  v11 = *(a3 + v10);
  *(a3 + v10) = a1;
  sub_1BE048C84();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(a3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings);
  *(a3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings) = a2;
  sub_1BE048C84();
  v19, v20, v21, v22, v23, v24, v25, v26;
  if (a1 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1BD3B2CD4(a1);
LABEL_4:
    a4(1);
    return;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  sub_1BE048964();
  sub_1BD3B2694(sub_1BD19E0B8, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
}

void sub_1BD3B2694(void (*a1)(void), uint64_t a2)
{
  v5 = sub_1BE04B944();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings;
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings);
  v14 = v13[2];
  if (v14)
  {
    v142 = v11;
    v143 = v10;
    v137 = v8;
    v138 = v6;
    v139 = v5;
    v144 = a1;
    sub_1BE048C84();
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v24 = 3 * v22;
    while (v14 != v22)
    {
      if (v22 >= v13[2])
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      ++v22;
      v25 = v24 * 8 + 24;
      v26 = v13[v24 + 6];
      v24 += 3;
      if (v26)
      {
        v141 = a2;
        v27 = *(v13 + v25 + 16);
        v28 = *(v13 + v25 + 8);
        v29 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531958(0, v23[2] + 1, 1, v17, v18, v19, v20, v21);
          v23 = aBlock[0];
        }

        v32 = v23[2];
        v31 = v23[3];
        if (v32 >= v31 >> 1)
        {
          sub_1BD531958((v31 > 1), v32 + 1, 1, v17, v18, v19, v20, v21);
          v23 = aBlock[0];
        }

        v23[2] = v32 + 1;
        v33 = &v23[3 * v32];
        v33[4] = v28;
        v33[5] = v29;
        *(v33 + 48) = 1;
        a2 = v141;
        goto LABEL_3;
      }
    }

    v13, v15, v16, v17, v18, v19, v20, v21;
    v141 = v2;
    v34 = *(v2 + v146);
    v35 = v34[2];
    sub_1BE048C84();
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v46 = 3 * v43;
    while (v35 != v43)
    {
      if (v43 >= v34[2])
      {
        goto LABEL_35;
      }

      ++v43;
      v47 = v46 * 8 + 24;
      v48 = v34[v46 + 6];
      v46 += 3;
      if ((v48 & 1) == 0)
      {
        v49 = *(v34 + v47 + 16);
        v140 = *(v34 + v47 + 8);
        v50 = v49;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v45;
        v52 = a2;
        if ((v51 & 1) == 0)
        {
          sub_1BD531958(0, v45[2] + 1, 1, v38, v39, v40, v41, v42);
          v45 = aBlock[0];
        }

        v54 = v45[2];
        v53 = v45[3];
        if (v54 >= v53 >> 1)
        {
          sub_1BD531958((v53 > 1), v54 + 1, 1, v38, v39, v40, v41, v42);
          v45 = aBlock[0];
        }

        v45[2] = v54 + 1;
        v55 = &v45[3 * v54];
        v55[4] = v140;
        v55[5] = v50;
        *(v55 + 48) = 0;
        a2 = v52;
        goto LABEL_13;
      }
    }

    v34, v36, v37, v38, v39, v40, v41, v42;
    v56 = v141;
    v57 = *(v141 + v146);
    *(v141 + v146) = v44;
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65 = v145;
    sub_1BE04D0E4();
    sub_1BE048964();
    sub_1BE048964();
    v66 = sub_1BE04D204();
    v67 = sub_1BE052C54();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134218240;
      *(v68 + 4) = v23[2];
      v23, v69, v70, v71, v72, v73, v74, v75;
      *(v68 + 12) = 2048;
      *(v68 + 14) = v45[2];
      v45, v76, v77, v78, v79, v80, v81, v82;
      _os_log_impl(&dword_1BD026000, v66, v67, "%ld background require preflight, and %ld don't.", v68, 0x16u);
      MEMORY[0x1BFB45F20](v68, -1, -1);
    }

    else
    {

      v23, v83, v84, v85, v86, v87, v88, v89;
      v45, v90, v91, v92, v93, v94, v95, v96;
    }

    (*(v142 + 8))(v65, v143);
    if (v23[2])
    {
      sub_1BD3B3970(v23);
    }

    v23, v97, v98, v99, v100, v101, v102, v103;
    v111 = v45[2];
    if (v111)
    {
      aBlock[0] = v44;
      sub_1BE0538E4();
      v112 = 4;
      v113 = v144;
      do
      {
        v114 = v45[v112];
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v112 += 3;
        --v111;
      }

      while (v111);
      v115 = aBlock[0];
      v116 = v137;
      sub_1BE04BB94();
      v117 = sub_1BE04B934();
      (*(v138 + 8))(v116, v139);
      sub_1BD0E5E8C(0, &unk_1EBD44440, 0x1E69B9048);
      v118 = sub_1BE052724();
      v115, v119, v120, v121, v122, v123, v124, v125;
      v126 = swift_allocObject();
      v126[2] = v56;
      v126[3] = v45;
      v126[4] = v113;
      v126[5] = a2;
      aBlock[4] = sub_1BD3B6900;
      v148 = v126;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD03E30C;
      aBlock[3] = &block_descriptor_79;
      v127 = _Block_copy(aBlock);
      v128 = v148;
      v129 = v56;
      sub_1BD0D44B8(v113, a2);
      v128, v130, v131, v132, v133, v134, v135, v136;
      [v117 addPendingProvisionings:v118 completion:v127];
      _Block_release(v127);
      swift_unknownObjectRelease();
    }

    else
    {
      v45, v104, v105, v106, v107, v108, v109, v110;
      if (v144)
      {
        v144();
      }
    }
  }
}

void sub_1BD3B2CD4(unint64_t a1)
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!sub_1BE053704())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  sub_1BE04BC34();
  v10 = sub_1BE04B974();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E69B8D38]);
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
    v12 = sub_1BE052724();
    v13 = [v11 initWithCredentials_];

    sub_1BE04BB94();
    v14 = sub_1BE04B8E4();
    (*(v3 + 8))(v5, v2);
    aBlock[4] = PKEdgeInsetsMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD28F728;
    aBlock[3] = &block_descriptor_94_0;
    v15 = _Block_copy(aBlock);
    [v14 prepareToProvisionForRequest:v13 completion:v15];

    _Block_release(v15);
  }
}

void *sub_1BD3B2F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v95 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision;
  swift_beginAccess();
  v12 = *&v1[v11];
  if (v12 >> 62)
  {
    v13 = sub_1BE053704();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v13 > 1;
  KeyPath = swift_getKeyPath();
  v16 = v2;
  sub_1BD12F5F4(v14, v16, KeyPath);

  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  if (!a1)
  {
    v49 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context];
    v50 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials];
    type metadata accessor for ProvisioningRequirementsFlowSection();
    swift_allocObject();
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BD4435E4(v49, 0, v50);
    v52 = v51;
    v49, v53, v54, v55, v56, v57, v58, v59;
    return v52;
  }

  v24 = type metadata accessor for ProvisioningCredentialFlowSection();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = *(v25 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses);
  if (!v26)
  {
    goto LABEL_8;
  }

  v96 = v5;
  v97 = v4;
  v27 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups;
  swift_beginAccess();
  v5 = v26;
  v28 = swift_unknownObjectRetain();
  MEMORY[0x1BFB3F7A0](v28);
  v29 = *((*&v16[v27] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 >= *((*&v16[v27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    sub_1BE0527C4();
    swift_endAccess();
    swift_unknownObjectRelease();

    v5 = v96;
    v4 = v97;
LABEL_8:
    v30 = *&v2[v11];
    if (v30 >> 62)
    {
      break;
    }

    v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_19;
    }

LABEL_10:
    if ((v30 & 0xC000000000000001) != 0)
    {
      sub_1BE048C84();
      v31 = MEMORY[0x1BFB40900](0, v30);
      v30, v76, v77, v78, v79, v80, v81, v82;
      goto LABEL_13;
    }

    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v30 + 32);
LABEL_13:
      v32 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context];
      sub_1BE04BBF4();
      swift_beginAccess();
      v33 = sub_1BD3B3734(0, sub_1BD509758);
      swift_endAccess();

      sub_1BE04D0E4();
      v34 = v31;
      v35 = sub_1BE04D204();
      v36 = sub_1BE052C54();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v97 = v24;
        v38 = v5;
        v39 = v37;
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v34;
        *v40 = v34;
        v41 = v34;
        _os_log_impl(&dword_1BD026000, v35, v36, "Provisioning next credential: %@", v39, 0xCu);
        sub_1BD1E236C(v40);
        MEMORY[0x1BFB45F20](v40, -1, -1);
        v42 = v39;
        v5 = v38;
        v24 = v97;
        MEMORY[0x1BFB45F20](v42, -1, -1);
      }

      (*(v5 + 1))(v10, v4);
      v43 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product];
      v44 = objc_allocWithZone(v24);
      *&v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v45 = &v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
      *v45 = 0x100000000000001ALL;
      v45[1] = 0x80000001BE1199C0;
      v46 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
      v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
      *&v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
      *&v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v32;
      *&v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = v34;
      *&v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v43;
      v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
      v44[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = 0;
      v44[v46] = 1;
      v99.receiver = v44;
      v99.super_class = v24;
      sub_1BE048964();
      v47 = v43;
      return objc_msgSendSuper2(&v99, sel_init);
    }

    __break(1u);
LABEL_24:
    v95[1] = v29;
    sub_1BE052774();
  }

  v29 = sub_1BE053704();
  if (v29)
  {
    goto LABEL_10;
  }

LABEL_19:
  v60 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups;
  swift_beginAccess();
  v61 = *&v16[v60];
  if (v61 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_21;
    }
  }

  else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    v62 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context];
    v63 = *&v16[v60];
    v64 = type metadata accessor for ProvisioningBatchPassIngestionSection();
    v65 = objc_allocWithZone(v64);
    *&v65[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v66 = &v65[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_identifier];
    *v66 = 0xD000000000000019;
    *(v66 + 1) = 0x80000001BE126DA0;
    *&v65[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_context] = v62;
    *&v65[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_provisionedPassesGroups] = v63;
    v98.receiver = v65;
    v98.super_class = v64;
    sub_1BE048C84();
    sub_1BE048964();
    v67 = objc_msgSendSuper2(&v98, sel_init);
    v68 = *&v16[v60];
    *&v16[v60] = MEMORY[0x1E69E7CC0];
    v68, v69, v70, v71, v72, v73, v74, v75;
    return v67;
  }

  if (v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] != 1)
  {
    return 0;
  }

  sub_1BE04D0E4();
  v83 = sub_1BE04D204();
  v84 = sub_1BE052C54();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_1BD026000, v83, v84, "Blocking end of provisioning flow to let preflight complete", v85, 2u);
    MEMORY[0x1BFB45F20](v85, -1, -1);
  }

  (*(v5 + 1))(v7, v4);
  type metadata accessor for BlockingFlowItem();
  v86 = swift_allocObject();
  v86[5] = 0;
  v86[2] = 0;
  v86[3] = 0;
  swift_unknownObjectWeakInit();
  v86[6] = 0xD000000000000010;
  v86[7] = 0x80000001BE0D1C60;
  v87 = *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem];
  *&v16[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = v86;
  sub_1BE048964();
  v87, v88, v89, v90, v91, v92, v93, v94;
  return v86;
}

uint64_t sub_1BD3B3734(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1BD3B37CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BD4FFF40(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1BE049A94();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BD3B38E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3B3920(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD3B3970(uint64_t a1)
{
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess) = 1;
  sub_1BE04BB94();
  v7 = sub_1BE04B934();
  (*(v4 + 8))(v6, v3);
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v10 += 24;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v11;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
      *(v15 + 48) = v7;
      v44 = sub_1BD3B693C;
      v45 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1BD3B2110;
      v43 = &block_descriptor_32_1;
      v16 = _Block_copy(&aBlock);
      v17 = v45;
      v18 = v11;
      v19 = v12;
      v20 = v18;
      v21 = v19;
      swift_unknownObjectRetain();
      v17, v22, v23, v24, v25, v26, v27, v28;
      [v8 addOperation_];
      _Block_release(v16);

      --v9;
    }

    while (v9);
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = sub_1BD3B6970;
  v45 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1BD3B21E4;
  v43 = &block_descriptor_36_1;
  v31 = _Block_copy(&aBlock);
  v45, v32, v33, v34, v35, v36, v37, v38;
  v39 = [v8 evaluateWithInput:v29 completion:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_1BD3B3CB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v55 = a4;
  v53 = a3;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v50 = a5;
    v51 = v8;
    v18 = a1;
    sub_1BE04D0E4();
    v19 = a1;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();

    v22 = os_log_type_enabled(v20, v21);
    v52 = v11;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v7;
      v25 = v24;
      *v23 = 138412290;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1BD026000, v20, v21, "Failed to queue pending provisionings, handling them in foreground. Error: %@", v23, 0xCu);
      sub_1BD1E236C(v25);
      v28 = v25;
      v7 = v49;
      MEMORY[0x1BFB45F20](v28, -1, -1);
      v29 = v23;
      v11 = v52;
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v15 + 8))(v17, v14);
    v30 = v53;
    v31 = *(v53 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BE0538E4();
      v33 = (v30 + 40);
      v8 = v51;
      do
      {
        v34 = *v33;
        v33 += 3;
        v35 = v34;
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        --v31;
      }

      while (v31);
      v32 = aBlock[0];
      v11 = v52;
    }

    else
    {
      v8 = v51;
    }

    swift_beginAccess();
    sub_1BDA7AACC(v32);
    swift_endAccess();

    a5 = v50;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v36 = sub_1BE052D54();
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  *(v37 + 24) = a5;
  aBlock[4] = sub_1BD3B690C;
  v58 = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23_4;
  v39 = _Block_copy(aBlock);
  v40 = v58;
  sub_1BD0D44B8(v38, a5);
  v40, v41, v42, v43, v44, v45, v46, v47;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v39);
  _Block_release(v39);

  (*(v8 + 8))(v10, v7);
  return (*(v56 + 8))(v13, v11);
}

uint64_t sub_1BD3B41C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, uint64_t a9)
{
  v38 = a3;
  v39 = a2;
  v13 = sub_1BE051F54();
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE051FA4();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v41 = sub_1BE052D54();
  v18 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  v21 = v38;
  v22 = v39;
  *(v20 + 48) = a9;
  *(v20 + 56) = v21;
  *(v20 + 64) = a4;
  *(v20 + 72) = v22;
  aBlock[4] = sub_1BD3B699C;
  v45 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_50_0;
  v23 = _Block_copy(aBlock);
  v24 = v45;
  v25 = a6;
  v26 = a7;
  swift_unknownObjectRetain();
  sub_1BE048964();
  v27 = v22;
  v24, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v35 = v41;
  MEMORY[0x1BFB3FDF0](0, v17, v15, v23);
  _Block_release(v23);

  (*(v43 + 8))(v15, v13);
  return (*(v40 + 8))(v17, v42);
}

void sub_1BD3B4520(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = a6;
    v16 = Strong;
    objc_allocWithZone(sub_1BE04C214());
    sub_1BE048964();
    v17 = a3;
    v18 = sub_1BE04C1F4();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v17;
    *(v19 + 32) = a4 & 1;
    *(v19 + 40) = a5;
    *(v19 + 48) = v32;
    *(v19 + 56) = a7;
    *(v19 + 64) = a8;
    *(v19 + 72) = v16;
    *(v19 + 80) = v17;
    *(v19 + 88) = v18;
    v20 = v17;
    v21 = a2;
    swift_unknownObjectRetain();
    sub_1BE048964();
    v22 = a8;
    v23 = v16;
    v24 = v18;
    sub_1BE04C204();

    v19, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1BD3B4688(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void *, void), void *a8, void *a9, uint64_t a10, void *a11)
{
  v64 = a7;
  v16 = a9;
  v17 = sub_1BE04D214();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  if (a2)
  {
    v63 = a8;
    v24 = a11;
    sub_1BE04D0E4();
    v25 = a1;
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C54();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v62 = a9;
      v29 = v28;
      v30 = swift_slowAlloc();
      v61 = a11;
      v31 = v30;
      *v29 = 138412290;
      *(v29 + 4) = v25;
      *v30 = a1;
      v32 = v25;
      _os_log_impl(&dword_1BD026000, v26, v27, "Failed to preflight backgroundable provisioning. %@", v29, 0xCu);
      sub_1BD1E236C(v31);
      v33 = v31;
      v24 = v61;
      MEMORY[0x1BFB45F20](v33, -1, -1);
      v34 = v29;
      v16 = v62;
      MEMORY[0x1BFB45F20](v34, -1, -1);
    }

    (*(v18 + 8))(v20, v17);
    v35 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision;
    swift_beginAccess();
    v36 = v24;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(a10 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a10 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    v64(v16, 0);
  }

  else
  {
    v63 = a6;
    sub_1BE04D0E4();
    v37 = sub_1BE04D204();
    v38 = sub_1BE052C54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BD026000, v37, v38, "Successfully preflighted backgroundable provisioning", v39, 2u);
      MEMORY[0x1BFB45F20](v39, -1, -1);
    }

    (*(v18 + 8))(v23, v17);
    [a3 setProvisioningState_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BE0B7020;
    *(v40 + 32) = a3;
    sub_1BD0E5E8C(0, &unk_1EBD44440, 0x1E69B9048);
    v41 = a3;
    v42 = sub_1BE052724();
    v40, v43, v44, v45, v46, v47, v48, v49;
    v50 = swift_allocObject();
    v50[2] = v64;
    v50[3] = a8;
    v50[4] = a9;
    aBlock[4] = sub_1BD14BF54;
    v66 = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD03E30C;
    aBlock[3] = &block_descriptor_59_0;
    v51 = _Block_copy(aBlock);
    v52 = v66;
    sub_1BE048964();
    v53 = a9;
    v52, v54, v55, v56, v57, v58, v59, v60;
    [v63 addPendingProvisionings:v42 completion:v51];
    _Block_release(v51);
  }
}

uint64_t sub_1BD3B4AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1BD3B6978;
  v26 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_40_1;
  v15 = _Block_copy(aBlock);
  v26, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1BD3B4DD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess) = 0;
    v3 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem;
    v4 = *(Strong + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem);
    if (v4)
    {
      sub_1BE048964();
      sub_1BD3B4E68();
      v4, v5, v6, v7, v8, v9, v10, v11;
      v4 = *&v2[v3];
    }

    *&v2[v3] = 0;

    v4, v12, v13, v14, v15, v16, v17, v18;
  }
}

uint64_t sub_1BD3B4E68()
{
  v1 = v0;
  v2 = sub_1BE051FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  *v5 = sub_1BE052D54();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1BE052004();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + 16);
    if (v8)
    {
      v9 = *(v1 + 24);
      sub_1BE048964();
      v8(0);
      sub_1BD1107D8(v8, v9);
      v10 = *(v1 + 16);
      v11 = *(v1 + 24);
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      return sub_1BD1107D8(v10, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3B4FC8(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
  v66 = PKForceSuccessfulSuperEasyProvisioningIfPossible();
  v11 = *(a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials);
  if (v11 >> 62)
  {
LABEL_40:
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v9;
  v62 = v8;
  v63 = a4;
  v64 = a3;
  if (v12)
  {
    a3 = 0;
    v67 = v11 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x1E69E7CC0];
    v65 = a1;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB40900](a3, v11);
      }

      else
      {
        if (a3 >= *(v67 + 16))
        {
          goto LABEL_39;
        }

        v13 = *(v11 + 8 * a3 + 32);
      }

      v9 = v13;
      v14 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      a4 = a2;
      sub_1BD3B54F4(v13, a1);
      if (v15)
      {
        if (([v9 supportsFrictionlessProvisioning] & 1) != 0 || (v16 = objc_msgSend(v9, sel_couldSupportSuperEasyProvisioning), (v16 & v66) == 1))
        {
          v17 = v9;
          a4 = &v68;
          MEMORY[0x1BFB3F7A0]();
          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v9 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();

          v8 = v68;
        }

        else
        {
          v18 = [v9 remoteCredential];
          if (v18)
          {
            v19 = v18;
            if ([v9 cardType] == 4)
            {
              result = [objc_allocWithZone(MEMORY[0x1E69B9080]) initWithRemoteCredential_];
              if (!result)
              {
                __break(1u);
                return result;
              }

              a4 = &v68;
              MEMORY[0x1BFB3F7A0]();
              if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v59 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1BE052774();
              }

              sub_1BE0527C4();

              v8 = v68;
            }

            else
            {
              v9 = v9;
              a4 = &v69;
              MEMORY[0x1BFB3F7A0]();
              if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v59 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1BE052774();
              }

              sub_1BE0527C4();
            }
          }

          else
          {
            v9 = v9;
            a4 = &v69;
            MEMORY[0x1BFB3F7A0]();
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BE052774();
            }

            sub_1BE0527C4();
          }

          a1 = v65;
        }
      }

      else
      {
      }

      ++a3;
      if (v14 == v12)
      {
        goto LABEL_32;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v21 = sub_1BD3B1F50(v8, &v69);
  v8, v22, v23, v24, v25, v26, v27, v28;
  v29 = v60;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C54();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    swift_beginAccess();
    v40 = v64;
    v42 = v61;
    v41 = v62;
    if (v69 >> 62)
    {
      v43 = sub_1BE053704();
    }

    else
    {
      v43 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v32 + 4) = v43;
    *(v32 + 12) = 2048;
    *(v32 + 14) = *(v21 + 2);
    v21, v33, v34, v35, v36, v37, v38, v39;
    _os_log_impl(&dword_1BD026000, v30, v31, "Provisioning %ld foreground credentials and %ld background credentials", v32, 0x16u);
    MEMORY[0x1BFB45F20](v32, -1, -1);
  }

  else
  {

    v21, v44, v45, v46, v47, v48, v49, v50;
    v40 = v64;
    v42 = v61;
    v41 = v62;
  }

  v42[1](v29, v41);
  swift_beginAccess();
  v51 = sub_1BE048C84();
  v40(v51, v21);
  v21, v52, v53, v54, v55, v56, v57, v58;
  return swift_bridgeObjectRelease_n();
}

void sub_1BD3B54F4(id a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v123 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1BE04B944();
  v7 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127);
  v126 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BE04BDF4();
  v9 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v128 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v136 = v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v135 = v119 - v14;
  v15 = sub_1BE04BDB4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v125 = (v119 - v20);
  v124 = [objc_allocWithZone(sub_1BE04C114()) init];
  v21 = a2;
  v22 = *(a2 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v133 = v9;
  if (v22)
  {
    v119[0] = v7;
    v119[1] = v2;
    v122 = a1;
    v138 = MEMORY[0x1E69E7CC0];
    sub_1BD532038(0, v22, 0);
    v23 = v138;
    v25 = *(v9 + 16);
    v24 = v9 + 16;
    v26 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v131 = *(v24 + 56);
    v132 = v25;
    v134 = v24;
    v129 = (v16 + 32);
    v130 = (v24 - 8);
    v27 = v125;
    do
    {
      v28 = v135;
      v29 = v137;
      v132(v135, v26, v137);
      sub_1BE04BDE4();
      (*v130)(v28, v29);
      v138 = v23;
      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        sub_1BD532038((v30 > 1), v31 + 1, 1);
        v23 = v138;
      }

      v23[2] = (v31 + 1);
      (*(v16 + 32))(v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v31, v27, v15);
      v26 += v131;
      --v22;
    }

    while (v22);
    v9 = v133;
    a1 = v122;
    v7 = v119[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BE0B7020;
  *(v32 + 32) = a1;
  v122 = a1;
  v33 = v126;
  sub_1BE04BB94();
  v34 = sub_1BE04B8E4();
  (*(v7 + 8))(v33, v127);
  v35 = sub_1BE04C0E4();

  v32, v36, v37, v38, v39, v40, v41, v42;
  v132 = *(v35 + 16);
  if (v132)
  {
    v50 = 0;
    v129 = (v16 + 8);
    v130 = (v9 + 16);
    v127 = (v9 + 32);
    v125 = (v9 + 8);
    v51 = MEMORY[0x1E69E7CC0];
    v131 = v35;
    while (v50 < *(v35 + 16))
    {
      v135 = ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v134 = *(v9 + 72);
      (*(v9 + 16))(v136, &v135[v35 + v134 * v50++], v137);
      sub_1BE04BDE4();
      v52 = 0;
      v53 = v23[2];
      do
      {
        if (v53 == v52)
        {
          (*v129)(v18, v15);
          (*v125)(v136, v137);
          goto LABEL_10;
        }

        v54 = v52 + 1;
        sub_1BD3B71F8(&unk_1EBD55130, MEMORY[0x1E69B8138], MEMORY[0x1E69B8140]);
        v55 = sub_1BE052334();
        v52 = v54;
      }

      while ((v55 & 1) == 0);
      (*v129)(v18, v15);
      v126 = *v127;
      (v126)(v128, v136, v137);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531998(0, *(v51 + 16) + 1, 1);
        v51 = v138;
      }

      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1BD531998((v57 > 1), v58 + 1, 1);
        v51 = v138;
      }

      *(v51 + 16) = v58 + 1;
      (v126)(&v135[v51 + v58 * v134], v128, v137);
LABEL_10:
      v9 = v133;
      v35 = v131;
      if (v50 == v132)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v35, v43, v44, v45, v46, v47, v48, v49;
    v23, v59, v60, v61, v62, v63, v64, v65;
    if (*(v51 + 16))
    {
      v66 = v123;
      sub_1BE04D0E4();
      v67 = v122;
      sub_1BE048964();
      v68 = sub_1BE04D204();
      v69 = sub_1BE052C54();
      v51, v70, v71, v72, v73, v74, v75, v76;

      if (os_log_type_enabled(v68, v69))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v138 = v79;
        *v77 = 138412546;
        *(v77 + 4) = v67;
        *v78 = v67;
        *(v77 + 12) = 2080;
        v80 = v67;
        v81 = MEMORY[0x1BFB3F7F0](v51, v137);
        v83 = v82;
        v51, v82, v84, v85, v86, v87, v88, v89;
        v90 = sub_1BD123690(v81, v83, &v138);
        v83, v91, v92, v93, v94, v95, v96, v97;
        *(v77 + 14) = v90;
        _os_log_impl(&dword_1BD026000, v68, v69, "Skipping credential %@ because non recoverable required not met: %s", v77, 0x16u);
        sub_1BD1E236C(v78);
        MEMORY[0x1BFB45F20](v78, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v79, v98, v99, v100, v101, v102, v103, v104);
        MEMORY[0x1BFB45F20](v79, -1, -1);
        MEMORY[0x1BFB45F20](v77, -1, -1);
      }

      else
      {

        v51, v112, v113, v114, v115, v116, v117, v118;
      }

      (*(v120 + 8))(v66, v121);
    }

    else
    {

      v51, v105, v106, v107, v108, v109, v110, v111;
    }
  }
}

void sub_1BD3B5D60(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [v11 remoteCredential];
  v13 = v12 != 0;
  if (v12)
  {
    v14 = v12;
    [v12 status];
    if (PKRemoteCredentialStatusIsAvailable())
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E69B9038]) initWithRemoteCredential_];
      v16 = [v14 fidoProfile];

      if (!v16)
      {
        v13 = 0;
LABEL_13:
        [v15 setShouldAutoProvision_];
        *a3 = v15;
        *(a3 + 8) = v11;
        *(a3 + 16) = v13;
        v21 = v11;
        return;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v17 = a2;
  v18 = [v11 accountCredential];
  if (v18)
  {
    v16 = v18;
    v19 = [objc_allocWithZone(MEMORY[0x1E69B9028]) initWithAccountCredential_];
    goto LABEL_11;
  }

  v20 = [v11 shareableCredential];
  if (v20)
  {
    v16 = v20;
    v19 = [objc_allocWithZone(MEMORY[0x1E69B9050]) initWithShareableCredential_];
    goto LABEL_11;
  }

  v22 = [v11 peerPaymentCredential];
  if (!v22)
  {
    v26 = [v11 precursorCredential];
    if (!v26)
    {
      sub_1BE04D0F4();
      v27 = v11;
      v28 = sub_1BE04D204();
      v29 = sub_1BE052C54();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v38 = v29;
        v31 = v30;
        v32 = swift_slowAlloc();
        v39 = v28;
        v33 = v32;
        *v31 = 138412290;
        *(v31 + 4) = v27;
        *v32 = v27;
        v34 = v27;
        _os_log_impl(&dword_1BD026000, v39, v38, "WARNING: Credential supports frictionless provisioning, but doesn't have corresponding pending provisioning object. \n%@", v31, 0xCu);
        sub_1BD1E236C(v33);
        v35 = v33;
        v28 = v39;
        MEMORY[0x1BFB45F20](v35, -1, -1);
        MEMORY[0x1BFB45F20](v31, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
      v36 = v27;
      MEMORY[0x1BFB3F7A0]();
      if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      goto LABEL_8;
    }

    v16 = v26;
    v19 = [objc_allocWithZone(MEMORY[0x1E69B9040]) initWithPrecursorCredential_];
LABEL_11:
    v15 = v19;
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 account];
  if (v24)
  {
    v25 = v24;
    v16 = [v24 identifier];

    if (v16)
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E69B9028]) initWithAccountIdentifier:v16 feature:1 sharingInstanceIdentifier:0];

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3B6174(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v14 = a3;
  v6(a2, a3);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD3B61EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  aBlock[4] = sub_1BD3B71BC;
  v30 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_82_0;
  v16 = _Block_copy(aBlock);
  v17 = v30;
  v18 = a2;
  sub_1BE048964();
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v28);
}

void sub_1BD3B64C4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1BE052F34();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  a1(v4);

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD3B6530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  aBlock[4] = sub_1BD3B71C8;
  v29 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_88_0;
  v16 = _Block_copy(aBlock);
  v17 = v29;
  sub_1BE048964();
  sub_1BE048C84();
  v17, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v27);
}

uint64_t sub_1BD3B680C()
{
  sub_1BD3B4E68();
  sub_1BD1107D8(*(v0 + 16), *(v0 + 24));
  sub_1BD0D4534(v0 + 32);
  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t sub_1BD3B68BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1BD1107D8(v5, v4);

  return sub_1BE048964();
}

uint64_t sub_1BD3B690C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1BD3B6A04(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4)
{
  v7 = sub_1BE04BDF4();
  v107 = *(v7 - 8);
  v108 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B8D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v105 - v13;
  v14 = sub_1BE04B944();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BAC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v105 = a3;
  v114 = v20;
  v20[4] = a4;
  v21 = a2;
  sub_1BE048964();
  sub_1BE04BC34();
  LOBYTE(a2) = sub_1BE04BA54();
  (*(v17 + 8))(v19, v16);
  if ((a2 & 1) != 0 || PKSimulateBuddyBackgroundProvisioningInWallet())
  {
    v22 = v111;
    sub_1BE04BB94();
    v23 = sub_1BE04B934();
    if ([v23 respondsToSelector_])
    {
      v24 = [v23 supportsCheckingProvisioningRequirements];
    }

    else
    {
      v24 = 0;
    }

    swift_unknownObjectRelease();
    v25 = v109;
    sub_1BE04B924();
    v26 = v110;
    (*(v10 + 104))(v110, *MEMORY[0x1E69B7F80], v9);
    sub_1BD3B71F8(&qword_1EBD55170, MEMORY[0x1E69B7F90], MEMORY[0x1E69B7F98]);
    v27 = sub_1BE052334();
    v28 = *(v10 + 8);
    v28(v26, v9);
    v28(v25, v9);
    if (v27)
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v30 = *MEMORY[0x1E69B8120];
      v31 = sub_1BE04BDB4();
      v32 = v106;
      (*(*(v31 - 8) + 104))(v106, v30, v31);
      v34 = v107;
      v33 = v108;
      (*(v107 + 104))(v32, *MEMORY[0x1E69B8148], v108);
      v29 = sub_1BD1D8418(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = sub_1BD1D8418((v35 > 1), v36 + 1, 1, v29);
      }

      v29[2] = v36 + 1;
      (*(v34 + 32))(v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, v32, v33);
    }

    if (v24)
    {
      sub_1BD0E5E8C(0, &unk_1EBD444B0, 0x1E69B90F0);
      v37 = sub_1BE052F24();
      v38 = sub_1BE052404();
      [v37 setProvisioningSID_];

      v39 = sub_1BE04B934();
      if ([v39 respondsToSelector_])
      {
        v40 = swift_allocObject();
        v41 = v114;
        v40[2] = sub_1BD3B71A0;
        v40[3] = v41;
        aBlock[4] = sub_1BD3B71B4;
        v116 = v40;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD3B6174;
        aBlock[3] = &block_descriptor_76;
        v42 = _Block_copy(aBlock);
        v43 = v116;
        sub_1BE048964();
        v44 = v37;
        sub_1BE048964();
        v43, v45, v46, v47, v48, v49, v50, v51;
        [v39 meetsProvisioningRequirements:v44 completion:v42];
        _Block_release(v42);
        swift_unknownObjectRelease();

        v40, v52, v53, v54, v55, v56, v57, v58;
        (*(v112 + 8))(v22, v113);
        v41, v59, v60, v61, v62, v63, v64, v65;
      }

      else
      {
        (*(v112 + 8))(v22, v113);
        v114, v98, v99, v100, v101, v102, v103, v104;
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1BE04B8E4();
      v66 = objc_allocWithZone(sub_1BE04C294());
      v67 = sub_1BE04C274();
      v68 = swift_allocObject();
      v69 = v114;
      v68[2] = sub_1BD3B71A0;
      v68[3] = v69;
      sub_1BE048964();
      sub_1BE04C284();

      v29, v70, v71, v72, v73, v74, v75, v76;
      v68, v77, v78, v79, v80, v81, v82, v83;
      (*(v112 + 8))(v22, v113);
      v69, v84, v85, v86, v87, v88, v89, v90;
    }
  }

  else
  {
    sub_1BD3B4FC8(MEMORY[0x1E69E7CC0], v21, v105, a4);
    v114, v91, v92, v93, v94, v95, v96, v97;
  }
}

uint64_t sub_1BD3B71F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_9PassKitUI10ShareSheetVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD3B72D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27[1] = a1;
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD444D0, &qword_1BE0D1EA0);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = v27 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD444D8, &qword_1BE0D1EA8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v27 - v6;
  v7 = sub_1BE04FDA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD444E0, &unk_1BE0D1EB0);
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = v27 - v12;
  if (PKIsPad())
  {
    v14 = *(v2 + 32);
    v41 = *(v2 + 48);
    v42 = *(v2 + 64);
    v15 = *v2;
    v39 = *(v2 + 16);
    v40 = v14;
    v38 = v15;
    *v10 = sub_1BE0516E4();
    (*(v8 + 104))(v10, *MEMORY[0x1E697C8C0], v7);
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v33 = v38;
    v34 = v39;
    v27[0] = v7;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37420, &qword_1BE0B1380);
    v17 = sub_1BD0DE4F4(&qword_1EBD37428, &qword_1EBD37420, &qword_1BE0B1380, MEMORY[0x1E697FDF8]);
    *&v25 = sub_1BD0D7F70();
    *(&v25 + 1) = sub_1BD0D7FC4();
    sub_1BE050934();
    (*(v8 + 8))(v10, v27[0]);
    v18 = v29;
    (*(v11 + 16))(v30, v13, v29);
    swift_storeEnumTagMultiPayload();
    *&v33 = v16;
    *(&v33 + 1) = &type metadata for ShareSheet;
    *&v34 = &type metadata for ShareSheet;
    *(&v34 + 1) = v17;
    v35 = v25;
    swift_getOpaqueTypeConformance2();
    *&v33 = v16;
    *(&v33 + 1) = &type metadata for ShareSheet;
    *&v34 = &type metadata for ShareSheet;
    *(&v34 + 1) = v17;
    v35 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v11 + 8))(v13, v18);
  }

  else
  {
    v20 = *(v2 + 48);
    v35 = *(v2 + 32);
    v36 = v20;
    v37 = *(v2 + 64);
    v21 = *(v2 + 16);
    v33 = *v2;
    v34 = v21;
    sub_1BD3B79E4(v2, &v38);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37420, &qword_1BE0B1380);
    v23 = sub_1BD0DE4F4(&qword_1EBD37428, &qword_1EBD37420, &qword_1BE0B1380, MEMORY[0x1E697FDF8]);
    *&v26 = sub_1BD0D7F70();
    *(&v26 + 1) = sub_1BD0D7FC4();
    sub_1BE050F74();
    v41 = v36;
    v42 = v37;
    v39 = v34;
    v40 = v35;
    v38 = v33;
    sub_1BD0DE53C(&v38, &qword_1EBD444E8, &qword_1BE0D1EC0);
    v24 = v32;
    (*(v3 + 16))(v30, v5, v32);
    swift_storeEnumTagMultiPayload();
    *&v33 = v22;
    *(&v33 + 1) = &type metadata for ShareSheet;
    *&v34 = &type metadata for ShareSheet;
    *(&v34 + 1) = v23;
    v35 = v26;
    swift_getOpaqueTypeConformance2();
    *&v33 = v22;
    *(&v33 + 1) = &type metadata for ShareSheet;
    *&v34 = &type metadata for ShareSheet;
    *(&v34 + 1) = v23;
    v35 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v3 + 8))(v5, v24);
  }
}

uint64_t sub_1BD3B791C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BD0D44B8(v6, v7);
}

unint64_t sub_1BD3B7A1C()
{
  result = qword_1EBD444F0;
  if (!qword_1EBD444F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD444F8, &qword_1BE0D1EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37420, &qword_1BE0B1380);
    sub_1BD0DE4F4(&qword_1EBD37428, &qword_1EBD37420, &qword_1BE0B1380, MEMORY[0x1E697FDF8]);
    sub_1BD0D7F70();
    sub_1BD0D7FC4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD444F0);
  }

  return result;
}

uint64_t type metadata accessor for DownloadDocumentCell(uint64_t a1)
{
  result = qword_1EBD44508;
  if (!qword_1EBD44508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3B7BE8(uint64_t a1)
{
  sub_1BD3B7D94();
  if (v1 <= 0x3F)
  {
    sub_1BD3B7DE0(319, &qword_1EBD52540, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1BD3B7DE0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1BD23BC4C(319, &qword_1EBD44518, &qword_1EBD44520, &unk_1BE100B00);
        if (v4 <= 0x3F)
        {
          sub_1BD23BC4C(319, &qword_1EBD44528, &unk_1EBD3CF70, &qword_1BE0BA000);
          if (v5 <= 0x3F)
          {
            sub_1BD3B7E30(319);
            if (v6 <= 0x3F)
            {
              sub_1BD3B7EC4(319);
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

unint64_t sub_1BD3B7D94()
{
  result = qword_1EBD45650;
  if (!qword_1EBD45650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45650);
  }

  return result;
}

void sub_1BD3B7DE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD3B7E30(uint64_t a1)
{
  if (!qword_1EBD44530)
  {
    type metadata accessor for SavingsStatementsModel(255);
    sub_1BD3B7F58(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD44530);
    }
  }
}

void sub_1BD3B7EC4(uint64_t a1)
{
  if (!qword_1EBD44538)
  {
    type metadata accessor for DeviceAuthenticationModel(255);
    sub_1BD3B7F58(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD44538);
    }
  }
}

uint64_t sub_1BD3B7F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD3B7FB4()
{
  result = qword_1EBD44540;
  if (!qword_1EBD44540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44540);
  }

  return result;
}

unint64_t sub_1BD3B800C()
{
  result = qword_1EBD44548;
  if (!qword_1EBD44548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44548);
  }

  return result;
}

uint64_t sub_1BD3B807C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44550, &qword_1BE0D2008);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44558, &qword_1BE0D2010);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44560, &qword_1BE0D2018);
  sub_1BD3B8274(v0, &v6[*(v7 + 44)]);
  v8 = *(v0 + 72);
  *v14 = *(v0 + 56);
  *&v14[2] = v8;
  v9 = *(v0 + 104);
  *&v14[4] = *(v0 + 88);
  *&v14[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44568, &qword_1BE0D2020);
  sub_1BE0516C4();
  v10 = &v6[*(v4 + 36)];
  v11 = *&v14[15];
  *(v10 + 2) = *&v14[13];
  *(v10 + 3) = v11;
  *(v10 + 8) = v14[17];
  v12 = *&v14[11];
  *v10 = *&v14[9];
  *(v10 + 1) = v12;
  type metadata accessor for DownloadDocumentCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  sub_1BE0516C4();
  sub_1BD3BA60C();
  sub_1BE0506D4();
  sub_1BD0DE53C(v3, &qword_1EBD44550, &qword_1BE0D2008);
  return sub_1BD0DE53C(v6, &qword_1EBD44558, &qword_1BE0D2010);
}

uint64_t sub_1BD3B8274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0, &unk_1BE0D2030);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v102 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44598, &unk_1BE0D2040);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v102 - v12;
  v13 = type metadata accessor for DownloadDocumentCell(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v113 = *(v17 - 8);
  v114 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445A0, &qword_1BE0D2050);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v102 - v23;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445A8, &qword_1BE0D2058);
  MEMORY[0x1EEE9AC00](v115);
  v106 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v109 = &v102 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B0, &qword_1BE0D2060);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v119 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v118 = &v102 - v30;
  v31 = *(a1 + 24);
  v32 = v31[2];
  if (v32 < 2)
  {
    if (v32 == 1)
    {
      v110 = v8;
      v111 = v4;
      v112 = a2;
      v76 = v31[4];
      v75 = v31[5];
      v77 = *(a1 + 8);
      v122 = *a1;
      v123 = v77;
      sub_1BD3BA718(a1, &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v78 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v79 = (v15 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      sub_1BD3BA77C(v16, v80 + v78);
      v81 = (v80 + v79);
      *v81 = v76;
      v81[1] = v75;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE051744();
      v82 = *(a1 + 48);
      LOBYTE(v122) = *(a1 + 40);
      v123 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516A4();
      if (v126)
      {
        v83 = 1;
        a2 = v112;
        v84 = v113;
        v85 = v110;
        v67 = v118;
        v86 = v114;
      }

      else
      {
        v88 = [*(a1 + 16) identifier];
        v85 = v110;
        v84 = v113;
        v86 = v114;
        if (v88)
        {

          v83 = 0;
        }

        else
        {
          v83 = 1;
        }

        a2 = v112;
        v67 = v118;
      }

      KeyPath = swift_getKeyPath();
      v90 = swift_allocObject();
      *(v90 + 16) = v83;
      v91 = v103;
      (*(v84 + 32))(v103, v19, v86);
      v92 = (v91 + *(v85 + 36));
      *v92 = KeyPath;
      v92[1] = sub_1BD10DF54;
      v92[2] = v90;
      v93 = v104;
      sub_1BD3BA7E4(v91, v104);
      sub_1BD0DE19C(v93, v117, &qword_1EBD44590, &qword_1BE0DE5D0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3BA854();
      sub_1BD3BAA6C();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v93, &qword_1EBD44590, &qword_1BE0DE5D0);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B8, &unk_1BE0D2068);
      (*(*(v94 - 8) + 56))(v67, 0, 1, v94);
      v4 = v111;
    }

    else
    {
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B8, &unk_1BE0D2068);
      v67 = v118;
      (*(*(v87 - 8) + 56))(v118, 1, 1, v87);
    }
  }

  else
  {
    v111 = v4;
    v112 = a2;
    v110 = v8;
    v33 = *(a1 + 8);
    v122 = *a1;
    v123 = v33;
    sub_1BD3BA718(a1, &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v35 = swift_allocObject();
    sub_1BD3BA77C(v16, v35 + v34);
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE051744();
    v36 = (a1 + *(v13 + 60));
    v37 = v36[1];
    v126 = *v36;
    v127 = v37;
    v38 = *(a1 + 128);
    v124 = *(a1 + 120);
    v125 = v38;
    sub_1BE048C84();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    v39 = sub_1BE0516C4();
    v103 = &v102;
    v41 = v122;
    v40 = v123;
    MEMORY[0x1EEE9AC00](v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445D0, qword_1BE0D20B0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD3BA9BC();
    v42 = 1;
    v43 = v105;
    v44 = v114;
    sub_1BE050C84();
    v37, v45, v46, v47, v48, v49, v50, v51;
    v40, v52, v53, v54, v55, v56, v57, v58;
    v41, v59, v60, v61, v62, v63, v64, v65;
    (*(v113 + 8))(v22, v44);
    v66 = *(a1 + 48);
    LOBYTE(v122) = *(a1 + 40);
    v123 = v66;
    sub_1BE0516A4();
    v67 = v118;
    if ((v126 & 1) == 0)
    {
      v68 = [*(a1 + 16) identifier];
      if (v68)
      {

        v42 = 0;
      }
    }

    v69 = swift_getKeyPath();
    v70 = swift_allocObject();
    *(v70 + 16) = v42;
    v71 = v106;
    (*(v107 + 32))(v106, v43, v108);
    v72 = (v71 + *(v115 + 36));
    *v72 = v69;
    v72[1] = sub_1BD185ABC;
    v72[2] = v70;
    v73 = v109;
    sub_1BD0644A4(v71, v109);
    sub_1BD0DE19C(v73, v117, &qword_1EBD445A8, &qword_1BE0D2058);
    swift_storeEnumTagMultiPayload();
    sub_1BD3BA854();
    sub_1BD3BAA6C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v73, &qword_1EBD445A8, &qword_1BE0D2058);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B8, &unk_1BE0D2068);
    (*(*(v74 - 8) + 56))(v67, 0, 1, v74);
    v4 = v111;
    a2 = v112;
  }

  v95 = v120;
  sub_1BE04E4F4();
  v96 = *(a1 + 48);
  LOBYTE(v122) = *(a1 + 40);
  v123 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  *(v95 + *(v4 + 36)) = (v126 & 1) == 0;
  v97 = v119;
  sub_1BD0DE19C(v67, v119, &qword_1EBD445B0, &qword_1BE0D2060);
  v98 = v121;
  sub_1BD0DE19C(v95, v121, &qword_1EBD3B2E0, &unk_1BE0D2030);
  sub_1BD0DE19C(v97, a2, &qword_1EBD445B0, &qword_1BE0D2060);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445C0, &qword_1BE0D2078);
  v100 = a2 + *(v99 + 48);
  *v100 = 0;
  *(v100 + 8) = 1;
  sub_1BD0DE19C(v98, a2 + *(v99 + 64), &qword_1EBD3B2E0, &unk_1BE0D2030);
  sub_1BD0DE53C(v95, &qword_1EBD3B2E0, &unk_1BE0D2030);
  sub_1BD0DE53C(v67, &qword_1EBD445B0, &qword_1BE0D2060);
  sub_1BD0DE53C(v98, &qword_1EBD3B2E0, &unk_1BE0D2030);
  return sub_1BD0DE53C(v97, &qword_1EBD445B0, &qword_1BE0D2060);
}

double sub_1BD3B8E8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD3B8EEC(uint64_t a1)
{
  v2 = type metadata accessor for DownloadDocumentCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = *(a1 + 24);
  swift_getKeyPath();
  sub_1BD3BA718(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD3BA77C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD445E8, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  return sub_1BE0519C4();
}

uint64_t sub_1BD3B90DC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadDocumentCell(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v14[0] = sub_1BD3B9238(v8, v7);
  v14[1] = v9;
  sub_1BD3BA718(a2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1BD3BA77C(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v8;
  v12[1] = v7;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  return sub_1BE051744();
}

id sub_1BD3B9238(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0524C4();
  v14 = v6;
  if (v13 == 5657411 && v6 == 0xE300000000000000 || (sub_1BE053B84() & 1) != 0)
  {
    v14, v6, v7, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_CSV";
LABEL_5:
    v16 = (v15 - 32);
    goto LABEL_6;
  }

  if (v13 == 5785167 && v14 == 0xE300000000000000 || (sub_1BE053B84() & 1) != 0)
  {
    v14, v6, v7, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_OFX";
    goto LABEL_5;
  }

  v26 = 5785169;
  if (v13 == 5785169 && v14 == 0xE300000000000000 || (sub_1BE053B84() & 1) != 0)
  {
    v14, v6, v26, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_QFX";
    goto LABEL_5;
  }

  if (v13 == 5194321 && v14 == 0xE300000000000000 || (sub_1BE053B84() & 1) != 0)
  {
    v14, v6, v26, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_QBO";
    goto LABEL_5;
  }

  v27 = 4606289;
  if (v13 == 4606289 && v14 == 0xE300000000000000 || (sub_1BE053B84() & 1) != 0)
  {
    v14, v6, v27, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_QIF";
    goto LABEL_5;
  }

  if (v13 == 5459032 && v14 == 0xE300000000000000 || (sub_1BE053B84() & 1) != 0)
  {
    v14, v6, v27, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_XLS";
    goto LABEL_5;
  }

  if ((v13 != 1481854040 || v14 != 0xE400000000000000) && (sub_1BE053B84() & 1) == 0)
  {
    if ((v13 != 4605008 || v14 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0)
    {
      return v13;
    }

    v14, v6, v27, v8, v9, v10, v11, v12;
    v15 = "STATEMENT_FILE_FORMAT_OPTION_PDF";
    goto LABEL_5;
  }

  v14, v6, v27, v8, v9, v10, v11, v12;
  v16 = "ORMAT_OPTION_PDF";
LABEL_6:
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v13 = sub_1BE04B6F4();
    (v16 | 0x8000000000000000), v19, v20, v21, v22, v23, v24, v25;

    (*(v3 + 8))(v5, v2);
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1BD3B963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41[-v7];
  v9 = type metadata accessor for DownloadDocumentCell(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 32))
  {
    v13 = sub_1BE0528D4();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_1BD3BA718(a1, &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_1BE0528A4();
    sub_1BE048C84();
    v14 = sub_1BE052894();
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v14;
    v16[3] = v17;
    sub_1BD3BA77C(v12, v16 + v15);
    v18 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = a2;
    v18[1] = a3;
    v19 = sub_1BD122C00(0, 0, v8, &unk_1BE0D20E8, v16);
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v27 = *(a1 + 48);
    v41[16] = *(a1 + 40);
    v42 = v27;
    v41[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    v28 = *(a1 + *(v9 + 48));
    if (v28)
    {
      v29 = *(a1 + 16);
      sub_1BD3BA718(a1, &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v30 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v31 = swift_allocObject();
      sub_1BD3BA77C(v12, &v31[v30]);
      v32 = &v31[(v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v32 = a2;
      *(v32 + 1) = a3;
      v33 = v28;
      sub_1BE048C84();
      sub_1BD2F56F0(v29, a2, a3, sub_1BD3BAFF8, v31);
      v31, v34, v35, v36, v37, v38, v39, v40;
    }

    else
    {
      type metadata accessor for SavingsStatementsModel(0);
      sub_1BD3B7F58(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD3B9984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v55 - v9;
  v11 = sub_1BE0524B4();
  v19 = v12;
  if (v11 == 7762787 && v12 == 0xE300000000000000 || (v20 = v11, (sub_1BE053B84() & 1) != 0) || v20 == 6710384 && v19 == 0xE300000000000000)
  {
    v19, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v27 = sub_1BE053B84();
    v19, v28, v29, v30, v31, v32, v33, v34;
    if ((v27 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BE0B69E0;
      v36 = sub_1BE04AA64();
      *(v35 + 56) = v36;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, a1, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445F0, &qword_1BE0D20F8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BE0BA730;
      v39 = *MEMORY[0x1E69CDAC0];
      v40 = *MEMORY[0x1E69CDAE8];
      v41 = MEMORY[0x1E69CDAC8];
      *(v38 + 32) = *MEMORY[0x1E69CDAC0];
      *(v38 + 40) = v40;
      v42 = *v41;
      v43 = *MEMORY[0x1E69CDAE0];
      *(v38 + 48) = *v41;
      *(v38 + 56) = v43;
      v44 = *MEMORY[0x1E69CDAD0];
      *(v38 + 64) = *MEMORY[0x1E69CDAD0];
      LOBYTE(v60[0]) = 0;
      v45 = v39;
      v46 = v40;
      v47 = v42;
      v48 = v43;
      v49 = v44;
      sub_1BE051694();
      v50 = *(v3 + 56);
      v51 = *(v3 + 88);
      v60[1] = *(v3 + 72);
      v60[2] = v51;
      v60[3] = *(v3 + 104);
      v52 = *(v3 + 72);
      v56 = *(v3 + 56);
      v53 = *(v3 + 88);
      v54 = *(v3 + 104);
      v57 = v52;
      v58 = v53;
      v59 = v54;
      v60[0] = v50;
      v55[1] = LOBYTE(v61[0]);
      v55[2] = *(&v61[0] + 1);
      v55[3] = v35;
      v55[4] = 0;
      v55[7] = 0;
      v55[5] = v38;
      v55[6] = 0;
      sub_1BD0DE19C(v60, v61, &qword_1EBD44568, &qword_1BE0D2020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44568, &qword_1BE0D2020);
      sub_1BE0516B4();
      v61[0] = v56;
      v61[1] = v57;
      v61[2] = v58;
      v61[3] = v59;
      v23 = v61;
      v24 = &qword_1EBD44568;
      v25 = &qword_1BE0D2020;
      return sub_1BD0DE53C(v23, v24, v25);
    }
  }

  v21 = sub_1BE04AA64();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v10, a1, v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  type metadata accessor for DownloadDocumentCell(0);
  sub_1BD0DE19C(v10, v7, &unk_1EBD3CF70, &qword_1BE0BA000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  sub_1BE0516B4();
  v23 = v10;
  v24 = &unk_1EBD3CF70;
  v25 = &qword_1BE0BA000;
  return sub_1BD0DE53C(v23, v24, v25);
}

uint64_t sub_1BD3B9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for DownloadDocumentCell(0);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();
  sub_1BE0528A4();
  v6[17] = sub_1BE052894();
  v10 = sub_1BE052844();
  v6[18] = v10;
  v6[19] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD3B9ED0, v10, v9);
}

uint64_t sub_1BD3B9ED0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = (v2 + *(v1 + 52));
  v4 = *v3;
  *(v0 + 160) = *v3;
  if (v4)
  {
    v5 = (v2 + *(v1 + 56));
    v6 = *v5;
    v7 = v5[2];
    *(v0 + 32) = v5[1];
    *(v0 + 48) = v7;
    *(v0 + 16) = v6;
    sub_1BE048964();
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_1BD3BA01C;

    return sub_1BDA809C4(v0 + 16, 1);
  }

  else
  {
    type metadata accessor for DeviceAuthenticationModel(0);
    sub_1BD3B7F58(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD3BA01C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 152);
  v11 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BD3BA160, v11, v10);
}

uint64_t sub_1BD3BA160(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 160);
  *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4((v8 + 176));
  v9, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  if (*(v8 + 176) != 1)
  {
LABEL_10:

    v68 = *(v8 + 8);

    return v68();
  }

  v33 = *(v8 + 80);
  v34 = *(v33 + 48);
  *(v8 + 64) = *(v33 + 40);
  v35 = *(v8 + 104);
  *(v8 + 72) = v34;
  *(v8 + 177) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v36 = (v33 + *(v35 + 48));
  if (*v36)
  {
    v37 = *(*(v8 + 80) + 16);
    v38 = *v36;
    v39 = [v37 identifier];
    if (v39)
    {
      v40 = v39;
      v41 = sub_1BE052434();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v46 = *(v8 + 120);
    v45 = *(v8 + 128);
    v47 = *(v8 + 112);
    v49 = *(v8 + 88);
    v48 = *(v8 + 96);
    sub_1BD3BA718(*(v8 + 80), v45);
    v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v51 = (v46 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    sub_1BD3BA77C(v45, &v52[v50]);
    v53 = &v52[v51];
    *v53 = v49;
    *(v53 + 1) = v48;
    sub_1BE048C84();
    sub_1BD2F5A40(v41, v43, sub_1BD3BB2B0, v52);

    v52, v54, v55, v56, v57, v58, v59, v60;
    v43, v61, v62, v63, v64, v65, v66, v67;
    goto LABEL_10;
  }

  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD3B7F58(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);

  return sub_1BE04EEB4();
}

uint64_t sub_1BD3BA40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 48);
  v18 = *(a2 + 40);
  v19 = v14;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  sub_1BD0DE19C(a1, v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_1BD3B9984(v13, a3, v16);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BD3BA60C()
{
  result = qword_1EBD44570;
  if (!qword_1EBD44570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44558, &qword_1BE0D2010);
    sub_1BD0DE4F4(&qword_1EBD44578, &qword_1EBD44580, &qword_1BE0D2028, MEMORY[0x1E69817F8]);
    sub_1BD3BA6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44570);
  }

  return result;
}

unint64_t sub_1BD3BA6C4()
{
  result = qword_1EBD44588;
  if (!qword_1EBD44588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44588);
  }

  return result;
}

uint64_t sub_1BD3BA718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadDocumentCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BA77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadDocumentCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BA7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3BA854()
{
  result = qword_1EBD445C8;
  if (!qword_1EBD445C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD445A8, &qword_1BE0D2058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD445D0, qword_1BE0D20B0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD0DDEBC();
    sub_1BD3BA9BC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD445C8);
  }

  return result;
}

unint64_t sub_1BD3BA9BC()
{
  result = qword_1EBD445D8;
  if (!qword_1EBD445D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD445D0, qword_1BE0D20B0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD445D8);
  }

  return result;
}

unint64_t sub_1BD3BAA6C()
{
  result = qword_1EBD445E0;
  if (!qword_1EBD445E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44590, &qword_1BE0DE5D0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD445E0);
  }

  return result;
}

double sub_1BD3BAB50()
{
  v1 = *(type metadata accessor for DownloadDocumentCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD3B8E8C(v2);
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for DownloadDocumentCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;

  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 48), v17, v18, v19, v20, v21, v22, v23;
  if (*(v2 + 72))
  {
    *(v2 + 64), v24, v25, v26, v27, v28, v29, v30;
    *(v2 + 72), v31, v32, v33, v34, v35, v36, v37;
    *(v2 + 80), v38, v39, v40, v41, v42, v43, v44;
    *(v2 + 88), v45, v46, v47, v48, v49, v50, v51;
    if (*(v2 + 96))
    {
      *(v2 + 104), v24, v25, v26, v27, v28, v29, v30;
    }
  }

  *(v2 + 112), v24, v25, v26, v27, v28, v29, v30;
  *(v2 + 128), v52, v53, v54, v55, v56, v57, v58;
  v59 = v2 + v1[11];
  v60 = sub_1BE04AA64();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(v59, 1, v60))
  {
    (*(v61 + 8))(v59, v60);
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  *(v59 + *(v62 + 28)), v63, v64, v65, v66, v67, v68, v69;

  *(v2 + v1[13]), v70, v71, v72, v73, v74, v75, v76;
  v77 = (v2 + v1[14]);
  v77[1], v78, v79, v80, v81, v82, v83, v84;
  v77[3], v85, v86, v87, v88, v89, v90, v91;
  v77[5], v92, v93, v94, v95, v96, v97, v98;
  *(v2 + v1[15] + 8), v99, v100, v101, v102, v103, v104, v105;

  return swift_deallocObject();
}

uint64_t sub_1BD3BADB8(uint64_t *a1)
{
  v3 = *(type metadata accessor for DownloadDocumentCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD3B90DC(a1, v4);
}

void sub_1BD3BAE38()
{
  v1 = *(type metadata accessor for DownloadDocumentCell(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_1BD3B963C(v0 + v2, v4, v5);
}

uint64_t sub_1BD3BAEC8(uint64_t a1)
{
  v4 = *(type metadata accessor for DownloadDocumentCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD3B9DD0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for DownloadDocumentCell(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  *(v0 + v2 + 8), v5, v6, v7, v8, v9, v10, v11;

  *(v0 + v2 + 24), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v2 + 48), v19, v20, v21, v22, v23, v24, v25;
  if (*(v0 + v2 + 72))
  {
    *(v4 + 64), v26, v27, v28, v29, v30, v31, v32;
    *(v4 + 72), v33, v34, v35, v36, v37, v38, v39;
    *(v4 + 80), v40, v41, v42, v43, v44, v45, v46;
    *(v4 + 88), v47, v48, v49, v50, v51, v52, v53;
    if (*(v4 + 96))
    {
      *(v4 + 104), v26, v27, v28, v29, v30, v31, v32;
    }
  }

  *(v4 + 112), v26, v27, v28, v29, v30, v31, v32;
  *(v4 + 128), v54, v55, v56, v57, v58, v59, v60;
  v61 = v4 + v1[11];
  v62 = sub_1BE04AA64();
  v63 = *(v62 - 8);
  if (!(*(v63 + 48))(v61, 1, v62))
  {
    (*(v63 + 8))(v61, v62);
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  *(v61 + *(v64 + 28)), v65, v66, v67, v68, v69, v70, v71;

  *(v4 + v1[13]), v72, v73, v74, v75, v76, v77, v78;
  v79 = (v4 + v1[14]);
  v79[1], v80, v81, v82, v83, v84, v85, v86;
  v79[3], v87, v88, v89, v90, v91, v92, v93;
  v79[5], v94, v95, v96, v97, v98, v99, v100;
  *(v4 + v1[15] + 8), v101, v102, v103, v104, v105, v106, v107;
  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v108, v109, v110, v111, v112, v113, v114;

  return swift_deallocObject();
}

uint64_t sub_1BD3BB214(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadDocumentCell(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1BD3BA40C(a1, v1 + v4, *v5, v5[1]);
}

uint64_t NearbyPeerPaymentButtonsView.Action.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NearbyPeerPaymentButtonsView.Action.id.setter(uint64_t a1)
{
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1BD3BB3B4(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD3BE268(a1, v8, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(v8, v9 + v10);
  swift_endAccess();
  sub_1BD3BB48C();
  return sub_1BD3BE370(v8, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
}

id sub_1BD3BB48C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v86 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v86 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - v11;
  v90 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v23 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(&v1[v26], v25, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return sub_1BD3BD7F8(v29);
    }

    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0) + 48);
    sub_1BD3BE790(v25, v16, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE790(&v25[v42], v89, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BE053294();
    v43 = sub_1BE053274();
    v87 = *(*(v43 - 8) + 48);
    if (v87(v7, 1, v43))
    {
      sub_1BD3BE7F8(v7, v88);
      sub_1BE0532A4();
      sub_1BD0DE53C(v7, &qword_1EBD3D100, &unk_1BE0C0AB0);
      v44 = v90;
    }

    else
    {
      v44 = v90;
      sub_1BE048C84();
      sub_1BE053234();
      sub_1BE0532A4();
    }

    v58 = &v16[*(v44 + 24)];
    v60 = *v58;
    v59 = *(v58 + 1);
    v61 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
    v62 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
    v63 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction + 8];
    *v61 = v60;
    *(v61 + 1) = v59;
    sub_1BE048964();
    sub_1BD0D4744(v62, v63, v64, v65, v66, v67, v68, v69);
    sub_1BE053294();
    v70 = v87(v4, 1, v43);
    v71 = v89;
    if (v70)
    {
      sub_1BD3BE7F8(v4, v88);
      sub_1BE0532A4();
      sub_1BD0DE53C(v4, &qword_1EBD3D100, &unk_1BE0C0AB0);
    }

    else
    {
      sub_1BE048C84();
      sub_1BE053234();
      sub_1BE0532A4();
    }

    v73 = (v71 + *(v44 + 24));
    v75 = *v73;
    v74 = v73[1];
    v76 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
    v77 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
    v78 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction + 8];
    *v76 = v75;
    *(v76 + 1) = v74;
    sub_1BE048964();
    sub_1BD0D4744(v77, v78, v79, v80, v81, v82, v83, v84);
    [v1 setNeedsLayout];
    sub_1BD3BE370(v71, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v72 = v16;
LABEL_16:
    sub_1BD3BE370(v72, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    return sub_1BD3BD7F8(v29);
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BD3BE790(v25, v19, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v45 = &v19[*(v90 + 24)];
    v47 = *v45;
    v46 = *(v45 + 1);
    v48 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
    v49 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
    v50 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction + 8];
    *v48 = v47;
    *(v48 + 1) = v46;
    sub_1BE048964();
    sub_1BD0D4744(v49, v50, v51, v52, v53, v54, v55, v56);
    sub_1BE053294();
    v57 = sub_1BE053274();
    if ((*(*(v57 - 8) + 48))(v12, 1, v57))
    {
      sub_1BD3BE7F8(v12, v88);
      sub_1BE0532A4();
      sub_1BD0DE53C(v12, &qword_1EBD3D100, &unk_1BE0C0AB0);
    }

    else
    {
      sub_1BE048C84();
      sub_1BE053234();
      sub_1BE0532A4();
    }

    [v1 setNeedsLayout];
    v72 = v19;
    goto LABEL_16;
  }

  sub_1BD3BE790(v25, v22, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  v30 = &v22[*(v90 + 24)];
  v32 = *v30;
  v31 = *(v30 + 1);
  sub_1BE048964();
  sub_1BD3BE370(v22, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  v33 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  v34 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  v35 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction + 8];
  *v33 = v32;
  *(v33 + 1) = v31;
  sub_1BD0D4744(v34, v35, v36, v37, v38, v39, v40, v41);
  return sub_1BD3BD7F8(v29);
}

uint64_t sub_1BD3BBAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  return sub_1BD3BE268(v1 + v3, a1, v4);
}

uint64_t sub_1BD3BBB2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(a1, v1 + v3);
  swift_endAccess();
  sub_1BD3BB48C();
  return sub_1BD3BE370(a1, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
}

id (*sub_1BD3BBBAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD3BBC10;
}

id sub_1BD3BBC10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BD3BB48C();
  }

  return result;
}

id sub_1BD3BBC44(double a1)
{
  type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  swift_storeEnumTagMultiPayload();
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v8 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BD3BBF08();

  return v9;
}

id sub_1BD3BBDA0(void *a1, double a2)
{
  type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  swift_storeEnumTagMultiPayload();
  v4 = &v2[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v8 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v9 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v15.receiver = v2;
  v15.super_class = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_1BD3BBF08();
  }

  return v12;
}

id sub_1BD3BBF08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44678, &unk_1BE0D5230);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v132 = &v104 - v3;
  v4 = sub_1BE053204();
  v130 = *(v4 - 8);
  v131 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1BE053104();
  v135 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BE04D3C4();
  v120 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v104 - v9;
  v122 = sub_1BE04D284();
  v116 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v115 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v104 - v13;
  v134 = sub_1BE053274();
  v14 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v106 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v104 - v21;
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC78]);
  if (result)
  {
    v23 = result;
    v24 = objc_opt_self();
    v25 = [v24 configurationWithFont:v23 scale:2];

    v26 = v25;
    v27 = [v24 configurationWithWeight_];
    v28 = [v26 configurationByApplyingConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BE0B7020;
    v30 = objc_opt_self();
    v31 = v28;
    v121 = v30;
    *(v29 + 32) = [v30 labelColor];
    sub_1BD1F2290();
    v32 = sub_1BE052724();
    v29, v33, v34, v35, v36, v37, v38, v39;
    v40 = [v24 configurationWithPaletteColors_];

    v41 = [v31 configurationByApplyingConfiguration_];
    v42 = v41;
    if (_UISolariumEnabled())
    {
      v43 = v119;
      sub_1BE053114();
    }

    else
    {
      v43 = v119;
      sub_1BE053224();
    }

    v44 = sub_1BE052404();
    v45 = [objc_opt_self() systemImageNamed_];

    sub_1BE053214();
    v104 = v42;
    sub_1BE0530C4();
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v46 = v114;
      sub_1BE04D274();
      v47 = [objc_opt_self() effectWithStyle_];
      sub_1BE04D254();
      sub_1BE04D244();
      v48 = v116;
      v49 = v122;
      (*(v116 + 16))(v115, v46, v122);
      sub_1BE0530E4();
      (*(v48 + 8))(v46, v49);
    }

    v50 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton];
    v51 = v134;
    v125 = *(v14 + 16);
    v126 = v14 + 16;
    v125(v10, v43, v134);
    v105 = v14;
    v123 = *(v14 + 56);
    v124 = v14 + 56;
    v123(v10, 0, 1, v51);
    sub_1BE0532A4();
    [v50 addTarget:v1 action:sel_closeTapped forControlEvents:64];
    [v50 setHidden_];
    v52 = *MEMORY[0x1E69B9708];
    [v50 setAccessibilityIdentifier_];
    [v1 addSubview_];
    sub_1BE04D3D4();
    if (_UISolariumEnabled())
    {
      v53 = v117;
      sub_1BE053134();
    }

    else
    {
      v53 = v117;
      sub_1BE053224();
    }

    if (_UISolariumEnabled())
    {
      v54 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
      v55 = v121;
      v56 = [v121 whiteColor];
      [v54 setTintColor_];
    }

    else
    {
      v57 = v114;
      sub_1BE04D274();
      v58 = v121;
      v59 = [v121 whiteColor];
      sub_1BE04D264();
      v60 = v116;
      v61 = *(v116 + 16);
      v113 = v10;
      v62 = v122;
      v61(v115, v57, v122);
      sub_1BE0530E4();
      v63 = v57;
      v10 = v113;
      v55 = v58;
      (*(v60 + 8))(v63, v62);
    }

    v64 = [v55 blackColor];
    sub_1BE0531E4();
    v65 = *(v135 + 104);
    LODWORD(v113) = *MEMORY[0x1E69DC508];
    v135 += 104;
    v112 = v65;
    v65(v127);
    sub_1BE053124();
    v66 = *(v130 + 104);
    v111 = *MEMORY[0x1E69DC568];
    v130 += 104;
    v110 = v66;
    v66(v129);
    sub_1BE0530F4();
    v67 = v53;
    v68 = v120;
    v70 = v132;
    v69 = v133;
    v109 = *(v120 + 16);
    v109(v132, v136, v133);
    v108 = *(v68 + 56);
    v108(v70, 0, 1, v69);
    sub_1BE0531F4();
    v71 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
    v72 = v134;
    v125(v10, v67, v134);
    v123(v10, 0, 1, v72);
    sub_1BE0532A4();
    [v71 addTarget:v1 action:sel_closeTapped forControlEvents:64];
    [v71 setHidden_];
    [v71 setAccessibilityIdentifier_];
    [v1 addSubview_];
    v73 = _UISolariumEnabled();
    v107 = v1;
    v74 = v118;
    if (v73)
    {
      sub_1BE053134();
    }

    else
    {
      sub_1BE053224();
    }

    v75 = _UISolariumEnabled();
    v77 = v121;
    v76 = v122;
    if (v75)
    {
      v78 = v107;
      v79 = *&v107[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton];
      v80 = [v121 whiteColor];
      [v79 setTintColor_];
    }

    else
    {
      v81 = v114;
      sub_1BE04D274();
      v82 = [v77 whiteColor];
      sub_1BE04D264();
      v83 = v116;
      (*(v116 + 16))(v115, v81, v76);
      sub_1BE0530E4();
      (*(v83 + 8))(v81, v76);
      v78 = v107;
    }

    v84 = [v77 blackColor];
    sub_1BE0531E4();
    v112(v127, v113, v128);
    sub_1BE053124();
    v110(v129, v111, v131);
    sub_1BE0530F4();
    v85 = v74;
    v87 = v132;
    v86 = v133;
    v109(v132, v136, v133);
    v108(v87, 0, 1, v86);
    sub_1BE0531F4();
    v88 = *&v78[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton];
    v89 = v134;
    v125(v10, v85, v134);
    v123(v10, 0, 1, v89);
    sub_1BE0532A4();
    [v88 addTarget:v78 action:sel_primaryTapped forControlEvents:64];
    [v88 setHidden_];
    [v88 setAccessibilityIdentifier_];
    [v78 addSubview_];
    if (_UISolariumEnabled())
    {
      v90 = v106;
      sub_1BE053114();
      if (_UISolariumEnabled())
      {
        goto LABEL_24;
      }
    }

    else
    {
      v90 = v106;
      sub_1BE053224();
      if (_UISolariumEnabled())
      {
LABEL_24:
        v97 = [v77 labelColor];
        sub_1BE0531E4();
        v112(v127, v113, v128);
        sub_1BE053124();
        v110(v129, v111, v131);
        sub_1BE0530F4();
        v98 = v132;
        v99 = v133;
        v100 = v136;
        v109(v132, v136, v133);
        v108(v98, 0, 1, v99);
        sub_1BE0531F4();
        v101 = *&v78[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton];
        v102 = v134;
        v125(v10, v90, v134);
        v123(v10, 0, 1, v102);
        sub_1BE0532A4();
        [v101 addTarget:v78 action:sel_secondaryTapped forControlEvents:64];
        [v101 setHidden_];
        [v101 setAccessibilityIdentifier_];
        [v78 addSubview_];

        v103 = *(v105 + 8);
        v103(v90, v102);
        v103(v118, v102);
        v103(v117, v102);
        (*(v120 + 8))(v100, v99);
        return (v103)(v119, v102);
      }
    }

    v91 = v114;
    sub_1BE04D274();
    v92 = [objc_opt_self() effectWithStyle_];
    sub_1BE04D254();
    v93 = v116;
    v94 = v122;
    (*(v116 + 16))(v115, v91, v122);
    sub_1BE0530E4();
    v95 = v91;
    v77 = v121;
    v96 = v94;
    v78 = v107;
    (*(v93 + 8))(v95, v96);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3BCF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04A604();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_1BD1EB2D0();
  return sub_1BE04A614();
}

BOOL sub_1BD3BCFE0()
{
  result = PKIsSmallDevice();
  v1 = 50.0;
  if (result)
  {
    v1 = 34.0;
  }

  qword_1EBD445F8 = *&v1;
  return result;
}

uint64_t sub_1BD3BD018(double a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  v86.receiver = v1;
  v86.super_class = v5;
  objc_msgSendSuper2(&v86, sel_layoutSubviews);
  v6 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(&v1[v6], v4, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    [v1 bounds];
    sub_1BD3BD654(v84, v23, v24);
    v25 = v84[0];
    v26 = v84[1];
    v27 = v84[2];
    v28 = v84[3];
    v29 = v85;
    v30 = PKContentAlignmentMake();
    v31 = PKContentAlignmentMake();
    if ((v29 & 1) == 0)
    {
      v30 = PKContentAlignmentMake();
      v31 = PKContentAlignmentMake();
    }

    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0) + 48);
    [v1 bounds];
    v35 = v34;
    v37 = v36;
    v39.n128_u64[0] = v38;
    v41 = v40;
    v42.n128_u64[0] = v25;
    v43.n128_u64[0] = v26;
    v44.n128_u64[0] = v35;
    v45.n128_u64[0] = v37;
    v46.n128_u64[0] = v39.n128_u64[0];
    v47.n128_u64[0] = v41;
    PKSizeAlignedInRect(v30, v42, v43, v44, v45, v46, v47, v39);
    [*&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton] setFrame_];
    [v1 bounds];
    v49 = v48;
    v51 = v50;
    v53.n128_u64[0] = v52;
    v55 = v54;
    v56.n128_u64[0] = v27;
    v57.n128_u64[0] = v28;
    v58.n128_u64[0] = v49;
    v59.n128_u64[0] = v51;
    v60.n128_u64[0] = v53.n128_u64[0];
    v61.n128_u64[0] = v55;
    PKSizeAlignedInRect(v32, v56, v57, v58, v59, v60, v61, v53);
    [*&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton] setFrame_];
    sub_1BD3BE370(&v4[v33], type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  else if (result)
  {
    [v1 bounds];
    v62 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
    [v1 bounds];
    [v62 sizeThatFits_];
    if (v65 > 100.0)
    {
      v67 = v65;
    }

    else
    {
      v67 = 100.0;
    }

    if (qword_1EBD36BF0 != -1)
    {
      v83 = v66;
      swift_once();
      v66 = v83;
    }

    if (v66 > *&qword_1EBD445F8)
    {
      *&v68 = v66;
    }

    else
    {
      v68 = qword_1EBD445F8;
    }

    [v1 bounds];
    v70 = v69;
    v72 = v71;
    v74.n128_u64[0] = v73;
    v76 = v75;
    v77.n128_f64[0] = v67;
    v78.n128_u64[0] = v68;
    v79.n128_u64[0] = v70;
    v80.n128_u64[0] = v72;
    v81.n128_u64[0] = v74.n128_u64[0];
    v82.n128_u64[0] = v76;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v77, v78, v79, v80, v81, v82, v74);
    [v62 setFrame_];
  }

  else
  {
    [v1 bounds];
    v10 = v9;
    v12 = v11;
    v14.n128_u64[0] = v13;
    v16 = v15;
    v17.n128_u64[0] = 0x4050800000000000;
    v18.n128_u64[0] = 0x4050800000000000;
    v19.n128_u64[0] = v10;
    v20.n128_u64[0] = v12;
    v21.n128_u64[0] = v14.n128_u64[0];
    v22.n128_u64[0] = v16;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v17, v18, v19, v20, v21, v22, v14);
    [*&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton] setFrame_];
  }

  return sub_1BD3BE370(v4, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
}

double sub_1BD3BD40C(double a1, double a2)
{
  v5 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(&v2[v8], v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = *&v2[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
      [v2 bounds];
      [v12 sizeThatFits_];
      if (qword_1EBD36BF0 != -1)
      {
        swift_once();
      }
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD3BD654(&v16, a1, a2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0);
    sub_1BD3BE370(&v7[*(v11 + 48)], type metadata accessor for NearbyPeerPaymentButtonsView.Action);
LABEL_8:
    sub_1BD3BE370(v7, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  return a1;
}

id sub_1BD3BD654@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  [*(v3 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton) sizeThatFits_];
  v8 = v7;
  v10 = v9;
  result = [*(v3 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton) sizeThatFits_];
  v13 = a2 * 0.5 + -8.0;
  v15 = fmax(v8, v14);
  v16 = v15 <= v13;
  if (v15 <= v13)
  {
    if (qword_1EBD36BF0 != -1)
    {
      v17 = v12;
      result = swift_once();
      v12 = v17;
    }

    if (v10 > v12)
    {
      v12 = v10;
    }

    if (v12 > *&qword_1EBD445F8)
    {
      v10 = v12;
    }

    else
    {
      v10 = *&qword_1EBD445F8;
    }

    a2 = v13;
    v12 = v10;
  }

  *a1 = a2;
  *(a1 + 8) = v10;
  *(a1 + 16) = a2;
  *(a1 + 24) = v12;
  *(a1 + 32) = v16;
  return result;
}

void sub_1BD3BD778(char *result, uint64_t a2, void *a3)
{
  v3 = &result[*a3];
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    v6 = result;
    v7 = sub_1BD0D44B8(v4, v5);
    v4(v7);

    sub_1BD0D4744(v4, v5, v8, v9, v10, v11, v12, v13);
  }
}

id sub_1BD3BD7F8(double a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v49 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton);
  v23 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(v1 + v23, v21, v24);
  v25 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  sub_1BD3BE790(v21, v18, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = EnumCaseMultiPayload != 0;
  if (EnumCaseMultiPayload)
  {
    v28 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  }

  else
  {
    v28 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
  }

  sub_1BD3BE370(v18, v28);
  [v22 setHidden_];
  v29 = *(v1 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton);
  sub_1BD3BE268(v1 + v23, v15, v30);
  sub_1BD3BE790(v15, v12, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v31 = swift_getEnumCaseMultiPayload();
  v32 = v31 != 1;
  if (v31 == 1)
  {
    v33 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
  }

  else
  {
    v33 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  }

  sub_1BD3BE370(v12, v33);
  v34 = v32;
  v35 = v50;
  [v29 setHidden_];
  v36 = *(v1 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton);
  v37 = v51;
  sub_1BD3BE268(v1 + v23, v51, v38);
  sub_1BD3BE790(v37, v35, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v39 = swift_getEnumCaseMultiPayload();
  if (v39 == 2)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0);
    v25 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
    sub_1BD3BE370(v35 + *(v40 + 48), type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  sub_1BD3BE370(v35, v25);
  [v36 setHidden_];
  v41 = *(v1 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton);
  v42 = v52;
  sub_1BD3BE268(v1 + v23, v52, v43);
  v44 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  v45 = v53;
  sub_1BD3BE790(v42, v53, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 == 2)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0);
    v44 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
    sub_1BD3BE370(v45 + *(v47 + 48), type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  sub_1BD3BE370(v45, v44);
  return [v41 setHidden_];
}

id NearbyPeerPaymentButtonsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentButtonsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s9PassKitUI28NearbyPeerPaymentButtonsViewC5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44680, &unk_1BE0D2250);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v46 - v29;
  v32 = &v46 + *(v31 + 56) - v29;
  sub_1BD3BE268(a1, &v46 - v29, v28);
  sub_1BD3BE268(a2, v32, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD3BE268(v30, v23, v35);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v20 = v23;
        goto LABEL_15;
      }

      v43 = v23;
    }

    else
    {
      sub_1BD3BE268(v30, v26, v35);
      if (swift_getEnumCaseMultiPayload())
      {
        v20 = v26;
LABEL_15:
        sub_1BD3BE370(v20, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
        goto LABEL_16;
      }

      v43 = v26;
    }

    sub_1BD3BE790(v43, v17, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE790(v32, v14, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v42 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
    sub_1BD3BE370(v14, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v44 = v17;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD3BE268(v30, v20, v35);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688, &qword_1BE0C64D0) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1BD3BE370(&v20[v36], type metadata accessor for NearbyPeerPaymentButtonsView.Action);
      goto LABEL_15;
    }

    v37 = v46;
    sub_1BD3BE790(v20, v46, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v38 = v47;
    sub_1BD3BE790(v32, v47, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v39 = &v20[v36];
    v40 = v48;
    sub_1BD3BE790(v39, v48, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v41 = v49;
    sub_1BD3BE790(&v32[v36], v49, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    if (_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0())
    {
      v42 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
    }

    else
    {
      v42 = 0;
    }

    sub_1BD3BE370(v41, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE370(v40, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE370(v38, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v44 = v37;
LABEL_21:
    sub_1BD3BE370(v44, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE370(v30, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
    return v42 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_1BD0DE53C(v30, &qword_1EBD44680, &unk_1BE0D2250);
    v42 = 0;
    return v42 & 1;
  }

  sub_1BD3BE370(v30, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1BD3BE268(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3BE2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BE370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD3BE3F4()
{
  result = qword_1EBD3A360;
  if (!qword_1EBD3A360)
  {
    sub_1BE04AFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A360);
  }

  return result;
}

uint64_t sub_1BD3BE454(uint64_t a1)
{
  result = type metadata accessor for NearbyPeerPaymentButtonsView.Style(319);
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

unint64_t sub_1BD3BE5E0(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    result = sub_1BD1030A8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD3BE66C(uint64_t a1)
{
  sub_1BD3BE6E0();
  if (v1 <= 0x3F)
  {
    sub_1BD3BE728(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD3BE6E0()
{
  if (!qword_1EBD44668)
  {
    v0 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44668);
    }
  }
}

void sub_1BD3BE728(uint64_t a1)
{
  if (!qword_1EBD44670)
  {
    type metadata accessor for NearbyPeerPaymentButtonsView.Action(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD44670);
    }
  }
}

uint64_t sub_1BD3BE790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3BE7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100, &unk_1BE0C0AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI17BillingAddressRowV6Status33_AF594ADF3F7069D38D9EE3B9E90A7EABLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void *sub_1BD3BE8B0@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v23[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44690, &qword_1BE0D2350);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44698, &qword_1BE0D2358);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v23 - v11);
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD446A0, &qword_1BE0D2360);
  MEMORY[0x1EEE9AC00](v23[0]);
  v14 = v23 - v13;
  valid = type metadata accessor for BillingAddressRow.ValidAddress(0);
  MEMORY[0x1EEE9AC00](valid);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    if (a3 == 1)
    {
      *v12 = a1;
      v12[1] = a2;
      swift_storeEnumTagMultiPayload();
      sub_1BD12B91C(a1, a2, 1);
      sub_1BD3C0D64(&qword_1EBD446B0, type metadata accessor for BillingAddressRow.ValidAddress, &unk_1BE0D2558);
      sub_1BD3BEE60();
      v18 = a1;
      v19 = a2;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v14, v9, &qword_1EBD446A0, &qword_1BE0D2360);
      swift_storeEnumTagMultiPayload();
      sub_1BD3BEDA4();
      sub_1BD3BEEB4();
      sub_1BE04F9A4();

      return sub_1BD0DE53C(v14, &qword_1EBD446A0, &qword_1BE0D2360);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD3BEDA4();
      sub_1BD3BEEB4();
      return sub_1BE04F9A4();
    }
  }

  else
  {
    *v17 = a1;
    v21 = *(valid + 20);
    *(v17 + v21) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
    swift_storeEnumTagMultiPayload();
    sub_1BD3BEF08(v17, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BD3C0D64(&qword_1EBD446B0, type metadata accessor for BillingAddressRow.ValidAddress, &unk_1BE0D2558);
    sub_1BD3BEE60();
    v22 = a1;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v14, v9, &qword_1EBD446A0, &qword_1BE0D2360);
    swift_storeEnumTagMultiPayload();
    sub_1BD3BEDA4();
    sub_1BD3BEEB4();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v14, &qword_1EBD446A0, &qword_1BE0D2360);
    return sub_1BD3BEF6C(v17);
  }
}

id sub_1BD3BECD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1BD3BE8B0(v3, v4, v5, a1);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44688, &qword_1BE0D2348) + 36);
  *v6 = 0;
  *(v6 + 1) = v3;
  *(v6 + 2) = v4;
  v6[24] = v5;

  return sub_1BD12B91C(v3, v4, v5);
}

uint64_t type metadata accessor for BillingAddressRow.ValidAddress(uint64_t a1)
{
  result = qword_1EBD446C8;
  if (!qword_1EBD446C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD3BEDA4()
{
  result = qword_1EBD446A8;
  if (!qword_1EBD446A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD446A0, &qword_1BE0D2360);
    sub_1BD3C0D64(&qword_1EBD446B0, type metadata accessor for BillingAddressRow.ValidAddress, &unk_1BE0D2558);
    sub_1BD3BEE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446A8);
  }

  return result;
}

unint64_t sub_1BD3BEE60()
{
  result = qword_1EBD446B8;
  if (!qword_1EBD446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446B8);
  }

  return result;
}

unint64_t sub_1BD3BEEB4()
{
  result = qword_1EBD446C0;
  if (!qword_1EBD446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446C0);
  }

  return result;
}

uint64_t sub_1BD3BEF08(uint64_t a1, uint64_t a2)
{
  valid = type metadata accessor for BillingAddressRow.ValidAddress(0);
  (*(*(valid - 8) + 16))(a2, a1, valid);
  return a2;
}

uint64_t sub_1BD3BEF6C(uint64_t a1)
{
  valid = type metadata accessor for BillingAddressRow.ValidAddress(0);
  (*(*(valid - 8) + 8))(a1, valid);
  return a1;
}

void sub_1BD3BF010(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD406E0, 0x1E695CD58);
  if (v1 <= 0x3F)
  {
    sub_1BD3A0CE0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD3BF0B4()
{
  result = qword_1EBD446D8;
  if (!qword_1EBD446D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44688, &qword_1BE0D2348);
    sub_1BD3BF16C();
    sub_1BD0DE4F4(&qword_1EBD446F0, &qword_1EBD446F8, qword_1BE0D2488, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446D8);
  }

  return result;
}

unint64_t sub_1BD3BF16C()
{
  result = qword_1EBD446E0;
  if (!qword_1EBD446E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD446E8, &qword_1BE0D2480);
    sub_1BD3BEDA4();
    sub_1BD3BEEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446E0);
  }

  return result;
}

void sub_1BD3BF214(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44708, &qword_1BE0D25B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = PKOslo2024UIUpdatesEnabled();
  v11 = *a1;
  if (v10)
  {
    v11 = [v11 pkSingleLineFormattedContactAddress];
    if (v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = [v11 pkFormattedContactAddressWithoutName];
  if (!v11)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v12 = v11;
  v13 = sub_1BE052434();
  v15 = v14;

  if (qword_1EBD36C60 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBDAB200;
  v17 = *algn_1EBDAB208;
  v18 = qword_1EBDAB210;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44710, &qword_1BE0D25B8);
  sub_1BD3BF460(a1, v13, v15, &v9[*(v19 + 44)]);
  v15, v20, v21, v22, v23, v24, v25, v26;
  sub_1BD0DE19C(v9, v6, &qword_1EBD44708, &qword_1BE0D25B0);
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44718, &unk_1BE0D25C0);
  sub_1BD0DE19C(v6, a2 + *(v27 + 48), &qword_1EBD44708, &qword_1BE0D25B0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1BD0DE53C(v9, &qword_1EBD44708, &qword_1BE0D25B0);
  sub_1BD0DE53C(v6, &qword_1EBD44708, &qword_1BE0D25B0);
  v18, v28, v29, v30, v31, v32, v33, v34;
  v17, v35, v36, v37, v38, v39, v40, v41;
  v16, v42, v43, v44, v45, v46, v47, v48;
}

uint64_t sub_1BD3BF460@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v216 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930, &qword_1BE0C4008);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v213 = &v205 - v8;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44720, &qword_1BE0D25D0);
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v210 = &v205 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v214 = &v205 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v205 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v211 = &v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v217 = &v205 - v22;
  v23 = [*a1 pk_displayName];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1BE052434();
    v206 = v17;
    v26 = v25;
    v28 = v27;

    v218 = v26;
    v219 = v28;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    LOBYTE(v28) = v32;
    v209 = a3;
    v34 = v33;
    v35 = sub_1BE050324();
    v207 = v14;
    v36 = v35;
    v37 = sub_1BE0505F4();
    v39 = v38;
    v208 = a2;
    v41 = v40;
    v43 = v42;
    v36, v38, v40, v42, v44, v45, v46, v47;
    sub_1BD0DDF10(v29, v31, (v28 & 1), v48, v49, v50, v51, v52);
    v34, v53, v54, v55, v56, v57, v58, v59;
    v60 = sub_1BE051224();
    v61 = sub_1BE050564();
    v63 = v62;
    LOBYTE(v31) = v64;
    v66 = v65;
    v60, v62, v64, v65, v67, v68, v69, v70;
    sub_1BD0DDF10(v37, v39, (v41 & 1), v71, v72, v73, v74, v75);
    v43, v76, v77, v78, v79, v80, v81, v82;
    v218 = v61;
    v219 = v63;
    v83 = (v31 & 1);
    v220 = v31 & 1;
    v221 = v66;
    sub_1BE052434();
    v85 = v84;
    v86 = v206;
    sub_1BE050DE4();
    v85, v87, v88, v89, v90, v91, v92, v93;
    v94 = v61;
    a3 = v209;
    sub_1BD0DDF10(v94, v63, v83, v95, v96, v97, v98, v99);
    v66, v100, v101, v102, v103, v104, v105, v106;
    v107 = v217;
    sub_1BD0DE204(v86, v217, &qword_1EBD452C0, &qword_1BE0B7620);
    v108 = v107;
    a2 = v208;
    (*(v15 + 56))(v108, 0, 1, v207);
  }

  else
  {
    (*(v15 + 56))(v217, 1, 1, v14);
  }

  v218 = a2;
  v219 = a3;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v109 = sub_1BE0506C4();
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v116 = sub_1BE0502E4();
  v117 = sub_1BE0505F4();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v116, v118, v120, v122, v124, v125, v126, v127;
  sub_1BD0DDF10(v109, v111, (v113 & 1), v128, v129, v130, v131, v132);
  v115, v133, v134, v135, v136, v137, v138, v139;
  v140 = sub_1BE051234();
  v141 = sub_1BE050564();
  v143 = v142;
  LOBYTE(v115) = v144;
  v146 = v145;
  v140, v142, v144, v145, v147, v148, v149, v150;
  sub_1BD0DDF10(v117, v119, (v121 & 1), v151, v152, v153, v154, v155);
  v123, v156, v157, v158, v159, v160, v161, v162;
  KeyPath = swift_getKeyPath();
  v218 = v141;
  v219 = v143;
  v164 = (v115 & 1);
  v220 = v164;
  v221 = v146;
  v222 = KeyPath;
  v223 = 0;
  sub_1BE052434();
  v166 = v165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0, &unk_1BE0B8220);
  sub_1BD0FF49C();
  v167 = v213;
  sub_1BE050DE4();
  v166, v168, v169, v170, v171, v172, v173, v174;
  sub_1BD0DDF10(v141, v143, v164, v175, v176, v177, v178, v179);
  KeyPath, v180, v181, v182, v183, v184, v185, v186;
  v146, v187, v188, v189, v190, v191, v192, v193;
  if (PKOslo2024UIUpdatesEnabled())
  {
    v194 = 1;
  }

  else
  {
    v194 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v195 = swift_getKeyPath();
  v196 = v210;
  sub_1BD0DE204(v167, v210, &qword_1EBD3E930, &qword_1BE0C4008);
  v197 = v196 + *(v212 + 36);
  *v197 = v195;
  *(v197 + 8) = v194;
  *(v197 + 16) = 0;
  v198 = v214;
  sub_1BD0DE204(v196, v214, &qword_1EBD44720, &qword_1BE0D25D0);
  v199 = v217;
  v200 = v211;
  sub_1BD0DE19C(v217, v211, &unk_1EBD5BB60, &qword_1BE0C4580);
  v201 = v215;
  sub_1BD0DE19C(v198, v215, &qword_1EBD44720, &qword_1BE0D25D0);
  v202 = v216;
  sub_1BD0DE19C(v200, v216, &unk_1EBD5BB60, &qword_1BE0C4580);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44728, &qword_1BE0D2638);
  sub_1BD0DE19C(v201, v202 + *(v203 + 48), &qword_1EBD44720, &qword_1BE0D25D0);
  sub_1BD0DE53C(v198, &qword_1EBD44720, &qword_1BE0D25D0);
  sub_1BD0DE53C(v199, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v201, &qword_1EBD44720, &qword_1BE0D25D0);
  return sub_1BD0DE53C(v200, &unk_1EBD5BB60, &qword_1BE0C4580);
}

void sub_1BD3BFB20(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44700, &qword_1BE0D25A8);
  sub_1BD3BF214(v2, (a2 + *(v4 + 44)));
}

void sub_1BD3BFB74(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44738, &qword_1BE0D2648);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  if (qword_1EBD36C60 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBDAB200;
  v13 = *algn_1EBDAB208;
  v14 = qword_1EBDAB210;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44740, &qword_1BE0D2650);
  sub_1BD3BFD54(a1, a2, &v11[*(v15 + 44)]);
  sub_1BD0DE19C(v11, v8, &qword_1EBD44738, &qword_1BE0D2648);
  *a3 = v12;
  a3[1] = v13;
  a3[2] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44748, &qword_1BE0D2658);
  sub_1BD0DE19C(v8, a3 + *(v16 + 48), &qword_1EBD44738, &qword_1BE0D2648);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1BD0DE53C(v11, &qword_1EBD44738, &qword_1BE0D2648);
  sub_1BD0DE53C(v8, &qword_1EBD44738, &qword_1BE0D2648);
  v14, v17, v18, v19, v20, v21, v22, v23;
  v13, v24, v25, v26, v27, v28, v29, v30;
  v12, v31, v32, v33, v34, v35, v36, v37;
}

uint64_t sub_1BD3BFD54@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v278 = a3;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44750, &unk_1BE0D2660);
  MEMORY[0x1EEE9AC00](v277);
  v6 = &v267 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v267 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v267 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v267 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v267 - v17;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44758, &qword_1BE0D2670);
  MEMORY[0x1EEE9AC00](v274);
  v276 = &v267 - v19;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540, &unk_1BE0DC3A0);
  v20 = MEMORY[0x1EEE9AC00](v275);
  v22 = &v267 - v21;
  v23 = [a1 pk_displayName];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1BE052434();
    v273 = v18;
    v26 = v25;
    v28 = v27;

    *&v285 = v26;
    *(&v285 + 1) = v28;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    v271 = v9;
    v33 = v32;
    v272 = v12;
    v35 = v34;
    v36 = sub_1BE050324();
    v268 = a2;
    v37 = v36;
    v38 = sub_1BE0505F4();
    v40 = v39;
    v269 = v15;
    v42 = v41;
    v270 = v6;
    v44 = v43;
    v37, v39, v41, v43, v45, v46, v47, v48;
    sub_1BD0DDF10(v29, v31, (v33 & 1), v49, v50, v51, v52, v53);
    v35, v54, v55, v56, v57, v58, v59, v60;
    v61 = sub_1BE051224();
    v62 = sub_1BE050564();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v61, v63, v65, v67, v69, v70, v71, v72;
    sub_1BD0DDF10(v38, v40, (v42 & 1), v73, v74, v75, v76, v77);
    v44, v78, v79, v80, v81, v82, v83, v84;
    *&v285 = v62;
    *(&v285 + 1) = v64;
    v85 = (v66 & 1);
    LOBYTE(v286) = v66 & 1;
    *(&v286 + 1) = v68;
    sub_1BE052434();
    v87 = v86;
    sub_1BE050DE4();
    v87, v88, v89, v90, v91, v92, v93, v94;
    sub_1BD0DDF10(v62, v64, v85, v95, v96, v97, v98, v99);
    v68, v100, v101, v102, v103, v104, v105, v106;
    *&v285 = sub_1BD3C0998(v268);
    *(&v285 + 1) = v107;
    v108 = sub_1BE0506C4();
    v110 = v109;
    LOBYTE(v62) = v111;
    v113 = v112;
    v114 = sub_1BE0502E4();
    v115 = sub_1BE0505F4();
    v117 = v116;
    LOBYTE(v38) = v118;
    v120 = v119;
    v114, v116, v118, v119, v121, v122, v123, v124;
    sub_1BD0DDF10(v108, v110, (v62 & 1), v125, v126, v127, v128, v129);
    v113, v130, v131, v132, v133, v134, v135, v136;
    v137 = sub_1BE051264();
    v138 = sub_1BE050564();
    v140 = v139;
    LOBYTE(v110) = v141;
    v143 = v142;
    v137, v139, v141, v142, v144, v145, v146, v147;
    sub_1BD0DDF10(v115, v117, (v38 & 1), v148, v149, v150, v151, v152);
    v120, v153, v154, v155, v156, v157, v158, v159;
    KeyPath = swift_getKeyPath();
    *&v285 = v138;
    *(&v285 + 1) = v140;
    LOBYTE(v286) = v110 & 1;
    *(&v286 + 1) = v143;
    *&v287 = KeyPath;
    *(&v287 + 1) = 2;
    v288[0] = 0;
    sub_1BE052434();
    v162 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    v163 = v272;
    sub_1BE050DE4();
    v162, v164, v165, v166, v167, v168, v169, v170;
    sub_1BD0DDF10(v138, v140, (v110 & 1), v171, v172, v173, v174, v175);
    KeyPath, v176, v177, v178, v179, v180, v181, v182;
    v143, v183, v184, v185, v186, v187, v188, v189;
    v190 = v273;
    v191 = v269;
    sub_1BD0DE19C(v273, v269, &qword_1EBD452C0, &qword_1BE0B7620);
    v192 = v271;
    sub_1BD0DE19C(v163, v271, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v193 = v270;
    sub_1BD0DE19C(v191, v270, &qword_1EBD452C0, &qword_1BE0B7620);
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44768, &qword_1BE0D2678);
    sub_1BD0DE19C(v192, v193 + *(v194 + 48), &qword_1EBD3C0E8, &qword_1BE0C4010);
    sub_1BD0DE53C(v192, &qword_1EBD3C0E8, &qword_1BE0C4010);
    sub_1BD0DE53C(v191, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE19C(v193, v276, &qword_1EBD44750, &unk_1BE0D2660);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD44760, &qword_1EBD44750, &unk_1BE0D2660, MEMORY[0x1E6981F48]);
    sub_1BD3C0CA8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v193, &qword_1EBD44750, &unk_1BE0D2660);
    sub_1BD0DE53C(v272, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v195 = v190;
    v196 = &qword_1EBD452C0;
    v197 = &qword_1BE0B7620;
  }

  else
  {
    *&v285 = sub_1BD3C0998(a2);
    *(&v285 + 1) = v198;
    sub_1BD0DDEBC();
    v199 = sub_1BE0506C4();
    v201 = v200;
    v203 = v202;
    v205 = v204;
    v206 = sub_1BE050324();
    v207 = sub_1BE0505F4();
    v209 = v208;
    v211 = v210;
    v213 = v212;
    v206, v208, v210, v212, v214, v215, v216, v217;
    sub_1BD0DDF10(v199, v201, (v203 & 1), v218, v219, v220, v221, v222);
    v205, v223, v224, v225, v226, v227, v228, v229;
    v230 = sub_1BE051264();
    v231 = sub_1BE050564();
    v233 = v232;
    LOBYTE(v205) = v234;
    v236 = v235;
    v230, v232, v234, v235, v237, v238, v239, v240;
    sub_1BD0DDF10(v207, v209, (v211 & 1), v241, v242, v243, v244, v245);
    v213, v246, v247, v248, v249, v250, v251, v252;
    LOBYTE(v230) = sub_1BE050234();
    sub_1BE04E1F4();
    v284 = v205 & 1;
    v283 = 0;
    *&v279 = v231;
    *(&v279 + 1) = v233;
    LOBYTE(v280) = v205 & 1;
    *(&v280 + 1) = v236;
    LOBYTE(v281) = v230;
    *(&v281 + 1) = v253;
    *v282 = v254;
    *&v282[8] = v255;
    *&v282[16] = v256;
    v282[24] = 0;
    sub_1BE052434();
    v258 = v257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD2A275C();
    sub_1BE050DE4();
    v258, v259, v260, v261, v262, v263, v264, v265;
    v287 = v281;
    *v288 = *v282;
    *&v288[9] = *&v282[9];
    v285 = v279;
    v286 = v280;
    sub_1BD0DE53C(&v285, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD0DE19C(v22, v276, &qword_1EBD40540, &unk_1BE0DC3A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD44760, &qword_1EBD44750, &unk_1BE0D2660, MEMORY[0x1E6981F48]);
    sub_1BD3C0CA8();
    sub_1BE04F9A4();
    v195 = v22;
    v196 = &qword_1EBD40540;
    v197 = &unk_1BE0DC3A0;
  }

  return sub_1BD0DE53C(v195, v196, v197);
}

void sub_1BD3C068C(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44730, &qword_1BE0D2640);
  sub_1BD3BFB74(v5, v4, (a2 + *(v6 + 44)));
}

void sub_1BD3C06F0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v85 = v7;
    v86 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    v16 = sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v28, v29, v30, v31, v32);
    v15, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_1BE0511F4();
    v41 = sub_1BE050564();
    v43 = v42;
    LOBYTE(v15) = v44;
    v46 = v45;
    v40, v42, v44, v45, v47, v48, v49, v50;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v51, v52, v53, v54, v55);
    v23, v56, v57, v58, v59, v60, v61, v62;
    v85 = v41;
    v86 = v43;
    v63 = (v15 & 1);
    v87 = v63;
    v88 = v46;
    sub_1BE052434();
    v65 = v64;
    sub_1BE050DE4();
    v65, v66, v67, v68, v69, v70, v71, v72;
    sub_1BD0DDF10(v41, v43, v63, v73, v74, v75, v76, v77);
    v46, v78, v79, v80, v81, v82, v83, v84;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD3C0998(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v52[-v8];
  if (!a1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v49 = result;
      v48 = sub_1BE04B6F4();

      (*(v3 + 8))(v5, v2);
      return v48;
    }

    __break(1u);
    goto LABEL_17;
  }

  v10 = sub_1BE052434();
  v12 = v11;
  v13 = a1;
  v14 = [v13 userInfo];
  v15 = sub_1BE052244();

  if (!v15[2])
  {
    v15, v16, v17, v18, v19, v20, v21, v22;
    v50 = v12;
LABEL_13:
    v50, v32, v33, v34, v35, v36, v37, v38;
LABEL_14:
    v51 = [v13 localizedDescription];
    v48 = sub_1BE052434();

    return v48;
  }

  v23 = sub_1BD148F70(v10, v12);
  v25 = v24;
  v12, v24, v26, v27, v28, v29, v30, v31;
  if ((v25 & 1) == 0)
  {
    v50 = v15;
    goto LABEL_13;
  }

  sub_1BD038CD0(v15[7] + 32 * v23, v53);
  v15, v39, v40, v41, v42, v43, v44, v45;
  if ((swift_dynamicCast() & 1) == 0 || (v52[15] & 1) == 0)
  {
    goto LABEL_14;
  }

  (*(v3 + 104))(v9, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v47 = result;
    v48 = sub_1BE04B6F4();

    (*(v3 + 8))(v9, v2);
    return v48;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BD3C0CA8()
{
  result = qword_1EBD40550;
  if (!qword_1EBD40550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40540, &unk_1BE0DC3A0);
    sub_1BD2A275C();
    sub_1BD3C0D64(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40550);
  }

  return result;
}

uint64_t sub_1BD3C0D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD3C0DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PublishedDynamicSectionController.Section(255, *(a1 + 80), a3, a4);
  sub_1BE052804();
  result = sub_1BE04D8D4();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD3C0E70()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD3C0F18(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = MEMORY[0x1E69E7D40];
  type metadata accessor for PublishedDynamicSectionController.Section(0, *((*MEMORY[0x1E69E7D40] & v6) + 0x50), a3, a4);
  v8 = sub_1BE0521F4();
  v38 = v8;
  v9 = [*(v5 + *((*v7 & *v5) + 0x58)) identifiers];
  v10 = sub_1BE052744();

  v18 = v10[2];
  if (v18)
  {
    v19 = v10 + 5;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_1BE048C84();
      sub_1BD3C111C(v20, v21, &v39);
      v21, v22, v23, v24, v25, v26, v27, v28;
      sub_1BE052804();
      sub_1BE0527E4();
      v19 += 2;
      --v18;
    }

    while (v18);
    v10, v29, v30, v31, v32, v33, v34, v35;
    v36 = v38;
  }

  else
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
    v36 = v8;
  }

  return sub_1BD3C0F18(v36);
}

uint64_t sub_1BD3C111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x58));
  v8 = sub_1BE052404();
  v9 = [v7 snapshotWithPreviousSnapshot:0 forSectionIdentifier:v8];

  v10 = [v9 items];
  v11 = sub_1BE052744();

  v12 = sub_1BE053964();
  v11, v13, v14, v15, v16, v17, v18, v19;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;

  return sub_1BE048C84();
}

void sub_1BD3C124C(void *a1)
{
  v1 = a1;
  sub_1BD3C1518();
}

void sub_1BD3C1294(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD3C1518();

  __swift_destroy_boxed_opaque_existential_0(&v12, v5, v6, v7, v8, v9, v10, v11);
}

id sub_1BD3C132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PublishedDynamicSectionController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1BD3C1388(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  v5 = *((*v2 & *a1) + 0x60);
  type metadata accessor for PublishedDynamicSectionController.Section(255, *((v4 & v3) + 0x50), v6, v7);
  sub_1BE052804();
  v8 = sub_1BE04D8D4();
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v5], v8);
}

uint64_t sub_1BD3C1498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD3C14D4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for PublishedDynamicSectionController(0, *(a1 + 80), a3, a4);
  result = sub_1BE04D814();
  *a5 = result;
  return result;
}

uint64_t sub_1BD3C154C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v82 = a3;
  v80 = a1;
  v81 = a2;
  v5 = sub_1BE051AD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v75);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  type metadata accessor for ObservableHostingController();
  sub_1BD3C1EBC(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
  *a4 = sub_1BE04EEC4();
  a4[1] = v16;
  v17 = type metadata accessor for SavingsBeneficiaryView(0);
  v18 = v17[7];
  *(a4 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
  swift_storeEnumTagMultiPayload();
  v78 = type metadata accessor for FeatureError(0);
  v19 = *(v78 - 8);
  v77 = *(v19 + 56);
  v79 = v19 + 56;
  v77(v15, 1, 1, v78);
  sub_1BD0DE19C(v15, v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BE051694();
  sub_1BD0DE53C(v15, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v20 = a4 + v17[9];
  LOBYTE(v86) = 0;
  sub_1BE051694();
  v21 = v89;
  *v20 = v88;
  *(v20 + 1) = v21;
  v22 = v17;
  (*(v6 + 104))(v10, *MEMORY[0x1E697D710], v5);
  (*(v6 + 16))(v76, v10, v5);
  sub_1BE051694();
  (*(v6 + 8))(v10, v5);
  v23 = (a4 + v17[12]);
  type metadata accessor for DeviceAuthenticationModel(0);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  LOBYTE(v86) = 0;
  sub_1BE04D874();
  swift_endAccess();
  v25 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  *(v24 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v25;
  sub_1BD3C1EBC(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  *v23 = sub_1BE04E954();
  v23[1] = v26;
  v27 = a4 + v17[13];
  LOBYTE(v86) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1B8, &qword_1BE0D2830);
  sub_1BE051694();
  v28 = v89;
  type metadata accessor for AccountModel(0);
  sub_1BD3C1EBC(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v80 = v80;
  a4[2] = sub_1BE04E954();
  a4[3] = v29;
  type metadata accessor for AccountUserInfoModel(0);
  sub_1BD3C1EBC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
  v30 = sub_1BE048964();
  a4[4] = sub_1BE04E954();
  a4[5] = v31;
  LOBYTE(v86) = v82 & 1;
  sub_1BE051694();
  v28, v32, v33, v34, v35, v36, v37, v38;
  v39 = v89;
  *v27 = v88;
  *(v27 + 1) = v39;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  sub_1BE04D8B4(&v88);
  KeyPath, v42, v43, v44, v45, v46, v47, v48;
  v41, v49, v50, v51, v52, v53, v54, v55;
  v56 = v88;
  v57 = type metadata accessor for AddBeneficiaryModel(0);
  v58 = objc_allocWithZone(v57);
  v59 = &v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission];
  *v59 = 0;
  v59[1] = 0;
  v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading] = 0;
  v60 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  v61 = v77;
  v62 = v78;
  v77(&v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error], 1, 1, v78);
  v61(&v58[v60], 1, 1, v62);
  sub_1BE04B5C4();
  *&v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account] = v56;
  v87.receiver = v58;
  v87.super_class = v57;
  v63 = objc_msgSendSuper2(&v87, sel_init);
  v64 = (a4 + v22[10]);
  *v64 = v63;
  v64[1] = 0;
  v88 = v63;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
  sub_1BE0516A4();
  v65 = v86;
  v66 = swift_getKeyPath();
  v83 = v65;
  v84 = sub_1BD3C1F04;
  v85 = v30;
  v88 = v65;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
  sub_1BE048964();
  sub_1BE04B584();

  v66, v67, v68, v69, v70, v71, v72, v73;
}

uint64_t sub_1BD3C1CD4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for SavingsBeneficiaryView(0);
  sub_1BD0DE19C(v1 + *(v10 + 28), v9, &qword_1EBD3B1A8, &unk_1BE0BC2E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v9, a1, &qword_1EBD449E8, &qword_1BE0FF9D0);
  }

  v12 = *v9;
  sub_1BE052C44();
  v13 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  v12, v14, v15, v16, v17, v18, v19, v20;
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD3C1EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD3C1F08@<X0>(uint64_t a1@<X8>)
{
  v157 = a1;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v131 - v2;
  v3 = type metadata accessor for SavingsBeneficiaryView(0);
  v165 = *(v3 - 8);
  v166 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v163 = v4;
  v156 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1BE04F434();
  v158 = *(v164 - 1);
  MEMORY[0x1EEE9AC00](v164);
  v137 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A10, &qword_1BE0D29B8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v131 - v11);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A18, &qword_1BE0D29C0);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v14 = &v131 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A20, &qword_1BE0D29C8);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v131 - v15;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A28, &qword_1BE0D29D0);
  MEMORY[0x1EEE9AC00](v134);
  v140 = &v131 - v16;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A30, &qword_1BE0D29D8);
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v131 - v17;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A38, &qword_1BE0D29E0);
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v131 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A40, &qword_1BE0D29E8);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v162 = &v131 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A48, &qword_1BE0D29F0);
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v131 - v20;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A50, &qword_1BE0D29F8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v131 - v21;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A58, &qword_1BE0D2A00);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v147 = &v131 - v22;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A60, &qword_1BE0D2A08);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v131 - v23;
  v159 = v1;
  sub_1BD3C3060(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E69B80E0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_1BE04B6F4();
    v28 = v27;

    (*(v7 + 8))(v9, v6);
    v168 = v26;
    v169 = v28;
    v29 = sub_1BD3CAAC4(&qword_1EBD44A68, &qword_1EBD44A10, &qword_1BE0D29B8, sub_1BD3C9FF0);
    v30 = sub_1BD0DDEBC();
    v31 = MEMORY[0x1E69E6158];
    sub_1BE050B74();
    v28, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD0DE53C(v12, &qword_1EBD44A10, &qword_1BE0D29B8);
    v39 = v158;
    v40 = v137;
    v41 = v164;
    (*(v158 + 13))(v137, *MEMORY[0x1E697C438], v164);
    v168 = v10;
    v169 = v31;
    v170 = v29;
    v171 = v30;
    swift_getOpaqueTypeConformance2();
    v42 = v135;
    v43 = v133;
    sub_1BE050E84();
    (*(v39 + 1))(v40, v41);
    (*(v132 + 8))(v14, v43);
    v44 = v159;
    v45 = *(v159 + 40);
    swift_beginAccess();
    v46 = v134;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
    v47 = v140;
    sub_1BE04D884();
    swift_endAccess();
    v164 = type metadata accessor for SavingsBeneficiaryView;
    v48 = v156;
    sub_1BD3CB7F4(v44, v156, type metadata accessor for SavingsBeneficiaryView);
    v165 = *(v165 + 80);
    v49 = (v165 + 16) & ~v165;
    v50 = swift_allocObject();
    v158 = type metadata accessor for SavingsBeneficiaryView;
    sub_1BD3CAC58(v48, v50 + v49, type metadata accessor for SavingsBeneficiaryView);
    (*(v136 + 32))(v47, v42, v138);
    v51 = (v47 + *(v46 + 56));
    *v51 = sub_1BD3CBBE0;
    v51[1] = v50;
    swift_beginAccess();
    v52 = v139;
    v53 = v141;
    sub_1BE04D884();
    swift_endAccess();
    sub_1BD3CB7F4(v44, v48, v164);
    v54 = v49;
    v132 = v49;
    v55 = swift_allocObject();
    sub_1BD3CAC58(v48, v55 + v54, type metadata accessor for SavingsBeneficiaryView);
    sub_1BD0DE204(v47, v53, &qword_1EBD44A28, &qword_1BE0D29D0);
    v56 = (v53 + *(v52 + 56));
    *v56 = sub_1BD3CA700;
    v56[1] = v55;
    v137 = v45;
    swift_beginAccess();
    v57 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD417F8, &unk_1BE0CB0D0);
    v58 = v161;
    sub_1BE04D884();
    swift_endAccess();
    v59 = v159;
    v60 = v48;
    v61 = v164;
    sub_1BD3CB7F4(v159, v48, v164);
    v62 = v132;
    v63 = swift_allocObject();
    v64 = v158;
    sub_1BD3CAC58(v60, v63 + v62, v158);
    sub_1BD0DE204(v53, v58, &qword_1EBD44A30, &qword_1BE0D29D8);
    v65 = (v58 + *(v57 + 56));
    *v65 = sub_1BD3CA768;
    v65[1] = v63;
    v66 = (v59 + *(v166 + 40));
    v67 = v59;
    v69 = *v66;
    v68 = v66[1];
    v168 = v69;
    v169 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
    sub_1BE0516A4();
    v70 = v167;
    KeyPath = swift_getKeyPath();
    v168 = v70;
    sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
    sub_1BE04B594();
    KeyPath, v72, v73, v74, v75, v76, v77, v78;
    v79 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
    swift_beginAccess();
    v80 = v154;
    sub_1BD0DE19C(v70 + v79, v154, &qword_1EBD416C0, &unk_1BE0BC2A0);

    sub_1BD3CB7F4(v67, v60, v61);
    v81 = swift_allocObject();
    sub_1BD3CAC58(v60, v81 + v62, v64);
    sub_1BD0DE4F4(&qword_1EBD44AE8, &qword_1EBD44A38, &qword_1BE0D29E0, MEMORY[0x1E697C278]);
    sub_1BD2477C0();
    v82 = v161;
    sub_1BE051074();
    v81, v83, v84, v85, v86, v87, v88, v89;
    sub_1BD0DE53C(v80, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BD0DE53C(v82, &qword_1EBD44A38, &qword_1BE0D29E0);
    v90 = v145;
    v91 = &v145[*(v142 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v92 = v67;
    sub_1BE0516C4();
    v93 = v67;
    v94 = v164;
    sub_1BD3CB7F4(v93, v60, v164);
    v95 = swift_allocObject();
    v96 = v158;
    sub_1BD3CAC58(v60, v95 + v62, v158);
    (*(v143 + 32))(v90, v162, v144);
    v97 = &v91[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v97 = sub_1BD3CA804;
    v97[1] = v95;
    sub_1BD3CB7F4(v92, v60, v94);
    v98 = swift_allocObject();
    sub_1BD3CAC58(v60, v98 + v62, v96);
    v99 = v146;
    v100 = sub_1BD0DE204(v90, v146, &qword_1EBD44A48, &qword_1BE0D29F0);
    v101 = v148;
    v102 = (v99 + *(v148 + 36));
    *v102 = sub_1BD3CA8AC;
    v102[1] = v98;
    v102[2] = 0;
    v102[3] = 0;
    MEMORY[0x1EEE9AC00](v100);
    *(&v131 - 2) = v92;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AF0, &qword_1BE0D2A80);
    v104 = sub_1BD3CA8E0();
    v105 = sub_1BD3CAAC4(&qword_1EBD44B08, &qword_1EBD44AF0, &qword_1BE0D2A80, sub_1BD3CAB40);
    v106 = v147;
    sub_1BE051034();
    sub_1BD0DE53C(v99, &qword_1EBD44A50, &qword_1BE0D29F8);
    v107 = swift_getKeyPath();
    v108 = swift_getKeyPath();
    sub_1BE04D8B4(&v168);
    v107, v109, v110, v111, v112, v113, v114, v115;
    v108, v116, v117, v118, v119, v120, v121, v122;
    v168 = v101;
    v169 = v103;
    v170 = v104;
    v171 = v105;
    swift_getOpaqueTypeConformance2();
    v123 = v151;
    v124 = v150;
    sub_1BE050E74();
    (*(v149 + 8))(v106, v124);
    v125 = swift_getKeyPath();
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B38, &qword_1BE0D2B18);
    v127 = v157;
    v128 = (v157 + *(v126 + 36));
    v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410, &unk_1BE0D2B20) + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
    sub_1BE0516C4();
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    (*(*(v130 - 8) + 56))(v128 + v129, 0, 1, v130);
    *v128 = v125;
    return (*(v152 + 32))(v127, v123, v153);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3C3060@<X0>(void *a1@<X8>)
{
  v222 = a1;
  v2 = sub_1BE04FB94();
  v209 = *(v2 - 8);
  v210 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v208 = &v203 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AC0, &qword_1BE0D2A40);
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v203 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AB8, &qword_1BE0D2A38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v212 = &v203 - v6;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AA8, &qword_1BE0D2A30);
  MEMORY[0x1EEE9AC00](v220);
  v204 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v205 = &v203 - v9;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B50, &qword_1BE0D2C28);
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v203 - v10;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v211 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v203 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98, &unk_1BE0D2A20);
  v215 = *(v17 - 8);
  v216 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v214 = &v203 - v18;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88, &unk_1BE0ECF10);
  MEMORY[0x1EEE9AC00](v217);
  v20 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v203 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = (&v203 - v25);
  v213 = v1;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(&v223);
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  v43 = v223;
  v221 = v12;
  if (v223)
  {
    v44 = v224;
    sub_1BE048C84();
    sub_1BD0D468C(v43, v44);
    v45 = v11;
    if (v44)
    {
      v46 = v44[2] != 0;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v45 = v11;
    v46 = 0;
    v44 = 0;
  }

  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  sub_1BE04D8B4(&v223);
  v47, v49, v50, v51, v52, v53, v54, v55;
  v48, v56, v57, v58, v59, v60, v61, v62;
  if (v223 == 1)
  {
    v44, v63, v64, v65, v66, v67, v68, v69;
LABEL_15:
    v175 = v45;
    v176 = v221;
    (*(v221 + 104))(v16, *MEMORY[0x1E69B80E0], v175);
    result = PKPassKitBundle();
    if (result)
    {
      v178 = result;
      v179 = sub_1BE04B6F4();
      v181 = v180;

      (*(v176 + 8))(v16, v175);
      v223 = v179;
      v224 = v181;
      sub_1BD0DDEBC();
      v182 = v214;
      sub_1BE04E504();
      v183 = &v20[*(v217 + 36)];
      v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
      v185 = *MEMORY[0x1E697DC10];
      v186 = sub_1BE04E364();
      (*(*(v186 - 8) + 104))(v183 + v184, v185, v186);
      *v183 = swift_getKeyPath();
      (*(v215 + 32))(v20, v182, v216);
      sub_1BD0DE204(v20, v23, &qword_1EBD44A88, &unk_1BE0ECF10);
      sub_1BD0DE19C(v23, v219, &qword_1EBD44A88, &unk_1BE0ECF10);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CA07C();
      sub_1BD3CA160();
      v187 = v222;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v23, &qword_1EBD44A88, &unk_1BE0ECF10);
LABEL_17:
      v188 = 0;
LABEL_18:
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A78, &unk_1BE0D2A10);
      return (*(*(v189 - 8) + 56))(v187, v188, 1, v189);
    }

    __break(1u);
    goto LABEL_25;
  }

  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  sub_1BE04D8B4(v26);
  v70, v72, v73, v74, v75, v76, v77, v78;
  v71, v79, v80, v81, v82, v83, v84, v85;
  v86 = type metadata accessor for FeatureError(0);
  if ((*(*(v86 - 8) + 48))(v26, 1, v86) != 1)
  {
    v44, v87, v88, v89, v90, v91, v92, v93;
    sub_1BD0DE53C(v26, &qword_1EBD416C0, &unk_1BE0BC2A0);
    goto LABEL_15;
  }

  v94 = sub_1BD0DE53C(v26, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v95 = v45;
  v96 = v213;
  v97 = v46;
  if (!v46)
  {
    v98 = swift_getKeyPath();
    v99 = swift_getKeyPath();
    sub_1BE04D8B4(&v223);
    v98, v100, v101, v102, v103, v104, v105, v106;
    v99, v107, v108, v109, v110, v111, v112, v113;
    v114 = v223;
    LODWORD(v98) = [v223 supportsAddBeneficiaries];

    if (!v98)
    {
      v44, v115, v116, v117, v118, v119, v120, v121;
      v188 = 1;
      v187 = v222;
      goto LABEL_18;
    }
  }

  MEMORY[0x1EEE9AC00](v94);
  *(&v203 - 4) = v96;
  *(&v203 - 3) = v44;
  *(&v203 - 16) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B58, &qword_1BE0D2C78);
  sub_1BD3CACCC();
  v122 = v207;
  sub_1BE0504E4();
  v44, v123, v124, v125, v126, v127, v128, v129;
  v130 = swift_getKeyPath();
  v131 = swift_getKeyPath();
  sub_1BE04D8B4(&v223);
  v130, v132, v133, v134, v135, v136, v137, v138;
  v131, v139, v140, v141, v142, v143, v144, v145;
  LOBYTE(v131) = v223;
  v146 = swift_getKeyPath();
  v147 = swift_allocObject();
  *(v147 + 16) = v131;
  v148 = (v122 + *(v206 + 36));
  *v148 = v146;
  v148[1] = sub_1BD10DF54;
  v148[2] = v147;
  v149 = v208;
  sub_1BE04FB84();
  sub_1BD3CA2D4();
  v150 = v212;
  v151 = v210;
  v152 = v96;
  sub_1BE051144();
  (*(v209 + 8))(v149, v151);
  sub_1BD0DE53C(v122, &qword_1EBD44AC0, &qword_1BE0D2A40);
  v153 = swift_getKeyPath();
  v154 = swift_getKeyPath();
  sub_1BE04D8B4(&v223);
  v153, v155, v156, v157, v158, v159, v160, v161;
  v154, v162, v163, v164, v165, v166, v167, v168;
  v169 = v223;
  if (v223)
  {
    v170 = [v223 contactNumber];

    v171 = v221;
    v172 = v211;
    if (v170)
    {
      v169 = sub_1BE052434();
      v174 = v173;
    }

    else
    {
      v169 = 0;
      v174 = 0;
    }
  }

  else
  {
    v174 = 0;
    v171 = v221;
    v172 = v211;
  }

  (*(v171 + 104))(v172, *MEMORY[0x1E69B80E0], v95);
  result = PKPassKitBundle();
  if (result)
  {
    v190 = result;
    v191 = sub_1BE04B6F4();
    v193 = v192;

    (*(v171 + 8))(v172, v95);
    v194 = (v152 + *(type metadata accessor for SavingsBeneficiaryView(0) + 36));
    v195 = *v194;
    v196 = *(v194 + 1);
    v226 = v195;
    v227 = v196;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v197 = v223;
    v198 = v224;
    v199 = v225;
    v200 = v204;
    sub_1BD0DE204(v150, v204, &qword_1EBD44AB8, &qword_1BE0D2A38);
    v201 = v200 + *(v220 + 36);
    *v201 = v169;
    *(v201 + 8) = v174;
    *(v201 + 16) = v191;
    *(v201 + 24) = v193;
    *(v201 + 32) = 0;
    *(v201 + 40) = v197;
    *(v201 + 48) = v198;
    *(v201 + 56) = v199;
    v202 = v205;
    sub_1BD0DE204(v200, v205, &qword_1EBD44AA8, &qword_1BE0D2A30);
    sub_1BD0DE19C(v202, v219, &qword_1EBD44AA8, &qword_1BE0D2A30);
    swift_storeEnumTagMultiPayload();
    sub_1BD3CA07C();
    sub_1BD3CA160();
    v187 = v222;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v202, &qword_1EBD44AA8, &qword_1BE0D2A30);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

double sub_1BD3C3CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for SavingsBeneficiaryView(0);
  sub_1BD0DE19C(a1, v4, &qword_1EBD416C0, &unk_1BE0BC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516B4();
  return result;
}

void sub_1BD3C3DAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for SavingsBeneficiaryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B48, &unk_1BE0D2C18);
  sub_1BE0516A4();
  if ((v3 & 1) == 0)
  {
    if (v2)
    {
      sub_1BE0516B4();
      sub_1BD3C3E60();
    }
  }
}

void sub_1BD3C3E60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v134 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v134 - v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(&v143);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v30 = v143;
  LODWORD(v15) = [v143 supportsAddBeneficiaries];

  if (!v15)
  {
    return;
  }

  v139 = v3;
  v31 = v8;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(&v143);
  v32, v34, v35, v36, v37, v38, v39, v40;
  v33, v41, v42, v43, v44, v45, v46, v47;
  v48 = v143;
  if (v143)
  {
    v49 = v144;
    sub_1BE048C84();
    sub_1BD0D468C(v48, v49);
    if (v49)
    {
      v57 = v49[2];
      v49, v50, v51, v52, v53, v54, v55, v56;
      if (v57 >= 6)
      {
        v105 = *(v31 + 104);
        v138 = *MEMORY[0x1E69B80E0];
        v137 = v105;
        v105(v13);
        v106 = PKPassKitBundle();
        if (v106)
        {
          v107 = v106;
          sub_1BE04B6F4();
          v109 = v108;

          v110 = *(v31 + 8);
          v136 = v31 + 8;
          v110(v13, v7);
          v135 = sub_1BE052404();
          v109, v111, v112, v113, v114, v115, v116, v117;
          v137(v10, v138, v7);
          v118 = PKPassKitBundle();
          v119 = v139;
          if (v118)
          {
            v120 = v118;
            sub_1BE04B6F4();
            v122 = v121;

            v110(v10, v7);
            v123 = sub_1BE052404();
            v122, v124, v125, v126, v127, v128, v129, v130;
            v131 = v135;
            v132 = PKDisplayableErrorCustom();

            v133 = v132;
            FeatureError.init(feature:error:)(5, v132, v6);
            type metadata accessor for SavingsBeneficiaryView(0);
            sub_1BD0DE19C(v6, v119, &qword_1EBD416C0, &unk_1BE0BC2A0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
            sub_1BE0516B4();

            sub_1BD0DE53C(v6, &qword_1EBD416C0, &unk_1BE0BC2A0);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_18;
      }
    }
  }

  v58 = sub_1BD3C58E0();
  if (v58 != 3)
  {
    if (v58 == 2)
    {
      v59 = swift_getKeyPath();
      v60 = swift_getKeyPath();
      sub_1BE04D8B4(&v143);
      v59, v61, v62, v63, v64, v65, v66, v67;
      v60, v68, v69, v70, v71, v72, v73, v74;
      v75 = v143;
      v76 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithBeneficiaryTopicForAccount_];

      v77 = swift_getKeyPath();
      v78 = swift_getKeyPath();
      sub_1BE04D8B4(&v143);
      v77, v79, v80, v81, v82, v83, v84, v85;
      v78, v86, v87, v88, v89, v90, v91, v92;
      v93 = v143;
      v94 = [objc_allocWithZone(PKBusinessChatAccountContext) initWithAccount:v143 topic:v76];

      v95 = [objc_allocWithZone(PKBusinessChatController) init];
      [v95 openBusinessChatWithContext:v94 completion:0];
    }

    else
    {
      v102 = v0 + *(type metadata accessor for SavingsBeneficiaryView(0) + 36);
      v103 = *v102;
      v104 = *(v102 + 1);
      LOBYTE(v143) = v103;
      v144 = v104;
      LOBYTE(v141) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516B4();
    }

    return;
  }

  if (!*v0)
  {
LABEL_18:
    type metadata accessor for ObservableHostingController();
    sub_1BD3C1EBC(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
    sub_1BE04EEB4();
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v97 = Strong;
    v98 = (v0 + *(type metadata accessor for SavingsBeneficiaryView(0) + 40));
    v100 = *v98;
    v99 = v98[1];
    v141 = v100;
    v142 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
    sub_1BE0516A4();
    v101 = v140;
    sub_1BDA6FCC4(v97);
  }
}

uint64_t sub_1BD3C44E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = (a1 + *(type metadata accessor for SavingsBeneficiaryView(0) + 40));
  v10 = *v8;
  v9 = v8[1];
  v22[0] = v10;
  v22[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
  sub_1BE0516A4();
  v11 = v22[3];
  KeyPath = swift_getKeyPath();
  v22[0] = v11;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  sub_1BD0DE19C(v11 + v20, v7, &qword_1EBD416C0, &unk_1BE0BC2A0);

  sub_1BD0DE19C(v7, v4, &qword_1EBD416C0, &unk_1BE0BC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

void sub_1BD3C46D4(uint64_t a1)
{
  v2 = sub_1BE04ED94();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v124 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8, &qword_1BE0FF9D0);
  MEMORY[0x1EEE9AC00](v123);
  v122 = (&v119 - v4);
  v134 = type metadata accessor for FeatureError(0);
  v139 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v129 = (&v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400, &qword_1BE0D2B80);
  MEMORY[0x1EEE9AC00](v6);
  v128 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v119 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v119 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = (&v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v119 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v121 = (&v119 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v132 = (&v119 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v119 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v119 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v133 = &v119 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v119 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v119 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v119 - v37;
  v125 = type metadata accessor for SavingsBeneficiaryView(0);
  v39 = *(v125 + 32);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  v137 = v39;
  sub_1BE0516A4();
  v135 = a1;
  v40 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = v40;
  sub_1BE04D8B4(v35);
  KeyPath, v44, v45, v46, v47, v48, v49, v50;
  v42, v51, v52, v53, v54, v55, v56, v57;
  v138 = v6;
  v58 = *(v6 + 48);
  sub_1BD0DE204(v38, v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v59 = v35;
  v60 = v134;
  sub_1BD0DE204(v59, &v13[v58], &qword_1EBD416C0, &unk_1BE0BC2A0);
  v61 = *(v139 + 48);
  if (v61(v13, 1, v60) == 1)
  {
    v62 = v61(&v13[v58], 1, v60);
    v63 = v135;
    v64 = v43;
    if (v62 == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
LABEL_11:
      v89 = v122;
      sub_1BD3C1CD4(v122);
      MEMORY[0x1BFB3E970](v123);
      sub_1BE04ED84();
      sub_1BE0518F4();
      sub_1BD0DE53C(v89, &qword_1EBD449E8, &qword_1BE0FF9D0);
      v90 = v133;
      (*(v139 + 56))(v133, 1, 1, v60);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD0DE19C(v90, v130, &qword_1EBD416C0, &unk_1BE0BC2A0);
      sub_1BE048964();
LABEL_20:
      sub_1BE04D8C4();
      sub_1BD0DE53C(v90, &qword_1EBD416C0, &unk_1BE0BC2A0);
      return;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v13, v32, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v61(&v13[v58], 1, v60) == 1)
  {
    sub_1BD230994(v32);
    v63 = v135;
    v64 = v43;
LABEL_6:
    sub_1BD0DE53C(v13, &unk_1EBD5D400, &qword_1BE0D2B80);
    goto LABEL_8;
  }

  v65 = v129;
  sub_1BD3CAC58(&v13[v58], v129, type metadata accessor for FeatureError);
  v66 = *v32;
  v67 = *v65;
  sub_1BD230994(v65);

  sub_1BD230994(v32);
  sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v68 = v66 == v67;
  v63 = v135;
  v64 = v43;
  if (v68)
  {
    goto LABEL_11;
  }

LABEL_8:
  v69 = v64;
  v70 = v131;
  sub_1BE0516A4();
  v71 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v73 = v132;
  v135 = v69;
  sub_1BE04D8B4(v132);
  v71, v74, v75, v76, v77, v78, v79, v80;
  v72, v81, v82, v83, v84, v85, v86, v87;
  v88 = *(v138 + 48);
  sub_1BD0DE204(v70, v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BD0DE204(v73, &v10[v88], &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v61(v10, 1, v60) == 1)
  {
    if (v61(&v10[v88], 1, v60) == 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
LABEL_19:
      v90 = v133;
      (*(v139 + 56))(v133, 1, 1, v60);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD0DE19C(v90, v130, &qword_1EBD416C0, &unk_1BE0BC2A0);
      sub_1BE048964();
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v91 = v121;
  sub_1BD0DE19C(v10, v121, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v61(&v10[v88], 1, v60) == 1)
  {
    sub_1BD230994(v91);
LABEL_14:
    sub_1BD0DE53C(v10, &unk_1EBD5D400, &qword_1BE0D2B80);
    goto LABEL_16;
  }

  v92 = &v10[v88];
  v93 = v129;
  sub_1BD3CAC58(v92, v129, type metadata accessor for FeatureError);
  v94 = *v91;
  v95 = *v93;
  sub_1BD230994(v93);

  sub_1BD230994(v91);
  sub_1BD0DE53C(v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v94 == v95)
  {
    goto LABEL_19;
  }

LABEL_16:
  v96 = v126;
  sub_1BE0516A4();
  v97 = (v63 + *(v125 + 40));
  v98 = *v97;
  v136 = v97[1];
  v137 = v98;
  v143 = v98;
  v144 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
  sub_1BE0516A4();
  v99 = v141;
  v100 = swift_getKeyPath();
  v143 = v99;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
  sub_1BE04B594();
  v100, v101, v102, v103, v104, v105, v106, v107;
  v108 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  v109 = v127;
  sub_1BD0DE19C(v99 + v108, v127, &qword_1EBD416C0, &unk_1BE0BC2A0);

  v110 = *(v138 + 48);
  v111 = v128;
  sub_1BD0DE204(v96, v128, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BD0DE204(v109, v111 + v110, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v61(v111, 1, v60) != 1)
  {
    v112 = v120;
    sub_1BD0DE19C(v111, v120, &qword_1EBD416C0, &unk_1BE0BC2A0);
    if (v61((v111 + v110), 1, v60) != 1)
    {
      v113 = v129;
      sub_1BD3CAC58(v111 + v110, v129, type metadata accessor for FeatureError);
      v114 = *v112;
      v115 = v112;
      v116 = *v113;
      sub_1BD230994(v113);

      sub_1BD230994(v115);
      sub_1BD0DE53C(v111, &qword_1EBD416C0, &unk_1BE0BC2A0);
      if (v114 != v116)
      {
        return;
      }

      goto LABEL_25;
    }

    sub_1BD230994(v112);
LABEL_23:
    sub_1BD0DE53C(v111, &unk_1EBD5D400, &qword_1BE0D2B80);
    return;
  }

  if (v61((v111 + v110), 1, v60) != 1)
  {
    goto LABEL_23;
  }

  sub_1BD0DE53C(v111, &qword_1EBD416C0, &unk_1BE0BC2A0);
LABEL_25:
  v141 = v137;
  v142 = v136;
  sub_1BE0516A4();
  v117 = v140;
  v118 = v133;
  (*(v139 + 56))(v133, 1, 1, v60);
  sub_1BDA6F7F4(v118);
}

double sub_1BD3C52B8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v18);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  if (!v18[0])
  {
    return sub_1BD2FAF00();
  }

  sub_1BD0D468C(v18[0], v18[1]);
  return result;
}

uint64_t sub_1BD3C5344@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04E214();
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B40, &qword_1BE0D2B30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B18, &qword_1BE0D2A88);
  v70 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  if (sub_1BD3C58E0() == 3)
  {
    v66 = v3;
    v67 = a2;
    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();
    sub_1BE04D8B4(v71);
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    v16, v24, v25, v26, v27, v28, v29, v30;
    if (LOBYTE(v71[0]) == 1)
    {
      sub_1BE04E4F4();
      (*(v9 + 16))(v7, v11, v8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BD3C1EBC(&qword_1EBD44B30, MEMORY[0x1E697BDD8], MEMORY[0x1E697BDD0]);
      sub_1BE04F9A4();
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v34 = swift_getKeyPath();
      v35 = swift_getKeyPath();
      sub_1BE04D8B4(v71);
      v34, v36, v37, v38, v39, v40, v41, v42;
      v35, v43, v44, v45, v46, v47, v48, v49;
      v50 = v71[0];
      if (!v71[0] || (v51 = v71[1], sub_1BE048C84(), sub_1BD0D468C(v50, v51), !v51) || (v59 = v51[2], v51, v52, v53, v54, v55, v56, v57, v58, !v59))
      {
        v31 = 1;
        goto LABEL_13;
      }

      v60 = v68;
      sub_1BE04E204();
      v61 = v69;
      v62 = v66;
      (*(v69 + 16))(v7, v60, v66);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BD3C1EBC(&qword_1EBD44B30, MEMORY[0x1E697BDD8], MEMORY[0x1E697BDD0]);
      sub_1BE04F9A4();
      (*(v61 + 8))(v60, v62);
    }

    v31 = 0;
LABEL_13:
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B28, &unk_1BE0D2A90);
    (*(*(v63 - 8) + 56))(v14, v31, 1, v63);
    v64 = v67;
    sub_1BD0DE204(v14, v67, &qword_1EBD44B18, &qword_1BE0D2A88);
    return (*(v70 + 56))(v64, 0, 1, v12);
  }

  v32 = *(v70 + 56);

  return v32(a2, 1, 1, v12);
}

uint64_t sub_1BD3C58E0()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  v16 = v19;
  v17 = [v19 supportedContactMethodForAddingBeneficiaries];

  if (v17 == 2)
  {
    if ([objc_opt_self() deviceSupportsBusinessChat])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v17;
}

uint64_t sub_1BD3C59A0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BD3C5AE0(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B70, &qword_1BE0D2C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B80, &qword_1BE0D2C88);
  sub_1BD0DE4F4(&qword_1EBD44B68, &qword_1EBD44B70, &qword_1BE0D2C80, MEMORY[0x1E6981F48]);
  sub_1BD3CAAC4(&qword_1EBD44B78, &qword_1EBD44B80, &qword_1BE0D2C88, sub_1BD3CADBC);
  return sub_1BE051A54();
}

void sub_1BD3C5AE0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SavingsBeneficiaryView(0);
  v233 = *(v3 - 8);
  v4 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v234 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v236 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v232 = &v223 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v235 = &v223 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v223 - v13;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&aBlock);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = aBlock;
  LODWORD(v16) = [aBlock supportsAddBeneficiaries];

  if (!v16)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0uLL;
    v72 = 16711680;
    v73 = 0uLL;
LABEL_30:
    *a1 = v71;
    *(a1 + 16) = v73;
    *(a1 + 32) = v68;
    *(a1 + 40) = v69;
    *(a1 + 48) = v70;
    *(a1 + 56) = v72;
    *(a1 + 58) = BYTE2(v72);
    return;
  }

  v231 = a1;
  v32 = *(v6 + 104);
  v225 = *MEMORY[0x1E69B80E0];
  v226 = v32;
  v227 = v6 + 104;
  v32(v14);
  v33 = PKPassKitBundle();
  if (!v33)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = v33;
  v35 = sub_1BE04B6F4();
  v37 = v36;

  v223 = *(v6 + 8);
  v224 = v5;
  v223(v14, v5);
  *&aBlock = v35;
  *(&aBlock + 1) = v37;
  sub_1BD0DDEBC();
  *&v229 = sub_1BE0506C4();
  *(&v229 + 1) = v38;
  v228 = v39;
  v230 = v40;
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  sub_1BE04D8B4(&aBlock);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v42, v50, v51, v52, v53, v54, v55, v56;
  v57 = aBlock;
  if (aBlock && (v58 = *(&aBlock + 1), sub_1BE048C84(), sub_1BD0D468C(v57, v58), v58))
  {
    v66 = v58[2];
    v58, v59, v60, v61, v62, v63, v64, v65;
    v67 = v66 == 0;
  }

  else
  {
    v67 = 1;
  }

  v74 = sub_1BD3C58E0();
  if (v74 < 2)
  {
    v109 = v228;
    v111 = v229;
    v110 = v230;
    v250 = v229;
    *&v251 = v228 & 1;
    *(&v251 + 1) = v230;
    v252[0] = 1;
    sub_1BD0D7F18(v229, *(&v229 + 1), v228 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();
    LOBYTE(v238) = v256[0];
    LOBYTE(v240[0]) = 1;
    v256[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0, &qword_1BE0D2CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
    sub_1BD3CAED4();
    sub_1BD170E70();
    sub_1BE04F9A4();
    v250 = v247;
    v251 = v248;
    *v252 = v249[0];
    *&v252[10] = *(v249 + 10);
    LOBYTE(v243) = 0;
    v253 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0, &qword_1BE0D2C98);
    sub_1BD3CAE48();
    sub_1BE04F9A4();
    sub_1BD0DDF10(v111, *(&v111 + 1), (v109 & 1), v112, v113, v114, v115, v116);
    v110, v117, v118, v119, v120, v121, v122, v123;
    v71 = aBlock;
    v73 = v255;
LABEL_29:
    v68 = *v256;
    v69 = *&v256[8];
    v70 = *&v256[16];
    v72 = *&v256[24] | (v257 << 16);
    a1 = v231;
    goto LABEL_30;
  }

  if (v74 != 3)
  {
    if (v74 != 2)
    {
      LOBYTE(v247) = v228 & 1;
      LOBYTE(v243) = 1;
      v250 = v229;
      LOBYTE(v251) = v228 & 1;
      *(&v251 + 1) = v230;
      v253 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0, &qword_1BE0D2C98);
      sub_1BD3CAE48();
      sub_1BE04F9A4();
      goto LABEL_28;
    }

    if (v67)
    {
      v75 = v235;
      v76 = v224;
      v226(v235, v225, v224);
      v77 = PKPassKitBundle();
      if (v77)
      {
        v78 = v77;
        v79 = sub_1BE04B6F4();
        v81 = v80;

        v223(v75, v76);
        *&aBlock = v79;
        *(&aBlock + 1) = v81;
        v82 = sub_1BE0506C4();
        v84 = v83;
        v86 = v85;
        v88 = (v87 & 1);
        v241 = v87 & 1;
        v237 = 1;
        *&aBlock = v82;
        *(&aBlock + 1) = v83;
        LOBYTE(v255) = v87 & 1;
        *(&v255 + 1) = v240[0];
        DWORD1(v255) = *(v240 + 3);
        *v256 = v238;
        *(&v255 + 1) = v85;
        *&v256[16] = v239;
        v256[24] = 1;
        sub_1BD0D7F18(v82, v83, v87 & 1);
        sub_1BE048C84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618, &qword_1BE0DB120);
        sub_1BD3CAAC4(&qword_1EBD39628, &qword_1EBD39618, &qword_1BE0DB120, sub_1BD10E4BC);
        sub_1BE04F9A4();
        aBlock = v243;
        v255 = v244;
        *v256 = v245[0];
        *&v256[9] = *(v245 + 9);
        v242 = 0;
        v256[25] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0, &qword_1BE0D2CA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
        sub_1BD3CAED4();
        sub_1BD170E70();
        sub_1BE04F9A4();
        v250 = v247;
        v251 = v248;
        *v252 = v249[0];
        *&v252[10] = *(v249 + 10);
        v246 = 0;
        v253 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0, &qword_1BE0D2C98);
        sub_1BD3CAE48();
        sub_1BE04F9A4();
        sub_1BD0DDF10(v229, *(&v229 + 1), (v228 & 1), v89, v90, v91, v92, v93);
        v230, v94, v95, v96, v97, v98, v99, v100;
        v106 = v82;
        v107 = v84;
        v108 = v88;
LABEL_18:
        sub_1BD0DDF10(v106, v107, v108, v101, v102, v103, v104, v105);
        v86, v149, v150, v151, v152, v153, v154, v155;
LABEL_28:
        v71 = aBlock;
        v73 = v255;
        goto LABEL_29;
      }

      goto LABEL_32;
    }

LABEL_19:
    v156 = swift_getKeyPath();
    v157 = swift_getKeyPath();
    sub_1BE04D8B4(&aBlock);
    v156, v158, v159, v160, v161, v162, v163, v164;
    v157, v165, v166, v167, v168, v169, v170, v171;
    v172 = aBlock;
    if (aBlock)
    {
      v173 = [aBlock contactNumber];

      if (v173)
      {
        v236 = sub_1BE052434();
        v175 = v174;
        v176 = v234;
        sub_1BD3CB7F4(v1, v234, type metadata accessor for SavingsBeneficiaryView);
        v177 = (*(v233 + 80) + 16) & ~*(v233 + 80);
        v178 = swift_allocObject();
        sub_1BD3CAC58(v176, v178 + v177, type metadata accessor for SavingsBeneficiaryView);
        v179 = objc_allocWithZone(PKTextRangeHyperlink);
        *v256 = sub_1BD3CB3E0;
        *&v256[8] = v178;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v255 = sub_1BD126964;
        *(&v255 + 1) = &block_descriptor_80;
        v180 = _Block_copy(&aBlock);
        *&v256[8], v181, v182, v183, v184, v185, v186, v187;
        v188 = [v179 initWithLinkText:v173 action:v180];
        _Block_release(v180);

        if (v188)
        {
          v196 = v232;
          v197 = v224;
          v226(v232, v225, v224);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v198 = swift_allocObject();
          *(v198 + 16) = xmmword_1BE0B69E0;
          *(v198 + 56) = MEMORY[0x1E69E6158];
          *(v198 + 64) = sub_1BD110550();
          *(v198 + 32) = v236;
          *(v198 + 40) = v175;
          v199 = sub_1BE04B714();
          v201 = v200;
          v198, v200, v202, v203, v204, v205, v206, v207;
          v223(v196, v197);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v172 = swift_allocObject();
          *(v172 + 16) = xmmword_1BE0B7020;
          *(v172 + 32) = v188;
          sub_1BE048C84();
          sub_1BE048C84();
          v208 = 4;
LABEL_27:
          v246 = 0;
          *&aBlock = v172;
          *(&aBlock + 1) = v208;
          *&v255 = 0;
          *(&v255 + 1) = v199;
          memset(&v256[8], 0, 17);
          *v256 = v201;
          sub_1BD3CB320(v172, v208, 0, v199, v201, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618, &qword_1BE0DB120);
          sub_1BD3CAAC4(&qword_1EBD39628, &qword_1EBD39618, &qword_1BE0DB120, sub_1BD10E4BC);
          sub_1BE04F9A4();
          aBlock = v243;
          v255 = v244;
          *v256 = v245[0];
          *&v256[9] = *(v245 + 9);
          LOBYTE(v240[0]) = 0;
          v256[25] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0, &qword_1BE0D2CA0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
          sub_1BD3CAED4();
          sub_1BD170E70();
          sub_1BE04F9A4();
          v250 = v247;
          v251 = v248;
          *v252 = v249[0];
          *&v252[10] = *(v249 + 10);
          LOBYTE(v238) = 0;
          v253 = 0;
          sub_1BD0DE19C(&v247, &aBlock, &qword_1EBD44C38, &qword_1BE0D2DF0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0, &qword_1BE0D2C98);
          sub_1BD3CAE48();
          sub_1BE04F9A4();
          sub_1BD3CB384(v172, v208, 0, v199, v201, 0, 0, v209);
          sub_1BD0DE53C(&v247, &qword_1EBD44BA0, &qword_1BE0D2C98);
          sub_1BD0DDF10(v229, *(&v229 + 1), (v228 & 1), v210, v211, v212, v213, v214);
          v230, v215, v216, v217, v218, v219, v220, v221;
          sub_1BD3CB384(v172, v208, 0, v199, v201, 0, 0, v222);
          goto LABEL_28;
        }

        v175, v189, v190, v191, v192, v193, v194, v195;
      }

      v172 = 0;
    }

    v208 = 0;
    v199 = 0;
    v201 = 0;
    goto LABEL_27;
  }

  if (!v67)
  {
    goto LABEL_19;
  }

  v124 = v236;
  v125 = v224;
  v226(v236, v225, v224);
  v126 = PKPassKitBundle();
  if (v126)
  {
    v127 = v126;
    v128 = sub_1BE04B6F4();
    v130 = v129;

    v223(v124, v125);
    *&aBlock = v128;
    *(&aBlock + 1) = v130;
    v131 = sub_1BE0506C4();
    v133 = v132;
    v86 = v134;
    *&v250 = v131;
    *(&v250 + 1) = v132;
    v136 = (v135 & 1);
    *&v251 = v136;
    *(&v251 + 1) = v134;
    v252[0] = 0;
    sub_1BD0D7F18(v131, v132, v135 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();
    LOBYTE(v240[0]) = v256[0];
    v246 = 1;
    *&v256[1] = v243;
    *&v256[17] = v244;
    v256[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0, &qword_1BE0D2CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
    sub_1BD3CAED4();
    sub_1BD170E70();
    sub_1BE04F9A4();
    v250 = v247;
    v251 = v248;
    *v252 = v249[0];
    *&v252[10] = *(v249 + 10);
    LOBYTE(v238) = 0;
    v253 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0, &qword_1BE0D2C98);
    sub_1BD3CAE48();
    sub_1BE04F9A4();
    sub_1BD0DDF10(v229, *(&v229 + 1), (v228 & 1), v137, v138, v139, v140, v141);
    v230, v142, v143, v144, v145, v146, v147, v148;
    v106 = v131;
    v107 = v133;
    v108 = v136;
    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1BD3C69B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  LODWORD(v81) = a2;
  v88 = a4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B330, &unk_1BE0D2D50);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B338, &qword_1BE0BC4B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v72 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB8, &qword_1BE0D2D60);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v72 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BC0, &qword_1BE0D2D68);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - v13;
  v84 = type metadata accessor for SavingsBeneficiaryView(0);
  v89 = *(v84 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BC8, &qword_1BE0D2D70);
  v75 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BD0, &qword_1BE0D2D78);
  MEMORY[0x1EEE9AC00](v77);
  v19 = &v72 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BD8, &qword_1BE0D2D80);
  v20 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v76 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BE0, &unk_1BE0D2D88);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v82 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v72 - v25;
  v90 = a1;
  if (a1 && (v81 & 1) != 0)
  {
    v28 = v91;
    if (sub_1BD3C58E0() == 3)
    {
      v93 = v90;
      sub_1BD3CB7F4(v28, &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBeneficiaryView);
      v29 = (*(v89 + 80) + 16) & ~*(v89 + 80);
      v81 = swift_allocObject();
      sub_1BD3CAC58(&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v81 + v29, type metadata accessor for SavingsBeneficiaryView);
      sub_1BE048C84();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BF0, &unk_1BE0D2DD0);
      v73 = type metadata accessor for BeneficiaryCell(0);
      sub_1BD0DE4F4(&qword_1EBD44BF8, &qword_1EBD44BF0, &unk_1BE0D2DD0, MEMORY[0x1E69E6338]);
      sub_1BD3C1EBC(&qword_1EBD44C00, type metadata accessor for BeneficiaryCell, &unk_1BE0D2E10);
      sub_1BD3CB024();
      sub_1BE0519D4();
      sub_1BD3CB078();
      sub_1BE050DE4();
      (*(v75 + 8))(v17, v15);
      v30 = &v19[*(v77 + 36)];
      *v30 = PKEdgeInsetsMake;
      v30[1] = 0;
      sub_1BD0DE19C(v19, v79, &qword_1EBD44BD0, &qword_1BE0D2D78);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CB12C();
      sub_1BD3CB1E4();
      v31 = v76;
      sub_1BE04F9A4();
      v32 = v19;
      v33 = &qword_1EBD44BD0;
      v34 = &qword_1BE0D2D78;
    }

    else
    {
      v93 = v90;
      sub_1BD3CB7F4(v28, &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBeneficiaryView);
      v35 = (*(v89 + 80) + 16) & ~*(v89 + 80);
      v81 = swift_allocObject();
      sub_1BD3CAC58(&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v81 + v35, type metadata accessor for SavingsBeneficiaryView);
      sub_1BE048C84();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BF0, &unk_1BE0D2DD0);
      v73 = type metadata accessor for BeneficiaryCell(0);
      sub_1BD0DE4F4(&qword_1EBD44BF8, &qword_1EBD44BF0, &unk_1BE0D2DD0, MEMORY[0x1E69E6338]);
      sub_1BD3C1EBC(&qword_1EBD44C00, type metadata accessor for BeneficiaryCell, &unk_1BE0D2E10);
      sub_1BD3CB024();
      sub_1BE0519D4();
      sub_1BD3CB078();
      sub_1BE050DE4();
      (*(v75 + 8))(v17, v15);
      sub_1BD0DE19C(v12, v79, &qword_1EBD44BB8, &qword_1BE0D2D60);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CB12C();
      sub_1BD3CB1E4();
      v31 = v76;
      sub_1BE04F9A4();
      v32 = v12;
      v33 = &qword_1EBD44BB8;
      v34 = &qword_1BE0D2D60;
    }

    sub_1BD0DE53C(v32, v33, v34);
    sub_1BD0DE204(v31, v27, &qword_1EBD44BD8, &qword_1BE0D2D80);
    (*(v20 + 56))(v27, 0, 1, v83, v36);
  }

  else
  {
    (*(v20 + 56))(&v72 - v25, 1, 1, v83, v26);
  }

  v37 = v91;
  sub_1BD3CB7F4(v91, &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBeneficiaryView);
  v38 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v39 = swift_allocObject();
  v40 = sub_1BD3CAC58(&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for SavingsBeneficiaryView);
  MEMORY[0x1EEE9AC00](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B358, &unk_1BE0BC4D0);
  sub_1BD0DE4F4(&qword_1EBD3B360, &qword_1EBD3B358, &unk_1BE0BC4D0, MEMORY[0x1E69817F8]);
  sub_1BE051704();
  v41 = (v37 + *(v84 + 40));
  v43 = *v41;
  v42 = v41[1];
  v93 = v43;
  v94 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
  sub_1BE0516A4();
  v44 = v92;
  KeyPath = swift_getKeyPath();
  v93 = v44;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
  sub_1BE04B594();
  KeyPath, v46, v47, v48, v49, v50, v51, v52;
  v53 = v44[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading];

  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v56 = &v6[*(v85 + 36)];
  *v56 = v54;
  v56[1] = sub_1BD185ABC;
  v56[2] = v55;
  sub_1BE052434();
  v58 = v57;
  sub_1BD1840F8();
  v59 = v86;
  sub_1BE050DE4();
  v58, v60, v61, v62, v63, v64, v65, v66;
  sub_1BD0DE53C(v6, &qword_1EBD3B330, &unk_1BE0D2D50);
  v67 = v82;
  sub_1BD0DE19C(v27, v82, &qword_1EBD44BE0, &unk_1BE0D2D88);
  v68 = v87;
  sub_1BD0DE19C(v59, v87, &qword_1EBD3B338, &qword_1BE0BC4B0);
  v69 = v88;
  sub_1BD0DE19C(v67, v88, &qword_1EBD44BE0, &unk_1BE0D2D88);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BE8, &qword_1BE0D2DC8);
  sub_1BD0DE19C(v68, v69 + *(v70 + 48), &qword_1EBD3B338, &qword_1BE0BC4B0);
  sub_1BD0DE53C(v59, &qword_1EBD3B338, &qword_1BE0BC4B0);
  sub_1BD0DE53C(v27, &qword_1EBD44BE0, &unk_1BE0D2D88);
  sub_1BD0DE53C(v68, &qword_1EBD3B338, &qword_1BE0BC4B0);
  return sub_1BD0DE53C(v67, &qword_1EBD44BE0, &unk_1BE0D2D88);
}

void sub_1BD3C75CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1BE04F504();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B380, &qword_1BE0BC4E0);
  sub_1BD3C7634(a1, a2, a3 + *(v6 + 44));
}

void sub_1BD3C7634(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0, &unk_1BE0D2030);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v15 = "_ADD_BENEFICIARY_BUTTON";
  }

  else
  {
    v15 = "on.CurrentBeneficiaries";
  }

  (*(v11 + 104))(v14, *MEMORY[0x1E69B80E0], v10, v12);
  v16 = PKPassKitBundle();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE04B6F4();
    v20 = v19;
    (v15 | 0x8000000000000000), v19, v21, v22, v23, v24, v25, v26;

    (*(v11 + 8))(v14, v10);
    v64 = v18;
    v65 = v20;
    sub_1BD0DDEBC();
    v27 = sub_1BE0506C4();
    v29 = v28;
    LOBYTE(v17) = v30;
    v32 = v31;
    sub_1BE04E4F4();
    v33 = (v61 + *(type metadata accessor for SavingsBeneficiaryView(0) + 40));
    v35 = *v33;
    v34 = v33[1];
    v64 = v35;
    v65 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0, &qword_1BE0BC2F0);
    sub_1BE0516A4();
    v36 = v63;
    KeyPath = swift_getKeyPath();
    v64 = v36;
    sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel, &unk_1BE112088);
    sub_1BE04B594();
    KeyPath, v38, v39, v40, v41, v42, v43, v44;
    v45 = v36[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading];

    v9[*(v62 + 36)] = (v45 & 1) == 0;
    sub_1BD0DE19C(v9, v6, &qword_1EBD3B2E0, &unk_1BE0D2030);
    *a3 = v27;
    *(a3 + 8) = v29;
    v46 = (v17 & 1);
    *(a3 + 16) = v46;
    *(a3 + 24) = v32;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B388, &qword_1BE0BC4E8);
    sub_1BD0DE19C(v6, a3 + *(v47 + 64), &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0D7F18(v27, v29, v46);
    sub_1BE048C84();
    sub_1BD0DE53C(v9, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DE53C(v6, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DDF10(v27, v29, v46, v48, v49, v50, v51, v52);
    v32, v53, v54, v55, v56, v57, v58, v59;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3C79E0@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C30, &unk_1BE0D2DE0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  v11 = a1[1];
  v21 = *a1;
  v22 = v11;
  v12 = a1[3];
  v23 = a1[2];
  v24 = v12;
  sub_1BD2FD934(&v21, v20);
  v13 = sub_1BD3C58E0();
  type metadata accessor for SavingsBeneficiaryView(0);
  v14 = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v14;
  v15 = v22;
  *a3 = v21;
  *(a3 + 16) = v15;
  *(a3 + 64) = v13;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD3C1EBC(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  sub_1BE048964();
  sub_1BE048964();
  *(a3 + 72) = sub_1BE04E954();
  *(a3 + 80) = v16;
  type metadata accessor for AccountUserInfoModel(0);
  sub_1BD3C1EBC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
  *(a3 + 88) = sub_1BE04E954();
  *(a3 + 96) = v17;
  type metadata accessor for BeneficiaryCell(0);
  v18 = sub_1BE04FCC4();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_1BD0DE19C(v10, v7, &qword_1EBD44C30, &unk_1BE0D2DE0);
  sub_1BE051694();
  return sub_1BD0DE53C(v10, &qword_1EBD44C30, &unk_1BE0D2DE0);
}

double sub_1BD3C7C3C(uint64_t a1)
{
  type metadata accessor for SavingsBeneficiaryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void (*sub_1BD3C7CB0(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C30, &unk_1BE0D2DE0) - 8) + 64);
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40, &qword_1BE0D2DF8);
  a1[2] = v6;
  v7 = *(*(v6 - 1) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  a1[3] = v8;
  v10 = type metadata accessor for BeneficiaryCell(0);
  sub_1BD0DE19C(v1 + *(v10 + 32), v9, &qword_1EBD44C40, &qword_1BE0D2DF8);
  sub_1BE0516A4();
  return sub_1BD3C7DF0;
}

void sub_1BD3C7DF0(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_1BD0DE19C(*(a1 + 8), v3, &qword_1EBD44C30, &unk_1BE0D2DE0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v2, &qword_1EBD44C40, &qword_1BE0D2DF8);
    v5 = v4;
    v6 = &qword_1EBD44C30;
    v7 = &unk_1BE0D2DE0;
  }

  else
  {
    sub_1BE0516B4();
    v6 = &qword_1EBD44C40;
    v7 = &qword_1BE0D2DF8;
    v5 = v2;
  }

  sub_1BD0DE53C(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

void sub_1BD3C7ECC(uint64_t *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = *MEMORY[0x1E69B80E0];
  v13 = *(v3 + 104);
  v13(&v43 - v10, v12, v2, v9);
  v14 = PKPassKitBundle();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_1BE04B6F4();
  v46 = v17;
  v47 = v16;

  v18 = *(v3 + 8);
  v18(v11, v2);
  v19 = v13;
  (v13)(v7, v12, v2);
  v20 = PKPassKitBundle();
  if (!v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21 = v20;
  v22 = sub_1BE04B6F4();
  v44 = v23;
  v45 = v22;

  v18(v7, v2);
  v24 = sub_1BE052404();
  v25 = PKDeviceSpecificLocalizedStringKeyForKey(v24, 0);

  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BE052434();
  v27 = v26;

  v28 = v48;
  v19(v48, v12, v2);
  v29 = PKPassKitBundle();
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = sub_1BE04B6F4();
    v34 = v33;
    v27, v33, v35, v36, v37, v38, v39, v40;

    v18(v31, v2);
    v41 = v46;
    *a1 = v47;
    a1[1] = v41;
    v42 = v44;
    a1[2] = v45;
    a1[3] = v42;
    a1[4] = v32;
    a1[5] = v34;
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1BD3C81B4@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v145 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB0, &unk_1BE0D2EA0);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v133 = (v130 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB8, &qword_1BE10B9C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v142 = v130 - v7;
  v8 = sub_1BE04F4A4();
  v135 = *(v8 - 8);
  v136 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CC0, &unk_1BE0D2EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v130 - v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v134);
  v132 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v131 = v130 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v130 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CC8, &qword_1BE0D2EC0);
  v139 = *(v20 - 8);
  v140 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v138 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v130 - v24;
  v137 = a1;
  result = [*a1 pk_displayName];
  if (result)
  {
    v27 = result;
    v28 = sub_1BE052434();
    v30 = v29;

    v147 = v28;
    v148 = v30;
    v130[1] = sub_1BD0DDEBC();
    v31 = sub_1BE0506C4();
    v33 = v32;
    v35 = v34;
    v147 = v31;
    v148 = v32;
    v37 = (v36 & 1);
    v149 = v36 & 1;
    v150 = v34;
    sub_1BE052434();
    v39 = v38;
    sub_1BE050DE4();
    v39, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD0DDF10(v31, v33, v37, v47, v48, v49, v50, v51);
    v35, v52, v53, v54, v55, v56, v57, v58;
    type metadata accessor for BeneficiaryCell(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40, &qword_1BE0D2DF8);
    v59 = v137;
    sub_1BE0516C4();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CD0, &qword_1BE0D2EC8);
    v61 = 1;
    v62 = (*(*(v60 - 8) + 56))(v13, 0, 1, v60);
    MEMORY[0x1EEE9AC00](v62);
    sub_1BE04F494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CD8, &unk_1BE0D2ED0);
    sub_1BD1103C8();
    sub_1BD3CB744();
    sub_1BE0509E4();
    (*(v135 + 8))(v10, v136);
    sub_1BD0DE53C(v13, &qword_1EBD44CC0, &unk_1BE0D2EB0);
    sub_1BD0DE53C(v19, &qword_1EBD452C0, &qword_1BE0B7620);
    v63 = v59[2];
    v146 = v25;
    if (v63)
    {
      v147 = v59[1];
      v148 = v63;
      sub_1BE048C84();
      v64 = sub_1BE0506C4();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = sub_1BE051234();
      v72 = sub_1BE050564();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v71, v73, v75, v77, v79, v80, v81, v82;
      sub_1BD0DDF10(v64, v66, (v68 & 1), v83, v84, v85, v86, v87);
      v70, v88, v89, v90, v91, v92, v93, v94;
      v147 = v72;
      v148 = v74;
      v149 = v76 & 1;
      v150 = v78;
      sub_1BE052434();
      v96 = v95;
      v97 = v131;
      sub_1BE050DE4();
      v96, v98, v99, v100, v101, v102, v103, v104;
      sub_1BD0DDF10(v72, v74, (v76 & 1), v105, v106, v107, v108, v109);
      v78, v110, v111, v112, v113, v114, v115, v116;
      v117 = v132;
      sub_1BD0DE19C(v97, v132, &qword_1EBD452C0, &qword_1BE0B7620);
      v118 = v133;
      *v133 = 0;
      *(v118 + 8) = 1;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CF0, &qword_1BE10B9D0);
      sub_1BD0DE19C(v117, v118 + *(v119 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v97, &qword_1EBD452C0, &qword_1BE0B7620);
      v120 = v146;
      sub_1BD0DE53C(v117, &qword_1EBD452C0, &qword_1BE0B7620);
      v121 = v142;
      sub_1BD0DE204(v118, v142, &qword_1EBD44CB0, &unk_1BE0D2EA0);
      v61 = 0;
    }

    else
    {
      v120 = v25;
      v121 = v142;
    }

    (*(v141 + 56))(v121, v61, 1, v143);
    v123 = v138;
    v122 = v139;
    v124 = *(v139 + 16);
    v125 = v140;
    v124(v138, v120, v140);
    v126 = v144;
    sub_1BD0DE19C(v121, v144, &qword_1EBD44CB8, &qword_1BE10B9C0);
    v127 = v145;
    v124(v145, v123, v125);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CE8, &qword_1BE0D2EE0);
    sub_1BD0DE19C(v126, &v127[*(v128 + 48)], &qword_1EBD44CB8, &qword_1BE10B9C0);
    sub_1BD0DE53C(v121, &qword_1EBD44CB8, &qword_1BE10B9C0);
    v129 = *(v122 + 8);
    v129(v146, v125);
    sub_1BD0DE53C(v126, &qword_1EBD44CB8, &qword_1BE10B9C0);
    return (v129)(v123, v125);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3C89E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BeneficiaryCell(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v44 = a1;
  if (*(a1 + 64) == 3)
  {
    v40 = a2;
    v41 = v16;
    (*(v12 + 104))(v14, *MEMORY[0x1E69B80E0], v11, v17.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      v38 = sub_1BE04B6F4();
      v39 = v22;
      v23 = v22;

      (*(v12 + 8))(v14, v11);
      sub_1BE04E194();
      v24 = sub_1BE04E1D4();
      (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
      sub_1BD3CB7F4(v44, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryCell);
      v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v26 = swift_allocObject();
      sub_1BD3CAC58(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for BeneficiaryCell);
      v45[0] = v38;
      v45[1] = v23;
      v27 = sub_1BD0DE19C(v10, v43, &qword_1EBD396F8, &qword_1BE0B8910);
      MEMORY[0x1EEE9AC00](v27);
      *(&v37 - 4) = v45;
      *(&v37 - 3) = 0x6873617274;
      *(&v37 - 2) = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
      sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
      sub_1BE0516F4();
      sub_1BD0DE53C(v10, &qword_1EBD396F8, &qword_1BE0B8910);
      v39, v28, v29, v30, v31, v32, v33, v34;
      v35 = v40;
      (*(v41 + 32))(v40, v19, v15);
      return (*(v41 + 56))(v35, 0, 1, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = *(v16 + 56);

    return v36(a2, 1, 1, v15, v17);
  }

  return result;
}