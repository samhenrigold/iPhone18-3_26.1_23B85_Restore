unint64_t lazy protocol witness table accessor for type RRMetadata and conformance RRMetadata()
{
  v2 = lazy protocol witness table cache variable for type RRMetadata and conformance RRMetadata;
  if (!lazy protocol witness table cache variable for type RRMetadata and conformance RRMetadata)
  {
    type metadata accessor for RRMetadata();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RRMetadata and conformance RRMetadata);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INPaymentRecord()
{
  v2 = lazy cache variable for type metadata for INPaymentRecord;
  if (!lazy cache variable for type metadata for INPaymentRecord)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INPaymentRecord);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:completion:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v40, v30);
  v34 = v27 - v33;
  v35 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v42 = v27 - v35;
  v52 = v8;
  v51 = v9;
  v49 = v10;
  v50 = v11;
  v48 = v4;
  v41 = 1;
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ConfirmSlotValue", 0x22uLL, 1);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v12;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v41 & 1);
  v14 = v40;
  v15 = v42;
  *v39 = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v43 = type metadata accessor for SpeakableString();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = *(v44 + 48);
  v47 = v44 + 48;
  if (v46(v42, v41) == 1)
  {
    outlined destroy of SpeakableString?(v42);
    v26 = v39;
    v39[1]._countAndFlagsBits = 0;
    v26[1]._object = 0;
    v26[2]._countAndFlagsBits = 0;
    v26[2]._object = 0;
  }

  else
  {
    v16 = v39;
    v39[2]._object = v43;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16[1]._countAndFlagsBits);
    (*(v44 + 32))(boxed_opaque_existential_1, v42, v43);
  }

  v28 = v39 + 4;
  v29 = 1;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotValue", 9uLL, 1);
  v19 = v30;
  v20 = v34;
  v39[3] = v18;
  outlined init with copy of SpeakableString?(v19, v20);
  if ((v46)(v34, v29, v43) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v25 = v39;
    v39[4]._countAndFlagsBits = 0;
    v25[4]._object = 0;
    v25[5]._countAndFlagsBits = 0;
    v25[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v28->_countAndFlagsBits;
    v39[5]._object = v43;
    v22 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v44 + 32))(v22, v34, v43);
  }

  _finalizeUninitializedArray<A>(_:)();
  v27[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v27[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.confirmSlotValue(slot:slotValue:), 0);
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)()
{
  v17 = v0[11];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ConfirmSlotValue", 0x22uLL, 1);
  v0[12] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[11]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[11];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[10];
  v11 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotValue", 9uLL, 1);
  outlined init with copy of SpeakableString?(v11, v12);
  if ((v20)(v12, 1, v18) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  else
  {
    v10 = v14[10];
    v15[5]._object = v18;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v15[4]._countAndFlagsBits);
    (*(v19 + 32))(v4, v10, v18);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[13] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = swift_task_alloc();
  v14[14] = v5;
  *v5 = v14[2];
  v5[1] = PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:);
  v6 = v14[6];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v36, v28);
  v30 = v24 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v38 = v24 - v31;
  v46 = v7;
  v45 = v8;
  v44 = v3;
  v37 = 1;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ConfirmSlotValue", 0x22uLL, 1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v9;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v37 & 1);
  v11 = v36;
  v12 = v38;
  *v35 = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v39 = type metadata accessor for SpeakableString();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = *(v40 + 48);
  v43 = v40 + 48;
  if (v42(v38, v37) == 1)
  {
    outlined destroy of SpeakableString?(v38);
    v23 = v35;
    v35[1]._countAndFlagsBits = 0;
    v23[1]._object = 0;
    v23[2]._countAndFlagsBits = 0;
    v23[2]._object = 0;
  }

  else
  {
    v13 = v35;
    v35[2]._object = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v40 + 32))(boxed_opaque_existential_1, v38, v39);
  }

  v25 = v35 + 4;
  v26 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotValue", 9uLL, 1);
  v16 = v28;
  v17 = v30;
  v35[3] = v15;
  outlined init with copy of SpeakableString?(v16, v17);
  if ((v42)(v30, v26, v39) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v22 = v35;
    v35[4]._countAndFlagsBits = 0;
    v22[4]._object = 0;
    v22[5]._countAndFlagsBits = 0;
    v22[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v25->_countAndFlagsBits;
    v35[5]._object = v39;
    v19 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v40 + 32))(v19, v30, v39);
  }

  _finalizeUninitializedArray<A>(_:)();
  v24[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v24[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#DisambiguateSlotValue", 0x27uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.disambiguateSlotValue(slot:), 0);
}

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#DisambiguateSlotValue", 0x27uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#DisambiguateSlotValue", 0x27uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCode", 0x1FuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for SirikitApp();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.errorWithCode(errorCode:app:), 0);
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCode", 0x1FuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for SirikitApp();
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCode", 0x1FuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for SirikitApp();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33, v25);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCodeForApplePay", 0x2AuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for SirikitApp();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:), 0);
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)()
{
  v15 = v0[10];
  v14 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCodeForApplePay", 0x2AuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v13 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[10]);
    v13[1]._countAndFlagsBits = 0;
    v13[1]._object = 0;
    v13[2]._countAndFlagsBits = 0;
    v13[2]._object = 0;
  }

  else
  {
    v11 = v12[10];
    v13[2]._object = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  v10 = v12[8];
  v13[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v10)
  {
    v9 = v12[8];
    v13[5]._object = type metadata accessor for SirikitApp();
    v13[4]._countAndFlagsBits = v9;
  }

  else
  {
    v13[4]._countAndFlagsBits = 0;
    v13[4]._object = 0;
    v13[5]._countAndFlagsBits = 0;
    v13[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v12[13] = v4;
  *v4 = v12[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v12[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29, v23);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCodeForApplePay", 0x2AuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for SirikitApp();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:completion:)(uint64_t a1, uint64_t a2, char a3)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#IntentHandledResponse", 0x27uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v3;
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v7[2]._object = type metadata accessor for SirikitApp();
    v7[1]._countAndFlagsBits = a1;
  }

  else
  {
    v7[1]._countAndFlagsBits = 0;
    v7[1]._object = 0;
    v7[2]._countAndFlagsBits = 0;
    v7[2]._object = 0;
  }

  v7[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bankAccounts", 0xCuLL, 1);
  if (a3)
  {
    v7[4]._countAndFlagsBits = 0;
    v7[4]._object = 0;
    v7[5]._countAndFlagsBits = 0;
    v7[5]._object = 0;
  }

  else
  {
    v7[5]._object = MEMORY[0x277D839F8];
    v7[4]._countAndFlagsBits = a2;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = v4;
  *(v5 + 25) = a4;
  *(v5 + 72) = a3;
  *(v5 + 64) = a2;
  *(v5 + 56) = a1;
  *(v5 + 32) = v5;
  *(v5 + 40) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  *(v5 + 40) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4 & 1;
  *(v5 + 48) = v4;
  return MEMORY[0x2822009F8](SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:), 0);
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)()
{
  v13 = v0[8];
  v0[4] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#IntentHandledResponse", 0x27uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v13)
  {
    v10 = *(v11 + 64);
    v12[2]._object = type metadata accessor for SirikitApp();
    v12[1]._countAndFlagsBits = v10;
  }

  else
  {
    v12[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  v9 = *(v11 + 25);
  v12[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bankAccounts", 0xCuLL, 1);
  if (v9)
  {
    v12[4]._countAndFlagsBits = 0;
    v12[4]._object = 0;
    v12[5]._countAndFlagsBits = 0;
    v12[5]._object = 0;
  }

  else
  {
    v3 = *(v11 + 72);
    v12[5]._object = MEMORY[0x277D839F8];
    v12[4]._countAndFlagsBits = v3;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  *(v11 + 96) = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  *(v11 + 104) = v4;
  *v4 = *(v11 + 32);
  v4[1] = SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:);
  v5 = *(v11 + 56);

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:), 0);
  }

  else
  {

    v2 = *(*(v4 + 32) + 8);

    return v2();
  }
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)(uint64_t a1, uint64_t a2, char a3)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#IntentHandledResponse", 0x27uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v3;
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v7[2]._object = type metadata accessor for SirikitApp();
    v7[1]._countAndFlagsBits = a1;
  }

  else
  {
    v7[1]._countAndFlagsBits = 0;
    v7[1]._object = 0;
    v7[2]._countAndFlagsBits = 0;
    v7[2]._object = 0;
  }

  v7[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bankAccounts", 0xCuLL, 1);
  if (a3)
  {
    v7[4]._countAndFlagsBits = 0;
    v7[4]._object = 0;
    v7[5]._countAndFlagsBits = 0;
    v7[5]._object = 0;
  }

  else
  {
    v7[5]._object = MEMORY[0x277D839F8];
    v7[4]._countAndFlagsBits = a2;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:completion:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v40, v30);
  v34 = v27 - v33;
  v35 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v42 = v27 - v35;
  v52 = v8;
  v51 = v9;
  v49 = v10;
  v50 = v11;
  v48 = v4;
  v41 = 1;
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForEnum", 0x1EuLL, 1);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v12;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v41 & 1);
  v14 = v40;
  v15 = v42;
  *v39 = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v43 = type metadata accessor for SpeakableString();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = *(v44 + 48);
  v47 = v44 + 48;
  if (v46(v42, v41) == 1)
  {
    outlined destroy of SpeakableString?(v42);
    v26 = v39;
    v39[1]._countAndFlagsBits = 0;
    v26[1]._object = 0;
    v26[2]._countAndFlagsBits = 0;
    v26[2]._object = 0;
  }

  else
  {
    v16 = v39;
    v39[2]._object = v43;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16[1]._countAndFlagsBits);
    (*(v44 + 32))(boxed_opaque_existential_1, v42, v43);
  }

  v28 = v39 + 4;
  v29 = 1;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v19 = v30;
  v20 = v34;
  v39[3] = v18;
  outlined init with copy of SpeakableString?(v19, v20);
  if ((v46)(v34, v29, v43) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v25 = v39;
    v39[4]._countAndFlagsBits = 0;
    v25[4]._object = 0;
    v25[5]._countAndFlagsBits = 0;
    v25[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v28->_countAndFlagsBits;
    v39[5]._object = v43;
    v22 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v44 + 32))(v22, v34, v43);
  }

  _finalizeUninitializedArray<A>(_:)();
  v27[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v27[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.labelForEnum(accountType:balanceType:), 0);
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:)()
{
  v17 = v0[11];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForEnum", 0x1EuLL, 1);
  v0[12] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[11]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[11];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[10];
  v11 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v11, v12);
  if ((v20)(v12, 1, v18) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  else
  {
    v10 = v14[10];
    v15[5]._object = v18;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v15[4]._countAndFlagsBits);
    (*(v19 + 32))(v4, v10, v18);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[13] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = swift_task_alloc();
  v14[14] = v5;
  *v5 = v14[2];
  v5[1] = PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:);
  v6 = v14[6];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v36, v28);
  v30 = v24 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v38 = v24 - v31;
  v46 = v7;
  v45 = v8;
  v44 = v3;
  v37 = 1;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForEnum", 0x1EuLL, 1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v9;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v37 & 1);
  v11 = v36;
  v12 = v38;
  *v35 = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v39 = type metadata accessor for SpeakableString();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = *(v40 + 48);
  v43 = v40 + 48;
  if (v42(v38, v37) == 1)
  {
    outlined destroy of SpeakableString?(v38);
    v23 = v35;
    v35[1]._countAndFlagsBits = 0;
    v23[1]._object = 0;
    v23[2]._countAndFlagsBits = 0;
    v23[2]._object = 0;
  }

  else
  {
    v13 = v35;
    v35[2]._object = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v40 + 32))(boxed_opaque_existential_1, v38, v39);
  }

  v25 = v35 + 4;
  v26 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v16 = v28;
  v17 = v30;
  v35[3] = v15;
  outlined init with copy of SpeakableString?(v16, v17);
  if ((v42)(v30, v26, v39) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v22 = v35;
    v35[4]._countAndFlagsBits = 0;
    v22[4]._object = 0;
    v22[5]._countAndFlagsBits = 0;
    v22[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v25->_countAndFlagsBits;
    v35[5]._object = v39;
    v19 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v40 + 32))(v19, v30, v39);
  }

  _finalizeUninitializedArray<A>(_:)();
  v24[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v24[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForResponseSlot", 0x26uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.labelForResponseSlot(slot:), 0);
}

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForResponseSlot", 0x26uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForResponseSlot", 0x26uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelOtherBalanceType", 0x27uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enumValue", 9uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.labelOtherBalanceType(enumValue:), 0);
}

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelOtherBalanceType", 0x27uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enumValue", 9uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelOtherBalanceType", 0x27uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enumValue", 9uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.noResultsResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#NoResultsResponse", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.noResultsResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](SearchForAccountsCATs.noResultsResponse(app:), 0);
}

uint64_t SearchForAccountsCATs.noResultsResponse(app:)()
{
  v11 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#NoResultsResponse", 0x23uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v11)
  {
    v8 = v9[6];
    v10[2]._object = type metadata accessor for SirikitApp();
    v10[1]._countAndFlagsBits = v8;
  }

  else
  {
    v10[1]._countAndFlagsBits = 0;
    v10[1]._object = 0;
    v10[2]._countAndFlagsBits = 0;
    v10[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v6 = KeyValuePairs.init(dictionaryLiteral:)();
  v9[9] = v6;
  v7 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  v9[10] = v3;
  *v3 = v9[2];
  v3[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v4 = v9[5];

  return v7(v4, v1._countAndFlagsBits, v1._object, v6);
}

uint64_t SearchForAccountsCATs.noResultsResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#NoResultsResponse", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.promptCancelled(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptCancelled", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.promptCancelled()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](SearchForAccountsCATs.promptCancelled(), 0);
}

uint64_t SearchForAccountsCATs.promptCancelled()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptCancelled", 0x21uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptCancelled", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptForSlotValue", 0x24uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.promptForSlotValue(slot:), 0);
}

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptForSlotValue", 0x24uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptForSlotValue", 0x24uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#SlotDisplayValue", 0x22uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.slotDisplayValue(slot:), 0);
}

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#SlotDisplayValue", 0x22uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#SlotDisplayValue", 0x22uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:completion:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = v22 - v33;
  v45 = MEMORY[0x28223BE20](v40, v30);
  v44 = v5;
  v42 = v6;
  v43 = v7;
  v41 = v4;
  v37 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#UnsupportedSlotValue", 0x26uLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, v37 & 1);
  *v39 = v9;

  if (v40)
  {
    v29 = v40;
    v28 = v40;
    v10 = type metadata accessor for SirikitApp();
    v11 = v39;
    v12 = v28;
    v39[2]._object = v10;
    v11[1]._countAndFlagsBits = v12;
  }

  else
  {
    v21 = v39;
    v39[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  v23 = v39 + 4;
  v24 = 1;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  v14 = v30;
  v15 = v34;
  v39[3] = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v25 = type metadata accessor for SpeakableString();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  if ((*(v26 + 48))(v34, v24) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v20 = v39;
    v39[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v23->_countAndFlagsBits;
    v39[5]._object = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v26 + 32))(boxed_opaque_existential_1, v34, v25);
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SearchForAccountsCATs.unsupportedSlotValue(app:slot:), 0);
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:)()
{
  v17 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#UnsupportedSlotValue", 0x26uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v16 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v17)
  {
    v14 = v15[7];
    v16[2]._object = type metadata accessor for SirikitApp();
    v16[1]._countAndFlagsBits = v14;
  }

  else
  {
    v16[1]._countAndFlagsBits = 0;
    v16[1]._object = 0;
    v16[2]._countAndFlagsBits = 0;
    v16[2]._object = 0;
  }

  v11 = v15[10];
  v10 = v15[8];
  v16[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v10, v11);
  v12 = type metadata accessor for SpeakableString();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    outlined destroy of SpeakableString?(v15[10]);
    v16[4]._countAndFlagsBits = 0;
    v16[4]._object = 0;
    v16[5]._countAndFlagsBits = 0;
    v16[5]._object = 0;
  }

  else
  {
    v9 = v15[10];
    v16[5]._object = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16[4]._countAndFlagsBits);
    (*(v13 + 32))(boxed_opaque_existential_1, v9, v12);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v15[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v15[13] = v4;
  *v4 = v15[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v15[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v19 - v29;
  v39 = MEMORY[0x28223BE20](v36, v28);
  v38 = v4;
  v37 = v3;
  v33 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#UnsupportedSlotValue", 0x26uLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, v33 & 1);
  *v35 = v6;

  if (v36)
  {
    v26 = v36;
    v25 = v36;
    v7 = type metadata accessor for SirikitApp();
    v8 = v35;
    v9 = v25;
    v35[2]._object = v7;
    v8[1]._countAndFlagsBits = v9;
  }

  else
  {
    v18 = v35;
    v35[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  v20 = v35 + 4;
  v21 = 1;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  v11 = v28;
  v12 = v30;
  v35[3] = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v30, v21) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v17 = v35;
    v35[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v20->_countAndFlagsBits;
    v35[5]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v30, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.slotDisplayValue(slot:) in conformance SearchForAccountsCATs(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsCATs.slotDisplayValue(slot:)(a1, a2);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.labelForResponseSlot(slot:) in conformance SearchForAccountsCATs(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsCATs.labelForResponseSlot(slot:)(a1, a2);
}

uint64_t type metadata accessor for SearchForAccountsCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForAccountsCATs;
  if (!type metadata singleton initialization cache for SearchForAccountsCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SearchForAccountsCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t INCurrencyAmount.formattedString.getter()
{
  v16 = [v0 amount];
  if (!v16)
  {
    return 0;
  }

  v1 = [v0 currencyCode];
  v15 = v1;
  if (v1)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v2;
    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (!v14)
  {
    MEMORY[0x277D82BD8](v16);
    return 0;
  }

  type metadata accessor for NSNumberFormatter();
  v9 = SAUIAppPunchOut.__allocating_init()();
  [v9 setNumberStyle_];

  v8 = MEMORY[0x26D620690](v13, v14);

  [v9 setCurrencyCode_];
  MEMORY[0x277D82BD8](v8);
  v3 = [v9 stringFromNumber_];
  v10 = v3;
  if (v3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v10);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v16);
  return v7;
}

uint64_t RequestPaymentConfirmIntentStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INRequestPaymentIntent();
  v2 = type metadata accessor for INRequestPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for RequestPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = RequestPaymentConfirmIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t RequestPaymentConfirmIntentStrategy.actionForInput(_:confirmParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  BaseStrategy.actionForInput(_:)(a1, a2);
}

uint64_t RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  v1 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v17 + 48) = buf;
    *(v17 + 56) = v14;
    *(v17 + 64) = v15;
    serialize(_:at:)(0, (v17 + 48));
    serialize(_:at:)(0, (v17 + 48));
    *(v17 + 72) = v22;
    v16 = swift_task_alloc();
    v16[2] = v17 + 48;
    v16[3] = v17 + 56;
    v16[4] = v17 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#RequestPaymentConfirmIntentStrategy parseConfirmationResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v17 + 152);
  v6 = *(v17 + 136);
  v10 = *(v17 + 128);
  v8 = *(v17 + 112);
  v11 = *(v17 + 104);
  v5 = *(v17 + 144);
  v7 = *(v17 + 120);
  MEMORY[0x277D82BD8](v21);
  (*(v5 + 8))(v9, v6);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v11);
  (*(v7 + 8))(v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for INRequestPaymentIntent();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();

  v3 = *(*(v17 + 16) + 8);

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[108] = v2;
  v3[107] = a2;
  v3[106] = a1;
  v3[74] = v3;
  v3[75] = 0;
  v3[76] = 0;
  v3[77] = 0;
  v3[83] = 0;
  v3[88] = 0;
  v3[93] = 0;
  v3[72] = 0;
  v3[73] = 0;
  v3[94] = 0;
  v3[95] = 0;
  v3[96] = 0;
  v3[97] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[109] = swift_task_alloc();
  v4 = type metadata accessor for NLContextUpdate();
  v3[110] = v4;
  v3[111] = *(v4 - 8);
  v3[112] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[113] = v5;
  v3[114] = *(v5 - 8);
  v3[115] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[120] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[121] = v6;
  v3[122] = *(v6 - 8);
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[129] = swift_task_alloc();
  v3[75] = a2;
  v3[76] = v2;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)()
{
  v194 = v0;
  v182 = v0[129];
  v1 = v0[128];
  v183 = v0[122];
  v184 = v0[121];
  v0[74] = v0;
  v2 = SignpostName.makeRequestPaymentPromptForConfirm.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v182);
  v3 = Logger.payments.unsafeMutableAddressor();
  v185 = *(v183 + 16);
  v185(v1, v3, v184);
  v187 = Logger.logObject.getter();
  v186 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v188 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v187, v186))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v178 = createStorage<A>(capacity:type:)(0, v176, v176);
    v179 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v181 + 816) = buf;
    *(v181 + 824) = v178;
    *(v181 + 832) = v179;
    serialize(_:at:)(0, (v181 + 816));
    serialize(_:at:)(0, (v181 + 816));
    *(v181 + 840) = v188;
    v180 = swift_task_alloc();
    v180[2] = v181 + 816;
    v180[3] = v181 + 824;
    v180[4] = v181 + 832;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v187, v186, "#RequestPaymentConfirmIntentStrategy makePromptForConfirmation", buf, 2u);
    destroyStorage<A>(_:count:)(v178, 0, v176);
    destroyStorage<A>(_:count:)(v179, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v171 = *(v181 + 1024);
  v172 = *(v181 + 968);
  v170 = *(v181 + 976);
  MEMORY[0x277D82BD8](v187);
  v173 = *(v170 + 8);
  v173(v171, v172);
  *(v181 + 1040) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v174 = IntentResolutionRecord.intentResponse.getter();
  MEMORY[0x277D82BE0](v174);
  *(v181 + 616) = v174;
  v175 = [v174 paymentRecord];
  MEMORY[0x277D82BD8](v174);
  *(v181 + 624) = v175;
  if (*(v181 + 624))
  {
    outlined destroy of SFRichText?((v181 + 624));
  }

  else
  {
    outlined destroy of SFRichText?((v181 + 624));
    v168 = IntentResolutionRecord.app.getter();
    LOBYTE(v169) = App.isFirstParty.getter(v168);

    if (v169)
    {
      v4 = *(v181 + 1016);
      v164 = *(v181 + 968);
      v5 = Logger.payments.unsafeMutableAddressor();
      v185(v4, v5, v164);
      oslog = Logger.logObject.getter();
      LOBYTE(v165) = static os_log_type_t.debug.getter();
      v167 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v165))
      {
        v160 = static UnsafeMutablePointer.allocate(capacity:)();
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v161 = createStorage<A>(capacity:type:)(0, v159, v159);
        v162 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v181 + 784) = v160;
        *(v181 + 792) = v161;
        *(v181 + 800) = v162;
        serialize(_:at:)(0, (v181 + 784));
        serialize(_:at:)(0, (v181 + 784));
        *(v181 + 808) = v167;
        v163 = swift_task_alloc();
        v163[2] = v181 + 784;
        v163[3] = v181 + 792;
        v163[4] = v181 + 800;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v165, "#RequestPaymentConfirmIntentStrategy makePromptForConfirmation 1P app did not contain payment record, creating our own here", v160, 2u);
        destroyStorage<A>(_:count:)(v161, 0, v159);
        destroyStorage<A>(_:count:)(v162, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v160, MEMORY[0x277D84B78]);
      }

      v150 = *(v181 + 1016);
      v151 = *(v181 + 968);
      MEMORY[0x277D82BD8](oslog);
      v173(v150, v151);
      type metadata accessor for INRequestPaymentIntentResponse();
      v197.value.super.isa = 0;
      isa = INRequestPaymentIntentResponse.__allocating_init(code:userActivity:)(INRequestPaymentIntentResponseCodeReady, v197).super.super.isa;
      MEMORY[0x277D82BE0](isa);
      v6 = *(v181 + 616);
      *(v181 + 616) = isa;
      MEMORY[0x277D82BD8](v6);
      type metadata accessor for INPaymentRecord();
      v153 = IntentResolutionRecord.intent.getter();
      LOBYTE(payee) = [v153 payer];
      MEMORY[0x277D82BD8](v153);
      v155 = IntentResolutionRecord.intent.getter();
      payer.value.super.isa = [v155 currencyAmount];
      MEMORY[0x277D82BD8](v155);
      payer.is_nil = [objc_opt_self() applePayPaymentMethod];
      v157 = IntentResolutionRecord.intent.getter();
      v158 = [v157 note];
      if (v158)
      {
        *&v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        BYTE8(v148) = v7;
        MEMORY[0x277D82BD8](v158);
        v149 = v148;
      }

      else
      {
        memset(&v149, 0, sizeof(v149));
      }

      MEMORY[0x277D82BD8](v157);
      v196.is_nil = payee;
      v198.is_nil = 0;
      v196.value.super.isa = 0;
      v198.value.super.isa = 1;
      v147 = INPaymentRecord.__allocating_init(payee:payer:currencyAmount:paymentMethod:note:status:feeAmount:)(v196, payer, v149, v198, v43, v44, v45);
      [isa setPaymentRecord_];
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](isa);
    }
  }

  v145 = *(v181 + 616);
  MEMORY[0x277D82BE0](v145);
  v146 = [v145 paymentRecord];
  *(v181 + 1048) = v146;
  if (v146)
  {
    v8 = *(v181 + 1008);
    v136 = *(v181 + 968);
    *(v181 + 664) = v146;
    MEMORY[0x277D82BD8](v145);
    v9 = Logger.payments.unsafeMutableAddressor();
    v185(v8, v9, v136);
    MEMORY[0x277D82BE0](v146);
    v137 = swift_allocObject();
    *(v137 + 16) = v146;
    log = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();
    v139 = swift_allocObject();
    *(v139 + 16) = 64;
    v140 = swift_allocObject();
    *(v140 + 16) = 8;
    v138 = swift_allocObject();
    *(v138 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v138 + 24) = v137;
    v141 = swift_allocObject();
    *(v141 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v141 + 24) = v138;
    _allocateUninitializedArray<A>(_:)();
    v142 = v10;

    *v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v142[1] = v139;

    v142[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v142[3] = v140;

    v142[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v142[5] = v141;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v144))
    {
      v133 = static UnsafeMutablePointer.allocate(capacity:)();
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v134 = createStorage<A>(capacity:type:)(1, v132, v132);
      v135 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v189 = v133;
      v190 = v134;
      v191 = v135;
      serialize(_:at:)(2, &v189);
      serialize(_:at:)(1, &v189);
      v192 = partial apply for closure #1 in OSLogArguments.append(_:);
      v193 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
      v192 = partial apply for closure #1 in OSLogArguments.append(_:);
      v193 = v140;
      closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
      v192 = partial apply for closure #1 in OSLogArguments.append(_:);
      v193 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
      _os_log_impl(&dword_2686B1000, log, v144, "#RequestPaymentConfirmIntentStrategy intent contained paymentRecord: %@", v133, 0xCu);
      destroyStorage<A>(_:count:)(v134, 1, v132);
      destroyStorage<A>(_:count:)(v135, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v133, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v129 = *(v181 + 1008);
    v130 = *(v181 + 968);
    MEMORY[0x277D82BD8](log);
    v173(v129, v130);
    v131 = [v146 payer];
    *(v181 + 1056) = v131;
    if (v131)
    {
      *(v181 + 704) = v131;
      v11 = [v146 currencyAmount];
      v128 = v11;
      *(v181 + 1064) = v11;
      if (v11)
      {
        *(v181 + 744) = v11;
        v127 = [v146 note];
        if (v127)
        {
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v12;
          MEMORY[0x277D82BD8](v127);
          v125 = v123;
          v126 = v124;
        }

        else
        {
          v125 = 0;
          v126 = 0;
        }

        *(v181 + 1072) = v126;
        v116 = *(v181 + 864);
        *(v181 + 576) = v125;
        *(v181 + 584) = v126;
        v115 = [v146 feeAmount];
        *(v181 + 1080) = v115;
        *(v181 + 752) = v115;
        type metadata accessor for PaymentsDialogConcept.Builder(0);
        v119 = PaymentsDialogConcept.Builder.__allocating_init()();
        *(v181 + 1088) = v119;
        *(v181 + 760) = v119;
        type metadata accessor for DialogPerson();
        MEMORY[0x277D82BE0](v131);

        outlined init with copy of GlobalsProviding(v116 + 104, v181 + 136);

        v118 = *(v181 + 160);
        v117 = *(v181 + 168);
        __swift_project_boxed_opaque_existential_1((v181 + 136), v118);
        (*(v117 + 16))(v118);
        __swift_project_boxed_opaque_existential_1((v181 + 176), *(v181 + 200));
        dispatch thunk of DeviceState.siriLocale.getter();
        v121 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
        __swift_destroy_boxed_opaque_existential_0((v181 + 176));
        __swift_destroy_boxed_opaque_existential_0((v181 + 136));

        v120 = (v119 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
        swift_beginAccess();
        *v120 = v121;

        swift_endAccess();

        type metadata accessor for DialogCurrency.Builder();
        DialogCurrency.Builder.__allocating_init()();
        v13 = [v128 amount];
        v122 = v13;
        if (v13)
        {
          [v13 doubleValue];
          MEMORY[0x277D82BD8](v122);
        }

        dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

        v114 = [v128 currencyCode];
        if (v114)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v14;
          MEMORY[0x277D82BD8](v114);
          v113 = v112;
        }

        else
        {
          v113 = 0;
        }

        if (v113)
        {
          v111 = *(v181 + 952);
          String.toSpeakableString.getter();

          v15 = type metadata accessor for SpeakableString();
          (*(*(v15 - 8) + 56))(v111, 0, 1);
        }

        else
        {
          v91 = *(v181 + 952);
          v27 = type metadata accessor for SpeakableString();
          (*(*(v27 - 8) + 56))(v91, 1);
        }

        v109 = *(v181 + 952);
        dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
        outlined destroy of SpeakableString?(v109);

        v110 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

        swift_beginAccess();
        v119[2] = v110;

        swift_endAccess();

        if (v126)
        {
          v108 = *(v181 + 944);
          String.toSpeakableString.getter();

          v16 = type metadata accessor for SpeakableString();
          (*(*(v16 - 8) + 56))(v108, 0, 1);
        }

        else
        {
          v92 = *(v181 + 944);
          v26 = type metadata accessor for SpeakableString();
          (*(*(v26 - 8) + 56))(v92, 1);
        }

        v107 = *(v181 + 944);
        v105 = *(v181 + 936);
        outlined init with copy of SpeakableString?(v107, v105);
        v106 = v119 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
        swift_beginAccess();
        outlined assign with take of SpeakableString?(v105, v106);
        swift_endAccess();
        outlined destroy of SpeakableString?(v107);
        DialogCurrency.Builder.__allocating_init()();
        MEMORY[0x277D82BE0](v115);
        if (v115)
        {
          v104 = [v115 amount];
          MEMORY[0x277D82BD8](v115);
          if (v104)
          {
            [v104 doubleValue];
            MEMORY[0x277D82BD8](v104);
          }
        }

        dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

        MEMORY[0x277D82BE0](v115);
        if (v115 && ((v103 = [v115 currencyCode]) == 0 ? (v102 = 0) : (static String._unconditionallyBridgeFromObjectiveC(_:)(), v101 = v17, MEMORY[0x277D82BD8](v103), v102 = v101), MEMORY[0x277D82BD8](v115), v102))
        {
          v100 = *(v181 + 928);
          String.toSpeakableString.getter();

          v18 = type metadata accessor for SpeakableString();
          (*(*(v18 - 8) + 56))(v100, 0, 1);
        }

        else
        {
          v93 = *(v181 + 928);
          v25 = type metadata accessor for SpeakableString();
          (*(*(v25 - 8) + 56))(v93, 1);
        }

        v96 = *(v181 + 928);
        dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
        outlined destroy of SpeakableString?(v96);

        v97 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

        swift_beginAccess();
        v119[4] = v97;

        swift_endAccess();

        IntentResolutionRecord.app.getter();
        v98 = App.sirikitApp.getter();

        swift_beginAccess();
        v119[3] = v98;

        swift_endAccess();

        v99 = PaymentsDialogConcept.Builder.build()();
        *(v181 + 1096) = v99;
        *(v181 + 768) = v99;
        if (static RFFeatureFlags.ResponseFramework.SMART.getter())
        {
          v95 = *(v181 + 616);
          *(v181 + 1104) = v95;
          MEMORY[0x277D82BE0](v95);
          v19 = swift_task_alloc();
          *(v181 + 1112) = v19;
          *v19 = *(v181 + 592);
          v19[1] = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v20 = *(v181 + 856);
          v21 = *(v181 + 848);

          return RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)(v21, v20, v99, v95);
        }

        else
        {
          v94 = *(v181 + 864);

          *(v181 + 1128) = *(v94 + 16);

          v23 = swift_task_alloc();
          *(v181 + 1136) = v23;
          *v23 = *(v181 + 592);
          v23[1] = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v24 = *(v181 + 920);

          return RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(v24, v99);
        }
      }

      v28 = *(v181 + 1000);
      v87 = *(v181 + 968);
      v29 = Logger.payments.unsafeMutableAddressor();
      v185(v28, v29, v87);
      v89 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      v90 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v89, v88))
      {
        v83 = static UnsafeMutablePointer.allocate(capacity:)();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v84 = createStorage<A>(capacity:type:)(0, v82, v82);
        v85 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v181 + 712) = v83;
        *(v181 + 720) = v84;
        *(v181 + 728) = v85;
        serialize(_:at:)(0, (v181 + 712));
        serialize(_:at:)(0, (v181 + 712));
        *(v181 + 736) = v90;
        v86 = swift_task_alloc();
        v86[2] = v181 + 712;
        v86[3] = v181 + 720;
        v86[4] = v181 + 728;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v89, v88, "#RequestPaymentConfirmIntentStrategy found no currencyAmount in paymentRecord, throwing exception", v83, 2u);
        destroyStorage<A>(_:count:)(v84, 0, v82);
        destroyStorage<A>(_:count:)(v85, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v83, MEMORY[0x277D84B78]);
      }

      v81 = *(v181 + 1032);
      v76 = *(v181 + 1000);
      v77 = *(v181 + 968);
      MEMORY[0x277D82BD8](v89);
      v173(v76, v77);
      v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1);
      type metadata accessor for INRequestPaymentIntent();
      v80 = [swift_getObjCClassFromMetadata() description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v31;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v32 = v30;
      *(v32 + 16) = v79;
      *(v32 + 24) = v78;
      *(v32 + 32) = 0;
      *(v32 + 40) = 0;
      *(v32 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](*(v181 + 616));
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v81);
    }

    else
    {
      v33 = *(v181 + 992);
      v72 = *(v181 + 968);
      v34 = Logger.payments.unsafeMutableAddressor();
      v185(v33, v34, v72);
      v74 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      v75 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v74, v73))
      {
        v68 = static UnsafeMutablePointer.allocate(capacity:)();
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v69 = createStorage<A>(capacity:type:)(0, v67, v67);
        v70 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v181 + 672) = v68;
        *(v181 + 680) = v69;
        *(v181 + 688) = v70;
        serialize(_:at:)(0, (v181 + 672));
        serialize(_:at:)(0, (v181 + 672));
        *(v181 + 696) = v75;
        v71 = swift_task_alloc();
        v71[2] = v181 + 672;
        v71[3] = v181 + 680;
        v71[4] = v181 + 688;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v74, v73, "#RequestPaymentConfirmIntentStrategy found no payer in paymentRecord, throwing exception", v68, 2u);
        destroyStorage<A>(_:count:)(v69, 0, v67);
        destroyStorage<A>(_:count:)(v70, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v68, MEMORY[0x277D84B78]);
      }

      v66 = *(v181 + 1032);
      v61 = *(v181 + 992);
      v62 = *(v181 + 968);
      MEMORY[0x277D82BD8](v74);
      v173(v61, v62);
      v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1);
      type metadata accessor for INRequestPaymentIntent();
      v65 = [swift_getObjCClassFromMetadata() description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v36;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v37 = v35;
      *(v37 + 16) = v64;
      *(v37 + 24) = v63;
      *(v37 + 32) = 0;
      *(v37 + 40) = 0;
      *(v37 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](*(v181 + 616));
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v66);
    }
  }

  else
  {
    v38 = *(v181 + 984);
    v57 = *(v181 + 968);
    MEMORY[0x277D82BD8](v145);
    v39 = Logger.payments.unsafeMutableAddressor();
    v185(v38, v39, v57);
    v59 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v60 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v59, v58))
    {
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(0, v52, v52);
      v55 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v181 + 632) = v53;
      *(v181 + 640) = v54;
      *(v181 + 648) = v55;
      serialize(_:at:)(0, (v181 + 632));
      serialize(_:at:)(0, (v181 + 632));
      *(v181 + 656) = v60;
      v56 = swift_task_alloc();
      v56[2] = v181 + 632;
      v56[3] = v181 + 640;
      v56[4] = v181 + 648;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, v59, v58, "#RequestPaymentConfirmIntentStrategy created no paymentRecord for intent response, throwing exception", v53, 2u);
      destroyStorage<A>(_:count:)(v54, 0, v52);
      destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v53, MEMORY[0x277D84B78]);
    }

    v51 = *(v181 + 1032);
    v46 = *(v181 + 984);
    v47 = *(v181 + 968);
    MEMORY[0x277D82BD8](v59);
    v173(v46, v47);
    type metadata accessor for INRequestPaymentIntent();
    v50 = [swift_getObjCClassFromMetadata() description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v40;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v41 = v49;
    *(v41 + 8) = v48;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 40) = 0;
    *(v41 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](*(v181 + 616));
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v51);
  }

  v42 = *(*(v181 + 592) + 8);

  return v42();
}

{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 592) = *v1;
  *(v5 + 1120) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {

    v2 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v3 = v0[135];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v0[74] = v0;

  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v1 = *(v0[74] + 8);

  return v1();
}

{
  v4 = *v1;
  *(v4 + 592) = *v1;
  *(v4 + 1144) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {

    v2 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v19 = v0;
  v1 = v0[112];
  v8 = v0[108];
  v0[74] = v0;
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v1);

  outlined init with copy of GlobalsProviding(v8 + 24, (v0 + 27));

  outlined init with copy of GlobalsProviding(v8 + 104, (v0 + 32));

  v6 = v0[35];
  v5 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v6);
  (*(v5 + 16))(v6);

  v7 = *(v8 + 16);

  v9 = type metadata accessor for RequestPaymentCATs(0);
  v18[3] = v9;
  v18[4] = &protocol witness table for RequestPaymentCATs;
  v18[0] = v7;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 27, v17, v18, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v16 = IntentResolutionRecord.app.getter();
  v0[144] = v16;
  v15 = IntentResolutionRecord.intent.getter();
  v0[145] = v15;
  v12 = v0[77];
  v0[146] = v12;
  MEMORY[0x277D82BE0](v12);

  v10 = *(v8 + 16);

  v0[40] = v9;
  v0[41] = &protocol witness table for RequestPaymentCATs;
  v13 = (v0 + 37);
  v0[37] = v10;
  v2 = swift_task_alloc();
  *(v11 + 1176) = v2;
  v14 = type metadata accessor for INRequestPaymentIntent();
  v3 = type metadata accessor for INRequestPaymentIntentResponse();
  *v2 = *(v11 + 592);
  v2[1] = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);

  return ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(v16, v15, v12, v13, v14, v3, &protocol witness table for INRequestPaymentIntent, &protocol witness table for INRequestPaymentIntentResponse);
}

{
  v1 = v0[148];
  v15 = v0[135];
  v16 = v0[133];
  v17 = v0[132];
  v18 = v0[131];
  v19 = v0[129];
  v13 = v0[115];
  v12 = v0[114];
  v14 = v0[113];
  v10 = v0[112];
  v9 = v0[111];
  v11 = v0[110];
  v8 = v0[109];
  v6 = v0[108];
  v7 = v0[106];
  v0[74] = v0;
  v0[97] = v1;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 42));

  v5 = v0[45];
  v4 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  (*(v9 + 16))(v8, v10, v11);
  (*(v9 + 56))(v8, 0, 1, v11);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  (*(v9 + 8))(v10, v11);
  (*(v12 + 8))(v13, v14);

  MEMORY[0x277D82BD8](v15);

  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v19);

  v2 = *(v0[74] + 8);

  return v2();
}

{
  v1 = v0[138];
  v4 = v0[135];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[129];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v8);

  v2 = *(v0[74] + 8);

  return v2();
}

{
  v3 = v0[135];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v0[74] = v0;

  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v1 = *(v0[74] + 8);

  return v1();
}

{
  v3 = v0[146];
  v4 = v0[145];
  v11 = v0[135];
  v12 = v0[133];
  v13 = v0[132];
  v14 = v0[131];
  v15 = v0[129];
  v9 = v0[115];
  v8 = v0[114];
  v10 = v0[113];
  v7 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v0[74] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v5 + 8))(v7, v6);
  (*(v8 + 8))(v9, v10);

  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v15);

  v1 = *(v0[74] + 8);

  return v1();
}

uint64_t RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1)
{
  v9 = *v2;
  v7 = (*v2 + 16);
  v8 = (*v2 + 296);
  v9[74] = *v2;
  v9[148] = a1;
  v9[149] = v1;

  if (v1)
  {
    v3 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v5 = v7[144];
    v6 = v7[143];
    __swift_destroy_boxed_opaque_existential_0(v8);

    outlined destroy of ConfirmationViewBuilder(v7);
    v3 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

INRequestPaymentIntentResponse __swiftcall INRequestPaymentIntentResponse.__allocating_init(code:userActivity:)(INRequestPaymentIntentResponseCode code, NSUserActivity_optional userActivity)
{
  isa = userActivity.value.super.isa;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc INRequestPaymentIntentResponse.init(code:userActivity:)(code, isa);
}

INPaymentRecord_optional __swiftcall INPaymentRecord.__allocating_init(payee:payer:currencyAmount:paymentMethod:note:status:feeAmount:)(INPerson_optional payee, INPerson_optional payer, INCurrencyAmount_optional currencyAmount, INPaymentMethod_optional paymentMethod, Swift::String_optional note, INPaymentStatus status, INCurrencyAmount_optional feeAmount)
{
  isa = payee.value.super.isa;
  v10 = *&payee.is_nil;
  v11 = payer.value.super.isa;
  v12 = *&payer.is_nil;
  v13 = currencyAmount.value.super.isa;
  v14 = *&currencyAmount.is_nil;
  v15 = paymentMethod.value.super.isa;
  v16 = *&paymentMethod.is_nil;
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = @nonobjc INPaymentRecord.init(payee:payer:currencyAmount:paymentMethod:note:status:feeAmount:)(isa, v10, v11, v12, v13, v14, v15, v16);
  result.value.super.isa = v8;
  result.is_nil = v9;
  return result;
}

uint64_t RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[47] = v4;
  v5[46] = a4;
  v5[45] = a3;
  v5[44] = a2;
  v5[43] = a1;
  v5[37] = v5;
  v5[38] = 0;
  v5[39] = 0;
  v5[40] = 0;
  v5[41] = 0;
  v5[42] = 0;
  type metadata accessor for CATOption();
  v5[48] = swift_task_alloc();
  v5[38] = a2;
  v5[39] = a3;
  v5[40] = a4;
  v5[41] = v4;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)()
{
  v4 = v0[45];
  v0[37] = v0;
  type metadata accessor for RequestPaymentCATsModern(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[49] = CATWrapperSimple.__allocating_init(options:globals:)();

  v1 = swift_task_alloc();
  *(v3 + 400) = v1;
  *v1 = *(v3 + 296);
  v1[1] = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);

  return RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(v4);
}

{
  v23 = v0;
  v1 = v0[51];
  v12 = v0[47];
  v0[37] = v0;
  v0[42] = v1;

  outlined init with copy of GlobalsProviding(v12 + 24, (v0 + 17));

  outlined init with copy of GlobalsProviding(v12 + 104, (v0 + 22));

  v9 = v0[25];
  v8 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v9);
  (*(v8 + 16))(v9);

  v10 = *(v12 + 16);

  v13 = type metadata accessor for RequestPaymentCATs(0);
  v22[3] = v13;
  v22[4] = &protocol witness table for RequestPaymentCATs;
  v22[0] = v10;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v21, v22, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v20 = IntentResolutionRecord.app.getter();
  v0[53] = v20;
  v16 = IntentResolutionRecord.intent.getter();
  v0[54] = v16;

  v11 = *(v12 + 16);

  v0[30] = v13;
  v0[31] = &protocol witness table for RequestPaymentCATs;
  v17 = (v0 + 27);
  v0[27] = v11;

  v14 = *(v12 + 16);

  v0[35] = v13;
  v0[36] = &protocol witness table for RequestPaymentCATs;
  v18 = (v0 + 32);
  v0[32] = v14;
  v2 = swift_task_alloc();
  v15[55] = v2;
  v19 = type metadata accessor for INRequestPaymentIntent();
  v3 = type metadata accessor for INRequestPaymentIntentResponse();
  *v2 = v15[37];
  v2[1] = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  v4 = v15[51];
  v5 = v15[46];
  v6 = v15[43];
  v25 = v3;
  v26 = &protocol witness table for INRequestPaymentIntent;
  v27 = &protocol witness table for INRequestPaymentIntentResponse;

  return ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(v6, v20, v16, v5, v4, v17, v18, v19);
}

{
  v8 = *v1;
  v5 = (*v1 + 16);
  v6 = (*v1 + 216);
  v7 = (*v1 + 256);
  *(v8 + 296) = *v1;
  *(v8 + 448) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  else
  {
    v4 = v5[52];
    __swift_destroy_boxed_opaque_existential_0(v7);
    __swift_destroy_boxed_opaque_existential_0(v6);

    outlined destroy of ConfirmationViewBuilder(v5);
    v2 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = *(v0 + 408);
  *(v0 + 296) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 296) + 8);

  return v2();
}

{
  *(v0 + 296) = v0;

  v1 = *(*(v0 + 296) + 8);

  return v1();
}

{
  v3 = v0[54];
  v4 = v0[51];
  v0[37] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v3);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[37] + 8);

  return v1();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)(uint64_t a1)
{
  v5 = *v2;
  v5[37] = *v2;
  v5[51] = a1;
  v5[52] = v1;

  if (v1)
  {
    v3 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  else
  {

    v3 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = v3;
  v4[31] = a3;
  v4[30] = a1;
  v4[26] = v4;
  v4[27] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[22] = 0;
  v4[23] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v4[34] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v4[41] = swift_task_alloc();
  v4[27] = a2;
  v4[28] = a3;
  v4[29] = v3;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)()
{
  v42 = v0;
  v21 = v0[41];
  v22 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v0[26] = v0;
  v1 = SignpostName.makeRequestPaymentErrorResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v1, v1[1], *(v1 + 16), v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v23 = IntentResolutionRecord.intentResponse.getter();
  v24 = [v23 code];
  MEMORY[0x277D82BD8](v23);
  v27 = static PaymentIntentCATResponseCode.from(_:)(v24);
  v28 = v2;
  v0[42] = v2;
  v0[22] = v27;
  v0[23] = v2;
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v22, v3, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v4;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, v35, v36, "#RequestPaymentConfirmIntentStrategy makeErrorResponse, code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v20[40];
  v11 = v20[38];
  v12 = v20[32];
  v9 = v20[39];
  MEMORY[0x277D82BD8](v35);
  (*(v9 + 8))(v10, v11);

  outlined init with copy of GlobalsProviding(v12 + 144, (v20 + 2));

  v13 = v20[5];
  v14 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v13);
  v15 = (*(v14 + 48) + **(v14 + 48));
  v5 = swift_task_alloc();
  v20[43] = v5;
  *v5 = v20[26];
  v5[1] = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  v6 = v20[34];
  v7 = v20[31];

  return v15(v6, v7, v13, v14);
}

{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 352) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  else
  {
    v2 = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[34];
  v0[26] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[41];
    outlined destroy of TemplatingResult?(v27[34]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[24] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[25] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[24];
    v13 = v27[25];

    outlined destroy of String.UTF8View((v27 + 24));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v16;
    *(v11 + 8) = v15;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v17);

    v5 = *(v27[26] + 8);
  }

  else
  {
    v24 = v27[41];
    v25 = v27[37];
    v23 = v27[35];
    v26 = v27[33];
    v20 = v27[32];
    v21 = v27[30];
    v22 = v27[36];
    (*(v22 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);

    outlined init with copy of GlobalsProviding(v20 + 104, (v27 + 7));

    v19 = v27[10];
    v18 = v27[11];
    __swift_project_boxed_opaque_existential_1(v27 + 7, v19);
    (*(v18 + 16))(v19);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v26, 1);
    v27[17] = 0;
    v27[18] = 0;
    v27[19] = 0;
    v27[20] = 0;
    v27[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v21[3] = type metadata accessor for AceOutput();
    v21[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v21);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v26);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v22 + 8))(v25, v23);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v24);

    v5 = *(v27[26] + 8);
  }

  return v5();
}

{
  v3 = v0[41];
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for NLContextUpdate();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[36] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)()
{
  v17 = v0[36];
  v1 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v0[17] = v0;
  v2 = SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v17);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v3, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v16 + 160) = buf;
    *(v16 + 168) = v13;
    *(v16 + 176) = v14;
    serialize(_:at:)(0, (v16 + 160));
    serialize(_:at:)(0, (v16 + 160));
    *(v16 + 184) = v22;
    v15 = swift_task_alloc();
    v15[2] = v16 + 160;
    v15[3] = v16 + 168;
    v15[4] = v16 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#RequestPaymentConfirmIntentStrategy makeConfirmationRejectedResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v16 + 280);
  v9 = *(v16 + 264);
  v10 = *(v16 + 200);
  v7 = *(v16 + 272);
  MEMORY[0x277D82BD8](v21);
  (*(v7 + 8))(v8, v9);

  *(v16 + 296) = *(v10 + 16);

  v4 = swift_task_alloc();
  *(v16 + 304) = v4;
  *v4 = *(v16 + 136);
  v4[1] = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  v5 = *(v16 + 256);

  return RequestPaymentCATs.promptCancelled()(v5);
}

{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 312) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  else
  {

    v2 = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v11 = v0[36];
  v12 = v0[32];
  v9 = v0[31];
  v10 = v0[30];
  v13 = v0[29];
  v7 = v0[28];
  v8 = v0[27];
  v14 = v0[26];
  v5 = v0[25];
  v6 = v0[24];
  v0[17] = v0;
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v13);

  outlined init with copy of GlobalsProviding(v5 + 104, (v0 + 2));

  v4 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v3 + 16))(v4);

  BaseStrategy.ttsEnabled.getter();

  (*(v7 + 16))(v14, v13, v8);
  (*(v7 + 56))(v14, 0, 1, v8);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v6[3] = type metadata accessor for AceOutput();
  v6[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v7 + 8))(v13, v8);
  (*(v9 + 8))(v12, v10);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v11);

  v1 = *(v0[17] + 8);

  return v1();
}

{
  v3 = *(v0 + 288);
  *(v0 + 136) = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(*(v0 + 136) + 8);

  return v1();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 40) = buf;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    serialize(_:at:)(0, (v14 + 40));
    serialize(_:at:)(0, (v14 + 40));
    *(v14 + 64) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 40;
    v13[3] = v14 + 48;
    v13[4] = v14 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#RequestPaymentConfirmIntentStrategy makeRepromptOnEmptyParse", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 96);
  v6 = *(v14 + 80);
  v7 = *(v14 + 72);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v8, v6);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v14 + 16) + 8);

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 40) = buf;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    serialize(_:at:)(0, (v14 + 40));
    serialize(_:at:)(0, (v14 + 40));
    *(v14 + 64) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 40;
    v13[3] = v14 + 48;
    v13[4] = v14 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#RequestPaymentConfirmIntentStrategy makeRepromptOnLowConfidence", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 96);
  v6 = *(v14 + 80);
  v7 = *(v14 + 72);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v8, v6);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v14 + 16) + 8);

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)()
{
  v1 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 160) = buf;
    *(v15 + 168) = v12;
    *(v15 + 176) = v13;
    serialize(_:at:)(0, (v15 + 160));
    serialize(_:at:)(0, (v15 + 160));
    *(v15 + 184) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 160;
    v14[3] = v15 + 168;
    v14[4] = v15 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#RequestPaymentConfirmIntentStrategy makeFlowCancelledResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 256);
  v8 = *(v15 + 240);
  v9 = *(v15 + 200);
  v6 = *(v15 + 248);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 264) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 272) = v3;
  *v3 = *(v15 + 136);
  v3[1] = RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:);
  v4 = *(v15 + 232);

  return RequestPaymentCATs.promptCancelled()(v4);
}

{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 280) = v0;

  if (v0)
  {
    v2 = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  }

  else
  {

    v2 = RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[29];
  v8 = v0[28];
  v9 = v0[27];
  v11 = v0[26];
  v6 = v0[25];
  v7 = v0[24];
  v0[17] = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 2));

  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v11, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v10, v9);

  v2 = *(v0[17] + 8);

  return v2();
}

uint64_t RequestPaymentConfirmIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance RequestPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(a1, a2, a3);
}

id @nonobjc INRequestPaymentIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 initWithCode:a1 userActivity:?];
  MEMORY[0x277D82BD8](a2);
  return v5;
}

id @nonobjc INPaymentRecord.init(payee:payer:currencyAmount:paymentMethod:note:status:feeAmount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = MEMORY[0x26D620690](a5);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v9 = [v17 initWithPayee:a1 payer:a2 currencyAmount:a3 paymentMethod:a4 note:a8 status:? feeAmount:?];
  MEMORY[0x277D82BD8](a8);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v9;
}

uint64_t type metadata accessor for RequestPaymentConfirmIntentStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentConfirmIntentStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentConfirmIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t PaymentsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v35 = a2;
  v34 = a1;
  v46 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v31 = 0;
  v41 = *v4;
  v43 = type metadata accessor for Logger();
  v36 = v43;
  v37 = *(v43 - 8);
  v42 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  v5 = &v15 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v5;
  v59 = MEMORY[0x28223BE20](v34, v35);
  v58 = v6;
  v57 = *(v41 + 80);
  v55 = v7;
  v56 = v8;
  v54 = v9;
  v53[1] = *(v41 + 88);
  v10 = Logger.payments.unsafeMutableAddressor();
  (*(v42 + 16))(v5, v10, v43);
  v48 = Logger.logObject.getter();
  v44 = v48;
  v47 = static os_log_type_t.debug.getter();
  v45 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v49 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v48, v47))
  {
    v11 = v31;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = 0;
    v23 = createStorage<A>(capacity:type:)(0, v19, v19);
    v21 = v23;
    v24 = createStorage<A>(capacity:type:)(v20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v53[0] = v22;
    v52 = v23;
    v51 = v24;
    v25 = 0;
    v26 = v53;
    serialize(_:at:)(0, v53);
    serialize(_:at:)(v25, v26);
    v50 = v49;
    v27 = &v15;
    MEMORY[0x28223BE20](&v15, v12);
    v28 = &v15 - 6;
    *(&v15 - 4) = v13;
    *(&v15 - 3) = &v52;
    *(&v15 - 2) = &v51;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v30 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v44, v45, "#PaymentsHandleIntentStrategy makeIntentExecutionBehavior", v18, 2u);
      v16 = 0;
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v24, v16, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v18, MEMORY[0x277D84B78]);

      v17 = v30;
    }
  }

  else
  {

    v17 = v31;
  }

  (*(v38 + 8))(v40, v36);

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v15 = static SiriKitIntentExecutionBehavior.standard()();
  v32(v15);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C68](a1, a2, v6, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C70](a1, a2, v6, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C48](a1, a2, v6, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C40](a1, a2, v6, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C60](a1, a2, v6, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C58](a1, a2, v6, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C38](a1, a2, v6, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsHandleIntentStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = type metadata accessor for PaymentsHandleIntentStrategy(0, a3[10], a3[11], a3[12]);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return MEMORY[0x2821BBB48](a1, a2, v6, a4);
}

uint64_t ReferenceResolutionClient.resolveAppDisambiguationReference(from:)(uint64_t a1)
{
  v60 = a1;
  v47 = partial apply for implicit closure #1 in ReferenceResolutionClient.resolveAppDisambiguationReference(from:);
  v48 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v52 = 0;
  v58 = 0;
  v53 = type metadata accessor for Logger();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v2);
  v57 = v23 - v56;
  v59 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v3);
  v65 = v23 - v59;
  v66 = type metadata accessor for RREntity();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v61 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v60, v4);
  v62 = v23 - v61;
  v76 = v23 - v61;
  v75 = v5;
  v74 = v1;
  ReferenceResolutionClient.resolvePositionEntity(from:useCase:)(v5, 0, v6);
  if ((*(v63 + 48))(v65, 1, v66) == 1)
  {
    outlined destroy of RREntity?(v65);
    v23[0] = 0;
  }

  else
  {
    (*(v63 + 32))(v62, v65, v66);
    v7 = RREntity.usoEntity.getter();
    v8 = v57;
    v32 = v7;
    type metadata accessor for UsoEntity_common_App();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v33 = v73;
    v72 = v73;
    v9 = Logger.payments.unsafeMutableAddressor();
    (*(v54 + 16))(v8, v9, v53);

    v36 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v35 = 32;
    v10 = swift_allocObject();
    v11 = v37;
    v38 = v10;
    *(v10 + 16) = v47;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v38;
    v42 = v12;
    *(v12 + 16) = v48;
    *(v12 + 24) = v13;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v41 = _allocateUninitializedArray<A>(_:)();
    v43 = v14;

    v15 = v39;
    v16 = v43;
    *v43 = v49;
    v16[1] = v15;

    v17 = v40;
    v18 = v43;
    v43[2] = v50;
    v18[3] = v17;

    v19 = v42;
    v20 = v43;
    v43[4] = v51;
    v20[5] = v19;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v45, v46))
    {
      v21 = v52;
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0, v24, v24);
      v27 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v28 = &v71;
      v71 = v25;
      v29 = &v70;
      v70 = v26;
      v30 = &v69;
      v69 = v27;
      serialize(_:at:)(2, &v71);
      serialize(_:at:)(1, v28);
      v67 = v49;
      v68 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v67, v28, v29, v30);
      v31 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v67 = v50;
        v68 = v40;
        closure #1 in osLogInternal(_:log:type:)(&v67, &v71, &v70, &v69);
        v23[1] = 0;
        v67 = v51;
        v68 = v42;
        closure #1 in osLogInternal(_:log:type:)(&v67, &v71, &v70, &v69);
        _os_log_impl(&dword_2686B1000, v45, v46, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_App: %s", v25, 0xCu);
        destroyStorage<A>(_:count:)(v26, 0, v24);
        destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v25, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v45);
    (*(v54 + 8))(v57, v53);
    (*(v63 + 8))(v62, v66);
    v23[0] = v33;
  }

  return v23[0];
}

uint64_t ReferenceResolutionClient.resolvePersonDisambiguationReference(from:)(uint64_t a1)
{
  v62 = a1;
  v49 = partial apply for implicit closure #1 in ReferenceResolutionClient.resolvePersonDisambiguationReference(from:);
  v50 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v52 = partial apply for closure #1 in OSLogArguments.append(_:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v54 = 0;
  v60 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v2);
  v59 = &v23 - v58;
  v61 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v3);
  v67 = &v23 - v61;
  v69 = type metadata accessor for RREntity();
  v65 = *(v69 - 8);
  v66 = v69 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v62, v4);
  v64 = &v23 - v63;
  v79 = &v23 - v63;
  v78 = v5;
  v77 = v1;
  v68 = 1;
  ReferenceResolutionClient.resolvePositionEntity(from:useCase:)(v5, 1u, v6);
  if ((*(v65 + 48))(v67, v68, v69) == 1)
  {
    outlined destroy of RREntity?(v67);
    return 0;
  }

  else
  {
    (*(v65 + 32))(v64, v67, v69);
    v7 = RREntity.usoEntity.getter();
    v8 = v59;
    v34 = v7;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v35 = v76;
    v75 = v76;
    v9 = Logger.payments.unsafeMutableAddressor();
    (*(v56 + 16))(v8, v9, v55);

    v38 = 7;
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    v36 = 17;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v37 = 32;
    v10 = swift_allocObject();
    v11 = v39;
    v40 = v10;
    *(v10 + 16) = v49;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v40;
    v44 = v12;
    *(v12 + 16) = v50;
    *(v12 + 24) = v13;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v43 = _allocateUninitializedArray<A>(_:)();
    v45 = v14;

    v15 = v41;
    v16 = v45;
    *v45 = v51;
    v16[1] = v15;

    v17 = v42;
    v18 = v45;
    v45[2] = v52;
    v18[3] = v17;

    v19 = v44;
    v20 = v45;
    v45[4] = v53;
    v20[5] = v19;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v47, v48))
    {
      v21 = v54;
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0, v26, v26);
      v29 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v30 = &v74;
      v74 = v27;
      v31 = &v73;
      v73 = v28;
      v32 = &v72;
      v72 = v29;
      serialize(_:at:)(2, &v74);
      serialize(_:at:)(1, v30);
      v70 = v51;
      v71 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v70, v30, v31, v32);
      v33 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v70 = v52;
        v71 = v42;
        closure #1 in osLogInternal(_:log:type:)(&v70, &v74, &v73, &v72);
        v25 = 0;
        v70 = v53;
        v71 = v44;
        closure #1 in osLogInternal(_:log:type:)(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_2686B1000, v47, v48, "#ReferenceResolution Converted positional reference entity to UsoEntity_common_Person: %s", v27, 0xCu);
        destroyStorage<A>(_:count:)(v28, 0, v26);
        destroyStorage<A>(_:count:)(v29, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v27, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v47);
    (*(v56 + 8))(v59, v55);
    (*(v65 + 8))(v64, v69);
    return v35;
  }
}

void static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t ReferenceResolutionClient.resolveCommonPerson()@<X0>(void *a1@<X8>)
{
  type metadata accessor for UsoEntityBuilder_common_Person();
  UsoEntityBuilder_common_Person.__allocating_init()();
  v4 = MEMORY[0x26D61F7C0]();

  if (v4)
  {
    ReferenceResolutionClient.resolveEntity(referenceEntity:)(v4, a1);
  }

  else
  {
    v2 = type metadata accessor for RREntity();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t ReferenceResolutionClient.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v405 = a1;
  v352 = a2;
  v406 = 0;
  v456 = 0;
  v455 = 0;
  v454 = 0;
  v453 = 0;
  v452 = 0;
  v353 = 0;
  v457 = 0;
  v437 = 0;
  v430 = 0;
  v425 = 0;
  v458 = 0;
  v355 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR) - 8) + 64);
  v4 = MEMORY[0x28223BE20](0, v3);
  v357 = (v355 + 15) & 0xFFFFFFFFFFFFFFF0;
  v354 = &v116 - v357;
  v5 = MEMORY[0x28223BE20](v4, &v116 - v357);
  v356 = &v116 - v357;
  MEMORY[0x28223BE20](v5, &v116 - v357);
  v358 = &v116 - v357;
  v359 = type metadata accessor for Logger();
  v360 = *(v359 - 8);
  v361 = v360;
  v367 = *(v360 + 64);
  v6 = MEMORY[0x28223BE20](v406, v359);
  v369 = (v367 + 15) & 0xFFFFFFFFFFFFFFF0;
  v362 = &v116 - v369;
  v7 = MEMORY[0x28223BE20](v6, &v116 - v369);
  v363 = &v116 - v369;
  v8 = MEMORY[0x28223BE20](v7, &v116 - v369);
  v364 = &v116 - v369;
  v9 = MEMORY[0x28223BE20](v8, &v116 - v369);
  v365 = &v116 - v369;
  v10 = MEMORY[0x28223BE20](v9, &v116 - v369);
  v366 = &v116 - v369;
  v11 = MEMORY[0x28223BE20](v10, &v116 - v369);
  v368 = &v116 - v369;
  MEMORY[0x28223BE20](v11, &v116 - v369);
  v370 = &v116 - v369;
  v371 = type metadata accessor for RRCandidate();
  v372 = *(v371 - 8);
  v373 = v372;
  v375 = *(v372 + 64);
  v374 = v375;
  v12 = MEMORY[0x28223BE20](v406, v371);
  v377 = (v375 + 15) & 0xFFFFFFFFFFFFFFF0;
  v376 = &v116 - v377;
  MEMORY[0x28223BE20](v12, &v116 - v377);
  v378 = &v116 - v377;
  v458 = &v116 - v377;
  v379 = type metadata accessor for RRResult();
  v380 = *(v379 - 8);
  v381 = v380;
  v384 = *(v380 + 64);
  v382 = v384;
  MEMORY[0x28223BE20](v379 - 8, v379);
  v386 = (v384 + 15) & 0xFFFFFFFFFFFFFFF0;
  v383 = (&v116 - v386);
  v14 = MEMORY[0x28223BE20](&v116 - v386, v13);
  v385 = (&v116 - v386);
  MEMORY[0x28223BE20](v14, v15);
  v387 = &v116 - v386;
  v457 = &v116 - v386;
  v388 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v406, v16);
  v408 = &v116 - v388;
  v410 = type metadata accessor for RRQuery();
  v389 = *(v410 - 8);
  v409 = v389;
  MEMORY[0x28223BE20](v410 - 8, v17);
  v411 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v390 = *(*(v413 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v413 - 8, v19);
  v392 = (v390 + 15) & 0xFFFFFFFFFFFFFFF0;
  v414 = (&v116 - v392);
  v391 = (&v116 - v392);
  MEMORY[0x28223BE20](v20, v21);
  v412 = (&v116 - v392);
  v393 = (&v116 - v392);
  v456 = &v116 - v392;
  v397 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64);
  v23 = MEMORY[0x28223BE20](v406, v22);
  v399 = (v397 + 15) & 0xFFFFFFFFFFFFFFF0;
  v394 = &v116 - v399;
  v24 = MEMORY[0x28223BE20](v23, &v116 - v399);
  v395 = &v116 - v399;
  v25 = MEMORY[0x28223BE20](v24, &v116 - v399);
  v396 = &v116 - v399;
  v26 = MEMORY[0x28223BE20](v25, &v116 - v399);
  v398 = &v116 - v399;
  MEMORY[0x28223BE20](v26, &v116 - v399);
  v401 = &v116 - v399;
  v400 = &v116 - v399;
  v455 = &v116 - v399;
  v454 = v27;
  v453 = v2;
  v402 = type metadata accessor for RREntity();
  v28 = *(v402 - 8);
  v403 = *(v28 + 56);
  v404 = (v28 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v407 = 1;
  v403(v401, 1);

  v29 = v409;
  *v411 = v405;
  (*(v29 + 104))();
  v30 = type metadata accessor for RRFilter();
  (*(*(v30 - 8) + 56))(v408, v407);
  dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();
  outlined destroy of RRFilter?(v408);
  (*(v409 + 8))(v411, v410);
  outlined init with copy of Result<RRResult, Error>(v412, v414);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v347 = *(v381 + 32);
    v348 = (v381 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v347(v387, v391, v379);
    v457 = v387;
    v349 = *(v381 + 16);
    v350 = (v381 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v349)(v385);
    v351 = (*(v381 + 88))(v385, v379);
    if (v351 == *MEMORY[0x277D5FEC0])
    {
      v31 = v370;
      (*(v381 + 96))(v385, v379);
      v326 = *(v373 + 32);
      v325 = v373 + 32;
      v326(v378, v385, v371);
      v458 = v378;
      v32 = Logger.payments.unsafeMutableAddressor();
      (*(v361 + 16))(v31, v32, v359);
      v33 = *(v373 + 16);
      v323 = v373 + 16;
      v33(v376, v378, v371);
      v324 = (*(v323 + 64) + 16) & ~*(v323 + 64);
      v327 = swift_allocObject();
      v326((v327 + v324), v376, v371);

      v330 = 32;
      v334 = 32;
      v335 = 7;
      v34 = swift_allocObject();
      v35 = v327;
      v336 = v34;
      *(v34 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.resolveEntity(referenceEntity:);
      *(v34 + 24) = v35;

      v346 = Logger.logObject.getter();
      v328 = v346;
      v345 = static os_log_type_t.debug.getter();
      v329 = v345;
      v331 = 17;
      v339 = swift_allocObject();
      v332 = v339;
      *(v339 + 16) = v330;
      v340 = swift_allocObject();
      v333 = v340;
      *(v340 + 16) = 8;
      v36 = swift_allocObject();
      v37 = v336;
      v337 = v36;
      *(v36 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v337;
      v343 = v38;
      v338 = v38;
      *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v38 + 24) = v39;
      v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v341 = _allocateUninitializedArray<A>(_:)();
      v342 = v40;

      v41 = v339;
      v42 = v342;
      *v342 = partial apply for closure #1 in OSLogArguments.append(_:);
      v42[1] = v41;

      v43 = v340;
      v44 = v342;
      v342[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v44[3] = v43;

      v45 = v342;
      v46 = v343;
      v342[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v45[5] = v46;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v346, v345))
      {
        v47 = v353;
        v316 = static UnsafeMutablePointer.allocate(capacity:)();
        v313 = v316;
        v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v317 = createStorage<A>(capacity:type:)(0, v314, v314);
        v315 = v317;
        v319 = 1;
        v318 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v419 = v316;
        v418 = v317;
        v417 = v318;
        v320 = &v419;
        serialize(_:at:)(2, &v419);
        serialize(_:at:)(v319, v320);
        v415 = partial apply for closure #1 in OSLogArguments.append(_:);
        v416 = v332;
        closure #1 in osLogInternal(_:log:type:)(&v415, v320, &v418, &v417);
        v321 = v47;
        v322 = v47;
        if (v47)
        {
          v311 = 0;

          __break(1u);
        }

        else
        {
          v415 = partial apply for closure #1 in OSLogArguments.append(_:);
          v416 = v333;
          closure #1 in osLogInternal(_:log:type:)(&v415, &v419, &v418, &v417);
          v309 = 0;
          v310 = 0;
          v415 = partial apply for closure #1 in OSLogArguments.append(_:);
          v416 = v338;
          closure #1 in osLogInternal(_:log:type:)(&v415, &v419, &v418, &v417);
          v307 = 0;
          v308 = 0;
          _os_log_impl(&dword_2686B1000, v328, v329, "#ReferenceResolution Found a candidate %s", v313, 0xCu);
          destroyStorage<A>(_:count:)(v315, 0, v314);
          destroyStorage<A>(_:count:)(v318, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v313, MEMORY[0x277D84B78]);

          v312 = v307;
        }
      }

      else
      {
        v48 = v353;

        v312 = v48;
      }

      v305 = v312;

      (*(v361 + 8))(v370, v359);
      RRCandidate.entity.getter();
      (v403)(v398, 0, 1, v402);
      outlined assign with take of RREntity?(v398, v400);
      (*(v373 + 8))(v378, v371);
      v306 = v305;
      goto LABEL_57;
    }

    if (v351 == *MEMORY[0x277D5FED0])
    {
      v64 = v366;
      (*(v381 + 96))(v385, v379);
      v260 = *v385;
      v430 = v260;
      v65 = Logger.payments.unsafeMutableAddressor();
      (*(v361 + 16))(v64, v65, v359);
      v264 = Logger.logObject.getter();
      v261 = v264;
      v263 = static os_log_type_t.debug.getter();
      v262 = v263;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v265 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v264, v263))
      {
        v66 = v353;
        v251 = static UnsafeMutablePointer.allocate(capacity:)();
        v247 = v251;
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v249 = 0;
        v252 = createStorage<A>(capacity:type:)(0, v248, v248);
        v250 = v252;
        v253 = createStorage<A>(capacity:type:)(v249, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v429[0] = v251;
        v428 = v252;
        v427 = v253;
        v254 = 0;
        v255 = v429;
        serialize(_:at:)(0, v429);
        serialize(_:at:)(v254, v255);
        v426 = v265;
        v256 = &v116;
        MEMORY[0x28223BE20](&v116, v67);
        v257 = &v116 - 6;
        *(&v116 - 4) = v68;
        *(&v116 - 3) = &v428;
        *(&v116 - 2) = &v427;
        v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v259 = v66;
        if (v66)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v261, v262, "#ReferenceResolution Found ambiguous entities -> returning the first one", v247, 2u);
          v245 = 0;
          destroyStorage<A>(_:count:)(v250, 0, v248);
          destroyStorage<A>(_:count:)(v253, v245, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v247, MEMORY[0x277D84B78]);

          v246 = v259;
        }
      }

      else
      {

        v246 = v353;
      }

      v243 = v246;

      (*(v361 + 8))(v366, v359);
      v429[1] = v260;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      lazy protocol witness table accessor for type [RRCandidate] and conformance [A]();
      Collection.first.getter();
      if ((*(v373 + 48))(v356, 1, v371) == 1)
      {
        outlined destroy of RRCandidate?(v356);
        (v403)(v395, 1, 1, v402);
      }

      else
      {
        RRCandidate.entity.getter();
        (*(v373 + 8))(v356, v371);
        (v403)(v395, 0, 1, v402);
      }

      outlined assign with take of RREntity?(v395, v400);

      v306 = v243;
      goto LABEL_57;
    }

    if (v351 == *MEMORY[0x277D5FEC8])
    {
      v49 = v368;
      (*(v381 + 96))(v385, v379);
      v286 = *v385;
      v285 = v286;
      v425 = v286;
      v50 = Logger.payments.unsafeMutableAddressor();
      (*(v361 + 16))(v49, v50, v359);

      v293 = 7;
      v294 = swift_allocObject();
      *(v294 + 16) = v286;
      v304 = Logger.logObject.getter();
      v287 = v304;
      v303 = static os_log_type_t.debug.getter();
      v288 = v303;
      v289 = 17;
      v297 = swift_allocObject();
      v290 = v297;
      *(v297 + 16) = 0;
      v298 = swift_allocObject();
      v291 = v298;
      *(v298 + 16) = 8;
      v292 = 32;
      v51 = swift_allocObject();
      v52 = v294;
      v295 = v51;
      *(v51 + 16) = partial apply for implicit closure #2 in ReferenceResolutionClient.resolveEntity(referenceEntity:);
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v295;
      v301 = v53;
      v296 = v53;
      *(v53 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
      *(v53 + 24) = v54;
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v299 = _allocateUninitializedArray<A>(_:)();
      v300 = v55;

      v56 = v297;
      v57 = v300;
      *v300 = partial apply for closure #1 in OSLogArguments.append(_:);
      v57[1] = v56;

      v58 = v298;
      v59 = v300;
      v300[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v59[3] = v58;

      v60 = v300;
      v61 = v301;
      v300[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v60[5] = v61;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v304, v303))
      {
        v62 = v353;
        v279 = static UnsafeMutablePointer.allocate(capacity:)();
        v275 = v279;
        v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v277 = 0;
        v280 = createStorage<A>(capacity:type:)(0, v276, v276);
        v278 = v280;
        v281 = createStorage<A>(capacity:type:)(v277, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v424[0] = v279;
        v423 = v280;
        v422 = v281;
        v282 = v424;
        serialize(_:at:)(0, v424);
        serialize(_:at:)(1, v282);
        v420 = partial apply for closure #1 in OSLogArguments.append(_:);
        v421 = v290;
        closure #1 in osLogInternal(_:log:type:)(&v420, v282, &v423, &v422);
        v283 = v62;
        v284 = v62;
        if (v62)
        {
          v273 = 0;

          __break(1u);
        }

        else
        {
          v420 = partial apply for closure #1 in OSLogArguments.append(_:);
          v421 = v291;
          closure #1 in osLogInternal(_:log:type:)(&v420, v424, &v423, &v422);
          v271 = 0;
          v272 = 0;
          v420 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
          v421 = v296;
          closure #1 in osLogInternal(_:log:type:)(&v420, v424, &v423, &v422);
          v269 = 0;
          v270 = 0;
          _os_log_impl(&dword_2686B1000, v287, v288, "#ReferenceResolution Found %ld candidates. Using the first one", v275, 0xCu);
          v268 = 0;
          destroyStorage<A>(_:count:)(v278, 0, v276);
          destroyStorage<A>(_:count:)(v281, v268, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v275, MEMORY[0x277D84B78]);

          v274 = v269;
        }
      }

      else
      {
        v63 = v353;

        v274 = v63;
      }

      v266 = v274;

      (*(v361 + 8))(v368, v359);
      v424[1] = v285;
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      lazy protocol witness table accessor for type [RRCandidate] and conformance [A]();
      Collection.first.getter();
      if ((*(v373 + 48))(v358, 1, v371) == 1)
      {
        outlined destroy of RRCandidate?(v358);
        (v403)(v396, 1, 1, v402);
      }

      else
      {
        RRCandidate.entity.getter();
        (*(v373 + 8))(v358, v371);
        (v403)(v396, 0, 1, v402);
      }

      outlined assign with take of RREntity?(v396, v400);

      v306 = v266;
      goto LABEL_57;
    }

    if (v351 != *MEMORY[0x277D5FED8])
    {
      if (v351 == *MEMORY[0x277D5FEE0])
      {
        v75 = v364;
        v76 = Logger.payments.unsafeMutableAddressor();
        (*(v361 + 16))(v75, v76, v359);
        v214 = Logger.logObject.getter();
        v211 = v214;
        v213 = static os_log_type_t.debug.getter();
        v212 = v213;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v215 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v214, v213))
        {
          v77 = v353;
          v202 = static UnsafeMutablePointer.allocate(capacity:)();
          v198 = v202;
          v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v200 = 0;
          v203 = createStorage<A>(capacity:type:)(0, v199, v199);
          v201 = v203;
          v204 = createStorage<A>(capacity:type:)(v200, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v441 = v202;
          v440 = v203;
          v439 = v204;
          v205 = 0;
          v206 = &v441;
          serialize(_:at:)(0, &v441);
          serialize(_:at:)(v205, v206);
          v438 = v215;
          v207 = &v116;
          MEMORY[0x28223BE20](&v116, v78);
          v208 = &v116 - 6;
          *(&v116 - 4) = v79;
          *(&v116 - 3) = &v440;
          *(&v116 - 2) = &v439;
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v210 = v77;
          if (v77)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v211, v212, "#ReferenceResolution No matches found", v198, 2u);
            v196 = 0;
            destroyStorage<A>(_:count:)(v201, 0, v199);
            destroyStorage<A>(_:count:)(v204, v196, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v198, MEMORY[0x277D84B78]);

            v197 = v210;
          }
        }

        else
        {

          v197 = v353;
        }

        v195 = v197;

        (*(v361 + 8))(v364, v359);
        v306 = v195;
      }

      else
      {
        v80 = v363;
        v81 = Logger.payments.unsafeMutableAddressor();
        (*(v361 + 16))(v80, v81, v359);
        v349(v383, v387, v379);
        v174 = (*(v381 + 80) + 16) & ~*(v381 + 80);
        v175 = swift_allocObject();
        v347((v175 + v174), v383, v379);

        v178 = 32;
        v182 = 32;
        v183 = 7;
        v82 = swift_allocObject();
        v83 = v175;
        v184 = v82;
        *(v82 + 16) = partial apply for implicit closure #3 in ReferenceResolutionClient.resolveEntity(referenceEntity:);
        *(v82 + 24) = v83;

        v194 = Logger.logObject.getter();
        v176 = v194;
        v193 = static os_log_type_t.error.getter();
        v177 = v193;
        v179 = 17;
        v187 = swift_allocObject();
        v180 = v187;
        *(v187 + 16) = v178;
        v188 = swift_allocObject();
        v181 = v188;
        *(v188 + 16) = 8;
        v84 = swift_allocObject();
        v85 = v184;
        v185 = v84;
        *(v84 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4;
        *(v84 + 24) = v85;
        v86 = swift_allocObject();
        v87 = v185;
        v191 = v86;
        v186 = v86;
        *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v86 + 24) = v87;
        v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v189 = _allocateUninitializedArray<A>(_:)();
        v190 = v88;

        v89 = v187;
        v90 = v190;
        *v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v90[1] = v89;

        v91 = v188;
        v92 = v190;
        v190[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v92[3] = v91;

        v93 = v190;
        v94 = v191;
        v190[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v93[5] = v94;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v194, v193))
        {
          v96 = v353;
          v167 = static UnsafeMutablePointer.allocate(capacity:)();
          v164 = v167;
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v168 = createStorage<A>(capacity:type:)(0, v165, v165);
          v166 = v168;
          v170 = 1;
          v169 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v446[0] = v167;
          v445 = v168;
          v444 = v169;
          v171 = v446;
          serialize(_:at:)(2, v446);
          serialize(_:at:)(v170, v171);
          v442 = partial apply for closure #1 in OSLogArguments.append(_:);
          v443 = v180;
          closure #1 in osLogInternal(_:log:type:)(&v442, v171, &v445, &v444);
          v172 = v96;
          v173 = v96;
          if (v96)
          {
            v162 = 0;

            __break(1u);
          }

          else
          {
            v442 = partial apply for closure #1 in OSLogArguments.append(_:);
            v443 = v181;
            closure #1 in osLogInternal(_:log:type:)(&v442, v446, &v445, &v444);
            v160 = 0;
            v161 = 0;
            v442 = partial apply for closure #1 in OSLogArguments.append(_:);
            v443 = v186;
            closure #1 in osLogInternal(_:log:type:)(&v442, v446, &v445, &v444);
            v158 = 0;
            v159 = 0;
            _os_log_impl(&dword_2686B1000, v176, v177, "#ReferenceResolution Received unknown result type %s", v164, 0xCu);
            destroyStorage<A>(_:count:)(v166, 0, v165);
            destroyStorage<A>(_:count:)(v169, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v164, MEMORY[0x277D84B78]);

            v163 = v158;
          }
        }

        else
        {
          v97 = v353;

          v163 = v97;
        }

        v157 = v163;

        (*(v361 + 8))(v363, v359);
        (*(v381 + 8))(v385, v379);
        v306 = v157;
      }

      goto LABEL_57;
    }

    v69 = v365;
    (*(v381 + 96))(v385, v379);
    v237 = *v385;
    v437 = v237;
    v70 = Logger.payments.unsafeMutableAddressor();
    (*(v361 + 16))(v69, v70, v359);
    v241 = Logger.logObject.getter();
    v238 = v241;
    v240 = static os_log_type_t.debug.getter();
    v239 = v240;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v242 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v241, v240))
    {
      v71 = v353;
      v228 = static UnsafeMutablePointer.allocate(capacity:)();
      v224 = v228;
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v226 = 0;
      v229 = createStorage<A>(capacity:type:)(0, v225, v225);
      v227 = v229;
      v230 = createStorage<A>(capacity:type:)(v226, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v434[0] = v228;
      v433 = v229;
      v432 = v230;
      v231 = 0;
      v232 = v434;
      serialize(_:at:)(0, v434);
      serialize(_:at:)(v231, v232);
      v431 = v242;
      v233 = &v116;
      MEMORY[0x28223BE20](&v116, v72);
      v234 = &v116 - 6;
      *(&v116 - 4) = v73;
      *(&v116 - 3) = &v433;
      *(&v116 - 2) = &v432;
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v236 = v71;
      if (v71)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v238, v239, "#ReferenceResolution Found ambiguous entities -> returning the first one", v224, 2u);
        v222 = 0;
        destroyStorage<A>(_:count:)(v227, 0, v225);
        destroyStorage<A>(_:count:)(v230, v222, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v224, MEMORY[0x277D84B78]);

        v223 = v236;
      }
    }

    else
    {

      v223 = v353;
    }

    v219 = v223;

    (*(v361 + 8))(v365, v359);
    v436 = v237;
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMd, &_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMR);
    lazy protocol witness table accessor for type [[RRCandidate]] and conformance [A]();
    Collection.first.getter();
    v221 = v435;
    if (v435)
    {
      v218 = v221;
      v217 = v221;
      v434[1] = v221;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      lazy protocol witness table accessor for type [RRCandidate] and conformance [A]();
      Collection.first.getter();

      v74 = (*(v373 + 48))(v354, 1, v371);
      if (v74 != 1)
      {
        RRCandidate.entity.getter();
        (*(v373 + 8))(v354, v371);
        (v403)(v394, 0, 1, v402);
LABEL_43:
        outlined assign with take of RREntity?(v394, v400);

        v306 = v219;
LABEL_57:
        v155 = v306;
        (*(v381 + 8))(v387, v379);
        v156 = v155;
        goto LABEL_64;
      }

      outlined destroy of RRCandidate?(v354);
    }

    (v403)(v394, 1, 1, v402);
    goto LABEL_43;
  }

  v98 = v362;
  v135 = *v391;
  v134 = v135;
  v452 = v135;
  v99 = Logger.payments.unsafeMutableAddressor();
  (*(v361 + 16))(v98, v99, v359);
  MEMORY[0x26D621420](v135);
  v143 = 7;
  v144 = swift_allocObject();
  *(v144 + 16) = v135;
  v154 = Logger.logObject.getter();
  v136 = v154;
  v153 = static os_log_type_t.error.getter();
  v137 = v153;
  v138 = 17;
  v147 = swift_allocObject();
  v139 = v147;
  v140 = 32;
  *(v147 + 16) = 32;
  v100 = swift_allocObject();
  v101 = v140;
  v148 = v100;
  v141 = v100;
  *(v100 + 16) = 8;
  v142 = v101;
  v102 = swift_allocObject();
  v103 = v144;
  v145 = v102;
  *(v102 + 16) = partial apply for implicit closure #3 in LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:);
  *(v102 + 24) = v103;
  v104 = swift_allocObject();
  v105 = v145;
  v151 = v104;
  v146 = v104;
  *(v104 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v104 + 24) = v105;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v149 = _allocateUninitializedArray<A>(_:)();
  v150 = v106;

  v107 = v147;
  v108 = v150;
  *v150 = partial apply for closure #1 in OSLogArguments.append(_:);
  v108[1] = v107;

  v109 = v148;
  v110 = v150;
  v150[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v110[3] = v109;

  v111 = v150;
  v112 = v151;
  v150[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v111[5] = v112;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v154, v153))
  {
    v113 = v353;
    v127 = static UnsafeMutablePointer.allocate(capacity:)();
    v124 = v127;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v128 = createStorage<A>(capacity:type:)(0, v125, v125);
    v126 = v128;
    v130 = 1;
    v129 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v451 = v127;
    v450 = v128;
    v449 = v129;
    v131 = &v451;
    serialize(_:at:)(2, &v451);
    serialize(_:at:)(v130, v131);
    v447 = partial apply for closure #1 in OSLogArguments.append(_:);
    v448 = v139;
    closure #1 in osLogInternal(_:log:type:)(&v447, v131, &v450, &v449);
    v132 = v113;
    v133 = v113;
    if (v113)
    {
      v122 = 0;

      __break(1u);
    }

    else
    {
      v447 = partial apply for closure #1 in OSLogArguments.append(_:);
      v448 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v447, &v451, &v450, &v449);
      v120 = 0;
      v121 = 0;
      v447 = partial apply for closure #1 in OSLogArguments.append(_:);
      v448 = v146;
      closure #1 in osLogInternal(_:log:type:)(&v447, &v451, &v450, &v449);
      v118 = 0;
      v119 = 0;
      _os_log_impl(&dword_2686B1000, v136, v137, "#ReferenceResolution Received a failure: %s -> nil", v124, 0xCu);
      destroyStorage<A>(_:count:)(v126, 0, v125);
      destroyStorage<A>(_:count:)(v129, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v124, MEMORY[0x277D84B78]);

      v123 = v118;
    }
  }

  else
  {
    v114 = v353;

    v123 = v114;
  }

  v117 = v123;

  (*(v361 + 8))(v362, v359);
  v156 = v117;
LABEL_64:
  outlined init with copy of RREntity?(v400, v352);
  outlined destroy of Result<RRResult, Error>(v393);
  return outlined destroy of RREntity?(v400);
}

uint64_t ReferenceResolutionClient.resolvePositionEntity(from:useCase:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v49 = a3;
  v72 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v50 = 0;
  v77 = 0;
  v76 = 0;
  v51 = a2;
  v52 = type metadata accessor for Logger();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x28223BE20](v52 - 8, v52);
  v55 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72, v5);
  v57 = &v19 - v56;
  v58 = type metadata accessor for RREntity();
  v59 = *(v58 - 8);
  v60 = v59;
  MEMORY[0x28223BE20](v72, v58);
  v61 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v61;
  v68 = type metadata accessor for Siri_Nlu_External_UserParse();
  v62 = *(v68 - 8);
  v67 = v62;
  MEMORY[0x28223BE20](v68 - 8, v7);
  v69 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v64 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8, v63);
  v73 = &v19 - v64;
  v66 = &v19 - v64;
  v84 = a1;
  v83 = v10 & 1;
  v82 = v65;
  v11 = USOParse.userParse.getter();
  v71 = MEMORY[0x26D61F2D0](v11);
  (*(v67 + 8))(v69, v68);
  v81[1] = v71;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v74 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v66);
    v48 = 0;
  }

  else
  {
    v47 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v75 + 8))(v66, v74);
    v48 = v47;
  }

  v46 = v48;
  if (v48)
  {
    v45 = v46;
    v43 = v46;
    v77 = v46;
    v12 = ReferenceResolutionClient.extractPositionEntity(task:useCase:)(v46, v51 & 1);
    v44 = v12;
    if (v12)
    {
      v42 = v44;
      v41 = v44;
      v76 = v44;
      ReferenceResolutionClient.resolveEntity(referenceEntity:)(v44, v57);
      if ((*(v60 + 48))(v57, 1, v58) != 1)
      {
        (*(v60 + 32))(v61, v57, v58);
        (*(v60 + 16))(v49, v61, v58);
        (*(v60 + 56))(v49, 0, 1, v58);
        (*(v60 + 8))(v61, v58);

        return v50;
      }

      outlined destroy of RREntity?(v57);
    }

    else
    {
    }
  }

  v13 = v55;
  v14 = Logger.payments.unsafeMutableAddressor();
  (*(v54 + 16))(v13, v14, v52);
  v38 = Logger.logObject.getter();
  v35 = v38;
  v37 = static os_log_type_t.debug.getter();
  v36 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v15 = v50;
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = 0;
    v27 = createStorage<A>(capacity:type:)(0, v23, v23);
    v25 = v27;
    v28 = createStorage<A>(capacity:type:)(v24, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v81[0] = v26;
    v80 = v27;
    v79 = v28;
    v29 = 0;
    v30 = v81;
    serialize(_:at:)(0, v81);
    serialize(_:at:)(v29, v30);
    v78 = v39;
    v31 = &v19;
    MEMORY[0x28223BE20](&v19, v16);
    v32 = &v19 - 6;
    *(&v19 - 4) = v17;
    *(&v19 - 3) = &v80;
    *(&v19 - 2) = &v79;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v34 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v35, v36, "#ReferenceResolution Did not resolve RREntity from UsoParse, returning nil", v22, 2u);
      v20 = 0;
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v28, v20, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);

      v21 = v34;
    }
  }

  else
  {

    v21 = v50;
  }

  v19 = v21;

  (*(v54 + 8))(v55, v52);
  (*(v60 + 56))(v49, 1, 1, v58);
  return v19;
}

uint64_t ReferenceResolutionClient.extractPositionEntity(task:useCase:)(uint64_t a1, unsigned int a2)
{
  v150 = a2;
  v147 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v148 = 0;
  v172 = 0;
  v169 = 0;
  v166 = 0;
  v164 = 0;
  v149 = a2;
  v151 = type metadata accessor for Logger();
  v152 = *(v151 - 8);
  v153 = v152;
  v154 = *(v152 + 64);
  MEMORY[0x28223BE20](v151 - 8, v150);
  v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = &v29 - v156;
  MEMORY[0x28223BE20](&v29 - v156, v3);
  v157 = &v29 - v156;
  v183 = a1;
  v182 = v4 & 1;
  v181 = v5;
  UsoTask.eraseToAny.getter();
  if (!v180[3])
  {
    goto LABEL_45;
  }

  v146 = v176;
  outlined init with copy of Any?(v180, v176);
  v145 = 0;
  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (swift_dynamicCast())
  {
    v143 = v175;
    v166 = v175;

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v144 = v165;
    if (v165)
    {
      v142 = v144;
      v140 = v144;
      v164 = v144;

      v141 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

      v163 = v141;
      v139 = v141 != 0;
      v138 = v139;
      outlined destroy of ContiguousArray<A1>(&v163);
      if (v138)
      {
        v6 = v157;
        v7 = Logger.payments.unsafeMutableAddressor();
        (*(v153 + 16))(v6, v7, v151);

        v137 = Logger.logObject.getter();
        v120 = v137;
        v136 = static os_log_type_t.debug.getter();
        v121 = v136;
        v122 = 17;
        v127 = 7;
        v130 = swift_allocObject();
        v123 = v130;
        v124 = 32;
        *(v130 + 16) = 32;
        v8 = swift_allocObject();
        v9 = v124;
        v131 = v8;
        v125 = v8;
        *(v8 + 16) = 8;
        v126 = v9;
        v10 = swift_allocObject();
        v11 = v140;
        v128 = v10;
        *(v10 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:);
        *(v10 + 24) = v11;
        v12 = swift_allocObject();
        v13 = v128;
        v134 = v12;
        v129 = v12;
        *(v12 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v12 + 24) = v13;
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v132 = _allocateUninitializedArray<A>(_:)();
        v133 = v14;

        v15 = v130;
        v16 = v133;
        *v133 = partial apply for closure #1 in OSLogArguments.append(_:);
        v16[1] = v15;

        v17 = v131;
        v18 = v133;
        v133[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v18[3] = v17;

        v19 = v133;
        v20 = v134;
        v133[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v19[5] = v20;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v137, v136))
        {
          v21 = v148;
          v113 = static UnsafeMutablePointer.allocate(capacity:)();
          v110 = v113;
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v114 = createStorage<A>(capacity:type:)(0, v111, v111);
          v112 = v114;
          v116 = 1;
          v115 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v162 = v113;
          v161 = v114;
          v160 = v115;
          v117 = &v162;
          serialize(_:at:)(2, &v162);
          serialize(_:at:)(v116, v117);
          v158 = partial apply for closure #1 in OSLogArguments.append(_:);
          v159 = v123;
          closure #1 in osLogInternal(_:log:type:)(&v158, v117, &v161, &v160);
          v118 = v21;
          v119 = v21;
          if (v21)
          {
            v108 = 0;

            __break(1u);
          }

          else
          {
            v158 = partial apply for closure #1 in OSLogArguments.append(_:);
            v159 = v125;
            closure #1 in osLogInternal(_:log:type:)(&v158, &v162, &v161, &v160);
            v106 = 0;
            v107 = 0;
            v158 = partial apply for closure #1 in OSLogArguments.append(_:);
            v159 = v129;
            closure #1 in osLogInternal(_:log:type:)(&v158, &v162, &v161, &v160);
            v104 = 0;
            v105 = 0;
            _os_log_impl(&dword_2686B1000, v120, v121, "#ReferenceResolution Found positional reference, returning: %s", v110, 0xCu);
            destroyStorage<A>(_:count:)(v112, 0, v111);
            destroyStorage<A>(_:count:)(v115, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v110, MEMORY[0x277D84B78]);

            v109 = v104;
          }
        }

        else
        {
          v22 = v148;

          v109 = v22;
        }

        v101 = v109;

        (*(v153 + 8))(v157, v151);

        v99 = CodeGenBase.entity.getter();

        v100 = v99;

        __swift_destroy_boxed_opaque_existential_0(v176);
        outlined destroy of FlowActivity?(v180);
        v102 = v100;
        v103 = v101;
        return v102;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v176);
    outlined destroy of FlowActivity?(v180);
    goto LABEL_46;
  }

  v98 = 0;
  type metadata accessor for UsoTask_pay_common_Payment();
  if (swift_dynamicCast())
  {
    v97 = v174;
    v169 = v174;
    if (static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.__derived_enum_equals(_:_:)(v149 & 1, 0))
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v96 = v167;
      v95 = v167;

      if (v96)
      {
        v94 = v95;
        v91 = v95;
        v92 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        v93 = v92;
      }

      else
      {
        v93 = 0;
      }

      v88 = v93;
      v89 = ReferenceResolutionClient.helper(app:)(v93);

      v90 = v89;
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v87 = v168;
      v86 = v168;

      if (v87 && (v85 = v86, v82 = v86, v84 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), v83 = v84, , v84))
      {
        v81 = v83;
        v78 = v83;
        v79 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v80 = v79;
      }

      else
      {
        v80 = 0;
      }

      v76 = v80;
      v77 = ReferenceResolutionClient.helper(person:)(v80);

      v90 = v77;
    }

    v75 = v90;

    __swift_destroy_boxed_opaque_existential_0(v176);
    outlined destroy of FlowActivity?(v180);
    v102 = v75;
    v103 = v148;
    return v102;
  }

  v74 = 0;
  type metadata accessor for UsoTask_requestMoney_common_Payment();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v176);
LABEL_45:
    outlined destroy of FlowActivity?(v180);
LABEL_46:
    v23 = v155;
    v24 = Logger.payments.unsafeMutableAddressor();
    (*(v153 + 16))(v23, v24, v151);
    v49 = Logger.logObject.getter();
    v46 = v49;
    v48 = static os_log_type_t.debug.getter();
    v47 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v50 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v49, v48))
    {
      v25 = v148;
      v37 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = v37;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = 0;
      v38 = createStorage<A>(capacity:type:)(0, v34, v34);
      v36 = v38;
      v39 = createStorage<A>(capacity:type:)(v35, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v179 = v37;
      v178 = v38;
      v177 = v39;
      v40 = 0;
      v41 = &v179;
      serialize(_:at:)(0, &v179);
      serialize(_:at:)(v40, v41);
      v176[5] = v50;
      v42 = &v29;
      MEMORY[0x28223BE20](&v29, v26);
      v43 = &v29 - 6;
      *(&v29 - 4) = v27;
      *(&v29 - 3) = &v178;
      *(&v29 - 2) = &v177;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v45 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v46, v47, "#ReferenceResolution Found no positional reference, returning nil", v33, 2u);
        v31 = 0;
        destroyStorage<A>(_:count:)(v36, 0, v34);
        destroyStorage<A>(_:count:)(v39, v31, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v33, MEMORY[0x277D84B78]);

        v32 = v45;
      }
    }

    else
    {

      v32 = v148;
    }

    v30 = v32;

    (*(v153 + 8))(v155, v151);
    v102 = 0;
    v103 = v30;
    return v102;
  }

  v73 = v173;
  v172 = v173;
  if (static ReferenceResolutionClient.PaymentsReferenceResolutionUseCase.__derived_enum_equals(_:_:)(v149 & 1, 0))
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v72 = v170;
    v71 = v170;

    if (v72)
    {
      v70 = v71;
      v67 = v71;
      v68 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    v64 = v69;
    v65 = ReferenceResolutionClient.helper(app:)(v69);

    v66 = v65;
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v63 = v171;
    v62 = v171;

    if (v63 && (v61 = v62, v58 = v62, v60 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), v59 = v60, , v60))
    {
      v57 = v59;
      v54 = v59;
      v55 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v52 = v56;
    v53 = ReferenceResolutionClient.helper(person:)(v56);

    v66 = v53;
  }

  v51 = v66;

  __swift_destroy_boxed_opaque_existential_0(v176);
  outlined destroy of FlowActivity?(v180);
  v102 = v51;
  v103 = v148;
  return v102;
}

uint64_t implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:)()
{

  CodeGenBase.entity.getter();

  v1 = UsoEntity.debugString.getter();

  return v1;
}

uint64_t ReferenceResolutionClient.helper(app:)(uint64_t a1)
{
  v100 = a1;
  v113 = 0;
  v112 = 0;
  v92 = 0;
  v107 = 0;
  v93 = type metadata accessor for Logger();
  v94 = *(v93 - 8);
  v95 = v94;
  v96 = *(v94 + 64);
  v2 = MEMORY[0x28223BE20](v100, v93);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v27 - v98;
  v3 = MEMORY[0x28223BE20](v2, &v27 - v98);
  v99 = &v27 - v98;
  v113 = v3;
  v112 = v1;

  if (v100)
  {
    v91 = v100;
    v89 = v100;
    v107 = v100;

    v90 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

    v106 = v90;
    v88 = v90 != 0;
    v87 = v88;
    outlined destroy of ContiguousArray<A1>(&v106);
    if (v87)
    {
      v4 = v99;
      v5 = Logger.payments.unsafeMutableAddressor();
      (*(v95 + 16))(v4, v5, v93);

      v86 = Logger.logObject.getter();
      v69 = v86;
      v85 = static os_log_type_t.debug.getter();
      v70 = v85;
      v71 = 17;
      v76 = 7;
      v79 = swift_allocObject();
      v72 = v79;
      v73 = 32;
      *(v79 + 16) = 32;
      v6 = swift_allocObject();
      v7 = v73;
      v80 = v6;
      v74 = v6;
      *(v6 + 16) = 8;
      v75 = v7;
      v8 = swift_allocObject();
      v9 = v89;
      v77 = v8;
      *(v8 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:);
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v77;
      v83 = v10;
      v78 = v10;
      *(v10 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v10 + 24) = v11;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v81 = _allocateUninitializedArray<A>(_:)();
      v82 = v12;

      v13 = v79;
      v14 = v82;
      *v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v14[1] = v13;

      v15 = v80;
      v16 = v82;
      v82[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v16[3] = v15;

      v17 = v82;
      v18 = v83;
      v82[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v17[5] = v18;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v86, v85))
      {
        v19 = v92;
        v62 = static UnsafeMutablePointer.allocate(capacity:)();
        v59 = v62;
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v63 = createStorage<A>(capacity:type:)(0, v60, v60);
        v61 = v63;
        v65 = 1;
        v64 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v105 = v62;
        v104 = v63;
        v103 = v64;
        v66 = &v105;
        serialize(_:at:)(2, &v105);
        serialize(_:at:)(v65, v66);
        v101 = partial apply for closure #1 in OSLogArguments.append(_:);
        v102 = v72;
        closure #1 in osLogInternal(_:log:type:)(&v101, v66, &v104, &v103);
        v67 = v19;
        v68 = v19;
        if (v19)
        {
          v57 = 0;

          __break(1u);
        }

        else
        {
          v101 = partial apply for closure #1 in OSLogArguments.append(_:);
          v102 = v74;
          closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
          v55 = 0;
          v56 = 0;
          v101 = partial apply for closure #1 in OSLogArguments.append(_:);
          v102 = v78;
          closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
          v53 = 0;
          v54 = 0;
          _os_log_impl(&dword_2686B1000, v69, v70, "#ReferenceResolution Found positional reference, returning: %s", v59, 0xCu);
          destroyStorage<A>(_:count:)(v61, 0, v60);
          destroyStorage<A>(_:count:)(v64, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v59, MEMORY[0x277D84B78]);

          v58 = v53;
        }
      }

      else
      {
        v20 = v92;

        v58 = v20;
      }

      v50 = v58;

      (*(v95 + 8))(v99, v93);

      v48 = CodeGenBase.entity.getter();

      v49 = v48;

      v51 = v49;
      v52 = v50;
      return v51;
    }
  }

  v21 = v97;
  v22 = Logger.payments.unsafeMutableAddressor();
  (*(v95 + 16))(v21, v22, v93);
  v46 = Logger.logObject.getter();
  v43 = v46;
  v45 = static os_log_type_t.debug.getter();
  v44 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v46, v45))
  {
    v23 = v92;
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = v34;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = 0;
    v35 = createStorage<A>(capacity:type:)(0, v31, v31);
    v33 = v35;
    v36 = createStorage<A>(capacity:type:)(v32, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v111 = v34;
    v110 = v35;
    v109 = v36;
    v37 = 0;
    v38 = &v111;
    serialize(_:at:)(0, &v111);
    serialize(_:at:)(v37, v38);
    v108 = v47;
    v39 = &v27;
    MEMORY[0x28223BE20](&v27, v24);
    v40 = &v27 - 6;
    *(&v27 - 4) = v25;
    *(&v27 - 3) = &v110;
    *(&v27 - 2) = &v109;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v42 = v23;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v43, v44, "#ReferenceResolution Found no positional reference, returning nil", v30, 2u);
      v28 = 0;
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v36, v28, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v30, MEMORY[0x277D84B78]);

      v29 = v42;
    }
  }

  else
  {

    v29 = v92;
  }

  v27 = v29;

  (*(v95 + 8))(v97, v93);
  v51 = 0;
  v52 = v27;
  return v51;
}

uint64_t ReferenceResolutionClient.helper(person:)(uint64_t a1)
{
  v100 = a1;
  v113 = 0;
  v112 = 0;
  v92 = 0;
  v107 = 0;
  v93 = type metadata accessor for Logger();
  v94 = *(v93 - 8);
  v95 = v94;
  v96 = *(v94 + 64);
  v2 = MEMORY[0x28223BE20](v100, v93);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v27 - v98;
  v3 = MEMORY[0x28223BE20](v2, &v27 - v98);
  v99 = &v27 - v98;
  v113 = v3;
  v112 = v1;

  if (v100)
  {
    v91 = v100;
    v89 = v100;
    v107 = v100;

    v90 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

    v106 = v90;
    v88 = v90 != 0;
    v87 = v88;
    outlined destroy of ContiguousArray<A1>(&v106);
    if (v87)
    {
      v4 = v99;
      v5 = Logger.payments.unsafeMutableAddressor();
      (*(v95 + 16))(v4, v5, v93);

      v86 = Logger.logObject.getter();
      v69 = v86;
      v85 = static os_log_type_t.debug.getter();
      v70 = v85;
      v71 = 17;
      v76 = 7;
      v79 = swift_allocObject();
      v72 = v79;
      v73 = 32;
      *(v79 + 16) = 32;
      v6 = swift_allocObject();
      v7 = v73;
      v80 = v6;
      v74 = v6;
      *(v6 + 16) = 8;
      v75 = v7;
      v8 = swift_allocObject();
      v9 = v89;
      v77 = v8;
      *(v8 + 16) = partial apply for implicit closure #1 in ReferenceResolutionClient.extractPositionEntity(task:useCase:);
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v77;
      v83 = v10;
      v78 = v10;
      *(v10 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v10 + 24) = v11;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v81 = _allocateUninitializedArray<A>(_:)();
      v82 = v12;

      v13 = v79;
      v14 = v82;
      *v82 = partial apply for closure #1 in OSLogArguments.append(_:);
      v14[1] = v13;

      v15 = v80;
      v16 = v82;
      v82[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v16[3] = v15;

      v17 = v82;
      v18 = v83;
      v82[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v17[5] = v18;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v86, v85))
      {
        v19 = v92;
        v62 = static UnsafeMutablePointer.allocate(capacity:)();
        v59 = v62;
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v63 = createStorage<A>(capacity:type:)(0, v60, v60);
        v61 = v63;
        v65 = 1;
        v64 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v105 = v62;
        v104 = v63;
        v103 = v64;
        v66 = &v105;
        serialize(_:at:)(2, &v105);
        serialize(_:at:)(v65, v66);
        v101 = partial apply for closure #1 in OSLogArguments.append(_:);
        v102 = v72;
        closure #1 in osLogInternal(_:log:type:)(&v101, v66, &v104, &v103);
        v67 = v19;
        v68 = v19;
        if (v19)
        {
          v57 = 0;

          __break(1u);
        }

        else
        {
          v101 = partial apply for closure #1 in OSLogArguments.append(_:);
          v102 = v74;
          closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
          v55 = 0;
          v56 = 0;
          v101 = partial apply for closure #1 in OSLogArguments.append(_:);
          v102 = v78;
          closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
          v53 = 0;
          v54 = 0;
          _os_log_impl(&dword_2686B1000, v69, v70, "#ReferenceResolution Found positional reference, returning: %s", v59, 0xCu);
          destroyStorage<A>(_:count:)(v61, 0, v60);
          destroyStorage<A>(_:count:)(v64, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v59, MEMORY[0x277D84B78]);

          v58 = v53;
        }
      }

      else
      {
        v20 = v92;

        v58 = v20;
      }

      v50 = v58;

      (*(v95 + 8))(v99, v93);

      v48 = CodeGenBase.entity.getter();

      v49 = v48;

      v51 = v49;
      v52 = v50;
      return v51;
    }
  }

  v21 = v97;
  v22 = Logger.payments.unsafeMutableAddressor();
  (*(v95 + 16))(v21, v22, v93);
  v46 = Logger.logObject.getter();
  v43 = v46;
  v45 = static os_log_type_t.debug.getter();
  v44 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v46, v45))
  {
    v23 = v92;
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = v34;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = 0;
    v35 = createStorage<A>(capacity:type:)(0, v31, v31);
    v33 = v35;
    v36 = createStorage<A>(capacity:type:)(v32, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v111 = v34;
    v110 = v35;
    v109 = v36;
    v37 = 0;
    v38 = &v111;
    serialize(_:at:)(0, &v111);
    serialize(_:at:)(v37, v38);
    v108 = v47;
    v39 = &v27;
    MEMORY[0x28223BE20](&v27, v24);
    v40 = &v27 - 6;
    *(&v27 - 4) = v25;
    *(&v27 - 3) = &v110;
    *(&v27 - 2) = &v109;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v42 = v23;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v43, v44, "#ReferenceResolution Found no positional reference, returning nil", v30, 2u);
      v28 = 0;
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v36, v28, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v30, MEMORY[0x277D84B78]);

      v29 = v42;
    }
  }

  else
  {

    v29 = v92;
  }

  v27 = v29;

  (*(v95 + 8))(v97, v93);
  v51 = 0;
  v52 = v27;
  return v51;
}

unint64_t lazy protocol witness table accessor for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase()
{
  v2 = lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase;
  if (!lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase;
  if (!lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReferenceResolutionClient.PaymentsReferenceResolutionUseCase and conformance ReferenceResolutionClient.PaymentsReferenceResolutionUseCase);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of RRFilter?(uint64_t a1)
{
  v3 = type metadata accessor for RRFilter();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of Result<RRResult, Error>(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
    MEMORY[0x26D621420]();
    *a2 = v4;
  }

  else
  {
    v2 = type metadata accessor for RRResult();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *outlined init with copy of RREntity?(const void *a1, void *a2)
{
  v6 = type metadata accessor for RREntity();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id *outlined destroy of Result<RRResult, Error>(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = type metadata accessor for RRResult();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_268826E44()
{
  v2 = *(type metadata accessor for RRResult() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in ReferenceResolutionClient.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RRResult();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #3 in ReferenceResolutionClient.resolveEntity(referenceEntity:)(v3, a1);
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for RRResult();
  v1 = lazy protocol witness table accessor for type RRResult and conformance RRResult();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type RRResult and conformance RRResult()
{
  v2 = lazy protocol witness table cache variable for type RRResult and conformance RRResult;
  if (!lazy protocol witness table cache variable for type RRResult and conformance RRResult)
  {
    type metadata accessor for RRResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RRResult and conformance RRResult);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [[RRCandidate]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[RRCandidate]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[RRCandidate]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMd, &_sSaySay32SiriReferenceResolutionDataModel11RRCandidateVGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[RRCandidate]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined assign with take of RREntity?(const void *a1, void *a2)
{
  v7 = type metadata accessor for RREntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type [RRCandidate] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RRCandidate] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RRCandidate] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_sSay32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RRCandidate] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of RRCandidate?(uint64_t a1)
{
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268827678()
{
  v2 = *(type metadata accessor for RRCandidate() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in ReferenceResolutionClient.resolveEntity(referenceEntity:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RRCandidate();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #1 in ReferenceResolutionClient.resolveEntity(referenceEntity:)(v3, a1);
}

unint64_t lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate()
{
  v2 = lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate;
  if (!lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate)
  {
    type metadata accessor for RRCandidate();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay23SiriReferenceResolution0bC6ClientC0A15PaymentsIntentsE0ebC7UseCaseOGMd, &_sSay23SiriReferenceResolution0bC6ClientC0A15PaymentsIntentsE0ebC7UseCaseOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [ReferenceResolutionClient.PaymentsReferenceResolutionUseCase] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t SendPaymentConfirmIntentStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INSendPaymentIntent();
  v2 = type metadata accessor for INSendPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for SendPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = SendPaymentConfirmIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  v1 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v17 + 48) = buf;
    *(v17 + 56) = v14;
    *(v17 + 64) = v15;
    serialize(_:at:)(0, (v17 + 48));
    serialize(_:at:)(0, (v17 + 48));
    *(v17 + 72) = v22;
    v16 = swift_task_alloc();
    v16[2] = v17 + 48;
    v16[3] = v17 + 56;
    v16[4] = v17 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#SendPaymentConfirmIntentStrategy parseConfirmationResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v17 + 152);
  v6 = *(v17 + 136);
  v10 = *(v17 + 128);
  v8 = *(v17 + 112);
  v11 = *(v17 + 104);
  v5 = *(v17 + 144);
  v7 = *(v17 + 120);
  MEMORY[0x277D82BD8](v21);
  (*(v5 + 8))(v9, v6);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v11);
  (*(v7 + 8))(v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for INSendPaymentIntent();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();

  v3 = *(*(v17 + 16) + 8);

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[106] = v2;
  v3[105] = a2;
  v3[104] = a1;
  v3[77] = v3;
  v3[78] = 0;
  v3[79] = 0;
  v3[84] = 0;
  v3[89] = 0;
  v3[94] = 0;
  v3[75] = 0;
  v3[76] = 0;
  v3[95] = 0;
  v3[96] = 0;
  v3[97] = 0;
  v3[98] = 0;
  v3[99] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[107] = swift_task_alloc();
  v4 = type metadata accessor for NLContextUpdate();
  v3[108] = v4;
  v3[109] = *(v4 - 8);
  v3[110] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[111] = v5;
  v3[112] = *(v5 - 8);
  v3[113] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[119] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[120] = v6;
  v3[121] = *(v6 - 8);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[127] = swift_task_alloc();
  v3[78] = a2;
  v3[79] = v2;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)()
{
  v169 = v0;
  v157 = v0[127];
  v1 = v0[126];
  v158 = v0[121];
  v159 = v0[120];
  v0[77] = v0;
  v2 = SignpostName.makeSendPaymentPromptForConfirm.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v157);
  v3 = Logger.payments.unsafeMutableAddressor();
  v160 = *(v158 + 16);
  v160(v1, v3, v159);
  v162 = Logger.logObject.getter();
  v161 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v163 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v162, v161))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v153 = createStorage<A>(capacity:type:)(0, v151, v151);
    v154 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v156 + 800) = buf;
    *(v156 + 808) = v153;
    *(v156 + 816) = v154;
    serialize(_:at:)(0, (v156 + 800));
    serialize(_:at:)(0, (v156 + 800));
    *(v156 + 824) = v163;
    v155 = swift_task_alloc();
    v155[2] = v156 + 800;
    v155[3] = v156 + 808;
    v155[4] = v156 + 816;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v162, v161, "#SendPaymentConfirmIntentStrategy makePromptForConfirmation", buf, 2u);
    destroyStorage<A>(_:count:)(v153, 0, v151);
    destroyStorage<A>(_:count:)(v154, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v146 = *(v156 + 1008);
  v147 = *(v156 + 960);
  v145 = *(v156 + 968);
  MEMORY[0x277D82BD8](v162);
  v148 = *(v145 + 8);
  v148(v146, v147);
  *(v156 + 1024) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v149 = IntentResolutionRecord.intentResponse.getter();
  v150 = [v149 paymentRecord];
  *(v156 + 1032) = v150;
  if (v150)
  {
    v4 = *(v156 + 1000);
    v136 = *(v156 + 960);
    *(v156 + 672) = v150;
    MEMORY[0x277D82BD8](v149);
    v5 = Logger.payments.unsafeMutableAddressor();
    v160(v4, v5, v136);
    MEMORY[0x277D82BE0](v150);
    v137 = swift_allocObject();
    *(v137 + 16) = v150;
    oslog = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();
    v139 = swift_allocObject();
    *(v139 + 16) = 64;
    v140 = swift_allocObject();
    *(v140 + 16) = 8;
    v138 = swift_allocObject();
    *(v138 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v138 + 24) = v137;
    v141 = swift_allocObject();
    *(v141 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v141 + 24) = v138;
    _allocateUninitializedArray<A>(_:)();
    v142 = v6;

    *v142 = partial apply for closure #1 in OSLogArguments.append(_:);
    v142[1] = v139;

    v142[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v142[3] = v140;

    v142[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v142[5] = v141;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v144))
    {
      v133 = static UnsafeMutablePointer.allocate(capacity:)();
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v134 = createStorage<A>(capacity:type:)(1, v132, v132);
      v135 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v164 = v133;
      v165 = v134;
      v166 = v135;
      serialize(_:at:)(2, &v164);
      serialize(_:at:)(1, &v164);
      v167 = partial apply for closure #1 in OSLogArguments.append(_:);
      v168 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
      v167 = partial apply for closure #1 in OSLogArguments.append(_:);
      v168 = v140;
      closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
      v167 = partial apply for closure #1 in OSLogArguments.append(_:);
      v168 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
      _os_log_impl(&dword_2686B1000, oslog, v144, "#SendPaymentConfirmIntentStrategy intent contained paymentRecord: %@", v133, 0xCu);
      destroyStorage<A>(_:count:)(v134, 1, v132);
      destroyStorage<A>(_:count:)(v135, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v133, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v129 = *(v156 + 1000);
    v130 = *(v156 + 960);
    MEMORY[0x277D82BD8](oslog);
    v148(v129, v130);
    v131 = [v150 payee];
    *(v156 + 1040) = v131;
    if (v131)
    {
      *(v156 + 712) = v131;
      v7 = [v150 currencyAmount];
      v128 = v7;
      *(v156 + 1048) = v7;
      if (v7)
      {
        *(v156 + 752) = v7;
        v127 = [v150 note];
        if (v127)
        {
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v8;
          MEMORY[0x277D82BD8](v127);
          v125 = v123;
          v126 = v124;
        }

        else
        {
          v125 = 0;
          v126 = 0;
        }

        *(v156 + 1056) = v126;
        v116 = *(v156 + 848);
        *(v156 + 600) = v125;
        *(v156 + 608) = v126;
        v115 = [v150 feeAmount];
        *(v156 + 1064) = v115;
        *(v156 + 760) = v115;
        type metadata accessor for PaymentsDialogConcept.Builder(0);
        v119 = PaymentsDialogConcept.Builder.__allocating_init()();
        *(v156 + 1072) = v119;
        *(v156 + 768) = v119;
        type metadata accessor for DialogPerson();
        MEMORY[0x277D82BE0](v131);

        outlined init with copy of GlobalsProviding(v116 + 104, v156 + 136);

        v118 = *(v156 + 160);
        v117 = *(v156 + 168);
        __swift_project_boxed_opaque_existential_1((v156 + 136), v118);
        (*(v117 + 16))(v118);
        __swift_project_boxed_opaque_existential_1((v156 + 176), *(v156 + 200));
        dispatch thunk of DeviceState.siriLocale.getter();
        v121 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
        __swift_destroy_boxed_opaque_existential_0((v156 + 176));
        __swift_destroy_boxed_opaque_existential_0((v156 + 136));

        v120 = (v119 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
        swift_beginAccess();
        *v120 = v121;

        swift_endAccess();

        type metadata accessor for DialogCurrency.Builder();
        DialogCurrency.Builder.__allocating_init()();
        v9 = [v128 amount];
        v122 = v9;
        if (v9)
        {
          [v9 doubleValue];
          MEMORY[0x277D82BD8](v122);
        }

        dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

        v114 = [v128 currencyCode];
        if (v114)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v10;
          MEMORY[0x277D82BD8](v114);
          v113 = v112;
        }

        else
        {
          v113 = 0;
        }

        if (v113)
        {
          v111 = *(v156 + 944);
          String.toSpeakableString.getter();

          v11 = type metadata accessor for SpeakableString();
          (*(*(v11 - 8) + 56))(v111, 0, 1);
        }

        else
        {
          v87 = *(v156 + 944);
          v26 = type metadata accessor for SpeakableString();
          (*(*(v26 - 8) + 56))(v87, 1);
        }

        v109 = *(v156 + 944);
        dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
        outlined destroy of SpeakableString?(v109);

        v110 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

        swift_beginAccess();
        v119[2] = v110;

        swift_endAccess();

        if (v126)
        {
          v108 = *(v156 + 936);
          String.toSpeakableString.getter();

          v12 = type metadata accessor for SpeakableString();
          (*(*(v12 - 8) + 56))(v108, 0, 1);
        }

        else
        {
          v88 = *(v156 + 936);
          v25 = type metadata accessor for SpeakableString();
          (*(*(v25 - 8) + 56))(v88, 1);
        }

        v107 = *(v156 + 936);
        v105 = *(v156 + 928);
        outlined init with copy of SpeakableString?(v107, v105);
        v106 = v119 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
        swift_beginAccess();
        outlined assign with take of SpeakableString?(v105, v106);
        swift_endAccess();
        outlined destroy of SpeakableString?(v107);
        MEMORY[0x277D82BE0](v115);
        if (v115)
        {
          *(v156 + 792) = v115;
          DialogCurrency.Builder.__allocating_init()();
          v13 = [v115 amount];
          v104 = v13;
          if (v13)
          {
            [v13 doubleValue];
            MEMORY[0x277D82BD8](v104);
          }

          dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

          v103 = [v115 currencyCode];
          if (v103)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v14;
            MEMORY[0x277D82BD8](v103);
            v102 = v101;
          }

          else
          {
            v102 = 0;
          }

          if (v102)
          {
            v100 = *(v156 + 920);
            String.toSpeakableString.getter();

            v15 = type metadata accessor for SpeakableString();
            (*(*(v15 - 8) + 56))(v100, 0, 1);
          }

          else
          {
            v97 = *(v156 + 920);
            v16 = type metadata accessor for SpeakableString();
            (*(*(v16 - 8) + 56))(v97, 1);
          }

          v98 = *(v156 + 920);
          dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
          outlined destroy of SpeakableString?(v98);

          v99 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

          swift_beginAccess();
          v119[4] = v99;

          swift_endAccess();

          MEMORY[0x277D82BD8](v115);
        }

        if (v126)
        {
          v96 = *(v156 + 912);
          String.toSpeakableString.getter();

          v17 = type metadata accessor for SpeakableString();
          (*(*(v17 - 8) + 56))(v96, 0, 1);
        }

        else
        {
          v89 = *(v156 + 912);
          v24 = type metadata accessor for SpeakableString();
          (*(*(v24 - 8) + 56))(v89, 1);
        }

        v91 = *(v156 + 928);
        v93 = *(v156 + 912);
        outlined init with copy of SpeakableString?(v93, v91);
        v92 = v119 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
        swift_beginAccess();
        outlined assign with take of SpeakableString?(v91, v92);
        swift_endAccess();
        outlined destroy of SpeakableString?(v93);
        IntentResolutionRecord.app.getter();
        v94 = App.sirikitApp.getter();

        swift_beginAccess();
        v119[3] = v94;

        swift_endAccess();

        v95 = PaymentsDialogConcept.Builder.build()();
        *(v156 + 1080) = v95;
        *(v156 + 776) = v95;
        if (static RFFeatureFlags.ResponseFramework.SMART.getter())
        {
          v18 = swift_task_alloc();
          *(v156 + 1088) = v18;
          *v18 = *(v156 + 616);
          v18[1] = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v19 = *(v156 + 840);
          v20 = *(v156 + 832);

          return SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)(v20, v19, v95);
        }

        else
        {
          v90 = *(v156 + 848);

          *(v156 + 1104) = *(v90 + 16);

          v22 = swift_task_alloc();
          *(v156 + 1112) = v22;
          *v22 = *(v156 + 616);
          v22[1] = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v23 = *(v156 + 904);

          return SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(v23, v95);
        }
      }

      v27 = *(v156 + 992);
      v83 = *(v156 + 960);
      v28 = Logger.payments.unsafeMutableAddressor();
      v160(v27, v28, v83);
      log = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      v86 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v84))
      {
        v79 = static UnsafeMutablePointer.allocate(capacity:)();
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v80 = createStorage<A>(capacity:type:)(0, v78, v78);
        v81 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v156 + 720) = v79;
        *(v156 + 728) = v80;
        *(v156 + 736) = v81;
        serialize(_:at:)(0, (v156 + 720));
        serialize(_:at:)(0, (v156 + 720));
        *(v156 + 744) = v86;
        v82 = swift_task_alloc();
        v82[2] = v156 + 720;
        v82[3] = v156 + 728;
        v82[4] = v156 + 736;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v84, "#SendPaymentConfirmIntentStrategy found no currencyAmount in paymentRecord, throwing exception", v79, 2u);
        destroyStorage<A>(_:count:)(v80, 0, v78);
        destroyStorage<A>(_:count:)(v81, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v79, MEMORY[0x277D84B78]);
      }

      v77 = *(v156 + 1016);
      v72 = *(v156 + 992);
      v73 = *(v156 + 960);
      MEMORY[0x277D82BD8](log);
      v148(v72, v73);
      v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1);
      type metadata accessor for INSendPaymentIntent();
      v76 = [swift_getObjCClassFromMetadata() description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v30;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v31 = v29;
      *(v31 + 16) = v75;
      *(v31 + 24) = v74;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0;
      *(v31 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v150);
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v77);
    }

    else
    {
      v32 = *(v156 + 984);
      v68 = *(v156 + 960);
      v33 = Logger.payments.unsafeMutableAddressor();
      v160(v32, v33, v68);
      v70 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      v71 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v70, v69))
      {
        v64 = static UnsafeMutablePointer.allocate(capacity:)();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v65 = createStorage<A>(capacity:type:)(0, v63, v63);
        v66 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v156 + 680) = v64;
        *(v156 + 688) = v65;
        *(v156 + 696) = v66;
        serialize(_:at:)(0, (v156 + 680));
        serialize(_:at:)(0, (v156 + 680));
        *(v156 + 704) = v71;
        v67 = swift_task_alloc();
        v67[2] = v156 + 680;
        v67[3] = v156 + 688;
        v67[4] = v156 + 696;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v70, v69, "#SendPaymentConfirmIntentStrategy found no payee in paymentRecord, throwing exception", v64, 2u);
        destroyStorage<A>(_:count:)(v65, 0, v63);
        destroyStorage<A>(_:count:)(v66, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v64, MEMORY[0x277D84B78]);
      }

      v62 = *(v156 + 1016);
      v57 = *(v156 + 984);
      v58 = *(v156 + 960);
      MEMORY[0x277D82BD8](v70);
      v148(v57, v58);
      v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
      type metadata accessor for INSendPaymentIntent();
      v61 = [swift_getObjCClassFromMetadata() description];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v35;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v36 = v34;
      *(v36 + 16) = v60;
      *(v36 + 24) = v59;
      *(v36 + 32) = 0;
      *(v36 + 40) = 0;
      *(v36 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v150);
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v62);
    }
  }

  else
  {
    v37 = *(v156 + 976);
    v53 = *(v156 + 960);
    MEMORY[0x277D82BD8](v149);
    v38 = Logger.payments.unsafeMutableAddressor();
    v160(v37, v38, v53);
    v55 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v56 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v55, v54))
    {
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0, v48, v48);
      v51 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v156 + 640) = v49;
      *(v156 + 648) = v50;
      *(v156 + 656) = v51;
      serialize(_:at:)(0, (v156 + 640));
      serialize(_:at:)(0, (v156 + 640));
      *(v156 + 664) = v56;
      v52 = swift_task_alloc();
      v52[2] = v156 + 640;
      v52[3] = v156 + 648;
      v52[4] = v156 + 656;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, v55, v54, "#SendPaymentHandleIntentStrategy found no paymentRecord in intent response, throwing exception", v49, 2u);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v49, MEMORY[0x277D84B78]);
    }

    v47 = *(v156 + 1016);
    v42 = *(v156 + 976);
    v43 = *(v156 + 960);
    MEMORY[0x277D82BD8](v55);
    v148(v42, v43);
    type metadata accessor for INSendPaymentIntent();
    v46 = [swift_getObjCClassFromMetadata() description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v39;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v40 = v45;
    *(v40 + 8) = v44;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    *(v40 + 40) = 0;
    *(v40 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v46);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v47);
  }

  v41 = *(*(v156 + 616) + 8);

  return v41();
}

{
  v4 = *v1;
  *(v4 + 616) = *v1;
  *(v4 + 1096) = v0;

  if (v0)
  {
    v2 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v2 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v3 = v0[133];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[127];
  v0[77] = v0;

  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v1 = *(v0[77] + 8);

  return v1();
}

{
  v4 = *v1;
  *(v4 + 616) = *v1;
  *(v4 + 1120) = v0;

  if (v0)
  {
    v2 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {

    v2 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v20 = v0;
  v5 = v0[110];
  v9 = v0[106];
  v0[77] = v0;
  has_malloc_size = _swift_stdlib_has_malloc_size();
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v5);

  outlined init with copy of GlobalsProviding(v9 + 24, (v0 + 27));

  outlined init with copy of GlobalsProviding(v9 + 104, (v0 + 32));

  v7 = v0[35];
  v6 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v7);
  (*(v6 + 16))(v7);

  v8 = *(v9 + 16);

  v10 = type metadata accessor for SendPaymentCATs(0);
  v19[3] = v10;
  v19[4] = &protocol witness table for SendPaymentCATs;
  v19[0] = v8;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 27, v18, v19, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v17 = IntentResolutionRecord.app.getter();
  v0[141] = v17;
  v16 = IntentResolutionRecord.intent.getter();
  v0[142] = v16;
  v13 = IntentResolutionRecord.intentResponse.getter();
  v0[143] = v13;

  v11 = *(v9 + 16);

  v0[40] = v10;
  v0[41] = &protocol witness table for SendPaymentCATs;
  v14 = (v0 + 37);
  v0[37] = v11;
  v2 = swift_task_alloc();
  *(v12 + 1152) = v2;
  v15 = type metadata accessor for INSendPaymentIntent();
  v3 = type metadata accessor for INSendPaymentIntentResponse();
  *v2 = *(v12 + 616);
  v2[1] = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);

  return ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(v17, v16, v13, v14, v15, v3, &protocol witness table for INSendPaymentIntent, &protocol witness table for INSendPaymentIntentResponse);
}

{
  v1 = v0[145];
  v15 = v0[133];
  v16 = v0[131];
  v17 = v0[130];
  v18 = v0[129];
  v19 = v0[127];
  v13 = v0[113];
  v12 = v0[112];
  v14 = v0[111];
  v10 = v0[110];
  v9 = v0[109];
  v11 = v0[108];
  v8 = v0[107];
  v6 = v0[106];
  v7 = v0[104];
  v0[77] = v0;
  v0[98] = v1;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 42));

  v5 = v0[45];
  v4 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  (*(v9 + 16))(v8, v10, v11);
  (*(v9 + 56))(v8, 0, 1, v11);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  (*(v9 + 8))(v10, v11);
  (*(v12 + 8))(v13, v14);

  MEMORY[0x277D82BD8](v15);

  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v19);

  v2 = *(v0[77] + 8);

  return v2();
}

{
  v3 = v0[133];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[127];
  v0[77] = v0;

  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v1 = *(v0[77] + 8);

  return v1();
}

{
  v3 = v0[133];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[127];
  v0[77] = v0;

  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v1 = *(v0[77] + 8);

  return v1();
}

{
  v3 = v0[143];
  v4 = v0[142];
  v11 = v0[133];
  v12 = v0[131];
  v13 = v0[130];
  v14 = v0[129];
  v15 = v0[127];
  v9 = v0[113];
  v8 = v0[112];
  v10 = v0[111];
  v7 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v0[77] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v5 + 8))(v7, v6);
  (*(v8 + 8))(v9, v10);

  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v15);

  v1 = *(v0[77] + 8);

  return v1();
}

uint64_t SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1)
{
  v9 = *v2;
  v7 = (*v2 + 16);
  v8 = (*v2 + 296);
  v9[77] = *v2;
  v9[145] = a1;
  v9[146] = v1;

  if (v1)
  {
    v3 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v5 = v7[141];
    v6 = v7[140];
    __swift_destroy_boxed_opaque_existential_0(v8);

    outlined destroy of ConfirmationViewBuilder(v7);
    v3 = SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = v3;
  v4[44] = a3;
  v4[43] = a2;
  v4[42] = a1;
  v4[37] = v4;
  v4[38] = 0;
  v4[39] = 0;
  v4[40] = 0;
  v4[41] = 0;
  type metadata accessor for CATOption();
  v4[46] = swift_task_alloc();
  v4[38] = a2;
  v4[39] = a3;
  v4[40] = v3;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)()
{
  v4 = v0[44];
  v0[37] = v0;
  type metadata accessor for SendPaymentCATsModern(0);
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[47] = CATWrapperSimple.__allocating_init(options:globals:)();

  v1 = swift_task_alloc();
  *(v3 + 384) = v1;
  *v1 = *(v3 + 296);
  v1[1] = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);

  return SendPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(v4);
}

{
  v23 = v0;
  v1 = v0[49];
  v11 = v0[45];
  v0[37] = v0;
  v0[41] = v1;

  outlined init with copy of GlobalsProviding(v11 + 24, (v0 + 17));

  outlined init with copy of GlobalsProviding(v11 + 104, (v0 + 22));

  v8 = v0[25];
  v7 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
  (*(v7 + 16))(v8);

  v9 = *(v11 + 16);

  v12 = type metadata accessor for SendPaymentCATs(0);
  v22[3] = v12;
  v22[4] = &protocol witness table for SendPaymentCATs;
  v22[0] = v9;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v21, v22, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v20 = IntentResolutionRecord.app.getter();
  v0[51] = v20;
  v15 = IntentResolutionRecord.intent.getter();
  v0[52] = v15;
  v16 = IntentResolutionRecord.intentResponse.getter();
  v0[53] = v16;

  v10 = *(v11 + 16);

  v0[30] = v12;
  v0[31] = &protocol witness table for SendPaymentCATs;
  v17 = (v0 + 27);
  v0[27] = v10;

  v13 = *(v11 + 16);

  v0[35] = v12;
  v0[36] = &protocol witness table for SendPaymentCATs;
  v18 = (v0 + 32);
  v0[32] = v13;
  v2 = swift_task_alloc();
  v14[54] = v2;
  v19 = type metadata accessor for INSendPaymentIntent();
  v3 = type metadata accessor for INSendPaymentIntentResponse();
  *v2 = v14[37];
  v2[1] = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  v4 = v14[49];
  v5 = v14[42];
  v25 = v3;
  v26 = &protocol witness table for INSendPaymentIntent;
  v27 = &protocol witness table for INSendPaymentIntentResponse;

  return ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(v5, v20, v15, v16, v4, v17, v18, v19);
}

{
  v9 = *v1;
  v6 = (*v1 + 16);
  v7 = (*v1 + 216);
  v8 = (*v1 + 256);
  *(v9 + 296) = *v1;
  *(v9 + 440) = v0;

  if (v0)
  {
    v2 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  else
  {
    v4 = v6[51];
    v5 = v6[50];
    __swift_destroy_boxed_opaque_existential_0(v8);
    __swift_destroy_boxed_opaque_existential_0(v7);

    outlined destroy of ConfirmationViewBuilder(v6);
    v2 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = *(v0 + 392);
  *(v0 + 296) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 296) + 8);

  return v2();
}

{
  *(v0 + 296) = v0;

  v1 = *(*(v0 + 296) + 8);

  return v1();
}

{
  v3 = v0[53];
  v4 = v0[52];
  v5 = v0[49];
  v0[37] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  MEMORY[0x277D82BD8](v5);

  v1 = *(v0[37] + 8);

  return v1();
}

uint64_t SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:)(uint64_t a1)
{
  v5 = *v2;
  v5[37] = *v2;
  v5[49] = a1;
  v5[50] = v1;

  if (v1)
  {
    v3 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  else
  {

    v3 = SendPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = v3;
  v4[31] = a3;
  v4[30] = a1;
  v4[26] = v4;
  v4[27] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[22] = 0;
  v4[23] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v4[34] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v4[41] = swift_task_alloc();
  v4[27] = a2;
  v4[28] = a3;
  v4[29] = v3;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)()
{
  v42 = v0;
  v21 = v0[41];
  v22 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v0[26] = v0;
  v1 = SignpostName.makeSendPaymentErrorResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v1, v1[1], *(v1 + 16), v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v23 = IntentResolutionRecord.intentResponse.getter();
  v24 = [v23 code];
  MEMORY[0x277D82BD8](v23);
  v27 = static PaymentIntentCATResponseCode.from(_:)(v24);
  v28 = v2;
  v0[42] = v2;
  v0[22] = v27;
  v0[23] = v2;
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v22, v3, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v4;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, v35, v36, "#SendPaymentConfirmIntentStrategy makeErrorResponse, response had %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v20[40];
  v11 = v20[38];
  v12 = v20[32];
  v9 = v20[39];
  MEMORY[0x277D82BD8](v35);
  (*(v9 + 8))(v10, v11);

  outlined init with copy of GlobalsProviding(v12 + 144, (v20 + 2));

  v13 = v20[5];
  v14 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v13);
  v15 = (*(v14 + 48) + **(v14 + 48));
  v5 = swift_task_alloc();
  v20[43] = v5;
  *v5 = v20[26];
  v5[1] = SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  v6 = v20[34];
  v7 = v20[31];

  return v15(v6, v7, v13, v14);
}

{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 352) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  else
  {
    v2 = SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[34];
  v0[26] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[41];
    outlined destroy of TemplatingResult?(v27[34]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[24] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[25] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[24];
    v13 = v27[25];

    outlined destroy of String.UTF8View((v27 + 24));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v16;
    *(v11 + 8) = v15;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v17);

    v5 = *(v27[26] + 8);
  }

  else
  {
    v24 = v27[41];
    v25 = v27[37];
    v23 = v27[35];
    v26 = v27[33];
    v20 = v27[32];
    v21 = v27[30];
    v22 = v27[36];
    (*(v22 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);

    outlined init with copy of GlobalsProviding(v20 + 104, (v27 + 7));

    v19 = v27[10];
    v18 = v27[11];
    __swift_project_boxed_opaque_existential_1(v27 + 7, v19);
    (*(v18 + 16))(v19);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v26, 1);
    v27[17] = 0;
    v27[18] = 0;
    v27[19] = 0;
    v27[20] = 0;
    v27[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v21[3] = type metadata accessor for AceOutput();
    v21[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v21);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v26);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v22 + 8))(v25, v23);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v24);

    v5 = *(v27[26] + 8);
  }

  return v5();
}

uint64_t SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for NLContextUpdate();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[36] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)()
{
  v17 = v0[36];
  v1 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v0[17] = v0;
  v2 = SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v17);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v3, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v16 + 160) = buf;
    *(v16 + 168) = v13;
    *(v16 + 176) = v14;
    serialize(_:at:)(0, (v16 + 160));
    serialize(_:at:)(0, (v16 + 160));
    *(v16 + 184) = v22;
    v15 = swift_task_alloc();
    v15[2] = v16 + 160;
    v15[3] = v16 + 168;
    v15[4] = v16 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#SendPaymentConfirmIntentStrategy makeConfirmationRejectedResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v16 + 280);
  v9 = *(v16 + 264);
  v10 = *(v16 + 200);
  v7 = *(v16 + 272);
  MEMORY[0x277D82BD8](v21);
  (*(v7 + 8))(v8, v9);

  *(v16 + 296) = *(v10 + 16);

  v4 = swift_task_alloc();
  *(v16 + 304) = v4;
  *v4 = *(v16 + 136);
  v4[1] = SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  v5 = *(v16 + 256);

  return SendPaymentCATs.promptCancelled()(v5);
}

{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 312) = v0;

  if (v0)
  {
    v2 = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  else
  {

    v2 = SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v12 = v0[36];
  v13 = v0[32];
  v10 = v0[31];
  v11 = v0[30];
  v14 = v0[29];
  v8 = v0[28];
  v9 = v0[27];
  v15 = v0[26];
  v6 = v0[25];
  v7 = v0[24];
  v0[17] = v0;
  has_malloc_size = _swift_stdlib_has_malloc_size();
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v14);

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 2));

  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  (*(v8 + 16))(v15, v14, v9);
  (*(v8 + 56))(v15, 0, 1, v9);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v14, v9);
  (*(v10 + 8))(v13, v11);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v12);

  v2 = *(v0[17] + 8);

  return v2();
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 40) = buf;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    serialize(_:at:)(0, (v14 + 40));
    serialize(_:at:)(0, (v14 + 40));
    *(v14 + 64) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 40;
    v13[3] = v14 + 48;
    v13[4] = v14 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#SendPaymentConfirmIntentStrategy makeRepromptOnEmptyParse", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 96);
  v6 = *(v14 + 80);
  v7 = *(v14 + 72);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v8, v6);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v14 + 16) + 8);

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 40) = buf;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    serialize(_:at:)(0, (v14 + 40));
    serialize(_:at:)(0, (v14 + 40));
    *(v14 + 64) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 40;
    v13[3] = v14 + 48;
    v13[4] = v14 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#SendPaymentConfirmIntentStrategy makeRepromptOnLowConfidence", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v14 + 96);
  v6 = *(v14 + 80);
  v7 = *(v14 + 72);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v8, v6);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v14 + 16) + 8);

  return v3();
}

uint64_t SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:), 0);
}

uint64_t SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)()
{
  v1 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 160) = buf;
    *(v15 + 168) = v12;
    *(v15 + 176) = v13;
    serialize(_:at:)(0, (v15 + 160));
    serialize(_:at:)(0, (v15 + 160));
    *(v15 + 184) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 160;
    v14[3] = v15 + 168;
    v14[4] = v15 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentConfirmIntentStrategy makeFlowCancelledResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 256);
  v8 = *(v15 + 240);
  v9 = *(v15 + 200);
  v6 = *(v15 + 248);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 264) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 272) = v3;
  *v3 = *(v15 + 136);
  v3[1] = RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:);
  v4 = *(v15 + 232);

  return SendPaymentCATs.promptCancelled()(v4);
}

uint64_t SendPaymentConfirmIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance SendPaymentConfirmIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(a1, a2, a3);
}

uint64_t type metadata accessor for SendPaymentConfirmIntentStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentConfirmIntentStrategy;
  if (!type metadata singleton initialization cache for SendPaymentConfirmIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SAClientBoundCommand.data.getter()
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = v0;
  v12 = [v0 dictionary];
  if (!v12)
  {
    return Data.init()();
  }

  v14 = v12;
  v16 = 0;
  v9 = objc_opt_self();
  MEMORY[0x277D82BE0](v12);
  v13 = 0;
  v11 = [v9 dataWithPropertyList:v12 format:200 options:0 error:&v13];
  v10 = v13;
  MEMORY[0x277D82BE0](v13);
  v1 = v16;
  v16 = v10;
  MEMORY[0x277D82BD8](v1);
  swift_unknownObjectRelease();
  if (v11)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v2;
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v7 = v17;
    outlined copy of Data._Representation(v17, v18);
    outlined destroy of Data(&v17);
    return v7;
  }

  else
  {
    v4 = v16;
    v5 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v4);
    swift_willThrow();
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x26D621420](v5);
    v6 = Data.init()();

    return v6;
  }
}

void *SiriPaymentsSnippetModel.PaymentConfirmationModel.init(confirmLabel:cancelLabel:noteLabel:feeLabel:confirmDI:cancelDI:appId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  __src[11] = a13;
  __src[12] = a14;
  __src[13] = a15;
  return memcpy(a9, __src, 0x70uLL);
}

void *SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.init(intent:response:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v4 - 8) + 32))(a4, a1);
  v12 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v8 = *(v12 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v5 - 8) + 32))(a4 + v8, a2);
  return memcpy((a4 + *(v12 + 24)), a3, 0x70uLL);
}

void *SiriPaymentsSnippetModel.SendPaymentConfirmationModel.init(intent:response:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v4 - 8) + 32))(a4, a1);
  v12 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v8 = *(v12 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v5 - 8) + 32))(a4 + v8, a2);
  return memcpy((a4 + *(v12 + 24)), a3, 0x70uLL);
}

void *SiriPaymentsSnippetModel.BinaryConfirmationModel.init(primaryButtonDI:primaryButtonLabel:secondaryButtonDI:secondaryButtonLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  return memcpy(a9, __src, 0x40uLL);
}

uint64_t one-time initialization function for bundleName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SiriPaymentsUIPlugin", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static SiriPaymentsSnippetModel.bundleName = v1;
  return result;
}

__int128 *SiriPaymentsSnippetModel.bundleName.unsafeMutableAddressor()
{
  if (one-time initialization token for bundleName != -1)
  {
    swift_once();
  }

  return &static SiriPaymentsSnippetModel.bundleName;
}

uint64_t static SiriPaymentsSnippetModel.bundleName.getter()
{
  v1 = *SiriPaymentsSnippetModel.bundleName.unsafeMutableAddressor();

  return v1;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.intent.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.response.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
  if (!type metadata singleton initialization cache for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.response.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v5 = &v4 - v4;
  (*(v6 + 16))();
  v2 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  (*(v6 + 40))(v1 + *(v2 + 20), v5, v8);
  return (*(v6 + 8))(v9, v8);
}

void *SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.confirmation.setter(void *a1)
{
  outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, v5);
  v2 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  outlined assign with take of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, (v1 + *(v2 + 24)));
  return outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1);
}

void *outlined assign with take of SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];

  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];
  a2[5] = a1[5];

  a2[6] = a1[6];
  a2[7] = a1[7];

  v2 = a1[9];
  v3 = a2[8];
  v4 = a2[9];
  a2[8] = a1[8];
  a2[9] = v2;
  outlined consume of Data._Representation(v3, v4);
  v5 = a1[11];
  v6 = a2[10];
  v7 = a2[11];
  a2[10] = a1[10];
  a2[11] = v5;
  outlined consume of Data._Representation(v6, v7);
  a2[12] = a1[12];
  a2[13] = a1[13];

  return a2;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intent", 6uLL, 1);
  v14 = a1;
  v15 = a2;
  v9 = MEMORY[0x26D620740](v16._countAndFlagsBits, v16._object, a1, a2);
  outlined destroy of String.UTF8View(&v16);
  if (v9)
  {

    v19 = 0;
    v6 = 0;
LABEL_8:

    return v6;
  }

  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("response", 8uLL, 1);
  v11 = a1;
  v12 = a2;
  v5 = MEMORY[0x26D620740](v13._countAndFlagsBits, v13._object, a1, a2);
  outlined destroy of String.UTF8View(&v13);
  if (v5)
  {

    v19 = 1;
    v6 = 1;
    goto LABEL_8;
  }

  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmation", 0xCuLL, 1);
  v4 = MEMORY[0x26D620740](v10._countAndFlagsBits, v10._object, a1, a2);
  outlined destroy of String.UTF8View(&v10);
  if (v4)
  {

    v19 = 2;
    v6 = 2;
    goto LABEL_8;
  }

  return 3;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intent", 6uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("response", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmation", 0xCuLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.encode(to:)(uint64_t a1)
{
  v31 = v55;
  v32 = a1;
  v55[1] = 0;
  v55[0] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v2);
  v29 = v12 - v28;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v39 = *(v44 - 8);
  v40 = v44 - 8;
  v30 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44, v3);
  v46 = v12 - v30;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v33 = *(v43 - 8);
  v34 = v43 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v32, v4);
  v38 = v12 - v35;
  v6[1] = v5;
  *v6 = v1;
  v36 = v5[3];
  v37 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v36);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v39 + 16))(v46, v41, v44);
  v42 = &v54;
  v54 = 0;
  lazy protocol witness table accessor for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>();
  v7 = v45;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v47 = v7;
  v48 = v7;
  if (v7)
  {
    v13 = v48;
    (*(v39 + 8))(v46, v44);
    result = (*(v33 + 8))(v38, v43);
    v14 = v13;
  }

  else
  {
    (*(v39 + 8))(v46, v44);
    v21 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    (*(v26 + 16))(v29, v41 + *(v21 + 20), v25);
    v22 = &v53;
    v53 = 1;
    lazy protocol witness table accessor for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>();
    v8 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = v8;
    v24 = v8;
    if (v8)
    {
      v12[1] = v24;
      (*(v26 + 8))(v29, v25);
      return (*(v33 + 8))(v38, v43);
    }

    else
    {
      (*(v26 + 8))(v29, v25);
      v9 = (v41 + *(v21 + 24));
      v15 = __dst;
      v16 = 112;
      memcpy(__dst, v9, sizeof(__dst));
      outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(__dst, v51);
      v18 = v50;
      memcpy(v50, v15, v16);
      v17 = &v49;
      v49 = 2;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
      v10 = v23;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v19 = v10;
      v20 = v10;
      if (v10)
      {
        v12[0] = v20;
      }

      outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v50);
      return (*(v33 + 8))(v38, v43);
    }
  }

  return result;
}