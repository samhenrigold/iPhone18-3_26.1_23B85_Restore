uint64_t partial apply for closure #1 in EncoreConversation.deinit()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.deinit();
}

uint64_t outlined init with copy of EncoreEngineEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of EncoreConversation.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in EncoreConversation.handleEncoreEvent(event:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.handleEncoreEvent(event:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in EncoreConversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in Conversation.ensureReady(timeout:)(a1, v1);
}

uint64_t partial apply for closure #1 in EncoreConversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.ensureReady(timeout:)(a1, v1);
}

uint64_t outlined assign with take of SiriRequest?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *outlined destroy of SiriRequestContext(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
  return a1;
}

uint64_t outlined assign with take of EncoreConversation.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncoreConversation.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in EncoreConversation.commit()(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RequestContinuation(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.commit()(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t *assignWithCopy for SiriRequestContext(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for SiriRequestContext(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void type metadata completion function for EncoreConversation(uint64_t a1)
{
  type metadata accessor for SiriRequest?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EncoreConversation.State(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for SiriRequest?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SiriRequest?)
  {
    type metadata accessor for SiriRequest(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SiriRequest?);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for EncoreConversation.State(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v17 = a2[3];
        if (v17)
        {
          v18 = a2[4];
          *(a1 + 24) = v17;
          *(a1 + 32) = v18;
          (**(v17 - 8))(a1, a2);
        }

        else
        {
          v74 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v74;
          *(a1 + 32) = a2[4];
        }

        goto LABEL_57;
      }

      v28 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v28;
      v29 = type metadata accessor for SiriRequest(0);
      v30 = v29[5];
      v31 = type metadata accessor for Input();
      v32 = *(*(v31 - 8) + 16);

      v107 = v32;
      v109 = v31;
      v32((a1 + v30), a2 + v30, v31);
      *(a1 + v29[6]) = *(a2 + v29[6]);
      *(a1 + v29[7]) = *(a2 + v29[7]);
      v33 = v29[8];
      v34 = a1 + v33;
      v35 = (a2 + v33);
      v36 = *(a2 + v33 + 8);

      if (v36 >> 60 == 15)
      {
        *v34 = *v35;
      }

      else
      {
        v53 = *v35;
        outlined copy of Data._Representation(*v35, v36);
        *v34 = v53;
        *(v34 + 8) = v36;
      }

      *(a1 + v29[9]) = *(a2 + v29[9]);
      *(a1 + v29[10]) = *(a2 + v29[10]);
      *(a1 + v29[11]) = *(a2 + v29[11]);
      v54 = v29[12];
      __dstb = (a1 + v54);
      v55 = a2 + v54;
      v56 = type metadata accessor for SiriRequestIdentities(0);
      v104 = *(v56 - 8);
      v57 = *(v104 + 48);

      v58 = v55;
      if (v57(v55, 1, v56))
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dstb, v55, *(*(v59 - 8) + 64));
      }

      else
      {
        v75 = type metadata accessor for IdentifiedUser();
        v76 = *(v75 - 8);
        v77 = v58;
        v78 = v58;
        v79 = *(v76 + 48);
        v103 = v76;
        if (v79(v78, 1, v75))
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dstb, v77, *(*(v80 - 8) + 64));
        }

        else
        {
          (*(v76 + 16))(__dstb, v77, v75);
          (*(v76 + 56))(__dstb, 0, 1, v75);
        }

        v97 = *(v56 + 20);
        if (v79(&v77[v97], 1, v75))
        {
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dstb[v97], &v77[v97], *(*(v98 - 8) + 64));
        }

        else
        {
          (*(v103 + 16))(&__dstb[v97], &v77[v97], v75);
          (*(v103 + 56))(&__dstb[v97], 0, 1, v75);
        }

        *&__dstb[*(v56 + 24)] = *&v77[*(v56 + 24)];
        v99 = *(v104 + 56);

        v99(__dstb, 0, 1, v56);
      }

      v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v94 = (a1 + v100);
      v95 = a2 + v100;
      v96 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_55:
        memcpy(v94, v95, *(*(v96 - 8) + 64));
        goto LABEL_56;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v19;
        v20 = type metadata accessor for SiriRequest(0);
        v21 = v20[5];
        v22 = type metadata accessor for Input();
        v23 = *(*(v22 - 8) + 16);

        v108 = v23;
        v110 = v22;
        v23((a1 + v21), a2 + v21, v22);
        *(a1 + v20[6]) = *(a2 + v20[6]);
        *(a1 + v20[7]) = *(a2 + v20[7]);
        v24 = v20[8];
        v25 = a1 + v24;
        v26 = (a2 + v24);
        v27 = *(a2 + v24 + 8);

        if (v27 >> 60 == 15)
        {
          *v25 = *v26;
        }

        else
        {
          v37 = *v26;
          outlined copy of Data._Representation(*v26, v27);
          *v25 = v37;
          *(v25 + 8) = v27;
        }

        *(a1 + v20[9]) = *(a2 + v20[9]);
        *(a1 + v20[10]) = *(a2 + v20[10]);
        *(a1 + v20[11]) = *(a2 + v20[11]);
        v38 = v20[12];
        __dst = (a1 + v38);
        v39 = a2 + v38;
        v40 = type metadata accessor for SiriRequestIdentities(0);
        v41 = *(v40 - 8);
        v42 = *(v41 + 48);

        v43 = v39;
        if (v42(v39, 1, v40))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v39, *(*(v44 - 8) + 64));
        }

        else
        {
          v105 = v41;
          v60 = type metadata accessor for IdentifiedUser();
          v61 = *(v60 - 8);
          v62 = v43;
          v63 = v43;
          v64 = *(v61 + 48);
          if (v64(v63, 1, v60))
          {
            v65 = v61;
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v62, *(*(v66 - 8) + 64));
          }

          else
          {
            (*(v61 + 16))(__dst, v62, v60);
            v65 = v61;
            (*(v61 + 56))(__dst, 0, 1, v60);
          }

          v81 = *(v40 + 20);
          if (v64(&v62[v81], 1, v60))
          {
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v81], &v62[v81], *(*(v82 - 8) + 64));
          }

          else
          {
            (*(v65 + 16))(&__dst[v81], &v62[v81], v60);
            (*(v65 + 56))(&__dst[v81], 0, 1, v60);
          }

          *&__dst[*(v40 + 24)] = *&v62[*(v40 + 24)];
          v83 = *(v105 + 56);

          v83(__dst, 0, 1, v40);
        }

        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
        v85 = *(v84 + 48);
        v86 = (a1 + v85);
        v87 = a2 + v85;
        v88 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v108(v86, v87, v110);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v86, v87, *(*(v88 - 8) + 64));
        }

        v89 = type metadata accessor for RequestContinuation(0);
        *&v86[*(v89 + 20)] = *&v87[*(v89 + 20)];
        *(a1 + *(v84 + 64)) = *(a2 + *(v84 + 64));

        goto LABEL_57;
      }

      if (EnumCaseMultiPayload != 3)
      {
        *a1 = *a2;

LABEL_57:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v7;
      v8 = type metadata accessor for SiriRequest(0);
      v9 = v8[5];
      v10 = type metadata accessor for Input();
      v11 = *(*(v10 - 8) + 16);

      v107 = v11;
      v109 = v10;
      v11((a1 + v9), a2 + v9, v10);
      *(a1 + v8[6]) = *(a2 + v8[6]);
      *(a1 + v8[7]) = *(a2 + v8[7]);
      v12 = v8[8];
      v13 = a1 + v12;
      v14 = (a2 + v12);
      v15 = *(a2 + v12 + 8);

      if (v15 >> 60 == 15)
      {
        *v13 = *v14;
      }

      else
      {
        v45 = *v14;
        outlined copy of Data._Representation(*v14, v15);
        *v13 = v45;
        *(v13 + 8) = v15;
      }

      *(a1 + v8[9]) = *(a2 + v8[9]);
      *(a1 + v8[10]) = *(a2 + v8[10]);
      *(a1 + v8[11]) = *(a2 + v8[11]);
      v46 = v8[12];
      __dsta = (a1 + v46);
      v47 = a2 + v46;
      v48 = type metadata accessor for SiriRequestIdentities(0);
      v49 = *(v48 - 8);
      v50 = *(v49 + 48);

      v51 = v47;
      if (v50(v47, 1, v48))
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dsta, v47, *(*(v52 - 8) + 64));
      }

      else
      {
        v106 = v49;
        v67 = type metadata accessor for IdentifiedUser();
        v68 = *(v67 - 8);
        v69 = v51;
        v70 = v51;
        v71 = *(v68 + 48);
        if (v71(v70, 1, v67))
        {
          v72 = v68;
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dsta, v69, *(*(v73 - 8) + 64));
        }

        else
        {
          (*(v68 + 16))(__dsta, v69, v67);
          v72 = v68;
          (*(v68 + 56))(__dsta, 0, 1, v67);
        }

        v90 = *(v48 + 20);
        if (v71(&v69[v90], 1, v67))
        {
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dsta[v90], &v69[v90], *(*(v91 - 8) + 64));
        }

        else
        {
          (*(v72 + 16))(&__dsta[v90], &v69[v90], v67);
          (*(v72 + 56))(&__dsta[v90], 0, 1, v67);
        }

        *&__dsta[*(v48 + 24)] = *&v69[*(v48 + 24)];
        v92 = *(v106 + 56);

        v92(__dsta, 0, 1, v48);
      }

      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v94 = (a1 + v93);
      v95 = a2 + v93;
      v96 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_55;
      }
    }

    v107(v94, v95, v109);
    swift_storeEnumTagMultiPayload();
LABEL_56:
    v101 = type metadata accessor for RequestContinuation(0);
    *&v94[*(v101 + 20)] = *&v95[*(v101 + 20)];

    goto LABEL_57;
  }

  v16 = *a2;
  *a1 = *a2;
  a1 = v16 + ((v5 + 16) & ~v5);

  return a1;
}

uint64_t destroy for EncoreConversation.State(char *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {

      v17 = type metadata accessor for SiriRequest(0);
      v18 = v17[5];
      v19 = type metadata accessor for Input();
      v20 = *(*(v19 - 8) + 8);
      v20(&a1[v18], v19);

      v21 = &a1[v17[8]];
      v22 = v21[1];
      if (v22 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v21, v22);
      }

      v23 = &a1[v17[12]];
      v24 = type metadata accessor for SiriRequestIdentities(0);
      if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
      {
        v31 = v20;
        v25 = type metadata accessor for IdentifiedUser();
        v26 = *(v25 - 8);
        v27 = *(v26 + 48);
        if (!v27(v23, 1, v25))
        {
          (*(v26 + 8))(v23, v25);
        }

        v28 = *(v24 + 20);
        if (!v27(&v23[v28], 1, v25))
        {
          (*(v26 + 8))(&v23[v28], v25);
        }

        v20 = v31;
      }

      v29 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR) + 48)];
      type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20(v29, v19);
      }

      type metadata accessor for RequestContinuation(0);

      goto LABEL_30;
    }

    if (result != 3)
    {
      if (result != 4)
      {
        return result;
      }

      goto LABEL_30;
    }

LABEL_8:

    v4 = type metadata accessor for SiriRequest(0);
    v5 = v4[5];
    v6 = type metadata accessor for Input();
    v7 = *(*(v6 - 8) + 8);
    v7(&a1[v5], v6);

    v8 = &a1[v4[8]];
    v9 = v8[1];
    if (v9 >> 60 != 15)
    {
      outlined consume of Data._Representation(*v8, v9);
    }

    v10 = &a1[v4[12]];
    v11 = type metadata accessor for SiriRequestIdentities(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v30 = v7;
      v12 = type metadata accessor for IdentifiedUser();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      if (!v14(v10, 1, v12))
      {
        (*(v13 + 8))(v10, v12);
      }

      v15 = *(v11 + 20);
      if (!v14(&v10[v15], 1, v12))
      {
        (*(v13 + 8))(&v10[v15], v12);
      }

      v7 = v30;
    }

    v16 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48)];
    type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7(v16, v6);
    }

    type metadata accessor for RequestContinuation(0);
LABEL_30:
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (*(a1 + 3))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t initializeWithCopy for EncoreConversation.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v17;
      v18 = type metadata accessor for SiriRequest(0);
      v19 = v18[5];
      v20 = type metadata accessor for Input();
      v21 = *(*(v20 - 8) + 16);

      v102 = v21;
      v104 = v20;
      v21((a1 + v19), (a2 + v19), v20);
      *(a1 + v18[6]) = *(a2 + v18[6]);
      *(a1 + v18[7]) = *(a2 + v18[7]);
      v22 = v18[8];
      v23 = a1 + v22;
      v24 = (a2 + v22);
      v25 = *(a2 + v22 + 8);

      if (v25 >> 60 == 15)
      {
        *v23 = *v24;
      }

      else
      {
        v35 = *v24;
        outlined copy of Data._Representation(*v24, v25);
        *v23 = v35;
        *(v23 + 8) = v25;
      }

      *(a1 + v18[9]) = *(a2 + v18[9]);
      *(a1 + v18[10]) = *(a2 + v18[10]);
      *(a1 + v18[11]) = *(a2 + v18[11]);
      v36 = v18[12];
      __dst = (a1 + v36);
      v37 = (a2 + v36);
      v38 = type metadata accessor for SiriRequestIdentities(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      v41 = v37;
      if (v40(v37, 1, v38))
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v37, *(*(v42 - 8) + 64));
      }

      else
      {
        v98 = v39;
        v59 = v38;
        v60 = type metadata accessor for IdentifiedUser();
        v61 = *(v60 - 8);
        v62 = v41;
        v63 = *(v61 + 48);
        if (v63(v41, 1, v60))
        {
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v41, *(*(v64 - 8) + 64));
        }

        else
        {
          (*(v61 + 16))(__dst, v41, v60);
          (*(v61 + 56))(__dst, 0, 1, v60);
        }

        v76 = *(v59 + 20);
        if (v63(&v62[v76], 1, v60))
        {
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v76], &v62[v76], *(*(v77 - 8) + 64));
        }

        else
        {
          (*(v61 + 16))(&__dst[v76], &v62[v76], v60);
          (*(v61 + 56))(&__dst[v76], 0, 1, v60);
        }

        *&__dst[*(v59 + 24)] = *&v62[*(v59 + 24)];
        v78 = *(v98 + 56);

        v78(__dst, 0, 1, v59);
      }

      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v80 = *(v79 + 48);
      v81 = (a1 + v80);
      v82 = (a2 + v80);
      v83 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v102(v81, v82, v104);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v81, v82, *(*(v83 - 8) + 64));
      }

      v84 = type metadata accessor for RequestContinuation(0);
      *&v81[*(v84 + 20)] = *&v82[*(v84 + 20)];
      *(a1 + *(v79 + 64)) = *(a2 + *(v79 + 64));

      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 3)
    {
      *a1 = *a2;
LABEL_54:

      goto LABEL_55;
    }

    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
    v7 = type metadata accessor for SiriRequest(0);
    v8 = v7[5];
    v9 = type metadata accessor for Input();
    v10 = *(*(v9 - 8) + 16);

    v101 = v10;
    v103 = v9;
    v10((a1 + v8), (a2 + v8), v9);
    *(a1 + v7[6]) = *(a2 + v7[6]);
    *(a1 + v7[7]) = *(a2 + v7[7]);
    v11 = v7[8];
    v12 = a1 + v11;
    v13 = (a2 + v11);
    v14 = *(a2 + v11 + 8);

    if (v14 >> 60 == 15)
    {
      *v12 = *v13;
    }

    else
    {
      v43 = *v13;
      outlined copy of Data._Representation(*v13, v14);
      *v12 = v43;
      *(v12 + 8) = v14;
    }

    *(a1 + v7[9]) = *(a2 + v7[9]);
    *(a1 + v7[10]) = *(a2 + v7[10]);
    *(a1 + v7[11]) = *(a2 + v7[11]);
    v44 = v7[12];
    __dsta = (a1 + v44);
    v45 = (a2 + v44);
    v46 = type metadata accessor for SiriRequestIdentities(0);
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);

    v49 = v45;
    if (v48(v45, 1, v46))
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dsta, v45, *(*(v50 - 8) + 64));
    }

    else
    {
      v99 = v47;
      v65 = type metadata accessor for IdentifiedUser();
      v66 = *(v65 - 8);
      v67 = v49;
      v68 = *(v66 + 48);
      if (v68(v49, 1, v65))
      {
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(__dsta, v49, *(*(v69 - 8) + 64));
      }

      else
      {
        (*(v66 + 16))(__dsta, v49, v65);
        (*(v66 + 56))(__dsta, 0, 1, v65);
      }

      v85 = *(v46 + 20);
      if (v68(&v67[v85], 1, v65))
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dsta[v85], &v67[v85], *(*(v86 - 8) + 64));
      }

      else
      {
        (*(v66 + 16))(&__dsta[v85], &v67[v85], v65);
        (*(v66 + 56))(&__dsta[v85], 0, 1, v65);
      }

      *&__dsta[*(v46 + 24)] = *&v67[*(v46 + 24)];
      v87 = *(v99 + 56);

      v87(__dsta, 0, 1, v46);
    }

    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    v89 = (a1 + v88);
    v90 = (a2 + v88);
    v91 = type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (EnumCaseMultiPayload)
  {
    v26 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v26;
    v27 = type metadata accessor for SiriRequest(0);
    v28 = v27[5];
    v29 = type metadata accessor for Input();
    v30 = *(*(v29 - 8) + 16);

    v101 = v30;
    v103 = v29;
    v30((a1 + v28), (a2 + v28), v29);
    *(a1 + v27[6]) = *(a2 + v27[6]);
    *(a1 + v27[7]) = *(a2 + v27[7]);
    v31 = v27[8];
    v32 = a1 + v31;
    v33 = (a2 + v31);
    v34 = *(a2 + v31 + 8);

    if (v34 >> 60 == 15)
    {
      *v32 = *v33;
    }

    else
    {
      v51 = *v33;
      outlined copy of Data._Representation(*v33, v34);
      *v32 = v51;
      *(v32 + 8) = v34;
    }

    *(a1 + v27[9]) = *(a2 + v27[9]);
    *(a1 + v27[10]) = *(a2 + v27[10]);
    *(a1 + v27[11]) = *(a2 + v27[11]);
    v52 = v27[12];
    __dstb = (a1 + v52);
    v53 = (a2 + v52);
    v54 = type metadata accessor for SiriRequestIdentities(0);
    v55 = *(v54 - 8);
    v56 = *(v55 + 48);

    v57 = v53;
    if (v56(v53, 1, v54))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dstb, v53, *(*(v58 - 8) + 64));
    }

    else
    {
      v100 = v55;
      v71 = type metadata accessor for IdentifiedUser();
      v72 = *(v71 - 8);
      v73 = v57;
      v74 = *(v72 + 48);
      if (v74(v57, 1, v71))
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(__dstb, v57, *(*(v75 - 8) + 64));
      }

      else
      {
        (*(v72 + 16))(__dstb, v57, v71);
        (*(v72 + 56))(__dstb, 0, 1, v71);
      }

      v92 = *(v54 + 20);
      if (v74(&v73[v92], 1, v71))
      {
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dstb[v92], &v73[v92], *(*(v93 - 8) + 64));
      }

      else
      {
        (*(v72 + 16))(&__dstb[v92], &v73[v92], v71);
        (*(v72 + 56))(&__dstb[v92], 0, 1, v71);
      }

      *&__dstb[*(v54 + 24)] = *&v73[*(v54 + 24)];
      v94 = *(v100 + 56);

      v94(__dstb, 0, 1, v54);
    }

    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    v89 = (a1 + v95);
    v90 = (a2 + v95);
    v91 = type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_45:
      v101(v89, v90, v103);
      swift_storeEnumTagMultiPayload();
LABEL_53:
      v96 = type metadata accessor for RequestContinuation(0);
      *&v89[*(v96 + 20)] = *&v90[*(v96 + 20)];
      goto LABEL_54;
    }

LABEL_52:
    memcpy(v89, v90, *(*(v91 - 8) + 64));
    goto LABEL_53;
  }

  v15 = *(a2 + 24);
  if (v15)
  {
    v16 = *(a2 + 32);
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    (**(v15 - 8))(a1, a2);
  }

  else
  {
    v70 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v70;
    *(a1 + 32) = *(a2 + 32);
  }

LABEL_55:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for EncoreConversation.State(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreConversation.State(a1, type metadata accessor for EncoreConversation.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v14 = *(a2 + 3);
        if (v14)
        {
          *(a1 + 24) = v14;
          *(a1 + 32) = *(a2 + 4);
          (**(v14 - 8))(a1, a2);
        }

        else
        {
          v67 = *a2;
          v68 = a2[1];
          *(a1 + 32) = *(a2 + 4);
          *a1 = v67;
          *(a1 + 16) = v68;
        }

        goto LABEL_56;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v23 = type metadata accessor for SiriRequest(0);
      v24 = v23[5];
      v25 = type metadata accessor for Input();
      v26 = *(*(v25 - 8) + 16);

      v100 = v26;
      v102 = v25;
      v26((a1 + v24), a2 + v24, v25);
      *(a1 + v23[6]) = *(a2 + v23[6]);
      *(a1 + v23[7]) = *(a2 + v23[7]);
      v27 = v23[8];
      v28 = a1 + v27;
      v29 = (a2 + v27);
      v30 = *(a2 + v27 + 8);

      if (v30 >> 60 == 15)
      {
        *v28 = *v29;
      }

      else
      {
        v47 = *v29;
        outlined copy of Data._Representation(*v29, v30);
        *v28 = v47;
        *(v28 + 8) = v30;
      }

      *(a1 + v23[9]) = *(a2 + v23[9]);
      *(a1 + v23[10]) = *(a2 + v23[10]);
      *(a1 + v23[11]) = *(a2 + v23[11]);
      v48 = v23[12];
      __dstb = (a1 + v48);
      v49 = a2 + v48;
      v50 = type metadata accessor for SiriRequestIdentities(0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);

      v53 = v49;
      if (v52(v49, 1, v50))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dstb, v49, *(*(v54 - 8) + 64));
      }

      else
      {
        v69 = type metadata accessor for IdentifiedUser();
        v70 = *(v69 - 8);
        v71 = v53;
        v72 = v53;
        v73 = *(v70 + 48);
        v99 = v70;
        if (v73(v72, 1, v69))
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dstb, v71, *(*(v74 - 8) + 64));
        }

        else
        {
          (*(v70 + 16))(__dstb, v71, v69);
          (*(v70 + 56))(__dstb, 0, 1, v69);
        }

        v91 = *(v50 + 20);
        if (v73(&v71[v91], 1, v69))
        {
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dstb[v91], &v71[v91], *(*(v92 - 8) + 64));
        }

        else
        {
          (*(v99 + 16))(&__dstb[v91], &v71[v91], v69);
          (*(v99 + 56))(&__dstb[v91], 0, 1, v69);
        }

        *&__dstb[*(v50 + 24)] = *&v71[*(v50 + 24)];
        v93 = *(v51 + 56);

        v93(__dstb, 0, 1, v50);
      }

      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v88 = (a1 + v94);
      v89 = a2 + v94;
      v90 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_54:
        memcpy(v88, v89, *(*(v90 - 8) + 64));
        goto LABEL_55;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v15 = type metadata accessor for SiriRequest(0);
        v16 = v15[5];
        v17 = type metadata accessor for Input();
        v18 = *(*(v17 - 8) + 16);

        v101 = v18;
        v103 = v17;
        v18((a1 + v16), a2 + v16, v17);
        *(a1 + v15[6]) = *(a2 + v15[6]);
        *(a1 + v15[7]) = *(a2 + v15[7]);
        v19 = v15[8];
        v20 = a1 + v19;
        v21 = (a2 + v19);
        v22 = *(a2 + v19 + 8);

        if (v22 >> 60 == 15)
        {
          *v20 = *v21;
        }

        else
        {
          v31 = *v21;
          outlined copy of Data._Representation(*v21, v22);
          *v20 = v31;
          *(v20 + 8) = v22;
        }

        *(a1 + v15[9]) = *(a2 + v15[9]);
        *(a1 + v15[10]) = *(a2 + v15[10]);
        *(a1 + v15[11]) = *(a2 + v15[11]);
        v32 = v15[12];
        __dst = (a1 + v32);
        v33 = a2 + v32;
        v34 = type metadata accessor for SiriRequestIdentities(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        v37 = v33;
        if (v36(v33, 1, v34))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v33, *(*(v38 - 8) + 64));
        }

        else
        {
          v55 = type metadata accessor for IdentifiedUser();
          v56 = *(v55 - 8);
          v57 = v37;
          v58 = v37;
          v59 = *(v56 + 48);
          v97 = v56;
          if (v59(v58, 1, v55))
          {
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v57, *(*(v60 - 8) + 64));
          }

          else
          {
            (*(v56 + 16))(__dst, v57, v55);
            (*(v56 + 56))(__dst, 0, 1, v55);
          }

          v75 = *(v34 + 20);
          if (v59(&v57[v75], 1, v55))
          {
            v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v75], &v57[v75], *(*(v76 - 8) + 64));
          }

          else
          {
            (*(v97 + 16))(&__dst[v75], &v57[v75], v55);
            (*(v97 + 56))(&__dst[v75], 0, 1, v55);
          }

          *&__dst[*(v34 + 24)] = *&v57[*(v34 + 24)];
          v77 = *(v35 + 56);

          v77(__dst, 0, 1, v34);
        }

        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
        v79 = *(v78 + 48);
        v80 = (a1 + v79);
        v81 = a2 + v79;
        v82 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v101(v80, v81, v103);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v80, v81, *(*(v82 - 8) + 64));
        }

        v83 = type metadata accessor for RequestContinuation(0);
        *&v80[*(v83 + 20)] = *&v81[*(v83 + 20)];
        *(a1 + *(v78 + 64)) = *(a2 + *(v78 + 64));

        goto LABEL_56;
      }

      if (EnumCaseMultiPayload != 3)
      {
        *a1 = *a2;

LABEL_56:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      v6 = type metadata accessor for SiriRequest(0);
      v7 = v6[5];
      v8 = type metadata accessor for Input();
      v9 = *(*(v8 - 8) + 16);

      v100 = v9;
      v102 = v8;
      v9((a1 + v7), a2 + v7, v8);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      v10 = v6[8];
      v11 = a1 + v10;
      v12 = (a2 + v10);
      v13 = *(a2 + v10 + 8);

      if (v13 >> 60 == 15)
      {
        *v11 = *v12;
      }

      else
      {
        v39 = *v12;
        outlined copy of Data._Representation(*v12, v13);
        *v11 = v39;
        *(v11 + 8) = v13;
      }

      *(a1 + v6[9]) = *(a2 + v6[9]);
      *(a1 + v6[10]) = *(a2 + v6[10]);
      *(a1 + v6[11]) = *(a2 + v6[11]);
      v40 = v6[12];
      __dsta = (a1 + v40);
      v41 = a2 + v40;
      v42 = type metadata accessor for SiriRequestIdentities(0);
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);

      v45 = v41;
      if (v44(v41, 1, v42))
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dsta, v41, *(*(v46 - 8) + 64));
      }

      else
      {
        v61 = type metadata accessor for IdentifiedUser();
        v62 = *(v61 - 8);
        v63 = v45;
        v64 = v45;
        v65 = *(v62 + 48);
        v98 = v62;
        if (v65(v64, 1, v61))
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dsta, v63, *(*(v66 - 8) + 64));
        }

        else
        {
          (*(v62 + 16))(__dsta, v63, v61);
          (*(v62 + 56))(__dsta, 0, 1, v61);
        }

        v84 = *(v42 + 20);
        if (v65(&v63[v84], 1, v61))
        {
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dsta[v84], &v63[v84], *(*(v85 - 8) + 64));
        }

        else
        {
          (*(v98 + 16))(&__dsta[v84], &v63[v84], v61);
          (*(v98 + 56))(&__dsta[v84], 0, 1, v61);
        }

        *&__dsta[*(v42 + 24)] = *&v63[*(v42 + 24)];
        v86 = *(v43 + 56);

        v86(__dsta, 0, 1, v42);
      }

      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v88 = (a1 + v87);
      v89 = a2 + v87;
      v90 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_54;
      }
    }

    v100(v88, v89, v102);
    swift_storeEnumTagMultiPayload();
LABEL_55:
    v95 = type metadata accessor for RequestContinuation(0);
    *&v88[*(v95 + 20)] = *&v89[*(v95 + 20)];

    goto LABEL_56;
  }

  return a1;
}

char *initializeWithTake for EncoreConversation.State(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *a1 = *a2;
      v26 = type metadata accessor for SiriRequest(0);
      v27 = v26[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v27], &a2[v27], v9);
      *&a1[v26[6]] = *&a2[v26[6]];
      *&a1[v26[7]] = *&a2[v26[7]];
      *&a1[v26[8]] = *&a2[v26[8]];
      *&a1[v26[9]] = *&a2[v26[9]];
      *&a1[v26[10]] = *&a2[v26[10]];
      *&a1[v26[11]] = *&a2[v26[11]];
      v28 = v26[12];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = type metadata accessor for SiriRequestIdentities(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v29, v30, *(*(v33 - 8) + 64));
      }

      else
      {
        v69 = v9;
        v39 = type metadata accessor for IdentifiedUser();
        v40 = *(v39 - 8);
        v64 = *(v40 + 48);
        v67 = v10;
        if (v64(v30, 1, v39))
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v29, v30, *(*(v41 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v29, v30, v39);
          (*(v40 + 56))(v29, 0, 1, v39);
        }

        v53 = *(v31 + 20);
        if (v64(&v30[v53], 1, v39))
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v29[v53], &v30[v53], *(*(v54 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(&v29[v53], &v30[v53], v39);
          (*(v40 + 56))(&v29[v53], 0, 1, v39);
        }

        v9 = v69;
        *&v29[*(v31 + 24)] = *&v30[*(v31 + 24)];
        (*(v32 + 56))(v29, 0, 1, v31);
        v10 = v67;
      }

      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v55];
      v57 = &a2[v55];
      v58 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    case 2:
      *a1 = *a2;
      v17 = type metadata accessor for SiriRequest(0);
      v18 = v17[5];
      v19 = type metadata accessor for Input();
      v71 = *(*(v19 - 8) + 32);
      v71(&a1[v18], &a2[v18], v19);
      *&a1[v17[6]] = *&a2[v17[6]];
      *&a1[v17[7]] = *&a2[v17[7]];
      *&a1[v17[8]] = *&a2[v17[8]];
      *&a1[v17[9]] = *&a2[v17[9]];
      *&a1[v17[10]] = *&a2[v17[10]];
      *&a1[v17[11]] = *&a2[v17[11]];
      v20 = v17[12];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v23 = type metadata accessor for SiriRequestIdentities(0);
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v22, 1, v23))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v21, v22, *(*(v25 - 8) + 64));
      }

      else
      {
        v36 = type metadata accessor for IdentifiedUser();
        v37 = *(v36 - 8);
        v63 = *(v37 + 48);
        v66 = v19;
        if (v63(v22, 1, v36))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v21, v22, *(*(v38 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(v21, v22, v36);
          (*(v37 + 56))(v21, 0, 1, v36);
        }

        v45 = *(v23 + 20);
        if (v63(&v22[v45], 1, v36))
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v21[v45], &v22[v45], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(&v21[v45], &v22[v45], v36);
          (*(v37 + 56))(&v21[v45], 0, 1, v36);
        }

        *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
        (*(v24 + 56))(v21, 0, 1, v23);
        v19 = v66;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v48 = *(v47 + 48);
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71(v49, v50, v19);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v49, v50, *(*(v51 - 8) + 64));
      }

      v52 = type metadata accessor for RequestContinuation(0);
      *&v49[*(v52 + 20)] = *&v50[*(v52 + 20)];
      *&a1[*(v47 + 64)] = *&a2[*(v47 + 64)];
      goto LABEL_44;
    case 1:
      *a1 = *a2;
      v7 = type metadata accessor for SiriRequest(0);
      v8 = v7[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v8], &a2[v8], v9);
      *&a1[v7[6]] = *&a2[v7[6]];
      *&a1[v7[7]] = *&a2[v7[7]];
      *&a1[v7[8]] = *&a2[v7[8]];
      *&a1[v7[9]] = *&a2[v7[9]];
      *&a1[v7[10]] = *&a2[v7[10]];
      *&a1[v7[11]] = *&a2[v7[11]];
      v11 = v7[12];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = type metadata accessor for SiriRequestIdentities(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v13, 1, v14))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v12, v13, *(*(v16 - 8) + 64));
      }

      else
      {
        v70 = v9;
        v42 = type metadata accessor for IdentifiedUser();
        v43 = *(v42 - 8);
        v65 = *(v43 + 48);
        v68 = v10;
        if (v65(v13, 1, v42))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v12, v13, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v12, v13, v42);
          (*(v43 + 56))(v12, 0, 1, v42);
        }

        v59 = *(v14 + 20);
        if (v65(&v13[v59], 1, v42))
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v12[v59], &v13[v59], *(*(v60 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(&v12[v59], &v13[v59], v42);
          (*(v43 + 56))(&v12[v59], 0, 1, v42);
        }

        v9 = v70;
        *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
        (*(v15 + 56))(v12, 0, 1, v14);
        v10 = v68;
      }

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v61];
      v57 = &a2[v61];
      v58 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_41:
        v10(v56, v57, v9);
        swift_storeEnumTagMultiPayload();
LABEL_43:
        v62 = type metadata accessor for RequestContinuation(0);
        *&v56[*(v62 + 20)] = *&v57[*(v62 + 20)];
LABEL_44:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

LABEL_42:
      memcpy(v56, v57, *(*(v58 - 8) + 64));
      goto LABEL_43;
  }

  v34 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v34);
}

char *assignWithTake for EncoreConversation.State(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreConversation.State(a1, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *a1 = *a2;
      v26 = type metadata accessor for SiriRequest(0);
      v27 = v26[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v27], &a2[v27], v9);
      *&a1[v26[6]] = *&a2[v26[6]];
      *&a1[v26[7]] = *&a2[v26[7]];
      *&a1[v26[8]] = *&a2[v26[8]];
      *&a1[v26[9]] = *&a2[v26[9]];
      *&a1[v26[10]] = *&a2[v26[10]];
      *&a1[v26[11]] = *&a2[v26[11]];
      v28 = v26[12];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = type metadata accessor for SiriRequestIdentities(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v29, v30, *(*(v33 - 8) + 64));
      }

      else
      {
        v69 = v9;
        v39 = type metadata accessor for IdentifiedUser();
        v40 = *(v39 - 8);
        v64 = *(v40 + 48);
        v67 = v10;
        if (v64(v30, 1, v39))
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v29, v30, *(*(v41 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v29, v30, v39);
          (*(v40 + 56))(v29, 0, 1, v39);
        }

        v53 = *(v31 + 20);
        if (v64(&v30[v53], 1, v39))
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v29[v53], &v30[v53], *(*(v54 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(&v29[v53], &v30[v53], v39);
          (*(v40 + 56))(&v29[v53], 0, 1, v39);
        }

        v9 = v69;
        *&v29[*(v31 + 24)] = *&v30[*(v31 + 24)];
        (*(v32 + 56))(v29, 0, 1, v31);
        v10 = v67;
      }

      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v55];
      v57 = &a2[v55];
      v58 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 2:
      *a1 = *a2;
      v17 = type metadata accessor for SiriRequest(0);
      v18 = v17[5];
      v19 = type metadata accessor for Input();
      v71 = *(*(v19 - 8) + 32);
      v71(&a1[v18], &a2[v18], v19);
      *&a1[v17[6]] = *&a2[v17[6]];
      *&a1[v17[7]] = *&a2[v17[7]];
      *&a1[v17[8]] = *&a2[v17[8]];
      *&a1[v17[9]] = *&a2[v17[9]];
      *&a1[v17[10]] = *&a2[v17[10]];
      *&a1[v17[11]] = *&a2[v17[11]];
      v20 = v17[12];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v23 = type metadata accessor for SiriRequestIdentities(0);
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v22, 1, v23))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v21, v22, *(*(v25 - 8) + 64));
      }

      else
      {
        v36 = type metadata accessor for IdentifiedUser();
        v37 = *(v36 - 8);
        v63 = *(v37 + 48);
        v66 = v19;
        if (v63(v22, 1, v36))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v21, v22, *(*(v38 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(v21, v22, v36);
          (*(v37 + 56))(v21, 0, 1, v36);
        }

        v45 = *(v23 + 20);
        if (v63(&v22[v45], 1, v36))
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v21[v45], &v22[v45], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v37 + 32))(&v21[v45], &v22[v45], v36);
          (*(v37 + 56))(&v21[v45], 0, 1, v36);
        }

        *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
        (*(v24 + 56))(v21, 0, 1, v23);
        v19 = v66;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v48 = *(v47 + 48);
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71(v49, v50, v19);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v49, v50, *(*(v51 - 8) + 64));
      }

      v52 = type metadata accessor for RequestContinuation(0);
      *&v49[*(v52 + 20)] = *&v50[*(v52 + 20)];
      *&a1[*(v47 + 64)] = *&a2[*(v47 + 64)];
      goto LABEL_45;
    case 1:
      *a1 = *a2;
      v7 = type metadata accessor for SiriRequest(0);
      v8 = v7[5];
      v9 = type metadata accessor for Input();
      v10 = *(*(v9 - 8) + 32);
      v10(&a1[v8], &a2[v8], v9);
      *&a1[v7[6]] = *&a2[v7[6]];
      *&a1[v7[7]] = *&a2[v7[7]];
      *&a1[v7[8]] = *&a2[v7[8]];
      *&a1[v7[9]] = *&a2[v7[9]];
      *&a1[v7[10]] = *&a2[v7[10]];
      *&a1[v7[11]] = *&a2[v7[11]];
      v11 = v7[12];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = type metadata accessor for SiriRequestIdentities(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v13, 1, v14))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v12, v13, *(*(v16 - 8) + 64));
      }

      else
      {
        v70 = v9;
        v42 = type metadata accessor for IdentifiedUser();
        v43 = *(v42 - 8);
        v65 = *(v43 + 48);
        v68 = v10;
        if (v65(v13, 1, v42))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v12, v13, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v12, v13, v42);
          (*(v43 + 56))(v12, 0, 1, v42);
        }

        v59 = *(v14 + 20);
        if (v65(&v13[v59], 1, v42))
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v12[v59], &v13[v59], *(*(v60 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(&v12[v59], &v13[v59], v42);
          (*(v43 + 56))(&v12[v59], 0, 1, v42);
        }

        v9 = v70;
        *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
        (*(v15 + 56))(v12, 0, 1, v14);
        v10 = v68;
      }

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      v56 = &a1[v61];
      v57 = &a2[v61];
      v58 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_42:
        v10(v56, v57, v9);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        v62 = type metadata accessor for RequestContinuation(0);
        *&v56[*(v62 + 20)] = *&v57[*(v62 + 20)];
LABEL_45:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

LABEL_43:
      memcpy(v56, v57, *(*(v58 - 8) + 64));
      goto LABEL_44;
  }

  v34 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v34);
}

uint64_t type metadata completion function for EncoreConversation.State(uint64_t a1)
{
  v8 = "(";
  result = type metadata accessor for SiriRequest(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RequestContinuation(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v9 = &v7;
      v4 = MEMORY[0x1E69E5D20] + 64;
      swift_getTupleTypeLayout3();
      v10 = &v6;
      swift_getTupleTypeLayout2();
      v11 = &v5;
      v12 = v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RequestContinuation(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConversationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t outlined init with take of RequestContinuation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in EncoreConversation.commit()(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RequestContinuation(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConversationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreConversation.commit()(a1, v10, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ConversationContext() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConversationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
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

uint64_t EncoreEngine.__allocating_init(rootEnvironment:snippetManager:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EncoreEngine.init(rootEnvironment:snippetManager:)(a1, a2);
  return v4;
}

uint64_t EncoreEngine.send(event:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = type metadata accessor for EncoreEngine.EngineEvent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(a1, &v13 - v10, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v11, v8, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v5, v2);
  return outlined destroy of EncoreEngine.EngineEvent(v11, type metadata accessor for EncoreEngine.EngineEvent);
}

uint64_t *FlowActor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static FlowActor.shared;
}

uint64_t EncoreEngine.isEmpty()()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.isEmpty(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    v7 = *(v5 + 24);
    *(v6 + 4) = (*(*v7 + 184))() & 1;
    *(v6 + 8) = 2048;
    *(v6 + 10) = (*(*v7 + 160))();

    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreEngine] Is empty: %{BOOL}d count: %ld.", v6, 0x12u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }

  v8 = (*(**(*(v0 + 16) + 24) + 184))();
  v9 = *(v0 + 8);
  v10 = v8 & 1;

  return v9(v10);
}

uint64_t FlowActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static FlowActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t FlowActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance FlowActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance FlowActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FlowActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t RequestContinuation.agent.getter()
{
  type metadata accessor for RequestContinuation(0);
}

uint64_t RequestContinuation.init(userInputResult:agent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of UserInputResult(a1, a3, type metadata accessor for UserInputResult);
  result = type metadata accessor for RequestContinuation(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ActingFlowAgent.environment.getter()
{
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = dispatch thunk of SiriEnvironmentLocating.siriEnvironment.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
    v1 = *(v0 + 232);
    if (v1)
    {
    }

    else
    {
      type metadata accessor for SiriEnvironment();
      return static SiriEnvironment.default.getter();
    }
  }

  return v1;
}

uint64_t ActingFlowAgent.environment.setter(uint64_t a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(v1 + 56, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v4, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of SiriEnvironmentLocating.siriEnvironment.setter();
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
    *(v1 + 232) = a1;
  }
}

uint64_t (*ActingFlowAgent.environment.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ActingFlowAgent.environment.getter();
  return ActingFlowAgent.environment.modify;
}

uint64_t ActingFlowAgent.environment.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ActingFlowAgent.environment.setter(*a1);
  }

  ActingFlowAgent.environment.setter(v2);
}

uint64_t ActingFlowAgent.__allocating_init(flow:environment:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ActingFlowAgent.init(flow:environment:)(a1, a2);
  return v4;
}

uint64_t ActingFlowAgent.init(flow:environment:)(void *a1, uint64_t a2)
{
  *(v2 + 232) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  ActingFlow.unwrap.getter();
  outlined init with take of ReferenceResolutionClientProtocol(v12, v2 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LifeCycleModifier_pMd, &_s11SiriKitFlow17LifeCycleModifier_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  *(v2 + 96) = v9;
  *(v2 + 112) = v10;
  *(v2 + 128) = v11;
  outlined init with copy of ReferenceResolutionClientProtocol(v2 + 56, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14InputAccepting_pMd, &_s11SiriKitFlow14InputAccepting_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  *(v2 + 136) = v9;
  *(v2 + 152) = v10;
  *(v2 + 168) = v11;
  outlined init with copy of ReferenceResolutionClientProtocol(v2 + 56, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  *(v2 + 176) = v9;
  *(v2 + 192) = v10;
  *(v2 + 208) = v11;
  outlined init with copy of ReferenceResolutionClientProtocol(v2 + 56, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20SnippetEventHandling_pMd, &_s11SiriKitFlow20SnippetEventHandling_pMR);
  v5 = swift_dynamicCast();
  v7 = *(&v9 + 1);
  v6 = v9;
  if (!v5)
  {
    v6 = 0;
    v7 = 0;
  }

  *(v2 + 216) = v6;
  *(v2 + 224) = v7;
  ActingFlowAgent.environment.setter(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t ActingFlowAgent.snippetIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 216))
  {
    swift_getObjectType();
    dispatch thunk of Identifiable.id.getter();
    v3 = type metadata accessor for UUID();
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = type metadata accessor for UUID();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

void *ActingFlowAgent.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ActingFlowAgent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in OrderedForest<A>.debugDescription()(void *a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(*a1 + 56, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
  return String.init<A>(describing:)();
}

uint64_t ExecutableTask.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v4 = type metadata accessor for ConversationContext();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for ExecutableTask.actionCompletion : ExecutableTask@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EncoreEngine.ActionOutcome) -> ();
  a2[1] = v6;
}

uint64_t key path setter for ExecutableTask.actionCompletion : ExecutableTask(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EncoreEngine.ActionOutcome) -> (@out ());
  v6[1] = v5;
}

uint64_t ExecutableTask.actionCompletion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ExecutableTask.actionCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ExecutableTask.__allocating_init(executingNode:context:runningTask:actionCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v12 = type metadata accessor for ConversationContext();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = a3;
  v13 = (v10 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  *v13 = a4;
  v13[1] = a5;
  return v10;
}

uint64_t ExecutableTask.init(executingNode:context:runningTask:actionCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 32))(v5 + v10, a2, v11);
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = a3;
  v12 = (v5 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  *v12 = a4;
  v12[1] = a5;
  return v5;
}

uint64_t ExecutableTask.deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v2 = type metadata accessor for ConversationContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ExecutableTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
  v2 = type metadata accessor for ConversationContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t OrderedForest<A>.find(value:)(uint64_t a1)
{
  v3 = (*(*v1 + 192))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  while (1)
  {
    Strong = swift_weakLoadStrong();
    if (*(v4 + 16) == a1)
    {
      break;
    }

    v4 = Strong;
    if (!Strong)
    {
      return Strong;
    }
  }

  return v4;
}

uint64_t one-time initialization function for TaskPriority()
{
  v0 = type metadata accessor for TaskPriority();
  __swift_allocate_value_buffer(v0, static EncoreEngine.TaskPriority);
  __swift_project_value_buffer(v0, static EncoreEngine.TaskPriority);
  return static TaskPriority.userInitiated.getter();
}

uint64_t EncoreEngine.TaskPriority.unsafeMutableAddressor()
{
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TaskPriority();

  return __swift_project_value_buffer(v0, static EncoreEngine.TaskPriority);
}

uint64_t static EncoreEngine.TaskPriority.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TaskPriority();
  v3 = __swift_project_value_buffer(v2, static EncoreEngine.TaskPriority);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *EncoreEngine.init(rootEnvironment:snippetManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v2[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime10EventQueueCyAA12EncoreEngineC0gD0OGMd, &_s14SiriKitRuntime10EventQueueCyAA12EncoreEngineC0gD0OGMR);
  swift_allocObject();
  v2[2] = specialized EventQueue.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13OrderedForestCyAA15ActingFlowAgentCGMd, &_s14SiriKitRuntime13OrderedForestCyAA15ActingFlowAgentCGMR);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  v2[3] = v9;
  v2[4] = a1;
  v10 = MEMORY[0x1E69E7CC0];
  v2[5] = a2;
  v2[6] = v10;

  dispatch thunk of SnippetManager.positionLookup.setter();
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for TaskPriority();
  v12 = __swift_project_value_buffer(v11, static EncoreEngine.TaskPriority);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v16 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:), v15);

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScPSgMd, &_sScPSgMR);
  v3[7] = v16;

  return v3;
}

uint64_t _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t EventQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  EventQueue.init()();
  return v0;
}

uint64_t closure #1 in EncoreEngine.init(rootEnvironment:snippetManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  swift_getObjectType();
  v26 = v14;
  v27 = a1;
  v15 = dispatch thunk of Identifiable.id.getter();
  v16 = (*(**(a3 + 24) + 192))(v15);
  v17 = 0;
  v18 = (v6 + 32);
  v19 = (v6 + 8);
  do
  {
    if (!v16)
    {
      (*v19)(v26, v5);
      return 0;
    }

    Strong = swift_weakLoadStrong();
    v23 = *(*(v16 + 16) + 216);
    if (v23)
    {
      swift_getObjectType();
      v27 = v23;
      dispatch thunk of Identifiable.id.getter();
      (*v18)(v11, v8, v5);
      v24 = static UUID.== infix(_:_:)();

      v25 = *v19;
      result = (*v19)(v11, v5);
      if (v24)
      {
        v25(v26, v5);

        return v17;
      }
    }

    else
    {
    }

    v16 = Strong;
  }

  while (!__OFADD__(v17++, 1));
  __break(1u);
  return result;
}

uint64_t EncoreEngine.position(of:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  swift_getObjectType();
  v25 = v13;
  v26 = a1;
  v14 = dispatch thunk of Identifiable.id.getter();
  v15 = (*(**(v2 + 24) + 192))(v14);
  v16 = 0;
  v17 = (v5 + 32);
  v18 = (v5 + 8);
  do
  {
    if (!v15)
    {
      (*v18)(v25, v4);
      return 0;
    }

    Strong = swift_weakLoadStrong();
    v22 = *(*(v15 + 16) + 216);
    if (v22)
    {
      swift_getObjectType();
      v26 = v22;
      dispatch thunk of Identifiable.id.getter();
      (*v17)(v10, v7, v4);
      v23 = static UUID.== infix(_:_:)();

      v24 = *v18;
      result = (*v18)(v10, v4);
      if (v23)
      {

        v24(v25, v4);
        return v16;
      }
    }

    else
    {
    }

    v15 = Strong;
  }

  while (!__OFADD__(v16++, 1));
  __break(1u);
  return result;
}

uint64_t closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:);

    return EncoreEngine.startEventLoop()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t EncoreEngine.startEventLoop()()
{
  v1[2] = v0;
  type metadata accessor for EncoreEngineEvent(0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for EncoreEngine.EngineEvent(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime12EncoreEngineC0E5EventOSgMd, &_s14SiriKitRuntime12EncoreEngineC0E5EventOSgMR);
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMd, &_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMR);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS8IteratorVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static FlowActor.shared;
  v1[14] = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.startEventLoop(), v5, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreEngine] Event process loop started.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[2];

  (*(v6 + 16))(v5, *(v8 + 16) + *(**(v8 + 16) + 88), v7);
  AsyncStream.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v10 = lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowActor and conformance FlowActor, v9, type metadata accessor for FlowActor, &protocol conformance descriptor for FlowActor);
  v0[15] = v10;
  v11 = v0[14];
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = EncoreEngine.startEventLoop();
  v13 = v0[11];
  v14 = v0[7];

  return MEMORY[0x1EEE6D9C8](v14, v11, v10, v13);
}

{
  v1 = *(*v0 + 112);

  return MEMORY[0x1EEE6DFA0](EncoreEngine.startEventLoop(), v1, 0);
}

{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[2];
    (*(v0[12] + 8))(v0[13], v0[11]);
    $defer #1 () in EncoreEngine.startEventLoop()(v2);

    v3 = v0[1];

    return v3();
  }

  else
  {
    outlined init with take of UserInputResult(v1, v0[6], type metadata accessor for EncoreEngine.EngineEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = v0[6];
    if (EnumCaseMultiPayload == 1)
    {
      EncoreEngine.handleInternal(event:)(*v6);
    }

    else
    {
      v7 = v0[3];
      outlined init with take of UserInputResult(v6, v7, type metadata accessor for EncoreEngineEvent);
      EncoreEngine.handleExternal(event:)(v7);
      outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for EncoreEngineEvent);
    }

    v8 = v0[14];
    v9 = v0[15];
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = EncoreEngine.startEventLoop();
    v11 = v0[11];
    v12 = v0[7];

    return MEMORY[0x1EEE6D9C8](v12, v8, v9, v11);
  }
}

uint64_t EncoreEngine.deinit()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] deinit.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return v1;
}

uint64_t EncoreEngine.__deallocating_deinit()
{
  EncoreEngine.deinit();

  return swift_deallocClassInstance();
}

uint64_t EventQueue.send(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a1, v3, v9);
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.yield(_:)();
  return (*(v8 + 8))(v11, v7);
}

void $defer #1 () in EncoreEngine.startEventLoop()(uint64_t a1)
{
  *(a1 + 56) = 0;

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "[EncoreEngine] Event process loop ends.", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

void EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v232 = 0;
  v236 = type metadata accessor for ConversationContext();
  v237 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v229 = &v215 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for SiriRequest(0);
  v223 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v225 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v227 = &v215 - v5;
  v224 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v239 = &v215 - v8;
  v234 = type metadata accessor for UserInputResult(0);
  MEMORY[0x1EEE9AC00](v234);
  v226 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v215 - v11;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v220 = *(v219 - 8);
  v12 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v221 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v218 = &v215 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v235 = (&v215 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v238 = &v215 - v18;
  v230 = type metadata accessor for RequestContinuation(0);
  v233 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v228 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v215 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v215 - v23;
  v231 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v240 = &v215 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v215 - v29;
  v31 = type metadata accessor for SystemEvents();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v215 - v36;
  v38 = type metadata accessor for EncoreEngineEvent(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = a1;
  v41 = &v215 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v40, v41, type metadata accessor for EncoreEngineEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v227 = v34;
    v55 = v30;
    v228 = v37;
    v239 = v12;
    v56 = v32;
    v229 = v31;
    v57 = v235;
    if (EnumCaseMultiPayload)
    {
      v58 = v241;
      if (EnumCaseMultiPayload == 1)
      {
        v59 = *v41;
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v239 = *(v60 + 48);
        v61 = &v41[*(v60 + 64)];
        v63 = *v61;
        v62 = *(v61 + 1);
        v64 = v41;
        EncoreEngine.ensureReady()();
        v65 = v240;
        EncoreEngine.continuation(for:)(v59, v240);
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for TaskPriority();
        v67 = __swift_project_value_buffer(v66, static EncoreEngine.TaskPriority);
        v68 = *(v66 - 8);
        v69 = v238;
        (*(v68 + 16))(v238, v67, v66);
        (*(v68 + 56))(v69, 0, 1, v66);
        _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v65, v24, type metadata accessor for RequestContinuation);
        v70 = (*(v233 + 80) + 56) & ~*(v233 + 80);
        v71 = swift_allocObject();
        v71[2] = 0;
        v71[3] = 0;
        v71[4] = v59;
        v71[5] = v63;
        v71[6] = v62;
        outlined init with take of UserInputResult(v24, v71 + v70, type metadata accessor for RequestContinuation);
        v72 = v59;

        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v69, &async function pointer to partial apply for closure #1 in EncoreEngine.handleExternal(event:), v71);

        outlined destroy of ReferenceResolutionClientProtocol?(v69, &_sScPSgMd, &_sScPSgMR);
        outlined destroy of EncoreEngine.EngineEvent(v65, type metadata accessor for RequestContinuation);
        (*(v237 + 8))(&v64[v239], v236);
      }

      else
      {
        v106 = *(v41 + 5);
        v105 = *(v41 + 6);
        outlined init with take of ReferenceResolutionClientProtocol(v41, &v247);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        __swift_project_value_buffer(v107, static Logger.executor);
        outlined init with copy of ReferenceResolutionClientProtocol(&v247, &v245);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.debug.getter();
        v110 = os_log_type_enabled(v108, v109);
        v240 = v106;
        if (v110)
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *&v242[0] = v112;
          *v111 = 136315138;
          outlined init with copy of ReferenceResolutionClientProtocol(&v245, v244);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
          v113 = String.init<A>(describing:)();
          v114 = v58;
          v116 = v115;
          __swift_destroy_boxed_opaque_existential_1Tm(&v245);
          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v116, v242);
          v58 = v114;

          *(v111 + 4) = v117;
          _os_log_impl(&dword_1DC659000, v108, v109, "[EncoreEngine] Handling push event flow: %s.", v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v112);
          MEMORY[0x1E12A2F50](v112, -1, -1);
          MEMORY[0x1E12A2F50](v111, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v245);
        }

        v139 = v220;
        v140 = v217;
        v141 = v218;
        EncoreEngine.ensureReady()();
        if ((*(**(v58 + 24) + 184))())
        {
          outlined init with copy of ReferenceResolutionClientProtocol(&v247, &v245);
          v142 = EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(0, &v245, 0);
          outlined destroy of ReferenceResolutionClientProtocol?(&v245, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
          swift_storeEnumTagMultiPayload();
          if (v142)
          {
            v143 = *(v142 + 16);
          }

          else
          {
            v143 = 0;
          }

          v205 = v230;
          v146 = v57;
          outlined init with take of UserInputResult(v140, v141, type metadata accessor for UserInputResult);
          *(v141 + *(v205 + 20)) = v143;
          swift_storeEnumTagMultiPayload();
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v141, v57, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
        }

        else
        {
          lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
          v144 = swift_allocError();
          *v145 = 0xD000000000000046;
          v145[1] = 0x80000001DCA82AB0;
          v146 = v57;
          *v57 = v144;
          swift_storeEnumTagMultiPayload();
        }

        v206 = v221;
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v207 = type metadata accessor for TaskPriority();
        v208 = __swift_project_value_buffer(v207, static EncoreEngine.TaskPriority);
        v209 = *(v207 - 8);
        v210 = v238;
        (*(v209 + 16))(v238, v208, v207);
        (*(v209 + 56))(v210, 0, 1, v207);
        outlined init with copy of ReferenceResolutionClientProtocol(&v247, &v245);
        outlined init with copy of ReferenceResolutionClientProtocol?(v146, v206, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
        v211 = (*(v139 + 80) + 88) & ~*(v139 + 80);
        v212 = swift_allocObject();
        v212[2] = 0;
        v212[3] = 0;
        outlined init with take of ReferenceResolutionClientProtocol(&v245, (v212 + 4));
        v212[9] = v240;
        v212[10] = v105;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v206, v212 + v211, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);

        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v210, &async function pointer to partial apply for closure #2 in EncoreEngine.handleExternal(event:), v212);

        outlined destroy of ReferenceResolutionClientProtocol?(v210, &_sScPSgMd, &_sScPSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v146, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
        __swift_destroy_boxed_opaque_existential_1Tm(&v247);
      }

      return;
    }

    v94 = *v41;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    v96 = __swift_project_value_buffer(v95, static Logger.executor);
    v97 = v94;
    v240 = v96;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      *(v100 + 4) = v97;
      *v101 = v97;
      v102 = v97;
      _os_log_impl(&dword_1DC659000, v98, v99, "[EncoreEngine] Handling snippet event request: %@.", v100, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v101, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      MEMORY[0x1E12A2F50](v100, -1, -1);
    }

    lazy protocol witness table accessor for type SystemEvents? and conformance <A> A?();
    v103 = v55;
    v104 = v232;
    dispatch thunk of EncoreEvent.getValue<A>()();
    if (v104)
    {

      (*(v56 + 56))(v55, 1, 1, v229);
      goto LABEL_81;
    }

    v178 = v229;
    if ((*(v56 + 48))(v55, 1, v229) == 1)
    {
LABEL_81:
      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
      if (EncoreEngine.discover(event:)(v97))
      {
        v180 = v179;

        v181 = v97;
        v182 = Logger.logObject.getter();
        v183 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          *v184 = 138412290;
          *(v184 + 4) = v181;
          *v185 = v181;
          v186 = v181;
          _os_log_impl(&dword_1DC659000, v182, v183, "[EncoreEngine] Invoking event handler for event: %@", v184, 0xCu);
          outlined destroy of ReferenceResolutionClientProtocol?(v185, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v185, -1, -1);
          MEMORY[0x1E12A2F50](v184, -1, -1);
        }

        dispatch thunk of SnippetManager.canSendXPCUpdates.setter();
        v180(v181);
        dispatch thunk of SnippetManager.canSendXPCUpdates.setter();
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_1DC659000, v187, v188, "Finished handling encore XPC event.", v189, 2u);
          MEMORY[0x1E12A2F50](v189, -1, -1);
        }
      }

      else
      {
        v190 = v97;
        v191 = Logger.logObject.getter();
        v192 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          *v193 = 138412290;
          *(v193 + 4) = v190;
          *v194 = v190;
          v195 = v190;
          _os_log_impl(&dword_1DC659000, v191, v192, "[EncoreEngine] None of flow registers to handle snippet event: %@.", v193, 0xCu);
          outlined destroy of ReferenceResolutionClientProtocol?(v194, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v194, -1, -1);
          MEMORY[0x1E12A2F50](v193, -1, -1);
        }

        else
        {
        }
      }

      return;
    }

    v196 = v228;
    (*(v56 + 32))(v228, v103, v178);
    v197 = v227;
    (*(v56 + 16))(v227, v196, v178);
    v198 = (*(v56 + 88))(v197, v178);
    if (v198 == *MEMORY[0x1E699BB20])
    {
      v199 = v97;
      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *v202 = 138412290;
        *(v202 + 4) = v199;
        *v203 = v199;
        v204 = v199;
        _os_log_impl(&dword_1DC659000, v200, v201, "[EncoreEngine] Snippet Disappeared: Remove it?: %@.", v202, 0xCu);
        outlined destroy of ReferenceResolutionClientProtocol?(v203, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v203, -1, -1);
        MEMORY[0x1E12A2F50](v202, -1, -1);
      }

      dispatch thunk of SnippetManager.snippetDisappeared()();
    }

    else
    {
      if (v198 != *MEMORY[0x1E699BB28])
      {
LABEL_107:
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000027, 0x80000001DCA82890, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 239);
        __break(1u);
        return;
      }

      v199 = Logger.logObject.getter();
      v213 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v199, v213))
      {

        goto LABEL_105;
      }

      v214 = swift_slowAlloc();
      *v214 = 0;
      _os_log_impl(&dword_1DC659000, v199, v213, "Ignoring .returnedToVoiceMode event since it was sent over XPC. This is not supported.", v214, 2u);
      MEMORY[0x1E12A2F50](v214, -1, -1);
    }

LABEL_105:
    (*(v56 + 8))(v196, v178);
    return;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      __swift_project_value_buffer(v135, static Logger.executor);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1DC659000, v136, v137, "[EncoreEngine] Handling stop event.", v138, 2u);
        MEMORY[0x1E12A2F50](v138, -1, -1);
      }

      EncoreEngine.ensureReady()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
      AsyncStream.Continuation.finish()();
      return;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
    v74 = v41;
    v75 = *(v73 + 48);
    v76 = (v74 + *(v73 + 64));
    v78 = *v76;
    v77 = v76[1];
    v79 = v228;
    outlined init with take of UserInputResult(v74, v228, type metadata accessor for RequestContinuation);
    v80 = v229;
    v81 = v236;
    (*(v237 + 32))(v229, v74 + v75, v236);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.executor);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1DC659000, v83, v84, "[EncoreEngine] Handling commit event.", v85, 2u);
      MEMORY[0x1E12A2F50](v85, -1, -1);
    }

    dispatch thunk of SnippetManager.canSendAddViews.setter();
    EncoreEngine.ensureReady()();
    v86 = v226;
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v79, v226, type metadata accessor for UserInputResult);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v87 = *(v79 + *(v230 + 20));
      if (v87)
      {
        v88 = v241;
        v89 = *(**(v241 + 24) + 192);

        v91 = v89(v90);
        v81 = v236;
        if (v91)
        {
          v92 = v91;
          while (1)
          {
            Strong = swift_weakLoadStrong();
            if (*(v92 + 16) == v87)
            {
              break;
            }

            v92 = Strong;
            if (!Strong)
            {
              goto LABEL_27;
            }
          }

          specialized EncoreEngine.action(mode:starting:context:completion:)(0, v92, v80, v88, v88, v78, v77);

          goto LABEL_56;
        }

LABEL_27:
      }
    }

    else
    {
      outlined destroy of EncoreEngine.EngineEvent(v86, type metadata accessor for UserInputResult);
    }

    dispatch thunk of SnippetManager.canSendAddViews.setter();
    if (one-time initialization token for TaskPriority != -1)
    {
      swift_once();
    }

    v147 = type metadata accessor for TaskPriority();
    v148 = __swift_project_value_buffer(v147, static EncoreEngine.TaskPriority);
    v149 = *(v147 - 8);
    v150 = v238;
    (*(v149 + 16))(v238, v148, v147);
    (*(v149 + 56))(v150, 0, 1, v147);
    v151 = swift_allocObject();
    v151[2] = 0;
    v151[3] = 0;
    v151[4] = v78;
    v151[5] = v77;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v150, &async function pointer to partial apply for closure #6 in EncoreEngine.handleExternal(event:), v151);

    outlined destroy of ReferenceResolutionClientProtocol?(v150, &_sScPSgMd, &_sScPSgMR);
LABEL_56:
    (*(v237 + 8))(v80, v81);
    outlined destroy of EncoreEngine.EngineEvent(v79, type metadata accessor for RequestContinuation);
    return;
  }

  v43 = v241;
  if (EnumCaseMultiPayload == 3)
  {
    v45 = *v41;
    v44 = *(v41 + 1);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "[EncoreEngine] Handling ensureReady event.", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    EncoreEngine.ensureReady()();
    if (one-time initialization token for TaskPriority != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for TaskPriority();
    v51 = __swift_project_value_buffer(v50, static EncoreEngine.TaskPriority);
    v52 = *(v50 - 8);
    v53 = v238;
    (*(v52 + 16))(v238, v51, v50);
    (*(v52 + 56))(v53, 0, 1, v50);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v45;
    v54[5] = v44;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v53, &async function pointer to partial apply for closure #3 in EncoreEngine.handleExternal(event:), v54);

    outlined destroy of ReferenceResolutionClientProtocol?(v53, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
    v119 = &v41[*(v118 + 64)];
    v121 = *v119;
    v120 = v119[1];
    v229 = v41;
    v122 = v239;
    outlined init with take of UserInputResult(v41, v239, type metadata accessor for SiriRequest);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    __swift_project_value_buffer(v123, static Logger.executor);
    v124 = v227;
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v122, v227, type metadata accessor for SiriRequest);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v240;
    v228 = v120;
    v226 = v121;
    v221 = v118;
    if (v127)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v247 = v130;
      *v129 = 136315138;
      type metadata accessor for Input();
      lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
      v131 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v132;
      outlined destroy of EncoreEngine.EngineEvent(v124, type metadata accessor for SiriRequest);
      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &v247);

      *(v129 + 4) = v134;
      _os_log_impl(&dword_1DC659000, v125, v126, "[EncoreEngine] Handling accept event request: %s.", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v130);
      MEMORY[0x1E12A2F50](v130, -1, -1);
      MEMORY[0x1E12A2F50](v129, -1, -1);
    }

    else
    {

      outlined destroy of EncoreEngine.EngineEvent(v124, type metadata accessor for SiriRequest);
    }

    v152 = v232;
    EncoreEngine.ensureReady()();
    v248 = 0;
    v153 = (*(**(v43 + 24) + 192))();
    if (v153)
    {
      v154 = v153;
      do
      {
        while (1)
        {
          while (1)
          {
            v155 = swift_weakLoadStrong();
            if (!v248)
            {
              break;
            }

            v154 = v155;
            if (!v155)
            {
              goto LABEL_74;
            }
          }

          v156 = *(v154 + 16);
          outlined init with copy of ReferenceResolutionClientProtocol?(v156 + 136, &v245, &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
          if (v246)
          {
            break;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(&v245, &_s11SiriKitFlow14InputAccepting_pSgMd, &_s11SiriKitFlow14InputAccepting_pSgMR);
          v154 = v155;
          if (!v155)
          {
            goto LABEL_74;
          }
        }

        v157 = outlined init with take of ReferenceResolutionClientProtocol(&v245, &v247);
        MEMORY[0x1EEE9AC00](v157);
        *(&v215 - 6) = &v247;
        *(&v215 - 5) = v239;
        *(&v215 - 4) = &v248;
        *(&v215 - 3) = v154;
        *(&v215 - 2) = v158;
        v159 = one-time initialization token for $conversationContext;
        swift_retain_n();
        if (v159 != -1)
        {
          swift_once();
        }

        *&v245 = v156;
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
        swift_task_localValuePush();
        v160 = type metadata accessor for SiriEnvironment();
        outlined init with copy of ReferenceResolutionClientProtocol(v156 + 56, v244);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
        if (swift_dynamicCast())
        {
          outlined init with take of ReferenceResolutionClientProtocol(v242, &v245);
          v235 = v160;
          __swift_project_boxed_opaque_existential_1(&v245, v246);
          dispatch thunk of SiriEnvironmentLocating.siriEnvironment.getter();
          __swift_destroy_boxed_opaque_existential_1Tm(&v245);
        }

        else
        {
          v243 = 0;
          memset(v242, 0, sizeof(v242));
          outlined destroy of ReferenceResolutionClientProtocol?(v242, &_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
          if (*(v156 + 232))
          {
          }

          else
          {
            static SiriEnvironment.default.getter();
          }
        }

        static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

        if (v152)
        {

          swift_task_localValuePop();
          __break(1u);
          goto LABEL_107;
        }

        swift_task_localValuePop();

        __swift_destroy_boxed_opaque_existential_1Tm(&v247);
        v154 = v155;
        v128 = v240;
      }

      while (v155);
LABEL_74:
      v161 = v248;
      v122 = v239;
      if (!v248)
      {
        goto LABEL_76;
      }

      v162 = v222;
      swift_storeEnumTagMultiPayload();
      v163 = *(v161 + 16);
    }

    else
    {
LABEL_76:
      v162 = v222;
      *v222 = 0;
      swift_storeEnumTagMultiPayload();
      v163 = 0;
    }

    v164 = v225;
    v165 = v224;
    v166 = v223;
    *&v162[*(v230 + 20)] = v163;
    v241 = *(v221 + 12);
    v167 = v162;
    if (one-time initialization token for TaskPriority != -1)
    {
      swift_once();
    }

    v168 = type metadata accessor for TaskPriority();
    v169 = __swift_project_value_buffer(v168, static EncoreEngine.TaskPriority);
    v170 = *(v168 - 8);
    v171 = v238;
    (*(v170 + 16))(v238, v169, v168);
    (*(v170 + 56))(v171, 0, 1, v168);
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v122, v164, type metadata accessor for SiriRequest);
    _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v167, v128, type metadata accessor for RequestContinuation);
    v172 = (*(v166 + 80) + 32) & ~*(v166 + 80);
    v173 = (v165 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
    v174 = (*(v233 + 80) + v173 + 16) & ~*(v233 + 80);
    v175 = swift_allocObject();
    *(v175 + 16) = 0;
    *(v175 + 24) = 0;
    outlined init with take of UserInputResult(v164, v175 + v172, type metadata accessor for SiriRequest);
    v176 = (v175 + v173);
    v177 = v228;
    *v176 = v226;
    v176[1] = v177;
    outlined init with take of UserInputResult(v128, v175 + v174, type metadata accessor for RequestContinuation);

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v171, &async function pointer to partial apply for closure #4 in EncoreEngine.handleExternal(event:), v175);

    outlined destroy of ReferenceResolutionClientProtocol?(v171, &_sScPSgMd, &_sScPSgMR);
    outlined destroy of EncoreEngine.EngineEvent(v167, type metadata accessor for RequestContinuation);
    outlined destroy of EncoreEngine.EngineEvent(v122, type metadata accessor for SiriRequest);
    (*(v237 + 8))(&v229[v241], v236);
  }
}

void EncoreEngine.handleInternal(event:)(uint64_t a1)
{
  v2 = v1;
  v58 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  MEMORY[0x1EEE9AC00](v58);
  v5 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for executor != -1)
  {
LABEL_33:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v61[0] = v10;
    *v9 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(a1 + 56, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v61);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v7, v8, "[EncoreEngine] Handling executable flow %s completion event.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  swift_beginAccess();
  v14 = *(v2 + 48);
  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_15:
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "[EncoreEngine] Expired execution task.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    return;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_6:
  v57 = v5;
  v5 = (v14 & 0xC000000000000001);

  v16 = 0;
  while (1)
  {
    if (v5)
    {
      v17 = MEMORY[0x1E12A1FE0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }
    }

    v18 = *(*(v17 + 16) + 16);

    if (v18 == a1)
    {
      break;
    }

    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    ++v16;
    if (v19 == v15)
    {

      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v23 = specialized Array.remove(at:)(v16, specialized _ArrayBuffer._consumeAndCreateNew());
  v24 = swift_endAccess();
  v25 = *(v23 + 16);
  Strong = (*(**(v2 + 24) + 192))(v24);
  while (1)
  {
    v27 = Strong;
    if (!Strong)
    {
      break;
    }

    Strong = swift_weakLoadStrong();

    if (v25 == v27)
    {

      break;
    }
  }

  swift_retain_n();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v56 = v27 == 0;
    v30 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60 = v55;
    *v30 = 136315650;
    outlined init with copy of ReferenceResolutionClientProtocol(a1 + 56, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v31 = String.init<A>(describing:)();
    HIDWORD(v54) = v29;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v60);

    *(v30 + 4) = v33;
    *(v30 + 12) = 1024;
    isCancelled = swift_task_isCancelled();

    *(v30 + 14) = isCancelled & 1;

    *(v30 + 18) = 1024;
    *(v30 + 20) = v56;
    _os_log_impl(&dword_1DC659000, v28, BYTE4(v54), "[EncoreEngine] Found executable task %s cancelled: %{BOOL}d detached: %{BOOL}d.", v30, 0x18u);
    v35 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x1E12A2F50](v35, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);

    if (!v27)
    {
      goto LABEL_27;
    }

LABEL_26:

    v36 = swift_task_isCancelled();

    if ((v36 & 1) == 0)
    {
      v49 = *(v23 + 16);
      v50 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
      v51 = v23 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
      swift_beginAccess();
      v52 = *v51;
      v53 = *(v51 + 8);

      EncoreEngine.action(mode:starting:context:completion:)(1, v49, v23 + v50, v52, v53);

      return;
    }

    goto LABEL_27;
  }

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_27:

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v60 = v40;
    *v39 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(a1 + 56, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v41 = String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v60);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1DC659000, v37, v38, "[EncoreEngine] Expired execution agent %s.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E12A2F50](v40, -1, -1);
    MEMORY[0x1E12A2F50](v39, -1, -1);
  }

  v44 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
  swift_beginAccess();
  v45 = *v44;
  lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
  v46 = swift_allocError();
  *v47 = 0xD000000000000025;
  v47[1] = 0x80000001DCA82C90;
  v48 = v57;
  *v57 = v46;
  swift_storeEnumTagMultiPayload();

  v45(v48);

  outlined destroy of EncoreEngine.EngineEvent(v48, type metadata accessor for EncoreEngine.ActionOutcome);
}

uint64_t EncoreEngine.discover(event:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService11ServiceNameVSgMd, &_s16EncoreXPCService11ServiceNameVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  EncoreEvent.serviceName.getter();
  v6 = type metadata accessor for ServiceName();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s16EncoreXPCService11ServiceNameVSgMd, &_s16EncoreXPCService11ServiceNameVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_1DC659000, v10, v11, "[EncoreEngine] Snippet event does not have an event name. %@", v12, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    MEMORY[0x1E129E5B0]();
    (*(v7 + 8))(v5, v6);

    v15 = (*(**(v1 + 24) + 192))(v16);
    if (v15)
    {
      v18 = &unk_1EE159000;
      *&v17 = 136315138;
      v54 = v17;
      *&v17 = 136315394;
      v55 = v17;
      do
      {
        Strong = swift_weakLoadStrong();
        v20 = *(v15 + 16);
        v21 = *(v20 + 216);
        if (v21)
        {
          v22 = *(v20 + 224);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = SnippetEventHandling.handler(for:)();
          if (v23)
          {
            v51 = v23;
            v52 = v24;

            v53 = swift_allocObject();
            v53[2] = v15;
            v53[3] = v21;
            v53[4] = v22;
            v53[5] = v51;
            v53[6] = v52;

            return v15;
          }

          if (v18[389] != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static Logger.executor);

          v26 = a1;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v56 = v28;
            v30 = v29;
            v57 = swift_slowAlloc();
            v59 = v57;
            *v30 = v55;
            outlined init with copy of ReferenceResolutionClientProtocol(*(v15 + 16) + 56, v58);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
            v31 = String.init<A>(describing:)();
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v59);

            *(v30 + 4) = v33;
            *(v30 + 12) = 2080;
            v34 = v26;
            v35 = [v34 description];
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = a1;
            v39 = v38;

            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v59);
            a1 = v37;

            *(v30 + 14) = v40;
            v18 = &unk_1EE159000;
            _os_log_impl(&dword_1DC659000, v27, v56, "[EncoreEngine] Node (%s) implements snippetEventHandling, but doesn't handle events of type '%s'", v30, 0x16u);
            v41 = v57;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v41, -1, -1);
            MEMORY[0x1E12A2F50](v30, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (v18[389] != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, static Logger.executor);

          v27 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v27, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v59 = v45;
            *v44 = v54;
            outlined init with copy of ReferenceResolutionClientProtocol(*(v15 + 16) + 56, v58);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
            v46 = String.init<A>(describing:)();
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v59);

            *(v44 + 4) = v48;
            _os_log_impl(&dword_1DC659000, v27, v43, "[EncoreEngine] Node (%s) does not implement snippetEventHandling", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v45);
            v49 = v45;
            v18 = &unk_1EE159000;
            MEMORY[0x1E12A2F50](v49, -1, -1);
            MEMORY[0x1E12A2F50](v44, -1, -1);
          }
        }

        v15 = Strong;
      }

      while (Strong);
    }
  }

  return v15;
}

void EncoreEngine.ensureReady()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Ensuring engine is ready.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 48), v1);
  v7 = *(v1 + 48);
  if (v7 >> 62)
  {
    v12 = v6;
    v8 = __CocoaSet.count.getter();
    v6 = v12;
    if (v8 >= v12)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    swift_endAccess();
    __break(1u);
    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  specialized Array.replaceSubrange<A>(_:with:)(v6, v8);
  swift_endAccess();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "[EncoreEngine] Engine is ready.", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }
}

uint64_t EncoreEngine.continuation(for:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v124 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v103 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v103 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v103 - v11;
  v119 = type metadata accessor for UUID();
  v114 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  v20 = type metadata accessor for SystemEvents();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - v25;
  lazy protocol witness table accessor for type SystemEvents? and conformance <A> A?();
  v27 = a1;
  dispatch thunk of EncoreEvent.getValue<A>()();
  v108 = v13;
  v112 = v26;
  v113 = v16;
  v29 = v119;
  v28 = v120;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
    v30 = EncoreEngine.discover(event:)(v27);
    if (v30)
    {
      v32 = v30;
      v33 = v31;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.executor);
      v35 = v27;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v35;
        *v39 = v35;
        v40 = v35;
        _os_log_impl(&dword_1DC659000, v36, v37, "[EncoreEngine] Invoking event handler for event: %@", v38, 0xCu);
        outlined destroy of ReferenceResolutionClientProtocol?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v39, -1, -1);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }

      v33(v35);

      type metadata accessor for UserInputResult(0);
      v41 = v124;
      swift_storeEnumTagMultiPayload();
      v42 = *(v32 + 16);

      goto LABEL_8;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v44 = v27;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&dword_1DC659000, v45, v46, "[EncoreEngine] None of flow registers to handle snippet event: %@.", v47, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v48, -1, -1);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    v41 = v124;
    goto LABEL_45;
  }

  v50 = v20;
  v51 = v112;
  (*(v21 + 32))(v112, v19, v20);
  (*(v21 + 16))(v23, v51, v20);
  v52 = (*(v21 + 88))(v23, v20);
  if (v52 == *MEMORY[0x1E699BB20])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.executor);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    v56 = os_log_type_enabled(v54, v55);
    v41 = v124;
    if (v56)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DC659000, v54, v55, "Rejecting .snippetDisappeared event since it was sent over DI. This is not supported and will likely cause a user facing error.", v57, 2u);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    (*(v21 + 8))(v112, v20);
LABEL_45:
    *v41 = 0;
    type metadata accessor for UserInputResult(0);
    swift_storeEnumTagMultiPayload();
    v42 = 0;
    goto LABEL_46;
  }

  v106 = v21;
  if (v52 != *MEMORY[0x1E699BB28])
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000027, 0x80000001DCA82890, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 363);
    __break(1u);
    return result;
  }

  v58 = Strong;
  dispatch thunk of SnippetManager.flowIdentifierOfCurrentSnippet.getter();
  v59 = v114;
  v60 = *(v114 + 48);
  v61 = v29;
  v115 = v114 + 48;
  v62 = v60(v28, 1, v29);
  v63 = v122;
  v65 = v117;
  v64 = v118;
  if (v62 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.executor);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = os_log_type_enabled(v67, v68);
    v41 = v124;
    if (v69)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1DC659000, v67, v68, "Got a .returnedToVoiceMode event but SnippetManager isn't aware of any snippets on screen. Rejecting input which will likely cause a user facing error.", v70, 2u);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    (*(v106 + 8))(v112, v50);
    goto LABEL_45;
  }

  v111 = v60;
  v103 = v50;
  v71 = *(v59 + 32);
  v105 = v59 + 32;
  v104 = v71;
  v72 = (v71)(v113, v28, v61);
  v73 = (*(**(v58 + 24) + 192))(v72);
  if (!v73)
  {
LABEL_40:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.executor);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    v91 = os_log_type_enabled(v89, v90);
    v41 = v124;
    if (v91)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_1DC659000, v89, v90, "Failed to find flow agent to handle .returnToVoiceMode event. Rejecting input which will likely cause a user facing error.", v92, 2u);
      MEMORY[0x1E12A2F50](v92, -1, -1);
    }

    (*(v114 + 8))(v113, v61);
    (*(v106 + 8))(v112, v103);
    goto LABEL_45;
  }

  v74 = v73;
  v107 = (v59 + 8);
  v120 = (v59 + 56);
  v109 = (v59 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v110 = (v59 + 16);
  while (1)
  {
    Strong = swift_weakLoadStrong();
    v76 = *(*(v74 + 16) + 216);
    if (v76)
    {
      swift_getObjectType();
      v126[0] = v76;
      v63 = v122;
      dispatch thunk of Identifiable.id.getter();
      v77 = *v120;
      (*v120)(v65, 0, 1, v61);
    }

    else
    {
      v77 = *v120;
      (*v120)(v65, 1, 1, v61);
    }

    v78 = v121;
    (*v110)(v64, v113, v61);
    v77(v64, 0, 1, v61);
    v79 = v63;
    v80 = *(v63 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v65, v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v64, v78 + v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v81 = v111;
    if (v111(v78, 1, v61) == 1)
    {
      break;
    }

    v82 = v116;
    outlined init with copy of ReferenceResolutionClientProtocol?(v78, v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v81(v78 + v80, 1, v61) == 1)
    {
      v64 = v118;
      outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v83 = v117;
      outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v107)(v82, v61);
      v65 = v83;
      goto LABEL_30;
    }

    v84 = v108;
    v104(v108, v78 + v80, v61);
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v107;
    (*v107)(v84, v61);
    v64 = v118;
    outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v87 = v117;
    outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v86(v82, v61);
    v63 = v122;
    outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v65 = v87;
    v75 = Strong;
    if (v85)
    {
      goto LABEL_48;
    }

LABEL_31:

    v74 = v75;
    if (!v75)
    {
      goto LABEL_40;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v81(v78 + v80, 1, v61) != 1)
  {
LABEL_30:
    outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v75 = Strong;
    v63 = v79;
    goto LABEL_31;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_48:

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  __swift_project_value_buffer(v94, static Logger.executor);

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = v61;
    v99 = swift_slowAlloc();
    *v97 = 136315138;
    v125 = *(v74 + 16);
    v126[0] = v99;
    type metadata accessor for ActingFlowAgent();

    v100 = String.init<A>(describing:)();
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v126);

    *(v97 + 4) = v102;
    _os_log_impl(&dword_1DC659000, v95, v96, "Found flow agent to handle .returnToVoiceMode event: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1E12A2F50](v99, -1, -1);
    MEMORY[0x1E12A2F50](v97, -1, -1);

    (*v107)(v113, v98);
  }

  else
  {

    (*v107)(v113, v61);
  }

  (*(v106 + 8))(v112, v103);
  v41 = v124;
  type metadata accessor for UserInputResult(0);
  swift_storeEnumTagMultiPayload();
  v42 = *(v74 + 16);

LABEL_8:

LABEL_46:
  result = type metadata accessor for RequestContinuation(0);
  *&v41[*(result + 20)] = v42;
  return result;
}

uint64_t closure #1 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #1 in EncoreEngine.handleExternal(event:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] SnippetEvent: %@ completed.", v7, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v10 = v0[5];
  v11 = v0[3];

  v11(v10);
  v12 = v0[1];

  return v12();
}

uint64_t EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(unint64_t a1, uint64_t a2, char a3)
{
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, &v10, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  if (v11)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v10, v12);
    if (a1)
    {
      ActingFlowAgent.environment.getter();
    }

    else
    {
    }

    type metadata accessor for SiriEnvironment();
    swift_allocObject();

    v6 = SiriEnvironment.init(parent:)();
    outlined init with copy of ReferenceResolutionClientProtocol(v12, &v10);
    type metadata accessor for ActingFlowAgent();
    v7 = swift_allocObject();

    ActingFlowAgent.init(flow:environment:)(&v10, v6);
    if (a3)
    {
      v8 = EncoreEngine.push(parentNode:flowAgent:)(a1, v7);

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      return v8;
    }

    else
    {
      v9 = ActingFlowAgent.environment.getter();
      MEMORY[0x1EEE9AC00](v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA15ActingFlowAgentCGSgMd, &_s14SiriKitRuntime4NodeCyAA15ActingFlowAgentCGSgMR);
      static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      return v10;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    return 0;
  }
}

uint64_t closure #2 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  return MEMORY[0x1EEE6DFA0](closure #2 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #2 in EncoreEngine.handleExternal(event:)()
{
  v14 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Push flow: %s completed.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  (*(v0 + 104))(*(v0 + 120));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #3 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #3 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #3 in EncoreEngine.handleExternal(event:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreEngine] EnsureReady completed.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v5();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #4 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for SiriRequest(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #4 in EncoreEngine.handleExternal(event:)()
{
  v17 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v2, v1, type metadata accessor for SiriRequest);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    type metadata accessor for Input();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for SiriRequest);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] Accept request: %s completed.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {

    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for SiriRequest);
  }

  (*(v0 + 24))(*(v0 + 40));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #5 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v37[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v37 - v6;
  v8 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v37 - v18);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(a1, v13, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = type metadata accessor for FlowUnhandledReason();
      (*(*(v23 - 8) + 32))(v19, v13, v23);
      type metadata accessor for ConversationCommitResult(0);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v21 = type metadata accessor for PluginAction();
      (*(*(v21 - 8) + 32))(v19, v13, v21);
      type metadata accessor for ConversationCommitResult(0);
LABEL_11:
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
    *v19 = MEMORY[0x1E69E7CC0];
    v19[1] = v22;
    type metadata accessor for ConversationCommitResult(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    outlined destroy of EncoreEngine.EngineEvent(v13, type metadata accessor for EncoreEngine.ActionOutcome);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v24 = *(v13 + 2);
    v25 = *(v13 + 3);
    *v19 = *v13;
    v19[2] = v24;
    v19[3] = v25;
    type metadata accessor for ConversationCommitResult(0);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_8;
  }

  *v19 = *v13;
LABEL_12:
  swift_storeEnumTagMultiPayload();
LABEL_13:
  dispatch thunk of SnippetManager.canSendAddViews.setter();
  if (one-time initialization token for TaskPriority != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for TaskPriority();
  v27 = __swift_project_value_buffer(v26, static EncoreEngine.TaskPriority);
  v28 = *(v26 - 8);
  (*(v28 + 16))(v7, v27, v26);
  (*(v28 + 56))(v7, 0, 1, v26);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(a1, v10, type metadata accessor for EncoreEngine.ActionOutcome);
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, v16, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v30 = (v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v10;
  v32 = (*(v38 + 80) + v30 + 16) & ~*(v38 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  outlined init with take of UserInputResult(v31, v33 + v29, type metadata accessor for EncoreEngine.ActionOutcome);
  v34 = (v33 + v30);
  v35 = v41;
  *v34 = v40;
  v34[1] = v35;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v16, v33 + v32, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #5 in EncoreEngine.handleExternal(event:), v33);

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sScPSgMd, &_sScPSgMR);
  return outlined destroy of ReferenceResolutionClientProtocol?(v19, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
}

uint64_t closure #1 in closure #5 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for EncoreEngine.ActionOutcome(0);
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #5 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #1 in closure #5 in EncoreEngine.handleExternal(event:)()
{
  v17 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v2, v1, type metadata accessor for EncoreEngine.ActionOutcome);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = EncoreEngine.ActionOutcome.description.getter();
    v12 = v11;
    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for EncoreEngine.ActionOutcome);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "[EncoreEngine] Commit completed. outcome: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {

    outlined destroy of EncoreEngine.EngineEvent(v7, type metadata accessor for EncoreEngine.ActionOutcome);
  }

  (*(v0 + 24))(*(v0 + 40));

  v14 = *(v0 + 8);

  return v14();
}

void EncoreEngine.action(mode:starting:context:completion:)(int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v137 = a5;
  v136 = a4;
  v127 = a3;
  v138 = a1;
  v128 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for InterruptionPolicy();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v121 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v120 - v11;
  v135 = type metadata accessor for FlowTraceEvent();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for ConversationContext();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v122 = v13;
  v126 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = &v120 - v15;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.executor);

  v139 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v145 = v21;
    *v20 = 136315394;
    if (a2)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v147);
    }

    else
    {
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v145);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *&v147 = 0;
    *(&v147 + 1) = 0xE000000000000000;
    v25 = 0xE600000000000000;
    v26 = 0x7075727265746E69;
    if (v138 == 2)
    {
      v25 = 0xE900000000000074;
    }

    else
    {
      v26 = 0x705570617277;
    }

    v27 = 0x6C616D726F6ELL;
    if (v138)
    {
      v27 = 0x656D75736572;
    }

    if (v138 <= 1u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    if (v138 <= 1u)
    {
      v29 = 0xE600000000000000;
    }

    else
    {
      v29 = v25;
    }

    MEMORY[0x1E12A1580](v28, v29);

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, *(&v147 + 1), &v145);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v18, v19, "[EncoreEngine] Starting node %s mode: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v31 = v138;
  v141 = v6;
  if (!a2)
  {
    goto LABEL_21;
  }

  while (1)
  {

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v145 = v36;
      *v35 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v147);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v145);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *&v147 = 0;
      *(&v147 + 1) = 0xE000000000000000;
      v40 = 0xE600000000000000;
      v41 = 0x7075727265746E69;
      if (v31 == 2)
      {
        v40 = 0xE900000000000074;
      }

      else
      {
        v41 = 0x705570617277;
      }

      v42 = 0x6C616D726F6ELL;
      if (v31)
      {
        v42 = 0x656D75736572;
      }

      if (v31 <= 1u)
      {
        v43 = v42;
      }

      else
      {
        v43 = v41;
      }

      if (v31 <= 1u)
      {
        v44 = 0xE600000000000000;
      }

      else
      {
        v44 = v40;
      }

      MEMORY[0x1E12A1580](v43, v44);

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, *(&v147 + 1), &v145);

      *(v35 + 14) = v45;
      _os_log_impl(&dword_1DC659000, v33, v34, "[EncoreEngine] ActiveFlow %s mode: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v36, -1, -1);
      MEMORY[0x1E12A2F50](v35, -1, -1);

      v46 = v31;
    }

    else
    {

      v46 = v138;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(a2 + 16) + 176, &v145, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    if (!v146)
    {
      v138 = v46;
      LODWORD(v142) = v31;
      outlined destroy of ReferenceResolutionClientProtocol?(&v145, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      goto LABEL_58;
    }

    outlined init with take of ReferenceResolutionClientProtocol(&v145, &v147);
    if (v46 <= 1u)
    {
      if (v46 != 1)
      {
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v92 = type metadata accessor for TaskPriority();
        v93 = __swift_project_value_buffer(v92, static EncoreEngine.TaskPriority);
        v94 = *(v92 - 8);
        v95 = v123;
        (*(v94 + 16))(v123, v93, v92);
        (*(v94 + 56))(v95, 0, 1, v92);
        outlined init with copy of ReferenceResolutionClientProtocol(&v147, &v145);
        v96 = v124;
        v142 = *(v124 + 16);
        v97 = v125;
        v142(v126, v127, v125);
        v98 = (*(v96 + 80) + 80) & ~*(v96 + 80);
        v99 = (v122 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        v100[2] = 0;
        v100[3] = 0;
        outlined init with take of ReferenceResolutionClientProtocol(&v145, (v100 + 4));
        v100[9] = a2;
        v101 = *(v96 + 32);
        v102 = v100 + v98;
        v103 = v126;
        v101(v102, v126, v97);
        *(v100 + v99) = v6;

        v104 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v95, &closure #1 in EncoreEngine.action(mode:starting:context:completion:)partial apply, v100);
        outlined destroy of ReferenceResolutionClientProtocol?(v95, &_sScPSgMd, &_sScPSgMR);
        v142(v103, v127, v97);
        type metadata accessor for ExecutableTask(0);
        v105 = swift_allocObject();
        *(v105 + 16) = a2;
        v101((v105 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context), v103, v97);
        *(v105 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = v104;
        v106 = (v105 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
        v107 = v137;
        *v106 = v136;
        v106[1] = v107;
        swift_beginAccess();

        MEMORY[0x1E12A1680](v108);
        if (*((*(v6 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        goto LABEL_72;
      }

      outlined init with copy of ReferenceResolutionClientProtocol(&v147, &v145);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v144 = v58;
        *v57 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol(&v145, v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
        v59 = String.init<A>(describing:)();
        v61 = v60;
        __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v144);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_1DC659000, v55, v56, "[EncoreEngine] Executing flow: %s resumes.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x1E12A2F50](v58, -1, -1);
        MEMORY[0x1E12A2F50](v57, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v145);
      }

      v77 = 0;
      v78 = 0;
      goto LABEL_57;
    }

    if (v46 != 2)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol(&v147, &v145);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v144 = v50;
      *v49 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v145, v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v144);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v47, v48, "[EncoreEngine] Executing flow: %s interrupted.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1E12A2F50](v50, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
    }

    __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
    v73 = swift_allocError();
    BargeInError.init(rawError:)();
    dispatch thunk of Executable.cancel(error:)();

    v74 = v133;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v133);
    v75 = v134;
    v76 = v135;
    (*(v134 + 104))(v74, *MEMORY[0x1E69CFAE8], v135);
    static FlowTrace.trace(event:)();
    (*(v75 + 8))(v74, v76);
    v77 = 3;
    v78 = 3;
LABEL_57:
    v138 = v77;
    LODWORD(v142) = v78;
    __swift_destroy_boxed_opaque_existential_1Tm(&v147);
LABEL_58:
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    v84 = swift_allocObject();
    v140 = &v120;
    v85 = v136;
    v84[2] = v83;
    v84[3] = v85;
    v84[4] = v137;
    v86 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v84);
    v87 = v141;
    *(&v120 - 4) = a2;
    *(&v120 - 3) = v87;
    *(&v120 - 2) = closure #2 in EncoreEngine.action(mode:starting:context:completion:)partial apply;
    *(&v120 - 1) = v88;
    v89 = one-time initialization token for $conversationContext;
    swift_retain_n();

    if (v89 != -1)
    {
      swift_once();
    }

    *&v147 = v86;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
    swift_task_localValuePush();
    type metadata accessor for SiriEnvironment();
    ActingFlowAgent.environment.getter();
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    swift_task_localValuePop();

    swift_beginAccess();
    v90 = *(v83 + 16);

    v6 = v141;
    v31 = v142;
    if (v90)
    {
      goto LABEL_73;
    }

LABEL_21:
    v32 = (*(**(v6 + 24) + 216))();
    if (!v32)
    {
      v91 = v129;
      swift_storeEnumTagMultiPayload();
      v136(v91);
      outlined destroy of EncoreEngine.EngineEvent(v91, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_73:
      flushProcessWideSiriEnvironmentCache()();
      return;
    }

    a2 = v32;
  }

  LODWORD(v142) = v31;
  __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
  v63 = v130;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v64 = (*(v131 + 88))(v63, v132);
  if (v64 == *MEMORY[0x1E69CFF50] || v64 == *MEMORY[0x1E69CFF48])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v147, &v145);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v144 = v112;
      *v111 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v145, v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v113 = String.init<A>(describing:)();
      v115 = v114;
      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v144);

      *(v111 + 4) = v116;
      _os_log_impl(&dword_1DC659000, v109, v110, "[EncoreEngine] Wrapping up. Yield executable flow: %s.", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      MEMORY[0x1E12A2F50](v112, -1, -1);
      MEMORY[0x1E12A2F50](v111, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
    }

    v117 = v129;
    swift_storeEnumTagMultiPayload();
    v136(v117);

    outlined destroy of EncoreEngine.EngineEvent(v117, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_72:
    __swift_destroy_boxed_opaque_existential_1Tm(&v147);
    goto LABEL_73;
  }

  if (v64 == *MEMORY[0x1E69CFF58])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v147, &v145);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v144 = v68;
      *v67 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v145, v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v69 = String.init<A>(describing:)();
      v71 = v70;
      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v144);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_1DC659000, v65, v66, "[EncoreEngine] Wrapping up. Notify executable flow: %s with FlowOperationIgnored.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1E12A2F50](v68, -1, -1);
      MEMORY[0x1E12A2F50](v67, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
    }

    __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
    type metadata accessor for FlowOperationIgnored();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowOperationIgnored and conformance FlowOperationIgnored, 255, MEMORY[0x1E69CFB80], MEMORY[0x1E69CFB88]);
    v79 = swift_allocError();
    MEMORY[0x1E129A900](0xD000000000000054, 0x80000001DCA82B90);
    dispatch thunk of Executable.cancel(error:)();

    v80 = v133;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v133);
    v81 = v134;
    v82 = v135;
    (*(v134 + 104))(v80, *MEMORY[0x1E69CFAE8], v135);
    static FlowTrace.trace(event:)();
    (*(v81 + 8))(v80, v82);
    v77 = 3;
    v78 = v142;
    goto LABEL_57;
  }

  *&v145 = 0;
  *(&v145 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA82B60);
  __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
  v118 = v121;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v119 = v132;
  _print_unlocked<A, B>(_:_:)();
  (*(v131 + 8))(v118, v119);
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v145, *(&v145 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 551);
  __break(1u);
}

uint64_t closure #6 in EncoreEngine.handleExternal(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #6 in EncoreEngine.handleExternal(event:), 0, 0);
}

uint64_t closure #6 in EncoreEngine.handleExternal(event:)()
{
  v1 = v0[5];
  v2 = v0[2];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v3 = swift_allocError();
  *v4 = 0xD00000000000001DLL;
  v4[1] = 0x80000001DCA82C50;
  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  v2(v1);
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in EncoreEngine.ensureReady()(uint64_t *a1, uint64_t a2)
{
  v83 = a2;
  v78 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = (&v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for InterruptionPolicy();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - v8;
  v10 = *a1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.executor);

  v80 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v82 = v9;
    v17 = v16;
    *&v85 = v16;
    *v15 = 136315138;
    v18 = *(*(v10 + 16) + 16);
    v77 = v10;
    outlined init with copy of ReferenceResolutionClientProtocol?(v18 + 176, v87, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v85);

    *(v15 + 4) = v21;
    v10 = v77;
    _os_log_impl(&dword_1DC659000, v13, v14, "[EncoreEngine] Checking executable %s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v22 = v17;
    v9 = v82;
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v23 = *(v10 + 16);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v23 + 16) + 176, &v85, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
  if (!v86)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v85, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    return 1;
  }

  v24 = outlined init with take of ReferenceResolutionClientProtocol(&v85, v87);
  v25 = *(v83 + 24);
  v26 = (*(*v25 + 192))(v24);
  do
  {
    if (!v26)
    {
      goto LABEL_22;
    }

    Strong = swift_weakLoadStrong();

    v28 = v23 == v26;
    v26 = Strong;
  }

  while (!v28);

  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  dispatch thunk of Executable.interruptionPolicy.getter();
  v29 = v81;
  (*(v5 + 2))(v81, v9, v4);
  v30 = (*(v5 + 11))(v29, v4);
  if (v30 == *MEMORY[0x1E69CFF50])
  {
    v81 = v5;
    v82 = v9;

    v31 = v10;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136315138;
      v36 = *(*(v31 + 16) + 16);
      v83 = v4;
      v84[0] = v35;
      outlined init with copy of ReferenceResolutionClientProtocol?(v36 + 176, &v85, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v84);

      *(v34 + 4) = v39;
      v4 = v83;
      _os_log_impl(&dword_1DC659000, v32, v33, "[EncoreEngine] Interruption: %s interrupted with .clear policy.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    MEMORY[0x1E12A1950](*(v31 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    (*(*v25 + 248))(*(v31 + 16));

    v40 = v31 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
    v41 = 1;
    swift_beginAccess();
    v42 = *v40;
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(33);
    outlined init with copy of ReferenceResolutionClientProtocol(*(*(v31 + 16) + 16) + 56, &v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v43 = String.init<A>(describing:)();
    v45 = v44;

    *&v85 = v43;
    *(&v85 + 1) = v45;
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA82C70);
    v46 = v85;
    type metadata accessor for FlowAbort();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowAbort and conformance FlowAbort, 255, MEMORY[0x1E69CFB98], MEMORY[0x1E69CFBA0]);
    v47 = swift_allocError();
    MEMORY[0x1E129A9E0](v46, *(&v46 + 1));
    v48 = v79;
    *v79 = v47;
    swift_storeEnumTagMultiPayload();
    v42(v48);

    outlined destroy of EncoreEngine.EngineEvent(v48, type metadata accessor for EncoreEngine.ActionOutcome);
    (*(v81 + 1))(v82, v4);
    *v40 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    *(v40 + 8) = 0;

    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    return v41;
  }

  if (v30 == *MEMORY[0x1E69CFF48])
  {
    v49 = v10;
    v50 = v10 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
    swift_beginAccess();
    v51 = *v50;
    v52 = v79;
    swift_storeEnumTagMultiPayload();

    v51(v52);

    outlined destroy of EncoreEngine.EngineEvent(v52, type metadata accessor for EncoreEngine.ActionOutcome);
    *v50 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    *(v50 + 8) = 0;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v88 = v56;
      *v55 = 136315138;
      v57 = *(*(v49 + 16) + 16);
      v81 = v5;
      outlined init with copy of ReferenceResolutionClientProtocol?(v57 + 176, &v85, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      v58 = String.init<A>(describing:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v88);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1DC659000, v53, v54, "[EncoreEngine] Interruption: %s continues to run.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1E12A2F50](v56, -1, -1);
      MEMORY[0x1E12A2F50](v55, -1, -1);

      (*(v81 + 1))(v9, v4);
    }

    else
    {

      (*(v5 + 1))(v9, v4);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    return 0;
  }

  if (v30 == *MEMORY[0x1E69CFF58])
  {

    v61 = v10;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v84[0] = v65;
      *v64 = 136315138;
      v66 = *(*(v61 + 16) + 16);
      v77 = v61;
      v81 = v5;
      outlined init with copy of ReferenceResolutionClientProtocol?(v66 + 176, &v85, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      v67 = String.init<A>(describing:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v84);
      v61 = v77;

      *(v64 + 4) = v69;
      v5 = v81;
      _os_log_impl(&dword_1DC659000, v62, v63, "[EncoreEngine] Interruption: %s interrupted with .notify policy.", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    v70 = *(v61 + 16);
    v71 = OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context;
    v72 = v61 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion;
    swift_beginAccess();
    v73 = *v72;
    v74 = *(v72 + 8);

    EncoreEngine.action(mode:starting:context:completion:)(2, v70, v61 + v71, v73, v74);

    MEMORY[0x1E12A1950](*(v61 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    (*(v5 + 1))(v9, v4);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    return 1;
  }

  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA82B60);
  _print_unlocked<A, B>(_:_:)();
  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v85, *(&v85 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 435);
  __break(1u);
  return result;
}

uint64_t closure #1 in EncoreEngine.discover(request:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v44 = a3;
  v41 = type metadata accessor for AcceptanceType();
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for FlowTraceEvent();
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Acceptance();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = *(type metadata accessor for SiriRequest(0) + 20);
  v15 = v38;
  dispatch thunk of InputAccepting.accept(input:)();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14InputAccepting_p4flow_AA0D0V5inputAA10AcceptanceV6resulttMd, &_s11SiriKitFlow14InputAccepting_p4flow_AA0D0V5inputAA10AcceptanceV6resulttMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v10);
  v19 = type metadata accessor for Input();
  v20 = a2 + v14;
  v21 = v36;
  (*(*(v19 - 8) + 16))(&v10[v17], v20, v19);
  v22 = &v10[v18];
  v23 = v37;
  v24 = v39;
  (*(v21 + 16))(v22, v13, v37);
  v25 = v40;
  (*(v8 + 104))(v10, *MEMORY[0x1E69CFAC0], v40);
  static FlowTrace.trace(event:)();
  v26 = v10;
  v27 = v41;
  (*(v8 + 8))(v26, v25);
  Acceptance.type.getter();
  v28 = (*(v15 + 88))(v24, v27);
  if (v28 == *MEMORY[0x1E69CFE38])
  {
    (*(v15 + 96))(v24, v27);
    outlined init with take of ReferenceResolutionClientProtocol(v24, &v46);
    v29 = v42;
    (*(**(v43 + 24) + 232))(v42);

    outlined init with copy of ReferenceResolutionClientProtocol(&v46, v45);
    v30 = EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(v29, v45, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    (*(v21 + 8))(v13, v23);
    *v44 = v30;
  }

  v31 = v42;
  v32 = v44;
  if (v28 == *MEMORY[0x1E69CFE40])
  {
    (*(v15 + 96))(v24, v27);
    outlined init with take of ReferenceResolutionClientProtocol(v24, &v46);
    outlined init with copy of ReferenceResolutionClientProtocol(&v46, v45);
    v33 = EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(v31, v45, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    (*(v21 + 8))(v13, v23);
    *v32 = v33;
  }

  if (v28 == *MEMORY[0x1E69CFE30])
  {
    (*(v21 + 8))(v13, v23);
    *v32 = v31;
  }

  if (v28 == *MEMORY[0x1E69CFE28])
  {
    return (*(v21 + 8))(v13, v23);
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x1E12A1580](0xD000000000000028, 0x80000001DCA82B30);
  _print_unlocked<A, B>(_:_:)();
  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v46, v47, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 463);
  __break(1u);
  return result;
}

uint64_t closure #1 in EncoreEngine.discover(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = one-time initialization token for $conversationContext;

  if (v6 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
  swift_task_localValuePush();
  type metadata accessor for SiriEnvironment();
  ActingFlowAgent.environment.getter();
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

  swift_task_localValuePop();
}

uint64_t closure #1 in closure #1 in EncoreEngine.discover(event:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  swift_unknownObjectRetain();
  v7 = a3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20SnippetEventHandling_pMd, &_s11SiriKitFlow20SnippetEventHandling_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v16 = v7;
    _os_log_impl(&dword_1DC659000, v8, v9, "[EncoreEngine] Passing snippet event to %s. event: %@", v10, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  return a4();
}

uint64_t closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v9 = type metadata accessor for FlowTraceEvent();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreEngine.action(mode:starting:context:completion:), 0, 0);
}

uint64_t closure #1 in EncoreEngine.action(mode:starting:context:completion:)()
{
  v20 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  v0[36] = __swift_project_value_buffer(v2, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol((v0 + 2), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] Executing flow: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v11 = v0[25];
  v12 = v0[23];
  v13 = *(v0[24] + 16);
  v0[37] = v13;
  v14 = swift_task_alloc();
  v0[38] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = one-time initialization token for $conversationContext;

  if (v15 != -1)
  {
    swift_once();
  }

  v0[22] = v13;
  v16 = swift_task_alloc();
  v0[39] = v16;
  v16[2] = v13;
  v16[3] = &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  v16[4] = v14;

  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  v22 = 32;
  v23 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE98](v17, v0 + 22, &async function pointer to partial apply for specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), v16, 0, 0, 0xD000000000000026, 0x80000001DCA82BF0);
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  }

  else
  {
    v2 = closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v17 = v0;
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];

  outlined init with copy of ReferenceResolutionClientProtocol(v1 + 56, v2);
  (*(v3 + 104))(v2, *MEMORY[0x1E69CFAE0], v4);
  static FlowTrace.trace(event:)();
  (*(v3 + 8))(v2, v4);
  if (static Task<>.isCancelled.getter())
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v0[23], (v0 + 7));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1DC659000, v7, v8, "[EncoreEngine] Executing flow: %s completed.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v15 = static FlowActor.shared;

    return MEMORY[0x1EEE6DFA0](closure #1 in EncoreEngine.action(mode:starting:context:completion:), v15, 0);
  }
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[28];
  *v1 = v0[37];
  swift_storeEnumTagMultiPayload();
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v1, v2, type metadata accessor for EncoreEngine.EngineEvent);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v3, v4);
  outlined destroy of EncoreEngine.EngineEvent(v1, type metadata accessor for EncoreEngine.EngineEvent);

  v6 = v0[1];

  return v6();
}

void closure #1 in EncoreEngine.action(mode:starting:context:completion:)()
{
  v1 = *(v0 + 328);
}

uint64_t closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ExecutionContext();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  ConversationContext.executionContext.getter();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:);
  v5 = v0[6];

  return MEMORY[0x1EEE39458](v5, v2, v3);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t closure #3 in EncoreEngine.action(mode:starting:context:completion:)(NSObject *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v180 = a4;
  v181 = a3;
  v6 = type metadata accessor for PluginAction();
  v173 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v167 - v10;
  v171 = type metadata accessor for FlowUnhandledReason();
  v11 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v175 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  MEMORY[0x1EEE9AC00](v178);
  v179 = (&v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = type metadata accessor for FlowActionType();
  v184 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v168 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v167 - v16;
  v18 = type metadata accessor for FlowTraceEvent();
  v190 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.executor);

  v188 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v189 = a1;
  v187 = a2;
  v170 = v11;
  v169 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v195 = v26;
    *v25 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol(a1[2].isa + 56, &v198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v195);

    *(v25 + 4) = v29;
    a2 = v187;
    _os_log_impl(&dword_1DC659000, v22, v23, "[EncoreEngine] Calling action on node %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  v174 = v6;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = v18;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v198 = v34;
    *v33 = 136315138;
    v35 = (*(**(a2 + 24) + 304))(closure #1 in OrderedForest<A>.debugDescription(), 0);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v198);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1DC659000, v30, v31, "[EncoreEngine] Current Flow Tree:\n%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v38 = v189;
  v39 = *(v189->isa + 16);
  v185 = v39();
  isa = v38[2].isa;
  outlined init with copy of ReferenceResolutionClientProtocol(isa + 56, &v195);
  __swift_project_boxed_opaque_existential_1(&v195, *(&v196 + 1));
  dispatch thunk of ActingFlow.action.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v195);
  v182 = isa;
  v41 = v186;
  outlined init with copy of ReferenceResolutionClientProtocol(isa + 56, v186);
  outlined init with copy of ReferenceResolutionClientProtocol(&v198, v41 + 40);
  v42 = *MEMORY[0x1E69CFAC8];
  v43 = v190;
  v44 = *(v190 + 104);
  v45 = v32;
  v177 = v190 + 104;
  v176 = v44;
  v44(v41, v42, v32);
  static FlowTrace.trace(event:)();
  v46 = *(v43 + 8);
  v190 = v43 + 8;
  v46(v41, v45);
  __swift_project_boxed_opaque_existential_1(&v198, v199);
  dispatch thunk of FlowAction.type.getter();
  v47 = v184;
  v48 = v183;
  v49 = (*(v184 + 88))(v17, v183);
  if (v49 == *MEMORY[0x1E69CFAA0])
  {
    (*(v47 + 96))(v17, v48);
    outlined init with take of ReferenceResolutionClientProtocol(v17, &v195);
    outlined init with copy of ReferenceResolutionClientProtocol(&v195, &v192);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v200 = v53;
      *v52 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, v191);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v54 = String.init<A>(describing:)();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v200);

      *(v52 + 4) = v56;
      v38 = v189;
      *(v52 + 12) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol(&v192, v191);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm(&v192);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v200);

      *(v52 + 14) = v60;
      _os_log_impl(&dword_1DC659000, v50, v51, "[EncoreEngine] Delegate to %s child: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v53, -1, -1);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v192);
    }

    outlined init with copy of ReferenceResolutionClientProtocol(&v195, &v192);
    EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(v38, &v192, 1);

    outlined destroy of ReferenceResolutionClientProtocol?(&v192, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v71 = &v195;
LABEL_44:
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v198);
  }

  if (v49 == *MEMORY[0x1E69CFA98])
  {
    v175 = v46;
    (*(v47 + 96))(v17, v48);
    LODWORD(v184) = v17[72];
    outlined init with take of Any(v17, v191);
    v61 = *(v17 + 3);
    v195 = *(v17 + 2);
    v196 = v61;
    v197 = *(v17 + 8);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v200 = v183;
      *v64 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, &v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v65 = String.init<A>(describing:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v200);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v69 = (v39)(v68);
      if (v69)
      {
        v70 = *(v69 + 16);

        outlined init with copy of ReferenceResolutionClientProtocol(v70 + 56, &v192);
      }

      else
      {
        v194 = 0;
        v192 = 0u;
        v193 = 0u;
      }

      v87 = v185;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
      v107 = String.init<A>(describing:)();
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v200);

      *(v64 + 14) = v109;
      _os_log_impl(&dword_1DC659000, v62, v63, "[EncoreEngine] Conclude %s parent: %s", v64, 0x16u);
      v110 = v183;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v110, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    else
    {

      v87 = v185;
    }

    (*(**(v187 + 24) + 240))(v189);

    v111 = v182;
    outlined init with copy of ReferenceResolutionClientProtocol?(v182 + 96, &v192, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    v112 = *(&v193 + 1);
    if (*(&v193 + 1))
    {
      v113 = v194;
      __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
      if (v87)
      {
        v114 = *(v87 + 16);
      }

      else
      {
        v114 = 0;
      }

      LifeCycleModifier.onDetached(value:parentFlowContext:)(v191, v114, v112, v113);

      __swift_destroy_boxed_opaque_existential_1Tm(&v192);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v192, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    }

    v115 = v186;
    outlined init with copy of ReferenceResolutionClientProtocol(v111 + 56, v186);
    outlined init with copy of Any(v191, v115 + 40);
    v176(v115, *MEMORY[0x1E69CFAD8], v45);
    static FlowTrace.trace(event:)();
    (v175)(v115, v45);
    EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)(0, &v195, 1);

    if (v184)
    {

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v200 = v119;
        *v118 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol(v111 + 56, &v192);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
        v120 = String.init<A>(describing:)();
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, &v200);

        *(v118 + 4) = v122;
        _os_log_impl(&dword_1DC659000, v116, v117, "[EncoreEngine] Conclude and yield %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        MEMORY[0x1E12A2F50](v119, -1, -1);
        MEMORY[0x1E12A2F50](v118, -1, -1);
      }

      v123 = v179;
      swift_storeEnumTagMultiPayload();
      v181(v123);

      outlined destroy of EncoreEngine.EngineEvent(v123, type metadata accessor for EncoreEngine.ActionOutcome);
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(&v195, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v71 = v191;
    goto LABEL_44;
  }

  if (v49 == *MEMORY[0x1E69CFA80])
  {
    (*(v47 + 96))(v17, v48);
    v72 = *v17;
    v73 = v189;

    v74 = v72;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v192 = v79;
      *v77 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v80 = String.init<A>(describing:)();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v192);
      v73 = v189;

      *(v77 + 4) = v82;
      *(v77 + 12) = 2112;
      v83 = v72;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v84;
      *v78 = v84;
      _os_log_impl(&dword_1DC659000, v75, v76, "[EncoreEngine] Abort flow: %s reason: %@", v77, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    (*(**(v187 + 24) + 248))(v73);

    v85 = v179;
    *v179 = v72;
    swift_storeEnumTagMultiPayload();
    v86 = v72;
    v181(v85);

    goto LABEL_25;
  }

  if (v49 == *MEMORY[0x1E69CFA88])
  {
    (*(v47 + 96))(v17, v48);
    v88 = *v17;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v192 = v92;
      *v91 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v93 = String.init<A>(describing:)();
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v192);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_1DC659000, v89, v90, "[EncoreEngine] Yield %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x1E12A2F50](v92, -1, -1);
      MEMORY[0x1E12A2F50](v91, -1, -1);
    }

    v88();
    v85 = v179;
    swift_storeEnumTagMultiPayload();
    v181(v85);

    goto LABEL_25;
  }

  if (v49 == *MEMORY[0x1E69CFAB0])
  {
    (*(v47 + 96))(v17, v48);
    v96 = v170;
    v97 = v171;
    (*(v170 + 32))(v175, v17, v171);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v192 = v101;
      *v100 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v102 = String.init<A>(describing:)();
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v192);

      *(v100 + 4) = v104;
      _os_log_impl(&dword_1DC659000, v98, v99, "[EncoreEngine] Unhandled flow: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      MEMORY[0x1E12A2F50](v100, -1, -1);
    }

    v105 = v179;
    v106 = v175;
    (*(v96 + 16))(v179, v175, v97);
    swift_storeEnumTagMultiPayload();
    v181(v105);

    outlined destroy of EncoreEngine.EngineEvent(v105, type metadata accessor for EncoreEngine.ActionOutcome);
    (*(v96 + 8))(v106, v97);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v198);
  }

  if (v49 == *MEMORY[0x1E69CFAA8])
  {
    v175 = v46;
    (*(v47 + 96))(v17, v48);
    v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_syp9exitValue_11SiriKitFlow12PluginActionV04nextfG0tMd, &_syp9exitValue_11SiriKitFlow12PluginActionV04nextfG0tMR) + 48);
    outlined init with take of Any(v17, &v192);
    v126 = v173;
    v127 = &v17[v125];
    v128 = v172;
    v129 = v174;
    (*(v173 + 32))(v172, v127, v174);
    v130 = v169;
    v184 = *(v126 + 16);
    (v184)(v169, v128, v129);

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v191[0] = v188;
      *v133 = 136315394;
      lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, 255, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
      v134 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v135;
      v137 = v130;
      v138 = *(v126 + 8);
      v138(v137, v174);
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, v191);

      *(v133 + 4) = v139;
      *(v133 + 12) = 2080;
      v140 = v182;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v141 = String.init<A>(describing:)();
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v191);

      *(v133 + 14) = v143;
      _os_log_impl(&dword_1DC659000, v131, v132, "[EncoreEngine] Redirect nextPluginAction: %s flow: %s", v133, 0x16u);
      v144 = v188;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v144, -1, -1);
      v145 = v133;
      v129 = v174;
      MEMORY[0x1E12A2F50](v145, -1, -1);
    }

    else
    {

      v158 = v130;
      v138 = *(v126 + 8);
      v138(v158, v129);
      v140 = v182;
    }

    (*(**(v187 + 24) + 240))(v189);

    outlined init with copy of ReferenceResolutionClientProtocol?(v140 + 96, &v195, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    v159 = *(&v196 + 1);
    v160 = v185;
    if (*(&v196 + 1))
    {
      v161 = v197;
      __swift_project_boxed_opaque_existential_1(&v195, *(&v196 + 1));
      if (v160)
      {
        v162 = *(v160 + 16);
      }

      else
      {
        v162 = 0;
      }

      LifeCycleModifier.onDetached(value:parentFlowContext:)(&v192, v162, v159, v161);

      __swift_destroy_boxed_opaque_existential_1Tm(&v195);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v195, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    }

    v163 = v186;
    outlined init with copy of ReferenceResolutionClientProtocol(v140 + 56, v186);
    outlined init with copy of Any(&v192, v163 + 40);
    v176(v163, *MEMORY[0x1E69CFAD8], v45);
    static FlowTrace.trace(event:)();
    (v175)(v163, v45);
    v164 = v179;
    v165 = v172;
    (v184)(v179, v172, v129);
    swift_storeEnumTagMultiPayload();
    v181(v164);

    outlined destroy of EncoreEngine.EngineEvent(v164, type metadata accessor for EncoreEngine.ActionOutcome);
    v138(v165, v129);
    v71 = &v192;
    goto LABEL_44;
  }

  if (v49 == *MEMORY[0x1E69CFA90])
  {
    (*(v47 + 96))(v17, v48);
    v147 = *v17;
    v146 = *(v17 + 1);
    v149 = *(v17 + 2);
    v148 = *(v17 + 3);

    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *&v192 = v190;
      *v152 = 136315650;
      *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v146, &v192);
      *(v152 + 12) = 2080;
      *(v152 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v148, &v192);
      *(v152 + 22) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol(v182 + 56, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v153 = String.init<A>(describing:)();
      v189 = v150;
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v192);

      *(v152 + 24) = v155;
      v156 = v189;
      _os_log_impl(&dword_1DC659000, v189, v151, "[EncoreEngine] Reparse requestID: %s userID: %s flow: %s", v152, 0x20u);
      v157 = v190;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v157, -1, -1);
      MEMORY[0x1E12A2F50](v152, -1, -1);
    }

    else
    {
    }

    v85 = v179;
    *v179 = v147;
    v85[1] = v146;
    v85[2] = v149;
    v85[3] = v148;
    swift_storeEnumTagMultiPayload();
    v181(v85);
LABEL_25:

    outlined destroy of EncoreEngine.EngineEvent(v85, type metadata accessor for EncoreEngine.ActionOutcome);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v198);
  }

  *&v195 = 0;
  *(&v195 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  MEMORY[0x1E12A1580](0xD000000000000029, 0x80000001DCA82C20);
  __swift_project_boxed_opaque_existential_1(&v198, v199);
  v166 = v168;
  dispatch thunk of FlowAction.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v47 + 8))(v166, v48);
  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v195, *(&v195 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 608);
  __break(1u);
  return result;
}

uint64_t LifeCycleModifier.onDetached(value:parentFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = one-time initialization token for $conversationContext;
    swift_retain_n();
    if (v4 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
    swift_task_localValuePush();
    type metadata accessor for SiriEnvironment();
    ActingFlowAgent.environment.getter();
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    swift_task_localValuePop();
  }

  else
  {

    return dispatch thunk of LifeCycleModifier.onDetached(value:)();
  }
}

uint64_t EncoreEngine.push(parentNode:flowAgent:)(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowTraceEvent();
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16AttachmentOptionOSgMd, &_s11SiriKitFlow16AttachmentOptionOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v94 - v7;
  v9 = type metadata accessor for AttachmentOption();
  v103 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = &unk_1EE159000;
  if (!a1)
  {
    goto LABEL_67;
  }

  v100 = &v94 - v14;
  v99 = v13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2 + 96, &v113, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  if (!*(&v114 + 1))
  {

    outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
    v16 = v103;
    v17 = v99;
    (*(v103 + 56))(v8, 1, 1, v99);
LABEL_6:
    v18 = v100;
    static AttachmentOption.Default.getter();
    if ((*(v16 + 48))(v8, 1, v17) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow16AttachmentOptionOSgMd, &_s11SiriKitFlow16AttachmentOptionOSgMR);
    }

    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));

  dispatch thunk of LifeCycleModifier.attachmentOption.getter();
  v16 = v103;
  v17 = v99;
  (*(v103 + 56))(v8, 0, 1, v99);
  __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  if ((*(v16 + 48))(v8, 1, v17) == 1)
  {
    goto LABEL_6;
  }

  v18 = v100;
  (*(v16 + 32))(v100, v8, v17);
LABEL_8:
  (*(v16 + 16))(v11, v18, v17);
  LODWORD(v19) = (*(v16 + 88))(v11, v17);
  if (v19 != *MEMORY[0x1E69CFEC0])
  {
    goto LABEL_35;
  }

  v98 = a2;
  (*(v16 + 96))(v11, v17);
  a2 = *v11;
  if (one-time initialization token for executor != -1)
  {
LABEL_49:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);

  v21 = v98;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v97 = v4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v109 = v26;
    *v25 = 136315650;
    v27 = Set.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v109);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol(v21 + 16, &v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v109);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v113);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v109);

    *(v25 + 24) = v35;
    _os_log_impl(&dword_1DC659000, v22, v23, "[EncoreEngine] Attachment option: detach(%s) flow: %s parent: %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  v36 = (*(*a1 + 152))();
  v112 = MEMORY[0x1E69E7CC0];
  if (v36 >> 62)
  {
    v73 = v36;
    v37 = __CocoaSet.count.getter();
    v36 = v73;
    if (v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_14:
      v95 = a1;
      a1 = 0;
      v104 = v36 & 0xFFFFFFFFFFFFFF8;
      v105 = v36 & 0xC000000000000001;
      v96 = v36;
      v38 = v36 + 32;
      v39 = a2 + 56;
      v17 = &_s11SiriKitFlow17LifeCycleModifier_pSgMR;
      v4 = 40;
      while (1)
      {
        if (v105)
        {
          v19 = MEMORY[0x1E12A1FE0](a1, v96);
          v40 = v19;
          v41 = __OFADD__(a1++, 1);
          if (v41)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            if (v19 == *MEMORY[0x1E69CFEB8])
            {
              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v47 = type metadata accessor for Logger();
              __swift_project_value_buffer(v47, static Logger.executor);

              v48 = Logger.logObject.getter();
              v49 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                *&v109 = v51;
                *v50 = 136315394;
                outlined init with copy of ReferenceResolutionClientProtocol(a2 + 16, &v113);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
                v52 = String.init<A>(describing:)();
                v53 = v4;
                v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v109);

                *(v50 + 4) = v55;
                *(v50 + 12) = 2080;
                outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v113);
                v56 = String.init<A>(describing:)();
                v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v109);

                *(v50 + 14) = v58;
                v4 = v53;
                _os_log_impl(&dword_1DC659000, v48, v49, "[EncoreEngine] Attachment option: detachSiblings flow: %s parent: %s", v50, 0x16u);
                swift_arrayDestroy();
                v59 = v51;
                v17 = v99;
                MEMORY[0x1E12A2F50](v59, -1, -1);
                MEMORY[0x1E12A2F50](v50, -1, -1);
              }

              (*(**(v106 + 24) + 232))(a1);

LABEL_47:

              (*(v103 + 8))(v100, v17);
            }

            else
            {
              if (v19 != *MEMORY[0x1E69CFEB0])
              {
                *&v113 = 0;
                *(&v113 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(44);
                MEMORY[0x1E12A1580](0xD00000000000002ALL, 0x80000001DCA82B00);
                _print_unlocked<A, B>(_:_:)();
                result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v113, *(&v113 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 659);
                __break(1u);
                return result;
              }

              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v61 = type metadata accessor for Logger();
              __swift_project_value_buffer(v61, static Logger.executor);

              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.debug.getter();

              if (!os_log_type_enabled(v62, v63))
              {

                goto LABEL_47;
              }

              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              *&v109 = v65;
              *v64 = 136315394;
              outlined init with copy of ReferenceResolutionClientProtocol(a2 + 16, &v113);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
              v66 = String.init<A>(describing:)();
              v67 = v4;
              v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v109);

              *(v64 + 4) = v69;
              *(v64 + 12) = 2080;
              outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v113);
              v70 = String.init<A>(describing:)();
              v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v109);

              *(v64 + 14) = v72;
              v4 = v67;
              _os_log_impl(&dword_1DC659000, v62, v63, "[EncoreEngine] Attachment option: detachNone flow: %s parent: %s", v64, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v65, -1, -1);
              MEMORY[0x1E12A2F50](v64, -1, -1);

              (*(v103 + 8))(v100, v99);
            }

LABEL_66:
            v15 = &unk_1EE159000;
LABEL_67:
            if (v15[389] != -1)
            {
              goto LABEL_79;
            }

            goto LABEL_68;
          }
        }

        else
        {
          if (a1 >= *(v104 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          v40 = *(v38 + 8 * a1);

          v41 = __OFADD__(a1++, 1);
          if (v41)
          {
            goto LABEL_34;
          }
        }

        outlined init with copy of ReferenceResolutionClientProtocol?(*(v40 + 16) + 96, v107, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
        if (!v108)
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(v107, v108);
        dispatch thunk of LifeCycleModifier.id.getter();
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        if (!*(&v110 + 1))
        {
          goto LABEL_27;
        }

        v113 = v109;
        v114 = v110;
        v115 = v111;
        if (*(a2 + 16))
        {
          v42 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
          v43 = -1 << *(a2 + 32);
          v44 = v42 & ~v43;
          if ((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (1)
            {
              outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v44, &v109);
              v46 = MEMORY[0x1E12A1F10](&v109, &v113);
              outlined destroy of AnyHashable(&v109);
              if (v46)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            outlined destroy of AnyHashable(&v113);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_29;
          }
        }

LABEL_25:
        outlined destroy of AnyHashable(&v113);
LABEL_28:

LABEL_29:
        v17 = &_s11SiriKitFlow17LifeCycleModifier_pSgMR;
        if (a1 == v37)
        {
          v60 = v112;
          a1 = v95;
          goto LABEL_52;
        }
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
      v109 = 0u;
      v110 = 0u;
      v111 = 0;
LABEL_27:
      outlined destroy of ReferenceResolutionClientProtocol?(&v109, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
      goto LABEL_28;
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_52:

  if (v60 < 0 || (v60 & 0x4000000000000000) != 0)
  {
    v74 = __CocoaSet.count.getter();
  }

  else
  {
    v74 = *(v60 + 16);
  }

  a2 = v98;
  if (!v74)
  {
LABEL_65:

    (*(v103 + 8))(v100, v99);
    v4 = v97;
    goto LABEL_66;
  }

  v75 = 0;
  v4 = v60 & 0xC000000000000001;
  while (v4)
  {
    v76 = MEMORY[0x1E12A1FE0](v75, v60);
    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_60:
    (*(**(v106 + 24) + 240))(v76);

    ++v75;
    if (v77 == v74)
    {
      goto LABEL_65;
    }
  }

  if (v75 < *(v60 + 16))
  {
    v76 = *(v60 + 8 * v75 + 32);

    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_79:
  swift_once();
LABEL_68:
  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, static Logger.executor);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = v4;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v109 = v83;
    *v82 = 136315394;
    outlined init with copy of ReferenceResolutionClientProtocol(a2 + 16, &v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
    v84 = String.init<A>(describing:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v109);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2080;
    if (a1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(a1 + 16) + 56, &v113);
    }

    else
    {
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v87 = String.init<A>(describing:)();
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v109);

    *(v82 + 14) = v89;
    _os_log_impl(&dword_1DC659000, v79, v80, "[EncoreEngine] Pushing %s parent: %s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v83, -1, -1);
    MEMORY[0x1E12A2F50](v82, -1, -1);

    v4 = v81;
  }

  else
  {
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a2 + 96, &v113, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  if (*(&v114 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
    dispatch thunk of LifeCycleModifier.onAttached()();
    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_s11SiriKitFlow17LifeCycleModifier_pSgMd, &_s11SiriKitFlow17LifeCycleModifier_pSgMR);
  }

  v90 = v101;
  outlined init with copy of ReferenceResolutionClientProtocol(a2 + 56, v101);
  v91 = v102;
  (*(v102 + 104))(v90, *MEMORY[0x1E69CFAD0], v4);
  static FlowTrace.trace(event:)();
  (*(v91 + 8))(v90, v4);
  v92 = *(v106 + 24);
  *&v113 = a2;
  return (*(*v92 + 208))(&v113, a1);
}

uint64_t EncoreEngine.ActionMode.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0x6C616D726F6ELL;
  v3 = 0xE900000000000074;
  v4 = 0x7075727265746E69;
  if (a1 != 2)
  {
    v4 = 0x705570617277;
    v3 = 0xE600000000000000;
  }

  if (a1)
  {
    v2 = 0x656D75736572;
  }

  if (a1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E12A1580](v5, v6);

  return 0;
}

uint64_t EncoreEngine.ActionMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0x7075727265746E69;
  if (a1 != 2)
  {
    v2 = 0x705570617277;
  }

  if (a1)
  {
    v1 = 0x656D75736572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EncoreEngine.ActionMode(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616D726F6ELL;
  v3 = *a1;
  v4 = 0x7075727265746E69;
  v5 = 0xE900000000000074;
  if (v3 != 2)
  {
    v4 = 0x705570617277;
    v5 = 0xE600000000000000;
  }

  v6 = 0x656D75736572;
  if (!*a1)
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x7075727265746E69;
  v10 = 0xE900000000000074;
  if (*a2 != 2)
  {
    v9 = 0x705570617277;
    v10 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 0x656D75736572;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (*a2 <= 1u)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = v10;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EncoreEngine.ActionMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EncoreEngine.ActionMode(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EncoreEngine.ActionMode(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EncoreEngine.ActionMode@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized EncoreEngine.ActionMode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance EncoreEngine.ActionMode(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6C616D726F6ELL;
  v4 = 0xE900000000000074;
  v5 = 0x7075727265746E69;
  if (*v1 != 2)
  {
    v5 = 0x705570617277;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x656D75736572;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EncoreEngine.ActionMode()
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0xE900000000000074;
  v3 = 0x7075727265746E69;
  if (*v0 != 2)
  {
    v3 = 0x705570617277;
    v2 = 0xE600000000000000;
  }

  if (*v0)
  {
    v1 = 0x656D75736572;
  }

  if (*v0 <= 1u)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E12A1580](v4, v5);

  return 0;
}

uint64_t EncoreEngine.ActionOutcome.description.getter()
{
  v1 = type metadata accessor for PluginAction();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowUnhandledReason();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s14SiriKitRuntime17EncoreEngineEventOWOcTm_0(v0, v11, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      v23 = 0;
      v24 = 0xE000000000000000;
      MEMORY[0x1E12A1580](0x656C646E61686E75, 0xEA00000000002864);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1E12A1580](41, 0xE100000000000000);
      v17 = v23;
      (*(v6 + 8))(v8, v5);
      return v17;
    }

    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v11, v1);
      v23 = 0x7463657269646572;
      v24 = 0xE900000000000028;
      lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, 255, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1E12A1580](v14);

      MEMORY[0x1E12A1580](41, 0xE100000000000000);
      v15 = v23;
      (*(v2 + 8))(v4, v1);
      return v15;
    }

    v18 = *v11;
    v19 = v11[1];
    v20 = v11[2];
    v21 = v11[3];
    v23 = 0x2865737261706572;
    v24 = 0xE800000000000000;
    MEMORY[0x1E12A1580](v18, v19);

    MEMORY[0x1E12A1580](8236, 0xE200000000000000);
    MEMORY[0x1E12A1580](v20, v21);

    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    return v23;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x7365726975716572;
    }

    else
    {
      return 0x646C656979;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = *v11;
      v23 = 0;
      v24 = 0xE000000000000000;
      MEMORY[0x1E12A1580](0x2874726F6261, 0xE600000000000000);
      v22[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1E12A1580](41, 0xE100000000000000);

      return v23;
    }

    return 0x6174537974706D65;
  }
}

uint64_t EventQueue.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for AsyncStream();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQueue.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = type metadata accessor for AsyncStream.Continuation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t specialized EventQueue.init()()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v16 - v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMd, &_sScSy14SiriKitRuntime12EncoreEngineC0E5EventOGMR);
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  v18 = v12;
  type metadata accessor for EncoreEngine.EngineEvent(0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v16);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v4 + 32))(v0 + *(*v0 + 88), v6, v17);
  outlined init with copy of ReferenceResolutionClientProtocol?(v12, v9, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v0 + *(*v0 + 96), v9, v13);
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
    return v0;
  }

  return result;
}

uint64_t EventQueue.init()()
{
  v1 = *(*v0 + 80);
  v19 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - v3;
  v20 = type metadata accessor for AsyncStream();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v17 - v4;
  v6 = type metadata accessor for AsyncStream.Continuation();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = *(v6 - 8);
  (*(v15 + 56))(&v17 - v13, 1, 1, v6, v12);
  v21 = v1;
  v22 = v14;
  (*(v2 + 104))(v17, *MEMORY[0x1E69E8650], v19);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v18 + 32))(v0 + *(*v0 + 88), v5, v20);
  (*(v8 + 16))(v10, v14, v7);
  result = (*(v15 + 48))(v10, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v0 + *(*v0 + 96), v10, v6);
    (*(v8 + 8))(v14, v7);
    return v0;
  }

  return result;
}

uint64_t specialized closure #1 in EventQueue.init()(uint64_t a1, uint64_t a2)
{
  outlined destroy of ReferenceResolutionClientProtocol?(a2, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t closure #1 in EventQueue.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AsyncStream.Continuation();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a2, v6);
  v9 = *(v5 - 8);
  (*(v9 + 16))(a2, a1, v5);
  v7 = *(v9 + 56);

  return v7(a2, 0, 1, v5);
}

char *EventQueue.deinit()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreEngine] EventQueue deinit.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(*v1 + 88);
  v7 = type metadata accessor for AsyncStream();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = *(*v1 + 96);
  v9 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t EventQueue.__deallocating_deinit()
{
  EventQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
}

uint64_t specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  type metadata accessor for SiriEnvironment();
  v1 = ActingFlowAgent.environment.getter();
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE40DC8](v5, v1, v3, v4, v6);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in EncoreEngine.init(rootEnvironment:snippetManager:)(a1, v4, v5, v6);
}

uint64_t outlined init with take of UserInputResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of EncoreEngine.EngineEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SystemEvents? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SystemEvents? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SystemEvents? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16EncoreXPCService12SystemEventsOSgMd, &_s16EncoreXPCService12SystemEventsOSgMR);
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type SystemEvents and conformance SystemEvents, 255, MEMORY[0x1E699BB30], MEMORY[0x1E699BB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemEvents? and conformance <A> A?);
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v5 = a1;
  v6 = *a1;
  v7 = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {
    goto LABEL_5;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      goto LABEL_48;
    }

    v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  v3 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        goto LABEL_5;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E12A1FE0](v10, v6);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v12 = *(v6 + 8 * v10 + 32);

LABEL_17:
    v20 = v12;
    v13 = closure #1 in EncoreEngine.ensureReady()(&v20, a2);

    if ((v13 & 1) == 0)
    {
      if (v3 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1E12A1FE0](v3, v6);
          v14 = MEMORY[0x1E12A1FE0](v10, v6);
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3 >= v15)
          {
            goto LABEL_46;
          }

          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          v14 = *(v6 + 32 + 8 * v10);
          v19 = *(v6 + 32 + 8 * v3);
        }

        v16 = v5;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v17 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v17)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);

            goto LABEL_5;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v10 >= *(v18 + 16))
        {
          goto LABEL_44;
        }

        v5 = v16;
        *(v18 + 8 * v10 + 32) = v19;

        *v16 = v6;
      }

LABEL_9:
      v11 = __OFADD__(v3++, 1);
      if (v11)
      {
        goto LABEL_43;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  v3 = __CocoaSet.count.getter();
LABEL_5:

  return v3;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12A1FE0](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = closure #1 in EncoreEngine.ensureReady()(&v12, a2);

    if (v2)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized EncoreEngine.action(mode:starting:context:completion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v133 = a3;
  v146 = a1;
  v134 = type metadata accessor for EncoreEngine.ActionOutcome(0);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for FlowTraceEvent();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for InterruptionPolicy();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v127 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v126 - v16;
  v132 = type metadata accessor for ConversationContext();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = v17;
  v130 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v129 = &v126 - v19;
  v20 = swift_allocObject();
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  v136 = a6;
  v145 = v20;
  *(v20 + 4) = a7;
  v21 = one-time initialization token for executor;
  v138 = a5;

  v137 = a7;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.executor);

  v147 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v153 = v27;
    *v26 = 136315394;
    if (a2)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v155);
    }

    else
    {
      v157 = 0;
      v155 = 0u;
      v156 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v153);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    v31 = 0xE600000000000000;
    v32 = 0x7075727265746E69;
    if (v146 == 2)
    {
      v31 = 0xE900000000000074;
    }

    else
    {
      v32 = 0x705570617277;
    }

    v33 = 0x6C616D726F6ELL;
    if (v146)
    {
      v33 = 0x656D75736572;
    }

    if (v146 <= 1u)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    if (v146 <= 1u)
    {
      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = v31;
    }

    MEMORY[0x1E12A1580](v34, v35);

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, *(&v155 + 1), &v153);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_1DC659000, v24, v25, "[EncoreEngine] Starting node %s mode: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v37 = v146;
  v150 = a4;
  if (!a2)
  {
    goto LABEL_21;
  }

  while (1)
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v153 = v42;
      *v41 = 136315394;
      outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, &v155);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0_pMd, &_s11SiriKitFlow06ActingC0_pMR);
      v43 = String.init<A>(describing:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v153);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *&v155 = 0;
      *(&v155 + 1) = 0xE000000000000000;
      v46 = 0xE600000000000000;
      v47 = 0x7075727265746E69;
      if (v37 == 2)
      {
        v46 = 0xE900000000000074;
      }

      else
      {
        v47 = 0x705570617277;
      }

      v48 = 0x6C616D726F6ELL;
      if (v37)
      {
        v48 = 0x656D75736572;
      }

      if (v37 <= 1u)
      {
        v49 = v48;
      }

      else
      {
        v49 = v47;
      }

      if (v37 <= 1u)
      {
        v50 = 0xE600000000000000;
      }

      else
      {
        v50 = v46;
      }

      MEMORY[0x1E12A1580](v49, v50);

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, *(&v155 + 1), &v153);

      *(v41 + 14) = v51;
      _os_log_impl(&dword_1DC659000, v39, v40, "[EncoreEngine] ActiveFlow %s mode: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v42, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);

      v52 = v37;
    }

    else
    {

      v52 = v146;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(a2 + 16) + 176, &v153, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
    if (!v154)
    {
      v146 = v52;
      LODWORD(v149) = v37;
      outlined destroy of ReferenceResolutionClientProtocol?(&v153, &_s11SiriKitFlow10Executable_pSgMd, &_s11SiriKitFlow10Executable_pSgMR);
      goto LABEL_58;
    }

    outlined init with take of ReferenceResolutionClientProtocol(&v153, &v155);
    if (v52 <= 1u)
    {
      if (v52 != 1)
      {
        if (one-time initialization token for TaskPriority != -1)
        {
          swift_once();
        }

        v97 = type metadata accessor for TaskPriority();
        v98 = __swift_project_value_buffer(v97, static EncoreEngine.TaskPriority);
        v99 = *(v97 - 8);
        v100 = v129;
        (*(v99 + 16))(v129, v98, v97);
        (*(v99 + 56))(v100, 0, 1, v97);
        outlined init with copy of ReferenceResolutionClientProtocol(&v155, &v153);
        v101 = v131;
        v149 = *(v131 + 16);
        v102 = v130;
        v103 = v132;
        v149(v130, v133);
        v104 = (*(v101 + 80) + 80) & ~*(v101 + 80);
        v105 = (v128 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
        v106 = swift_allocObject();
        v106[2] = 0;
        v106[3] = 0;
        outlined init with take of ReferenceResolutionClientProtocol(&v153, (v106 + 4));
        v106[9] = a2;
        v148 = *(v101 + 32);
        v107 = v106 + v104;
        v108 = v103;
        (v148)(v107, v102, v103);
        *(v106 + v105) = a4;

        v109 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v100, &async function pointer to partial apply for closure #1 in EncoreEngine.action(mode:starting:context:completion:), v106);
        outlined destroy of ReferenceResolutionClientProtocol?(v100, &_sScPSgMd, &_sScPSgMR);
        (v149)(v102, v133, v108);
        type metadata accessor for ExecutableTask(0);
        v110 = swift_allocObject();
        *(v110 + 16) = a2;
        (v148)(v110 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_context, v102, v108);
        *(v110 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_runningTask) = v109;
        v111 = (v110 + OBJC_IVAR____TtC14SiriKitRuntime14ExecutableTask_actionCompletion);
        v112 = v145;
        *v111 = partial apply for closure #5 in EncoreEngine.handleExternal(event:);
        v111[1] = v112;
        swift_beginAccess();

        MEMORY[0x1E12A1680](v113);
        if (*((*(a4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        goto LABEL_72;
      }

      outlined init with copy of ReferenceResolutionClientProtocol(&v155, &v153);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v152 = v64;
        *v63 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol(&v153, v151);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
        v65 = String.init<A>(describing:)();
        v67 = v66;
        __swift_destroy_boxed_opaque_existential_1Tm(&v153);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v152);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_1DC659000, v61, v62, "[EncoreEngine] Executing flow: %s resumes.", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x1E12A2F50](v64, -1, -1);
        MEMORY[0x1E12A2F50](v63, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v153);
      }

      v84 = 0;
      v69 = 0;
      goto LABEL_57;
    }

    if (v52 != 2)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol(&v155, &v153);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v152 = v56;
      *v55 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v153, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm(&v153);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v152);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1DC659000, v53, v54, "[EncoreEngine] Executing flow: %s interrupted.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1E12A2F50](v56, -1, -1);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v153);
    }

    __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
    v80 = swift_allocError();
    BargeInError.init(rawError:)();
    dispatch thunk of Executable.cancel(error:)();

    v81 = v142;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v142);
    v82 = v143;
    v83 = v144;
    (*(v143 + 104))(v81, *MEMORY[0x1E69CFAE8], v144);
    static FlowTrace.trace(event:)();
    (*(v82 + 8))(v81, v83);
    v84 = 3;
    v69 = 3;
LABEL_57:
    v146 = v84;
    LODWORD(v149) = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(&v155);
LABEL_58:
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    v90 = swift_allocObject();
    v148 = &v126;
    v90[2] = v89;
    v90[3] = partial apply for closure #5 in EncoreEngine.handleExternal(event:);
    v90[4] = v145;
    v91 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v90);
    v92 = v150;
    *(&v126 - 4) = a2;
    *(&v126 - 3) = v92;
    *(&v126 - 2) = partial apply for closure #2 in EncoreEngine.action(mode:starting:context:completion:);
    *(&v126 - 1) = v93;
    v94 = one-time initialization token for $conversationContext;
    swift_retain_n();

    if (v94 != -1)
    {
      swift_once();
    }

    *&v155 = v91;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25EncoreConversationContextVSgMd, &_s14SiriKitRuntime25EncoreConversationContextVSgMR);
    swift_task_localValuePush();
    type metadata accessor for SiriEnvironment();
    ActingFlowAgent.environment.getter();
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    swift_task_localValuePop();

    swift_beginAccess();
    v95 = *(v89 + 16);

    a4 = v150;
    v37 = v149;
    if (v95)
    {
      goto LABEL_73;
    }

LABEL_21:
    v38 = (*(**(a4 + 24) + 216))();
    if (!v38)
    {
      v96 = v135;
      swift_storeEnumTagMultiPayload();
      closure #5 in EncoreEngine.handleExternal(event:)(v96, v138, v136, v137);
      outlined destroy of EncoreEngine.EngineEvent(v96, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_73:
      flushProcessWideSiriEnvironmentCache()();
    }

    a2 = v38;
  }

  v69 = v37;
  __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
  v70 = v139;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v71 = (*(v140 + 88))(v70, v141);
  if (v71 == *MEMORY[0x1E69CFF50] || v71 == *MEMORY[0x1E69CFF48])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v155, &v153);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v152 = v117;
      *v116 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v153, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v118 = String.init<A>(describing:)();
      v120 = v119;
      __swift_destroy_boxed_opaque_existential_1Tm(&v153);
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, &v152);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_1DC659000, v114, v115, "[EncoreEngine] Wrapping up. Yield executable flow: %s.", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      MEMORY[0x1E12A2F50](v117, -1, -1);
      MEMORY[0x1E12A2F50](v116, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v153);
    }

    v122 = v135;
    swift_storeEnumTagMultiPayload();
    closure #5 in EncoreEngine.handleExternal(event:)(v122, v138, v136, v137);

    outlined destroy of EncoreEngine.EngineEvent(v122, type metadata accessor for EncoreEngine.ActionOutcome);
LABEL_72:
    __swift_destroy_boxed_opaque_existential_1Tm(&v155);
    goto LABEL_73;
  }

  if (v71 == *MEMORY[0x1E69CFF58])
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v155, &v153);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v152 = v75;
      *v74 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol(&v153, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow10Executable_pMd, &_s11SiriKitFlow10Executable_pMR);
      v76 = String.init<A>(describing:)();
      v78 = v77;
      __swift_destroy_boxed_opaque_existential_1Tm(&v153);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v152);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_1DC659000, v72, v73, "[EncoreEngine] Wrapping up. Notify executable flow: %s with FlowOperationIgnored.", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1E12A2F50](v75, -1, -1);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v153);
    }

    __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
    type metadata accessor for FlowOperationIgnored();
    lazy protocol witness table accessor for type FlowActor and conformance FlowActor(&lazy protocol witness table cache variable for type FlowOperationIgnored and conformance FlowOperationIgnored, 255, MEMORY[0x1E69CFB80], MEMORY[0x1E69CFB88]);
    v85 = swift_allocError();
    MEMORY[0x1E129A900](0xD000000000000054, 0x80000001DCA82B90);
    dispatch thunk of Executable.cancel(error:)();

    v86 = v142;
    outlined init with copy of ReferenceResolutionClientProtocol(*(a2 + 16) + 56, v142);
    v87 = v143;
    v88 = v144;
    (*(v143 + 104))(v86, *MEMORY[0x1E69CFAE8], v144);
    static FlowTrace.trace(event:)();
    (*(v87 + 8))(v86, v88);
    v84 = 3;
    goto LABEL_57;
  }

  *&v153 = 0;
  *(&v153 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA82B60);
  __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
  v124 = v127;
  dispatch thunk of Executable.interruptionPolicy.getter();
  v125 = v141;
  _print_unlocked<A, B>(_:_:)();
  (*(v140 + 8))(v124, v125);

  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v153, *(&v153 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Encore/EncoreEngine.swift", 94, 2, 551);
  __break(1u);
  return result;
}

unint64_t specialized EncoreEngine.ActionMode.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EncoreEngine.ActionMode.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode()
{
  result = lazy protocol witness table cache variable for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode;
  if (!lazy protocol witness table cache variable for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncoreEngine.ActionMode and conformance EncoreEngine.ActionMode);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RequestContinuation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Input();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for RequestContinuation(uint64_t a1)
{
  type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for Input();
    (*(*(v2 - 8) + 8))(a1, v2);
  }
}

char *initializeWithCopy for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

char *assignWithCopy for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for UserInputResult);
    v6 = type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Input();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

char *initializeWithTake for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for RequestContinuation(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for UserInputResult);
    v6 = type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Input();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t type metadata completion function for RequestContinuation(uint64_t a1)
{
  result = type metadata accessor for UserInputResult(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for EncoreEngineEvent(char *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v15;

        goto LABEL_34;
      case 4:
        v27 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v27;
        v28 = type metadata accessor for SiriRequest(0);
        v29 = v28[5];
        v30 = type metadata accessor for Input();
        v31 = *(*(v30 - 8) + 16);

        v31(&a1[v29], a2 + v29, v30);
        *&a1[v28[6]] = *(a2 + v28[6]);
        *&a1[v28[7]] = *(a2 + v28[7]);
        v32 = v28[8];
        v33 = &a1[v32];
        v34 = (a2 + v32);
        v35 = *(a2 + v32 + 8);

        if (v35 >> 60 == 15)
        {
          *v33 = *v34;
        }

        else
        {
          v44 = *v34;
          outlined copy of Data._Representation(*v34, v35);
          *v33 = v44;
          *(v33 + 1) = v35;
        }

        *&a1[v28[9]] = *(a2 + v28[9]);
        *&a1[v28[10]] = *(a2 + v28[10]);
        *&a1[v28[11]] = *(a2 + v28[11]);
        v45 = v28[12];
        __dst = &a1[v45];
        v46 = a2 + v45;
        v47 = type metadata accessor for SiriRequestIdentities(0);
        v71 = *(v47 - 8);
        v48 = *(v71 + 48);

        if (v48(v46, 1, v47))
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v46, *(*(v49 - 8) + 64));
        }

        else
        {
          v50 = type metadata accessor for IdentifiedUser();
          v51 = *(v50 - 8);
          v52 = v46;
          v53 = *(v51 + 48);
          v70 = v51;
          if (v53(v46, 1, v50))
          {
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            v55 = __dst;
            memcpy(__dst, v46, *(*(v54 - 8) + 64));
          }

          else
          {
            v56 = *(v51 + 16);
            v57 = v53;
            v58 = v51;
            v55 = __dst;
            v56(__dst, v52, v50);
            v59 = v58;
            v53 = v57;
            (*(v59 + 56))(__dst, 0, 1, v50);
          }

          v60 = *(v47 + 20);
          if (v53(&v52[v60], 1, v50))
          {
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&v55[v60], &v52[v60], *(*(v61 - 8) + 64));
          }

          else
          {
            (*(v70 + 16))(&v55[v60], &v52[v60], v50);
            (*(v70 + 56))(&v55[v60], 0, 1, v50);
          }

          *&v55[*(v47 + 24)] = *&v52[*(v47 + 24)];
          v62 = *(v71 + 56);

          v62(v55, 0, 1, v47);
        }

        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v64 = *(v63 + 48);
        v65 = type metadata accessor for ConversationContext();
        (*(*(v65 - 8) + 16))(&a1[v64], a2 + v64, v65);
        v66 = *(v63 + 64);
        v67 = &a1[v66];
        v68 = (a2 + v66);
        v69 = v68[1];
        *v67 = *v68;
        *(v67 + 1) = v69;

        goto LABEL_34;
      case 5:
        v11 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v12 = type metadata accessor for Input();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v11 - 8) + 64));
        }

        v36 = type metadata accessor for RequestContinuation(0);
        *&a1[*(v36 + 20)] = *(a2 + *(v36 + 20));

        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v38 = *(v37 + 48);
        v39 = type metadata accessor for ConversationContext();
        (*(*(v39 - 8) + 16))(&a1[v38], a2 + v38, v39);
        v40 = *(v37 + 64);
        v41 = &a1[v40];
        v42 = (a2 + v40);
        v43 = v42[1];
        *v41 = *v42;
        *(v41 + 1) = v43;

        goto LABEL_34;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v13 = *a2;
        *a1 = *a2;
        v14 = v13;
        goto LABEL_34;
      case 1:
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v21 = *(v20 + 48);
        v22 = type metadata accessor for ConversationContext();
        (*(*(v22 - 8) + 16))(&a1[v21], a2 + v21, v22);
        v23 = *(v20 + 64);
        v24 = &a1[v23];
        v25 = (a2 + v23);
        v26 = v25[1];
        *v24 = *v25;
        *(v24 + 1) = v26;

        goto LABEL_34;
      case 2:
        v8 = *(a2 + 3);
        *(a1 + 24) = v8;
        (**(v8 - 8))(a1, a2);
        v9 = a2[6];
        *(a1 + 5) = a2[5];
        *(a1 + 6) = v9;

LABEL_34:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

void destroy for EncoreEngineEvent(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        goto LABEL_28;
      case 4:

        v8 = type metadata accessor for SiriRequest(0);
        v9 = v8[5];
        v10 = type metadata accessor for Input();
        (*(*(v10 - 8) + 8))(a1 + v9, v10);

        v11 = (a1 + v8[8]);
        v12 = v11[1];
        if (v12 >> 60 != 15)
        {
          outlined consume of Data._Representation(*v11, v12);
        }

        v13 = a1 + v8[12];
        v14 = type metadata accessor for SiriRequestIdentities(0);
        if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
        {
          v15 = type metadata accessor for IdentifiedUser();
          v16 = *(v15 - 8);
          v17 = *(v16 + 48);
          if (!v17(v13, 1, v15))
          {
            (*(v16 + 8))(v13, v15);
          }

          v18 = *(v14 + 20);
          if (!v17(&v13[v18], 1, v15))
          {
            (*(v16 + 8))(&v13[v18], v15);
          }
        }

        v5 = &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd;
        v6 = &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR;
        break;
      case 5:
        type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v4 = type metadata accessor for Input();
          (*(*(v4 - 8) + 8))(a1, v4);
        }

        type metadata accessor for RequestContinuation(0);

        v5 = &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd;
        v6 = &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR;
        break;
      default:
        return;
    }

LABEL_27:
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v5, v6) + 48);
    v20 = type metadata accessor for ConversationContext();
    (*(*(v20 - 8) + 8))(a1 + v19, v20);
LABEL_28:

    return;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_28;
    }

    v5 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd;
    v6 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR;
    goto LABEL_27;
  }

  v7 = *a1;
}

void *initializeWithCopy for EncoreEngineEvent(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;

        goto LABEL_32;
      case 4:
        v25 = a2[1];
        *a1 = *a2;
        a1[1] = v25;
        v26 = type metadata accessor for SiriRequest(0);
        v27 = v26[5];
        v28 = type metadata accessor for Input();
        v29 = *(*(v28 - 8) + 16);

        v29(a1 + v27, a2 + v27, v28);
        *(a1 + v26[6]) = *(a2 + v26[6]);
        *(a1 + v26[7]) = *(a2 + v26[7]);
        v30 = v26[8];
        v31 = a1 + v30;
        v32 = (a2 + v30);
        v33 = *(a2 + v30 + 8);

        if (v33 >> 60 == 15)
        {
          *v31 = *v32;
        }

        else
        {
          v42 = *v32;
          outlined copy of Data._Representation(*v32, v33);
          *v31 = v42;
          *(v31 + 1) = v33;
        }

        *(a1 + v26[9]) = *(a2 + v26[9]);
        *(a1 + v26[10]) = *(a2 + v26[10]);
        *(a1 + v26[11]) = *(a2 + v26[11]);
        v43 = v26[12];
        __dst = a1 + v43;
        v44 = a2 + v43;
        v45 = type metadata accessor for SiriRequestIdentities(0);
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);

        if (v47(v44, 1, v45))
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v44, *(*(v48 - 8) + 64));
        }

        else
        {
          v64 = v46;
          v49 = type metadata accessor for IdentifiedUser();
          v50 = *(v49 - 8);
          v51 = v44;
          v52 = *(v50 + 48);
          if (v52(v44, 1, v49))
          {
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v44, *(*(v53 - 8) + 64));
          }

          else
          {
            (*(v50 + 16))(__dst, v44, v49);
            (*(v50 + 56))(__dst, 0, 1, v49);
          }

          v54 = *(v45 + 20);
          if (v52(&v51[v54], 1, v49))
          {
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v54], &v51[v54], *(*(v55 - 8) + 64));
          }

          else
          {
            (*(v50 + 16))(&__dst[v54], &v51[v54], v49);
            (*(v50 + 56))(&__dst[v54], 0, 1, v49);
          }

          *&__dst[*(v45 + 24)] = *&v51[*(v45 + 24)];
          v56 = *(v64 + 56);

          v56(__dst, 0, 1, v45);
        }

        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v58 = *(v57 + 48);
        v59 = type metadata accessor for ConversationContext();
        (*(*(v59 - 8) + 16))(a1 + v58, a2 + v58, v59);
        v60 = *(v57 + 64);
        v61 = (a1 + v60);
        v62 = (a2 + v60);
        v63 = v62[1];
        *v61 = *v62;
        v61[1] = v63;

        goto LABEL_32;
      case 5:
        v9 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v10 = type metadata accessor for Input();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v9 - 8) + 64));
        }

        v34 = type metadata accessor for RequestContinuation(0);
        *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v36 = *(v35 + 48);
        v37 = type metadata accessor for ConversationContext();
        (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
        v38 = *(v35 + 64);
        v39 = (a1 + v38);
        v40 = (a2 + v38);
        v41 = v40[1];
        *v39 = *v40;
        v39[1] = v41;

        goto LABEL_32;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v11 = *a2;
        *a1 = *a2;
        v12 = v11;
        goto LABEL_32;
      case 1:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v19 = *(v18 + 48);
        v20 = type metadata accessor for ConversationContext();
        (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
        v21 = *(v18 + 64);
        v22 = (a1 + v21);
        v23 = (a2 + v21);
        v24 = v23[1];
        *v22 = *v23;
        v22[1] = v24;

        goto LABEL_32;
      case 2:
        v7 = *(a2 + 3);
        *(a1 + 3) = v7;
        (**(v7 - 8))(a1, a2);
        v8 = a2[6];
        a1[5] = a2[5];
        a1[6] = v8;

LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *assignWithCopy for EncoreEngineEvent(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngineEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v13;

        goto LABEL_33;
      case 4:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v25 = type metadata accessor for SiriRequest(0);
        v26 = v25[5];
        v27 = type metadata accessor for Input();
        v28 = *(*(v27 - 8) + 16);

        v28(&a1[v26], &a2[v26], v27);
        *&a1[v25[6]] = *&a2[v25[6]];
        *&a1[v25[7]] = *&a2[v25[7]];
        v29 = v25[8];
        v30 = &a1[v29];
        v31 = &a2[v29];
        v32 = *&a2[v29 + 8];

        if (v32 >> 60 == 15)
        {
          *v30 = *v31;
        }

        else
        {
          v41 = *v31;
          outlined copy of Data._Representation(*v31, v32);
          *v30 = v41;
          *(v30 + 1) = v32;
        }

        *&a1[v25[9]] = *&a2[v25[9]];
        *&a1[v25[10]] = *&a2[v25[10]];
        *&a1[v25[11]] = *&a2[v25[11]];
        v42 = v25[12];
        __dst = &a1[v42];
        v43 = &a2[v42];
        v44 = type metadata accessor for SiriRequestIdentities(0);
        v45 = *(v44 - 8);
        v46 = *(v45 + 48);

        v47 = v43;
        if (v46(v43, 1, v44))
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(__dst, v43, *(*(v48 - 8) + 64));
        }

        else
        {
          v66 = v45;
          v49 = type metadata accessor for IdentifiedUser();
          v50 = *(v49 - 8);
          v51 = v47;
          v52 = v47;
          v53 = *(v50 + 48);
          if (v53(v52, 1, v49))
          {
            v54 = v50;
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(__dst, v51, *(*(v55 - 8) + 64));
          }

          else
          {
            (*(v50 + 16))(__dst, v51, v49);
            v54 = v50;
            (*(v50 + 56))(__dst, 0, 1, v49);
          }

          v56 = *(v44 + 20);
          if (v53(&v51[v56], 1, v49))
          {
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&__dst[v56], &v51[v56], *(*(v57 - 8) + 64));
          }

          else
          {
            (*(v54 + 16))(&__dst[v56], &v51[v56], v49);
            (*(v54 + 56))(&__dst[v56], 0, 1, v49);
          }

          *&__dst[*(v44 + 24)] = *&v51[*(v44 + 24)];
          v58 = *(v66 + 56);

          v58(__dst, 0, 1, v44);
        }

        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v60 = *(v59 + 48);
        v61 = type metadata accessor for ConversationContext();
        (*(*(v61 - 8) + 16))(&a1[v60], &a2[v60], v61);
        v62 = *(v59 + 64);
        v63 = &a1[v62];
        v64 = &a2[v62];
        v65 = *(v64 + 1);
        *v63 = *v64;
        *(v63 + 1) = v65;

        goto LABEL_33;
      case 5:
        v9 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v10 = type metadata accessor for Input();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v9 - 8) + 64));
        }

        v33 = type metadata accessor for RequestContinuation(0);
        *&a1[*(v33 + 20)] = *&a2[*(v33 + 20)];

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v35 = *(v34 + 48);
        v36 = type metadata accessor for ConversationContext();
        (*(*(v36 - 8) + 16))(&a1[v35], &a2[v35], v36);
        v37 = *(v34 + 64);
        v38 = &a1[v37];
        v39 = &a2[v37];
        v40 = *(v39 + 1);
        *v38 = *v39;
        *(v38 + 1) = v40;

        goto LABEL_33;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v11 = *a2;
        *a1 = *a2;
        v12 = v11;
        goto LABEL_33;
      case 1:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v19 = *(v18 + 48);
        v20 = type metadata accessor for ConversationContext();
        (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
        v21 = *(v18 + 64);
        v22 = &a1[v21];
        v23 = &a2[v21];
        v24 = *(v23 + 1);
        *v22 = *v23;
        *(v22 + 1) = v24;

        goto LABEL_33;
      case 2:
        v7 = *(a2 + 3);
        *(a1 + 3) = v7;
        *(a1 + 4) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
        v8 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v8;

LABEL_33:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_OWORD *initializeWithTake for EncoreEngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v19 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = type metadata accessor for Input();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v19 - 8) + 64));
      }

      v23 = type metadata accessor for RequestContinuation(0);
      *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v25 = *(v24 + 48);
      v26 = type metadata accessor for ConversationContext();
      (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
      *(a1 + *(v24 + 64)) = *(a2 + *(v24 + 64));
      goto LABEL_22;
    case 4:
      *a1 = *a2;
      v10 = type metadata accessor for SiriRequest(0);
      v11 = v10[5];
      v12 = type metadata accessor for Input();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      *(a1 + v10[8]) = *(a2 + v10[8]);
      *(a1 + v10[9]) = *(a2 + v10[9]);
      *(a1 + v10[10]) = *(a2 + v10[10]);
      *(a1 + v10[11]) = *(a2 + v10[11]);
      v13 = v10[12];
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for SiriRequestIdentities(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        v27 = type metadata accessor for IdentifiedUser();
        v28 = *(v27 - 8);
        v36 = *(v28 + 48);
        v35 = v28;
        if (v36(v15, 1, v27))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v14, v15, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v28 + 32))(v14, v15, v27);
          (*(v28 + 56))(v14, 0, 1, v27);
        }

        v30 = *(v16 + 20);
        if (v36(&v15[v30], 1, v27))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v14[v30], &v15[v30], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(v35 + 32))(&v14[v30], &v15[v30], v27);
          (*(v35 + 56))(&v14[v30], 0, 1, v27);
        }

        *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v33 = *(v32 + 48);
      v34 = type metadata accessor for ConversationContext();
      (*(*(v34 - 8) + 32))(a1 + v33, a2 + v33, v34);
      *(a1 + *(v32 + 64)) = *(a2 + *(v32 + 64));
      goto LABEL_22;
    case 1:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
      v8 = *(v7 + 48);
      v9 = type metadata accessor for ConversationContext();
      (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v21 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v21);
}

_OWORD *assignWithTake for EncoreEngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngineEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v19 = type metadata accessor for UserInputResult(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = type metadata accessor for Input();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v19 - 8) + 64));
      }

      v23 = type metadata accessor for RequestContinuation(0);
      *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v25 = *(v24 + 48);
      v26 = type metadata accessor for ConversationContext();
      (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
      *(a1 + *(v24 + 64)) = *(a2 + *(v24 + 64));
      goto LABEL_23;
    case 4:
      *a1 = *a2;
      v10 = type metadata accessor for SiriRequest(0);
      v11 = v10[5];
      v12 = type metadata accessor for Input();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      *(a1 + v10[8]) = *(a2 + v10[8]);
      *(a1 + v10[9]) = *(a2 + v10[9]);
      *(a1 + v10[10]) = *(a2 + v10[10]);
      *(a1 + v10[11]) = *(a2 + v10[11]);
      v13 = v10[12];
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for SiriRequestIdentities(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        v27 = type metadata accessor for IdentifiedUser();
        v28 = *(v27 - 8);
        v36 = *(v28 + 48);
        v35 = v28;
        if (v36(v15, 1, v27))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(v14, v15, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v28 + 32))(v14, v15, v27);
          (*(v28 + 56))(v14, 0, 1, v27);
        }

        v30 = *(v16 + 20);
        if (v36(&v15[v30], 1, v27))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&v14[v30], &v15[v30], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(v35 + 32))(&v14[v30], &v15[v30], v27);
          (*(v35 + 56))(&v14[v30], 0, 1, v27);
        }

        *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
      v33 = *(v32 + 48);
      v34 = type metadata accessor for ConversationContext();
      (*(*(v34 - 8) + 32))(a1 + v33, a2 + v33, v34);
      *(a1 + *(v32 + 64)) = *(a2 + *(v32 + 64));
      goto LABEL_23;
    case 1:
      *a1 = *a2;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
      v8 = *(v7 + 48);
      v9 = type metadata accessor for ConversationContext();
      (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
      *(a1 + *(v7 + 64)) = *(a2 + *(v7 + 64));
LABEL_23:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v21 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v21);
}

uint64_t type metadata completion function for EncoreEngineEvent(uint64_t a1)
{
  v9 = MEMORY[0x1E69E5CE0] + 64;
  result = type metadata accessor for ConversationContext();
  if (v2 <= 0x3F)
  {
    v3 = MEMORY[0x1E69E7CB8] + 64;
    swift_getTupleTypeLayout3();
    v10 = &v8;
    v11 = "8";
    v12 = v3;
    result = type metadata accessor for SiriRequest(319);
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v13 = &v7;
      result = type metadata accessor for RequestContinuation(319);
      if (v5 <= 0x3F)
      {
        swift_getTupleTypeLayout3();
        v14 = &v6;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ExecutableTask(uint64_t a1)
{
  result = type metadata accessor for ConversationContext();
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

void *assignWithCopy for EncoreEngine.InternalEvent(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for EncoreEngine.InternalEvent(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for EncoreEngine.InternalEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for EncoreEngine.InternalEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}