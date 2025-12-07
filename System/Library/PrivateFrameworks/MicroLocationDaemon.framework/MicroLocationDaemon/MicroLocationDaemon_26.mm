uint64_t _s19MicroLocationDaemon12ULEncryptionC11encryptData_8keyLabel10Foundation0F0VSgAH_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0 || MEMORY[0x277CC5420] == 0 || MEMORY[0x277CC5428] == 0 || MEMORY[0x277CC5430] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v10 = sub_259212520();
    __swift_project_value_buffer(v10, qword_27F99B948);
    v11 = sub_259212500();
    v12 = sub_2592129D0();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "encryptData: CryptoKit Framework not loaded. method aborted.";
    goto LABEL_25;
  }

  v20 = sub_2592125D0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v40 - v25;
  type metadata accessor for ULKeychain();
  static ULKeychain.retrieveSymmetricKey(_:)(a3, a4, v45);
  if (!v45[3])
  {
    sub_2591DC520(v45, &qword_27F99B968, &unk_259225BA0);
    (*(v21 + 56))(v26, 1, 1, v20);
    goto LABEL_31;
  }

  v27 = swift_dynamicCast();
  (*(v21 + 56))(v26, v27 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v26, 1, v20) == 1)
  {
LABEL_31:
    sub_2591DC520(v26, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v38 = sub_259212520();
    __swift_project_value_buffer(v38, qword_27F99B948);
    v11 = sub_259212500();
    v12 = sub_2592129F0();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Failed to retrieve symmetric key for data encryption";
LABEL_25:
    _os_log_impl(&dword_258FE9000, v11, v12, v14, v13, 2u);
    MEMORY[0x259CA2F70](v13, -1, -1);
LABEL_26:

    return 0;
  }

  v44 = &v40;
  (*(v21 + 32))(v23, v26, v20);
  v28 = sub_259212630();
  v43 = &v40;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212620();
  v41 = sub_259212660();
  v42 = &v40;
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a1;
  v45[1] = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B978, &qword_259225BB0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v40 - v36;
  (*(v29 + 16))(&v40 - v36, v31, v28, v35);
  (*(v29 + 56))(v37, 0, 1, v28);
  sub_2591E561C();
  sub_259212610();
  sub_2591DC520(v37, &qword_27F99B978, &qword_259225BB0);
  v39 = sub_259212640();
  (*(v40 + 8))(v33, v41);
  (*(v29 + 8))(v31, v28);
  (*(v21 + 8))(v23, v20);
  return v39;
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11decryptData_8keyLabel10Foundation0F0VSgAH_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0 || MEMORY[0x277CC5420] == 0 || MEMORY[0x277CC5428] == 0 || MEMORY[0x277CC5430] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v10 = sub_259212520();
    __swift_project_value_buffer(v10, qword_27F99B948);
    v11 = sub_259212500();
    v12 = sub_2592129D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258FE9000, v11, v12, "decryptData: CryptoKit Framework not loaded. method aborted.", v13, 2u);
      MEMORY[0x259CA2F70](v13, -1, -1);
    }

    return 0;
  }

  else
  {
    v19 = sub_259212660();
    v42 = &v38;
    v38 = *(v19 - 8);
    v39 = v19;
    v20 = *(v38 + 64);
    MEMORY[0x28223BE20](v19);
    v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = sub_2592125D0();
    v41 = &v38;
    v23 = *(v22 - 8);
    MEMORY[0x28223BE20](v22);
    v40 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
    MEMORY[0x28223BE20](v25 - 8);
    v27 = &v38 - v26;
    type metadata accessor for ULKeychain();
    static ULKeychain.retrieveSymmetricKey(_:)(a3, a4, v43);
    if (v44)
    {
      v28 = swift_dynamicCast();
      (*(v23 + 56))(v27, v28 ^ 1u, 1, v22);
      if ((*(v23 + 48))(v27, 1, v22) != 1)
      {
        v29 = v40;
        v30 = (*(v23 + 32))(v40, v27, v22);
        MEMORY[0x28223BE20](v30);
        sub_2591E55C8(a1, a2);
        sub_2591E1FB0(a1, a2);
        v36 = v38;
        v35 = v39;
        (*(v38 + 32))(v21, &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
        v37 = sub_259212600();
        (*(v23 + 8))(v29, v22);
        (*(v36 + 8))(v21, v35);
        return v37;
      }
    }

    else
    {
      sub_2591DC520(v43, &qword_27F99B968, &unk_259225BA0);
      (*(v23 + 56))(v27, 1, 1, v22);
    }

    sub_2591DC520(v27, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v31 = sub_259212520();
    __swift_project_value_buffer(v31, qword_27F99B948);
    v32 = sub_259212500();
    v33 = sub_2592129F0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_258FE9000, v32, v33, "Failed to retrieve symmetric key for data decryption", v34, 2u);
      MEMORY[0x259CA2F70](v34, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_2591E55B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2591DD3CC(result, a2);
  }

  return result;
}

uint64_t sub_2591E55C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2591E561C()
{
  result = qword_27F99B980;
  if (!qword_27F99B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B980);
  }

  return result;
}

uint64_t sub_2591E5670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2591E56B8()
{
  result = qword_281455648;
  if (!qword_281455648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F99B988, &qword_259225BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281455648);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void static ULKeychain.retrieveSymmetricKey(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v14 = sub_259212520();
    __swift_project_value_buffer(v14, qword_27F99B990);
    v15 = sub_259212500();
    v16 = sub_2592129D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_258FE9000, v15, v16, "retrieveSymmetricKey: CryptoKit Framework not loaded. method aborted.", v17, 2u);
      MEMORY[0x259CA2F70](v17, -1, -1);
    }

    goto LABEL_18;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  static ULKeychain.retrieveSymmetricKeyWithStatus(label:status:)(a1, a2, &v20, &v19[-v10]);
  v12 = sub_2592125D0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2591E72E4(v11);
LABEL_18:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  *(a3 + 24) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(v13 + 32))(boxed_opaque_existential_1, v11, v12);
}

uint64_t sub_2591E5998()
{
  v0 = sub_259212520();
  __swift_allocate_value_buffer(v0, qword_27F99B990);
  __swift_project_value_buffer(v0, qword_27F99B990);
  return sub_259212510();
}

void static ULKeychain.getSymmetricKeyOrCreateNew(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v21 = sub_259212520();
    __swift_project_value_buffer(v21, qword_27F99B990);
    v22 = sub_259212500();
    v23 = sub_2592129D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_258FE9000, v22, v23, "getSymmetricKeyOrCreateNew: CryptoKit Framework not loaded. method aborted.", v24, 2u);
      MEMORY[0x259CA2F70](v24, -1, -1);
    }

    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  v59 = a3;
  v63 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v58 = &v51;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v51 - v11;
  v56 = a1;
  v57 = a2;
  v13 = static ULKeychain.retrieveSymmetricKeyWithStatus(label:status:)(a1, a2, &v63, &v51 - v11);
  MEMORY[0x28223BE20](v13);
  sub_2591E90F4(&v51 - v11, &v51 - v11, &qword_27F99B960, &qword_259225BE0);
  v14 = sub_2592125D0();
  v15 = *(v14 - 8);
  v16 = v15 + 48;
  v60 = *(v15 + 48);
  v17 = v60(&v51 - v11, 1, v14);
  v18 = sub_2591E72E4(&v51 - v11);
  if (v17 == 1 && v63 == -25300)
  {
    MEMORY[0x28223BE20](v18);
    v25 = sub_2592125F0();
    MEMORY[0x28223BE20](v25 - 8);
    sub_2592125E0();
    sub_2592125C0();
    sub_2591E72E4(&v51 - v11);
    v55 = v15;
    (*(v15 + 56))(&v51 - v11, 0, 1, v14);
    v26 = sub_2591E734C(&v51 - v11, &v51 - v11);
    MEMORY[0x28223BE20](v26);
    sub_2591E90F4(&v51 - v11, &v51 - v11, &qword_27F99B960, &qword_259225BE0);
    v27 = v60;
    v28 = v60(&v51 - v11, 1, v14);
    v29 = sub_2591E72E4(&v51 - v11);
    if (v28 == 1)
    {
LABEL_24:
      if (qword_27F99B7B0 != -1)
      {
        swift_once();
      }

      v30 = sub_259212520();
      __swift_project_value_buffer(v30, qword_27F99B990);
      v31 = sub_259212500();
      v32 = sub_2592129F0();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v59;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_258FE9000, v31, v32, "Failed to generate a symmetric key", v35, 2u);
        MEMORY[0x259CA2F70](v35, -1, -1);
      }

      sub_2591E72E4(v12);
      *v34 = 0u;
      v34[1] = 0u;
      return;
    }

    v52 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v29);
    v54 = v10;
    sub_2591E90F4(v12, &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F99B960, &qword_259225BE0);
    v53 = v16;
    if (v27(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v14) != 1)
    {
      sub_2591E73BC();
      sub_259211FE0();
      v39 = v61;
      v38 = v62;
      v40 = *(v55 + 8);
      v40(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v41 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v41 != 2)
        {
          sub_2591DD3CC(v39, v38);
          goto LABEL_24;
        }

        v44 = &v51 - v11;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        v42 = sub_2591DD3CC(v39, v38);
        v47 = v45 - v46;
        if (!__OFSUB__(v45, v46))
        {
          v12 = v44;
          if (!v47)
          {
            goto LABEL_24;
          }

LABEL_41:
          MEMORY[0x28223BE20](v42);
          v49 = &v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2591E90F4(v12, v49, &qword_27F99B960, &qword_259225BE0);
          if (v27(v49, 1, v14) != 1)
          {
            v50 = _s19MicroLocationDaemon10ULKeychainC17storeSymmetricKey09symmetricG05labelSb9CryptoKit0fG0V_SStFZ_0(v49, v56, v57);
            v18 = (v40)(v49, v14);
            v15 = v55;
            v11 = v52;
            if (!v50)
            {
              sub_2591E72E4(v12);
              goto LABEL_17;
            }

            goto LABEL_15;
          }

LABEL_48:
          __break(1u);
          return;
        }

        __break(1u);
      }

      else
      {
        if (!v41)
        {
          v42 = sub_2591DD3CC(v39, v38);
          v43 = BYTE6(v38);
          goto LABEL_40;
        }

        v42 = sub_2591DD3CC(v39, v38);
        LODWORD(v43) = HIDWORD(v39) - v39;
        if (!__OFSUB__(HIDWORD(v39), v39))
        {
          v43 = v43;
LABEL_40:
          if (!v43)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_15:
  MEMORY[0x28223BE20](v18);
  sub_2591E90F4(v12, &v51 - v11, &qword_27F99B960, &qword_259225BE0);
  if (v60(&v51 - v11, 1, v14) == 1)
  {
    sub_2591E72E4(v12);
    sub_2591E72E4(&v51 - v11);
LABEL_17:
    v20 = v59;
    *v59 = 0u;
    v20[1] = 0u;
    return;
  }

  v36 = v59;
  *(v59 + 3) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(v15 + 32))(boxed_opaque_existential_1, &v51 - v11, v14);
  sub_2591E72E4(v12);
}

uint64_t static ULKeychain.retrieveSymmetricKeyWithStatus(label:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, OSStatus *a3@<X2>, char *a4@<X8>)
{
  v63 = a3;
  v60[1] = a2;
  v61 = a1;
  v60[0] = a4;
  v66[35] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9B8, &qword_259225BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259225BC0;
  v6 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v62 = inited + 32;
  v7 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 40) = v7;
  v8 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v9;
  *(inited + 72) = v8;
  v10 = MEMORY[0x277D839B0];
  v11 = MEMORY[0x277CDBED8];
  *(inited + 80) = 1;
  v12 = *v11;
  *(inited + 104) = v10;
  *(inited + 112) = v12;
  v13 = *MEMORY[0x277CDBF10];
  *(inited + 120) = *MEMORY[0x277CDBF10];
  v14 = *MEMORY[0x277CDC140];
  *(inited + 144) = v9;
  *(inited + 152) = v14;
  *(inited + 160) = 1;
  v15 = *MEMORY[0x277CDBF28];
  *(inited + 184) = v10;
  *(inited + 192) = v15;
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277CDC558];
  *(inited + 200) = v61;
  *(inited + 208) = a2;
  v18 = *v17;
  *(inited + 224) = v16;
  *(inited + 232) = v18;
  *(inited + 264) = v10;
  *(inited + 240) = 1;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;

  v26 = v18;
  sub_2591E84C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C0, &unk_259225BF0);
  swift_arrayDestroy();
  v66[0] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v60 - v29;
  v31 = sub_2592125D0();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 1, 1, v31);
  sub_2591E89B4();
  sub_2591E8FEC(&qword_281455610, sub_2591E89B4, MEMORY[0x277D85378]);
  v33 = sub_259212800();

  v34 = SecItemCopyMatching(v33, v66);

  v35 = v66[0];
  *v63 = v34;
  if (v34 == -25300)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v38 = sub_259212520();
    __swift_project_value_buffer(v38, qword_27F99B990);
    v39 = sub_259212500();
    v40 = sub_2592129F0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_258FE9000, v39, v40, "key not found in keychain", v41, 2u);
      MEMORY[0x259CA2F70](v41, -1, -1);
    }

    goto LABEL_24;
  }

  if (v34)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v42 = sub_259212520();
    __swift_project_value_buffer(v42, qword_27F99B990);
    v43 = sub_259212500();
    v44 = sub_2592129F0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65[0] = v46;
      *v45 = 67109378;
      *(v45 + 4) = v34;
      *(v45 + 8) = 2080;
      v47 = SecCopyErrorMessageString(v34, 0);
      if (v47)
      {
        v48 = v47;
        v49 = sub_259212840();
        v51 = v50;

        v52 = v49;
      }

      else
      {
        LODWORD(v64) = v34;
        v52 = sub_259212BE0();
        v51 = v57;
      }

      v58 = sub_2591E0FD4(v52, v51, v65);

      *(v45 + 10) = v58;
      _os_log_impl(&dword_258FE9000, v43, v44, "Failed to retrieve key from keychain, error %d, %s", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x259CA2F70](v46, -1, -1);
      MEMORY[0x259CA2F70](v45, -1, -1);
    }

    goto LABEL_24;
  }

  if (v35)
  {
    v64 = v35;
    swift_unknownObjectRetain();
    v36 = swift_dynamicCast();
    if (v36)
    {
      *&v37 = MEMORY[0x28223BE20](v36);
      *v65 = v37;
      sub_2592125B0();
      sub_2591E72E4(v30);
      v32(v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v31);
      sub_2591E734C(v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
LABEL_24:
      sub_2591E734C(v30, v60[0]);
      return swift_unknownObjectRelease();
    }
  }

  if (qword_27F99B7B0 != -1)
  {
    swift_once();
  }

  v53 = sub_259212520();
  __swift_project_value_buffer(v53, qword_27F99B990);
  v54 = sub_259212500();
  v55 = sub_2592129F0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_258FE9000, v54, v55, "Failed to get key from keychain. Got invalid data", v56, 2u);
    MEMORY[0x259CA2F70](v56, -1, -1);
  }

  sub_2591E72E4(v30);
  v32(v60[0], 1, 1, v31);
  return swift_unknownObjectRelease();
}

id sub_2591E6874(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t, uint64_t))
{
  v5 = sub_259212840();
  v7 = v6;
  swift_getObjCClassMetadata();
  a4(v16, v5, v7);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_259212BF0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id ULKeychain.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2591E6A9C(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, *MEMORY[0x277CBED00]);
  if (v5)
  {
    v6 = v5;
    v7 = sub_2592120F0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t static ULKeychainMock.retrieveSymmetricKey(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x79656B5F6F6ELL && a2 == 0xE600000000000000;
  if (v4 || (v6 = result, result = sub_259212C00(), (result & 1) != 0))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v7 = sub_2592125D0();
    v27 = &v27;
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = &v27 - v10;
    if (qword_27F99B7B8 != -1)
    {
      swift_once();
    }

    v12 = swift_beginAccess();
    v13 = off_27F99B9A8;
    MEMORY[0x28223BE20](v12);
    v14 = &v27 - v10;
    if (v13[2] && (v15 = sub_2591E744C(v6, a2), (v16 & 1) != 0))
    {
      (*(v8 + 16))(v14, v13[7] + *(v8 + 72) * v15, v7);
      v17 = *(v8 + 32);
      v17(v11, v14, v7);
      swift_endAccess();
      *(a3 + 24) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      return (v17)(boxed_opaque_existential_1, v11, v7);
    }

    else
    {
      v19 = swift_endAccess();
      MEMORY[0x28223BE20](v19);
      v20 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = sub_2592125F0();
      MEMORY[0x28223BE20](v21 - 8);
      sub_2592125E0();
      sub_2592125C0();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
      v23 = MEMORY[0x28223BE20](v22 - 8);
      v25 = &v27 - v24;
      (*(v8 + 16))(&v27 - v24, v20, v7, v23);
      (*(v8 + 56))(v25, 0, 1, v7);
      swift_beginAccess();

      sub_2591E6EE8(v25, v6, a2);
      swift_endAccess();
      *(a3 + 24) = v7;
      v26 = __swift_allocate_boxed_opaque_existential_1(a3);
      return (*(v8 + 32))(v26, v20, v7);
    }
  }

  return result;
}

uint64_t sub_2591E6EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2592125D0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a1, 1, v7);
  if (v9 == 1)
  {
    sub_2591E72E4(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
    MEMORY[0x28223BE20](v10 - 8);
    v12 = &v18 - v11;
    sub_2591E790C(a2, a3, &v18 - v11);

    return sub_2591E72E4(v12);
  }

  else
  {
    v14 = MEMORY[0x28223BE20](v9);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v16, a1, v7, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2591E8010(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

id sub_2591E71FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2591E724C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2591E72A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2591E72E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591E734C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2591E73BC()
{
  result = qword_27F99B9B0;
  if (!qword_27F99B9B0)
  {
    sub_2592125D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B9B0);
  }

  return result;
}

unint64_t sub_2591E7408(uint64_t a1)
{
  v2 = sub_259212A20();

  return sub_2591E75BC(a1, v2);
}

unint64_t sub_2591E744C(uint64_t a1, uint64_t a2)
{
  sub_259212C90();
  sub_259212870();
  v4 = sub_259212CD0();

  return sub_2591E7680(a1, a2, v4);
}

unint64_t sub_2591E74C4(uint64_t a1)
{
  sub_259212C90();
  type metadata accessor for CFString(0);
  sub_2591E8FEC(&qword_27F99B9D0, type metadata accessor for CFString, &unk_259225434);
  sub_2592122E0();
  v2 = sub_259212CD0();

  return sub_2591E7738(a1, v2);
}

unint64_t sub_2591E7578(uint64_t a1)
{
  v2 = sub_259212A90();

  return sub_2591E7844(a1, v2);
}

unint64_t sub_2591E75BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2591E89B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_259212A30();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2591E7680(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_259212C00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2591E7738(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2591E8FEC(&qword_27F99B9D0, type metadata accessor for CFString, &unk_259225434);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2592122D0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2591E7844(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2591E9044(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259CA1260](v9, a1);
      sub_2591E90A0(v9);
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

uint64_t sub_2591E790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2591E744C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2591E8240();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_2592125D0();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2591E7E24(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_2592125D0();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2591E7A7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9E8, &qword_259225C58);
  v41 = v4;
  result = sub_259212BC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
      v44 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = sub_2592125D0();
      v43 = &v39;
      v22 = *(v21 - 8);
      v24 = MEMORY[0x28223BE20](v21);
      v25 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v20);
      v28 = v27[1];
      v45 = *v27;
      v42 = *(v29 + 72);
      v30 = v26 + v42 * v20;
      if (v41)
      {
        (*(v22 + 32))(&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21, v24);
      }

      else
      {
        (*(v22 + 16))(&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21, v24);
      }

      sub_259212C90();
      sub_259212870();
      result = sub_259212CD0();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v45;
      v16[1] = v28;
      result = (*(v22 + 32))(*(v7 + 56) + v42 * v15, v25, v21);
      ++*(v7 + 16);
      v12 = v44;
      v5 = v40;
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
        v44 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2591E7E24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_259212A70() + 1) & ~v5;
    while (1)
    {
      sub_259212C90();

      sub_259212870();
      v9 = sub_259212CD0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_2592125D0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2591E8010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2591E744C(a2, a3);
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
      sub_2591E8240();
      goto LABEL_7;
    }

    sub_2591E7A7C(v15, a4 & 1);
    v26 = sub_2591E744C(a2, a3);
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
    result = sub_259212C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2592125D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2591E8190(v12, a2, a3, a1, v18);
}

uint64_t sub_2591E8190(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2592125D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2591E8240()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9E8, &qword_259225C58);
  v2 = *v0;
  v3 = sub_259212BB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v34 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v35 = v2;
    v36 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v35;
        v21 = 16 * v19;
        v22 = (*(v35 + 48) + 16 * v19);
        v23 = *v22;
        v37 = v22[1];
        v38 = v23;
        v24 = sub_2592125D0();
        v39 = &v34;
        v25 = *(v24 - 8);
        v26 = MEMORY[0x28223BE20](v24);
        v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *(v29 + 72) * v19;
        (*(v25 + 16))(v28, *(v20 + 56) + v30, v24, v26);
        v31 = v36;
        v32 = (*(v36 + 48) + v21);
        v33 = v37;
        *v32 = v38;
        v32[1] = v33;
        (*(v25 + 32))(*(v31 + 56) + v30, v28, v24);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v34;
        v4 = v36;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_2591E84C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F0, &qword_259225C60);
    v3 = sub_259212BD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2591E90F4(v4, &v11, &qword_27F99B9C0, &unk_259225BF0);
      v5 = v11;
      result = sub_2591E7408(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2591E9034(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL _s19MicroLocationDaemon10ULKeychainC17storeSymmetricKey09symmetricG05labelSb9CryptoKit0fG0V_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9B8, &qword_259225BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259225BC0;
  v4 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  v8 = MEMORY[0x277D839B0];
  *(inited + 80) = 1;
  v9 = *MEMORY[0x277CDBED8];
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  v10 = *MEMORY[0x277CDBF10];
  *(inited + 120) = *MEMORY[0x277CDBF10];
  v11 = *MEMORY[0x277CDC140];
  *(inited + 144) = v7;
  *(inited + 152) = v11;
  *(inited + 160) = 1;
  v12 = *MEMORY[0x277CDC5E8];
  *(inited + 184) = v8;
  *(inited + 192) = v12;
  sub_2592125D0();
  sub_2591E73BC();
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = MEMORY[0x277CC9318];
  sub_259211FE0();
  *(inited + 200) = *v41;
  v21 = *MEMORY[0x277CDBF28];
  *(inited + 224) = v20;
  *(inited + 232) = v21;
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = a2;
  *(inited + 248) = a3;
  v22 = v21;

  sub_2591E84C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C0, &unk_259225BF0);
  swift_arrayDestroy();
  sub_2591E89B4();
  sub_2591E8FEC(&qword_281455610, sub_2591E89B4, MEMORY[0x277D85378]);
  v23 = sub_259212800();

  v24 = SecItemAdd(v23, 0);

  if (v24)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v25 = sub_259212520();
    __swift_project_value_buffer(v25, qword_27F99B990);
    v26 = sub_259212500();
    v27 = sub_2592129F0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v28 = 67109378;
      *(v28 + 4) = v24;
      *(v28 + 8) = 2080;
      v30 = SecCopyErrorMessageString(v24, 0);
      if (v30)
      {
        v31 = v30;
        v32 = sub_259212840();
        v34 = v33;

        v35 = v32;
      }

      else
      {
        v35 = sub_259212BE0();
        v34 = v36;
      }

      v37 = sub_2591E0FD4(v35, v34, v41);

      *(v28 + 10) = v37;
      _os_log_impl(&dword_258FE9000, v26, v27, "Failed to store key in keychain, error %d, %s", v28, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x259CA2F70](v29, -1, -1);
      MEMORY[0x259CA2F70](v28, -1, -1);
    }
  }

  return v24 == 0;
}

unint64_t sub_2591E89B4()
{
  result = qword_281455618;
  if (!qword_281455618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281455618);
  }

  return result;
}

unint64_t sub_2591E8A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9D8, &qword_259225C48);
    v3 = sub_259212BD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2591E90F4(v4, v13, &qword_27F99B9E0, &qword_259225C50);
      result = sub_2591E7578(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2591E9034(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2591E8B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C8, &qword_259225C40);
    v3 = sub_259212BD0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2591E74C4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL _s19MicroLocationDaemon10ULKeychainC9removeKeyySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9B8, &qword_259225BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259225BD0;
  v4 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277CDBED8];
  *(inited + 80) = 1;
  v10 = *v9;
  *(inited + 104) = v8;
  *(inited + 112) = v10;
  v11 = *MEMORY[0x277CDBEE0];
  *(inited + 120) = *MEMORY[0x277CDBEE0];
  v12 = *MEMORY[0x277CDC140];
  *(inited + 144) = v7;
  *(inited + 152) = v12;
  *(inited + 160) = 1;
  v13 = *MEMORY[0x277CDBF28];
  *(inited + 184) = v8;
  *(inited + 192) = v13;
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 200) = a1;
  *(inited + 208) = a2;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;

  sub_2591E84C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C0, &unk_259225BF0);
  swift_arrayDestroy();
  sub_2591E89B4();
  sub_2591E8FEC(&qword_281455610, sub_2591E89B4, MEMORY[0x277D85378]);
  v21 = sub_259212800();

  v22 = SecItemDelete(v21);

  if (v22)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v23 = sub_259212520();
    __swift_project_value_buffer(v23, qword_27F99B990);
    v24 = sub_259212500();
    v25 = sub_2592129F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 67109378;
      *(v26 + 4) = v22;
      *(v26 + 8) = 2080;
      v28 = SecCopyErrorMessageString(v22, 0);
      if (v28)
      {
        v29 = v28;
        v30 = sub_259212840();
        v32 = v31;

        v33 = v30;
      }

      else
      {
        v33 = sub_259212BE0();
        v32 = v34;
      }

      v35 = sub_2591E0FD4(v33, v32, &v38);

      *(v26 + 10) = v35;
      _os_log_impl(&dword_258FE9000, v24, v25, "Failed to remove key from keychain, error %d, %s", v26, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x259CA2F70](v27, -1, -1);
      MEMORY[0x259CA2F70](v26, -1, -1);
    }
  }

  return v22 == 0;
}

uint64_t sub_2591E8FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_2591E9034(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2591E90F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id AudioOdometryProvider.__allocating_init(queue:)(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v3[19] = 0;
  v3[20] = 0;
  v3[21] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CC1C20]) init];
  v3[17] = sub_2591E928C();
  v3[18] = &off_286A5FC80;
  v3[14] = v4;
  v3[22] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AudioOdometryProvider.init(queue:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[19] = 0;
  v1[20] = 0;
  v1[21] = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277CC1C20]) init];
  v1[17] = sub_2591E928C();
  v1[18] = &off_286A5FC80;
  v1[14] = v3;
  v1[22] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudioOdometryProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_2591E928C()
{
  result = qword_281455620;
  if (!qword_281455620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281455620);
  }

  return result;
}

uint64_t sub_2591E9390(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  *(v4 + 48) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA00, &qword_259225C80);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88);
  *(v4 + 80) = v6;
  v7 = *(v6 - 8);
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 + 64);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591E9518, v3, 0);
}

uint64_t sub_2591E9518()
{
  v1 = v0[5];
  if (v1[20])
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);
    v3 = sub_259212500();
    v4 = sub_2592129F0();
    v5 = 3;
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v6 = "Started audio odometry twice";
LABEL_16:
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_258FE9000, v3, v4, v6, v39, 2u);
    MEMORY[0x259CA2F70](v39, -1, -1);
LABEL_17:

    sub_2591E9A78();
    swift_allocError();
    *v40 = v5;
    swift_willThrow();

    v37 = v0[1];
    goto LABEL_18;
  }

  v7 = v1[17];
  v8 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v7);
  if (((*(v8 + 16))(v7, v8) & 1) == 0)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v38 = sub_259212520();
    __swift_project_value_buffer(v38, qword_281456B60);
    v3 = sub_259212500();
    v4 = sub_2592129F0();
    v5 = 0;
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v6 = "Audio odometry unavailable";
    goto LABEL_16;
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v1[20];
  v16 = *(v13 + 168);
  v1[20] = v0[3];
  *(v13 + 168) = v12;

  sub_2591EBD18(v15, v16);
  v17 = swift_task_alloc();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA18, &qword_259225C90);
  (*(v10 + 104))(v9, *MEMORY[0x277D85778], v11);
  sub_259212960();

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v18 = sub_259212520();
  __swift_project_value_buffer(v18, qword_281456B60);
  v19 = sub_259212500();
  v20 = sub_2592129D0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[2];
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v21;
    _os_log_impl(&dword_258FE9000, v19, v20, "Started audio odometry with update interval: %f", v22, 0xCu);
    MEMORY[0x259CA2F70](v22, -1, -1);
  }

  v23 = v0[13];
  v24 = v0[14];
  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[10];
  v29 = v0[5];
  v28 = v0[6];
  v42 = v28;

  v30 = sub_259212920();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  (*(v26 + 16))(v23, v24, v27);
  v32 = sub_2591ECA4C(&qword_27F99BA20, v31, type metadata accessor for AudioOdometryProvider, &protocol conformance descriptor for AudioOdometryProvider);
  v33 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v34 = (v25 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  *(v35 + 24) = v32;
  (*(v26 + 32))(v35 + v33, v23, v27);
  *(v35 + v34) = v29;
  swift_retain_n();
  v36 = sub_2591EAC40(0, 0, v42, &unk_259225CA0, v35);
  (*(v26 + 8))(v24, v27);
  *(v29 + 152) = v36;

  v37 = v0[1];
LABEL_18:

  return v37();
}

unint64_t sub_2591E9A78()
{
  result = qword_27F99BA10;
  if (!qword_27F99BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA10);
  }

  return result;
}

uint64_t sub_2591E9ACC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-1] - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2591DC598(a2 + 112, v19);
  v11 = v20;
  v12 = v21;
  __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  (*(v12 + 32))(v11, v12, a3);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v9, v6);
  (*(v14 + 8))(v10, sub_2591ECAF8, v16, v13, v14);

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_2591E9CF4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA80, &qword_259225F10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - v8;
  if (a2)
  {
    sub_2591E9A78();
    v10 = swift_allocError();
    *v11 = 1;
    v12 = a2;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = a2;
    v15 = sub_259212500();
    v16 = sub_2592129F0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *&v82 = v9;
      *&v81 = a3;
      v18 = v7;
      v19 = v6;
      v20 = v17;
      v21 = swift_slowAlloc();
      v86[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_259212C40();
      v24 = sub_2591E0FD4(v22, v23, v86);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_258FE9000, v15, v16, "Internal error in odometry update: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x259CA2F70](v21, -1, -1);
      v25 = v20;
      v6 = v19;
      v7 = v18;
      v9 = v82;
      MEMORY[0x259CA2F70](v25, -1, -1);
    }

    else
    {
    }

LABEL_26:
    v64 = 0;
    goto LABEL_27;
  }

  sub_2591E90F4(a1, &v84, &qword_27F99BA88, &qword_259225F18);
  if (!v85)
  {
    sub_2591DC520(&v84, &qword_27F99BA88, &qword_259225F18);
    sub_2591E9A78();
    v10 = swift_allocError();
    *v73 = 1;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v74 = sub_259212520();
    __swift_project_value_buffer(v74, qword_281456B60);
    v75 = sub_259212500();
    v76 = sub_2592129F0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_258FE9000, v75, v76, "No data received in odometry update", v77, 2u);
      MEMORY[0x259CA2F70](v77, -1, -1);
    }

    goto LABEL_26;
  }

  sub_2591DC580(&v84, v86);
  v26 = v87;
  v27 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v28 = (*(v27 + 8))(v26, v27);
  if ((v28 & 0x100000000) == 0)
  {
    v29 = v28;
    v30 = v87;
    v31 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v32 = (*(v31 + 16))(v30, v31);
    if ((v32 & 0x100000000) == 0)
    {
      v33 = v32;
      v34 = v87;
      v35 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      *&v82 = (*(v35 + 24))(v34, v35);
      if ((v82 & 0x100000000) == 0)
      {
        v36 = v87;
        v37 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        v38 = (*(v37 + 56))(v36, v37);
        if ((v38 & 0x100000000) == 0)
        {
          v39 = v38;
          v40 = v87;
          v41 = v88;
          __swift_project_boxed_opaque_existential_1(v86, v87);
          *&v81 = (*(v41 + 32))(v40, v41);
          if ((v81 & 0x100000000) == 0)
          {
            v42 = v6;
            v43 = v87;
            v44 = v88;
            __swift_project_boxed_opaque_existential_1(v86, v87);
            v45 = *(v44 + 40);
            v46 = v44;
            v6 = v42;
            v80 = v45(v43, v46);
            if ((v80 & 0x100000000) == 0)
            {
              v47 = v87;
              v48 = v88;
              __swift_project_boxed_opaque_existential_1(v86, v87);
              v49 = *(v48 + 48);
              v50 = v48;
              v6 = v42;
              v51 = v49(v47, v50);
              if ((v51 & 0x100000000) == 0)
              {
                v53 = v51;
                LODWORD(v52) = v29;
                v79 = v52;
                LODWORD(v52) = v33;
                v78 = v52;
                LODWORD(v52) = v82;
                v82 = v52;
                v54 = objc_opt_self();
                v55 = v87;
                v56 = v88;
                __swift_project_boxed_opaque_existential_1(v86, v87);
                (*(v56 + 64))(v55, v56);
                v57 = [v54 dateFromMachContinuous_];
                [v57 timeIntervalSinceReferenceDate];
                v59 = v58;

                *&v60 = __PAIR64__(v78, v79);
                *(&v60 + 1) = v82;
                v82 = v60;
                *&v61 = __PAIR64__(v80, v81);
                *(&v61 + 1) = __PAIR64__(v39, v53);
                v81 = v61;
                v62 = type metadata accessor for VisualMappingOdometry();
                v63 = objc_allocWithZone(v62);
                *&v63[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_timestamp] = v59;
                *&v63[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_deltaPosition] = v82;
                *&v63[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_attitudeQuaternion] = v81;
                v83.receiver = v63;
                v83.super_class = v62;
                v64 = objc_msgSendSuper2(&v83, sel_init);
                __swift_destroy_boxed_opaque_existential_1(v86);
                v10 = 0;
LABEL_27:
                v86[0] = v64;
                v86[1] = v10;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
                sub_259212930();
                return (*(v7 + 8))(v9, v6);
              }
            }
          }
        }
      }
    }
  }

  sub_2591E9A78();
  v65 = swift_allocError();
  *v66 = 2;
  v67 = v65;
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v68 = sub_259212520();
  __swift_project_value_buffer(v68, qword_281456B60);
  v69 = sub_259212500();
  v70 = sub_2592129F0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_258FE9000, v69, v70, "Inconsistent data types in odometry input", v71, 2u);
    MEMORY[0x259CA2F70](v71, -1, -1);
  }

  *&v84 = 0;
  *(&v84 + 1) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
  sub_259212930();

  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t sub_2591EA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v7 = sub_259212550();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_259212570();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA58, &qword_259225EF8);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591EA694, a5, 0);
}

uint64_t sub_2591EA694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88);
  sub_259212940();
  v2 = sub_2591ECA4C(&qword_27F99BA20, v1, type metadata accessor for AudioOdometryProvider, &protocol conformance descriptor for AudioOdometryProvider);
  v0[22] = v2;
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_2591EA7A8;
  v5 = v0[19];

  return MEMORY[0x2822003E8](v0 + 8, v3, v2, v5);
}

uint64_t sub_2591EA7A8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_2591EA8B8, v1, 0);
}

uint64_t sub_2591EA8B8()
{
  v1 = v0[8];
  if (v1 == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
LABEL_5:
    sub_2591EB864();

    v3 = v0[1];

    return v3();
  }

  v2 = v0[9];
  if (sub_259212990())
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    goto LABEL_5;
  }

  v5 = v0[12];
  v6 = *(v5 + 160);
  if (v6)
  {
    v7 = v0[18];
    v8 = v0[15];
    v20 = v0[17];
    v21 = v0[16];
    v18 = v0[13];
    v9 = *(v5 + 168);
    v19 = v0[14];
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v9;
    v10[4] = v1;
    v10[5] = v2;
    v0[6] = sub_2591ECA04;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2591F37A8;
    v0[5] = &block_descriptor;
    v17 = _Block_copy(v0 + 2);
    sub_258FF9254(v6, v9);
    sub_258FF9254(v6, v9);
    v16 = v1;
    v11 = v2;
    sub_259212560();
    v0[10] = MEMORY[0x277D84F90];
    sub_2591ECA4C(&qword_27F99BA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA68, &qword_259225F00);
    sub_2591ECA94();
    sub_259212A60();
    MEMORY[0x259CA11D0](0, v7, v8, v17);
    _Block_release(v17);

    sub_2591EBD18(v6, v9);
    (*(v19 + 8))(v8, v18);
    (*(v20 + 8))(v7, v21);
  }

  else
  {
  }

  v12 = v0[22];
  v13 = v0[12];
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_2591EA7A8;
  v15 = v0[19];

  return MEMORY[0x2822003E8](v0 + 8, v13, v12, v15);
}

uint64_t sub_2591EAC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2591E90F4(a3, v25 - v10, &qword_27F99B9F8, &qword_2592261D0);
  v12 = sub_259212920();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2591DC520(v11, &qword_27F99B9F8, &qword_2592261D0);
  }

  else
  {
    sub_259212910();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_259212900();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_259212860() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2591EB0E4(const void *a1, const void *a2, uint64_t a3, double a4)
{
  v4[2] = a3;
  v7 = _Block_copy(a1);
  v4[3] = _Block_copy(a2);
  v8 = swift_allocObject();
  v4[4] = v8;
  *(v8 + 16) = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_2591EB1E4;

  return sub_2591E9390(sub_2591EC8F0, v8, a4);
}

uint64_t sub_2591EB1E4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_259212030();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

void sub_2591EB388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_259212030();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2591EB418()
{
  v1 = *(v0 + 16);
  if (*(v1 + 152))
  {

    sub_259212980();
  }

  v2 = *(v0 + 16);
  *(v1 + 152) = 0;

  v3 = v2[17];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v3);
  (*(v4 + 48))(v3, v4);
  sub_2591EB864();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2591EB680(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2591EB728;

  return sub_2591EB3F8();
}

uint64_t sub_2591EB728()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void sub_2591EB864()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  sub_2591EBD18(v1, v2);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  oslog = sub_259212500();
  v4 = sub_2592129D0();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, oslog, v4, "Audio odometry marked as stopped", v5, 2u);
    MEMORY[0x259CA2F70](v5, -1, -1);
  }
}

void AudioOdometryProvider.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void AudioOdometryProvider.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t AudioOdometryProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  sub_2591EBD18(*(v0 + 160), *(v0 + 168));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AudioOdometryProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  sub_2591EBD18(*(v0 + 160), *(v0 + 168));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2591EBAEC(uint64_t a1, uint64_t a2)
{
  sub_259212C90();
  sub_259212810();
  return sub_259212CD0();
}

uint64_t sub_2591EBB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2591EC8F8();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2591EBB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_259212C90();
  sub_259212810();
  return sub_259212CD0();
}

unint64_t sub_2591EBBFC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2591EC050(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2591EBC30(uint64_t a1)
{
  v2 = sub_2591EC8F8();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2591EBC6C(uint64_t a1)
{
  v2 = sub_2591EC8F8();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2591EBCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2591EC8F8();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t sub_2591EBD18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2591EBD34(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2591ECB84;

  return sub_2591EA50C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2591EBE60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2591EBF58;

  return v6(a1);
}

uint64_t sub_2591EBF58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2591EC050(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2591EC064()
{
  result = qword_27F99BA28;
  if (!qword_27F99BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA28);
  }

  return result;
}

unint64_t sub_2591EC0BC()
{
  result = qword_27F99BA30;
  if (!qword_27F99BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA30);
  }

  return result;
}

unint64_t sub_2591EC114()
{
  result = qword_27F99BA38;
  if (!qword_27F99BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA38);
  }

  return result;
}

unint64_t sub_2591EC16C()
{
  result = qword_27F99BA40;
  if (!qword_27F99BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA40);
  }

  return result;
}

unint64_t sub_2591EC1C4()
{
  result = qword_27F99BA48;
  if (!qword_27F99BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA48);
  }

  return result;
}

uint64_t dispatch thunk of AudioOdometryProvider.start(updateInterval:handler:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2591EC390;
  v10.n128_f64[0] = a3;

  return v12(a1, a2, v10);
}

uint64_t sub_2591EC390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of AudioOdometryProvider.stop()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2591EC390;

  return v5();
}

uint64_t sub_2591EC5B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2591ECB84;

  return sub_2591EB680(v2, v3);
}

uint64_t sub_2591EC660()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2591ECB84;

  return sub_2591F2DCC(v2, v3, v4);
}

uint64_t sub_2591EC720()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2591ECB84;

  return sub_2591EB0E4(v3, v4, v5, v2);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2591EC824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2591ECB84;

  return sub_2591F2EB4(a1, v4, v5, v6);
}

unint64_t sub_2591EC8F8()
{
  result = qword_27F99BA50;
  if (!qword_27F99BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA50);
  }

  return result;
}

uint64_t sub_2591EC94C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2591ECB84;

  return sub_2591EBE60(a1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591ECA4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2591ECA94()
{
  result = qword_27F99BA70;
  if (!qword_27F99BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F99BA68, &qword_259225F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA70);
  }

  return result;
}

uint64_t sub_2591ECAF8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2591E9CF4(a1, a2, v6);
}

unint64_t sub_2591ECBDC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 | ((v5 == 0) << 32);
}

uint64_t sub_2591ECC6C(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = sub_2591ECF48();
    v10 = &off_286A5FC38;
    *&v8 = a1;
    sub_2591DC580(&v8, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  v6 = a1;
  a3(v11, a2);
  return sub_2591ECEE0(v11);
}

void sub_2591ECCFC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2591ECD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_2591ECEC0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2591ECCFC;
  v10[3] = &block_descriptor_0;
  v9 = _Block_copy(v10);

  [v7 _startAudioAccessoryInertialOdometryUpdatesToQueue_withHandler_];
  _Block_release(v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591ECEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA88, &qword_259225F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2591ECF48()
{
  result = qword_27F99BA90;
  if (!qword_27F99BA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F99BA90);
  }

  return result;
}

void *sub_2591ECF94(char a1)
{
  v2 = v1;
  v2[2] = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_259212A80())
  {
    sub_2591F057C(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v2[3] = v4;
  type metadata accessor for PolarisEndpointWrapper();
  v2[4] = 0;
  v2[5] = 0;
  swift_allocObject();
  v5 = sub_2591DE164(a1 & 1);
  if (v5)
  {
    v6 = v5;
    type metadata accessor for PolarisTaskProxyContext();
    v7 = swift_allocObject();
    *(v7 + 16) = 0x100000000000100;
    *(v7 + 24) = v6;
    v2[5] = v7;

    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v8 = sub_259212520();
    __swift_project_value_buffer(v8, qword_281456B60);
    v9 = sub_259212500();
    v10 = sub_259212A00();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258FE9000, v9, v10, "[PolarisManager]: PolarisManager init successfully", v11, 2u);
      MEMORY[0x259CA2F70](v11, -1, -1);
    }
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v12 = sub_259212520();
    __swift_project_value_buffer(v12, qword_281456B60);
    v9 = sub_259212500();
    v13 = sub_2592129F0();
    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258FE9000, v9, v13, "[PolarisManager]: PolarisEndpointWrapper initialization failed", v14, 2u);
      MEMORY[0x259CA2F70](v14, -1, -1);
    }
  }

  return v2;
}

id sub_2591ED1E0(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(v1 + 32))
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);
    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 3;
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v3, v4, "polaris setup task is already running", v5, 2u);
    v6 = 3;
LABEL_11:
    MEMORY[0x259CA2F70](v5, -1, -1);
LABEL_16:

    sub_2591EEFA0();
    swift_allocError();
    *v9 = v6;
    return swift_willThrow();
  }

  if (*(v1 + 16))
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v7 = sub_259212520();
    __swift_project_value_buffer(v7, qword_281456B60);
    v3 = sub_259212500();
    v8 = sub_2592129F0();
    if (!os_log_type_enabled(v3, v8))
    {
      v6 = 0;
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v3, v8, "existing polaris execution session already in progress", v5, 2u);
    v6 = 0;
    goto LABEL_11;
  }

  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = sub_259212830();
    v13 = [v11 uniqueSessionWithName_];

    v14 = *(v1 + 16);
    *(v1 + 16) = v13;

    v25 = xmmword_259225FB0;
    v15 = *(v1 + 16);
    if (v15)
    {
      v16 = [v15 context];
      v17 = *(*(type metadata accessor for DatabaseFrame(0) - 8) + 64);
      v18 = sub_259212830();
      v19 = [objc_opt_self() dataStreamWithResourceKey:v18 options:&v25 length:v17];

      [v16 addResourceStream_];
      v20 = *(v1 + 16);
      if (v20)
      {
        [v20 publishContext];
        v21 = *(v1 + 16);
        if (v21)
        {
          v24[4] = sub_2591ED5D4;
          v24[5] = 0;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 1107296256;
          v24[2] = sub_2591ED774;
          v24[3] = &block_descriptor_1;
          v22 = _Block_copy(v24);
          v23 = v21;
          [v23 registerSessionCallback:v22 withContext:0];
          _Block_release(v22);
        }
      }
    }

    a1 = 0;
  }

  return a1;
}

void sub_2591ED5D4(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0x800000025925EE40;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v4 = sub_259212520();
  __swift_project_value_buffer(v4, qword_281456B60);

  oslog = sub_259212500();
  v5 = sub_259212A00();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 134218242;
    *(v6 + 4) = a1;
    *(v6 + 12) = 2080;
    v8 = sub_2591E0FD4(v2, v3, &v10);

    *(v6 + 14) = v8;
    _os_log_impl(&dword_258FE9000, oslog, v5, "session callback received. eventType: %llu %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259CA2F70](v7, -1, -1);
    MEMORY[0x259CA2F70](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2591ED774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_2591ED7E4(char a1)
{
  v2 = v1;
  v45[1] = *MEMORY[0x277D85DE8];

  if (a1)
  {
    v5 = 0x676E69766F6D6572;
  }

  else
  {
    v5 = 0x697474696D6D6F63;
  }

  if (a1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA0000000000676ELL;
  }

  if (a1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v9 = sub_259212520();
  __swift_project_value_buffer(v9, qword_281456B60);

  v10 = sub_259212500();
  v11 = sub_259212A00();

  v44 = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v43 = v7;
    v12 = swift_slowAlloc();
    v42 = v8;
    v13 = swift_slowAlloc();
    v45[0] = v13;
    *v12 = 136315394;
    v14 = sub_2591E0FD4(v5, v6, v45);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
    v15 = v6;
    sub_2591F086C();

    v16 = sub_2592129C0();
    v18 = v17;

    v19 = v16;
    v6 = v15;
    v20 = sub_2591E0FD4(v19, v18, v45);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_258FE9000, v10, v11, "%s graphs: %s", v12, 0x16u);
    swift_arrayDestroy();
    v21 = v13;
    v8 = v42;
    MEMORY[0x259CA2F70](v21, -1, -1);
    v22 = v12;
    v7 = v43;
    MEMORY[0x259CA2F70](v22, -1, -1);
  }

  else
  {
  }

  v23 = *(v2 + 16);
  if (!v23)
  {
  }

  if (v8)
  {
    sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
    sub_2591F086C();
    v24 = v23;
    v8 = sub_2592129B0();

    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v41 = v23;
  if (v7)
  {
LABEL_21:
    sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
    sub_2591F086C();
    v7 = sub_2592129B0();
  }

LABEL_22:
  v45[0] = 0;
  v25 = [v23 commitAddedGraphs:v8 removedGraphs:v7 option:1 error:v45];

  if (v25)
  {
    v26 = v45[0];
  }

  v28 = v45[0];
  v29 = sub_259212040();

  swift_willThrow();

  v30 = v29;
  v31 = sub_259212500();
  v32 = sub_2592129F0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v6;
    v35 = swift_slowAlloc();
    v36 = v29;
    v37 = swift_slowAlloc();
    v45[0] = v37;
    *v33 = 136315394;
    v38 = sub_2591E0FD4(v44, v34, v45);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2112;
    v39 = v36;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v40;
    *v35 = v40;
    _os_log_impl(&dword_258FE9000, v31, v32, "error %s graphs: %@", v33, 0x16u);
    sub_2591DC520(v35, &qword_27F99B8F0, &qword_259225AE0);
    MEMORY[0x259CA2F70](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x259CA2F70](v37, -1, -1);
    MEMORY[0x259CA2F70](v33, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

uint64_t sub_2591EDD10()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591EDDAC, 0, 0);
}

uint64_t sub_2591EDDAC()
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v1 = sub_259212520();
  __swift_project_value_buffer(v1, qword_281456B60);
  v2 = sub_259212500();
  v3 = sub_259212A00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, v3, "setup polaris graphs", v4, 2u);
    MEMORY[0x259CA2F70](v4, -1, -1);
  }

  v5 = v0[2];

  if (*(v5 + 16))
  {
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_259212920();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;

    *(v6 + 32) = sub_2591EE8AC(0, 0, v7, &unk_259226098, v9);

    v10 = *(v6 + 32);
    v0[4] = v10;
    if (v10)
    {

      v11 = swift_task_alloc();
      v0[5] = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
      *v11 = v0;
      v11[1] = sub_2591EE0E4;
      v13 = MEMORY[0x277D84950];
      v14 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200430](v12, v10, v14, v12, v13);
    }

    *(v0[2] + 32) = 0;
  }

  else
  {
    v15 = sub_259212500();
    v16 = sub_2592129F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_258FE9000, v15, v16, "setupGraphs: No polaris execution session in progress", v17, 2u);
      MEMORY[0x259CA2F70](v17, -1, -1);
    }

    sub_2591EEFA0();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2591EE0E4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_2591EE280;
  }

  else
  {
    v2 = sub_2591EE200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2591EE200()
{

  *(*(v0 + 16) + 32) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2591EE280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2591EE304()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v3 = v2;
    sub_2591F09F8(&unk_286A5F478);
    sub_2591F0B60(&unk_286A5F498);
    v4 = sub_2592129B0();

    [v3 waitForContextFromExecutionSessionsProvidingResources_];

    v1 = *(v0 + 16);
  }

  if (v1[4])
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      v1[4] = 0;

      sub_2591EEFA0();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
      goto LABEL_8;
    }

    v1 = *(v0 + 16);
  }

  sub_2591EE464();
  v1[3] = v7;

  sub_2591ED7E4(0);
LABEL_8:
  v8 = *(v0 + 8);

  return v8();
}

void sub_2591EE464()
{
  v0 = objc_allocWithZone(MEMORY[0x277D3E698]);
  v1 = sub_259212830();
  v27 = [v0 initWithName:v1 criticality:2 frequency:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAC0, &qword_2592260A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_259225FC0;
  v3 = sub_259212830();
  v28 = objc_opt_self();
  v4 = [v28 inputWithKey:v3 type:0];

  *(v2 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_259225FC0;
  v6 = objc_allocWithZone(MEMORY[0x277D3E6E0]);
  v7 = sub_259212830();
  v8 = [v6 initWithResourceKey_];

  *(v5 + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x277D3E6D0]);
  v10 = sub_259212830();
  sub_2591F0BB4(0, &qword_27F99BAC8, 0x277D3E6D8);
  v11 = sub_2592128B0();

  sub_2591F0BB4(0, &qword_27F99BAD0, 0x277D3E6E0);
  v12 = sub_2592128B0();

  v13 = [v9 initWithName:v10 computeAgent:0 inputs:v11 outputs:v12 function:sub_2591EEEC0 userdata:0];

  [v27 addTask_];
  v14 = objc_allocWithZone(MEMORY[0x277D3E698]);
  v15 = sub_259212830();
  v16 = [v14 initWithName:v15 criticality:2 frequency:1];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_259225FC0;
  v18 = sub_259212830();
  v19 = [v28 inputWithKey:v18 type:0];

  *(v17 + 32) = v19;
  v20 = *(v29 + 40);
  if (v20)
  {
    v21 = objc_allocWithZone(MEMORY[0x277D3E6D0]);
    v22 = sub_259212830();
    v23 = sub_2592128B0();

    v24 = sub_2592128B0();
    v25 = [v21 initWithName:v22 computeAgent:0 inputs:v23 outputs:v24 function:sub_2591EEECC userdata:v20];

    [v16 addTask_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_259225FD0;
    *(inited + 32) = v27;
    *(inited + 40) = v16;
    sub_2591F057C(inited);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2591EE8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2591F0988(a3, v22 - v9);
  v11 = sub_259212920();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2591DC520(v10, &qword_27F99B9F8, &qword_2592261D0);
  }

  else
  {
    sub_259212910();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_259212900();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_259212860() + 32;

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

      sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);

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

  sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_2591EEB48()
{
  v2 = v0;
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  v4 = sub_259212500();
  v5 = sub_259212A00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v4, v5, "teardown polaris graphs", v6, 2u);
    MEMORY[0x259CA2F70](v6, -1, -1);
  }

  if (v2[2])
  {
    v7 = v2[3];
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = sub_259212A80();

      if (v8)
      {
        goto LABEL_8;
      }
    }

    else if (*(v7 + 16))
    {
LABEL_8:
      sub_2591ED7E4(1);
      if (v1)
      {
        return;
      }

      goto LABEL_18;
    }

    v13 = sub_259212500();
    v14 = sub_2592129F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258FE9000, v13, v14, "teardownGraphs: No graphs to remove. Cancelling the active session.", v15, 2u);
      MEMORY[0x259CA2F70](v15, -1, -1);
    }

    if (v2[4])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
      sub_259212980();
    }

LABEL_18:
    v16 = sub_259212500();
    v17 = sub_259212A00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258FE9000, v16, v17, "Tearing down polaris execution session", v18, 2u);
      MEMORY[0x259CA2F70](v18, -1, -1);
    }

    if (MEMORY[0x277D84F90] >> 62 && sub_259212A80())
    {
      sub_2591F057C(MEMORY[0x277D84F90]);
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    v2[3] = v19;

    v20 = v2[2];
    v2[2] = 0;

    return;
  }

  v9 = sub_259212500();
  v10 = sub_2592129F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_258FE9000, v9, v10, "teardownGraphs: No polaris execution session in progress", v11, 2u);
    MEMORY[0x259CA2F70](v11, -1, -1);
  }

  sub_2591EEFA0();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();
}

uint64_t sub_2591EEED0()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2591EEF44()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2591EEFA0()
{
  result = qword_27F99BA98;
  if (!qword_27F99BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA98);
  }

  return result;
}

uint64_t sub_2591EF008()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591EF07C()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

char *sub_2591EF0C0(char *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = a2 + 32;
  v5 = *(a2 + 16);
  while (2)
  {
    if (v3 == v5)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 8 * v3);
      memset(v17, 0, 512);
      v7 = *(v6 + 16);

      if (v7 >= 8)
      {
        if (v7 >= 0x7F)
        {
          v9 = 127;
        }

        else
        {
          v9 = v7;
        }

        v10 = v9 + 1;
        v11 = v10 & 7;
        if ((v10 & 7) == 0)
        {
          v11 = 8;
        }

        v8 = v10 - v11;
        v12 = result + 48;
        v13 = v8;
        v14 = &v17[1];
        do
        {
          v15 = *v12;
          *(v14 - 1) = *(v12 - 1);
          *v14 = v15;
          v12 += 32;
          v14 += 2;
          v13 -= 8;
        }

        while (v13);
      }

      else
      {
        v8 = 0;
      }

      v16 = v3 + 1;
      do
      {
        if (v7 == v8)
        {
          __break(1u);
          goto LABEL_18;
        }

        *(v17 + v8) = *&result[4 * v8 + 32];
        ++v8;
      }

      while (v8 != 128);

      result = memcpy(&v2[512 * v3++], v17, 0x200uLL);
      if (v16 != 128)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_2591EF220(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = a2 + 32;
  v4 = *(a2 + 16);
  v5 = result + 8;
  while (v4 != v2)
  {
    v6 = *(*(v3 + 8 * v2) + 16);

    if (!v6 || (v6 - 1) < 4)
    {
      __break(1u);
      break;
    }

    ++v2;
    v7 = *(result + 32);
    v8 = *(result + 36);
    v9 = *(result + 48);
    v10 = *(result + 40);

    *(v5 - 8) = v7;
    *(v5 - 4) = v8;
    *v5 = v10;
    *(v5 + 8) = v9;
    v5 += 20;
    if (v2 == 128)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2591EF2CC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v57 = *MEMORY[0x277D85DE8];
  v3 = sub_2592121D0();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DatabaseFrame(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v49 - v9;
  resource = ps_resource_array_get_resource();
  v12 = ps_resource_get_class();
  if (v12 != 7)
  {
    v22 = v12;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v23 = sub_259212520();
    __swift_project_value_buffer(v23, qword_281456B60);
    v24 = sub_259212500();
    v25 = sub_259212A00();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_258FE9000, v24, v25, "imageConsumerTask: unexepected input resource class: %llu", v26, 0xCu);
      MEMORY[0x259CA2F70](v26, -1, -1);
    }

    return 1;
  }

  v49[0] = v10;
  v49[1] = v2;
  ps_resource_get_timestamp_seconds();
  v14 = v13;
  v15 = MEMORY[0x259CA2960](resource, 0);
  if (qword_281455650 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v16 = sub_259212520();
    __swift_project_value_buffer(v16, qword_281456B60);
    v17 = sub_259212500();
    v18 = sub_259212A00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = v14;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v15;
      _os_log_impl(&dword_258FE9000, v17, v18, "imageConsumerTask: timestamp: %f, frameid: %llu", v19, 0x16u);
      MEMORY[0x259CA2F70](v19, -1, -1);
    }

    MEMORY[0x259CA2980](resource, 0);
    v15 = ps_resource_pixelbuffer_get_cvpixelbuffer();
    v20 = sub_2591F3A08(5, v15);
    if (v20)
    {
      v21 = sub_2591F3DB4(v20);
      resource = v21 ? sub_2591DAEBC(v21) : 0;
      LFV2FeaturesRelease();
    }

    else
    {
      resource = 0;
    }

    if (sub_2591F3A08(6, v15))
    {
      v27 = sub_2591F3FE8();
      v28 = v27 ? sub_2591DB16C(v27) : 0;
      LFV2FeaturesRelease();
    }

    else
    {
      v28 = 0;
    }

    if (sub_2591F3A08(6, v15))
    {
      break;
    }

    v30 = 0;
    if (!resource)
    {
      goto LABEL_41;
    }

LABEL_29:
    if (!v28 || !v30)
    {
      goto LABEL_41;
    }

    v31 = v50;
    sub_2592121C0();
    (*(v51 + 16))(v7, v31, v52);
    *&v7[v5[5]] = 0;
    *&v7[v5[6]] = 0;
    memset(v56, 0, 512);
    v32 = *(resource + 16);

    v33 = 0;
    if (v32 >= 8)
    {
      v34 = 127;
      if (v32 < 0x7F)
      {
        v34 = v32;
      }

      v35 = v34 + 1;
      v36 = v35 & 7;
      if ((v35 & 7) == 0)
      {
        v36 = 8;
      }

      v33 = v35 - v36;
      v37 = (resource + 48);
      v38 = &v56[4];
      v39 = v33;
      do
      {
        v40 = *v37;
        *(v38 - 1) = *(v37 - 1);
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 8;
      }

      while (v39);
    }

    while (v32 != v33)
    {
      v56[v33] = *(resource + 32 + 4 * v33);
      if (++v33 == 128)
      {
        swift_bridgeObjectRelease_n();
        memcpy(v55, v56, sizeof(v55));
        memcpy(&v7[v5[7]], v55, 0x200uLL);
        bzero(v54, 0x10000uLL);

        sub_2591EF0C0(v54, v28);
        swift_bridgeObjectRelease_n();
        memcpy(v56, v54, 0x10000uLL);
        memcpy(&v7[v5[8]], v56, 0x10000uLL);
        bzero(v53, 0xA00uLL);

        sub_2591EF220(v53, v30);
        swift_bridgeObjectRelease_n();
        (*(v51 + 8))(v50, v52);
        memcpy(v54, v53, 0xA00uLL);
        memcpy(&v7[v5[9]], v54, 0xA00uLL);
        v41 = v49[0];
        sub_2591DBFB4(v7, v49[0]);
        v42 = ps_resource_array_get_resource();
        MEMORY[0x259CA2950](v42, 0);
        bytes = ps_resource_data_get_bytes();
        memcpy(bytes, v41, v6);
        v44 = mach_absolute_time();
        MEMORY[0x259CA29C0](v42, 0, v44);
        MEMORY[0x259CA29B0](v42, 0, 1);

        sub_2591DC298(v41);
        return 0;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  v29 = sub_2591F42E8();
  if (v29)
  {
    v30 = sub_2591DB028(v29);
  }

  else
  {
    v30 = 0;
  }

  LFV2FeaturesRelease();
  if (resource)
  {
    goto LABEL_29;
  }

LABEL_41:

  v46 = sub_259212500();
  v47 = sub_259212A00();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_258FE9000, v46, v47, "imageConsumerTask: features extraction failed", v48, 2u);
    MEMORY[0x259CA2F70](v48, -1, -1);
  }

  return 1;
}

uint64_t sub_2591EFA28(uint64_t a1, uint64_t a2)
{
  v76[1] = a1;
  v79 = sub_2592124C0();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v80 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAD8, &qword_2592260A8);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = v76 - v5;
  v100 = sub_2592124A0();
  v6 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v76 - v9;
  v11 = sub_259212430();
  v89 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = v76 - v14;
  v85 = sub_259212460();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v76[0] = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v76 - v17;
  v88 = a2;
  count = ps_resource_array_get_count();
  if (qword_281455650 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v19 = sub_259212520();
    v20 = __swift_project_value_buffer(v19, qword_281456B60);
    v21 = sub_259212500();
    v22 = sub_259212A00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = count;
      _os_log_impl(&dword_258FE9000, v21, v22, "descriptorsConsumerTask: received resources. count: %ld", v23, 0xCu);
      MEMORY[0x259CA2F70](v23, -1, -1);
    }

    sub_259212440();
    v24 = sub_259212450();
    v26 = v25;
    v27 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v27;
    if (isUniquelyReferenced_nonNull_native && count <= v27[3] >> 1)
    {
      v29 = count;
    }

    else
    {
      v30 = v27[2] <= count ? count : v27[2];
      v29 = count;
      v27 = sub_2591E0CB4(isUniquelyReferenced_nonNull_native, v30, 0, v27);
    }

    *v26 = v27;
    result = v24(v101, 0);
    if (v29 < 0)
    {
      break;
    }

    v81 = v20;
    if (!v29)
    {
LABEL_38:
      v67 = *(ps_task_context_get_userdata() + 24);

      v68 = v80;
      sub_2592124B0();
      v69 = v67[5];
      v70 = v67[6];
      __swift_project_boxed_opaque_existential_1(v67 + 2, v69);
      v71 = v76[0];
      (*(v70 + 8))(0x100000000000100, v18, v68, v69, v70);
      v72 = v84;
      v73 = v77;
      v74 = v85;
      (*(v84 + 32))(v77, v71, v85);
      (*(v72 + 56))(v73, 0, 1, v74);
      (*(v78 + 8))(v80, v79);
      (*(v72 + 8))(v18, v74);

      v75 = (*(v72 + 48))(v73, 1, v74) == 1;
      sub_2591DC520(v73, &qword_27F99BAD8, &qword_2592260A8);
      return v75;
    }

    v32 = 0;
    v94 = v6 + 32;
    v95 = (v6 + 16);
    v96 = v6 + 8;
    v83 = (v89 + 16);
    v82 = v89 + 32;
    v86 = v89 + 8;
    v87 = v18;
    v92 = v11;
    while (1)
    {
      v90 = v32;
      resource = ps_resource_array_get_resource();
      v11 = MEMORY[0x259CA2970]();
      sub_259212410();
      v33 = sub_259212420();
      v35 = v34;
      v36 = *v34;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v36;
      if (!v37 || v11 > v36[3] >> 1)
      {
        if (v36[2] <= v11)
        {
          v38 = v11;
        }

        else
        {
          v38 = v36[2];
        }

        v36 = sub_2591E0CDC(v37, v38, 0, v36);
      }

      *v35 = v36;
      v33(v101, 0);
      if (v11 < 0)
      {
        break;
      }

      if (v11)
      {
        v39 = 0;
        do
        {
          MEMORY[0x259CA2950](resource, v39);
          length = ps_resource_data_get_length();
          bytes = ps_resource_data_get_bytes();
          sub_259212480();
          sub_259212470();
          v42 = sub_259212490();
          v44 = v43;
          v18 = *v43;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *v44 = v18;
          if (v45)
          {
            if (!*(v18 + 2))
            {
              goto LABEL_39;
            }
          }

          else
          {
            v18 = sub_2591DC07C(v18);
            *v44 = v18;
            if (!*(v18 + 2))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          memcpy(v18 + 32, bytes, length);
          v42(v101, 0);
          (*v95)(v99, v10, v100);
          v46 = sub_259212420();
          v48 = v47;
          v49 = *v47;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *v48 = v49;
          if ((v50 & 1) == 0)
          {
            v49 = sub_2591E0CDC(0, v49[2] + 1, 1, v49);
            *v48 = v49;
          }

          v52 = v49[2];
          v51 = v49[3];
          if (v52 >= v51 >> 1)
          {
            v49 = sub_2591E0CDC((v51 > 1), v52 + 1, 1, v49);
            *v48 = v49;
          }

          ++v39;
          v49[2] = v52 + 1;
          v53 = v49 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v52;
          v54 = v100;
          (*(v6 + 32))(v53, v99, v100);
          v46(v101, 0);
          (*(v6 + 8))(v10, v54);
        }

        while (v11 != v39);
      }

      (*v83)(v91, v98, v92);
      v55 = v87;
      v56 = sub_259212450();
      v58 = v57;
      v59 = *v57;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *v58 = v59;
      if ((v60 & 1) == 0)
      {
        v59 = sub_2591E0CB4(0, v59[2] + 1, 1, v59);
        *v58 = v59;
      }

      v62 = v59[2];
      v61 = v59[3];
      if (v62 >= v61 >> 1)
      {
        v59 = sub_2591E0CB4((v61 > 1), v62 + 1, 1, v59);
        *v58 = v59;
      }

      v63 = v89;
      v64 = v90 + 1;
      v59[2] = v62 + 1;
      v65 = v59 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62;
      v66 = v92;
      (*(v63 + 32))(v65, v91, v92);
      v56(v101, 0);
      (*(v63 + 8))(v98, v66);
      v32 = v64;
      v18 = v55;
      if (v64 == count)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_2591F057C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_259212A80())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA8, &unk_259226070);
      v3 = sub_259212AE0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_259212A80();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x259CA12D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_259212A20();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_259212A30();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_259212A20();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_259212A30();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2591F086C()
{
  result = qword_27F99BAB8;
  if (!qword_27F99BAB8)
  {
    sub_2591F0BB4(255, &qword_27F99BAB0, 0x277D3E698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BAB8);
  }

  return result;
}

uint64_t sub_2591F08D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2591EC390;

  return sub_2591EE2E4(a1, v4, v5, v6);
}

uint64_t sub_2591F0988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591F09F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAE0, &unk_2592260B0);
    v3 = sub_259212AE0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_259212C90();

      sub_259212870();
      result = sub_259212CD0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_259212C00();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2591F0BB4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for PolarisManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PolarisManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2591F0D84()
{
  result = qword_27F99BAE8;
  if (!qword_27F99BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BAE8);
  }

  return result;
}

id ULPeripheralControl.__allocating_init(queue:delegate:darwinNotificationHelper:conclaveManager:fullWakeConclaveModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v23 = a3;
  v24 = a4;
  v9 = sub_259212580();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *v12 = a1;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = a1;
  v15 = sub_259212590();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    *&v13[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue] = v14;
    swift_unknownObjectWeakAssign();
    v17 = type metadata accessor for PolarisManager();
    swift_allocObject();
    v18 = v14;
    v19 = sub_2591ECF94(a5 & 1);
    v20 = &v13[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager];
    *(v20 + 3) = v17;
    *(v20 + 4) = &off_286A5FD08;
    *v20 = v19;
    v21 = v24;
    *&v13[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper] = v23;
    *&v13[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager] = v21;
    v25.receiver = v13;
    v25.super_class = v6;
    v22 = objc_msgSendSuper2(&v25, sel_init);

    swift_unknownObjectRelease();
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ULPeripheralControl.init(queue:delegate:darwinNotificationHelper:conclaveManager:fullWakeConclaveModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_2591F3258(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t ULPeripheralControl.setDependencies(relativePoseHandler:)(uint64_t a1)
{
  v2 = sub_259212580();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_259212590();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    return swift_unknownObjectWeakAssign();
  }

  __break(1u);
  return result;
}

uint64_t ULPeripheralControl.setupPolarisGraphs()()
{
  v1[15] = v0;
  v2 = sub_259212550();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_259212570();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591F1528, 0, 0);
}

uint64_t sub_2591F1528()
{
  v1 = (*(v0 + 120) + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2591ED1E0(0);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_2591F1648;

  return sub_2591EDD10();
}

uint64_t sub_2591F1648()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2591F17A0, 0, 0);
  }
}

uint64_t sub_2591F17A0()
{
  v1 = v0[21];
  v2 = v0[18];
  v16 = v0[19];
  v3 = v0[16];
  v14 = v0[17];
  v15 = v0[20];
  v4 = v0[15];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_2591F344C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2591F37A8;
  v0[5] = &block_descriptor_2;
  v6 = _Block_copy(v0 + 2);

  sub_259212560();
  v0[14] = MEMORY[0x277D84F90];
  sub_2591F346C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA68, &qword_259225F00);
  sub_2591ECA94();
  sub_259212A60();
  MEMORY[0x259CA11D0](0, v1, v2, v6);
  _Block_release(v6);
  (*(v14 + 8))(v2, v3);
  (*(v15 + 8))(v1, v16);

  v7 = *&v4[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper];
  v8 = sub_259212830();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v0[12] = sub_2591F34C4;
  v0[13] = v9;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2591F37A8;
  v0[11] = &block_descriptor_7;
  v10 = _Block_copy(v0 + 8);
  v11 = v4;

  [v7 addObserverForNotificationName:v8 handler:v10];
  _Block_release(v10);

  v12 = v0[1];

  return v12();
}

void sub_2591F1A80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      [v3 onPeripheralAvailable];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2591F1C74(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2591F1D1C;

  return ULPeripheralControl.setupPolarisGraphs()();
}

uint64_t sub_2591F1D1C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_259212030();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ULPeripheralControl.teardownPolarisGraphs()()
{
  v2 = v0;
  v3 = sub_259212580();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_259212590();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong onPeripheralUnavailable];
      swift_unknownObjectRelease();
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager), *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager + 24));
    sub_2591EEB48();
    if (!v1)
    {
      v11 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper);
      v12 = sub_259212830();
      [v11 removeObserverForNotificationName_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2591F20D0()
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v0 = sub_259212520();
  __swift_project_value_buffer(v0, qword_281456B60);
  oslog = sub_259212500();
  v1 = sub_259212A00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_2591E0FD4(0xD000000000000023, 0x800000025925E7E0, &v5);
    _os_log_impl(&dword_258FE9000, oslog, v1, "got notification: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x259CA2F70](v3, -1, -1);
    MEMORY[0x259CA2F70](v2, -1, -1);
  }
}

uint64_t sub_2591F2218(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ULPeripheralControl.loadKeyFrames(for:)()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_259212590();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ULPeripheralControl.unloadKeyFrames()()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_259212590();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }
}

uint64_t ULPeripheralControl.update(databaseUpdateRequest:)()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_259212590();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

id ULPeripheralControl.getPoseEstimation()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager) getPoseEstimation];

  return v1;
}

void sub_2591F2BE0(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager);
  sub_2592121D0();
  v5 = sub_2592128B0();
  [v4 *a2];
}

id ULPeripheralControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULPeripheralControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2591F2DCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2591ECB84;

  return v6();
}

uint64_t sub_2591F2EB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2591EC390;

  return v7();
}

uint64_t sub_2591F2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2591F0988(a3, v23 - v10);
  v12 = sub_259212920();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2591F35C8(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_259212910();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_259212900();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_259212860() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2591F35C8(a3);

    return v21;
  }

LABEL_8:
  sub_2591F35C8(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_2591F3258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v22 = a3;
  v23 = a4;
  ObjectType = swift_getObjectType();
  v10 = sub_259212580();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *v13 = a1;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = a1;
  v15 = sub_259212590();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    *&v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue] = v14;
    swift_unknownObjectWeakAssign();
    v17 = type metadata accessor for PolarisManager();
    swift_allocObject();
    v18 = v14;
    v19 = sub_2591ECF94(a5 & 1);
    v20 = &v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager];
    *(v20 + 3) = v17;
    *(v20 + 4) = &off_286A5FD08;
    *v20 = v19;
    v21 = v23;
    *&v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper] = v22;
    *&v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager] = v21;
    v24.receiver = v6;
    v24.super_class = ObjectType;
    return objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2591F346C()
{
  result = qword_27F99BA60;
  if (!qword_27F99BA60)
  {
    sub_259212550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA60);
  }

  return result;
}

uint64_t sub_2591F351C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2591EC390;

  return sub_2591F1C74(v2, v3);
}

uint64_t sub_2591F35C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591F3630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2591ECB84;

  return sub_2591EBE60(a1, v4);
}

uint64_t sub_2591F36E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2591EC390;

  return sub_2591EBE60(a1, v4);
}

void *sub_2591F37B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_2591F383C(int a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD00000000000001FLL;
      }

      if (a1 == 3)
      {
        return 0xD000000000000013;
      }

      return 0xD000000000000024;
    }

    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0x206E776F6E6B6E55;
    }

    return 16718;
  }

  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return 0xD00000000000002DLL;
      case 9:
        return 0xD000000000000010;
      case 10:
        v2 = 10;
        return v2 | 0xD000000000000010;
    }

    return 16718;
  }

  if (a1 != 5)
  {
    if (a1 != 6)
    {
      return 0xD00000000000002BLL;
    }

    v2 = 36;
    return v2 | 0xD000000000000010;
  }

  return 0xD000000000000023;
}

uint64_t sub_2591F3A08(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v29[2] = *MEMORY[0x277D85DE8];
  if ((LFV2HandleSupported() & 1) == 0)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = sub_259212500();
    v15 = sub_2592129F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v2;
      _os_log_impl(&dword_258FE9000, v14, v15, "[LearnedFeaturesUtilities]: computeFeatures is called while feature %u is not available", v16, 8u);
      MEMORY[0x259CA2F70](v16, -1, -1);
    }

    return 0;
  }

  v29[1] = 0;
  v3 = LFV2HandleCreate();
  if (v3)
  {
    v4 = v3;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v5 = sub_259212520();
    __swift_project_value_buffer(v5, qword_281456B60);
    v6 = sub_259212500();
    v7 = sub_2592129F0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v8 = 136315138;
      v10 = sub_2591F383C(v4);
      v12 = sub_2591E0FD4(v10, v11, v29);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_258FE9000, v6, v7, "[LearnedFeaturesUtilities]: LFV2HandleCreate failed with error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x259CA2F70](v9, -1, -1);
      MEMORY[0x259CA2F70](v8, -1, -1);
    }

    return 0;
  }

  v29[0] = 0;
  v18 = LFV2DetectAndComputeFeatures();
  if (v18)
  {
    v19 = v18;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v20 = sub_259212520();
    __swift_project_value_buffer(v20, qword_281456B60);
    v21 = sub_259212500();
    v22 = sub_2592129F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      v25 = sub_2591F383C(v19);
      v27 = sub_2591E0FD4(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_258FE9000, v21, v22, "[LearnedFeaturesUtilities]: LFV2DetectAndComputeFeatures failed with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x259CA2F70](v24, -1, -1);
      MEMORY[0x259CA2F70](v23, -1, -1);
    }

    LFV2FeaturesRelease();
    LFV2HandleRelease();
    return 0;
  }

  LFV2HandleRelease();
  return v29[0];
}

void *sub_2591F3DB4(uint64_t a1)
{
  LFV2FeaturesGetGlobalDescriptors();
  Type = LFV2DescriptorsGetType();
  Size = LFV2DescriptorsGetSize();
  Dimension = LFV2DescriptorsGetDimension();
  v4 = Dimension;
  if (Type == 2 && Size == 1 && Dimension == 128)
  {
    Data = LFV2DescriptorsGetData();
    if (Data)
    {
      v6 = Data;
      v7 = sub_2591F37B8(128, 0);
      memcpy(v7 + 4, v6, 0x200uLL);
      return v7;
    }

    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = sub_259212500();
    v15 = sub_2592129F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_258FE9000, v14, v15, "[LearnedFeaturesUtilities]: Failed to get global descriptor data", v16, 2u);
      MEMORY[0x259CA2F70](v16, -1, -1);
    }
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v9 = sub_259212520();
    __swift_project_value_buffer(v9, qword_281456B60);
    v10 = sub_259212500();
    v11 = sub_2592129F0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109632;
      *(v12 + 4) = Type;
      *(v12 + 8) = 2048;
      *(v12 + 10) = Size;
      *(v12 + 18) = 2048;
      *(v12 + 20) = v4;
      _os_log_impl(&dword_258FE9000, v10, v11, "[LearnedFeaturesUtilities]: Invalid global descriptor format: dataType: %u, size: %ld, dimensions: %ld", v12, 0x1Cu);
      MEMORY[0x259CA2F70](v12, -1, -1);
    }
  }

  return 0;
}

void *sub_2591F3FE8()
{
  LFV2FeaturesGetLocalDescriptors();
  Type = LFV2DescriptorsGetType();
  Size = LFV2DescriptorsGetSize();
  Dimension = LFV2DescriptorsGetDimension();
  v3 = Dimension;
  if (Type != 2 || Size != 128 || Dimension != 128)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = sub_259212500();
    v15 = sub_2592129F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109632;
      *(v16 + 4) = Type;
      *(v16 + 8) = 2048;
      *(v16 + 10) = Size;
      *(v16 + 18) = 2048;
      *(v16 + 20) = v3;
      _os_log_impl(&dword_258FE9000, v14, v15, "[LearnedFeaturesUtilities]: Invalid local descriptor format: dataType: %u, size: %ld, dimensions: %ld", v16, 0x1Cu);
      MEMORY[0x259CA2F70](v16, -1, -1);
    }

    return 0;
  }

  Data = LFV2DescriptorsGetData();
  if (!Data)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v17 = sub_259212520();
    __swift_project_value_buffer(v17, qword_281456B60);
    v18 = sub_259212500();
    v19 = sub_2592129F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258FE9000, v18, v19, "[LearnedFeaturesUtilities]: Failed to get local descriptor data", v20, 2u);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    return 0;
  }

  v5 = Data;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    v10 = v9 - 32;
    if (v9 < 32)
    {
      v10 = v9 - 29;
    }

    v8[2] = 128;
    v8[3] = 2 * (v10 >> 2);
    memcpy(v8 + 4, (v5 + v6), 0x200uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2591E0B80(0, v7[2] + 1, 1, v7);
    }

    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v7 = sub_2591E0B80((v11 > 1), v12 + 1, 1, v7);
    }

    v7[2] = v12 + 1;
    v7[v12 + 4] = v8;
    v6 += 512;
  }

  while (v6 != 0x10000);
  return v7;
}

void *sub_2591F42E8()
{
  LFV2FeaturesGetKeypoints();
  Size = LFV2KeypointsGetSize();
  if (Size != 128)
  {
    v12 = Size;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = sub_259212500();
    v15 = sub_2592129F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v12;
      _os_log_impl(&dword_258FE9000, v14, v15, "[LearnedFeaturesUtilities]: Invalid keypoints format: size: %ld", v16, 0xCu);
      MEMORY[0x259CA2F70](v16, -1, -1);
    }

    return 0;
  }

  Data = LFV2KeypointsGetData();
  if (!Data)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v17 = sub_259212520();
    __swift_project_value_buffer(v17, qword_281456B60);
    v18 = sub_259212500();
    v19 = sub_2592129F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258FE9000, v18, v19, "[LearnedFeaturesUtilities]: Failed to get keypoints data", v20, 2u);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    return 0;
  }

  v2 = Data;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v2 + v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 29;
    }

    *(v6 + 16) = 5;
    *(v6 + 24) = 2 * (v8 >> 2);
    v9 = *(v5 + 16);
    *(v6 + 32) = *v5;
    *(v6 + 48) = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2591E0B80(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = sub_2591E0B80((v10 > 1), v11 + 1, 1, v4);
    }

    v4[2] = v11 + 1;
    v4[v11 + 4] = v6;
    v3 += 20;
  }

  while (v3 != 2560);
  return v4;
}

id ULBiomeEvent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULBiomeEvent();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t ULBiomeEventCarPlayConnected.ULBiomeEventCarPlayConnectedReason.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

unsigned int *sub_2591F46AC@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

id ULBiomeEventCarPlayConnected.__allocating_init(timestamp:starting:reason:)(uint64_t a1, char a2, int a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp;
  v9 = sub_259212160();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v7[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting] = a2;
  *&v7[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

id ULBiomeEventCarPlayConnected.init(timestamp:starting:reason:)(uint64_t a1, char a2, int a3)
{
  v7 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp;
  v8 = sub_259212160();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v3[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting] = a2;
  *&v3[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ULBiomeEventCarPlayConnected(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t sub_2591F4AF8()
{
  v1 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp;
  v2 = sub_259212160();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_2591F4B7C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2591F4C50()
{
  sub_259212C90();
  sub_259212CB0();
  return sub_259212CD0();
}

uint64_t sub_2591F4C98()
{
  sub_259212C90();
  sub_259212CB0();
  return sub_259212CD0();
}

unint64_t sub_2591F4CDC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2591F5634(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_2591F4D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_259212160();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5, v7);
  v10 = sub_259212130();
  (*(v6 + 8))(v9, v5);

  return v10;
}

uint64_t sub_2591F4E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_259212160();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id ULBiomeEventLocationSemantic.__allocating_init(timestamp:starting:locationType:loiIdentifier:)(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp;
  v11 = sub_259212160();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  v9[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting] = a2;
  *&v9[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType] = a3;
  sub_2591F56BC(a4, &v9[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier]);
  v15.receiver = v9;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_2591F572C(a4);
  (*(v12 + 8))(a1, v11);
  return v13;
}

id ULBiomeEventLocationSemantic.init(timestamp:starting:locationType:loiIdentifier:)(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp;
  v10 = sub_259212160();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a1, v10);
  v4[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting] = a2;
  *&v4[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType] = a3;
  sub_2591F56BC(a4, &v4[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier]);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ULBiomeEventLocationSemantic(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_2591F572C(a4);
  (*(v11 + 8))(a1, v10);
  return v12;
}

id ULBiomeEventLocationSemantic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2591F5524()
{
  v1 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp;
  v2 = sub_259212160();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier;

  return sub_2591F572C(v3);
}

unint64_t sub_2591F5634(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 == 4)
  {
    v1 = 0;
    v2 = 4;
    return v2 | (v1 << 32);
  }

  if (a1 == 3)
  {
    v1 = 0;
    v2 = 3;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

uint64_t sub_2591F56BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591F572C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2591F57B8()
{
  result = qword_27F99BB28;
  if (!qword_27F99BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BB28);
  }

  return result;
}

unint64_t sub_2591F5810()
{
  result = qword_27F99BB30;
  if (!qword_27F99BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BB30);
  }

  return result;
}

uint64_t sub_2591F586C(uint64_t a1)
{
  result = sub_259212160();
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

void sub_2591F5958(uint64_t a1)
{
  sub_259212160();
  if (v1 <= 0x3F)
  {
    sub_2591F5A68(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2591F5A68(uint64_t a1)
{
  if (!qword_281455B08)
  {
    sub_2592121D0();
    v1 = sub_259212A40();
    if (!v2)
    {
      atomic_store(v1, &qword_281455B08);
    }
  }
}

uint64_t sub_2591F5AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(ULHomeSlamModel *this), uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F90];
  aBlock = 0;
  v12 = [BiomeLibrary() streamWithIdentifier:a1 error:&aBlock];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = aBlock;
    v14 = [v12 publisherWithOptions_];
    v26 = ULHomeSlamModel::getTrajectoryPointCloud;
    v27 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2591F5D48;
    v25 = a4;
    v15 = _Block_copy(&aBlock);
    v26 = a5;
    v27 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2591F5EB8;
    v25 = a6;
    v16 = _Block_copy(&aBlock);

    v17 = [v14 sinkWithCompletion:v15 receiveInput:v16];

    _Block_release(v16);
    _Block_release(v15);

    swift_beginAccess();
  }

  else
  {
    v18 = aBlock;
    v19 = sub_259212040();

    swift_willThrow();
  }

  v20 = *(v11 + 16);

  return v20;
}

void sub_2591F5D48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2591F5DB0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_beginAccess();
    v3 = swift_unknownObjectRetain();
    MEMORY[0x259CA1060](v3);
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2592128D0();
    }

    sub_2592128F0();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2591F5EB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_2591F5FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(void))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB58, &qword_2592264F8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  if (a3)
  {
    sub_259212140();
    v21 = sub_259212160();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = sub_259212160();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  if (a4)
  {
    sub_259212140();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_259212160();
  (*(*(v24 - 8) + 56))(v17, v23, 1, v24);
  a8(v20, v17, a5, a6, a7);
  sub_2591DC520(v17, &qword_27F99BB58, &qword_2592264F8);
  sub_2591DC520(v20, &qword_27F99BB58, &qword_2592264F8);
  a9(0);
  v25 = sub_2592128B0();

  return v25;
}

id ULBiomeEventStreamLocationSemantic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2591F6278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2591F62C8(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2591F6324(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2591F635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v50 = a3;
  v51 = a4;
  v8 = sub_259212160();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB58, &qword_2592264F8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  sub_2591E90F4(a1, &v41 - v15, &qword_27F99BB58, &qword_2592264F8);
  sub_2591E90F4(a2, v13, &qword_27F99BB58, &qword_2592264F8);
  v17 = *(v9 + 48);
  v18 = 0;
  if (v17(v16, 1, v8) != 1)
  {
    v18 = sub_259212130();
    (*(v9 + 8))(v16, v8);
  }

  if (v17(v13, 1, v8) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_259212130();
    (*(v9 + 8))(v13, v8);
  }

  v20 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v21 = [v20 initWithStartDate:v18 endDate:v19 maxEvents:v50 lastN:v51 reversed:a5 & 1];

  v22 = *MEMORY[0x277CF0E50];
  v42 = v21;
  v23 = sub_2591F5AEC(v22, v21, &unk_286A60088, &block_descriptor_16, sub_2591F6F70, &block_descriptor_19);
  v24 = v23;
  v53 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
LABEL_29:
    v50 = v24 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_259212A80();
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_30:
    v43 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v50 = v23 & 0xFFFFFFFFFFFFFF8;
  v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_8:
  v47 = v8;
  v8 = 0;
  v49 = v24 & 0xC000000000000001;
  v45 = (v9 + 16);
  v43 = MEMORY[0x277D84F90];
  v44 = (v9 + 8);
  v46 = v25;
  do
  {
    v9 = v8;
    while (1)
    {
      if (v49)
      {
        v26 = MEMORY[0x259CA12D0](v9, v24);
      }

      else
      {
        if (v9 >= *(v50 + 16))
        {
          goto LABEL_28;
        }

        v26 = *(v24 + 8 * v9 + 32);
      }

      v27 = v26;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v28 = [v26 eventBody];
      if (v28)
      {
        break;
      }

LABEL_11:
      ++v9;
      if (v8 == v25)
      {
        goto LABEL_31;
      }
    }

    v29 = v28;
    [v27 timestamp];
    v30 = v48;
    sub_259212110();
    LODWORD(v51) = [v29 starting];
    v31 = [v29 reason];
    if (v31 == 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v31 == 1;
    }

    v33 = type metadata accessor for ULBiomeEventCarPlayConnected(0);
    v34 = objc_allocWithZone(v33);
    v35 = v24;
    v36 = v47;
    (*v45)(&v34[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp], v30, v47);
    v34[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting] = v51;
    *&v34[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason] = v32;
    v8 = v9 + 1;
    v52.receiver = v34;
    v52.super_class = v33;
    v37 = objc_msgSendSuper2(&v52, sel_init);

    v38 = v36;
    v24 = v35;
    v25 = v46;
    v39 = (*v44)(v30, v38);
    if (!v37)
    {
      goto LABEL_11;
    }

    MEMORY[0x259CA1060](v39);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2592128D0();
    }

    sub_2592128F0();
    v43 = v53;
  }

  while (v8 != v25);
LABEL_31:

  return v43;
}

uint64_t sub_2591F6888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v59) = a5;
  v60 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v50 - v9;
  v10 = sub_259212160();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB58, &qword_2592264F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  sub_2591E90F4(a1, &v50 - v17, &qword_27F99BB58, &qword_2592264F8);
  v19 = a2;
  v20 = v10;
  sub_2591E90F4(v19, v15, &qword_27F99BB58, &qword_2592264F8);
  v21 = *(v11 + 6);
  v22 = 0;
  if (v21(v18, 1, v10) != 1)
  {
    v22 = sub_259212130();
    (*(v11 + 1))(v18, v10);
  }

  if (v21(v15, 1, v10) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_259212130();
    (*(v11 + 1))(v15, v10);
  }

  v24 = v62;
  v25 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v26 = [v25 initWithStartDate:v22 endDate:v23 maxEvents:v60 lastN:a4 reversed:v59 & 1];

  v27 = *MEMORY[0x277CF0E70];
  v52 = v26;
  v28 = sub_2591F5AEC(v27, v26, &unk_286A60010, &block_descriptor_3, sub_2591F6FA8, &block_descriptor_10);
  v29 = v28;
  v64 = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
LABEL_33:
    v59 = v29 & 0xFFFFFFFFFFFFFF8;
    v30 = sub_259212A80();
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_34:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v59 = v28 & 0xFFFFFFFFFFFFFF8;
  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_34;
  }

LABEL_8:
  v31 = 0;
  v57 = v20;
  v58 = v29 & 0xC000000000000001;
  v53 = (v11 + 8);
  v54 = (v11 + 16);
  v32 = MEMORY[0x277D84F90];
  v55 = v30;
  v56 = v29;
  do
  {
    v51 = v32;
    v33 = v31;
    while (1)
    {
      if (v58)
      {
        v34 = MEMORY[0x259CA12D0](v33, v29);
      }

      else
      {
        if (v33 >= *(v59 + 16))
        {
          goto LABEL_32;
        }

        v34 = *(v29 + 8 * v33 + 32);
      }

      v20 = v34;
      v31 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v35 = [v34 eventBody];
      if (v35)
      {
        break;
      }

LABEL_11:
      ++v33;
      if (v31 == v30)
      {
        v32 = v51;
        goto LABEL_35;
      }
    }

    v36 = v35;
    [v20 timestamp];
    sub_259212110();
    v37 = [v36 starting];
    v38 = [v36 userSpecificPlaceType];
    if (v38 - 1 >= 4)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v36 loiIdentifier];
    v60 = v33 + 1;
    if (v40)
    {
      v41 = v40;
      sub_259212190();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_2592121D0();
    (*(*(v43 - 8) + 56))(v24, v42, 1, v43);
    v44 = type metadata accessor for ULBiomeEventLocationSemantic(0);
    v45 = objc_allocWithZone(v44);
    v46 = v61;
    v47 = v57;
    (*v54)(&v45[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp], v61, v57);
    v45[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting] = v37;
    *&v45[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType] = v39;
    sub_2591E90F4(v62, &v45[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier], &qword_27F99BB20, &qword_259226220);
    v63.receiver = v45;
    v63.super_class = v44;
    v24 = v62;
    v11 = objc_msgSendSuper2(&v63, sel_init);

    sub_2591DC520(v24, &qword_27F99BB20, &qword_259226220);
    v48 = (*v53)(v46, v47);
    v30 = v55;
    v29 = v56;
    v31 = v60;
    if (!v11)
    {
      goto LABEL_11;
    }

    MEMORY[0x259CA1060](v48);
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2592128D0();
      v24 = v62;
    }

    sub_2592128F0();
    v32 = v64;
  }

  while (v31 != v30);
LABEL_35:

  return v32;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static NSDate.date(fromMachContinuous:)(double a1)
{
  v2 = sub_259212160();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212150();
  sub_259212120();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];
}

id sub_2591F70BC(double a1)
{
  v2 = sub_259212160();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212150();
  sub_259212120();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];

  return v8;
}

__CVBuffer *static ULVisionUtilities.createPixelBuffer(from:size:format:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(a2, a3.n128_f64[0], a4.n128_f64[0]);
  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    [v6 render:a1 toCVPixelBuffer:v5];
    CVPixelBufferUnlockBaseAddress(v5, 1uLL);
  }

  return v5;
}

id static ULVisionUtilities.reduceFormat(to:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBF758]);

  return [v0 init];
}

id ULVisionUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisionUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULVisionUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ULVisionUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ULVisionUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

CVPixelBufferRef _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(OSType a1, double a2, double a3)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut[0] = 0;
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (a3 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  v4 = a2;
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB70, &qword_259226528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2592256B0;
  v7 = *MEMORY[0x277CC4DE8];
  *(inited + 32) = *MEMORY[0x277CC4DE8];
  v8 = v7;
  *(inited + 40) = sub_2591E8A00(MEMORY[0x277D84F90]);
  sub_2591E8B3C(inited);
  swift_setDeallocating();
  sub_2591F7FC0(inited + 32);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB80, &qword_259226538);
  sub_2591F8028(&qword_27F99B7D0, type metadata accessor for CFString, &unk_2592253F0);
  v9 = sub_259212800();

  CVPixelBufferCreate(0, v4, v5, a1, v9, pixelBufferOut);

  return pixelBufferOut[0];
}

CVPixelBufferRef _s19MicroLocationDaemon17ULVisionUtilitiesC26createPixelBufferRotatedUp4from0K11OrientationSo11CVBufferRefaSgAH_So015CGImagePropertyL0VtFZ_0(__CVBuffer *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v5 = [v4 imageByApplyingCGOrientation_];
  [v5 extent];
  v7 = v6;
  v9 = v8;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v11 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(PixelFormatType, v7, v9);
  if (v11)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    [v12 render:v5 toCVPixelBuffer:v11];

    v4 = v5;
    v5 = v12;
  }

  return v11;
}

__CVBuffer *_s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4from6formatSo11CVBufferRefaSg10Foundation3URLV_s6UInt32VtFZ_0(uint64_t a1, OSType a2)
{
  v3 = sub_259212060();
  v4 = CGImageSourceCreateWithURL(v3, 0);

  if (!v4)
  {
    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
  if (ImageAtIndex)
  {
    v6 = ImageAtIndex;
    v7 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
    [(CGImageSource *)v7 extent];
    v9 = v8;
    [(CGImageSource *)v7 extent];
    v11 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(a2, v9, v10);
    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      CVPixelBufferLockBaseAddress(v11, 1uLL);
      [v12 render:v7 toCVPixelBuffer:v11];
      CVPixelBufferUnlockBaseAddress(v11, 1uLL);
    }
  }

  else
  {
    v11 = 0;
    v7 = v4;
  }

  return v11;
}

void sub_2591F7C54(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v3 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [(CGImage *)v2 extent];
  v4 = [v3 createCGImage:v2 fromRect:?];
  if (v4)
  {
    v5 = v4;
    v6 = sub_259212060();
    sub_2592124D0();
    v7 = sub_259212830();

    v8 = CGImageDestinationCreateWithURL(v6, v7, 1uLL, 0);

    if (v8)
    {
      CGImageDestinationAddImage(v8, v5, 0);
      if (CGImageDestinationFinalize(v8))
      {

        return;
      }

      sub_2591F7F6C();
      swift_allocError();
      *v13 = 0xD000000000000024;
      v13[1] = 0x800000025925F750;
      swift_willThrow();

      v2 = v5;
    }

    else
    {
      sub_259212B00();

      v10 = sub_259212090();
      MEMORY[0x259CA1040](v10);

      MEMORY[0x259CA1040](8236, 0xE200000000000000);
      sub_2592124F0();
      sub_2591F8028(&qword_27F99BB68, MEMORY[0x277D85578], MEMORY[0x277D855A8]);
      v11 = sub_259212BE0();
      MEMORY[0x259CA1040](v11);

      sub_2591F7F6C();
      swift_allocError();
      *v12 = 0xD00000000000002BLL;
      v12[1] = 0x800000025925F720;
      swift_willThrow();

      v2 = v3;
      v8 = v5;
    }
  }

  else
  {
    sub_2591F7F6C();
    swift_allocError();
    *v9 = 0xD00000000000002BLL;
    v9[1] = 0x800000025925F6F0;
    swift_willThrow();
    v8 = v3;
  }
}

unint64_t sub_2591F7F6C()
{
  result = qword_27F99BB60;
  if (!qword_27F99BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BB60);
  }

  return result;
}

uint64_t sub_2591F7FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB78, &qword_259226530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591F8028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2591F8070(uint64_t a1, int a2)
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

uint64_t sub_2591F80B8(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for Anchor(uint64_t a1)
{
  result = qword_27F99BB88;
  if (!qword_27F99BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2591F8178(uint64_t a1)
{
  sub_2592121D0();
  if (v1 <= 0x3F)
  {
    sub_2591F81FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2591F81FC(uint64_t a1)
{
  if (!qword_27F99BB98)
  {
    type metadata accessor for simd_float4x4(255);
    v1 = sub_259212A40();
    if (!v2)
    {
      atomic_store(v1, &qword_27F99BB98);
    }
  }
}

id DatabaseUpdateRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseUpdateRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PoseEstimation.debugDescription.getter()
{
  v1 = v0;
  v34 = type metadata accessor for RelativePoseEstimate(0);
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualMappingFrame(0);
  MEMORY[0x28223BE20](v5);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_relativePoses);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = v0;
    v31 = v5;
    v40 = MEMORY[0x277D84F90];
    sub_2591E14E8(0, v8, 0);
    v9 = v40;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v33 = "";
    v11 = *(v2 + 72);
    do
    {
      sub_2591F8AC4(v10, v4, type metadata accessor for RelativePoseEstimate);
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_259212B00();
      v39 = v35;
      MEMORY[0x259CA1040](0xD000000000000010, v33 | 0x8000000000000000);
      sub_2592121D0();
      sub_2591F8A08();
      v12 = sub_259212BE0();
      MEMORY[0x259CA1040](v12);

      MEMORY[0x259CA1040](0x66736E617274202CLL, 0xED0000203A6D726FLL);
      v13 = &v4[*(v34 + 20)];
      v14 = *(v13 + 1);
      v15 = *(v13 + 2);
      v16 = *(v13 + 3);
      v35 = *v13;
      v36 = v14;
      v37 = v15;
      v38 = v16;
      type metadata accessor for simd_float4x4(0);
      sub_259212B80();
      MEMORY[0x259CA1040](41, 0xE100000000000000);
      v17 = v39;
      sub_2591F8CB4(v4, type metadata accessor for RelativePoseEstimate);
      v40 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2591E14E8((v18 > 1), v19 + 1, 1);
        v9 = v40;
      }

      *(v9 + 16) = v19 + 1;
      *(v9 + 16 * v19 + 32) = v17;
      v10 += v11;
      --v8;
    }

    while (v8);
    v1 = v30;
    v5 = v31;
  }

  *&v35 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BBB8, &unk_2592265F0);
  sub_2591F8A60();
  v20 = sub_259212820();
  v22 = v21;

  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  sub_259212B00();
  MEMORY[0x259CA1040](0xD000000000000017, 0x800000025925F820);
  v23 = v1 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_queryFrame;
  v24 = v32;
  sub_2591F8AC4(v23, v32, type metadata accessor for VisualMappingFrame);
  v25 = sub_2592121D0();
  sub_2591F8A08();
  v26 = sub_259212BE0();
  MEMORY[0x259CA1040](v26);

  (*(*(v25 - 8) + 8))(v24, v25);
  MEMORY[0x259CA1040](0xD00000000000001ELL, 0x800000025925F840);
  LODWORD(v39) = *(v23 + *(v5 + 20));
  v27 = sub_259212BE0();
  MEMORY[0x259CA1040](v27);

  MEMORY[0x259CA1040](0xD000000000000017, 0x800000025925F860);
  sub_2592129A0();
  MEMORY[0x259CA1040](0xD000000000000010, 0x800000025925F880);
  MEMORY[0x259CA1040](v20, v22);

  return v35;
}

id PoseEstimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PoseEstimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2591F8A08()
{
  result = qword_27F99BBB0;
  if (!qword_27F99BBB0)
  {
    sub_2592121D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BBB0);
  }

  return result;
}

unint64_t sub_2591F8A60()
{
  result = qword_27F99BBC0;
  if (!qword_27F99BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F99BBB8, &unk_2592265F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BBC0);
  }

  return result;
}

uint64_t sub_2591F8AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2591F8B54(uint64_t a1)
{
  result = type metadata accessor for VisualMappingFrame(319);
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

void sub_2591F8C30(uint64_t a1)
{
  sub_2592121D0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2591F8CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ULVisualMappingKitAnchor.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier;
  v4 = sub_2592121D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ULVisualMappingKitAnchor.__allocating_init(uniqueIdentifier:location:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier;
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ULVisualMappingKitAnchor.init(uniqueIdentifier:location:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier;
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ULVisualMappingKitAnchor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisualMappingKitAnchor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ULVisualMappingKitAnchor(uint64_t a1)
{
  result = qword_27F99BBE8;
  if (!qword_27F99BBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2591F9364(uint64_t a1)
{
  result = sub_2592121D0();
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

id ULVisualMappingKitLocation.__allocating_init(coordinates:)(__n128 a1)
{
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = a1;
  v5.receiver = v2;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ULVisualMappingKitLocation.init(coordinates:)(__n128 a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static ULVisualMappingKitLocation.locationNotAvailable()()
{
  v3 = *MEMORY[0x277D28830];
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = v3;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ULVisualMappingKitLocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisualMappingKitLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ULVisualMappingKitManager.__allocating_init(queue:delegate:exclaveManager:databaseService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2591FCD68(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

id ULVisualMappingKitManager.init(queue:delegate:exclaveManager:databaseService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2591FCD68(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

void ULVisualMappingKitManager.setup(for:)(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v58 - v7;
  v8 = sub_2592121D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_259212580();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_259212590();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v63 = v5;
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_259212520();
  v20 = __swift_project_value_buffer(v19, qword_281456B60);
  v60 = *(v9 + 16);
  v60(v11, v67, v8);
  v61 = v20;
  v21 = sub_259212500();
  v22 = sub_259212A00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v59 = v2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v62 = v9;
    v26 = v25;
    v66[0] = v25;
    *v24 = 136315138;
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_259212BE0();
    v29 = v28;
    (*(v62 + 8))(v11, v8);
    v30 = sub_2591E0FD4(v27, v29, v66);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_258FE9000, v21, v22, "[VisualMappingKitManager]: setting up for location %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    v9 = v62;
    MEMORY[0x259CA2F70](v31, -1, -1);
    v32 = v24;
    v2 = v59;
    MEMORY[0x259CA2F70](v32, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v33 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  v34 = v64;
  sub_2591F56BC(v2 + v33, v64);
  v35 = (*(v9 + 48))(v34, 1, v8);
  sub_2591F572C(v34);
  if (v35 != 1)
  {
    sub_2591FD0D0();
    v52 = swift_allocError();
    *v53 = 0xD000000000000041;
    *(v53 + 8) = 0x800000025925FB50;
    *(v53 + 16) = 0;
    v65 = v52;
    swift_willThrow();
    return;
  }

  v36 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_databaseService);
  v37 = v9;
  v38 = v67;
  v39 = sub_259212170();
  v40 = [v36 fetchVMKModelFor_];

  v64 = sub_2592120F0();
  v42 = v41;

  v43 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager);
  v44 = sub_259212170();
  [v43 loadKeyFramesFor_];

  v45 = v63;
  v60(v63, v38, v8);
  (*(v37 + 56))(v45, 0, 1, v8);
  v46 = v64;
  swift_beginAccess();
  sub_2591FD060(v45, v2 + v33);
  swift_endAccess();
  sub_2591E55C8(v46, v42);
  v47 = sub_259212500();
  v48 = sub_259212A00();
  if (!os_log_type_enabled(v47, v48))
  {
    sub_2591DD3CC(v46, v42);
LABEL_21:
    sub_2591DD3CC(v46, v42);

    return;
  }

  v49 = swift_slowAlloc();
  *v49 = 134217984;
  v50 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    if (v50 != 2)
    {
      v51 = 0;
      goto LABEL_20;
    }

    v55 = *(v46 + 16);
    v54 = *(v46 + 24);
    v56 = __OFSUB__(v54, v55);
    v51 = v54 - v55;
    if (!v56)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v50)
  {
    v51 = BYTE6(v42);
LABEL_20:
    *(v49 + 4) = v51;
    v57 = v49;
    sub_2591DD3CC(v46, v42);
    _os_log_impl(&dword_258FE9000, v47, v48, "[VisualMappingKitManager]: setup finished with model size: %ld", v57, 0xCu);
    MEMORY[0x259CA2F70](v57, -1, -1);
    goto LABEL_21;
  }

  LODWORD(v51) = HIDWORD(v46) - v46;
  if (!__OFSUB__(HIDWORD(v46), v46))
  {
    v51 = v51;
    goto LABEL_20;
  }

  __break(1u);
}

Swift::Void __swiftcall ULVisualMappingKitManager.teardown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_259212580();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_259212590();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_259212520();
  __swift_project_value_buffer(v12, qword_281456B60);
  v13 = sub_259212500();
  v14 = sub_259212A00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258FE9000, v13, v14, "[VisualMappingKitManager]: tearing down", v15, 2u);
    MEMORY[0x259CA2F70](v15, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager) unloadKeyFrames];
  v16 = sub_2592121D0();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591FD060(v4, v1 + v17);
  swift_endAccess();
  v19[0] = 1;
  v18 = v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 1;
}

char *ULVisualMappingKitManager.addAnchor(identifiedBy:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v3 - 8);
  *&v55 = &v49 - v4;
  v5 = sub_2592121D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = sub_259212580();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56[0] = v1;
  v16 = *(*&v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_259212590();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_259212520();
  __swift_project_value_buffer(v18, qword_281456B60);
  v19 = *(v6 + 16);
  v54 = a1;
  v51 = v19;
  v52 = v6 + 16;
  v19(v10, a1, v5);
  v20 = sub_259212500();
  v21 = sub_2592129D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58[0] = v23;
    *v22 = 136315138;
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_259212BE0();
    v25 = v6;
    v26 = v5;
    v28 = v27;
    v29 = v10;
    v30 = *(v25 + 8);
    v30(v29, v26);
    v31 = sub_2591E0FD4(v24, v28, v58);
    v5 = v26;
    v6 = v25;

    *(v22 + 4) = v31;
    _os_log_impl(&dword_258FE9000, v20, v21, "[VisualMappingKitManager]: adding anchor with identifier: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x259CA2F70](v23, -1, -1);
    MEMORY[0x259CA2F70](v22, -1, -1);
  }

  else
  {

    v32 = v10;
    v30 = *(v6 + 8);
    v30(v32, v5);
  }

  v33 = v56[0];
  v34 = 0xD000000000000018;
  v35 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  v36 = v55;
  sub_2591F56BC(*&v33 + v35, v55);
  LODWORD(v35) = (*(v6 + 48))(v36, 1, v5);
  sub_2591F572C(v36);
  if (v35 == 1)
  {
    v37 = "ll teardown first";
    v34 = 0xD00000000000001ELL;
  }

  else
  {
    v38 = (*&v33 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform);
    if ((*(*&v33 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform + 64) & 1) == 0)
    {
      *v56 = *v38;
      v55 = v38[1];
      v50 = v38[2];
      v49 = v38[3];
      v42 = v53;
      v43 = v51;
      v51(v53, v54, v5);
      v44 = objc_allocWithZone(type metadata accessor for ULVisualMappingKitLocation());
      v45 = [v44 initWithTransform_];
      v46 = type metadata accessor for ULVisualMappingKitAnchor(0);
      v47 = objc_allocWithZone(v46);
      v43(&v47[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier], v42, v5);
      *&v47[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = v45;
      v57.receiver = v47;
      v57.super_class = v46;
      v39 = objc_msgSendSuper2(&v57, sel_init);
      v30(v42, v5);
      return v39;
    }

    v37 = "add Anchor called before setup";
  }

  v39 = (v37 | 0x8000000000000000);
  sub_2591FD0D0();
  v40 = swift_allocError();
  *v41 = v34;
  *(v41 + 8) = v39;
  *(v41 + 16) = 1;
  v58[4] = v40;
  swift_willThrow();
  return v39;
}

uint64_t ULVisualMappingKitManager.deleteAnchor(identifiedBy:)(uint64_t a1)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v5 = sub_2592121D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_259212580();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_259212590();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v31 = v2;
    if (qword_281455650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_259212520();
  __swift_project_value_buffer(v16, qword_281456B60);
  (*(v6 + 16))(v8, v32, v5);
  v17 = sub_259212500();
  v18 = sub_2592129D0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34[0] = v20;
    *v19 = 136315138;
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_259212BE0();
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    v24 = sub_2591E0FD4(v21, v23, v34);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_258FE9000, v17, v18, "[VisualMappingKitManager]: deleting anchor with identifier: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x259CA2F70](v20, -1, -1);
    MEMORY[0x259CA2F70](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v25 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  v26 = v35;
  swift_beginAccess();
  v27 = v26 + v25;
  v28 = v33;
  sub_2591F56BC(v27, v33);
  LODWORD(v25) = (*(v6 + 48))(v28, 1, v5);
  result = sub_2591F572C(v28);
  if (v25 == 1)
  {
    sub_2591FD0D0();
    swift_allocError();
    *v30 = 0xD000000000000021;
    *(v30 + 8) = 0x800000025925FBE0;
    *(v30 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2591FAE14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  v11 = a1;
  a5(v10);
  (*(v8 + 8))(v10, v7);

  return 1;
}

uint64_t ULVisualMappingKitManager.getAnchors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_259212580();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_259212590();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_4:
    v14 = sub_259212520();
    __swift_project_value_buffer(v14, qword_281456B60);
    v15 = sub_259212500();
    v16 = sub_2592129F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[VisualMappingKitManager]: get anchors called before setup";
LABEL_10:
      _os_log_impl(&dword_258FE9000, v15, v16, v18, v17, 2u);
      MEMORY[0x259CA2F70](v17, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591F56BC(v0 + v11, v3);
  v12 = sub_2592121D0();
  v13 = (*(*(v12 - 8) + 48))(v3, 1, v12);
  sub_2591F572C(v3);
  if (v13 == 1)
  {
    if (qword_281455650 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v19 = sub_259212520();
  __swift_project_value_buffer(v19, qword_281456B60);
  v15 = sub_259212500();
  v16 = sub_2592129D0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "[VisualMappingKitManager]: getting anchors";
    goto LABEL_10;
  }

LABEL_11:

  return MEMORY[0x277D84F90];
}

id ULVisualMappingKitManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULVisualMappingKitManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ULVisualMappingKitManager.processPoseEstimation(_:)(void *a1)
{
  v34 = a1;
  v2 = type metadata accessor for VisualMappingFrame(0);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2592121D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_259212580();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_259212590();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v18 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591F56BC(v1 + v18, v10);
  v19 = (*(v5 + 48))(v10, 1, v4);
  sub_2591F572C(v10);
  if (v19 == 1)
  {
    sub_2591FD0D0();
    swift_allocError();
    *v20 = 0xD000000000000027;
    *(v20 + 8) = 0x800000025925FC40;
    *(v20 + 16) = 3;
    swift_willThrow();
    return;
  }

  if (qword_281455650 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v22 = v34;
  v23 = sub_259212500();
  v24 = sub_2592129D0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v25 = 136315394;
    v26 = v33;
    sub_2591FD45C(v22 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_queryFrame, v33, type metadata accessor for VisualMappingFrame);
    (*(v5 + 32))(v7, v26, v4);
    sub_2591FD224(&qword_27F99BBB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_259212BE0();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    v30 = sub_2591E0FD4(v27, v29, &v35);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2048;
    v31 = *(*(v22 + OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_relativePoses) + 16);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_258FE9000, v23, v24, "[VisualMappingKitManager]: processPoseEstimation called for queryFrameIdentifier: %s, poses count: %ld", v25, 0x16u);
    v32 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x259CA2F70](v32, -1, -1);
    MEMORY[0x259CA2F70](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t ULVisualMappingKitManager.processOdometry(_:)(char *a1)
{
  v2 = v1;
  v96 = a1;
  v108 = *MEMORY[0x277D85DE8];
  v3 = sub_259212550();
  v95 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_259212570();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - v7;
  v9 = sub_2592121D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v97 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_259212580();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12, v14);
  v90 = v17;
  LOBYTE(v17) = sub_259212590();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
    goto LABEL_5;
  }

  v18 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  swift_beginAccess();
  sub_2591F56BC(v2 + v18, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2591F572C(v8);
    sub_2591FD0D0();
    swift_allocError();
    *v19 = 0xD000000000000024;
    *(v19 + 8) = 0x800000025925FC70;
    *(v19 + 16) = 4;
    return swift_willThrow();
  }

  v87 = v10;
  (*(v10 + 32))(v97, v8, v9);
  if (qword_281455650 != -1)
  {
    goto LABEL_55;
  }

LABEL_5:
  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v22 = v96;
  v23 = sub_259212500();
  v24 = sub_2592129E0();

  v25 = os_log_type_enabled(v23, v24);
  v89 = v3;
  v88 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v107[0] = v27;
    *v26 = 136315138;
    aBlock = *&v22[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_deltaPosition];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BC20, qword_2592266D0);
    sub_2591FD520(&qword_27F99BC28, &qword_27F99BC20, qword_2592266D0, MEMORY[0x277D84B08]);
    v28 = sub_259212C10();
    v30 = sub_2591E0FD4(v28, v29, v107);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_258FE9000, v23, v24, "[VisualMappingKitManager]: processOdometry called with deltaPosition: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v31 = v98;
    MEMORY[0x259CA2F70](v27, -1, -1);
    MEMORY[0x259CA2F70](v26, -1, -1);
  }

  else
  {

    v31 = v98;
  }

  updated = type metadata accessor for DatabaseUpdateRequest();
  v33 = objc_allocWithZone(updated);
  v34 = MEMORY[0x277D84F90];
  *&v33[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToAdd] = MEMORY[0x277D84F90];
  *&v33[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToDelete] = v34;
  v101.receiver = v33;
  v101.super_class = updated;
  v35 = objc_msgSendSuper2(&v101, sel_init);
  v36 = v35;
  v99 = 0;
  v37 = v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 64) = 0;
  if (!*(*&v35[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToAdd] + 16) && !*(*&v35[OBJC_IVAR____TtC19MicroLocationDaemon21DatabaseUpdateRequest_framesToDelete] + 16))
  {
    goto LABEL_53;
  }

  [*(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager) updateWithDatabaseUpdateRequest_];
  v38 = sub_2591FD124(&unk_286A5F4A8);
  v40 = v39;
  sub_2591E55C8(v38, v39);
  v41 = sub_259212500();
  v42 = sub_2592129D0();
  if (!os_log_type_enabled(v41, v42))
  {
    sub_2591DD3CC(v38, v40);
    goto LABEL_23;
  }

  v43 = swift_slowAlloc();
  *v43 = 134217984;
  v44 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v44 != 2)
    {
      v45 = 0;
      goto LABEL_22;
    }

    v47 = *(v38 + 16);
    v46 = *(v38 + 24);
    v48 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v48)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    LODWORD(v45) = HIDWORD(v38) - v38;
    if (__OFSUB__(HIDWORD(v38), v38))
    {
      goto LABEL_60;
    }

    v45 = v45;
    goto LABEL_22;
  }

  if (v44)
  {
    goto LABEL_19;
  }

  v45 = BYTE6(v40);
LABEL_22:
  *(v43 + 4) = v45;
  v49 = v43;
  sub_2591DD3CC(v38, v40);
  _os_log_impl(&dword_258FE9000, v41, v42, "[VisualMappingKitManager]: updating VMK map in DB with model size: %ld", v49, 0xCu);
  MEMORY[0x259CA2F70](v49, -1, -1);
LABEL_23:

  v50 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_databaseService);
  v104 = MEMORY[0x277CC9318];
  v105 = MEMORY[0x277CC9300];
  *&aBlock = v38;
  *(&aBlock + 1) = v40;
  v51 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
  v52 = *v51;
  v53 = v51[1];
  v54 = v53 >> 62;
  v96 = v50;
  if ((v53 >> 62) > 1)
  {
    if (v54 != 2)
    {
      memset(v100, 0, 14);
      sub_2591E55C8(v38, v40);
      v55 = v100;
      goto LABEL_51;
    }

    v56 = *(v52 + 16);
    v57 = *(v52 + 24);
    sub_2591E55C8(v38, v40);
    v58 = sub_259211FA0();
    if (v58)
    {
      v59 = sub_259211FC0();
      if (__OFSUB__(v56, v59))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v58 += v56 - v59;
    }

    v48 = __OFSUB__(v57, v56);
    v60 = v57 - v56;
    if (!v48)
    {
      v61 = sub_259211FB0();
      if (v61 >= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }

      v63 = (v62 + v58);
      if (v58)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      v65 = v58;
      v66 = v98;
      goto LABEL_49;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v54)
  {
    v100[0] = v52;
    LOWORD(v100[1]) = v53;
    BYTE2(v100[1]) = BYTE2(v53);
    BYTE3(v100[1]) = BYTE3(v53);
    BYTE4(v100[1]) = BYTE4(v53);
    BYTE5(v100[1]) = BYTE5(v53);
    sub_2591E55C8(v38, v40);
    v55 = v100 + BYTE6(v53);
LABEL_51:
    sub_2591FCB1C(v100, v55, v107);
    v98 = v31;
    goto LABEL_52;
  }

  v67 = v52;
  v68 = v52 >> 32;
  v69 = v68 - v67;
  if (v68 < v67)
  {
    __break(1u);
    goto LABEL_57;
  }

  sub_2591E55C8(v38, v40);
  v70 = sub_259211FA0();
  if (v70)
  {
    v71 = sub_259211FC0();
    if (!__OFSUB__(v67, v71))
    {
      v70 += v67 - v71;
      goto LABEL_42;
    }

    goto LABEL_59;
  }

LABEL_42:
  v72 = v98;
  v73 = sub_259211FB0();
  if (v73 >= v69)
  {
    v74 = v69;
  }

  else
  {
    v74 = v73;
  }

  v75 = (v74 + v70);
  if (v70)
  {
    v64 = v75;
  }

  else
  {
    v64 = 0;
  }

  v65 = v70;
  v66 = v72;
LABEL_49:
  sub_2591FCB1C(v65, v64, v107);
  v98 = v66;
  v34 = MEMORY[0x277D84F90];
LABEL_52:
  v76 = v107[0];
  v77 = v107[1];
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v78 = sub_2592120E0();
  sub_2591DD3CC(v76, v77);
  v79 = sub_259212170();
  [v96 insertVMKModel:v78 for:v79];

  sub_2591DD3CC(v38, v40);
LABEL_53:
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 32) = 0u;
  *(v81 + 48) = 0u;
  *(v81 + 64) = 0u;
  *(v81 + 80) = 0u;
  *(v81 + 96) = 0x7FF0000000000000;
  *(v81 + 104) = v34;
  *(v81 + 112) = v36;
  v105 = sub_2591FD200;
  v106 = v81;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v103 = sub_2591F37A8;
  v104 = &block_descriptor_4;
  v82 = _Block_copy(&aBlock);

  v96 = v36;
  v83 = v34;
  v84 = v91;
  sub_259212560();
  v107[0] = v83;
  sub_2591FD224(&qword_27F99BA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA68, &qword_259225F00);
  sub_2591FD520(&qword_27F99BA70, &qword_27F99BA68, &qword_259225F00, MEMORY[0x277D83970]);
  v85 = v93;
  v86 = v89;
  sub_259212A60();
  MEMORY[0x259CA11D0](0, v84, v85, v82);
  _Block_release(v82);

  (*(v95 + 8))(v85, v86);
  (*(v92 + 8))(v84, v94);
  (*(v87 + 8))(v97, v88);
}

void sub_2591FC56C(uint64_t a1, __int128 *a2)
{
  v3 = sub_2592121D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Anchor(0);
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      v50 = v6;
      v13 = a2[3];
      v48 = a2[2];
      v49 = v13;
      v14 = a2[1];
      v46 = *a2;
      v47 = v14;
      v51 = type metadata accessor for ULVisualMappingKitLocation();
      v15 = objc_allocWithZone(v51);
      v16 = [v15 initWithTransform_];
      v17 = v16;
      v18 = *(a2 + 9);
      v19 = *(v18 + 16);
      if (v19)
      {
        *&v47 = v3;
        v39 = v16;
        v40 = v12;
        v56 = MEMORY[0x277D84F90];
        sub_259212B50();
        v20 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        *&v49 = *(v7 + 72);
        *&v46 = v4 + 16;
        *&v48 = v4 + 8;
        v21 = v9;
        v45 = v9;
        do
        {
          sub_2591FD45C(v20, v21, type metadata accessor for Anchor);
          v31 = v21 + *(v52 + 20);
          if (*(v31 + 64))
          {
            v22 = *v46;
            v23 = v50;
            v24 = v21;
            v25 = v47;
            (*v46)(v50, v24, v47);
            v44 = *MEMORY[0x277D28830];
            v26 = v51;
            v27 = objc_allocWithZone(v51);
            *&v27[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = v44;
            v55.receiver = v27;
            v55.super_class = v26;
            v28 = objc_msgSendSuper2(&v55, sel_init);
            v29 = type metadata accessor for ULVisualMappingKitAnchor(0);
            v30 = objc_allocWithZone(v29);
            v22(&v30[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier], v23, v25);
            *&v30[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = v28;
            v54.receiver = v30;
            v54.super_class = v29;
            objc_msgSendSuper2(&v54, sel_init);
          }

          else
          {
            v44 = *v31;
            v43 = *(v31 + 16);
            v42 = *(v31 + 32);
            v41 = *(v31 + 48);
            v32 = *v46;
            v23 = v50;
            v33 = v21;
            v25 = v47;
            (*v46)(v50, v33, v47);
            v34 = objc_allocWithZone(v51);
            v35 = [v34 initWithTransform_];
            v36 = type metadata accessor for ULVisualMappingKitAnchor(0);
            v37 = objc_allocWithZone(v36);
            v32(&v37[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier], v23, v25);
            *&v37[OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location] = v35;
            v53.receiver = v37;
            v53.super_class = v36;
            objc_msgSendSuper2(&v53, sel_init);
          }

          (*v48)(v23, v25);
          v21 = v45;
          sub_2591FD4C4(v45);
          sub_259212B30();
          sub_259212B60();
          sub_259212B70();
          sub_259212B40();
          v20 += v49;
          --v19;
        }

        while (v19);
        v12 = v40;
        v17 = v39;
      }

      type metadata accessor for ULVisualMappingKitAnchor(0);
      v38 = sub_2592128B0();

      [v12 didUpdateLocation:v17 anchors:v38];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2591FCA7C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

_BYTE *sub_2591FCB1C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2591FCBB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2591FCC68(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2591FCCE4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_2591FCBB0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2591FCC68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_259211FD0();
  swift_allocObject();
  result = sub_259211F90();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2592120D0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2591FCCE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_259211FD0();
  swift_allocObject();
  result = sub_259211F90();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_2591FCD68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  ObjectType = swift_getObjectType();
  v9 = sub_259212580();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_locationID;
  v14 = sub_2592121D0();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = &v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_currentTransform];
  v29 = 1;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  v15[64] = 1;
  *v12 = a1;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v16 = a1;
  LOBYTE(v13) = sub_259212590();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    *&v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_queue] = v16;
    swift_unknownObjectWeakAssign();
    *&v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_exclaveManager] = a3;
    *&v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_databaseService] = a4;
    type metadata accessor for VMKSession();
    v17 = swift_allocObject();
    v18 = &v5[OBJC_IVAR____TtC19MicroLocationDaemon25ULVisualMappingKitManager_visualMappingService];
    *v18 = v17;
    v18[1] = &off_286A60278;
    v19 = qword_281455650;
    v20 = v16;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v19 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v22 = sub_259212500();
  v23 = sub_259212A00();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_258FE9000, v22, v23, "[ULVisualMappingKitManager]: initialized", v24, 2u);
    MEMORY[0x259CA2F70](v24, -1, -1);
  }

  v28.receiver = v5;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init, v26);
}

uint64_t sub_2591FD060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2591FD0D0()
{
  result = qword_27F99BC18;
  if (!qword_27F99BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BC18);
  }

  return result;
}

uint64_t sub_2591FD124(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BC40, &qword_2592268A8);
  v10 = sub_2591FD520(&qword_27F99BC48, &qword_27F99BC40, &qword_2592268A8, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2591FCB1C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591FD224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ULVisualMappingKitManager(uint64_t a1)
{
  result = qword_2814556E8;
  if (!qword_2814556E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2591FD2C0(uint64_t a1)
{
  sub_2591F5A68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2591FD3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2591FD408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2591FD45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2591FD4C4(uint64_t a1)
{
  v2 = type metadata accessor for Anchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591FD520(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for VisualMappingFrame(uint64_t a1)
{
  result = qword_27F99BC50;
  if (!qword_27F99BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2591FD5DC(uint64_t a1)
{
  result = sub_2592121D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2591FD660()
{
  sub_259212C90();
  sub_2592121D0();
  sub_2591FD95C(&qword_27F99BC68, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_259212810();
  v1 = type metadata accessor for VisualMappingFrame(0);
  sub_259212CB0();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259CA1480](*&v2);
  return sub_259212CD0();
}

uint64_t sub_2591FD734(uint64_t a1, uint64_t a2)
{
  sub_2592121D0();
  sub_2591FD95C(&qword_27F99BC68, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_259212810();
  sub_259212CB0();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x259CA1480](*&v4);
}

uint64_t sub_2591FD7E8(uint64_t a1, uint64_t a2)
{
  sub_259212C90();
  sub_2592121D0();
  sub_2591FD95C(&qword_27F99BC68, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_259212810();
  sub_259212CB0();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x259CA1480](*&v4);
  return sub_259212CD0();
}

uint64_t sub_2591FD95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VisualMappingOdometry.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BC70, &unk_259226940);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_timestamp);
  *(v1 + 16) = xmmword_259226930;
  v3 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_deltaPosition);
  v5 = MEMORY[0x277D83A90];
  v6 = MEMORY[0x277D83B08];
  *(v1 + 96) = MEMORY[0x277D83A90];
  *(v1 + 104) = v6;
  *(v1 + 72) = v4;
  *(v1 + 136) = v5;
  *(v1 + 144) = v6;
  *(v1 + 112) = DWORD1(v4);
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;
  *(v1 + 152) = DWORD2(v4);
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_attitudeQuaternion);
  *(v1 + 216) = v5;
  *(v1 + 224) = v6;
  *(v1 + 192) = v7;
  *(v1 + 256) = v5;
  *(v1 + 264) = v6;
  *(v1 + 232) = DWORD1(v7);
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  *(v1 + 272) = DWORD2(v7);
  *(v1 + 336) = v5;
  *(v1 + 344) = v6;
  *(v1 + 312) = HIDWORD(v7);

  return MEMORY[0x28211E920](0xD00000000000006FLL, 0x800000025925FE50, v1);
}

id sub_2591FDAB0(void *a1)
{
  v1 = a1;
  VisualMappingOdometry.description.getter();

  v2 = sub_259212830();

  return v2;
}

id VisualMappingOdometry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualMappingOdometry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2591FDC70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2591FDD90@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2591FF58C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_258FF9254(v4, v5);
}

uint64_t sub_2591FDE30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2591FF578;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_258FF9254(v3, v4);
  return sub_2591EBD18(v8, v9);
}

id sub_2591FDF70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2591FDC70;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2591FE050(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_258FF9254(*v2, v2[1]);
  return v3;
}

uint64_t sub_2591FE174(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_2591EBD18(v7, v8);
}

uint64_t sub_2591FE1D0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2591FF54C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_258FF9254(v4, v5);
}

uint64_t sub_2591FE270(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2591FF514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_258FF9254(v3, v4);
  return sub_2591EBD18(v8, v9);
}

id ULDeviceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULDeviceManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceConnectedHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_deviceDisconnectedHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_thisDeviceClass] = 0;
  *&v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_activeDeviceClasses] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_trackedDeviceClass] = 0;
  swift_beginAccess();
  sub_2591FE854(v5, 0);
  swift_endAccess();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ULDeviceManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2591FE4E8()
{
  v1 = OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_activeDeviceClasses;
  result = swift_beginAccess();
  v3 = 0;
  v4 = *(v0 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v4 + 48) + ((v9 << 9) | (8 * v10)));
    if (v11 != *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_thisDeviceClass))
    {
LABEL_13:
      *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_trackedDeviceClass) = v11;
      return result;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      v11 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon15ULDeviceManager_thisDeviceClass);
      goto LABEL_13;
    }

    v7 = *(v4 + 56 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id ULDeviceManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ULDeviceManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2591FE854(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_259212C90();
  MEMORY[0x259CA1460](a2);
  v6 = sub_259212CD0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2591FED78(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2591FEB28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCB8, &qword_259226A08);
  result = sub_259212AD0();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_259212C90();
      MEMORY[0x259CA1460](v17);
      result = sub_259212CD0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_2591FED78(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2591FEB28(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2591FEED4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2591FF014(v5 + 1);
  }

  v8 = *v3;
  sub_259212C90();
  MEMORY[0x259CA1460](result);
  v9 = sub_259212CD0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for ULDeviceClass(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_259212C20();
  __break(1u);
}

void *sub_2591FEED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCB8, &qword_259226A08);
  v2 = *v0;
  v3 = sub_259212AC0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2591FF014(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCB8, &qword_259226A08);
  result = sub_259212AD0();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_259212C90();
      MEMORY[0x259CA1460](v16);
      result = sub_259212CD0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_2591FF234(uint64_t a1)
{
  v3 = *v1;
  sub_259212C90();
  MEMORY[0x259CA1460](a1);
  v4 = sub_259212CD0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2591FEED4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2591FF340(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_2591FF340(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_259212A70();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_259212C90();
        MEMORY[0x259CA1460](v10);
        v11 = sub_259212CD0() & v7;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591FF514(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2591FF590(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2591E1488(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2591E1488((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

char *sub_2591FF704(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v17 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    result = sub_2591E14A8(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v16 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        result = (v17)(&v20, &v19, &v18);
        if (v4)
        {

          return v18;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          result = sub_2591E14A8((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 16 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_21;
        }

        if (v16 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_2591FF888(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v18 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v22 = MEMORY[0x277D84F90];
    result = sub_2591E14C8(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v22;
      v10 = v5 - a3;
      if (v5 < a3)
      {
        v10 = 0;
      }

      v16 = v7;
      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v20 = a3 + v9;
        result = (v18)(&v21, &v20, &v19);
        if (v4)
        {

          return v19;
        }

        v12 = v5;
        v13 = v21;
        v22 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_2591E14C8((v14 > 1), v15 + 1, 1);
          v8 = v22;
        }

        *(v8 + 16) = v15 + 1;
        *(v8 + 8 * v15 + 32) = v13;
        if (v12 < a3)
        {
          goto LABEL_21;
        }

        if (v17 == ++v9)
        {
          goto LABEL_22;
        }

        v5 = v12;
        if (v11 == v16)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2591FFA10(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2591E1508(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2591E1508((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2591FFB84(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2591E1528(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2591E1528((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 4 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

double sub_2591FFCF8@<D0>(uint64_t a1@<X8>)
{
  sub_2591FFD44(v5);
  if (!v1)
  {
    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_2591FFD44@<X0>(unint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_2592126F0();
  v36 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_259212770();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_259212790();
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = v39;
  sub_2592127B0();
  if (v16)
  {
    v20 = v41;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v22 = v20;
  }

  else
  {
    v34 = v3;
    v39 = v1;
    v17 = v37;
    v18 = *(v38 + 32);
    v38 += 32;
    v19 = v18;
    v18(v12, v15, v37);
    sub_259212780();
    sub_259212750();
    sub_259212760();
    sub_2592127C0();
    v19(v12, v9, v17);
    v23 = v34;
    sub_2592126E0();
    sub_259202A84(&v41, &v42);
    v24 = v49;
    v25 = v39;
    v26 = v36;
    if (v49 < 0)
    {
      v32 = v42 & 1;
      v40 = v42 & 1;
      sub_259202A30();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v33 = v32;
      return (*(v26 + 8))(v23, v25);
    }

    else
    {
      v27 = v48;
      v28 = v47;
      v29 = v46;
      v30 = (v43 << 8) | ((v44 | (v45 << 16)) << 40) | v42;

      sub_259202C58(&v42);
      result = (*(v26 + 8))(v23, v25);
      v31 = v35;
      *v35 = v30;
      *(v31 + 2) = v29;
      v31[2] = v28;
      v31[3] = v27;
      *(v31 + 32) = v24 & 1;
    }
  }

  return result;
}

uint64_t sub_259200214()
{
  v0 = sub_2592126F0();
  v28 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_259212770();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_259212790();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = v31;
  sub_2592127B0();
  if (v14)
  {
    v16 = v33;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v18 = v16;
  }

  else
  {
    v27 = v2;
    v31 = v0;
    v15 = *(v29 + 32);
    v15(v10, v13, v30);
    sub_259212780();
    sub_259212750();
    sub_259212760();
    sub_2592127C0();
    v15(v10, v7, v30);
    v19 = v27;
    sub_2592126E0();
    v20 = sub_2592126A0();
    if (v20)
    {
      v21 = v31;
      if (v20 == 1)
      {
        v22 = sub_259202920();
        v23 = v28;
        v24 = v22 & 1;
        v32 = v22 & 1;
        sub_259202A30();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v25 = v24;
        return (*(v23 + 8))(v19, v21);
      }

      else
      {
        result = sub_259212B90();
        __break(1u);
      }
    }

    else
    {
      return (*(v28 + 8))(v19, v31);
    }
  }

  return result;
}

uint64_t sub_2592006C4(uint64_t a1)
{
  v3 = sub_2592126F0();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_259212770();
  MEMORY[0x28223BE20](v5 - 8);
  v40 = sub_259212790();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v11;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 16);
  v19 = (a1 + 32);
  while (v18 != v16)
  {
    v20 = v19[v16++];
    v21 = *(v20 + 2);
    if (v21 >= 0x10)
    {
      v21 = 16;
    }

    v22 = __OFADD__(v17, v21);
    v17 += v21;
    if (v22)
    {
      __break(1u);
      break;
    }
  }

  v22 = __OFADD__(v17, 8);
  v23 = v17 + 8;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v23, 8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v42 = 0;
    v43 = 0xE000000000000000;

    sub_259212B00();
    MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CA1040](0xD000000000000037, 0x80000002592601A0);
    v41 = *(v15 + 2);
    v31 = sub_259212BE0();
    MEMORY[0x259CA1040](v31);

    while (1)
    {
LABEL_23:
      sub_259212B90();
      __break(1u);
    }
  }

  v38 = v13;
  sub_2592127B0();
  if (v1)
  {
    v24 = v44;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v26 = v24;
  }

  else
  {
    v33 = *(v6 + 32);
    v34 = v6 + 32;
    v33(v39, v15, v40);
    sub_259212780();
    sub_259212750();
    sub_259212750();
    if (v18)
    {
      do
      {
        v15 = *v19;
        if (*(*v19 + 2) != 16)
        {
          goto LABEL_22;
        }

        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();

        ++v19;
      }

      while (--v18);
    }

    sub_259212760();
    sub_2592127C0();
    v33(v39, v9, v40);
    v27 = v37;
    sub_2592126E0();
    v28 = sub_2592126A0();
    if (v28)
    {
      if (v28 != 1)
      {
        goto LABEL_23;
      }

      v29 = sub_259202920() & 1;
      LOBYTE(v42) = v29;
      sub_259202A30();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v30 = v29;
    }

    return (*(v35 + 8))(v27, v36);
  }

  return result;
}

uint64_t sub_259200D24(uint64_t a1)
{
  v3 = sub_2592126F0();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_259212770();
  MEMORY[0x28223BE20](v5 - 8);
  v40 = sub_259212790();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v11;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 16);
  v19 = (a1 + 32);
  while (v18 != v16)
  {
    v20 = v19[v16++];
    v21 = *(v20 + 2);
    if (v21 >= 0x10)
    {
      v21 = 16;
    }

    v22 = __OFADD__(v17, v21);
    v17 += v21;
    if (v22)
    {
      __break(1u);
      break;
    }
  }

  v22 = __OFADD__(v17, 8);
  v23 = v17 + 8;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v23, 8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v42 = 0;
    v43 = 0xE000000000000000;

    sub_259212B00();
    MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CA1040](0xD000000000000037, 0x80000002592601A0);
    v41 = *(v15 + 2);
    v31 = sub_259212BE0();
    MEMORY[0x259CA1040](v31);

    while (1)
    {
LABEL_23:
      sub_259212B90();
      __break(1u);
    }
  }

  v38 = v13;
  sub_2592127B0();
  if (v1)
  {
    v24 = v44;
    type metadata accessor for TransportError(0);
    sub_25920249C(&qword_27F99BCC8, 255, type metadata accessor for TransportError, MEMORY[0x277D714C0]);
    result = swift_allocError();
    *v26 = v24;
  }

  else
  {
    v33 = *(v6 + 32);
    v34 = v6 + 32;
    v33(v39, v15, v40);
    sub_259212780();
    sub_259212750();
    sub_259212750();
    if (v18)
    {
      do
      {
        v15 = *v19;
        if (*(*v19 + 2) != 16)
        {
          goto LABEL_22;
        }

        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();
        sub_259212730();

        ++v19;
      }

      while (--v18);
    }

    sub_259212760();
    sub_2592127C0();
    v33(v39, v9, v40);
    v27 = v37;
    sub_2592126E0();
    v28 = sub_2592126A0();
    if (v28)
    {
      if (v28 != 1)
      {
        goto LABEL_23;
      }

      v29 = sub_259202920() & 1;
      LOBYTE(v42) = v29;
      sub_259202A30();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v30 = v29;
    }

    return (*(v35 + 8))(v27, v36);
  }

  return result;
}

uint64_t sub_259201378(uint64_t a1)
{
  if (*(a1 + 16) == 16)
  {
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    sub_259212730();
    return sub_259212730();
  }

  else
  {
    sub_259212B00();
    MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CA1040](0xD000000000000037, 0x80000002592601A0);
    v2 = sub_259212BE0();
    MEMORY[0x259CA1040](v2);

    result = sub_259212B90();
    __break(1u);
  }

  return result;
}

uint64_t sub_259201504()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25920153C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2592127A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  sub_2592127E0();
  swift_allocObject();
  v9 = sub_2592127D0();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_25920166C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v5 = v3;
  v86 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCD8, &qword_259226B18);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v82 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v82 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = sub_259212770();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v89 = v20;
  v91 = v21;
  v87 = v23;
  v23(v20, 1, 1);
  v90 = a1;
  v24 = sub_259202E7C();
  if (v24 <= 1)
  {
    if (!v24)
    {
      v25 = v90;
      v26 = sub_2592126C0();
      MEMORY[0x28223BE20](v26);
      v80 = v25;
      v28 = sub_2591FF888(sub_259202FDC, (&v82 - 4), 0, v27);
      if (v4)
      {
        v29 = v89;
        if ((*(v22 + 48))(v89, 1, v91) != 1)
        {
          sub_259203008(v29);
        }

        v30 = sub_2592126F0();
        result = (*(*(v30 - 8) + 8))(v25, v30);
        LODWORD(v32) = v28;
LABEL_39:
        *v88 = v32;
        return result;
      }

      v50 = v5[6];
      v51 = v5[7];
      __swift_project_boxed_opaque_existential_1(v5 + 3, v50);
      (*(v51 + 32))(v28, v50, v51);

      v67 = v89;
      v68 = v85;
      sub_2592126D0();
      v90 = 0;
      v69 = v91;
      (v87)(v68, 0, 1, v91);
      v53 = *(v22 + 48);
      if (v53(v67, 1, v69) != 1)
      {
        sub_259203008(v67);
      }

      sub_259203070(v68, v67);
      v52 = v91;
      if (v53(v67, 1, v91))
      {
        goto LABEL_47;
      }

LABEL_43:
      sub_259212730();
      goto LABEL_47;
    }

    v37 = v5[6];
    v38 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v37);
    (*(v38 + 8))(&v94, v37, v38);
    v39 = v22;
    if (v4)
    {
      v93 = v4;
      v40 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
      if (swift_dynamicCast())
      {

        v41 = v92;
        v42 = 0;
        v85 = 0;
        v43 = 0;
        v44 = 128;
        goto LABEL_27;
      }

      v81 = 0;
      v80 = 215;
LABEL_57:
      result = sub_259212B90();
      __break(1u);
      return result;
    }

    v82 = v22;
    v54 = v94;
    v55 = v95;
    v56 = v96;
    v57 = v97;
    v44 = v98;
    v105 = v94;
    v99 = v97;
    sub_259203168(&v105, &v93);
    sub_2592031B4(&v99, &v93);
    v58 = sub_259202D78(v54, v57);
    v84 = v54;
    v59 = v54;
    v83 = v55;
    v85 = v56;
    v42 = v57;
    sub_259203128(v59, v55, v56, v57, v44);
    if (!__OFADD__(v58, 1))
    {
      v43 = v83;
      v41 = v84;
      v39 = v82;
LABEL_27:
      sub_2592126D0();
      LODWORD(v84) = v44;
      v90 = 0;
      v62 = v91;
      (v87)(v17, 0, 1, v91);
      v63 = v89;
      v87 = *(v39 + 48);
      if (v87(v89, 1, v62) != 1)
      {
        sub_259203008(v63);
      }

      sub_259203070(v17, v63);
      v67 = v63;
      if (v87(v63, 1, v91))
      {
        v64 = v41;
        v65 = v43;
        v66 = v85;
      }

      else
      {
        v71 = v43;
        v72 = v85;
        v100 = v41;
        v73 = v71;
        v101 = v71;
        v102 = v85;
        v103 = v42;
        v104 = v84;
        sub_259212730();
        v74 = v90;
        v75 = sub_259202840(&v100);
        if (v74)
        {
          LODWORD(v32) = v75;
          sub_259203128(v41, v73, v72, v42, v84);
          result = (v87)(v63, 1, v91);
          if (result != 1)
          {
            result = sub_259203008(v63);
          }

          goto LABEL_39;
        }

        v90 = 0;
        v64 = v41;
        v65 = v73;
        v66 = v72;
      }

      sub_259203128(v64, v65, v66, v42, v84);
      v52 = v91;
      v53 = v87;
      goto LABEL_47;
    }

    __break(1u);
LABEL_55:

    v81 = 0;
    v80 = 228;
    goto LABEL_57;
  }

  if (v24 != 2)
  {
    v45 = v90;
    v46 = sub_2592126C0();
    MEMORY[0x28223BE20](v46);
    v80 = v45;
    v32 = sub_2591FF888(sub_259202FDC, (&v82 - 4), 0, v47);
    if (v4)
    {
      v48 = v89;
      if ((*(v22 + 48))(v89, 1, v91) != 1)
      {
        sub_259203008(v48);
      }

      v49 = sub_2592126F0();
      result = (*(*(v49 - 8) + 8))(v45, v49);
      goto LABEL_39;
    }

    v60 = v5[6];
    v61 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v60);
    (*(v61 + 24))(v32, v60, v61);
    v67 = v89;

    sub_2592126D0();
    v90 = 0;
    v52 = v91;
    (v87)(v11, 0, 1, v91);
    v70 = *(v22 + 48);
    if (v70(v67, 1, v52) != 1)
    {
      sub_259203008(v67);
    }

    sub_259203070(v11, v67);
    v53 = v70;
    if (v70(v67, 1, v52))
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v33 = v5[6];
  v34 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v33);
  (*(v34 + 16))(v33, v34);
  if (v4)
  {
    v93 = v4;
    v35 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
    if (!swift_dynamicCast())
    {
      goto LABEL_55;
    }

    v36 = v92;
  }

  else
  {
    v36 = 2;
  }

  v67 = v89;
  sub_2592126D0();
  v90 = 0;
  v52 = v91;
  (v87)(v14, 0, 1, v91);
  v53 = *(v22 + 48);
  if (v53(v67, 1, v52) != 1)
  {
    sub_259203008(v67);
  }

  sub_259203070(v14, v67);
  if (v53(v67, 1, v52))
  {
    goto LABEL_47;
  }

  if (v36 == 2)
  {
    goto LABEL_43;
  }

  sub_259212730();
  sub_259212750();
LABEL_47:
  v76 = (v53)(v67, 1, v52);
  v77 = v76;
  if (v76 == 1)
  {
    v78 = v86;
  }

  else
  {
    v78 = v86;
    if (v76)
    {
      sub_259203008(v67);
      v77 = 1;
    }

    else
    {
      sub_259212760();
      v77 = 0;
    }
  }

  v79 = sub_259212790();
  return (*(*(v79 - 8) + 56))(v78, v77, 1, v79);
}

uint64_t sub_259202354()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_259202394@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_25920166C(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_25920249C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2592024E4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v8 = a1;
  v4 = sub_2591FF590(sub_259203580, v7, 0, 16);
  v6[2] = a1;
  result = sub_2591FFA10(sub_259202CE4, v6, 0, 4);
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_259202570(uint64_t a1, void *a2)
{
  result = sub_259201378(a1);
  if (!v2)
  {
    if (a2[2] == 4)
    {
      if (*(a2[4] + 16) == 4)
      {
        v5 = result;

        sub_259212720();
        sub_259212720();
        sub_259212720();
        sub_259212720();

        if (*(a2[5] + 16) == 4)
        {

          sub_259212720();
          sub_259212720();
          sub_259212720();
          sub_259212720();

          if (*(a2[6] + 16) == 4)
          {

            sub_259212720();
            sub_259212720();
            sub_259212720();
            sub_259212720();

            if (*(a2[7] + 16) == 4)
            {

              sub_259212720();
              sub_259212720();
              sub_259212720();
              sub_259212720();

              return v5;
            }
          }
        }
      }

      sub_259212B00();
      MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
      MEMORY[0x259CA1040](0xD000000000000036, 0x80000002592603E0);
      v6 = sub_259212BE0();
      MEMORY[0x259CA1040](v6);
    }

    else
    {
      sub_259212B00();
      MEMORY[0x259CA1040](0x5F2865646F636E65, 0xEA0000000000293ALL);
      MEMORY[0x259CA1040](0xD000000000000036, 0x80000002592603E0);
      v7 = sub_259212BE0();
      MEMORY[0x259CA1040](v7);
    }

    result = sub_259212B90();
    __break(1u);
  }

  return result;
}

uint64_t sub_259202840(uint64_t *a1)
{
  result = sub_259201378(*a1);
  if (!v1)
  {
    sub_259212740();
    sub_259212710();
    v4 = a1[3];
    v5 = *(v4 + 16);
    sub_259212750();
    if (v5)
    {
      v6 = (v4 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_259202570(v7, v8);

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    return sub_259212700();
  }

  return result;
}

uint64_t sub_259202920()
{
  v0 = sub_2592126C0();
  if (v0 == 0x6FAA2922310B6F8DLL)
  {
    return 1;
  }

  if (v0 == 0xB42DFB433BE2CD9ELL)
  {
    return 0;
  }

  sub_259212B00();

  v2 = sub_259212BE0();
  MEMORY[0x259CA1040](v2);

  result = sub_259212B90();
  __break(1u);
  return result;
}

unint64_t sub_259202A30()
{
  result = qword_27F99BCD0;
  if (!qword_27F99BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BCD0);
  }

  return result;
}

uint64_t sub_259202A84@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2592126A0();
  if (v6 == 1)
  {
    result = sub_259202920();
    LODWORD(v8) = result;
    if (!v3)
    {
      v9 = 0;
      v10 = result & 1;
      v11 = 0x80;
      v12 = 0;
      v8 = 0;
LABEL_9:
      *a2 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v12;
      *(a2 + 24) = v8;
      *(a2 + 32) = v11;
      return result;
    }

    goto LABEL_7;
  }

  if (!v6)
  {
    MEMORY[0x28223BE20](v6);
    v18 = v2;
    v10 = sub_2591FF590(sub_259202C88, v17, 0, 16);
    v13 = sub_2592126B0();
    sub_259212680();
    v12 = v14;
    v15 = sub_2592126C0();
    MEMORY[0x28223BE20](v15);
    v18 = v2;
    v8 = sub_2591FF704(sub_259202CC4, v17, 0, v16);
    if (!v3)
    {
      result = sub_259212670();
      v9 = v13;
      v11 = result & 1;
      goto LABEL_9;
    }

LABEL_7:
    *a1 = v8;
    return result;
  }

  result = sub_259212B90();
  __break(1u);
  return result;
}

uint64_t sub_259202C88@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2592126A0();
  *a2 = result;
  return result;
}

uint64_t sub_259202CE4@<X0>(uint64_t *a1@<X8>)
{
  v4[2] = *(v1 + 16);
  result = sub_2591FFB84(sub_259202D3C, v4, 0, 4);
  *a1 = result;
  return result;
}

unint64_t sub_259202D78(unint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = v3 + 12;
  v5 = v3 >= 0x10;
  v6 = 28;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = (a2 + 40);
  v8 = *(a2 + 16) + 1;
  while (--v8)
  {
    v12 = *v7;
    v13 = *(*(v7 - 1) + 16);
    if (v13 >= 0x10)
    {
      v13 = 16;
    }

    v14 = v12[2];
    if (v14)
    {
      v15 = *(v12[4] + 16);
      if (v15 >= 4)
      {
        v9 = 16;
      }

      else
      {
        v9 = 4 * v15;
      }

      if (v14 != 1)
      {
        v16 = *(v12[5] + 16);
        result = 4 * v16;
        v17 = v16 >= 4 ? 16 : 4 * v16;
        v9 += v17;
        if (v14 != 2)
        {
          v18 = *(v12[6] + 16);
          result = 4 * v18;
          v19 = v18 >= 4 ? 16 : 4 * v18;
          v9 += v19;
          if (v14 != 3)
          {
            v20 = *(v12[7] + 16);
            if (v20 >= 4)
            {
              v21 = 16;
            }

            else
            {
              v21 = 4 * v20;
            }

            v9 += v21;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v7 += 2;
    v10 = v13 + v9;
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v11 = __OFADD__(v2, 8);
  v22 = v2 + 8;
  if (v11)
  {
    goto LABEL_31;
  }

  v11 = __OFADD__(v6, v22);
  v23 = v6 + v22;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_259202E7C()
{
  v0 = sub_2592126C0();
  if (v0 <= 0xDD6C75EEEEDBA98)
  {
    if (v0 == 0x9AF4893434D95D9FLL)
    {
      return 0;
    }

    if (v0 == 0x9631EEA464C9ABELL)
    {
      return 2;
    }

    goto LABEL_11;
  }

  if (v0 == 0x4ED3422D96FF530FLL)
  {
    return 3;
  }

  if (v0 != 0xDD6C75EEEEDBA99)
  {
LABEL_11:
    sub_259212B00();

    v2 = sub_259212BE0();
    MEMORY[0x259CA1040](v2);

    result = sub_259212B90();
    __break(1u);
    return result;
  }

  return 1;
}

uint64_t sub_259203008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCD8, &qword_259226B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_259203070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BCD8, &qword_259226B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2592030E0@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t *a2@<X8>)
{
  v5[2] = *(v2 + 16);
  result = sub_2591FF590(a1, v5, 0, 16);
  *a2 = result;
  return result;
}

uint64_t sub_259203128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0x80) == 0)
  {
  }

  return v5;
}

uint64_t sub_2592031B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8F8, &qword_259225AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_259203244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_259203294(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = -a2 << 32;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2592032F4(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 8) = *(result + 8);
  *(result + 32) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExclaveError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExclaveError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_259203490()
{
  result = qword_27F99BCE0;
  if (!qword_27F99BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BCE0);
  }

  return result;
}

uint64_t sub_2592034E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25920352C(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ULHomeSlamLocalizationPipeline::generateBlueDot(NSObject **a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v9, v10, v11, "#HomeSlam, blue dot clustering didn't find any clusters!", "{msg%{public}.0s:#HomeSlam, blue dot clustering didn't find any clusters!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13);
  }

  v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

void CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted()
{
  __assert_rtn("parametrizedPercentileSorted", "CLReducerFunction.h", 93, "(startIndex >= 0) && (startIndex <= static_cast<int>(container.size()) - 2)");
}

{
  __assert_rtn("parametrizedPercentileSorted", "CLReducerFunction.h", 81, "prctile >= 0.0 && prctile <= 1.0");
}

{
  __assert_rtn("parametrizedPercentileSorted", "CLReducerFunction.h", 80, "container.size()>0");
}

void ULHomeSlamLocalizationPipeline::resetParticles(NSObject **a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v9, v10, v11, "#HomeSlam, to reset particles there must be trajectories!", "{msg%{public}.0s:#HomeSlam, to reset particles there must be trajectories!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13);
  }

  v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

void boost::random::discrete_distribution<int,double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>()
{
  __assert_rtn("uniform_int_distribution", "uniform_int_distribution.hpp", 337, "min_arg <= max_arg");
}

{
  __assert_rtn("operator()", "discrete_distribution.hpp", 430, "!_impl._alias_table.empty()");
}

void ULEndpointClusteringAlgorithm::pruneClusters()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_15);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_15);
}

void ULEndpointClusteringAlgorithm::createDistanceFunction(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No min_base_rssi provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No min_base_rssi provided in dictionary", "{msg%{public}.0s:No min_base_rssi provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No min_base_rssi provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void boost::uuids::string_generator::get_value()
{
  {
    boost::uuids::string_generator::get_value(char)const::digits_end = &boost::uuids::string_generator::get_value(char)const::digits_begin[boost::uuids::string_generator::get_value(char)const::digits_len];
  }
}

void ULEndpointPlacementGenerator::placeEndpoints(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Expected a sorted vector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Expected a sorted vector", "{msg%{public}.0s:Expected a sorted vector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Expected a sorted vector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void _CLLogObjectForCategory_MicroLocation_Default()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_16);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_18);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_19);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_22);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_23);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_24);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_26);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_27);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_28);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_867);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_32);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_36);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_37);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_43);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_44);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_45);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_100);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_101);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_103);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_104);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_105);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_118);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_121);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_125);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_131);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_142);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_143);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_148);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_149);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_151);
}

void cva::MatrixData<float,0ul,0ul,false>::allocate()
{
  __assert_rtn("allocate", "matrixdata.h", 479, "(!m_data) || cva::detail::assertMessage(No matrix data must be allocated.)");
}

{
  __assert_rtn("allocate", "matrixdata.h", 490, "(m_data) || cva::detail::assertMessage(Matrix data must be allocated on exit.)");
}

void EndpointMinimizerFunc::operator()(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:#HomeSlam, minimizer input vector size not equal gradient vector size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "#HomeSlam, minimizer input vector size not equal gradient vector size!", "{msg%{public}.0s:#HomeSlam, minimizer input vector size not equal gradient vector size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:#HomeSlam, minimizer input vector size not equal gradient vector size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/HomeSlam/Mapper/ULEndpointPlacementGenerator.mm", 61, "operator()");
  __break(1u);
}

void LBFGSpp::BFGSMat<float,true>::add_correction()
{
  __assert_rtn("column", "matrixmixin.h", 1091, "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)");
}

{
  __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
}

{
  __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
}

void EndpointMinimizerFunc::targetFuncValue(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!", "{msg%{public}.0s:#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:#HomeSlam, mapper endpoint minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/HomeSlam/Mapper/ULEndpointPlacementGenerator.mm", 98, "targetFuncValue");
  LBFGSpp::BFGSMat<float,true>::apply_Wtv();
}

void LBFGSpp::BFGSMat<float,true>::apply_Wtv()
{
  __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
}

{
  __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
}

void ULHomeSlamMapper::filterRelevantFingerprintsFromSegments(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_0_0(v3, v4);
  *(v6 + 20) = v5;
  *(v6 + 30) = "assert";
  *(v6 + 38) = v7;
  *(v6 + 40) = "fingerprints.find(fingerprintUuidAtStart) != fingerprints.end()";
  _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Fingerprint at the start of a segment is not part of the fingerprints to be mapped, fingerprintUuidAtStart:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v9, 0x30u);
  operator delete(a1);
}

{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_0_0(v3, v4);
  *(v6 + 20) = v5;
  *(v6 + 30) = "assert";
  *(v6 + 38) = v7;
  *(v6 + 40) = "fingerprints.find(fingerprintUuidAtEnd) != fingerprints.end()";
  _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Fingerprint at the end of a segment is not part of the fingerprints to be mapped, fingerprintUuidAtEnd:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v9, 0x30u);
  operator delete(a1);
}

void ULRFGroupGenerator::placeRFClusters(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, mapper minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, mapper minimizer got mis-match between X size and expected size!", "{msg%{public}.0s:#HomeSlam, mapper minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, mapper minimizer got mis-match between X size and expected size!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void ULSegmentGenerator::getNumberOfUpdatesInWindow(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, static window size must be more than 0 seconds!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, static window size must be more than 0 seconds!", "{msg%{public}.0s:#HomeSlam, static window size must be more than 0 seconds!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, static window size must be more than 0 seconds!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/HomeSlam/Mapper/ULSegmentGenerator.mm", 254, "getNumberOfUpdatesInWindow");
  ULWalkwayGenerator::createWalkways();
}

void ULWalkwayGenerator::createWalkways()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_20);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_20);
}

void ULWalkwayGenerator::reducePoints(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, minimum cluster size must be larger than zero!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, minimum cluster size must be larger than zero!", "{msg%{public}.0s:#HomeSlam, minimum cluster size must be larger than zero!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, minimum cluster size must be larger than zero!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void CLMicroLocationLegacyClient::requestLocalizationIfPossible()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_21);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_21);
}

void std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void ULBinaryRoiNullSpaceLocalizationAlgorithm::localize(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBinaryRoiNullSpaceLocalizationAlgorithm.mm", 17, "localize");
  __break(1u);
}

{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "must have fingerprints distance function", "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBinaryRoiNullSpaceLocalizationAlgorithm.mm", 18, "localize");
  __break(1u);
}

uint64_t ULBinaryRoiNullSpaceLocalizationAlgorithm::getAdjustmentPowerForBinaryRoiDetectionThreshold(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Detection threshold must be: 0 < THR < 1.0!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v26, v27, v28, v29);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Detection threshold must be: 0 < THR < 1.0!", "{msg%{public}.0s:Detection threshold must be: 0 < THR < 1.0!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v26, v27, v28, v29);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Detection threshold must be: 0 < THR < 1.0!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v26, v27, v28, v29);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBinaryRoiNullSpaceLocalizationAlgorithm.mm", 140, "getAdjustmentPowerForBinaryRoiDetectionThreshold");
  return ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap(v24);
}

void ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Missing key kSettingsNullSpaceNotRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Missing key kSettingsNullSpaceNotRoiPercentile", "{msg%{public}.0s:Missing key kSettingsNullSpaceNotRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Missing key kSettingsNullSpaceNotRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBinaryRoiNullSpaceLocalizationAlgorithm.mm", 109, "createReducedDistancesMap");
  __break(1u);
}

{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Missing key kSettingsNullSpaceRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Missing key kSettingsNullSpaceRoiPercentile", "{msg%{public}.0s:Missing key kSettingsNullSpaceRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Missing key kSettingsNullSpaceRoiPercentile, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBinaryRoiNullSpaceLocalizationAlgorithm.mm", 108, "createReducedDistancesMap");
  __break(1u);
}

void ULBlueAtlasLocalizationAlgorithm::localize(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBlueAtlasLocalizationAlgorithm.mm", 25, "localize");
  __break(1u);
}

{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "must have fingerprints distance function", "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULBlueAtlasLocalizationAlgorithm.mm", 29, "localize");
  __break(1u);
}

void ULBlueAtlasLocalizationAlgorithm::localize(char *a1, uint8_t *buf, os_log_t log)
{
  v4 = *a1;
  v5 = a1[23] < 0;
  *buf = 68289795;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = v6;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "model.modelType == CLMicroLocationProto::ModelType::BLUE_ATLAS";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Blue Atlas Localization, model type is not BLUE_ATLAS!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v25, v26, v27, v28);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Look up table thresholds and scores vectors must be the same size", "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v25, v26, v27, v28);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v25, v26, v27, v28);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationBlueAtlasAlgorithms.h", 21, "calculateScoreForValue");
  CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(v24);
}

{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v25, v26, v27, v28);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "Look up table thresholds must be sorted", "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v25, v26, v27, v28);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v25, v26, v27, v28);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationBlueAtlasAlgorithms.h", 25, "calculateScoreForValue");
  ULCosineSimilarityLocalizationAlgorithm::localize(v24);
}

{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "Look up table thresholds must be sorted", "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Look up table thresholds must be sorted, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationBlueAtlasAlgorithms.h", 25, "calculateScoreForValue");
  CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
}

void ULCosineSimilarityLocalizationAlgorithm::localize(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULCosineSimilarityLocalizationAlgorithm.mm", 18, "localize");
  __break(1u);
}

void ULCosineSimilarityLocalizationAlgorithm::localize(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = v4;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "model.modelType == CLMicroLocationProto::ModelType::SIMILARITY_LIST";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CosineSimilarityLocalization, model type is not similarity list!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void ULAlgorithms::createReducerFunction<std::multiset<double>,double>()
{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 169, "false");
}

{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 159, "false");
}

{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 151, "false");
}

{
  __assert_rtn("createReducerFunction", "ULAlgorithms.h", 127, "static_cast<uint32_t>(type) < static_cast<uint32_t>(ReducerFunctionType::kTypeCount)");
}

void CLReducerFunction<std::multiset<double>,double>::parameterizedTruncatedMeanValueSorted()
{
  __assert_rtn("parameterizedTruncatedMeanValueSorted", "CLReducerFunction.h", 65, "numElements>0");
}

{
  __assert_rtn("parameterizedTruncatedMeanValueSorted", "CLReducerFunction.h", 61, "minPercentile >= 0 && minPercentile <= 1 && maxPercentile >= minPercentile && maxPercentile <= 1");
}

{
  __assert_rtn("parameterizedTruncatedMeanValueSorted", "CLReducerFunction.h", 60, "container.size()>0");
}

void ULNullSpaceLocalizationAlgorithm::localize(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "Cannot localize on invalid model!", "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Cannot localize on invalid model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULNullSpaceLocalizationAlgorithm.mm", 25, "localize");
  __break(1u);
}

{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "must have fingerprints distance function", "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:must have fingerprints distance function, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/Algorithms/ULNullSpaceLocalizationAlgorithm.mm", 26, "localize");
  __break(1u);
}

void ULHomeSlamLocalizer::localize(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "homeslam can't localize without a model!", "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULHomeSlamLocalizer.mm", 21, "localize");
  __break(1u);
}

void ULHomeSlamLocalizer::localize(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "homeslam can't localize without a model!", "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:homeslam can't localize without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void ULHomeSlamLocalizer::ioError(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:homeslam can't reset without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v24, v25, v26, v27);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "homeslam can't reset without a model!", "{msg%{public}.0s:homeslam can't reset without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v24, v25, v26, v27);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:homeslam can't reset without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULHomeSlamLocalizer.mm", 55, "ioError");
  ULHomeSlamLocalizer::reset(v23);
}

void ULHomeSlamLocalizer::reset(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:got homeslam reset state without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v24, v25, v26, v27);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "got homeslam reset state without a model!", "{msg%{public}.0s:got homeslam reset state without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v24, v25, v26, v27);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:got homeslam reset state without a model!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULHomeSlamLocalizer.mm", 60, "reset");
  ULLocalizationController::reset(v23);
}

void ULLocalizationController::reset(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Exactly one of miloModel or homeSlamModel must have a value", "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULLocalizationController.mm", 27, "reset");
  __break(1u);
}

void ULLocalizationController::localizeAllModels(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_3_0(v5, v6, v7);
  *(v8 + 30) = "assert";
  *(v8 + 38) = 2081;
  *(v8 + 40) = "modelAndStates->states.count(deviceIdentifier) > 0";
  _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:There is no localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v10, 0x30u);
}

{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_3_0(v5, v6, v7);
  *(v8 + 30) = "assert";
  *(v8 + 38) = 2081;
  *(v8 + 40) = "modelAndStates->states.count(odometrySourceDeviceClass) > 0";
  _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Trying to use HomeSlam localizer without localizerState for the device , device:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v10, 0x30u);
}

void ULLocalizationController::localizeAllModels(NSObject **a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v9, v10, v11, "Exactly one of miloModel or homeSlamModel must have a value", "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13);
  }

  v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v9, v10, v11, "Exactly one of miloModel or homeSlamModel must have a value", "{msg%{public}.0s:Exactly one of miloModel or homeSlamModel must have a value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13);
  }

  v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

void ULRfClusterLocalizer::localize(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:there must be a milo model for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "there must be a milo model for localization!", "{msg%{public}.0s:there must be a milo model for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:there must be a milo model for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULRfClusterLocalizer.mm", 25, "localize");
  __break(1u);
}

{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:there must be a milo model metadata for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "there must be a milo model metadata for localization!", "{msg%{public}.0s:there must be a milo model metadata for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:there must be a milo model metadata for localization!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Localizer/ULRfClusterLocalizer.mm", 26, "localize");
  __break(1u);
}

void ULRfClusterLocalizer::localize()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_29);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_29);
}

uint64_t ULLogicAdapterImpl::ULLogicAdapterImpl(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](a2, v6);
  }

  result = *a3;
  *a3 = 0;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

void CLHierarchicalClustering::getClusterLabels(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:minNumCluster must be greater than zero, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "minNumCluster must be greater than zero", "{msg%{public}.0s:minNumCluster must be greater than zero, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:minNumCluster must be greater than zero, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/MachineLearning/CLHierarchicalClustering.mm", 189, "getClusterLabels");
  __break(1u);
}

{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:distanceThresholdVector must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "distanceThresholdVector must not be empty", "{msg%{public}.0s:distanceThresholdVector must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:distanceThresholdVector must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/MachineLearning/CLHierarchicalClustering.mm", 188, "getClusterLabels");
  __break(1u);
}

void CLSqliteDatabase::init(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v2, v3, "{msg%{public}.0s:database init failed: db filename is empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v10, v11, v12, "database init failed: db filename is empty", "{msg%{public}.0s:database init failed: db filename is empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (OUTLINED_FUNCTION_4_0(v16))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v17, v18, "{msg%{public}.0s:database init failed: db filename is empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22);
  }
}

void CLSqliteDatabase::prepareStatementNoCache(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6(v2))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v3, v4, "{msg%{public}.0s:mutex locked assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v11, v12, v13, "mutex locked assertion failed", "{msg%{public}.0s:mutex locked assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_7(v17))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v18, v19, "{msg%{public}.0s:mutex locked assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Persistence/DataMigration/CLSqlite/CLSqliteDatabase.mm", 1407, "prepareStatementNoCache");
  CLSqliteDatabaseManager::instance();
}

void CLSqliteDatabaseManager::CLSqliteDatabaseManager()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_17);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_17);
}

void CLSqliteDatabaseManager::openDatabase(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:mutex assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "mutex assertion failed", "{msg%{public}.0s:mutex assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:mutex assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Persistence/DataMigration/CLSqlite/CLSqliteDatabaseManager.mm", 88, "openDatabase");
  __break(1u);
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void ULLabelDO::verifyData(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:label's data doesn't match its context layer type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "label's data doesn't match its context layer type", "{msg%{public}.0s:label's data doesn't match its context layer type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:label's data doesn't match its context layer type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Persistence/DataObjects/ULLabelDO.mm", 148, "verifyData");
  ULMapLabelDO::create(v6);
}

void ULMapLabelDO::create(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ULMapLabelDO::Create - RSSI is missing for WiFi label, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ULMapLabelDO::Create - RSSI is missing for WiFi label", "{msg%{public}.0s:ULMapLabelDO::Create - RSSI is missing for WiFi label, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ULMapLabelDO::Create - RSSI is missing for WiFi label, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_1_1(v2, a1);
  }
}

void ULModelDO::setModelType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:setModel: Invalid CLMicroLocationProto::ModelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setModel: Invalid CLMicroLocationProto::ModelType", "{msg%{public}.0s:setModel: Invalid CLMicroLocationProto::ModelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:setModel: Invalid CLMicroLocationProto::ModelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Persistence/DataObjects/ULModelDO.mm", 43, "setModelType");
  _CLLogObjectForCategory_MicroLocation_Default();
}

void CLMicroLocationProto::UwbRange::MergeFrom()
{
  __assert_rtn("set_datatype", "microlocation.pb.h", 11163, "::CLMicroLocationProto::DataType_IsValid(value)");
}

{
  __assert_rtn("set_devicetype", "microlocation.pb.h", 11342, "::CLMicroLocationProto::UwbRange_DeviceType_IsValid(value)");
}

void CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom()
{
  __assert_rtn("set_datatype", "microlocation.pb.h", 11761, "::CLMicroLocationProto::DataType_IsValid(value)");
}

{
  __assert_rtn("set_devicetype", "microlocation.pb.h", 11898, "::CLMicroLocationProto::HomeKitBluetoothRssi_DeviceType_IsValid(value)");
}

{
  __assert_rtn("set_hapversion", "microlocation.pb.h", 11921, "::CLMicroLocationProto::HomeKitBluetoothRssi_HAPVersion_IsValid(value)");
}

void CLMicroLocationProto::AnchorMetadata::MergeFrom()
{
  __assert_rtn("set_anchorstatus", "microlocation.pb.h", 13000, "::CLMicroLocationProto::AnchorStatus_IsValid(value)");
}

{
  __assert_rtn("set_datatype", "microlocation.pb.h", 13067, "::CLMicroLocationProto::DataType_IsValid(value)");
}

void CLMicroLocationProto::Model::MergeFrom()
{
  __assert_rtn("set_generationalgorithm", "microlocation.pb.h", 13962, "::CLMicroLocationProto::Model_GenerationAlgorithm_IsValid(value)");
}

{
  __assert_rtn("set_modeltype", "microlocation.pb.h", 13985, "::CLMicroLocationProto::ModelType_IsValid(value)");
}

{
  __assert_rtn("set_qualityindicator", "microlocation.pb.h", 14186, "::CLMicroLocationProto::Model_ModelQualityLevel_IsValid(value)");
}

{
  __assert_rtn("set_candidatequalityindicator", "microlocation.pb.h", 14209, "::CLMicroLocationProto::Model_ModelQualityLevel_IsValid(value)");
}

void CLMicroLocationProto::ReceivedEventAction::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 15670, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_receivedeventactiontype", "microlocation.pb.h", 15693, "::CLMicroLocationProto::ReceivedEventActionType_IsValid(value)");
}

void CLMicroLocationProto::RecordingRequest::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 15930, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_recordingrequesttype", "microlocation.pb.h", 15953, "::CLMicroLocationProto::RecordingRequestType_IsValid(value)");
}

void CLMicroLocationProto::MotionEvent::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 20455, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_status", "microlocation.pb.h", 20548, "::CLMicroLocationProto::MotionEvent_Status_IsValid(value)");
}

{
  __assert_rtn("set_screenon", "microlocation.pb.h", 20641, "::CLMicroLocationProto::MotionEvent_ScreenStatus_IsValid(value)");
}

void CLMicroLocationProto::RetrievedLoi::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 20787, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_reason", "microlocation.pb.h", 21020, "::CLMicroLocationProto::ChangedLoiReason_IsValid(value)");
}

void CLMicroLocationProto::TriggerEvent::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 23219, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_requesttype", "microlocation.pb.h", 23588, "::CLMicroLocationProto::TriggerRequestType_IsValid(value)");
}

{
  __assert_rtn("set_requeststatus", "microlocation.pb.h", 23611, "::CLMicroLocationProto::TriggerRequestStatus_IsValid(value)");
}

{
  __assert_rtn("set_reason", "microlocation.pb.h", 23634, "::CLMicroLocationProto::TriggerReason_IsValid(value)");
}

{
  __assert_rtn("set_motionstate", "microlocation.pb.h", 23727, "::CLMicroLocationProto::MotionState_IsValid(value)");
}

void CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 23754, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_numberofobservationsstate", "microlocation.pb.h", 23777, "::CLMicroLocationProto::NumberOfObservationsStates_IsValid(value)");
}

void CLMicroLocationProto::RecordingEvent::MergeFrom()
{
  __assert_rtn("set_eventtype", "microlocation.pb.h", 22591, "::CLMicroLocationProto::EventType_IsValid(value)");
}

{
  __assert_rtn("set_confidencelevel", "microlocation.pb.h", 23100, "::CLMicroLocationProto::ConfidenceLevel_IsValid(value)");
}

{
  __assert_rtn("set_motionstate", "microlocation.pb.h", 23192, "::CLMicroLocationProto::MotionState_IsValid(value)");
}

void ULProfileGenerator::generateSchedulingProfile(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Unsupported scheduling profile type, scheduling profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v10, v11, v12, "Unsupported scheduling profile type", "{msg%{public}.0s:Unsupported scheduling profile type, scheduling profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Unsupported scheduling profile type, scheduling profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULProfileGenerator.mm", 89, "generateSchedulingProfile");
  __break(1u);
}

void ULProfileGenerator::generateScanningProfile(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Unsupported scanning profile type, scanning profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v10, v11, v12, "Unsupported scanning profile type", "{msg%{public}.0s:Unsupported scanning profile type, scanning profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Unsupported scanning profile type, scanning profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULProfileGenerator.mm", 221, "generateScanningProfile");
  __break(1u);
}

void ULProfileGenerator::generateUwbTechnologyProfile(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Unsupported uwb technology profile type, uwb technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v10, v11, v12, "Unsupported uwb technology profile type", "{msg%{public}.0s:Unsupported uwb technology profile type, uwb technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Unsupported uwb technology profile type, uwb technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULProfileGenerator.mm", 310, "generateUwbTechnologyProfile");
  __break(1u);
}

void ULScanningProfile::ULScanningProfile(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:technologyConfigs should be indexed by ULTechnologyType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "technologyConfigs should be indexed by ULTechnologyType", "{msg%{public}.0s:technologyConfigs should be indexed by ULTechnologyType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:technologyConfigs should be indexed by ULTechnologyType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULScanningProfile.mm", 45, "ULScanningProfile");
  _CLLogObjectForCategory_MicroLocation_Default();
}

void scanProfileToScanType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ERROR, Invalid scan profile for scan type, scanningProfileIndex:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0_2();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ERROR, Invalid scan profile for scan type", "{msg%{public}.0s:ERROR, Invalid scan profile for scan type, scanningProfileIndex:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ERROR, Invalid scan profile for scan type, scanningProfileIndex:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULScanServiceUtilities.mm", 25, "scanProfileToScanType");
  __break(1u);
}

void ULSchedulingProfileManager::suspendProfile(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v10, v11, v12, "Invalid input idex", "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULSchedulingProfileManager.mm", 61, "suspendProfile");
  __break(1u);
}

void ULSchedulingProfileManager::resumeProfile(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v10, v11, v12, "Invalid input idex", "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULSchedulingProfileManager.mm", 71, "resumeProfile");
  __break(1u);
}

void ULSchedulingProfileManager::isProfileSuspended(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v10, v11, v12, "Invalid input idex", "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Invalid input idex, input index:%{public}lu, size of fSuspensionStatus:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULSchedulingProfileManager.mm", 86, "isProfileSuspended");
  __break(1u);
}

void ULSensorsDataHandler::State::setScanStartTS(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got new scan start indication without completion of current running scan, current Scan Activity startTS _s:%{public}.09f, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0_2();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got new scan start indication without completion of current running scan", "{msg%{public}.0s:Got new scan start indication without completion of current running scan, current Scan Activity startTS _s:%{public}.09f, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got new scan start indication without completion of current running scan, current Scan Activity startTS _s:%{public}.09f, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULSensorsDataHandler.mm", 105, "setScanStartTS");
  __break(1u);
}

void ULSensorsManager::onWiFiScanCompletion(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected scan still running after onWiFiScanCompletion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected scan still running after onWiFiScanCompletion", "{msg%{public}.0s:Unexpected scan still running after onWiFiScanCompletion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected scan still running after onWiFiScanCompletion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    return (*(v3 + 8))();
  }

  return result;
}

void ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid event type index, current event index:%{public}lu, MaxEvents:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v11, v12, v13, "Invalid event type index", "{msg%{public}.0s:Invalid event type index, current event index:%{public}lu, MaxEvents:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_11(v17))
  {
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid event type index, current event index:%{public}lu, MaxEvents:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/FiniteStateMachine/ULStateMachineImple.h", 47, "handleEvent");
  __break(1u);
}

{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid current state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v11, v12, v13, "Invalid current state index", "{msg%{public}.0s:Invalid current state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_11(v17))
  {
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid current state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/FiniteStateMachine/ULStateMachineImple.h", 45, "handleEvent");
  __break(1u);
}

void ULTriggerEngine::onScanComplete(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:scan completed without scan initiating trigger, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "scan completed without scan initiating trigger, this shouldn't happen", "{msg%{public}.0s:scan completed without scan initiating trigger, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:scan completed without scan initiating trigger, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULTriggerEngine.mm", 352, "onScanComplete");
  __break(1u);
}

void ULTriggerEngine::startPeriodicTriggers(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:scheduling proflie's periodic trigger already initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "scheduling proflie's periodic trigger already initialized", "{msg%{public}.0s:scheduling proflie's periodic trigger already initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:scheduling proflie's periodic trigger already initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULTriggerEngine.mm", 393, "startPeriodicTriggers");
  __break(1u);
}

void ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::enterState(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v11, v12, v13, "Invalid state index", "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_11(v17))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/FiniteStateMachine/ULStateMachineImple.h", 88, "enterState");
  __break(1u);
}

void ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::exitState(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_3_3(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_3(&dword_258FE9000, v11, v12, v13, "Invalid state index", "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_11(v17))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_2_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid state index, current state index:%{public}lu, MaxStates:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/FiniteStateMachine/ULStateMachineImple.h", 98, "exitState");
  ULTriggerEngineFSM::getTransitionTable();
}

void ULTriggerEngineFSM::getTransitionTable()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    bzero(&qword_281456580, 0x1B0uLL);

    __cxa_guard_release(_MergedGlobals);
  }
}

void ULTriggerEngineFSM::handleNewTriggerInIdle()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_110);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_110);
}

void ULTriggerEngineFSM::handleNewTriggerInScan(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:handle new trigger in scan without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "handle new trigger in scan without scan session context, this shouldn't happen", "{msg%{public}.0s:handle new trigger in scan without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:handle new trigger in scan without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULTriggerEngineFSM.mm", 144, "handleNewTriggerInScan");
  __break(1u);
}

void ULTriggerEngineFSM::enterThrottleState(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:entering throttle state without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "entering throttle state without scan session context, this shouldn't happen", "{msg%{public}.0s:entering throttle state without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:entering throttle state without scan session context, this shouldn't happen, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULTriggerEngineFSM.mm", 254, "enterThrottleState");
  ULTriggerQueue::logQueueFullError();
}

void ULTriggerQueue::logQueueFullError()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_111);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_111);
}

void ULUWBBridge::startForegroundSession(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid update range, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid update range", "{msg%{public}.0s:invalid update range, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid update range, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

void ULWiFiAssociationBridge::createAndStartWifiInterface()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_119);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_119);
}

void ULWiFiRssiBridge::createAndStartWifiInterface()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_120);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_120);
}

void ULModelLoader::modelDomain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v23 = *MEMORY[0x277D85DE8];
  v4 = _CLLogObjectForCategory_MicroLocation_Default(a1, a2, a3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported Service Type, ServiceType:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v5, v6, v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported Service Type", "{msg%{public}.0s:Unsupported Service Type, ServiceType:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v12 = _CLLogObjectForCategory_MicroLocation_Default(v9, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v3;
    v19 = 2082;
    v20 = "assert";
    v21 = 2081;
    v22 = "false";
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported Service Type, ServiceType:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ServiceManager/ULModelLoader.mm", 282, "modelDomain");
  __break(1u);
}

void ULService::uint64ToLocationTypesBitset(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Error converting uint to location types: Value does not fit into bitset, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error converting uint to location types: Value does not fit into bitset", "{msg%{public}.0s:Error converting uint to location types: Value does not fit into bitset, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Error converting uint to location types: Value does not fit into bitset, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ServiceManager/ULService.mm", 243, "uint64ToLocationTypesBitset");
  ULService::ingestLocalizationResults();
}

void ULService::ingestLocalizationResults()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_123);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_123);
}

void ULServiceManager::runWithConfiguration()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:legacyServiceUuid was provided for non static token, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "legacyServiceUuid was provided for non static token", "{msg%{public}.0s:legacyServiceUuid was provided for non static token, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:legacyServiceUuid was provided for non static token, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
}

void ULServiceManager::findOrCreateServiceEntryWithServiceId()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:create service for static token failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "create service for static token failed", "{msg%{public}.0s:create service for static token failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:create service for static token failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

void ULServiceManager::migrateLegacyClientIdToClientIdIfNecessary()
{
  v4 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
  }

  v0 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_10();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
  }

  v1 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_10();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services", "{msg%{public}.0s:MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_719);
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_10();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:MiLoServiceManager: updateAllServicesWithMatchingClientId failed on Update services, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, 0x26u);
  }
}

void ULServiceManager::localize()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:VMK model can only have a single instance, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "VMK model can only have a single instance", "{msg%{public}.0s:VMK model can only have a single instance, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:VMK model can only have a single instance, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

void ULServiceManager::addVisualMappingKitLabel()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Optional Model must have value here, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Optional Model must have value here", "{msg%{public}.0s:Optional Model must have value here, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Optional Model must have value here, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

void ULServiceManager::addLabelToScanEventsBetweenDates()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:addLabelToScanEventsBetweenDates is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "addLabelToScanEventsBetweenDates is only valid for labels with fServiceUUID", "{msg%{public}.0s:addLabelToScanEventsBetweenDates is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:addLabelToScanEventsBetweenDates is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

void ULServiceManager::processServiceAndLoadModel()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Optional Model must have value here, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Optional Model must have value here", "{msg%{public}.0s:Optional Model must have value here, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Optional Model must have value here, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

void ULServiceManager::onLocalizationRequest()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Results size must be 1, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Results size must be 1", "{msg%{public}.0s:Results size must be 1, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Results size must be 1, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

void std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void ULSettings::getFingerprintDistanceFunctionParamsForType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported distance function type, type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_0_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported distance function type", "{msg%{public}.0s:Unsupported distance function type, type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported distance function type, type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Settings/ULSettings.mm", 24, "getFingerprintDistanceFunctionParamsForType");
  __break(1u);
}

void ULDiskUtils::removeAllTrackedTempFiles()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_126);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_126);
}

void CLMicroLocationAnalytics::analyzeAssociationState()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_129);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_129);
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v25, v26, v27, v28);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "Look up table thresholds and scores vectors must be the same size", "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v25, v26, v27, v28);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Look up table thresholds and scores vectors must be the same size, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v25, v26, v27, v28);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationBlueAtlasAlgorithms.h", 21, "calculateScoreForValue");
  return CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(v23);
}

void CLMicroLocationFingerprint::removeExceedingMeasurements(NSObject **a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v9, v10, v11, "number of measurements still exceeds maximum", "{msg%{public}.0s:number of measurements still exceeds maximum, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13);
  }

  v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(NSObject **a1, __n128 a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _CLLogObjectForCategory_MicroLocation_Default(a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received Unsupported tech type while parsing distance function settings, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_signpost_enabled(v5))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received Unsupported tech type while parsing distance function settings", "{msg%{public}.0s:Received Unsupported tech type while parsing distance function settings, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x26u);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default(v6);
  *a1 = v7;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received Unsupported tech type while parsing distance function settings, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x26u);
  }
}

void CLMicroLocationLearner::learnFromModelType(NSObject **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Semi-Supervised model learning is disabled. This model type should not be used for learning, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v4 = _CLLogObjectForCategory_MicroLocation_Default(v3);
  if (os_signpost_enabled(v4))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Semi-Supervised model learning is disabled. This model type should not be used for learning", "{msg%{public}.0s:Semi-Supervised model learning is disabled. This model type should not be used for learning, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }

  v6 = _CLLogObjectForCategory_MicroLocation_Default(v5);
  *a1 = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Semi-Supervised model learning is disabled. This model type should not be used for learning, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v7, 0x26u);
  }
}

uint64_t CLMicroLocationLogic::CLMicroLocationLogic(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void CLMicroLocationLogic::onSendPredictionResultsToClient()
{
  dispatch_once(&onceToken_MicroLocationQE_Default, &__block_literal_global_703);
}

{
  dispatch_once(&onceToken_MicroLocationQE_Default, &__block_literal_global_703);
}

void CLMicroLocationLoiManager::VisitEntry()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_140);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_140);
}

void CLMicroLocationModel::isValid(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Overrride is only expected in unit tests platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "Overrride is only expected in unit tests platform", "{msg%{public}.0s:Overrride is only expected in unit tests platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Overrride is only expected in unit tests platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationModel.mm", 256, "isValid");
  __break(1u);
}

void CLMicroLocationModel::mapIdentifiers(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:mapped cluster identifer already exists, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "mapped cluster identifer already exists", "{msg%{public}.0s:mapped cluster identifer already exists, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:mapped cluster identifer already exists, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationModel.mm", 314, "mapIdentifiers");
  __break(1u);
}

void CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v2, v3, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v10, v11, v12, "localization results vector cannot be empty", "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (OUTLINED_FUNCTION_4_0(v16))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v17, v18, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22);
  }
}

void CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v2, v3, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v10, v11, v12, "localization results vector cannot be empty", "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (OUTLINED_FUNCTION_4_0(v16))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v17, v18, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22);
  }
}

void CLMicroLocationRapportMonitor::deviceFound()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_145);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_145);
}

void CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(NSObject **a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v7);
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v9, v10, v11, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13);
  }

  v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

void ULAlgorithms::createLearner(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v11, v12, v13, "Invalid algorithm chosen", "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", 237, "createLearner");
  __break(1u);
}

void ULAlgorithms::createLocalizerAlgorithm(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v11, v12, v13, "Invalid algorithm chosen", "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", 254, "createLocalizerAlgorithm");
  __break(1u);
}

void ULAlgorithms::createKernelFunction(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2050;
  *(buf + 20) = a2;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "primitiveType.unsignedLongValue < static_cast<uint32_t>(KernelFunctionType::kTypeCount)";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

void ULAlgorithms::details::createFingerprintDistanceFunction(NSObject **a1)
{
  v3 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v3))
  {
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x2Cu);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_6_2();
    _os_signpost_emit_with_name_impl(v10, v11, v12, v13, v14, v15, v16, 0x2Cu);
  }

  v18 = _CLLogObjectForCategory_MicroLocation_Default(v17);
  *a1 = v18;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v19, v20, OS_LOG_TYPE_INFO, v21, v22, 0x2Cu);
  }
}

void ULAlgorithms::createLinkageFunction(uint64_t a1)
{
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_1(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid type chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8, v24, v25, v26, v27);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2(&dword_258FE9000, v11, v12, v13, "Invalid type chosen", "{msg%{public}.0s:Invalid type chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v24, v25, v26, v27);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_2(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid type chosen, enum value:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23, v24, v25, v26, v27);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", 380, "createLinkageFunction");
  __break(1u);
}

void ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSObject **a1)
{
  v3 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (OUTLINED_FUNCTION_6_0(v3))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x26u);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_6_2();
    _os_signpost_emit_with_name_impl(v10, v11, v12, v13, v14, v15, v16, 0x26u);
  }

  v18 = _CLLogObjectForCategory_MicroLocation_Default(v17);
  *a1 = v18;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8();
    _os_log_impl(v19, v20, OS_LOG_TYPE_INFO, v21, v22, 0x26u);
  }
}

void ULAlgorithms::details::createPerSourceWeights(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = a1;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "weightsDict";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Couldn't find key: , key:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

void CLExponentialKernelFunction::CLExponentialKernelFunction()
{
  __assert_rtn("CLExponentialKernelFunction", "CLKernelFunction.h", 78, "sigma > 0.0");
}

{
  __assert_rtn("CLExponentialKernelFunction", "CLKernelFunction.h", 77, "power > 0.0");
}

uint64_t ULCustomLoiRecordingMonitor::startMonitoring(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Error: Got Start Monitoring Request while already monitoring, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v25, v26, v27, v28);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "Error: Got Start Monitoring Request while already monitoring", "{msg%{public}.0s:Error: Got Start Monitoring Request while already monitoring, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v25, v26, v27, v28);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Error: Got Start Monitoring Request while already monitoring, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v25, v26, v27, v28);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULCustomLoiRecordingMonitor.mm", 69, "startMonitoring");
  return ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded(v23);
}

void ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:Error: Custom LOI recording session timer active although session monitor is Idle , event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "Error: Custom LOI recording session timer active although session monitor is Idle ", "{msg%{public}.0s:Error: Custom LOI recording session timer active although session monitor is Idle , event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:Error: Custom LOI recording session timer active although session monitor is Idle , event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULCustomLoiRecordingMonitor.mm", 80, "stopMonitoringIfNeeded");
  ULDendrogramAlgorithm::learn();
}

void ULWiFiHistogramAnalyzer::analyzeWiFiChannels()
{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_153);
}

{
  dispatch_once(&onceToken_MicroLocation_Default, &__block_literal_global_153);
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::VecLib<float>::gemv()
{
    ;
  }
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  MEMORY[0x2821F74C0](this);
}

{
  MEMORY[0x2821F74C8](this);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x2821F78C0]();
}

{
  return MEMORY[0x2821F78C8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}